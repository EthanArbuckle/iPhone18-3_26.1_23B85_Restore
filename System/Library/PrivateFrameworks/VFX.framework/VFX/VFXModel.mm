@interface VFXModel
+ (VFXModel)modelWithGeometry:(id)geometry;
+ (VFXModel)modelWithMDLMesh:(id)mesh;
+ (VFXModel)modelWithMDLMesh:(id)mesh options:(id)options context:(id)context;
+ (VFXModel)modelWithMDLMesh:(id)mesh submesh:(id)submesh options:(id)options;
+ (VFXModel)modelWithModelRef:(__CFXModel *)ref;
+ (VFXModel)modelWithSources:(id)sources elements:(id)elements;
+ (VFXModel)modelWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels;
+ (id)capsuleWithRadius:(float)radius height:(float)height options:(id)options;
+ (id)coneWithHeight:(float)height topRadius:(float)radius bottomRadius:(float)bottomRadius options:(id)options;
+ (id)cubeWithWidth:(float)width height:(float)height length:(float)length cornerRadius:(float)radius options:(id)options;
+ (id)cylinderWithRadius:(float)radius height:(float)height options:(id)options;
+ (id)model;
+ (id)morpherWithMDLMesh:(id)mesh;
+ (id)planeWithWidth:(float)width height:(float)height options:(id)options;
+ (id)presentationModelWithModelRef:(__CFXModel *)ref;
+ (id)pyramidWithWidth:(float)width height:(float)height length:(float)length options:(id)options;
+ (id)sphereWithRadius:(float)radius options:(id)options;
+ (id)torusWithRingRadius:(float)radius pipeRadius:(float)pipeRadius options:(id)options;
+ (id)tubeWithInnerRadius:(float)radius outerRadius:(float)outerRadius height:(float)height options:(id)options;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)getBoundingBoxMin:(VFXModel *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXModel *)self radius:(SEL)radius;
- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination remainingPath:(id *)remainingPath;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSArray)materials;
- (NSString)description;
- (NSString)name;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXGeometry)geometry;
- (VFXMaterial)firstMaterial;
- (VFXMesh)mesh;
- (VFXModel)init;
- (VFXModel)initWithCoder:(id)coder;
- (VFXModel)initWithModelRef:(__CFXModel *)ref;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXMaterial)materialRef;
- (__CFXMaterial)materialRefCreateIfNeeded;
- (__CFXWorld)worldRef;
- (double)boundingBox;
- (id)_firstMaterial;
- (id)_materialWithName:(id)name;
- (id)_renderableCopy;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)world;
- (id)getBoundingBox;
- (id)getBoundingSphere;
- (id)identifier;
- (id)initPresentationModelWithModelRef:(__CFXModel *)ref;
- (id)interleavedCopy;
- (id)materialWithName:(id)name;
- (id)modelDescription;
- (id)modelElementAtIndex:(int64_t)index;
- (id)modelElements;
- (id)modelSourceChannels;
- (id)modelSources;
- (id)modelSourcesForSemantic:(id)semantic;
- (id)presentationModel;
- (id)shaderModifiersArgumentWithName:(id)name;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)modelElementCount;
- (uint64_t)__createCFObject;
- (uint64_t)setBoundingBox:(float32x4_t)box;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyAttributesTo:(id)to;
- (void)_copyBindingsFrom:(id)from;
- (void)_customDecodingOfVFXModel:(id)model;
- (void)_customEncodingOfVFXModel:(id)model;
- (void)_meshForParametricModelHasChanged;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_recreateMeshFromPresentation;
- (void)_removeAllMaterials;
- (void)_resetMaterialsFromPresentation;
- (void)_setModelRef:(__CFXModel *)ref;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_setupObjCModelFrom:(id)from;
- (void)_setupShadableHelperIfNeeded;
- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)insertObject:(id)object inMaterialsAtIndex:(unint64_t)index;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAllMaterials;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeMaterial:(id)material;
- (void)removeObjectFromMaterialsAtIndex:(unint64_t)index;
- (void)removeWorldReference:(id)reference;
- (void)replaceMaterial:(id)material with:(id)with;
- (void)replaceObjectInMaterialsAtIndex:(unint64_t)index withObject:(id)object;
- (void)setBehaviorGraph:(id)graph;
- (void)setBoundingBoxMin:(VFXModel *)self max:(SEL)max;
- (void)setEdgeCreasesElement:(id)element;
- (void)setEdgeCreasesSource:(id)source;
- (void)setFirstMaterial:(id)material;
- (void)setGeometry:(id)geometry;
- (void)setIdentifier:(id)identifier;
- (void)setLevelsOfDetail:(id)detail;
- (void)setMaterials:(id)materials;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setModelRef:(__CFXModel *)ref;
- (void)setName:(id)name;
- (void)setProgram:(id)program;
- (void)setShaderModifiers:(id)modifiers;
- (void)setSubdivisionLevel:(unint64_t)level;
- (void)setTessellator:(id)tessellator;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setValueForKey:(id)key optionKey:(id)optionKey options:(id)options;
- (void)setWantsAdaptiveSubdivision:(BOOL)subdivision;
- (void)setWorld:(id)world;
- (void)set_subdivisionSettings:(id)settings;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXModel

- (uint64_t)__createCFObject
{
  if (qword_1ED7346C8 != -1)
  {
    sub_1AFDDCF90();
  }

  v0 = sub_1AF0D160C(qword_1ED7346C0, 0xC0uLL);
  *(v0 + 80) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 200) = 0;
  sub_1AF17079C(v0);
  return v0;
}

- (VFXModel)init
{
  v11.receiver = self;
  v11.super_class = VFXModel;
  v2 = [(VFXModel *)&v11 init];
  if (v2)
  {
    v2->_materials = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [VFXModel __createCFObject]_0();
    v2->_model = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    v2->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6);
    objc_msgSend_makeUniqueID(v2, v7, v8, v9);
  }

  return v2;
}

- (VFXModel)initWithModelRef:(__CFXModel *)ref
{
  v16.receiver = self;
  v16.super_class = VFXModel;
  v4 = [(VFXModel *)&v16 init];
  if (v4)
  {
    v4->_materials = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = CFRetain(ref);
    v4->_model = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    v4->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
    objc_msgSend__syncObjCAnimations(v4, v9, v10, v11);
    objc_msgSend_makeUniqueID(v4, v12, v13, v14);
  }

  return v4;
}

- (id)initPresentationModelWithModelRef:(__CFXModel *)ref
{
  v7.receiver = self;
  v7.super_class = VFXModel;
  v4 = [(VFXModel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) |= 1u;
    v4->_model = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (VFXModel)modelWithGeometry:(id)geometry
{
  v4 = objc_alloc_init(VFXModel);
  objc_msgSend_setGeometry_(v4, v5, geometry, v6);
  v10 = objc_msgSend_material(VFXMaterial, v7, v8, v9);
  objc_msgSend_setFirstMaterial_(v4, v11, v10, v12);

  return v4;
}

+ (VFXModel)modelWithModelRef:(__CFXModel *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithModelRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

+ (id)model
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  model = self->_model;
  if (model)
  {
    if ((*(self + 16) & 1) == 0)
    {
      sub_1AF16CDFC(self->_model, 0);
      model = self->_model;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, model, v2);
  }

  objc_msgSend_clientWillDie_(self->_tessellator, a2, self, v2);

  objc_msgSend_ownerWillDie(self->_shadableHelper, v5, v6, v7);
  free(*self->_fixedBoundingBoxExtrema);
  v8.receiver = self;
  v8.super_class = VFXModel;
  [(VFXModel *)&v8 dealloc];
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
      v11[2] = sub_1AF2E73DC;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
{
  if ((*(self + 16) & 1) == 0)
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

- (void)_meshForParametricModelHasChanged
{
  geometry = self->_geometry;
  if (geometry)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(geometry, a2, world, v2);
      geometry = self->_geometry;
    }

    self->_geometry = 0;
  }
}

- (void)_recreateMeshFromPresentation
{
  geometry = self->_geometry;
  if (geometry)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(geometry, a2, world, v2);
      geometry = self->_geometry;
    }

    self->_geometry = 0;
  }

  v6 = sub_1AF1C3FAC(&self->_model->var0.var0.var0);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v8 = sub_1AF1B1F84(self->_model);
  if (v8)
  {
    self->_geometry = sub_1AF2C0F58(v8);
  }

  if (v7)
  {
    sub_1AF1CEA9C(v7);
  }

  v11 = self->_geometry;
  if (v11)
  {
    v12 = self->_world;
    if (v12)
    {

      objc_msgSend_addWorldReference_(v11, v9, v12, v10);
    }
  }
}

