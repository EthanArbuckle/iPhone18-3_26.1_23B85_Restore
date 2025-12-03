@interface VFXAssetNode
+ (id)assetNodeWithAsset:(id)asset;
+ (id)group;
- (BOOL)_childNodesPassingTest:(id)test recursively:(BOOL)recursively output:(id)output;
- (BOOL)_enumerateChildNodesUsingBlock:(id)block;
- (NSArray)childNodes;
- (NSString)description;
- (NSString)name;
- (VFXAsset)asset;
- (VFXAssetNode)init;
- (VFXAssetNode)initWithCoder:(id)coder;
- (__CFXWorld)worldRef;
- (id)childNodeWithAssetName:(id)name;
- (id)childNodeWithName:(id)name;
- (id)childNodesPassingTest:(id)test recursively:(BOOL)recursively;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)enclosingPrefab;
- (id)identifier;
- (id)initPresentation:(id)presentation;
- (id)presentationObject;
- (id)registry;
- (id)script_instantiate:(BOOL)script_instantiate;
- (void)_removeChild:(id)child;
- (void)addChildNode:(id)node;
- (void)addWorldReference:(id)reference;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateChildNodesUsingBlock:(id)block;
- (void)enumerateHierarchyUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)insertChildNode:(id)node atIndex:(unint64_t)index;
- (void)removeFromParentNode;
- (void)setChildNodes:(id)nodes;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setWorld:(id)world;
- (void)setupChildsArrayIfNeeded;
@end

@implementation VFXAssetNode

- (VFXAssetNode)init
{
  v11.receiver = self;
  v11.super_class = VFXAssetNode;
  v5 = [(VFXAssetNode *)&v11 init];
  if (v5)
  {
    v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3, v4);
    v5->_identifier = objc_msgSend_UUIDString(v6, v7, v8, v9);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAssetNode;
  [(VFXAssetNode *)&v3 dealloc];
}

- (id)initPresentation:(id)presentation
{
  v22.receiver = self;
  v22.super_class = VFXAssetNode;
  v4 = [(VFXAssetNode *)&v22 init];
  v8 = v4;
  if (v4)
  {
    *(v4 + 64) |= 1u;
    v4->_asset = objc_msgSend_asset(presentation, v5, v6, v7);
    v8->_isGroup = objc_msgSend_isGroup(presentation, v9, v10, v11);
    v8->_prefab = objc_msgSend_isPrefab(presentation, v12, v13, v14);
    v8->_name = objc_msgSend_name(presentation, v15, v16, v17);
    v8->_identifier = objc_msgSend_identifier(presentation, v18, v19, v20);
    v8->_world = *(presentation + 7);
  }

  return v8;
}

- (id)presentationObject
{
  v3 = [VFXAssetNode alloc];
  inited = objc_msgSend_initPresentation_(v3, v4, self, v5);

  return inited;
}

- (NSString)description
{
  if (self->_isGroup)
  {
    asset = @"group";
  }

  else
  {
    asset = self->_asset;
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"<VFXAssetNode %p: %@ - asset: %@>", v2, self, self->_name, asset);
}

- (id)identifier
{
  if (!self->_identifier)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF4828(v3);
    }
  }

  return self->_identifier;
}

- (id)registry
{
  v4 = objc_msgSend_world(self, a2, v2, v3);

  return objc_msgSend_assetRegistry(v4, v5, v6, v7);
}

- (void)setIdentifier:(id)identifier
{
  if (!identifier)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF48AC(v5);
    }
  }

  self->_identifier = identifier;
}

