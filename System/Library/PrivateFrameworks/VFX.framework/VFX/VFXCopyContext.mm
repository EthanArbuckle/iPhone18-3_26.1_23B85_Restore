@interface VFXCopyContext
- (void)_remapEntityReferencesToVFXObjects:(id)objects;
- (void)dealloc;
@end

@implementation VFXCopyContext

- (void)dealloc
{
  remapTable = self->_remapTable;
  if (remapTable)
  {
    CFRelease(remapTable);
    self->_remapTable = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXCopyContext;
  [(VFXCopyContext *)&v4 dealloc];
}

- (void)_remapEntityReferencesToVFXObjects:(id)objects
{
  v4 = sub_1AFDF5054(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1AF2BEDCC();
    v22 = 3221225472;
    v23 = sub_1AF2BEC88;
    v24 = &unk_1E7A79810;
    v25 = v4;
    objc_msgSend_enumerateHierarchyUsingBlock_(objects, v5, v21, v6);
  }

  else if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_behaviorGraph(objects, v7, v8, v9);
    v14 = objc_msgSend_coreEntityHandle(v10, v11, v12, v13);
    v18 = objc_msgSend_entityObject(v14, v15, v16, v17);

    objc_msgSend_updateVFXObjectReferences_(v18, v19, v4, v20);
  }
}

@end