- (VFXMesh)mesh
{
  if (*(self + 16))
  {
    result = self->_model;
    if (result)
    {
      result = sub_1AF1B2C1C(result);
      if (result)
      {

        return objc_msgSend_meshWithMeshRef_(VFXMesh, v4, result, v5);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->_geometry;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (VFXGeometry)geometry
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_geometry;
  }

  result = sub_1AF1B1F84(self->_model);
  if (result)
  {

    return sub_1AF2C0F58(result);
  }

  return result;
}

- (void)setGeometry:(id)geometry
{
  geometry = self->_geometry;
  if (geometry != geometry)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(geometry, a2, world, v3);
      geometry = self->_geometry;
    }

    self->_geometry = 0;
    if (geometry)
    {
      geometryCopy = geometry;
      self->_geometry = geometryCopy;
      v12 = self->_world;
      if (v12)
      {
        objc_msgSend_addWorldReference_(geometryCopy, v10, v12, v11);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF2E788C;
      v13[3] = &unk_1E7A7E220;
      v13[4] = self;
      v13[5] = geometry;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v13);
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2E787C;
      v14[3] = &unk_1E7A7E1D0;
      v14[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v14);
    }
  }
}

- (void)_updateModelFromPresentation
{
  objc_msgSend__updateEntityModelFromPresentation(self, a2, v2, v3);
  objc_msgSend__recreateMeshFromPresentation(self, v5, v6, v7);
  self->_subdivisionIsAdaptive = sub_1AF170AF4(self->_model);
  self->_subdivisionSettings = sub_1AF170B68(self->_model);

  self->_edgeCreasesSource = 0;
  v8 = sub_1AF170BF8(self->_model);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1AF16CDEC(v8);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = [VFXMeshSource alloc];
      v11 = objc_msgSend_initWithMeshSource_(v12, v13, v9, v14);
    }

    self->_edgeCreasesSource = v11;
  }

  self->_edgeCreasesElement = 0;
  v15 = sub_1AF170C98(self->_model);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1AF16CDEC(v15);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = [VFXMeshElement alloc];
      v18 = objc_msgSend_initWithMeshElement_(v19, v20, v16, v21);
    }

    self->_edgeCreasesElement = v18;
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2E7A10;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)modelDescription
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v9 = objc_msgSend_name(self, v6, v7, v8);
  v13 = objc_msgSend_length(v9, v10, v11, v12);
  v14 = objc_opt_class();
  v18 = NSStringFromClass(v14);
  if (v13)
  {
    v19 = objc_msgSend_name(self, v15, v16, v17);
    v29 = objc_msgSend_mesh(self, v20, v21, v22);
    objc_msgSend_appendFormat_(v5, v23, @"%@: %p '%@' - mesh: %@", v24, v18, self, v19, v29);
  }

  else
  {
    v28 = objc_msgSend_mesh(self, v15, v16, v17);
    objc_msgSend_appendFormat_(v5, v25, @"%@: %p - mesh: %@", v26, v18, self, v28);
  }

  return v5;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_modelDescription(self, a2, v2, v3);
  return objc_msgSend_stringWithFormat_(v4, v6, @"<%@>", v7, v5);
}

- (void)_setModelRef:(__CFXModel *)ref
{
  model = self->_model;
  if (!model)
  {
    if (!ref)
    {
      return;
    }

LABEL_8:
    v6 = CFRetain(ref);
    goto LABEL_9;
  }

  sub_1AF16CDFC(model, 0);
  v6 = self->_model;
  if (v6 == ref)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    CFRelease(v6);
    self->_model = 0;
  }

  if (ref)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  self->_model = v6;
LABEL_10:
  if (v6)
  {

    sub_1AF16CDFC(v6, self);
  }
}

- (void)setModelRef:(__CFXModel *)ref
{
  if (self->_model != ref)
  {
    objc_msgSend__setModelRef_(self, a2, ref, v3);
    objc_msgSend__recreateMeshFromPresentation(self, v5, v6, v7);
    objc_msgSend_willChangeValueForKey_(self, v8, @"materials", v9);
    objc_msgSend__removeAllMaterials(self, v10, v11, v12);
    objc_msgSend_didChangeValueForKey_(self, v13, @"materials", v14);
  }

  MEMORY[0x1EEE66B58](self, sel__resetMaterialsFromPresentation, ref, v3);
}

- (id)presentationModel
{
  selfCopy = self;
  if ((*(self + 16) & 1) == 0)
  {
    v4 = objc_msgSend_presentationModelWithModelRef_(VFXModel, a2, self->_model, v2);

    v4[18] = selfCopy->_behaviorGraph;
    return v4;
  }

  return selfCopy;
}

+ (id)presentationModelWithModelRef:(__CFXModel *)ref
{
  v4 = CFGetTypeID(ref);
  if (v4 == sub_1AF1BE9BC())
  {
    v5 = &off_1E7A77B68;
  }

  else
  {
    v6 = CFGetTypeID(ref);
    if (v6 == sub_1AF1C621C())
    {
      v5 = &off_1E7A77C58;
    }

    else
    {
      v7 = CFGetTypeID(ref);
      v8 = sub_1AF1C611C();
      v5 = &off_1E7A77B30;
      if (v7 == v8)
      {
        v5 = &off_1E7A77C20;
      }
    }
  }

  v9 = objc_alloc(*v5);
  inited = objc_msgSend_initPresentationModelWithModelRef_(v9, v10, ref, v11);

  return inited;
}

- (void)setBehaviorGraph:(id)graph
{
  if (objc_msgSend_behaviorGraph(self, a2, graph, v3) != graph)
  {
    world = self->_world;
    if (world)
    {
      objc_msgSend_removeWorldReference_(self->_behaviorGraph, v6, world, v7);
    }

    graphCopy = graph;
    self->_behaviorGraph = graphCopy;
    v12 = self->_world;
    if (v12)
    {
      objc_msgSend_addWorldReference_(graphCopy, v10, v12, v11);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF2E7DE8;
    v13[3] = &unk_1E7A7E220;
    v13[4] = self;
    v13[5] = graph;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v13);
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  result = self->_behaviorGraph;
  if (*(self + 16))
  {
    return (MEMORY[0x1EEE66B58])(result, sel_presentationBehaviorGraph);
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(VFXModel *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  v6 = *self->_fixedBoundingBoxExtrema;
  if (!v6 || (*(self + 16) & 1) != 0)
  {
    v8 = objc_msgSend_geometry(self, max, v2, v3);
    objc_msgSend_boundingBox(v8, v9, v10, v11);
    if (v5)
    {
      *v5 = v12;
    }

    if (v4)
    {
      *v4 = v13;
    }

    v14 = vceqq_f32(v12, v13);
    v14.i32[3] = v14.i32[2];
    return (vminvq_u32(v14) & 0x80000000) == 0;
  }

  else
  {
    if (v2)
    {
      *v2 = *v6;
    }

    if (v3)
    {
      *v3 = *(*self->_fixedBoundingBoxExtrema + 16);
    }

    return 1;
  }
}

- (void)setBoundingBoxMin:(VFXModel *)self max:(SEL)max
{
  v5 = *self->_fixedBoundingBoxExtrema;
  if (v2 && (v6 = v3) != 0)
  {
    v7 = v2;
    if (v5)
    {
      v9 = VFXVector3EqualToVector3(*v2, *v5);
      v10 = *self->_fixedBoundingBoxExtrema;
      if (v9)
      {
        if (VFXVector3EqualToVector3(*v6, v10[1]))
        {
          return;
        }

        v10 = *self->_fixedBoundingBoxExtrema;
      }
    }

    else
    {
      v10 = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
      *self->_fixedBoundingBoxExtrema = v10;
    }

    *v10 = *v7;
    *(*self->_fixedBoundingBoxExtrema + 16) = *v6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v12, MEMORY[0x1E69E9820], 3221225472, sub_1AF2E8060, &unk_1E7A7EA48, *v7, *v6, self, v16[0], v16[1], v16[2], v16[3], v16[4]);
  }

  else if (v5)
  {
    free(v5);
    *self->_fixedBoundingBoxExtrema = 0;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v16, v12[0], v12[1], v12[2], v12[3], v13, v14, v15, MEMORY[0x1E69E9820], 3221225472, sub_1AF2E8050, &unk_1E7A7E1D0, self);
  }
}

- (double)boundingBox
{
  v4 = 0u;
  v5 = 0u;
  if (objc_msgSend_getBoundingBoxMin_max_(self, a2, &v4, &v5))
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  *&result = vbslq_s8(vdupq_n_s32(v2), v4, VFXNullBoundingBox).u64[0];
  return result;
}

- (uint64_t)setBoundingBox:(float32x4_t)box
{
  v6 = a2;
  boxCopy = box;
  if (!VFXBoundingBoxIsNull(a2, box))
  {
    return objc_msgSend_setBoundingBoxMin_max_(self, v4, &v6, &boxCopy);
  }

  return objc_msgSend_setBoundingBoxMin_max_(self, v4, 0, 0);
}

- (BOOL)getBoundingSphereCenter:(VFXModel *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2, v3);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  v12 = objc_msgSend_modelRef(self, v8, v9, v10);
  v15 = 0uLL;
  if (!v12 || !sub_1AF1C39FC(v12, 1, &v15))
  {
    v13 = 0;
    if (!v11)
    {
      return v13;
    }

LABEL_12:
    sub_1AF1CEA9C(v11);
    return v13;
  }

  if (v5)
  {
    *v5 = v15;
  }

  if (v4)
  {
    *v4 = HIDWORD(v15);
  }

  v13 = 1;
  if (v11)
  {
    goto LABEL_12;
  }

  return v13;
}

