@interface VFXMaterial
+ (id)material;
+ (id)materialWithColor:(id)a3;
+ (id)materialWithContents:(id)a3;
+ (id)materialWithMDLMaterial:(id)a3 options:(id)a4;
+ (id)materialWithMaterialRef:(__CFXMaterial *)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)avoidsOverLighting;
- (BOOL)isDoubleSided;
- (BOOL)isLitPerPixel;
- (BOOL)readsFromDepthBuffer;
- (BOOL)writesToDepthBuffer;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSString)description;
- (NSString)identifier;
- (NSString)name;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXMaterial)init;
- (VFXMaterial)initWithCoder:(id)a3;
- (VFXMaterial)initWithMaterialRef:(__CFXMaterial *)a3;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXCommonProfile)commonProfile;
- (__CFXWorld)worldRef;
- (float)alphaCutoff;
- (float)fresnelExponent;
- (float)indexOfRefraction;
- (float)selfIlluminationOcclusion;
- (float)shininess;
- (id)_integrateModelKitComputedMaps:(id)a3 withModel:(id)a4 node:(id)a5 texturePathProvider:(id)a6 vertexAttributeNamed:(id)a7 materialPropertyNamed:(id)a8 filePath:(id)a9;
- (id)_property:(id *)a3;
- (id)_vfxAnimationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)builtinProperties;
- (id)color;
- (id)contents;
- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4;
- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)a3;
- (id)initPresentationMaterialWithMaterialRef:(__CFXMaterial *)a3;
- (id)presentationMaterial;
- (id)properties;
- (id)propertyWithName:(id)a3;
- (id)shaderModifiersArgumentWithName:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)blendMode;
- (int64_t)colorBufferWriteMask;
- (int64_t)cullMode;
- (int64_t)transparencyMode;
- (unint64_t)fillMode;
- (unint64_t)shadingModel;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_copyBindingsFrom:(id)a3;
- (void)_customDecodingOfVFXMaterial:(id)a3;
- (void)_customEncodingOfVFXMaterial:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setSourceObject:(id)a3 forBinding:(id)a4;
- (void)_setupMaterialProperty:(id *)a3;
- (void)_setupShadableHelperIfNeeded;
- (void)_shadableSetValue:(id)a3 forUndefinedKey:(id)a4;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)addWorldReference:(id)a3;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)copyShaderModifiersAndLanguageVersionFrom:(id)a3;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAnimationReferencesUsingBlock:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4;
- (void)removeWorldReference:(id)a3;
- (void)setAlphaCutoff:(float)a3;
- (void)setAvoidsOverLighting:(BOOL)a3;
- (void)setBehaviorGraph:(id)a3;
- (void)setBlendMode:(int64_t)a3;
- (void)setColor:(id)a3;
- (void)setColorBufferWriteMask:(int64_t)a3;
- (void)setContents:(id)a3;
- (void)setCullMode:(int64_t)a3;
- (void)setDoubleSided:(BOOL)a3;
- (void)setFillMode:(unint64_t)a3;
- (void)setFresnelExponent:(float)a3;
- (void)setIdentifier:(id)a3;
- (void)setIndexOfRefraction:(float)a3;
- (void)setLitPerPixel:(BOOL)a3;
- (void)setMinimumLanguageVersion:(id)a3;
- (void)setName:(id)a3;
- (void)setProgram:(id)a3;
- (void)setReadsFromDepthBuffer:(BOOL)a3;
- (void)setSelfIlluminationOcclusion:(float)a3;
- (void)setShaderModifiers:(id)a3;
- (void)setShadingModel:(unint64_t)a3;
- (void)setShininess:(float)a3;
- (void)setTransparencyMode:(int64_t)a3;
- (void)setWorld:(id)a3;
- (void)setWritesToDepthBuffer:(BOOL)a3;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation VFXMaterial

- (VFXMaterial)init
{
  v11.receiver = self;
  v11.super_class = VFXMaterial;
  v2 = [(VFXMaterial *)&v11 init];
  if (v2)
  {
    v3 = sub_1AF1A0BFC();
    v2->_material = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6);
    objc_msgSend_makeUniqueID(v2, v7, v8, v9);
  }

  return v2;
}

- (VFXMaterial)initWithMaterialRef:(__CFXMaterial *)a3
{
  v16.receiver = self;
  v16.super_class = VFXMaterial;
  v4 = [(VFXMaterial *)&v16 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_material = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
    objc_msgSend__syncObjCAnimations(v4, v9, v10, v11);
    objc_msgSend_makeUniqueID(v4, v12, v13, v14);
  }

  return v4;
}

- (id)initPresentationMaterialWithMaterialRef:(__CFXMaterial *)a3
{
  v7.receiver = self;
  v7.super_class = VFXMaterial;
  v4 = [(VFXMaterial *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_isPresentationObject = 1;
    v4->_material = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)materialWithMaterialRef:(__CFXMaterial *)a3
{
  result = sub_1AF16CDEC(a3);
  if (!result)
  {
    v6 = [a1 alloc];
    v9 = objc_msgSend_initWithMaterialRef_(v6, v7, a3, v8);

    return v9;
  }

  return result;
}

+ (id)material
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)materialWithColor:(id)a3
{
  v4 = objc_alloc_init(a1);
  objc_msgSend_setColor_(v4, v5, a3, v6);
  return v4;
}

+ (id)materialWithContents:(id)a3
{
  v4 = objc_alloc_init(a1);
  objc_msgSend_setContents_(v4, v5, a3, v6);
  return v4;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_properties(self, a2, v2, v3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_parentWillDie_(*(*(&v18 + 1) + 8 * v13++), v8, self, v10);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v11);
  }

  if (!self->_isPresentationObject)
  {
    objc_msgSend_ownerWillDie(self->_shadableHelper, v8, v9, v10);
  }

  material = self->_material;
  if (material)
  {
    if (!self->_isPresentationObject)
    {
      sub_1AF16CDFC(self->_material, 0);
      material = self->_material;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v14, material, v15);
  }

  v17.receiver = self;
  v17.super_class = VFXMaterial;
  [(VFXMaterial *)&v17 dealloc];
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_behaviorGraph(self, a2, a3, a4))
  {
    v9 = objc_msgSend_behaviorGraph(self, v6, v7, v8);
    (*(a4 + 2))(a4, v9, 0, 0);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = objc_msgSend_properties(self, v6, v7, v8, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v23, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v10);
        }

        (*(a4 + 2))(a4, *(*(&v19 + 1) + 8 * v17++), 0, 0);
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v19, v23, 16);
    }

    while (v15);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, v13, a4, v14);
}

- (void)addWorldReference:(id)a3
{
  world = self->_world;
  if (world == a3)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, a3, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)a3
{
  if (!a3 || self->_world == a3)
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
        sub_1AFDF595C();
      }
    }
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
      v9[2] = sub_1AF2D43F4;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2D4454;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if (!self->_isPresentationObject)
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

