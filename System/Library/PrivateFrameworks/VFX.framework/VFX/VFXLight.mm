@interface VFXLight
+ (id)light;
+ (id)lightWithLightRef:(__CFXLight *)ref;
+ (id)lightWithMDLLight:(id)light;
+ (id)lightWithMDLLightProbe:(id)probe;
+ (id)presentationLightWithLightRef:(__CFXLight *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)automaticallyAdjustsShadowProjection;
- (BOOL)castsShadow;
- (BOOL)doubleSided;
- (BOOL)drawsArea;
- (BOOL)forcesBackFaceCasters;
- (BOOL)isBaked;
- (BOOL)parallaxCorrectionEnabled;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (BOOL)sampleDistributedShadowMaps;
- (CGSize)shadowMapSize;
- (NSArray)animationKeys;
- (NSArray)areaPolygonVertices;
- (NSString)description;
- (NSString)name;
- (VFXLight)init;
- (VFXLight)initWithCoder:(id)coder;
- (VFXLight)initWithLightRef:(__CFXLight *)ref;
- (VFXMaterialProperty)gobo;
- (VFXMaterialProperty)probeEnvironment;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (double)areaExtents;
- (double)parallaxCenterOffset;
- (double)parallaxExtentsFactor;
- (double)probeExtents;
- (double)probeOffset;
- (float)_shadowCascadeDebugFactor;
- (float)attenuationDistance;
- (float)intensity;
- (float)maximumShadowDistance;
- (float)orthographicScale;
- (float)shadowBias;
- (float)shadowCascadeSplittingFactor;
- (float)shadowIntensity;
- (float)shadowRadius;
- (float)spotFalloffExponent;
- (float)spotInnerAngle;
- (float)spotOuterAngle;
- (float)temperature;
- (float)zFar;
- (float)zNear;
- (id)_valueForSimdVectorKeyPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)color;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)initPresentationLightWithLightRef:(__CFXLight *)ref;
- (id)presentationLight;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (int64_t)areaType;
- (int64_t)probeType;
- (int64_t)probeUpdateType;
- (int64_t)type;
- (unint64_t)categoryBitMask;
- (unint64_t)shadowCascadeCount;
- (unint64_t)shadowSampleCount;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customDecodingOfVFXLight:(id)light;
- (void)_customEncodingOfVFXLight:(id)light;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_resyncObjCModelOfPerTypeParametersWithOldType:(unsigned __int8)type;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)_updateProbeStamp;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)makeUniqueID;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setAreaExtents:(VFXLight *)self;
- (void)setAreaPolygonVertices:(id)vertices;
- (void)setAreaType:(int64_t)type;
- (void)setAttenuationDistance:(float)distance;
- (void)setAutomaticallyAdjustsShadowProjection:(BOOL)projection;
- (void)setBaked:(BOOL)baked;
- (void)setCastsShadow:(BOOL)shadow;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setColor:(id)color;
- (void)setDoubleSided:(BOOL)sided;
- (void)setDrawsArea:(BOOL)area;
- (void)setExtendedLinearSRGBColor:(VFXLight *)self;
- (void)setForcesBackFaceCasters:(BOOL)casters;
- (void)setIESProfile:(id)profile;
- (void)setIdentifier:(id)identifier;
- (void)setIntensity:(float)intensity;
- (void)setMaximumShadowDistance:(float)distance;
- (void)setName:(id)name;
- (void)setOrthographicScale:(float)scale;
- (void)setParallaxCenterOffset:(VFXLight *)self;
- (void)setParallaxCorrectionEnabled:(BOOL)enabled;
- (void)setParallaxExtentsFactor:(VFXLight *)self;
- (void)setProbeExtents:(VFXLight *)self;
- (void)setProbeOffset:(VFXLight *)self;
- (void)setProbeType:(int64_t)type;
- (void)setProbeUpdateType:(int64_t)type;
- (void)setSampleDistributedShadowMaps:(BOOL)maps;
- (void)setShadowBias:(float)bias;
- (void)setShadowCascadeCount:(unint64_t)count;
- (void)setShadowCascadeSplittingFactor:(float)factor;
- (void)setShadowIntensity:(float)intensity;
- (void)setShadowMapSize:(CGSize)size;
- (void)setShadowRadius:(float)radius;
- (void)setShadowSampleCount:(unint64_t)count;
- (void)setShouldBakeDirectLighting:(BOOL)lighting;
- (void)setShouldBakeIndirectLighting:(BOOL)lighting;
- (void)setSphericalHarmonicsCoefficients:(id)coefficients;
- (void)setSpotFalloffExponent:(float)exponent;
- (void)setSpotInnerAngle:(float)angle;
- (void)setSpotOuterAngle:(float)angle;
- (void)setTemperature:(float)temperature;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWorld:(id)world;
- (void)setZFar:(float)far;
- (void)setZNear:(float)near;
- (void)set_shadowCascadeDebugFactor:(float)factor;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXLight

- (VFXLight)init
{
  v8.receiver = self;
  v8.super_class = VFXLight;
  v2 = [(VFXLight *)&v8 init];
  if (v2)
  {
    v3 = sub_1AF19B168();
    v2->_light = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6);
  }

  return v2;
}

