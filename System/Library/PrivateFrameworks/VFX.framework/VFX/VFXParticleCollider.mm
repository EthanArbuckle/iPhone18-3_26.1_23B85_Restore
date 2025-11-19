@interface VFXParticleCollider
+ (id)particleColliderWithEntityHandle:(id)a3;
+ (id)particleColliderWithEntityObject:(id)a3;
+ (id)presentationParticleColliderWithEntityHandle:(id)a3;
- (NSString)description;
- (VFXParticleCollider)initWithCoder:(id)a3;
- (VFXParticleCollider)initWithCoreEntityHandle:(id)a3;
- (VFXParticleCollider)initWithEntityHandle:(id)a3;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPresentationWithEntityHandle:(id)a3;
- (void)addWorldReference:(id)a3;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)setWorld:(id)a3;
@end

@implementation VFXParticleCollider

- (VFXParticleCollider)initWithEntityHandle:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXParticleCollider;
  v4 = [(VFXParticleCollider *)&v6 init];
  if (v4)
  {
    v4->_coreHandle = a3;
  }

  return v4;
}

- (id)initPresentationWithEntityHandle:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXParticleCollider;
  v4 = [(VFXParticleCollider *)&v6 init];
  if (v4)
  {
    v4->_coreHandle = a3;
    *(v4 + 8) |= 1u;
  }

  return v4;
}

- (VFXParticleCollider)initWithCoreEntityHandle:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXParticleCollider;
  v4 = [(VFXParticleCollider *)&v6 init];
  if (v4)
  {
    v4->_coreHandle = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXParticleCollider;
  [(VFXParticleCollider *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>", v7, v5, self);
}

+ (id)particleColliderWithEntityHandle:(id)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithEntityHandle_(v4, v5, a3, v6);

  return v7;
}

+ (id)particleColliderWithEntityObject:(id)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_handleWithEntityObject_(VFXCoreEntityHandle, v5, a3, v6);
  v10 = objc_msgSend_initWithEntityHandle_(v4, v8, v7, v9);

  return v10;
}

+ (id)presentationParticleColliderWithEntityHandle:(id)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithEntityHandle_(v4, v5, a3, v6);

  return v7;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  coreHandle = self->_coreHandle;
  if (coreHandle)
  {
    (*(a4 + 2))(a4, coreHandle, 0, 0);
  }
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
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF314D58;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF314DB8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 8) & 1) == 0)
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

- (void)copyTo:(id)a3 withContext:(id)a4
{
  objc_msgSend_begin(VFXTransaction, a2, a3, a4);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  *(a3 + 2) = sub_1AF2BED30(self->_coreHandle, a4);

  objc_msgSend_commitImmediate(VFXTransaction, v9, v10, v11);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (VFXParticleCollider)initWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = VFXParticleCollider;
  v7 = [(VFXParticleCollider *)&v25 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    if (objc_msgSend_containsValueForKey_(a3, v11, @"rootIdentifier", v12))
    {
      v13 = objc_opt_class();
      v15 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"rootIdentifier");
      v16 = [VFXCoreEntityHandle alloc];
      v19 = objc_msgSend_initWithTag_(v16, v17, v15, v18);
    }

    else
    {
      v22 = objc_opt_class();
      v19 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v23, v22, @"coreHandle");
    }

    v7->_coreHandle = v19;
    objc_msgSend_setImmediateMode_(VFXTransaction, v20, v8, v21);
  }

  return v7;
}

@end