- (void)setName:(id)a3
{
  name = self->_name;
  if (a3 | name)
  {
    if ((objc_msgSend_isEqual_(a3, a2, name, v3) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(a3, v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2D45D0;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = a3;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
{
  if (!self->_isPresentationObject)
  {
    return self->_name;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend___CFObject(self, v6, v7, v8);
  v11 = sub_1AF16CBEC(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setIdentifier:(id)a3
{
  v5 = objc_msgSend___CFObject(self, a2, a3, v3);

  sub_1AF16CD6C(v5, a3);
}

- (NSString)identifier
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
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_materialRef(self, v6, v7, v8);
  self->_cullMode = sub_1AF1A1378(v10);
  self->_writesToDepthBuffer = sub_1AF1A1650(v10);
  self->_readsFromDepthBuffer = sub_1AF1A1768(v10);
  self->_colorBufferWriteMask = sub_1AF1A16A0(v10);
  self->_doubleSided = sub_1AF1A1224(v10);
  self->_fillMode = sub_1AF1A13C0(v10);
  self->_blendMode = sub_1AF1A1408(v10);
  self->_alphaCutoff = sub_1AF1A1450(v10);
  v11 = sub_1AF1A1270(v10);
  if (v11)
  {
    v15 = v11;
    self->_shininess = sub_1AF165BEC(v11, 19);
    self->_indexOfRefraction = sub_1AF165BEC(v15, 20);
    self->_fresnelExponent = sub_1AF165BEC(v15, 21);
    self->_transparencyMode = sub_1AF166C38(v15);
    v16 = sub_1AF165AE4(v15);
    self->_shadingModel = sub_1AF2D4900(v16);
    self->_litPerPixel = sub_1AF166BF0(v15);
    self->_avoidsOverLighting = sub_1AF166B30(v15);
    self->_selfIlluminationOcclusion = sub_1AF166D0C(v15);
  }

  objc_msgSend__updateEntityModelFromPresentation(self, v12, v13, v14);
  if (v9)
  {

    sub_1AF1CEA9C(v9);
  }
}

- (void)_updatePresentationFromModel
{
  v5 = objc_msgSend_materialRef(self, a2, v2, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF2D49E8;
  v7[3] = &unk_1E7A7E248;
  v7[4] = self;
  v7[5] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
}

- (id)presentationMaterial
{
  v2 = self;
  if (!self->_isPresentationObject)
  {
    v3 = [VFXMaterial alloc];
    v6 = objc_msgSend_initPresentationMaterialWithMaterialRef_(v3, v4, v2->_material, v5);

    v6[34] = v2->_shadableHelper;
    v6[39] = v2->_behaviorGraph;
    return v6;
  }

  return v2;
}

- (__CFXCommonProfile)commonProfile
{
  v4 = objc_msgSend_materialRef(self, a2, v2, v3);

  return sub_1AF1A1270(v4);
}

- (void)_setupMaterialProperty:(id *)a3
{
  if (!a3)
  {
    return;
  }

  v6 = objc_msgSend_worldRef(self, a2, a3, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_commonProfile(self, v7, v8, v9, 0, 0);
  if (!v11)
  {
    v31 = sub_1AF0D5194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5A4C();
      if (!v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    goto LABEL_51;
  }

  if (&self->_diffuse == a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 22;
  }

  if (&self->_specular == a3)
  {
    v12 = 2;
  }

  if (&self->_emission == a3)
  {
    v12 = 0;
  }

  if (&self->_reflective == a3)
  {
    v12 = 3;
  }

  if (&self->_transparent == a3)
  {
    v12 = 4;
  }

  if (&self->_multiply == a3)
  {
    v12 = 5;
  }

  if (&self->_normal == a3)
  {
    v12 = 6;
  }

  if (&self->_selfIllumination == a3)
  {
    v12 = 8;
  }

  if (&self->_ambientOcclusion == a3)
  {
    v12 = 7;
  }

  if (&self->_metalness == a3)
  {
    v12 = 9;
  }

  if (&self->_roughness == a3)
  {
    v12 = 10;
  }

  if (&self->_displacement == a3)
  {
    v12 = 18;
  }

  if (&self->_clearCoat == a3)
  {
    v12 = 11;
  }

  if (&self->_clearCoatRoughness == a3)
  {
    v12 = 12;
  }

  if (&self->_clearCoatNormal == a3)
  {
    v12 = 13;
  }

  if (&self->_subsurface == a3)
  {
    v12 = 14;
  }

  if (&self->_subsurfaceRadius == a3)
  {
    v12 = 15;
  }

  if (&self->_transmission == a3)
  {
    v12 = 16;
  }

  if (&self->_transmissionColor == a3)
  {
    v12 = 17;
  }

  v13 = v12;
  if (v12 == 22 || (v14 = v11, v15 = sub_1AF166058(v11, v13), sub_1AF1663B0(v14, v13), !v15))
  {
    v15 = &v32;
    sub_1AF163FFC(&v32, 0.5, 0.5, 0.5, 1.0);
  }

  v19 = objc_alloc(objc_msgSend__materialPropertyClass(self, v16, v17, v18));
  v21 = objc_msgSend_initWithParent_propertyType_(v19, v20, self, v13);
  *a3 = v21;
  v22 = MEMORY[0x1E69DC888];
  isColorManaged = objc_msgSend_isColorManaged(v21, v23, v24, v25);
  v28 = objc_msgSend_vfx_colorWithCFXColor_ignoringColorSpace_(v22, v27, v15, isColorManaged ^ 1u);
  objc_msgSend__setColor_(v21, v29, v28, v30);
  if (v10)
  {
LABEL_51:
    sub_1AF1CEA9C(v10);
  }
}

- (void)setColor:(id)a3
{
  v5 = objc_msgSend_diffuse(self, a2, a3, v3);

  objc_msgSend_setColor_(v5, v6, a3, v7);
}

- (id)color
{
  v4 = objc_msgSend_diffuse(self, a2, v2, v3);

  return objc_msgSend_color(v4, v5, v6, v7);
}

- (id)builtinProperties
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = objc_msgSend_initWithCapacity_(v3, v4, 18, v5);
  if (self->_diffuse)
  {
    v10 = objc_msgSend_diffuse(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v11, v10, v12);
  }

  if (self->_specular)
  {
    v13 = objc_msgSend_specular(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v14, v13, v15);
  }

  if (self->_emission)
  {
    v16 = objc_msgSend_emission(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v17, v16, v18);
  }

  if (self->_transparent)
  {
    v19 = objc_msgSend_transparent(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v20, v19, v21);
  }

  if (self->_reflective)
  {
    v22 = objc_msgSend_reflective(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v23, v22, v24);
  }

  if (self->_multiply)
  {
    v25 = objc_msgSend_multiply(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v26, v25, v27);
  }

  if (self->_normal)
  {
    v28 = objc_msgSend_normal(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v29, v28, v30);
  }

  if (self->_ambientOcclusion)
  {
    v31 = objc_msgSend_ambientOcclusion(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v32, v31, v33);
  }

  if (self->_selfIllumination)
  {
    v34 = objc_msgSend_selfIllumination(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v35, v34, v36);
  }

  if (self->_metalness)
  {
    v37 = objc_msgSend_metalness(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v38, v37, v39);
  }

  if (self->_roughness)
  {
    v40 = objc_msgSend_roughness(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v41, v40, v42);
  }

  if (self->_displacement)
  {
    v43 = objc_msgSend_displacement(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v44, v43, v45);
  }

  if (self->_clearCoat)
  {
    v46 = objc_msgSend_clearCoat(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v47, v46, v48);
  }

  if (self->_clearCoatRoughness)
  {
    v49 = objc_msgSend_clearCoatRoughness(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v50, v49, v51);
  }

  if (self->_clearCoatNormal)
  {
    v52 = objc_msgSend_clearCoatNormal(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v53, v52, v54);
  }

  if (self->_subsurface)
  {
    v55 = objc_msgSend_subsurface(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v56, v55, v57);
  }

  if (self->_subsurfaceRadius)
  {
    v58 = objc_msgSend_subsurfaceRadius(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v59, v58, v60);
  }

  if (self->_transmission)
  {
    v61 = objc_msgSend_transmission(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v62, v61, v63);
  }

  if (self->_transmissionColor)
  {
    v64 = objc_msgSend_transmissionColor(self, v6, v7, v8);
    objc_msgSend_addObject_(v9, v65, v64, v66);
  }

  return v9;
}

- (id)propertyWithName:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v6 = objc_msgSend_customMaterialProperties(self, a2, a3, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v78, v82, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v79;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v79 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v78 + 1) + 8 * v14);
      v16 = objc_msgSend_propertyName(v15, v9, v10, v11);
      if (objc_msgSend_isEqualToString_(v16, v17, a3, v18))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v78, v82, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (objc_msgSend_isEqualToString_(a3, v9, @"diffuse", v11))
    {
      return objc_msgSend_diffuse(self, v19, v20, v21);
    }

    if (objc_msgSend_isEqualToString_(a3, v19, @"specular", v21))
    {
      return objc_msgSend_specular(self, v23, v24, v25);
    }

    if (objc_msgSend_isEqualToString_(a3, v23, @"emission", v25))
    {
      return objc_msgSend_emission(self, v26, v27, v28);
    }

    if (objc_msgSend_isEqualToString_(a3, v26, @"transparent", v28))
    {
      return objc_msgSend_transparent(self, v29, v30, v31);
    }

    if (objc_msgSend_isEqualToString_(a3, v29, @"reflective", v31))
    {
      return objc_msgSend_reflective(self, v32, v33, v34);
    }

    if (objc_msgSend_isEqualToString_(a3, v32, @"multiply", v34))
    {
      return objc_msgSend_multiply(self, v35, v36, v37);
    }

    if (objc_msgSend_isEqualToString_(a3, v35, @"normal", v37))
    {
      return objc_msgSend_normal(self, v38, v39, v40);
    }

    if (objc_msgSend_isEqualToString_(a3, v38, @"ambientOcclusion", v40))
    {
      return objc_msgSend_ambientOcclusion(self, v41, v42, v43);
    }

    if (objc_msgSend_isEqualToString_(a3, v41, @"selfIllumination", v43))
    {
      return objc_msgSend_selfIllumination(self, v44, v45, v46);
    }

    if (objc_msgSend_isEqualToString_(a3, v44, @"metalness", v46))
    {
      return objc_msgSend_metalness(self, v47, v48, v49);
    }

    if (objc_msgSend_isEqualToString_(a3, v47, @"roughness", v49))
    {
      return objc_msgSend_roughness(self, v50, v51, v52);
    }

    if (objc_msgSend_isEqualToString_(a3, v50, @"displacement", v52))
    {
      return objc_msgSend_displacement(self, v53, v54, v55);
    }

    if (objc_msgSend_isEqualToString_(a3, v53, @"clearCoat", v55))
    {
      return objc_msgSend_clearCoat(self, v56, v57, v58);
    }

    if (objc_msgSend_isEqualToString_(a3, v56, @"clearCoatRoughness", v58))
    {
      return objc_msgSend_clearCoatRoughness(self, v59, v60, v61);
    }

    if (objc_msgSend_isEqualToString_(a3, v59, @"clearCoatNormal", v61))
    {
      return objc_msgSend_clearCoatNormal(self, v62, v63, v64);
    }

    if (objc_msgSend_isEqualToString_(a3, v62, @"subsurface", v64))
    {
      return objc_msgSend_subsurface(self, v65, v66, v67);
    }

    if (objc_msgSend_isEqualToString_(a3, v65, @"subsurfaceRadius", v67))
    {
      return objc_msgSend_subsurfaceRadius(self, v68, v69, v70);
    }

    if (objc_msgSend_isEqualToString_(a3, v68, @"transmission", v70))
    {
      return objc_msgSend_transmission(self, v71, v72, v73);
    }

    if (!objc_msgSend_isEqualToString_(a3, v71, @"transmissionColor", v73))
    {
      return 0;
    }

    return objc_msgSend_transmissionColor(self, v74, v75, v76);
  }

  return v15;
}

- (id)properties
{
  v5 = objc_msgSend_builtinProperties(self, a2, v2, v3);
  v9 = objc_msgSend_customMaterialProperties(self, v6, v7, v8);
  if (!objc_msgSend_count(v9, v10, v11, v12))
  {
    return v5;
  }

  return objc_msgSend_arrayByAddingObjectsFromArray_(v5, v13, v9, v14);
}

- (id)_property:(id *)a3
{
  result = *a3;
  if (!*a3)
  {
    objc_msgSend__setupMaterialProperty_(self, a2, a3, v3);
    result = *a3;
    if (self->_isPresentationObject)
    {
      objc_msgSend_flagAsPresentationObject(result, v7, v8, v9);
      return *a3;
    }
  }

  return result;
}

- (void)setTransparencyMode:(int64_t)a3
{
  if (self->_transparencyMode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_transparencyMode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D56A8;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)transparencyMode
{
  if (!self->_isPresentationObject)
  {
    return self->_transparencyMode;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
  if (v10)
  {
    v11 = sub_1AF166C38(v10);
    if (!v9)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v11 = 0;
  if (v9)
  {
LABEL_9:
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setShininess:(float)a3
{
  if (self->_shininess != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_shininess = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D57FC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shininess", v5);
  }
}

- (float)shininess
{
  if (!self->_isPresentationObject)
  {
    return self->_shininess;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
  if (v10)
  {
    v11 = sub_1AF165BEC(v10, 19);
    if (!v9)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v11 = 0.0;
  if (v9)
  {
LABEL_9:
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setIndexOfRefraction:(float)a3
{
  if (self->_indexOfRefraction != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_indexOfRefraction = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5964;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"indexOfRefraction", v5);
  }
}

- (float)indexOfRefraction
{
  if (!self->_isPresentationObject)
  {
    return self->_indexOfRefraction;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
  if (v10)
  {
    v11 = sub_1AF165BEC(v10, 20);
    if (!v9)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v11 = 0.0;
  if (v9)
  {
LABEL_9:
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setFresnelExponent:(float)a3
{
  if (self->_fresnelExponent != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_fresnelExponent = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5ACC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fresnelExponent", v5);
  }
}

- (float)fresnelExponent
{
  if (!self->_isPresentationObject)
  {
    return self->_fresnelExponent;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
  if (v10)
  {
    v11 = sub_1AF165BEC(v10, 21);
    if (!v9)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v11 = 0.0;
  if (v9)
  {
LABEL_9:
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setSelfIlluminationOcclusion:(float)a3
{
  if (self->_selfIlluminationOcclusion != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_selfIlluminationOcclusion = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5C34;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"selfIlluminationOcclusion", v5);
  }
}

- (float)selfIlluminationOcclusion
{
  if (!self->_isPresentationObject)
  {
    return self->_selfIlluminationOcclusion;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
  if (v10)
  {
    v11 = sub_1AF166D0C(v10);
    if (!v9)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v11 = 0.0;
  if (v9)
  {
LABEL_9:
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setBlendMode:(int64_t)a3
{
  if (self->_blendMode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_blendMode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5D88;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)blendMode
{
  if (!self->_isPresentationObject)
  {
    return self->_blendMode;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_materialRef(self, v6, v7, v8);
  v11 = sub_1AF1A1408(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (float)alphaCutoff
{
  if (!self->_isPresentationObject)
  {
    return self->_alphaCutoff;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_materialRef(self, v6, v7, v8);
  v11 = sub_1AF1A1450(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setAlphaCutoff:(float)a3
{
  if (self->_isPresentationObject || self->_alphaCutoff != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_alphaCutoff = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D5F48;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"alphaCutoff", v5);
  }
}

- (void)setShadingModel:(unint64_t)a3
{
  if (self->_shadingModel != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_shadingModel = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6014;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)shadingModel
{
  if (!self->_isPresentationObject)
  {
    return self->_shadingModel;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
  v11 = sub_1AF165AE4(v10);
  v12 = sub_1AF2D4900(v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v12;
}

- (void)setLitPerPixel:(BOOL)a3
{
  if (self->_litPerPixel != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_litPerPixel = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6174;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"litPerPixel", v5);
  }
}

- (BOOL)isLitPerPixel
{
  if (self->_isPresentationObject)
  {
    v5 = objc_msgSend_worldRef(self, a2, v2, v3);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
    if (v10)
    {
      litPerPixel = sub_1AF166BF0(v10);
      if (!v9)
      {
        return litPerPixel & 1;
      }

      goto LABEL_9;
    }

    litPerPixel = 0;
    if (v9)
    {
LABEL_9:
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    litPerPixel = self->_litPerPixel;
  }

  return litPerPixel & 1;
}

- (void)setAvoidsOverLighting:(BOOL)a3
{
  if (self->_avoidsOverLighting != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_avoidsOverLighting = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D62C8;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)avoidsOverLighting
{
  if (self->_isPresentationObject)
  {
    v5 = objc_msgSend_worldRef(self, a2, v2, v3);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_commonProfile(self, v6, v7, v8);
    if (v10)
    {
      avoidsOverLighting = sub_1AF166B30(v10);
      if (!v9)
      {
        return avoidsOverLighting & 1;
      }

      goto LABEL_9;
    }

    avoidsOverLighting = 0;
    if (v9)
    {
LABEL_9:
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    avoidsOverLighting = self->_avoidsOverLighting;
  }

  return avoidsOverLighting & 1;
}

- (void)setWritesToDepthBuffer:(BOOL)a3
{
  if (self->_writesToDepthBuffer != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_writesToDepthBuffer = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6418;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)writesToDepthBuffer
{
  if (!self->_isPresentationObject)
  {
    return self->_writesToDepthBuffer;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1A1650(self->_material);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    material = self->_material;

    return sub_1AF1A1650(material);
  }
}

- (void)setColorBufferWriteMask:(int64_t)a3
{
  if (self->_colorBufferWriteMask != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_colorBufferWriteMask = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6564;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)colorBufferWriteMask
{
  if (!self->_isPresentationObject)
  {
    return self->_colorBufferWriteMask;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v5)
  {
    return sub_1AF1A16A0(self->_material);
  }

  v6 = v5;
  sub_1AF1CEA20(v5);
  v7 = sub_1AF1A16A0(self->_material);
  sub_1AF1CEA9C(v6);
  return v7;
}

- (void)setReadsFromDepthBuffer:(BOOL)a3
{
  if (self->_readsFromDepthBuffer != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_readsFromDepthBuffer = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D66A4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)readsFromDepthBuffer
{
  if (!self->_isPresentationObject)
  {
    return self->_readsFromDepthBuffer;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1A1768(self->_material);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    material = self->_material;

    return sub_1AF1A1768(material);
  }
}

- (id)contents
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  if (!self->_diffuse)
  {
    objc_msgSend__setupMaterialProperty_(self, v6, &self->_diffuse, v8);
  }

  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  diffuse = self->_diffuse;

  return objc_msgSend_contents(diffuse, v6, v7, v8);
}

- (void)setContents:(id)a3
{
  v5 = objc_msgSend_diffuse(self, a2, a3, v3);

  objc_msgSend_setContents_(v5, v6, a3, v7);
}

- (void)setDoubleSided:(BOOL)a3
{
  if (self->_doubleSided != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_doubleSided = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D68B4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"doubleSided", v5);
  }
}

- (BOOL)isDoubleSided
{
  if (!self->_isPresentationObject)
  {
    return self->_doubleSided;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1A1224(self->_material);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    material = self->_material;

    return sub_1AF1A1224(material);
  }
}

- (void)setCullMode:(int64_t)a3
{
  if (self->_cullMode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_cullMode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6A10;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"cullMode", v5);
  }
}

- (int64_t)cullMode
{
  if (!self->_isPresentationObject)
  {
    return self->_cullMode;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v5)
  {
    return sub_1AF1A1378(self->_material);
  }

  v6 = v5;
  sub_1AF1CEA20(v5);
  v7 = sub_1AF1A1378(self->_material);
  sub_1AF1CEA9C(v6);
  return v7;
}

- (void)setFillMode:(unint64_t)a3
{
  if (self->_fillMode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_fillMode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D6B54;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fillMode", v5);
  }
}

- (unint64_t)fillMode
{
  if (!self->_isPresentationObject)
  {
    return self->_fillMode;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v5)
  {
    return sub_1AF1A13C0(self->_material);
  }

  v6 = v5;
  sub_1AF1CEA20(v5);
  v7 = sub_1AF1A13C0(self->_material);
  sub_1AF1CEA9C(v6);
  return v7;
}

- (NSString)description
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p", v7, v5, self);
  v12 = objc_msgSend_name(self, v9, v10, v11);
  if (objc_msgSend_length(v12, v13, v14, v15))
  {
    v19 = objc_msgSend_name(self, v16, v17, v18);
    objc_msgSend_appendFormat_(v8, v20, @" '%@'", v21, v19);
  }

  v22 = objc_msgSend_properties(self, v16, v17, v18);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v37, v41, 16);
  if (v24)
  {
    v28 = v24;
    v29 = 0;
    v30 = *v38;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v22);
        }

        v32 = *(*(&v37 + 1) + 8 * i);
        if ((objc_msgSend__hasDefaultValues(v32, v25, v26, v27) & 1) == 0)
        {
          v33 = objc_msgSend_propertyName(v32, v25, v26, v27);
          objc_msgSend_appendFormat_(v8, v34, @"\n  %@=%@", v35, v33, v32);
          v29 = 1;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v37, v41, 16);
    }

    while (v28);
    if (v29)
    {
      objc_msgSend_appendString_(v8, v25, @"\n", v27);
    }
  }

  objc_msgSend_appendString_(v8, v25, @">", v27);
  return v8;
}

- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4
{
  v6 = objc_msgSend_materialPropertyName(a4, a2, a3, a4);
  if (objc_msgSend_isEqualToString_(a3, v7, @"color", v8) || objc_msgSend_isEqualToString_(a3, v9, @"contents", v10) || objc_msgSend_isEqualToString_(a3, v9, @"content", v10))
  {
    v11 = objc_msgSend_stringByAppendingString_(v6, v9, @".contents", v10);
  }

  else
  {
    v11 = objc_msgSend_stringByAppendingFormat_(v6, v9, @".%@", v10, a3);
  }

  return sub_1AF291EF0(self, v11, v12, v13);
}

- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_length(a3, a2, a3, a4);
  if (result)
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v12 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v10, a3, v11);
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v12)
      {
        v14 = sub_1AF290E58(a4);
        if (v14)
        {
          v18 = sub_1AF376904(v14, v15, v16, v17);
          v22 = objc_msgSend_worldRef(self, v19, v20, v21);
          if (v22)
          {
            v26 = v22;
            sub_1AF1CEA20(v22);
            objc_msgSend_begin(VFXTransaction, v27, v28, v29);
            objc_msgSend_setImmediateMode_(VFXTransaction, v30, 1, v31);
            objc_msgSend_setValue_forUndefinedKey_(self, v32, v18, a3);
            objc_msgSend_commitImmediate(VFXTransaction, v33, v34, v35);
            sub_1AF1CEA9C(v26);
          }

          else
          {
            objc_msgSend_begin(VFXTransaction, v23, v24, v25);
            objc_msgSend_setImmediateMode_(VFXTransaction, v37, 1, v38);
            objc_msgSend_setValue_forUndefinedKey_(self, v39, v18, a3);
            objc_msgSend_commitImmediate(VFXTransaction, v40, v41, v42);
          }
        }

        else
        {
          v36 = sub_1AF0D5194();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v43 = 138412290;
            v44 = a3;
            _os_log_impl(&dword_1AF0CE000, v36, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", &v43, 0xCu);
          }
        }
      }
    }

    result = sub_1AF291EF0(self, a3, v8, v9);
    if (!result)
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5A88();
      }

      return 0;
    }
  }

  return result;
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

- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v9 = objc_msgSend_objectForKey_(self->_animations, v7, a4, v8);
  v15 = objc_msgSend_animation(v9, v10, v11, v12) == a3;
  if (v15)
  {
    objc_msgSend_removeWorldReference_(v9, v13, self->_world, v14);
    objc_msgSend_removeObjectForKey_(self->_animations, v16, a4, v17);
    v21 = objc_msgSend___CFObject(self, v18, v19, v20);
    if ((sub_1AF16D234(v21) & 1) == 0)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4B20(v22);
      }
    }

    sub_1AF16D870(v21, a4, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v15;
}

- (void)addAnimationPlayer:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    if (!a4)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, 0);
      v5 = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    if (!self->_isPresentationObject)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(a3, v11, self->_world, v12);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v13, a3, v5);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v15 = objc_msgSend_timingFunction(VFXTransaction, a2, a3, a4);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF2D7264;
    v18[3] = &unk_1E7A7E2C0;
    v18[4] = a3;
    v18[5] = self;
    v18[6] = v5;
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

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    if (!a4)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, 0);
      v5 = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v11, v6, v12);
    }

    v13 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v11, v6, v12);
    objc_msgSend_addAnimationPlayer_forKey_(self, v14, v13, v5);

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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF2D75E8, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2D75D8, &unk_1E7A7E2E8, self, v21, *&v20);
  }
}

- (void)removeAnimationForKey:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, a3, v6);
      objc_msgSend_removeWorldReference_(v8, v9, self->_world, v10);
      objc_msgSend_removeObjectForKey_(self->_animations, v11, a3, v12);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v16 = objc_msgSend_timingFunction(VFXTransaction, v13, v14, v15);
    objc_msgSend_animationDuration(VFXTransaction, v17, v18, v19);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF2D76D8;
    v22[3] = &unk_1E7A7E310;
    v22[7] = v20;
    v22[4] = self;
    v22[5] = a3;
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
      v17[2] = sub_1AF2D7874;
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

- (id)_vfxAnimationForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, v3, v6);
      v3 = objc_msgSend_animation(v8, v9, v10, v11);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_copyAnimationsFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_animationKeys(a3, a2, a3, v3, 0);
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
        v15 = objc_msgSend_animationPlayerForKey_(a3, v9, v14, v10);
        v19 = objc_msgSend_copy(v15, v16, v17, v18);
        objc_msgSend_addAnimationPlayer_forKey_(self, v20, v19, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }
}

- (id)animationPlayerForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = objc_msgSend_objectForKey_(animations, v5, v3, v6);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = objc_msgSend___CFObject(self, a2, a3, a4);
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_animationManager(self, v10, v11, v12);
    if (v14)
    {
      v15 = v14;
      v16 = CACurrentMediaTime();

      sub_1AF118EBC(v15, v13, a4, v7, v5, v16);
    }
  }
}

- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  if (self != a4)
  {
    v25[15] = v6;
    v25[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, a4, v15);
    objc_msgSend_setKeyPathDst_(v13, v16, a3, v17);
    objc_msgSend_setKeyPathSrc_(v13, v18, a5, v19);
    objc_msgSend_setOptions_(v13, v20, a6, v21);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v22, v13, a3);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF2D7C94;
    v25[3] = &unk_1E7A7E360;
    v25[4] = self;
    v25[5] = a4;
    v25[6] = a3;
    v25[7] = a5;
    v25[8] = a6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v25);
  }
}

- (void)unbindAnimatablePath:(id)a3
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, a3, v3);
  if (!objc_msgSend_count(self->_bindings, v6, v7, v8))
  {

    self->_bindings = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2D7DD8;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2D7EA4;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)a3
{
  v5 = objc_msgSend__vfxBindings(a3, a2, a3, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2D7F50;
  v8[3] = &unk_1E7A7E388;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v8, v7);
}

- (void)_setSourceObject:(id)a3 forBinding:(id)a4
{
  if (objc_msgSend_sourceObject(a4, a2, a3, a4) != a3)
  {
    objc_msgSend_setSourceObject_(a4, v7, a3, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2D8088;
    v10[3] = &unk_1E7A7E3B0;
    v10[4] = self;
    v10[5] = a4;
    v10[6] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)a3
{
  bindings = self->_bindings;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2D81C4;
  v5[3] = &unk_1E7A7E400;
  v5[4] = self;
  v5[5] = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v5, v3);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)a3
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, a3);
  objc_msgSend_removeAllAnimations(self, v10, v11, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4
{
  objc_msgSend_begin(VFXTransaction, a2, a3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, a4);
  objc_msgSend_removeAnimationForKey_(self, v11, a3, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)copyTo:(id)a3 withContext:(id)a4
{
  v166[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, a3, a4);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  v12 = objc_msgSend_name(self, v9, v10, v11);
  objc_msgSend_setName_(a3, v13, v12, v14);
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v18 = objc_msgSend_copy(self->_valuesForUndefinedKeys, v15, v16, v17);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v164[0] = MEMORY[0x1E69E9820];
  v164[1] = 3221225472;
  v164[2] = sub_1AF2D8704;
  v164[3] = &unk_1E7A7E7E8;
  v164[4] = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v18, v19, v164, v20);

  objc_msgSend_shininess(self, v21, v22, v23);
  objc_msgSend_setShininess_(a3, v24, v25, v26);
  v30 = objc_msgSend_transparencyMode(self, v27, v28, v29);
  objc_msgSend_setTransparencyMode_(a3, v31, v30, v32);
  v36 = objc_msgSend_shadingModel(self, v33, v34, v35);
  objc_msgSend_setShadingModel_(a3, v37, v36, v38);
  isLitPerPixel = objc_msgSend_isLitPerPixel(self, v39, v40, v41);
  objc_msgSend_setLitPerPixel_(a3, v43, isLitPerPixel, v44);
  isDoubleSided = objc_msgSend_isDoubleSided(self, v45, v46, v47);
  objc_msgSend_setDoubleSided_(a3, v49, isDoubleSided, v50);
  v54 = objc_msgSend_cullMode(self, v51, v52, v53);
  objc_msgSend_setCullMode_(a3, v55, v54, v56);
  v60 = objc_msgSend_program(self, v57, v58, v59);
  objc_msgSend_setProgram_(a3, v61, v60, v62);
  v66 = objc_msgSend_avoidsOverLighting(self, v63, v64, v65);
  objc_msgSend_setAvoidsOverLighting_(a3, v67, v66, v68);
  v72 = objc_msgSend_fillMode(self, v69, v70, v71);
  objc_msgSend_setFillMode_(a3, v73, v72, v74);
  objc_msgSend_fresnelExponent(self, v75, v76, v77);
  objc_msgSend_setFresnelExponent_(a3, v78, v79, v80);
  v84 = objc_msgSend_writesToDepthBuffer(self, v81, v82, v83);
  objc_msgSend_setWritesToDepthBuffer_(a3, v85, v84, v86);
  v90 = objc_msgSend_readsFromDepthBuffer(self, v87, v88, v89);
  objc_msgSend_setReadsFromDepthBuffer_(a3, v91, v90, v92);
  v96 = objc_msgSend_colorBufferWriteMask(self, v93, v94, v95);
  objc_msgSend_setColorBufferWriteMask_(a3, v97, v96, v98);
  v102 = objc_msgSend_blendMode(self, v99, v100, v101);
  objc_msgSend_setBlendMode_(a3, v103, v102, v104);
  objc_msgSend_alphaCutoff(self, v105, v106, v107);
  objc_msgSend_setAlphaCutoff_(a3, v108, v109, v110);
  v114 = objc_msgSend_properties(self, v111, v112, v113);
  v118 = objc_msgSend_count(v114, v115, v116, v117);
  if (v118)
  {
    v122 = v118;
    for (i = 0; i != v122; ++i)
    {
      v124 = objc_msgSend_objectAtIndex_(v114, v119, i, v121);
      v128 = objc_msgSend_propertyName(v124, v125, v126, v127);
      v132 = objc_msgSend_propertyWithName_(a3, v129, v128, v130);
      if (!v132 && (byte_1EB658860 & 1) == 0)
      {
        byte_1EB658860 = 1;
        v133 = sub_1AF0D5194();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF5AF8(&v162, v163, v133);
        }
      }

      objc_msgSend_copyPropertiesFrom_copyContext_(v132, v131, v124, a4);
    }
  }

  if (objc_msgSend_behaviorGraph(self, v119, v120, v121))
  {
    v137 = objc_msgSend_behaviorGraph(self, v134, v135, v136);
    v141 = objc_msgSend_copy(v137, v138, v139, v140);
    objc_msgSend_setBehaviorGraph_(a3, v142, v141, v143);
    v147 = objc_msgSend_entityObject(v141, v144, v145, v146);
    v165 = objc_msgSend_identifier(self, v148, v149, v150);
    v166[0] = a3;
    v152 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v151, v166, &v165, 1);
    objc_msgSend_updateVFXObjectReferences_(v147, v153, v152, v154);
  }

  objc_msgSend__copyAnimationsFrom_(a3, v134, self, v136);
  objc_msgSend__copyBindingsFrom_(a3, v155, self, v156);
  objc_msgSend_copyShaderModifiersAndLanguageVersionFrom_(a3, v157, self, v158);
  objc_msgSend_commitImmediate(VFXTransaction, v159, v160, v161);
}

- (id)valueForUndefinedKey:(id)a3
{
  if (self->_isPresentationObject)
  {
    v5 = sub_1AF1DB6D0(self->_material, a3, 0);
    if (v5)
    {
      v6 = v5;
      if (sub_1AF1DE3A8(v5))
      {
        v7 = sub_1AF1DE3A8(v6);
        v8 = sub_1AF1DE538(v6);
        v12 = sub_1AF376790(v7, v8, v11, v9, v10);
        CFRelease(v6);
        return v12;
      }

      CFRelease(v6);
    }
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v16 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v14, a3, v15);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);

  return v16;
}

- (void)_shadableSetValue:(id)a3 forUndefinedKey:(id)a4
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v9 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v7, a4, v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
    objc_msgSend_willChangeValueForKey_(self, v13, @"customMaterialProperties", v14);
    objc_msgSend_willChangeValueForKey_(self, v15, @"customMaterialAttributes", v16);
    os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  }

  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (a3)
  {
    if (!valuesForUndefinedKeys)
    {
      valuesForUndefinedKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valuesForUndefinedKeys = valuesForUndefinedKeys;
    }

    objc_msgSend_setObject_forKey_(valuesForUndefinedKeys, v10, a3, a4);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(valuesForUndefinedKeys, v10, a4, v11);
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  if ((isKindOfClass & 1) == 0)
  {
    objc_msgSend_didChangeValueForKey_(self, v18, @"customMaterialProperties", v20);
    objc_msgSend_didChangeValueForKey_(self, v21, @"customMaterialAttributes", v22);
  }

  v23 = objc_msgSend___CFObject(self, v18, v19, v20);
  objc_opt_class();
  v26 = a4;
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_unlinkCustomPropertyWithParent_(v9, v24, self, v25);
    v26 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_linkCustomPropertyWithParent_andCustomName_(a3, v27, self, a4);
    v31 = objc_msgSend_materialProperty(a3, v28, v29, v30);
    if (v31)
    {
      v33 = CFRetain(v31);
      v26 = 0;
      goto LABEL_23;
    }

    v26 = 0;
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v33 = sub_1AF376D98(self, a4);
  if (v33)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = sub_1AF37673C(a3, v34, v35, v36);
LABEL_18:
    if (!v33)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v43[0] = sub_1AF371798(a3, 0);
  v43[1] = v40;
  v33 = sub_1AF1CD954(9);
  sub_1AF1CDB88(v33, v43);
  if (!v33)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (!v9)
  {
    v37 = sub_1AF1CDAAC(v33);
    v38 = sub_1AF1CD9FC(v37);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1AF2D8B50;
    v42[3] = &unk_1E7A7E5F0;
    v42[4] = a4;
    v42[5] = v23;
    v42[6] = v38;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v39, self, v42);
  }

LABEL_23:
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1AF2D8BA4;
  v41[3] = &unk_1E7A7E810;
  v41[6] = v33;
  v41[7] = v23;
  v41[4] = a4;
  v41[5] = a3;
  objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v32, self, v26, v41);
}

- (id)customMaterialPropertyNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5, v6);
  v10 = objc_msgSend_arrayWithCapacity_(v3, v8, v7, v9);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF2D8CE0;
  v15[3] = &unk_1E7A7E7E8;
  v15[4] = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valuesForUndefinedKeys, v12, v15, v13);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v10;
}