- (VFXLight)initWithLightRef:(__CFXLight *)ref
{
  v13.receiver = self;
  v13.super_class = VFXLight;
  v4 = [(VFXLight *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_light = v5;
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

- (id)initPresentationLightWithLightRef:(__CFXLight *)ref
{
  v7.receiver = self;
  v7.super_class = VFXLight;
  v4 = [(VFXLight *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_light = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)light
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)lightWithLightRef:(__CFXLight *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithLightRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

- (void)dealloc
{
  light = self->_light;
  if (light)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_light, 0);
      light = self->_light;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, light, v2);
  }

  objc_msgSend_parentWillDie_(self->_gobo, v5, self, v6);
  objc_msgSend_parentWillDie_(self->_probeEnvironment, v7, self, v8);

  v9.receiver = self;
  v9.super_class = VFXLight;
  [(VFXLight *)&v9 dealloc];
}

- (NSString)description
{
  v5 = objc_msgSend_name(self, a2, v2, v3);
  v9 = objc_msgSend_length(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v15 = NSStringFromClass(v11);
  if (v9)
  {
    v16 = objc_msgSend_name(self, v12, v13, v14);
    v26 = objc_msgSend_type(self, v17, v18, v19);
    return objc_msgSend_stringWithFormat_(v10, v20, @"<%@: %p '%@' | type=%d>", v21, v15, self, v16, v26);
  }

  else
  {
    v25 = objc_msgSend_type(self, v12, v13, v14);
    return objc_msgSend_stringWithFormat_(v10, v23, @"<%@: %p | type=%d>", v24, v15, self, v25);
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
      v11[2] = sub_1AF2CC368;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
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

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  self->_type = sub_1AF19CBB4(self->_light);
  v7 = sub_1AF19BB78(self->_light);

  self->_color = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v8, v7, v9);
  self->_intensity = sub_1AF19C46C(self->_light);
  self->_temperature = sub_1AF19CB10(self->_light);
  self->_shadowIntensity = sub_1AF19BDC0(self->_light);
  if (sub_1AF19B994(self->_light))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *(self + 28) = *(self + 28) & 0xFD | v10;
  self->_shadowMapSize = vcvtq_f64_f32(COERCE_FLOAT32X2_T(sub_1AF19C6A4(self->_light)));
  self->_shadowRadius = sub_1AF19BA38(self->_light);
  self->_zNear = sub_1AF19CC98(self->_light);
  self->_zFar = sub_1AF19CBFC(self->_light);
  self->_shadowBias = sub_1AF19C608(self->_light);
  self->_spotInnerAngle = sub_1AF19C1FC(self->_light);
  self->_spotOuterAngle = sub_1AF19C9F0(self->_light);
  self->_spotFalloffExponent = sub_1AF19BFD8(self->_light);
  *(&self->_spotFalloffExponent + 1) = sub_1AF19C938(self->_light);

  v11 = sub_1AF19B4EC(self->_light, 0);
  if (v11)
  {
    v12 = [VFXMaterialProperty alloc];
    v11 = objc_msgSend_initWithParent_propertyType_(v12, v13, self, 23);
  }

  self->_gobo = v11;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  sub_1AF19D5A0(self->_light, &v28);
  self->_areaType = v28;
  v14 = v28;
  *self->_areaExtents = vaddq_f32(v29, v29);
  v27[0] = v14;
  v27[1] = v29;
  v27[2] = v30;
  self->_areaPolygonVertices = sub_1AF2CC858(v27, v15, v16, v17);
  self->_drawsArea = sub_1AF19D3B0(self->_light);
  self->_doubleSided = sub_1AF19D540(self->_light);
  self->_categoryBitMask = sub_1AF19C3BC(self->_light);
  self->_orthographicScale = sub_1AF19C56C(self->_light);
  self->_shadowSampleCount = sub_1AF19C844(self->_light);
  if (sub_1AF19E90C(self->_light))
  {
    v18 = 32;
  }

  else
  {
    v18 = 0;
  }

  *(self + 28) = *(self + 28) & 0xDF | v18;
  self->_maximumShadowDistance = sub_1AF19EAD4(self->_light);
  self->_shadowCascadeCount = sub_1AF19BAD0(self->_light);
  self->_shadowCascadeSplittingFactor = sub_1AF19EB30(self->_light);
  if (sub_1AF19EDC4(self->_light))
  {
    v19 = 64;
  }

  else
  {
    v19 = 0;
  }

  *(self + 28) = *(self + 28) & 0xBF | v19;
  if (sub_1AF19EE7C(self->_light))
  {
    v20 = 0x80;
  }

  else
  {
    v20 = 0;
  }

  *(self + 28) = v20 & 0x80 | *(self + 28) & 0x7F;

  v21 = sub_1AF19B558(self->_light, 0);
  if (v21)
  {
    v22 = [VFXMaterialProperty alloc];
    v21 = objc_msgSend_initWithParent_propertyType_(v22, v23, self, 26);
  }

  self->_probeEnvironment = v21;
  self->_probeType = sub_1AF19D968(self->_light);
  self->_probeUpdateType = sub_1AF19DAD4(self->_light);
  self->_parallaxCorrectionEnabled = sub_1AF19DB90(self->_light);
  *&self->_probeExtents[7] = sub_1AF19DDEC(self->_light);
  *&self->_probeOffset[7] = sub_1AF19DEB0(self->_light);
  *&self->_parallaxExtentsFactor[7] = sub_1AF19DD18(self->_light);
  *&self->_parallaxCenterOffset[7] = sub_1AF19DC58(self->_light);
  objc_msgSend__updateEntityModelFromPresentation(self, v24, v25, v26);
  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (void)_updatePresentationFromModel
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2CC98C;
  v9[3] = &unk_1E7A7E1D0;
  v9[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v9);
  objc_msgSend__updatePresentationFromModel(self->_probeEnvironment, v3, v4, v5);
  objc_msgSend__updatePresentationFromModel(self->_gobo, v6, v7, v8);
}

- (id)presentationLight
{
  if ((*(self + 28) & 1) == 0)
  {
    return (MEMORY[0x1EEE66B58])(VFXLight, sel_presentationLightWithLightRef_, *(self + 1));
  }

  return self;
}

+ (id)presentationLightWithLightRef:(__CFXLight *)ref
{
  v4 = [VFXLight alloc];
  inited = objc_msgSend_initPresentationLightWithLightRef_(v4, v5, ref, v6);

  return inited;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  gobo = self->_gobo;
  if (gobo)
  {
    (*(block + 2))(block, gobo, 0, 0);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, gobo, block, block);
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
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v5 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v5;
      if (!v5)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4764();
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
      v9[2] = sub_1AF2CD088;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2CD0E8;
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

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  if (self->_gobo != property)
  {
    return 0;
  }

  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@.%@", property, @"gobo", path);

  return sub_1AF291EF0(self, v7, v8, v9);
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
    v18[2] = sub_1AF2CD468;
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
      sub_1AFDF45D0();
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
      sub_1AFDF4640();
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF2CD7EC, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2CD7DC, &unk_1E7A7E2E8, self, v21, *&v20);
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
    v22[2] = sub_1AF2CD8DC;
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
      v17[2] = sub_1AF2CDA78;
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
    v25[2] = sub_1AF2CDE98;
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
  v10[2] = sub_1AF2CDFDC;
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
  v4[2] = sub_1AF2CE0A8;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2CE154;
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
    v10[2] = sub_1AF2CE28C;
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
  v5[2] = sub_1AF2CE3C8;
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

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"areaExtents", v3))
  {
    objc_msgSend_areaExtents(self, v7, v8, v9);
LABEL_11:
    *v4 = v10;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"probeExtents", v9))
  {
    objc_msgSend_probeExtents(self, v11, v12, v13);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(key, v11, @"probeOffset", v13))
  {
    objc_msgSend_probeOffset(self, v14, v15, v16);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(key, v14, @"parallaxExtentsFactor", v16))
  {
    objc_msgSend_parallaxExtentsFactor(self, v17, v18, v19);
    goto LABEL_11;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v17, @"parallaxCenterOffset", v19);
  if (isEqualToString)
  {
    objc_msgSend_parallaxCenterOffset(self, v21, v22, v23);
    goto LABEL_11;
  }

  return isEqualToString;
}

- (id)_valueForSimdVectorKeyPath:(id)path
{
  v25 = 0;
  v26 = 0;
  sub_1AF3716AC(path, &v26, &v25, v3);
  if (qword_1ED73B320 != -1)
  {
    sub_1AFDF5844();
  }

  if (!v25)
  {
    return 0;
  }

  if (!objc_msgSend_containsObject_(qword_1ED73B318, v5, v25, v6))
  {
    return 0;
  }

  v24 = 0;
  v23 = 0;
  if (!objc_msgSend_rawFloat3ForKey_value_(self, v7, v26, &v23))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v25, v8, @"x", v9))
  {
    LODWORD(v13) = v23;
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v10, v11, v12, v13);
  }

  if (objc_msgSend_isEqualToString_(v25, v10, @"y", v12))
  {
    LODWORD(v18) = HIDWORD(v23);
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v17, v18);
  }

  if (!objc_msgSend_isEqualToString_(v25, v15, @"z", v17))
  {
    return 0;
  }

  LODWORD(v22) = v24;
  return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, v21, v22);
}

