@interface TSTTableDataObject
+ (id)objectWithRefCount:(unsigned int)count;
+ (void)loadObjectFromArchive:(const void *)archive listType:(int)type unarchiver:(id)unarchiver completion:(id)completion;
- (BOOL)dropReference;
- (BOOL)dropReferences:(unsigned int)references;
- (BOOL)isEqual:(id)equal;
- (TSTTableDataObject)initWithRefCount:(unsigned int)count;
- (unint64_t)byteSizeForArchiving;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
- (void)p_sharedInitWithRefCount:(unsigned int)count key:(unsigned int)key;
@end

@implementation TSTTableDataObject

+ (id)objectWithRefCount:(unsigned int)count
{
  v3 = *&count;
  v4 = [self alloc];
  v8 = objc_msgSend_initWithRefCount_(v4, v5, v3, v6, v7);

  return v8;
}

+ (void)loadObjectFromArchive:(const void *)archive listType:(int)type unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  if (type - 1) <= 0xB && ((0xBFFu >> (type - 1)))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(v10);
  objc_msgSend_loadFromArchive_unarchiver_completion_(v11, v12, archive, unarchiverCopy, completionCopy);
}

- (void)p_sharedInitWithRefCount:(unsigned int)count key:(unsigned int)key
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  self->_key = key;
  self->_refCount = countCopy;
  self->_byteSizeForArchiving = 0x7FFFFFFFFFFFFFFFLL;
}

- (TSTTableDataObject)initWithRefCount:(unsigned int)count
{
  v3 = *&count;
  v9.receiver = self;
  v9.super_class = TSTTableDataObject;
  v4 = [(TSTTableDataObject *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_p_sharedInitWithRefCount_key_(v4, v5, v3, 0, v6);
  }

  return v7;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  v8 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableDataObject loadFromArchive:unarchiver:completion:]", v10, v11);
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v14, v15);
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v19, v12, v16, 131, 0, "Abstract method not overridden by %{public}@", v18);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  v24 = MEMORY[0x277CBEAD8];
  v25 = MEMORY[0x277CCACA8];
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v31 = objc_msgSend_stringWithFormat_(v25, v28, @"Abstract method not overridden by %@: %s", v29, v30, v27, "[TSTTableDataObject loadFromArchive:unarchiver:completion:]");
  v33 = objc_msgSend_exceptionWithName_reason_userInfo_(v24, v32, *MEMORY[0x277CBE658], v31, 0);
  v34 = v33;

  objc_exception_throw(v33);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  key = self->_key;
  v5 = *(archive + 4);
  *(archive + 4) = v5 | 0x200;
  *(archive + 24) = key;
  refCount = self->_refCount;
  *(archive + 4) = v5 | 0x600;
  *(archive + 25) = refCount;
}

- (BOOL)dropReference
{
  v2 = self->_refCount - 1;
  self->_refCount = v2;
  return v2 == 0;
}

- (BOOL)dropReferences:(unsigned int)references
{
  refCount = self->_refCount;
  v7 = refCount >= references;
  v8 = refCount - references;
  if (!v7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataObject dropReferences:]", v3, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 160, 0, "dropping data list ref count by more than the total count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    v8 = 0;
  }

  self->_refCount = v8;
  return v8 == 0;
}

- (unint64_t)byteSizeForArchiving
{
  result = self->_byteSizeForArchiving;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = objc_msgSend_estimateByteSize(self, a2, v2, v3, v4);
    self->_byteSizeForArchiving = result;
  }

  return result;
}

- (unint64_t)estimateByteSize
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataObject estimateByteSize]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v5, v9, 180, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v24 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v23, v20, "[TSTTableDataObject estimateByteSize]");
  v26 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v25, *MEMORY[0x277CBE658], v24, 0);
  v27 = v26;

  objc_exception_throw(v26);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  LOBYTE(self) = objc_msgSend_tst_dataObjectIsEqual_(self->_payload, v6, v5[1], v7, v8);

  return self;
}

@end