- (id)customMaterialProperties
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5, v6);
  v10 = objc_msgSend_arrayWithCapacity_(v3, v8, v7, v9);
  v14 = objc_msgSend_allKeys(self->_valuesForUndefinedKeys, v11, v12, v13);
  v17 = objc_msgSend_sortedArrayUsingComparator_(v14, v15, &unk_1F24EC018, v16);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = objc_msgSend_valueForKey_(self->_valuesForUndefinedKeys, v20, *(*(&v27 + 1) + 8 * v24), v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(v10, v20, v25, v21);
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v27, v31, 16);
    }

    while (v22);
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v10;
}

- (id)customMaterialAttributeNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5, v6);
  v10 = objc_msgSend_arrayWithCapacity_(v3, v8, v7, v9);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF2D8F78;
  v15[3] = &unk_1E7A7E7E8;
  v15[4] = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valuesForUndefinedKeys, v12, v15, v13);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v10;
}

- (id)customMaterialAttributes
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(self->_valuesForUndefinedKeys, v4, v5, v6);
  v10 = objc_msgSend_arrayWithCapacity_(v3, v8, v7, v9);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF2D9138;
  v15[3] = &unk_1E7A7E7E8;
  v15[4] = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valuesForUndefinedKeys, v12, v15, v13);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v10;
}