- (id)valueForKeyPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  result = objc_msgSend__valueForSimdVectorKeyPath_(self, a2, path, v3);
  if (!result)
  {
    v7.receiver = self;
    v7.super_class = VFXLight;
    return [(VFXLight *)&v7 valueForKeyPath:path];
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (objc_msgSend_isEqual_(path, a2, @"color", object))
  {

    objc_msgSend_setColor_(self, v11, object, v12);
  }

  else if ((objc_msgSend_isEqual_(path, v11, @"image", v12) & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = VFXLight;
    [(VFXLight *)&v13 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"areaExtents", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_areaExtents(self, v6, v7, v8);
  }

  else if (objc_msgSend_isEqualToString_(key, v6, @"probeExtents", v8))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_probeExtents(self, v13, v14, v15);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"probeOffset", v15))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_probeOffset(self, v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v16, @"parallaxCenterOffset", v18))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_parallaxCenterOffset(self, v19, v20, v21);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v19, @"parallaxExtentsFactor", v21))
    {
      v26.receiver = self;
      v26.super_class = VFXLight;
      return [(VFXLight *)&v26 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_parallaxExtentsFactor(self, v22, v23, v24);
  }

  return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"areaExtents", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setAreaExtents_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"probeExtents", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v13, v14, v15);

    objc_msgSend_setProbeExtents_(self, v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"probeOffset", v15))
  {
    objc_msgSend_VFXFloat3Value(value, v19, v20, v21);

    objc_msgSend_setProbeOffset_(self, v22, v23, v24);
  }

  else if (objc_msgSend_isEqualToString_(key, v19, @"parallaxCenterOffset", v21))
  {
    objc_msgSend_VFXFloat3Value(value, v25, v26, v27);

    objc_msgSend_setParallaxCenterOffset_(self, v28, v29, v30);
  }

  else if (objc_msgSend_isEqualToString_(key, v25, @"parallaxExtentsFactor", v27))
  {
    objc_msgSend_VFXFloat3Value(value, v31, v32, v33);

    objc_msgSend_setParallaxExtentsFactor_(self, v34, v35, v36);
  }

  else
  {
    v37.receiver = self;
    v37.super_class = VFXLight;
    [(VFXLight *)&v37 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to, context);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  v12 = objc_msgSend_color(self, v9, v10, v11);
  objc_msgSend_setColor_(to, v13, v12, v14);
  v18 = objc_msgSend_name(self, v15, v16, v17);
  objc_msgSend_setName_(to, v19, v18, v20);
  v24 = objc_msgSend_type(self, v21, v22, v23);
  objc_msgSend_setType_(to, v25, v24, v26);
  objc_msgSend_temperature(self, v27, v28, v29);
  objc_msgSend_setTemperature_(to, v30, v31, v32);
  objc_msgSend_intensity(self, v33, v34, v35);
  objc_msgSend_setIntensity_(to, v36, v37, v38);
  objc_msgSend_shadowIntensity(self, v39, v40, v41);
  objc_msgSend_setShadowIntensity_(to, v42, v43, v44);
  objc_msgSend_shadowMapSize(self, v45, v46, v47);
  objc_msgSend_setShadowMapSize_(to, v48, v49, v50);
  objc_msgSend_shadowRadius(self, v51, v52, v53);
  objc_msgSend_setShadowRadius_(to, v54, v55, v56);
  v60 = objc_msgSend_castsShadow(self, v57, v58, v59);
  objc_msgSend_setCastsShadow_(to, v61, v60, v62);
  v66 = objc_msgSend_shadowSampleCount(self, v63, v64, v65);
  objc_msgSend_setShadowSampleCount_(to, v67, v66, v68);
  objc_msgSend_shadowBias(self, v69, v70, v71);
  objc_msgSend_setShadowBias_(to, v72, v73, v74);
  objc_msgSend_orthographicScale(self, v75, v76, v77);
  objc_msgSend_setOrthographicScale_(to, v78, v79, v80);
  objc_msgSend_zNear(self, v81, v82, v83);
  objc_msgSend_setZNear_(to, v84, v85, v86);
  objc_msgSend_zFar(self, v87, v88, v89);
  objc_msgSend_setZFar_(to, v90, v91, v92);
  v96 = objc_msgSend_categoryBitMask(self, v93, v94, v95);
  objc_msgSend_setCategoryBitMask_(to, v97, v96, v98);
  objc_msgSend_attenuationDistance(self, v99, v100, v101);
  objc_msgSend_setAttenuationDistance_(to, v102, v103, v104);
  objc_msgSend_spotInnerAngle(self, v105, v106, v107);
  objc_msgSend_setSpotInnerAngle_(to, v108, v109, v110);
  objc_msgSend_spotOuterAngle(self, v111, v112, v113);
  objc_msgSend_setSpotOuterAngle_(to, v114, v115, v116);
  objc_msgSend_maximumShadowDistance(self, v117, v118, v119);
  objc_msgSend_setMaximumShadowDistance_(to, v120, v121, v122);
  v126 = objc_msgSend_sampleDistributedShadowMaps(self, v123, v124, v125);
  objc_msgSend_setSampleDistributedShadowMaps_(to, v127, v126, v128);
  v132 = objc_msgSend_forcesBackFaceCasters(self, v129, v130, v131);
  objc_msgSend_setForcesBackFaceCasters_(to, v133, v132, v134);
  v138 = objc_msgSend_automaticallyAdjustsShadowProjection(self, v135, v136, v137);
  objc_msgSend_setAutomaticallyAdjustsShadowProjection_(to, v139, v138, v140);
  v144 = objc_msgSend_shadowCascadeCount(self, v141, v142, v143);
  objc_msgSend_setShadowCascadeCount_(to, v145, v144, v146);
  objc_msgSend_shadowCascadeSplittingFactor(self, v147, v148, v149);
  objc_msgSend_setShadowCascadeSplittingFactor_(to, v150, v151, v152);
  if (self->_gobo)
  {
    v156 = objc_msgSend_gobo(to, v153, v154, v155);
    objc_msgSend_copyPropertiesFrom_copyContext_(v156, v157, self->_gobo, context);
  }

  v158 = objc_msgSend_IESProfile(self, v153, v154, v155);
  objc_msgSend_setIESProfile_(to, v159, v158, v160);
  v164 = objc_msgSend_areaType(self, v161, v162, v163);
  objc_msgSend_setAreaType_(to, v165, v164, v166);
  objc_msgSend_areaExtents(self, v167, v168, v169);
  objc_msgSend_setAreaExtents_(to, v170, v171, v172);
  v176 = objc_msgSend_areaPolygonVertices(self, v173, v174, v175);
  objc_msgSend_setAreaPolygonVertices_(to, v177, v176, v178);
  v182 = objc_msgSend_drawsArea(self, v179, v180, v181);
  objc_msgSend_setDrawsArea_(to, v183, v182, v184);
  v188 = objc_msgSend_doubleSided(self, v185, v186, v187);
  objc_msgSend_setDoubleSided_(to, v189, v188, v190);
  v194 = objc_msgSend_probeType(self, v191, v192, v193);
  objc_msgSend_setProbeType_(to, v195, v194, v196);
  updated = objc_msgSend_probeUpdateType(self, v197, v198, v199);
  objc_msgSend_setProbeUpdateType_(to, v201, updated, v202);
  objc_msgSend_probeExtents(self, v203, v204, v205);
  objc_msgSend_setProbeExtents_(to, v206, v207, v208);
  objc_msgSend_probeOffset(self, v209, v210, v211);
  objc_msgSend_setProbeOffset_(to, v212, v213, v214);
  v218 = objc_msgSend_parallaxCorrectionEnabled(self, v215, v216, v217);
  objc_msgSend_setParallaxCorrectionEnabled_(to, v219, v218, v220);
  v224 = objc_msgSend_sphericalHarmonicsCoefficients(self, v221, v222, v223);
  objc_msgSend_setSphericalHarmonicsCoefficients_(to, v225, v224, v226);
  if (self->_probeEnvironment)
  {
    v230 = objc_msgSend_probeEnvironment(to, v227, v228, v229);
    objc_msgSend_copyPropertiesFrom_copyContext_(v230, v231, self->_probeEnvironment, context);
  }

  objc_msgSend__copyAnimationsFrom_(to, v227, self, v229);
  objc_msgSend__copyBindingsFrom_(to, v232, self, v233);

  objc_msgSend_commitImmediate(VFXTransaction, v234, v235, v236);
}

- (void)setSphericalHarmonicsCoefficients:(id)coefficients
{
  sphericalHarmonics = self->_sphericalHarmonics;
  if (sphericalHarmonics != coefficients)
  {
    v12[8] = v3;
    v12[9] = v4;

    self->_sphericalHarmonics = objc_msgSend_copy(coefficients, v8, v9, v10);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF2CEFAC;
    v12[3] = &unk_1E7A7E220;
    v12[4] = self;
    v12[5] = coefficients;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
  }
}

- (void)setShouldBakeDirectLighting:(BOOL)lighting
{
  if (lighting)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 28) = *(self + 28) & 0xF7 | v3;
}

- (void)setShouldBakeIndirectLighting:(BOOL)lighting
{
  if (lighting)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 28) = *(self + 28) & 0xEF | v3;
}

- (void)_updateProbeStamp
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2CF088;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (float)attenuationDistance
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_spotInnerAngle;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19C1FC(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C1FC(light);
  }
}

- (void)setAttenuationDistance:(float)distance
{
  if (self->_spotInnerAngle != distance)
  {
    v7 = v3;
    v8 = v4;
    self->_spotInnerAngle = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF1B4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    distanceCopy = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"attenuationDistance", v5);
  }
}

- (BOOL)isBaked
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF19C244(self->_light);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      light = self->_light;

      LOBYTE(v5) = sub_1AF19C244(light);
    }
  }

  else
  {
    return (v4 >> 2) & 1;
  }

  return v5;
}

- (void)setBaked:(BOOL)baked
{
  v3 = *(self + 28);
  if (((((v3 & 4) == 0) ^ baked) & 1) == 0)
  {
    if (baked)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xFB | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF2F0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    bakedCopy = baked;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)castsShadow
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF19B994(self->_light);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      light = self->_light;

      LOBYTE(v5) = sub_1AF19B994(light);
    }
  }

  else
  {
    return (v4 >> 1) & 1;
  }

  return v5;
}

