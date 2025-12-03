@interface VFXForceField
+ (VFXForceField)forceFieldWithForceFieldRef:(__CFXForceField *)ref;
+ (id)dragField;
+ (id)field;
+ (id)harmonicField;
+ (id)linearField;
+ (id)magneticField;
+ (id)noiseFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed;
+ (id)presentationForceFieldWithForceFieldRef:(__CFXForceField *)ref;
+ (id)radialField;
+ (id)springField;
+ (id)turbulenceFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed;
+ (id)vortexField;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)isActive;
- (BOOL)isLocal;
- (NSArray)animationKeys;
- (VFXForceField)init;
- (VFXForceField)initWithCoder:(id)coder;
- (VFXForceField)initWithFieldType:(int64_t)type;
- (VFXForceField)initWithForceFieldRef:(__CFXForceField *)ref;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (double)halfExtent;
- (double)offset;
- (float)falloffExponent;
- (float)smoothness;
- (float)speed;
- (float)strength;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)halfExtentValue;
- (id)identifier;
- (id)initPresentationForceFieldWithForceFieldRef:(__CFXForceField *)ref;
- (id)name;
- (id)offsetValue;
- (id)presentationObject;
- (id)valueForKey:(id)key;
- (int64_t)cullMode;
- (int64_t)fieldType;
- (int64_t)scope;
- (int64_t)shape;
- (unint64_t)categoryBitMask;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setActive:(BOOL)active;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setCullMode:(int64_t)mode;
- (void)setFalloffExponent:(float)exponent;
- (void)setFieldType:(int64_t)type;
- (void)setHalfExtent:(VFXForceField *)self;
- (void)setHalfExtentValue:(id)value;
- (void)setIdentifier:(id)identifier;
- (void)setLocal:(BOOL)local;
- (void)setName:(id)name;
- (void)setOffset:(VFXForceField *)self;
- (void)setOffsetValue:(id)value;
- (void)setScope:(int64_t)scope;
- (void)setSettings:(void *)settings;
- (void)setShape:(int64_t)shape;
- (void)setSmoothness:(float)smoothness;
- (void)setSpeed:(float)speed;
- (void)setStrength:(float)strength;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWorld:(id)world;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXForceField

- (id)halfExtentValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_halfExtent(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_halfExtent(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_halfExtent(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setHalfExtentValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setHalfExtent_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)offsetValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_offset(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_offset(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_offset(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setOffsetValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setOffset_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (VFXForceField)init
{
  v9.receiver = self;
  v9.super_class = VFXForceField;
  v2 = [(VFXForceField *)&v9 init];
  if (v2)
  {
    *&v7 = sub_1AF3502DC().n128_u64[0];
    v2->_forceField = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6, v7);
  }

  return v2;
}

- (VFXForceField)initWithFieldType:(int64_t)type
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = VFXForceField;
  v4 = [(VFXForceField *)&v11 init];
  if (v4)
  {
    sub_1AF3502DC();
    v4->_forceField = v5;
    sub_1AF350360(v5, typeCopy);
    forceField = v4->_forceField;
    if (forceField)
    {
      sub_1AF16CDFC(forceField, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
  }

  return v4;
}

- (VFXForceField)initWithForceFieldRef:(__CFXForceField *)ref
{
  v13.receiver = self;
  v13.super_class = VFXForceField;
  v4 = [(VFXForceField *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_forceField = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
    objc_msgSend__syncObjCAnimations(v4, v9, v10, v11);
  }

  return v4;
}

- (id)initPresentationForceFieldWithForceFieldRef:(__CFXForceField *)ref
{
  v7.receiver = self;
  v7.super_class = VFXForceField;
  v4 = [(VFXForceField *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_forceField = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (VFXForceField)forceFieldWithForceFieldRef:(__CFXForceField *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithForceFieldRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

+ (id)field
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)presentationObject
{
  v3 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initPresentationForceFieldWithForceFieldRef_(v3, v4, self->_forceField, v5);

  return inited;
}

+ (id)presentationForceFieldWithForceFieldRef:(__CFXForceField *)ref
{
  v4 = [VFXForceField alloc];
  inited = objc_msgSend_initPresentationForceFieldWithForceFieldRef_(v4, v5, ref, v6);

  return inited;
}

- (void)dealloc
{
  forceField = self->_forceField;
  if (forceField)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_forceField, 0);
      forceField = self->_forceField;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, forceField, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXForceField;
  [(VFXForceField *)&v5 dealloc];
}

- (int64_t)fieldType
{
  if (*(self + 28))
  {
    return sub_1AF350428(self->_forceField);
  }

  else
  {
    return self->_settings.kind;
  }
}

- (void)setFieldType:(int64_t)type
{
  if ((*(self + 28) & 1) != 0 || self->_settings.kind != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.kind = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352244;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"fieldType", v5);
  }
}

+ (id)dragField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 8, v4);

  return v5;
}

+ (id)vortexField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 2, v4);

  return v5;
}

+ (id)radialField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 1, v4);

  return v5;
}

+ (id)linearField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 0, v4);

  return v5;
}

