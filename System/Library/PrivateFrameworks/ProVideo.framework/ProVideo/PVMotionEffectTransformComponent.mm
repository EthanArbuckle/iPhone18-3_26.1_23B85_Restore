@interface PVMotionEffectTransformComponent
- (BOOL)addCameraToDocumentOnce_NoLock:(const void *)a3;
- (BOOL)bounds:(CGRect *)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7;
- (BOOL)disableCameraOverride_NoLock:(const void *)a3;
- (BOOL)enableCameraOverride_NoLock:(const void *)a3 transform:(id)a4 projection:(id)a5 transformUnitsAreInMeters:(BOOL)a6;
- (BOOL)encloseTopGroupIn3DGroupOnce_NoLock:(const void *)a3;
- (BOOL)isCameraOverrideEnabled;
- (BOOL)isForceRenderAtPosterFrameEnabledInDictionary:(id)a3 orInDefaultDictionary:(id)a4;
- (BOOL)motionEffect:(id)a3 propertiesDisableCache:(id)a4 time:(id *)a5 forcePosterFrame:(BOOL)a6;
- (BOOL)motionEffect:(id)a3 shouldInvalidateCachedRenderForProperty:(id)a4 oldValue:(id)a5 newValue:(id)a6;
- (BOOL)setCameraProjection_NoLock:(const void *)a3 transform:(id)a4;
- (BOOL)setCameraTransform_NoLock:(const void *)a3 transform:(id)a4 transformUnitsAreInMeters:(BOOL)a5;
- (BOOL)setTransform_NoLock:(const void *)a3 transform:(id)a4 transformUnitsAreInMeters:(BOOL)a5;
- (BOOL)transformUnitsAreInMeters;
- (CGPoint)convertPointToView:(id *)a3 atTime:(BOOL)a4 forcePosterFrame:(BOOL)a5 includeTransformAnimation:(BOOL)a6 includePlayableAspectScale:(CGSize)a7 viewSize:(int)a8 viewOrigin:;
- (CGPoint)convertPointToView_NoLock:(const void *)a3 effectPoint:(id *)a4 atTime:(BOOL)a5 forcePosterFrame:(BOOL)a6 includeTransformAnimation:(BOOL)a7 includePlayableAspectScale:(CGSize)a8 viewSize:(int)a9 viewOrigin:(id)a10 properties:;
- (PVCGPointQuad)cornersAtTime:(SEL)a3 forcePosterFrame:(id *)a4 includeDropShadow:(BOOL)a5 scale:(BOOL)a6 viewSize:(CGPoint)a7 viewOrigin:(CGSize)a8;
- (PVCGPointQuad)cornersAtTime_NoLock:(SEL)a3 time:(const void *)a4 forcePosterFrame:(id *)a5 includeDropShadow:(BOOL)a6 scale:(BOOL)a7 viewSize:(CGPoint)a8 viewOrigin:(CGSize)a9 properties:(int)a10;
- (PVCGPointQuad)objectCorners_NoLock:(SEL)a3 timelineTime:(unsigned int)a4 componentTime:(id *)a5 includeDropShadow:(id *)a6 includeMasks:(BOOL)a7 documentInfo:(BOOL)a8;
- (PVCGPointQuad)transformObjectCornersToImage_NoLock:(SEL)a3 objectID:(PVCGPointQuad *)a4 timelineTime:(unsigned int)a5 componentTime:(id *)a6 flatten:(id *)a7 documentInfo:(BOOL)a8 properties:(const void *)a9;
- (PVMotionEffectTransformComponent)initWithMotionEffect:(id)a3;
- (__n128)convertPointFromView_NoLock:(uint64_t)a3@<X3> viewPoint:(int)a4@<W4> atTime:(void *)a5@<X5> viewSize:(float64x2_t *)a6@<X8> viewOrigin:(double)a7@<D0> properties:(float64_t)a8@<D1>;
- (__n128)getScale;
- (double)convertPointToView:(double)a3 withEffectToViewTransform:(uint64_t)a4 viewSize:(__int128 *)a5;
- (float64_t)convertPointToView_NoLock:(uint64_t)a3 effectPoint:(__int128 *)a4 withEffectToViewTransform:(_OWORD *)a5 viewSize:;
- (id)addToTopLevelTransform:(double)a3 atTime:(uint64_t)a4 forcePosterFrame:(__int128 *)a5 restrictToBounds:(__int128 *)a6 viewSize:(char)a7 viewOrigin:(char)a8;
- (id)addToTopLevelTransform_NoLock:(double)a3 transform:(uint64_t)a4 atTime:(uint64_t)a5 forcePosterFrame:(__int128 *)a6 restrictToBounds:(__int128 *)a7 viewSize:(uint64_t)a8 viewOrigin:(unsigned int)a9 properties:(uint64_t)a10;
- (id)additionalTopLevelScaleInDictionary:(id)a3 orInDefaultDictionary:(id)a4;
- (id)applyAdditionalTopLevelScale:(CGPoint)a3 aroundPoint:(CGPoint)a4 toTransform:(id)a5;
- (id)cameraProjection;
- (id)cameraTransform;
- (id)motionEffectPropertyKeysThatInvalidateCachedRender:(id)a3;
- (id)objectToImageTransform_NoLock:(unsigned int)a3 timelineTime:(id *)a4 componentTime:(id *)a5 flatten:(BOOL)a6 includeTransformAnimation:(BOOL)a7 includePlayableAspectScale:(BOOL)a8 documentInfo:(const void *)a9 properties:(id)a10;
- (id)scaleToFit:(CGRect)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7 restrictToBounds:(BOOL)a8;
- (id)scaleToFit_NoLock:(const void *)a3 rect:(CGRect)a4 atTime:(id *)a5 forcePosterFrame:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8 restrictToBounds:(BOOL)a9 properties:(id)a10;
- (id)setPositionInView:(CGPoint)a3 atTime:(id *)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6 restrictToBounds:(BOOL)a7;
- (id)setPositionInView_NoLock:(const void *)a3 viewPoint:(CGPoint)a4 atTime:(id *)a5 forcePosterFrame:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8 restrictToBounds:(BOOL)a9 topLevelTransform:(id)a10 properties:(id)a11;
- (id)topLevelGroupTransform;
- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8;
- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7;
- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6;
- (id)transformObjectPointsToImage_NoLock:(id)a3 objectID:(unsigned int)a4 timelineTime:(id *)a5 componentTime:(id *)a6 flatten:(BOOL)a7 documentInfo:(const void *)a8 properties:(id)a9;
- (int)objectBounds_NoLock:(void *)a3 objectID:(unsigned int)a4 timelineTime:(id *)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7 documentInfo:(const void *)a8;
- (void)applyTopLevelGroupTransform_NoLock:(const void *)a3 transform:(id)a4;
- (void)applyTransforms_NoLock:(const void *)a3 dirtyProperties:(id)a4 defaultProperties:(id)a5 componentTime:(id *)a6;
- (void)convertPointFromView:(int)a3@<W3> atTime:(_OWORD *)a4@<X8> viewSize:(double)a5@<D0> viewOrigin:(double)a6@<D1>;
- (void)disableCameraOverride;
- (void)enableCameraOverride:(id)a3 projection:(id)a4;
- (void)motionEffect:(id)a3 didBecomeReady:(const void *)a4 properties:(id)a5;
- (void)motionEffect:(id)a3 willRender:(const void *)a4 properties:(id)a5 time:(id *)a6;
- (void)motionEffectDidUnload:(id)a3;
- (void)setTopLevelGroupTransform:(id)a3;
- (void)setTransform:(id)a3;
- (void)setTransformUnitsAreInMeters:(BOOL)a3;
- (void)updateIsFixedSourceDropShadow_NoLock:(const void *)a3 properties:(id)a4;
@end

@implementation PVMotionEffectTransformComponent

- (PVMotionEffectTransformComponent)initWithMotionEffect:(id)a3
{
  v4.receiver = self;
  v4.super_class = PVMotionEffectTransformComponent;
  result = [(PVMotionEffectComponent *)&v4 initWithMotionEffect:a3];
  if (result)
  {
    result->_top3DGroupID = 0;
    result->_top3DGroupIDStatus = 1;
    result->_cameraID = 0;
    result->_cameraIDStatus = 1;
    result->_metersToWorldUnitScale = 1.0;
    result->_isFixedSourceDropShadow = 0;
    result->_normalizedFixedShadowSize = *MEMORY[0x277CBF3A8];
  }

  return result;
}

- (BOOL)encloseTopGroupIn3DGroupOnce_NoLock:(const void *)a3
{
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  [v5 assertDocumentIsLocked];

  v6 = [(PVMotionEffectComponent *)self motionEffect];
  [v6 assertDocumentStatusIsLoadedOrReady];

  top3DGroupIDStatus = self->_top3DGroupIDStatus;
  if (top3DGroupIDStatus)
  {
    if (top3DGroupIDStatus != 1)
    {
      return 0;
    }

    if (*(a3 + 41))
    {
      return 0;
    }

    v12 = 0;
    v8 = *a3;
    v11.var0 = 0;
    PCString::set(&v11, @"PVEffect Top 3D Group");
    self->_top3DGroupIDStatus = OZXCreateGroupWithGroup(v8, &v11, *(a3 + 40), 1u, &v12);
    PCString::~PCString(&v11);
    if (self->_top3DGroupIDStatus)
    {
      return 0;
    }

    self->_top3DGroupID = v12;
    v10 = [(PVMotionEffectComponent *)self motionEffect];
    [v10 setNodeIDToCache:self->_top3DGroupID];
  }

  return 1;
}

- (BOOL)addCameraToDocumentOnce_NoLock:(const void *)a3
{
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  [v5 assertDocumentIsLocked];

  v6 = [(PVMotionEffectComponent *)self motionEffect];
  [v6 assertDocumentStatusIsLoadedOrReady];

  cameraIDStatus = self->_cameraIDStatus;
  if (!cameraIDStatus)
  {
    return 1;
  }

  if (cameraIDStatus != 1)
  {
    return 0;
  }

  v13 = 0;
  v8 = *a3;
  v12.var0 = 0;
  PCString::set(&v12, @"PVEffect Camera");
  v9.var0 = &v12;
  self->_cameraIDStatus = OZXCreateCamera(v8, v9, &v13);
  PCString::~PCString(&v12);
  v10 = self->_cameraIDStatus;
  result = v10 == 0;
  if (!v10)
  {
    self->_cameraID = v13;
  }

  return result;
}

- (void)applyTransforms_NoLock:(const void *)a3 dirtyProperties:(id)a4 defaultProperties:(id)a5 componentTime:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(PVMotionEffectComponent *)self motionEffect];
  [v12 assertDocumentIsLocked];

  v13 = [(PVMotionEffectComponent *)self motionEffect];
  [v13 assertDocumentStatusIsLoadedOrReady];

  v14 = [(PVMotionEffectComponent *)self motionEffect];
  [v14 assertInspectablePropertiesAreLocked];

  if (a6->var2)
  {
    v15 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVTopLevelTransformKey" inDictionary:v10 orInDefaultDictionary:v11];
    v45 = [(PVMotionEffectTransformComponent *)self additionalTopLevelScaleInDictionary:v10 orInDefaultDictionary:v11];
    if (v45)
    {
      v43 = v15;
      v16 = [(PVMotionEffectTransformComponent *)self isForceRenderAtPosterFrameEnabledInDictionary:v10 orInDefaultDictionary:v11];
      v51 = 0uLL;
      v52 = 0;
      v17 = [(PVMotionEffectComponent *)self motionEffect];
      v18 = [v17 timelineComponent];
      v19 = v18;
      v49 = *&a6->var0;
      var3 = a6->var3;
      if (v18)
      {
        v20 = v45;
        [v18 timelineTimeFromComponentTime_NoLock:&v49 forcePosterFrame:v16 documentInfo:a3];
      }

      else
      {
        v51 = 0uLL;
        v52 = 0;
        v20 = v45;
      }

      v48.origin.x = 0.0;
      v48.origin.y = 0.0;
      __asm { FMOV            V0.2D, #-1.0 }

      v48.size = _Q0;
      v26 = *(a3 + 40);
      v46 = v51;
      v47 = v52;
      v15 = v43;
      if (![(PVMotionEffectTransformComponent *)self objectBounds_NoLock:&v48 objectID:v26 timelineTime:&v46 includeDropShadow:1 includeMasks:1 documentInfo:a3])
      {
        [v20 CGPointValue];
        v28 = v27;
        v30 = v29;
        x = v48.origin.x;
        y = v48.origin.y;
        size = v48.size;
        MidX = CGRectGetMidX(v48);
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size = size;
        v35 = [(PVMotionEffectTransformComponent *)self applyAdditionalTopLevelScale:v43 aroundPoint:v28 toTransform:v30, MidX, CGRectGetMidY(v53)];

        v15 = v35;
      }
    }

    [(PVMotionEffectTransformComponent *)self applyTopLevelGroupTransform_NoLock:a3 transform:v15];
    v36 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVTransformKey" inDictionary:v10 orInDefaultDictionary:v11];
    v37 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVTransformUnitsAreInMeters" inDictionary:v10 orInDefaultDictionary:v11];
    v38 = [v37 BOOLValue];
    v39 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVCameraEnabledKey" inDictionary:v10 orInDefaultDictionary:v11];
    if ([v39 BOOLValue])
    {
      v44 = v15;
      v40 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVCameraProjectionKey" inDictionary:v10 orInDefaultDictionary:v11];
      v41 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVCameraTransformKey" inDictionary:v10 orInDefaultDictionary:v11];
      v42 = v41;
      if (v40 && v41)
      {
        [(PVMotionEffectTransformComponent *)self enableCameraOverride_NoLock:a3 transform:v41 projection:v40 transformUnitsAreInMeters:v38];
      }

      else
      {
        [(PVMotionEffectTransformComponent *)self disableCameraOverride_NoLock:a3];
      }

      v15 = v44;
    }

    else
    {
      [(PVMotionEffectTransformComponent *)self disableCameraOverride_NoLock:a3];
    }

    [(PVMotionEffectTransformComponent *)self setTransform_NoLock:a3 transform:v36 transformUnitsAreInMeters:v38];
  }
}

- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6
{
  v8 = *a3;
  v6 = [(PVMotionEffectTransformComponent *)self transformAtTime:&v8 forcePosterFrame:a4 includeTransformAnimation:1 viewSize:*&a6 viewOrigin:a5.width, a5.height];

  return v6;
}

- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7
{
  height = a6.height;
  width = a6.width;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  if (a4)
  {
    v13 = 1;
  }

  else
  {
    v14 = [(PVMotionEffectComponent *)self motionEffect];
    v15 = [v14 timelineComponent];
    v13 = [v15 isForceRenderAtPosterFrameEnabled];
  }

  v16 = +[PVHostApplicationDelegateHandler sharedInstance];
  v17 = [v16 wantsToIncludeCoordinateSystemTranslationInEffectViewTransform];
  v18 = [(PVMotionEffectComponent *)self motionEffect];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = *"";
  v21[2] = __115__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_viewSize_viewOrigin___block_invoke;
  v21[3] = &unk_279AA4EA0;
  v21[4] = self;
  v21[5] = &v28;
  v22 = *&a3->var0;
  var3 = a3->var3;
  v25 = v13;
  v26 = a5;
  v27 = v17;
  *&v21[6] = width;
  *&v21[7] = height;
  v24 = a7;
  [v18 runEnsuringDocumentReadyAndLockingDocument:v21];

  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

void __115__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v6 = *(a1 + 64);
  v10 = v5;
  v11 = v6;
  v7[2] = __115__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_viewSize_viewOrigin___block_invoke_2;
  v7[3] = &unk_279AA4E78;
  v9 = a2;
  v12 = *(a1 + 80);
  v14 = *(a1 + 92);
  v15 = *(a1 + 93);
  v13 = *(a1 + 88);
  [v4 runWithInspectableProperties:v7];
}

void __115__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  LODWORD(v9) = *(a1 + 96);
  v6 = [v4 transformAtTime_NoLock:v5 time:&v10 forcePosterFrame:*(a1 + 100) includeTransformAnimation:*(a1 + 101) includePlayableAspectScale:1 includeCoordinateSystemTranslationInEffectViewTransform:*(a1 + 102) viewSize:*(a1 + 56) viewOrigin:*(a1 + 64) properties:{v9, v3}];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8
{
  height = a7.height;
  width = a7.width;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  if (a4)
  {
    v15 = 1;
  }

  else
  {
    v16 = [(PVMotionEffectComponent *)self motionEffect];
    v17 = [v16 timelineComponent];
    v15 = [v17 isForceRenderAtPosterFrameEnabled];
  }

  v18 = +[PVHostApplicationDelegateHandler sharedInstance];
  v19 = [v18 wantsToIncludeCoordinateSystemTranslationInEffectViewTransform];
  v20 = [(PVMotionEffectComponent *)self motionEffect];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = *"";
  v23[2] = __142__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke;
  v23[3] = &unk_279AA4EF0;
  v23[4] = self;
  v23[5] = &v31;
  v24 = *&a3->var0;
  var3 = a3->var3;
  v27 = v15;
  v28 = a5;
  v29 = a6;
  v30 = v19;
  *&v23[6] = width;
  *&v23[7] = height;
  v26 = a8;
  [v20 runEnsuringDocumentReadyAndLockingDocument:v23];

  v21 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v21;
}

void __142__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v5 = *(a1 + 48);
  v9 = *(a1 + 32);
  v12 = *(a1 + 64);
  v8[2] = __142__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke_2;
  v8[3] = &unk_279AA4EC8;
  v10 = a2;
  v13 = *(a1 + 80);
  v7 = *(a1 + 88);
  v6 = *(a1 + 92);
  v11 = v5;
  v14 = v7;
  v15 = v6;
  [v4 runWithInspectableProperties:v8];
}

void __142__PVMotionEffectTransformComponent_transformAtTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  LODWORD(v9) = *(a1 + 96);
  v6 = [v4 transformAtTime_NoLock:v5 time:&v10 forcePosterFrame:*(a1 + 100) includeTransformAnimation:*(a1 + 101) includePlayableAspectScale:*(a1 + 102) includeCoordinateSystemTranslationInEffectViewTransform:*(a1 + 103) viewSize:*(a1 + 56) viewOrigin:*(a1 + 64) properties:{v9, v3}];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)addToTopLevelTransform:(double)a3 atTime:(uint64_t)a4 forcePosterFrame:(__int128 *)a5 restrictToBounds:(__int128 *)a6 viewSize:(char)a7 viewOrigin:(char)a8
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = 0;
  v17 = [a1 motionEffect];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = *"";
  v24[2] = __120__PVMotionEffectTransformComponent_addToTopLevelTransform_atTime_forcePosterFrame_restrictToBounds_viewSize_viewOrigin___block_invoke;
  v24[3] = &unk_279AA4F40;
  v33 = a1;
  v34 = &v42;
  v18 = a5[5];
  v29 = a5[4];
  v30 = v18;
  v19 = a5[7];
  v31 = a5[6];
  v32 = v19;
  v20 = a5[1];
  v25 = *a5;
  v26 = v20;
  v21 = a5[3];
  v27 = a5[2];
  v28 = v21;
  v38 = *(a6 + 2);
  v37 = *a6;
  v40 = a7;
  v41 = a8;
  v35 = a2;
  v36 = a3;
  v39 = a9;
  [v17 runEnsuringDocumentReadyAndLockingDocument:v24];

  v22 = v43[5];
  _Block_object_dispose(&v42, 8);

  return v22;
}

void __120__PVMotionEffectTransformComponent_addToTopLevelTransform_atTime_forcePosterFrame_restrictToBounds_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 160) motionEffect];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v6 = *(a1 + 160);
  v5 = *(a1 + 176);
  v7 = *(a1 + 112);
  v17 = *(a1 + 96);
  v18 = v7;
  v8 = *(a1 + 144);
  v19 = *(a1 + 128);
  v20 = v8;
  v21 = v6;
  v9 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v9;
  v10 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v10;
  v24 = *(a1 + 192);
  v12[2] = __120__PVMotionEffectTransformComponent_addToTopLevelTransform_atTime_forcePosterFrame_restrictToBounds_viewSize_viewOrigin___block_invoke_2;
  v12[3] = &unk_279AA4F18;
  v11 = *(a1 + 208);
  v22 = a2;
  v25 = v11;
  v27 = *(a1 + 220);
  v23 = v5;
  v26 = *(a1 + 216);
  [v4 runWithInspectableProperties:v12];
}

void __120__PVMotionEffectTransformComponent_addToTopLevelTransform_atTime_forcePosterFrame_restrictToBounds_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 160);
  v5 = *(a1 + 176);
  v6 = *(a1 + 112);
  v15[4] = *(a1 + 96);
  v15[5] = v6;
  v7 = *(a1 + 144);
  v15[6] = *(a1 + 128);
  v15[7] = v7;
  v8 = *(a1 + 48);
  v15[0] = *(a1 + 32);
  v15[1] = v8;
  v9 = *(a1 + 80);
  v15[2] = *(a1 + 64);
  v15[3] = v9;
  v13 = *(a1 + 200);
  v14 = *(a1 + 216);
  v10 = [v4 addToTopLevelTransform_NoLock:v5 transform:v15 atTime:&v13 forcePosterFrame:*(a1 + 228) restrictToBounds:*(a1 + 229) viewSize:*(a1 + 224) viewOrigin:*(a1 + 184) properties:{*(a1 + 192), v3}];
  v11 = *(*(a1 + 168) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)addToTopLevelTransform_NoLock:(double)a3 transform:(uint64_t)a4 atTime:(uint64_t)a5 forcePosterFrame:(__int128 *)a6 restrictToBounds:(__int128 *)a7 viewSize:(uint64_t)a8 viewOrigin:(unsigned int)a9 properties:(uint64_t)a10
{
  v52 = a11;
  v53 = [a1 motionEffect];
  [v53 assertDocumentIsLocked];

  v54 = [a1 motionEffect];
  [v54 assertDocumentStatusIsLoadedOrReady];

  v55 = [a1 motionEffect];
  [v55 assertInspectablePropertiesAreLocked];

  v56 = [v52 objectForKeyedSubscript:@"kPVTopLevelTransformKey"];
  if (v56)
  {
    a35 = 0u;
    a36 = 0u;
    a33 = 0u;
    a34 = 0u;
    a31 = 0u;
    a32 = 0u;
    a29 = 0u;
    a30 = 0u;
LABEL_4:
    [v56 SIMDDouble4x4];
    goto LABEL_5;
  }

  v56 = +[PVMatrix44Double matrix];
  a35 = 0u;
  a36 = 0u;
  a33 = 0u;
  a34 = 0u;
  a31 = 0u;
  a32 = 0u;
  a29 = 0u;
  a30 = 0u;
  if (v56)
  {
    goto LABEL_4;
  }

LABEL_5:
  a17 = *a7;
  *&a18 = *(a7 + 2);
  a37 = 0uLL;
  a38 = 0u;
  LODWORD(v84) = a10;
  [a1 convertPointToView_NoLock:a5 effectPoint:&a37 atTime:&a17 forcePosterFrame:a8 includeTransformAnimation:1 includePlayableAspectScale:1 viewSize:a2 viewOrigin:a3 properties:v84];
  vars0 = v58;
  v90 = v57;
  v87 = a9;
  a27 = 0u;
  a28 = 0u;
  a25 = 0u;
  a26 = 0u;
  a37 = *a7;
  *&a38 = *(a7 + 2);
  [a1 cornersAtTime_NoLock:a5 time:&a37 forcePosterFrame:a8 includeDropShadow:1 scale:a10 viewSize:v52 viewOrigin:1.0 properties:{1.0, a2, a3}];
  a37 = a25;
  a38 = a26;
  a39 = a27;
  a40 = a28;
  quad_center = pv_CGPoint_get_quad_center(&a37);
  v85 = v60;
  v86 = quad_center;
  v61 = 0;
  v62.f64[0] = v90;
  *&v62.f64[1] = vars0;
  v91 = v62;
  v63 = a6[3];
  a39 = a6[2];
  a40 = v63;
  v64 = a6[5];
  a41 = a6[4];
  a42 = v64;
  v65 = a6[1];
  a37 = *a6;
  a38 = v65;
  *&v66 = 0;
  *(&v66 + 1) = *(a6 + 15);
  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  a17 = 0u;
  a18 = 0u;
  v68 = a29;
  v67 = a30;
  v70 = a31;
  v69 = a32;
  v72 = a33;
  v71 = a34;
  v74 = a35;
  v73 = a36;
  a43 = 0uLL;
  *&STACK[0x500] = v66;
  do
  {
    v76 = *(&a37 + v61);
    v75 = *(&a37 + v61 + 16);
    v77 = (&a17 + v61);
    *v77 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v68, v76.f64[0]), v70, v76, 1), v72, v75.f64[0]), v74, v75, 1);
    v77[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v67, v76.f64[0]), v69, v76, 1), v71, v75.f64[0]), v73, v75, 1);
    v61 += 32;
  }

  while (v61 != 128);
  a41 = a21;
  a42 = a22;
  a43 = a23;
  *&STACK[0x500] = a24;
  a37 = a17;
  a38 = a18;
  a39 = a19;
  a40 = a20;
  v78 = [PVMatrix44Double matrixWithSIMDDouble4x4:&a37];

  [a1 applyTopLevelGroupTransform_NoLock:a5 transform:v78];
  [v52 setObject:v78 forKeyedSubscript:@"kPVTopLevelTransformKey"];
  vars0a = a6[6];
  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a13 = *a7;
  *&a14 = *(a7 + 2);
  [a1 cornersAtTime_NoLock:a5 time:&a13 forcePosterFrame:a8 includeDropShadow:1 scale:a10 viewSize:v52 viewOrigin:1.0 properties:{1.0, a2, a3}];
  a13 = a37;
  a14 = a38;
  a15 = a39;
  a16 = a40;
  v79.f64[0] = pv_CGPoint_get_quad_center(&a13);
  v80.f64[0] = v86;
  v80.f64[1] = v85;
  v79.f64[1] = v81;
  a13 = *a7;
  *&a14 = *(a7 + 2);
  v82 = [a1 setPositionInView_NoLock:a5 viewPoint:&a13 atTime:a8 forcePosterFrame:a10 viewSize:v87 viewOrigin:v78 restrictToBounds:vaddq_f64(vars0a topLevelTransform:vsubq_f64(v91 properties:{vsubq_f64(v79, v80))), a2, a3}];

  return v82;
}

- (CGPoint)convertPointToView:(id *)a3 atTime:(BOOL)a4 forcePosterFrame:(BOOL)a5 includeTransformAnimation:(BOOL)a6 includePlayableAspectScale:(CGSize)a7 viewSize:(int)a8 viewOrigin:
{
  v9 = v8;
  v10 = a8;
  v13 = a4;
  height = a7.height;
  width = a7.width;
  v22 = *&a3->var0;
  v23 = *&a3->var3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x4012000000;
  v40 = __Block_byref_object_copy__76;
  v41 = __Block_byref_object_dispose__77;
  v42 = &unk_260C3B1FE;
  v17 = [(PVMotionEffectComponent *)self motionEffect];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = *"";
  v24[2] = __152__PVMotionEffectTransformComponent_convertPointToView_atTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke;
  v24[3] = &unk_279AA4F90;
  v27 = self;
  v28 = &v37;
  v25 = v22;
  v26 = v23;
  v31 = *v13;
  v32 = *(v13 + 16);
  v34 = a5;
  v35 = a6;
  v36 = v10;
  v29 = width;
  v30 = height;
  v33 = v9;
  [v17 runEnsuringDocumentReadyAndLockingDocument:v24];

  v18 = v38[6];
  v19 = v38[7];
  _Block_object_dispose(&v37, 8);
  v20 = v18;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

void __152__PVMotionEffectTransformComponent_convertPointToView_atTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 64) motionEffect];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __152__PVMotionEffectTransformComponent_convertPointToView_atTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke_2;
  v8[3] = &unk_279AA4F68;
  v6 = *(a1 + 64);
  v5 = *(a1 + 80);
  v12 = a2;
  v7 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = v6;
  v9 = v7;
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v17 = *(a1 + 124);
  v18 = *(a1 + 126);
  v13 = v5;
  v16 = *(a1 + 120);
  [v4 runWithInspectableProperties:v8];
}

