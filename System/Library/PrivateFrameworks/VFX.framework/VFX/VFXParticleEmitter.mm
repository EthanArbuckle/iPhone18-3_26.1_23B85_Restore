@interface VFXParticleEmitter
+ (VFXParticleEmitter)particleEmitterWithEntityHandle:(id)handle;
+ (VFXParticleEmitter)particleEmitterWithEntityObject:(id)object;
+ (id)presentationParticleEmitterWithEntityHandle:(id)handle;
- (NSString)description;
- (VFXParticleEmitter)initWithCoder:(id)coder;
- (VFXParticleEmitter)initWithCoreEntityHandle:(id)handle;
- (VFXParticleEmitter)initWithEntityHandle:(id)handle;
- (VFXParticleEmitter)initWithTag:(id)tag;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPresentationWithEntityHandle:(id)handle;
- (void)__updateCAnchor;
- (void)__updateCSimulationSpeed;
- (void)addWorldReference:(id)reference;
- (void)copyTo:(id)to withContext:(id)context;
- (void)coreHandleWasResolved;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)killParticles;
- (void)restart;
- (void)retargetWithRemapTable:(__CFDictionary *)table;
- (void)setAnchor:(id)anchor;
- (void)setSimulationSpeed:(float)speed;
- (void)setWorld:(id)world;
@end

@implementation VFXParticleEmitter

- (VFXParticleEmitter)initWithTag:(id)tag
{
  v9.receiver = self;
  v9.super_class = VFXParticleEmitter;
  v4 = [(VFXParticleEmitter *)&v9 init];
  if (v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v4->_coreHandle = objc_msgSend_initWithTag_(v5, v6, tag, v7);
    v4->_speed = 1.0;
  }

  return v4;
}

- (VFXParticleEmitter)initWithEntityHandle:(id)handle
{
  v6.receiver = self;
  v6.super_class = VFXParticleEmitter;
  v4 = [(VFXParticleEmitter *)&v6 init];
  if (v4)
  {
    v4->_coreHandle = handle;
    v4->_speed = 1.0;
  }

  return v4;
}

- (id)initPresentationWithEntityHandle:(id)handle
{
  v6.receiver = self;
  v6.super_class = VFXParticleEmitter;
  v4 = [(VFXParticleEmitter *)&v6 init];
  if (v4)
  {
    v4->_coreHandle = handle;
    v4->_speed = 1.0;
    *(v4 + 32) |= 1u;
  }

  return v4;
}

- (VFXParticleEmitter)initWithCoreEntityHandle:(id)handle
{
  v6.receiver = self;
  v6.super_class = VFXParticleEmitter;
  v4 = [(VFXParticleEmitter *)&v6 init];
  if (v4)
  {
    v4->_coreHandle = handle;
    v4->_speed = 1.0;
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_simulationAnchor, 0);
  v3.receiver = self;
  v3.super_class = VFXParticleEmitter;
  [(VFXParticleEmitter *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>", v7, v5, self);
}

+ (VFXParticleEmitter)particleEmitterWithEntityHandle:(id)handle
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithEntityHandle_(v4, v5, handle, v6);

  return v7;
}

+ (id)presentationParticleEmitterWithEntityHandle:(id)handle
{
  v4 = [self alloc];
  inited = objc_msgSend_initPresentationWithEntityHandle_(v4, v5, handle, v6);

  return inited;
}

+ (VFXParticleEmitter)particleEmitterWithEntityObject:(id)object
{
  v4 = [self alloc];
  v7 = objc_msgSend_handleWithEntityObject_(VFXCoreEntityHandle, v5, object, v6);
  v10 = objc_msgSend_initWithEntityHandle_(v4, v8, v7, v9);

  return v10;
}

- (void)killParticles
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF31547C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)restart
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF315534;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)setSimulationSpeed:(float)speed
{
  if (self->_speed != speed)
  {
    self->_speed = speed;
    objc_msgSend___updateCSimulationSpeed(self, a2, v3, v4);
  }
}