- (id)getBoundingSphere
{
  v13 = 0;
  v12 = 0.0;
  v11 = 0;
  if (!objc_msgSend_getBoundingSphereCenter_radius_(self, a2, &v12, &v11))
  {
    return 0;
  }

  v2 = objc_alloc_init(VFXBoundingSphere);
  objc_msgSend_setCenter_(v2, v3, v4, v5, v12);
  LODWORD(v6) = v11;
  objc_msgSend_setRadius_(v2, v7, v8, v9, v6);
  return v2;
}

- (id)getBoundingBox
{
  objc_msgSend_boundingBox(self, a2, v2, v3);
  v14 = *v4.i64;
  v15 = *v5.i64;
  v4.i32[3] = 0;
  v5.i32[3] = 0;
  if (VFXBoundingBoxIsNull(v4, v5))
  {
    return 0;
  }

  v7 = objc_alloc_init(VFXBoundingBox);
  objc_msgSend_setMin_(v7, v8, v9, v10, v14);
  objc_msgSend_setMax_(v7, v11, v12, v13, v15);

  return v7;
}

- (void)_setupObjCModelFrom:(id)from
{
  objc_msgSend_begin(VFXTransaction, a2, from, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v6, 1, v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = objc_msgSend_mesh(from, v8, v9, v10);
    objc_msgSend_setMesh_(self, v12, v11, v13);
  }

  v14 = objc_msgSend_levelsOfDetail(from, v8, v9, v10);
  objc_msgSend_setLevelsOfDetail_(self, v15, v14, v16);
  v20 = objc_msgSend_materials(from, v17, v18, v19);
  objc_msgSend_setMaterials_(self, v21, v20, v22);
  v26 = objc_msgSend_edgeCreasesSource(from, v23, v24, v25);
  objc_msgSend_setEdgeCreasesSource_(self, v27, v26, v28);
  v32 = objc_msgSend_edgeCreasesElement(from, v29, v30, v31);
  objc_msgSend_setEdgeCreasesElement_(self, v33, v32, v34);
  v38 = objc_msgSend_subdivisionLevel(from, v35, v36, v37);
  objc_msgSend_setSubdivisionLevel_(self, v39, v38, v40);
  v44 = objc_msgSend_wantsAdaptiveSubdivision(from, v41, v42, v43);
  objc_msgSend_setWantsAdaptiveSubdivision_(self, v45, v44, v46);
  v50 = objc_msgSend__subdivisionSettings(from, v47, v48, v49);
  objc_msgSend_set_subdivisionSettings_(self, v51, v50, v52);
  objc_msgSend__copyAnimationsFrom_(self, v53, from, v54);
  objc_msgSend__copyBindingsFrom_(self, v55, from, v56);
  os_unfair_lock_lock(from + 40);
  v57 = *(from + 19);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = sub_1AF2E84C0;
  v69[3] = &unk_1E7A7E7E8;
  v69[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v57, v58, v69, v59);
  os_unfair_lock_unlock(from + 40);
  v63 = objc_msgSend_tessellator(from, v60, v61, v62);
  objc_msgSend_setTessellator_(self, v64, v63, v65);
  objc_msgSend_commitImmediate(VFXTransaction, v66, v67, v68);
}

- (void)_copyAttributesTo:(id)to
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v8 = objc_msgSend_copy(self->_valuesForUndefinedKeys, v5, v6, v7);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF2E8580;
  v13[3] = &unk_1E7A7E7E8;
  v13[4] = to;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v9, v13, v10);

  objc_msgSend_copyShaderModifiersAndLanguageVersionFrom_(to, v11, self, v12);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v60[1] = *MEMORY[0x1E69E9840];
  objc_msgSend__setupObjCModelFrom_(to, a2, self, context);
  if (objc_msgSend_behaviorGraph(self, v7, v8, v9))
  {
    v13 = objc_msgSend_behaviorGraph(self, v10, v11, v12);
    v17 = objc_msgSend_copy(v13, v14, v15, v16);
    objc_msgSend_setBehaviorGraph_(to, v18, v17, v19);
    v23 = objc_msgSend_entityObject(v17, v20, v21, v22);
    v59 = objc_msgSend_identifier(self, v24, v25, v26);
    v60[0] = to;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v60, &v59, 1);
    objc_msgSend_updateVFXObjectReferences_(v23, v29, v28, v30);
  }

  objc_msgSend__copyAttributesTo_(self, v10, to, v12);
  v34 = objc_msgSend_materials(self, v31, v32, v33);
  v35 = objc_alloc(MEMORY[0x1E695DF70]);
  v39 = objc_msgSend_count(v34, v36, v37, v38);
  v42 = objc_msgSend_initWithCapacity_(v35, v40, v39, v41);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v43, &v54, v58, 16);
  if (v44)
  {
    v47 = v44;
    v48 = *v55;
    do
    {
      v49 = 0;
      do
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(v34);
        }

        v50 = sub_1AF2BED30(*(*(&v54 + 1) + 8 * v49), context);
        objc_msgSend_addObject_(v42, v51, v50, v52);
        ++v49;
      }

      while (v47 != v49);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v53, &v54, v58, 16);
    }

    while (v47);
  }

  objc_msgSend_setMaterials_(to, v45, v42, v46);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend__setupObjCModelFrom_(v4, v5, self, v6);
  if (objc_msgSend_behaviorGraph(self, v7, v8, v9))
  {
    v13 = objc_msgSend_behaviorGraph(self, v10, v11, v12);
    v17 = objc_msgSend_copy(v13, v14, v15, v16);
    objc_msgSend_setBehaviorGraph_(v4, v18, v17, v19);
    v23 = objc_msgSend_entityObject(v17, v20, v21, v22);
    v32 = objc_msgSend_identifier(self, v24, v25, v26);
    v33[0] = v4;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v33, &v32, 1);
    objc_msgSend_updateVFXObjectReferences_(v23, v29, v28, v30);
  }

  objc_msgSend__copyAttributesTo_(self, v10, v4, v12);
  return v4;
}

- (id)interleavedCopy
{
  v4 = objc_msgSend_copy(self, a2, v2, v3);
  v8 = objc_msgSend_mesh(v4, v5, v6, v7);
  v12 = objc_msgSend_interleavedCopy(v8, v9, v10, v11);
  objc_msgSend_setMesh_(v4, v13, v12, v14);
  return v4;
}

- (id)_renderableCopy
{
  v4 = objc_msgSend_copy(self, a2, v2, v3);
  v8 = objc_msgSend_mesh(v4, v5, v6, v7);
  v12 = objc_msgSend__renderableCopy(v8, v9, v10, v11);
  objc_msgSend_setMesh_(v4, v13, v12, v14);
  return v4;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_materials(self, a2, operation, block);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        (*(block + 2))(block, *(*(&v17 + 1) + 8 * v12++), 1, 0);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v17, v21, 16);
    }

    while (v10);
  }

  geometry = self->_geometry;
  if (geometry)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF2E8AB0;
    v16[3] = &unk_1E7A7C0C8;
    v16[4] = self;
    (*(block + 2))(block, geometry, 1, v16);
  }

  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    (*(block + 2))(block, behaviorGraph, 0, 0);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, behaviorGraph, block, v9);
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
        sub_1AFDF595C();
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
      v9[2] = sub_1AF2E8CA0;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E8D00;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 16) & 1) == 0)
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

- (void)_resetMaterialsFromPresentation
{
  self->_materials = 0;
  objc_msgSend_willChangeValueForKey_(self, v3, @"materials", v4);
  v8 = objc_msgSend_modelRef(self, v5, v6, v7);
  v9 = sub_1AF1B1FE0(v8);
  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  self->_materials = objc_msgSend_initWithCapacity_(v10, v11, v9, v12);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v17 = objc_msgSend_modelRef(self, v13, v14, v15);
      v18 = sub_1AF1B2030(v17, i);
      if (v18)
      {
        v19 = objc_msgSend_materialWithMaterialRef_(VFXMaterial, v13, v18, v15);
        v22 = v19;
        world = self->_world;
        if (world)
        {
          objc_msgSend_addWorldReference_(v19, v20, world, v21);
        }

        objc_msgSend_addObject_(self->_materials, v20, v22, v21);
      }
    }
  }

  objc_msgSend_didChangeValueForKey_(self, v13, @"materials", v15);
}

- (id)_materialWithName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = objc_msgSend_materials(self, a2, name, v3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (!v7)
  {
    return 0;
  }

  v11 = v7;
  v12 = *v20;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v20 != v12)
    {
      objc_enumerationMutation(v5);
    }

    v14 = *(*(&v19 + 1) + 8 * v13);
    v15 = objc_msgSend_name(v14, v8, v9, v10);
    if (objc_msgSend_isEqualToString_(v15, v16, name, v17))
    {
      return v14;
    }

    if (v11 == ++v13)
    {
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v19, v23, 16);
      if (v11)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)materialWithName:(id)name
{
  result = objc_msgSend__materialWithName_(self, a2, name, v3);
  if (*(self + 16))
  {

    return objc_msgSend_presentationMaterial(result, v6, v7, v8);
  }

  return result;
}