void __152__PVMotionEffectTransformComponent_convertPointToView_atTime_forcePosterFrame_includeTransformAnimation_includePlayableAspectScale_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  v6 = *(a1 + 32);
  v7 = *(a1 + 104);
  v17[1] = *(a1 + 48);
  v18 = v7;
  v19 = *(a1 + 120);
  v8 = *(a1 + 132);
  v9 = *(a1 + 133);
  v10 = *(a1 + 134);
  *&v7 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  v17[0] = v6;
  LODWORD(v16) = v12;
  [v4 convertPointToView_NoLock:v5 effectPoint:v17 atTime:&v18 forcePosterFrame:v8 includeTransformAnimation:v9 includePlayableAspectScale:v10 viewSize:*&v7 viewOrigin:v11 properties:{v16, v3}];
  v13 = *(*(a1 + 72) + 8);
  *(v13 + 48) = v14;
  *(v13 + 56) = v15;
}

- (CGPoint)convertPointToView_NoLock:(const void *)a3 effectPoint:(id *)a4 atTime:(BOOL)a5 forcePosterFrame:(BOOL)a6 includeTransformAnimation:(BOOL)a7 includePlayableAspectScale:(CGSize)a8 viewSize:(int)a9 viewOrigin:(id)a10 properties:
{
  height = a8.height;
  width = a8.width;
  v12 = *&a9;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v31 = *&a4->var3;
  v32 = *&a4->var0;
  v18 = v50;
  v19 = [(PVMotionEffectComponent *)self motionEffect];
  [v19 assertDocumentIsLocked];

  v20 = [(PVMotionEffectComponent *)self motionEffect];
  [v20 assertDocumentStatusIsLoadedOrReady];

  v21 = [(PVMotionEffectComponent *)self motionEffect];
  [v21 assertInspectablePropertiesAreLocked];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = *v15;
  *&v35 = *(v15 + 16);
  LODWORD(v30) = a10;
  v22 = [(PVMotionEffectTransformComponent *)self transformAtTime_NoLock:a3 time:&v34 forcePosterFrame:v14 includeTransformAnimation:v13 includePlayableAspectScale:v12 includeCoordinateSystemTranslationInEffectViewTransform:1 viewSize:width viewOrigin:height properties:v30, v18];
  v23 = v22;
  if (v22)
  {
    [v22 SIMDDouble4x4];
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
  }

  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v33[0] = v32;
  v33[1] = v31;
  [(PVMotionEffectTransformComponent *)self convertPointToView_NoLock:a3 effectPoint:v33 withEffectToViewTransform:&v34 viewSize:width, height];
  v25 = v24;
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (double)convertPointToView:(double)a3 withEffectToViewTransform:(uint64_t)a4 viewSize:(__int128 *)a5
{
  v17 = *a5;
  v18 = a5[1];
  v34 = 0;
  v35 = &v34;
  v36 = 0x4012000000;
  v37 = __Block_byref_object_copy__76;
  v38 = __Block_byref_object_dispose__77;
  v39 = &unk_260C3B1FE;
  v10 = [a1 motionEffect];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = *"";
  v19[2] = __90__PVMotionEffectTransformComponent_convertPointToView_withEffectToViewTransform_viewSize___block_invoke;
  v19[3] = &unk_279AA4FB8;
  v30 = a1;
  v31 = &v34;
  v20 = v17;
  v21 = v18;
  v11 = a6[5];
  v26 = a6[4];
  v27 = v11;
  v12 = a6[7];
  v28 = a6[6];
  v29 = v12;
  v13 = a6[1];
  v22 = *a6;
  v23 = v13;
  v14 = a6[3];
  v24 = a6[2];
  v25 = v14;
  v32 = a2;
  v33 = a3;
  [v10 runEnsuringDocumentReadyAndLockingDocument:v19];

  v15 = v35[6];
  _Block_object_dispose(&v34, 8);
  return v15;
}

uint64_t __90__PVMotionEffectTransformComponent_convertPointToView_withEffectToViewTransform_viewSize___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 192);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 144);
  v16[4] = *(a1 + 128);
  v16[5] = v6;
  v7 = *(a1 + 176);
  v16[6] = *(a1 + 160);
  v16[7] = v7;
  v8 = *(a1 + 80);
  v16[0] = *(a1 + 64);
  v16[1] = v8;
  v9 = *(a1 + 112);
  v16[2] = *(a1 + 96);
  v16[3] = v9;
  v10 = *(a1 + 208);
  *&v9 = *(a1 + 216);
  v15[0] = v4;
  v15[1] = v5;
  result = [v3 convertPointToView_NoLock:a2 effectPoint:v15 withEffectToViewTransform:v16 viewSize:{v10, *&v9}];
  v12 = *(*(a1 + 200) + 8);
  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  return result;
}

- (float64_t)convertPointToView_NoLock:(uint64_t)a3 effectPoint:(__int128 *)a4 withEffectToViewTransform:(_OWORD *)a5 viewSize:
{
  v5 = *a4;
  v6 = a4[1];
  v7 = a5[5];
  v14[4] = a5[4];
  v14[5] = v7;
  v8 = a5[7];
  v14[6] = a5[6];
  v14[7] = v8;
  v9 = a5[1];
  v14[0] = *a5;
  v14[1] = v9;
  v10 = a5[3];
  v14[2] = a5[2];
  v14[3] = v10;
  v12[0] = v5;
  v12[1] = v6;
  pv_simd_matrix_transform_vector(v14, v12, v13);
  return v13[0].f64[0];
}

- (void)convertPointFromView:(int)a3@<W3> atTime:(_OWORD *)a4@<X8> viewSize:(double)a5@<D0> viewOrigin:(double)a6@<D1>
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x4020000000;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v16 = [a1 motionEffect];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = *"";
  v19[2] = __84__PVMotionEffectTransformComponent_convertPointFromView_atTime_viewSize_viewOrigin___block_invoke;
  v19[3] = &unk_279AA5008;
  v19[4] = a1;
  v19[5] = &v23;
  *&v19[6] = a5;
  *&v19[7] = a6;
  v20 = *a2;
  v21 = *(a2 + 2);
  *&v19[8] = a7;
  *&v19[9] = a8;
  v22 = a3;
  [v16 runEnsuringDocumentReadyAndLockingDocument:v19];

  v17 = *(v24 + 3);
  v18 = *(v24 + 2);
  _Block_object_dispose(&v23, 8);
  *a4 = v18;
  a4[1] = v17;
}

void __84__PVMotionEffectTransformComponent_convertPointFromView_atTime_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v6 = *(a1 + 64);
  v12 = *(a1 + 80);
  v7[2] = __84__PVMotionEffectTransformComponent_convertPointFromView_atTime_viewSize_viewOrigin___block_invoke_2;
  v7[3] = &unk_279AA4FE0;
  v9 = a2;
  v13 = *(a1 + 96);
  v10 = v5;
  v11 = v6;
  v14 = *(a1 + 104);
  [v4 runWithInspectableProperties:v7];
}

__n128 __84__PVMotionEffectTransformComponent_convertPointFromView_atTime_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 64);
  v14 = *(a1 + 88);
  v15 = *(a1 + 104);
  if (v4)
  {
    [v4 convertPointFromView_NoLock:v5 viewPoint:&v14 atTime:*(a1 + 112) viewSize:v3 viewOrigin:v6 properties:{*&v7, *(a1 + 72), *(a1 + 80)}];
    v8 = v12;
    v7 = v13;
    v9 = vextq_s8(v8, v8, 8uLL).u64[0];
  }

  else
  {
    v8.i64[0] = 0;
    v9 = 0;
    *&v7 = 0;
  }

  v10 = *(*(a1 + 40) + 8);
  v8.i64[1] = v9;
  *(v10 + 32) = v8;
  *(v10 + 48) = v7;

  return result;
}

- (__n128)convertPointFromView_NoLock:(uint64_t)a3@<X3> viewPoint:(int)a4@<W4> atTime:(void *)a5@<X5> viewSize:(float64x2_t *)a6@<X8> viewOrigin:(double)a7@<D0> properties:(float64_t)a8@<D1>
{
  v18 = a5;
  v19 = [a1 motionEffect];
  [v19 assertDocumentIsLocked];

  v20 = [a1 motionEffect];
  [v20 assertDocumentStatusIsLoadedOrReady];

  v21 = [a1 motionEffect];
  [v21 assertInspectablePropertiesAreLocked];

  v22 = [a1 motionEffect];
  [v22 playableScaleInView_NoLock:v18 properties:{a9, a10}];
  v24 = v23;

  v25.f64[0] = a7;
  v25.f64[1] = a8;
  v77 = v25;
  if (fabs(v24 + -1.0) >= 0.0001)
  {
    memset(&v82, 0, sizeof(v82));
    CGAffineTransformMakeScale(&v82, 1.0 / v24, 1.0 / v24);
    memset(&v81, 0, sizeof(v81));
    CGAffineTransformMakeTranslation(&t1, -(a9 * 0.5), -(a10 * 0.5));
    t2 = v82;
    CGAffineTransformConcat(&v102, &t1, &t2);
    CGAffineTransformMakeTranslation(&t1, a9 * 0.5, a10 * 0.5);
    CGAffineTransformConcat(&v81, &v102, &t1);
    v82 = v81;
    v77 = vaddq_f64(*&v81.tx, vaddq_f64(vmulq_n_f64(*&v81.a, a7), vmulq_laneq_f64(*&v81.c, v77, 1)));
  }

  v109 = 0;
  memset(&v108, 0, sizeof(v108));
  v26 = [v18 objectForKeyedSubscript:{@"kPVTransformAnimationKey", PVTransformAnimationInfoIdentity(&v108)}];
  *&v102.a = *a3;
  v102.c = *(a3 + 16);
  v27 = [PVTransformAnimation getTransformInfoFromAnimation:v26 atTime:&v102 renderSize:14 contentMode:0 invertY:&v108 outInfo:a9, a10];

  if (v27)
  {
    memset(&t1, 0, sizeof(t1));
    v102 = v108;
    *&v103 = v109;
    v110.x = a9 * 0.5;
    v110.y = a10 * 0.5;
    CGAffineTransformFromPointWithPVAnimInfo(&v102, v110, &t1);
    t2 = t1;
    CGAffineTransformInvert(&v102, &t2);
    v77 = vaddq_f64(*&v102.tx, vaddq_f64(vmulq_n_f64(*&v102.a, v77.f64[0]), vmulq_laneq_f64(*&v102.c, v77, 1)));
  }

  LODWORD(v10) = *(a2 + 12);
  LODWORD(v24) = *(a2 + 16);
  v28 = [a1 motionEffect];
  v29 = [v28 origin];
  v30 = v10;
  v31 = *&v24;

  v32 = MEMORY[0x277CBF348];
  v33 = *MEMORY[0x277CBF348];
  v34 = *(MEMORY[0x277CBF348] + 8);
  if (a4 == 2)
  {
    if (v29 == 1)
    {
      v35 = 1;
    }

    else
    {
      if (v29)
      {
        goto LABEL_17;
      }

      v35 = 0;
    }

    v33 = a9 * 0.5;
    goto LABEL_21;
  }

  if (a4 == 1)
  {
    if (v29 != 2)
    {
      if (!v29)
      {
        goto LABEL_13;
      }

LABEL_17:
      v35 = 0;
      goto LABEL_23;
    }

    v33 = a9 * -0.5;
    v35 = 1;
LABEL_21:
    v34 = a10 * 0.5;
    goto LABEL_23;
  }

  if (a4)
  {
    goto LABEL_17;
  }

  if (v29 != 2)
  {
    if (v29 != 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v35 = 1;
    v34 = a10;
    goto LABEL_23;
  }

  v35 = 0;
  v33 = a9 * -0.5;
  v34 = a10 * -0.5;
LABEL_23:
  v75 = 0u;
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeScale(&t2, v30 / a9, v31 / a10);
  t1 = t2;
  CGAffineTransformTranslate(&v102, &t1, v33, v34);
  t2 = v102;
  if (v35)
  {
    t1 = t2;
    CGAffineTransformScale(&v102, &t1, 1.0, -1.0);
    t2 = v102;
  }

  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  tx = t2.tx;
  ty = t2.ty;
  v42 = [v18 objectForKeyedSubscript:@"kPVCameraEnabledKey"];
  v43 = [v42 BOOLValue];
  v44.f64[0] = tx + a * v77.f64[0] + vmuld_lane_f64(c, v77, 1);
  v72 = ty + b * v77.f64[0] + vmuld_lane_f64(d, v77, 1);
  v73 = v44.f64[0];
  v44.f64[1] = v72;
  v78 = v44;

  if (v43)
  {
    v45 = [v18 objectForKeyedSubscript:@"kPVTransformKey"];
    v46 = [v18 objectForKeyedSubscript:@"kPVCameraTransformKey"];
    v47 = [v18 objectForKeyedSubscript:@"kPVCameraProjectionKey"];
    v48 = v47;
    if (v45 && v46 && v47)
    {
      v71 = v45;
      v49 = a6;
      v50 = [v18 objectForKeyedSubscript:@"kPVTransformUnitsAreInMeters"];
      v51 = [v50 BOOLValue];

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      memset(&v102, 0, sizeof(v102));
      [v71 SIMDDouble4x4];
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v97 = 0u;
      memset(&t1, 0, sizeof(t1));
      [v46 SIMDDouble4x4];
      a6 = v49;
      if (v51)
      {
        v52.f64[0] = a1[5];
        *&v53.f64[0] = *&vmulq_f64(v107, v52);
        v53.f64[1] = v107.f64[1];
        v106 = vmulq_n_f64(v106, v52.f64[0]);
        v107 = v53;
        v54 = vmulq_n_f64(v100, v52.f64[0]);
        *&v55.f64[0] = *&vmulq_f64(v52, v101);
        v55.f64[1] = v101.f64[1];
        v100 = v54;
        v101 = v55;
      }

      v45 = v71;
      v56 = [a1 motionEffect];
      [v56 outputROI_NoLock:a2 scale:1.0];
      v69 = v58;
      v70 = v57;
      v79 = v59;
      v68 = v60;

      if (v29 == 2)
      {
        v61 = v30 * 0.5;
        v63 = v31 * 0.5;
        v62 = 1;
      }

      else
      {
        v61 = *v32;
        if (v29)
        {
          v62 = 0;
          v63 = v32[1];
        }

        else
        {
          v62 = 1;
          v63 = v31;
        }
      }

      v75 = 0u;
      memset(&v81, 0, sizeof(v81));
      CGAffineTransformMakeScale(&v81, v30 / v30, v31 / v31);
      v82 = v81;
      CGAffineTransformTranslate(&t2, &v82, v61, v63);
      v81 = t2;
      if (v62)
      {
        v82 = v81;
        CGAffineTransformScale(&t2, &v82, 1.0, -1.0);
        v81 = t2;
      }

      v67 = v81;
      v94 = 0u;
      v95 = 0u;
      v90 = v104;
      v91 = v105;
      v92 = v106;
      v93 = v107;
      t2 = v102;
      v89 = v103;
      v84 = v98;
      v85 = v99;
      v86 = v100;
      v87 = v101;
      v82 = t1;
      v83 = v97;
      [v48 SIMDDouble4x4];
      v64.n128_u64[0] = v79;
      v64.n128_u64[1] = v68;
      v65.f64[0] = v70;
      v65.f64[1] = v69;
      v80[1] = 0u;
      v78 = vaddq_f64(*&v67.tx, vaddq_f64(vmulq_n_f64(*&v67.a, v73), vmulq_n_f64(*&v67.c, v72)));
      v80[0] = vsubq_f64(v78, v65);
      if (pv_simd_matrix_unproject_to_plane(v80, 2, &t2, &v82, &v81, 1, 0, 1, v64, &v94))
      {
        v75 = v95;
        v78 = v94;
      }
    }
  }

  result = v78;
  *a6 = v78;
  a6[1] = v75;
  return result;
}

- (id)setPositionInView:(CGPoint)a3 atTime:(id *)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6 restrictToBounds:(BOOL)a7
{
  height = a5.height;
  width = a5.width;
  y = a3.y;
  x = a3.x;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v15 = [(PVMotionEffectComponent *)self motionEffect];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = *"";
  v18[2] = __98__PVMotionEffectTransformComponent_setPositionInView_atTime_viewSize_viewOrigin_restrictToBounds___block_invoke;
  v18[3] = &unk_279AA5058;
  v18[4] = self;
  v18[5] = &v22;
  *&v18[6] = x;
  *&v18[7] = y;
  v19 = *a4;
  *&v18[8] = width;
  *&v18[9] = height;
  v20 = a6;
  v21 = a7;
  [v15 runEnsuringDocumentReadyAndLockingDocument:v18];

  v16 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v16;
}

void __98__PVMotionEffectTransformComponent_setPositionInView_atTime_viewSize_viewOrigin_restrictToBounds___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v6 = *(a1 + 64);
  v12 = *(a1 + 80);
  v7[2] = __98__PVMotionEffectTransformComponent_setPositionInView_atTime_viewSize_viewOrigin_restrictToBounds___block_invoke_2;
  v7[3] = &unk_279AA5030;
  v9 = a2;
  v13 = *(a1 + 96);
  v10 = v5;
  v11 = v6;
  v14 = *(a1 + 104);
  v15 = *(a1 + 108);
  [v4 runWithInspectableProperties:v7];
}