- (void)__updateCSimulationSpeed
{
  objc_msgSend_simulationSpeed(self, a2, v2, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF315620;
  v7[3] = &unk_1E7A7E270;
  v7[4] = self;
  v8 = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
}

- (void)setAnchor:(id)anchor
{
  if (objc_msgSend_anchor(self, a2, anchor, v3) != anchor)
  {
    objc_storeWeak(&self->_simulationAnchor, anchor);
    objc_msgSend___updateCAnchor(self, v6, v7, v8);

    objc_msgSend_killParticles(self, v9, v10, v11);
  }
}

- (void)__updateCAnchor
{
  v5 = objc_msgSend_anchor(self, a2, v2, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF315770;
  v7[3] = &unk_1E7A7E220;
  v7[4] = self;
  v7[5] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  coreHandle = self->_coreHandle;
  if (coreHandle)
  {
    (*(block + 2))(block, coreHandle, 0, 0);
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
      v9[2] = sub_1AF315914;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF315974;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
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

- (void)coreHandleWasResolved
{
  objc_msgSend___updateCSimulationSpeed(self, a2, v2, v3);

  objc_msgSend___updateCAnchor(self, v5, v6, v7);
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to, context);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  *(to + 1) = sub_1AF2BED30(self->_coreHandle, context);
  *&v9 = self->_speed;
  objc_msgSend_setSimulationSpeed_(to, v10, v11, v12, v9);
  v16 = objc_msgSend_anchor(self, v13, v14, v15);
  objc_msgSend_setAnchor_(to, v17, v16, v18);

  objc_msgSend_commitImmediate(VFXTransaction, v19, v20, v21);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_coreHandle, @"coreHandle");
  if (self->_speed != 1.0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v5, @"simulationSpeed", v7);
  }

  v8 = objc_msgSend_anchor(self, v5, v6, v7);
  if (v8)
  {

    objc_msgSend_encodeObject_forKey_(coder, v9, v8, @"simulationSpace");
  }
}

- (VFXParticleEmitter)initWithCoder:(id)coder
{
  v46.receiver = self;
  v46.super_class = VFXParticleEmitter;
  v7 = [(VFXParticleEmitter *)&v46 init];
  if (!v7)
  {
    return v7;
  }

  v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
  if (objc_msgSend_containsValueForKey_(coder, v11, @"rootIdentifier", v12))
  {
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"rootIdentifier");
    v16 = [VFXCoreEntityHandle alloc];
    v19 = objc_msgSend_initWithTag_(v16, v17, v15, v18);
  }

  else
  {
    v22 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"coreHandle");
  }

  v7->_coreHandle = v19;
  if (objc_msgSend_containsValueForKey_(coder, v20, @"speed", v21))
  {
    objc_msgSend_decodeFloatForKey_(coder, v24, @"speed", v25);
    objc_msgSend_setSimulationSpeed_(v7, v26, v27, v28);
    objc_msgSend_simulationSpeed(v7, v29, v30, v31);
    v35 = *&v36;
    LODWORD(v36) = 1.0;
    if (v35 != 0.0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v37 = objc_msgSend_containsValueForKey_(coder, v24, @"simulationSpeed", v25);
    LODWORD(v36) = 1.0;
    if (v37)
    {
      objc_msgSend_decodeFloatForKey_(coder, v32, @"simulationSpeed", v34, v36);
    }
  }

  objc_msgSend_setSimulationSpeed_(v7, v32, v33, v34, v36);
LABEL_11:
  if (objc_msgSend_containsValueForKey_(coder, v32, @"simulationSpace", v34, v36))
  {
    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v41, v40, @"simulationSpace");
    objc_msgSend_setAnchor_(v7, v43, v42, v44);
  }

  objc_msgSend_setImmediateMode_(VFXTransaction, v38, v8, v39);
  return v7;
}

- (void)retargetWithRemapTable:(__CFDictionary *)table
{
  v6 = objc_msgSend_anchor(self, a2, table, v3);
  Value = CFDictionaryGetValue(table, v6);
  if (Value)
  {

    objc_msgSend_setAnchor_(self, v8, Value, v9);
  }
}

@end