- (void)_setupShadableHelperIfNeeded
{
  if (!self->_shadableHelper)
  {
    v3 = [VFXShadableHelper alloc];
    self->_shadableHelper = objc_msgSend_initWithOwner_(v3, v4, self, v5);
  }
}

- (void)setShaderModifiers:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_mutableCopy(a3, a2, a3, v3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = objc_msgSend_allKeys(a3, v7, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v25, v29, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v19, v15);
        if (!objc_msgSend_length(v20, v21, v22, v23))
        {
          objc_msgSend_removeObjectForKey_(v6, v13, v19, v15);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v25, v29, 16);
    }

    while (v16);
  }

  if (v6 && objc_msgSend_count(v6, v13, v14, v15))
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, v13, v24, v15);
  }

  objc_msgSend_setShaderModifiers_(self->_shadableHelper, v13, v6, v15);
}

- (void)copyShaderModifiersAndLanguageVersionFrom:(id)a3
{
  if (objc_msgSend_shaderModifiers(a3, a2, a3, v3))
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, v6, v7, v8);
  }

  v9 = objc_msgSend___shadableHelper(a3, v6, v7, v8);
  objc_msgSend_copyModifiersFrom_(self->_shadableHelper, v10, v9, v11);
  v16 = objc_msgSend_minimumLanguageVersion(v9, v12, v13, v14);
  shadableHelper = self->_shadableHelper;

  objc_msgSend_setMinimumLanguageVersion_(shadableHelper, v15, v16, v17);
}