- (void)setCastsShadow:(BOOL)shadow
{
  v3 = *(self + 28);
  if (((((v3 & 2) == 0) ^ shadow) & 1) == 0)
  {
    if (shadow)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xFD | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF42C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    shadowCopy = shadow;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_categoryBitMask;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19C3BC(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C3BC(light);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if (self->_categoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_categoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF54C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)color
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_color;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v8 = sub_1AF19BB78(self->_light);
  v5 = sub_1AF371814(v8, v9, v10, v11);
  if (v7)
  {
    sub_1AF1CEA9C(v7);
  }

  return v5;
}

- (void)setColor:(id)color
{
  color = self->_color;
  if (color != color)
  {
    v9[8] = v3;
    v9[9] = v4;

    self->_color = color;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2CF66C;
    v9[3] = &unk_1E7A7E220;
    v9[4] = color;
    v9[5] = self;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, self, @"color", v9);
  }
}

- (void)setExtendedLinearSRGBColor:(VFXLight *)self
{
  v10[0] = 0;
  v10[1] = 0;
  sub_1AF163FFC(v10, *&v2, *(&v2 + 1), *(&v2 + 2), *(&v2 + 3));
  v7 = sub_1AF371814(v10, v4, v5, v6);
  objc_msgSend_setColor_(self, v8, v7, v9);
}

- (float)intensity
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_intensity;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19C46C(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C46C(light);
  }
}

- (void)setIntensity:(float)intensity
{
  if (self->_intensity != intensity)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF858;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    intensityCopy = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)orthographicScale
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_orthographicScale;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19C56C(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C56C(light);
  }
}

- (void)setOrthographicScale:(float)scale
{
  if (self->_orthographicScale != scale)
  {
    v7 = v3;
    v8 = v4;
    self->_orthographicScale = scale;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF98C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    scaleCopy = scale;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"orthographicScale", v5);
  }
}

- (float)shadowBias
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v5 = sub_1AF19C608(self->_light);
      sub_1AF1CEA9C(v7);
    }

    else
    {
      return sub_1AF19C608(self->_light);
    }
  }

  else
  {
    return self->_shadowBias;
  }

  return v5;
}

- (void)setShadowBias:(float)bias
{
  if (self->_shadowBias != bias)
  {
    v7 = v3;
    v8 = v4;
    self->_shadowBias = bias;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CFAB0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    biasCopy = bias;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shadowBias", v5);
  }
}

- (float)shadowIntensity
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowIntensity;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19BDC0(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19BDC0(light);
  }
}

- (void)setShadowIntensity:(float)intensity
{
  if (self->_shadowIntensity != intensity)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_shadowIntensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CFBE4;
    v5[3] = &unk_1E7A7E1D0;
    v5[4] = self;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shadowIntensity", v5);
  }
}

- (CGSize)shadowMapSize
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v7 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    shadowMapSize = vcvtq_f64_f32(COERCE_FLOAT32X2_T(sub_1AF19C6A4(self->_light)));
    if (v7)
    {
      v9 = shadowMapSize;
      sub_1AF1CEA9C(v7);
      shadowMapSize = v9;
    }
  }

  else
  {
    shadowMapSize = self->_shadowMapSize;
  }

  height = shadowMapSize.height;
  result.width = shadowMapSize.width;
  result.height = height;
  return result;
}

- (void)setShadowMapSize:(CGSize)size
{
  v3 = vdup_n_s32(fmin(size.width, size.height) <= 0.0);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  height = size.height;
  v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), vdupq_n_s64(0x4090000000000000uLL), size);
  v7 = vmovn_s64(vceqq_f64(v6, self->_shadowMapSize));
  if ((v7.i32[0] & v7.i32[1] & 1) == 0)
  {
    v8 = vadd_s32(vmovn_s64(vcvtq_u64_f64(v6)), -1);
    v9 = vorr_s8(vshr_n_u32(v8, 1uLL), v8);
    v10 = vorr_s8(vshr_n_u32(v9, 2uLL), v9);
    v11 = vorr_s8(vshr_n_u32(v10, 4uLL), v10);
    v12 = vorr_s8(vshr_n_u32(v11, 8uLL), v11);
    v13 = vadd_s32(vorr_s8(vshr_n_u32(v12, 0x10uLL), v12), 0x100000001);
    v14.i64[0] = v13.u32[0];
    v14.i64[1] = v13.u32[1];
    self->_shadowMapSize = vcvtq_f64_u64(v14);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF2CFD78;
    v15[3] = &unk_1E7A7E1D0;
    v15[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v15);
  }
}

- (float)shadowRadius
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowRadius;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19BA38(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19BA38(light);
  }
}

- (void)setShadowRadius:(float)radius
{
  if (self->_shadowRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_shadowRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CFEAC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shadowRadius", v5);
  }
}

- (unint64_t)shadowSampleCount
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowSampleCount;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF19C844(self->_light);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF19C844(self->_light);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setShadowSampleCount:(unint64_t)count
{
  countCopy = 31;
  if (count < 0x1F)
  {
    countCopy = count;
  }

  if (countCopy != self->_shadowSampleCount)
  {
    v6[6] = v3;
    v6[7] = v4;
    self->_shadowSampleCount = countCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2CFFC8;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = countCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (float)spotFalloffExponent
{
  if ((*(self + 28) & 1) == 0)
  {
    return *(&self->_spotFalloffExponent + 1);
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19C938(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C938(light);
  }
}

- (void)setSpotFalloffExponent:(float)exponent
{
  if (*(&self->_spotFalloffExponent + 1) != exponent)
  {
    v7 = v3;
    v8 = v4;
    *(&self->_spotFalloffExponent + 1) = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D00FC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    exponentCopy = exponent;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"spotFalloffExponent", v5);
  }
}

- (float)spotInnerAngle
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_spotOuterAngle;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19C9F0(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C9F0(light);
  }
}

- (void)setSpotInnerAngle:(float)angle
{
  if (self->_spotOuterAngle != angle)
  {
    v7 = v3;
    v8 = v4;
    self->_spotOuterAngle = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0230;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    angleCopy = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"spotInnerAngle", v5);
  }
}

- (float)spotOuterAngle
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_spotFalloffExponent;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19BFD8(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19BFD8(light);
  }
}

- (void)setSpotOuterAngle:(float)angle
{
  if (self->_spotFalloffExponent != angle)
  {
    v7 = v3;
    v8 = v4;
    self->_spotFalloffExponent = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0364;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    angleCopy = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"spotOuterAngle", v5);
  }
}

- (float)temperature
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_temperature;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19CB10(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19CB10(light);
  }
}

- (void)setTemperature:(float)temperature
{
  if (self->_temperature != temperature)
  {
    v7 = v3;
    v8 = v4;
    self->_temperature = temperature;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0498;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    temperatureCopy = temperature;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"temperature", v5);
  }
}

- (void)_resyncObjCModelOfPerTypeParametersWithOldType:(unsigned __int8)type
{
  self->_spotOuterAngle = 45.0;
  self->_spotFalloffExponent = 60.0;
  *(&self->_spotFalloffExponent + 1) = 0x40000000;
  self->_drawsArea = 1;
  self->_doubleSided = 0;
  *&v4 = 0x3F0000003F000000;
  *(&v4 + 1) = 0x3F0000003F000000;
  *self->_areaExtents = v4;
  self->_areaType = 1;
  self->_probeType = 0;
  self->_probeUpdateType = 0;
  self->_parallaxCorrectionEnabled = 0;
  *&self->_probeExtents[7] = xmmword_1AFE21B50;
  *&self->_probeOffset[7] = xmmword_1AFE21B40;
  *&self->_parallaxExtentsFactor[7] = xmmword_1AFE21B70;
  *&self->_parallaxCenterOffset[7] = xmmword_1AFE21B60;
  type = self->_type;
  intensity = self->_intensity;
  v7 = intensity / sub_1AF19AF30(type);
  self->_intensity = v7 * sub_1AF19AF30(type);

  self->_IESProfile = 0;
}