+ (id)noiseFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithFieldType_(v6, v7, 3, v8);
  *&v10 = smoothness;
  objc_msgSend_setSmoothness_(v9, v11, v12, v13, v10);
  *&v14 = speed;
  objc_msgSend_setSpeed_(v9, v15, v16, v17, v14);
  return v9;
}

+ (id)turbulenceFieldWithSmoothness:(float)smoothness animationSpeed:(float)speed
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithFieldType_(v6, v7, 4, v8);
  *&v10 = smoothness;
  objc_msgSend_setSmoothness_(v9, v11, v12, v13, v10);
  *&v14 = speed;
  objc_msgSend_setSpeed_(v9, v15, v16, v17, v14);
  return v9;
}

+ (id)springField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 5, v4);

  return v5;
}

+ (id)magneticField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 6, v4);

  return v5;
}

+ (id)harmonicField
{
  v2 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithFieldType_(v2, v3, 7, v4);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_fieldType(self, v5, v6, v7);
  v11 = objc_msgSend_initWithFieldType_(v4, v9, v8, v10);
  objc_msgSend_begin(VFXTransaction, v12, v13, v14);
  objc_msgSend_setImmediateMode_(VFXTransaction, v15, 1, v16);
  v20 = objc_msgSend_name(self, v17, v18, v19);
  objc_msgSend_setName_(v11, v21, v20, v22);
  v26 = objc_msgSend_categoryBitMask(self, v23, v24, v25);
  objc_msgSend_setCategoryBitMask_(v11, v27, v26, v28);
  objc_msgSend_setSettings_(v11, v29, &self->_settings, v30);
  objc_msgSend__copyAnimationsFrom_(v11, v31, self, v32);
  objc_msgSend__copyBindingsFrom_(v11, v33, self, v34);
  objc_msgSend_commitImmediate(VFXTransaction, v35, v36, v37);
  return v11;
}

- (void)setSettings:(void *)settings
{
  v4 = *(settings + 5);
  v14 = *(settings + 4);
  v15 = v4;
  v5 = *(settings + 7);
  v16 = *(settings + 6);
  v17 = v5;
  v6 = *(settings + 1);
  v10 = *settings;
  v11 = v6;
  v7 = *(settings + 3);
  v12 = *(settings + 2);
  v13 = v7;
  memmove(&self->_settings, settings, 0x80uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF3525F4;
  v9[3] = &unk_1E7A7F708;
  selfCopy = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
}

- (float)strength
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.strength;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF3504D8(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF3504D8(forceField);
  }
}

- (void)setStrength:(float)strength
{
  if ((*(self + 28) & 1) != 0 || self->_settings.strength != strength)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.strength = strength;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352730;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    strengthCopy = strength;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"strength", v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.categoryBitMask;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF3509F0(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF3509F0(forceField);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if ((*(self + 28) & 1) != 0 || self->_settings.categoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.categoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352858;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)falloffExponent
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.falloffExponent;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF350588(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350588(forceField);
  }
}

- (void)setFalloffExponent:(float)exponent
{
  if ((*(self + 28) & 1) != 0 || self->_settings.falloffExponent != exponent)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.falloffExponent = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352994;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    exponentCopy = exponent;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"falloffExponent", v5);
  }
}

- (BOOL)isActive
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.active;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF350638(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350638(forceField);
  }
}

- (void)setActive:(BOOL)active
{
  if ((*(self + 28) & 1) != 0 || self->_settings.active != active)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.active = active;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352AC0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    activeCopy = active;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)isLocal
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.local;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF350704(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350704(forceField);
  }
}

- (void)setLocal:(BOOL)local
{
  if ((*(self + 28) & 1) != 0 || self->_settings.local != local)
  {
    v7 = v3;
    v8 = v4;
    self->_settings.local = local;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352BF0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    localCopy = local;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)scope
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.scope;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF35087C(self->_forceField);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF35087C(self->_forceField);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setScope:(int64_t)scope
{
  if ((*(self + 28) & 1) != 0 || self->_settings.scope != scope)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.scope = scope;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF352D10;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = scope;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"scope", v5);
  }
}