- (void)setMinimumLanguageVersion:(id)a3
{
  if (a3)
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, a2, a3, v3);
  }

  shadableHelper = self->_shadableHelper;

  objc_msgSend_setMinimumLanguageVersion_(shadableHelper, a2, a3, v3);
}

- (id)shaderModifiersArgumentWithName:(id)a3
{
  v5 = objc_msgSend_shaderModifiersArguments(self->_shadableHelper, a2, a3, v3);

  return objc_msgSend_objectForKeyedSubscript_(v5, v6, a3, v7);
}

- (void)setProgram:(id)a3
{
  if (a3)
  {
    v5 = a3;
    objc_msgSend__setupShadableHelperIfNeeded(self, a2, a3, v3);
    shadableHelper = self->_shadableHelper;
    a3 = v5;
  }

  else
  {
    shadableHelper = self->_shadableHelper;
  }

  objc_msgSend_setProgram_(shadableHelper, a2, a3, v3);
}

- (void)setBehaviorGraph:(id)a3
{
  if (objc_msgSend_behaviorGraph(self, a2, a3, v3) != a3)
  {
    v9 = objc_msgSend_world(self, v6, v7, v8);
    if (v9)
    {
      v12 = v9;
      objc_msgSend_removeWorldReference_(a3, v10, v9, v11);

      self->_behaviorGraph = a3;
      objc_msgSend_addWorldReference_(a3, v13, v12, v14);
    }

    else
    {

      self->_behaviorGraph = a3;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF2D9574;
    v16[3] = &unk_1E7A7E220;
    v16[4] = self;
    v16[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v15, self, v16);
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  result = self->_behaviorGraph;
  if (self->_isPresentationObject)
  {
    return (MEMORY[0x1EEE66B58])(result, sel_presentationBehaviorGraph);
  }

  return result;
}

- (void)_customDecodingOfVFXMaterial:(id)a3
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObject_(v5, v7, v6, v8);
  v10 = sub_1AF373968();
  v12 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(a3, v11, v9, v10, @"valuesForUndefinedKeys");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF2D9698;
  v15[3] = &unk_1E7A7E7E8;
  v15[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v13, v15, v14);
}

- (void)_customEncodingOfVFXMaterial:(id)a3
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (valuesForUndefinedKeys)
  {
    objc_msgSend_encodeObject_forKey_(a3, v5, valuesForUndefinedKeys, @"valuesForUndefinedKeys");
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)encodeWithCoder:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  if (self->_isPresentationObject)
  {
    objc_msgSend__updateModelFromPresentation(self, a2, a3, v3);
  }

  objc_msgSend__customEncodingOfVFXMaterial_(self, a2, a3, v3);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = objc_msgSend_builtinProperties(self, v6, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v50, v54, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v51;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v50 + 1) + 8 * i);
        if ((objc_msgSend__hasDefaultValues(v18, v12, v13, v14) & 1) == 0)
        {
          v19 = objc_msgSend_propertyName(v18, v12, v13, v14);
          objc_msgSend_encodeObject_forKey_(a3, v20, v18, v19);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v50, v54, 16);
    }

    while (v15);
  }

  objc_msgSend_encodeObject_forKey_(a3, v12, self->_name, @"name");
  *&v21 = self->_shininess;
  objc_msgSend_encodeFloat_forKey_(a3, v22, @"shininess", v23, v21);
  if (self->_alphaCutoff != -1.0)
  {
    objc_msgSend_encodeFloat_forKey_(a3, v24, @"alphaCutoff", v25);
  }

  *&v26 = self->_indexOfRefraction;
  objc_msgSend_encodeFloat_forKey_(a3, v24, @"indexOfRefraction", v25, v26);
  *&v27 = self->_fresnelExponent;
  objc_msgSend_encodeFloat_forKey_(a3, v28, @"fresnelExponent", v29, v27);
  objc_msgSend_encodeInteger_forKey_(a3, v30, self->_transparencyMode, @"transparencyMode");
  shadingModel = self->_shadingModel;
  if (shadingModel)
  {
    objc_msgSend_encodeInteger_forKey_(a3, v31, shadingModel, @"shadingModel");
  }

  objc_msgSend_encodeInteger_forKey_(a3, v31, self->_cullMode, @"cullMode");
  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    objc_msgSend_encodeObject_forKey_(a3, v33, shadableHelper, @"shadableHelper");
  }

  objc_msgSend_encodeBool_forKey_(a3, v33, self->_litPerPixel, @"litPerPixel");
  objc_msgSend_encodeBool_forKey_(a3, v35, self->_doubleSided, @"doubleSided");
  objc_msgSend_encodeBool_forKey_(a3, v36, self->_avoidsOverLighting, @"avoidsOverLighting");
  objc_msgSend_encodeBool_forKey_(a3, v37, self->_writesToDepthBuffer, @"writesToDepthBuffer");
  objc_msgSend_encodeBool_forKey_(a3, v38, self->_readsFromDepthBuffer, @"readsFromDepthBuffer");
  objc_msgSend_encodeInteger_forKey_(a3, v39, self->_colorBufferWriteMask, @"colorBufferWriteMask");
  objc_msgSend_encodeInteger_forKey_(a3, v40, qword_1AFE47898[self->_fillMode], @"fillMode");
  objc_msgSend_encodeInteger_forKey_(a3, v41, self->_blendMode, @"blendMode");
  *&v42 = self->_selfIlluminationOcclusion;
  objc_msgSend_encodeFloat_forKey_(a3, v43, @"selfIlluminationOcclusion", v44, v42);
  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(a3, v45, behaviorGraph, @"behaviorGraph");
  }

  sub_1AF372440(a3, self, behaviorGraph, v46);
  sub_1AF3728B4(a3, self, v48, v49);
}

