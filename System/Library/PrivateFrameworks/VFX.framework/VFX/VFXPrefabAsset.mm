@interface VFXPrefabAsset
+ (id)prefabWithNode:(id)a3;
- (VFXPrefabAsset)init;
- (VFXPrefabAsset)initWithCoder:(id)a3;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)instantiate:(BOOL)a3;
- (void)addWorldReference:(id)a3;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)disableEntities:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setNode:(id)a3;
- (void)setWorld:(id)a3;
@end

@implementation VFXPrefabAsset

- (VFXPrefabAsset)init
{
  v3.receiver = self;
  v3.super_class = VFXPrefabAsset;
  return [(VFXPrefabAsset *)&v3 init];
}

+ (id)prefabWithNode:(id)a3
{
  v4 = objc_alloc_init(VFXPrefabAsset);
  objc_msgSend_setHidden_(a3, v5, 1, v6);
  v4->_node = a3;

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPrefabAsset;
  [(VFXPrefabAsset *)&v3 dealloc];
}

- (void)setNode:(id)a3
{
  if (self->_node != a3)
  {
    v8 = objc_msgSend_world(self, a2, a3, v3);
    if (v8)
    {
      objc_msgSend_removeWorldReference_(self->_node, v6, v8, v7);
    }

    v9 = a3;
    self->_node = v9;
    if (v8)
    {

      objc_msgSend_addWorldReference_(v9, v10, v8, v11);
    }
  }
}

- (id)instantiate:(BOOL)a3
{
  node = self->_node;
  if (a3)
  {
    v5 = objc_msgSend_deepClone(node, a2, a3, v3);
  }

  else
  {
    v5 = objc_msgSend_clone(node, a2, a3, v3);
  }

  v8 = v5;
  objc_msgSend_enumerateHierarchyUsingBlock_(v5, v6, &unk_1F24EBF38, v7);
  return v8;
}

- (void)disableEntities:(id)a3
{
  v4 = objc_msgSend_node(self, a2, a3, v3);

  objc_msgSend_enumerateHierarchyUsingBlock_(v4, v5, &unk_1F24EBF58, v6);
}

- (void)copyTo:(id)a3 withContext:(id)a4
{
  v7 = objc_msgSend_node(self, a2, a3, a4);
  v10 = objc_msgSend_deepCloneWithContext_(v7, v8, a4, v9);
  objc_msgSend_setNode_(a3, v11, v10, v12);
  v17 = objc_msgSend_name(self, v13, v14, v15);

  objc_msgSend_setName_(a3, v16, v17, v18);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(VFXPrefabAsset);
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend_copyTo_withContext_(self, v6, v5, 0);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (void)addWorldReference:(id)a3
{
  if (self->_world != a3)
  {
    objc_msgSend_setWorld_(self, a2, a3, v3);
  }
}

- (void)setWorld:(id)a3
{
  world = self->_world;
  if (world != a3)
  {
    v13[9] = v4;
    v13[10] = v5;
    if (world)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF29C92C;
      v13[3] = &unk_1E7A7E428;
      v13[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v13);
      objc_msgSend_didDetachFromWorld_(self, v9, self->_world, v10);
    }

    self->_world = a3;
    if (a3)
    {
      objc_msgSend_didAttachToWorld_(self, a2, a3, v3);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF29C98C;
      v12[3] = &unk_1E7A7E428;
      v12[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v11, 1, v12);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 32) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (VFXPrefabAsset)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = VFXPrefabAsset;
  v4 = [(VFXPrefabAsset *)&v13 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"rootNode");
    objc_msgSend_setNode_(v4, v8, v7, v9);
    v10 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"name");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_node, @"rootNode");
  name = self->_name;

  objc_msgSend_encodeObject_forKey_(a3, v5, name, @"name");
}

@end