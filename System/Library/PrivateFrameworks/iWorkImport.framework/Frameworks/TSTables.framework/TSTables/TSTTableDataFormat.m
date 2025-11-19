@interface TSTTableDataFormat
+ (id)objectWithFormat:(id)a3 refCount:(unsigned int)a4;
- (id)description;
- (id)initObjectWithFormat:(id)a3 refCount:(unsigned int)a4;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5;
- (void)p_setUpFormat:(id)a3;
@end

@implementation TSTTableDataFormat

+ (id)objectWithFormat:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  inited = objc_msgSend_initObjectWithFormat_refCount_(v7, v8, v6, v4, v9);

  return inited;
}

- (void)p_setUpFormat:(id)a3
{
  v4 = a3;
  v23 = objc_msgSend_asMultipleChoiceListFormat(v4, v5, v6, v7, v8);
  if (v23)
  {
    v9 = objc_alloc(MEMORY[0x277D80698]);
    v14 = objc_msgSend_initialValue(v23, v10, v11, v12, v13);
    v19 = objc_msgSend_multipleChoiceListFormatID(v23, v15, v16, v17, v18);
    v21 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v9, v20, v14, v19, 0);

    v4 = v21;
  }

  payload = self->super._payload;
  self->super._payload = v4;
}

- (id)initObjectWithFormat:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v13.receiver = self;
  v13.super_class = TSTTableDataFormat;
  v7 = [(TSTTableDataObject *)&v13 initWithRefCount:v4];
  v11 = v7;
  if (v7)
  {
    objc_msgSend_p_setUpFormat_(v7, v8, v6, v9, v10);
  }

  return v11;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5
{
  v17 = a5;
  objc_msgSend_sharedLoadFromArchive_(self, v7, a3, v8, v9);
  if ((*(a3 + 16) & 8) != 0)
  {
    v13 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v10, *(a3 + 6), v11, v12);
    objc_msgSend_p_setUpFormat_(self, v14, v13, v15, v16);
  }

  else
  {
    v13 = 0;
    objc_msgSend_p_setUpFormat_(self, v10, 0, v11, v12);
  }

  v17[2](v17, self);
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = TSTTableDataFormat;
  [(TSTTableDataObject *)&v21 encodeToArchive:a3 archiver:v6];
  v15 = objc_msgSend_format(self, v7, v8, v9, v10);
  if (v15)
  {
    *(a3 + 4) |= 8u;
    v16 = *(a3 + 6);
    if (!v16)
    {
      v17 = *(a3 + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA02D0](v17);
      *(a3 + 6) = v16;
    }

    v18 = objc_msgSend_isForCopy(v6, v11, v12, v13, v14);
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