- (int64_t)type
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_type;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF19CBB4(self->_light);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF19CBB4(self->_light);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setType:(int64_t)type
{
  type = self->_type;
  if (type != type)
  {
    v10[8] = v4;
    v10[9] = v5;
    self->_type = type;
    objc_msgSend__resyncObjCModelOfPerTypeParametersWithOldType_(self, a2, type, v3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2D06D8;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (float)zFar
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_zFar;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19CBFC(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19CBFC(light);
  }
}

- (void)setZFar:(float)far
{
  if (self->_zFar != far)
  {
    v7 = v3;
    v8 = v4;
    self->_zFar = far;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0888;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    farCopy = far;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zFar", v5);
  }
}

- (float)zNear
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_zNear;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19CC98(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19CC98(light);
  }
}

- (void)setZNear:(float)near
{
  if (self->_zNear != near)
  {
    v7 = v3;
    v8 = v4;
    self->_zNear = near;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D09C4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    nearCopy = near;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zNear", v5);
  }
}

- (unint64_t)shadowCascadeCount
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v5 = sub_1AF19BAD0(self->_light);
      sub_1AF1CEA9C(v7);
    }

    else
    {
      return sub_1AF19BAD0(self->_light);
    }
  }

  else
  {
    return self->_shadowCascadeCount;
  }

  return v5;
}

- (void)setShadowCascadeCount:(unint64_t)count
{
  if (self->_shadowCascadeCount != count)
  {
    v8 = v3;
    v9 = v4;
    countCopy = count;
    if ((count & 0xFC) != 0)
    {
      countCopy = 4;
    }

    self->_shadowCascadeCount = countCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D0AE8;
    v6[3] = &unk_1E7A7E298;
    v6[4] = self;
    v7 = countCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (BOOL)automaticallyAdjustsShadowProjection
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF19E90C(self->_light);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      light = self->_light;

      LOBYTE(v5) = sub_1AF19E90C(light);
    }
  }

  else
  {
    return (v4 >> 5) & 1;
  }

  return v5;
}

- (void)setAutomaticallyAdjustsShadowProjection:(BOOL)projection
{
  v3 = *(self + 28);
  if (((((v3 & 0x20) == 0) ^ projection) & 1) == 0)
  {
    if (projection)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xDF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0C24;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    projectionCopy = projection;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)maximumShadowDistance
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_maximumShadowDistance;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19EAD4(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19EAD4(light);
  }
}

- (void)setMaximumShadowDistance:(float)distance
{
  LOBYTE(v5) = self->_shadowCascadeCount;
  if (v5 != distance)
  {
    v8 = v3;
    v9 = v4;
    self->_maximumShadowDistance = distance;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D0D5C;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    distanceCopy = distance;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (BOOL)forcesBackFaceCasters
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF19EDC4(self->_light);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      light = self->_light;

      LOBYTE(v5) = sub_1AF19EDC4(light);
    }
  }

  else
  {
    return (v4 >> 6) & 1;
  }

  return v5;
}

- (void)setForcesBackFaceCasters:(BOOL)casters
{
  v3 = *(self + 28);
  if (((((v3 & 0x40) == 0) ^ casters) & 1) == 0)
  {
    if (casters)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xBF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0E98;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    castersCopy = casters;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)sampleDistributedShadowMaps
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF19EE7C(self->_light);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      light = self->_light;

      LOBYTE(v5) = sub_1AF19EE7C(light);
    }
  }

  else
  {
    return v4 >> 7;
  }

  return v5;
}

- (void)setSampleDistributedShadowMaps:(BOOL)maps
{
  v3 = *(self + 28);
  if ((((v3 >= 0) ^ maps) & 1) == 0)
  {
    if (maps)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v4 & 0x80 | v3 & 0x7F;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0FD0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    mapsCopy = maps;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)shadowCascadeSplittingFactor
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowCascadeSplittingFactor;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19EB30(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19EB30(light);
  }
}

- (void)setShadowCascadeSplittingFactor:(float)factor
{
  if (self->_shadowCascadeSplittingFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_shadowCascadeSplittingFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1104;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    factorCopy = factor;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)_shadowCascadeDebugFactor
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_cascadeDebugFactor;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19EC18(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19EC18(light);
  }
}

- (void)set_shadowCascadeDebugFactor:(float)factor
{
  if (self->_cascadeDebugFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_cascadeDebugFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1240;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    factorCopy = factor;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"shadowCascadeDebugFactor", v5);
  }
}

- (int64_t)probeType
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_probeType;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF19D968(self->_light);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF19D968(self->_light);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setProbeType:(int64_t)type
{
  if (self->_probeType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_probeType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1350;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)probeUpdateType
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_probeUpdateType;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return sub_1AF19DAD4(self->_light);
  }

  v7 = v6;
  sub_1AF1CEA20(v6);
  v5 = sub_1AF19DAD4(self->_light);
  sub_1AF1CEA9C(v7);
  return v5;
}

- (void)setProbeUpdateType:(int64_t)type
{
  if (self->_probeUpdateType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_probeUpdateType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1460;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)parallaxCorrectionEnabled
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_parallaxCorrectionEnabled;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19DB90(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19DB90(light);
  }
}

- (void)setParallaxCorrectionEnabled:(BOOL)enabled
{
  if (self->_parallaxCorrectionEnabled != enabled)
  {
    v7 = v3;
    v8 = v4;
    self->_parallaxCorrectionEnabled = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1584;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    enabledCopy = enabled;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (double)parallaxCenterOffset
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v9 = sub_1AF19DC58(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v9;
    }

    else
    {
      *&v5 = sub_1AF19DC58(*(self + 8)).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 256);
  }

  return *&v5;
}

- (void)setParallaxCenterOffset:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_parallaxCenterOffset[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_parallaxCenterOffset[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D16AC;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (double)parallaxExtentsFactor
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v9 = sub_1AF19DD18(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v9;
    }

    else
    {
      *&v5 = sub_1AF19DD18(*(self + 8)).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 240);
  }

  return *&v5;
}

- (void)setParallaxExtentsFactor:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_parallaxExtentsFactor[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_parallaxExtentsFactor[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D17D4;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (double)probeExtents
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v9 = sub_1AF19DDEC(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v9;
    }

    else
    {
      *&v5 = sub_1AF19DDEC(*(self + 8)).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 208);
  }

  return *&v5;
}

- (void)setProbeExtents:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_probeExtents[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_probeExtents[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D18FC;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (double)probeOffset
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v9 = sub_1AF19DEB0(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v9;
    }

    else
    {
      *&v5 = sub_1AF19DEB0(*(self + 8)).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 224);
  }

  return *&v5;
}

- (void)setProbeOffset:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_probeOffset[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_probeOffset[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D1A24;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (VFXMaterialProperty)probeEnvironment
{
  result = self->_probeEnvironment;
  if (!result)
  {
    v6 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v6, v7, self, 26);
    self->_probeEnvironment = result;
  }

  if (*(self + 28))
  {

    return MEMORY[0x1EEE66B58](result, sel_presentationMaterialProperty, v2, v3);
  }

  return result;
}

- (int64_t)areaType
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_areaType;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    sub_1AF19D5A0(self->_light, v9);
    v5 = v9[0];
    sub_1AF1CEA9C(v7);
  }

  else
  {
    sub_1AF19D5A0(self->_light, v9);
    return v9[0];
  }

  return v5;
}

- (void)setAreaType:(int64_t)type
{
  if (self->_areaType != type)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_areaType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1BAC;
    v5[3] = &unk_1E7A7E1D0;
    v5[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (double)areaExtents
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v10 = sub_1AF19D45C(*(self + 8)).n128_u64[0];
      sub_1AF1CEA9C(v7);
      *&v5 = v10;
    }

    else
    {
      v8 = *(self + 8);

      *&v5 = sub_1AF19D45C(v8).n128_u64[0];
    }
  }

  else
  {
    v5 = *(self + 336);
  }

  return *&v5;
}

- (void)setAreaExtents:(VFXLight *)self
{
  v3 = vceqq_f32(*self->_areaExtents, v2);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    *self->_areaExtents = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2D1D20;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  }
}

- (BOOL)drawsArea
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_drawsArea;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19D3B0(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19D3B0(light);
  }
}

- (void)setDrawsArea:(BOOL)area
{
  if (objc_msgSend_drawsArea(self, a2, area, v3) != area)
  {
    self->_drawsArea = area;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2D1E4C;
    v7[3] = &unk_1E7A7E298;
    v7[4] = self;
    areaCopy = area;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (BOOL)doubleSided
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_doubleSided;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF19D540(self->_light);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19D540(light);
  }
}