- (VFXMaterial)initWithCoder:(id)a3
{
  v197.receiver = self;
  v197.super_class = VFXMaterial;
  v7 = [(VFXMaterial *)&v197 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = sub_1AF1A0BFC();
    v7->_material = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v12, v13, v14);
    v7->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    objc_msgSend__customDecodingOfVFXMaterial_(v7, v15, a3, v16);
    if (objc_msgSend_containsValueForKey_(a3, v17, @"diffuse", v18))
    {
      v21 = objc_opt_class();
      v7->_diffuse = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v22, v21, @"diffuse");
    }

    if (objc_msgSend_containsValueForKey_(a3, v19, @"specular", v20))
    {
      v25 = objc_opt_class();
      v7->_specular = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v26, v25, @"specular");
    }

    if (objc_msgSend_containsValueForKey_(a3, v23, @"emission", v24))
    {
      v29 = objc_opt_class();
      v7->_emission = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v30, v29, @"emission");
    }

    if (objc_msgSend_containsValueForKey_(a3, v27, @"transparent", v28))
    {
      v33 = objc_opt_class();
      v7->_transparent = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v34, v33, @"transparent");
    }

    if (objc_msgSend_containsValueForKey_(a3, v31, @"reflective", v32))
    {
      v37 = objc_opt_class();
      v7->_reflective = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v38, v37, @"reflective");
    }

    if (objc_msgSend_containsValueForKey_(a3, v35, @"multiply", v36))
    {
      v41 = objc_opt_class();
      v7->_multiply = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v42, v41, @"multiply");
    }

    if (objc_msgSend_containsValueForKey_(a3, v39, @"normal", v40))
    {
      v45 = objc_opt_class();
      v7->_normal = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v46, v45, @"normal");
    }

    if (objc_msgSend_containsValueForKey_(a3, v43, @"ambientOcclusion", v44))
    {
      v49 = objc_opt_class();
      v7->_ambientOcclusion = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v50, v49, @"ambientOcclusion");
    }

    if (objc_msgSend_containsValueForKey_(a3, v47, @"selfIllumination", v48))
    {
      v53 = objc_opt_class();
      v7->_selfIllumination = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v54, v53, @"selfIllumination");
    }

    if (objc_msgSend_containsValueForKey_(a3, v51, @"metalness", v52))
    {
      v57 = objc_opt_class();
      v7->_metalness = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v58, v57, @"metalness");
    }

    if (objc_msgSend_containsValueForKey_(a3, v55, @"roughness", v56))
    {
      v61 = objc_opt_class();
      v7->_roughness = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v62, v61, @"roughness");
    }

    if (objc_msgSend_containsValueForKey_(a3, v59, @"displacement", v60))
    {
      v65 = objc_opt_class();
      v7->_displacement = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v66, v65, @"displacement");
    }

    if (objc_msgSend_containsValueForKey_(a3, v63, @"clearCoat", v64))
    {
      v69 = objc_opt_class();
      v7->_clearCoat = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v70, v69, @"clearCoat");
    }

    if (objc_msgSend_containsValueForKey_(a3, v67, @"clearCoatRoughness", v68))
    {
      v73 = objc_opt_class();
      v7->_clearCoatRoughness = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v74, v73, @"clearCoatRoughness");
    }

    if (objc_msgSend_containsValueForKey_(a3, v71, @"clearCoatNormal", v72))
    {
      v77 = objc_opt_class();
      v7->_clearCoatNormal = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v78, v77, @"clearCoatNormal");
    }

    if (objc_msgSend_containsValueForKey_(a3, v75, @"subsurface", v76))
    {
      v81 = objc_opt_class();
      v7->_subsurface = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v82, v81, @"subsurface");
    }

    if (objc_msgSend_containsValueForKey_(a3, v79, @"subsurfaceRadius", v80))
    {
      v85 = objc_opt_class();
      v7->_subsurfaceRadius = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v86, v85, @"subsurfaceRadius");
    }

    if (objc_msgSend_containsValueForKey_(a3, v83, @"transmission", v84))
    {
      v89 = objc_opt_class();
      v7->_transmission = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v90, v89, @"transmission");
    }

    if (objc_msgSend_containsValueForKey_(a3, v87, @"transmissionColor", v88))
    {
      v93 = objc_opt_class();
      v7->_transmissionColor = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v94, v93, @"transmissionColor");
    }

    if (objc_msgSend_containsValueForKey_(a3, v91, @"alphaCutoff", v92))
    {
      objc_msgSend_decodeFloatForKey_(a3, v95, @"alphaCutoff", v96);
      objc_msgSend_setAlphaCutoff_(v7, v97, v98, v99);
    }

    v100 = objc_opt_class();
    v102 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v101, v100, @"name");
    objc_msgSend_setName_(v7, v103, v102, v104);
    objc_msgSend_decodeFloatForKey_(a3, v105, @"shininess", v106);
    objc_msgSend_setShininess_(v7, v107, v108, v109);
    objc_msgSend_decodeFloatForKey_(a3, v110, @"indexOfRefraction", v111);
    objc_msgSend_setIndexOfRefraction_(v7, v112, v113, v114);
    objc_msgSend_decodeFloatForKey_(a3, v115, @"fresnelExponent", v116);
    objc_msgSend_setFresnelExponent_(v7, v117, v118, v119);
    v122 = objc_msgSend_decodeIntegerForKey_(a3, v120, @"transparencyMode", v121);
    objc_msgSend_setTransparencyMode_(v7, v123, v122, v124);
    v127 = objc_msgSend_decodeIntegerForKey_(a3, v125, @"shadingModel", v126);
    objc_msgSend_setShadingModel_(v7, v128, v127, v129);
    v132 = objc_msgSend_decodeIntegerForKey_(a3, v130, @"cullMode", v131);
    objc_msgSend_setCullMode_(v7, v133, v132, v134);
    v135 = objc_opt_class();
    v137 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v136, v135, @"shadableHelper");
    v7->_shadableHelper = v137;
    if (objc_msgSend_owner(v137, v138, v139, v140) != v7)
    {

      v7->_shadableHelper = 0;
    }

    v143 = objc_msgSend_decodeBoolForKey_(a3, v141, @"litPerPixel", v142);
    objc_msgSend_setLitPerPixel_(v7, v144, v143, v145);
    v148 = objc_msgSend_decodeBoolForKey_(a3, v146, @"doubleSided", v147);
    objc_msgSend_setDoubleSided_(v7, v149, v148, v150);
    v153 = objc_msgSend_decodeBoolForKey_(a3, v151, @"avoidsOverLighting", v152);
    objc_msgSend_setAvoidsOverLighting_(v7, v154, v153, v155);
    v158 = objc_msgSend_decodeBoolForKey_(a3, v156, @"writesToDepthBuffer", v157);
    objc_msgSend_setWritesToDepthBuffer_(v7, v159, v158, v160);
    if (objc_msgSend_containsValueForKey_(a3, v161, @"colorBufferWriteMask", v162))
    {
      v165 = objc_msgSend_decodeIntegerForKey_(a3, v163, @"colorBufferWriteMask", v164);
      objc_msgSend_setColorBufferWriteMask_(v7, v166, v165, v167);
    }

    v168 = objc_msgSend_decodeBoolForKey_(a3, v163, @"readsFromDepthBuffer", v164);
    objc_msgSend_setReadsFromDepthBuffer_(v7, v169, v168, v170);
    v173 = objc_msgSend_decodeIntegerForKey_(a3, v171, @"fillMode", v172);
    v176 = 2;
    if (v173 < 2)
    {
      v176 = v173;
    }

    objc_msgSend_setFillMode_(v7, v174, qword_1AFE478A8[v176 & ~(v176 >> 63)], v175);
    v179 = objc_msgSend_decodeIntegerForKey_(a3, v177, @"blendMode", v178);
    objc_msgSend_setBlendMode_(v7, v180, v179, v181);
    objc_msgSend_decodeFloatForKey_(a3, v182, @"selfIlluminationOcclusion", v183);
    objc_msgSend_setSelfIlluminationOcclusion_(v7, v184, v185, v186);
    if (objc_msgSend_containsValueForKey_(a3, v187, @"behaviorGraph", v188))
    {
      v189 = objc_opt_class();
      v191 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v190, v189, @"behaviorGraph");
      objc_msgSend_setBehaviorGraph_(v7, v192, v191, v193);
    }

    v7->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(a3, v7);
    sub_1AF372B94(a3, v7);
    objc_msgSend_setImmediateMode_(VFXTransaction, v194, v8, v195);
  }

  return v7;
}

