@interface VFXNode
+ (VFXNode)nodeWithMDLAsset:(id)a3;
+ (VFXNode)nodeWithMDLObject:(id)a3;
+ (VFXNode)nodeWithMDLObject:(id)a3 masterObjects:(id)a4 worldNodes:(id)a5 skinnedMeshes:(id)a6 skelNodesMap:(void *)a7 asset:(id)a8 options:(id)a9 context:(id)a10 mpuScale:(float)a11;
+ (VFXNode)nodeWithMDLObject:(id)a3 options:(id)a4 context:(id)a5;
+ (VFXNode)nodeWithModel:(id)a3;
+ (VFXNode)nodeWithNodeRef:(__CFXNode *)a3;
+ (VFXNode)nodeWithSceneKitNode:(id)a3 options:(id)a4;
+ (id)_dumpNodeTree:(id)a3 tab:(id)a4;
+ (id)localFrontValue;
+ (id)localRightValue;
+ (id)localUpValue;
+ (id)node;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)_childNodesPassingTest:(id)a3 recursively:(BOOL)a4 output:(id)a5;
- (BOOL)_enumerateChildNodesUsingBlock:(id)a3;
- (BOOL)_isEffectivelyHidden;
- (BOOL)canAddChildNode:(id)a3;
- (BOOL)castsShadow;
- (BOOL)getBoundingBoxMin:(VFXNode *)self max:(SEL)a2;
- (BOOL)getBoundingSphereCenter:(VFXNode *)self radius:(SEL)a2;
- (BOOL)getFrustum:(id *)a3 withViewport:;
- (BOOL)hasAncestor:(id)a3;
- (BOOL)hasPhysicBody;
- (BOOL)isHidden;
- (BOOL)isHiddenOrHasHiddenAncestor;
- (BOOL)parseSpecialKey:(id)a3 withPath:(id)a4 intoDestination:(id *)a5;
- (BOOL)rawFloat3ForKey:(id)a3 value:;
- (BOOL)rawFloat4ForKey:(id)a3 value:;
- (BOOL)usesDepthPrePass;
- (CGRect)_focusFrameInView:(id)a3;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSArray)childNodes;
- (NSArray)constraints;
- (NSArray)states;
- (NSString)description;
- (NSString)name;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXForceField)forceField;
- (VFXNode)init;
- (VFXNode)initWithCoder:(id)a3;
- (VFXNode)initWithNodeRef:(__CFXNode *)a3;
- (VFXNode)parentNode;
- (VFXNode)presentationNode;
- (VFXState)state;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (__n128)rotation;
- (double)_euler;
- (double)_quaternion;
- (double)boundingBox;
- (double)convertPosition:(void *)a3 fromNode:(uint64_t)a4;
- (double)convertPosition:(void *)a3 toNode:(uint64_t)a4;
- (double)convertTransform:(void *)a3 fromNode:(uint64_t)a4;
- (double)convertVector:(void *)a3 fromNode:(uint64_t)a4;
- (double)convertVector:(void *)a3 toNode:(uint64_t)a4;
- (double)eulerAngles;
- (double)orientation;
- (double)pivot;
- (double)position;
- (double)scale;
- (double)transform;
- (double)worldFront;
- (double)worldOrientation;
- (double)worldRight;
- (double)worldUp;
- (float)opacity;
- (float32x4_t)convertTransform:(void *)a3 toNode:(uint64_t)a4;
- (float32x4_t)setTransform:(uint64_t)a3;
- (float32x4_t)worldTransform;
- (id)__camera;
- (id)__light;
- (id)__model;
- (id)__morpher;
- (id)_audioPlayers;
- (id)_cloneWithOption:(unint64_t)a3 copyContext:(id)a4;
- (id)_copyRecursively:(unint64_t)a3 copyContext:(id)a4;
- (id)_dumpTree;
- (id)_findComponentWithType:(int64_t)a3;
- (id)_subdividedCopyWithSubdivisionLevel:(int64_t)a3;
- (id)_valueForSimdVectorKeyPath:(id)a3;
- (id)_vfxAnimationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)childNodeWithName:(id)a3 recursively:(BOOL)a4;
- (id)childNodesPassingTest:(id)a3 recursively:(BOOL)a4;
- (id)childNodesWithAttribute:(Class)a3 recursively:(BOOL)a4;
- (id)cloneWithOption:(unint64_t)a3;
- (id)convertPositionValue:(id)a3 fromNode:(id)a4;
- (id)convertPositionValue:(id)a3 toNode:(id)a4;
- (id)convertTransformValue:(id)a3 fromNode:(id)a4;
- (id)convertTransformValue:(id)a3 toNode:(id)a4;
- (id)convertVectorValue:(id)a3 fromNode:(id)a4;
- (id)convertVectorValue:(id)a3 toNode:(id)a4;
- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4;
- (id)copyWithOptions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)coreEntityManager;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)a3;
- (id)deepClone;
- (id)deepCloneWithContext:(id)a3;
- (id)deformers;
- (id)eulerAnglesValue;
- (id)flattenedClone;
- (id)flattenedCopy;
- (id)getBoundingBox;
- (id)getBoundingSphere;
- (id)hitTestWithSegmentFrom:(id)a3 toPoint:(id)a4 options:(id)a5;
- (id)hitTestWithSegmentFromPoint:(VFXNode *)self toPoint:(SEL)a2 options:(id)a3;
- (id)identifier;
- (id)initPresentationNodeWithNodeRef:(__CFXNode *)a3;
- (id)objectInAudioPlayersAtIndex:(unint64_t)a3;
- (id)objectInChildNodesAtIndex:(unint64_t)a3;
- (id)objectInChildNodesWithAttribute:(id)a3 firstOnly:(BOOL)a4;
- (id)orientationValue;
- (id)pivotValue;
- (id)positionValue;
- (id)rotationValue;
- (id)scaleValue;
- (id)script_rootNode;
- (id)valueForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (id)worldFrontValue;
- (id)worldOrientationValue;
- (id)worldPositionValue;
- (id)worldRightValue;
- (id)worldTransformValue;
- (id)worldUpValue;
- (int64_t)authoringCameraType;
- (int64_t)coreEntity;
- (int64_t)renderingOrder;
- (uint64_t)_setQuaternion:(uint64_t)a3;
- (uint64_t)localRotateBy:(uint64_t)a3;
- (uint64_t)rotateBy:(uint64_t)a3 aroundTarget:(uint64_t)a4;
- (uint64_t)setBoundingBox:(float32x4_t)a3;
- (uint64_t)setWorldOrientation:(uint64_t)a3;
- (uint64_t)setWorldTransform:(uint64_t)a3;
- (unint64_t)categoryBitMask;
- (unint64_t)countOfAudioPlayers;
- (unint64_t)indexOfChildNode:(id)a3;
- (unsigned)drawCallCount;
- (void)_addSkinnerWithMDLMesh:(id)a3 worldNodes:(id)a4;
- (void)_appendFocusableNodesInRect:(CGRect)a3 ofView:(id)a4 toFocusItems:(id)a5;
- (void)_assignComponent:(id)a3 toContainerWithType:(int64_t)a4;
- (void)_bakeNodes:(id)a3 folderPath:(id)a4 inVertex:(BOOL)a5 bakeAO:(BOOL)a6 quality:(float)a7 attenuation:(float)a8 geomSetter:(id)a9 terminateSetter:(id)a10;
- (void)_childNodesWithAttribute:(Class)a3 output:(id)a4 recursively:(BOOL)a5;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_copyBindingsFrom:(id)a3;
- (void)_copyWithOptions:(unint64_t)a3 to:(id)a4 copyContext:(id)a5;
- (void)_customDecodingOfVFXNode:(id)a3;
- (void)_customEncodingOfVFXNode:(id)a3 usePresentationObject:(BOOL)a4;
- (void)_didDecodeVFXNode:(id)a3;
- (void)_dump:(id)a3;
- (void)_encodeNodePropertiesWithCoder:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_propagatePhysicsBodyCountChange:(int)a3;
- (void)_remapNodeReferences:(id)a3 nullifyIfAbsent:(BOOL)a4;
- (void)_removeComponentWithType:(int64_t)a3;
- (void)_setAttributes:(id)a3;
- (void)_setComponent:(id)a3 withType:(int64_t)a4;
- (void)_setHasFocusableChild;
- (void)_setPausedOrPausedByInheritance:(BOOL)a3;
- (void)_setPosition:(VFXNode *)self;
- (void)_setScale:(VFXNode *)self;
- (void)_setSourceObject:(id)a3 forBinding:(id)a4;
- (void)_syncObjCAnimations;
- (void)_updateAffine;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateFocusableCache;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)_updateTransform;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationAsset:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)addAudioPlayer:(id)a3;
- (void)addChildNode:(id)a3;
- (void)addWorldReference:(id)a3;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)dealloc;
- (void)dump;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAnimationReferencesUsingBlock:(id)a3;
- (void)enumerateChildNodesUsingBlock:(id)a3;
- (void)enumerateDrawCallsUsingBlock:(id)a3 context:(id *)a4;
- (void)enumerateHierarchyUsingBlock:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)insertObject:(id)a3 inAudioPlayersAtIndex:(unint64_t)a4;
- (void)insertObject:(id)a3 inChildNodesAtIndex:(unint64_t)a4;
- (void)localRotateByValue:(id)a3;
- (void)localTranslateBy:(VFXNode *)self;
- (void)localTranslateByValue:(id)a3;
- (void)lookAt:(VFXNode *)self;
- (void)lookAt:(VFXNode *)self up:(SEL)a2 localFront:;
- (void)lookAtLocation:(id)a3;
- (void)lookAtLocation:(id)a3 up:(id)a4 localFront:(id)a5;
- (void)makeUniqueID;
- (void)modelChanged;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)a3;
- (void)removeAllAudioPlayers;
- (void)removeAllBindings;
- (void)removeAllChilds;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4;
- (void)removeAudioPlayer:(id)a3;
- (void)removeFromParentNode;
- (void)removeObjectFromAudioPlayersAtIndex:(unint64_t)a3;
- (void)replaceChildNode:(id)a3 with:(id)a4;
- (void)replaceObjectInAudioPlayerAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectInChildNodesAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)resetPhysicsBodyTransformInHierarchy;
- (void)rotateBy:(id)a3 around:(id)a4;
- (void)setAuthoringCameraType:(int64_t)a3;
- (void)setBehaviorGraph:(id)a3;
- (void)setBoundingBoxMin:(VFXNode *)self max:(SEL)a2;
- (void)setCamera:(id)a3;
- (void)setCastsShadow:(BOOL)a3;
- (void)setCategoryBitMask:(unint64_t)a3;
- (void)setConstraints:(id)a3;
- (void)setDeformers:(id)a3;
- (void)setEditorLocked:(BOOL)a3;
- (void)setEulerAngles:(VFXNode *)self;
- (void)setEulerAnglesValue:(id)a3;
- (void)setFocusBehavior:(int64_t)a3;
- (void)setForceField:(id)a3;
- (void)setGizmo:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setIsAuthoring:(BOOL)a3;
- (void)setIsEyeSightFrame:(BOOL)a3;
- (void)setIsHandTrackingRoot:(BOOL)a3;
- (void)setIsJoint:(BOOL)a3;
- (void)setLight:(id)a3;
- (void)setModel:(id)a3;
- (void)setMorpher:(id)a3;
- (void)setName:(id)a3;
- (void)setOpacity:(float)a3;
- (void)setOrientation:(uint64_t)a3;
- (void)setOrientationValue:(id)a3;
- (void)setParticleCollider:(id)a3;
- (void)setParticleEmitter:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPhysicsBody:(id)a3;
- (void)setPivot:(float32x4_t)a3;
- (void)setPivotValue:(id)a3;
- (void)setPosition:(VFXNode *)self;
- (void)setPositionValue:(id)a3;
- (void)setRenderingOrder:(int64_t)a3;
- (void)setRotation:(VFXNode *)self;
- (void)setRotationValue:(id)a3;
- (void)setScale:(VFXNode *)self;
- (void)setScaleValue:(id)a3;
- (void)setSkinner:(id)a3;
- (void)setState:(id)a3;
- (void)setStateNamed:(id)a3;
- (void)setUsesDepthPrePass:(BOOL)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setWorld:(id)a3;
- (void)setWorldOrientationValue:(id)a3;
- (void)setWorldPosition:(VFXNode *)self;
- (void)setWorldPositionValue:(id)a3;
- (void)setWorldTransformValue:(id)a3;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation VFXNode

- (int64_t)authoringCameraType
{
  AssociatedObject = objc_getAssociatedObject(self, sel_authoringCameraType);

  return objc_msgSend_integerValue(AssociatedObject, v3, v4, v5);
}

- (void)setAuthoringCameraType:(int64_t)a3
{
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a3, v3);

  objc_setAssociatedObject(self, sel_authoringCameraType, v5, 0x301);
}

- (unsigned)drawCallCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2C0B94;
  v5[3] = &unk_1E7A7E710;
  v5[4] = &v6;
  objc_msgSend_enumerateHierarchyUsingBlock_(self, a2, v5, v2);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateDrawCallsUsingBlock:(id)a3 context:(id *)a4
{
  v5 = objc_msgSend_world(self, a2, a3, a4);
  v9 = objc_msgSend_worldRef(v5, v6, v7, v8);
  v10 = *(sub_1AF1D00B0(v9) + 160);

  sub_1AF1475D0(v10, sub_1AF2C0C2C, a4);
}

- (id)positionValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_position(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_position(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_position(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setPositionValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setPosition_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)rotationValue
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, a2, v2, v3);
  v37[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v37[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v37[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_rotation(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v37[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v37, 4);
}

- (void)setRotationValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v34 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v33 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);

  objc_msgSend_setRotation_(self, v30, v31, v32, COERCE_DOUBLE(__PAIR64__(v33, v34)));
}

- (id)orientationValue
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, a2, v2, v3);
  v37[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v37[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v37[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_orientation(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v37[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v37, 4);
}

- (void)setOrientationValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v34 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v33 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);

  objc_msgSend_setOrientation_(self, v30, v31, v32, COERCE_DOUBLE(__PAIR64__(v33, v34)));
}

- (id)worldOrientationValue
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, a2, v2, v3);
  v37[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v37[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v37[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_worldOrientation(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v37[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v37, 4);
}

- (void)setWorldOrientationValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v34 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v33 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);

  objc_msgSend_setWorldOrientation_(self, v30, v31, v32, COERCE_DOUBLE(__PAIR64__(v33, v34)));
}

- (id)eulerAnglesValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_eulerAngles(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_eulerAngles(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_eulerAngles(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setEulerAnglesValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setEulerAngles_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)scaleValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setScaleValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setScale_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)worldPositionValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_worldPosition(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_worldPosition(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_worldPosition(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setWorldPositionValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setWorldPosition_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)pivotValue
{
  v142[16] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, a2, v2, v3);
  v142[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v142[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v142[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v142[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  v35 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v36, v37, v38);
  v142[4] = objc_msgSend_numberWithFloat_(v35, v39, v40, v41, v42);
  v43 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v44, v45, v46);
  LODWORD(v48) = v47;
  v142[5] = objc_msgSend_numberWithFloat_(v43, v49, v50, v51, v48);
  v52 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v53, v54, v55);
  LODWORD(v57) = v56;
  v142[6] = objc_msgSend_numberWithFloat_(v52, v58, v59, v60, v57);
  v61 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v62, v63, v64);
  LODWORD(v66) = v65;
  v142[7] = objc_msgSend_numberWithFloat_(v61, v67, v68, v69, v66);
  v70 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v71, v72, v73);
  v142[8] = objc_msgSend_numberWithFloat_(v70, v74, v75, v76, v77);
  v78 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v79, v80, v81);
  LODWORD(v83) = v82;
  v142[9] = objc_msgSend_numberWithFloat_(v78, v84, v85, v86, v83);
  v87 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v88, v89, v90);
  LODWORD(v92) = v91;
  v142[10] = objc_msgSend_numberWithFloat_(v87, v93, v94, v95, v92);
  v96 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v97, v98, v99);
  LODWORD(v101) = v100;
  v142[11] = objc_msgSend_numberWithFloat_(v96, v102, v103, v104, v101);
  v105 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v106, v107, v108);
  v142[12] = objc_msgSend_numberWithFloat_(v105, v109, v110, v111, v112);
  v113 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v114, v115, v116);
  LODWORD(v118) = v117;
  v142[13] = objc_msgSend_numberWithFloat_(v113, v119, v120, v121, v118);
  v122 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v123, v124, v125);
  LODWORD(v127) = v126;
  v142[14] = objc_msgSend_numberWithFloat_(v122, v128, v129, v130, v127);
  v131 = MEMORY[0x1E696AD98];
  objc_msgSend_pivot(self, v132, v133, v134);
  LODWORD(v136) = v135;
  v142[15] = objc_msgSend_numberWithFloat_(v131, v137, v138, v139, v136);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v140, v142, 16);
}

- (void)setPivotValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v120 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v117 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);
  v121 = COERCE_DOUBLE(__PAIR64__(v117, v120));
  v32 = objc_msgSend_objectAtIndexedSubscript_(a3, v30, 4, v31);
  objc_msgSend_floatValue(v32, v33, v34, v35);
  v118 = v36;
  v39 = objc_msgSend_objectAtIndexedSubscript_(a3, v37, 5, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  v114 = v43;
  v46 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, 6, v45);
  objc_msgSend_floatValue(v46, v47, v48, v49);
  v52 = objc_msgSend_objectAtIndexedSubscript_(a3, v50, 7, v51);
  objc_msgSend_floatValue(v52, v53, v54, v55);
  v119 = COERCE_DOUBLE(__PAIR64__(v114, v118));
  v58 = objc_msgSend_objectAtIndexedSubscript_(a3, v56, 8, v57);
  objc_msgSend_floatValue(v58, v59, v60, v61);
  v115 = v62;
  v65 = objc_msgSend_objectAtIndexedSubscript_(a3, v63, 9, v64);
  objc_msgSend_floatValue(v65, v66, v67, v68);
  v112 = v69;
  v72 = objc_msgSend_objectAtIndexedSubscript_(a3, v70, 10, v71);
  objc_msgSend_floatValue(v72, v73, v74, v75);
  v78 = objc_msgSend_objectAtIndexedSubscript_(a3, v76, 11, v77);
  objc_msgSend_floatValue(v78, v79, v80, v81);
  v116 = COERCE_DOUBLE(__PAIR64__(v112, v115));
  v84 = objc_msgSend_objectAtIndexedSubscript_(a3, v82, 12, v83);
  objc_msgSend_floatValue(v84, v85, v86, v87);
  v113 = v88;
  v91 = objc_msgSend_objectAtIndexedSubscript_(a3, v89, 13, v90);
  objc_msgSend_floatValue(v91, v92, v93, v94);
  v111 = v95;
  v98 = objc_msgSend_objectAtIndexedSubscript_(a3, v96, 14, v97);
  objc_msgSend_floatValue(v98, v99, v100, v101);
  v104 = objc_msgSend_objectAtIndexedSubscript_(a3, v102, 15, v103);
  objc_msgSend_floatValue(v104, v105, v106, v107);

  objc_msgSend_setPivot_(self, v108, v109, v110, v121, v119, v116, COERCE_DOUBLE(__PAIR64__(v111, v113)));
}

- (id)worldTransformValue
{
  v142[16] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, a2, v2, v3);
  v142[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v142[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v142[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v142[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  v35 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v36, v37, v38);
  v142[4] = objc_msgSend_numberWithFloat_(v35, v39, v40, v41, v42);
  v43 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v44, v45, v46);
  LODWORD(v48) = v47;
  v142[5] = objc_msgSend_numberWithFloat_(v43, v49, v50, v51, v48);
  v52 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v53, v54, v55);
  LODWORD(v57) = v56;
  v142[6] = objc_msgSend_numberWithFloat_(v52, v58, v59, v60, v57);
  v61 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v62, v63, v64);
  LODWORD(v66) = v65;
  v142[7] = objc_msgSend_numberWithFloat_(v61, v67, v68, v69, v66);
  v70 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v71, v72, v73);
  v142[8] = objc_msgSend_numberWithFloat_(v70, v74, v75, v76, v77);
  v78 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v79, v80, v81);
  LODWORD(v83) = v82;
  v142[9] = objc_msgSend_numberWithFloat_(v78, v84, v85, v86, v83);
  v87 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v88, v89, v90);
  LODWORD(v92) = v91;
  v142[10] = objc_msgSend_numberWithFloat_(v87, v93, v94, v95, v92);
  v96 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v97, v98, v99);
  LODWORD(v101) = v100;
  v142[11] = objc_msgSend_numberWithFloat_(v96, v102, v103, v104, v101);
  v105 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v106, v107, v108);
  v142[12] = objc_msgSend_numberWithFloat_(v105, v109, v110, v111, v112);
  v113 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v114, v115, v116);
  LODWORD(v118) = v117;
  v142[13] = objc_msgSend_numberWithFloat_(v113, v119, v120, v121, v118);
  v122 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v123, v124, v125);
  LODWORD(v127) = v126;
  v142[14] = objc_msgSend_numberWithFloat_(v122, v128, v129, v130, v127);
  v131 = MEMORY[0x1E696AD98];
  objc_msgSend_worldTransform(self, v132, v133, v134);
  LODWORD(v136) = v135;
  v142[15] = objc_msgSend_numberWithFloat_(v131, v137, v138, v139, v136);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v140, v142, 16);
}

- (void)setWorldTransformValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v120 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v117 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);
  v121 = COERCE_DOUBLE(__PAIR64__(v117, v120));
  v32 = objc_msgSend_objectAtIndexedSubscript_(a3, v30, 4, v31);
  objc_msgSend_floatValue(v32, v33, v34, v35);
  v118 = v36;
  v39 = objc_msgSend_objectAtIndexedSubscript_(a3, v37, 5, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  v114 = v43;
  v46 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, 6, v45);
  objc_msgSend_floatValue(v46, v47, v48, v49);
  v52 = objc_msgSend_objectAtIndexedSubscript_(a3, v50, 7, v51);
  objc_msgSend_floatValue(v52, v53, v54, v55);
  v119 = COERCE_DOUBLE(__PAIR64__(v114, v118));
  v58 = objc_msgSend_objectAtIndexedSubscript_(a3, v56, 8, v57);
  objc_msgSend_floatValue(v58, v59, v60, v61);
  v115 = v62;
  v65 = objc_msgSend_objectAtIndexedSubscript_(a3, v63, 9, v64);
  objc_msgSend_floatValue(v65, v66, v67, v68);
  v112 = v69;
  v72 = objc_msgSend_objectAtIndexedSubscript_(a3, v70, 10, v71);
  objc_msgSend_floatValue(v72, v73, v74, v75);
  v78 = objc_msgSend_objectAtIndexedSubscript_(a3, v76, 11, v77);
  objc_msgSend_floatValue(v78, v79, v80, v81);
  v116 = COERCE_DOUBLE(__PAIR64__(v112, v115));
  v84 = objc_msgSend_objectAtIndexedSubscript_(a3, v82, 12, v83);
  objc_msgSend_floatValue(v84, v85, v86, v87);
  v113 = v88;
  v91 = objc_msgSend_objectAtIndexedSubscript_(a3, v89, 13, v90);
  objc_msgSend_floatValue(v91, v92, v93, v94);
  v111 = v95;
  v98 = objc_msgSend_objectAtIndexedSubscript_(a3, v96, 14, v97);
  objc_msgSend_floatValue(v98, v99, v100, v101);
  v104 = objc_msgSend_objectAtIndexedSubscript_(a3, v102, 15, v103);
  objc_msgSend_floatValue(v104, v105, v106, v107);

  objc_msgSend_setWorldTransform_(self, v108, v109, v110, v121, v119, v116, COERCE_DOUBLE(__PAIR64__(v111, v113)));
}

- (id)convertPositionValue:(id)a3 toNode:(id)a4
{
  v94[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v91 = v12;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v88 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  objc_msgSend_convertPosition_toNode_(self, v26, a4, v27, COERCE_DOUBLE(__PAIR64__(v88, v91)));
  v94[0] = objc_msgSend_numberWithFloat_(v7, v28, v29, v30);
  v31 = MEMORY[0x1E696AD98];
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 0, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v92 = v38;
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v39, 1, v40);
  objc_msgSend_floatValue(v41, v42, v43, v44);
  v89 = v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, 2, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  objc_msgSend_convertPosition_toNode_(self, v52, a4, v53, COERCE_DOUBLE(__PAIR64__(v89, v92)));
  LODWORD(v54) = HIDWORD(v54);
  v94[1] = objc_msgSend_numberWithFloat_(v31, v55, v56, v57, v54);
  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_objectAtIndexedSubscript_(a3, v59, 0, v60);
  objc_msgSend_floatValue(v61, v62, v63, v64);
  v93 = v65;
  v68 = objc_msgSend_objectAtIndexedSubscript_(a3, v66, 1, v67);
  objc_msgSend_floatValue(v68, v69, v70, v71);
  v90 = v72;
  v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v73, 2, v74);
  objc_msgSend_floatValue(v75, v76, v77, v78);
  objc_msgSend_convertPosition_toNode_(self, v79, a4, v80, COERCE_DOUBLE(__PAIR64__(v90, v93)));
  LODWORD(v82) = v81;
  v94[2] = objc_msgSend_numberWithFloat_(v58, v83, v84, v85, v82);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v86, v94, 3);
}

- (id)convertPositionValue:(id)a3 fromNode:(id)a4
{
  v94[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v91 = v12;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v88 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  objc_msgSend_convertPosition_fromNode_(self, v26, a4, v27, COERCE_DOUBLE(__PAIR64__(v88, v91)));
  v94[0] = objc_msgSend_numberWithFloat_(v7, v28, v29, v30);
  v31 = MEMORY[0x1E696AD98];
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 0, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v92 = v38;
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v39, 1, v40);
  objc_msgSend_floatValue(v41, v42, v43, v44);
  v89 = v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, 2, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  objc_msgSend_convertPosition_fromNode_(self, v52, a4, v53, COERCE_DOUBLE(__PAIR64__(v89, v92)));
  LODWORD(v54) = HIDWORD(v54);
  v94[1] = objc_msgSend_numberWithFloat_(v31, v55, v56, v57, v54);
  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_objectAtIndexedSubscript_(a3, v59, 0, v60);
  objc_msgSend_floatValue(v61, v62, v63, v64);
  v93 = v65;
  v68 = objc_msgSend_objectAtIndexedSubscript_(a3, v66, 1, v67);
  objc_msgSend_floatValue(v68, v69, v70, v71);
  v90 = v72;
  v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v73, 2, v74);
  objc_msgSend_floatValue(v75, v76, v77, v78);
  objc_msgSend_convertPosition_fromNode_(self, v79, a4, v80, COERCE_DOUBLE(__PAIR64__(v90, v93)));
  LODWORD(v82) = v81;
  v94[2] = objc_msgSend_numberWithFloat_(v58, v83, v84, v85, v82);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v86, v94, 3);
}

- (id)convertVectorValue:(id)a3 toNode:(id)a4
{
  v94[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v91 = v12;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v88 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  objc_msgSend_convertVector_toNode_(self, v26, a4, v27, COERCE_DOUBLE(__PAIR64__(v88, v91)));
  v94[0] = objc_msgSend_numberWithFloat_(v7, v28, v29, v30);
  v31 = MEMORY[0x1E696AD98];
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 0, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v92 = v38;
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v39, 1, v40);
  objc_msgSend_floatValue(v41, v42, v43, v44);
  v89 = v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, 2, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  objc_msgSend_convertVector_toNode_(self, v52, a4, v53, COERCE_DOUBLE(__PAIR64__(v89, v92)));
  LODWORD(v54) = HIDWORD(v54);
  v94[1] = objc_msgSend_numberWithFloat_(v31, v55, v56, v57, v54);
  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_objectAtIndexedSubscript_(a3, v59, 0, v60);
  objc_msgSend_floatValue(v61, v62, v63, v64);
  v93 = v65;
  v68 = objc_msgSend_objectAtIndexedSubscript_(a3, v66, 1, v67);
  objc_msgSend_floatValue(v68, v69, v70, v71);
  v90 = v72;
  v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v73, 2, v74);
  objc_msgSend_floatValue(v75, v76, v77, v78);
  objc_msgSend_convertVector_toNode_(self, v79, a4, v80, COERCE_DOUBLE(__PAIR64__(v90, v93)));
  LODWORD(v82) = v81;
  v94[2] = objc_msgSend_numberWithFloat_(v58, v83, v84, v85, v82);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v86, v94, 3);
}

- (id)convertVectorValue:(id)a3 fromNode:(id)a4
{
  v94[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v91 = v12;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v88 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  objc_msgSend_convertVector_fromNode_(self, v26, a4, v27, COERCE_DOUBLE(__PAIR64__(v88, v91)));
  v94[0] = objc_msgSend_numberWithFloat_(v7, v28, v29, v30);
  v31 = MEMORY[0x1E696AD98];
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 0, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v92 = v38;
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v39, 1, v40);
  objc_msgSend_floatValue(v41, v42, v43, v44);
  v89 = v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, 2, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  objc_msgSend_convertVector_fromNode_(self, v52, a4, v53, COERCE_DOUBLE(__PAIR64__(v89, v92)));
  LODWORD(v54) = HIDWORD(v54);
  v94[1] = objc_msgSend_numberWithFloat_(v31, v55, v56, v57, v54);
  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_objectAtIndexedSubscript_(a3, v59, 0, v60);
  objc_msgSend_floatValue(v61, v62, v63, v64);
  v93 = v65;
  v68 = objc_msgSend_objectAtIndexedSubscript_(a3, v66, 1, v67);
  objc_msgSend_floatValue(v68, v69, v70, v71);
  v90 = v72;
  v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v73, 2, v74);
  objc_msgSend_floatValue(v75, v76, v77, v78);
  objc_msgSend_convertVector_fromNode_(self, v79, a4, v80, COERCE_DOUBLE(__PAIR64__(v90, v93)));
  LODWORD(v82) = v81;
  v94[2] = objc_msgSend_numberWithFloat_(v58, v83, v84, v85, v82);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v86, v94, 3);
}

- (id)convertTransformValue:(id)a3 toNode:(id)a4
{
  v1894[16] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v1877 = v12;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v1859 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  v28 = objc_msgSend_objectAtIndexedSubscript_(a3, v26, 3, v27);
  objc_msgSend_floatValue(v28, v29, v30, v31);
  *&v1878 = __PAIR64__(v1859, v1877);
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 4, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v1860 = v38;
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v39, 5, v40);
  objc_msgSend_floatValue(v41, v42, v43, v44);
  v1841 = v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, 6, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  v54 = objc_msgSend_objectAtIndexedSubscript_(a3, v52, 7, v53);
  objc_msgSend_floatValue(v54, v55, v56, v57);
  *&v1861 = __PAIR64__(v1841, v1860);
  v60 = objc_msgSend_objectAtIndexedSubscript_(a3, v58, 8, v59);
  objc_msgSend_floatValue(v60, v61, v62, v63);
  v1842 = v64;
  v67 = objc_msgSend_objectAtIndexedSubscript_(a3, v65, 9, v66);
  objc_msgSend_floatValue(v67, v68, v69, v70);
  v1809 = v71;
  v74 = objc_msgSend_objectAtIndexedSubscript_(a3, v72, 10, v73);
  objc_msgSend_floatValue(v74, v75, v76, v77);
  v80 = objc_msgSend_objectAtIndexedSubscript_(a3, v78, 11, v79);
  objc_msgSend_floatValue(v80, v81, v82, v83);
  *&v1843 = __PAIR64__(v1809, v1842);
  v86 = objc_msgSend_objectAtIndexedSubscript_(a3, v84, 12, v85);
  objc_msgSend_floatValue(v86, v87, v88, v89);
  v1810 = v90;
  v93 = objc_msgSend_objectAtIndexedSubscript_(a3, v91, 13, v92);
  objc_msgSend_floatValue(v93, v94, v95, v96);
  v1793 = v97;
  v100 = objc_msgSend_objectAtIndexedSubscript_(a3, v98, 14, v99);
  objc_msgSend_floatValue(v100, v101, v102, v103);
  v106 = objc_msgSend_objectAtIndexedSubscript_(a3, v104, 15, v105);
  objc_msgSend_floatValue(v106, v107, v108, v109);
  objc_msgSend_convertTransform_toNode_(self, v110, a4, v111, v1878, v1861, v1843, COERCE_DOUBLE(__PAIR64__(v1793, v1810)));
  v1894[0] = objc_msgSend_numberWithFloat_(v7, v112, v113, v114);
  v115 = MEMORY[0x1E696AD98];
  v118 = objc_msgSend_objectAtIndexedSubscript_(a3, v116, 0, v117);
  objc_msgSend_floatValue(v118, v119, v120, v121);
  LODWORD(v1878) = v122;
  v125 = objc_msgSend_objectAtIndexedSubscript_(a3, v123, 1, v124);
  objc_msgSend_floatValue(v125, v126, v127, v128);
  LODWORD(v1861) = v129;
  v132 = objc_msgSend_objectAtIndexedSubscript_(a3, v130, 2, v131);
  objc_msgSend_floatValue(v132, v133, v134, v135);
  v138 = objc_msgSend_objectAtIndexedSubscript_(a3, v136, 3, v137);
  objc_msgSend_floatValue(v138, v139, v140, v141);
  *&v1879 = __PAIR64__(LODWORD(v1861), LODWORD(v1878));
  v144 = objc_msgSend_objectAtIndexedSubscript_(a3, v142, 4, v143);
  objc_msgSend_floatValue(v144, v145, v146, v147);
  LODWORD(v1861) = v148;
  v151 = objc_msgSend_objectAtIndexedSubscript_(a3, v149, 5, v150);
  objc_msgSend_floatValue(v151, v152, v153, v154);
  LODWORD(v1843) = v155;
  v158 = objc_msgSend_objectAtIndexedSubscript_(a3, v156, 6, v157);
  objc_msgSend_floatValue(v158, v159, v160, v161);
  v164 = objc_msgSend_objectAtIndexedSubscript_(a3, v162, 7, v163);
  objc_msgSend_floatValue(v164, v165, v166, v167);
  *&v1862 = __PAIR64__(LODWORD(v1843), LODWORD(v1861));
  v170 = objc_msgSend_objectAtIndexedSubscript_(a3, v168, 8, v169);
  objc_msgSend_floatValue(v170, v171, v172, v173);
  LODWORD(v1843) = v174;
  v177 = objc_msgSend_objectAtIndexedSubscript_(a3, v175, 9, v176);
  objc_msgSend_floatValue(v177, v178, v179, v180);
  v1811 = v181;
  v184 = objc_msgSend_objectAtIndexedSubscript_(a3, v182, 10, v183);
  objc_msgSend_floatValue(v184, v185, v186, v187);
  v190 = objc_msgSend_objectAtIndexedSubscript_(a3, v188, 11, v189);
  objc_msgSend_floatValue(v190, v191, v192, v193);
  *&v1844 = __PAIR64__(v1811, LODWORD(v1843));
  v196 = objc_msgSend_objectAtIndexedSubscript_(a3, v194, 12, v195);
  objc_msgSend_floatValue(v196, v197, v198, v199);
  v1812 = v200;
  v203 = objc_msgSend_objectAtIndexedSubscript_(a3, v201, 13, v202);
  objc_msgSend_floatValue(v203, v204, v205, v206);
  v1794 = v207;
  v210 = objc_msgSend_objectAtIndexedSubscript_(a3, v208, 14, v209);
  objc_msgSend_floatValue(v210, v211, v212, v213);
  v216 = objc_msgSend_objectAtIndexedSubscript_(a3, v214, 15, v215);
  objc_msgSend_floatValue(v216, v217, v218, v219);
  objc_msgSend_convertTransform_toNode_(self, v220, a4, v221, v1879, v1862, v1844, COERCE_DOUBLE(__PAIR64__(v1794, v1812)));
  LODWORD(v222) = HIDWORD(v222);
  v1894[1] = objc_msgSend_numberWithFloat_(v115, v223, v224, v225, v222);
  v226 = MEMORY[0x1E696AD98];
  v229 = objc_msgSend_objectAtIndexedSubscript_(a3, v227, 0, v228);
  objc_msgSend_floatValue(v229, v230, v231, v232);
  LODWORD(v1879) = v233;
  v236 = objc_msgSend_objectAtIndexedSubscript_(a3, v234, 1, v235);
  objc_msgSend_floatValue(v236, v237, v238, v239);
  LODWORD(v1862) = v240;
  v243 = objc_msgSend_objectAtIndexedSubscript_(a3, v241, 2, v242);
  objc_msgSend_floatValue(v243, v244, v245, v246);
  v249 = objc_msgSend_objectAtIndexedSubscript_(a3, v247, 3, v248);
  objc_msgSend_floatValue(v249, v250, v251, v252);
  *&v1880 = __PAIR64__(LODWORD(v1862), LODWORD(v1879));
  v255 = objc_msgSend_objectAtIndexedSubscript_(a3, v253, 4, v254);
  objc_msgSend_floatValue(v255, v256, v257, v258);
  LODWORD(v1862) = v259;
  v262 = objc_msgSend_objectAtIndexedSubscript_(a3, v260, 5, v261);
  objc_msgSend_floatValue(v262, v263, v264, v265);
  LODWORD(v1844) = v266;
  v269 = objc_msgSend_objectAtIndexedSubscript_(a3, v267, 6, v268);
  objc_msgSend_floatValue(v269, v270, v271, v272);
  v275 = objc_msgSend_objectAtIndexedSubscript_(a3, v273, 7, v274);
  objc_msgSend_floatValue(v275, v276, v277, v278);
  *&v1863 = __PAIR64__(LODWORD(v1844), LODWORD(v1862));
  v281 = objc_msgSend_objectAtIndexedSubscript_(a3, v279, 8, v280);
  objc_msgSend_floatValue(v281, v282, v283, v284);
  LODWORD(v1844) = v285;
  v288 = objc_msgSend_objectAtIndexedSubscript_(a3, v286, 9, v287);
  objc_msgSend_floatValue(v288, v289, v290, v291);
  v1813 = v292;
  v295 = objc_msgSend_objectAtIndexedSubscript_(a3, v293, 10, v294);
  objc_msgSend_floatValue(v295, v296, v297, v298);
  v301 = objc_msgSend_objectAtIndexedSubscript_(a3, v299, 11, v300);
  objc_msgSend_floatValue(v301, v302, v303, v304);
  *&v1845 = __PAIR64__(v1813, LODWORD(v1844));
  v307 = objc_msgSend_objectAtIndexedSubscript_(a3, v305, 12, v306);
  objc_msgSend_floatValue(v307, v308, v309, v310);
  v1814 = v311;
  v314 = objc_msgSend_objectAtIndexedSubscript_(a3, v312, 13, v313);
  objc_msgSend_floatValue(v314, v315, v316, v317);
  v1795 = v318;
  v321 = objc_msgSend_objectAtIndexedSubscript_(a3, v319, 14, v320);
  objc_msgSend_floatValue(v321, v322, v323, v324);
  v327 = objc_msgSend_objectAtIndexedSubscript_(a3, v325, 15, v326);
  objc_msgSend_floatValue(v327, v328, v329, v330);
  objc_msgSend_convertTransform_toNode_(self, v331, a4, v332, v1880, v1863, v1845, COERCE_DOUBLE(__PAIR64__(v1795, v1814)));
  LODWORD(v334) = v333;
  v1894[2] = objc_msgSend_numberWithFloat_(v226, v335, v336, v337, v334);
  v338 = MEMORY[0x1E696AD98];
  v341 = objc_msgSend_objectAtIndexedSubscript_(a3, v339, 0, v340);
  objc_msgSend_floatValue(v341, v342, v343, v344);
  LODWORD(v1880) = v345;
  v348 = objc_msgSend_objectAtIndexedSubscript_(a3, v346, 1, v347);
  objc_msgSend_floatValue(v348, v349, v350, v351);
  LODWORD(v1863) = v352;
  v355 = objc_msgSend_objectAtIndexedSubscript_(a3, v353, 2, v354);
  objc_msgSend_floatValue(v355, v356, v357, v358);
  v361 = objc_msgSend_objectAtIndexedSubscript_(a3, v359, 3, v360);
  objc_msgSend_floatValue(v361, v362, v363, v364);
  *&v1881 = __PAIR64__(LODWORD(v1863), LODWORD(v1880));
  v367 = objc_msgSend_objectAtIndexedSubscript_(a3, v365, 4, v366);
  objc_msgSend_floatValue(v367, v368, v369, v370);
  LODWORD(v1863) = v371;
  v374 = objc_msgSend_objectAtIndexedSubscript_(a3, v372, 5, v373);
  objc_msgSend_floatValue(v374, v375, v376, v377);
  LODWORD(v1845) = v378;
  v381 = objc_msgSend_objectAtIndexedSubscript_(a3, v379, 6, v380);
  objc_msgSend_floatValue(v381, v382, v383, v384);
  v387 = objc_msgSend_objectAtIndexedSubscript_(a3, v385, 7, v386);
  objc_msgSend_floatValue(v387, v388, v389, v390);
  *&v1864 = __PAIR64__(LODWORD(v1845), LODWORD(v1863));
  v393 = objc_msgSend_objectAtIndexedSubscript_(a3, v391, 8, v392);
  objc_msgSend_floatValue(v393, v394, v395, v396);
  LODWORD(v1845) = v397;
  v400 = objc_msgSend_objectAtIndexedSubscript_(a3, v398, 9, v399);
  objc_msgSend_floatValue(v400, v401, v402, v403);
  v1815 = v404;
  v407 = objc_msgSend_objectAtIndexedSubscript_(a3, v405, 10, v406);
  objc_msgSend_floatValue(v407, v408, v409, v410);
  v413 = objc_msgSend_objectAtIndexedSubscript_(a3, v411, 11, v412);
  objc_msgSend_floatValue(v413, v414, v415, v416);
  *&v1846 = __PAIR64__(v1815, LODWORD(v1845));
  v419 = objc_msgSend_objectAtIndexedSubscript_(a3, v417, 12, v418);
  objc_msgSend_floatValue(v419, v420, v421, v422);
  v1816 = v423;
  v426 = objc_msgSend_objectAtIndexedSubscript_(a3, v424, 13, v425);
  objc_msgSend_floatValue(v426, v427, v428, v429);
  v1796 = v430;
  v433 = objc_msgSend_objectAtIndexedSubscript_(a3, v431, 14, v432);
  objc_msgSend_floatValue(v433, v434, v435, v436);
  v439 = objc_msgSend_objectAtIndexedSubscript_(a3, v437, 15, v438);
  objc_msgSend_floatValue(v439, v440, v441, v442);
  objc_msgSend_convertTransform_toNode_(self, v443, a4, v444, v1881, v1864, v1846, COERCE_DOUBLE(__PAIR64__(v1796, v1816)));
  LODWORD(v446) = v445;
  v1894[3] = objc_msgSend_numberWithFloat_(v338, v447, v448, v449, v446);
  v450 = MEMORY[0x1E696AD98];
  v453 = objc_msgSend_objectAtIndexedSubscript_(a3, v451, 0, v452);
  objc_msgSend_floatValue(v453, v454, v455, v456);
  LODWORD(v1881) = v457;
  v460 = objc_msgSend_objectAtIndexedSubscript_(a3, v458, 1, v459);
  objc_msgSend_floatValue(v460, v461, v462, v463);
  LODWORD(v1864) = v464;
  v467 = objc_msgSend_objectAtIndexedSubscript_(a3, v465, 2, v466);
  objc_msgSend_floatValue(v467, v468, v469, v470);
  v473 = objc_msgSend_objectAtIndexedSubscript_(a3, v471, 3, v472);
  objc_msgSend_floatValue(v473, v474, v475, v476);
  *&v1882 = __PAIR64__(LODWORD(v1864), LODWORD(v1881));
  v479 = objc_msgSend_objectAtIndexedSubscript_(a3, v477, 4, v478);
  objc_msgSend_floatValue(v479, v480, v481, v482);
  LODWORD(v1864) = v483;
  v486 = objc_msgSend_objectAtIndexedSubscript_(a3, v484, 5, v485);
  objc_msgSend_floatValue(v486, v487, v488, v489);
  LODWORD(v1846) = v490;
  v493 = objc_msgSend_objectAtIndexedSubscript_(a3, v491, 6, v492);
  objc_msgSend_floatValue(v493, v494, v495, v496);
  v499 = objc_msgSend_objectAtIndexedSubscript_(a3, v497, 7, v498);
  objc_msgSend_floatValue(v499, v500, v501, v502);
  *&v1865 = __PAIR64__(LODWORD(v1846), LODWORD(v1864));
  v505 = objc_msgSend_objectAtIndexedSubscript_(a3, v503, 8, v504);
  objc_msgSend_floatValue(v505, v506, v507, v508);
  LODWORD(v1846) = v509;
  v512 = objc_msgSend_objectAtIndexedSubscript_(a3, v510, 9, v511);
  objc_msgSend_floatValue(v512, v513, v514, v515);
  v1817 = v516;
  v519 = objc_msgSend_objectAtIndexedSubscript_(a3, v517, 10, v518);
  objc_msgSend_floatValue(v519, v520, v521, v522);
  v525 = objc_msgSend_objectAtIndexedSubscript_(a3, v523, 11, v524);
  objc_msgSend_floatValue(v525, v526, v527, v528);
  *&v1847 = __PAIR64__(v1817, LODWORD(v1846));
  v531 = objc_msgSend_objectAtIndexedSubscript_(a3, v529, 12, v530);
  objc_msgSend_floatValue(v531, v532, v533, v534);
  v1818 = v535;
  v538 = objc_msgSend_objectAtIndexedSubscript_(a3, v536, 13, v537);
  objc_msgSend_floatValue(v538, v539, v540, v541);
  v1797 = v542;
  v545 = objc_msgSend_objectAtIndexedSubscript_(a3, v543, 14, v544);
  objc_msgSend_floatValue(v545, v546, v547, v548);
  v551 = objc_msgSend_objectAtIndexedSubscript_(a3, v549, 15, v550);
  objc_msgSend_floatValue(v551, v552, v553, v554);
  objc_msgSend_convertTransform_toNode_(self, v555, a4, v556, v1882, v1865, v1847, COERCE_DOUBLE(__PAIR64__(v1797, v1818)));
  v1894[4] = objc_msgSend_numberWithFloat_(v450, v557, v558, v559, v560);
  v561 = MEMORY[0x1E696AD98];
  v564 = objc_msgSend_objectAtIndexedSubscript_(a3, v562, 0, v563);
  objc_msgSend_floatValue(v564, v565, v566, v567);
  LODWORD(v1882) = v568;
  v571 = objc_msgSend_objectAtIndexedSubscript_(a3, v569, 1, v570);
  objc_msgSend_floatValue(v571, v572, v573, v574);
  LODWORD(v1865) = v575;
  v578 = objc_msgSend_objectAtIndexedSubscript_(a3, v576, 2, v577);
  objc_msgSend_floatValue(v578, v579, v580, v581);
  v584 = objc_msgSend_objectAtIndexedSubscript_(a3, v582, 3, v583);
  objc_msgSend_floatValue(v584, v585, v586, v587);
  *&v1883 = __PAIR64__(LODWORD(v1865), LODWORD(v1882));
  v590 = objc_msgSend_objectAtIndexedSubscript_(a3, v588, 4, v589);
  objc_msgSend_floatValue(v590, v591, v592, v593);
  LODWORD(v1865) = v594;
  v597 = objc_msgSend_objectAtIndexedSubscript_(a3, v595, 5, v596);
  objc_msgSend_floatValue(v597, v598, v599, v600);
  LODWORD(v1847) = v601;
  v604 = objc_msgSend_objectAtIndexedSubscript_(a3, v602, 6, v603);
  objc_msgSend_floatValue(v604, v605, v606, v607);
  v610 = objc_msgSend_objectAtIndexedSubscript_(a3, v608, 7, v609);
  objc_msgSend_floatValue(v610, v611, v612, v613);
  *&v1866 = __PAIR64__(LODWORD(v1847), LODWORD(v1865));
  v616 = objc_msgSend_objectAtIndexedSubscript_(a3, v614, 8, v615);
  objc_msgSend_floatValue(v616, v617, v618, v619);
  LODWORD(v1847) = v620;
  v623 = objc_msgSend_objectAtIndexedSubscript_(a3, v621, 9, v622);
  objc_msgSend_floatValue(v623, v624, v625, v626);
  v1819 = v627;
  v630 = objc_msgSend_objectAtIndexedSubscript_(a3, v628, 10, v629);
  objc_msgSend_floatValue(v630, v631, v632, v633);
  v636 = objc_msgSend_objectAtIndexedSubscript_(a3, v634, 11, v635);
  objc_msgSend_floatValue(v636, v637, v638, v639);
  *&v1848 = __PAIR64__(v1819, LODWORD(v1847));
  v642 = objc_msgSend_objectAtIndexedSubscript_(a3, v640, 12, v641);
  objc_msgSend_floatValue(v642, v643, v644, v645);
  v1820 = v646;
  v649 = objc_msgSend_objectAtIndexedSubscript_(a3, v647, 13, v648);
  objc_msgSend_floatValue(v649, v650, v651, v652);
  v1798 = v653;
  v656 = objc_msgSend_objectAtIndexedSubscript_(a3, v654, 14, v655);
  objc_msgSend_floatValue(v656, v657, v658, v659);
  v662 = objc_msgSend_objectAtIndexedSubscript_(a3, v660, 15, v661);
  objc_msgSend_floatValue(v662, v663, v664, v665);
  objc_msgSend_convertTransform_toNode_(self, v666, a4, v667, v1883, v1866, v1848, COERCE_DOUBLE(__PAIR64__(v1798, v1820)));
  LODWORD(v669) = v668;
  v1894[5] = objc_msgSend_numberWithFloat_(v561, v670, v671, v672, v669);
  v673 = MEMORY[0x1E696AD98];
  v676 = objc_msgSend_objectAtIndexedSubscript_(a3, v674, 0, v675);
  objc_msgSend_floatValue(v676, v677, v678, v679);
  LODWORD(v1883) = v680;
  v683 = objc_msgSend_objectAtIndexedSubscript_(a3, v681, 1, v682);
  objc_msgSend_floatValue(v683, v684, v685, v686);
  LODWORD(v1866) = v687;
  v690 = objc_msgSend_objectAtIndexedSubscript_(a3, v688, 2, v689);
  objc_msgSend_floatValue(v690, v691, v692, v693);
  v696 = objc_msgSend_objectAtIndexedSubscript_(a3, v694, 3, v695);
  objc_msgSend_floatValue(v696, v697, v698, v699);
  *&v1884 = __PAIR64__(LODWORD(v1866), LODWORD(v1883));
  v702 = objc_msgSend_objectAtIndexedSubscript_(a3, v700, 4, v701);
  objc_msgSend_floatValue(v702, v703, v704, v705);
  LODWORD(v1866) = v706;
  v709 = objc_msgSend_objectAtIndexedSubscript_(a3, v707, 5, v708);
  objc_msgSend_floatValue(v709, v710, v711, v712);
  LODWORD(v1848) = v713;
  v716 = objc_msgSend_objectAtIndexedSubscript_(a3, v714, 6, v715);
  objc_msgSend_floatValue(v716, v717, v718, v719);
  v722 = objc_msgSend_objectAtIndexedSubscript_(a3, v720, 7, v721);
  objc_msgSend_floatValue(v722, v723, v724, v725);
  *&v1867 = __PAIR64__(LODWORD(v1848), LODWORD(v1866));
  v728 = objc_msgSend_objectAtIndexedSubscript_(a3, v726, 8, v727);
  objc_msgSend_floatValue(v728, v729, v730, v731);
  LODWORD(v1848) = v732;
  v735 = objc_msgSend_objectAtIndexedSubscript_(a3, v733, 9, v734);
  objc_msgSend_floatValue(v735, v736, v737, v738);
  v1821 = v739;
  v742 = objc_msgSend_objectAtIndexedSubscript_(a3, v740, 10, v741);
  objc_msgSend_floatValue(v742, v743, v744, v745);
  v748 = objc_msgSend_objectAtIndexedSubscript_(a3, v746, 11, v747);
  objc_msgSend_floatValue(v748, v749, v750, v751);
  *&v1849 = __PAIR64__(v1821, LODWORD(v1848));
  v754 = objc_msgSend_objectAtIndexedSubscript_(a3, v752, 12, v753);
  objc_msgSend_floatValue(v754, v755, v756, v757);
  v1822 = v758;
  v761 = objc_msgSend_objectAtIndexedSubscript_(a3, v759, 13, v760);
  objc_msgSend_floatValue(v761, v762, v763, v764);
  v1799 = v765;
  v768 = objc_msgSend_objectAtIndexedSubscript_(a3, v766, 14, v767);
  objc_msgSend_floatValue(v768, v769, v770, v771);
  v774 = objc_msgSend_objectAtIndexedSubscript_(a3, v772, 15, v773);
  objc_msgSend_floatValue(v774, v775, v776, v777);
  objc_msgSend_convertTransform_toNode_(self, v778, a4, v779, v1884, v1867, v1849, COERCE_DOUBLE(__PAIR64__(v1799, v1822)));
  LODWORD(v781) = v780;
  v1894[6] = objc_msgSend_numberWithFloat_(v673, v782, v783, v784, v781);
  v785 = MEMORY[0x1E696AD98];
  v788 = objc_msgSend_objectAtIndexedSubscript_(a3, v786, 0, v787);
  objc_msgSend_floatValue(v788, v789, v790, v791);
  LODWORD(v1884) = v792;
  v795 = objc_msgSend_objectAtIndexedSubscript_(a3, v793, 1, v794);
  objc_msgSend_floatValue(v795, v796, v797, v798);
  LODWORD(v1867) = v799;
  v802 = objc_msgSend_objectAtIndexedSubscript_(a3, v800, 2, v801);
  objc_msgSend_floatValue(v802, v803, v804, v805);
  v808 = objc_msgSend_objectAtIndexedSubscript_(a3, v806, 3, v807);
  objc_msgSend_floatValue(v808, v809, v810, v811);
  *&v1885 = __PAIR64__(LODWORD(v1867), LODWORD(v1884));
  v814 = objc_msgSend_objectAtIndexedSubscript_(a3, v812, 4, v813);
  objc_msgSend_floatValue(v814, v815, v816, v817);
  LODWORD(v1867) = v818;
  v821 = objc_msgSend_objectAtIndexedSubscript_(a3, v819, 5, v820);
  objc_msgSend_floatValue(v821, v822, v823, v824);
  LODWORD(v1849) = v825;
  v828 = objc_msgSend_objectAtIndexedSubscript_(a3, v826, 6, v827);
  objc_msgSend_floatValue(v828, v829, v830, v831);
  v834 = objc_msgSend_objectAtIndexedSubscript_(a3, v832, 7, v833);
  objc_msgSend_floatValue(v834, v835, v836, v837);
  *&v1868 = __PAIR64__(LODWORD(v1849), LODWORD(v1867));
  v840 = objc_msgSend_objectAtIndexedSubscript_(a3, v838, 8, v839);
  objc_msgSend_floatValue(v840, v841, v842, v843);
  LODWORD(v1849) = v844;
  v847 = objc_msgSend_objectAtIndexedSubscript_(a3, v845, 9, v846);
  objc_msgSend_floatValue(v847, v848, v849, v850);
  v1823 = v851;
  v854 = objc_msgSend_objectAtIndexedSubscript_(a3, v852, 10, v853);
  objc_msgSend_floatValue(v854, v855, v856, v857);
  v860 = objc_msgSend_objectAtIndexedSubscript_(a3, v858, 11, v859);
  objc_msgSend_floatValue(v860, v861, v862, v863);
  *&v1850 = __PAIR64__(v1823, LODWORD(v1849));
  v866 = objc_msgSend_objectAtIndexedSubscript_(a3, v864, 12, v865);
  objc_msgSend_floatValue(v866, v867, v868, v869);
  v1824 = v870;
  v873 = objc_msgSend_objectAtIndexedSubscript_(a3, v871, 13, v872);
  objc_msgSend_floatValue(v873, v874, v875, v876);
  v1800 = v877;
  v880 = objc_msgSend_objectAtIndexedSubscript_(a3, v878, 14, v879);
  objc_msgSend_floatValue(v880, v881, v882, v883);
  v886 = objc_msgSend_objectAtIndexedSubscript_(a3, v884, 15, v885);
  objc_msgSend_floatValue(v886, v887, v888, v889);
  objc_msgSend_convertTransform_toNode_(self, v890, a4, v891, v1885, v1868, v1850, COERCE_DOUBLE(__PAIR64__(v1800, v1824)));
  LODWORD(v893) = v892;
  v1894[7] = objc_msgSend_numberWithFloat_(v785, v894, v895, v896, v893);
  v897 = MEMORY[0x1E696AD98];
  v900 = objc_msgSend_objectAtIndexedSubscript_(a3, v898, 0, v899);
  objc_msgSend_floatValue(v900, v901, v902, v903);
  LODWORD(v1885) = v904;
  v907 = objc_msgSend_objectAtIndexedSubscript_(a3, v905, 1, v906);
  objc_msgSend_floatValue(v907, v908, v909, v910);
  LODWORD(v1868) = v911;
  v914 = objc_msgSend_objectAtIndexedSubscript_(a3, v912, 2, v913);
  objc_msgSend_floatValue(v914, v915, v916, v917);
  v920 = objc_msgSend_objectAtIndexedSubscript_(a3, v918, 3, v919);
  objc_msgSend_floatValue(v920, v921, v922, v923);
  *&v1886 = __PAIR64__(LODWORD(v1868), LODWORD(v1885));
  v926 = objc_msgSend_objectAtIndexedSubscript_(a3, v924, 4, v925);
  objc_msgSend_floatValue(v926, v927, v928, v929);
  LODWORD(v1868) = v930;
  v933 = objc_msgSend_objectAtIndexedSubscript_(a3, v931, 5, v932);
  objc_msgSend_floatValue(v933, v934, v935, v936);
  LODWORD(v1850) = v937;
  v940 = objc_msgSend_objectAtIndexedSubscript_(a3, v938, 6, v939);
  objc_msgSend_floatValue(v940, v941, v942, v943);
  v946 = objc_msgSend_objectAtIndexedSubscript_(a3, v944, 7, v945);
  objc_msgSend_floatValue(v946, v947, v948, v949);
  *&v1869 = __PAIR64__(LODWORD(v1850), LODWORD(v1868));
  v952 = objc_msgSend_objectAtIndexedSubscript_(a3, v950, 8, v951);
  objc_msgSend_floatValue(v952, v953, v954, v955);
  LODWORD(v1850) = v956;
  v959 = objc_msgSend_objectAtIndexedSubscript_(a3, v957, 9, v958);
  objc_msgSend_floatValue(v959, v960, v961, v962);
  v1825 = v963;
  v966 = objc_msgSend_objectAtIndexedSubscript_(a3, v964, 10, v965);
  objc_msgSend_floatValue(v966, v967, v968, v969);
  v972 = objc_msgSend_objectAtIndexedSubscript_(a3, v970, 11, v971);
  objc_msgSend_floatValue(v972, v973, v974, v975);
  *&v1851 = __PAIR64__(v1825, LODWORD(v1850));
  v978 = objc_msgSend_objectAtIndexedSubscript_(a3, v976, 12, v977);
  objc_msgSend_floatValue(v978, v979, v980, v981);
  v1826 = v982;
  v985 = objc_msgSend_objectAtIndexedSubscript_(a3, v983, 13, v984);
  objc_msgSend_floatValue(v985, v986, v987, v988);
  v1801 = v989;
  v992 = objc_msgSend_objectAtIndexedSubscript_(a3, v990, 14, v991);
  objc_msgSend_floatValue(v992, v993, v994, v995);
  v998 = objc_msgSend_objectAtIndexedSubscript_(a3, v996, 15, v997);
  objc_msgSend_floatValue(v998, v999, v1000, v1001);
  objc_msgSend_convertTransform_toNode_(self, v1002, a4, v1003, v1886, v1869, v1851, COERCE_DOUBLE(__PAIR64__(v1801, v1826)));
  v1894[8] = objc_msgSend_numberWithFloat_(v897, v1004, v1005, v1006, v1007);
  v1008 = MEMORY[0x1E696AD98];
  v1011 = objc_msgSend_objectAtIndexedSubscript_(a3, v1009, 0, v1010);
  objc_msgSend_floatValue(v1011, v1012, v1013, v1014);
  LODWORD(v1886) = v1015;
  v1018 = objc_msgSend_objectAtIndexedSubscript_(a3, v1016, 1, v1017);
  objc_msgSend_floatValue(v1018, v1019, v1020, v1021);
  LODWORD(v1869) = v1022;
  v1025 = objc_msgSend_objectAtIndexedSubscript_(a3, v1023, 2, v1024);
  objc_msgSend_floatValue(v1025, v1026, v1027, v1028);
  v1031 = objc_msgSend_objectAtIndexedSubscript_(a3, v1029, 3, v1030);
  objc_msgSend_floatValue(v1031, v1032, v1033, v1034);
  *&v1887 = __PAIR64__(LODWORD(v1869), LODWORD(v1886));
  v1037 = objc_msgSend_objectAtIndexedSubscript_(a3, v1035, 4, v1036);
  objc_msgSend_floatValue(v1037, v1038, v1039, v1040);
  LODWORD(v1869) = v1041;
  v1044 = objc_msgSend_objectAtIndexedSubscript_(a3, v1042, 5, v1043);
  objc_msgSend_floatValue(v1044, v1045, v1046, v1047);
  LODWORD(v1851) = v1048;
  v1051 = objc_msgSend_objectAtIndexedSubscript_(a3, v1049, 6, v1050);
  objc_msgSend_floatValue(v1051, v1052, v1053, v1054);
  v1057 = objc_msgSend_objectAtIndexedSubscript_(a3, v1055, 7, v1056);
  objc_msgSend_floatValue(v1057, v1058, v1059, v1060);
  *&v1870 = __PAIR64__(LODWORD(v1851), LODWORD(v1869));
  v1063 = objc_msgSend_objectAtIndexedSubscript_(a3, v1061, 8, v1062);
  objc_msgSend_floatValue(v1063, v1064, v1065, v1066);
  LODWORD(v1851) = v1067;
  v1070 = objc_msgSend_objectAtIndexedSubscript_(a3, v1068, 9, v1069);
  objc_msgSend_floatValue(v1070, v1071, v1072, v1073);
  v1827 = v1074;
  v1077 = objc_msgSend_objectAtIndexedSubscript_(a3, v1075, 10, v1076);
  objc_msgSend_floatValue(v1077, v1078, v1079, v1080);
  v1083 = objc_msgSend_objectAtIndexedSubscript_(a3, v1081, 11, v1082);
  objc_msgSend_floatValue(v1083, v1084, v1085, v1086);
  *&v1852 = __PAIR64__(v1827, LODWORD(v1851));
  v1089 = objc_msgSend_objectAtIndexedSubscript_(a3, v1087, 12, v1088);
  objc_msgSend_floatValue(v1089, v1090, v1091, v1092);
  v1828 = v1093;
  v1096 = objc_msgSend_objectAtIndexedSubscript_(a3, v1094, 13, v1095);
  objc_msgSend_floatValue(v1096, v1097, v1098, v1099);
  v1802 = v1100;
  v1103 = objc_msgSend_objectAtIndexedSubscript_(a3, v1101, 14, v1102);
  objc_msgSend_floatValue(v1103, v1104, v1105, v1106);
  v1109 = objc_msgSend_objectAtIndexedSubscript_(a3, v1107, 15, v1108);
  objc_msgSend_floatValue(v1109, v1110, v1111, v1112);
  objc_msgSend_convertTransform_toNode_(self, v1113, a4, v1114, v1887, v1870, v1852, COERCE_DOUBLE(__PAIR64__(v1802, v1828)));
  LODWORD(v1116) = v1115;
  v1894[9] = objc_msgSend_numberWithFloat_(v1008, v1117, v1118, v1119, v1116);
  v1120 = MEMORY[0x1E696AD98];
  v1123 = objc_msgSend_objectAtIndexedSubscript_(a3, v1121, 0, v1122);
  objc_msgSend_floatValue(v1123, v1124, v1125, v1126);
  LODWORD(v1887) = v1127;
  v1130 = objc_msgSend_objectAtIndexedSubscript_(a3, v1128, 1, v1129);
  objc_msgSend_floatValue(v1130, v1131, v1132, v1133);
  LODWORD(v1870) = v1134;
  v1137 = objc_msgSend_objectAtIndexedSubscript_(a3, v1135, 2, v1136);
  objc_msgSend_floatValue(v1137, v1138, v1139, v1140);
  v1143 = objc_msgSend_objectAtIndexedSubscript_(a3, v1141, 3, v1142);
  objc_msgSend_floatValue(v1143, v1144, v1145, v1146);
  *&v1888 = __PAIR64__(LODWORD(v1870), LODWORD(v1887));
  v1149 = objc_msgSend_objectAtIndexedSubscript_(a3, v1147, 4, v1148);
  objc_msgSend_floatValue(v1149, v1150, v1151, v1152);
  LODWORD(v1870) = v1153;
  v1156 = objc_msgSend_objectAtIndexedSubscript_(a3, v1154, 5, v1155);
  objc_msgSend_floatValue(v1156, v1157, v1158, v1159);
  LODWORD(v1852) = v1160;
  v1163 = objc_msgSend_objectAtIndexedSubscript_(a3, v1161, 6, v1162);
  objc_msgSend_floatValue(v1163, v1164, v1165, v1166);
  v1169 = objc_msgSend_objectAtIndexedSubscript_(a3, v1167, 7, v1168);
  objc_msgSend_floatValue(v1169, v1170, v1171, v1172);
  *&v1871 = __PAIR64__(LODWORD(v1852), LODWORD(v1870));
  v1175 = objc_msgSend_objectAtIndexedSubscript_(a3, v1173, 8, v1174);
  objc_msgSend_floatValue(v1175, v1176, v1177, v1178);
  LODWORD(v1852) = v1179;
  v1182 = objc_msgSend_objectAtIndexedSubscript_(a3, v1180, 9, v1181);
  objc_msgSend_floatValue(v1182, v1183, v1184, v1185);
  v1829 = v1186;
  v1189 = objc_msgSend_objectAtIndexedSubscript_(a3, v1187, 10, v1188);
  objc_msgSend_floatValue(v1189, v1190, v1191, v1192);
  v1195 = objc_msgSend_objectAtIndexedSubscript_(a3, v1193, 11, v1194);
  objc_msgSend_floatValue(v1195, v1196, v1197, v1198);
  *&v1853 = __PAIR64__(v1829, LODWORD(v1852));
  v1201 = objc_msgSend_objectAtIndexedSubscript_(a3, v1199, 12, v1200);
  objc_msgSend_floatValue(v1201, v1202, v1203, v1204);
  v1830 = v1205;
  v1208 = objc_msgSend_objectAtIndexedSubscript_(a3, v1206, 13, v1207);
  objc_msgSend_floatValue(v1208, v1209, v1210, v1211);
  v1803 = v1212;
  v1215 = objc_msgSend_objectAtIndexedSubscript_(a3, v1213, 14, v1214);
  objc_msgSend_floatValue(v1215, v1216, v1217, v1218);
  v1221 = objc_msgSend_objectAtIndexedSubscript_(a3, v1219, 15, v1220);
  objc_msgSend_floatValue(v1221, v1222, v1223, v1224);
  objc_msgSend_convertTransform_toNode_(self, v1225, a4, v1226, v1888, v1871, v1853, COERCE_DOUBLE(__PAIR64__(v1803, v1830)));
  LODWORD(v1228) = v1227;
  v1894[10] = objc_msgSend_numberWithFloat_(v1120, v1229, v1230, v1231, v1228);
  v1232 = MEMORY[0x1E696AD98];
  v1235 = objc_msgSend_objectAtIndexedSubscript_(a3, v1233, 0, v1234);
  objc_msgSend_floatValue(v1235, v1236, v1237, v1238);
  LODWORD(v1888) = v1239;
  v1242 = objc_msgSend_objectAtIndexedSubscript_(a3, v1240, 1, v1241);
  objc_msgSend_floatValue(v1242, v1243, v1244, v1245);
  LODWORD(v1871) = v1246;
  v1249 = objc_msgSend_objectAtIndexedSubscript_(a3, v1247, 2, v1248);
  objc_msgSend_floatValue(v1249, v1250, v1251, v1252);
  v1255 = objc_msgSend_objectAtIndexedSubscript_(a3, v1253, 3, v1254);
  objc_msgSend_floatValue(v1255, v1256, v1257, v1258);
  *&v1889 = __PAIR64__(LODWORD(v1871), LODWORD(v1888));
  v1261 = objc_msgSend_objectAtIndexedSubscript_(a3, v1259, 4, v1260);
  objc_msgSend_floatValue(v1261, v1262, v1263, v1264);
  LODWORD(v1871) = v1265;
  v1268 = objc_msgSend_objectAtIndexedSubscript_(a3, v1266, 5, v1267);
  objc_msgSend_floatValue(v1268, v1269, v1270, v1271);
  LODWORD(v1853) = v1272;
  v1275 = objc_msgSend_objectAtIndexedSubscript_(a3, v1273, 6, v1274);
  objc_msgSend_floatValue(v1275, v1276, v1277, v1278);
  v1281 = objc_msgSend_objectAtIndexedSubscript_(a3, v1279, 7, v1280);
  objc_msgSend_floatValue(v1281, v1282, v1283, v1284);
  *&v1872 = __PAIR64__(LODWORD(v1853), LODWORD(v1871));
  v1287 = objc_msgSend_objectAtIndexedSubscript_(a3, v1285, 8, v1286);
  objc_msgSend_floatValue(v1287, v1288, v1289, v1290);
  LODWORD(v1853) = v1291;
  v1294 = objc_msgSend_objectAtIndexedSubscript_(a3, v1292, 9, v1293);
  objc_msgSend_floatValue(v1294, v1295, v1296, v1297);
  v1831 = v1298;
  v1301 = objc_msgSend_objectAtIndexedSubscript_(a3, v1299, 10, v1300);
  objc_msgSend_floatValue(v1301, v1302, v1303, v1304);
  v1307 = objc_msgSend_objectAtIndexedSubscript_(a3, v1305, 11, v1306);
  objc_msgSend_floatValue(v1307, v1308, v1309, v1310);
  *&v1854 = __PAIR64__(v1831, LODWORD(v1853));
  v1313 = objc_msgSend_objectAtIndexedSubscript_(a3, v1311, 12, v1312);
  objc_msgSend_floatValue(v1313, v1314, v1315, v1316);
  v1832 = v1317;
  v1320 = objc_msgSend_objectAtIndexedSubscript_(a3, v1318, 13, v1319);
  objc_msgSend_floatValue(v1320, v1321, v1322, v1323);
  v1804 = v1324;
  v1327 = objc_msgSend_objectAtIndexedSubscript_(a3, v1325, 14, v1326);
  objc_msgSend_floatValue(v1327, v1328, v1329, v1330);
  v1333 = objc_msgSend_objectAtIndexedSubscript_(a3, v1331, 15, v1332);
  objc_msgSend_floatValue(v1333, v1334, v1335, v1336);
  objc_msgSend_convertTransform_toNode_(self, v1337, a4, v1338, v1889, v1872, v1854, COERCE_DOUBLE(__PAIR64__(v1804, v1832)));
  LODWORD(v1340) = v1339;
  v1894[11] = objc_msgSend_numberWithFloat_(v1232, v1341, v1342, v1343, v1340);
  v1344 = MEMORY[0x1E696AD98];
  v1347 = objc_msgSend_objectAtIndexedSubscript_(a3, v1345, 0, v1346);
  objc_msgSend_floatValue(v1347, v1348, v1349, v1350);
  LODWORD(v1889) = v1351;
  v1354 = objc_msgSend_objectAtIndexedSubscript_(a3, v1352, 1, v1353);
  objc_msgSend_floatValue(v1354, v1355, v1356, v1357);
  LODWORD(v1872) = v1358;
  v1361 = objc_msgSend_objectAtIndexedSubscript_(a3, v1359, 2, v1360);
  objc_msgSend_floatValue(v1361, v1362, v1363, v1364);
  v1367 = objc_msgSend_objectAtIndexedSubscript_(a3, v1365, 3, v1366);
  objc_msgSend_floatValue(v1367, v1368, v1369, v1370);
  *&v1890 = __PAIR64__(LODWORD(v1872), LODWORD(v1889));
  v1373 = objc_msgSend_objectAtIndexedSubscript_(a3, v1371, 4, v1372);
  objc_msgSend_floatValue(v1373, v1374, v1375, v1376);
  LODWORD(v1872) = v1377;
  v1380 = objc_msgSend_objectAtIndexedSubscript_(a3, v1378, 5, v1379);
  objc_msgSend_floatValue(v1380, v1381, v1382, v1383);
  LODWORD(v1854) = v1384;
  v1387 = objc_msgSend_objectAtIndexedSubscript_(a3, v1385, 6, v1386);
  objc_msgSend_floatValue(v1387, v1388, v1389, v1390);
  v1393 = objc_msgSend_objectAtIndexedSubscript_(a3, v1391, 7, v1392);
  objc_msgSend_floatValue(v1393, v1394, v1395, v1396);
  *&v1873 = __PAIR64__(LODWORD(v1854), LODWORD(v1872));
  v1399 = objc_msgSend_objectAtIndexedSubscript_(a3, v1397, 8, v1398);
  objc_msgSend_floatValue(v1399, v1400, v1401, v1402);
  LODWORD(v1854) = v1403;
  v1406 = objc_msgSend_objectAtIndexedSubscript_(a3, v1404, 9, v1405);
  objc_msgSend_floatValue(v1406, v1407, v1408, v1409);
  v1833 = v1410;
  v1413 = objc_msgSend_objectAtIndexedSubscript_(a3, v1411, 10, v1412);
  objc_msgSend_floatValue(v1413, v1414, v1415, v1416);
  v1419 = objc_msgSend_objectAtIndexedSubscript_(a3, v1417, 11, v1418);
  objc_msgSend_floatValue(v1419, v1420, v1421, v1422);
  *&v1855 = __PAIR64__(v1833, LODWORD(v1854));
  v1425 = objc_msgSend_objectAtIndexedSubscript_(a3, v1423, 12, v1424);
  objc_msgSend_floatValue(v1425, v1426, v1427, v1428);
  v1834 = v1429;
  v1432 = objc_msgSend_objectAtIndexedSubscript_(a3, v1430, 13, v1431);
  objc_msgSend_floatValue(v1432, v1433, v1434, v1435);
  v1805 = v1436;
  v1439 = objc_msgSend_objectAtIndexedSubscript_(a3, v1437, 14, v1438);
  objc_msgSend_floatValue(v1439, v1440, v1441, v1442);
  v1445 = objc_msgSend_objectAtIndexedSubscript_(a3, v1443, 15, v1444);
  objc_msgSend_floatValue(v1445, v1446, v1447, v1448);
  objc_msgSend_convertTransform_toNode_(self, v1449, a4, v1450, v1890, v1873, v1855, COERCE_DOUBLE(__PAIR64__(v1805, v1834)));
  v1894[12] = objc_msgSend_numberWithFloat_(v1344, v1451, v1452, v1453, v1454);
  v1455 = MEMORY[0x1E696AD98];
  v1458 = objc_msgSend_objectAtIndexedSubscript_(a3, v1456, 0, v1457);
  objc_msgSend_floatValue(v1458, v1459, v1460, v1461);
  LODWORD(v1890) = v1462;
  v1465 = objc_msgSend_objectAtIndexedSubscript_(a3, v1463, 1, v1464);
  objc_msgSend_floatValue(v1465, v1466, v1467, v1468);
  LODWORD(v1873) = v1469;
  v1472 = objc_msgSend_objectAtIndexedSubscript_(a3, v1470, 2, v1471);
  objc_msgSend_floatValue(v1472, v1473, v1474, v1475);
  v1478 = objc_msgSend_objectAtIndexedSubscript_(a3, v1476, 3, v1477);
  objc_msgSend_floatValue(v1478, v1479, v1480, v1481);
  *&v1891 = __PAIR64__(LODWORD(v1873), LODWORD(v1890));
  v1484 = objc_msgSend_objectAtIndexedSubscript_(a3, v1482, 4, v1483);
  objc_msgSend_floatValue(v1484, v1485, v1486, v1487);
  LODWORD(v1873) = v1488;
  v1491 = objc_msgSend_objectAtIndexedSubscript_(a3, v1489, 5, v1490);
  objc_msgSend_floatValue(v1491, v1492, v1493, v1494);
  LODWORD(v1855) = v1495;
  v1498 = objc_msgSend_objectAtIndexedSubscript_(a3, v1496, 6, v1497);
  objc_msgSend_floatValue(v1498, v1499, v1500, v1501);
  v1504 = objc_msgSend_objectAtIndexedSubscript_(a3, v1502, 7, v1503);
  objc_msgSend_floatValue(v1504, v1505, v1506, v1507);
  *&v1874 = __PAIR64__(LODWORD(v1855), LODWORD(v1873));
  v1510 = objc_msgSend_objectAtIndexedSubscript_(a3, v1508, 8, v1509);
  objc_msgSend_floatValue(v1510, v1511, v1512, v1513);
  LODWORD(v1855) = v1514;
  v1517 = objc_msgSend_objectAtIndexedSubscript_(a3, v1515, 9, v1516);
  objc_msgSend_floatValue(v1517, v1518, v1519, v1520);
  v1835 = v1521;
  v1524 = objc_msgSend_objectAtIndexedSubscript_(a3, v1522, 10, v1523);
  objc_msgSend_floatValue(v1524, v1525, v1526, v1527);
  v1530 = objc_msgSend_objectAtIndexedSubscript_(a3, v1528, 11, v1529);
  objc_msgSend_floatValue(v1530, v1531, v1532, v1533);
  *&v1856 = __PAIR64__(v1835, LODWORD(v1855));
  v1536 = objc_msgSend_objectAtIndexedSubscript_(a3, v1534, 12, v1535);
  objc_msgSend_floatValue(v1536, v1537, v1538, v1539);
  v1836 = v1540;
  v1543 = objc_msgSend_objectAtIndexedSubscript_(a3, v1541, 13, v1542);
  objc_msgSend_floatValue(v1543, v1544, v1545, v1546);
  v1806 = v1547;
  v1550 = objc_msgSend_objectAtIndexedSubscript_(a3, v1548, 14, v1549);
  objc_msgSend_floatValue(v1550, v1551, v1552, v1553);
  v1556 = objc_msgSend_objectAtIndexedSubscript_(a3, v1554, 15, v1555);
  objc_msgSend_floatValue(v1556, v1557, v1558, v1559);
  objc_msgSend_convertTransform_toNode_(self, v1560, a4, v1561, v1891, v1874, v1856, COERCE_DOUBLE(__PAIR64__(v1806, v1836)));
  LODWORD(v1563) = v1562;
  v1894[13] = objc_msgSend_numberWithFloat_(v1455, v1564, v1565, v1566, v1563);
  v1567 = MEMORY[0x1E696AD98];
  v1570 = objc_msgSend_objectAtIndexedSubscript_(a3, v1568, 0, v1569);
  objc_msgSend_floatValue(v1570, v1571, v1572, v1573);
  LODWORD(v1891) = v1574;
  v1577 = objc_msgSend_objectAtIndexedSubscript_(a3, v1575, 1, v1576);
  objc_msgSend_floatValue(v1577, v1578, v1579, v1580);
  LODWORD(v1874) = v1581;
  v1584 = objc_msgSend_objectAtIndexedSubscript_(a3, v1582, 2, v1583);
  objc_msgSend_floatValue(v1584, v1585, v1586, v1587);
  v1590 = objc_msgSend_objectAtIndexedSubscript_(a3, v1588, 3, v1589);
  objc_msgSend_floatValue(v1590, v1591, v1592, v1593);
  *&v1892 = __PAIR64__(LODWORD(v1874), LODWORD(v1891));
  v1596 = objc_msgSend_objectAtIndexedSubscript_(a3, v1594, 4, v1595);
  objc_msgSend_floatValue(v1596, v1597, v1598, v1599);
  LODWORD(v1874) = v1600;
  v1603 = objc_msgSend_objectAtIndexedSubscript_(a3, v1601, 5, v1602);
  objc_msgSend_floatValue(v1603, v1604, v1605, v1606);
  LODWORD(v1856) = v1607;
  v1610 = objc_msgSend_objectAtIndexedSubscript_(a3, v1608, 6, v1609);
  objc_msgSend_floatValue(v1610, v1611, v1612, v1613);
  v1616 = objc_msgSend_objectAtIndexedSubscript_(a3, v1614, 7, v1615);
  objc_msgSend_floatValue(v1616, v1617, v1618, v1619);
  *&v1875 = __PAIR64__(LODWORD(v1856), LODWORD(v1874));
  v1622 = objc_msgSend_objectAtIndexedSubscript_(a3, v1620, 8, v1621);
  objc_msgSend_floatValue(v1622, v1623, v1624, v1625);
  LODWORD(v1856) = v1626;
  v1629 = objc_msgSend_objectAtIndexedSubscript_(a3, v1627, 9, v1628);
  objc_msgSend_floatValue(v1629, v1630, v1631, v1632);
  v1837 = v1633;
  v1636 = objc_msgSend_objectAtIndexedSubscript_(a3, v1634, 10, v1635);
  objc_msgSend_floatValue(v1636, v1637, v1638, v1639);
  v1642 = objc_msgSend_objectAtIndexedSubscript_(a3, v1640, 11, v1641);
  objc_msgSend_floatValue(v1642, v1643, v1644, v1645);
  *&v1857 = __PAIR64__(v1837, LODWORD(v1856));
  v1648 = objc_msgSend_objectAtIndexedSubscript_(a3, v1646, 12, v1647);
  objc_msgSend_floatValue(v1648, v1649, v1650, v1651);
  v1838 = v1652;
  v1655 = objc_msgSend_objectAtIndexedSubscript_(a3, v1653, 13, v1654);
  objc_msgSend_floatValue(v1655, v1656, v1657, v1658);
  v1807 = v1659;
  v1662 = objc_msgSend_objectAtIndexedSubscript_(a3, v1660, 14, v1661);
  objc_msgSend_floatValue(v1662, v1663, v1664, v1665);
  v1668 = objc_msgSend_objectAtIndexedSubscript_(a3, v1666, 15, v1667);
  objc_msgSend_floatValue(v1668, v1669, v1670, v1671);
  objc_msgSend_convertTransform_toNode_(self, v1672, a4, v1673, v1892, v1875, v1857, COERCE_DOUBLE(__PAIR64__(v1807, v1838)));
  LODWORD(v1675) = v1674;
  v1894[14] = objc_msgSend_numberWithFloat_(v1567, v1676, v1677, v1678, v1675);
  v1679 = MEMORY[0x1E696AD98];
  v1682 = objc_msgSend_objectAtIndexedSubscript_(a3, v1680, 0, v1681);
  objc_msgSend_floatValue(v1682, v1683, v1684, v1685);
  LODWORD(v1892) = v1686;
  v1689 = objc_msgSend_objectAtIndexedSubscript_(a3, v1687, 1, v1688);
  objc_msgSend_floatValue(v1689, v1690, v1691, v1692);
  LODWORD(v1875) = v1693;
  v1696 = objc_msgSend_objectAtIndexedSubscript_(a3, v1694, 2, v1695);
  objc_msgSend_floatValue(v1696, v1697, v1698, v1699);
  v1702 = objc_msgSend_objectAtIndexedSubscript_(a3, v1700, 3, v1701);
  objc_msgSend_floatValue(v1702, v1703, v1704, v1705);
  v1893 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1875), LODWORD(v1892)));
  v1708 = objc_msgSend_objectAtIndexedSubscript_(a3, v1706, 4, v1707);
  objc_msgSend_floatValue(v1708, v1709, v1710, v1711);
  LODWORD(v1875) = v1712;
  v1715 = objc_msgSend_objectAtIndexedSubscript_(a3, v1713, 5, v1714);
  objc_msgSend_floatValue(v1715, v1716, v1717, v1718);
  LODWORD(v1857) = v1719;
  v1722 = objc_msgSend_objectAtIndexedSubscript_(a3, v1720, 6, v1721);
  objc_msgSend_floatValue(v1722, v1723, v1724, v1725);
  v1728 = objc_msgSend_objectAtIndexedSubscript_(a3, v1726, 7, v1727);
  objc_msgSend_floatValue(v1728, v1729, v1730, v1731);
  v1876 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1857), LODWORD(v1875)));
  v1734 = objc_msgSend_objectAtIndexedSubscript_(a3, v1732, 8, v1733);
  objc_msgSend_floatValue(v1734, v1735, v1736, v1737);
  LODWORD(v1857) = v1738;
  v1741 = objc_msgSend_objectAtIndexedSubscript_(a3, v1739, 9, v1740);
  objc_msgSend_floatValue(v1741, v1742, v1743, v1744);
  v1839 = v1745;
  v1748 = objc_msgSend_objectAtIndexedSubscript_(a3, v1746, 10, v1747);
  objc_msgSend_floatValue(v1748, v1749, v1750, v1751);
  v1754 = objc_msgSend_objectAtIndexedSubscript_(a3, v1752, 11, v1753);
  objc_msgSend_floatValue(v1754, v1755, v1756, v1757);
  v1858 = COERCE_DOUBLE(__PAIR64__(v1839, LODWORD(v1857)));
  v1760 = objc_msgSend_objectAtIndexedSubscript_(a3, v1758, 12, v1759);
  objc_msgSend_floatValue(v1760, v1761, v1762, v1763);
  v1840 = v1764;
  v1767 = objc_msgSend_objectAtIndexedSubscript_(a3, v1765, 13, v1766);
  objc_msgSend_floatValue(v1767, v1768, v1769, v1770);
  v1808 = v1771;
  v1774 = objc_msgSend_objectAtIndexedSubscript_(a3, v1772, 14, v1773);
  objc_msgSend_floatValue(v1774, v1775, v1776, v1777);
  v1780 = objc_msgSend_objectAtIndexedSubscript_(a3, v1778, 15, v1779);
  objc_msgSend_floatValue(v1780, v1781, v1782, v1783);
  objc_msgSend_convertTransform_toNode_(self, v1784, a4, v1785, v1893, v1876, v1858, COERCE_DOUBLE(__PAIR64__(v1808, v1840)));
  LODWORD(v1787) = v1786;
  v1894[15] = objc_msgSend_numberWithFloat_(v1679, v1788, v1789, v1790, v1787);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1791, v1894, 16);
}

- (id)convertTransformValue:(id)a3 fromNode:(id)a4
{
  v1894[16] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v1877 = v12;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v1859 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  v28 = objc_msgSend_objectAtIndexedSubscript_(a3, v26, 3, v27);
  objc_msgSend_floatValue(v28, v29, v30, v31);
  *&v1878 = __PAIR64__(v1859, v1877);
  v34 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 4, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v1860 = v38;
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v39, 5, v40);
  objc_msgSend_floatValue(v41, v42, v43, v44);
  v1841 = v45;
  v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, 6, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  v54 = objc_msgSend_objectAtIndexedSubscript_(a3, v52, 7, v53);
  objc_msgSend_floatValue(v54, v55, v56, v57);
  *&v1861 = __PAIR64__(v1841, v1860);
  v60 = objc_msgSend_objectAtIndexedSubscript_(a3, v58, 8, v59);
  objc_msgSend_floatValue(v60, v61, v62, v63);
  v1842 = v64;
  v67 = objc_msgSend_objectAtIndexedSubscript_(a3, v65, 9, v66);
  objc_msgSend_floatValue(v67, v68, v69, v70);
  v1809 = v71;
  v74 = objc_msgSend_objectAtIndexedSubscript_(a3, v72, 10, v73);
  objc_msgSend_floatValue(v74, v75, v76, v77);
  v80 = objc_msgSend_objectAtIndexedSubscript_(a3, v78, 11, v79);
  objc_msgSend_floatValue(v80, v81, v82, v83);
  *&v1843 = __PAIR64__(v1809, v1842);
  v86 = objc_msgSend_objectAtIndexedSubscript_(a3, v84, 12, v85);
  objc_msgSend_floatValue(v86, v87, v88, v89);
  v1810 = v90;
  v93 = objc_msgSend_objectAtIndexedSubscript_(a3, v91, 13, v92);
  objc_msgSend_floatValue(v93, v94, v95, v96);
  v1793 = v97;
  v100 = objc_msgSend_objectAtIndexedSubscript_(a3, v98, 14, v99);
  objc_msgSend_floatValue(v100, v101, v102, v103);
  v106 = objc_msgSend_objectAtIndexedSubscript_(a3, v104, 15, v105);
  objc_msgSend_floatValue(v106, v107, v108, v109);
  objc_msgSend_convertTransform_fromNode_(self, v110, a4, v111, v1878, v1861, v1843, COERCE_DOUBLE(__PAIR64__(v1793, v1810)));
  v1894[0] = objc_msgSend_numberWithFloat_(v7, v112, v113, v114);
  v115 = MEMORY[0x1E696AD98];
  v118 = objc_msgSend_objectAtIndexedSubscript_(a3, v116, 0, v117);
  objc_msgSend_floatValue(v118, v119, v120, v121);
  LODWORD(v1878) = v122;
  v125 = objc_msgSend_objectAtIndexedSubscript_(a3, v123, 1, v124);
  objc_msgSend_floatValue(v125, v126, v127, v128);
  LODWORD(v1861) = v129;
  v132 = objc_msgSend_objectAtIndexedSubscript_(a3, v130, 2, v131);
  objc_msgSend_floatValue(v132, v133, v134, v135);
  v138 = objc_msgSend_objectAtIndexedSubscript_(a3, v136, 3, v137);
  objc_msgSend_floatValue(v138, v139, v140, v141);
  *&v1879 = __PAIR64__(LODWORD(v1861), LODWORD(v1878));
  v144 = objc_msgSend_objectAtIndexedSubscript_(a3, v142, 4, v143);
  objc_msgSend_floatValue(v144, v145, v146, v147);
  LODWORD(v1861) = v148;
  v151 = objc_msgSend_objectAtIndexedSubscript_(a3, v149, 5, v150);
  objc_msgSend_floatValue(v151, v152, v153, v154);
  LODWORD(v1843) = v155;
  v158 = objc_msgSend_objectAtIndexedSubscript_(a3, v156, 6, v157);
  objc_msgSend_floatValue(v158, v159, v160, v161);
  v164 = objc_msgSend_objectAtIndexedSubscript_(a3, v162, 7, v163);
  objc_msgSend_floatValue(v164, v165, v166, v167);
  *&v1862 = __PAIR64__(LODWORD(v1843), LODWORD(v1861));
  v170 = objc_msgSend_objectAtIndexedSubscript_(a3, v168, 8, v169);
  objc_msgSend_floatValue(v170, v171, v172, v173);
  LODWORD(v1843) = v174;
  v177 = objc_msgSend_objectAtIndexedSubscript_(a3, v175, 9, v176);
  objc_msgSend_floatValue(v177, v178, v179, v180);
  v1811 = v181;
  v184 = objc_msgSend_objectAtIndexedSubscript_(a3, v182, 10, v183);
  objc_msgSend_floatValue(v184, v185, v186, v187);
  v190 = objc_msgSend_objectAtIndexedSubscript_(a3, v188, 11, v189);
  objc_msgSend_floatValue(v190, v191, v192, v193);
  *&v1844 = __PAIR64__(v1811, LODWORD(v1843));
  v196 = objc_msgSend_objectAtIndexedSubscript_(a3, v194, 12, v195);
  objc_msgSend_floatValue(v196, v197, v198, v199);
  v1812 = v200;
  v203 = objc_msgSend_objectAtIndexedSubscript_(a3, v201, 13, v202);
  objc_msgSend_floatValue(v203, v204, v205, v206);
  v1794 = v207;
  v210 = objc_msgSend_objectAtIndexedSubscript_(a3, v208, 14, v209);
  objc_msgSend_floatValue(v210, v211, v212, v213);
  v216 = objc_msgSend_objectAtIndexedSubscript_(a3, v214, 15, v215);
  objc_msgSend_floatValue(v216, v217, v218, v219);
  objc_msgSend_convertTransform_fromNode_(self, v220, a4, v221, v1879, v1862, v1844, COERCE_DOUBLE(__PAIR64__(v1794, v1812)));
  LODWORD(v222) = HIDWORD(v222);
  v1894[1] = objc_msgSend_numberWithFloat_(v115, v223, v224, v225, v222);
  v226 = MEMORY[0x1E696AD98];
  v229 = objc_msgSend_objectAtIndexedSubscript_(a3, v227, 0, v228);
  objc_msgSend_floatValue(v229, v230, v231, v232);
  LODWORD(v1879) = v233;
  v236 = objc_msgSend_objectAtIndexedSubscript_(a3, v234, 1, v235);
  objc_msgSend_floatValue(v236, v237, v238, v239);
  LODWORD(v1862) = v240;
  v243 = objc_msgSend_objectAtIndexedSubscript_(a3, v241, 2, v242);
  objc_msgSend_floatValue(v243, v244, v245, v246);
  v249 = objc_msgSend_objectAtIndexedSubscript_(a3, v247, 3, v248);
  objc_msgSend_floatValue(v249, v250, v251, v252);
  *&v1880 = __PAIR64__(LODWORD(v1862), LODWORD(v1879));
  v255 = objc_msgSend_objectAtIndexedSubscript_(a3, v253, 4, v254);
  objc_msgSend_floatValue(v255, v256, v257, v258);
  LODWORD(v1862) = v259;
  v262 = objc_msgSend_objectAtIndexedSubscript_(a3, v260, 5, v261);
  objc_msgSend_floatValue(v262, v263, v264, v265);
  LODWORD(v1844) = v266;
  v269 = objc_msgSend_objectAtIndexedSubscript_(a3, v267, 6, v268);
  objc_msgSend_floatValue(v269, v270, v271, v272);
  v275 = objc_msgSend_objectAtIndexedSubscript_(a3, v273, 7, v274);
  objc_msgSend_floatValue(v275, v276, v277, v278);
  *&v1863 = __PAIR64__(LODWORD(v1844), LODWORD(v1862));
  v281 = objc_msgSend_objectAtIndexedSubscript_(a3, v279, 8, v280);
  objc_msgSend_floatValue(v281, v282, v283, v284);
  LODWORD(v1844) = v285;
  v288 = objc_msgSend_objectAtIndexedSubscript_(a3, v286, 9, v287);
  objc_msgSend_floatValue(v288, v289, v290, v291);
  v1813 = v292;
  v295 = objc_msgSend_objectAtIndexedSubscript_(a3, v293, 10, v294);
  objc_msgSend_floatValue(v295, v296, v297, v298);
  v301 = objc_msgSend_objectAtIndexedSubscript_(a3, v299, 11, v300);
  objc_msgSend_floatValue(v301, v302, v303, v304);
  *&v1845 = __PAIR64__(v1813, LODWORD(v1844));
  v307 = objc_msgSend_objectAtIndexedSubscript_(a3, v305, 12, v306);
  objc_msgSend_floatValue(v307, v308, v309, v310);
  v1814 = v311;
  v314 = objc_msgSend_objectAtIndexedSubscript_(a3, v312, 13, v313);
  objc_msgSend_floatValue(v314, v315, v316, v317);
  v1795 = v318;
  v321 = objc_msgSend_objectAtIndexedSubscript_(a3, v319, 14, v320);
  objc_msgSend_floatValue(v321, v322, v323, v324);
  v327 = objc_msgSend_objectAtIndexedSubscript_(a3, v325, 15, v326);
  objc_msgSend_floatValue(v327, v328, v329, v330);
  objc_msgSend_convertTransform_fromNode_(self, v331, a4, v332, v1880, v1863, v1845, COERCE_DOUBLE(__PAIR64__(v1795, v1814)));
  LODWORD(v334) = v333;
  v1894[2] = objc_msgSend_numberWithFloat_(v226, v335, v336, v337, v334);
  v338 = MEMORY[0x1E696AD98];
  v341 = objc_msgSend_objectAtIndexedSubscript_(a3, v339, 0, v340);
  objc_msgSend_floatValue(v341, v342, v343, v344);
  LODWORD(v1880) = v345;
  v348 = objc_msgSend_objectAtIndexedSubscript_(a3, v346, 1, v347);
  objc_msgSend_floatValue(v348, v349, v350, v351);
  LODWORD(v1863) = v352;
  v355 = objc_msgSend_objectAtIndexedSubscript_(a3, v353, 2, v354);
  objc_msgSend_floatValue(v355, v356, v357, v358);
  v361 = objc_msgSend_objectAtIndexedSubscript_(a3, v359, 3, v360);
  objc_msgSend_floatValue(v361, v362, v363, v364);
  *&v1881 = __PAIR64__(LODWORD(v1863), LODWORD(v1880));
  v367 = objc_msgSend_objectAtIndexedSubscript_(a3, v365, 4, v366);
  objc_msgSend_floatValue(v367, v368, v369, v370);
  LODWORD(v1863) = v371;
  v374 = objc_msgSend_objectAtIndexedSubscript_(a3, v372, 5, v373);
  objc_msgSend_floatValue(v374, v375, v376, v377);
  LODWORD(v1845) = v378;
  v381 = objc_msgSend_objectAtIndexedSubscript_(a3, v379, 6, v380);
  objc_msgSend_floatValue(v381, v382, v383, v384);
  v387 = objc_msgSend_objectAtIndexedSubscript_(a3, v385, 7, v386);
  objc_msgSend_floatValue(v387, v388, v389, v390);
  *&v1864 = __PAIR64__(LODWORD(v1845), LODWORD(v1863));
  v393 = objc_msgSend_objectAtIndexedSubscript_(a3, v391, 8, v392);
  objc_msgSend_floatValue(v393, v394, v395, v396);
  LODWORD(v1845) = v397;
  v400 = objc_msgSend_objectAtIndexedSubscript_(a3, v398, 9, v399);
  objc_msgSend_floatValue(v400, v401, v402, v403);
  v1815 = v404;
  v407 = objc_msgSend_objectAtIndexedSubscript_(a3, v405, 10, v406);
  objc_msgSend_floatValue(v407, v408, v409, v410);
  v413 = objc_msgSend_objectAtIndexedSubscript_(a3, v411, 11, v412);
  objc_msgSend_floatValue(v413, v414, v415, v416);
  *&v1846 = __PAIR64__(v1815, LODWORD(v1845));
  v419 = objc_msgSend_objectAtIndexedSubscript_(a3, v417, 12, v418);
  objc_msgSend_floatValue(v419, v420, v421, v422);
  v1816 = v423;
  v426 = objc_msgSend_objectAtIndexedSubscript_(a3, v424, 13, v425);
  objc_msgSend_floatValue(v426, v427, v428, v429);
  v1796 = v430;
  v433 = objc_msgSend_objectAtIndexedSubscript_(a3, v431, 14, v432);
  objc_msgSend_floatValue(v433, v434, v435, v436);
  v439 = objc_msgSend_objectAtIndexedSubscript_(a3, v437, 15, v438);
  objc_msgSend_floatValue(v439, v440, v441, v442);
  objc_msgSend_convertTransform_fromNode_(self, v443, a4, v444, v1881, v1864, v1846, COERCE_DOUBLE(__PAIR64__(v1796, v1816)));
  LODWORD(v446) = v445;
  v1894[3] = objc_msgSend_numberWithFloat_(v338, v447, v448, v449, v446);
  v450 = MEMORY[0x1E696AD98];
  v453 = objc_msgSend_objectAtIndexedSubscript_(a3, v451, 0, v452);
  objc_msgSend_floatValue(v453, v454, v455, v456);
  LODWORD(v1881) = v457;
  v460 = objc_msgSend_objectAtIndexedSubscript_(a3, v458, 1, v459);
  objc_msgSend_floatValue(v460, v461, v462, v463);
  LODWORD(v1864) = v464;
  v467 = objc_msgSend_objectAtIndexedSubscript_(a3, v465, 2, v466);
  objc_msgSend_floatValue(v467, v468, v469, v470);
  v473 = objc_msgSend_objectAtIndexedSubscript_(a3, v471, 3, v472);
  objc_msgSend_floatValue(v473, v474, v475, v476);
  *&v1882 = __PAIR64__(LODWORD(v1864), LODWORD(v1881));
  v479 = objc_msgSend_objectAtIndexedSubscript_(a3, v477, 4, v478);
  objc_msgSend_floatValue(v479, v480, v481, v482);
  LODWORD(v1864) = v483;
  v486 = objc_msgSend_objectAtIndexedSubscript_(a3, v484, 5, v485);
  objc_msgSend_floatValue(v486, v487, v488, v489);
  LODWORD(v1846) = v490;
  v493 = objc_msgSend_objectAtIndexedSubscript_(a3, v491, 6, v492);
  objc_msgSend_floatValue(v493, v494, v495, v496);
  v499 = objc_msgSend_objectAtIndexedSubscript_(a3, v497, 7, v498);
  objc_msgSend_floatValue(v499, v500, v501, v502);
  *&v1865 = __PAIR64__(LODWORD(v1846), LODWORD(v1864));
  v505 = objc_msgSend_objectAtIndexedSubscript_(a3, v503, 8, v504);
  objc_msgSend_floatValue(v505, v506, v507, v508);
  LODWORD(v1846) = v509;
  v512 = objc_msgSend_objectAtIndexedSubscript_(a3, v510, 9, v511);
  objc_msgSend_floatValue(v512, v513, v514, v515);
  v1817 = v516;
  v519 = objc_msgSend_objectAtIndexedSubscript_(a3, v517, 10, v518);
  objc_msgSend_floatValue(v519, v520, v521, v522);
  v525 = objc_msgSend_objectAtIndexedSubscript_(a3, v523, 11, v524);
  objc_msgSend_floatValue(v525, v526, v527, v528);
  *&v1847 = __PAIR64__(v1817, LODWORD(v1846));
  v531 = objc_msgSend_objectAtIndexedSubscript_(a3, v529, 12, v530);
  objc_msgSend_floatValue(v531, v532, v533, v534);
  v1818 = v535;
  v538 = objc_msgSend_objectAtIndexedSubscript_(a3, v536, 13, v537);
  objc_msgSend_floatValue(v538, v539, v540, v541);
  v1797 = v542;
  v545 = objc_msgSend_objectAtIndexedSubscript_(a3, v543, 14, v544);
  objc_msgSend_floatValue(v545, v546, v547, v548);
  v551 = objc_msgSend_objectAtIndexedSubscript_(a3, v549, 15, v550);
  objc_msgSend_floatValue(v551, v552, v553, v554);
  objc_msgSend_convertTransform_fromNode_(self, v555, a4, v556, v1882, v1865, v1847, COERCE_DOUBLE(__PAIR64__(v1797, v1818)));
  v1894[4] = objc_msgSend_numberWithFloat_(v450, v557, v558, v559, v560);
  v561 = MEMORY[0x1E696AD98];
  v564 = objc_msgSend_objectAtIndexedSubscript_(a3, v562, 0, v563);
  objc_msgSend_floatValue(v564, v565, v566, v567);
  LODWORD(v1882) = v568;
  v571 = objc_msgSend_objectAtIndexedSubscript_(a3, v569, 1, v570);
  objc_msgSend_floatValue(v571, v572, v573, v574);
  LODWORD(v1865) = v575;
  v578 = objc_msgSend_objectAtIndexedSubscript_(a3, v576, 2, v577);
  objc_msgSend_floatValue(v578, v579, v580, v581);
  v584 = objc_msgSend_objectAtIndexedSubscript_(a3, v582, 3, v583);
  objc_msgSend_floatValue(v584, v585, v586, v587);
  *&v1883 = __PAIR64__(LODWORD(v1865), LODWORD(v1882));
  v590 = objc_msgSend_objectAtIndexedSubscript_(a3, v588, 4, v589);
  objc_msgSend_floatValue(v590, v591, v592, v593);
  LODWORD(v1865) = v594;
  v597 = objc_msgSend_objectAtIndexedSubscript_(a3, v595, 5, v596);
  objc_msgSend_floatValue(v597, v598, v599, v600);
  LODWORD(v1847) = v601;
  v604 = objc_msgSend_objectAtIndexedSubscript_(a3, v602, 6, v603);
  objc_msgSend_floatValue(v604, v605, v606, v607);
  v610 = objc_msgSend_objectAtIndexedSubscript_(a3, v608, 7, v609);
  objc_msgSend_floatValue(v610, v611, v612, v613);
  *&v1866 = __PAIR64__(LODWORD(v1847), LODWORD(v1865));
  v616 = objc_msgSend_objectAtIndexedSubscript_(a3, v614, 8, v615);
  objc_msgSend_floatValue(v616, v617, v618, v619);
  LODWORD(v1847) = v620;
  v623 = objc_msgSend_objectAtIndexedSubscript_(a3, v621, 9, v622);
  objc_msgSend_floatValue(v623, v624, v625, v626);
  v1819 = v627;
  v630 = objc_msgSend_objectAtIndexedSubscript_(a3, v628, 10, v629);
  objc_msgSend_floatValue(v630, v631, v632, v633);
  v636 = objc_msgSend_objectAtIndexedSubscript_(a3, v634, 11, v635);
  objc_msgSend_floatValue(v636, v637, v638, v639);
  *&v1848 = __PAIR64__(v1819, LODWORD(v1847));
  v642 = objc_msgSend_objectAtIndexedSubscript_(a3, v640, 12, v641);
  objc_msgSend_floatValue(v642, v643, v644, v645);
  v1820 = v646;
  v649 = objc_msgSend_objectAtIndexedSubscript_(a3, v647, 13, v648);
  objc_msgSend_floatValue(v649, v650, v651, v652);
  v1798 = v653;
  v656 = objc_msgSend_objectAtIndexedSubscript_(a3, v654, 14, v655);
  objc_msgSend_floatValue(v656, v657, v658, v659);
  v662 = objc_msgSend_objectAtIndexedSubscript_(a3, v660, 15, v661);
  objc_msgSend_floatValue(v662, v663, v664, v665);
  objc_msgSend_convertTransform_fromNode_(self, v666, a4, v667, v1883, v1866, v1848, COERCE_DOUBLE(__PAIR64__(v1798, v1820)));
  LODWORD(v669) = v668;
  v1894[5] = objc_msgSend_numberWithFloat_(v561, v670, v671, v672, v669);
  v673 = MEMORY[0x1E696AD98];
  v676 = objc_msgSend_objectAtIndexedSubscript_(a3, v674, 0, v675);
  objc_msgSend_floatValue(v676, v677, v678, v679);
  LODWORD(v1883) = v680;
  v683 = objc_msgSend_objectAtIndexedSubscript_(a3, v681, 1, v682);
  objc_msgSend_floatValue(v683, v684, v685, v686);
  LODWORD(v1866) = v687;
  v690 = objc_msgSend_objectAtIndexedSubscript_(a3, v688, 2, v689);
  objc_msgSend_floatValue(v690, v691, v692, v693);
  v696 = objc_msgSend_objectAtIndexedSubscript_(a3, v694, 3, v695);
  objc_msgSend_floatValue(v696, v697, v698, v699);
  *&v1884 = __PAIR64__(LODWORD(v1866), LODWORD(v1883));
  v702 = objc_msgSend_objectAtIndexedSubscript_(a3, v700, 4, v701);
  objc_msgSend_floatValue(v702, v703, v704, v705);
  LODWORD(v1866) = v706;
  v709 = objc_msgSend_objectAtIndexedSubscript_(a3, v707, 5, v708);
  objc_msgSend_floatValue(v709, v710, v711, v712);
  LODWORD(v1848) = v713;
  v716 = objc_msgSend_objectAtIndexedSubscript_(a3, v714, 6, v715);
  objc_msgSend_floatValue(v716, v717, v718, v719);
  v722 = objc_msgSend_objectAtIndexedSubscript_(a3, v720, 7, v721);
  objc_msgSend_floatValue(v722, v723, v724, v725);
  *&v1867 = __PAIR64__(LODWORD(v1848), LODWORD(v1866));
  v728 = objc_msgSend_objectAtIndexedSubscript_(a3, v726, 8, v727);
  objc_msgSend_floatValue(v728, v729, v730, v731);
  LODWORD(v1848) = v732;
  v735 = objc_msgSend_objectAtIndexedSubscript_(a3, v733, 9, v734);
  objc_msgSend_floatValue(v735, v736, v737, v738);
  v1821 = v739;
  v742 = objc_msgSend_objectAtIndexedSubscript_(a3, v740, 10, v741);
  objc_msgSend_floatValue(v742, v743, v744, v745);
  v748 = objc_msgSend_objectAtIndexedSubscript_(a3, v746, 11, v747);
  objc_msgSend_floatValue(v748, v749, v750, v751);
  *&v1849 = __PAIR64__(v1821, LODWORD(v1848));
  v754 = objc_msgSend_objectAtIndexedSubscript_(a3, v752, 12, v753);
  objc_msgSend_floatValue(v754, v755, v756, v757);
  v1822 = v758;
  v761 = objc_msgSend_objectAtIndexedSubscript_(a3, v759, 13, v760);
  objc_msgSend_floatValue(v761, v762, v763, v764);
  v1799 = v765;
  v768 = objc_msgSend_objectAtIndexedSubscript_(a3, v766, 14, v767);
  objc_msgSend_floatValue(v768, v769, v770, v771);
  v774 = objc_msgSend_objectAtIndexedSubscript_(a3, v772, 15, v773);
  objc_msgSend_floatValue(v774, v775, v776, v777);
  objc_msgSend_convertTransform_fromNode_(self, v778, a4, v779, v1884, v1867, v1849, COERCE_DOUBLE(__PAIR64__(v1799, v1822)));
  LODWORD(v781) = v780;
  v1894[6] = objc_msgSend_numberWithFloat_(v673, v782, v783, v784, v781);
  v785 = MEMORY[0x1E696AD98];
  v788 = objc_msgSend_objectAtIndexedSubscript_(a3, v786, 0, v787);
  objc_msgSend_floatValue(v788, v789, v790, v791);
  LODWORD(v1884) = v792;
  v795 = objc_msgSend_objectAtIndexedSubscript_(a3, v793, 1, v794);
  objc_msgSend_floatValue(v795, v796, v797, v798);
  LODWORD(v1867) = v799;
  v802 = objc_msgSend_objectAtIndexedSubscript_(a3, v800, 2, v801);
  objc_msgSend_floatValue(v802, v803, v804, v805);
  v808 = objc_msgSend_objectAtIndexedSubscript_(a3, v806, 3, v807);
  objc_msgSend_floatValue(v808, v809, v810, v811);
  *&v1885 = __PAIR64__(LODWORD(v1867), LODWORD(v1884));
  v814 = objc_msgSend_objectAtIndexedSubscript_(a3, v812, 4, v813);
  objc_msgSend_floatValue(v814, v815, v816, v817);
  LODWORD(v1867) = v818;
  v821 = objc_msgSend_objectAtIndexedSubscript_(a3, v819, 5, v820);
  objc_msgSend_floatValue(v821, v822, v823, v824);
  LODWORD(v1849) = v825;
  v828 = objc_msgSend_objectAtIndexedSubscript_(a3, v826, 6, v827);
  objc_msgSend_floatValue(v828, v829, v830, v831);
  v834 = objc_msgSend_objectAtIndexedSubscript_(a3, v832, 7, v833);
  objc_msgSend_floatValue(v834, v835, v836, v837);
  *&v1868 = __PAIR64__(LODWORD(v1849), LODWORD(v1867));
  v840 = objc_msgSend_objectAtIndexedSubscript_(a3, v838, 8, v839);
  objc_msgSend_floatValue(v840, v841, v842, v843);
  LODWORD(v1849) = v844;
  v847 = objc_msgSend_objectAtIndexedSubscript_(a3, v845, 9, v846);
  objc_msgSend_floatValue(v847, v848, v849, v850);
  v1823 = v851;
  v854 = objc_msgSend_objectAtIndexedSubscript_(a3, v852, 10, v853);
  objc_msgSend_floatValue(v854, v855, v856, v857);
  v860 = objc_msgSend_objectAtIndexedSubscript_(a3, v858, 11, v859);
  objc_msgSend_floatValue(v860, v861, v862, v863);
  *&v1850 = __PAIR64__(v1823, LODWORD(v1849));
  v866 = objc_msgSend_objectAtIndexedSubscript_(a3, v864, 12, v865);
  objc_msgSend_floatValue(v866, v867, v868, v869);
  v1824 = v870;
  v873 = objc_msgSend_objectAtIndexedSubscript_(a3, v871, 13, v872);
  objc_msgSend_floatValue(v873, v874, v875, v876);
  v1800 = v877;
  v880 = objc_msgSend_objectAtIndexedSubscript_(a3, v878, 14, v879);
  objc_msgSend_floatValue(v880, v881, v882, v883);
  v886 = objc_msgSend_objectAtIndexedSubscript_(a3, v884, 15, v885);
  objc_msgSend_floatValue(v886, v887, v888, v889);
  objc_msgSend_convertTransform_fromNode_(self, v890, a4, v891, v1885, v1868, v1850, COERCE_DOUBLE(__PAIR64__(v1800, v1824)));
  LODWORD(v893) = v892;
  v1894[7] = objc_msgSend_numberWithFloat_(v785, v894, v895, v896, v893);
  v897 = MEMORY[0x1E696AD98];
  v900 = objc_msgSend_objectAtIndexedSubscript_(a3, v898, 0, v899);
  objc_msgSend_floatValue(v900, v901, v902, v903);
  LODWORD(v1885) = v904;
  v907 = objc_msgSend_objectAtIndexedSubscript_(a3, v905, 1, v906);
  objc_msgSend_floatValue(v907, v908, v909, v910);
  LODWORD(v1868) = v911;
  v914 = objc_msgSend_objectAtIndexedSubscript_(a3, v912, 2, v913);
  objc_msgSend_floatValue(v914, v915, v916, v917);
  v920 = objc_msgSend_objectAtIndexedSubscript_(a3, v918, 3, v919);
  objc_msgSend_floatValue(v920, v921, v922, v923);
  *&v1886 = __PAIR64__(LODWORD(v1868), LODWORD(v1885));
  v926 = objc_msgSend_objectAtIndexedSubscript_(a3, v924, 4, v925);
  objc_msgSend_floatValue(v926, v927, v928, v929);
  LODWORD(v1868) = v930;
  v933 = objc_msgSend_objectAtIndexedSubscript_(a3, v931, 5, v932);
  objc_msgSend_floatValue(v933, v934, v935, v936);
  LODWORD(v1850) = v937;
  v940 = objc_msgSend_objectAtIndexedSubscript_(a3, v938, 6, v939);
  objc_msgSend_floatValue(v940, v941, v942, v943);
  v946 = objc_msgSend_objectAtIndexedSubscript_(a3, v944, 7, v945);
  objc_msgSend_floatValue(v946, v947, v948, v949);
  *&v1869 = __PAIR64__(LODWORD(v1850), LODWORD(v1868));
  v952 = objc_msgSend_objectAtIndexedSubscript_(a3, v950, 8, v951);
  objc_msgSend_floatValue(v952, v953, v954, v955);
  LODWORD(v1850) = v956;
  v959 = objc_msgSend_objectAtIndexedSubscript_(a3, v957, 9, v958);
  objc_msgSend_floatValue(v959, v960, v961, v962);
  v1825 = v963;
  v966 = objc_msgSend_objectAtIndexedSubscript_(a3, v964, 10, v965);
  objc_msgSend_floatValue(v966, v967, v968, v969);
  v972 = objc_msgSend_objectAtIndexedSubscript_(a3, v970, 11, v971);
  objc_msgSend_floatValue(v972, v973, v974, v975);
  *&v1851 = __PAIR64__(v1825, LODWORD(v1850));
  v978 = objc_msgSend_objectAtIndexedSubscript_(a3, v976, 12, v977);
  objc_msgSend_floatValue(v978, v979, v980, v981);
  v1826 = v982;
  v985 = objc_msgSend_objectAtIndexedSubscript_(a3, v983, 13, v984);
  objc_msgSend_floatValue(v985, v986, v987, v988);
  v1801 = v989;
  v992 = objc_msgSend_objectAtIndexedSubscript_(a3, v990, 14, v991);
  objc_msgSend_floatValue(v992, v993, v994, v995);
  v998 = objc_msgSend_objectAtIndexedSubscript_(a3, v996, 15, v997);
  objc_msgSend_floatValue(v998, v999, v1000, v1001);
  objc_msgSend_convertTransform_fromNode_(self, v1002, a4, v1003, v1886, v1869, v1851, COERCE_DOUBLE(__PAIR64__(v1801, v1826)));
  v1894[8] = objc_msgSend_numberWithFloat_(v897, v1004, v1005, v1006, v1007);
  v1008 = MEMORY[0x1E696AD98];
  v1011 = objc_msgSend_objectAtIndexedSubscript_(a3, v1009, 0, v1010);
  objc_msgSend_floatValue(v1011, v1012, v1013, v1014);
  LODWORD(v1886) = v1015;
  v1018 = objc_msgSend_objectAtIndexedSubscript_(a3, v1016, 1, v1017);
  objc_msgSend_floatValue(v1018, v1019, v1020, v1021);
  LODWORD(v1869) = v1022;
  v1025 = objc_msgSend_objectAtIndexedSubscript_(a3, v1023, 2, v1024);
  objc_msgSend_floatValue(v1025, v1026, v1027, v1028);
  v1031 = objc_msgSend_objectAtIndexedSubscript_(a3, v1029, 3, v1030);
  objc_msgSend_floatValue(v1031, v1032, v1033, v1034);
  *&v1887 = __PAIR64__(LODWORD(v1869), LODWORD(v1886));
  v1037 = objc_msgSend_objectAtIndexedSubscript_(a3, v1035, 4, v1036);
  objc_msgSend_floatValue(v1037, v1038, v1039, v1040);
  LODWORD(v1869) = v1041;
  v1044 = objc_msgSend_objectAtIndexedSubscript_(a3, v1042, 5, v1043);
  objc_msgSend_floatValue(v1044, v1045, v1046, v1047);
  LODWORD(v1851) = v1048;
  v1051 = objc_msgSend_objectAtIndexedSubscript_(a3, v1049, 6, v1050);
  objc_msgSend_floatValue(v1051, v1052, v1053, v1054);
  v1057 = objc_msgSend_objectAtIndexedSubscript_(a3, v1055, 7, v1056);
  objc_msgSend_floatValue(v1057, v1058, v1059, v1060);
  *&v1870 = __PAIR64__(LODWORD(v1851), LODWORD(v1869));
  v1063 = objc_msgSend_objectAtIndexedSubscript_(a3, v1061, 8, v1062);
  objc_msgSend_floatValue(v1063, v1064, v1065, v1066);
  LODWORD(v1851) = v1067;
  v1070 = objc_msgSend_objectAtIndexedSubscript_(a3, v1068, 9, v1069);
  objc_msgSend_floatValue(v1070, v1071, v1072, v1073);
  v1827 = v1074;
  v1077 = objc_msgSend_objectAtIndexedSubscript_(a3, v1075, 10, v1076);
  objc_msgSend_floatValue(v1077, v1078, v1079, v1080);
  v1083 = objc_msgSend_objectAtIndexedSubscript_(a3, v1081, 11, v1082);
  objc_msgSend_floatValue(v1083, v1084, v1085, v1086);
  *&v1852 = __PAIR64__(v1827, LODWORD(v1851));
  v1089 = objc_msgSend_objectAtIndexedSubscript_(a3, v1087, 12, v1088);
  objc_msgSend_floatValue(v1089, v1090, v1091, v1092);
  v1828 = v1093;
  v1096 = objc_msgSend_objectAtIndexedSubscript_(a3, v1094, 13, v1095);
  objc_msgSend_floatValue(v1096, v1097, v1098, v1099);
  v1802 = v1100;
  v1103 = objc_msgSend_objectAtIndexedSubscript_(a3, v1101, 14, v1102);
  objc_msgSend_floatValue(v1103, v1104, v1105, v1106);
  v1109 = objc_msgSend_objectAtIndexedSubscript_(a3, v1107, 15, v1108);
  objc_msgSend_floatValue(v1109, v1110, v1111, v1112);
  objc_msgSend_convertTransform_fromNode_(self, v1113, a4, v1114, v1887, v1870, v1852, COERCE_DOUBLE(__PAIR64__(v1802, v1828)));
  LODWORD(v1116) = v1115;
  v1894[9] = objc_msgSend_numberWithFloat_(v1008, v1117, v1118, v1119, v1116);
  v1120 = MEMORY[0x1E696AD98];
  v1123 = objc_msgSend_objectAtIndexedSubscript_(a3, v1121, 0, v1122);
  objc_msgSend_floatValue(v1123, v1124, v1125, v1126);
  LODWORD(v1887) = v1127;
  v1130 = objc_msgSend_objectAtIndexedSubscript_(a3, v1128, 1, v1129);
  objc_msgSend_floatValue(v1130, v1131, v1132, v1133);
  LODWORD(v1870) = v1134;
  v1137 = objc_msgSend_objectAtIndexedSubscript_(a3, v1135, 2, v1136);
  objc_msgSend_floatValue(v1137, v1138, v1139, v1140);
  v1143 = objc_msgSend_objectAtIndexedSubscript_(a3, v1141, 3, v1142);
  objc_msgSend_floatValue(v1143, v1144, v1145, v1146);
  *&v1888 = __PAIR64__(LODWORD(v1870), LODWORD(v1887));
  v1149 = objc_msgSend_objectAtIndexedSubscript_(a3, v1147, 4, v1148);
  objc_msgSend_floatValue(v1149, v1150, v1151, v1152);
  LODWORD(v1870) = v1153;
  v1156 = objc_msgSend_objectAtIndexedSubscript_(a3, v1154, 5, v1155);
  objc_msgSend_floatValue(v1156, v1157, v1158, v1159);
  LODWORD(v1852) = v1160;
  v1163 = objc_msgSend_objectAtIndexedSubscript_(a3, v1161, 6, v1162);
  objc_msgSend_floatValue(v1163, v1164, v1165, v1166);
  v1169 = objc_msgSend_objectAtIndexedSubscript_(a3, v1167, 7, v1168);
  objc_msgSend_floatValue(v1169, v1170, v1171, v1172);
  *&v1871 = __PAIR64__(LODWORD(v1852), LODWORD(v1870));
  v1175 = objc_msgSend_objectAtIndexedSubscript_(a3, v1173, 8, v1174);
  objc_msgSend_floatValue(v1175, v1176, v1177, v1178);
  LODWORD(v1852) = v1179;
  v1182 = objc_msgSend_objectAtIndexedSubscript_(a3, v1180, 9, v1181);
  objc_msgSend_floatValue(v1182, v1183, v1184, v1185);
  v1829 = v1186;
  v1189 = objc_msgSend_objectAtIndexedSubscript_(a3, v1187, 10, v1188);
  objc_msgSend_floatValue(v1189, v1190, v1191, v1192);
  v1195 = objc_msgSend_objectAtIndexedSubscript_(a3, v1193, 11, v1194);
  objc_msgSend_floatValue(v1195, v1196, v1197, v1198);
  *&v1853 = __PAIR64__(v1829, LODWORD(v1852));
  v1201 = objc_msgSend_objectAtIndexedSubscript_(a3, v1199, 12, v1200);
  objc_msgSend_floatValue(v1201, v1202, v1203, v1204);
  v1830 = v1205;
  v1208 = objc_msgSend_objectAtIndexedSubscript_(a3, v1206, 13, v1207);
  objc_msgSend_floatValue(v1208, v1209, v1210, v1211);
  v1803 = v1212;
  v1215 = objc_msgSend_objectAtIndexedSubscript_(a3, v1213, 14, v1214);
  objc_msgSend_floatValue(v1215, v1216, v1217, v1218);
  v1221 = objc_msgSend_objectAtIndexedSubscript_(a3, v1219, 15, v1220);
  objc_msgSend_floatValue(v1221, v1222, v1223, v1224);
  objc_msgSend_convertTransform_fromNode_(self, v1225, a4, v1226, v1888, v1871, v1853, COERCE_DOUBLE(__PAIR64__(v1803, v1830)));
  LODWORD(v1228) = v1227;
  v1894[10] = objc_msgSend_numberWithFloat_(v1120, v1229, v1230, v1231, v1228);
  v1232 = MEMORY[0x1E696AD98];
  v1235 = objc_msgSend_objectAtIndexedSubscript_(a3, v1233, 0, v1234);
  objc_msgSend_floatValue(v1235, v1236, v1237, v1238);
  LODWORD(v1888) = v1239;
  v1242 = objc_msgSend_objectAtIndexedSubscript_(a3, v1240, 1, v1241);
  objc_msgSend_floatValue(v1242, v1243, v1244, v1245);
  LODWORD(v1871) = v1246;
  v1249 = objc_msgSend_objectAtIndexedSubscript_(a3, v1247, 2, v1248);
  objc_msgSend_floatValue(v1249, v1250, v1251, v1252);
  v1255 = objc_msgSend_objectAtIndexedSubscript_(a3, v1253, 3, v1254);
  objc_msgSend_floatValue(v1255, v1256, v1257, v1258);
  *&v1889 = __PAIR64__(LODWORD(v1871), LODWORD(v1888));
  v1261 = objc_msgSend_objectAtIndexedSubscript_(a3, v1259, 4, v1260);
  objc_msgSend_floatValue(v1261, v1262, v1263, v1264);
  LODWORD(v1871) = v1265;
  v1268 = objc_msgSend_objectAtIndexedSubscript_(a3, v1266, 5, v1267);
  objc_msgSend_floatValue(v1268, v1269, v1270, v1271);
  LODWORD(v1853) = v1272;
  v1275 = objc_msgSend_objectAtIndexedSubscript_(a3, v1273, 6, v1274);
  objc_msgSend_floatValue(v1275, v1276, v1277, v1278);
  v1281 = objc_msgSend_objectAtIndexedSubscript_(a3, v1279, 7, v1280);
  objc_msgSend_floatValue(v1281, v1282, v1283, v1284);
  *&v1872 = __PAIR64__(LODWORD(v1853), LODWORD(v1871));
  v1287 = objc_msgSend_objectAtIndexedSubscript_(a3, v1285, 8, v1286);
  objc_msgSend_floatValue(v1287, v1288, v1289, v1290);
  LODWORD(v1853) = v1291;
  v1294 = objc_msgSend_objectAtIndexedSubscript_(a3, v1292, 9, v1293);
  objc_msgSend_floatValue(v1294, v1295, v1296, v1297);
  v1831 = v1298;
  v1301 = objc_msgSend_objectAtIndexedSubscript_(a3, v1299, 10, v1300);
  objc_msgSend_floatValue(v1301, v1302, v1303, v1304);
  v1307 = objc_msgSend_objectAtIndexedSubscript_(a3, v1305, 11, v1306);
  objc_msgSend_floatValue(v1307, v1308, v1309, v1310);
  *&v1854 = __PAIR64__(v1831, LODWORD(v1853));
  v1313 = objc_msgSend_objectAtIndexedSubscript_(a3, v1311, 12, v1312);
  objc_msgSend_floatValue(v1313, v1314, v1315, v1316);
  v1832 = v1317;
  v1320 = objc_msgSend_objectAtIndexedSubscript_(a3, v1318, 13, v1319);
  objc_msgSend_floatValue(v1320, v1321, v1322, v1323);
  v1804 = v1324;
  v1327 = objc_msgSend_objectAtIndexedSubscript_(a3, v1325, 14, v1326);
  objc_msgSend_floatValue(v1327, v1328, v1329, v1330);
  v1333 = objc_msgSend_objectAtIndexedSubscript_(a3, v1331, 15, v1332);
  objc_msgSend_floatValue(v1333, v1334, v1335, v1336);
  objc_msgSend_convertTransform_fromNode_(self, v1337, a4, v1338, v1889, v1872, v1854, COERCE_DOUBLE(__PAIR64__(v1804, v1832)));
  LODWORD(v1340) = v1339;
  v1894[11] = objc_msgSend_numberWithFloat_(v1232, v1341, v1342, v1343, v1340);
  v1344 = MEMORY[0x1E696AD98];
  v1347 = objc_msgSend_objectAtIndexedSubscript_(a3, v1345, 0, v1346);
  objc_msgSend_floatValue(v1347, v1348, v1349, v1350);
  LODWORD(v1889) = v1351;
  v1354 = objc_msgSend_objectAtIndexedSubscript_(a3, v1352, 1, v1353);
  objc_msgSend_floatValue(v1354, v1355, v1356, v1357);
  LODWORD(v1872) = v1358;
  v1361 = objc_msgSend_objectAtIndexedSubscript_(a3, v1359, 2, v1360);
  objc_msgSend_floatValue(v1361, v1362, v1363, v1364);
  v1367 = objc_msgSend_objectAtIndexedSubscript_(a3, v1365, 3, v1366);
  objc_msgSend_floatValue(v1367, v1368, v1369, v1370);
  *&v1890 = __PAIR64__(LODWORD(v1872), LODWORD(v1889));
  v1373 = objc_msgSend_objectAtIndexedSubscript_(a3, v1371, 4, v1372);
  objc_msgSend_floatValue(v1373, v1374, v1375, v1376);
  LODWORD(v1872) = v1377;
  v1380 = objc_msgSend_objectAtIndexedSubscript_(a3, v1378, 5, v1379);
  objc_msgSend_floatValue(v1380, v1381, v1382, v1383);
  LODWORD(v1854) = v1384;
  v1387 = objc_msgSend_objectAtIndexedSubscript_(a3, v1385, 6, v1386);
  objc_msgSend_floatValue(v1387, v1388, v1389, v1390);
  v1393 = objc_msgSend_objectAtIndexedSubscript_(a3, v1391, 7, v1392);
  objc_msgSend_floatValue(v1393, v1394, v1395, v1396);
  *&v1873 = __PAIR64__(LODWORD(v1854), LODWORD(v1872));
  v1399 = objc_msgSend_objectAtIndexedSubscript_(a3, v1397, 8, v1398);
  objc_msgSend_floatValue(v1399, v1400, v1401, v1402);
  LODWORD(v1854) = v1403;
  v1406 = objc_msgSend_objectAtIndexedSubscript_(a3, v1404, 9, v1405);
  objc_msgSend_floatValue(v1406, v1407, v1408, v1409);
  v1833 = v1410;
  v1413 = objc_msgSend_objectAtIndexedSubscript_(a3, v1411, 10, v1412);
  objc_msgSend_floatValue(v1413, v1414, v1415, v1416);
  v1419 = objc_msgSend_objectAtIndexedSubscript_(a3, v1417, 11, v1418);
  objc_msgSend_floatValue(v1419, v1420, v1421, v1422);
  *&v1855 = __PAIR64__(v1833, LODWORD(v1854));
  v1425 = objc_msgSend_objectAtIndexedSubscript_(a3, v1423, 12, v1424);
  objc_msgSend_floatValue(v1425, v1426, v1427, v1428);
  v1834 = v1429;
  v1432 = objc_msgSend_objectAtIndexedSubscript_(a3, v1430, 13, v1431);
  objc_msgSend_floatValue(v1432, v1433, v1434, v1435);
  v1805 = v1436;
  v1439 = objc_msgSend_objectAtIndexedSubscript_(a3, v1437, 14, v1438);
  objc_msgSend_floatValue(v1439, v1440, v1441, v1442);
  v1445 = objc_msgSend_objectAtIndexedSubscript_(a3, v1443, 15, v1444);
  objc_msgSend_floatValue(v1445, v1446, v1447, v1448);
  objc_msgSend_convertTransform_fromNode_(self, v1449, a4, v1450, v1890, v1873, v1855, COERCE_DOUBLE(__PAIR64__(v1805, v1834)));
  v1894[12] = objc_msgSend_numberWithFloat_(v1344, v1451, v1452, v1453, v1454);
  v1455 = MEMORY[0x1E696AD98];
  v1458 = objc_msgSend_objectAtIndexedSubscript_(a3, v1456, 0, v1457);
  objc_msgSend_floatValue(v1458, v1459, v1460, v1461);
  LODWORD(v1890) = v1462;
  v1465 = objc_msgSend_objectAtIndexedSubscript_(a3, v1463, 1, v1464);
  objc_msgSend_floatValue(v1465, v1466, v1467, v1468);
  LODWORD(v1873) = v1469;
  v1472 = objc_msgSend_objectAtIndexedSubscript_(a3, v1470, 2, v1471);
  objc_msgSend_floatValue(v1472, v1473, v1474, v1475);
  v1478 = objc_msgSend_objectAtIndexedSubscript_(a3, v1476, 3, v1477);
  objc_msgSend_floatValue(v1478, v1479, v1480, v1481);
  *&v1891 = __PAIR64__(LODWORD(v1873), LODWORD(v1890));
  v1484 = objc_msgSend_objectAtIndexedSubscript_(a3, v1482, 4, v1483);
  objc_msgSend_floatValue(v1484, v1485, v1486, v1487);
  LODWORD(v1873) = v1488;
  v1491 = objc_msgSend_objectAtIndexedSubscript_(a3, v1489, 5, v1490);
  objc_msgSend_floatValue(v1491, v1492, v1493, v1494);
  LODWORD(v1855) = v1495;
  v1498 = objc_msgSend_objectAtIndexedSubscript_(a3, v1496, 6, v1497);
  objc_msgSend_floatValue(v1498, v1499, v1500, v1501);
  v1504 = objc_msgSend_objectAtIndexedSubscript_(a3, v1502, 7, v1503);
  objc_msgSend_floatValue(v1504, v1505, v1506, v1507);
  *&v1874 = __PAIR64__(LODWORD(v1855), LODWORD(v1873));
  v1510 = objc_msgSend_objectAtIndexedSubscript_(a3, v1508, 8, v1509);
  objc_msgSend_floatValue(v1510, v1511, v1512, v1513);
  LODWORD(v1855) = v1514;
  v1517 = objc_msgSend_objectAtIndexedSubscript_(a3, v1515, 9, v1516);
  objc_msgSend_floatValue(v1517, v1518, v1519, v1520);
  v1835 = v1521;
  v1524 = objc_msgSend_objectAtIndexedSubscript_(a3, v1522, 10, v1523);
  objc_msgSend_floatValue(v1524, v1525, v1526, v1527);
  v1530 = objc_msgSend_objectAtIndexedSubscript_(a3, v1528, 11, v1529);
  objc_msgSend_floatValue(v1530, v1531, v1532, v1533);
  *&v1856 = __PAIR64__(v1835, LODWORD(v1855));
  v1536 = objc_msgSend_objectAtIndexedSubscript_(a3, v1534, 12, v1535);
  objc_msgSend_floatValue(v1536, v1537, v1538, v1539);
  v1836 = v1540;
  v1543 = objc_msgSend_objectAtIndexedSubscript_(a3, v1541, 13, v1542);
  objc_msgSend_floatValue(v1543, v1544, v1545, v1546);
  v1806 = v1547;
  v1550 = objc_msgSend_objectAtIndexedSubscript_(a3, v1548, 14, v1549);
  objc_msgSend_floatValue(v1550, v1551, v1552, v1553);
  v1556 = objc_msgSend_objectAtIndexedSubscript_(a3, v1554, 15, v1555);
  objc_msgSend_floatValue(v1556, v1557, v1558, v1559);
  objc_msgSend_convertTransform_fromNode_(self, v1560, a4, v1561, v1891, v1874, v1856, COERCE_DOUBLE(__PAIR64__(v1806, v1836)));
  LODWORD(v1563) = v1562;
  v1894[13] = objc_msgSend_numberWithFloat_(v1455, v1564, v1565, v1566, v1563);
  v1567 = MEMORY[0x1E696AD98];
  v1570 = objc_msgSend_objectAtIndexedSubscript_(a3, v1568, 0, v1569);
  objc_msgSend_floatValue(v1570, v1571, v1572, v1573);
  LODWORD(v1891) = v1574;
  v1577 = objc_msgSend_objectAtIndexedSubscript_(a3, v1575, 1, v1576);
  objc_msgSend_floatValue(v1577, v1578, v1579, v1580);
  LODWORD(v1874) = v1581;
  v1584 = objc_msgSend_objectAtIndexedSubscript_(a3, v1582, 2, v1583);
  objc_msgSend_floatValue(v1584, v1585, v1586, v1587);
  v1590 = objc_msgSend_objectAtIndexedSubscript_(a3, v1588, 3, v1589);
  objc_msgSend_floatValue(v1590, v1591, v1592, v1593);
  *&v1892 = __PAIR64__(LODWORD(v1874), LODWORD(v1891));
  v1596 = objc_msgSend_objectAtIndexedSubscript_(a3, v1594, 4, v1595);
  objc_msgSend_floatValue(v1596, v1597, v1598, v1599);
  LODWORD(v1874) = v1600;
  v1603 = objc_msgSend_objectAtIndexedSubscript_(a3, v1601, 5, v1602);
  objc_msgSend_floatValue(v1603, v1604, v1605, v1606);
  LODWORD(v1856) = v1607;
  v1610 = objc_msgSend_objectAtIndexedSubscript_(a3, v1608, 6, v1609);
  objc_msgSend_floatValue(v1610, v1611, v1612, v1613);
  v1616 = objc_msgSend_objectAtIndexedSubscript_(a3, v1614, 7, v1615);
  objc_msgSend_floatValue(v1616, v1617, v1618, v1619);
  *&v1875 = __PAIR64__(LODWORD(v1856), LODWORD(v1874));
  v1622 = objc_msgSend_objectAtIndexedSubscript_(a3, v1620, 8, v1621);
  objc_msgSend_floatValue(v1622, v1623, v1624, v1625);
  LODWORD(v1856) = v1626;
  v1629 = objc_msgSend_objectAtIndexedSubscript_(a3, v1627, 9, v1628);
  objc_msgSend_floatValue(v1629, v1630, v1631, v1632);
  v1837 = v1633;
  v1636 = objc_msgSend_objectAtIndexedSubscript_(a3, v1634, 10, v1635);
  objc_msgSend_floatValue(v1636, v1637, v1638, v1639);
  v1642 = objc_msgSend_objectAtIndexedSubscript_(a3, v1640, 11, v1641);
  objc_msgSend_floatValue(v1642, v1643, v1644, v1645);
  *&v1857 = __PAIR64__(v1837, LODWORD(v1856));
  v1648 = objc_msgSend_objectAtIndexedSubscript_(a3, v1646, 12, v1647);
  objc_msgSend_floatValue(v1648, v1649, v1650, v1651);
  v1838 = v1652;
  v1655 = objc_msgSend_objectAtIndexedSubscript_(a3, v1653, 13, v1654);
  objc_msgSend_floatValue(v1655, v1656, v1657, v1658);
  v1807 = v1659;
  v1662 = objc_msgSend_objectAtIndexedSubscript_(a3, v1660, 14, v1661);
  objc_msgSend_floatValue(v1662, v1663, v1664, v1665);
  v1668 = objc_msgSend_objectAtIndexedSubscript_(a3, v1666, 15, v1667);
  objc_msgSend_floatValue(v1668, v1669, v1670, v1671);
  objc_msgSend_convertTransform_fromNode_(self, v1672, a4, v1673, v1892, v1875, v1857, COERCE_DOUBLE(__PAIR64__(v1807, v1838)));
  LODWORD(v1675) = v1674;
  v1894[14] = objc_msgSend_numberWithFloat_(v1567, v1676, v1677, v1678, v1675);
  v1679 = MEMORY[0x1E696AD98];
  v1682 = objc_msgSend_objectAtIndexedSubscript_(a3, v1680, 0, v1681);
  objc_msgSend_floatValue(v1682, v1683, v1684, v1685);
  LODWORD(v1892) = v1686;
  v1689 = objc_msgSend_objectAtIndexedSubscript_(a3, v1687, 1, v1688);
  objc_msgSend_floatValue(v1689, v1690, v1691, v1692);
  LODWORD(v1875) = v1693;
  v1696 = objc_msgSend_objectAtIndexedSubscript_(a3, v1694, 2, v1695);
  objc_msgSend_floatValue(v1696, v1697, v1698, v1699);
  v1702 = objc_msgSend_objectAtIndexedSubscript_(a3, v1700, 3, v1701);
  objc_msgSend_floatValue(v1702, v1703, v1704, v1705);
  v1893 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1875), LODWORD(v1892)));
  v1708 = objc_msgSend_objectAtIndexedSubscript_(a3, v1706, 4, v1707);
  objc_msgSend_floatValue(v1708, v1709, v1710, v1711);
  LODWORD(v1875) = v1712;
  v1715 = objc_msgSend_objectAtIndexedSubscript_(a3, v1713, 5, v1714);
  objc_msgSend_floatValue(v1715, v1716, v1717, v1718);
  LODWORD(v1857) = v1719;
  v1722 = objc_msgSend_objectAtIndexedSubscript_(a3, v1720, 6, v1721);
  objc_msgSend_floatValue(v1722, v1723, v1724, v1725);
  v1728 = objc_msgSend_objectAtIndexedSubscript_(a3, v1726, 7, v1727);
  objc_msgSend_floatValue(v1728, v1729, v1730, v1731);
  v1876 = COERCE_DOUBLE(__PAIR64__(LODWORD(v1857), LODWORD(v1875)));
  v1734 = objc_msgSend_objectAtIndexedSubscript_(a3, v1732, 8, v1733);
  objc_msgSend_floatValue(v1734, v1735, v1736, v1737);
  LODWORD(v1857) = v1738;
  v1741 = objc_msgSend_objectAtIndexedSubscript_(a3, v1739, 9, v1740);
  objc_msgSend_floatValue(v1741, v1742, v1743, v1744);
  v1839 = v1745;
  v1748 = objc_msgSend_objectAtIndexedSubscript_(a3, v1746, 10, v1747);
  objc_msgSend_floatValue(v1748, v1749, v1750, v1751);
  v1754 = objc_msgSend_objectAtIndexedSubscript_(a3, v1752, 11, v1753);
  objc_msgSend_floatValue(v1754, v1755, v1756, v1757);
  v1858 = COERCE_DOUBLE(__PAIR64__(v1839, LODWORD(v1857)));
  v1760 = objc_msgSend_objectAtIndexedSubscript_(a3, v1758, 12, v1759);
  objc_msgSend_floatValue(v1760, v1761, v1762, v1763);
  v1840 = v1764;
  v1767 = objc_msgSend_objectAtIndexedSubscript_(a3, v1765, 13, v1766);
  objc_msgSend_floatValue(v1767, v1768, v1769, v1770);
  v1808 = v1771;
  v1774 = objc_msgSend_objectAtIndexedSubscript_(a3, v1772, 14, v1773);
  objc_msgSend_floatValue(v1774, v1775, v1776, v1777);
  v1780 = objc_msgSend_objectAtIndexedSubscript_(a3, v1778, 15, v1779);
  objc_msgSend_floatValue(v1780, v1781, v1782, v1783);
  objc_msgSend_convertTransform_fromNode_(self, v1784, a4, v1785, v1893, v1876, v1858, COERCE_DOUBLE(__PAIR64__(v1808, v1840)));
  LODWORD(v1787) = v1786;
  v1894[15] = objc_msgSend_numberWithFloat_(v1679, v1788, v1789, v1790, v1787);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1791, v1894, 16);
}

- (id)hitTestWithSegmentFrom:(id)a3 toPoint:(id)a4 options:(id)a5
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  v53 = v13;
  v16 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 1, v15);
  objc_msgSend_floatValue(v16, v17, v18, v19);
  v51 = v20;
  v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v21, 2, v22);
  objc_msgSend_floatValue(v23, v24, v25, v26);
  v54 = COERCE_DOUBLE(__PAIR64__(v51, v53));
  v29 = objc_msgSend_objectAtIndexedSubscript_(a4, v27, 0, v28);
  objc_msgSend_floatValue(v29, v30, v31, v32);
  v52 = v33;
  v36 = objc_msgSend_objectAtIndexedSubscript_(a4, v34, 1, v35);
  objc_msgSend_floatValue(v36, v37, v38, v39);
  v50 = v40;
  v43 = objc_msgSend_objectAtIndexedSubscript_(a4, v41, 2, v42);
  objc_msgSend_floatValue(v43, v44, v45, v46);

  return objc_msgSend_hitTestWithSegmentFromPoint_toPoint_options_(self, v47, a5, v48, v54, COERCE_DOUBLE(__PAIR64__(v50, v52)));
}

+ (id)localRightValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_localRight(a1, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_localRight(a1, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_localRight(a1, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

+ (id)localFrontValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(a1, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(a1, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(a1, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

+ (id)localUpValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_localUp(a1, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_localUp(a1, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_localUp(a1, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (id)worldRightValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_worldRight(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_worldRight(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_worldRight(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (id)worldFrontValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_worldFront(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_worldFront(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_worldFront(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (id)worldUpValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_worldUp(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_worldUp(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_worldUp(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)lookAtLocation:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a3, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_lookAt_, v22, v23);
}

- (void)lookAtLocation:(id)a3 up:(id)a4 localFront:(id)a5
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v21 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 2, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(a4, v25, 0, v26);
  objc_msgSend_floatValue(v27, v28, v29, v30);
  v33 = objc_msgSend_objectAtIndexedSubscript_(a4, v31, 1, v32);
  objc_msgSend_floatValue(v33, v34, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(a4, v37, 2, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  v45 = objc_msgSend_objectAtIndexedSubscript_(a5, v43, 0, v44);
  objc_msgSend_floatValue(v45, v46, v47, v48);
  v51 = objc_msgSend_objectAtIndexedSubscript_(a5, v49, 1, v50);
  objc_msgSend_floatValue(v51, v52, v53, v54);
  v57 = objc_msgSend_objectAtIndexedSubscript_(a5, v55, 2, v56);
  objc_msgSend_floatValue(v57, v58, v59, v60);

  MEMORY[0x1EEE66B58](self, sel_lookAt_up_localFront_, v61, v62);
}

- (void)localTranslateByValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a3, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_localTranslateBy_, v22, v23);
}

- (void)localRotateByValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a3, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(a3, v22, 3, v23);
  objc_msgSend_floatValue(v24, v25, v26, v27);

  MEMORY[0x1EEE66B58](self, sel_localRotateBy_, v28, v29);
}

- (void)rotateBy:(id)a3 around:(id)a4
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v7, v8, v9, v10);
  v57 = v11;
  v14 = objc_msgSend_objectAtIndexedSubscript_(a3, v12, 1, v13);
  objc_msgSend_floatValue(v14, v15, v16, v17);
  v55 = v18;
  v21 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 2, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(a3, v25, 3, v26);
  objc_msgSend_floatValue(v27, v28, v29, v30);
  v58 = COERCE_DOUBLE(__PAIR64__(v55, v57));
  v33 = objc_msgSend_objectAtIndexedSubscript_(a4, v31, 0, v32);
  objc_msgSend_floatValue(v33, v34, v35, v36);
  v56 = v37;
  v40 = objc_msgSend_objectAtIndexedSubscript_(a4, v38, 1, v39);
  objc_msgSend_floatValue(v40, v41, v42, v43);
  v54 = v44;
  v47 = objc_msgSend_objectAtIndexedSubscript_(a4, v45, 2, v46);
  objc_msgSend_floatValue(v47, v48, v49, v50);

  objc_msgSend_rotateBy_aroundTarget_(self, v51, v52, v53, v58, COERCE_DOUBLE(__PAIR64__(v54, v56)));
}

+ (VFXNode)nodeWithMDLAsset:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(a1);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v5, &v20, v24, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8, v9);
        v16 = objc_msgSend_nodeWithMDLObject_options_context_(VFXNode, v15, v13, 0, v14);
        objc_msgSend_addChildNode_(v4, v17, v16, v18);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v7, &v20, v24, 16);
    }

    while (v10);
  }

  return v4;
}

+ (VFXNode)nodeWithMDLObject:(id)a3
{
  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, v3);

  return objc_msgSend_nodeWithMDLObject_options_context_(a1, v6, a3, 0, v7);
}

+ (VFXNode)nodeWithMDLObject:(id)a3 options:(id)a4 context:(id)a5
{
  v133 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_node(a1, a2, a3, a4);
  v12 = objc_msgSend_name(a3, v9, v10, v11);
  objc_msgSend_setName_(v8, v13, v12, v14);
  if (objc_msgSend_transform(a3, v15, v16, v17))
  {
    v21 = objc_msgSend_transform(a3, v18, v19, v20);
    objc_msgSend_matrix(v21, v22, v23, v24);
    objc_msgSend_setTransform_(v8, v25, v26, v27);
    objc_msgSend_transform(a3, v28, v29, v30);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v35 = objc_msgSend_transform(a3, v32, v33, v34);
    if (isKindOfClass)
    {
LABEL_5:
      v42 = objc_msgSend_transformAnimation(v35, v36, v37, v38);
      if (v42)
      {
        v46 = v42;
        objc_msgSend_duration(v42, v43, v44, v45);
        if (v48 != 0.0)
        {
          objc_msgSend_addAnimation_forKey_(v8, v47, v46, @"transform");
        }
      }

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = objc_msgSend_transform(a3, v39, v40, v41);
      goto LABEL_5;
    }
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v52 = objc_msgSend_submeshes(a3, v49, v50, v51);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v126, v132, 16);
  if (!v54)
  {
    goto LABEL_29;
  }

  v58 = v54;
  v59 = 0;
  v60 = *v127;
  while (2)
  {
    for (i = 0; i != v58; ++i)
    {
      if (*v127 != v60)
      {
        objc_enumerationMutation(v52);
      }

      v62 = *(*(&v126 + 1) + 8 * i);
      if (objc_msgSend_faceIndexing(v62, v55, v56, v57) && objc_msgSend_geometryType(v62, v63, v64, v65) != 5)
      {
        return 0;
      }

      if (objc_msgSend_faceIndexing(v62, v63, v64, v65))
      {
        ++v59;
      }
    }

    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v126, v132, 16);
    if (v58)
    {
      continue;
    }

    break;
  }

  if (v59 >= 2)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = objc_msgSend_submeshes(a3, v55, v56, v57);
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v122, v131, 16);
    if (v67)
    {
      v71 = v67;
      v72 = *v123;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v123 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v74 = *(*(&v122 + 1) + 8 * j);
          v75 = objc_msgSend_node(a1, v68, v69, v70);
          v76 = MEMORY[0x1E696AEC0];
          v80 = objc_msgSend_name(a3, v77, v78, v79);
          v83 = objc_msgSend_stringWithFormat_(v76, v81, @"%@_%d", v82, v80, 0);
          objc_msgSend_setName_(v75, v84, v83, v85);
          v87 = objc_msgSend_modelWithMDLMesh_submesh_options_(VFXModel, v86, a3, v74, a4);
          objc_msgSend_setModel_(v75, v88, v87, v89);
          objc_msgSend_addChildNode_(v8, v90, v75, v91);
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v122, v131, 16);
      }

      while (v71);
    }
  }

  else
  {
LABEL_29:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = objc_msgSend_modelWithMDLMesh_options_context_(VFXModel, v92, a3, a4, a5);
      objc_msgSend_setModel_(v8, v94, v93, v95);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v98 = objc_msgSend_lightWithMDLLight_(VFXLight, v96, a3, v97);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v113 = objc_msgSend_cameraWithMDLCamera_(VFXCamera, v68, a3, v70);
            objc_msgSend_setCamera_(v8, v114, v113, v115);
          }

          goto LABEL_37;
        }

        v98 = objc_msgSend_lightWithMDLLightProbe_(VFXLight, v101, a3, v102);
      }

      objc_msgSend_setLight_(v8, v99, v98, v100);
    }
  }

LABEL_37:
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v103 = objc_msgSend_children(a3, v68, v69, v70);
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, &v118, v130, 16);
  if (v105)
  {
    v107 = v105;
    v108 = *v119;
    do
    {
      for (k = 0; k != v107; ++k)
      {
        if (*v119 != v108)
        {
          objc_enumerationMutation(v103);
        }

        v110 = objc_msgSend_nodeWithMDLObject_options_context_(VFXNode, v106, *(*(&v118 + 1) + 8 * k), a4, a5);
        if (v110)
        {
          objc_msgSend_addChildNode_(v8, v106, v110, v111);
        }
      }

      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v106, &v118, v130, 16);
    }

    while (v107);
  }

  return v8;
}

+ (VFXNode)nodeWithMDLObject:(id)a3 masterObjects:(id)a4 worldNodes:(id)a5 skinnedMeshes:(id)a6 skelNodesMap:(void *)a7 asset:(id)a8 options:(id)a9 context:(id)a10 mpuScale:(float)a11
{
  v196 = *MEMORY[0x1E69E9840];
  v15 = objc_msgSend_node(a1, a2, a3, a4);
  if (objc_msgSend_transform(a3, v16, v17, v18))
  {
    v22 = objc_msgSend_transform(a3, v19, v20, v21);
    objc_msgSend_matrix(v22, v23, v24, v25);
    objc_msgSend_setTransform_(v15, v26, v27, v28);
    objc_msgSend_transform(a3, v29, v30, v31);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v39 = objc_msgSend_transform(a3, v33, v34, v35);
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_18;
      }

      v39 = objc_msgSend_transform(a3, v19, v20, v21);
    }

    v40 = objc_msgSend_transformAnimation(v39, v36, v37, v38);
    if (v40)
    {
      v41 = v40;
      objc_msgSend_duration(v40, v19, v20, v21);
      if (v42 != 0.0)
      {
        v43 = objc_msgSend_valueForKey_(a9, v19, @"kSceneSourceAnimationLoadingMode", v21);
        if (v43)
        {
          v48 = v43;
          objc_msgSend_setRemovedOnCompletion_(v41, v44, 1, v46);
          isEqualToString = objc_msgSend_isEqualToString_(v48, v49, @"playRepeatedly", v50);
          LODWORD(v55) = 2139095040;
          if (!isEqualToString)
          {
            *&v55 = 0.0;
          }

          objc_msgSend_setRepeatCount_(v41, v52, v53, v54, v55);
          v58 = objc_msgSend_isEqualToString_(v48, v56, @"playRepeatedly", v57) ^ 1;
          objc_msgSend_setRemovedOnCompletion_(v41, v59, v58, v60);
        }

        else
        {
          LODWORD(v47) = 2139095040;
          objc_msgSend_setRepeatCount_(v41, v44, v45, v46, v47);
          objc_msgSend_setRemovedOnCompletion_(v41, v64, 0, v65);
        }

        objc_msgSend_endTime(a8, v61, v62, v63);
        v67 = v66;
        objc_msgSend_startTime(a8, v68, v69, v70);
        v75 = v67 - v74;
        if (v67 - v74 > 0.0)
        {
          objc_msgSend_duration(v41, v71, v72, v73);
          v77 = v76;
          objc_msgSend_beginTime(v41, v78, v79, v80);
          if (v77 < v75 - v83)
          {
            objc_msgSend_beginTime(v41, v71, v81, v82);
            objc_msgSend_setDuration_(v41, v85, v86, v87, v75 - v84);
          }
        }

        if (a11 != 1.0)
        {
          sub_1AF2F36F8(v41, a11);
        }

        objc_msgSend_addAnimation_forKey_(v15, v71, v41, @"transform");
      }
    }
  }

LABEL_18:
  v88 = objc_msgSend_name(a3, v19, v20, v21);
  objc_msgSend_setName_(v15, v89, v88, v90);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v94 = objc_msgSend_path(a3, v91, v92, v93);
    v97 = objc_msgSend_objectForKey_(a4, v95, v94, v96);
    if (v97)
    {
      objc_msgSend_setModel_(v15, v98, v97, v99);
    }

    else
    {
      v110 = objc_msgSend_modelWithMDLMesh_options_context_(VFXModel, v98, a3, a9, a10);
      objc_msgSend_setModel_(v15, v111, v110, v112);
      v115 = objc_msgSend_componentConformingToProtocol_(a3, v113, &unk_1F262ADF8, v114);
      if (v115)
      {
        v118 = v115;
        v119 = sub_1AF2EDE80(v115);
        objc_msgSend_setMorpher_(v15, v120, v119, v121);
        sub_1AF2EE224(v118, v15, a9, v122);
      }

      if (objc_msgSend_componentConformingToProtocol_(a3, v116, &unk_1F262AE58, v117))
      {
        objc_msgSend_addObject_(a6, v123, a3, v125);
      }

      if (objc_msgSend_subdivisionScheme(a3, v123, v124, v125))
      {
        v129 = objc_msgSend_valueForKey_(a9, v126, @"VFXWorldLoaderConformToSubdivisionScheme", v128);
        if (objc_msgSend_BOOLValue(v129, v130, v131, v132))
        {
          v133 = objc_msgSend_model(v15, v126, v127, v128);
          objc_msgSend_setSubdivisionLevel_(v133, v134, 1, v135);
          v139 = objc_msgSend_model(v15, v136, v137, v138);
          objc_msgSend_setWantsAdaptiveSubdivision_(v139, v140, 1, v141);
          v142 = objc_opt_new();
          v146 = objc_msgSend_model(v15, v143, v144, v145);
          objc_msgSend_setTessellator_(v146, v147, v142, v148);
        }
      }

      v149 = objc_msgSend_model(v15, v126, v127, v128);
      objc_msgSend_setObject_forKey_(a4, v150, v149, v94);
    }

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v105 = objc_msgSend_lightWithMDLLight_(VFXLight, v103, a3, v104);
LABEL_25:
    objc_msgSend_setLight_(v15, v106, v105, v107);
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v105 = objc_msgSend_lightWithMDLLightProbe_(VFXLight, v108, a3, v109);
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v153 = objc_msgSend_cameraWithMDLCamera_(VFXCamera, v151, a3, v152);
    objc_msgSend_setCamera_(v15, v154, v153, v155);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_1AF2F38A8(v15, a3, a7);
    }
  }

LABEL_38:
  if (objc_msgSend_instance(a3, v100, v101, v102))
  {
    v159 = objc_msgSend_instance(a3, v156, v157, v158);
    *&v160 = a11;
    v162 = objc_msgSend_nodeWithMDLObject_masterObjects_worldNodes_skinnedMeshes_skelNodesMap_asset_options_context_mpuScale_(VFXNode, v161, v159, a4, a5, a6, a7, a8, v160, a9, a10);
    objc_msgSend_addChildNode_(v15, v163, v162, v164);
  }

  v165 = objc_msgSend_path(a3, v156, v157, v158);
  v166 = v15;
  objc_msgSend_setObject_forKey_(a5, v167, v15, v165);
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v187 = a3;
  v171 = objc_msgSend_children(a3, v168, v169, v170);
  v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v172, &v191, v195, 16);
  if (v173)
  {
    v178 = v173;
    v179 = *v192;
    do
    {
      for (i = 0; i != v178; ++i)
      {
        if (*v192 != v179)
        {
          objc_enumerationMutation(v171);
        }

        *&v177 = a11;
        v181 = objc_msgSend_nodeWithMDLObject_masterObjects_worldNodes_skinnedMeshes_skelNodesMap_asset_options_context_mpuScale_(VFXNode, v174, *(*(&v191 + 1) + 8 * i), a4, a5, a6, a7, a8, v177, a9, a10);
        if (v181)
        {
          objc_msgSend_addChildNode_(v166, v174, v181, v182);
        }
      }

      v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v174, &v191, v195, 16);
    }

    while (v178);
  }

  v183 = objc_msgSend_hidden(v187, v174, v175, v176);
  objc_msgSend_setHidden_(v166, v184, v183, v185);
  return v166;
}

- (void)_addSkinnerWithMDLMesh:(id)a3 worldNodes:(id)a4
{
  v7 = objc_msgSend_componentConformingToProtocol_(a3, a2, &unk_1F262AE58, a4);
  if (v7)
  {
    v11 = v7;
    v12 = objc_msgSend_model(self, v8, v9, v10);
    v16 = objc_msgSend_geometry(v12, v13, v14, v15);
    v19 = sub_1AF2EDAB8(v11, a4, v17, v18);
    v20 = sub_1AF2EDBF8(v11);
    v24 = sub_1AF2F3D64(a3, v21, v22, v23);
    v28 = sub_1AF2F3E10(a3, v25, v26, v27);
    v31 = objc_msgSend_skinnerWithBaseGeometry_bones_boneInverseBindTransforms_boneWeights_boneIndices_(VFXSkinner, v29, v16, v19, v20, v24, v28);

    objc_msgSend_setSkinner_(self, v30, v31, v32);
  }
}

- (void)_bakeNodes:(id)a3 folderPath:(id)a4 inVertex:(BOOL)a5 bakeAO:(BOOL)a6 quality:(float)a7 attenuation:(float)a8 geomSetter:(id)a9 terminateSetter:(id)a10
{
  v31[1] = *MEMORY[0x1E69E9840];
  v31[0] = self;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v31, 1);
  v19 = VFXNodesToMDLAsset(v18);
  v20 = VFXNodesToMDLAsset(a3);
  v21 = sub_1AF2ED370(v20);
  v22 = sub_1AF2ED370(v19);
  v23 = sub_1AF2ED690(v19);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF2F405C;
  v30[3] = &unk_1E7A7EAA0;
  v30[4] = a4;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF2F40DC;
  block[3] = &unk_1E7A7EB18;
  v28 = a6;
  v29 = a5;
  v26 = a7;
  v27 = a8;
  block[4] = v21;
  block[5] = v22;
  block[6] = v23;
  block[7] = v20;
  block[8] = v30;
  block[9] = a9;
  block[10] = a10;
  dispatch_async(global_queue, block);
}

- (VFXNode)init
{
  v8.receiver = self;
  v8.super_class = VFXNode;
  v2 = [(VFXNode *)&v8 init];
  if (v2)
  {
    v3 = sub_1AF1B8588();
    v2->_node = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    v2->_valueForKeyLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6);
  }

  return v2;
}

- (id)initPresentationNodeWithNodeRef:(__CFXNode *)a3
{
  v7.receiver = self;
  v7.super_class = VFXNode;
  v4 = [(VFXNode *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 48) |= 1u;
    v4->_node = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valueForKeyLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (VFXNode)initWithNodeRef:(__CFXNode *)a3
{
  v20.receiver = self;
  v20.super_class = VFXNode;
  v4 = [(VFXNode *)&v20 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    *(v4 + 1) = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    *(v4 + 52) = 0;
    *(v4 + 64) = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
    objc_msgSend__syncObjCAnimations(v4, v9, v10, v11);
    v12 = sub_1AF1B9410(*(v4 + 1));
    if (v12)
    {
      v13 = v12;
      v14 = objc_alloc(MEMORY[0x1E695DF70]);
      *(v4 + 4) = objc_msgSend_initWithCapacity_(v14, v15, v13, v16);
      v17 = *(v4 + 1);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF3005BC;
      v19[3] = &unk_1E7A7EC78;
      v19[4] = v4;
      sub_1AF1B7E14(v17, v19);
    }
  }

  return v4;
}

+ (id)node
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (VFXNode)nodeWithModel:(id)a3
{
  v5 = objc_msgSend_node(a1, a2, a3, v3);
  objc_msgSend_setModel_(v5, v6, a3, v7);
  return v5;
}

- (void)dealloc
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(self + 48) & 1) == 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    childNodes = self->_childNodes;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, a2, &v24, v28, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(childNodes);
          }

          objc_msgSend__setParent_(*(*(&v24 + 1) + 8 * i), a2, 0, v3);
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, a2, &v24, v28, 16);
      }

      while (v7);
    }
  }

  if (objc_msgSend_hasPhysicBody(self, a2, v2, v3))
  {
    v13 = objc_msgSend_physicsBody(self, v10, v11, v12);
    objc_msgSend__ownerWillDie(v13, v14, v15, v16);
  }

  if ((*(self + 48) & 1) == 0)
  {
    v17 = objc_msgSend_stateManager(self, v10, v11, v12);
    objc_msgSend_setOwner_(v17, v18, 0, v19);
  }

  self->_components = 0;
  node = self->_node;
  if (node)
  {
    if ((*(self + 48) & 1) == 0)
    {
      sub_1AF16CDFC(self->_node, 0);
      node = self->_node;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v20, node, v21);
  }

  free(*self->_fixedBoundingBoxExtrema);
  v23.receiver = self;
  v23.super_class = VFXNode;
  [(VFXNode *)&v23 dealloc];
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
      v11[2] = sub_1AF3008D4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = a3;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
{
  if ((*(self + 48) & 1) == 0)
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

- (void)setIdentifier:(id)a3
{
  v5 = objc_msgSend___CFObject(self, a2, a3, v3);

  sub_1AF16CD6C(v5, a3);
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

  *&v7 = sub_1AF1B7F84(self->_node);
  *self->_anon_40 = v7;
  *&self->_anon_40[16] = v8;
  *&self->_anon_40[32] = v9;
  *&self->_anon_40[48] = v10;
  *(self + 48) = *(self + 48) & 0xE7 | 0x10;
  self->_opacity = sub_1AF1B8A30(self->_node);
  self->_renderingOrder = sub_1AF1BAC2C(self->_node);
  if (sub_1AF1B7348(self->_node))
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  *(self + 49) = *(self + 49) & 0xEF | v11;
  if (sub_1AF1BAD78(self->_node))
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *(self + 49) = *(self + 49) & 0xDF | v12;
  self->_categoryBitMask = sub_1AF1BAF14(self->_node);
  if (sub_1AF1BAFFC(self->_node))
  {
    v13 = 64;
  }

  else
  {
    v13 = 0;
  }

  *(self + 48) = *(self + 48) & 0xBF | v13;
  *(self + 49) = *(self + 49) & 0xFE | sub_1AF1BB028(self->_node);
  if (sub_1AF1BB080(self->_node))
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  *(self + 49) = *(self + 49) & 0xFD | v14;
  if (sub_1AF1B8774(self->_node))
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  *(self + 48) = *(self + 48) & 0xDF | v15;
  if (sub_1AF1BB054(self->_node))
  {
    v19 = 0x80;
  }

  else
  {
    v19 = 0;
  }

  *(self + 48) = v19 & 0x80 | *(self + 48) & 0x7F;
  objc_msgSend__updateEntityModelFromPresentation(self, v16, v17, v18);
  if (v6)
  {

    sub_1AF1CEA9C(v6);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF300CAC;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (VFXNode)presentationNode
{
  v2 = self;
  if ((*(self + 48) & 1) == 0)
  {
    self = self->_presentationObject;
    if (!self)
    {
      v3 = [VFXNode alloc];
      self = objc_msgSend_initPresentationNodeWithNodeRef_(v3, v4, v2->_node, v5);
      v2->_presentationObject = self;
    }
  }

  return self;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  for (i = self->_components; i; i = objc_msgSend_next(i, v8, v9, v10))
  {
    v7 = objc_msgSend_type(i, a2, a3, a4);
    if (v7 - 3 >= 2 && v7 <= 0xC && ((1 << v7) & 0x1D07) != 0)
    {
      v13 = objc_msgSend_component(i, v8, v9, v10);
      (*(a4 + 2))(a4, v13, 0, 0);
    }
  }

  v14 = objc_msgSend_constraints(self, a2, a3, a4);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v84, v90, 16);
  if (v19)
  {
    v20 = *v85;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v85 != v20)
        {
          objc_enumerationMutation(v14);
        }

        (*(a4 + 2))(a4, *(*(&v84 + 1) + 8 * j), 0, 0);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v22, &v84, v90, 16);
    }

    while (v19);
  }

  v23 = objc_msgSend_physicsBody(self, v16, v17, v18);
  if (v23)
  {
    (*(a4 + 2))(a4, v23, 0, 0);
  }

  v26 = objc_msgSend_skinner(self, v23, v24, v25);
  if (v26)
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = sub_1AF301338;
    v83[3] = &unk_1E7A7C0C8;
    v83[4] = self;
    (*(a4 + 2))(a4, v26, 0, v83);
  }

  v29 = objc_msgSend_morpher(self, v26, v27, v28);
  if (v29)
  {
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = sub_1AF301344;
    v82[3] = &unk_1E7A7C0C8;
    v82[4] = self;
    (*(a4 + 2))(a4, v29, 0, v82);
  }

  v35 = objc_msgSend_deformers(self, v29, v30, v31);
  if (v35)
  {
    v36 = objc_alloc(MEMORY[0x1E695DF70]);
    v40 = objc_msgSend_count(v35, v37, v38, v39);
    v43 = objc_msgSend_initWithCapacity_(v36, v41, v40, v42);
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = sub_1AF301350;
    v77[3] = &unk_1E7A7ECC8;
    v77[5] = a4;
    v77[6] = &v78;
    v77[4] = v43;
    objc_msgSend_enumerateObjectsUsingBlock_(v35, v44, v77, v45);
    if (*(v79 + 24) == 1)
    {
      objc_msgSend_setDeformers_(self, v46, v43, v47);
    }

    _Block_object_dispose(&v78, 8);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v48 = objc_msgSend_allValues(self->_animations, v32, v33, v34);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v73, v89, 16);
  if (v52)
  {
    v53 = *v74;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v74 != v53)
        {
          objc_enumerationMutation(v48);
        }

        (*(a4 + 2))(a4, *(*(&v73 + 1) + 8 * k), 0, 0);
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v55, &v73, v89, 16);
    }

    while (v52);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, v50, a4, v51);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  childNodes = self->_childNodes;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v57, &v69, v88, 16);
  if (v61)
  {
    v62 = *v70;
    do
    {
      for (m = 0; m != v61; ++m)
      {
        if (*v70 != v62)
        {
          objc_enumerationMutation(childNodes);
        }

        (*(a4 + 2))(a4, *(*(&v69 + 1) + 8 * m), 0, 0);
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v64, &v69, v88, 16);
    }

    while (v61);
  }

  if (objc_msgSend_stateManager(self, v58, v59, v60))
  {
    v68 = objc_msgSend_stateManager(self, v65, v66, v67);
    (*(a4 + 2))(a4, v68, 0, 0);
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
      v9[2] = sub_1AF301598;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF3015F8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 48) & 1) == 0)
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

- (void)_dump:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_defaultCStringEncoding(MEMORY[0x1E696AEC0], a2, a3, v3);
  v9 = objc_msgSend_cStringUsingEncoding_(a3, v7, v6, v8);
  v13 = objc_msgSend_description(self, v10, v11, v12);
  v17 = objc_msgSend_defaultCStringEncoding(MEMORY[0x1E696AEC0], v14, v15, v16);
  v20 = objc_msgSend_cStringUsingEncoding_(v13, v18, v17, v19);
  printf("%s%s {\n", v9, v20);
  v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"\t%@", v22, a3);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = objc_msgSend_childNodes(self, v24, v25, v26);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v40, v44, 16);
  if (v29)
  {
    v33 = v29;
    v34 = *v41;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend__dump_(*(*(&v40 + 1) + 8 * i), v30, v23, v32);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v40, v44, 16);
    }

    while (v33);
  }

  v36 = objc_msgSend_defaultCStringEncoding(MEMORY[0x1E696AEC0], v30, v31, v32);
  v39 = objc_msgSend_cStringUsingEncoding_(a3, v37, v36, v38);
  printf("%s}\n", v39);
}

- (void)dump
{
  v5 = objc_msgSend_name(self, a2, v2, v3);
  NSLog(&cfstr_DumpNodeTree.isa, v5);
  objc_msgSend__dump_(self, v6, &stru_1F2575650, v7);
  NSLog(&stru_1F25869F0.isa);
}

+ (id)_dumpNodeTree:(id)a3 tab:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_name(a3, a2, a3, a4))
  {
    v11 = objc_msgSend_name(a3, v8, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"<%p>", v10, a3);
  }

  v14 = objc_msgSend_stringWithFormat_(v7, v12, @"%@%@\n", v13, a4, v11);
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"\t%@", v16, a4);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = objc_msgSend_childNodes(a3, v18, v19, v20);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v32, v36, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend__dumpNodeTree_tab_(a1, v24, *(*(&v32 + 1) + 8 * v27), v17);
        v14 = objc_msgSend_stringByAppendingString_(v14, v29, v28, v30);
        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v32, v36, 16);
    }

    while (v25);
  }

  return v14;
}

- (id)_dumpTree
{
  v3 = objc_opt_class();

  return objc_msgSend__dumpNodeTree_tab_(v3, v4, self, &stru_1F2575650);
}

- (void)_setAttributes:(id)a3
{
  os_unfair_lock_lock(&self->_valueForKeyLock);

  self->_valueForKey = a3;

  os_unfair_lock_unlock(&self->_valueForKeyLock);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(objc_opt_class());
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend__copyWithOptions_to_copyContext_(self, v6, 0, v5, v4);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (id)copyWithOptions:(unint64_t)a3
{
  objc_msgSend_begin(VFXTransaction, a2, a3, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v6, 1, v7);
  v8 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyWithOptions_to_(self, v9, a3, v8);
  objc_msgSend_commitImmediate(VFXTransaction, v10, v11, v12);
  return v8;
}

- (void)_copyWithOptions:(unint64_t)a3 to:(id)a4 copyContext:(id)a5
{
  v7 = a3;
  v311[1] = *MEMORY[0x1E69E9840];
  v12 = sub_1AFDF4FDC(a5);
  if (*(self + 48))
  {
    v13 = *(a4 + 1);
    if (v13)
    {
      sub_1AF16CDFC(v13, 0);
    }

    *(a4 + 48) |= 1u;
  }

  v14 = objc_msgSend_name(self, v9, v10, v11);
  objc_msgSend_setName_(a4, v15, v14, v16);
  if ((*(self + 48) & 8) != 0)
  {
    objc_msgSend_position(self, v17, v18, v19);
    objc_msgSend_setPosition_(a4, v71, v72, v73);
    objc_msgSend_scale(self, v74, v75, v76);
    objc_msgSend_setScale_(a4, v77, v78, v79);
    v80 = (*(self + 49) >> 2) & 3;
    if (v80 > 1)
    {
      if (v80 == 2)
      {
        objc_msgSend_orientation(self, v23, v24, v25);
        objc_msgSend_setOrientation_(a4, v290, v291, v292);
      }
    }

    else if (v80)
    {
      objc_msgSend_rotation(self, v23, v24, v25);
      objc_msgSend_setRotation_(a4, v293, v294, v295);
    }

    else
    {
      objc_msgSend_eulerAngles(self, v23, v24, v25);
      objc_msgSend_setEulerAngles_(a4, v81, v82, v83);
    }
  }

  else
  {
    objc_msgSend_transform(self, v17, v18, v19);
    objc_msgSend_setTransform_(a4, v20, v21, v22);
  }

  if ((*(self + 48) & 0x20) != 0)
  {
    objc_msgSend_pivot(self, v23, v24, v25);
    objc_msgSend_setPivot_(a4, v26, v27, v28);
  }

  isHidden = objc_msgSend_isHidden(self, v23, v24, v25);
  objc_msgSend_setHidden_(a4, v30, isHidden, v31);
  objc_msgSend_opacity(self, v32, v33, v34);
  objc_msgSend_setOpacity_(a4, v35, v36, v37);
  v41 = objc_msgSend_renderingOrder(self, v38, v39, v40);
  objc_msgSend_setRenderingOrder_(a4, v42, v41, v43);
  v47 = objc_msgSend_categoryBitMask(self, v44, v45, v46);
  objc_msgSend_setCategoryBitMask_(a4, v48, v47, v49);
  v53 = objc_msgSend_light(self, v50, v51, v52);
  v57 = objc_msgSend_type(v53, v54, v55, v56);
  v61 = objc_msgSend_light(self, v58, v59, v60);
  v64 = v61;
  if (v57 == 4)
  {
    v65 = objc_msgSend_copy(v61, v62, v61, v63);
    objc_msgSend_setLight_(a4, v66, v65, v67);

    if ((v7 & 2) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if ((v7 & 4) != 0)
  {
    v64 = sub_1AF2BED30(v61, a5);
  }

  objc_msgSend_setLight_(a4, v62, v64, v63);
  if ((v7 & 2) == 0)
  {
LABEL_18:
    v84 = objc_msgSend_particleEmitter(self, v68, v69, v70);
    v85 = sub_1AF2BED30(v84, a5);
    objc_msgSend_setParticleEmitter_(a4, v86, v85, v87);
    v91 = objc_msgSend_particleCollider(self, v88, v89, v90);
    v92 = sub_1AF2BED30(v91, a5);
    objc_msgSend_setParticleCollider_(a4, v93, v92, v94);
    v98 = objc_msgSend_behaviorGraph(self, v95, v96, v97);
    if (v98)
    {
      v99 = v98;
      if (objc_msgSend_particleEmitter(a4, v68, v69, v70) || objc_msgSend_particleCollider(a4, v100, v101, v102))
      {
        v103 = objc_msgSend_particleCollider(a4, v100, v101, v102);
        v108 = objc_msgSend_coreEntityHandle(v103, v104, v105, v106);
        if (!v108)
        {
          v110 = objc_msgSend_particleEmitter(a4, v107, 0, v109);
          v108 = objc_msgSend_coreEntityHandle(v110, v111, v112, v113);
        }

        v114 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v107, v108, v109);
      }

      else
      {
        v296 = objc_msgSend_behaviorGraph(self, v100, v101, v102);
        v114 = sub_1AF2BED30(v296, a5);
      }

      v118 = v114;
      if (v114)
      {
        objc_msgSend_setBehaviorGraph_(a4, v115, v114, v117);
        if (v12)
        {
          CFDictionarySetValue(v12, v99, v118);
        }
      }

      v119 = objc_msgSend_behaviorGraph(a4, v115, v116, v117);
      v123 = objc_msgSend_entityObject(v119, v120, v121, v122);
      v310 = objc_msgSend_identifier(self, v124, v125, v126);
      v311[0] = a4;
      v128 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v127, v311, &v310, 1);
      objc_msgSend_updateVFXObjectReferences_(v123, v129, v128, v130);
    }
  }

LABEL_28:
  v131 = objc_msgSend_camera(self, v68, v69, v70);
  v134 = v131;
  if ((v7 & 4) != 0)
  {
    v134 = sub_1AF2BED30(v131, a5);
  }

  objc_msgSend_setCamera_(a4, v132, v134, v133);
  v138 = objc_msgSend_forceField(self, v135, v136, v137);
  v142 = objc_msgSend_copy(v138, v139, v140, v141);
  objc_msgSend_setForceField_(a4, v143, v142, v144);
  v148 = objc_msgSend_castsShadow(self, v145, v146, v147);
  objc_msgSend_setCastsShadow_(a4, v149, v148, v150);
  v154 = objc_msgSend_usesDepthPrePass(self, v151, v152, v153);
  objc_msgSend_setUsesDepthPrePass_(a4, v155, v154, v156);
  v160 = objc_msgSend_constraints(self, v157, v158, v159);
  if (objc_msgSend_count(v160, v161, v162, v163))
  {
    v297 = v7;
    v298 = a4;
    v167 = objc_alloc(MEMORY[0x1E695DF70]);
    v171 = objc_msgSend_count(v160, v168, v169, v170);
    v174 = objc_msgSend_initWithCapacity_(v167, v172, v171, v173);
    v304 = 0u;
    v305 = 0u;
    v306 = 0u;
    v307 = 0u;
    v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v160, v175, &v304, v309, 16);
    if (v176)
    {
      v180 = v176;
      v181 = *v305;
      do
      {
        for (i = 0; i != v180; ++i)
        {
          if (*v305 != v181)
          {
            objc_enumerationMutation(v160);
          }

          v183 = *(*(&v304 + 1) + 8 * i);
          v186 = objc_msgSend_copy(v183, v177, v178, v179);
          if (v12)
          {
            CFDictionarySetValue(v12, v183, v186);
          }

          objc_msgSend_addObject_(v174, v184, v186, v185);
        }

        v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v160, v177, &v304, v309, 16);
      }

      while (v180);
    }

    a4 = v298;
    objc_msgSend_setConstraints_(v298, v177, v174, v179);

    v7 = v297;
  }

  v187 = objc_msgSend_deformers(self, v164, v165, v166);
  if (objc_msgSend_count(v187, v188, v189, v190))
  {
    v194 = objc_alloc(MEMORY[0x1E695DF70]);
    v198 = objc_msgSend_count(v187, v195, v196, v197);
    v201 = objc_msgSend_initWithCapacity_(v194, v199, v198, v200);
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v202, &v300, v308, 16);
    if (v203)
    {
      v206 = v203;
      v207 = *v301;
      do
      {
        for (j = 0; j != v206; ++j)
        {
          if (*v301 != v207)
          {
            objc_enumerationMutation(v187);
          }

          v209 = sub_1AF2BED30(*(*(&v300 + 1) + 8 * j), a5);
          objc_msgSend_addObject_(v201, v210, v209, v211);
        }

        v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v212, &v300, v308, 16);
      }

      while (v206);
    }

    objc_msgSend_setDeformers_(a4, v204, v201, v205);
  }

  isAuthoring = objc_msgSend_isAuthoring(self, v191, v192, v193);
  objc_msgSend_setIsAuthoring_(a4, v214, isAuthoring, v215);
  v219 = objc_msgSend_editorLocked(self, v216, v217, v218);
  objc_msgSend_setEditorLocked_(a4, v220, v219, v221);
  v225 = objc_msgSend_focusBehavior(self, v222, v223, v224);
  objc_msgSend_setFocusBehavior_(a4, v226, v225, v227);
  if (objc_msgSend_isAuthoring(self, v228, v229, v230) && objc_msgSend_authoringTargetNode(self, v231, v232, v233))
  {
    v234 = objc_msgSend_authoringTargetNode(self, v231, v232, v233);
    objc_msgSend_setAuthoringTargetNode_(a4, v235, v234, v236);
  }

  isGizmo = objc_msgSend_isGizmo(self, v231, v232, v233);
  objc_msgSend_setGizmo_(a4, v238, isGizmo, v239);
  os_unfair_lock_lock(&self->_valueForKeyLock);
  valueForKey = self->_valueForKey;
  v299[0] = MEMORY[0x1E69E9820];
  v299[1] = 3221225472;
  v299[2] = sub_1AF30234C;
  v299[3] = &unk_1E7A7E7E8;
  v299[4] = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(valueForKey, v241, v299, v242);
  os_unfair_lock_unlock(&self->_valueForKeyLock);
  if ((v7 & 1) == 0)
  {
    objc_msgSend__copyAnimationsFrom_(a4, v243, self, v244);
  }

  objc_msgSend__copyBindingsFrom_(a4, v243, self, v244);
  v248 = objc_msgSend_model(self, v245, v246, v247);
  if (v248)
  {
    v252 = v248;
    if ((v7 & 4) != 0)
    {
      v252 = sub_1AF2BED30(v248, a5);
    }

    objc_msgSend_setModel_(a4, v249, v252, v251);
  }

  v253 = objc_msgSend_morpher(self, v249, v250, v251);
  if (v253)
  {
    v257 = sub_1AF2BED30(v253, a5);
    objc_msgSend_setMorpher_(a4, v258, v257, v259);
  }

  v260 = objc_msgSend_skinner(self, v254, v255, v256);
  if (v260)
  {
    v264 = sub_1AF2BED30(v260, a5);
    objc_msgSend_setSkinner_(a4, v265, v264, v266);
  }

  v267 = objc_msgSend_physicsBody(self, v261, v262, v263);
  if (v267)
  {
    v271 = v267;
    v272 = sub_1AF2BED30(v267, a5);
    objc_msgSend_setPhysicsBody_(a4, v273, v272, v274);
    if (v12)
    {
      CFDictionarySetValue(v12, v271, v272);
    }
  }

  if (objc_msgSend_prefab(self, v268, v269, v270))
  {
    v278 = objc_msgSend_prefab(self, v275, v276, v277);
    v279 = sub_1AF2BED30(v278, a5);
    objc_msgSend_setPrefab_(a4, v280, v279, v281);
  }

  v282 = objc_msgSend_stateManager(self, v275, v276, v277);
  if (v282)
  {
    v285 = sub_1AF2BED30(v282, a5);
    objc_msgSend_setStateManager_(a4, v286, v285, v287);
  }

  *(a4 + 48) = *(a4 + 48) & 0xBF | *(self + 48) & 0x40;
  objc_msgSend_setIsEyeSightFrame_(a4, v283, *(self + 49) & 1, v284);
  objc_msgSend_setIsHandTrackingRoot_(a4, v288, (*(self + 49) >> 1) & 1, v289);
}

- (id)_copyRecursively:(unint64_t)a3 copyContext:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(objc_opt_class());
  if (a4)
  {
    v9 = sub_1AFDF4FDC(a4);
    CFDictionarySetValue(v9, self, v8);
  }

  objc_msgSend__copyWithOptions_to_copyContext_(self, v7, a3, v8, a4);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = objc_msgSend_childNodes(self, v10, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v31, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        if ((objc_msgSend_isGizmo(v22, v16, v17, v18) & 1) == 0)
        {
          v23 = objc_msgSend__copyRecursively_copyContext_(v22, v16, a3, a4);
          objc_msgSend_addChildNode_(v8, v24, v23, v25);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v27, v31, 16);
    }

    while (v19);
  }

  return v8;
}

- (id)_cloneWithOption:(unint64_t)a3 copyContext:(id)a4
{
  objc_msgSend_begin(VFXTransaction, a2, a3, a4);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  v10 = objc_msgSend__copyRecursively_copyContext_(self, v9, a3 | 1, a4);
  objc_msgSend_commitImmediate(VFXTransaction, v11, v12, v13);
  sub_1AF302550(self, v10, v14, v15);

  return v10;
}

- (id)cloneWithOption:(unint64_t)a3
{
  v5 = objc_alloc_init(VFXCopyContext);
  v7 = objc_msgSend__cloneWithOption_copyContext_(self, v6, a3, v5);
  sub_1AFDF51FC(v5, v7);

  return v7;
}

- (id)deepCloneWithContext:(id)a3
{
  v5 = objc_msgSend__deepCloneWithContext_(self, a2, a3, v3);
  sub_1AFDF51FC(a3, v5);
  return v5;
}

- (id)deepClone
{
  v3 = objc_alloc_init(VFXCopyContext);
  v6 = objc_msgSend_deepCloneWithContext_(self, v4, v3, v5);

  return v6;
}

+ (VFXNode)nodeWithNodeRef:(__CFXNode *)a3
{
  result = sub_1AF16CDEC(a3);
  if (!result)
  {
    v6 = [a1 alloc];
    v9 = objc_msgSend_initWithNodeRef_(v6, v7, a3, v8);

    return v9;
  }

  return result;
}

- (id)childNodeWithName:(id)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_childNodes(self, a2, a3, a4);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v30, v35, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v31;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v30 + 1) + 8 * v14);
      v16 = objc_msgSend_name(v15, v9, v10, v11);
      if (objc_msgSend_isEqualToString_(v16, v17, a3, v18))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v30, v35, 16);
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
    v15 = 0;
  }

  if (!v15 && v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v26, v34, 16);
    if (v19)
    {
      v21 = v19;
      v22 = *v27;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v6);
          }

          v24 = objc_msgSend_childNodeWithName_recursively_(*(*(&v26 + 1) + 8 * i), v20, a3, 1);
          if (v24)
          {
            return v24;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v20, &v26, v34, 16);
        v15 = 0;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

- (BOOL)_childNodesPassingTest:(id)a3 recursively:(BOOL)a4 output:(id)a5
{
  v6 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if ((*(a3 + 2))(a3, self, &v25))
  {
    objc_msgSend_addObject_(a5, v9, self, v11);
  }

  if (v6 && (v25 & 1) == 0 && (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, v12 = objc_msgSend_childNodes(self, v9, v10, v11, 0), (v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v26, 16)) != 0))
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
      v25 = objc_msgSend__childNodesPassingTest_recursively_output_(*(*(&v21 + 1) + 8 * v18), v15, a3, 1, a5);
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

- (id)childNodesPassingTest:(id)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
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

      if (objc_msgSend__childNodesPassingTest_recursively_output_(*(*(&v19 + 1) + 8 * v17), v14, a3, v4, v7))
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

- (BOOL)_enumerateChildNodesUsingBlock:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  (*(a3 + 2))(a3, self, &v22);
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

          v22 = objc_msgSend__enumerateChildNodesUsingBlock_(*(*(&v18 + 1) + 8 * i), v11, a3, v12);
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

- (void)enumerateChildNodesUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = objc_msgSend_childNodes(self, a2, a3, v3, 0);
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

      if (objc_msgSend__enumerateChildNodesUsingBlock_(*(*(&v13 + 1) + 8 * v12), v8, a3, v9))
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

- (void)enumerateHierarchyUsingBlock:(id)a3
{
  v7 = 0;
  (*(a3 + 2))(a3, self, &v7);
  if ((v7 & 1) == 0)
  {
    objc_msgSend_enumerateChildNodesUsingBlock_(self, v5, a3, v6);
  }
}

- (void)_childNodesWithAttribute:(Class)a3 output:(id)a4 recursively:(BOOL)a5
{
  v5 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = objc_msgSend_childNodes(self, a2, a3, a4, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v31, v35, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        if (objc_opt_class() == a3 && objc_msgSend_camera(v14, v15, v16, v17) || objc_opt_class() == a3 && objc_msgSend_light(v14, v18, v19, v20) || objc_opt_class() == a3 && objc_msgSend_model(v14, v21, v22, v23) || objc_opt_class() == a3 && objc_msgSend_morpher(v14, v24, v25, v26) || objc_opt_class() == a3 && objc_msgSend_skinner(v14, v27, v28, v29))
        {
          objc_msgSend_addObject_(a4, v27, v14, v30);
        }

        if (v5)
        {
          objc_msgSend__childNodesWithAttribute_output_recursively_(v14, v27, a3, a4, 1);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v27, &v31, v35, 16);
    }

    while (v11);
  }
}

- (id)childNodesWithAttribute:(Class)a3 recursively:(BOOL)a4
{
  v4 = a4;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  objc_msgSend__childNodesWithAttribute_output_recursively_(self, v8, a3, v7, v4);
  return v7;
}

- (id)objectInChildNodesWithAttribute:(id)a3 firstOnly:(BOOL)a4
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = a4;
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF303148;
  v9[3] = &unk_1E7A7ECF0;
  v9[4] = a3;
  v9[5] = v10;
  objc_msgSend__childNodesPassingTest_recursively_output_(self, v7, v9, 1, v6);
  _Block_object_dispose(v10, 8);
  return v6;
}

- (int64_t)coreEntity
{
  if (*(self + 48))
  {
    result = sub_1AF1BC054(self->_node);
    if (result)
    {

      return sub_1AF16AC70(result, v7, v8, v9);
    }
  }

  else
  {
    v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

    return MEMORY[0x1EEE66B58](v4, sel_entity, v5, v6);
  }

  return result;
}

- (id)coreEntityManager
{
  if (*(self + 48))
  {
    result = sub_1AF1BC054(self->_node);
    if (result)
    {
      v10 = sub_1AF16A4C8(result, v7, v8, v9);

      return objc_msgSend_opaqueEntityManager(v10, v11, v12, v13);
    }
  }

  else
  {
    v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

    return MEMORY[0x1EEE66B58](v4, sel_entityManager, v5, v6);
  }

  return result;
}

- (id)_findComponentWithType:(int64_t)a3
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(self + 48))
  {
    switch(a3)
    {
      case 0:
        v10 = sub_1AF1B75E8(self->_node);
        if (!v10)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXLight, sel_presentationLightWithLightRef_, v10, v11);
      case 1:
        v57 = sub_1AF1BB260(self->_node);
        if (!v57)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXCamera, sel_presentationCameraWithCameraRef_, v57, v58);
      case 2:
        v54 = sub_1AF1B75A0(self->_node);
        if (!v54)
        {
          return 0;
        }

        return objc_msgSend_presentationModelWithModelRef_(VFXModel, v55, v54, v56);
      case 3:
        v52 = sub_1AF1B92C8(self->_node);
        if (!v52)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXSkinner, sel_skinnerWithSkinnerRef_, v52, v53);
      case 4:
        v12 = sub_1AF1B9158(self->_node);
        if (!v12)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXMorpher, sel_presentationMorpherWithMorpherRef_, v12, v13);
      case 6:
        v18 = sub_1AF1BBBCC(self->_node);
        if (!v18)
        {
          return 0;
        }

        v22 = v18;
        v23 = MEMORY[0x1E695DF70];
        v24 = objc_msgSend_count(v18, v19, v20, v21);
        components = objc_msgSend_arrayWithCapacity_(v23, v25, v24, v26);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v27, &v63, v67, 16);
        if (v28)
        {
          v31 = v28;
          v32 = *v64;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v64 != v32)
              {
                objc_enumerationMutation(v22);
              }

              v34 = objc_msgSend_presentationConstraintWithConstraintRef_(VFXConstraint, v29, *(*(&v63 + 1) + 8 * i), v30);
              objc_msgSend_addObject_(components, v35, v34, v36);
            }

            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, &v63, v67, 16);
          }

          while (v31);
        }

        return components;
      case 7:
        components = sub_1AF1BBDF8(self->_node);
        if (!components)
        {
          return 0;
        }

        return components;
      case 8:
        v59 = sub_1AF1BBFEC(self->_node);
        if (!v59)
        {
          return 0;
        }

        return MEMORY[0x1EEE66B58](VFXForceField, sel_presentationForceFieldWithForceFieldRef_, v59, v60);
      case 9:
        node = self->_node;

        return sub_1AF1BB398(node);
      case 10:
        v37 = sub_1AF1BC054(self->_node);
        if (!v37)
        {
          goto LABEL_35;
        }

        v40 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, v38, v37, v39);

        return MEMORY[0x1EEE66B58](VFXBehaviorGraph, sel_presentationBehaviorGraphWithEntityHandle_, v40, v41);
      case 11:
        goto LABEL_39;
      case 12:
LABEL_35:
        v42 = sub_1AF1BC05C(self->_node);
        if (v42)
        {
          v45 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, v43, v42, v44);

          result = MEMORY[0x1EEE66B58](VFXParticleCollider, sel_presentationParticleColliderWithEntityHandle_, v45, v46);
        }

        else
        {
LABEL_39:
          v47 = sub_1AF1B83E8(self->_node);
          if (!v47)
          {
            return 0;
          }

          v50 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, v48, v47, v49);

          result = MEMORY[0x1EEE66B58](VFXParticleEmitter, sel_presentationParticleEmitterWithEntityHandle_, v50, v51);
        }

        break;
      case 14:
        v14 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, self->_node, v3);

        return objc_msgSend_stateManager(v14, v15, v16, v17);
      default:
        return 0;
    }

    return result;
  }

  if ((((*(self + 26) & 0x7FFFu) >> a3) & 1) == 0)
  {
    return 0;
  }

  components = self->_components;
  if (!components)
  {
    return components;
  }

  while (objc_msgSend_type(components, a2, a3, v3) != a3)
  {
    components = objc_msgSend_next(components, v7, v8, v9);
    if (!components)
    {
      return components;
    }
  }

  return objc_msgSend_component(components, v7, v8, v9);
}

- (void)_removeComponentWithType:(int64_t)a3
{
  components = self->_components;
  if (components)
  {
    if (objc_msgSend_type(self->_components, a2, a3, v3) == a3)
    {
      v10 = 0;
LABEL_7:
      v16 = objc_msgSend_type(components, v7, v8, v9);
      v20 = v16 > 0xC || ((1 << v16) & 0x1D1F) == 0;
      if (!v20 && self->_world)
      {
        v21 = objc_msgSend_component(components, v17, v18, v19);
        objc_msgSend_removeWorldReference_(v21, v22, self->_world, v23);
      }

      v24 = objc_msgSend_next(components, v17, v18, v19);
      if (v10)
      {
        objc_msgSend_setNext_(v10, v25, v24, v26);
      }

      else
      {
        self->_components = v24;
      }

      *(self + 26) &= ~(1 << a3) | 0x8000;
    }

    else
    {
      v11 = components;
      while (1)
      {
        v12 = objc_msgSend_next(v11, v7, v8, v9);
        if (!v12)
        {
          break;
        }

        components = v12;
        v10 = v11;
        v11 = v12;
        if (objc_msgSend_type(v12, v13, v14, v15) == a3)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

- (void)_assignComponent:(id)a3 toContainerWithType:(int64_t)a4
{
  v7 = (a4 < 0x10) & (0x1D1Fu >> a4);
  v8 = 1 << a4;
  if ((*(self + 26) & (1 << a4) & 0x7FFF) != 0 && (components = self->_components) != 0)
  {
    while (objc_msgSend_type(components, a2, a3, a4) != a4)
    {
      components = objc_msgSend_next(components, v10, v11, v12);
      if (!components)
      {
        goto LABEL_5;
      }
    }

    if (v7)
    {
      if (self->_world)
      {
        v21 = objc_msgSend_component(components, v10, v11, v12);
        objc_msgSend_removeWorldReference_(v21, v22, self->_world, v23);
      }

      objc_msgSend_setComponent_(components, v10, a3, v12);
      world = self->_world;
      if (world)
      {

        objc_msgSend_addWorldReference_(a3, v24, world, v25);
      }
    }

    else
    {

      objc_msgSend_setComponent_(components, v10, a3, v12);
    }
  }

  else
  {
LABEL_5:
    v13 = [VFXNodeComponent alloc];
    v15 = objc_msgSend_initWithType_component_(v13, v14, a4, a3);
    objc_msgSend_setNext_(v15, v16, self->_components, v17);

    self->_components = v15;
    if (v7)
    {
      v20 = self->_world;
      if (v20)
      {
        objc_msgSend_addWorldReference_(a3, v18, v20, v19);
      }
    }

    *(self + 26) |= v8 & 0x7FFF;
  }
}

- (id)__light
{
  result = objc_msgSend__findComponentWithType_(self, a2, 0, v2);
  if (*(self + 48))
  {

    return objc_msgSend_presentationLight(result, v5, v6, v7);
  }

  return result;
}

- (id)__camera
{
  result = objc_msgSend__findComponentWithType_(self, a2, 1, v2);
  if (*(self + 48))
  {

    return objc_msgSend_presentationCamera(result, v5, v6, v7);
  }

  return result;
}

- (id)__model
{
  result = objc_msgSend__findComponentWithType_(self, a2, 2, v2);
  if (*(self + 48))
  {

    return objc_msgSend_presentationModel(result, v5, v6, v7);
  }

  return result;
}

- (id)__morpher
{
  result = objc_msgSend__findComponentWithType_(self, a2, 4, v2);
  if (*(self + 48))
  {

    return objc_msgSend_presentationObject(result, v5, v6, v7);
  }

  return result;
}

- (id)hitTestWithSegmentFromPoint:(VFXNode *)self toPoint:(SEL)a2 options:(id)a3
{
  v36 = v4;
  v37 = v5;
  v8 = objc_msgSend_worldRef(self, a2, a3, v3);
  if (v8)
  {
    v12 = v8;
    sub_1AF1CEA20(v8);
    memset(v40, 0, sizeof(v40));
    if (a3)
    {
      if (objc_msgSend_objectForKey_(a3, v13, @"kHitTestRootNode", v15))
      {
        objc_msgSend_objectForKey_(a3, v16, @"kHitTestRootNode", v18);
      }

      v19 = objc_msgSend_mutableCopy(a3, v16, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15);
    }

    v24 = v19;
    objc_msgSend_convertPosition_toNode_(self, v20, 0, v21, v36);
    v39 = v25;
    objc_msgSend_convertPosition_toNode_(self, v26, 0, v27, v37);
    v38 = v28;
    sub_1AF1DA1B4(v40, &v39, &v38);
    v29 = sub_1AF286358(v12, v40, v24);
    v22 = objc_msgSend_hitTestResultsFromHitTestResultRef_(VFXHitTestResult, v30, v29, v31);
    if (v29)
    {
      CFRelease(v29);
    }

    sub_1AF1CEA9C(v12);
    v23 = objc_msgSend_count(v22, v32, v33, v34);
  }

  else
  {
    v22 = 0;
    v23 = objc_msgSend_count(0, v9, v10, v11);
  }

  if (v23)
  {
    return v22;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_updateTransform
{
  if ((*(self + 48) & 8) == 0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF745C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = (*(self + 49) >> 2) & 3;
  if (v11 > 1)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v27 = 0uLL;
    v26 = 0;
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v28 = *self->_anon_90;
    v29 = vmulq_f32(v28, v28);
    v30 = vmulq_laneq_f32(v28, v28, 3);
    v31 = vmuls_lane_f32(v28.f32[0], *v28.f32, 1);
    v32 = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*self->_anon_90)), v28, 2);
    v33 = vmuls_lane_f32(v28.f32[0], v28, 2);
    v34 = v29.f32[1];
    v35.i32[3] = 0;
    v35.f32[0] = (0.5 - v29.f32[1]) - v29.f32[2];
    v36.i32[3] = 0;
    v35.f32[1] = v31 + v30.f32[2];
    v35.f32[2] = v33 - v30.f32[1];
    v24 = vaddq_f32(v35, v35);
    v37 = 0.5 - v29.f32[0];
    v38.i32[3] = 0;
    v38.f32[0] = v31 - v30.f32[2];
    v38.f32[1] = (0.5 - v29.f32[0]) - v29.f32[2];
    v38.f32[2] = v32 + v30.f32[0];
    v25 = vaddq_f32(v38, v38);
    v36.f32[0] = v33 + v30.f32[1];
    v36.f32[1] = v32 - v30.f32[0];
    v36.f32[2] = v37 - v34;
    v27 = vaddq_f32(v36, v36);
LABEL_14:
    v26 = 1065353216;
    goto LABEL_15;
  }

  if (v11)
  {
    v39 = *self->_anon_90;
    v40 = vmulq_f32(v39, v39);
    v40.f32[0] = v40.f32[2] + vaddv_f32(*v40.f32);
    v41 = vdupq_lane_s32(*v40.f32, 0);
    v41.i32[3] = 0;
    v42 = vrsqrteq_f32(v41);
    v43 = vmulq_f32(v42, vrsqrtsq_f32(v41, vmulq_f32(v42, v42)));
    v44 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v40.f32[0] != 0.0)), 0x1FuLL));
    v44.i32[3] = 0;
    v71 = vbslq_s8(vcltzq_s32(v44), vmulq_f32(v39, vmulq_f32(v43, vrsqrtsq_f32(v41, vmulq_f32(v43, v43)))), v39);
    v45 = __sincosf_stret(v39.f32[3]);
    v46 = v71;
    v47 = vmulq_f32(v46, v46);
    __asm { FMOV            V2.4S, #1.0 }

    v53 = vmlaq_n_f32(v47, vsubq_f32(_Q2, v47), v45.__cosval);
    v54 = (1.0 - v45.__cosval) * vmuls_lane_f32(v46.f32[0], *v46.f32, 1);
    v55 = (1.0 - v45.__cosval) * vmuls_lane_f32(v46.f32[0], v46, 2);
    v56 = (1.0 - v45.__cosval) * vmuls_lane_f32(v71.f32[1], v71, 2);
    v57 = vmulq_n_f32(v71, -v45.__sinval);
    v46.f32[0] = v54 - v57.f32[2];
    *&v58 = v55 + v57.f32[1];
    *&v59 = v54 + v57.f32[2];
    *&v60 = v56 - v57.f32[0];
    v27.f32[0] = v55 - v57.f32[1];
    v27.f32[1] = v56 + v57.f32[0];
    v27.i64[1] = v53.u32[2];
    v24.i64[0] = __PAIR64__(v46.u32[0], v53.u32[0]);
    v24.i64[1] = v58;
    v25.i64[0] = __PAIR64__(v53.u32[1], v59);
    v25.i64[1] = v60;
    goto LABEL_14;
  }

  v70 = *self->_anon_90;
  v12 = __sincosf_stret(*&v70);
  v13.i32[0] = 0;
  v13.i32[1] = LODWORD(v12.__cosval);
  v13.i64[1] = LODWORD(v12.__sinval);
  v14.i32[0] = 0;
  v14.f32[1] = -v12.__sinval;
  v14.i64[1] = LODWORD(v12.__cosval);
  v68 = v14;
  v69 = v13;
  v15 = __sincosf_stret(*(&v70 + 1));
  v16.i32[3] = 0;
  v16.i64[0] = LODWORD(v15.__cosval);
  v16.f32[2] = -v15.__sinval;
  v17.i64[0] = LODWORD(v15.__sinval);
  v17.i64[1] = LODWORD(v15.__cosval);
  v66 = v17;
  v67 = v16;
  v18 = __sincosf_stret(*(&v70 + 2));
  v19 = 0;
  v20.i32[1] = 0;
  v20.i64[1] = 0;
  v72 = xmmword_1AFE20150;
  v73 = v69;
  v74 = v68;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  do
  {
    *(&v75 + v19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*(&v72 + v19))), xmmword_1AFE20160, *(&v72 + v19), 1), v66, *(&v72 + v19), 2);
    v19 += 16;
  }

  while (v19 != 48);
  v21 = 0;
  cosval_low = LODWORD(v18.__cosval);
  cosval_low.i32[1] = LODWORD(v18.__sinval);
  cosval_low.i32[2] = 0;
  v20.f32[0] = -v18.__sinval;
  v23 = v20;
  v23.i32[1] = LODWORD(v18.__cosval);
  v23.i32[2] = 0;
  v72 = v75;
  v73 = v76;
  v74 = v77;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  do
  {
    *(&v75 + v21) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(cosval_low, COERCE_FLOAT(*(&v72 + v21))), v23, *(&v72 + v21), 1), xmmword_1AFE20180, *(&v72 + v21), 2);
    v21 += 16;
  }

  while (v21 != 48);
  v24 = v75;
  v25 = v76;
  v27 = v77;
  v24.i32[3] = 0;
  v25.i32[3] = 0;
  v26 = 1065353216;
  v27.i32[3] = 0;
LABEL_15:
  v61 = *self->_scale;
  v62 = vmulq_n_f32(v24, v61.f32[0]);
  v63 = vmulq_lane_f32(v25, *v61.f32, 1);
  v64 = vmulq_laneq_f32(v27, v61, 2);
  v65 = *self->_position;
  HIDWORD(v65) = v26;
  *self->_anon_40 = v62;
  *&self->_anon_40[16] = v63;
  *&self->_anon_40[32] = v64;
  *&self->_anon_40[48] = v65;
  *(self + 48) |= 0x10u;
}

- (void)_updateAffine
{
  if ((*(self + 48) & 0x10) == 0)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF74D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_1AF3041C0(self->_anon_90, self->_position, self->_scale, *self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32], *&self->_anon_40[48]);
  *(self + 48) |= 8u;
  *(self + 49) = *(self + 49) & 0xF3 | 8;
}

- (double)_quaternion
{
  if ((a1[3].i8[0] & 8) == 0)
  {
    objc_msgSend__updateAffine(a1, a2, a3, a4);
  }

  v5 = (a1[3].u8[1] >> 2) & 3;
  if (v5 > 1)
  {
    v14.i64[0] = 0;
    if (v5 != 3)
    {
      v14 = a1[9];
    }
  }

  else if (v5)
  {
    objc_msgSend_rotation(a1, a2, a3, a4);
    v16 = vmulq_f32(v15, v15);
    v16.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
    v17 = vdupq_lane_s32(*v16.f32, 0);
    v17.i32[3] = 0;
    v18 = vrsqrteq_f32(v17);
    v19 = vmulq_f32(v18, vrsqrtsq_f32(v17, vmulq_f32(v18, v18)));
    v20 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v16.f32[0] != 0.0)), 0x1FuLL));
    v20.i32[3] = 0;
    v14.i64[0] = vmulq_n_f32(vbslq_s8(vcltzq_s32(v20), vmulq_f32(v15, vmulq_f32(v19, vrsqrtsq_f32(v17, vmulq_f32(v19, v19)))), v15), __sincosf_stret(vmuls_lane_f32(0.5, v15, 3)).__sinval).u64[0];
  }

  else
  {
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    v7 = vmulq_f32(a1[9], v6);
    v7.i32[3] = 0;
    x = v7;
    v23 = _simd_cos_f4(v7);
    v14 = _simd_sin_f4(x);
    v8 = vextq_s8(v23, v23, 4uLL);
    v9 = vmulq_f32(vzip1q_s32(vrev64q_s32(v23), v23), vextq_s8(vzip1q_s32(v8, v14), v8, 8uLL));
    v10 = vzip2q_s32(vzip1q_s32(v23, v14), v14);
    v10.f32[3] = -v14.f32[0];
    v11 = vextq_s8(v14, v14, 8uLL);
    v12 = vtrn1q_s32(v14, vextq_s8(v23, v23, 8uLL));
    v14.i32[3] = v14.i32[1];
    v13 = vtrn1q_s32(v11, v23);
    v13.f32[1] = -v23.f32[0];
    v14.i64[0] = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v14, v10), v13)), v12, v9).u64[0];
  }

  return *v14.i64;
}

- (uint64_t)_setQuaternion:(uint64_t)a3
{
  if ((*(a1 + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(a1, a2, a3, a4);
  }

  result = objc_msgSend__quaternion(a1, a2, a3, a4, *&a5);
  if ((vminvq_u32(vceqq_f32(v14, v9)) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(a1, v7, @"orientation", v8);
    *(a1 + 48) &= ~0x10u;
    *(a1 + 144) = v14;
    *(a1 + 49) = *(a1 + 49) & 0xF3 | 8;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF304870;
    v15[3] = &unk_1E7A7E5C8;
    v17 = a1;
    v16 = v14;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v10, a1, @"orientation", v15);
    return objc_msgSend_didChangeValueForKey_(a1, v11, @"orientation", v12);
  }

  return result;
}

- (double)_euler
{
  if ((*(a1 + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(a1, a2, a3, a4);
  }

  if ((*(a1 + 49) & 0xC) != 0)
  {
    objc_msgSend__quaternion(a1, a2, a3, a4);
    _Q2 = v5;
    v7 = vmulq_f32(v5, v5);
    v8 = vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)));
    *&v9 = 0;
    if (v8 != 0.0)
    {
      v10 = _Q2.f32[3];
      _S9 = _Q2.f32[1];
      v12 = _Q2.f32[2];
      __asm { FMLA            S1, S9, V2.S[3] }

      v18 = _S1 / v8;
      v19 = (_S1 / v8);
      if (v19 <= 0.4999)
      {
        if (v19 >= -0.4999)
        {
          v23 = *&v7.i32[1];
          v24 = v7.i64[1];
          v26 = _Q2.f32[0];
          v27 = *v7.i32;
          v29 = atan2f(((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])) + ((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])), *&v7.i32[3] + (*&v7.i32[2] + (-*v7.i32 - *&v7.i32[1])));
          v28 = asinf(v18 + v18);
          atan2f(((v12 * v10) + (v26 * _S9)) + ((v12 * v10) + (v26 * _S9)), *(&v24 + 1) + ((v27 - v23) - *&v24));
          *&v9 = __PAIR64__(LODWORD(v28), LODWORD(v29));
          return *&v9;
        }

        v22 = atan2f(_Q2.f32[0], _Q2.f32[3]);
        *&v9 = v22 + v22;
        v21 = &dword_1AFE21DB8;
      }

      else
      {
        v20 = atan2f(_Q2.f32[0], _Q2.f32[3]);
        *&v9 = v20 + v20;
        v21 = &dword_1AFE21AFC;
      }

      DWORD1(v9) = *v21;
    }
  }

  else
  {
    v9 = *(a1 + 144);
  }

  return *&v9;
}

- (void)_setPosition:(VFXNode *)self
{
  v10 = v4;
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, v2, v3);
    v4 = v10;
  }

  v6 = vceqq_f32(*self->_position, v4);
  v6.i32[3] = v6.i32[2];
  if ((vminvq_u32(v6) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, a2, @"position", v3);
    *(self + 48) &= ~0x10u;
    *self->_position = v10;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF304B00;
    v11[3] = &unk_1E7A7E5C8;
    v13 = self;
    v12 = v10;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"translation", v11);
    objc_msgSend_didChangeValueForKey_(self, v8, @"position", v9);
  }
}

- (void)_setScale:(VFXNode *)self
{
  v10 = v4;
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, v2, v3);
    v4 = v10;
  }

  v6 = vceqq_f32(*self->_scale, v4);
  v6.i32[3] = v6.i32[2];
  if ((vminvq_u32(v6) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, a2, @"scale", v3);
    *(self + 48) &= ~0x10u;
    *self->_scale = v10;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF304C0C;
    v11[3] = &unk_1E7A7E5C8;
    v13 = self;
    v12 = v10;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"scale", v11);
    objc_msgSend_didChangeValueForKey_(self, v8, @"scale", v9);
  }
}

- (BOOL)castsShadow
{
  if (*(self + 48))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v8 = sub_1AF1BAD78(self->_node);
      sub_1AF1CEA9C(v7);
      LOBYTE(v5) = v8;
    }

    else
    {
      node = self->_node;

      LOBYTE(v5) = sub_1AF1BAD78(node);
    }
  }

  else
  {
    return (*(self + 49) >> 5) & 1;
  }

  return v5;
}

- (void)setCastsShadow:(BOOL)a3
{
  v5 = *(self + 49);
  if ((v5 & 0x20) == 0) == a3 || (*(self + 48))
  {
    v9 = v3;
    v10 = v4;
    if (a3)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    *(self + 49) = v5 & 0xDF | v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF304F08;
    v7[3] = &unk_1E7A7E298;
    v7[4] = self;
    v8 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v7);
  }
}

- (BOOL)usesDepthPrePass
{
  if (*(self + 48))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v8 = sub_1AF1B8420(self->_node);
      sub_1AF1CEA9C(v7);
      LOBYTE(v5) = v8;
    }

    else
    {
      node = self->_node;

      LOBYTE(v5) = sub_1AF1B8420(node);
    }
  }

  else
  {
    return (*(self + 49) >> 6) & 1;
  }

  return v5;
}

- (void)setUsesDepthPrePass:(BOOL)a3
{
  v3 = *(self + 49);
  if (((((v3 & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 49) = v3 & 0xBF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF30504C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 48) & 1) == 0)
  {
    return self->_categoryBitMask;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF1BAF14(self->_node);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    node = self->_node;

    return sub_1AF1BAF14(node);
  }
}

- (void)setCategoryBitMask:(unint64_t)a3
{
  if (self->_categoryBitMask != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_categoryBitMask = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF30516C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)isHidden
{
  if (*(self + 48))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v8 = sub_1AF1B7348(self->_node);
      sub_1AF1CEA9C(v7);
      LOBYTE(v5) = v8;
    }

    else
    {
      node = self->_node;

      LOBYTE(v5) = sub_1AF1B7348(node);
    }
  }

  else
  {
    return (*(self + 49) >> 4) & 1;
  }

  return v5;
}

- (void)setHidden:(BOOL)a3
{
  v5 = *(self + 49);
  if ((v5 & 0x10) == 0) == a3 || (*(self + 48))
  {
    v9 = v3;
    v10 = v4;
    if (a3)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *(self + 49) = v5 & 0xEF | v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF3052B8;
    v7[3] = &unk_1E7A7E298;
    v7[4] = self;
    v8 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"hidden", v7);
  }
}

- (BOOL)isHiddenOrHasHiddenAncestor
{
  if (objc_msgSend_isHidden(self, a2, v2, v3))
  {
    return 1;
  }

  v9 = objc_msgSend_parentNode(self, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v9, sel_isHiddenOrHasHiddenAncestor, v10, v11);
}

- (float)opacity
{
  if ((*(self + 48) & 1) == 0)
  {
    return self->_opacity;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF1B8A30(self->_node);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    node = self->_node;

    return sub_1AF1B8A30(node);
  }
}

- (void)setOpacity:(float)a3
{
  v5 = a3;
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = fmax(v5, 0.0);
  if (self->_opacity != v6 || (*(self + 48) & 1) != 0)
  {
    v9 = v3;
    v10 = v4;
    self->_opacity = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF305460;
    v7[3] = &unk_1E7A7E270;
    v7[4] = self;
    v8 = v6;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"opacity", v7);
  }
}

- (int64_t)renderingOrder
{
  if ((*(self + 48) & 1) == 0)
  {
    return self->_renderingOrder;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF1BAC2C(self->_node);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    node = self->_node;

    return sub_1AF1BAC2C(node);
  }
}

- (void)setRenderingOrder:(int64_t)a3
{
  if (self->_renderingOrder != a3 || (*(self + 48) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_renderingOrder = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF305588;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (VFXNode)parentNode
{
  if (*(self + 48))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v7 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    v8 = sub_1AF1B9A6C(self->_node);
    if (v8)
    {
      v5 = objc_msgSend_nodeWithNodeRef_(VFXNode, v9, v8, v10);
      if (!v7)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0;
      if (!v7)
      {
        return v5;
      }
    }

    sub_1AF1CEA9C(v7);
    return v5;
  }

  return self->_parent;
}

- (NSArray)childNodes
{
  if (*(self + 48))
  {
    v10 = objc_msgSend_worldRef(self, a2, v2, v3);
    v11 = v10;
    if (v10)
    {
      sub_1AF1CEA20(v10);
    }

    v12 = sub_1AF1B9410(self->_node);
    v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v13, v12, v14);
    node = self->_node;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF305714;
    v17[3] = &unk_1E7A7EC78;
    v17[4] = v9;
    sub_1AF1B7E14(node, v17);
    if (v11)
    {
      sub_1AF1CEA9C(v11);
    }
  }

  else
  {
    v5 = objc_msgSend_copy(self->_childNodes, a2, v2, v3);
    if (objc_msgSend_count(v5, v6, v7, v8))
    {
      return v5;
    }

    else
    {
      return MEMORY[0x1E695E0F0];
    }
  }

  return v9;
}

- (void)_setComponent:(id)a3 withType:(int64_t)a4
{
  if (a3)
  {
    objc_msgSend__assignComponent_toContainerWithType_(self, a2, a3, a4);
  }

  else
  {
    objc_msgSend__removeComponentWithType_(self, a2, a4, a4);
  }
}

- (void)setLight:(id)a3
{
  if (objc_msgSend_light(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF30581C;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (void)setIsJoint:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xBF | v3;
}

- (void)setIsEyeSightFrame:(BOOL)a3
{
  *(self + 49) = *(self + 49) & 0xFE | a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF30592C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setGizmo:(BOOL)a3
{
  v3 = *(self + 48);
  if ((((v3 >= 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    *(self + 48) = v4 & 0x80 | v3 & 0x7F;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF3059F8;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setIsHandTrackingRoot:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 49) = *(self + 49) & 0xFD | v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF305AB4;
  v4[3] = &unk_1E7A7E298;
  v4[4] = self;
  v5 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
}

- (void)setSkinner:(id)a3
{
  if (objc_msgSend_skinner(self, a2, a3, v3) != a3)
  {
    v9 = objc_msgSend_model(self, v6, v7, v8);
    if (v9)
    {
      v13 = objc_msgSend_geometry(v9, v10, v11, v12);
      objc_msgSend__setBaseGeometry_(a3, v14, v13, v15);
    }

    objc_msgSend__setComponent_withType_(self, v10, a3, 3);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF305B98;
    v17[3] = &unk_1E7A7E220;
    v17[4] = self;
    v17[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v17);
  }
}

- (void)setMorpher:(id)a3
{
  if (objc_msgSend_morpher(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF305C80;
    v8[3] = &unk_1E7A7E220;
    v8[4] = a3;
    v8[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)deformers
{
  result = objc_msgSend__findComponentWithType_(self, a2, 9, v2);
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (void)setDeformers:(id)a3
{
  if (objc_msgSend_deformers(self, a2, a3, v3) != a3)
  {
    v9 = objc_msgSend_copy(a3, v6, v7, v8);
    objc_msgSend__setComponent_withType_(self, v10, v9, 9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF305DD0;
    v12[3] = &unk_1E7A7E220;
    v12[4] = self;
    v12[5] = v9;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
  }
}

- (void)setCamera:(id)a3
{
  if (objc_msgSend_camera(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF305E80;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (void)setModel:(id)a3
{
  if (objc_msgSend_model(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 2);
    v10 = objc_msgSend_skinner(self, v7, v8, v9);
    if (v10)
    {
      v14 = v10;
      v15 = objc_msgSend_geometry(a3, v11, v12, v13);
      objc_msgSend__setBaseGeometry_(v14, v16, v15, v17);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1AF305FB8;
    v29[3] = &unk_1E7A7E220;
    v29[4] = self;
    v29[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v29);
    v21 = objc_msgSend_physicsBody(self, v18, v19, v20);
    if (v21)
    {
      v25 = v21;
      if (objc_msgSend_hasDefaultShape(v21, v22, v23, v24))
      {
        objc_msgSend_updateDefaultShape(v25, v26, v27, v28);
      }
    }
  }
}

- (void)modelChanged
{
  v4 = objc_msgSend_physicsBody(self, a2, v2, v3);
  if (v4)
  {
    v8 = v4;
    if (objc_msgSend_hasDefaultShape(v4, v5, v6, v7))
    {

      objc_msgSend_updateDefaultShape(v8, v9, v10, v11);
    }
  }
}

- (void)setBehaviorGraph:(id)a3
{
  if (objc_msgSend_behaviorGraph(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF3060EC;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  ComponentWithType = objc_msgSend__findComponentWithType_(self, a2, 10, v2);
  objc_msgSend_setOwnerNode_(ComponentWithType, v5, self, v6);
  if ((*(self + 48) & 1) == 0)
  {
    return ComponentWithType;
  }

  return MEMORY[0x1EEE66B58](ComponentWithType, sel_presentationBehaviorGraph, v7, v8);
}

- (void)setParticleEmitter:(id)a3
{
  if (objc_msgSend_particleEmitter(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 11);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF30623C;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (void)setParticleCollider:(id)a3
{
  if (objc_msgSend_particleCollider(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 12);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF306328;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (NSString)description
{
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

  objc_msgSend_position(self, v16, v17, v18);
  if (*&v25 != 0.0 || *(&v25 + 1) != 0.0 || v26 != 0.0)
  {
    objc_msgSend_appendFormat_(v8, v22, @" pos(%f %f %f)", v24, *&v25, *(&v25 + 1), v26);
  }

  objc_msgSend_rotation(self, v22, v23, v24);
  v33 = *&v31 == 0.0 && *(&v30 + 1) == 0.0 && *&v30 == 0.0;
  if (!v33 && *(&v31 + 1) != 0.0)
  {
    objc_msgSend_appendFormat_(v8, v27, @" rot(%f %f %f %f)", v29, *&v30, *(&v30 + 1), *&v31, *(&v31 + 1));
  }

  objc_msgSend_scale(self, v27, v28, v29);
  if (*&v37 != 1.0 || *(&v37 + 1) != 1.0 || v38 != 1.0)
  {
    objc_msgSend_appendFormat_(v8, v34, @" scale(%f %f %f)", v36, *&v37, *(&v37 + 1), v38);
  }

  if (objc_msgSend_light(self, v34, v35, v36) || objc_msgSend_camera(self, v39, v40, v41) || objc_msgSend_model(self, v39, v42, v41))
  {
    objc_msgSend_appendString_(v8, v39, @" |", v41);
  }

  if (objc_msgSend_light(self, v39, v43, v41))
  {
    v47 = objc_msgSend_light(self, v44, v45, v46);
    objc_msgSend_appendFormat_(v8, v48, @" light=%@", v49, v47);
  }

  if (objc_msgSend_camera(self, v44, v45, v46))
  {
    v53 = objc_msgSend_camera(self, v50, v51, v52);
    objc_msgSend_appendFormat_(v8, v54, @" camera=%@", v55, v53);
  }

  if (objc_msgSend_model(self, v50, v51, v52))
  {
    v59 = objc_msgSend_model(self, v56, v57, v58);
    objc_msgSend_appendFormat_(v8, v60, @" model=%@", v61, v59);
  }

  v62 = objc_msgSend_childNodes(self, v56, v57, v58);
  v66 = objc_msgSend_count(v62, v63, v64, v65);
  if (v66 == 1)
  {
    objc_msgSend_appendString_(v8, v67, @" | 1 child", v68);
  }

  else if (v66)
  {
    objc_msgSend_appendFormat_(v8, v67, @" | %d children", v68, v66);
  }

  else
  {
    objc_msgSend_appendString_(v8, v67, @" | no child", v68);
  }

  objc_msgSend_appendString_(v8, v69, @">", v70);
  return v8;
}

- (BOOL)parseSpecialKey:(id)a3 withPath:(id)a4 intoDestination:(id *)a5
{
  if (!objc_msgSend_hasPrefix_(a3, a2, @"/", a4))
  {
    v16 = objc_msgSend_rangeOfString_(a3, v8, @"[", v10);
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v20 = v16;
    v21 = v16 + 1;
    if (v16 + 1 >= objc_msgSend_length(a3, v17, v18, v19))
    {
      goto LABEL_12;
    }

    v24 = objc_msgSend_substringToIndex_(a3, v22, v20, v23);
    v27 = objc_msgSend_substringFromIndex_(a3, v25, v21, v26);
    v30 = objc_msgSend_rangeOfString_(v27, v28, @"]", v29);
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v33 = objc_msgSend_substringToIndex_(v27, v31, v30, v32);
    v37 = objc_msgSend_intValue(v33, v34, v35, v36);
    if ((objc_msgSend_isEqualToString_(v24, v38, &stru_1F2575650, v39) & 1) != 0 || objc_msgSend_isEqualToString_(v24, v40, @"nodes", v41))
    {
      v24 = @"childNodes";
    }

    v42 = objc_msgSend_valueForKey_(self, v40, v24, v41);
    if (objc_msgSend_count(v42, v43, v44, v45) <= v37)
    {
LABEL_12:
      LOBYTE(v15) = 0;
      return v15;
    }

    v15 = objc_msgSend_objectAtIndex_(v42, v46, v37, v47);
    goto LABEL_3;
  }

  v11 = objc_msgSend_length(a3, v8, v9, v10);
  v13 = objc_msgSend_substringWithRange_(a3, v12, 1, v11 - 1);
  v15 = objc_msgSend_childNodeWithName_recursively_(self, v14, v13, 1);
  if (v15)
  {
LABEL_3:
    *a5 = v15;
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (id)valueForKey:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"transform", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_transform(self, v6, v7, v8);
LABEL_3:

    return objc_msgSend_valueWithVFXMatrix4_(v9, v10, v11, v12);
  }

  if (objc_msgSend_isEqualToString_(a3, v6, @"position", v8))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_position(self, v14, v15, v16);
LABEL_17:

    return objc_msgSend_valueWithVFXFloat3_(v17, v18, v19, v20);
  }

  if (objc_msgSend_isEqualToString_(a3, v14, @"scale", v16))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_scale(self, v21, v22, v23);
    goto LABEL_17;
  }

  if (objc_msgSend_isEqualToString_(a3, v21, @"orientation", v23))
  {
    v27 = MEMORY[0x1E696B098];
    objc_msgSend_orientation(self, v24, v25, v26);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(a3, v24, @"eulerAngles", v26))
    {
      goto LABEL_16;
    }

    if (objc_msgSend_isEqualToString_(a3, v31, @"rotation", v33))
    {
      v27 = MEMORY[0x1E696B098];
      objc_msgSend_rotation(self, v34, v35, v36);
      goto LABEL_12;
    }

    if (objc_msgSend_isEqualToString_(a3, v34, @"euler", v36))
    {
LABEL_16:
      v17 = MEMORY[0x1E696B098];
      objc_msgSend_eulerAngles(self, v31, v32, v33);
      goto LABEL_17;
    }

    if (objc_msgSend_isEqualToString_(a3, v31, @"pivot", v33))
    {
      v9 = MEMORY[0x1E696B098];
      objc_msgSend_pivot(self, v37, v38, v39);
      goto LABEL_3;
    }

    if (objc_msgSend_isEqualToString_(a3, v37, @"worldTransform", v39))
    {
      v9 = MEMORY[0x1E696B098];
      objc_msgSend_worldTransform(self, v40, v41, v42);
      goto LABEL_3;
    }

    if (objc_msgSend_isEqualToString_(a3, v40, @"worldPosition", v42))
    {
      v17 = MEMORY[0x1E696B098];
      objc_msgSend_worldPosition(self, v43, v44, v45);
      goto LABEL_17;
    }

    if (!objc_msgSend_isEqualToString_(a3, v43, @"worldOrientation", v45))
    {
      v49.receiver = self;
      v49.super_class = VFXNode;
      return [(VFXNode *)&v49 valueForKey:a3];
    }

    v27 = MEMORY[0x1E696B098];
    objc_msgSend_worldOrientation(self, v46, v47, v48);
  }

LABEL_12:

  return objc_msgSend_valueWithVFXFloat4_(v27, v28, v29, v30);
}

- (BOOL)rawFloat4ForKey:(id)a3 value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(a3, a2, @"orientation", v3))
  {
    objc_msgSend_orientation(self, v7, v8, v9);
LABEL_7:
    *v4 = v10;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(a3, v7, @"rotation", v9))
  {
    objc_msgSend_rotation(self, v11, v12, v13);
    goto LABEL_7;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a3, v11, @"worldOrientation", v13);
  if (isEqualToString)
  {
    objc_msgSend_worldOrientation(self, v15, v16, v17);
    goto LABEL_7;
  }

  return isEqualToString;
}

- (BOOL)rawFloat3ForKey:(id)a3 value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(a3, a2, @"position", v3))
  {
    objc_msgSend_position(self, v7, v8, v9);
  }

  else if (objc_msgSend_isEqualToString_(a3, v7, @"scale", v9))
  {
    objc_msgSend_scale(self, v11, v12, v13);
  }

  else if (objc_msgSend_isEqualToString_(a3, v11, @"eulerAngles", v13) || objc_msgSend_isEqualToString_(a3, v14, @"euler", v16))
  {
    objc_msgSend_eulerAngles(self, v14, v15, v16);
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(a3, v14, @"worldPosition", v16);
    if (!isEqualToString)
    {
      return isEqualToString;
    }

    objc_msgSend_worldPosition(self, v18, v19, v20);
  }

  *v4 = v10;
  LOBYTE(isEqualToString) = 1;
  return isEqualToString;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (objc_msgSend_isEqualToString_(a4, a2, @"transform", a4))
  {
    objc_msgSend_VFXMatrix4Value(a3, v7, v8, v9);

    objc_msgSend_setTransform_(self, v10, v11, v12);
    return;
  }

  if (objc_msgSend_isEqualToString_(a4, v7, @"position", v9))
  {
    objc_msgSend_VFXFloat3Value(a3, v13, v14, v15);

    objc_msgSend_setPosition_(self, v16, v17, v18);
    return;
  }

  if (objc_msgSend_isEqualToString_(a4, v13, @"scale", v15))
  {
    objc_msgSend_VFXFloat3Value(a3, v19, v20, v21);

    objc_msgSend_setScale_(self, v22, v23, v24);
    return;
  }

  if (objc_msgSend_isEqualToString_(a4, v19, @"orientation", v21))
  {
    objc_msgSend_VFXFloat4Value(a3, v25, v26, v27);

    objc_msgSend_setOrientation_(self, v28, v29, v30);
    return;
  }

  if (objc_msgSend_isEqualToString_(a4, v25, @"eulerAngles", v27))
  {
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(a4, v31, @"rotation", v33))
  {
    objc_msgSend_VFXFloat4Value(a3, v37, v38, v39);

    objc_msgSend_setRotation_(self, v40, v41, v42);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(a4, v37, @"euler", v39))
    {
LABEL_18:
      objc_msgSend_VFXFloat3Value(a3, v31, v32, v33);

      objc_msgSend_setEulerAngles_(self, v34, v35, v36);
      return;
    }

    if (objc_msgSend_isEqualToString_(a4, v31, @"pivot", v33))
    {
      objc_msgSend_VFXMatrix4Value(a3, v43, v44, v45);

      objc_msgSend_setPivot_(self, v46, v47, v48);
    }

    else if (objc_msgSend_isEqualToString_(a4, v43, @"worldTransform", v45))
    {
      objc_msgSend_VFXMatrix4Value(a3, v49, v50, v51);

      objc_msgSend_setWorldTransform_(self, v52, v53, v54);
    }

    else if (objc_msgSend_isEqualToString_(a4, v49, @"worldPosition", v51))
    {
      objc_msgSend_VFXFloat3Value(a3, v55, v56, v57);

      objc_msgSend_setWorldPosition_(self, v58, v59, v60);
    }

    else if (objc_msgSend_isEqualToString_(a4, v55, @"worldOrientation", v57))
    {
      objc_msgSend_VFXFloat4Value(a3, v61, v62, v63);

      objc_msgSend_setWorldOrientation_(self, v64, v65, v66);
    }

    else
    {
      v67.receiver = self;
      v67.super_class = VFXNode;
      [(VFXNode *)&v67 setValue:a3 forKey:a4];
    }
  }
}

- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4
{
  if (!objc_msgSend_length(a3, a2, a3, a4))
  {
    return 0;
  }

  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_1AF3716AC(a3, &v42, &v41, v7);
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_(self, v8, v42, a3, &v43) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v43, v9, v41, a4);
    if (v11)
    {
      v12 = v11;
      v13 = objc_alloc(MEMORY[0x1E695DF70]);
      v17 = objc_msgSend_count(v12, v14, v15, v16);
      v20 = objc_msgSend_initWithCapacity_(v13, v18, v17 + 1, v19);
      objc_msgSend_addObject_(v20, v21, v42, v22);
      objc_msgSend_addObjectsFromArray_(v20, v23, v12, v24);

      return v20;
    }

    return 0;
  }

  v43 = objc_msgSend_valueForKey_(self, v9, v42, v10);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return sub_1AF291EF0(self, a3, v26, v27);
  }

  v28 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(v43, v25, v41, a4);
  if (!v28)
  {
    return sub_1AF291EF0(self, a3, v26, v27);
  }

  v29 = objc_alloc(MEMORY[0x1E695DF70]);
  v33 = objc_msgSend_count(v28, v30, v31, v32);
  v20 = objc_msgSend_initWithCapacity_(v29, v34, v33 + 1, v35);
  objc_msgSend_addObject_(v20, v36, v42, v37);
  objc_msgSend_addObjectsFromArray_(v20, v38, v28, v39);

  return v20;
}

- (id)valueForKeyPath:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  result = objc_msgSend__valueForSimdVectorKeyPath_(self, a2, a3, v3);
  if (!result)
  {
    v7.receiver = self;
    v7.super_class = VFXNode;
    return [(VFXNode *)&v7 valueForKeyPath:a3];
  }

  return result;
}

- (id)_valueForSimdVectorKeyPath:(id)a3
{
  v45 = 0;
  v44 = 0;
  sub_1AF3716AC(a3, &v45, &v44, v3);
  if (qword_1ED73B330 != -1)
  {
    sub_1AFDF754C();
  }

  if (!v44 || !objc_msgSend_containsObject_(qword_1ED73B328, v5, v44, v6))
  {
    return 0;
  }

  v43 = 0;
  v42 = 0;
  if (objc_msgSend_rawFloat3ForKey_value_(self, v7, v45, &v42))
  {
    if (objc_msgSend_isEqualToString_(v44, v8, @"x", v9))
    {
      LODWORD(v13) = v42;
      return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v10, v11, v12, v13);
    }

    if (objc_msgSend_isEqualToString_(v44, v10, @"y", v12))
    {
      LODWORD(v18) = HIDWORD(v42);
      return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v17, v18);
    }

    if (objc_msgSend_isEqualToString_(v44, v15, @"z", v17))
    {
      LODWORD(v21) = v43;
      return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v8, v19, v20, v21);
    }
  }

  v40 = 0;
  v41 = 0;
  if (!objc_msgSend_rawFloat4ForKey_value_(self, v8, v45, &v40))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v44, v22, @"x", v23))
  {
    LODWORD(v27) = v40;
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v24, v25, v26, v27);
  }

  if (objc_msgSend_isEqualToString_(v44, v24, @"y", v26))
  {
    LODWORD(v31) = HIDWORD(v40);
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v28, v29, v30, v31);
  }

  if (objc_msgSend_isEqualToString_(v44, v28, @"z", v30))
  {
    LODWORD(v35) = v41;
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v32, v33, v34, v35);
  }

  if (!objc_msgSend_isEqualToString_(v44, v32, @"w", v34))
  {
    return 0;
  }

  LODWORD(v39) = HIDWORD(v41);
  return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v36, v37, v38, v39);
}

- (id)valueForUndefinedKey:(id)a3
{
  if ((*(self + 48) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = objc_msgSend_worldRef(self, a2, a3, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v8 = sub_1AF16E3F4(self->_node, a3);
  v9 = v8;
  if (v8)
  {
    v10 = sub_1AF1CDA60(v8);
    v11 = sub_1AF1CDAAC(v9);
    v9 = sub_1AF376790(v10, v11, v14, v12, v13);
  }

  if (v7)
  {
    sub_1AF1CEA9C(v7);
  }

  if (!v9)
  {
LABEL_9:
    v19 = 0;
    if (objc_msgSend_parseSpecialKey_withPath_intoDestination_(self, a2, a3, a3, &v19))
    {
      return v19;
    }

    else
    {
      os_unfair_lock_lock(&self->_valueForKeyLock);
      v17 = objc_msgSend_objectForKey_(self->_valueForKey, v15, a3, v16);
      os_unfair_lock_unlock(&self->_valueForKeyLock);
      if (v17)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  return v9;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v7 = sub_1AF376D98(self, a4);
  os_unfair_lock_lock(&self->_valueForKeyLock);
  valueForKey = self->_valueForKey;
  if (a3)
  {
    if (!valueForKey)
    {
      valueForKey = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valueForKey = valueForKey;
    }

    objc_msgSend_setObject_forKey_(valueForKey, v8, a3, a4);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(valueForKey, v8, a4, v9);
  }

  os_unfair_lock_unlock(&self->_valueForKeyLock);
  v11 = sub_1AF376D98(self, a4);
  v12 = v11;
  if (v7 && v11)
  {
    node = self->_node;
    sub_1AF16E2D4(node, a4, v7);
    v16 = objc_msgSend_stringByAppendingString_(@"customProperty", v14, @".", v15);
    v19 = objc_msgSend_stringByAppendingString_(v16, v17, a4, v18);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1AF30746C;
    v21[3] = &unk_1E7A7E2E8;
    v21[5] = v12;
    v21[6] = node;
    v21[4] = a4;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v20, self, v19, v21);
LABEL_10:
    CFRelease(v7);
    goto LABEL_11;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:
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
        sub_1AFDF4558(v22, v23, v24, v25, v26, v27, v28, v29);
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

    if ((*(self + 48) & 1) == 0)
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
    v18[2] = sub_1AF3076BC;
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
    if (objc_msgSend_isPausedOrPausedByInheritance(self, v18, v19, v20))
    {

      objc_msgSend__pauseAnimation_forKey_pausedByNode_(self, v21, 1, v5, 1);
    }
  }

  else
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF307A60, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF307A50, &unk_1E7A7E2E8, self, v21, *&v20);
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
    v22[2] = sub_1AF307B50;
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
      v24[2] = sub_1AF307CEC;
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
    v25[2] = sub_1AF30810C;
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
  v10[2] = sub_1AF308250;
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
  v4[2] = sub_1AF30831C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)a3
{
  v5 = objc_msgSend__vfxBindings(a3, a2, a3, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3083C8;
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
    v10[2] = sub_1AF308500;
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
  v5[2] = sub_1AF30863C;
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

- (id)objectInChildNodesAtIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  v7 = objc_msgSend_objectAtIndex_(self->_childNodes, v5, a3, v6);
  objc_sync_exit(self);
  return v7;
}

- (BOOL)canAddChildNode:(id)a3
{
  for (i = self == 0; self; i = self == 0)
  {
    if (self == a3)
    {
      break;
    }

    self = objc_msgSend_parentNode(self, a2, a3, v3);
  }

  return i;
}

- (void)addChildNode:(id)a3
{
  objc_sync_enter(self);
  v8 = objc_msgSend_countOfChildNodes(self, v5, v6, v7);
  objc_msgSend_insertObject_inChildNodesAtIndex_(self, v9, a3, v8);

  objc_sync_exit(self);
}

- (void)insertObject:(id)a3 inChildNodesAtIndex:(unint64_t)a4
{
  if (a3)
  {
    objc_sync_enter(self);
    if (!self->_childNodes)
    {
      self->_childNodes = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (objc_msgSend_canAddChildNode_(self, v7, a3, v8))
    {
      if (objc_msgSend_parentNode(a3, v9, v10, v11) != self)
      {
        v12 = a3;
        v16 = objc_msgSend_world(self, v13, v14, v15);
        v23 = objc_msgSend_world(a3, v17, v18, v19);
        if (v16 == v23)
        {
          sub_1AF308AC8(a3, v20, v21, v22);
        }

        else
        {
          objc_msgSend_removeFromParentNode(a3, v20, v21, v22);
        }

        objc_msgSend__setParent_(a3, v24, self, v25);
        if (*(a3 + 27))
        {
          objc_msgSend__propagatePhysicsBodyCountChange_(self, v27, *(a3 + 27), v28);
        }

        if (v16 != v23)
        {
          world = self->_world;
          if (world)
          {
            objc_msgSend_addWorldReference_(a3, v27, world, v28);
          }
        }

        objc_msgSend_insertObject_atIndex_(self->_childNodes, v27, a3, a4);
        if ((*(a3 + 50) & 2) != 0)
        {
          objc_msgSend__setHasFocusableChild(self, v30, v31, v32);
        }

        if (a4)
        {
          v33 = objc_msgSend_objectAtIndex_(self->_childNodes, v30, a4 - 1, v32);
        }

        else
        {
          v33 = 0;
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1AF308C0C;
        v36[3] = &unk_1E7A7E310;
        v36[4] = v33;
        v36[5] = self;
        v36[6] = a3;
        v36[7] = a4;
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v30, self, v36);
        if ((*(self + 48) & 4) != 0)
        {
          objc_msgSend__setPausedOrPausedByInheritance_(a3, v34, 1, v35);
        }
      }
    }

    else
    {
      v26 = sub_1AF0D5194();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7574();
      }
    }

    objc_sync_exit(self);
  }
}

- (void)replaceObjectInChildNodesAtIndex:(unint64_t)a3 withObject:(id)a4
{
  objc_sync_enter(self);
  if (a4)
  {
    if (objc_msgSend_canAddChildNode_(self, v7, a4, v8))
    {
      v11 = objc_msgSend_objectAtIndex_(self->_childNodes, v9, a3, v10);
      if (v11)
      {
        v12 = a4;
        objc_msgSend_removeFromParentNode(a4, v13, v14, v15);
        objc_msgSend__setParent_(v11, v16, 0, v17);
        objc_msgSend__setParent_(a4, v18, self, v19);
        objc_msgSend_addWorldReference_(a4, v20, self->_world, v21);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1AF30900C;
        v26[3] = &unk_1E7A7E3B0;
        v26[4] = v11;
        v26[5] = a4;
        v26[6] = self;
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v26);
        objc_msgSend_replaceObjectAtIndex_withObject_(self->_childNodes, v23, a3, a4);
      }

      else
      {
        v25 = sub_1AF0D5194();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF76E8();
        }
      }
    }

    else
    {
      v24 = sub_1AF0D5194();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7664();
      }
    }
  }

  else
  {
    objc_msgSend_removeObjectFromChildNodesAtIndex_(self, v7, a3, v8);
  }

  objc_sync_exit(self);
}

- (void)removeFromParentNode
{
  if (*(self + 48))
  {
    v11 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v11)
    {
      v13 = v11;
      sub_1AF1CEA20(v11);
      v15 = objc_msgSend_nodeWithNodeRef_(VFXNode, self, self->_node, v14);
      sub_1AF1CEA9C(v13);
    }

    else
    {
      v15 = objc_msgSend_nodeWithNodeRef_(VFXNode, self, self->_node, v12);
    }

    objc_msgSend_removeFromParentNode(v15, v16, v17, v18);
  }

  else if (self->_parent)
  {
    world = self->_world;
    v5 = self;
    sub_1AF308AC8(self, v6, v7, v8);
    objc_msgSend_removeWorldReference_(self, v9, world, v10);
  }
}

- (unint64_t)indexOfChildNode:(id)a3
{
  childNodes = self->_childNodes;
  v6 = objc_msgSend_count(childNodes, a2, a3, v3);
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v6;
  v10 = 0;
  while (objc_msgSend_objectAtIndex_(childNodes, v7, v10, v8) != a3)
  {
    if (v9 == ++v10)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v10;
}

- (void)removeAllChilds
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_msgSend_childNodes(self, a2, v2, v3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_removeFromParentNode(*(*(&v13 + 1) + 8 * v12++), v7, v8, v9);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (BOOL)hasAncestor:(id)a3
{
  v5 = objc_msgSend_parentNode(self, a2, a3, v3);
  for (i = v5 != 0; v5 != a3 && v5; i = v5 != 0)
  {
    v5 = objc_msgSend_parentNode(v5, v6, v7, v8);
  }

  return i;
}

- (void)replaceChildNode:(id)a3 with:(id)a4
{
  v6 = objc_msgSend_indexOfChildNode_(self, a2, a3, a4);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    MEMORY[0x1EEE66B58](self, sel_replaceObjectInChildNodesAtIndex_withObject_, v6, a4);
  }
}

- (NSArray)states
{
  v4 = objc_msgSend_stateManager(self, a2, v2, v3);

  return objc_msgSend_states(v4, v5, v6, v7);
}

- (VFXState)state
{
  v4 = objc_msgSend_stateManager(self, a2, v2, v3);

  return objc_msgSend_activeState(v4, v5, v6, v7);
}

- (void)setState:(id)a3
{
  v5 = objc_msgSend_stateManager(self, a2, a3, v3);

  objc_msgSend_setActiveState_(v5, v6, a3, v7);
}

- (void)setStateNamed:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3 && objc_msgSend_length(a3, a2, a3, v3))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = objc_msgSend_states(self, a2, a3, v3, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v29, 16);
    if (v8)
    {
      v12 = v8;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = objc_msgSend_name(v15, v9, v10, v11);
          if (objc_msgSend_isEqualToString_(v16, v17, a3, v18))
          {
            v22 = objc_msgSend_stateManager(self, v9, v10, v11);
            objc_msgSend_setActiveState_(v22, v23, v15, v24);
            return;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v25, v29, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v19 = objc_msgSend_stateManager(self, a2, a3, v3);

    objc_msgSend_setActiveState_(v19, v20, 0, v21);
  }
}

- (double)boundingBox
{
  v4 = 0u;
  v5 = 0u;
  if (objc_msgSend_getBoundingBoxMin_max_(a1, a2, &v4, &v5))
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

- (uint64_t)setBoundingBox:(float32x4_t)a3
{
  v6 = a2;
  v7 = a3;
  if (!VFXBoundingBoxIsNull(a2, a3))
  {
    return objc_msgSend_setBoundingBoxMin_max_(a1, v4, &v6, &v7);
  }

  return objc_msgSend_setBoundingBoxMin_max_(a1, v4, 0, 0);
}

- (BOOL)getBoundingBoxMin:(VFXNode *)self max:(SEL)a2
{
  v65 = *MEMORY[0x1E69E9840];
  if (!self->_node || (*(self + 49) & 0x10) != 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = v2;
  v58.i32[2] = 0;
  v58.i64[0] = 0;
  v57.i32[2] = 0;
  v57.i64[0] = 0;
  if (*(self + 48))
  {
    v9 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v9)
    {
      v10 = v9;
      sub_1AF1CEA20(v9);
      v11 = sub_1AF1C3958(self->_node, 1, &v58, &v57);
      sub_1AF1CEA9C(v10);
      if (v11)
      {
LABEL_11:
        if (v6)
        {
          *v6 = v58;
        }

        if (!v5)
        {
          return 1;
        }

        v8 = v57;
        goto LABEL_15;
      }
    }

    else if (sub_1AF1C3958(self->_node, 1, &v58, &v57))
    {
      goto LABEL_11;
    }

    return 0;
  }

  v56.i32[2] = 0;
  v56.i64[0] = 0;
  v55.i32[2] = 0;
  v55.i64[0] = 0;
  v7 = *self->_fixedBoundingBoxExtrema;
  if (v7)
  {
    if (v2)
    {
      *v2 = *v7;
    }

    if (!v3)
    {
      return 1;
    }

    v8 = *(*self->_fixedBoundingBoxExtrema + 16);
LABEL_15:
    *v5 = v8;
    return 1;
  }

  v13 = objc_msgSend_model(self, a2, v2, v3);
  if (v13 && objc_msgSend_getBoundingBoxMin_max_(v13, v14, v6, v5))
  {
    if (v6)
    {
      v58 = *v6;
    }

    if (v5)
    {
      v57 = *v5;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = objc_msgSend_childNodes(self, v14, v15, v16);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v51, v64, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v52;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v51 + 1) + 8 * i);
        if (objc_msgSend_getBoundingBoxMin_max_(v25, v21, &v56, &v55))
        {
          v49 = v55;
          v50 = v56;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          objc_msgSend_pivot(v25, v21, v26, v27);
          v67 = __invert_f4(v66);
          v43 = v67.columns[1];
          v44 = v67.columns[0];
          v41 = v67.columns[3];
          v42 = v67.columns[2];
          objc_msgSend_transform(v25, v28, v29, v30);
          v31 = 0;
          v59[0] = v32;
          v59[1] = v33;
          v59[2] = v34;
          v59[3] = v35;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          do
          {
            *(&v60 + v31 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(v59[v31])), v43, *&v59[v31], 1), v42, v59[v31], 2), v41, v59[v31], 3);
            ++v31;
          }

          while (v31 != 4);
          v45 = v60;
          v46 = v61;
          v47 = v62;
          v48 = v63;
          sub_1AF1B7A68(&v50, &v49, &v50, &v49, &v45);
          v36 = v50;
          if (v12)
          {
            v38 = v57;
            v37 = v58;
            v36.i32[3] = 0;
            v37.i32[3] = 0;
            v36 = vminnmq_f32(v36, v37);
            v39 = v49;
            v39.i32[3] = 0;
            v38.i32[3] = 0;
            v40 = vmaxnmq_f32(v39, v38);
          }

          else
          {
            v40 = v49;
          }

          v57 = v40;
          v58 = v36;
          v12 = 1;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v51, v64, 16);
    }

    while (v22);
  }

  if (v12)
  {
    if (v6)
    {
      *v6 = v58;
    }

    if (v5)
    {
      *v5 = v57;
    }
  }

  return v12;
}

- (void)setBoundingBoxMin:(VFXNode *)self max:(SEL)a2
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v12, MEMORY[0x1E69E9820], 3221225472, sub_1AF309B58, &unk_1E7A7EA48, *v7, *v6, self, v16[0], v16[1], v16[2], v16[3], v16[4]);
  }

  else if (v5)
  {
    free(v5);
    *self->_fixedBoundingBoxExtrema = 0;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v16, v12[0], v12[1], v12[2], v12[3], v13, v14, v15, MEMORY[0x1E69E9820], 3221225472, sub_1AF309B44, &unk_1E7A7E1D0, self);
  }
}

- (BOOL)getFrustum:(id *)a3 withViewport:
{
  v60 = v4;
  v63 = v4;
  if (objc_msgSend_isPresentationObject(self, a2, a3, v3))
  {
    v10 = objc_msgSend_nodeRef(self, v7, v8, v9);

    LOBYTE(v11) = sub_1AF27EE18(v10, a3, v60);
  }

  else
  {
    v11 = objc_msgSend_camera(self, v7, v8, v9);
    if (v11)
    {
      v15 = objc_msgSend_cameraRef(v11, v12, v13, v14);
      v16 = sub_1AF15E428(v15);
      v18 = v16[1];
      v17 = v16[2];
      v62[0] = *v16;
      v62[1] = v18;
      v62[2] = v17;
      v19 = v16[6];
      v21 = v16[3];
      v20 = v16[4];
      v62[5] = v16[5];
      v62[6] = v19;
      v62[3] = v21;
      v62[4] = v20;
      v22 = v16[10];
      v24 = v16[7];
      v23 = v16[8];
      v62[9] = v16[9];
      v62[10] = v22;
      v62[7] = v24;
      v62[8] = v23;
      v25 = sub_1AF15E62C(v62, &v63);
      v59 = *(v25 + 1);
      v61 = *v25;
      v57 = *(v25 + 3);
      v58 = *(v25 + 2);
      objc_msgSend_worldTransform(self, v26, v27, v28);
      v71 = __invert_f4(v70);
      v33 = 0;
      v64 = v71;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      do
      {
        *(&v65 + v33 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*&v64.columns[v33])), v59, *v64.columns[v33].f32, 1), v58, v64.columns[v33], 2), v57, v64.columns[v33], 3);
        ++v33;
      }

      while (v33 != 4);
      v29.f32[0] = *&v65.i32[3] - *v65.i32;
      v29.f32[1] = *&v66.i32[3] - *v66.i32;
      v29.f32[2] = *(&v67 + 3) - *&v67;
      v34 = vmulq_f32(v29, v29);
      v29.f32[3] = *(&v68 + 3) - *&v68;
      v30.f32[0] = *&v65.i32[3] + *v65.i32;
      v30.f32[1] = *&v66.i32[3] + *v66.i32;
      v30.f32[2] = *(&v67 + 3) + *&v67;
      v35 = vmulq_f32(v30, v30);
      v30.f32[3] = *(&v68 + 3) + *&v68;
      v31.f32[0] = *&v65.i32[3] + *&v65.i32[1];
      v31.f32[1] = *&v66.i32[3] + *&v66.i32[1];
      v31.f32[2] = *(&v67 + 3) + *(&v67 + 1);
      v36 = v31;
      v36.f32[3] = *(&v68 + 3) + *(&v68 + 1);
      v37 = vmulq_f32(v31, v31);
      v32.f32[0] = *&v65.i32[3] - *&v65.i32[1];
      v32.f32[1] = *&v66.i32[3] - *&v66.i32[1];
      v32.f32[2] = *(&v67 + 3) - *(&v67 + 1);
      v38 = v32;
      v38.f32[3] = *(&v68 + 3) - *(&v68 + 1);
      v39 = vmulq_f32(v32, v32);
      v40 = vextq_s8(v66, v66, 8uLL);
      v41 = vextq_s8(v65, v65, 8uLL).u64[0];
      *v40.f32 = vsub_f32(vzip2_s32(v41, *v40.f32), vzip1_s32(v41, *v40.f32));
      v40.f32[2] = *(&v67 + 3) - *(&v67 + 2);
      v42 = v40;
      v42.f32[3] = *(&v68 + 3) - *(&v68 + 2);
      v43 = vzip2q_s32(v65, v66);
      v43.i32[2] = DWORD2(v67);
      v44 = vmulq_f32(v40, v40);
      v45 = vmulq_f32(v43, v43);
      v46 = v43;
      v46.i32[3] = DWORD2(v68);
      v47 = vaddv_f32(*v34.f32);
      *v43.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v47));
      *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v47), vmul_f32(*v43.f32, *v43.f32)));
      v48 = vmulq_n_f32(v29, vmul_f32(*v43.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v47), vmul_f32(*v43.f32, *v43.f32))).f32[0]);
      v34.f32[0] = v35.f32[2] + vaddv_f32(*v35.f32);
      v49 = vrsqrte_f32(v34.u32[0]);
      v50 = vmul_f32(v49, vrsqrts_f32(v34.u32[0], vmul_f32(v49, v49)));
      v51 = vmulq_n_f32(v30, vmul_f32(v50, vrsqrts_f32(v34.u32[0], vmul_f32(v50, v50))).f32[0]);
      *&v52 = v37.f32[2] + vaddv_f32(*v37.f32);
      *v34.f32 = vrsqrte_f32(v52);
      *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v52, vmul_f32(*v34.f32, *v34.f32)));
      v53 = vmulq_n_f32(v36, vmul_f32(*v34.f32, vrsqrts_f32(v52, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
      v36.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
      *v39.f32 = vrsqrte_f32(v36.u32[0]);
      *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v39.f32, *v39.f32)));
      v54 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v39.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
      *v45.f32 = vrsqrte_f32(v39.u32[0]);
      *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v45.f32, *v45.f32)));
      *&v55 = v44.f32[2] + vaddv_f32(*v44.f32);
      *v44.f32 = vrsqrte_f32(v55);
      *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v55, vmul_f32(*v44.f32, *v44.f32)));
      *a3 = v48;
      *(a3 + 1) = v51;
      *(a3 + 2) = v53;
      *(a3 + 3) = v54;
      *(a3 + 4) = vmulq_n_f32(v46, vmul_f32(*v45.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
      *(a3 + 5) = vmulq_n_f32(v42, vmul_f32(*v44.f32, vrsqrts_f32(v55, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
      LOBYTE(v11) = 1;
    }
  }

  return v11;
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

- (id)flattenedClone
{
  v5 = objc_msgSend_copy(self, a2, v2, v3);
  v6 = objc_alloc_init(VFXModel);
  objc_msgSend_setModel_(v5, v7, v6, v8);
  node = self->_node;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF30A0E0;
  v12[3] = &unk_1E7A7E3B0;
  v12[4] = node;
  v12[5] = v5;
  v12[6] = v6;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, v5, v12);
  return v5;
}

- (id)flattenedCopy
{
  v4 = objc_msgSend_flattenedClone(self, a2, v2, v3);

  return v4;
}

- (id)_subdividedCopyWithSubdivisionLevel:(int64_t)a3
{
  v4 = a3;
  v6 = objc_msgSend_worldRef(self, a2, a3, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v8 = sub_1AF1B8E1C(self->_node, v4);
  v14 = objc_msgSend_nodeWithNodeRef_(VFXNode, v9, v8, v10);
  if (v8)
  {
    CFRelease(v8);
  }

  if (objc_msgSend_skinner(v14, v11, v12, v13))
  {
    v18 = objc_msgSend_skinner(self, v15, v16, v17);
    v22 = objc_msgSend_skeleton(v18, v19, v20, v21);
    v26 = objc_msgSend_skinner(v14, v23, v24, v25);
    objc_msgSend_setSkeleton_(v26, v27, v22, v28);
  }

  objc_msgSend__copyAnimationsFrom_(v14, v15, self, v17);
  objc_msgSend__copyBindingsFrom_(v14, v29, self, v30);
  if (v7)
  {
    sub_1AF1CEA9C(v7);
  }

  return v14;
}

- (void)_setPausedOrPausedByInheritance:(BOOL)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(self + 48);
  if (((((v3 & 4) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    v6 = a3 ? 4 : 0;
    *(self + 48) = v3 & 0xFB | v6;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF30A3CC;
    v24[3] = &unk_1E7A7E298;
    v24[4] = self;
    v25 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v24);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = objc_msgSend_childNodes(self, v7, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v26, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v20 + 1) + 8 * i);
          if ((objc_msgSend_isPaused(v19, v13, v14, v15) & 1) == 0)
          {
            objc_msgSend__setPausedOrPausedByInheritance_(v19, v13, v4, v15);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v20, v26, 16);
      }

      while (v16);
    }
  }
}

- (void)setPaused:(BOOL)a3
{
  v7 = *(self + 48);
  if (((((v7 & 2) == 0) ^ a3) & 1) == 0)
  {
    v18 = v5;
    v19 = v4;
    v8 = a3;
    if (a3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *(self + 48) = v7 & 0xFD | v10;
    v11 = objc_msgSend_parentNode(self, a2, a3, v3, v18, v19);
    v16 = objc_msgSend_isPausedOrPausedByInheritance(v11, v12, v13, v14) | v8;

    objc_msgSend__setPausedOrPausedByInheritance_(self, v15, v16, v17);
  }
}

- (CGRect)_focusFrameInView:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  DWORD2(v36) = 0;
  *&v36 = 0;
  DWORD2(v35) = 0;
  *&v35 = 0;
  if (objc_msgSend_getBoundingBoxMin_max_(self, a2, &v36, &v35))
  {
    v8 = v36;
    v9 = v36;
    DWORD1(v9) = DWORD1(v35);
    v37[0] = v36;
    v37[2] = v9;
    v10 = v35;
    DWORD2(v10) = DWORD2(v36);
    v11 = v35;
    DWORD1(v11) = DWORD1(v36);
    v12 = v35;
    LODWORD(v12) = v36;
    v13 = v36;
    LODWORD(v8) = v35;
    v37[1] = v8;
    DWORD2(v13) = DWORD2(v35);
    v37[3] = v10;
    v37[4] = v13;
    v37[5] = v11;
    v37[6] = v12;
    v37[7] = v35;
    objc_msgSend_worldTransform(self, v5, v6, v7);
    v33 = v18;
    v34 = v17;
    v31 = v20;
    v32 = v19;
    for (i = 0; i != 8; ++i)
    {
      objc_msgSend_projectPoint_(a3, v14, v15, v16, *vaddq_f32(v31, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(v37[i])), v33, *&v37[i], 1), v32, v37[i], 2)).i64, *&v31, *&v32, *&v33, *&v34);
      v37[i] = v22;
    }

    v23 = vcvtq_f64_f32(*&v37[0]);
    v24 = 1;
    v25 = v23.f64[0];
    v26 = v23;
    do
    {
      v27 = vcvtq_f64_f32(*&v37[v24]);
      v26 = vbslq_s8(vcgtq_f64(v27, v26), v26, v27);
      if (v25 < v27.f64[0])
      {
        v25 = v27.f64[0];
      }

      ++v24;
    }

    while (v24 != 8);
    v28 = v25 - v26.f64[0];
    v29 = v26.f64[1];
    v30 = vsubq_f64(v23, v26).f64[1];
  }

  else
  {
    v26.f64[0] = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v30 = 0.0;
  }

  result.origin.x = v26.f64[0];
  result.size.height = v30;
  result.size.width = v28;
  result.origin.y = v29;
  return result;
}

- (void)_appendFocusableNodesInRect:(CGRect)a3 ofView:(id)a4 toFocusItems:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(self + 50) & 2) != 0)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    if (objc_msgSend_isFocusInteractionEnabled(self, a2, a4, a5))
    {
      if ((objc_msgSend__isEffectivelyHidden(self, v12, v13, v14) & 1) == 0)
      {
        objc_msgSend__focusFrameInView_(self, v12, a4, v15);
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        if (CGRectIntersectsRect(v29, v30))
        {
          objc_msgSend_addObject_(a5, v12, self, v16);
        }
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    childNodes = self->_childNodes;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v12, &v23, v27, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(childNodes);
          }

          objc_msgSend__appendFocusableNodesInRect_ofView_toFocusItems_(*(*(&v23 + 1) + 8 * v22++), v19, a4, a5, x, y, width, height);
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(childNodes, v19, &v23, v27, 16);
      }

      while (v20);
    }
  }
}

- (void)_setHasFocusableChild
{
  if ((*(self + 50) & 2) == 0)
  {
    *(self + 50) |= 2u;
    objc_msgSend__setHasFocusableChild(self->_parent, a2, v2, v3);
  }
}

- (void)_updateFocusableCache
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(self + 50) & 2) == 0)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7760(v5, a2, v2, v3, v6, v7, v8, v9);
    }
  }

  if ((*(self + 49) & 0x180) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = objc_msgSend_childNodes(self, a2, v2, v3, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v23, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v20;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v10);
          }

          if ((*(*(*(&v19 + 1) + 8 * v18) + 50) & 2) != 0)
          {
            objc_msgSend__setHasFocusableChild(self, v13, v14, v15);
            return;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v19, v23, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    *(self + 50) &= ~2u;
    objc_msgSend__updateFocusableCache(self->_parent, v13, v14, v15);
  }
}

- (void)setFocusBehavior:(int64_t)a3
{
  v4 = *(self + 49);
  if (((v4 >> 7) & 3) != a3)
  {
    v5 = v4 & 0xFE7F | ((a3 & 3) << 7);
    *(self + 49) = v5;
    if ((a3 & 3) != 0)
    {
      *(self + 50) = HIBYTE(v5) | 2;
      objc_msgSend__setHasFocusableChild(self->_parent, a2, a3, v3);
    }

    else
    {
      objc_msgSend__updateFocusableCache(self, a2, a3, v3);
    }
  }
}

- (BOOL)_isEffectivelyHidden
{
  v5 = objc_msgSend_parentNode(self, a2, v2, v3);
  if (objc_msgSend__isEffectivelyHidden(v5, v6, v7, v8) & 1) != 0 || (objc_msgSend_isHidden(self, v9, v10, v11))
  {
    return 1;
  }

  objc_msgSend_opacity(self, v12, v13, v14);
  return v16 <= 0.00000011921;
}

- (NSArray)constraints
{
  ComponentWithType = objc_msgSend__findComponentWithType_(self, a2, 6, v2);
  v7 = objc_msgSend_copy(ComponentWithType, v4, v5, v6);

  return v7;
}

- (void)setConstraints:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  ComponentWithType = objc_msgSend__findComponentWithType_(self, a2, 6, v3);
  if (ComponentWithType != a3)
  {
    v10 = ComponentWithType;
    if (ComponentWithType)
    {
      if (self->_world)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(ComponentWithType, v7, &v27, v32, 16);
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            v14 = 0;
            do
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              objc_msgSend_removeWorldReference_(*(*(&v27 + 1) + 8 * v14++), v7, self->_world, v9);
            }

            while (v12 != v14);
            v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v7, &v27, v32, 16);
          }

          while (v12);
        }
      }

      objc_msgSend__removeComponentWithType_(self, v7, 6, v9);
    }

    if (a3)
    {
      v15 = objc_msgSend_mutableCopy(a3, v7, v8, v9);
      objc_msgSend__assignComponent_toContainerWithType_(self, v16, v15, 6);
      if (self->_world)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v7, &v23, v31, 16);
        if (v17)
        {
          v19 = v17;
          v20 = *v24;
          do
          {
            v21 = 0;
            do
            {
              if (*v24 != v20)
              {
                objc_enumerationMutation(a3);
              }

              objc_msgSend_addWorldReference_(*(*(&v23 + 1) + 8 * v21++), v7, self->_world, v18);
            }

            while (v19 != v21);
            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v7, &v23, v31, 16);
          }

          while (v19);
        }
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF30ACCC;
    v22[3] = &unk_1E7A7E220;
    v22[4] = a3;
    v22[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v22);
  }
}

- (void)setPhysicsBody:(id)a3
{
  v6 = objc_msgSend_physicsBody(self, a2, a3, v3);
  if (v6 != a3)
  {
    v10 = v6;
    if (v6)
    {
      if (objc_msgSend__owner(v6, v7, v8, v9) != self)
      {
        v14 = sub_1AF0D5194();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF77D8(v10, self, v14, v13);
        }
      }

      objc_msgSend__removeOwner(v10, v11, v12, v13);
      objc_msgSend__removeComponentWithType_(self, v15, 7, v16);
      objc_msgSend_transform(self, v17, v18, v19);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1AF30AFD4;
      v33[3] = &unk_1E7A7E578;
      v38 = self;
      v34 = v20;
      v35 = v21;
      v36 = v22;
      v37 = v23;
      objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v24, self, @"transform", v33);
      v10 = 0xFFFFFFFFLL;
    }

    if (a3)
    {
      v10 = (v10 + 1);
      if (objc_msgSend__owner(a3, v7, v8, v9))
      {
        v26 = sub_1AF0D5194();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF7860(a3, self, v26, v27);
        }
      }

      objc_msgSend__assignComponent_toContainerWithType_(self, v25, a3, 7);
      objc_msgSend__setOwner_(a3, v28, self, v29);
      objc_msgSend_resetTransform(a3, v30, v31, v32);
    }

    if (v10)
    {
      objc_msgSend__propagatePhysicsBodyCountChange_(self, v7, v10, v9);
    }
  }
}

- (VFXForceField)forceField
{
  result = objc_msgSend__findComponentWithType_(self, a2, 8, v2);
  if (*(self + 48))
  {

    return objc_msgSend_presentationObject(result, v5, v6, v7);
  }

  return result;
}

- (void)setForceField:(id)a3
{
  if (objc_msgSend_forceField(self, a2, a3, v3) != a3)
  {
    objc_msgSend__setComponent_withType_(self, v6, a3, 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF30B0D8;
    v8[3] = &unk_1E7A7E220;
    v8[4] = self;
    v8[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (id)_audioPlayers
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_nodeRef(self, v6, v7, v8);
  if (!v10)
  {
    v15 = 0;
    if (!v9)
    {
      return v15;
    }

    goto LABEL_5;
  }

  v11 = sub_1AF1BB518(v10);
  v15 = objc_msgSend_copy(v11, v12, v13, v14);
  if (v9)
  {
LABEL_5:
    sub_1AF1CEA9C(v9);
  }

  return v15;
}

- (void)addAudioPlayer:(id)a3
{
  if (a3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF30B238;
    v4[3] = &unk_1E7A7E220;
    v4[4] = a3;
    v4[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  }

  else
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF78E8();
    }
  }
}

- (void)removeAllAudioPlayers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF30B318;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)removeAudioPlayer:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF30B3C0;
  v3[3] = &unk_1E7A7E220;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (unint64_t)countOfAudioPlayers
{
  v4 = objc_msgSend_audioPlayers(self, a2, v2, v3);

  return objc_msgSend_count(v4, v5, v6, v7);
}

- (id)objectInAudioPlayersAtIndex:(unint64_t)a3
{
  v5 = objc_msgSend_audioPlayers(self, a2, a3, v3);

  return objc_msgSend_objectAtIndex_(v5, v6, a3, v7);
}

- (void)insertObject:(id)a3 inAudioPlayersAtIndex:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF30B4E8;
  v4[3] = &unk_1E7A7E2E8;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
}

- (void)removeObjectFromAudioPlayersAtIndex:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF30B5A0;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)replaceObjectInAudioPlayerAtIndex:(unint64_t)a3 withObject:(id)a4
{
  if (!a4)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7958(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF30B69C;
  v14[3] = &unk_1E7A7E2E8;
  v14[4] = self;
  v14[5] = a4;
  v14[6] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v14);
}

- (void)_customEncodingOfVFXNode:(id)a3 usePresentationObject:(BOOL)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, v7, v8, v9);
  }

  if ((*(self + 50) & 8) != 0)
  {
    v11 = objc_msgSend_editorLocked(self, v7, v8, v9);
    objc_msgSend_encodeBool_forKey_(a3, v12, v11, @"locked");
  }

  if ((objc_msgSend__isAReference(self, v7, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_light(self, v13, v14, v15))
    {
      v19 = objc_msgSend_light(self, v16, v17, v18);
      v22 = v19;
      if (v4)
      {
        v22 = objc_msgSend_presentationLight(v19, v20, v19, v21);
      }

      objc_msgSend_encodeObject_forKey_(a3, v20, v22, @"light");
    }

    if (objc_msgSend_model(self, v16, v17, v18))
    {
      v26 = objc_msgSend_model(self, v23, v24, v25);
      v29 = v26;
      if (v4)
      {
        v29 = objc_msgSend_presentationModel(v26, v27, v26, v28);
      }

      objc_msgSend_encodeObject_forKey_(a3, v27, v29, @"model");
    }

    if (objc_msgSend_camera(self, v23, v24, v25))
    {
      v33 = objc_msgSend_camera(self, v30, v31, v32);
      v36 = v33;
      if (v4)
      {
        v36 = objc_msgSend_presentationCamera(v33, v34, v33, v35);
      }

      objc_msgSend_encodeObject_forKey_(a3, v34, v36, @"camera");
    }

    if (objc_msgSend_skinner(self, v30, v31, v32))
    {
      v40 = objc_msgSend_skinner(self, v37, v38, v39);
      objc_msgSend_encodeObject_forKey_(a3, v41, v40, @"skinner");
    }

    if (objc_msgSend_morpher(self, v37, v38, v39))
    {
      if (v10 && (v45 = objc_msgSend_options(v10, v42, v43, v44), v48 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"VFXWorldExportCompressMorphTargets", v47), objc_msgSend_BOOLValue(v48, v49, v50, v51)) && sub_1AF2FF684(a3, self, v43, v44))
      {
        objc_msgSend_setSkipMorphTargets_(v10, v42, 1, v44);
        v55 = objc_msgSend_morpher(self, v52, v53, v54);
        objc_msgSend_encodeObject_forKey_(a3, v56, v55, @"morpher");
        objc_msgSend_setSkipMorphTargets_(v10, v57, 0, v58);
      }

      else
      {
        v59 = objc_msgSend_morpher(self, v42, v43, v44);
        objc_msgSend_encodeObject_forKey_(a3, v60, v59, @"morpher");
      }
    }

    v61 = objc_msgSend_deformers(self, v42, v43, v44);
    if (v61)
    {
      objc_msgSend_encodeObject_forKey_(a3, v62, v61, @"deformers");
    }

    if (objc_msgSend_constraints(self, v62, v63, v64))
    {
      v68 = objc_msgSend_constraints(self, v65, v66, v67);
      objc_msgSend_encodeObject_forKey_(a3, v69, v68, @"constraints");
    }

    if (objc_msgSend_physicsBody(self, v65, v66, v67))
    {
      v73 = objc_msgSend_physicsBody(self, v70, v71, v72);
      objc_msgSend_encodeObject_forKey_(a3, v74, v73, @"physicsBody");
    }

    if (objc_msgSend_forceField(self, v70, v71, v72))
    {
      v78 = objc_msgSend_forceField(self, v75, v76, v77);
      objc_msgSend_encodeObject_forKey_(a3, v79, v78, @"forceField");
    }

    if (objc_msgSend_behaviorGraph(self, v75, v76, v77))
    {
      v83 = objc_msgSend_behaviorGraph(self, v80, v81, v82);
      objc_msgSend_encodeObject_forKey_(a3, v84, v83, @"behaviorGraph");
    }

    if (objc_msgSend_particleEmitter(self, v80, v81, v82))
    {
      v88 = objc_msgSend_particleEmitter(self, v85, v86, v87);
      objc_msgSend_encodeObject_forKey_(a3, v89, v88, @"emitter");
    }

    if (objc_msgSend_particleCollider(self, v85, v86, v87))
    {
      v93 = objc_msgSend_particleCollider(self, v90, v91, v92);
      objc_msgSend_encodeObject_forKey_(a3, v94, v93, @"collider");
    }

    if (objc_msgSend_stateManager(self, v90, v91, v92))
    {
      v98 = objc_msgSend_stateManager(self, v95, v96, v97);
      objc_msgSend_encodeObject_forKey_(a3, v99, v98, @"stateManager");
    }

    if (objc_msgSend_prefab(self, v95, v96, v97))
    {
      v103 = objc_msgSend_prefab(self, v100, v101, v102);
      objc_msgSend_encodeObject_forKey_(a3, v104, v103, @"prefab");
    }

    v105 = *self->_fixedBoundingBoxExtrema;
    if (v105)
    {
      v106 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v100, v101, v102, *v105);
      objc_msgSend_encodeObject_forKey_(a3, v107, v106, @"fixedBoundingBoxExtrema[0]");
      v111 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v108, v109, v110, *(*self->_fixedBoundingBoxExtrema + 16));
      objc_msgSend_encodeObject_forKey_(a3, v112, v111, @"fixedBoundingBoxExtrema[1]");
    }

    objc_msgSend_encodeBool_forKey_(a3, v100, (*(self + 48) >> 1) & 1, @"paused");
    v115 = (*(self + 49) >> 7) & 3;
    if (v115)
    {
      objc_msgSend_encodeInt_forKey_(a3, v113, v115, @"focusBehavior");
    }

    if ((*(self + 48) & 0x20) != 0)
    {
      v116 = self;
      if (v4)
      {
        v116 = objc_msgSend_presentationNode(self, v113, v115, v114);
      }

      v117 = objc_msgSend_valueForKey_(v116, v113, @"kPivotKey", v114);
      if (v117)
      {
        objc_msgSend_VFXMatrix4Value(v117, v118, v119, v120);
        sub_1AF371B50(a3, @"pivot", v121, v122, v123, v124);
      }
    }
  }

  os_unfair_lock_lock(&self->_valueForKeyLock);
  if (objc_msgSend_count(self->_valueForKey, v125, v126, v127))
  {
    v131 = objc_msgSend_mutableCopy(self->_valueForKey, v128, v129, v130);
    objc_msgSend_removeObjectForKey_(v131, v132, @"kPivotKey", v133);
    if (objc_msgSend_count(v131, v134, v135, v136))
    {
      objc_msgSend_encodeObject_forKey_(a3, v137, v131, @"clientAttributes");
    }
  }

  os_unfair_lock_unlock(&self->_valueForKeyLock);
  v144 = 0;
  if (objc_msgSend__isAReference(self, v138, v139, v140) && v10)
  {
    v145 = objc_msgSend_options(v10, v141, v142, v143);
    v148 = objc_msgSend_objectForKeyedSubscript_(v145, v146, @"VFXWorldExportEmbedReferences", v147);
    v144 = objc_msgSend_BOOLValue(v148, v149, v150, v151);
  }

  if (objc_msgSend_childNodes(self, v141, v142, v143) && v144 & 1 | ((objc_msgSend__isAReference(self, v152, v153, v154) & 1) == 0))
  {
    v158 = objc_msgSend_childNodes(self, v155, v156, v157);
    v162 = objc_msgSend_options(v10, v159, v160, v161);
    v165 = objc_msgSend_objectForKeyedSubscript_(v162, v163, @"VFXWorldExportOptimize", v164);
    if (objc_msgSend_BOOLValue(v165, v166, v167, v168))
    {
      v158 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v158, v169, &unk_1F24EC178, v170);
    }

    objc_msgSend_encodeObject_forKey_(a3, v169, v158, @"childNodes");
  }
}

- (void)_customDecodingOfVFXNode:(id)a3
{
  v209 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_containsValueForKey_(a3, a2, @"paused", v3))
  {
    if (objc_msgSend_decodeBoolForKey_(a3, v6, @"paused", v7))
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(self + 48) = *(self + 48) & 0xFD | v8;
  }

  v9 = objc_msgSend_decodeIntForKey_(a3, v6, @"focusBehavior", v7);
  objc_msgSend_setFocusBehavior_(self, v10, v9, v11);
  v14 = objc_msgSend_decodeBoolForKey_(a3, v12, @"locked", v13);
  objc_msgSend_setEditorLocked_(self, v15, v14, v16);
  *self->_anon_40 = xmmword_1AFE20150;
  *&self->_anon_40[16] = xmmword_1AFE20160;
  *&self->_anon_40[32] = xmmword_1AFE20180;
  *&self->_anon_40[48] = xmmword_1AFE201A0;
  *(self + 48) |= 0x10u;
  if (objc_msgSend_containsValueForKey_(a3, v17, @"fixedBoundingBoxExtrema[0]", v18))
  {
    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v20, v19, @"fixedBoundingBoxExtrema[0]");
    objc_msgSend_VFXFloat3Value(v21, v22, v23, v24);
    v207 = v25;
    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v27, v26, @"fixedBoundingBoxExtrema[1]");
    objc_msgSend_VFXFloat3Value(v28, v29, v30, v31);
    v208 = v32;
    objc_msgSend_setBoundingBoxMin_max_(self, v33, &v207, &v208);
  }

  v34 = objc_opt_class();
  v35 = objc_opt_class();
  objc_msgSend_vfx_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_(a3, v36, v34, v35, @"whatever");
  v37 = sub_1AF37287C();
  v39 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v38, v37, @"clientAttributes");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = objc_msgSend_mutableCopy(v39, v40, v41, v42);
    objc_msgSend__setAttributes_(self, v44, v43, v45);
  }

  if (objc_msgSend_containsValueForKey_(a3, v40, @"pivot", v42))
  {
    *&v46 = sub_1AF371C4C(a3, @"pivot").n128_u64[0];
    objc_msgSend_setPivot_(self, v47, v48, v49, v46);
  }

  v50 = objc_opt_class();
  v52 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v51, v50, @"light");
  objc_msgSend_setLight_(self, v53, v52, v54);
  v55 = objc_opt_class();
  v57 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v56, v55, @"model");
  objc_msgSend_setModel_(self, v58, v57, v59);
  v60 = objc_opt_class();
  v62 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v61, v60, @"camera");
  objc_msgSend_setCamera_(self, v63, v62, v64);
  v65 = objc_opt_class();
  v67 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v66, v65, @"skinner");
  objc_msgSend_setSkinner_(self, v68, v67, v69);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = sub_1AF2FFDB4(a3, self);
    objc_msgSend_setAllTargetsFromAnimCodec_(a3, v71, v70, v72);
    v73 = objc_opt_class();
    v75 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v74, v73, @"morpher");
    objc_msgSend_setMorpher_(self, v76, v75, v77);
    objc_msgSend_setAllTargetsFromAnimCodec_(a3, v78, 0, v79);
  }

  else
  {
    v80 = objc_opt_class();
    v82 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v81, v80, @"morpher");
    objc_msgSend_setMorpher_(self, v83, v82, v84);
  }

  v85 = objc_opt_class();
  v87 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v86, v85, @"deformers");
  objc_msgSend_setDeformers_(self, v88, v87, v89);
  v90 = objc_opt_class();
  v92 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v91, v90, @"constraints");
  objc_msgSend_setConstraints_(self, v93, v92, v94);
  v95 = objc_opt_class();
  v97 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v96, v95, @"forceField");
  objc_msgSend_setForceField_(self, v98, v97, v99);
  if (objc_msgSend_containsValueForKey_(a3, v100, @"effect", v101))
  {
    v102 = objc_opt_class();
    v104 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v103, v102, @"effect");
    v105 = [VFXBehaviorGraph alloc];
    v109 = objc_msgSend_tag(v104, v106, v107, v108);
    v112 = objc_msgSend_initWithTag_(v105, v110, v109, v111);
    objc_msgSend_setBehaviorGraph_(self, v113, v112, v114);
    v115 = [VFXParticleEmitter alloc];
    v119 = objc_msgSend_tag(v104, v116, v117, v118);
    v122 = objc_msgSend_initWithTag_(v115, v120, v119, v121);
    objc_msgSend_setParticleEmitter_(self, v123, v122, v124);
  }

  else
  {
    v125 = objc_opt_class();
    v127 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v126, v125, @"behaviorGraph");
    objc_msgSend_setBehaviorGraph_(self, v128, v127, v129);
    v130 = objc_opt_class();
    v132 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v131, v130, @"emitter");
    v133 = objc_opt_class();
    v135 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v134, v133, @"collider");
    if (objc_msgSend_behaviorGraph(self, v136, v137, v138))
    {
      if (v132)
      {
        v142 = objc_msgSend_coreEntityHandle(v132, v139, v140, v141);
        v146 = objc_msgSend_behaviorGraph(self, v143, v144, v145);
        if (v142 != objc_msgSend_coreEntityHandle(v146, v147, v148, v149))
        {
          v150 = sub_1AF0D5194();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF79D0();
          }

          v154 = objc_msgSend_behaviorGraph(self, v151, v152, v153);
          v158 = objc_msgSend_coreEntityHandle(v154, v155, v156, v157);
          objc_msgSend__patchCoreEntityHandle_(v132, v159, v158, v160);
        }
      }

      if (v135)
      {
        v161 = objc_msgSend_coreEntityHandle(v135, v139, v140, v141);
        v165 = objc_msgSend_particleCollider(self, v162, v163, v164);
        if (v161 != objc_msgSend_coreEntityHandle(v165, v166, v167, v168))
        {
          v169 = sub_1AF0D5194();
          if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF79D0();
          }

          v173 = objc_msgSend_behaviorGraph(self, v170, v171, v172);
          v177 = objc_msgSend_coreEntityHandle(v173, v174, v175, v176);
          objc_msgSend__patchCoreEntityHandle_(v135, v178, v177, v179);
        }
      }
    }

    objc_msgSend_setParticleEmitter_(self, v139, v132, v141);
    objc_msgSend_setParticleCollider_(self, v180, v135, v181);
  }

  v182 = objc_opt_class();
  v184 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v183, v182, @"stateManager");
  objc_msgSend_setStateManager_(self, v185, v184, v186);
  v187 = objc_opt_class();
  v189 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v188, v187, @"prefab");
  if (v189)
  {
    objc_msgSend_setPrefab_(self, v190, v189, v191);
  }

  v192 = objc_opt_class();
  v194 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v193, v192, @"childNodes");
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v195, &v202, v206, 16);
  if (v196)
  {
    v199 = v196;
    v200 = *v203;
    do
    {
      for (i = 0; i != v199; ++i)
      {
        if (*v203 != v200)
        {
          objc_enumerationMutation(v194);
        }

        objc_msgSend_addChildNode_(self, v197, *(*(&v202 + 1) + 8 * i), v198);
      }

      v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v197, &v202, v206, 16);
    }

    while (v199);
  }
}

- (void)_didDecodeVFXNode:(id)a3
{
  if (!objc_msgSend_behaviorGraph(self, a2, a3, v3))
  {
    v8 = objc_msgSend_particleEmitter(self, v5, v6, v7);
    v12 = objc_msgSend_tag(v8, v9, v10, v11);
    if (v12 || (v16 = objc_msgSend_particleCollider(self, v13, v14, v15), (v12 = objc_msgSend_tag(v16, v17, v18, v19)) != 0) || (v12 = objc_msgSend_valueForUndefinedKey_(self, v20, @"_entityTagIdentifier", v21)) != 0)
    {
      v22 = v12;
      v23 = [VFXBehaviorGraph alloc];
      v27 = objc_msgSend_initWithTag_(v23, v24, v22, v25);

      objc_msgSend_setBehaviorGraph_(self, v26, v27, v28);
    }
  }
}

- (void)_encodeNodePropertiesWithCoder:(id)a3
{
  sub_1AF371A8C(a3, @"position", *self->_position);
  v8 = (*(self + 49) >> 2) & 3;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v9 = *self->_anon_90;
    v10 = @"orientation";
  }

  else
  {
    if (!v8)
    {
      sub_1AF371A8C(a3, @"eulerAngles", *self->_anon_90);
      goto LABEL_8;
    }

    v9 = *self->_anon_90;
    v10 = @"rotation";
  }

  sub_1AF371AF4(a3, v10, v9);
LABEL_8:
  if ((*(self + 49) & 0xC) != 4)
  {
    objc_msgSend_rotation(self, v5, v6, v7);
    sub_1AF371AF4(a3, @"rotation", v11);
  }

  sub_1AF371A8C(a3, @"scale", *self->_scale);
  *&v12 = self->_opacity;
  objc_msgSend_encodeFloat_forKey_(a3, v13, @"opacity", v14, v12);
  objc_msgSend_encodeInteger_forKey_(a3, v15, self->_categoryBitMask, @"categoryBitMask");
  objc_msgSend_encodeInteger_forKey_(a3, v16, self->_renderingOrder, @"renderingOrder");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(a3, v17, name, @"name");
  }

  objc_msgSend_encodeBool_forKey_(a3, v17, (*(self + 49) >> 4) & 1, @"hidden");
  objc_msgSend_encodeBool_forKey_(a3, v19, (*(self + 49) >> 5) & 1, @"castsShadow");
  objc_msgSend_encodeBool_forKey_(a3, v20, (*(self + 49) >> 6) & 1, @"depthPrePass");
  objc_msgSend_encodeBool_forKey_(a3, v21, *(self + 49) & 1, @"isEyesightFrame");
  v23 = (*(self + 49) >> 1) & 1;

  objc_msgSend_encodeBool_forKey_(a3, v22, v23, @"isHandTrackingRoot");
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = objc_msgSend_options(a3, v5, v6, v7), v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"VFXWorldExportPresentationTree", v10), objc_msgSend_BOOLValue(v11, v12, v13, v14)))
  {
    v17 = objc_msgSend_presentationNode(self, v5, v15, v16);
    objc_msgSend__updateModelFromPresentation(v17, v18, v19, v20);
    objc_msgSend__updateAffine(v17, v21, v22, v23);
    objc_msgSend__customEncodingOfVFXNode_usePresentationObject_(self, v24, a3, 1);
    objc_msgSend__encodeNodePropertiesWithCoder_(v17, v25, a3, v26);

    sub_1AF372440(a3, self, v27, v28);
  }

  else
  {
    objc_msgSend__customEncodingOfVFXNode_usePresentationObject_(self, v5, a3, 0);
    objc_msgSend__encodeNodePropertiesWithCoder_(self, v29, a3, v30);
    sub_1AF372440(a3, self, v31, v32);

    sub_1AF3728B4(a3, self, v33, v34);
  }
}

- (VFXNode)initWithCoder:(id)a3
{
  v102.receiver = self;
  v102.super_class = VFXNode;
  v7 = [(VFXNode *)&v102 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = sub_1AF1B8588();
    v7->_node = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v7);
    }

    v7->_valueForKeyLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v7, v12, v13, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v16, v15, @"name");
    objc_msgSend_setName_(v7, v18, v17, v19);
    objc_msgSend__customDecodingOfVFXNode_(v7, v20, a3, v21);
    v22 = sub_1AF371BC4(a3, @"position");
    objc_msgSend_setPosition_(v7, v23, v24, v25, v22);
    if (objc_msgSend_containsValueForKey_(a3, v26, @"orientation", v27))
    {
      *&v30 = sub_1AF371C0C(a3, @"orientation").n128_u64[0];
      objc_msgSend_setOrientation_(v7, v31, v32, v33, v30);
    }

    else if (objc_msgSend_containsValueForKey_(a3, v28, @"eulerAngles", v29))
    {
      v34 = sub_1AF371BC4(a3, @"eulerAngles");
      objc_msgSend_setEulerAngles_(v7, v35, v36, v37, v34);
    }

    else
    {
      *&v38 = sub_1AF371C0C(a3, @"rotation").n128_u64[0];
      objc_msgSend_setRotation_(v7, v39, v40, v41, v38);
    }

    v42 = sub_1AF371BC4(a3, @"scale");
    objc_msgSend_setScale_(v7, v43, v44, v45, v42);
    objc_msgSend_decodeFloatForKey_(a3, v46, @"opacity", v47);
    objc_msgSend_setOpacity_(v7, v48, v49, v50);
    v53 = objc_msgSend_decodeIntegerForKey_(a3, v51, @"categoryBitMask", v52);
    objc_msgSend_setCategoryBitMask_(v7, v54, v53, v55);
    v58 = objc_msgSend_decodeIntegerForKey_(a3, v56, @"renderingOrder", v57);
    objc_msgSend_setRenderingOrder_(v7, v59, v58, v60);
    v63 = objc_msgSend_decodeBoolForKey_(a3, v61, @"hidden", v62);
    objc_msgSend_setHidden_(v7, v64, v63, v65);
    v68 = objc_msgSend_decodeBoolForKey_(a3, v66, @"castsShadow", v67);
    objc_msgSend_setCastsShadow_(v7, v69, v68, v70);
    if (objc_msgSend_containsValueForKey_(a3, v71, @"isEyesightFrame", v72))
    {
      v75 = objc_msgSend_decodeBoolForKey_(a3, v73, @"isEyesightFrame", v74);
      objc_msgSend_setIsEyeSightFrame_(v7, v76, v75, v77);
    }

    else
    {
      objc_msgSend_setIsEyeSightFrame_(v7, v73, 0, v74);
    }

    if (objc_msgSend_containsValueForKey_(a3, v78, @"isHandTrackingRoot", v79))
    {
      v82 = objc_msgSend_decodeBoolForKey_(a3, v80, @"isHandTrackingRoot", v81);
      objc_msgSend_setIsHandTrackingRoot_(v7, v83, v82, v84);
    }

    else
    {
      objc_msgSend_setIsHandTrackingRoot_(v7, v80, 0, v81);
    }

    if (objc_msgSend_containsValueForKey_(a3, v85, @"depthPrePass", v86))
    {
      v89 = objc_msgSend_decodeBoolForKey_(a3, v87, @"depthPrePass", v88);
      objc_msgSend_setUsesDepthPrePass_(v7, v90, v89, v91);
    }

    v92 = objc_opt_class();
    v94 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v93, v92, @"physicsBody");
    objc_msgSend_setPhysicsBody_(v7, v95, v94, v96);
    v7->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(a3, v7);
    sub_1AF372B94(a3, v7);
    objc_msgSend__didDecodeVFXNode_(v7, v97, a3, v98);
    objc_msgSend_setImmediateMode_(VFXTransaction, v99, v8, v100);
  }

  return v7;
}

- (void)setIsAuthoring:(BOOL)a3
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(self + 50) = *(self + 50) & 0xFB | v4;
  if (a3)
  {
    objc_msgSend_setCastsShadow_(self, a2, 0, v3);
  }
}

- (void)setEditorLocked:(BOOL)a3
{
  v3 = *(self + 50);
  if (((((v3 & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 50) = v3 & 0xF7 | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF30CAE0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)getBoundingSphereCenter:(VFXNode *)self radius:(SEL)a2
{
  v73 = *MEMORY[0x1E69E9840];
  if (self->_node)
  {
    v4 = v3;
    v5 = v2;
    v66 = 0uLL;
    if (*(self + 48))
    {
      v14 = objc_msgSend_worldRef(self, a2, v2, v3);
      v15 = v14;
      if (v14)
      {
        sub_1AF1CEA20(v14);
      }

      v12 = sub_1AF1C39FC(self->_node, 1, &v66);
      if (v5)
      {
        *v5 = v66;
      }

      if (v4)
      {
        *v4 = v66.i32[3];
      }

      if (v15)
      {
        sub_1AF1CEA9C(v15);
      }
    }

    else
    {
      v49 = v3;
      v65 = 0uLL;
      v7 = objc_msgSend_model(self, a2, v2, v3);
      v64.i32[2] = 0;
      v64.i64[0] = 0;
      v63 = 0;
      if (v7)
      {
        v68.i32[2] = 0;
        v68.i64[0] = 0;
        v67.columns[0].i32[0] = 0;
        BoundingSphereCenter_radius = objc_msgSend_getBoundingSphereCenter_radius_(v7, v8, &v68, &v67);
        v12 = BoundingSphereCenter_radius;
        if (BoundingSphereCenter_radius)
        {
          v13 = v68;
          v13.i32[3] = v67.columns[0].i32[0];
          v66 = v13;
        }
      }

      else
      {
        v12 = 0;
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v16 = objc_msgSend_childNodes(self, v8, v9, v10);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v59, v72, 16);
      if (v18)
      {
        v21 = v18;
        v22 = *v60;
        v20.i32[0] = -1;
        v50 = v20;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v60 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v59 + 1) + 8 * i);
            v25 = objc_msgSend_getBoundingSphereCenter_radius_(v24, v19, &v64, &v63);
            v28 = v64;
            v28.i32[3] = v63;
            v65 = v28;
            if (v25)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              objc_msgSend_transform(v24, v19, v26, v27);
              v53 = v30;
              v54 = v29;
              v51 = v32;
              v52 = v31;
              objc_msgSend_pivot(v24, v33, v34, v35);
              v75 = __invert_f4(v74);
              v36 = 0;
              v67 = v75;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              do
              {
                *(&v68 + v36 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*&v67.columns[v36])), v53, *v67.columns[v36].f32, 1), v52, v67.columns[v36], 2), v51, v67.columns[v36], 3);
                ++v36;
              }

              while (v36 != 4);
              v55 = v68;
              v56 = v69;
              v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v69)), v70, vextq_s8(vuzp1q_s32(v56, v56), v69, 0xCuLL));
              v38 = vmulq_f32(v68, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
              v39 = vaddv_f32(*v38.f32);
              v40 = vmulq_f32(v55, v55);
              v41 = vmulq_f32(v56, v56);
              v42 = vadd_f32(vzip1_s32(*v40.i8, *v41.i8), vzip2_s32(*v40.i8, *v41.i8));
              if ((v38.f32[2] + v39) >= 0.0)
              {
                v43 = 1.0;
              }

              else
              {
                v43 = -1.0;
              }

              v44 = vextq_s8(v40, v40, 8uLL);
              *v44.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v44.f32, *&vextq_s8(v41, v41, 8uLL)), v42));
              v45 = vmulq_f32(v70, v70);
              v44.i32[2] = sqrtf(v45.f32[2] + vaddv_f32(*v45.f32));
              v46 = vmulq_n_f32(v44, v43);
              v47 = vmvnq_s8(vorrq_s8(vcltzq_f32(v46), vcgezq_f32(v46)));
              v47.i32[3] = v47.i32[2];
              v57 = v70;
              v58 = v71;
              v47.i32[0] = vmaxvq_u32(v47);
              sub_1AF27A190(&v65, &v55, &v65, vandq_s8(v46, vdupq_lane_s32(*&vcgtq_s32(v47, v50), 0)));
              if (v12)
              {
                sub_1AF1DA274(&v66, &v65, &v66);
              }

              else
              {
                v66 = v65;
              }

              v12 = 1;
            }
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v59, v72, 16);
        }

        while (v21);
      }

      if (v12)
      {
        if (v5)
        {
          *v5 = v66;
        }

        if (v49)
        {
          *v49 = v66.i32[3];
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (double)pivot
{
  if (*(a1 + 48))
  {
    v10 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v10)
    {
      v11 = v10;
      sub_1AF1CEA20(v10);
      *&v12 = sub_1AF1B887C(*(a1 + 8)).n128_u64[0];
      sub_1AF1CEA9C(v11);
      return v12;
    }

    else
    {
      *&result = sub_1AF1B887C(*(a1 + 8)).n128_u64[0];
    }
  }

  else
  {
    *&result = 1065353216;
    if ((*(a1 + 48) & 0x20) != 0)
    {
      v6 = objc_msgSend_valueForKey_(a1, a2, @"kPivotKey", a4);
      *&result = 1065353216;
      if (v6)
      {
        objc_msgSend_VFXMatrix4Value(v6, v7, v8, v9, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, 0.0);
      }
    }
  }

  return result;
}

- (BOOL)hasPhysicBody
{
  if (*(self + 48))
  {
    LOBYTE(v2) = sub_1AF1BBE50(self->_node);
  }

  else
  {
    return (*(self + 26) >> 7) & 1;
  }

  return v2;
}

- (void)resetPhysicsBodyTransformInHierarchy
{
  v5 = objc_msgSend_physicsBody(self, a2, v2, v3);
  objc_msgSend_resetTransform(v5, v6, v7, v8);

  objc_msgSend_enumerateChildNodesUsingBlock_(self, v9, &unk_1F24EC198, v10);
}

- (void)_propagatePhysicsBodyCountChange:(int)a3
{
  if (self)
  {
    v4 = a3;
    do
    {
      self->_physicsBodyCountInHierarchy += v4;
      self = objc_msgSend_parentNode(self, a2, *&a3, v3);
    }

    while (self);
  }
}

- (void)setPivot:(float32x4_t)a3
{
  result = objc_msgSend_valueForKey_(a1, a2, @"kPivotKey", a8);
  if (result)
  {
    result = objc_msgSend_VFXMatrix4Value(result, v10, v11, v12);
  }

  else
  {
    v15 = xmmword_1AFE47B00;
    v16 = unk_1AFE47B10;
    v13 = xmmword_1AFE47AE0;
    v14 = unk_1AFE47AF0;
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v13, a3), vceqq_f32(v14, a4)), vandq_s8(vceqq_f32(v15, a5), vceqq_f32(v16, a6)))) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(a1, v10, @"pivot", v12);
    v20 = vdupq_n_s32(0x3727C5ACu);
    v21 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v20, vabdq_f32(a4, *(MEMORY[0x1E69E9B18] + 16))), vcgeq_f32(v20, vabdq_f32(a3, *MEMORY[0x1E69E9B18]))), vandq_s8(vcgeq_f32(v20, vabdq_f32(a5, *(MEMORY[0x1E69E9B18] + 32))), vcgeq_f32(v20, vabdq_f32(a6, *(MEMORY[0x1E69E9B18] + 48))))));
    *(a1 + 48) = *(a1 + 48) & 0xDF | (32 * (v21 >= 0));
    if (v21 < 0)
    {
      objc_msgSend_setValue_forKey_(a1, v17, 0, @"kPivotKey");
    }

    else
    {
      v22 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v17, v18, v19);
      objc_msgSend_setValue_forKey_(a1, v23, v22, @"kPivotKey");
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1AF30D258;
    v32[3] = &unk_1E7A7E578;
    v37 = a1;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v24, a1, @"pivot", v32);
    if (*(a1 + 54))
    {
      objc_msgSend_resetPhysicsBodyTransformInHierarchy(a1, v25, v26, v27);
    }

    return objc_msgSend_didChangeValueForKey_(a1, v25, @"pivot", v27);
  }

  return result;
}

- (double)transform
{
  if (*(a1 + 48))
  {
    v6 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v9 = sub_1AF1B7F84(*(a1 + 8));
      sub_1AF1CEA9C(v7);
      *&v5 = v9;
    }

    else
    {
      *&v5 = sub_1AF1B7F84(*(a1 + 8));
    }
  }

  else
  {
    if ((*(a1 + 48) & 0x10) == 0)
    {
      objc_msgSend__updateTransform(a1, a2, a3, a4);
    }

    v5 = *(a1 + 64);
  }

  return *&v5;
}

- (float32x4_t)setTransform:(uint64_t)a3
{
  v8 = result;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  if (result[3].i8[0])
  {
    v16 = objc_msgSend_worldRef(result, a2, a3, a4);
    if (v16)
    {
      v17 = v16;
      sub_1AF1CEA20(v16);
      sub_1AF1BA204(*(v8 + 8), &v28);
      return sub_1AF1CEA9C(v17);
    }

    else
    {
      return sub_1AF1BA204(*(v8 + 8), &v28);
    }
  }

  else if ((result[3].i8[0] & 0x10) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a6, result[5]), vceqq_f32(a5, result[4])), vandq_s8(vceqq_f32(a7, result[6]), vceqq_f32(a8, result[7])))) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(result, a2, @"transform", a4, *&a5, *&a6, *&a7, *&a8);
    v27.n128_u32[2] = 0;
    v27.n128_u64[0] = 0;
    v26.i32[2] = 0;
    v26.i64[0] = 0;
    v25 = 0uLL;
    sub_1AF3041C0(&v25, &v27, &v26, v21, v22, v23, v24);
    v10 = v28;
    v12 = v25;
    v11 = v26;
    *(v8 + 128) = v27;
    *(v8 + 144) = v12;
    *(v8 + 160) = v11;
    v13 = *(v8 + 48);
    *(v8 + 49) = *(v8 + 49) & 0xF3 | 8;
    v14 = v29;
    *(v8 + 64) = v10;
    *(v8 + 80) = v14;
    v15 = v31;
    *(v8 + 96) = v30;
    *(v8 + 112) = v15;
    *(v8 + 48) = v13 | 0x18;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v9, v8, @"transform");
    if (*(v8 + 54))
    {
      objc_msgSend_resetPhysicsBodyTransformInHierarchy(v8, v18, v19, v20);
    }

    return objc_msgSend_didChangeValueForKey_(v8, v18, @"transform", v20);
  }

  return result;
}

- (double)position
{
  if (*(a1 + 48))
  {
    v6 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v6)
    {
      v7 = v6;
      sub_1AF1CEA20(v6);
      v10 = sub_1AF1B9F08(*(a1 + 8));
      sub_1AF1CEA9C(v7);
      *&v5 = v10;
    }

    else
    {
      v8 = *(a1 + 8);

      *&v5 = sub_1AF1B9F08(v8);
    }
  }

  else
  {
    if ((*(a1 + 48) & 8) == 0)
    {
      objc_msgSend__updateAffine(a1, a2, a3, a4);
    }

    v5 = *(a1 + 128);
  }

  return *&v5;
}

- (void)setPosition:(VFXNode *)self
{
  if (*(self + 48))
  {
    v12 = v4;
    v9 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v9)
    {
      v10 = v9;
      sub_1AF1CEA20(v9);
      sub_1AF1B9F10(self->_node, v12);

      sub_1AF1CEA9C(v10);
    }

    else
    {
      node = self->_node;

      sub_1AF1B9F10(node, v12);
    }
  }

  else
  {
    objc_msgSend__setPosition_(self, a2, v2, v3);
    if (self->_physicsBodyCountInHierarchy)
    {

      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v6, v7, v8);
    }
  }
}

- (__n128)rotation
{
  if (*(a1 + 48))
  {
    v29 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v29)
    {
      v37 = v29;
      sub_1AF1CEA20(v29);
      sub_1AF1BA0FC(*(a1 + 8), v38, v39, v40, v41, v42, v43, v44);
      v57 = v45;
      sub_1AF1CEA9C(v37);
      return v57;
    }

    else
    {
      v53 = *(a1 + 8);

      sub_1AF1BA0FC(v53, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  else
  {
    if ((*(a1 + 48) & 8) == 0)
    {
      objc_msgSend__updateAffine(a1, a2, a3, a4);
    }

    v6 = (*(a1 + 49) >> 2) & 3;
    if (v6 > 1)
    {
      result.n128_u64[0] = 0;
      if (v6 != 2)
      {
        return result;
      }

      v46 = *(a1 + 144);
      v47 = vmulq_f32(v46, v46);
      v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
      v48 = vdupq_lane_s32(*v47.f32, 0);
      v48.i32[3] = 0;
      v49 = vrsqrteq_f32(v48);
      v50 = vmulq_f32(v49, vrsqrtsq_f32(v48, vmulq_f32(v49, v49)));
      v51 = vmulq_f32(v46, vmulq_f32(v50, vrsqrtsq_f32(v48, vmulq_f32(v50, v50))));
      v52 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v47.f32[0] != 0.0)), 0x1FuLL));
      v52.i32[3] = 0;
      v56 = vbslq_s8(vcltzq_s32(v52), v51, v46).u64[0];
      v28 = sqrtf(v47.f32[0]);
      v21 = v46.f32[3];
      goto LABEL_11;
    }

    if (!v6)
    {
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v8 = vmulq_f32(*(a1 + 144), v7);
      v8.i32[3] = 0;
      x = v8;
      v55 = _simd_cos_f4(v8);
      _Q0 = _simd_sin_f4(x);
      _D2 = vextq_s8(v55, v55, 8uLL).u64[0];
      v11 = vmul_f32(*v55.f32, vext_s8(*_Q0.f32, _D2, 4uLL));
      v12 = vdup_laneq_s32(_Q0, 2);
      v12.f32[0] = -v55.f32[0];
      v13.i32[0] = vextq_s8(_Q0, _Q0, 8uLL).u32[0];
      v13.i32[1] = _Q0.i32[0];
      v14 = vmul_f32(vzip2_s32(*_Q0.f32, *v55.f32), v13);
      *v15.f32 = vmla_f32(vmul_f32(v14, v12), vrev64_s32(v11), vzip1_s32(*_Q0.f32, _D2));
      *_D2.i32 = vmuls_lane_f32(v55.f32[0], *v55.f32, 1);
      __asm { FMLA            S4, S2, V0.S[2] }

      v21 = vmuls_n_f32(_Q0.f32[0], v14.f32[0]) + (v55.f32[0] * *&v11.i32[1]);
      v15.i32[2] = _S4;
      v22 = vmulq_f32(v15, v15);
      v22.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
      v23 = vdupq_lane_s32(*v22.f32, 0);
      v23.i32[3] = 0;
      v24 = vrsqrteq_f32(v23);
      v25 = vmulq_f32(v24, vrsqrtsq_f32(v23, vmulq_f32(v24, v24)));
      v26 = vmulq_f32(vmulq_f32(v25, vrsqrtsq_f32(v23, vmulq_f32(v25, v25))), v15);
      v27 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v22.f32[0] != 0.0)), 0x1FuLL));
      v27.i32[3] = 0;
      v56 = vbslq_s8(vcltzq_s32(v27), v26, v15).u64[0];
      v28 = sqrtf(v22.f32[0]);
LABEL_11:
      atan2f(v28, v21);
      result.n128_u64[0] = v56;
      return result;
    }

    return *(a1 + 144);
  }

  return result;
}

- (void)setRotation:(VFXNode *)self
{
  v14 = v4;
  if ((*(self + 48) & 8) == 0)
  {
    objc_msgSend__updateAffine(self, a2, v2, v3);
    v4 = v14;
  }

  if ((*(self + 49) & 0xC) != 4 || (vminvq_u32(vceqq_f32(*self->_anon_90, v4)) & 0x80000000) == 0)
  {
    objc_msgSend_willChangeValueForKey_(self, a2, @"rotation", v3, *&v14);
    *(self + 48) &= ~0x10u;
    *self->_anon_90 = v15;
    *(self + 49) = *(self + 49) & 0xF3 | 4;
    v7 = vceqzq_f32(v15);
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) != 0)
    {
      v10 = v15;
    }

    else
    {
      v8 = vmulq_f32(v15, v15);
      *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
      *v8.f32 = vrsqrte_f32(v9);
      *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
      v10 = vmulq_n_f32(v15, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
    }

    v10.i32[3] = v15.i32[3];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF30DBE0;
    v16[3] = &unk_1E7A7E5C8;
    v18 = self;
    v17 = v10;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"rotation", v16);
    if (self->_physicsBodyCountInHierarchy)
    {
      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v11, v12, v13);
    }

    objc_msgSend_didChangeValueForKey_(self, v11, @"rotation", v13);
  }
}

- (double)orientation
{
  if (*(a1 + 48))
  {
    v6 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v6)
    {
      v14 = v6;
      sub_1AF1CEA20(v6);
      v22 = sub_1AF1BA0F4(*(a1 + 8), v15, v16, v17, v18, v19, v20, v21);
      sub_1AF1CEA9C(v14);
      return v22;
    }

    else
    {
      return sub_1AF1BA0F4(*(a1 + 8), v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    objc_msgSend__quaternion(a1, a2, a3, a4);
  }

  return result;
}

- (void)setOrientation:(uint64_t)a3
{
  if (*(a1 + 48))
  {
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(a5, a5))) & 0x80000000) != 0)
    {
      if ((byte_1EB658CB1 & 1) == 0)
      {
        byte_1EB658CB1 = 1;
        v23 = sub_1AF0D5194();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF7A40();
        }
      }
    }

    else
    {
      v9 = objc_msgSend_worldRef(a1, a2, a3, a4);
      if (v9)
      {
        v16 = v9;
        sub_1AF1CEA20(v9);
        sub_1AF1BA184(*(a1 + 8), a5, v17, v18, v19, v20, v21, v22);

        sub_1AF1CEA9C(v16);
      }

      else
      {
        v24 = *(a1 + 8);

        sub_1AF1BA184(v24, a5, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    objc_msgSend__setQuaternion_(a1, a2, a3, a4);
    if (*(a1 + 54))
    {

      objc_msgSend_resetPhysicsBodyTransformInHierarchy(a1, v6, v7, v8);
    }
  }
}

- (double)eulerAngles
{
  if (*(a1 + 48))
  {
    v6 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v6)
    {
      v14 = v6;
      sub_1AF1CEA20(v6);
      v23 = sub_1AF1BA140(*(a1 + 8), v15, v16, v17, v18, v19, v20, v21);
      sub_1AF1CEA9C(v14);
      return v23;
    }

    else
    {
      v22 = *(a1 + 8);

      return sub_1AF1BA140(v22, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {

    objc_msgSend__euler(a1, a2, a3, a4);
  }

  return result;
}

- (void)setEulerAngles:(VFXNode *)self
{
  v17 = v4;
  if (*(self + 48))
  {
    v14 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v14)
    {
      v15 = v14;
      sub_1AF1CEA20(v14);
      sub_1AF1BA148(self->_node, v17);

      sub_1AF1CEA9C(v15);
    }

    else
    {
      node = self->_node;

      sub_1AF1BA148(node, v17);
    }
  }

  else
  {
    if ((*(self + 48) & 8) == 0)
    {
      objc_msgSend__updateAffine(self, a2, v2, v3);
    }

    objc_msgSend__euler(self, a2, v2, v3, *&v17);
    v9 = vceqq_f32(v8, v18);
    v9.i32[3] = v9.i32[2];
    if ((vminvq_u32(v9) & 0x80000000) == 0)
    {
      objc_msgSend_willChangeValueForKey_(self, v6, @"eulerAngles", v7);
      *(self + 48) &= ~0x10u;
      *self->_anon_90 = v18;
      *(self + 49) &= 0xF3u;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF30DFB0;
      v19[3] = &unk_1E7A7E5C8;
      v21 = self;
      v20 = v18;
      objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v10, self, @"eulerAngles", v19);
      if (self->_physicsBodyCountInHierarchy)
      {
        objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v11, v12, v13);
      }

      objc_msgSend_didChangeValueForKey_(self, v11, @"eulerAngles", v13);
    }
  }
}

- (double)scale
{
  if (*(a1 + 48))
  {
    v6 = objc_msgSend_worldRef(a1, a2, a3, a4);
    if (v6)
    {
      v14 = v6;
      sub_1AF1CEA20(v6);
      v24 = sub_1AF1BA070(*(a1 + 8), v15, v16, v17, v18, v19, v20, v21);
      sub_1AF1CEA9C(v14);
      *&v5 = v24;
    }

    else
    {
      v22 = *(a1 + 8);

      *&v5 = sub_1AF1BA070(v22, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    if ((*(a1 + 48) & 8) == 0)
    {
      objc_msgSend__updateAffine(a1, a2, a3, a4);
    }

    v5 = *(a1 + 160);
  }

  return *&v5;
}

- (void)setScale:(VFXNode *)self
{
  if (*(self + 48))
  {
    v24 = v4;
    v9 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v9)
    {
      v16 = v9;
      sub_1AF1CEA20(v9);
      sub_1AF1BA078(self->_node, v24, v17, v18, v19, v20, v21, v22);

      sub_1AF1CEA9C(v16);
    }

    else
    {
      node = self->_node;

      sub_1AF1BA078(node, v24, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    objc_msgSend__setScale_(self, a2, v2, v3);
    if (self->_physicsBodyCountInHierarchy)
    {

      objc_msgSend_resetPhysicsBodyTransformInHierarchy(self, v6, v7, v8);
    }
  }
}

- (void)setWorldPosition:(VFXNode *)self
{
  v14 = v4;
  if (objc_msgSend_parentNode(self, a2, v2, v3))
  {
    v9 = objc_msgSend_parentNode(self, v6, v7, v8);
    objc_msgSend_worldTransform(v9, v10, v11, v12);
    v17 = __invert_f4(v16);
    *&v13 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v17.columns[3], v17.columns[2], v14, 2), v17.columns[1], *v14.f32, 1), v17.columns[0], v14.f32[0]).u64[0];
  }

  else
  {
    v13 = *v14.i64;
  }

  objc_msgSend_setPosition_(self, v6, v7, v8, v13);
}

- (double)worldOrientation
{
  objc_msgSend_worldTransform(a1, a2, a3, a4);
  v5 = vmulq_f32(v4, v4);
  v7 = vmulq_f32(v6, v6);
  v9 = vmulq_f32(v8, v8);
  v10 = vzip2q_s32(v5, v9);
  v11 = vzip1q_s32(vzip1q_s32(v5, v9), v7);
  v12 = vtrn2q_s32(v5, v7);
  v12.i32[2] = v9.i32[1];
  v13 = vaddq_f32(vzip1q_s32(v10, vdupq_laneq_s32(v7, 2)), vaddq_f32(v11, v12));
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v14 = vcgeq_f32(v12, v13);
  v13.i32[3] = 0;
  v15 = vrsqrteq_f32(v13);
  v16 = vmulq_f32(v15, vrsqrtsq_f32(v13, vmulq_f32(v15, v15)));
  v17 = v14;
  v17.i32[3] = 0;
  v18 = vbslq_s8(vcltzq_s32(v17), v13, vmulq_f32(v16, vrsqrtsq_f32(v13, vmulq_f32(v16, v16))));
  v19 = vmulq_n_f32(v4, v18.f32[0]);
  v20 = vmulq_lane_f32(v6, *v18.f32, 1);
  v21 = vmulq_laneq_f32(v8, v18, 2);
  v22 = vuzp1q_s32(v21, v21);
  v23 = vuzp1q_s32(v20, v20);
  v24 = v19;
  if (v14.i32[0])
  {
    v25 = vmlaq_f32(vmulq_f32(vextq_s8(v22, v21, 0xCuLL), vnegq_f32(v20)), v21, vextq_s8(v23, v20, 0xCuLL));
    v24 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  }

  v26 = vuzp1q_s32(v19, v19);
  v27 = v20;
  if (v14.i32[1])
  {
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(v26, v19, 0xCuLL), vnegq_f32(v21)), v19, vextq_s8(v22, v21, 0xCuLL));
    v27 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  }

  if (v14.i32[2])
  {
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(v23, v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(v26, v19, 0xCuLL));
    v21 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  }

  v30 = (*v24.i32 + *&v27.i32[1]) + v21.f32[2];
  if (v30 > 0.0)
  {
    v31 = sqrtf(v30 + 1.0);
    *v32.f32 = vsub_f32(*&vzip2q_s32(v27, vuzp1q_s32(v27, v21)), *&vtrn2q_s32(v21, vzip2q_s32(v21, v24)));
    v32.f32[2] = *&v24.i32[1] - *v27.i32;
    v32.f32[3] = v31 * v31;
    v33 = 0.5 / v31;
LABEL_9:
    *&result = vmulq_n_f32(v32, v33).u64[0];
    return result;
  }

  if (*v24.i32 < *&v27.i32[1] || *v24.i32 < v21.f32[2])
  {
    if (*&v27.i32[1] <= v21.f32[2])
    {
      v42 = vzip2q_s32(v24, v27).u64[0];
      v43 = __PAIR64__(v24.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v21.f32[2] + 1.0) - *v24.i32) - *&v27.i32[1])));
      v44 = vdup_lane_s32(*v27.i8, 0);
      v45 = vsub_f32(*v24.i8, v44);
      v44.i32[0] = v43.i32[0];
      v44.i32[0] = vmul_f32(v43, v44).u32[0];
      v44.i32[1] = v45.i32[1];
      *v32.f32 = vadd_f32(v42, *v21.f32);
      *&v32.u32[2] = v44;
      v33 = 0.5 / v43.f32[0];
      goto LABEL_9;
    }

    v37 = sqrtf(((*&v27.i32[1] + 1.0) - *v24.i32) - v21.f32[2]);
    v41.f32[0] = *&v24.i32[1] + *v27.i32;
    v36 = vzip2q_s32(v24, v27).u64[0];
    v41.f32[1] = v37 * v37;
    *&v41.u32[2] = vext_s8(vadd_f32(*v21.f32, v36), vsub_f32(*v21.f32, v36), 4uLL);
  }

  else
  {
    v37 = sqrtf(((*v24.i32 + 1.0) - *&v27.i32[1]) - v21.f32[2]);
    v41.f32[0] = v37 * v37;
    v38 = *&v24.i32[1] + *v27.i32;
    v39 = vzip2q_s32(v24, v27).u64[0];
    LODWORD(v40) = vadd_f32(v39, *v21.f32).u32[0];
    HIDWORD(v40) = vsub_f32(v39, *&v21).i32[1];
    v41.f32[1] = v38;
    v41.i64[1] = v40;
  }

  *&result = vmulq_n_f32(v41, 0.5 / v37).u64[0];
  return result;
}

- (uint64_t)setWorldOrientation:(uint64_t)a3
{
  if (!objc_msgSend_parentNode(a1, a2, a3, a4))
  {
    v39 = a5.i64[0];
    goto LABEL_21;
  }

  v9 = objc_msgSend_parentNode(a1, v6, v7, v8);
  objc_msgSend_worldTransform(v9, v10, v11, v12);
  v62 = __invert_f4(v61);
  v62.columns[3] = vmulq_f32(v62.columns[0], v62.columns[0]);
  v13 = vmulq_f32(v62.columns[1], v62.columns[1]);
  v14 = vmulq_f32(v62.columns[2], v62.columns[2]);
  v15 = vzip2q_s32(v62.columns[3], v14);
  v16 = vzip1q_s32(vzip1q_s32(v62.columns[3], v14), v13);
  v62.columns[3] = vtrn2q_s32(v62.columns[3], v13);
  v62.columns[3].i32[2] = v14.i32[1];
  v17 = vaddq_f32(vzip1q_s32(v15, vdupq_laneq_s32(v13, 2)), vaddq_f32(v16, v62.columns[3]));
  v62.columns[3].i64[0] = 0x80000000800000;
  v62.columns[3].i64[1] = 0x80000000800000;
  v18 = vcgeq_f32(v62.columns[3], v17);
  v17.i32[3] = 0;
  v19 = vrsqrteq_f32(v17);
  v20 = vmulq_f32(v19, vrsqrtsq_f32(v17, vmulq_f32(v19, v19)));
  v21 = v18;
  v21.i32[3] = 0;
  v22 = vbslq_s8(vcltzq_s32(v21), v17, vmulq_f32(v20, vrsqrtsq_f32(v17, vmulq_f32(v20, v20))));
  v23 = vmulq_n_f32(v62.columns[0], v22.f32[0]);
  v24 = vmulq_lane_f32(v62.columns[1], *v22.f32, 1);
  v25 = vmulq_laneq_f32(v62.columns[2], v22, 2);
  v26 = vuzp1q_s32(v25, v25);
  v27 = vuzp1q_s32(v24, v24);
  v28 = v23;
  if (v18.i32[0])
  {
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(v26, v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(v27, v24, 0xCuLL));
    v28 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  }

  v30 = vuzp1q_s32(v23, v23);
  v31 = v24;
  if (v18.i32[1])
  {
    v32 = vmlaq_f32(vmulq_f32(vextq_s8(v30, v23, 0xCuLL), vnegq_f32(v25)), v23, vextq_s8(v26, v25, 0xCuLL));
    v31 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
  }

  if (v18.i32[2])
  {
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(v27, v24, 0xCuLL), vnegq_f32(v23)), v24, vextq_s8(v30, v23, 0xCuLL));
    v25 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  }

  v34 = (*v28.i32 + *&v31.i32[1]) + v25.f32[2];
  if (v34 <= 0.0)
  {
    _NF = *v28.i32 < *&v31.i32[1] || *v28.i32 < v25.f32[2];
    v38 = a5;
    if (_NF)
    {
      if (*&v31.i32[1] <= v25.f32[2])
      {
        v47 = vzip2q_s32(v28, v31).u64[0];
        v48 = __PAIR64__(v28.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v25.f32[2] + 1.0) - *v28.i32) - *&v31.i32[1])));
        v49 = vdup_lane_s32(*v31.i8, 0);
        v50 = vsub_f32(*v28.i8, v49);
        v49.i32[0] = v48.i32[0];
        v49.i32[0] = vmul_f32(v48, v49).u32[0];
        v49.i32[1] = v50.i32[1];
        *v51.f32 = vadd_f32(v47, *v25.f32);
        *&v51.u32[2] = v49;
        _Q1 = vmulq_n_f32(v51, 0.5 / v48.f32[0]);
        goto LABEL_20;
      }

      v42 = sqrtf(((*&v31.i32[1] + 1.0) - *v28.i32) - v25.f32[2]);
      v46.f32[0] = *&v28.i32[1] + *v31.i32;
      v41 = vzip2q_s32(v28, v31).u64[0];
      v46.f32[1] = v42 * v42;
      *&v46.u32[2] = vext_s8(vadd_f32(*v25.f32, v41), vsub_f32(*v25.f32, v41), 4uLL);
    }

    else
    {
      v42 = sqrtf(((*v28.i32 + 1.0) - *&v31.i32[1]) - v25.f32[2]);
      v46.f32[0] = v42 * v42;
      v43 = *&v28.i32[1] + *v31.i32;
      v44 = vzip2q_s32(v28, v31).u64[0];
      LODWORD(v45) = vadd_f32(v44, *v25.f32).u32[0];
      HIDWORD(v45) = vsub_f32(v44, *&v25).i32[1];
      v46.f32[1] = v43;
      v46.i64[1] = v45;
    }

    _Q1 = vmulq_n_f32(v46, 0.5 / v42);
  }

  else
  {
    v35 = sqrtf(v34 + 1.0);
    *v36.f32 = vsub_f32(*&vzip2q_s32(v31, vuzp1q_s32(v31, v25)), *&vtrn2q_s32(v25, vzip2q_s32(v25, v28)));
    v36.f32[2] = *&v28.i32[1] - *v31.i32;
    v36.f32[3] = v35 * v35;
    _Q1 = vmulq_n_f32(v36, 0.5 / v35);
    v38 = a5;
  }

LABEL_20:
  _S2 = v38.i32[3];
  v53 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), vnegq_f32(_Q1)), v38, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
  v39 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q1, v38, 3), v38, _Q1, 3), vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL)).u64[0];
  __asm { FMLA            S3, S2, V1.S[3] }

LABEL_21:

  return objc_msgSend_setOrientation_(a1, v6, v7, v8, *&v39);
}

- (float32x4_t)worldTransform
{
  if (*(a1 + 48))
  {
    v22 = objc_msgSend_worldRef(a1, a2, a3, a4);
    v23 = v22;
    if (v22)
    {
      sub_1AF1CEA20(v22);
    }

    v24 = sub_1AF1B9B04(*(a1 + 8));
    result = *v24;
    if (v23)
    {
      v33 = *v24;
      sub_1AF1CEA9C(v23);
      return v33;
    }
  }

  else
  {
    objc_msgSend_transform(a1, a2, a3, a4);
    v29 = v9;
    v31 = v8;
    v25 = v11;
    v27 = v10;
    if ((*(a1 + 48) & 0x20) != 0)
    {
      objc_msgSend_pivot(a1, v5, v6, v7);
      v43 = __invert_f4(v42);
      v12 = 0;
      v34 = v31;
      v35 = v29;
      v36 = v27;
      v37 = v25;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43.columns[0], COERCE_FLOAT(*(&v34 + v12))), v43.columns[1], *(&v34 + v12), 1), v43.columns[2], *(&v34 + v12), 2), v43.columns[3], *(&v34 + v12), 3);
        v12 += 16;
      }

      while (v12 != 64);
      v29 = v39;
      v31 = v38;
      v25 = v41;
      v27 = v40;
    }

    v13 = objc_msgSend_parentNode(a1, v5, v6, v7, v25, v27, v29, v31, v34, v35, v36, v37);
    if (v13)
    {
      objc_msgSend_worldTransform(v13, v14, v15, v16);
      v21 = 0;
      v34 = v32;
      v35 = v30;
      v36 = v28;
      v37 = v26;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(*(&v34 + v21))), v18, *(&v34 + v21), 1), v19, *(&v34 + v21), 2), v20, *(&v34 + v21), 3);
        v21 += 16;
      }

      while (v21 != 64);
      result.i64[0] = v38;
    }

    else
    {
      return v32;
    }
  }

  return result;
}

- (uint64_t)setWorldTransform:(uint64_t)a3
{
  if (objc_msgSend_parentNode(a1, a2, a3, a4))
  {
    v12 = objc_msgSend_parentNode(a1, v9, v10, v11);
    objc_msgSend_convertTransform_fromNode_(v12, v13, 0, v14, a5, a6, a7, a8);
  }

  else
  {
    v18 = a8;
    v16 = a6;
    v17 = a7;
    v15 = a5;
  }

  return objc_msgSend_setTransform_(a1, v9, v10, v11, v15, v16, v17, v18);
}

- (double)convertPosition:(void *)a3 toNode:(uint64_t)a4
{
  v6.columns[3].i64[0] = a5.i64[0];
  v8 = a3;
  if (!a3)
  {
    v9 = objc_msgSend_world(a1, a2, 0, a4);
    v8 = objc_msgSend_rootNode(v9, v10, v11, v12);
    v6.columns[3].i64[0] = a5.i64[0];
  }

  if (v8 != a1)
  {
    objc_msgSend_worldTransform(a1, a2, a3, a4);
    v6.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v6.columns[3], v6.columns[2], a5, 2), v6.columns[1], *a5.f32, 1), v6.columns[0], a5.f32[0]);
    if (a3)
    {
      v18 = v6.columns[3];
      objc_msgSend_worldTransform(a3, v13, v14, v15);
      v6 = __invert_f4(v19);
      v6.columns[3].i64[0] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v6.columns[3], v6.columns[2], v18, 2), v6.columns[1], *v18.f32, 1), v6.columns[0], v18.f32[0]).u64[0];
    }
  }

  return *v6.columns[3].i64;
}

- (double)convertPosition:(void *)a3 fromNode:(uint64_t)a4
{
  v7 = a3;
  if (!a3)
  {
    v8 = objc_msgSend_world(a1, a2, 0, a4);
    v7 = objc_msgSend_rootNode(v8, v9, v10, v11);
  }

  if (v7 == a1)
  {
    return *a5.i64;
  }

  objc_msgSend_worldTransform(a1, a2, a3, a4);
  v28 = __invert_f4(v27);
  v15 = v28.columns[3];
  if (a3)
  {
    v24 = v28.columns[3];
    v25 = v28.columns[0];
    v22 = v28.columns[2];
    v23 = v28.columns[1];
    objc_msgSend_worldTransform(a3, v12, v13, v14);
    v19 = vmlaq_lane_f32(vmlaq_laneq_f32(v17, v16, a5, 2), v18, *a5.f32, 1);
    v28.columns[1] = v23;
    v15 = v24;
    v28.columns[3] = vmlaq_n_f32(v19, v20, a5.f32[0]);
    v28.columns[2] = v22;
    v28.columns[0] = v25;
  }

  else
  {
    v28.columns[3] = a5;
  }

  *&result = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v15, v28.columns[2], v28.columns[3], 2), v28.columns[1], *v28.columns[3].f32, 1), v28.columns[0], v28.columns[3].f32[0]).u64[0];
  return result;
}

- (double)convertVector:(void *)a3 toNode:(uint64_t)a4
{
  v6.columns[2].i64[0] = a5.i64[0];
  v8 = a3;
  if (!a3)
  {
    v9 = objc_msgSend_world(a1, a2, 0, a4);
    v8 = objc_msgSend_rootNode(v9, v10, v11, v12);
    v6.columns[2].i64[0] = a5.i64[0];
  }

  if (v8 != a1)
  {
    objc_msgSend_worldTransform(a1, a2, a3, a4);
    v6.columns[2] = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v6.columns[2], a5, 2), v6.columns[1], *a5.f32, 1), v6.columns[0], a5.f32[0]);
    if (a3)
    {
      v18 = v6.columns[2];
      objc_msgSend_worldTransform(a3, v13, v14, v15);
      v6 = __invert_f4(v19);
      v6.columns[2].i64[0] = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v6.columns[2], v18, 2), v6.columns[1], *v18.f32, 1), v6.columns[0], v18.f32[0]).u64[0];
    }
  }

  return *v6.columns[2].i64;
}

- (double)convertVector:(void *)a3 fromNode:(uint64_t)a4
{
  v7 = a3;
  if (!a3)
  {
    v8 = objc_msgSend_world(a1, a2, 0, a4);
    v7 = objc_msgSend_rootNode(v8, v9, v10, v11);
  }

  if (v7 == a1)
  {
    return *a5.i64;
  }

  objc_msgSend_worldTransform(a1, a2, a3, a4);
  v15 = __invert_f4(v23);
  v15.columns[3] = v15.columns[0];
  if (a3)
  {
    v20 = v15.columns[1];
    v21 = v15.columns[0];
    v19 = v15.columns[2];
    objc_msgSend_worldTransform(a3, v12, v13, v14);
    v16 = vmlaq_lane_f32(vmulq_laneq_f32(v15.columns[2], a5, 2), v15.columns[1], *a5.f32, 1);
    v15.columns[2] = v19;
    v15.columns[1] = v20;
    v17 = vmlaq_n_f32(v16, v15.columns[0], a5.f32[0]);
    v15.columns[3] = v21;
  }

  else
  {
    v17 = a5;
  }

  *&result = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v15.columns[2], v17, 2), v15.columns[1], *v17.f32, 1), v15.columns[3], v17.f32[0]).u64[0];
  return result;
}

- (float32x4_t)convertTransform:(void *)a3 toNode:(uint64_t)a4
{
  if (a3)
  {
    if (a3 == a1)
    {
      return result;
    }

    v33 = result;
    v34 = a6;
    v35 = a7;
    v36 = a8;
    objc_msgSend_worldTransform(a1, a2, a3, a4);
    v31 = v11;
    v32 = v10;
    v29 = v13;
    v30 = v12;
    objc_msgSend_worldTransform(a3, v14, v15, v16);
    v46 = __invert_f4(v45);
    v17 = 0;
    v37 = v32;
    v38 = v31;
    v39 = v30;
    v40 = v29;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    do
    {
      *(&v41 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46.columns[0], COERCE_FLOAT(*(&v37 + v17))), v46.columns[1], *&v37.f32[v17 / 4], 1), v46.columns[2], *(&v37 + v17), 2), v46.columns[3], *(&v37 + v17), 3);
      v17 += 16;
    }

    while (v17 != 64);
    result = v41;
    v18 = v42;
    v19 = v43;
    v20 = v44;
  }

  else
  {
    v33 = result;
    v34 = a6;
    v35 = a7;
    v36 = a8;
    v21 = objc_msgSend_world(a1, a2, 0, a4);
    if (objc_msgSend_rootNode(v21, v22, v23, v24) == a1)
    {
      return v33;
    }

    objc_msgSend_worldTransform(a1, v25, v26, v27);
  }

  v28 = 0;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  do
  {
    *(&v41 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result, COERCE_FLOAT(*(&v37 + v28))), v18, *&v37.f32[v28 / 4], 1), v19, *(&v37 + v28), 2), v20, *(&v37 + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  result.i64[0] = v41.i64[0];
  return result;
}

- (double)convertTransform:(void *)a3 fromNode:(uint64_t)a4
{
  v10 = a3;
  v30 = a5;
  if (!a3)
  {
    v11 = objc_msgSend_world(a1, a2, 0, a4);
    v10 = objc_msgSend_rootNode(v11, v12, v13, v14);
    a5.n128_u64[0] = v30.n128_u64[0];
  }

  if (v10 != a1)
  {
    objc_msgSend_worldTransform(a1, a2, a3, a4);
    v43 = __invert_f4(v42);
    v18 = v43.columns[2];
    if (a3)
    {
      v28 = v43.columns[1];
      v29 = v43.columns[0];
      v26 = v43.columns[3];
      v27 = v43.columns[2];
      objc_msgSend_worldTransform(a3, v15, v16, v17);
      v19 = 0;
      v34 = v20;
      v35 = v21;
      v36 = v22;
      v37 = v23;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v34 + v19))), v28, v34.n128_u64[v19 / 8], 1), v27, *(&v34 + v19), 2), v26, *(&v34 + v19), 3);
        v19 += 16;
      }

      while (v19 != 64);
      v43.columns[0] = v38;
      v43.columns[1] = v39;
      v18 = v40;
      v43.columns[3] = v41;
    }

    v24 = 0;
    v34 = v30;
    v35 = a6;
    v36 = a7;
    v37 = a8;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    do
    {
      *(&v38 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43.columns[0], COERCE_FLOAT(*(&v34 + v24))), v43.columns[1], v34.n128_u64[v24 / 8], 1), v18, *(&v34 + v24), 2), v43.columns[3], *(&v34 + v24), 3);
      v24 += 16;
    }

    while (v24 != 64);
    a5.n128_u64[0] = v38.i64[0];
  }

  return a5.n128_f64[0];
}

- (double)worldUp
{
  objc_msgSend_worldOrientation(a1, a2, a3, a4);
  v21 = v4;
  v5 = objc_opt_class();
  objc_msgSend_localUp(v5, v6, v7, v8);
  v9 = vmulq_f32(v21, xmmword_1AFE21390);
  v10 = vnegq_f32(v9);
  v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
  v13 = vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v12.f32, 1);
  v14 = vrev64q_s32(v9);
  v14.i32[0] = v10.i32[1];
  v14.i32[3] = v10.i32[2];
  v15 = vmlaq_laneq_f32(vmlaq_n_f32(v13, vextq_s8(v11, v11, 8uLL), v12.f32[0]), v14, v12, 2);
  v16 = vnegq_f32(v15);
  v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
  v18 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v21.f32, 1), vextq_s8(v17, v17, 8uLL), v21.f32[0]);
  v19 = vrev64q_s32(v15);
  v19.i32[0] = v16.i32[1];
  v19.i32[3] = v16.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v21, 3), v19, v21, 2), v18).u64[0];
  return result;
}

- (double)worldRight
{
  objc_msgSend_worldOrientation(a1, a2, a3, a4);
  v21 = v4;
  v5 = objc_opt_class();
  objc_msgSend_localRight(v5, v6, v7, v8);
  v9 = vmulq_f32(v21, xmmword_1AFE21390);
  v10 = vnegq_f32(v9);
  v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
  v13 = vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v12.f32, 1);
  v14 = vrev64q_s32(v9);
  v14.i32[0] = v10.i32[1];
  v14.i32[3] = v10.i32[2];
  v15 = vmlaq_laneq_f32(vmlaq_n_f32(v13, vextq_s8(v11, v11, 8uLL), v12.f32[0]), v14, v12, 2);
  v16 = vnegq_f32(v15);
  v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
  v18 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v21.f32, 1), vextq_s8(v17, v17, 8uLL), v21.f32[0]);
  v19 = vrev64q_s32(v15);
  v19.i32[0] = v16.i32[1];
  v19.i32[3] = v16.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v21, 3), v19, v21, 2), v18).u64[0];
  return result;
}

- (double)worldFront
{
  objc_msgSend_worldOrientation(a1, a2, a3, a4);
  v21 = v4;
  v5 = objc_opt_class();
  objc_msgSend_localFront(v5, v6, v7, v8);
  v9 = vmulq_f32(v21, xmmword_1AFE21390);
  v10 = vnegq_f32(v9);
  v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
  v13 = vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v12.f32, 1);
  v14 = vrev64q_s32(v9);
  v14.i32[0] = v10.i32[1];
  v14.i32[3] = v10.i32[2];
  v15 = vmlaq_laneq_f32(vmlaq_n_f32(v13, vextq_s8(v11, v11, 8uLL), v12.f32[0]), v14, v12, 2);
  v16 = vnegq_f32(v15);
  v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
  v18 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v21.f32, 1), vextq_s8(v17, v17, 8uLL), v21.f32[0]);
  v19 = vrev64q_s32(v15);
  v19.i32[0] = v16.i32[1];
  v19.i32[3] = v16.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v21, 3), v19, v21, 2), v18).u64[0];
  return result;
}

- (void)lookAt:(VFXNode *)self
{
  objc_msgSend_worldUp(self, a2, v2, v3);
  objc_msgSend_localFront(VFXNode, v5, v6, v7);

  MEMORY[0x1EEE66B58](self, sel_lookAt_up_localFront_, v8, v9);
}

- (void)lookAt:(VFXNode *)self up:(SEL)a2 localFront:
{
  v114 = v6;
  v116 = v5;
  v119 = v4;
  objc_msgSend_worldPosition(self, a2, v2, v3);
  v9 = vcgeq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v119, v8));
  v9.i32[3] = v9.i32[2];
  if ((vminvq_u32(v9) & 0x80000000) == 0)
  {
    v10 = vsubq_f32(v119, v8);
    v12 = vmulq_f32(v10, v10);
    v11 = vaddv_f32(*v12.f32);
    v12.i32[1] = 0;
    *&v13 = v12.f32[2] + v11;
    v14 = vrsqrte_f32(COERCE_UNSIGNED_INT(v12.f32[2] + v11));
    v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
    v16 = vmulq_n_f32(v10, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0]);
    v17 = vmulq_f32(v114, v16);
    if ((v17.f32[2] + vaddv_f32(*v17.f32)) >= 0.0)
    {
      v48 = vaddq_f32(v114, v16);
      v49 = vmulq_f32(v48, v48);
      v12.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
      *v49.f32 = vrsqrte_f32(*v12.f32);
      *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(*v12.f32, vmul_f32(*v49.f32, *v49.f32)));
      v50 = vmulq_n_f32(v48, vmul_f32(*v49.f32, vrsqrts_f32(*v12.f32, vmul_f32(*v49.f32, *v49.f32))).f32[0]);
      v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v114)), v50, vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL));
      v47 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
      v52 = vmulq_f32(v114, v50);
      v47.f32[3] = v52.f32[2] + vaddv_f32(*v52.f32);
      v21 = vmulq_f32(v16, v16);
      v21.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
    }

    else
    {
      v18 = vmulq_f32(v114, v114);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v114, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v21 = vmulq_f32(v16, v16);
      v21.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
      v12.f32[0] = v21.f32[0];
      v22 = vrsqrte_f32(*v12.f32);
      v23 = vmul_f32(v22, vrsqrts_f32(*v12.f32, vmul_f32(v22, v22)));
      v24 = vaddq_f32(v20, vmulq_n_f32(v16, vmul_f32(v23, vrsqrts_f32(*v12.f32, vmul_f32(v23, v23))).f32[0]));
      v25 = vmulq_f32(v24, v24);
      v26 = v25.f32[2] + vaddv_f32(*v25.f32);
      if (v26 <= 1.4211e-14)
      {
        v53 = vabsq_f32(v114);
        v54 = v53.f32[1];
        v55 = v53.f32[2];
        if (v53.f32[0] > v53.f32[1] || v53.f32[0] > v53.f32[2])
        {
          v56 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          if (v54 <= v55)
          {
            v57 = vmulq_f32(v114, xmmword_1AFE213B0);
            v58 = xmmword_1AFE20160;
          }

          else
          {
            v57 = vmulq_f32(v114, xmmword_1AFE213A0);
            v58 = xmmword_1AFE20180;
          }
        }

        else
        {
          v56 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v57 = vmulq_f32(v114, xmmword_1AFE213C0);
          v58 = xmmword_1AFE20150;
        }

        v59 = vmlaq_f32(v57, v58, v56);
        v60 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL);
        v61 = vmulq_f32(v59, v59);
        *&v62 = v61.f32[1] + (v61.f32[2] + v61.f32[0]);
        *v61.f32 = vrsqrte_f32(v62);
        *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
        v47 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
        v47.i32[3] = 0;
      }

      else
      {
        v27 = LODWORD(v26);
        v28 = vrsqrte_f32(LODWORD(v26));
        v29 = vmul_f32(v28, vrsqrts_f32(v27, vmul_f32(v28, v28)));
        v30 = vmulq_n_f32(v24, vmul_f32(v29, vrsqrts_f32(v27, vmul_f32(v29, v29))).f32[0]);
        v31 = vaddq_f32(v114, v30);
        v32 = vmulq_f32(v31, v31);
        *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
        *v32.f32 = vrsqrte_f32(v33);
        *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
        v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
        v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v114)), v34, vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL));
        v36 = vmulq_f32(v114, v34);
        v37 = vaddq_f32(v16, v30);
        v38 = vmulq_f32(v37, v37);
        *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
        *v38.f32 = vrsqrte_f32(v39);
        *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
        v40 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
        v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(v30)), v40, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
        v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
        v43 = vmulq_f32(v30, v40);
        v42.f32[3] = v43.f32[2] + vaddv_f32(*v43.f32);
        v44 = vnegq_f32(v42);
        v45 = vtrn2q_s32(v42, vtrn1q_s32(v42, v44));
        v46 = vrev64q_s32(v42);
        v46.i32[0] = v44.i32[1];
        v46.i32[3] = v44.i32[2];
        v47 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, v36.f32[2] + vaddv_f32(*v36.f32)), v46, *v35.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v42, v44, 8uLL), v35.f32[0]), vextq_s8(v45, v45, 8uLL), v35, 2));
      }
    }

    v63 = vmulq_f32(v47, xmmword_1AFE21390);
    v64 = v47;
    v120 = v47;
    v65 = vnegq_f32(v63);
    v66 = vtrn2q_s32(v63, vtrn1q_s32(v63, v65));
    v67 = vmlaq_f32(vextq_s8(v63, v65, 8uLL), 0, vextq_s8(v66, v66, 8uLL));
    v68 = vrev64q_s32(v63);
    v68.i32[0] = v65.i32[1];
    v68.i32[3] = v65.i32[2];
    v69 = vmlaq_f32(v67, 0, v68);
    v70 = vnegq_f32(v69);
    v71 = vtrn2q_s32(v69, vtrn1q_s32(v69, v70));
    v72 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v69, v70, 8uLL), *v64.f32, 1), vextq_s8(v71, v71, 8uLL), v64.f32[0]);
    v73 = vrev64q_s32(v69);
    v73.i32[0] = v70.i32[1];
    v73.i32[3] = v70.i32[2];
    v74 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v69, v64, 3), v73, v64, 2), v72);
    v75 = vmulq_f32(v16, v74);
    v75.f32[0] = v75.f32[2] + vaddv_f32(*v75.f32);
    v76 = vmlsq_lane_f32(v74, v16, *v75.f32, 0);
    v77 = vmulq_f32(v76, v76);
    v77.f32[0] = v77.f32[2] + vaddv_f32(*v77.f32);
    v78 = vdupq_lane_s32(*v77.f32, 0);
    v78.i32[3] = 0;
    v79 = vrsqrteq_f32(v78);
    v80 = vmulq_f32(v79, vrsqrtsq_f32(v78, vmulq_f32(v79, v79)));
    v81 = vmulq_f32(v80, vrsqrtsq_f32(v78, vmulq_f32(v80, v80)));
    v82 = vmulq_f32(v16, v116);
    v82.f32[0] = v82.f32[2] + vaddv_f32(*v82.f32);
    v83 = vmlsq_lane_f32(v116, v16, *v82.f32, 0);
    v84 = vmulq_f32(v83, v83);
    v84.f32[0] = v84.f32[2] + vaddv_f32(*v84.f32);
    v85 = vdupq_lane_s32(*v84.f32, 0);
    v85.i32[3] = 0;
    v86 = vrsqrteq_f32(v85);
    v87 = vmulq_f32(v86, vrsqrtsq_f32(v85, vmulq_f32(v86, v86)));
    v88 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v84.f32[0] != 0.0)), 0x1FuLL));
    v88.i32[3] = 0;
    v89 = vbslq_s8(vcltzq_s32(v88), vmulq_f32(v83, vmulq_f32(v87, vrsqrtsq_f32(v85, vmulq_f32(v87, v87)))), v83);
    v90 = vdupq_lane_s32(*v21.f32, 0);
    v90.i32[3] = 0;
    v91 = vrsqrteq_f32(v90);
    v113 = v16;
    v92 = vmulq_f32(v91, vrsqrtsq_f32(v90, vmulq_f32(v91, v91)));
    v77.i32[1] = v21.i32[0];
    v115 = vmvn_s8(vceqz_f32(*v77.f32));
    v93 = vmovl_s16(vdup_lane_s16(v115, 0));
    v93.i32[3] = 0;
    v117 = vmulq_f32(v16, vmulq_f32(v92, vrsqrtsq_f32(v90, vmulq_f32(v92, v92))));
    v94 = vbslq_s8(vcltzq_s32(v93), vmulq_f32(v81, v76), v76);
    v95 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), vnegq_f32(v94)), v89, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
    v112 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
    v96 = vmulq_f32(v89, v94);
    v97 = acosf(fminf(fmaxf(v96.f32[2] + vaddv_f32(*v96.f32), -1.0), 1.0));
    v98 = vmulq_f32(v113, v112);
    if ((v98.f32[2] + vaddv_f32(*v98.f32)) <= 0.0)
    {
      v97 = -v97;
    }

    v99 = vmovl_s16(vdup_lane_s16(v115, 2));
    v99.i32[3] = 0;
    v118 = vbslq_s8(vcltzq_s32(v99), v117, v113);
    _KR00_8 = __sincosf_stret(v97 * 0.5);
    _Q2 = vmulq_n_f32(v118, _KR00_8.__sinval);
    _Q6 = v120;
    v106 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v120, 0xCuLL), vnegq_f32(_Q2)), v120, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
    *&v107 = vaddq_f32(vmlaq_n_f32(vmulq_laneq_f32(_Q2, v120, 3), v120, _KR00_8.__cosval), vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL)).u64[0];
    __asm { FMLA            S2, S1, V6.S[3] }

    objc_msgSend_setWorldOrientation_(self, v100, *&v101, *&v102, v107);
  }
}

- (void)localTranslateBy:(VFXNode *)self
{
  v24 = v4;
  objc_msgSend_orientation(self, a2, v2, v3);
  v7 = vmulq_f32(v6, xmmword_1AFE21390);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v24.f32, 1), vextq_s8(v9, v9, 8uLL), v24.f32[0]);
  v11 = vrev64q_s32(v7);
  v11.i32[0] = v8.i32[1];
  v11.i32[3] = v8.i32[2];
  v12 = vmlaq_laneq_f32(v10, v11, v24, 2);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vrev64q_s32(v12);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v25 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v6, 3), v15, v6, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v6.f32, 1), vextq_s8(v14, v14, 8uLL), v6.f32[0]));
  objc_msgSend_position(self, v16, v17, v18);
  *&v23 = vaddq_f32(v22, v25).u64[0];

  objc_msgSend_setPosition_(self, v19, v20, v21, v23);
}

- (uint64_t)localRotateBy:(uint64_t)a3
{
  objc_msgSend_orientation(a1, a2, a3, a4);
  _S2 = a5.u32[3];
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL), vnegq_f32(_Q0)), a5, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  *&v12 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, a5, 3), a5, _Q0, 3), vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL)).u64[0];
  __asm { FMLA            S3, S2, V0.S[3] }

  return objc_msgSend_setOrientation_(a1, v6, v7, v8, v12);
}

- (uint64_t)rotateBy:(uint64_t)a3 aroundTarget:(uint64_t)a4
{
  v7 = 0;
  v8 = vmulq_f32(a5, a5);
  v9 = vmulq_laneq_f32(a5, a5, 3);
  v10 = vmuls_lane_f32(a5.f32[0], *a5.f32, 1);
  v11 = vmuls_lane_f32(a5.f32[0], a5, 2);
  v12.i32[3] = 0;
  v12.f32[0] = (0.5 - v8.f32[1]) - v8.f32[2];
  v12.f32[1] = v10 + v9.f32[2];
  v12.f32[2] = v11 - v9.f32[1];
  v13 = vmuls_lane_f32(a5.f32[1], a5, 2);
  v8.f32[0] = 0.5 - v8.f32[0];
  v14.i32[3] = 0;
  v14.f32[0] = v10 - v9.f32[2];
  v14.f32[1] = v8.f32[0] - v8.f32[2];
  v14.f32[2] = v13 + v9.f32[0];
  v15 = v13 - v9.f32[0];
  v9.i32[3] = 0;
  v9.f32[0] = v11 + v9.f32[1];
  v9.f32[1] = v15;
  v9.f32[2] = v8.f32[0] - v8.f32[1];
  v16 = vnegq_f32(a6);
  v16.i32[3] = 1.0;
  v17 = vaddq_f32(v12, v12);
  v18 = vaddq_f32(v14, v14);
  v19 = vaddq_f32(v9, v9);
  v38 = xmmword_1AFE20150;
  v39 = xmmword_1AFE20160;
  v40 = xmmword_1AFE20180;
  v41 = v16;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  do
  {
    *(&v42 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v38 + v7))), v18, *(&v38 + v7), 1), v19, *(&v38 + v7), 2), xmmword_1AFE201A0, *(&v38 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v20 = 0;
  a6.i32[3] = 1.0;
  v38 = v42;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  do
  {
    *(&v42 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v38 + v20))), xmmword_1AFE20160, *(&v38 + v20), 1), xmmword_1AFE20180, *(&v38 + v20), 2), a6, *(&v38 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v36 = v43;
  v37 = v42;
  v34 = v45;
  v35 = v44;
  objc_msgSend_worldTransform(a1, a2, a3, a4);
  v24 = 0;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  do
  {
    *(&v42 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v38 + v24))), v36, *(&v38 + v24), 1), v35, *(&v38 + v24), 2), v34, *(&v38 + v24), 3);
    v24 += 16;
  }

  while (v24 != 64);
  v29 = *&v44;
  v30 = *v45.i64;
  v31 = *&v42;
  v32 = *&v43;

  return objc_msgSend_setWorldTransform_(a1, v21, v22, v23, v31, v32, v29, v30);
}

- (void)_remapNodeReferences:(id)a3 nullifyIfAbsent:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF30FA6C;
  v4[3] = &unk_1E7A7ED40;
  v4[4] = a3;
  v5 = a4;
  sub_1AF345368(self, 0, v4);
}

+ (VFXNode)nodeWithSceneKitNode:(id)a3 options:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  objc_msgSend_begin(VFXTransaction, v8, v9, v10);
  objc_msgSend_setImmediateMode_(VFXTransaction, v11, 1, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(a4, v13, @"VFXSceneKitBridgeOptionOriginalURL", v14);
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v15, v16, v17, v18);
  objc_msgSend_setValue_forKey_(VFXTransaction, v20, PathComponent, @"VFXWorldDecodingCurrentEnclosingFolder");
  v23 = objc_msgSend_objectForKeyedSubscript_(a4, v21, @"VFXSceneKitBridgeOptionSkipLightIntensityRemapping", v22);
  v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26);
  v30 = objc_msgSend_objectForKeyedSubscript_(a4, v28, @"VFXSceneKitBridgeOptionOriginalURL", v29);
  v31 = sub_1AF3264A4(a3, Mutable, v27, v30);
  sub_1AF327760(a3, Mutable);
  objc_msgSend_commit(VFXTransaction, v32, v33, v34);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v6);

  return v31;
}

- (id)script_rootNode
{
  v4 = objc_msgSend_world(self, a2, v2, v3);

  return objc_msgSend_rootNode(v4, v5, v6, v7);
}

- (void)addAnimationAsset:(id)a3 forKey:(id)a4
{
  v6 = objc_msgSend_asset(a3, a2, a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_nodeRef(self, v7, v8, v9);
    v13 = objc_msgSend_nodeWithNodeRef_(VFXNode, v11, v10, v12);
    v18 = objc_msgSend_animation(v6, v14, v15, v16);

    objc_msgSend_addAnimation_forKey_(v13, v17, v18, a4);
  }
}

- (id)debugQuickLookObjectWithWorld:(id)a3
{
  v5 = objc_msgSend_deepClone(self, a2, a3, v3);
  objc_msgSend_setHidden_(v5, v6, 0, v7);
  v11 = objc_msgSend_world(VFXWorld, v8, v9, v10);
  v15 = objc_msgSend_assetRegistry(a3, v12, v13, v14);
  v19 = objc_msgSend_rootNode(v15, v16, v17, v18);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1AF3B45B8;
  v39[3] = &unk_1E7A7F3C0;
  v39[4] = v11;
  objc_msgSend_enumerateHierarchyUsingBlock_(v19, v20, v39, v21);
  v28 = objc_msgSend_assetPathResolver(a3, v22, v23, v24);
  if (v28)
  {
    objc_msgSend_setAssetPathResolver_(v11, v25, v28, v27);
  }

  v29 = objc_msgSend_rootNode(v11, v25, v26, v27);
  objc_msgSend_addChildNode_(v29, v30, v5, v31);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1AF3B466C;
  v38[3] = &unk_1E7A79810;
  v38[4] = v28;
  objc_msgSend_enumerateHierarchyUsingBlock_(v5, v32, v38, v33);
  return objc_msgSend_debugQuickLookObject(v11, v34, v35, v36);
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
  v2 = self;
  sub_1AFC50994();

  v3 = sub_1AFDFD3F8();

  return v3;
}

@end