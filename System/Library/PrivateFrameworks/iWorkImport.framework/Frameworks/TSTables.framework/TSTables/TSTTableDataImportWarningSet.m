@interface TSTTableDataImportWarningSet
+ (id)objectWithImportWarningSet:(id)a3 refCount:(unsigned int)a4;
- (id)description;
- (id)initObjectWithImportWarningSet:(id)a3 refCount:(unsigned int)a4;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 completion:(id)a5;
@end

@implementation TSTTableDataImportWarningSet

+ (id)objectWithImportWarningSet:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  inited = objc_msgSend_initObjectWithImportWarningSet_refCount_(v7, v8, v6, v4, v9);

  return inited;
}

- (id)initObjectWithImportWarningSet:(id)a3 refCount:(unsigned int)a4
{
  v4 = *&a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSTTableDataImportWarningSet;
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
  v16 = a5;
  objc_msgSend_sharedLoadFromArchive_(self, v7, a3, v8, v9);
  v10 = [TSTImportWarningSet alloc];
  if (*(a3 + 10))
  {
    v14 = objc_msgSend_initFromArchive_(v10, v11, *(a3 + 10), v12, v13);
  }

  else
  {
    v14 = objc_msgSend_initFromArchive_(v10, v11, &TST::_ImportWarningSetArchive_default_instance_, v12, v13);
  }

  payload = self->super._payload;
  self->super._payload = v14;

  v16[2](v16, self);
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = TSTTableDataImportWarningSet;
  [(TSTTableDataObject *)&v17 encodeToArchive:a3 archiver:v6];
  v14 = objc_msgSend_importWarningSet(self, v7, v8, v9, v10);
  *(a3 + 4) |= 0x80u;
  v15 = *(a3 + 10);
  if (!v15)
  {
    v16 = *(a3 + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v16);
    *(a3 + 10) = v15;
  }

  objc_msgSend_saveToArchive_(v14, v11, v15, v12, v13);
}

- (unint64_t)estimateByteSize
{
  TST::ImportWarningSetArchive::ImportWarningSetArchive(v13, 0);
  v7 = objc_msgSend_importWarningSet(self, v3, v4, v5, v6);
  objc_msgSend_saveToArchive_(v7, v8, v13, v9, v10);

  v11 = TST::ImportWarningSetArchive::ByteSizeLong(v13);
  TST::ImportWarningSetArchive::~ImportWarningSetArchive(v13);
  return v11 + 8;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v12 = objc_msgSend_importWarningSet(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"refCount: %d   importWarningSet: %@", v14, v15, v7, v12);

  return v16;
}

@end