void __98__PVMotionEffectTransformComponent_setPositionInView_atTime_viewSize_viewOrigin_restrictToBounds___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kPVTopLevelTransformKey"];
  v5 = [*(a1 + 32) motionEffect];
  v6 = [v5 timelineComponent];
  v7 = [v6 isForceRenderAtPosterFrameEnabled:v3];

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v15 = *(a1 + 88);
  v16 = *(a1 + 104);
  v12 = [v8 setPositionInView_NoLock:v9 viewPoint:&v15 atTime:v7 forcePosterFrame:*(a1 + 112) viewSize:*(a1 + 116) viewOrigin:v4 restrictToBounds:v10 topLevelTransform:v11 properties:{*(a1 + 72), *(a1 + 80), v3}];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)setPositionInView_NoLock:(const void *)a3 viewPoint:(CGPoint)a4 atTime:(id *)a5 forcePosterFrame:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8 restrictToBounds:(BOOL)a9 topLevelTransform:(id)a10 properties:(id)a11
{
  v11 = a9;
  v12 = *&a8;
  height = a7.height;
  width = a7.width;
  v15 = a6;
  vars0 = *&a4.y;
  x = a4.x;
  v19 = a4.x;
  v20 = a10;
  v21 = *&v19;
  v22 = [(PVMotionEffectComponent *)self motionEffect];
  [v22 assertDocumentIsLocked];

  v23 = [(PVMotionEffectComponent *)self motionEffect];
  [v23 assertDocumentStatusIsLoadedOrReady];

  v24 = [(PVMotionEffectComponent *)self motionEffect];
  [v24 assertInspectablePropertiesAreLocked];

  if (v11)
  {
    v60 = *&a5->var0;
    *&v61 = a5->var3;
    v68 = 0uLL;
    v69 = 0u;
    [(PVMotionEffectTransformComponent *)self convertPointToView_NoLock:a3 effectPoint:&v68 atTime:&v60 forcePosterFrame:v15 includeTransformAnimation:1 includePlayableAspectScale:1 viewSize:width viewOrigin:height properties:?];
    v54 = v26;
    v55 = v25;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v60 = *&a5->var0;
    *&v61 = a5->var3;
    [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v60 forcePosterFrame:v15 includeDropShadow:1 scale:v12 viewSize:v21 viewOrigin:1.0 properties:1.0, width, height];
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    quad_center = pv_CGPoint_get_quad_center(&v60);
    v52 = v28;
    v53 = quad_center;
    v29 = [(PVMotionEffectComponent *)self motionEffect];
    [v29 playableRectInView_NoLock:v21 properties:{width, height}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v78.origin.x = v31;
    v78.origin.y = v33;
    v78.size.width = v35;
    v78.size.height = v37;
    MinX = CGRectGetMinX(v78);
    v79.origin.x = v31;
    v79.origin.y = v33;
    v79.size.width = v35;
    v79.size.height = v37;
    MinY = CGRectGetMinY(v79);
    v80.origin.x = v31;
    v80.origin.y = v33;
    v80.size.width = v35;
    v80.size.height = v37;
    MaxX = CGRectGetMaxX(v80);
    v81.origin.x = v31;
    v81.origin.y = v33;
    v81.size.width = v35;
    v81.size.height = v37;
    MaxY = CGRectGetMaxY(v81);
    v39.f64[0] = v53;
    v39.f64[1] = v52;
    v40.f64[0] = v55;
    v40.f64[1] = v54;
    v41 = vsubq_f64(v39, v40);
    v42.f64[0] = x;
    *&v42.f64[1] = vars0;
    v39.f64[0] = MinX;
    v39.f64[1] = MinY;
    v43.f64[0] = MaxX;
    v43.f64[1] = MaxY;
    v44 = vsubq_f64(vminnmq_f64(vmaxnmq_f64(vaddq_f64(v42, v41), v39), v43), v41);
    v45 = v44.f64[1];
  }

  else
  {
    v45 = *&vars0;
    v44.f64[0] = x;
  }

  v68 = *&a5->var0;
  *&v69 = a5->var3;
  [(PVMotionEffectTransformComponent *)self convertPointFromView_NoLock:a3 viewPoint:&v68 atTime:v12 viewSize:v21 viewOrigin:v44.f64[0] properties:v45, width, height];
  vars0a = v76;
  v59 = v77;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  if (v20)
  {
    [v20 SIMDDouble4x4];
    v46 = *(&v75 + 1);
  }

  else
  {
    v72 = 0uLL;
    v73 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v46 = 0;
    v68 = 0uLL;
    v69 = 0uLL;
  }

  *&v47 = v59;
  *(&v47 + 1) = v46;
  v74 = vars0a;
  v75 = v47;
  v64 = v72;
  v65 = v73;
  v66 = vars0a;
  v67 = v47;
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  [v20 setSIMDDouble4x4:&v60];
  [(PVMotionEffectTransformComponent *)self applyTopLevelGroupTransform_NoLock:a3 transform:v20];
  [v21 setObject:v20 forKeyedSubscript:@"kPVTopLevelTransformKey"];

  return v20;
}

- (id)scaleToFit:(CGRect)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7 restrictToBounds:(BOOL)a8
{
  height = a6.height;
  width = a6.width;
  v14 = a3.size.height;
  v15 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v19 = [(PVMotionEffectComponent *)self motionEffect];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = *"";
  v22[2] = __108__PVMotionEffectTransformComponent_scaleToFit_atTime_forcePosterFrame_viewSize_viewOrigin_restrictToBounds___block_invoke;
  v22[3] = &unk_279AA50A8;
  v22[4] = self;
  v22[5] = &v27;
  *&v22[6] = x;
  *&v22[7] = y;
  *&v22[8] = v15;
  *&v22[9] = v14;
  v23 = *a4;
  v25 = a5;
  *&v22[10] = width;
  *&v22[11] = height;
  v24 = a7;
  v26 = a8;
  [v19 runEnsuringDocumentReadyAndLockingDocument:v22];

  v20 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v20;
}

void __108__PVMotionEffectTransformComponent_scaleToFit_atTime_forcePosterFrame_viewSize_viewOrigin_restrictToBounds___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v5 = *(a1 + 48);
  v10 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 96);
  v14 = v7;
  v15 = v8;
  v9[2] = __108__PVMotionEffectTransformComponent_scaleToFit_atTime_forcePosterFrame_viewSize_viewOrigin_restrictToBounds___block_invoke_2;
  v9[3] = &unk_279AA5080;
  v11 = a2;
  v16 = *(a1 + 112);
  v18 = *(a1 + 124);
  v17 = *(a1 + 120);
  v19 = *(a1 + 125);
  [v4 runWithInspectableProperties:v9];
}

void __108__PVMotionEffectTransformComponent_scaleToFit_atTime_forcePosterFrame_viewSize_viewOrigin_restrictToBounds___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v13 = *(a1 + 104);
  v14 = *(a1 + 120);
  v10 = [v4 scaleToFit_NoLock:v5 rect:&v13 atTime:*(a1 + 132) forcePosterFrame:*(a1 + 128) viewSize:*(a1 + 133) viewOrigin:v3 restrictToBounds:v6 properties:{v7, v8, v9, *(a1 + 88), *(a1 + 96)}];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)scaleToFit_NoLock:(const void *)a3 rect:(CGRect)a4 atTime:(id *)a5 forcePosterFrame:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8 restrictToBounds:(BOOL)a9 properties:(id)a10
{
  v10 = a9;
  v11 = *&a8;
  height = a7.height;
  width = a7.width;
  v14 = a6;
  v16 = a4.size.height;
  v17 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v22 = a10;
  if (self->_isFixedSourceDropShadow)
  {
    v43.a = *&a5->var0;
    *&v43.b.x = a5->var3;
    [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v43 forcePosterFrame:v14 includeDropShadow:0 scale:v11 viewSize:v22 viewOrigin:1.0 properties:1.0, width, height];
    pv_bounding_CGRect(&v44);
    v24 = v16 - height * self->_normalizedFixedShadowSize.height;
    v25 = (v17 - width * self->_normalizedFixedShadowSize.width) / v23;
    v27 = v26 * v25;
    v28 = v24 / v26;
    v29 = v27 <= v24;
  }

  else
  {
    v43.a = *&a5->var0;
    *&v43.b.x = a5->var3;
    [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v43 forcePosterFrame:v14 includeDropShadow:1 scale:v11 viewSize:v22 viewOrigin:1.0 properties:1.0, width, height];
    pv_bounding_CGRect(&v44);
    v25 = v17 / v23;
    v31 = v30 * (v17 / v23);
    v28 = v16 / v30;
    v29 = v31 <= v16;
  }

  if (!v29)
  {
    v25 = v28;
  }

  v32 = v23 * v25 / v23;
  v33.x = 0.0;
  v33.y = v32;
  v44.a = *&v32;
  v44.b = 0u;
  v44.c = v33;
  v44.d = 0u;
  v45 = 0u;
  v46 = xmmword_2603426F0;
  v47 = 0u;
  v48 = xmmword_260342700;
  v43.a = *&a5->var0;
  *&v43.b.x = a5->var3;
  v34 = [(PVMotionEffectTransformComponent *)self addToTopLevelTransform_NoLock:a3 transform:&v44 atTime:&v43 forcePosterFrame:v14 restrictToBounds:0 viewSize:v11 viewOrigin:width properties:height, v22];
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v17;
  v50.size.height = v16;
  MidX = CGRectGetMidX(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v17;
  v51.size.height = v16;
  MidY = CGRectGetMidY(v51);
  memset(&v43, 0, sizeof(v43));
  v44.a = *&a5->var0;
  *&v44.b.x = a5->var3;
  [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v44 forcePosterFrame:v14 includeDropShadow:1 scale:v11 viewSize:v22 viewOrigin:1.0 properties:1.0, width, height];
  v44 = v43;
  *&v37 = MidX - pv_CGPoint_get_quad_center(&v44);
  *(&v37 + 1) = MidY - v38;
  v44.a = xmmword_2603426F0;
  v44.b = 0u;
  v44.c = xmmword_260342700;
  v44.d = 0u;
  v45 = 0u;
  v46 = xmmword_2603426F0;
  v47 = v37;
  v48 = xmmword_260342700;
  v41 = *&a5->var0;
  var3 = a5->var3;
  v39 = [(PVMotionEffectTransformComponent *)self addToTopLevelTransform_NoLock:a3 transform:&v44 atTime:&v41 forcePosterFrame:v14 restrictToBounds:v10 viewSize:v11 viewOrigin:width properties:height, v22];

  return v39;
}

- (id)topLevelGroupTransform
{
  v2 = [(PVMotionEffectComponent *)self motionEffect];
  v3 = [v2 transformObjectForKey:@"kPVTopLevelTransformKey"];

  if (!v3)
  {
    v3 = +[PVMatrix44Double matrix];
  }

  return v3;
}

- (void)setTopLevelGroupTransform:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PVMotionEffectComponent *)self motionEffect];
    [v5 setInspectableProperty:v4 forKey:@"kPVTopLevelTransformKey"];

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v6 = [(PVMotionEffectComponent *)self motionEffect];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = *"";
    v13[2] = __62__PVMotionEffectTransformComponent_setTopLevelGroupTransform___block_invoke;
    v13[3] = &unk_279AA50D0;
    v13[4] = self;
    v13[5] = v16;
    v13[6] = v14;
    [v6 runWithInspectableProperties:v13];

    v7 = [(PVMotionEffectComponent *)self motionEffect];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = *"";
    v8[2] = __62__PVMotionEffectTransformComponent_setTopLevelGroupTransform___block_invoke_2;
    v8[3] = &unk_279AA50F8;
    v9 = v4;
    v10 = self;
    v11 = v16;
    v12 = v14;
    [v7 runEnsuringDocumentReadyAndLockingDocument:v8];

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }
}