- (id)_integrateModelKitComputedMaps:(id)a3 withModel:(id)a4 node:(id)a5 texturePathProvider:(id)a6 vertexAttributeNamed:(id)a7 materialPropertyNamed:(id)a8 filePath:(id)a9
{
  isEqualToString = objc_msgSend_isEqualToString_(a7, a2, *MEMORY[0x1E6974AD8], a4);
  v19 = objc_msgSend_propertyNamed_(a3, v17, a8, v18);
  if (!v19)
  {
    return 0;
  }

  v23 = v19;
  if (!objc_msgSend_textureSamplerValue(v19, v20, v21, v22))
  {
    return 0;
  }

  v27 = objc_msgSend_textureSamplerValue(v23, v24, v25, v26);
  if (!objc_msgSend_texture(v27, v28, v29, v30))
  {
    return 0;
  }

  if (a6)
  {
    v34 = (*(a6 + 2))(a6, a5);
  }

  else
  {
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v31, v32, v33);
    v43 = objc_msgSend_UUIDString(v39, v40, v41, v42);
    v34 = objc_msgSend_stringWithFormat_(v38, v44, @"/tmp/ModelKit_AO_%@.png", v45, v43);
  }

  v46 = v34;
  if (objc_msgSend_isEqualToString_(a9, v35, &stru_1F2575650, v36))
  {
    v50 = objc_msgSend_textureSamplerValue(v23, v47, v48, v49);
    v54 = objc_msgSend_texture(v50, v51, v52, v53);
    v57 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v55, v46, v56);
    objc_msgSend_writeToURL_(v54, v58, v57, v59);
    objc_msgSend_setString_(a9, v60, v46, v61);
  }

  else
  {
    v46 = a9;
  }

  v62 = objc_msgSend_modelSourcesForSemantic_(a4, v47, @"kGeometrySourceSemanticTexcoord", v49);
  v66 = objc_msgSend_count(v62, v63, v64, v65);
  v70 = v66;
  if (v66 < 1)
  {
    v80 = 0;
  }

  else
  {
    v71 = 0;
    v72 = v66 & 0x7FFFFFFF;
    while (1)
    {
      v73 = objc_msgSend_objectAtIndexedSubscript_(v62, v67, v71, v69);
      v77 = objc_msgSend_mkSemantic(v73, v74, v75, v76);
      if (objc_msgSend_isEqualToString_(v77, v78, a7, v79))
      {
        break;
      }

      if (v72 == ++v71)
      {
        LODWORD(v71) = v70;
        break;
      }
    }

    v80 = v71;
  }

  if (isEqualToString)
  {
    v81 = objc_msgSend_ambientOcclusion(self, v67, v68, v69);
    objc_msgSend_setMappingChannel_(v81, v82, v80, v83);
    v87 = objc_msgSend_ambientOcclusion(self, v84, v85, v86);
  }

  else
  {
    v90 = objc_msgSend_selfIllumination(self, v67, v68, v69);
    objc_msgSend_setMappingChannel_(v90, v91, v80, v92);
    v87 = objc_msgSend_selfIllumination(self, v93, v94, v95);
  }

  objc_msgSend_setContents_(v87, v88, v46, v89);
  v98 = MEMORY[0x1E695DFF8];

  return objc_msgSend_fileURLWithPath_(v98, v96, v46, v97);
}

