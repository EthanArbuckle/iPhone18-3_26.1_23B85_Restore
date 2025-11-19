@interface TSTTableDataCustomFormat
+ (id)objectWithCustomFormat:(id)a3 refCount:(unsigned int)a4;
- (id)description;
- (id)initObjectWithCustomFormat:(id)a3 refCount:(unsigned int)a4;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5;
@end

@implementation TSTTableDataCustomFormat

+ (id)objectWithCustomFormat:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  inited = objc_msgSend_initObjectWithCustomFormat_refCount_(v7, v8, v6, v4, v9);

  return inited;
}

- (id)initObjectWithCustomFormat:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSTTableDataCustomFormat;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, a3);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5
{
  v12 = a5;
  objc_msgSend_sharedLoadFromArchive_(self, v7, a3, v8, v9);
  v10 = TSKInitCustomFormatFromArchive();
  payload = self->super._payload;
  self->super._payload = v10;

  v12[2](v12, self);
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataCustomFormat encodeToArchive:archiver:]", v9, v10);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v11, v15, 379, 0, "Should never archive a new custom format datalist!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  v27.receiver = self;
  v27.super_class = TSTTableDataCustomFormat;
  [(TSTTableDataObject *)&v27 encodeToArchive:a3 archiver:v6];
  v25 = objc_msgSend_customFormat(self, v21, v22, v23, v24);
  *(a3 + 4) |= 0x10u;
  if (!*(a3 + 7))
  {
    v26 = *(a3 + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a3 + 7) = MEMORY[0x223DA02C0](v26);
  }

  TSKCustomFormatEncodeToArchive();
}

- (id)description
{
  v5 = self;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v16 = objc_msgSend_customFormat(v5, v8, v9, v10, v11);
  if (v16)
  {
    v5 = objc_msgSend_customFormat(v5, v12, v13, v14, v15);
    v21 = objc_msgSend_formatName(v5, v17, v18, v19, v20);
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