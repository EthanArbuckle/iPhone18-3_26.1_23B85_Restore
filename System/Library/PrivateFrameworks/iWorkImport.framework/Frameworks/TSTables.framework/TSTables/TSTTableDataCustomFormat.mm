@interface TSTTableDataCustomFormat
+ (id)objectWithCustomFormat:(id)format refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithCustomFormat:(id)format refCount:(unsigned int)count;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataCustomFormat

+ (id)objectWithCustomFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithCustomFormat_refCount_(v7, v8, formatCopy, v4, v9);

  return inited;
}

- (id)initObjectWithCustomFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v11.receiver = self;
  v11.super_class = TSTTableDataCustomFormat;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, format);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v7, archive, v8, v9);
  v10 = TSKInitCustomFormatFromArchive();
  payload = self->super._payload;
  self->super._payload = v10;

  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataCustomFormat encodeToArchive:archiver:]", v9, v10);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v11, v15, 379, 0, "Should never archive a new custom format datalist!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  v27.receiver = self;
  v27.super_class = TSTTableDataCustomFormat;
  [(TSTTableDataObject *)&v27 encodeToArchive:archive archiver:archiverCopy];
  v25 = objc_msgSend_customFormat(self, v21, v22, v23, v24);
  *(archive + 4) |= 0x10u;
  if (!*(archive + 7))
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 7) = MEMORY[0x223DA02C0](v26);
  }

  TSKCustomFormatEncodeToArchive();
}

- (id)description
{
  selfCopy = self;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v16 = objc_msgSend_customFormat(selfCopy, v8, v9, v10, v11);
  if (v16)
  {
    selfCopy = objc_msgSend_customFormat(selfCopy, v12, v13, v14, v15);
    v21 = objc_msgSend_formatName(selfCopy, v17, v18, v19, v20);
    objc_msgSend_stringWithFormat_(v6, v22, @"refCount: %d   _customFormat: %@", v23, v24, v7, v21);
  }

  else
  {
    v21 = @"NULL";
    objc_msgSend_stringWithFormat_(v6, v12, @"refCount: %d   _customFormat: %@", v14, v15, v7, @"NULL");
  }
  v25 = ;
  if (v16)
  {
  }

  return v25;
}

@end