- (void)insertObject:(id)object inMaterialsAtIndex:(unint64_t)index
{
  if (!object)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF6700(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  objc_msgSend_insertObject_atIndex_(self->_materials, a2, object, index);
  world = self->_world;
  if (world)
  {
    objc_msgSend_addWorldReference_(object, v14, world, v15);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF2E9100;
  v17[3] = &unk_1E7A7E2E8;
  v17[4] = self;
  v17[5] = object;
  v17[6] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v17);
}

- (void)removeObjectFromMaterialsAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_materials, a2, index, v3) <= index)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF6778(v8, v6, v9, v7, v10, v11, v12, v13);
    }
  }

  if (self->_world)
  {
    v14 = objc_msgSend_objectAtIndex_(self->_materials, v6, index, v7);
    objc_msgSend_removeWorldReference_(v14, v15, self->_world, v16);
  }

  objc_msgSend_removeObjectAtIndex_(self->_materials, v6, index, v7);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF2E9230;
  v18[3] = &unk_1E7A7E248;
  v18[4] = self;
  v18[5] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, self, v18);
}

- (void)replaceObjectInMaterialsAtIndex:(unint64_t)index withObject:(id)object
{
  if (!object)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF6700(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1AF2E932C;
  v22[3] = &unk_1E7A7E2E8;
  v22[4] = self;
  v22[5] = object;
  v22[6] = index;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v22);
  world = self->_world;
  if (world)
  {
    objc_msgSend_addWorldReference_(object, v14, world, v15);
    v19 = objc_msgSend_objectAtIndex_(self->_materials, v17, index, v18);
    objc_msgSend_removeWorldReference_(v19, v20, self->_world, v21);
  }

  objc_msgSend_replaceObjectAtIndex_withObject_(self->_materials, v14, index, object);
}

- (NSArray)materials
{
  v5 = *(self + 16);
  materials = self->_materials;
  if (v5)
  {
    v12 = objc_msgSend_count(materials, a2, v2, v3);
    v13 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = objc_msgSend_initWithCapacity_(v13, v14, v12, v15);
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        v20 = objc_msgSend_objectAtIndex_(self->_materials, v16, i, v18);
        v24 = objc_msgSend_presentationMaterial(v20, v21, v22, v23);
        objc_msgSend_addObject_(v7, v25, v24, v26);
      }
    }

    v11 = objc_msgSend_count(v7, v16, v17, v18);
  }

  else
  {
    v7 = objc_msgSend_copy(materials, a2, v2, v3);
    v11 = objc_msgSend_count(v7, v8, v9, v10);
  }

  if (v11)
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_firstMaterial
{
  v4 = objc_msgSend_materials(self, a2, v2, v3);

  return objc_msgSend_firstObject(v4, v5, v6, v7);
}

- (VFXMaterial)firstMaterial
{
  result = objc_msgSend__firstMaterial(self, a2, v2, v3);
  if (*(self + 16))
  {

    return objc_msgSend_presentationMaterial(result, v6, v7, v8);
  }

  return result;
}

- (void)setFirstMaterial:(id)material
{
  v6 = objc_msgSend_materials(self, a2, material, v3);
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  if (material)
  {
    if (v10)
    {

      MEMORY[0x1EEE66B58](self, sel_replaceObjectInMaterialsAtIndex_withObject_, 0, material);
    }

    else
    {

      objc_msgSend_insertMaterial_atIndex_(self, v11, material, 0);
    }
  }

  else if (v10)
  {

    MEMORY[0x1EEE66B58](self, sel_removeMaterialAtIndex_, 0, v12);
  }
}

- (void)removeMaterial:(id)material
{
  v6 = objc_msgSend_materials(self, a2, material, v3);
  v9 = objc_msgSend_indexOfObject_(v6, v7, material, v8);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {

    MEMORY[0x1EEE66B58](self, sel_removeObjectFromMaterialsAtIndex_, v9, v10);
  }
}

- (void)replaceMaterial:(id)material with:(id)with
{
  v7 = objc_msgSend_materials(self, a2, material, with);
  v10 = objc_msgSend_indexOfObject_(v7, v8, material, v9);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {

    MEMORY[0x1EEE66B58](self, sel_replaceObjectInMaterialsAtIndex_withObject_, v10, with);
  }
}

- (void)_removeAllMaterials
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_world)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    materials = self->_materials;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(materials, a2, &v10, v14, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(materials);
          }

          objc_msgSend_removeWorldReference_(*(*(&v10 + 1) + 8 * i), a2, self->_world, v3);
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(materials, a2, &v10, v14, 16);
      }

      while (v7);
    }
  }

  objc_msgSend_removeAllObjects(self->_materials, a2, v2, v3);
}

- (void)removeAllMaterials
{
  objc_msgSend__removeAllMaterials(self, a2, v2, v3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2E97A8;
  v6[3] = &unk_1E7A7E1D0;
  v6[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v6);
}

- (void)setMaterials:(id)materials
{
  objc_msgSend_removeAllMaterials(self, a2, materials, v3);
  v9 = objc_msgSend_count(materials, v6, v7, v8);
  if (v9)
  {
    v12 = v9;
    for (i = 0; i != v12; ++i)
    {
      v14 = objc_msgSend_objectAtIndex_(materials, v10, i, v11);
      objc_msgSend_insertMaterial_atIndex_(self, v15, v14, i);
    }
  }
}

- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination remainingPath:(id *)remainingPath
{
  v63 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4708, a2, &v58, v62, 16);
  if (v10)
  {
    v13 = v10;
    remainingPathCopy = remainingPath;
    destinationCopy = destination;
    v14 = *v59;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(&unk_1F25D4708);
        }

        v16 = *(*(&v58 + 1) + 8 * v15);
        v17 = objc_msgSend_stringByAppendingString_(v16, v11, @"[", v12);
        if (objc_msgSend_hasPrefix_(key, v18, v17, v19))
        {
          v21 = objc_msgSend_length(v17, v11, v20, v12);
          v25 = objc_msgSend_length(path, v22, v23, v24);
          v27 = objc_msgSend_substringWithRange_(path, v26, v21, v25 - v21);
          v30 = objc_msgSend_rangeOfString_(v27, v28, @"]", v29);
          if (v11 == 1)
          {
            v31 = v30;
            v32 = objc_msgSend_substringWithRange_(v27, 1, 0, v30);
            v36 = objc_msgSend_intValue(v32, v33, v34, v35);
            v39 = objc_msgSend_valueForKey_(self, v37, v16, v38);
            if (objc_msgSend_count(v39, v40, v41, v42) > v36)
            {
              v46 = objc_msgSend_objectAtIndex_(v39, v11, v36, v12);
              if (remainingPathCopy)
              {
                v47 = v21 + v31 + 2;
                if (v47 >= objc_msgSend_length(path, v43, v44, v45))
                {
                  v53 = 0;
                }

                else
                {
                  v51 = objc_msgSend_length(path, v48, v49, v50);
                  v53 = objc_msgSend_substringWithRange_(path, v52, v47, v51 - v47);
                }

                *remainingPathCopy = v53;
              }

              *destinationCopy = v46;
              LOBYTE(v10) = 1;
              return v10;
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4708, v11, &v58, v62, 16);
      v13 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return v10;
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v78 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_length(path, a2, path, animation))
  {
    return 0;
  }

  v74 = 0;
  v75 = 0;
  sub_1AF3716AC(path, &v75, &v74, v7);
  v72 = 0;
  v73 = 0;
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_remainingPath_(self, v8, v75, path, &v72, &v73))
  {
    v11 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v72, v9, v73, animation);
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      v16 = objc_msgSend_count(v11, v13, v14, v15);
      v19 = objc_msgSend_initWithCapacity_(v12, v17, v16 + 1, v18);
      objc_msgSend_addObject_(v19, v20, v75, v21);
      objc_msgSend_addObjectsFromArray_(v19, v22, v11, v23);

      return v19;
    }

    return 0;
  }

  v72 = objc_msgSend_valueForKey_(self, v9, v75, v10);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v27 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v72, v24, v74, animation)) != 0)
  {
    v28 = objc_alloc(MEMORY[0x1E695DF70]);
    v32 = objc_msgSend_count(v27, v29, v30, v31);
    v19 = objc_msgSend_initWithCapacity_(v28, v33, v32 + 1, v34);
    objc_msgSend_addObject_(v19, v35, v75, v36);
    objc_msgSend_addObjectsFromArray_(v19, v37, v27, v38);
  }

  else
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v41 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v39, path, v40);
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v41)
      {
        v43 = sub_1AF290E58(animation);
        if (v43)
        {
          v47 = sub_1AF376904(v43, v44, v45, v46);
          v51 = objc_msgSend_worldRef(self, v48, v49, v50);
          v55 = v51;
          if (v51)
          {
            sub_1AF1CEA20(v51);
            objc_msgSend_begin(VFXTransaction, v56, v57, v58);
            objc_msgSend_setImmediateMode_(VFXTransaction, v59, 1, v60);
            objc_msgSend_setValue_forUndefinedKey_(self, v61, v47, path);
            objc_msgSend_commitImmediate(VFXTransaction, v62, v63, v64);
            sub_1AF1CEA9C(v55);
          }

          else
          {
            objc_msgSend_begin(VFXTransaction, v52, v53, v54);
            objc_msgSend_setImmediateMode_(VFXTransaction, v66, 1, v67);
            objc_msgSend_setValue_forUndefinedKey_(self, v68, v47, path);
            objc_msgSend_commitImmediate(VFXTransaction, v69, v70, v71);
          }
        }

        else
        {
          v65 = sub_1AF0D5194();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            pathCopy = path;
            _os_log_impl(&dword_1AF0CE000, v65, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", buf, 0xCu);
          }
        }
      }
    }

    return sub_1AF291EF0(self, path, v25, v26);
  }

  return v19;
}