void __62__PVMotionEffectTransformComponent_setTopLevelGroupTransform___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) additionalTopLevelScaleInDictionary:? orInDefaultDictionary:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isForceRenderAtPosterFrameEnabledInDictionary:v6 orInDefaultDictionary:0];
}

void __62__PVMotionEffectTransformComponent_setTopLevelGroupTransform___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v30 = 0uLL;
    v31 = 0;
    v5 = [*(a1 + 40) motionEffect];
    v6 = [v5 timelineComponent];
    v7 = v6;
    v28 = *MEMORY[0x277CC08F0];
    v29 = *(MEMORY[0x277CC08F0] + 16);
    if (v6)
    {
      [v6 timelineTimeFromComponentTime_NoLock:&v28 forcePosterFrame:*(*(*(a1 + 56) + 8) + 24) documentInfo:a2];
    }

    else
    {
      v30 = 0uLL;
      v31 = 0;
    }

    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v27.size = _Q0;
    v13 = *(a1 + 40);
    v14 = *(a2 + 160);
    v25 = v30;
    v26 = v31;
    if (![v13 objectBounds_NoLock:&v27 objectID:v14 timelineTime:&v25 includeDropShadow:1 includeMasks:1 documentInfo:a2])
    {
      v15 = *(a1 + 40);
      [*(*(*(a1 + 48) + 8) + 40) CGPointValue];
      v17 = v16;
      v19 = v18;
      x = v27.origin.x;
      y = v27.origin.y;
      size = v27.size;
      MidX = CGRectGetMidX(v27);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size = size;
      v24 = [v15 applyAdditionalTopLevelScale:v4 aroundPoint:v17 toTransform:{v19, MidX, CGRectGetMidY(v32)}];

      v4 = v24;
    }
  }

  [*(a1 + 40) applyTopLevelGroupTransform_NoLock:a2 transform:v4];
}

- (void)applyTopLevelGroupTransform_NoLock:(const void *)a3 transform:(id)a4
{
  v6 = a4;
  v7 = [(PVMotionEffectComponent *)self motionEffect];
  [v7 assertDocumentIsLocked];

  v8 = [(PVMotionEffectComponent *)self motionEffect];
  [v8 assertDocumentStatusIsLoadedOrReady];

  if (v6 && !*(a3 + 41))
  {
    [v6 SIMDDouble4x4];
    v9 = 0;
    v22[4] = v18;
    v22[5] = v19;
    v22[6] = v20;
    v22[7] = v21;
    v22[0] = v14;
    v22[1] = v15;
    v10 = v23;
    v22[2] = v16;
    v22[3] = v17;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(v10 + i) = *(&v22[2 * i] + (v9 & 3));
      }

      ++v9;
      v10 += 2;
    }

    while (v9 != 4);
    OZXSetObjectTransform(*a3, MEMORY[0x277CC08F0], *(a3 + 40), v23);
    v12 = [(PVMotionEffectComponent *)self motionEffect];
    [v6 SIMDDouble4x4];
    v13 = [PVMatrix44Double matrixWithSIMDDouble4x4:v22];
    [v12 didSetCacheInvalidatingParameter_NoLock:v13 forKey:@"kPVTopLevelTransformKey"];
  }
}

- (void)setTransform:(id)a3
{
  v4 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __49__PVMotionEffectTransformComponent_setTransform___block_invoke;
  v12[3] = &unk_279AA4D88;
  v14 = v15;
  v6 = v4;
  v13 = v6;
  [v5 runWithInspectableProperties:v12];

  v7 = [(PVMotionEffectComponent *)self motionEffect];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v9[2] = __49__PVMotionEffectTransformComponent_setTransform___block_invoke_2;
  v9[3] = &unk_279AA5120;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  v11 = v15;
  [v7 runEnsuringDocumentReadyAndLockingDocument:v9];

  _Block_object_dispose(v15, 8);
}

void __49__PVMotionEffectTransformComponent_setTransform___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"kPVTransformUnitsAreInMeters"];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];

  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"kPVTransformKey"];
}

- (__n128)getScale
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

- (BOOL)setTransform_NoLock:(const void *)a3 transform:(id)a4 transformUnitsAreInMeters:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(PVMotionEffectComponent *)self motionEffect];
  [v9 assertDocumentIsLocked];

  v10 = [(PVMotionEffectComponent *)self motionEffect];
  [v10 assertDocumentStatusIsLoadedOrReady];

  if (v8 && ![(PVMotionEffectTransformComponent *)self encloseTopGroupIn3DGroupOnce_NoLock:a3]|| self->_top3DGroupIDStatus)
  {
    v11 = 0;
  }

  else
  {
    v43 = 0x3FF0000000000000;
    v40 = 0x3FF0000000000000;
    v37 = 0x3FF0000000000000;
    v34 = 0x3FF0000000000000;
    v35 = 0u;
    v36 = 0u;
    v38 = 0u;
    v39 = 0u;
    v41 = 0u;
    v42 = 0u;
    if (v8)
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      [v8 SIMDDouble4x4];
      if (v5)
      {
        v13.f64[0] = self->_metersToWorldUnitScale;
        v14 = vmulq_n_f64(v32, v13.f64[0]);
        *&v15.f64[0] = *&vmulq_f64(v33, v13);
        v15.f64[1] = v33.f64[1];
        v32 = v14;
        v33 = v15;
      }

      v16 = 0;
      var30[0] = v26;
      var30[1] = v27;
      v17 = v25;
      var30[2] = v28;
      var30[3] = v29;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          *&v17[8 * i] = *(&var30[2 * i] & 0xFFFFFFFFFFFFFFE7 | (8 * (v16 & 3)));
        }

        ++v16;
        v17 += 32;
      }

      while (v16 != 4);
      for (j = 0; j != 128; j += 32)
      {
        v20 = (&v34 + j);
        v21 = *&v25[j + 16];
        *v20 = *&v25[j];
        v20[1] = v21;
      }
    }

    v22 = OZXSetObjectTransform(*a3, MEMORY[0x277CC08F0], self->_top3DGroupID, &v34);
    v11 = v22 == 0;
    if (!v22)
    {
      v23 = [(PVMotionEffectComponent *)self motionEffect];
      [v23 didSetCacheInvalidatingParameter_NoLock:v8 forKey:@"kPVTransformKey"];
    }
  }

  return v11;
}

- (BOOL)setCameraTransform_NoLock:(const void *)a3 transform:(id)a4 transformUnitsAreInMeters:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(PVMotionEffectComponent *)self motionEffect];
  [v9 assertDocumentIsLocked];

  v10 = [(PVMotionEffectComponent *)self motionEffect];
  [v10 assertDocumentStatusIsLoadedOrReady];

  if (v8 && self->_cameraIDStatus == 1)
  {
    [(PVMotionEffectTransformComponent *)self addCameraToDocumentOnce_NoLock:a3];
  }

  if (!self->_cameraIDStatus)
  {
    v42 = 0x3FF0000000000000;
    v39 = 0x3FF0000000000000;
    v36 = 0x3FF0000000000000;
    v33 = 0x3FF0000000000000;
    v34 = 0u;
    v35 = 0u;
    v37 = 0u;
    v38 = 0u;
    v40 = 0u;
    v41 = 0u;
    if (v8)
    {
      v31 = 0uLL;
      v32 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      [v8 SIMDDouble4x4];
      if (v5)
      {
        v12.f64[0] = self->_metersToWorldUnitScale;
        v13 = vmulq_n_f64(v31, v12.f64[0]);
        *&v14.f64[0] = *&vmulq_f64(v32, v12);
        v14.f64[1] = v32.f64[1];
        v31 = v13;
        v32 = v14;
      }

      v15 = 0;
      var30[0] = v25;
      var30[1] = v26;
      v16 = v24;
      var30[2] = v27;
      var30[3] = v28;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          *&v16[8 * i] = *(&var30[2 * i] & 0xFFFFFFFFFFFFFFE7 | (8 * (v15 & 3)));
        }

        ++v15;
        v16 += 32;
      }

      while (v15 != 4);
      for (j = 0; j != 128; j += 32)
      {
        v19 = (&v33 + j);
        v20 = *&v24[j + 16];
        *v19 = *&v24[j];
        v19[1] = v20;
      }
    }

    if (OZXSetCameraTransform(*a3, self->_cameraID, &v33))
    {
      v11 = 0;
      goto LABEL_17;
    }

    v22 = [(PVMotionEffectComponent *)self motionEffect];
    [v22 didSetCacheInvalidatingParameter_NoLock:v8 forKey:@"kPVCameraTransformKey"];
  }

  v11 = 1;
LABEL_17:

  return v11;
}

- (id)cameraTransform
{
  v21 = 0;
  v22 = &v21;
  v23 = 0xB012000000;
  v24 = __Block_byref_object_copy__86;
  v25 = __Block_byref_object_dispose__87;
  v26 = &unk_260C3B1FE;
  v36 = 0x3FF0000000000000;
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 11;
  v3 = [(PVMotionEffectComponent *)self motionEffect];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = *"";
  v16[2] = __51__PVMotionEffectTransformComponent_cameraTransform__block_invoke;
  v16[3] = &unk_279AA5148;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v21;
  [v3 runEnsuringDocumentReadyAndLockingDocument:v16];

  if (*(v18 + 6))
  {
    v4 = +[PVMatrix44Double matrix];
  }

  else
  {
    *&v5 = v22[6];
    *&v6 = v22[7];
    *(&v5 + 1) = v22[10];
    *&v7 = v22[14];
    *&v8 = v22[15];
    *(&v7 + 1) = v22[18];
    *(&v6 + 1) = v22[11];
    *(&v8 + 1) = v22[19];
    *&v9 = v22[8];
    *&v10 = v22[9];
    *(&v9 + 1) = v22[12];
    *&v11 = v22[16];
    *&v12 = v22[17];
    *(&v11 + 1) = v22[20];
    *(&v10 + 1) = v22[13];
    *(&v12 + 1) = v22[21];
    v15[0] = v5;
    v15[1] = v7;
    v15[2] = v6;
    v15[3] = v8;
    v15[4] = v9;
    v15[5] = v11;
    v15[6] = v10;
    v15[7] = v12;
    v4 = [PVMatrix44Double matrixWithSIMDDouble4x4:v15];
  }

  v13 = v4;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __51__PVMotionEffectTransformComponent_cameraTransform__block_invoke(uint64_t result, uint64_t *a2)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 36);
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v2 = result;
    result = OZXGetCameraTransform(*a2, *(v2[4] + 32), (*(v2[6] + 8) + 48));
    *(*(v2[5] + 8) + 24) = result;
  }

  return result;
}

- (BOOL)setCameraProjection_NoLock:(const void *)a3 transform:(id)a4
{
  v6 = a4;
  v7 = [(PVMotionEffectComponent *)self motionEffect];
  [v7 assertDocumentIsLocked];

  v8 = [(PVMotionEffectComponent *)self motionEffect];
  [v8 assertDocumentStatusIsLoadedOrReady];

  if (v6 && self->_cameraIDStatus == 1)
  {
    [(PVMotionEffectTransformComponent *)self addCameraToDocumentOnce_NoLock:a3];
  }

  if (!self->_cameraIDStatus)
  {
    v37 = 0x3FF0000000000000;
    v34 = 0x3FF0000000000000;
    v31 = 0x3FF0000000000000;
    v28 = 1.0;
    v29 = 0u;
    v30 = 0u;
    v32 = 0u;
    v33 = 0u;
    v35 = 0u;
    v36 = 0u;
    if (v6)
    {
      [v6 SIMDDouble4x4];
      v10 = 0;
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = v24;
      v26[7] = v25;
      v26[0] = v18;
      v26[1] = v19;
      v11 = v27;
      v26[2] = v20;
      v26[3] = v21;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          *&v11[8 * i] = *(&v26[2 * i] + (v10 & 3));
        }

        ++v10;
        v11 += 32;
      }

      while (v10 != 4);
      for (j = 0; j != 128; j += 32)
      {
        v14 = (&v28 + j);
        v15 = *&v27[j + 16];
        *v14 = *&v27[j];
        v14[1] = v15;
      }
    }

    if (OZXSetCameraProjection(*a3, self->_cameraID, &v28) || OZXGetCameraWorldUnitScaleIgnoringAspect(*a3, self->_cameraID, &self->_metersToWorldUnitScale))
    {
      v9 = 0;
      goto LABEL_16;
    }

    v17 = [(PVMotionEffectComponent *)self motionEffect];
    [v17 didSetCacheInvalidatingParameter_NoLock:v6 forKey:@"kPVCameraProjectionKey"];
  }

  v9 = 1;
LABEL_16:

  return v9;
}