+ (id)materialWithMDLMaterial:(id)a3 options:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  AssociatedObject = objc_getAssociatedObject(a3, @"VFXMDLAssociatedObject");
  objc_msgSend_scatteringFunction(a3, v8, v9, v10);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = AssociatedObject;
  if (!AssociatedObject)
  {
    v15 = objc_msgSend_material(a1, v11, v12, v13);
    v19 = objc_msgSend_name(a3, v16, v17, v18);
    objc_msgSend_setName_(v15, v20, v19, v21);
    objc_setAssociatedObject(a3, @"VFXMDLAssociatedObject", v15, 0x301);
    objc_setAssociatedObject(v15, @"VFXMDLAssociatedObject", a3, 0);
  }

  v22 = objc_msgSend_emission(v15, v11, v12, v13);
  sub_1AF2F72F4(v22, a3, 13, AssociatedObject == 0, a4);
  v26 = objc_msgSend_diffuse(v15, v23, v24, v25);
  sub_1AF2F72F4(v26, a3, 0, AssociatedObject == 0, a4);
  v30 = objc_msgSend_specular(v15, v27, v28, v29);
  sub_1AF2F72F4(v30, a3, 3, AssociatedObject == 0, a4);
  v34 = objc_msgSend_reflective(v15, v31, v32, v33);
  sub_1AF2F72F4(v34, a3, 32769, AssociatedObject == 0, a4);
  v38 = objc_msgSend_transparent(v15, v35, v36, v37);
  sub_1AF2F72F4(v38, a3, 15, AssociatedObject == 0, a4);
  v42 = objc_msgSend_displacement(v15, v39, v40, v41);
  sub_1AF2F72F4(v42, a3, 20, AssociatedObject == 0, a4);
  v46 = objc_msgSend_normal(v15, v43, v44, v45);
  sub_1AF2F72F4(v46, a3, 19, AssociatedObject == 0, a4);
  v50 = objc_msgSend_ambientOcclusion(v15, v47, v48, v49);
  sub_1AF2F72F4(v50, a3, 22, AssociatedObject == 0, a4);
  if (objc_msgSend_materialFace(a3, v51, v52, v53) == 2)
  {
    objc_msgSend_setDoubleSided_(v15, v54, 1, v56);
  }

  if (isKindOfClass)
  {
    v57 = AssociatedObject == 0;
    v58 = objc_msgSend_metalness(v15, v54, v55, v56);
    sub_1AF2F72F4(v58, a3, 2, v57, a4);
    v62 = objc_msgSend_roughness(v15, v59, v60, v61);
    sub_1AF2F72F4(v62, a3, 6, v57, a4);
  }

  else
  {
    v63 = objc_msgSend_propertyWithSemantic_(a3, v54, 6, v56);
    objc_msgSend_floatValue(v63, v64, v65, v66);
    *&v68 = (2.0 / (v67 * v67)) + -2.0;
    objc_msgSend_setShininess_(v15, v69, v70, v71, v68);
  }

  return v15;
}

- (id)debugQuickLookObjectWithWorld:(id)a3
{
  LODWORD(v4) = 1.0;
  v7 = objc_msgSend_sphereWithRadius_(VFXParametricModel, a2, a3, v3, v4);
  v11 = objc_msgSend_copy(self, v8, v9, v10);
  objc_msgSend_setFirstMaterial_(v7, v12, v11, v13);

  return MEMORY[0x1EEE66B58](v7, sel_debugQuickLookObjectWithWorld_, a3, v14);
}

- (id)debugQuickLookObject
{
  v5 = objc_msgSend_world(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](self, sel_debugQuickLookObjectWithWorld_, v5, v6);
}

- (id)debugQuickLookData
{
  v4 = objc_msgSend_debugQuickLookObject(self, a2, v2, v3);

  return UIImagePNGRepresentation(v4);
}

- (NSArray)bridgedComponentNames
{
  v2 = sub_1AFDFD3F8();

  return v2;
}

@end