- (void)setLevelsOfDetail:(id)detail
{
  levelsOfDetail = self->_levelsOfDetail;
  if (levelsOfDetail != detail)
  {
    v15[8] = v3;
    v15[9] = v4;

    self->_levelsOfDetail = objc_msgSend_copy(detail, v8, v9, v10);
    v13 = objc_msgSend_sortedArrayUsingComparator_(detail, v11, &unk_1F24EC058, v12);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF2E9E68;
    v15[3] = &unk_1E7A7E220;
    v15[4] = v13;
    v15[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v15);
  }
}

- (void)setTessellator:(id)tessellator
{
  tessellator = self->_tessellator;
  if (tessellator != tessellator)
  {
    objc_msgSend_removeClient_(tessellator, a2, self, v3);

    tessellatorCopy = tessellator;
    self->_tessellator = tessellatorCopy;

    MEMORY[0x1EEE66B58](tessellatorCopy, sel_addClient_, self, v8);
  }
}

- (void)set_subdivisionSettings:(id)settings
{
  settingsCopy = settings;
  if (settings != *&self->_subdivisionSettings)
  {
    self->_subdivisionSettings = settings;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1AF2EA068;
    v3[3] = &unk_1E7A7E270;
    v3[4] = self;
    settingsCopy2 = settings;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
  }
}

- (void)setSubdivisionLevel:(unint64_t)level
{
  if (level <= 0x7FFFFFFFFFFFFFFELL)
  {
    v9[8] = v4;
    v9[9] = v5;
    if (self->_subdivisionLevel != level)
    {
      self->_subdivisionLevel = level;
      tessellator = self->_tessellator;
      if (tessellator)
      {
        objc_msgSend_tessellatorValueDidChangeForClient_(tessellator, a2, self, v3);
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2EA174;
      v9[3] = &unk_1E7A7E248;
      v9[4] = self;
      v9[5] = level;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v9);
    }
  }
}

- (void)setWantsAdaptiveSubdivision:(BOOL)subdivision
{
  if (self->_subdivisionIsAdaptive != subdivision)
  {
    v7 = v3;
    v8 = v4;
    self->_subdivisionIsAdaptive = subdivision;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2EA25C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    subdivisionCopy = subdivision;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setEdgeCreasesElement:(id)element
{
  edgeCreasesElement = self->_edgeCreasesElement;
  if (edgeCreasesElement != element)
  {
    v11[7] = v4;
    v11[8] = v5;
    if (!element)
    {
LABEL_5:

      self->_edgeCreasesElement = element;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2EA390;
      v11[3] = &unk_1E7A7E1D0;
      v11[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v11);
      return;
    }

    if (objc_msgSend_primitiveType(element, a2, element, v3) == 2)
    {
      edgeCreasesElement = self->_edgeCreasesElement;
      goto LABEL_5;
    }

    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF67F0();
    }
  }
}

- (void)setEdgeCreasesSource:(id)source
{
  edgeCreasesSource = self->_edgeCreasesSource;
  if (edgeCreasesSource != source)
  {
    v14[7] = v4;
    v14[8] = v5;
    if (!source)
    {
LABEL_5:

      self->_edgeCreasesSource = source;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2EA4E4;
      v14[3] = &unk_1E7A7E1D0;
      v14[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
      return;
    }

    v9 = objc_msgSend_semantic(source, a2, source, v3);
    if (objc_msgSend_isEqualToString_(v9, v10, @"kGeometrySourceSemanticEdgeCrease", v11))
    {
      edgeCreasesSource = self->_edgeCreasesSource;
      goto LABEL_5;
    }

    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6830();
    }
  }
}

- (__CFXMaterial)materialRefCreateIfNeeded
{
  v4 = objc_msgSend_modelRef(self, a2, v2, v3);
  v5 = sub_1AF15B294(v4);
  if (!v5)
  {
    if (sub_1AF1B1FE0(v4) >= 1 && (v6 = sub_1AF1B2030(v4, 0)) != 0)
    {
      v7 = sub_1AF1A0D14(v6);
    }

    else
    {
      v7 = sub_1AF1A0BFC();
    }

    v5 = v7;
    sub_1AF1B3970(v4, v7);
    CFRelease(v5);
  }

  return v5;
}

- (__CFXMaterial)materialRef
{
  v4 = objc_msgSend_modelRef(self, a2, v2, v3);

  return sub_1AF15B294(v4);
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_hasPrefix_(key, a2, @"materials[", key))
  {
    v10 = 0;
    if (objc_msgSend_parseSpecialKey_withPath_intoDestination_remainingPath_(self, v7, key, key, &v10, 0) && v10)
    {
      if (value)
      {
        objc_msgSend_replaceMaterial_with_(self, v8, v10, value);
      }

      else
      {
        objc_msgSend_removeMaterial_(self, v8, v10, v9);
      }
    }
  }

  else
  {

    objc_msgSend__shadableSetValue_forUndefinedKey_(self, v7, value, key);
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    v8 = objc_msgSend_worldRef(self, a2, key, v3);
    v9 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v10 = sub_1AF16E3F4(self->_model, key);
    v7 = v10;
    if (v10)
    {
      v11 = sub_1AF1CDA60(v10);
      v12 = sub_1AF1CDAAC(v7);
      v7 = sub_1AF376790(v11, v12, v15, v13, v14);
    }

    if (v9)
    {
      sub_1AF1CEA9C(v9);
    }

    if (v7)
    {
      return v7;
    }

    v16 = sub_1AF1DB6D0(&self->_model->var0.var0.var0, key, 0);
    if (v16)
    {
      v17 = v16;
      if (sub_1AF1DE3A8(v16))
      {
        v18 = sub_1AF1DE3A8(v17);
        v19 = sub_1AF1DE538(v17);
        v23 = sub_1AF376790(v18, v19, v22, v20, v21);
        CFRelease(v17);
        return v23;
      }

      CFRelease(v17);
    }
  }

  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_1AF3716AC(key, &v29, &v28, v3);
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_remainingPath_(self, v6, v29, key, &v30, 0))
  {
    return v30;
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v27 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v25, key, v26);
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v27;
}

- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v9 = objc_msgSend_objectForKey_(self->_valuesForUndefinedKeys, v7, key, v8);
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
  if (value)
  {
    if (!valuesForUndefinedKeys)
    {
      valuesForUndefinedKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valuesForUndefinedKeys = valuesForUndefinedKeys;
    }

    objc_msgSend_setObject_forKey_(valuesForUndefinedKeys, v10, value, key);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(valuesForUndefinedKeys, v10, key, v11);
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  if ((isKindOfClass & 1) == 0)
  {
    objc_msgSend_didChangeValueForKey_(self, v18, @"customMaterialProperties", v20);
    objc_msgSend_didChangeValueForKey_(self, v21, @"customMaterialAttributes", v22);
  }

  v23 = objc_msgSend___CFObject(self, v18, v19, v20);
  objc_opt_class();
  keyCopy = key;
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_unlinkCustomPropertyWithParent_(v9, v24, self, v25);
    keyCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_linkCustomPropertyWithParent_andCustomName_(value, v27, self, key);
    v31 = objc_msgSend_materialProperty(value, v28, v29, v30);
    if (v31)
    {
      v33 = CFRetain(v31);
      keyCopy = 0;
      goto LABEL_23;
    }

    keyCopy = 0;
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v33 = sub_1AF376D98(self, key);
  if (v33)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = sub_1AF37673C(value, v34, v35, v36);
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

  v43[0] = sub_1AF371798(value, 0);
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
    v42[2] = sub_1AF2EAB14;
    v42[3] = &unk_1E7A7E5F0;
    v42[4] = key;
    v42[5] = v23;
    v42[6] = v38;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v39, self, v42);
  }

LABEL_23:
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1AF2EAB68;
  v41[3] = &unk_1E7A7E810;
  v41[6] = v33;
  v41[7] = v23;
  v41[4] = key;
  v41[5] = value;
  objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v32, self, keyCopy, v41);
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
  v15[2] = sub_1AF2EACA4;
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
  v17 = objc_msgSend_sortedArrayUsingComparator_(v14, v15, &unk_1F24EC078, v16);
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
  v15[2] = sub_1AF2EAF3C;
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
  v15[2] = sub_1AF2EB040;
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