- (id)cameraProjection
{
  v21 = 0;
  v22 = &v21;
  v23 = 0xB012000000;
  v24 = __Block_byref_object_copy__86;
  v25 = __Block_byref_object_dispose__87;
  v26 = &unk_260C3B1FE;
  v36 = 0x3FF0000000000000;
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 11;
  v3 = [(PVMotionEffectComponent *)self motionEffect];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = *"";
  v16[2] = __52__PVMotionEffectTransformComponent_cameraProjection__block_invoke;
  v16[3] = &unk_279AA5148;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v21;
  [v3 runEnsuringDocumentReadyAndLockingDocument:v16];

  if (*(v18 + 6))
  {
    v4 = +[PVMatrix44Double matrix];
  }

  else
  {
    *&v5 = v22[6];
    *&v6 = v22[7];
    *(&v5 + 1) = v22[10];
    *&v7 = v22[14];
    *&v8 = v22[15];
    *(&v7 + 1) = v22[18];
    *(&v6 + 1) = v22[11];
    *(&v8 + 1) = v22[19];
    *&v9 = v22[8];
    *&v10 = v22[9];
    *(&v9 + 1) = v22[12];
    *&v11 = v22[16];
    *&v12 = v22[17];
    *(&v11 + 1) = v22[20];
    *(&v10 + 1) = v22[13];
    *(&v12 + 1) = v22[21];
    v15[0] = v5;
    v15[1] = v7;
    v15[2] = v6;
    v15[3] = v8;
    v15[4] = v9;
    v15[5] = v11;
    v15[6] = v10;
    v15[7] = v12;
    v4 = [PVMatrix44Double matrixWithSIMDDouble4x4:v15];
  }

  v13 = v4;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __52__PVMotionEffectTransformComponent_cameraProjection__block_invoke(uint64_t result, void *a2)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 36);
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v2 = result;
    result = OZXGetCameraProjection(*a2, *(v2[4] + 32), *(v2[6] + 8) + 48);
    *(*(v2[5] + 8) + 24) = result;
  }

  return result;
}

- (void)disableCameraOverride
{
  v3 = [(PVMotionEffectComponent *)self motionEffect];
  [v3 setInspectableProperty:MEMORY[0x277CBEC28] forKey:@"kPVCameraEnabledKey"];

  v4 = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __57__PVMotionEffectTransformComponent_disableCameraOverride__block_invoke;
  v5[3] = &unk_279AA5170;
  v5[4] = self;
  [v4 runEnsuringDocumentReadyAndLockingDocument:v5];
}

- (void)enableCameraOverride:(id)a3 projection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v8 = [(PVMotionEffectComponent *)self motionEffect];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = *"";
  v18[2] = __68__PVMotionEffectTransformComponent_enableCameraOverride_projection___block_invoke;
  v18[3] = &unk_279AA5198;
  v9 = v6;
  v19 = v9;
  v10 = v7;
  v20 = v10;
  v21 = v22;
  [v8 runWithInspectableProperties:v18];

  v11 = [(PVMotionEffectComponent *)self motionEffect];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = *"";
  v14[2] = __68__PVMotionEffectTransformComponent_enableCameraOverride_projection___block_invoke_2;
  v14[3] = &unk_279AA51C0;
  v14[4] = self;
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  v17 = v22;
  [v11 runEnsuringDocumentReadyAndLockingDocument:v14];

  _Block_object_dispose(v22, 8);
}

void __68__PVMotionEffectTransformComponent_enableCameraOverride_projection___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kPVCameraEnabledKey"];
  [v4 setObject:a1[4] forKeyedSubscript:@"kPVCameraTransformKey"];
  [v4 setObject:a1[5] forKeyedSubscript:@"kPVCameraProjectionKey"];
  v3 = [v4 objectForKeyedSubscript:@"kPVTransformUnitsAreInMeters"];
  *(*(a1[6] + 8) + 24) = [v3 BOOLValue];
}

- (BOOL)disableCameraOverride_NoLock:(const void *)a3
{
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  [v5 assertDocumentIsLocked];

  v6 = [(PVMotionEffectComponent *)self motionEffect];
  [v6 assertDocumentStatusIsLoadedOrReady];

  if (self->_cameraIDStatus)
  {
    return 1;
  }

  v8 = OZXEnableCamera(*a3, self->_cameraID, 0);
  result = 0;
  if (!v8)
  {
    v9 = [(PVMotionEffectComponent *)self motionEffect];
    [v9 didSetCacheInvalidatingParameter_NoLock:MEMORY[0x277CBEC28] forKey:@"kPVCameraEnabledKey"];

    return 1;
  }

  return result;
}

- (BOOL)enableCameraOverride_NoLock:(const void *)a3 transform:(id)a4 projection:(id)a5 transformUnitsAreInMeters:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = [(PVMotionEffectComponent *)self motionEffect];
  [v12 assertDocumentIsLocked];

  v13 = [(PVMotionEffectComponent *)self motionEffect];
  [v13 assertDocumentStatusIsLoadedOrReady];

  cameraIDStatus = self->_cameraIDStatus;
  if (cameraIDStatus == 1)
  {
    [(PVMotionEffectTransformComponent *)self addCameraToDocumentOnce_NoLock:a3];
    cameraIDStatus = self->_cameraIDStatus;
  }

  if (!cameraIDStatus)
  {
    if (OZXEnableCamera(*a3, self->_cameraID, 1))
    {
      goto LABEL_7;
    }

    v17 = [(PVMotionEffectComponent *)self motionEffect];
    [v17 didSetCacheInvalidatingParameter_NoLock:MEMORY[0x277CBEC38] forKey:@"kPVCameraEnabledKey"];
  }

  if (![(PVMotionEffectTransformComponent *)self setCameraTransform_NoLock:a3 transform:v10 transformUnitsAreInMeters:v6])
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v15 = [(PVMotionEffectTransformComponent *)self setCameraProjection_NoLock:a3 transform:v11];
LABEL_8:

  return v15;
}

- (BOOL)isCameraOverrideEnabled
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 11;
  v3 = [(PVMotionEffectComponent *)self motionEffect];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __59__PVMotionEffectTransformComponent_isCameraOverrideEnabled__block_invoke;
  v5[3] = &unk_279AA5148;
  v5[4] = v2;
  v5[5] = v6;
  v5[6] = &v8;
  [v3 runEnsuringDocumentReadyAndLockingDocument:v5];

  LOBYTE(v2) = *(v9 + 24);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return v2;
}

uint64_t __59__PVMotionEffectTransformComponent_isCameraOverrideEnabled__block_invoke(uint64_t result, void **a2)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 36);
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v2 = result;
    result = OZXGetIsCameraEnabled(*a2, *(v2[4] + 32), (*(v2[6] + 8) + 24));
    *(*(v2[5] + 8) + 24) = result;
  }

  return result;
}

- (BOOL)transformUnitsAreInMeters
{
  v2 = [(PVMotionEffectComponent *)self motionEffect];
  v3 = [v2 BOOLForKey:@"kPVTransformUnitsAreInMeters"];

  return v3;
}

- (void)setTransformUnitsAreInMeters:(BOOL)a3
{
  v3 = a3;
  v4 = [(PVMotionEffectComponent *)self motionEffect];
  [v4 setBool:v3 forKey:@"kPVTransformUnitsAreInMeters"];
}

- (BOOL)bounds:(CGRect *)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7
{
  if (!a3)
  {
    return 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x5012000000;
  v38 = __Block_byref_object_copy__90;
  v39 = __Block_byref_object_dispose__91;
  v40 = &unk_260C3B1FE;
  v41 = 0;
  v42 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v43 = _Q0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 11;
  if (a5)
  {
    v17 = 1;
  }

  else
  {
    v19 = [(PVMotionEffectComponent *)self motionEffect];
    v20 = [v19 timelineComponent];
    v17 = [v20 isForceRenderAtPosterFrameEnabled];
  }

  v21 = [(PVMotionEffectComponent *)self motionEffect];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = *"";
  v25[2] = __98__PVMotionEffectTransformComponent_bounds_atTime_forcePosterFrame_includeDropShadow_includeMasks___block_invoke;
  v25[3] = &unk_279AA51E8;
  v26 = *&a4->var0;
  var3 = a4->var3;
  v28 = v17;
  v25[4] = self;
  v25[5] = &v31;
  v25[6] = &v35;
  v29 = a6;
  v30 = a7;
  [v21 runEnsuringDocumentReadyAndLockingDocument:v25];

  v22 = *(v32 + 6);
  v18 = v22 == 0;
  if (!v22)
  {
    v23 = *(v36 + 4);
    a3->origin = *(v36 + 3);
    a3->size = v23;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  return v18;
}

uint64_t __98__PVMotionEffectTransformComponent_bounds_atTime_forcePosterFrame_includeDropShadow_includeMasks___block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 164))
  {
    v3 = result;
    v14 = 0uLL;
    v15 = 0;
    v4 = [*(result + 32) motionEffect];
    v5 = [v4 timelineComponent];
    v6 = v5;
    v12 = *(v3 + 56);
    v13 = *(v3 + 72);
    if (v5)
    {
      [v5 timelineTimeFromComponentTime_NoLock:&v12 forcePosterFrame:*(v3 + 80) documentInfo:a2];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    v7 = *(v3 + 32);
    v8 = *(*(v3 + 48) + 8);
    v9 = *(a2 + 160);
    v10 = v14;
    v11 = v15;
    result = [v7 objectBounds_NoLock:v8 + 48 objectID:v9 timelineTime:&v10 includeDropShadow:*(v3 + 81) includeMasks:*(v3 + 82) documentInfo:a2];
    *(*(*(v3 + 40) + 8) + 24) = result;
  }

  return result;
}

- (PVCGPointQuad)cornersAtTime:(SEL)a3 forcePosterFrame:(id *)a4 includeDropShadow:(BOOL)a5 scale:(BOOL)a6 viewSize:(CGPoint)a7 viewOrigin:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  y = a7.y;
  x = a7.x;
  v32 = 0;
  v33 = &v32;
  v34 = 0x7012000000;
  v35 = __Block_byref_object_copy__93;
  v36 = __Block_byref_object_dispose__94;
  v37 = &unk_260C3B1FE;
  v38 = *PVCGPointQuadZero;
  v39 = *&PVCGPointQuadZero[16];
  v40 = *&PVCGPointQuadZero[32];
  v41 = *&PVCGPointQuadZero[48];
  if (a5)
  {
    v18 = 1;
  }

  else
  {
    v19 = [(PVMotionEffectComponent *)self motionEffect];
    v20 = [v19 timelineComponent];
    v18 = [v20 isForceRenderAtPosterFrameEnabled];
  }

  v21 = [(PVMotionEffectComponent *)self motionEffect];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = *"";
  v26[2] = __111__PVMotionEffectTransformComponent_cornersAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke;
  v26[3] = &unk_279AA5238;
  v26[4] = self;
  v26[5] = &v32;
  v27 = *&a4->var0;
  var3 = a4->var3;
  v30 = v18;
  v31 = a6;
  *&v26[6] = x;
  *&v26[7] = y;
  *&v26[8] = width;
  *&v26[9] = height;
  v29 = a9;
  [v21 runEnsuringDocumentReadyAndLockingDocument:v26];

  v22 = v33;
  v23 = v33[4];
  retstr->a = v33[3];
  retstr->b = v23;
  v24 = v22[6];
  retstr->c = v22[5];
  retstr->d = v24;
  _Block_object_dispose(&v32, 8);
  return result;
}

void __111__PVMotionEffectTransformComponent_cornersAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v6 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = v6;
  v10 = v5;
  v7[2] = __111__PVMotionEffectTransformComponent_cornersAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_2;
  v7[3] = &unk_279AA5210;
  v9 = a2;
  v13 = *(a1 + 96);
  v15 = *(a1 + 108);
  v14 = *(a1 + 104);
  [v4 runWithInspectableProperties:v7];
}

