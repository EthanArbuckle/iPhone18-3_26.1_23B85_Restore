@interface TSTTableDataFormulaError
+ (id)objectWithFormulaError:(id)error refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithFormulaError:(id)error refCount:(unsigned int)count;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataFormulaError

+ (id)objectWithFormulaError:(id)error refCount:(unsigned int)count
{
  v4 = *&count;
  errorCopy = error;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithFormulaError_refCount_(v7, v8, errorCopy, v4, v9);

  return inited;
}

- (id)initObjectWithFormulaError:(id)error refCount:(unsigned int)count
{
  v4 = *&count;
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = TSTTableDataFormulaError;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, error);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v10, archive, v11, v12);
  v13 = *(archive + 4);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2215BFD9C;
  v18[3] = &unk_2784674A0;
  v18[4] = self;
  v14 = completionCopy;
  v19 = v14;
  v15 = unarchiverCopy;
  v17 = objc_opt_class();
  if (v13)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v16, v13, v17, 0, v18);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v16, MEMORY[0x277D80A18], v17, 0, v18);
  }
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v16.receiver = self;
  v16.super_class = TSTTableDataFormulaError;
  [(TSTTableDataObject *)&v16 encodeToArchive:archive archiver:archiverCopy];
  v13 = objc_msgSend_formulaError(self, v7, v8, v9, v10);
  *(archive + 4) |= 2u;
  v14 = *(archive + 4);
  if (!v14)
  {
    v15 = *(archive + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x223DA0390](v15);
    *(archive + 4) = v14;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v11, v13, v14, v12);
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_refCount(self, a2, v2, v3, v4);
  v12 = objc_msgSend_formulaError(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"refCount: %d   _formulaError: %@", v14, v15, v7, v12);

  return v16;
}

@end