- (double)halfExtent
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v10 = sub_1AF3507C8(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v10;
    }

    else
    {
      v8 = *(self + 8);

      *&v5 = sub_1AF3507C8(v8).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 128);
  }

  return *&v5;
}

- (void)setHalfExtent:(VFXForceField *)self
{
  if ((*(self + 28) & 1) != 0 || (v3 = vceqq_f32(*&self->_anon_78[8], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_anon_78[8] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF352E58;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"halfExtent", v4);
  }
}

- (double)offset
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v10 = sub_1AF350940(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v10;
    }

    else
    {
      v8 = *(self + 8);

      *&v5 = sub_1AF350940(v8).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 144);
  }

  return *&v5;
}

- (void)setOffset:(VFXForceField *)self
{
  if ((*(self + 28) & 1) != 0 || (v3 = vceqq_f32(*&self->_anon_78[24], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_anon_78[24] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF352FA0;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"offset", v4);
  }
}

- (float)smoothness
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_anon_78[40];
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF350B54(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350B54(forceField);
  }
}

- (void)setSmoothness:(float)smoothness
{
  if ((*(self + 28) & 1) != 0 || *&self->_anon_78[40] != smoothness)
  {
    v7 = v3;
    v8 = v4;
    *&self->_anon_78[40] = smoothness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF3530FC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    smoothnessCopy = smoothness;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"smoothness", v5);
  }
}

- (int64_t)shape
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.shape;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF350CB8(self->_forceField);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF350CB8(self->_forceField);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setShape:(int64_t)shape
{
  if ((*(self + 28) & 1) != 0 || self->_settings.shape != shape)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.shape = shape;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF35321C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = shape;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"shape", v5);
  }
}

- (int64_t)cullMode
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_settings.cullMode;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF350AA4(self->_forceField);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF350AA4(self->_forceField);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setCullMode:(int64_t)mode
{
  if ((*(self + 28) & 1) != 0 || self->_settings.cullMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_settings.cullMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF35333C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"cullMode", v5);
  }
}

- (float)speed
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_anon_78[44];
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF350C04(self->_forceField);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    forceField = self->_forceField;

    return sub_1AF350C04(forceField);
  }
}

- (void)setSpeed:(float)speed
{
  if ((*(self + 28) & 1) != 0 || *&self->_anon_78[44] != speed)
  {
    v7 = v3;
    v8 = v4;
    *&self->_anon_78[44] = speed;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF353478;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    speedCopy = speed;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"speed", v5);
  }
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name, v3) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF353558;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (id)name
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_name;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend___CFObject(self, v7, v8, v9);
  v5 = sub_1AF16CBEC(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  v5 = objc_msgSend___CFObject(self, a2, identifier, v3);

  sub_1AF16CD6C(v5, identifier);
}

- (id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF16CD08(v4, v5, v6, v7);
}

- (void)_updateEntityModelFromPresentation
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);

  self->_name = sub_1AF16CBEC(v5);
}

- (void)_updateEntityPresentationFromModel
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);
  name = self->_name;

  sub_1AF16CC34(v5, name);
}

- (void)makeUniqueID
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);
  v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);

  sub_1AF16CD6C(v4, v12);
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v8);
      }
    }
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
      v9[2] = sub_1AF35390C;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF35396C;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
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

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF1CF830(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v9 = objc_msgSend_objectForKey_(self->_animations, v7, key, v8);
  v15 = objc_msgSend_animation(v9, v10, v11, v12) == animation;
  if (v15)
  {
    objc_msgSend_removeWorldReference_(v9, v13, self->_world, v14);
    objc_msgSend_removeObjectForKey_(self->_animations, v16, key, v17);
    v21 = objc_msgSend___CFObject(self, v18, v19, v20);
    if ((sub_1AF16D234(v21) & 1) == 0)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4B20(v22);
      }
    }

    sub_1AF16D870(v21, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v15;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, player, 0);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    if ((*(self + 28) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(player, v11, self->_world, v12);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v13, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v15 = objc_msgSend_timingFunction(VFXTransaction, a2, player, key);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF353C74;
    v18[3] = &unk_1E7A7E2C0;
    v18[4] = player;
    v18[5] = self;
    v18[6] = keyCopy;
    v18[7] = v15;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v18);
  }

  else
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4BA4(self, v17);
    }
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, animation, 0);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v11, animationCopy, v12);
    }

    v13 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v11, animationCopy, v12);
    objc_msgSend_addAnimationPlayer_forKey_(self, v14, v13, keyCopy);

    objc_msgSend_play(v13, v15, v16, v17);
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4C1C(self, v18);
    }
  }
}

