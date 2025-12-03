@interface TSCEUnpersistedStorage
+ (id)copyStorageUnpersisted:(id)unpersisted;
- (id)copyPersistedWithContext:(id)context;
@end

@implementation TSCEUnpersistedStorage

+ (id)copyStorageUnpersisted:(id)unpersisted
{
  unpersistedCopy = unpersisted;
  v4 = [TSCEUnpersistedStorage alloc];
  v9 = objc_msgSend_context(unpersistedCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_stylesheet(unpersistedCopy, v10, v11, v12, v13);
  v16 = objc_msgSend_initWithContext_string_stylesheet_kind_(v4, v15, v9, 0, v14, 5);

  objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v16, v17, unpersistedCopy, 0, 0, 0);
  return v16;
}

- (id)copyPersistedWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(MEMORY[0x277D80F28]);
  v10 = objc_msgSend_stylesheet(self, v6, v7, v8, v9);
  v12 = objc_msgSend_initWithContext_string_stylesheet_kind_(v5, v11, contextCopy, 0, v10, 5);

  objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v12, v13, self, 0, 0, 0);
  return v12;
}

@end