- (void)setShaderModifiers:(id)modifiers
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_mutableCopy(modifiers, a2, modifiers, v3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = objc_msgSend_allKeys(modifiers, v7, v8, v9, 0);
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

- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from
{
  if (objc_msgSend_shaderModifiers(from, a2, from, v3))
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, v6, v7, v8);
  }

  v9 = objc_msgSend___shadableHelper(from, v6, v7, v8);
  objc_msgSend_copyModifiersFrom_(self->_shadableHelper, v10, v9, v11);
  v16 = objc_msgSend_minimumLanguageVersion(v9, v12, v13, v14);
  shadableHelper = self->_shadableHelper;

  objc_msgSend_setMinimumLanguageVersion_(shadableHelper, v15, v16, v17);
}

- (void)setMinimumLanguageVersion:(id)version
{
  if (version)
  {
    objc_msgSend__setupShadableHelperIfNeeded(self, a2, version, v3);
  }

  shadableHelper = self->_shadableHelper;

  objc_msgSend_setMinimumLanguageVersion_(shadableHelper, a2, version, v3);
}

- (id)shaderModifiersArgumentWithName:(id)name
{
  v5 = objc_msgSend_shaderModifiersArguments(self->_shadableHelper, a2, name, v3);

  return objc_msgSend_objectForKeyedSubscript_(v5, v6, name, v7);
}

- (void)setProgram:(id)program
{
  if (program)
  {
    programCopy = program;
    objc_msgSend__setupShadableHelperIfNeeded(self, a2, program, v3);
    shadableHelper = self->_shadableHelper;
    program = programCopy;
  }

  else
  {
    shadableHelper = self->_shadableHelper;
  }

  objc_msgSend_setProgram_(shadableHelper, a2, program, v3);
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
        sub_1AFDF4558(v22, v23, v24, v25, v26, v27, v28, v29);
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

    if ((*(self + 16) & 1) == 0)
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
    v18[2] = sub_1AF2EB5D0;
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF2EB954, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2EB944, &unk_1E7A7E2E8, self, v21, *&v20);
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
    v22[2] = sub_1AF2EBA44;
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
        sub_1AFDF46B0(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = sub_1AF16D614(v11);
    if (v20)
    {
      v21 = v20;
      os_unfair_lock_lock(&self->_animationsLock);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1AF2EBBE0;
      v24[3] = &unk_1E7A7E338;
      v24[4] = self;
      sub_1AF375240(v21, v24, v22, v23);
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
    v25[2] = sub_1AF2EC000;
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
  v10[2] = sub_1AF2EC144;
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
  v4[2] = sub_1AF2EC210;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2EC2BC;
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
    v10[2] = sub_1AF2EC3F4;
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
  v5[2] = sub_1AF2EC530;
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

- (void)_customEncodingOfVFXModel:(id)model
{
  v6 = *self->_fixedBoundingBoxExtrema;
  if (v6)
  {
    v7 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], a2, model, v3, *v6);
    objc_msgSend_encodeObject_forKey_(model, v8, v7, @"fixedBoundingBoxExtrema[0]");
    v12 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v9, v10, v11, *(*self->_fixedBoundingBoxExtrema + 16));
    objc_msgSend_encodeObject_forKey_(model, v13, v12, @"fixedBoundingBoxExtrema[1]");
  }

  sub_1AF2C1024(model, self->_geometry);
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (valuesForUndefinedKeys)
  {
    objc_msgSend_encodeObject_forKey_(model, v14, valuesForUndefinedKeys, @"valuesForUndefinedKeys");
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)_customDecodingOfVFXModel:(id)model
{
  v40 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_containsValueForKey_(model, a2, @"fixedBoundingBoxExtrema[0]", v3))
  {
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(model, v10, v9, @"fixedBoundingBoxExtrema[0]");
    objc_msgSend_VFXFloat3Value(v11, v12, v13, v14);
    v38 = v15;
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(model, v17, v16, @"fixedBoundingBoxExtrema[1]");
    objc_msgSend_VFXFloat3Value(v18, v19, v20, v21);
    v39 = v22;
    objc_msgSend_setBoundingBoxMin_max_(self, v23, &v38, &v39);
  }

  v24 = sub_1AF2C10E0(model, v6, v7, v8);
  objc_msgSend_setGeometry_(self, v25, v24, v26);
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v31 = objc_msgSend_setWithObject_(v27, v29, v28, v30);
  v32 = sub_1AF373968();
  v34 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(model, v33, v31, v32, @"valuesForUndefinedKeys");
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1AF2EC948;
  v37[3] = &unk_1E7A7E7E8;
  v37[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v34, v35, v37, v36);
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 16))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder, v3);
  }

  objc_msgSend__customEncodingOfVFXModel_(self, a2, coder, v3);
  materials = self->_materials;
  if (materials)
  {
    objc_msgSend_encodeObject_forKey_(coder, v6, materials, @"materials");
  }

  levelsOfDetail = self->_levelsOfDetail;
  if (levelsOfDetail)
  {
    objc_msgSend_encodeObject_forKey_(coder, v6, levelsOfDetail, @"levelsOfDetail");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_subdivisionLevel, @"subdivisionLevel");
  objc_msgSend_encodeBool_forKey_(coder, v9, self->_subdivisionIsAdaptive, @"wantsAdaptiveSubdivision");
  edgeCreasesSource = self->_edgeCreasesSource;
  if (edgeCreasesSource)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, edgeCreasesSource, @"edgeCreasesSource");
  }

  edgeCreasesElement = self->_edgeCreasesElement;
  if (edgeCreasesElement)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, edgeCreasesElement, @"edgeCreasesElement");
  }

  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, shadableHelper, @"shadableHelper");
  }

  objc_msgSend_encodeBytes_length_forKey_(coder, v10, &self->_subdivisionSettings, 4, @"subdivisionSettings");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, name, @"name");
  }

  sub_1AF372440(coder, self, name, v15);
  sub_1AF3728B4(coder, self, v17, v18);
  tessellator = self->_tessellator;

  objc_msgSend_encodeObject_forKey_(coder, v19, tessellator, @"tessellator");
}

- (VFXModel)initWithCoder:(id)coder
{
  v72.receiver = self;
  v72.super_class = VFXModel;
  v7 = [(VFXModel *)&v72 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    *(v7 + 6) = objc_alloc_init(MEMORY[0x1E695DF70]);
    CFObject = objc_msgSend___createCFObject(v7, v11, v12, v13);
    *(v7 + 1) = CFObject;
    if (CFObject)
    {
      sub_1AF16CDFC(CFObject, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v15, v16, v17);
    *(v7 + 40) = 0;
    objc_msgSend__customDecodingOfVFXModel_(v7, v18, coder, v19);
    v20 = objc_opt_class();
    v22 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_containingNestedContainersForKey_(coder, v21, v20, @"materials");
    objc_msgSend_setMaterials_(v7, v23, v22, v24);
    v25 = objc_opt_class();
    v27 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v26, v25, @"levelsOfDetail");
    objc_msgSend_setLevelsOfDetail_(v7, v28, v27, v29);
    v32 = objc_msgSend_decodeIntegerForKey_(coder, v30, @"subdivisionLevel", v31);
    objc_msgSend_setSubdivisionLevel_(v7, v33, v32, v34);
    v37 = objc_msgSend_decodeBoolForKey_(coder, v35, @"wantsAdaptiveSubdivision", v36);
    objc_msgSend_setWantsAdaptiveSubdivision_(v7, v38, v37, v39);
    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v41, v40, @"edgeCreasesSource");
    objc_msgSend_setEdgeCreasesSource_(v7, v43, v42, v44);
    v45 = objc_opt_class();
    v47 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v46, v45, @"edgeCreasesElement");
    objc_msgSend_setEdgeCreasesElement_(v7, v48, v47, v49);
    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v51, v50, @"shadableHelper");
    *(v7 + 15) = v52;
    if (objc_msgSend_owner(v52, v53, v54, v55) != v7)
    {

      *(v7 + 15) = 0;
    }

    v71 = 0;
    v57 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v56, @"subdivisionSettings", &v71);
    if (v71 == 4)
    {
      *(v7 + 97) = *v57;
    }

    v58 = objc_opt_class();
    v60 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v59, v58, @"name");
    objc_msgSend_setName_(v7, v61, v60, v62);
    *(v7 + 14) = 0;
    sub_1AF37249C(coder, v7);
    sub_1AF372B94(coder, v7);
    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v64, v63, @"tessellator");
    objc_msgSend_setTessellator_(v7, v66, v65, v67);
    objc_msgSend_setImmediateMode_(VFXTransaction, v68, v8, v69);
  }

  return v7;
}

+ (VFXModel)modelWithSources:(id)sources elements:(id)elements
{
  v5 = objc_msgSend_meshWithSources_elements_(VFXMesh, a2, sources, elements);

  return objc_msgSend_modelWithMesh_(VFXModel, v4, v5, v6);
}

+ (VFXModel)modelWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels
{
  v6 = objc_msgSend_meshWithSources_elements_sourceChannels_(VFXMesh, a2, sources, elements, channels);

  return objc_msgSend_modelWithMesh_(VFXModel, v5, v6, v7);
}