- (void)removeAllAnimations
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  world = self->_world;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  animations = self->_animations;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v5, &v25, v29, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v25 + 1) + 8 * i), v7, world, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v7, &v25, v29, 16);
    }

    while (v10);
  }

  objc_msgSend_removeAllObjects(self->_animations, v7, v8, v9);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v13, v14, v15);
  if (v19 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF353FF8, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF353FE8, &unk_1E7A7E2E8, self, v21, *&v20);
  }
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, key, v6);
      objc_msgSend_removeWorldReference_(v8, v9, self->_world, v10);
      objc_msgSend_removeObjectForKey_(self->_animations, v11, key, v12);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v16 = objc_msgSend_timingFunction(VFXTransaction, v13, v14, v15);
    objc_msgSend_animationDuration(VFXTransaction, v17, v18, v19);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF3540E8;
    v22[3] = &unk_1E7A7E310;
    v22[7] = v20;
    v22[4] = self;
    v22[5] = key;
    v22[6] = v16;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, self, v22);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v6 = objc_msgSend_allKeys(self->_animations, v3, v4, v5);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v10 = objc_msgSend___CFObject(self, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    if ((sub_1AF16D234(v10) & 1) == 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4C94(v12);
      }
    }

    v13 = sub_1AF16D614(v11);
    if (v13)
    {
      v14 = v13;
      os_unfair_lock_lock(&self->_animationsLock);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1AF354284;
      v17[3] = &unk_1E7A7E338;
      v17[4] = self;
      sub_1AF375240(v14, v17, v15, v16);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (id)_vfxAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, keyCopy, v6);
      keyCopy = objc_msgSend_animation(v8, v9, v10, v11);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_animationKeys(from, a2, from, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_msgSend_animationPlayerForKey_(from, v9, v14, v10);
        v19 = objc_msgSend_copy(v15, v16, v17, v18);
        objc_msgSend_addAnimationPlayer_forKey_(self, v20, v19, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = objc_msgSend_objectForKey_(animations, v5, keyCopy, v6);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  v9 = objc_msgSend___CFObject(self, a2, animation, key);
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_animationManager(self, v10, v11, v12);
    if (v14)
    {
      v15 = v14;
      v16 = CACurrentMediaTime();

      sub_1AF118EBC(v15, v13, key, animationCopy, nodeCopy, v16);
    }
  }
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v25[15] = v6;
    v25[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, object, v15);
    objc_msgSend_setKeyPathDst_(v13, v16, path, v17);
    objc_msgSend_setKeyPathSrc_(v13, v18, keyPath, v19);
    objc_msgSend_setOptions_(v13, v20, options, v21);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v22, v13, path);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF3546A4;
    v25[3] = &unk_1E7A7E360;
    v25[4] = self;
    v25[5] = object;
    v25[6] = path;
    v25[7] = keyPath;
    v25[8] = options;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v25);
  }
}

- (void)unbindAnimatablePath:(id)path
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, path, v3);
  if (!objc_msgSend_count(self->_bindings, v6, v7, v8))
  {

    self->_bindings = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3547E8;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = path;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3548B4;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF354960;
  v8[3] = &unk_1E7A7E388;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v8, v7);
}