- (void)setDoubleSided:(BOOL)sided
{
  if (objc_msgSend_doubleSided(self, a2, sided, v3) != sided)
  {
    self->_doubleSided = sided;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2D1F78;
    v7[3] = &unk_1E7A7E298;
    v7[4] = self;
    sidedCopy = sided;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (NSArray)areaPolygonVertices
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_areaPolygonVertices;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_1AF19D5A0(self->_light, &v13);
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v5 = sub_1AF2CC858(v12, v8, v9, v10);
  if (v7)
  {
    sub_1AF1CEA9C(v7);
  }

  return v5;
}

- (void)setAreaPolygonVertices:(id)vertices
{
  areaPolygonVertices = self->_areaPolygonVertices;
  if (areaPolygonVertices != vertices)
  {
    v12[7] = v3;
    v12[8] = v4;

    self->_areaPolygonVertices = objc_msgSend_copy(vertices, v8, v9, v10);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF2D20C8;
    v12[3] = &unk_1E7A7E1D0;
    v12[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
  }
}

- (VFXMaterialProperty)gobo
{
  result = self->_gobo;
  if (!result)
  {
    v6 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v6, v7, self, 23);
    self->_gobo = result;
  }

  if (*(self + 28))
  {

    return MEMORY[0x1EEE66B58](result, sel_presentationMaterialProperty, v2, v3);
  }

  return result;
}

- (void)setIESProfile:(id)profile
{
  IESProfile = self->_IESProfile;
  if (IESProfile != profile)
  {
    v9[8] = v3;
    v9[9] = v4;

    self->_IESProfile = profile;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2D2200;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = profile;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (void)_customEncodingOfVFXLight:(id)light
{
  objc_msgSend_attenuationDistance(self, a2, light, v3);
  objc_msgSend_encodeFloat_forKey_(light, v6, @"attenuationDistance", v7);
  objc_msgSend_spotInnerAngle(self, v8, v9, v10);
  objc_msgSend_encodeFloat_forKey_(light, v11, @"spotInnerAngle", v12);
  objc_msgSend_spotOuterAngle(self, v13, v14, v15);
  objc_msgSend_encodeFloat_forKey_(light, v16, @"spotOuterAngle", v17);
  objc_msgSend_encodeInteger_forKey_(light, v18, self->_categoryBitMask, @"lightCategoryBitMask");
  LODWORD(v19) = *(&self->_spotFalloffExponent + 1);
  objc_msgSend_encodeFloat_forKey_(light, v20, @"spotFallOffExponent", v21, v19);
  if (self->_type == 4)
  {
    objc_msgSend_encodeInt_forKey_(light, v22, LODWORD(self->_probeType), @"probeType");
    objc_msgSend_encodeInt_forKey_(light, v24, LODWORD(self->_probeUpdateType), @"probeUpdateType");
    objc_msgSend_encodeBool_forKey_(light, v25, self->_parallaxCorrectionEnabled, @"parallaxCorrectionEnabled");
    LODWORD(v26) = *&self->_probeExtents[7];
    objc_msgSend_encodeFloat_forKey_(light, v27, @"probeExtentsX", v28, v26);
    LODWORD(v29) = *&self->_probeExtents[11];
    objc_msgSend_encodeFloat_forKey_(light, v30, @"probeExtentsY", v31, v29);
    LODWORD(v32) = *&self->_probeExtents[15];
    objc_msgSend_encodeFloat_forKey_(light, v33, @"probeExtentsZ", v34, v32);
    if (COERCE_FLOAT(*&self->_probeOffset[7]) == 0.0)
    {
      LODWORD(v35) = HIDWORD(*&self->_probeOffset[7]);
    }

    else
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"probeOffsetX", v23);
      v35 = *&self->_probeOffset[11];
    }

    if (v35 != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"probeOffsetY", v23);
    }

    if (*&self->_probeOffset[15] != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"probeOffsetZ", v23);
    }

    if (COERCE_FLOAT(*&self->_parallaxCenterOffset[7]) == 0.0)
    {
      LODWORD(v36) = HIDWORD(*&self->_parallaxCenterOffset[7]);
    }

    else
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"parallaxOffsetX", v23);
      v36 = *&self->_parallaxCenterOffset[11];
    }

    if (v36 != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"parallaxOffsetY", v23);
    }

    if (*&self->_parallaxCenterOffset[15] != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"parallaxOffsetZ", v23);
    }

    if (COERCE_FLOAT(*&self->_parallaxExtentsFactor[7]) == 1.0)
    {
      LODWORD(v37) = HIDWORD(*&self->_parallaxExtentsFactor[7]);
    }

    else
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"parallaxExtentsFactorX", v23);
      v37 = *&self->_parallaxExtentsFactor[11];
    }

    if (v37 != 1.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"parallaxExtentsFactorY", v23);
    }

    if (*&self->_parallaxExtentsFactor[15] != 1.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v22, @"parallaxExtentsFactorZ", v23);
    }
  }

  maximumShadowDistance = self->_maximumShadowDistance;
  *&maximumShadowDistance = maximumShadowDistance;
  objc_msgSend_encodeFloat_forKey_(light, v22, @"maximumShadowDistance", v23, maximumShadowDistance);
  objc_msgSend_encodeBool_forKey_(light, v39, (*(self + 28) >> 5) & 1, @"autoShadowProjection");
  objc_msgSend_encodeInt_forKey_(light, v40, self->_shadowCascadeCount, @"shadowCascadeCount");
  shadowCascadeSplittingFactor = self->_shadowCascadeSplittingFactor;
  *&shadowCascadeSplittingFactor = shadowCascadeSplittingFactor;
  objc_msgSend_encodeFloat_forKey_(light, v42, @"shadowCascadeSplittingFactor", v43, shadowCascadeSplittingFactor);
  objc_msgSend_encodeBool_forKey_(light, v44, (*(self + 28) >> 6) & 1, @"forcesBackFaceCasters");
  objc_msgSend_encodeBool_forKey_(light, v45, *(self + 28) >> 7, @"sampleDistributedShadowMaps");

  objc_msgSend_encodeInt32_forKey_(light, v46, 1, @"version");
}