- (id)modelSources
{
  v4 = objc_msgSend_mesh(self, a2, v2, v3);

  return objc_msgSend_meshSources(v4, v5, v6, v7);
}

- (id)modelSourcesForSemantic:(id)semantic
{
  v5 = objc_msgSend_mesh(self, a2, semantic, v3);

  return objc_msgSend_meshSourcesForSemantic_(v5, v6, semantic, v7);
}

- (id)modelElements
{
  v4 = objc_msgSend_mesh(self, a2, v2, v3);

  return objc_msgSend_meshElements(v4, v5, v6, v7);
}

- (int64_t)modelElementCount
{
  v4 = objc_msgSend_mesh(self, a2, v2, v3);

  return objc_msgSend_meshElementCount(v4, v5, v6, v7);
}

- (id)modelElementAtIndex:(int64_t)index
{
  v5 = objc_msgSend_mesh(self, a2, index, v3);

  return objc_msgSend_meshElementAtIndex_(v5, v6, index, v7);
}

- (id)modelSourceChannels
{
  v4 = objc_msgSend_mesh(self, a2, v2, v3);

  return objc_msgSend_meshSourceChannels(v4, v5, v6, v7);
}

+ (VFXModel)modelWithMDLMesh:(id)mesh submesh:(id)submesh options:(id)options
{
  v5 = 0;
  if (mesh && submesh)
  {
    if (objc_msgSend_indexCount(submesh, a2, mesh, submesh))
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = objc_msgSend_modelElementWithMDLSubmesh_(VFXMeshElement, v13, submesh, v14);
      if (v15)
      {
        objc_msgSend_addObject_(v9, v16, v15, v18);
      }

      v19 = objc_msgSend_material(submesh, v16, v17, v18);
      if (v19)
      {
        v22 = objc_msgSend_materialWithMDLMaterial_options_(VFXMaterial, v20, v19, options);
        if (v22)
        {
          objc_msgSend_addObject_(v10, v23, v22, v21);
        }
      }

      v62[0] = 0;
      v62[1] = 0;
      v60[1] = 0;
      v61 = v62;
      v59 = v60;
      v60[0] = 0;
      sub_1AF2F4F6C(submesh, &v61, &v59, v21);
      sub_1AF2F5118(v11, v12, mesh, options);
      v57 = 0;
      v58 = 0;
      sub_1AF2F533C(v11, &v59, mesh, v24);
      sub_1AF2F54E4(&v61, &v58, &v57, v25);
      v27 = objc_msgSend_meshWithSources_elements_(VFXMesh, v26, v11, v9);
      v31 = objc_msgSend_name(mesh, v28, v29, v30);
      objc_msgSend_setName_(v27, v32, v31, v33);
      v5 = objc_msgSend_modelWithMesh_(VFXModel, v34, v27, v35);
      v39 = objc_msgSend_name(mesh, v36, v37, v38);
      objc_msgSend_setName_(v5, v40, v39, v41);
      v45 = objc_msgSend_name(v5, v42, v43, v44);
      objc_msgSend_setName_(v27, v46, v45, v47);
      objc_msgSend_setSubdivisionLevel_(v5, v48, 0, v49);
      objc_msgSend_setEdgeCreasesElement_(v5, v50, v57, v51);
      objc_msgSend_setEdgeCreasesSource_(v5, v52, v58, v53);
      objc_msgSend_setMaterials_(v5, v54, v10, v55);

      sub_1AF112128(&v59, v60[0]);
      sub_1AF112128(&v61, v62[0]);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

+ (VFXModel)modelWithMDLMesh:(id)mesh
{
  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, mesh, v3);

  return objc_msgSend_modelWithMDLMesh_options_context_(self, v6, mesh, 0, v7);
}

+ (VFXModel)modelWithMDLMesh:(id)mesh options:(id)options context:(id)context
{
  v171 = *MEMORY[0x1E69E9840];
  if (!mesh)
  {
    return 0;
  }

  v152 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v150 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v168[0] = 0;
  v168[1] = 0;
  v166 = 0;
  v167 = v168;
  v164 = &v165;
  v165 = 0;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  meshCopy = mesh;
  v10 = objc_msgSend_submeshes(mesh, v7, v8, v9);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v160, v170, 16);
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = *v161;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v161 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v160 + 1) + 8 * i);
      if (objc_msgSend_indexCount(v18, v12, v13, v14, v148))
      {
        v20 = objc_msgSend_modelElementWithMDLSubmesh_(VFXMeshElement, v12, v18, v14);
        if (v20)
        {
          objc_msgSend_addObject_(v152, v19, v20, v21);
        }

        v22 = objc_msgSend_material(v18, v19, v20, v21);
        v26 = v22;
        if (v22)
        {
          v28 = objc_msgSend_name(v22, v23, v24, v25);
          if (v28)
          {
            v29 = objc_msgSend_valueForKey_(context, v23, v28, v27);
            if (v29)
            {
LABEL_15:
              objc_msgSend_setValue_forKey_(context, v23, v29, v28);
              goto LABEL_16;
            }
          }

          v29 = objc_msgSend_materialWithMDLMaterial_options_(VFXMaterial, v23, v26, options);
          if (v29)
          {
            if (v28)
            {
              goto LABEL_15;
            }

LABEL_16:
            objc_msgSend_addObject_(v150, v23, v29, v25);
          }
        }

        objc_msgSend_topology(v18, v23, v24, v25);
        sub_1AF2F4F6C(v18, &v167, &v164, v30);
        continue;
      }
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v160, v170, 16);
  }

  while (v15);
LABEL_20:
  v31 = v148;
  v32 = meshCopy;
  sub_1AF2F5118(v148, obj, meshCopy, options);
  v158 = 0;
  v159 = 0;
  sub_1AF2F533C(v148, &v164, meshCopy, v33);
  sub_1AF2F54E4(&v167, &v159, &v158, v34);
  v38 = objc_msgSend_submeshes(meshCopy, v35, v36, v37);
  if (objc_msgSend_count(v38, v39, v40, v41))
  {
    v45 = 0;
    v46 = *MEMORY[0x1E6974B28];
    while (1)
    {
      v47 = objc_msgSend_vertexDescriptor(meshCopy, v42, v43, v44, v148);
      v51 = objc_msgSend_attributes(v47, v48, v49, v50);
      v58 = v45;
      if (objc_msgSend_count(v51, v52, v53, v54) <= v45)
      {
        break;
      }

      v59 = objc_msgSend_vertexDescriptor(meshCopy, v55, v56, v57);
      v63 = objc_msgSend_attributes(v59, v60, v61, v62);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, v45, v65);
      v70 = objc_msgSend_name(v66, v67, v68, v69);
      ++v45;
      if (objc_msgSend_containsString_(v70, v71, v46, v72))
      {
        goto LABEL_28;
      }
    }

    v58 = 0;
LABEL_28:
    v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v154, v169, 16);
    if (v86)
    {
      v87 = *v155;
      do
      {
        for (j = 0; j != v86; ++j)
        {
          if (*v155 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v89 = *(*(&v154 + 1) + 8 * j);
          v90 = objc_msgSend_unsignedLongValue(v89, v83, v84, v85);
          v94 = objc_msgSend_submeshes(meshCopy, v91, v92, v93);
          v97 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, 0, v96);
          v101 = objc_msgSend_faceIndexing(v97, v98, v99, v100);
          if (v90 >= objc_msgSend_count(v101, v102, v103, v104))
          {
            v122 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v105, v58, v107);
          }

          else
          {
            v108 = objc_msgSend_submeshes(meshCopy, v105, v106, v107);
            v111 = objc_msgSend_objectAtIndexedSubscript_(v108, v109, 0, v110);
            v115 = objc_msgSend_faceIndexing(v111, v112, v113, v114);
            v119 = objc_msgSend_integerValue(v89, v116, v117, v118);
            v122 = objc_msgSend_objectAtIndexedSubscript_(v115, v120, v119, v121);
          }

          objc_msgSend_addObject_(v81, v123, v122, v124);
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v83, &v154, v169, 16);
      }

      while (v86);
    }

    v31 = v148;
    if (v166)
    {
      v125 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v83, v58, v85);
      objc_msgSend_addObject_(v81, v126, v125, v127);
    }

    v74 = objc_msgSend_meshWithSources_elements_sourceChannels_(VFXMesh, v83, v148, v152, v81);

    v32 = meshCopy;
    v77 = objc_msgSend_modelWithMesh_(VFXModel, v128, v74, v129, v148);
  }

  else
  {
    v74 = objc_msgSend_meshWithSources_elements_(VFXMesh, v42, v148, v152);
    v77 = objc_msgSend_modelWithMesh_(VFXModel, v75, v74, v76, v148);
  }

  v73 = v77;
  v130 = objc_msgSend_name(v32, v78, v79, v80);
  objc_msgSend_setName_(v73, v131, v130, v132);
  v136 = objc_msgSend_name(v73, v133, v134, v135);
  objc_msgSend_setName_(v74, v137, v136, v138);
  objc_msgSend_setSubdivisionLevel_(v73, v139, 0, v140);
  objc_msgSend_setEdgeCreasesElement_(v73, v141, v158, v142);
  objc_msgSend_setEdgeCreasesSource_(v73, v143, v159, v144);
  objc_msgSend_setMaterials_(v73, v145, v150, v146);

  sub_1AF112128(&v164, v165);
  sub_1AF112128(&v167, v168[0]);
  return v73;
}