void __111__PVMotionEffectTransformComponent_cornersAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = *(a1 + 88);
  v11 = *(a1 + 104);
  if (v4)
  {
    [v4 cornersAtTime_NoLock:v5 time:&v10 forcePosterFrame:*(a1 + 116) includeDropShadow:*(a1 + 117) scale:*(a1 + 112) viewSize:v3 viewOrigin:*(a1 + 56) properties:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = v13;
  v9 = v14;
  v8 = v15;
  v6[3] = v12;
  v6[4] = v7;
  v6[5] = v9;
  v6[6] = v8;
}

- (PVCGPointQuad)cornersAtTime_NoLock:(SEL)a3 time:(const void *)a4 forcePosterFrame:(id *)a5 includeDropShadow:(BOOL)a6 scale:(BOOL)a7 viewSize:(CGPoint)a8 viewOrigin:(CGSize)a9 properties:(int)a10
{
  height = a9.height;
  width = a9.width;
  y = a8.y;
  x = a8.x;
  v18 = a7;
  v19 = a6;
  v24 = a11;
  v25 = [(PVMotionEffectComponent *)self motionEffect];
  [v25 assertDocumentIsLocked];

  v26 = [(PVMotionEffectComponent *)self motionEffect];
  [v26 assertDocumentStatusIsLoadedOrReady];

  v27 = [(PVMotionEffectComponent *)self motionEffect];
  [v27 assertInspectablePropertiesAreLocked];

  LODWORD(v12) = *(a4 + 3);
  LODWORD(v11) = *(a4 + 4);
  v28 = [(PVMotionEffectComponent *)self motionEffect];
  v29 = [v28 origin];

  *retstr = *PVCGPointQuadZero;
  if (!*(a4 + 41))
  {
    v50 = a10;
    v51 = v24;
    v30 = *(a4 + 40);
    v63 = 0;
    v64 = 0.0;
    v31 = [(PVMotionEffectComponent *)self motionEffect];
    v32 = [v31 timelineComponent];
    v33 = v32;
    v61 = *&a5->var0;
    var3 = a5->var3;
    if (v32)
    {
      [v32 timelineTimeFromComponentTime_NoLock:&v61 forcePosterFrame:v19 documentInfo:a4];
    }

    else
    {
      v63 = 0;
      v64 = 0.0;
    }

    v54.a = v63;
    v54.b.x = v64;
    v55 = *&a5->var0;
    v56 = a5->var3;
    [(PVMotionEffectTransformComponent *)self objectCorners_NoLock:v30 timelineTime:&v54 componentTime:&v55 includeDropShadow:v18 includeMasks:1 documentInfo:a4];
    v34 = v58;
    retstr->a = v57;
    retstr->b = v34;
    v35 = v60;
    retstr->c = v59;
    retstr->d = v35;
    b = retstr->b;
    v54.a = retstr->a;
    v54.b = b;
    d = retstr->d;
    v54.c = retstr->c;
    v54.d = d;
    v38 = x;
    d.x = y;
    v24 = v51;
    PVCGPointQuad_scale(&v54, *(&d - 8), &v57);
    v39 = v58;
    retstr->a = v57;
    retstr->b = v39;
    v40 = v60;
    retstr->c = v59;
    retstr->d = v40;
    v41 = retstr->b;
    v54.a = retstr->a;
    v54.b = v41;
    v42 = retstr->d;
    v54.c = retstr->c;
    v54.d = v42;
    v55 = v63;
    v56 = *&v64;
    v52 = *&a5->var0;
    v53 = a5->var3;
    [(PVMotionEffectTransformComponent *)self transformObjectCornersToImage_NoLock:&v54 objectID:v30 timelineTime:&v55 componentTime:&v52 flatten:0 documentInfo:a4 properties:v51];
    v43 = v58;
    retstr->a = v57;
    retstr->b = v43;
    v44 = v60;
    retstr->c = v59;
    retstr->d = v44;
    v45 = retstr->b;
    v54.a = retstr->a;
    v54.b = v45;
    v46 = retstr->d;
    v54.c = retstr->c;
    v54.d = v46;
    pv_transform_PVCGPointQuad_between_coordinate_systems(&v54, v29, v50, &v57, v12, v11, width, height);
    v47 = v58;
    retstr->a = v57;
    retstr->b = v47;
    v48 = v60;
    retstr->c = v59;
    retstr->d = v48;
  }

  return result;
}

- (PVCGPointQuad)objectCorners_NoLock:(SEL)a3 timelineTime:(unsigned int)a4 componentTime:(id *)a5 includeDropShadow:(id *)a6 includeMasks:(BOOL)a7 documentInfo:(BOOL)a8
{
  v10 = a8;
  v11 = a7;
  v13 = *&a4;
  v16 = [(PVMotionEffectComponent *)self motionEffect:*&a4];
  [v16 assertDocumentIsLocked];

  v17 = [(PVMotionEffectComponent *)self motionEffect];
  [v17 assertDocumentStatusIsLoadedOrReady];

  *retstr = *PVCGPointQuadZero;
  v29 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v30 = _Q0;
  v28 = *a5;
  result = [(PVMotionEffectTransformComponent *)self objectBounds_NoLock:&v29 objectID:v13 timelineTime:&v28 includeDropShadow:v11 includeMasks:v10 documentInfo:a9];
  if (!result)
  {
    v24 = v29;
    v25 = v30;
    *&retstr->a.x = v29;
    v26 = vaddq_f64(v24, v25);
    v27 = vextq_s8(v26, v26, 8uLL);
    *&retstr->b.y = v27;
    *&retstr->a.y = v27;
    retstr->c.y = v24.y;
    retstr->d = v24;
  }

  return result;
}

- (PVCGPointQuad)transformObjectCornersToImage_NoLock:(SEL)a3 objectID:(PVCGPointQuad *)a4 timelineTime:(unsigned int)a5 componentTime:(id *)a6 flatten:(id *)a7 documentInfo:(BOOL)a8 properties:(const void *)a9
{
  v11 = a8;
  v14 = *&a5;
  v18 = a10;
  v19 = [(PVMotionEffectComponent *)self motionEffect];
  [v19 assertDocumentIsLocked];

  v20 = [(PVMotionEffectComponent *)self motionEffect];
  [v20 assertDocumentStatusIsLoadedOrReady];

  v21 = [(PVMotionEffectComponent *)self motionEffect];
  [v21 assertInspectablePropertiesAreLocked];

  v52 = *&a6->var0;
  *&v53 = a6->var3;
  v48 = *a7;
  v22 = [(PVMotionEffectTransformComponent *)self objectToImageTransform_NoLock:v14 timelineTime:&v52 componentTime:&v48 flatten:v11 includeTransformAnimation:1 includePlayableAspectScale:1 documentInfo:a9 properties:v18];
  v23 = v22;
  if (v22)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    [v22 SIMDDouble4x4];
    v48.var0 = 0;
    *&v48.var1 = &v48;
    v48.var3 = 0x7012000000;
    v49 = __Block_byref_object_copy__93;
    v50 = __Block_byref_object_dispose__94;
    v51 = &unk_260C3B1FE;
    b = a4->b;
    v47.a = a4->a;
    v47.b = b;
    d = a4->d;
    v47.c = a4->c;
    v47.d = d;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = *"";
    v36 = __141__PVMotionEffectTransformComponent_transformObjectCornersToImage_NoLock_objectID_timelineTime_componentTime_flatten_documentInfo_properties___block_invoke;
    v37 = &unk_279AA5260;
    v40 = v54;
    v41 = v55;
    v38 = v52;
    v39 = v53;
    v44 = v58;
    v45 = v59;
    v42 = v56;
    v43 = v57;
    v46 = &v48;
    v26 = v35;
    v27 = 0;
    do
    {
      v60 = v47;
      point_at_index = PVCGPointQuad_get_point_at_index(&v60, v27);
      (v36)(v26, v27, point_at_index);
      v27 = (v27 + 1);
    }

    while (v27 != 4);

    v29 = *&v48.var1;
    v30 = *(*&v48.var1 + 64);
    retstr->a = *(*&v48.var1 + 48);
    retstr->b = v30;
    v31 = v29[6];
    retstr->c = v29[5];
    retstr->d = v31;
    _Block_object_dispose(&v48, 8);
  }

  else
  {
    v32 = a4->b;
    retstr->a = a4->a;
    retstr->b = v32;
    v33 = a4->d;
    retstr->c = a4->c;
    retstr->d = v33;
  }

  return result;
}

CGFloat *__141__PVMotionEffectTransformComponent_transformObjectCornersToImage_NoLock_objectID_timelineTime_componentTime_flatten_documentInfo_properties___block_invoke(uint64_t a1, int a2, double a3, double a4)
{
  v4 = vmlaq_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 48), a3), *(a1 + 80), a4), 0, *(a1 + 112));
  v5 = vaddq_f64(*(a1 + 128), vmlaq_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), a3), *(a1 + 64), a4), 0, *(a1 + 96)));
  v6 = vaddq_f64(*(a1 + 144), v4);
  v7 = *&v6.i64[1];
  v4.f64[0] = 0.0;
  v8 = vdupq_laneq_s64(v6, 1);
  v9 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v4, v8).i64[0], 0), vnegq_f64(v5), v5);
  if (v7 != 0.0)
  {
    v9 = vdivq_f64(v9, v8);
  }

  y = v9.y;
  return PVCGPointQuad_set_point_at_index((*(*(a1 + 160) + 8) + 48), v9, a2);
}

- (id)transformObjectPointsToImage_NoLock:(id)a3 objectID:(unsigned int)a4 timelineTime:(id *)a5 componentTime:(id *)a6 flatten:(BOOL)a7 documentInfo:(const void *)a8 properties:(id)a9
{
  v10 = a7;
  v13 = *&a4;
  v15 = a3;
  v16 = a9;
  v17 = [(PVMotionEffectComponent *)self motionEffect];
  [v17 assertDocumentIsLocked];

  v18 = [(PVMotionEffectComponent *)self motionEffect];
  [v18 assertDocumentStatusIsLoadedOrReady];

  v19 = [(PVMotionEffectComponent *)self motionEffect];
  [v19 assertInspectablePropertiesAreLocked];

  if ([v15 count])
  {
    v35 = *&a5->var0;
    *&v36 = a5->var3;
    v43 = *&a6->var0;
    var3 = a6->var3;
    v20 = [(PVMotionEffectTransformComponent *)self objectToImageTransform_NoLock:v13 timelineTime:&v35 componentTime:&v43 flatten:v10 includeTransformAnimation:1 includePlayableAspectScale:1 documentInfo:a8 properties:v16];
    v21 = v20;
    if (v20)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      [v20 SIMDDouble4x4];
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = *"";
      v25[2] = __140__PVMotionEffectTransformComponent_transformObjectPointsToImage_NoLock_objectID_timelineTime_componentTime_flatten_documentInfo_properties___block_invoke;
      v25[3] = &unk_279AA5288;
      v30 = v39;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v23 = v22;
      v34 = v23;
      [v15 enumerateObjectsUsingBlock:v25];
    }

    else
    {
      v23 = v15;
    }
  }

  else
  {
    v23 = v15;
  }

  return v23;
}

void __140__PVMotionEffectTransformComponent_transformObjectPointsToImage_NoLock_objectID_timelineTime_componentTime_flatten_documentInfo_properties___block_invoke(uint64_t a1, void *a2)
{
  [a2 CGPointValue];
  v5 = vmlaq_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 48), v3), *(a1 + 80), v4), 0, *(a1 + 112));
  v6 = vaddq_f64(*(a1 + 128), vmlaq_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), v3), *(a1 + 64), v4), 0, *(a1 + 96)));
  v7 = vaddq_f64(*(a1 + 144), v5);
  v8 = *&v7.i64[1];
  v9 = vdupq_laneq_s64(v7, 1);
  v5.f64[0] = 0.0;
  v10 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v5, v9).i64[0], 0), vnegq_f64(v6), v6);
  if (v8 != 0.0)
  {
    v10 = vdivq_f64(v10, v9);
  }

  v11 = *(a1 + 160);
  v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:*&v10];
  [v11 addObject:?];
}

- (int)objectBounds_NoLock:(void *)a3 objectID:(unsigned int)a4 timelineTime:(id *)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7 documentInfo:(const void *)a8
{
  v9 = a7;
  v10 = a6;
  v15 = [(PVMotionEffectComponent *)self motionEffect];
  [v15 assertDocumentIsLocked];

  v16 = [(PVMotionEffectComponent *)self motionEffect];
  [v16 assertDocumentStatusIsLoadedOrReady];

  v17 = 2;
  if (!v10)
  {
    v17 = 0;
  }

  if (v9)
  {
    v18 = v17 | 4;
  }

  else
  {
    v18 = v17;
  }

  v19 = *a8;

  return OZXGetObjectBounds(v19, a5, a4, v18, a3);
}

- (id)objectToImageTransform_NoLock:(unsigned int)a3 timelineTime:(id *)a4 componentTime:(id *)a5 flatten:(BOOL)a6 includeTransformAnimation:(BOOL)a7 includePlayableAspectScale:(BOOL)a8 documentInfo:(const void *)a9 properties:(id)a10
{
  v10 = a8;
  v11 = a7;
  v17 = a10;
  v18 = [(PVMotionEffectComponent *)self motionEffect];
  [v18 assertDocumentIsLocked];

  v19 = [(PVMotionEffectComponent *)self motionEffect];
  [v19 assertDocumentStatusIsLoadedOrReady];

  v20 = [(PVMotionEffectComponent *)self motionEffect];
  [v20 assertInspectablePropertiesAreLocked];

  v70 = *a5;
  [(PVMotionEffectTransformComponent *)self applyTransforms_NoLock:a9 dirtyProperties:v17 defaultProperties:0 componentTime:&v70];
  v78 = 0x3FF0000000000000;
  v75 = 0x3FF0000000000000;
  v72 = 0x3FF0000000000000;
  v70.var0 = 0x3FF0000000000000;
  *&v70.var1 = 0u;
  v71 = 0u;
  v73 = 0u;
  v74 = 0u;
  v76 = 0u;
  v77 = 0u;
  if (OZXGetObjectTransform(*a9, a4, a6, a3, &v70) || (*&v69[40] = 0x3FF0000000000000, *v69 = 0x3FF0000000000000, *&v67[40] = 0x3FF0000000000000, *v67 = 0x3FF0000000000000, memset(&v67[8], 0, 32), *&v67[48] = 0u, v68 = 0u, memset(&v69[8], 0, 32), OZXGetWorldToFilmTransform(*a9, a4, v67)))
  {
    v21 = 0;
    goto LABEL_4;
  }

  v23 = PCMatrix44Tmpl<double>::leftMult(&v70, v67);
  LODWORD(v23) = *(a9 + 3);
  LODWORD(v24) = *(a9 + 4);
  v25 = *&v23;
  v26 = v24;
  if (v11)
  {
    v27 = [v17 objectForKeyedSubscript:@"kPVTransformAnimationKey"];
    *v67 = *&a5->var0;
    *&v67[16] = a5->var3;
    if ([PVTransformAnimation getTransformInfoFromAnimation:v27 atTime:v67 renderSize:14 contentMode:1 invertY:v65 outInfo:v25, v26])
    {
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      *v67 = v65[0];
      *&v67[16] = v65[1];
      *&v67[32] = v65[2];
      *&v67[48] = v66;
      CGAffineTransformFromPointWithPVAnimInfo(v67, *MEMORY[0x277CBF348], &v62);
      v28 = 0;
      v54 = v62;
      v55 = 0u;
      v56 = v63;
      v57 = 0u;
      v58 = 0u;
      v59 = xmmword_2603426F0;
      v29 = v67;
      v60 = v64;
      v61 = xmmword_260342700;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          *&v29[8 * i] = *(&v54 + 4 * i + (v28 & 3));
        }

        ++v28;
        v29 += 32;
      }

      while (v28 != 4);
      PCMatrix44Tmpl<double>::leftMult(&v70, v67);
    }
  }

  if (v10)
  {
    v31 = [(PVMotionEffectComponent *)self motionEffect];
    v32 = [v31 hasPlayableAspectOverride_NoLock];

    if (v32)
    {
      v33 = [(PVMotionEffectComponent *)self motionEffect];
      [v33 playableAspectRatio_NoLock];
      v35 = v34;

      v36 = [(PVMotionEffectComponent *)self motionEffect];
      v37 = [v36 playableContentMode_NoLock];

      v38 = v35 * v26;
      if (v37 > 2)
      {
        v39 = v25;
        if (v37 != 3 && v37 != 13)
        {
          v39 = v35;
          if (v37 == 14)
          {
            v39 = v35 * v26;
          }
        }

        goto LABEL_28;
      }

      if (!v37)
      {
        goto LABEL_29;
      }

      if (v37 == 1)
      {
        if (v25 <= v26)
        {
          v40 = v26;
          if (v38 < v25)
          {
            v40 = v25 / v35;
          }
        }

        else
        {
          v40 = v25 / v35;
          if (v25 / v35 < v26)
          {
            v40 = v26;
          }
        }
      }

      else
      {
        v39 = v35;
        if (v37 != 2)
        {
LABEL_28:
          v25 = v39;
LABEL_29:
          v41 = v25 / v38;
          if (fabs(v41 + -1.0) >= 0.0001)
          {
            v42 = 0;
            *&v43 = 0;
            *(&v43 + 1) = v41;
            v54 = *&v41;
            v55 = 0u;
            v56 = v43;
            v57 = 0u;
            v58 = 0u;
            v59 = xmmword_2603426F0;
            v60 = 0u;
            v61 = xmmword_260342700;
            v44 = v67;
            do
            {
              for (j = 0; j != 4; ++j)
              {
                *&v44[8 * j] = *(&v54 + 4 * j + (v42 & 3));
              }

              ++v42;
              v44 += 32;
            }

            while (v42 != 4);
            PCMatrix44Tmpl<double>::leftMult(&v70, v67);
          }

          goto LABEL_35;
        }

        v40 = v25 / v35;
        if (v25 / v35 > v26)
        {
          v40 = v26;
        }
      }

      v39 = v35 * v40;
      goto LABEL_28;
    }
  }