- (void)_customDecodingOfVFXLight:(id)light
{
  if (objc_msgSend_containsValueForKey_(light, a2, @"attenuationDistance", v3))
  {
    objc_msgSend_decodeFloatForKey_(light, v6, @"attenuationDistance", v7);
    objc_msgSend_setAttenuationDistance_(self, v8, v9, v10);
  }

  objc_msgSend_decodeFloatForKey_(light, v6, @"spotInnerAngle", v7);
  objc_msgSend_setSpotInnerAngle_(self, v11, v12, v13);
  objc_msgSend_decodeFloatForKey_(light, v14, @"spotOuterAngle", v15);
  objc_msgSend_setSpotOuterAngle_(self, v16, v17, v18);
  if (objc_msgSend_containsValueForKey_(light, v19, @"maximumShadowDistance", v20))
  {
    objc_msgSend_decodeFloatForKey_(light, v21, @"maximumShadowDistance", v22);
    objc_msgSend_setMaximumShadowDistance_(self, v23, v24, v25);
  }

  if (objc_msgSend_containsValueForKey_(light, v21, @"autoShadowProjection", v22))
  {
    v28 = objc_msgSend_decodeBoolForKey_(light, v26, @"autoShadowProjection", v27);
    objc_msgSend_setAutomaticallyAdjustsShadowProjection_(self, v29, v28, v30);
  }

  if (objc_msgSend_containsValueForKey_(light, v26, @"forcesBackFaceCasters", v27))
  {
    v33 = objc_msgSend_decodeBoolForKey_(light, v31, @"forcesBackFaceCasters", v32);
    objc_msgSend_setForcesBackFaceCasters_(self, v34, v33, v35);
  }

  if (objc_msgSend_containsValueForKey_(light, v31, @"sampleDistributedShadowMaps", v32))
  {
    v38 = objc_msgSend_decodeBoolForKey_(light, v36, @"sampleDistributedShadowMaps", v37);
    objc_msgSend_setSampleDistributedShadowMaps_(self, v39, v38, v40);
  }

  if (objc_msgSend_containsValueForKey_(light, v36, @"shadowCascadeCount", v37))
  {
    v43 = objc_msgSend_decodeIntForKey_(light, v41, @"shadowCascadeCount", v42);
    objc_msgSend_setShadowCascadeCount_(self, v44, v43, v45);
  }

  if (objc_msgSend_containsValueForKey_(light, v41, @"shadowCascadeSplittingFactor", v42))
  {
    objc_msgSend_decodeFloatForKey_(light, v46, @"shadowCascadeSplittingFactor", v47);
    objc_msgSend_setShadowCascadeSplittingFactor_(self, v48, v49, v50);
  }

  if (objc_msgSend_containsValueForKey_(light, v46, @"spotFallOffExponent", v47))
  {
    objc_msgSend_decodeFloatForKey_(light, v51, @"spotFallOffExponent", v52);
    objc_msgSend_setSpotFalloffExponent_(self, v53, v54, v55);
  }

  if (objc_msgSend_containsValueForKey_(light, v51, @"lightCategoryBitMask", v52))
  {
    v59 = objc_msgSend_decodeIntegerForKey_(light, v56, @"lightCategoryBitMask", v57);

    objc_msgSend_setCategoryBitMask_(self, v58, v59, v60);
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 28))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder, v3);
  }

  objc_msgSend__customEncodingOfVFXLight_(self, a2, coder, v3);
  objc_msgSend_encodeInt_forKey_(coder, v6, (*(self + 28) >> 1) & 1, @"castsShadow");
  objc_msgSend_encodeInt_forKey_(coder, v7, (*(self + 28) >> 2) & 1, @"baked");
  objc_msgSend_encodeInt_forKey_(coder, v8, (*(self + 28) >> 3) & 1, @"shouldBakeDirectLighting");
  objc_msgSend_encodeInt_forKey_(coder, v9, (*(self + 28) >> 4) & 1, @"shouldBakeIndirectLighting");
  sphericalHarmonics = self->_sphericalHarmonics;
  if (sphericalHarmonics)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, sphericalHarmonics, @"sphericalHarmonics");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, name, @"name");
  }

  type = self->_type;
  if (type)
  {
    objc_msgSend_encodeInt_forKey_(coder, v10, type, @"lightType");
  }

  color = self->_color;
  if (color)
  {
    sub_1AF37266C(coder, color, @"color");
    sub_1AF371924(coder, self->_color, @"vfxcolor");
  }

  *&v12 = self->_shadowIntensity;
  objc_msgSend_encodeFloat_forKey_(coder, color, @"shadowIntensity", v11, v12);
  *&v17 = self->_shadowRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"shadowRadius", v19, v17);
  objc_msgSend_encodeDouble_forKey_(coder, v20, @"intensity", v21, self->_intensity);
  objc_msgSend_encodeDouble_forKey_(coder, v22, @"temperature", v23, self->_temperature);
  *&v24 = self->_orthographicScale;
  objc_msgSend_encodeFloat_forKey_(coder, v25, @"orthographicScale", v26, v24);
  objc_msgSend_encodeInteger_forKey_(coder, v27, self->_shadowSampleCount, @"shadowSampleCount");
  v31 = objc_msgSend_valueWithCGSize_(MEMORY[0x1E696B098], v28, v29, v30, self->_shadowMapSize.width, self->_shadowMapSize.height);
  objc_msgSend_encodeObject_forKey_(coder, v32, v31, @"shadowMapSize");
  zNear = self->_zNear;
  *&zNear = zNear;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"zNear", v35, zNear);
  zFar = self->_zFar;
  *&zFar = zFar;
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"zFar", v38, zFar);
  objc_msgSend_encodeDouble_forKey_(coder, v39, @"shadowBias", v40, self->_shadowBias);
  gobo = self->_gobo;
  if (gobo)
  {
    objc_msgSend_encodeObject_forKey_(coder, v41, gobo, @"gobo");
  }

  IESProfile = self->_IESProfile;
  if (IESProfile)
  {
    objc_msgSend_encodeObject_forKey_(coder, v41, IESProfile, @"IESProfile");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v41, self->_areaType, @"areaType");
  LODWORD(v44) = *self->_areaExtents;
  objc_msgSend_encodeFloat_forKey_(coder, v45, @"areaExtentsX", v46, v44);
  LODWORD(v47) = *&self->_areaExtents[4];
  objc_msgSend_encodeFloat_forKey_(coder, v48, @"areaExtentsY", v49, v47);
  LODWORD(v50) = *&self->_areaExtents[8];
  objc_msgSend_encodeFloat_forKey_(coder, v51, @"areaExtentsZ", v52, v50);
  objc_msgSend_encodeObject_forKey_(coder, v53, self->_areaPolygonVertices, @"areaPolygonVertices");
  objc_msgSend_encodeBool_forKey_(coder, v54, self->_drawsArea, @"drawsArea");
  objc_msgSend_encodeBool_forKey_(coder, v55, self->_doubleSided, @"doubleSided");
  probeEnvironment = self->_probeEnvironment;
  if (probeEnvironment)
  {
    objc_msgSend_encodeObject_forKey_(coder, v56, probeEnvironment, @"probeEnvironment");
  }

  sub_1AF372440(coder, self, probeEnvironment, v57);

  sub_1AF3728B4(coder, self, v59, v60);
}

