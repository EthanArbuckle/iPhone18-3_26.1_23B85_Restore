@interface VFXNodeManipulableItem
+ (id)nodeManipulatorItemWithNode:(id)a3 screenSize:(float)a4;
+ (void)addItems:(id)a3 toWorld:(id)a4;
+ (void)removeItemsFromWorld:(id)a3;
- (id)cloneForManipulators;
- (id)parentItem;
- (uint64_t)scale;
- (uint64_t)setTransform:(uint64_t)a3;
- (uint64_t)setWorldTransform:(uint64_t)a3;
- (uint64_t)transform;
- (uint64_t)worldTransform;
- (void)initializeDraggedTransform;
- (void)validateClone;
@end

@implementation VFXNodeManipulableItem

+ (id)nodeManipulatorItemWithNode:(id)a3 screenSize:(float)a4
{
  v6 = objc_alloc_init(VFXNodeManipulableItem);
  *&v7 = a4;
  objc_msgSend_setScreenSize_(v6, v8, v9, v10, v7);
  objc_msgSend_setNode_(v6, v11, a3, v12);

  return v6;
}

- (uint64_t)transform
{
  v4 = objc_msgSend_node(a1, a2, a3, a4);
  v8 = objc_msgSend_presentationNode(v4, v5, v6, v7);

  return objc_msgSend_transform(v8, v9, v10, v11);
}

- (void)initializeDraggedTransform
{
  v4 = self + 1;
  v5 = objc_msgSend_node(self, a2, v2, v3);
  v9 = objc_msgSend_presentationNode(v5, v6, v7, v8);
  objc_msgSend_transform(v9, v10, v11, v12);
  *&v4->super.super.isa = v13;
  *&v4->super.node = v14;
  *&v4->super.elementIndex = v15;
  *v4->_anon_30 = v16;
}

- (uint64_t)setTransform:(uint64_t)a3
{
  v16 = a8.n128_f64[0];
  v14 = a6.n128_f64[0];
  v15 = a7.n128_f64[0];
  v13 = a5.n128_f64[0];
  a1[7] = a5;
  a1[8] = a6;
  a1[9] = a7;
  a1[10] = a8;
  v8 = objc_msgSend_node(a1, a2, a3, a4);

  return objc_msgSend_setTransform_(v8, v9, v10, v11, v13, v14, v15, v16);
}

- (uint64_t)worldTransform
{
  v4 = objc_msgSend_node(a1, a2, a3, a4);
  v8 = objc_msgSend_presentationNode(v4, v5, v6, v7);

  return objc_msgSend_worldTransform(v8, v9, v10, v11);
}

- (uint64_t)setWorldTransform:(uint64_t)a3
{
  v9 = objc_msgSend_node(a1, a2, a3, a4);
  if (objc_msgSend_parentNode(v9, v10, v11, v12))
  {
    v16 = objc_msgSend_node(a1, v13, v14, v15);
    v20 = objc_msgSend_parentNode(v16, v17, v18, v19);
    objc_msgSend_convertTransform_fromNode_(v20, v21, 0, v22, a5, a6, a7, a8);
  }

  else
  {
    v26 = a8;
    v24 = a6;
    v25 = a7;
    v23 = a5;
  }

  return objc_msgSend_setTransform_(a1, v13, v14, v15, v23, v24, v25, v26);
}

- (uint64_t)scale
{
  v4 = objc_msgSend_node(a1, a2, a3, a4);
  v8 = objc_msgSend_presentationNode(v4, v5, v6, v7);

  return objc_msgSend_scale(v8, v9, v10, v11);
}

- (id)parentItem
{
  v5 = objc_msgSend_node(self, a2, v2, v3);
  result = objc_msgSend_parentNode(v5, v6, v7, v8);
  if (result)
  {
    v13 = objc_msgSend_node(self, v10, v11, v12);
    v17 = objc_msgSend_parentNode(v13, v14, v15, v16);
    objc_msgSend_screenSize(self, v18, v19, v20);

    return objc_msgSend_nodeManipulatorItemWithNode_screenSize_(VFXNodeManipulableItem, v21, v17, v22);
  }

  return result;
}

- (id)cloneForManipulators
{
  v5 = objc_msgSend_node(self, a2, v2, v3);
  v9 = objc_msgSend_clone(v5, v6, v7, v8);
  objc_msgSend_opacity(v9, v10, v11, v12);
  *&v14 = v13 * 0.5;
  objc_msgSend_setOpacity_(v9, v15, v16, v17, v14);
  objc_msgSend_setGizmo_(v9, v18, 1, v19);
  v23 = objc_msgSend_node(self, v20, v21, v22);
  objc_msgSend_convertTransform_toNode_(v23, v24, 0, v25, *&VFXMatrix4Identity, unk_1AFE48510, 0.0, unk_1AFE48530);
  objc_msgSend_setTransform_(v9, v26, v27, v28);
  objc_msgSend_screenSize(self, v29, v30, v31);

  return objc_msgSend_nodeManipulatorItemWithNode_screenSize_(VFXNodeManipulableItem, v32, v9, v33);
}

+ (void)addItems:(id)a3 toWorld:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, a2, &v21, v25, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = objc_msgSend_rootNode(a4, v7, v8, v9);
        v18 = objc_msgSend_node(v13, v15, v16, v17);
        objc_msgSend_addChildNode_(v14, v19, v18, v20);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v7, &v21, v25, 16);
    }

    while (v10);
  }
}

+ (void)removeItemsFromWorld:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, a2, &v15, v19, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = objc_msgSend_node(*(*(&v15 + 1) + 8 * v10), v5, v6, v7);
        objc_msgSend_removeFromParentNode(v11, v12, v13, v14);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v5, &v15, v19, 16);
    }

    while (v8);
  }
}

- (void)validateClone
{
  v5 = objc_msgSend_node(self, a2, v2, v3);
  objc_msgSend_setGizmo_(v5, v6, 0, v7);
  v11 = objc_msgSend_node(self, v8, v9, v10);
  objc_msgSend_opacity(v11, v12, v13, v14);
  *&v18 = *&v18 + *&v18;

  objc_msgSend_setOpacity_(v11, v15, v16, v17, v18);
}

@end