LABEL_35:
  *&v47 = *&v70.var1;
  *&v46 = v70.var0;
  *(&v46 + 1) = *(&v71 + 1);
  *&v49 = *(&v74 + 1);
  *&v48 = v74;
  *(&v48 + 1) = *(&v76 + 1);
  *(&v47 + 1) = v72;
  *(&v49 + 1) = v77;
  *&v50 = v70.var3;
  *&v51 = v71;
  *(&v50 + 1) = v73;
  *&v52 = v75;
  *&v53 = v76;
  *(&v52 + 1) = *(&v77 + 1);
  *(&v51 + 1) = *(&v73 + 1);
  *(&v53 + 1) = v78;
  *v67 = v46;
  *&v67[16] = v48;
  *&v67[32] = v47;
  *&v67[48] = v49;
  v68 = v50;
  *v69 = v52;
  *&v69[16] = v51;
  *&v69[32] = v53;
  v21 = [PVMatrix44Double matrixWithSIMDDouble4x4:v67, v54, v55, v56, v57, v58, v59, v60, v61];
LABEL_4:

  return v21;
}

- (id)additionalTopLevelScaleInDictionary:(id)a3 orInDefaultDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVTopLevelAdditionalScaleKey" inDictionary:v6 orInDefaultDictionary:v7];
  if (v8 && [(PVMotionEffectTransformComponent *)self isForceRenderAtPosterFrameEnabledInDictionary:v6 orInDefaultDictionary:v7])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isForceRenderAtPosterFrameEnabledInDictionary:(id)a3 orInDefaultDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PVMotionEffectComponent *)self motionEffect];
  v9 = [v8 timelineComponent];
  if ([v9 isForceRenderAtPosterFrameEnabled:v6])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(PVMotionEffectComponent *)self motionEffect];
    v12 = [v11 timelineComponent];
    v10 = [v12 isForceRenderAtPosterFrameEnabled:v7];
  }

  return v10;
}

- (id)applyAdditionalTopLevelScale:(CGPoint)a3 aroundPoint:(CGPoint)a4 toTransform:(id)a5
{
  y = a4.y;
  x = a4.x;
  v5 = a3.y;
  v6 = a3.x;
  v7 = a5;
  if ((atomic_load_explicit(_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    [PVMotionEffectTransformComponent applyAdditionalTopLevelScale:aroundPoint:toTransform:];
  }

  if (*&xmmword_280C5CBF0 == v6 && *(&xmmword_280C5CBF0 + 1) == v5)
  {
    v9 = v7;
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (v7)
    {
      [v7 SIMDDouble4x4];
    }

    else
    {
      v10 = *(MEMORY[0x277D860A0] + 80);
      v48 = *(MEMORY[0x277D860A0] + 64);
      v49 = v10;
      v11 = *(MEMORY[0x277D860A0] + 112);
      v50 = *(MEMORY[0x277D860A0] + 96);
      v51 = v11;
      v12 = *(MEMORY[0x277D860A0] + 16);
      v44 = *MEMORY[0x277D860A0];
      v45 = v12;
      v13 = *(MEMORY[0x277D860A0] + 48);
      v46 = *(MEMORY[0x277D860A0] + 32);
      v47 = v13;
    }

    v20 = v51;
    v21 = v50;
    v14.f64[0] = 0.0;
    v14.f64[1] = v51.f64[1];
    v50 = 0uLL;
    v51 = v14;
    *&v15 = x;
    *(&v15 + 1) = y;
    v40 = v48;
    v41 = v49;
    v42 = 0uLL;
    v43 = v14;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    v26 = v15;
    v27 = 0u;
    pv_simd_matrix_transform_vector(&v36, &v26, &v34);
    v23 = v35;
    v25 = v34;
    *&v16.f64[0] = *&vnegq_f64(v35);
    v16.f64[1] = v51.f64[1];
    v50 = vnegq_f64(v34);
    v51 = v16;
    v30 = v48;
    v31 = v49;
    v32 = v50;
    v33 = v16;
    v26 = v44;
    v27 = v45;
    v28 = v46;
    v29 = v47;
    pv_simd_matrix_scale(&v26, &v36, *&v6, v5, COERCE_UNSIGNED_INT64(1.0));
    v48 = v40;
    v49 = v41;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v47 = v39;
    *&v17.f64[0] = *&vaddq_f64(vaddq_f64(v20, v23), v43);
    v17.f64[1] = v43.f64[1];
    v50 = vaddq_f64(vaddq_f64(v21, v25), v42);
    v51 = v17;
    v42 = v50;
    v43 = v17;
    v9 = [PVMatrix44Double matrixWithSIMDDouble4x4:&v36];
  }

  v18 = v9;

  return v18;
}

- (void)updateIsFixedSourceDropShadow_NoLock:(const void *)a3 properties:(id)a4
{
  v6 = a4;
  v7 = [(PVMotionEffectComponent *)self motionEffect];
  [v7 assertDocumentIsLocked];

  v8 = [(PVMotionEffectComponent *)self motionEffect];
  [v8 assertDocumentStatusIsLoadedOrReady];

  v9 = [(PVMotionEffectComponent *)self motionEffect];
  [v9 assertInspectablePropertiesAreLocked];

  v10 = [v6 objectForKeyedSubscript:@"kPVTopLevelTransformKey"];
  if (!v10)
  {
    v10 = +[PVMatrix44Double matrix];
  }

  v35 = *MEMORY[0x277CC08F0];
  v36 = *(MEMORY[0x277CC08F0] + 16);
  v11 = *(a3 + 22);
  v12 = *(a3 + 23);
  v33 = v35;
  v34 = v36;
  [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v33 forcePosterFrame:1 includeDropShadow:1 scale:1 viewSize:v6 viewOrigin:1.0 properties:1.0, v11, v12];
  pv_bounding_CGRect(&v28);
  width = v37.size.width;
  height = v37.size.height;
  if (!CGRectIsEmpty(v37))
  {
    v33 = v35;
    v34 = v36;
    [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v33 forcePosterFrame:1 includeDropShadow:0 scale:1 viewSize:v6 viewOrigin:1.0 properties:1.0, v11, v12];
    pv_bounding_CGRect(&v28);
    v16 = v15;
    v18 = v17;
    v28.a = xmmword_260342760;
    v28.b = 0u;
    v28.c = xmmword_260342770;
    v28.d = 0u;
    v29 = 0u;
    v30 = xmmword_2603426F0;
    v31 = 0u;
    v32 = xmmword_260342700;
    v33 = v35;
    v34 = v36;
    v19 = [(PVMotionEffectTransformComponent *)self addToTopLevelTransform_NoLock:a3 transform:&v28 atTime:&v33 forcePosterFrame:1 restrictToBounds:0 viewSize:1 viewOrigin:v11 properties:v12, v6];
    v33 = v35;
    v34 = v36;
    [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v33 forcePosterFrame:1 includeDropShadow:1 scale:1 viewSize:v6 viewOrigin:1.0 properties:1.0, v11, v12];
    pv_bounding_CGRect(&v28);
    v21 = v20;
    v23 = v22;
    v33 = v35;
    v34 = v36;
    [(PVMotionEffectTransformComponent *)self cornersAtTime_NoLock:a3 time:&v33 forcePosterFrame:1 includeDropShadow:0 scale:1 viewSize:v6 viewOrigin:1.0 properties:1.0, v11, v12];
    pv_bounding_CGRect(&v28);
    v24 = vabdd_f64(width, v16);
    v25 = vabdd_f64(height, v18);
    self->_isFixedSourceDropShadow = fmax(vabdd_f64(vabdd_f64(v21, v26) * 0.5, v24), vabdd_f64(vabdd_f64(v23, v27) * 0.5, v25)) > 1.0;
    self->_normalizedFixedShadowSize.width = v24 / v11;
    self->_normalizedFixedShadowSize.height = v25 / v12;
    [(PVMotionEffectTransformComponent *)self applyTopLevelGroupTransform_NoLock:a3 transform:v10];
    [v6 setObject:v10 forKeyedSubscript:@"kPVTopLevelTransformKey"];
  }
}

- (void)motionEffect:(id)a3 didBecomeReady:(const void *)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = PVMotionEffectTransformComponent;
  [(PVMotionEffectComponent *)&v12 motionEffect:v8 didBecomeReady:a4 properties:v9];
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  [(PVMotionEffectTransformComponent *)self applyTransforms_NoLock:a4 dirtyProperties:v9 defaultProperties:0 componentTime:&v10];
}

- (void)motionEffect:(id)a3 willRender:(const void *)a4 properties:(id)a5 time:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v13 = *a6;
  v12.receiver = self;
  v12.super_class = PVMotionEffectTransformComponent;
  [(PVMotionEffectComponent *)&v12 motionEffect:v10 willRender:a4 properties:v11 time:&v13];
  v13 = *a6;
  [(PVMotionEffectTransformComponent *)self applyTransforms_NoLock:a4 dirtyProperties:v11 defaultProperties:0 componentTime:&v13];
}

- (void)motionEffectDidUnload:(id)a3
{
  v4.receiver = self;
  v4.super_class = PVMotionEffectTransformComponent;
  [(PVMotionEffectComponent *)&v4 motionEffectDidUnload:a3];
  self->_top3DGroupID = 0;
  self->_top3DGroupIDStatus = 1;
  self->_cameraID = 0;
  self->_cameraIDStatus = 1;
  self->_metersToWorldUnitScale = 1.0;
  self->_isFixedSourceDropShadow = 0;
  self->_normalizedFixedShadowSize = *MEMORY[0x277CBF3A8];
}

- (BOOL)motionEffect:(id)a3 propertiesDisableCache:(id)a4 time:(id *)a5 forcePosterFrame:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v16 = *a5;
  v15.receiver = self;
  v15.super_class = PVMotionEffectTransformComponent;
  if (-[PVMotionEffectComponent motionEffect:propertiesDisableCache:time:forcePosterFrame:](&v15, sel_motionEffect_propertiesDisableCache_time_forcePosterFrame_, a3, v10, &v16, v6) || ([v10 objectForKeyedSubscript:@"kPVTopLevelAdditionalScaleKey"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = 1;
  }

  else
  {
    v14 = [v10 objectForKeyedSubscript:@"kPVTransformAnimationKey"];
    v16 = *a5;
    v12 = [PVTransformAnimation getTransformInfoFromAnimation:v14 atTime:&v16 outInfo:0];
  }

  return v12;
}

- (id)motionEffectPropertyKeysThatInvalidateCachedRender:(id)a3
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PVMotionEffectTransformComponent;
  v3 = [(PVMotionEffectComponent *)&v10 motionEffectPropertyKeysThatInvalidateCachedRender:a3];
  v4 = MEMORY[0x277CBEB58];
  v11[0] = @"kPVTopLevelTransformKey";
  v11[1] = @"kPVTransformKey";
  v11[2] = @"kPVCameraProjectionKey";
  v11[3] = @"kPVCameraTransformKey";
  v11[4] = @"kPVCameraEnabledKey";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  v6 = [v4 setWithArray:v5];

  v7 = [v3 anyObject];
  LOBYTE(v5) = v7 == 0;

  if ((v5 & 1) == 0)
  {
    v8 = [v3 allObjects];
    [v6 addObjectsFromArray:v8];
  }

  return v6;
}

- (BOOL)motionEffect:(id)a3 shouldInvalidateCachedRenderForProperty:(id)a4 oldValue:(id)a5 newValue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PVMotionEffectTransformComponent;
  if (![(PVMotionEffectComponent *)&v17 motionEffect:v10 shouldInvalidateCachedRenderForProperty:v11 oldValue:v12 newValue:v13])
  {
    if (![v11 isEqualToString:@"kPVTopLevelTransformKey"])
    {
      if ([v11 isEqualToString:@"kPVCameraEnabledKey"])
      {
        v15 = PVNumbersAreEqualAsBooleans(v12, v13);
LABEL_10:
        v14 = v15 ^ 1;
        goto LABEL_11;
      }

      if (([v11 isEqualToString:@"kPVTransformKey"] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"kPVCameraProjectionKey") & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", @"kPVCameraTransformKey"))
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    v15 = [v12 isEqual:v13];
    goto LABEL_10;
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (void)applyAdditionalTopLevelScale:aroundPoint:toTransform:.cold.1()
{
  if (__cxa_guard_acquire(_MergedGlobals_1))
  {
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_280C5CBF0 = _Q0;

    __cxa_guard_release(_MergedGlobals_1);
  }
}

@end