- (VFXLight)initWithCoder:(id)coder
{
  v252.receiver = self;
  v252.super_class = VFXLight;
  v7 = [(VFXLight *)&v252 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = sub_1AF19B168();
    v7->_light = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v12, v13, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"type");
    if (v17)
    {
      v22 = sub_1AF371824(v17, v18, v19, v20);
    }

    else
    {
      v22 = objc_msgSend_decodeIntForKey_(coder, v18, @"lightType", v20);
    }

    objc_msgSend_setType_(v7, v21, v22, v23);
    objc_msgSend__customDecodingOfVFXLight_(v7, v24, coder, v25);
    v28 = objc_msgSend_decodeIntForKey_(coder, v26, @"castsShadow", v27) != 0;
    objc_msgSend_setCastsShadow_(v7, v29, v28, v30);
    v33 = objc_msgSend_decodeIntForKey_(coder, v31, @"baked", v32) != 0;
    objc_msgSend_setBaked_(v7, v34, v33, v35);
    v38 = objc_msgSend_decodeIntForKey_(coder, v36, @"shouldBakeDirectLighting", v37) != 0;
    objc_msgSend_setShouldBakeDirectLighting_(v7, v39, v38, v40);
    v43 = objc_msgSend_decodeIntForKey_(coder, v41, @"shouldBakeIndirectLighting", v42) != 0;
    objc_msgSend_setShouldBakeIndirectLighting_(v7, v44, v43, v45);
    v46 = objc_opt_class();
    v48 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v47, v46, @"sphericalHarmonics");
    objc_msgSend_set_sphericalHarmonics_(v7, v49, v48, v50);
    v51 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v52, v51, @"name");
    objc_msgSend_setName_(v7, v54, v53, v55);
    if (v7->_type == 4)
    {
      v58 = objc_msgSend_decodeIntForKey_(coder, v56, @"probeType", v57);
      objc_msgSend_setProbeType_(v7, v59, v58, v60);
      v63 = objc_msgSend_decodeIntForKey_(coder, v61, @"probeUpdateType", v62);
      objc_msgSend_setProbeUpdateType_(v7, v64, v63, v65);
      v68 = objc_msgSend_decodeBoolForKey_(coder, v66, @"parallaxCorrectionEnabled", v67);
      objc_msgSend_setParallaxCorrectionEnabled_(v7, v69, v68, v70);
      objc_msgSend_decodeFloatForKey_(coder, v71, @"probeExtentsX", v72);
      v247 = v73;
      objc_msgSend_decodeFloatForKey_(coder, v74, @"probeExtentsY", v75);
      v243 = v76;
      objc_msgSend_decodeFloatForKey_(coder, v77, @"probeExtentsZ", v78);
      objc_msgSend_setProbeExtents_(v7, v79, v80, v81, COERCE_DOUBLE(__PAIR64__(v243, v247)));
      objc_msgSend_decodeFloatForKey_(coder, v82, @"probeOffsetX", v83);
      v248 = v84;
      objc_msgSend_decodeFloatForKey_(coder, v85, @"probeOffsetX", v86);
      v244 = v87;
      objc_msgSend_decodeFloatForKey_(coder, v88, @"probeOffsetX", v89);
      objc_msgSend_setProbeOffset_(v7, v90, v91, v92, COERCE_DOUBLE(__PAIR64__(v244, v248)));
      objc_msgSend_decodeFloatForKey_(coder, v93, @"parallaxOffsetX", v94);
      v249 = v95;
      objc_msgSend_decodeFloatForKey_(coder, v96, @"parallaxOffsetY", v97);
      v245 = v98;
      objc_msgSend_decodeFloatForKey_(coder, v99, @"parallaxOffsetZ", v100);
      objc_msgSend_setParallaxCenterOffset_(v7, v101, v102, v103, COERCE_DOUBLE(__PAIR64__(v245, v249)));
      if (objc_msgSend_containsValueForKey_(coder, v104, @"parallaxExtentsFactorX", v105))
      {
        objc_msgSend_decodeFloatForKey_(coder, v106, @"parallaxExtentsFactorX", v107);
        __asm { FMOV            V1.4S, #1.0 }

        LODWORD(_Q1) = v113;
        *&v250 = _Q1;
      }

      else
      {
        __asm { FMOV            V0.4S, #1.0 }

        *&v250 = _Q0;
      }

      if (objc_msgSend_containsValueForKey_(coder, v106, @"parallaxExtentsFactorY", v107))
      {
        objc_msgSend_decodeFloatForKey_(coder, v115, @"parallaxExtentsFactorY", v116);
        *&v250 = __PAIR64__(v117, LODWORD(v250));
      }

      if (objc_msgSend_containsValueForKey_(coder, v115, @"parallaxExtentsFactorZ", v116))
      {
        objc_msgSend_decodeFloatForKey_(coder, v118, @"parallaxExtentsFactorZ", v120);
      }

      objc_msgSend_setParallaxExtentsFactor_(v7, v118, v119, v120, v250);
    }

    if (objc_msgSend_containsValueForKey_(coder, v56, @"vfxcolor", v57))
    {
      v121 = sub_1AF3719B4(coder, @"vfxcolor");
    }

    else
    {
      v124 = MEMORY[0x1E695DFD8];
      v125 = objc_opt_class();
      v128 = objc_msgSend_setWithObject_(v124, v126, v125, v127);
      v121 = sub_1AF3726E8(coder, @"color", v128);
    }

    objc_msgSend_setColor_(v7, v122, v121, v123);
    objc_msgSend_decodeFloatForKey_(coder, v129, @"shadowIntensity", v130);
    objc_msgSend_setShadowIntensity_(v7, v131, v132, v133);
    objc_msgSend_decodeFloatForKey_(coder, v134, @"shadowRadius", v135);
    objc_msgSend_setShadowRadius_(v7, v136, v137, v138);
    if (objc_msgSend_containsValueForKey_(coder, v139, @"intensity", v140))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v141, @"intensity", v142);
      *&v143 = v143;
      objc_msgSend_setIntensity_(v7, v144, v145, v146, v143);
    }

    if (objc_msgSend_containsValueForKey_(coder, v141, @"temperature", v142))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v147, @"temperature", v148);
      *&v149 = v149;
      objc_msgSend_setTemperature_(v7, v150, v151, v152, v149);
    }

    objc_msgSend_decodeFloatForKey_(coder, v147, @"orthographicScale", v148);
    objc_msgSend_setOrthographicScale_(v7, v153, v154, v155);
    v158 = objc_msgSend_decodeIntegerForKey_(coder, v156, @"shadowSampleCount", v157);
    objc_msgSend_setShadowSampleCount_(v7, v159, v158, v160);
    v161 = objc_opt_class();
    v163 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v162, v161, @"shadowMapSize");
    objc_msgSend_CGSizeValue(v163, v164, v165, v166);
    objc_msgSend_setShadowMapSize_(v7, v167, v168, v169);
    objc_msgSend_decodeFloatForKey_(coder, v170, @"zNear", v171);
    objc_msgSend_setZNear_(v7, v172, v173, v174);
    objc_msgSend_decodeFloatForKey_(coder, v175, @"zFar", v176);
    objc_msgSend_setZFar_(v7, v177, v178, v179);
    objc_msgSend_decodeDoubleForKey_(coder, v180, @"shadowBias", v181);
    *&v182 = v182;
    objc_msgSend_setShadowBias_(v7, v183, v184, v185, v182);
    v186 = objc_opt_class();
    v7->_gobo = objc_msgSend_decodeObjectOfClass_forKey_(coder, v187, v186, @"gobo");
    v188 = objc_opt_class();
    v7->_probeEnvironment = objc_msgSend_decodeObjectOfClass_forKey_(coder, v189, v188, @"probeEnvironment");
    if (objc_msgSend_containsValueForKey_(coder, v190, @"IESProfile", v191))
    {
      v194 = objc_opt_class();
      v196 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v195, v194, @"IESProfile");
      objc_msgSend_setIESProfile_(v7, v197, v196, v198);
    }

    if (objc_msgSend_containsValueForKey_(coder, v192, @"areaType", v193))
    {
      v201 = objc_msgSend_decodeIntegerForKey_(coder, v199, @"areaType", v200);
      objc_msgSend_setAreaType_(v7, v202, v201, v203);
      objc_msgSend_decodeFloatForKey_(coder, v204, @"areaExtentsX", v205);
      v251 = v206;
      objc_msgSend_decodeFloatForKey_(coder, v207, @"areaExtentsY", v208);
      v246 = v209;
      objc_msgSend_decodeFloatForKey_(coder, v210, @"areaExtentsZ", v211);
      objc_msgSend_setAreaExtents_(v7, v212, v213, v214, COERCE_DOUBLE(__PAIR64__(v246, v251)));
      v215 = objc_opt_class();
      v217 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v216, v215, @"areaPolygonVertices");
      objc_msgSend_setAreaPolygonVertices_(v7, v218, v217, v219);
      v222 = objc_msgSend_decodeBoolForKey_(coder, v220, @"drawsArea", v221);
      objc_msgSend_setDrawsArea_(v7, v223, v222, v224);
      v227 = objc_msgSend_decodeBoolForKey_(coder, v225, @"doubleSided", v226);
      objc_msgSend_setDoubleSided_(v7, v228, v227, v229);
    }

    else
    {
      objc_msgSend_setAreaType_(v7, v199, 4, v200);
      __asm { FMOV            V0.4S, #1.0 }

      objc_msgSend_setAreaExtents_(v7, v231, v232, v233, *&_Q0);
      objc_msgSend_setAreaPolygonVertices_(v7, v234, 0, v235);
      objc_msgSend_setDrawsArea_(v7, v236, 1, v237);
      objc_msgSend_setDoubleSided_(v7, v238, 0, v239);
    }

    v7->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v7);
    sub_1AF372B94(coder, v7);
    objc_msgSend_setImmediateMode_(VFXTransaction, v240, v8, v241);
  }

  return v7;
}

+ (id)lightWithMDLLight:(id)light
{
  v5 = objc_msgSend_light(self, a2, light, v3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E69DC888];
    v10 = objc_msgSend_color(light, v6, v7, v8);
    v13 = objc_msgSend_colorWithCGColor_(v9, v11, v10, v12);
    objc_msgSend_setColor_(v5, v14, v13, v15);
    objc_msgSend_attenuationEndDistance(light, v16, v17, v18);
    objc_msgSend_setAttenuationDistance_(v5, v19, v20, v21);
    objc_msgSend_innerConeAngle(light, v22, v23, v24);
    objc_msgSend_setSpotInnerAngle_(v5, v25, v26, v27);
    objc_msgSend_outerConeAngle(light, v28, v29, v30);
    objc_msgSend_setSpotOuterAngle_(v5, v31, v32, v33);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x1E69DC888], v34, v35, v36, 0.0, 0.0, 0.0, 1.0);
      objc_msgSend_setColor_(v5, v38, v37, v39);
    }
  }

  v42 = objc_msgSend_lightType(light, v34, v35, v36) - 1;
  if (v42 <= 3)
  {
    objc_msgSend_setType_(v5, v40, qword_1AFE47A68[v42], v41);
  }

  return v5;
}

+ (id)lightWithMDLLightProbe:(id)probe
{
  v4 = objc_msgSend_light(self, a2, probe, v3);
  objc_msgSend_setType_(v4, v5, 4, v6);
  return v4;
}

@end