- (void)copyTo:(id)to withContext:(id)context
{
  *(to + 16) = self->_isGroup;
  *(to + 17) = self->_prefab;
  v7 = objc_msgSend_name(self, a2, to, context);
  objc_msgSend_setName_(to, v8, v7, v9);
  v13 = objc_msgSend_asset(self, v10, v11, v12);
  *(to + 1) = sub_1AF2BED30(v13, context);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (id)clone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(self, a2, v2, v3);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_msgSend_childNodes(self, v6, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = objc_msgSend_clone(*(*(&v22 + 1) + 8 * v17), v12, v13, v14);
        objc_msgSend_addChildNode_(v5, v19, v18, v20);
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
    }

    while (v15);
  }

  return v5;
}

+ (id)assetNodeWithAsset:(id)asset
{
  v4 = objc_alloc_init(VFXAssetNode);
  v4->_asset = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v4->_isGroup = 257;
  }

  return v4;
}

+ (id)group
{
  result = objc_alloc_init(VFXAssetNode);
  *(result + 16) = 1;
  return result;
}

- (NSArray)childNodes
{
  v4 = objc_msgSend_copy(self->_children, a2, v2, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setChildNodes:(id)nodes
{
  v38 = *MEMORY[0x1E69E9840];
  children = self->_children;
  if (children)
  {
    v7 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], a2, children, v3);
  }

  else
  {
    v7 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodes, a2, &v32, v37, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(nodes);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        objc_msgSend_removeObject_(v7, v9, v14, v10);
        if (v14[5] != self)
        {
          objc_msgSend_removeFromParent(v14, v9, v15, v10);
          v14[5] = self;
          objc_msgSend_setWorld_(v14, v16, self->_world, v17);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodes, v9, &v32, v37, 16);
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v28, v36, 16);
  if (v18)
  {
    v22 = v18;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v7);
        }

        v25 = *(*(&v28 + 1) + 8 * j);
        v25[5] = 0;
        objc_msgSend_setWorld_(v25, v19, self->_world, v21);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v19, &v28, v36, 16);
    }

    while (v22);
  }

  objc_msgSend_setupChildsArrayIfNeeded(self, v19, v20, v21);
  objc_msgSend_setArray_(self->_children, v26, nodes, v27);
}

- (void)setupChildsArrayIfNeeded
{
  if (!self->_children)
  {
    self->_children = objc_alloc_init(MEMORY[0x1E695DF70]);
  }
}

- (void)addChildNode:(id)node
{
  if (*(node + 5))
  {
    objc_msgSend_removeFromParent(node, a2, node, v3);
  }

  *(node + 5) = self;
  objc_msgSend_setWorld_(node, a2, self->_world, v3);
  objc_msgSend_setupChildsArrayIfNeeded(self, v6, v7, v8);
  children = self->_children;

  objc_msgSend_addObject_(children, v9, node, v10);
}

- (void)insertChildNode:(id)node atIndex:(unint64_t)index
{
  if (*(node + 5))
  {
    objc_msgSend_removeFromParent(node, a2, node, index);
  }

  objc_msgSend_setWorld_(node, a2, self->_world, index);
  *(node + 5) = self;
  objc_msgSend_setupChildsArrayIfNeeded(self, v7, v8, v9);
  children = self->_children;

  objc_msgSend_insertObject_atIndex_(children, v10, node, index);
}

- (void)_removeChild:(id)child
{
  objc_msgSend_setWorld_(child, a2, 0, v3);
  children = self->_children;

  objc_msgSend_removeObject_(children, v6, child, v7);
}

- (void)removeFromParentNode
{
  v5 = objc_msgSend_parentNode(self, a2, v2, v3);
  objc_msgSend__removeChild_(v5, v6, self, v7);
  self->_parent = 0;
}

- (BOOL)_childNodesPassingTest:(id)test recursively:(BOOL)recursively output:(id)output
{
  recursivelyCopy = recursively;
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if ((*(test + 2))(test, self, &v25))
  {
    objc_msgSend_addObject_(output, v9, self, v11);
  }

  if (recursivelyCopy && (v25 & 1) == 0 && (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, v12 = objc_msgSend_childNodes(self, v9, v10, v11, 0), (v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v26, 16)) != 0))
  {
    v16 = v14;
    v17 = *v22;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = 1;
      v25 = objc_msgSend__childNodesPassingTest_recursively_output_(*(*(&v21 + 1) + 8 * v18), v15, test, 1, output);
      if (v25)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v21, v26, 16);
        if (v16)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v19 = v25;
  }

  return v19 & 1;
}

