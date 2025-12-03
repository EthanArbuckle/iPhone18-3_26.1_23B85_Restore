@interface TSTTableDataImportWarningSet
+ (id)objectWithImportWarningSet:(id)set refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithImportWarningSet:(id)set refCount:(unsigned int)count;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataImportWarningSet

+ (id)objectWithImportWarningSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithImportWarningSet_refCount_(v7, v8, setCopy, v4, v9);

  return inited;
}

- (id)initObjectWithImportWarningSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v11.receiver = self;
  v11.super_class = TSTTableDataImportWarningSet;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, set);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v7, archive, v8, v9);
  v10 = [TSTImportWarningSet alloc];
  if (*(archive + 10))
  {
    v14 = objc_msgSend_initFromArchive_(v10, v11, *(archive + 10), v12, v13);
  }

  else
  {
    v14 = objc_msgSend_initFromArchive_(v10, v11, &TST::_ImportWarningSetArchive_default_instance_, v12, v13);
  }

  payload = self->super._payload;
  self->super._payload = v14;

  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v17.receiver = self;
  v17.super_class = TSTTableDataImportWarningSet;
  [(TSTTableDataObject *)&v17 encodeToArchive:archive archiver:archiverCopy];
  v14 = objc_msgSend_importWarningSet(self, v7, v8, v9, v10);
  *(archive + 4) |= 0x80u;
  v15 = *(archive + 10);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v16);
    *(archive + 10) = v15;
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