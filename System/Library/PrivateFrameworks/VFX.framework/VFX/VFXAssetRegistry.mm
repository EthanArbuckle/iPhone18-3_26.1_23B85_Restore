@interface VFXAssetRegistry
- (VFXAssetRegistry)init;
- (VFXAssetRegistry)initWithCoder:(id)coder;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)setWorld:(id)world;
@end

@implementation VFXAssetRegistry

- (VFXAssetRegistry)init
{
  v7.receiver = self;
  v7.super_class = VFXAssetRegistry;
  v5 = [(VFXAssetRegistry *)&v7 init];
  if (v5)
  {
    v5->_root = objc_msgSend_group(VFXAssetNode, v2, v3, v4);
  }

  return v5;
}

- (void)dealloc
{
  world = self->_world;
  if (world)
  {
    objc_msgSend_removeWorldReference_(self->_root, a2, world, v2);
    self->_world = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXAssetRegistry;
  [(VFXAssetRegistry *)&v5 dealloc];
}

- (VFXAssetRegistry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXAssetRegistry;
  v4 = [(VFXAssetRegistry *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_root = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"root");
  }

  return v4;
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
      v9[2] = sub_1AF29AFCC;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF29B02C;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 24) & 1) == 0)
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

@end