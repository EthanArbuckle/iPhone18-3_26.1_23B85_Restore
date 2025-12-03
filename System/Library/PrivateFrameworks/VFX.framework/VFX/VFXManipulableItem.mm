@interface VFXManipulableItem
- (BOOL)isEqual:(id)equal;
- (__n128)setDraggedTransform:(__n128)transform;
- (unint64_t)hash;
- (void)dealloc;
- (void)setTransform:(uint64_t)transform;
- (void)setWorldTransform:(uint64_t)transform;
@end

@implementation VFXManipulableItem

- (void)dealloc
{
  objc_msgSend_setNode_(self, a2, 0, v2);
  objc_msgSend_setComponent_(self, v4, 0, v5);
  v6.receiver = self;
  v6.super_class = VFXManipulableItem;
  [(VFXManipulableItem *)&v6 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_node(self, v5, v6, v7);
    if (v8 == objc_msgSend_node(equal, v9, v10, v11) && (v15 = objc_msgSend_elementIndex(self, v12, v13, v14), v15 == objc_msgSend_elementIndex(equal, v16, v17, v18)))
    {
      v22 = objc_msgSend_component(equal, v19, v20, v21);
      return v22 == objc_msgSend_component(equal, v23, v24, v25);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = VFXManipulableItem;
    return [(VFXManipulableItem *)&v27 isEqual:equal];
  }
}

- (unint64_t)hash
{
  v4 = objc_msgSend_node(self, a2, v2, v3);

  return objc_msgSend_hash(v4, v5, v6, v7);
}

- (void)setTransform:(uint64_t)transform
{
  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDCFDF8(transform, v2);
  }
}

- (void)setWorldTransform:(uint64_t)transform
{
  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDCFE70(transform, v2);
  }
}

- (__n128)setDraggedTransform:(__n128)transform
{
  result[3] = a2;
  result[4] = transform;
  result[5] = a4;
  result[6] = a5;
  return result;
}

@end