- (id)childNodesPassingTest:(id)test recursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, test, recursively);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = objc_msgSend_childNodes(self, v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v20;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v20 != v16)
      {
        objc_enumerationMutation(v11);
      }

      if (objc_msgSend__childNodesPassingTest_recursively_output_(*(*(&v19 + 1) + 8 * v17), v14, test, recursivelyCopy, v7))
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v19, v23, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        return v7;
      }
    }
  }

  return v7;
}

- (BOOL)_enumerateChildNodesUsingBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  (*(block + 2))(block, self, &v22);
  if ((v22 & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = objc_msgSend_childNodes(self, v5, v6, v7, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v23, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v22 = objc_msgSend__enumerateChildNodesUsingBlock_(*(*(&v18 + 1) + 8 * i), v11, block, v12);
          if (v22)
          {
            v16 = 1;
            return v16 & 1;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v23, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = v22;
  return v16 & 1;
}

- (void)enumerateChildNodesUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = objc_msgSend_childNodes(self, a2, block, v3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v5);
      }

      if (objc_msgSend__enumerateChildNodesUsingBlock_(*(*(&v13 + 1) + 8 * v12), v8, block, v9))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)enumerateHierarchyUsingBlock:(id)block
{
  v7 = 0;
  (*(block + 2))(block, self, &v7);
  if ((v7 & 1) == 0)
  {
    objc_msgSend_enumerateChildNodesUsingBlock_(self, v5, block, v6);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  asset = self->_asset;
  if (asset)
  {
    (*(block + 2))(block, asset, 0, 0);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(children, asset, &v13, v17, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(children);
        }

        (*(block + 2))(block, *(*(&v13 + 1) + 8 * v11++), 0, 0);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(children, v12, &v13, v17, 16);
    }

    while (v9);
  }
}

- (void)addWorldReference:(id)reference
{
  if (self->_world != reference)
  {
    objc_msgSend_setWorld_(self, a2, reference, v3);
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF29A394;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF29A3F4;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (id)childNodeWithAssetName:(id)name
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1AF29A564;
  v11 = sub_1AF29A574;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF29A580;
  v6[3] = &unk_1E7A7E4B0;
  v6[4] = name;
  v6[5] = &v7;
  objc_msgSend_enumerateChildNodesUsingBlock_(self, a2, v6, v3);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)childNodeWithName:(id)name
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1AF29A564;
  v11 = sub_1AF29A574;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF29A6BC;
  v6[3] = &unk_1E7A7E4B0;
  v6[4] = name;
  v6[5] = &v7;
  objc_msgSend_enumerateChildNodesUsingBlock_(self, a2, v6, v3);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)enclosingPrefab
{
  while (1)
  {
    selfCopy = self;
    if (!self || (objc_msgSend_isPrefab(self, a2, v2, v3) & 1) != 0)
    {
      break;
    }

    self = objc_msgSend_parentNode(selfCopy, v5, v6, v7);
  }

  return selfCopy;
}

- (NSString)name
{
  asset = self->_asset;
  if (asset)
  {
    return objc_msgSend_name(asset, a2, v2, v3);
  }

  else
  {
    return self->_name;
  }
}

- (void)setName:(id)name
{
  asset = self->_asset;
  if (asset)
  {

    objc_msgSend_setName_(asset, a2, name, v3);
  }

  else
  {
    name = self->_name;
    if (name != name)
    {

      self->_name = name;
    }
  }
}

- (VFXAsset)asset
{
  if ((*(self + 64) & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return self->_asset;
  }

  asset = self->_asset;

  return objc_msgSend_presentationObject(asset, v3, v4, v5);
}

- (VFXAssetNode)initWithCoder:(id)coder
{
  v57[8] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = VFXAssetNode;
  v6 = [(VFXAssetNode *)&v54 init];
  if (!v6)
  {
    return v6;
  }

  v6->_isGroup = objc_msgSend_decodeBoolForKey_(coder, v4, @"isGroup", v5);
  v6->_prefab = objc_msgSend_decodeBoolForKey_(coder, v7, @"isPrefab", v8);
  v9 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"identifier");
  if (!v12)
  {
    v14 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v11, 0, v13);
    v12 = objc_msgSend_UUIDString(v14, v15, v16, v17);
  }

  objc_msgSend_setIdentifier_(v6, v11, v12, v13);
  if (v6->_isGroup && !v6->_prefab)
  {
    v18 = objc_opt_class();
    v6->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"name");
  }

  v20 = MEMORY[0x1E695DFD8];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v57[2] = objc_opt_class();
  v57[3] = objc_opt_class();
  v57[4] = objc_opt_class();
  v57[5] = objc_opt_class();
  v57[6] = objc_opt_class();
  v57[7] = objc_opt_class();
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v57, 8);
  v25 = objc_msgSend_setWithArray_(v20, v23, v22, v24);
  v6->_asset = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v26, v25, @"asset");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v27 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v27 = objc_msgSend_mesh(v6->_asset, v28, v29, v30);
  }

  v6->_asset = v27;
