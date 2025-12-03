@interface TSTTableDataFormat
+ (id)objectWithFormat:(id)format refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithFormat:(id)format refCount:(unsigned int)count;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
- (void)p_setUpFormat:(id)format;
@end

@implementation TSTTableDataFormat

+ (id)objectWithFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithFormat_refCount_(v7, v8, formatCopy, v4, v9);

  return inited;
}

- (void)p_setUpFormat:(id)format
{
  formatCopy = format;
  v23 = objc_msgSend_asMultipleChoiceListFormat(formatCopy, v5, v6, v7, v8);
  if (v23)
  {
    v9 = objc_alloc(MEMORY[0x277D80698]);
    v14 = objc_msgSend_initialValue(v23, v10, v11, v12, v13);
    v19 = objc_msgSend_multipleChoiceListFormatID(v23, v15, v16, v17, v18);
    v21 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v9, v20, v14, v19, 0);

    formatCopy = v21;
  }

  payload = self->super._payload;
  self->super._payload = formatCopy;
}

- (id)initObjectWithFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v13.receiver = self;
  v13.super_class = TSTTableDataFormat;
  v7 = [(TSTTableDataObject *)&v13 initWithRefCount:v4];
  v11 = v7;
  if (v7)
  {
    objc_msgSend_p_setUpFormat_(v7, v8, formatCopy, v9, v10);
  }

  return v11;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v7, archive, v8, v9);
  if ((*(archive + 16) & 8) != 0)
  {
    v13 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v10, *(archive + 6), v11, v12);
    objc_msgSend_p_setUpFormat_(self, v14, v13, v15, v16);
  }

  else
  {
    v13 = 0;
    objc_msgSend_p_setUpFormat_(self, v10, 0, v11, v12);
  }

  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v21.receiver = self;
  v21.super_class = TSTTableDataFormat;
  [(TSTTableDataObject *)&v21 encodeToArchive:archive archiver:archiverCopy];
  v15 = objc_msgSend_format(self, v7, v8, v9, v10);
  if (v15)
  {
    *(archive + 4) |= 8u;
    v16 = *(archive + 6);
    if (!v16)
    {
      v17 = *(archive + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA02D0](v17);
      *(archive + 6) = v16;
    }

    v18 = objc_msgSend_isForCopy(archiverCopy, v11, v12, v13, v14);
    objc_msgSend_encodeToArchive_archivingCustomFormats_(v15, v19, v16, v18, v20);
  }
}

- (unint64_t)estimateByteSize
{
  v6 = objc_msgSend_format(self, a2, v2, v3, v4);
  v11 = objc_msgSend_asLegacyCustomFormat(v6, v7, v8, v9, v10);

  if (v11)
  {
    return 8;
  }

  MEMORY[0x223D9FAC0](v22, 0);
  v17 = objc_msgSend_format(self, v13, v14, v15, v16);
  objc_msgSend_encodeToArchive_(v17, v18, v22, v19, v20);

  v12 = TSK::FormatStructArchive::ByteSizeLong(v22) + 8;
  MEMORY[0x223D9FAE0](v22);
  return v12;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v12 = objc_msgSend_format(self, v8, v9, v10, v11);
  objc_msgSend_formatType(v12, v13, v14, v15, v16);
  v17 = NSStringForTSUFormatType();
  v21 = objc_msgSend_stringWithFormat_(v6, v18, @"refCount: %d   format: %@", v19, v20, v7, v17);

  return v21;
}

@end