- (void)_setSourceObject:(id)object forBinding:(id)binding
{
  if (objc_msgSend_sourceObject(binding, a2, object, binding) != object)
  {
    objc_msgSend_setSourceObject_(binding, v7, object, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF354A98;
    v10[3] = &unk_1E7A7E3B0;
    v10[4] = self;
    v10[5] = binding;
    v10[6] = object;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)block
{
  bindings = self->_bindings;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF354BD4;
  v5[3] = &unk_1E7A7E400;
  v5[4] = self;
  v5[5] = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v5, v3);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, duration);
  objc_msgSend_removeAllAnimations(self, v10, v11, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, key, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, duration);
  objc_msgSend_removeAnimationForKey_(self, v11, key, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF350D00(self->_forceField);
    v8 = v7[3];
    v10 = *v7;
    v9 = v7[1];
    *&self->_settings.categoryBitMask = v7[2];
    *&self->_settings.scope = v8;
    *&self->_settings.kind = v10;
    *&self->_settings.dampening = v9;
    v11 = v7[7];
    v13 = v7[4];
    v12 = v7[5];
    *&self->_anon_78[24] = v7[6];
    *&self->_anon_78[40] = v11;
    *&self->_settings.falloffExponent = v13;
    *&self->_anon_78[8] = v12;
    objc_msgSend__updateEntityModelFromPresentation(self, v14, v15, v16);

    sub_1AF1CEA9C(v6);
  }

  else
  {
    v17 = sub_1AF350D00(self->_forceField);
    v21 = v17[3];
    v23 = *v17;
    v22 = v17[1];
    *&self->_settings.categoryBitMask = v17[2];
    *&self->_settings.scope = v21;
    *&self->_settings.kind = v23;
    *&self->_settings.dampening = v22;
    v24 = v17[7];
    v26 = v17[4];
    v25 = v17[5];
    *&self->_anon_78[24] = v17[6];
    *&self->_anon_78[40] = v24;
    *&self->_settings.falloffExponent = v26;
    *&self->_anon_78[8] = v25;

    objc_msgSend__updateEntityModelFromPresentation(self, v18, v19, v20);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF354E90;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  sub_1AF371A8C(coder, @"halfExtent", *&self->_anon_78[8]);
  objc_msgSend_encodeInt_forKey_(coder, v5, LODWORD(self->_settings.kind), @"type");
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"strength", v7, self->_settings.strength);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"falloffExponent", v9, self->_settings.falloffExponent);
  objc_msgSend_encodeBool_forKey_(coder, v10, self->_settings.active, @"active");
  objc_msgSend_encodeInteger_forKey_(coder, v11, self->_settings.scope, @"scope");
  objc_msgSend_encodeInteger_forKey_(coder, v12, self->_settings.shape, @"shape");
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"smoothness", v14, *&self->_anon_78[40]);
  objc_msgSend_encodeInteger_forKey_(coder, v15, self->_settings.categoryBitMask, @"categoryMask");
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"speed", v17, *&self->_anon_78[44]);
  v18 = *&self->_anon_78[24];

  sub_1AF371A8C(coder, @"offset", v18);
}

- (VFXForceField)initWithCoder:(id)coder
{
  v76.receiver = self;
  v76.super_class = VFXForceField;
  v7 = [(VFXForceField *)&v76 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    *&v15 = sub_1AF3502DC().n128_u64[0];
    v7->_forceField = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v12, v13, v14, v15);
    v18 = objc_msgSend_decodeIntForKey_(coder, v16, @"type", v17);
    objc_msgSend_setFieldType_(v7, v19, v18, v20);
    v21 = sub_1AF371BC4(coder, @"halfExtent");
    objc_msgSend_setHalfExtent_(v7, v22, v23, v24, v21);
    objc_msgSend_decodeDoubleForKey_(coder, v25, @"strength", v26);
    *&v27 = v27;
    objc_msgSend_setStrength_(v7, v28, v29, v30, v27);
    objc_msgSend_decodeDoubleForKey_(coder, v31, @"falloffExponent", v32);
    *&v33 = v33;
    objc_msgSend_setFalloffExponent_(v7, v34, v35, v36, v33);
    v39 = objc_msgSend_decodeBoolForKey_(coder, v37, @"active", v38);
    objc_msgSend_setActive_(v7, v40, v39, v41);
    v44 = objc_msgSend_decodeIntegerForKey_(coder, v42, @"scope", v43);
    objc_msgSend_setScope_(v7, v45, v44, v46);
    v49 = objc_msgSend_decodeIntegerForKey_(coder, v47, @"shape", v48);
    objc_msgSend_setShape_(v7, v50, v49, v51);
    v52 = sub_1AF371BC4(coder, @"offset");
    objc_msgSend_setOffset_(v7, v53, v54, v55, v52);
    objc_msgSend_decodeDoubleForKey_(coder, v56, @"smoothness", v57);
    *&v58 = v58;
    objc_msgSend_setSmoothness_(v7, v59, v60, v61, v58);
    objc_msgSend_decodeDoubleForKey_(coder, v62, @"speed", v63);
    *&v64 = v64;
    objc_msgSend_setSpeed_(v7, v65, v66, v67, v64);
    v70 = objc_msgSend_decodeIntForKey_(coder, v68, @"categoryMask", v69);
    objc_msgSend_setCategoryBitMask_(v7, v71, v70, v72);
    objc_msgSend_setImmediateMode_(VFXTransaction, v73, v8, v74);
  }

  return v7;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"halfExtent", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_halfExtent(self, v6, v7, v8);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v6, @"offset", v8))
    {
      v17.receiver = self;
      v17.super_class = VFXForceField;
      return [(VFXForceField *)&v17 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_offset(self, v13, v14, v15);
  }

  return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"halfExtent", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setHalfExtent_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"offset", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v13, v14, v15);

    objc_msgSend_setOffset_(self, v16, v17, v18);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VFXForceField;
    [(VFXForceField *)&v19 setValue:value forKey:key];
  }
}

@end