LABEL_12:
  v31 = MEMORY[0x1E695DFD8];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v32, v56, 2);
  v36 = objc_msgSend_setWithArray_(v31, v34, v33, v35);
  v38 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v37, v36, @"childNodes");
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v50, v55, 16);
  if (v40)
  {
    v44 = v40;
    v45 = *v51;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v38);
        }

        v47 = *(*(&v50 + 1) + 8 * i);
        if ((objc_msgSend_isGroup(v47, v41, v42, v43) & 1) != 0 || objc_msgSend_asset(v47, v41, v48, v43))
        {
          objc_msgSend_addChildNode_(v6, v41, v47, v43);
        }
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v50, v55, 16);
    }

    while (v44);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_identifier, @"identifier");
  if (self->_isGroup)
  {
    objc_msgSend_encodeBool_forKey_(coder, v5, 1, @"isGroup");
    if (self->_prefab)
    {
      objc_msgSend_encodeBool_forKey_(coder, v6, 1, @"isPrefab");
    }

    else
    {
      objc_msgSend_encodeObject_forKey_(coder, v6, self->_name, @"name");
    }
  }

  asset = self->_asset;
  if (asset)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, asset, @"asset");
  }

  children = self->_children;
  if (children)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_msgSend_options(coder, v9, v10, v11);
      v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"VFXWorldExportOptimize", v14);
      if (objc_msgSend_BOOLValue(v15, v16, v17, v18))
      {
        children = objc_msgSend_VFX_compactMapObjectsUsingBlock_(self->_children, v9, &unk_1F24EBF18, v19);
      }
    }

    objc_msgSend_encodeObject_forKey_(coder, v9, children, @"childNodes");
  }
}

- (id)script_instantiate:(BOOL)script_instantiate
{
  script_instantiateCopy = script_instantiate;
  objc_msgSend_asset(self, a2, script_instantiate, v3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = objc_msgSend_asset(self, v6, v7, v8);
  v12 = objc_msgSend_instantiate_(v9, v10, script_instantiateCopy, v11);
  v16 = objc_msgSend_world(self, v13, v14, v15);
  v20 = objc_msgSend_rootNode(v16, v17, v18, v19);
  objc_msgSend_addChildNode_(v20, v21, v12, v22);
  objc_msgSend_setHidden_(v12, v23, 0, v24);
  return v12;
}

@end