+ (id)morpherWithMDLMesh:(id)mesh
{
  v140 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_vertexDescriptor(mesh, a2, mesh, v3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v11 = objc_msgSend_attributes(v5, v8, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v131, v139, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v132;
    v19 = *MEMORY[0x1E6974B28];
    v20 = *MEMORY[0x1E6974B18];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v132 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v22 = *(*(&v131 + 1) + 8 * i);
        if (objc_msgSend_format(v22, v14, v15, v16))
        {
          v23 = objc_msgSend_name(v22, v14, v15, v16);
          if (objc_msgSend_containsString_(v23, v24, v19, v25))
          {
            objc_msgSend_addObject_(v6, v26, v22, v28);
          }

          v29 = objc_msgSend_name(v22, v26, v27, v28);
          if (objc_msgSend_containsString_(v29, v30, v20, v31))
          {
            objc_msgSend_addObject_(v7, v14, v22, v16);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v131, v139, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v6, v14, v15, v16))
  {
    v32 = objc_alloc(MEMORY[0x1E695DF70]);
    v36 = objc_msgSend_count(v6, v33, v34, v35);
    v39 = objc_msgSend_initWithCapacity_(v32, v37, v36, v38);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v40, &v127, v138, 16);
    if (v41)
    {
      v43 = v41;
      v44 = *v128;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v128 != v44)
          {
            objc_enumerationMutation(v6);
          }

          v46 = objc_msgSend_meshSourceWithMDLVertexAttribute_mesh_(VFXMeshSource, v42, *(*(&v127 + 1) + 8 * j), mesh);
          objc_msgSend_addObject_(v39, v47, v46, v48);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v42, &v127, v138, 16);
      }

      while (v43);
    }

    v49 = objc_alloc(MEMORY[0x1E695DF70]);
    v53 = objc_msgSend_count(v7, v50, v51, v52);
    v56 = objc_msgSend_initWithCapacity_(v49, v54, v53, v55);
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v57, &v123, v137, 16);
    if (v58)
    {
      v61 = v58;
      v62 = *v124;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v124 != v62)
          {
            objc_enumerationMutation(v7);
          }

          v64 = objc_msgSend_meshSourceWithMDLVertexAttribute_mesh_(VFXMeshSource, v59, *(*(&v123 + 1) + 8 * k), mesh);
          objc_msgSend_addObject_(v56, v65, v64, v66);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v59, &v123, v137, 16);
      }

      while (v61);
    }

    v67 = objc_msgSend_modelWithMDLMesh_(self, v59, mesh, v60);
    v68 = objc_alloc(MEMORY[0x1E695DF70]);
    v72 = objc_msgSend_count(v39, v69, v70, v71);
    v75 = objc_msgSend_initWithCapacity_(v68, v73, v72, v74);
    if (objc_msgSend_count(v6, v76, v77, v78) == 1)
    {
      v82 = objc_msgSend_mesh(v67, v79, v80, v81);
      objc_msgSend_addObject_(v75, v83, v82, v84);
    }

    else
    {
      v86 = objc_msgSend_count(v39, v79, v80, v81);
      v90 = objc_msgSend_count(v56, v87, v88, v89);
      v94 = objc_msgSend_count(v39, v91, v92, v93);
      if (v86 == v90)
      {
        if (v94)
        {
          v97 = 0;
          do
          {
            v136[0] = objc_msgSend_objectAtIndexedSubscript_(v39, v95, v97, v96);
            v136[1] = objc_msgSend_objectAtIndexedSubscript_(v56, v98, v97, v99);
            v101 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v100, v136, 2);
            v103 = objc_msgSend_meshWithSources_elements_(VFXMesh, v102, v101, 0);
            objc_msgSend_addObject_(v75, v104, v103, v105);
            ++v97;
          }

          while (v97 < objc_msgSend_count(v39, v106, v107, v108));
        }
      }

      else if (v94)
      {
        v109 = 0;
        do
        {
          v135 = objc_msgSend_objectAtIndexedSubscript_(v39, v95, v109, v96);
          v111 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v110, &v135, 1);
          v113 = objc_msgSend_meshWithSources_elements_(VFXMesh, v112, v111, 0);
          objc_msgSend_addObject_(v75, v114, v113, v115);
          ++v109;
        }

        while (v109 < objc_msgSend_count(v39, v116, v117, v118));
      }
    }

    v119 = objc_alloc_init(VFXMorpher);
    objc_msgSend_setTargets_(v119, v120, v75, v121);

    return v119;
  }

  else
  {

    return 0;
  }
}

- (void)setValueForKey:(id)key optionKey:(id)optionKey options:(id)options
{
  v7 = objc_msgSend_objectForKey_(options, a2, optionKey, optionKey);
  if (v7)
  {

    objc_msgSend_setValue_forKey_(self, v8, v7, key);
  }
}

+ (id)planeWithWidth:(float)width height:(float)height options:(id)options
{
  v7 = objc_msgSend_planeWithWidth_height_(VFXParametricModel, a2, options, v5);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v8, @"widthSegmentCount", @"kPrimitiveWidthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v9, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v7;
}

+ (id)cubeWithWidth:(float)width height:(float)height length:(float)length cornerRadius:(float)radius options:(id)options
{
  v9 = objc_msgSend_cubeWithWidth_height_length_chamferRadius_(VFXParametricModel, a2, options, v7);
  objc_msgSend_setValueForKey_optionKey_options_(v9, v10, @"widthSegmentCount", @"kPrimitiveWidthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v9, v11, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v9, v12, @"lengthSegmentCount", @"kPrimitiveLengthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v9, v13, @"chamferSegmentCount", @"kPrimitiveChamferSegments", options);
  return v9;
}

+ (id)pyramidWithWidth:(float)width height:(float)height length:(float)length options:(id)options
{
  v8 = objc_msgSend_pyramidWithWidth_height_length_(VFXParametricModel, a2, options, v6);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v9, @"widthSegmentCount", @"kPrimitiveWidthSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v10, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v11, @"lengthSegmentCount", @"kPrimitiveLengthSegments", options);
  return v8;
}

+ (id)sphereWithRadius:(float)radius options:(id)options
{
  v6 = objc_msgSend_sphereWithRadius_(VFXParametricModel, a2, options, v4);
  objc_msgSend_setValueForKey_optionKey_options_(v6, v7, @"segmentCount", @"kPrimitiveRotationSegments", options);
  v10 = objc_msgSend_objectForKey_(options, v8, @"kPrimitiveSphereType", v9);
  if (v10)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"kPrimitiveTypeGeosphere", v12);
    objc_msgSend_setGeodesic_(v6, v14, isEqualToString, v15);
  }

  return v6;
}

+ (id)cylinderWithRadius:(float)radius height:(float)height options:(id)options
{
  v7 = objc_msgSend_cylinderWithRadius_height_(VFXParametricModel, a2, options, v5);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v8, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v9, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v7;
}

+ (id)coneWithHeight:(float)height topRadius:(float)radius bottomRadius:(float)bottomRadius options:(id)options
{
  *&v9 = radius;
  *&v10 = bottomRadius;
  *&v11 = height;
  v12 = objc_msgSend_coneWithTopRadius_bottomRadius_height_(VFXParametricModel, a2, options, v6, v9, v10, v11);
  objc_msgSend_setValueForKey_optionKey_options_(v12, v13, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v12, v14, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v12;
}

+ (id)tubeWithInnerRadius:(float)radius outerRadius:(float)outerRadius height:(float)height options:(id)options
{
  v8 = objc_msgSend_tubeWithInnerRadius_outerRadius_height_(VFXParametricModel, a2, options, v6);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v9, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v8, v10, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v8;
}

+ (id)capsuleWithRadius:(float)radius height:(float)height options:(id)options
{
  v7 = objc_msgSend_capsuleWithCapRadius_height_(VFXParametricModel, a2, options, v5);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v8, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v9, @"heightSegmentCount", @"kPrimitiveHeightSegments", options);
  return v7;
}

+ (id)torusWithRingRadius:(float)radius pipeRadius:(float)pipeRadius options:(id)options
{
  v7 = objc_msgSend_torusWithRingRadius_pipeRadius_(VFXParametricModel, a2, options, v5);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v8, @"radialSegmentCount", @"kPrimitiveRotationSegments", options);
  objc_msgSend_setValueForKey_optionKey_options_(v7, v9, @"pipeSegmentCount", @"kPrimitivePipeSegments", options);
  return v7;
}

- (id)debugQuickLookObjectWithWorld:(id)world
{
  v5 = objc_msgSend_copy(self, a2, world, v3);
  v8 = objc_msgSend_nodeWithModel_(VFXNode, v6, v5, v7);

  return MEMORY[0x1EEE66B58](v8, sel_debugQuickLookObjectWithWorld_, world, v9);
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