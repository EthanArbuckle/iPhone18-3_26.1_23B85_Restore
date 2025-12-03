@interface TSTTableDataConditionalStyleSet
+ (id)objectWithConditionalStyleSet:(id)set refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithConditionalStyleSet:(id)set refCount:(unsigned int)count;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataConditionalStyleSet

+ (id)objectWithConditionalStyleSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithConditionalStyleSet_refCount_(v7, v8, setCopy, v4, v9);

  return inited;
}

- (id)initObjectWithConditionalStyleSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v11.receiver = self;
  v11.super_class = TSTTableDataConditionalStyleSet;
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
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v10, archive, v11, v12);
  v13 = *(archive + 4);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2215BE890;
  v23[3] = &unk_27845F760;
  v23[4] = self;
  v14 = unarchiverCopy;
  v16 = objc_opt_class();
  if (v13)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v15, v13, v16, 0, v23);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v15, MEMORY[0x277D80A18], v16, 0, v23);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2215BE89C;
  v21[3] = &unk_278462580;
  v17 = completionCopy;
  v21[4] = self;
  v22 = v17;
  objc_msgSend_addFinalizeHandler_(v14, v18, v21, v19, v20);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v16.receiver = self;
  v16.super_class = TSTTableDataConditionalStyleSet;
  [(TSTTableDataObject *)&v16 encodeToArchive:archive archiver:archiverCopy];
  v13 = objc_msgSend_conditionalStyleSet(self, v7, v8, v9, v10);
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
  v12 = objc_msgSend_conditionalStyleSet(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"refCount: %d   _conditionalStyleSet: %@", v14, v15, v7, v12);

  return v16;
}

@end