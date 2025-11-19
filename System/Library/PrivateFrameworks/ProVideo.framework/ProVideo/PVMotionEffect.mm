@interface PVMotionEffect
+ (BOOL)replacedMappedEffectWithNewPath:(id)a3;
+ (id)_bundleLibPaths;
+ (id)_effectPathFromID:(id)a3;
+ (id)_userLibPaths;
+ (id)effectMap;
+ (id)motionComponentClasses;
+ (id)motionEffectPropertyKeyToPublishedParameterNameMap;
+ (id)newEffectWithData:(id)a3;
+ (id)newEffectWithURL:(id)a3;
+ (id)publishedParameterNameToMotionEffectPropertyKeyMap;
+ (void)extractMetadataFromContentsOfFile:(id)a3 toCacheEntry:(id)a4;
+ (void)handleApplicationDidReceiveMemoryWarning;
+ (void)initializeMotion;
+ (void)initializeMotionInternal;
+ (void)mapTemplatesInDirectory:(id)a3 doingRescan:(BOOL)a4 origCache:(id)a5 newCache:(id)a6;
+ (void)registerEffects;
+ (void)registerNoneEffectForType:(id)a3 effectID:(id)a4 origCache:(id)a5 newCache:(id)a6;
+ (void)registerTemplateInDirectory:(id)a3 relPath:(id)a4 effectID:(id)a5 doingRescan:(BOOL)a6 origCache:(id)a7 newCache:(id)a8;
+ (void)scanTemplatesInDirectory:(id)a3 doingRescan:(BOOL)a4 replaceMappedEffectPath:(BOOL)a5 origCache:(id)a6 newCache:(id)a7;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopTimeOverride;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineLastFrame;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transcriptionDuration;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)a3;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)a3;
- (BOOL)bounds:(CGRect *)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7;
- (BOOL)didCacheInvalidatingParameterChange_NoLock:(id)a3 key:(id)a4;
- (BOOL)didSetCacheInvalidatingParameter_NoLock:(id)a3 forKey:(id)a4;
- (BOOL)hasAllNecessaryResources;
- (BOOL)hasBuiltInEnvironment;
- (BOOL)hasPlayableAspectOverride_NoLock;
- (BOOL)hitTest:(CGPoint)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 scale:(CGPoint)a6 adjustForMinimumSize:(BOOL)a7 minimumSize:(double)a8 sizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11;
- (BOOL)isEphemeralProperty:(id)a3;
- (BOOL)isLandscape:(id)a3;
- (BOOL)isRenderCachingDisabled_NoLock:(id *)a3;
- (BOOL)isSketch;
- (BOOL)isTemporalProperty:(id)a3;
- (BOOL)isVisibleAtTime_NoLock:(id *)a3 timedProperties:(id)a4 defaultProperties:(id)a5;
- (BOOL)loadResources;
- (BOOL)loadResources_NoLock;
- (BOOL)parameterInvalidatesCache_NoLock:(id)a3;
- (BOOL)resourcesAreReady;
- (BOOL)supportsExtendedRangeInputs;
- (BOOL)supportsParam:(id)a3;
- (BOOL)transcriptionHitTest:(CGPoint)a3 time:(id *)a4;
- (CGPath)createPathsForHitTestingAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 scale:(CGPoint)a5 adjustForMinimumSize:(BOOL)a6 minimumSize:(double)a7 sizeThreshold:(double)a8 viewSize:(CGSize)a9 viewOrigin:(int)a10 outExpandedPath:(const CGPath *)a11;
- (CGPoint)convertPointToView:(id *)a3 atTime:(BOOL)a4 forcePosterFrame:(BOOL)a5 includeTransformAnimation:(BOOL)a6 includePlayableAspectScale:(CGSize)a7 viewSize:(int)a8 viewOrigin:;
- (CGRect)outputROI;
- (CGRect)outputROI_NoLock:(const void *)a3 scale:(double)a4;
- (CGSize)documentSize;
- (CGSize)outputSize;
- (HGRect)makeCropRectForDOD:(HGRect)a3 renderRect:(CGRect)a4 renderScale:(float)a5;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PVCGPointQuad)cornersAtTime:(SEL)a3 forcePosterFrame:(id *)a4 includeDropShadow:(BOOL)a5 scale:(BOOL)a6 viewSize:(CGPoint)a7 viewOrigin:(CGSize)a8;
- (PVCGPointQuad)textCornersAtTime:(SEL)a3 index:(id *)a4 forcePosterFrame:(unint64_t)a5 includeDropShadow:(BOOL)a6 scale:(BOOL)a7 viewSize:(CGPoint)a8 viewOrigin:(CGSize)a9;
- (PVMotionEffect)initWithContentID:(id)a3 andDictionary:(id)a4;
- (PVMotionEffect)initWithEffectID:(id)a3;
- (double)playableAspectRatio_NoLock;
- (double)topLevelOpacity;
- (id)addToTopLevelTransform:(_OWORD *)a3 atTime:(__int128 *)a4 forcePosterFrame:restrictToBounds:viewSize:viewOrigin:;
- (id)debugDisplayName;
- (id)effectParameters;
- (id)ephemeralProperties;
- (id)hitAreaPointsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 scale:(CGPoint)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8;
- (id)objectHitTest:(CGPoint)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 scale:(CGPoint)a6 adjustForMinimumSize:(BOOL)a7 minimumSize:(double)a8 sizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11;
- (id)projectPath;
- (id)projectURL;
- (id)publishedParam_NoLock:(const void *)a3 forKey:(id)a4 atTime:(id *)a5 includeHidden:(BOOL)a6;
- (id)publishedParams_NoLock:(const void *)a3;
- (id)scaleToFit:(CGRect)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7 restrictToBounds:(BOOL)a8;
- (id)setPositionInView:(CGPoint)a3 atTime:(id *)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6 restrictToBounds:(BOOL)a7;
- (id)temporalProperties;
- (id)textEditingBounds:(id *)a3;
- (id)textEditingBoundsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 useParagraphBounds:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7;
- (id)textTransformsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8;
- (id)textTransformsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7;
- (id)textTransformsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6;
- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8;
- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7;
- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6;
- (int)getOSFAOption:(id)a3;
- (int)playableContentMode_NoLock;
- (int)stillImageInverseToneMapOperator:(id)a3;
- (int8x16_t)convertPointFromView:(uint64_t)a1@<X0> atTime:(__int128 *)a2@<X2> viewSize:(__n128 *)a3@<X8> viewOrigin:(__n128)a4@<Q1>;
- (int8x16_t)getScale;
- (uint64_t)convertPointToView:(__int128 *)a3 withEffectToViewTransform:(_OWORD *)a4 viewSize:;
- (void)_commonInitWithProjectPathOverride:(id)a3;
- (void)_configureComponents;
- (void)_documentDidUnload_NoLock;
- (void)adjustCamera:(id)a3;
- (void)adjustCutawayBorder:(id)a3;
- (void)adjustCutawayFadeAnimation:(id)a3;
- (void)adjustCutawayInputs:(void *)a3 splitCropRectA:(id)a4 splitCropRectB:(id)a5 pipRect:(id)a6 pipScaleFactor:(id)a7 renderScale:(float)a8 pipNeedsCrop:(BOOL)a9 isHDRRender:(BOOL)a10 workingColorSpace:(CGColorSpace *)a11;
- (void)adjustKenBurnsAnimation:(id)a3;
- (void)adjustPosition:(id)a3;
- (void)adjustTransitionInputs:(void *)a3 renderScale:(float)a4 renderer:(const void *)a5 inputANeedsBackground:(BOOL)a6 inputBNeedsBackground:(BOOL)a7 slideCropRectA:(id)a8 slideCropRectB:(id)a9;
- (void)applyARData:(id)a3 time:(id *)a4 renderParams:(_OZXRenderParams *)a5;
- (void)applyInspectableProperties;
- (void)applyInspectableProperties_NoLock;
- (void)buildDropZoneIdMap_NoLock;
- (void)dealloc;
- (void)deleteTemporalInspectableProperties;
- (void)disableBackgroundMovie:(BOOL)a3;
- (void)loadDocument_NoLock;
- (void)loadEffectInternal_NoLock;
- (void)releaseResources;
- (void)runEnsuringDocumentReadyAndLockingDocument:(id)a3;
- (void)runEnsuringDocumentReady_NoLock:(id)a3;
- (void)runWithDocument_NoLock:(id)a3;
- (void)setEffectOutputAspectWithProperties_NoLock:(id)a3 allProperties:(id)a4;
- (void)setEffectOutputAspect_NoLock:(double)a3 playableAspect:(double)a4 playableContentMode:(int)a5;
- (void)setEffectParameters:(id)a3;
- (void)setIsFrontFacingCamera:(BOOL)a3;
- (void)setLoopTimeOverride:(id *)a3;
- (void)setMaskPoints:(id)a3;
- (void)setNodeIDToCache:(unsigned int)a3;
- (void)setQuaternion:(double)a3 :(double)a4 :(double)a5 :(double)a6;
- (void)setRollRadians:(double)a3;
- (void)setScale:(PVMotionEffect *)self;
- (void)setSketchStrokes:(id)a3;
- (void)setTopLevelOpacity:(double)a3;
- (void)setupPublishedParameters:(id)a3;
- (void)setupTransitionParameters:(id)a3;
- (void)updateInspectableProperties;
- (void)updateInspectableProperties:(id)a3;
- (void)updateInspectableProperties_NoLock:(id)a3 componentTime:(id *)a4;
- (void)updateSketchAnimation:(id)a3 defaultProperties:(id)a4 time:(id *)a5;
@end

@implementation PVMotionEffect

- (id)textEditingBoundsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 useParagraphBounds:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7
{
  textComponent = self->_textComponent;
  v10 = *a3;
  v8 = [(PVMotionEffectTextComponent *)textComponent textEditingBoundsAtTime:&v10 forcePosterFrame:a4 useParagraphBounds:a5 includeDropShadow:a6 includeMasks:a7];

  return v8;
}

- (id)textEditingBounds:(id *)a3
{
  textComponent = self->_textComponent;
  v6 = *a3;
  v4 = [(PVMotionEffectTextComponent *)textComponent textEditingBounds:&v6];

  return v4;
}

- (id)textTransformsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6
{
  textComponent = self->_textComponent;
  v9 = *a3;
  v7 = [(PVMotionEffectTextComponent *)textComponent textTransformsAtTime:&v9 forcePosterFrame:a4 viewSize:*&a6 viewOrigin:a5.width, a5.height];

  return v7;
}

- (id)textTransformsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7
{
  textComponent = self->_textComponent;
  v10 = *a3;
  v8 = [(PVMotionEffectTextComponent *)textComponent textTransformsAtTime:&v10 forcePosterFrame:a4 includeTransformAnimation:a5 viewSize:*&a7 viewOrigin:a6.width, a6.height];

  return v8;
}

- (id)textTransformsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8
{
  textComponent = self->_textComponent;
  v11 = *a3;
  v9 = [(PVMotionEffectTextComponent *)textComponent textTransformsAtTime:&v11 forcePosterFrame:a4 includeTransformAnimation:a5 includePlayableAspectScale:a6 viewSize:*&a8 viewOrigin:a7.width, a7.height];

  return v9;
}

- (PVCGPointQuad)textCornersAtTime:(SEL)a3 index:(id *)a4 forcePosterFrame:(unint64_t)a5 includeDropShadow:(BOOL)a6 scale:(BOOL)a7 viewSize:(CGPoint)a8 viewOrigin:(CGSize)a9
{
  result = self->_textComponent;
  v11 = *a4;
  if (result)
  {
    return [(PVCGPointQuad *)result textCornersAtTime:&v11 index:a5 forcePosterFrame:a6 includeDropShadow:a7 scale:*&a10 viewSize:a8.x viewOrigin:a8.y, a9.width, a9.height];
  }

  retstr->c = 0u;
  retstr->d = 0u;
  retstr->a = 0u;
  retstr->b = 0u;
  return result;
}

- (BOOL)transcriptionHitTest:(CGPoint)a3 time:(id *)a4
{
  transcriptionComponent = self->_transcriptionComponent;
  v6 = *a4;
  return [(PVMotionEffectTranscriptionComponent *)transcriptionComponent transcriptionHitTest:&v6 time:a3.x, a3.y];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transcriptionDuration
{
  result = self->_transcriptionComponent;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result transcriptionDuration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (PVCGPointQuad)cornersAtTime:(SEL)a3 forcePosterFrame:(id *)a4 includeDropShadow:(BOOL)a5 scale:(BOOL)a6 viewSize:(CGPoint)a7 viewOrigin:(CGSize)a8
{
  result = self->_transformComponent;
  v10 = *a4;
  if (result)
  {
    return [(PVCGPointQuad *)result cornersAtTime:&v10 forcePosterFrame:a5 includeDropShadow:a6 scale:*&a9 viewSize:a7.x viewOrigin:a7.y, a8.width, a8.height];
  }

  retstr->c = 0u;
  retstr->d = 0u;
  retstr->a = 0u;
  retstr->b = 0u;
  return result;
}

- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6
{
  transformComponent = self->_transformComponent;
  v9 = *a3;
  v7 = [(PVMotionEffectTransformComponent *)transformComponent transformAtTime:&v9 forcePosterFrame:a4 viewSize:*&a6 viewOrigin:a5.width, a5.height];

  return v7;
}

- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7
{
  transformComponent = self->_transformComponent;
  v10 = *a3;
  v8 = [(PVMotionEffectTransformComponent *)transformComponent transformAtTime:&v10 forcePosterFrame:a4 includeTransformAnimation:a5 viewSize:*&a7 viewOrigin:a6.width, a6.height];

  return v8;
}

- (id)transformAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8
{
  transformComponent = self->_transformComponent;
  v11 = *a3;
  v9 = [(PVMotionEffectTransformComponent *)transformComponent transformAtTime:&v11 forcePosterFrame:a4 includeTransformAnimation:a5 includePlayableAspectScale:a6 viewSize:*&a8 viewOrigin:a7.width, a7.height];

  return v9;
}

- (id)addToTopLevelTransform:(_OWORD *)a3 atTime:(__int128 *)a4 forcePosterFrame:restrictToBounds:viewSize:viewOrigin:
{
  v4 = *(a1 + 280);
  v5 = a3[5];
  v13[4] = a3[4];
  v13[5] = v5;
  v6 = a3[7];
  v13[6] = a3[6];
  v13[7] = v6;
  v7 = a3[1];
  v13[0] = *a3;
  v13[1] = v7;
  v8 = a3[3];
  v13[2] = a3[2];
  v13[3] = v8;
  v11 = *a4;
  v12 = *(a4 + 2);
  v9 = [v4 addToTopLevelTransform:v13 atTime:&v11 forcePosterFrame:? restrictToBounds:? viewSize:? viewOrigin:?];

  return v9;
}

- (CGPoint)convertPointToView:(id *)a3 atTime:(BOOL)a4 forcePosterFrame:(BOOL)a5 includeTransformAnimation:(BOOL)a6 includePlayableAspectScale:(CGSize)a7 viewSize:(int)a8 viewOrigin:
{
  v8 = *&a3->var0;
  transformComponent = self->_transformComponent;
  v10 = *a4;
  v13[1] = *&a3->var3;
  v14 = v10;
  v15 = *(a4 + 16);
  v13[0] = v8;
  [(PVMotionEffectTransformComponent *)transformComponent convertPointToView:v13 atTime:&v14 forcePosterFrame:a5 includeTransformAnimation:a6 includePlayableAspectScale:*&a8 viewSize:a7.width viewOrigin:a7.height];
  result.y = v12;
  result.x = v11;
  return result;
}

- (uint64_t)convertPointToView:(__int128 *)a3 withEffectToViewTransform:(_OWORD *)a4 viewSize:
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a1 + 280);
  v7 = a4[5];
  v13[4] = a4[4];
  v13[5] = v7;
  v8 = a4[7];
  v13[6] = a4[6];
  v13[7] = v8;
  v9 = a4[1];
  v13[0] = *a4;
  v13[1] = v9;
  v10 = a4[3];
  v13[2] = a4[2];
  v13[3] = v10;
  v12[0] = v4;
  v12[1] = v5;
  return [v6 convertPointToView:v12 withEffectToViewTransform:v13 viewSize:?];
}

- (int8x16_t)convertPointFromView:(uint64_t)a1@<X0> atTime:(__int128 *)a2@<X2> viewSize:(__n128 *)a3@<X8> viewOrigin:(__n128)a4@<Q1>
{
  v5 = *(a1 + 280);
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v5)
  {
    [v5 convertPointFromView:&v10 atTime:? viewSize:? viewOrigin:?];
    result = v8;
    a4 = v9;
    v7 = vextq_s8(result, result, 8uLL).u64[0];
  }

  else
  {
    result.i64[0] = 0;
    v7 = 0;
    a4.n128_u64[0] = 0;
  }

  result.i64[1] = v7;
  *a3 = result;
  a3[1] = a4;
  return result;
}

- (id)setPositionInView:(CGPoint)a3 atTime:(id *)a4 viewSize:(CGSize)a5 viewOrigin:(int)a6 restrictToBounds:(BOOL)a7
{
  transformComponent = self->_transformComponent;
  v10 = *a4;
  v8 = [(PVMotionEffectTransformComponent *)transformComponent setPositionInView:&v10 atTime:*&a6 viewSize:a7 viewOrigin:a3.x restrictToBounds:a3.y, a5.width, a5.height];

  return v8;
}

- (id)scaleToFit:(CGRect)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 viewSize:(CGSize)a6 viewOrigin:(int)a7 restrictToBounds:(BOOL)a8
{
  transformComponent = self->_transformComponent;
  v11 = *a4;
  v9 = [(PVMotionEffectTransformComponent *)transformComponent scaleToFit:&v11 atTime:a5 forcePosterFrame:*&a7 viewSize:a8 viewOrigin:a3.origin.x restrictToBounds:a3.origin.y, a3.size.width, a3.size.height, a6.width, a6.height];

  return v9;
}

- (void)setScale:(PVMotionEffect *)self
{
  v3 = v2[1];
  transformComponent = self->_transformComponent;
  v5[0] = *v2;
  v5[1] = v3;
  [(PVMotionEffectTransformComponent *)transformComponent setScale:v5];
}

- (int8x16_t)getScale
{
  v4 = *(a1 + 280);
  if (v4)
  {
    [v4 getScale];
    result = v7;
    v6 = vextq_s8(result, result, 8uLL).u64[0];
    a3.n128_u64[0] = v8;
  }

  else
  {
    result.i64[0] = 0;
    v6 = 0;
    a3.n128_u64[0] = 0;
  }

  result.i64[1] = v6;
  *a2 = result;
  a2[1] = a3;
  return result;
}

- (BOOL)bounds:(CGRect *)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7
{
  transformComponent = self->_transformComponent;
  v9 = *a4;
  return [(PVMotionEffectTransformComponent *)transformComponent bounds:a3 atTime:&v9 forcePosterFrame:a5 includeDropShadow:a6 includeMasks:a7];
}

- (id)hitAreaPointsAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 scale:(CGPoint)a6 viewSize:(CGSize)a7 viewOrigin:(int)a8
{
  hitAreaComponent = self->_hitAreaComponent;
  v11 = *a3;
  v9 = [(PVMotionEffectHitAreaComponent *)hitAreaComponent hitAreaPointsAtTime:&v11 forcePosterFrame:a4 includeDropShadow:a5 scale:*&a8 viewSize:a6.x viewOrigin:a6.y, a7.width, a7.height];

  return v9;
}

- (BOOL)hitTest:(CGPoint)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 scale:(CGPoint)a6 adjustForMinimumSize:(BOOL)a7 minimumSize:(double)a8 sizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11
{
  hitAreaComponent = self->_hitAreaComponent;
  v13 = *a4;
  return [(PVMotionEffectHitAreaComponent *)hitAreaComponent hitTest:&v13 atTime:a5 forcePosterFrame:a7 scale:*&a11 adjustForMinimumSize:a3.x minimumSize:a3.y sizeThreshold:a6.x viewSize:a6.y viewOrigin:a8, a9, a10.width, a10.height];
}

- (CGPath)createPathsForHitTestingAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 scale:(CGPoint)a5 adjustForMinimumSize:(BOOL)a6 minimumSize:(double)a7 sizeThreshold:(double)a8 viewSize:(CGSize)a9 viewOrigin:(int)a10 outExpandedPath:(const CGPath *)a11
{
  hitAreaComponent = self->_hitAreaComponent;
  v13 = *a3;
  return [(PVMotionEffectHitAreaComponent *)hitAreaComponent createPathsForHitTestingAtTime:&v13 forcePosterFrame:a4 scale:a6 adjustForMinimumSize:*&a10 minimumSize:a11 sizeThreshold:a5.x viewSize:a5.y viewOrigin:a7 outExpandedPath:a8, a9.width, a9.height];
}

- (id)objectHitTest:(CGPoint)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 scale:(CGPoint)a6 adjustForMinimumSize:(BOOL)a7 minimumSize:(double)a8 sizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11
{
  hitAreaComponent = self->_hitAreaComponent;
  v14 = *a4;
  v12 = [(PVMotionEffectHitAreaComponent *)hitAreaComponent objectHitTest:&v14 atTime:a5 forcePosterFrame:a7 scale:*&a11 adjustForMinimumSize:a3.x minimumSize:a3.y sizeThreshold:a6.x viewSize:a6.y viewOrigin:a8, a9, a10.width, a10.height];

  return v12;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineDuration
{
  result = self->_timelineComponent;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result timelineDuration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineFrameDuration
{
  result = self->_timelineComponent;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result timelineFrameDuration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineLastFrame
{
  result = self->_timelineComponent;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result timelineLastFrame];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)componentTimeFromTimelineTime:(SEL)a3
{
  result = self->_timelineComponent;
  v5 = *a4;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result componentTimeFromTimelineTime:&v5];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timelineTimeFromComponentTime:(SEL)a3
{
  result = self->_timelineComponent;
  v5 = *a4;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result timelineTimeFromComponentTime:&v5];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)a3
{
  result = self->_timelineComponent;
  v5 = *&a4->var0.var3;
  v6[0] = *&a4->var0.var0;
  v6[1] = v5;
  v6[2] = *&a4->var1.var1;
  if (result)
  {
    return [($948BFCBB2DDE7F94AFEDE1DD48437795 *)result componentTimeRangeFromTimelineTimeRange:v6];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return result;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)a3
{
  result = self->_timelineComponent;
  v5 = *&a4->var0.var3;
  v6[0] = *&a4->var0.var0;
  v6[1] = v5;
  v6[2] = *&a4->var1.var1;
  if (result)
  {
    return [($948BFCBB2DDE7F94AFEDE1DD48437795 *)result timelineTimeRangeFromComponentTimeRange:v6];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return result;
}

- (void)setLoopTimeOverride:(id *)a3
{
  timelineComponent = self->_timelineComponent;
  v4 = *a3;
  [(PVMotionEffectTimelineComponent *)timelineComponent setLoopTimeOverride:&v4];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopTimeOverride
{
  result = self->_timelineComponent;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result loopTimeOverride];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

+ (id)newEffectWithURL:(id)a3
{
  v3 = a3;
  v4 = [PVMotionEffect alloc];
  v5 = [v3 path];
  v6 = [(PVMotionEffect *)v4 initWithEffectID:v5];

  return v6;
}

+ (id)newEffectWithData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"/EffectWithData.moef"];

    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v10 = 0;
    [v3 writeToURL:v6 options:1073741825 error:&v10];
    v7 = v10;
    v8 = [[PVMotionEffect alloc] initWithEffectID:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)handleApplicationDidReceiveMemoryWarning
{
  if (s_isMotionInitialized == 1)
  {
    v3 = OZCacheManager::Instance(a1);
    OZCacheManager::clearTextureCache(v3);
    Instance = TXFontManager::getInstance(v4);
    v6 = OZFontManagerBase::purgeCachedFonts(Instance);

    PGHelium::purge(v6);
  }
}

+ (void)extractMetadataFromContentsOfFile:(id)a3 toCacheEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v8 = [[TBXMLHelper alloc] initWithContentsOfURL:v7];
  if ([(TBXMLHelper *)v8 parse])
  {
    v9 = [(TBXMLHelper *)v8 sceneSettings];
    v10 = [v9 objectForKey:@"theme"];
    if ([v10 length])
    {
      v11 = [@"Themes" stringByAppendingPathComponent:v10];
      v12 = +[PVHostApplicationDelegateHandler sharedInstance];
      v13 = [v12 effectTemplatesBundle];
      v14 = [v13 localizedStringForKey:v11 value:@"***MISSING STRING***" table:0];
      if (([v14 isEqualToString:@"***MISSING STRING***"] & 1) == 0)
      {
        v15 = v14;
        v16 = v10;
        v17 = v9;
        v18 = v6;
        v19 = v15;

        v20 = v19;
        v6 = v18;
        v9 = v17;
        v10 = v20;
      }

      [v6 setObject:v10 forKey:@"theme"];
    }

    v21 = [v5 pathExtension];
    if ([v21 isEqualToString:@"motn"])
    {
    }

    else
    {
      v22 = [v5 pathExtension];
      v23 = [v22 isEqualToString:@"moti"];

      if ((v23 & 1) == 0)
      {
        v36 = [v5 pathExtension];
        v37 = [v36 isEqualToString:@"motr"];

        if (!v37)
        {
          goto LABEL_34;
        }

        v38 = [v9 objectForKey:@"shouldOverrideFCDuration"];
        v39 = v38;
        if (!v38)
        {
          goto LABEL_34;
        }

        v40 = [v38 BOOLValue];

        if ((v40 & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    v24 = [v9 objectForKey:@"duration"];
    v25 = [v24 integerValue];

    v26 = [v9 objectForKey:@"frameRate"];
    v27 = v26;
    if (v25 < 1 || !v26 || ([v26 doubleValue], v28 <= 0.0))
    {
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    [v27 doubleValue];
    v30 = v29;
    v31 = [v9 objectForKey:@"NTSC"];
    v32 = [v31 BOOLValue];

    memset(&v46, 0, sizeof(v46));
    v33 = vcvtmd_s64_f64(v30 + 0.5 + 0.0000001);
    if (v33 == 30)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v35 = 4004;
    }

    else
    {
      if (v33 == 24)
      {
        v41 = v32;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v35 = 5005;
      }

      else
      {
        if (v33 == 60)
        {
          v42 = v32;
        }

        else
        {
          v42 = 0;
        }

        if ((v42 & 1) == 0)
        {
          if (v33)
          {
            if (600 / v33 * v33 == 600)
            {
              v35 = (600 / v33) << 8;
              v43 = 153600;
              goto LABEL_32;
            }

            v43 = v33 << 8;
          }

          else
          {
            v43 = 7680;
          }

          v35 = 256;
LABEL_32:
          CMTimeMake(&v45, v35, v43);
          operator*(&v45, v25, &v46);
          v45 = v46;
          v44 = [FigTimeObj timeWithTime:&v45];
          [v6 setObject:v44 forKey:@"suggestedDuration"];

          goto LABEL_33;
        }

        v35 = 2002;
      }
    }

    v43 = 120000;
    goto LABEL_32;
  }

LABEL_35:
}

+ (id)effectMap
{
  if (+[PVMotionEffect effectMap]::once != -1)
  {
    +[PVMotionEffect effectMap];
  }

  v3 = +[PVMotionEffect effectMap]::sEffectMap;

  return v3;
}

void __27__PVMotionEffect_effectMap__block_invoke()
{
  v0 = objc_msgSend( objc_alloc(MEMORY[0x277CBEB38]),  "initWithObjectsAndKeys:",  @".../Transitions.localized/iMovie.localized/Basics.localized/Cross Dissolve.localized/Cross Dissolve.motr",  @"1434131D-6C72-4FDB-8365-01B93DD44905",  @".../Transitions.localized/iMovie.localized/Basics.localized/Slide To Left.localized/Slide To Left.motr",  @"17546984-5563-442C-A5AA-ABC8DD26C3AB",  @".../Transitions.localized/iMovie.localized/Basics.localized/Slide To Right.localized/Slide To Right.motr",  @"1FF96A46-41CF-4454-9BA6-7887F249BCF2",  @".../Transitions.localized/iMovie.localized/Basics.localized/Slide To Top.localized/Slide To Top.motr",  @"2039D994-9DAE-40E8-B34F-8F12B78672E7",  @".../Transitions.localized/iMovie.localized/Basics.localized/Slide To Bottom.localized/Slide To Bottom.motr",  @"2DDB4EC6-E394-470C-B326-7BFA9744BC65",  @".../Transitions.localized/iMovie.localized/Basics.localized/Wipe To Left.localized/Wipe To Left.motr",  @"35B74472-3827-492A-94F8-3AD495876439",  @".../Transitions.localized/iMovie.localized/Basics.localized/Wipe To Right.localized/Wipe To Right.motr",  @"3E6CF06F-CED2-41CF-B469-9FFD995C33B0",  @".../Transitions.localized/iMovie.localized/Basics.localized/Wipe To Top.localized/Wipe To Top.motr",  @"46B43980-CBDF-43C1-BA0C-AC35120C16EA",  @".../Transitions.localized/iMovie.localized/Basics.localized/Wipe To Bottom.localized/Wipe To Bottom.motr",  @"47BC340E-1358-4CEE-BCFD-3F9133B3ED8E",  @".../Transitions.localized/iMovie.localized/Cutaways.localized/Picture In Picture.localized/Picture In Picture.motr",  @"570D6022-EAA4-4075-8AAA-32223C7A8D4E",  @".../Transitions.localized/iMovie.localized/Cutaways.localized/Split Screen.localized/Split Screen.motr",  @"686E482D-F140-45D0-8136-1B8B4FDAB6D0",  @".../Transitions.localized/iMovie.localized/Cutaways.localized/Green Screen.localized/Green Screen.motr",  @"C2B90894-CDDC-4FFF-9B2A-CD31CB33B106",  @".../Effects.localized/iMovie.localized/Ken Burns.localized/Ken Burns.moef",  @"697D2F7A-CA06-48E5-82BF-95FD57AC6D1B",  @".../Effects.localized/iMovie.localized/B&W.localized/B&W.moef",  @"E50C1035-19C5-4EFF-AAB4-B3008BC14D04",  @".../Effects.localized/iMovie.localized/Blast.localized/Blast.moef",  @"CAA078D7-0ACA-432E-85B1-FB975BE96A80",  @".../Effects.localized/iMovie.localized/Blockbuster.localized/Blockbuster.moef",  @"7F57747E-6F2A-4D31-806C-67B4F09A93CA",  @".../Effects.localized/iMovie.localized/Blue.localized/Blue.moef",  @"8286EAE4-72A9-4739-970D-12A9EC5EE39D",  @".../Effects.localized/iMovie.localized/Camo.localized/Camo.moef",  @"AE493655-7441-401C-82DA-2B53150ADF04",  @".../Effects.localized/iMovie.localized/Dreamy.localized/Dreamy.moef",  @"BF65FA4F-DF9E-4BA1-AF3A-EDABE6AAC849",  @".../Effects.localized/iMovie.localized/Duotone.localized/Duotone.moef",  @"B1AF5729-DBD8-458F-AA8C-14431E269F91",  @".../Effects.localized/iMovie.localized/Silent Era.localized/Silent Era.moef",  @"F8AE5EB3-7B25-48EA-B553-A3ABC3BF4E22",  @".../Effects.localized/iMovie.localized/Vintage.localized/Vintage.moef",  @"FDA1996F-CE2F-4D2B-9C02-63C38F6D260E",  @".../Effects.localized/iMovie.localized/Western.localized/Western.moef",  @"F97E8C77-4E0D-4F19-9A5C-E738CB736808",  @".../Effects.localized/iMovie.localized/FadeInOut Through Color.localized/FadeInOut Through Color.moef",
         @"2DE6E421-5B7A-429F-9FDE-2727F3F893D6",
         @".../Titles.localized/iMovie.localized/Simple.localized/Box.localized/Box.moti",
         @"67379F38-96D6-4E67-A5BD-DA0ADDA7BA45",
         @".../Titles.localized/iMovie.localized/Simple.localized/Lower Thirds.localized/Box.localized/Box.moti",
         @"AA106B51-6EA0-487B-8090-C64F523302C7",
         @".../Titles.localized/iMovie.localized/Simple.localized/Chromatic.localized/Chromatic.moti",
         @"F6F26720-0BEE-4E50-AF8B-F48333631B81",
         @".../Titles.localized/iMovie.localized/Simple.localized/Lower Thirds.localized/Chromatic.localized/Chromatic.moti",
         @"B7B8CD36-9550-4E75-BB6D-8B3DE402F502",
         @".../Titles.localized/iMovie.localized/Simple.localized/Expand.localized/Expand.moti",
         @"F2EDB25D-FDE3-4402-85FB-B977F3A2121D",
         @".../Titles.localized/iMovie.localized/Simple.localized/Lower Thirds.localized/Expand.localized/Expand.moti",
         @"1AA45B2B-274B-4925-A00C-C79F8E74EBAD",
         @".../Titles.localized/iMovie.localized/Simple.localized/Focus.localized/Focus.moti");
  v1 = +[PVMotionEffect effectMap]::sEffectMap;
  +[PVMotionEffect effectMap]::sEffectMap = v0;
}

+ (id)_effectPathFromID:(id)a3
{
  v4 = a3;
  v5 = [a1 effectMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (void)registerTemplateInDirectory:(id)a3 relPath:(id)a4 effectID:(id)a5 doingRescan:(BOOL)a6 origCache:(id)a7 newCache:(id)a8
{
  v54 = a3;
  v10 = a4;
  v53 = a5;
  v11 = [v10 pathExtension];
  v12 = [v11 isEqualToString:@"moef"];

  if (v12)
  {
    v13 = @"Effects.localized";
    v14 = kFFEffectType_VideoFilter;
  }

  else
  {
    v15 = [v10 pathExtension];
    v16 = [v15 isEqualToString:@"motn"];

    if (v16)
    {
      v13 = @"Generators.localized";
      v14 = kFFEffectType_VideoGenerator;
    }

    else
    {
      v17 = [v10 pathExtension];
      v18 = [v17 isEqualToString:@"motr"];

      if (v18)
      {
        v13 = @"Transitions.localized";
        v14 = kFFEffectType_VideoTransition;
      }

      else
      {
        v19 = [v10 pathExtension];
        v20 = [v19 isEqualToString:@"moti"];

        if ((v20 & 1) == 0)
        {
          goto LABEL_28;
        }

        v13 = @"Titles.localized";
        v14 = kFFEffectType_VideoTitle;
      }
    }
  }

  v52 = *v14;
  if ([v10 hasPrefix:@"..."])
  {
    v21 = [v10 substringFromIndex:4];

    v10 = v21;
  }

  v22 = [v54 stringByAppendingPathComponent:v10];
  v23 = [v22 lastPathComponent];
  v24 = [v23 stringByDeletingPathExtension];

  v50 = v24;
  v25 = [v22 stringByDeletingLastPathComponent];
  v26 = [v25 lastPathComponent];
  v27 = [v26 stringByDeletingPathExtension];

  v49 = v27;
  if ([v24 isEqualToString:v27])
  {
    [v25 lastPathComponent];
  }

  else
  {
    [v10 lastPathComponent];
  }
  v28 = ;
  v51 = [v28 stringByDeletingPathExtension];

  v29 = [v10 pathComponents];
  if ([v29 count] >= 3)
  {
    v31 = [v54 stringByAppendingPathComponent:v13];
    v32 = [v29 objectAtIndex:1];
    v33 = [v31 stringByAppendingPathComponent:v32];

    v34 = [v33 lastPathComponent];
    v30 = [v34 stringByDeletingPathExtension];
  }

  else
  {
    v30 = @"Motion";
  }

  v35 = [v22 stringByDeletingLastPathComponent];
  v36 = [v35 stringByAppendingPathComponent:@"large.png"];

  v37 = [MEMORY[0x277CCAA00] defaultManager];
  v38 = [v37 fileExistsAtPath:v36];

  if ((v38 & 1) == 0)
  {

    v36 = 0;
  }

  v39 = [v22 stringByDeletingLastPathComponent];
  v40 = [v39 stringByAppendingPathComponent:@"small.png"];

  v41 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = [v41 fileExistsAtPath:v40];

  if ((v42 & 1) == 0)
  {

    goto LABEL_23;
  }

  if (!v40)
  {
LABEL_23:
    v43 = [v22 stringByDeletingPathExtension];
    v40 = [v43 stringByAppendingPathExtension:@"png"];

    v44 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = [v44 fileExistsAtPath:v40];

    if ((v45 & 1) == 0)
    {

      v40 = 0;
    }
  }

  v46 = MEMORY[0x277CBEB38];
  v47 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v48 = [v46 dictionaryWithObjectsAndKeys:{v51, @"FFEffectProperty_DisplayName", v30, @"FFEffectProperty_Category", v52, @"FFEffectProperty_EffectType", v47, @"FFEffectProperty_AvailableInSimpleMode", v40, @"kFFEffectProperty_ThumbnailImagePath", v36, @"kFFEffectProperty_PreviewImagePath", 0}];

  if ([0 length])
  {
    [v48 setObject:0 forKey:@"kFFEffectProperty_Theme"];
  }

  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v53 withProperties:v48];

LABEL_28:
}

+ (void)mapTemplatesInDirectory:(id)a3 doingRescan:(BOOL)a4 origCache:(id)a5 newCache:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v19 = [a1 effectMap];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v19 allKeys];
  v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v23;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v15);

        v17 = objc_autoreleasePoolPush();
        v18 = [a1 _effectPathFromID:v13];
        [a1 registerTemplateInDirectory:v9 relPath:v18 effectID:v13 doingRescan:0 origCache:v10 newCache:v11];

        objc_autoreleasePoolPop(v17);
        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  if ([v20 count])
  {
    NSLog(&cfstr_WarningSomeMap.isa);
    NSLog(&stru_2872E15A0.isa, v20);
  }
}

+ (void)scanTemplatesInDirectory:(id)a3 doingRescan:(BOOL)a4 replaceMappedEffectPath:(BOOL)a5 origCache:(id)a6 newCache:(id)a7
{
  v9 = a5;
  v19 = a3;
  v11 = a6;
  v12 = a7;
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v18 enumeratorAtPath:v19];
  for (i = 0; ; i = v15)
  {
    v15 = [v13 nextObject];

    if (!v15)
    {
      break;
    }

    v16 = [v19 stringByAppendingPathComponent:v15];
    if (!v9 || ([a1 replacedMappedEffectWithNewPath:v16] & 1) == 0)
    {
      v17 = [@"..." stringByAppendingFormat:@"/%@", v15];
      [a1 registerTemplateInDirectory:v19 relPath:v15 effectID:v17 doingRescan:0 origCache:v11 newCache:v12];
    }
  }
}

+ (BOOL)replacedMappedEffectWithNewPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 effectMap];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 lastPathComponent];
        v13 = [v4 lastPathComponent];
        if ([v13 isEqualToString:v12])
        {
          [v5 setObject:v4 forKeyedSubscript:v10];

          v14 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (void)registerNoneEffectForType:(id)a3 effectID:(id)a4 origCache:(id)a5 newCache:(id)a6
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v12, @"modDate", 0}];
  [v10 setObject:v13 forKey:v9];

  [v11 setObject:v13 forKey:v9];
  v14 = MEMORY[0x277CBEB38];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v16 = [v14 dictionaryWithObjectsAndKeys:{@"None", @"FFEffectProperty_DisplayName", @"Motion", @"FFEffectProperty_Category", v17, @"FFEffectProperty_EffectType", v15, @"FFEffectProperty_AvailableInSimpleMode", 0, @"kFFEffectProperty_ThumbnailImagePath", 0, @"kFFEffectProperty_PreviewImagePath", 0}];

  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v9 withProperties:v16];
}

+ (id)_bundleLibPaths
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = +[PVHostApplicationDelegateHandler sharedInstance];
  v3 = [v2 effectTemplatesBundle];
  if (v3)
  {
    v4 = [v2 effectTemplatesDirectoryName];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v6 = v4;
    v7 = v6;
    v21 = v6;
    v22[0] = 0;
    if (v6)
    {
      v8 = v22;
      v9 = v6;
      do
      {
        v10 = [v3 pathForResource:v9 ofType:0];
        if (v10)
        {
          [v5 addObject:v10];
        }

        v11 = *v8++;
        v9 = v11;
      }

      while (v11);
    }

    v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v13 = [v12 integerForKey:@"PVVideoCompositingContextUserMotionEffectsKey"];

    if (v13)
    {
      v14 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
      v15 = [v14 firstObject];

      v16 = [v15 stringByAppendingPathComponent:v7];

      v17 = [MEMORY[0x277CCAA00] defaultManager];
      LODWORD(v15) = [v17 fileExistsAtPath:v16];

      if (v15)
      {
        [v5 addObject:v16];
      }
    }

    if ([v5 count])
    {
      v18 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5];
    }

    else
    {
      v18 = 0;
    }

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_userLibPaths
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v3 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v4 = [v3 objectAtIndex:0];
  if (v4)
  {
    [v2 addObject:v4];
  }

  if ([v2 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)registerEffects
{
  v28 = *MEMORY[0x277D85DE8];
  if ((+[PVMotionEffect registerEffects]::sRegistered & 1) == 0)
  {
    +[PVMotionEffect registerEffects]::sRegistered = 1;
    v3 = [a1 _bundleLibPaths];
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(0, "count")}];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [v3 reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [a1 mapTemplatesInDirectory:*(*(&v22 + 1) + 8 * v8++) doingRescan:0 origCache:0 newCache:v4];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 integerForKey:@"PVVideoCompositingContextUserMotionEffectsKey"];

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [v11 integerForKey:@"PVReplaceShippingEffectsWithDocumentsEffects"];

    if (v10)
    {
      v13 = [a1 _userLibPaths];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v14 = [v13 reverseObjectEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v15)
      {
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [a1 scanTemplatesInDirectory:*(*(&v18 + 1) + 8 * v17++) doingRescan:0 replaceMappedEffectPath:v12 != 0 origCache:0 newCache:v4];
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v15);
      }
    }

    [a1 registerNoneEffectForType:@"effect.video.filter" effectID:@"737C8717-70E0-4CCE-8F19-17A0532E836F" origCache:0 newCache:v4];
    [a1 registerNoneEffectForType:@"effect.video.title" effectID:@"4390FE7A-3408-4EB5-A049-AA394C03A911" origCache:0 newCache:v4];
    [a1 registerNoneEffectForType:@"effect.video.transition" effectID:@"67EB7544-E4A1-4508-9733-E201AADFBC15" origCache:0 newCache:v4];
    [a1 initializeMotion];
  }
}

+ (void)initializeMotion
{
  v2 = PVDocumentAccessController::INSTANCE(a1);

  PVDocumentAccessController::InitializeMotion(v2);
}

+ (void)initializeMotionInternal
{
  {
    +[PVMotionEffect initializeMotionInternal]::s_initLock = objc_alloc_init(MEMORY[0x277CCAAF8]);
  }

  [+[PVMotionEffect initializeMotionInternal]::s_initLock lock];
  if ((s_isMotionInitialized & 1) == 0)
  {
    PCInit();
    v2 = +[PVHostApplicationDelegateHandler sharedInstance];
    OZXWaitForAsyncInitialization();
    OZXSetHostDelegate(v2);
    v12 = objc_alloc_init(TXMain);
    [(TXMain *)v12 applicationDidFinishLaunching];
    v3 = objc_alloc_init(BHBehaviorsBundle);
    [(BHBehaviorsBundle *)v3 applicationDidFinishLaunching];
    v4 = objc_alloc_init(PSMain);
    [(PSMain *)v4 applicationDidFinishLaunching];
    v5 = +[PROPlugInManager sharedPlugInManager];
    v6 = +[OZFxPlugHostPropertiesAPI sharedHostPropertiesAPI];
    [v5 registerAPIObject:v6 forProtocol:&unk_28735F220 version:1];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v5 scanForPlugInsInBundle:v7 deferralNotification:&__block_literal_global_2065];
    +[PAEDummyiOS setup];
    if (kNoPanZoomEnabled == -1)
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      kNoPanZoomEnabled = [v8 BOOLForKey:@"noPanZoomAnchoring"];
    }

    s_isMotionInitialized = 1;
    v9 = kPVAlignmentLeft;
    kPVAlignmentLeft = &unk_28732D370;

    v10 = kPVAlignmentRight;
    kPVAlignmentRight = &unk_28732D388;
  }

  v11 = +[PVMotionEffect initializeMotionInternal]::s_initLock;

  [v11 unlock];
}

- (PVMotionEffect)initWithEffectID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PVMotionEffect;
  v5 = [(PVEffect *)&v8 initWithEffectID:v4];
  v6 = v5;
  if (v5)
  {
    [(PVMotionEffect *)v5 _commonInitWithProjectPathOverride:0];
  }

  return v6;
}

- (PVMotionEffect)initWithContentID:(id)a3 andDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PVMotionEffect;
  v8 = [(PVEffect *)&v11 initWithContentID:v6 andDictionary:v7];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"contentPath"];
    [(PVMotionEffect *)v8 _commonInitWithProjectPathOverride:v9];
  }

  return v8;
}

- (void)_commonInitWithProjectPathOverride:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_projectPathOverride, a3);
  atomic_store(0, &self->_docLoadStatus);
  v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  documentLock = self->_documentLock;
  self->_documentLock = v6;

  self->_documentInfo = 0;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->super._components, "count")}];
  motionComponents = self->_motionComponents;
  self->_motionComponents = v8;

  components = self->super._components;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = *"";
  v21[2] = __53__PVMotionEffect__commonInitWithProjectPathOverride___block_invoke;
  v21[3] = &unk_279AA5D08;
  v21[4] = self;
  [(NSMutableArray *)components enumerateObjectsUsingBlock:v21];
  v11 = objc_opt_new();
  cachedPublishedParams = self->_cachedPublishedParams;
  self->_cachedPublishedParams = v11;

  v13 = [MEMORY[0x277CBEB58] setWithObjects:{@"kPVOutputAspectKey", @"kPVPlayableAspectRatioKey", @"kPVPlayableAspectRatioPreservationModeKey", @"kPVCachedTextureOutputSize", 0}];
  parameterKeysThatInvalidateCache = self->_parameterKeysThatInvalidateCache;
  self->_parameterKeysThatInvalidateCache = v13;

  v15 = objc_opt_new();
  parametersThatInvalidateCache = self->_parametersThatInvalidateCache;
  self->_parametersThatInvalidateCache = v15;

  v17 = self->_motionComponents;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = *"";
  v20[2] = __53__PVMotionEffect__commonInitWithProjectPathOverride___block_invoke_2;
  v20[3] = &unk_279AA61D0;
  v20[4] = self;
  [(NSMutableArray *)v17 enumerateObjectsUsingBlock:v20];
  v18 = [(PVMotionEffect *)self projectURL];
  v19 = [(PVMotionEffect *)self projectPath];
  [(PVMotionEffect *)self supportsExtendedRangeInputs];
  [(NSLock *)self->_documentLock lock];
  [(PVMotionEffect *)self _documentDidUnload_NoLock];
  [(NSLock *)self->_documentLock unlock];
}

void __53__PVMotionEffect__commonInitWithProjectPathOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1 + 32) + 152) addObject:v3];
  }
}

void __53__PVMotionEffect__commonInitWithProjectPathOverride___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 motionEffectPropertyKeysThatInvalidateCachedRender:*(a1 + 32)];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 240);
    v6 = v3;
    v5 = [v3 allObjects];
    [v4 addObjectsFromArray:v5];

    v3 = v6;
  }
}

- (void)_documentDidUnload_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsNotStarted];
  documentInfo = self->_documentInfo;
  if (documentInfo)
  {
    PVMotionDocumentInfo::~PVMotionDocumentInfo(documentInfo);
    MEMORY[0x2666E9F00]();
    self->_documentInfo = 0;
  }

  operator new();
}

- (void)_configureComponents
{
  v15.receiver = self;
  v15.super_class = PVMotionEffect;
  [(PVEffect *)&v15 _configureComponents];
  v3 = [[PVMotionEffectTimelineComponent alloc] initWithMotionEffect:self];
  timelineComponent = self->_timelineComponent;
  self->_timelineComponent = v3;

  [(NSMutableArray *)self->super._components addObject:self->_timelineComponent];
  v5 = [[PVMotionEffectTransformComponent alloc] initWithMotionEffect:self];
  transformComponent = self->_transformComponent;
  self->_transformComponent = v5;

  [(NSMutableArray *)self->super._components addObject:self->_transformComponent];
  v7 = [[PVMotionEffectTextComponent alloc] initWithMotionEffect:self];
  textComponent = self->_textComponent;
  self->_textComponent = v7;

  [(NSMutableArray *)self->super._components addObject:self->_textComponent];
  v9 = [(PVMotionEffectComponent *)[PVMotionEffectTranscriptionComponent alloc] initWithMotionEffect:self];
  transcriptionComponent = self->_transcriptionComponent;
  self->_transcriptionComponent = v9;

  [(NSMutableArray *)self->super._components addObject:self->_transcriptionComponent];
  v11 = [(PVMotionEffectComponent *)[PVMotionEffectHitAreaComponent alloc] initWithMotionEffect:self];
  hitAreaComponent = self->_hitAreaComponent;
  self->_hitAreaComponent = v11;

  [(NSMutableArray *)self->super._components addObject:self->_hitAreaComponent];
  v13 = [[PVMotionEffectSceneManagerComponent alloc] initWithMotionEffect:self];
  sceneManagerComponent = self->_sceneManagerComponent;
  self->_sceneManagerComponent = v13;

  [(NSMutableArray *)self->super._components addObject:self->_sceneManagerComponent];
}

- (void)releaseResources
{
  v7.receiver = self;
  v7.super_class = PVMotionEffect;
  [(PVEffect *)&v7 releaseResources];
  documentLock = self->_documentLock;
  if (documentLock)
  {
    v4 = [(NSLock *)documentLock lock];
    v5 = atomic_load(&self->_docLoadStatus);
    if ((v5 & 0xFFFFFFFE) == 2)
    {
      v6 = PVDocumentAccessController::INSTANCE(v4);
      PVDocumentAccessController::ReleaseOZXDocument(v6, *self->_documentInfo);
    }

    [(NSLock *)self->_documentLock unlock];
  }
}

- (void)dealloc
{
  [(PVMotionEffect *)self releaseResources];
  documentLock = self->_documentLock;
  self->_documentLock = 0;

  documentInfo = self->_documentInfo;
  if (documentInfo)
  {
    PVMotionDocumentInfo::~PVMotionDocumentInfo(documentInfo);
    MEMORY[0x2666E9F00]();
    self->_documentInfo = 0;
  }

  v5.receiver = self;
  v5.super_class = PVMotionEffect;
  [(PVEffect *)&v5 dealloc];
}

- (id)projectPath
{
  projectPath = self->_projectPath;
  if (!projectPath)
  {
    v4 = [(PVMotionEffect *)self projectURL];
    v5 = [v4 path];
    v6 = self->_projectPath;
    self->_projectPath = v5;

    projectPath = self->_projectPath;
  }

  v7 = projectPath;

  return v7;
}

- (BOOL)hasAllNecessaryResources
{
  v2 = [(PVMotionEffect *)self projectURL];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (id)projectURL
{
  v38 = *MEMORY[0x277D85DE8];
  projectURL = self->_projectURL;
  if (projectURL)
  {
    v3 = projectURL;
    goto LABEL_31;
  }

  v26 = [(PVEffect *)self effectID];
  v5 = self->_projectPathOverride;
  if (v5)
  {
    goto LABEL_29;
  }

  if ([v26 hasPrefix:@"..."])
  {
    v27 = [v26 substringFromIndex:4];
    +[PVMotionEffect _userLibPaths];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v5 = 0;
    v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v6)
    {
      v7 = *v33;
LABEL_7:
      v8 = 0;
      v9 = v5;
      while (1)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v32 + 1) + 8 * v8) stringByAppendingFormat:@"/%@", v27];

        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [v10 fileExistsAtPath:v5];

        if (v11)
        {
          break;
        }

        ++v8;
        v9 = v5;
        if (v6 == v8)
        {
          v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v6)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }
  }

  else
  {
    v12 = [PVMotionEffect _effectPathFromID:v26];
    if ([v12 hasPrefix:@"..."])
    {
      v27 = v12;
      obja = [v12 substringFromIndex:4];
      +[PVMotionEffect _bundleLibPaths];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v23 = v29 = 0u;
      v5 = 0;
      v13 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v13)
      {
        v14 = *v29;
LABEL_17:
        v15 = 0;
        v16 = v5;
        while (1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v23);
          }

          v5 = [*(*(&v28 + 1) + 8 * v15) stringByAppendingFormat:@"/%@", obja];

          v17 = [MEMORY[0x277CCAA00] defaultManager];
          v18 = [v17 fileExistsAtPath:v5];

          if (v18)
          {
            break;
          }

          ++v15;
          v16 = v5;
          if (v13 == v15)
          {
            v13 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v13)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }
    }

    else
    {
      if (v12)
      {
        v5 = v12;

        goto LABEL_28;
      }

      v27 = 0;
      v5 = v26;
    }
  }

LABEL_28:
  if (!v5)
  {
    v19 = 0;
    goto LABEL_30;
  }

LABEL_29:
  v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
LABEL_30:
  v20 = self->_projectURL;
  self->_projectURL = v19;

  projectPath = self->_projectPath;
  self->_projectPath = 0;

  v3 = self->_projectURL;
LABEL_31:

  return v3;
}

- (void)loadDocument_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsNotStarted];
  v3 = [(PVEffect *)self effectID];
  if (v3)
  {
    v4 = [(PVMotionEffect *)self projectURL];
    v5 = [(PVMotionEffect *)self projectPath];
    if (+[PVEnvironment PV_ENABLE_ENV_LOGS])
    {
      NSLog(&cfstr_Pvmotioneffect_0.isa, v4);
      v6 = [(PVEffect *)self descriptionOfInspectableProperties];
      NSLog(&cfstr_Pvmotioneffect_1.isa, v6);
    }

    atomic_store(1u, &self->_docLoadStatus);
    motionComponents = self->_motionComponents;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = *"";
    v26[2] = __37__PVMotionEffect_loadDocument_NoLock__block_invoke;
    v26[3] = &unk_279AA61D0;
    v26[4] = self;
    [(NSMutableArray *)motionComponents enumerateObjectsUsingBlock:v26];
    v25 = 0;
    v8 = +[PVDocumentCacheManager sharedInstance];
    v9 = [v8 newOZXDocumentForKey:v5];

    if (!v9)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      *v20 = 0u;
      v21 = 0u;
      PVGetMemUsageStats(v20);
      OZXLoadDocument();
    }

    v25 = v9;
    *self->_documentInfo = v9;
    OZXGetDocInfo(*self->_documentInfo, self->_documentInfo + 8);
    documentInfo = self->_documentInfo;
    v11 = *(documentInfo + 12);
    v12.i64[0] = v11;
    v12.i64[1] = HIDWORD(v11);
    *(documentInfo + 11) = vcvtq_f64_u64(v12);
    v20[0] = 0;
    v13 = OZXGetTopLevelGroupID(*documentInfo, v20);
    v14 = self->_documentInfo;
    v14[41] = v13;
    if (!v13)
    {
      v15 = v20[0];
      v14[40] = v20[0];
      self->_groupIDToCache = v15;
    }

    atomic_store(2u, &self->_docLoadStatus);
    v16 = self->_motionComponents;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = *"";
    v19[2] = __37__PVMotionEffect_loadDocument_NoLock__block_invoke_2;
    v19[3] = &unk_279AA61D0;
    v19[4] = self;
    [(NSMutableArray *)v16 enumerateObjectsUsingBlock:v19];
    if ([(PVMotionEffect *)self isTimeDurationIndefinite])
    {
      OZXSetDuration(*self->_documentInfo, MEMORY[0x277CC0888]);
    }
  }

  else
  {
    atomic_store(4u, &self->_docLoadStatus);
    v17 = self->_motionComponents;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = *"";
    v18[2] = __37__PVMotionEffect_loadDocument_NoLock__block_invoke_3;
    v18[3] = &unk_279AA61D0;
    v18[4] = self;
    [(NSMutableArray *)v17 enumerateObjectsUsingBlock:v18];
  }
}

- (BOOL)supportsExtendedRangeInputs
{
  v13[17] = *MEMORY[0x277D85DE8];
  supportsExtendedRangeInputs = self->_supportsExtendedRangeInputs;
  if (!supportsExtendedRangeInputs)
  {
    v4 = [(PVEffect *)self contentRegistryPropertyForKey:@"doesNotSupportExtendedRangeInputs"];
    v5 = v4;
    if (v4)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "BOOLValue") ^ 1}];
      v7 = self->_supportsExtendedRangeInputs;
      self->_supportsExtendedRangeInputs = v6;
    }

    else
    {
      v8 = [(PVEffect *)self effectID];
      v13[0] = @"E50C1035-19C5-4EFF-AAB4-B3008BC14D04";
      v13[1] = @"CAA078D7-0ACA-432E-85B1-FB975BE96A80";
      v13[2] = @"7F57747E-6F2A-4D31-806C-67B4F09A93CA";
      v13[3] = @"8286EAE4-72A9-4739-970D-12A9EC5EE39D";
      v13[4] = @"AE493655-7441-401C-82DA-2B53150ADF04";
      v13[5] = @"BF65FA4F-DF9E-4BA1-AF3A-EDABE6AAC849";
      v13[6] = @"B1AF5729-DBD8-458F-AA8C-14431E269F91";
      v13[7] = @"F8AE5EB3-7B25-48EA-B553-A3ABC3BF4E22";
      v13[8] = @"FDA1996F-CE2F-4D2B-9C02-63C38F6D260E";
      v13[9] = @"F97E8C77-4E0D-4F19-9A5C-E738CB736808";
      v13[10] = @"E0EF8372-285B-48FE-91E8-484AA0C72566";
      v13[11] = @"73695A75-3662-44D6-B3B9-2D947512610D";
      v13[12] = @"CC50FB3A-4F1C-4A0E-844F-48B30842586A";
      v13[13] = @"330561EB-3193-4210-A735-3CAEFAED29D1";
      v13[14] = @"7195C532-014D-4F44-B0EF-18064B032172";
      v13[15] = @"20E1551C-1F0E-4C87-9C56-750D6D2FAB5E";
      v13[16] = @"CED1BDCE-1C6F-4ABF-85EB-E10DD5F04841";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:17];
      if ([v9 containsObject:v8])
      {
        v10 = self->_supportsExtendedRangeInputs;
        self->_supportsExtendedRangeInputs = MEMORY[0x277CBEC28];
      }

      v11 = self->_supportsExtendedRangeInputs;
      self->_supportsExtendedRangeInputs = MEMORY[0x277CBEC38];
    }

    supportsExtendedRangeInputs = self->_supportsExtendedRangeInputs;
  }

  return [(NSNumber *)supportsExtendedRangeInputs BOOLValue];
}

- (BOOL)resourcesAreReady
{
  if ([(PVMotionEffect *)self isReady])
  {
    return 1;
  }

  v4 = [(PVMotionEffect *)self projectPath];
  v5 = +[PVDocumentCacheManager sharedInstance];
  v6 = [v5 getOZXDocumentForKey:v4];

  v3 = v6 != 0;
  return v3;
}

- (BOOL)loadResources
{
  [(NSLock *)self->_documentLock lock];
  v3 = [(PVMotionEffect *)self loadResources_NoLock];
  [(NSLock *)self->_documentLock unlock];
  return v3;
}

- (BOOL)loadResources_NoLock
{
  v2 = atomic_load(&self->_docLoadStatus);
  if (v2 != 3)
  {
    v5 = PVDocumentAccessController::INSTANCE(self);
    PVDocumentAccessController::LoadEffectDocument(v5, self);
  }

  return 1;
}

- (void)loadEffectInternal_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  v3 = atomic_load(&self->_docLoadStatus);
  if (v3 - 3 >= 2)
  {
    [(PVMotionEffect *)self assertDocumentStatusIsNotStarted];
    if (!v3)
    {
      if (HGLogger::getLevel("PVSignPost", v4) >= 1)
      {
        kdebug_trace();
      }

      [(PVMotionEffect *)self loadDocument_NoLock];
      if (HGLogger::getLevel("PVSignPost", v5) >= 1)
      {
        kdebug_trace();
      }

      v7 = atomic_load(&self->_docLoadStatus);
      if (v7 == 2)
      {
        if (HGLogger::getLevel("PVSignPost", v6) >= 1)
        {
          kdebug_trace();
        }

        [(PVMotionEffect *)self buildDropZoneIdMap_NoLock];
        if (HGLogger::getLevel("PVSignPost", v8) >= 1)
        {
          kdebug_trace();
        }

        if (HGLogger::getLevel("PVSignPost", v9) >= 1)
        {
          kdebug_trace();
        }

        [(NSLock *)self->super._inspectablePropertiesLock lock];
        motionComponents = self->_motionComponents;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = *"";
        v16[2] = __43__PVMotionEffect_loadEffectInternal_NoLock__block_invoke;
        v16[3] = &unk_279AA61D0;
        v16[4] = self;
        [(NSMutableArray *)motionComponents enumerateObjectsUsingBlock:v16];
        [(PVMotionEffect *)self applyInspectableProperties_NoLock];
        if (HGLogger::getLevel("PVSignPost", v11) >= 1)
        {
          kdebug_trace();
        }

        if (HGLogger::getLevel("PVSignPost", v12) >= 1)
        {
          kdebug_trace();
        }

        OZXOpenDocumentMedia(*self->_documentInfo);
        OZXIsValidImageSequencePath(*self->_documentInfo);
        if (HGLogger::getLevel("PVSignPost", v13) >= 1)
        {
          kdebug_trace();
        }

        atomic_store(3u, &self->_docLoadStatus);
        v14 = self->_motionComponents;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = *"";
        v15[2] = __43__PVMotionEffect_loadEffectInternal_NoLock__block_invoke_2;
        v15[3] = &unk_279AA61D0;
        v15[4] = self;
        [(NSMutableArray *)v14 enumerateObjectsUsingBlock:v15];
        [(NSLock *)self->super._inspectablePropertiesLock unlock];
      }
    }
  }
}

- (BOOL)isSketch
{
  v2 = [(PVEffect *)self effectID];
  if ([v2 isEqualToString:@"5FCD0612-3FD5-4079-BC2A-20E987BC5B59"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"494B7BCF-0476-4EF7-ACFC-36480997C2A9"];
  }

  return v3;
}

- (void)runEnsuringDocumentReady_NoLock:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsReadyAfterLoad:[(PVMotionEffect *)self loadResources_NoLock]];
  v4[2]();
}

- (void)runEnsuringDocumentReadyAndLockingDocument:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_documentLock lock];
  v6 = MEMORY[0x277D85DD0];
  v7 = *"";
  v8 = __61__PVMotionEffect_runEnsuringDocumentReadyAndLockingDocument___block_invoke;
  v9 = &unk_279AA61F8;
  v5 = v4;
  v10 = self;
  v11 = v5;
  [(PVMotionEffect *)self runEnsuringDocumentReady_NoLock:&v6];
  [(NSLock *)self->_documentLock unlock:v6];
}

- (void)runWithDocument_NoLock:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v4[2](v4, self->_documentInfo);
}

- (void)deleteTemporalInspectableProperties
{
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v3 = objc_opt_new();
  inspectableProperties = self->super._inspectableProperties;
  v6 = MEMORY[0x277D85DD0];
  v7 = *"";
  v8 = __53__PVMotionEffect_deleteTemporalInspectableProperties__block_invoke;
  v9 = &unk_279AA6220;
  v10 = self;
  v5 = v3;
  v11 = v5;
  [(NSMutableDictionary *)inspectableProperties enumerateKeysAndObjectsUsingBlock:&v6];
  if ([v5 count])
  {
    [(NSMutableDictionary *)self->super._inspectableProperties removeObjectsForKeys:v5];
  }
}

void __53__PVMotionEffect_deleteTemporalInspectableProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isTemporalProperty:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v7 = a4;
  v310 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 4);
  v241 = v6;
  *v6 = 0;
  if (![(PVMotionEffect *)self hasBuiltInEnvironment])
  {
    goto LABEL_11;
  }

  v10 = (v7 + 1);
  v11 = v7[1];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = (v7 + 1);
  do
  {
    v13 = *(v11 + 8);
    v14 = v13 >= 2;
    v15 = v13 < 2;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *&v11[8 * v15];
  }

  while (v11);
  v7 = a4;
  if (v12 != v10 && *(v12 + 8) <= 2u)
  {
    PVInputHGNodeMap<unsigned int>::GetNode(a4, 2u, &v283);
  }

  else
  {
LABEL_11:
    PVInputHGNodeMap<unsigned int>::GetNode(v7, 0, &v283);
  }

  if (v283.start.value)
  {
    *v241 = v283.start.value;
  }

  [(PVEffect *)self proxyRenderScale];
  v17 = v16;
  v18 = PVInstructionGraphContext::WorkingColorSpace(*a6.m_Obj);
  v239 = [v18 isRec2020LinearColorSpace];

  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
  timedPropertiesComponent = self->super._timedPropertiesComponent;
  *&v283.start.value = *&a3->var0;
  v283.start.epoch = a3->var3;
  v240 = v19;
  v237 = [(PVEffectTimedPropertiesComponent *)timedPropertiesComponent addTimedPropertiesToDict:v19 time:&v283];
  m_Obj = a6.m_Obj;
  [(NSLock *)self->_documentLock lock];
  v22 = atomic_load(&self->_docLoadStatus);
  if (v22 != 3)
  {
    [(PVMotionEffect *)self assertDocumentStatusIsReadyAfterLoad:[(PVMotionEffect *)self loadResources_NoLock]];
  }

  [(PVMotionEffect *)self assertDocumentStatusIsReady];
  v23 = atomic_load(&self->_docLoadStatus);
  if (v23 != 3)
  {
    v29 = (*(**a6.m_Obj + 40))();
    (*(**a6.m_Obj + 40))();
    v31 = HGRectMake4i(0, 0, v29, v30);
    v33 = v32;
    v34 = HGObject::operator new(0x1A0uLL);
    *&v312.var0 = v31;
    *&v312.var2 = v33;
    HGSolidColor::HGSolidColor(v34, v312);
  }

  [(PVMotionEffectTimelineComponent *)self->_timelineComponent updateSceneDuration_NoLock:self->_documentInfo];
  [(NSLock *)self->super._inspectablePropertiesLock lock];
  v238 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"kPVIgnoreEffectRanges"];
  if (v238 && [v238 count])
  {
    v305 = 0u;
    v304 = 0u;
    v303 = 0u;
    v302 = 0u;
    v24 = v238;
    v25 = [v24 countByEnumeratingWithState:&v302 objects:v309 count:16];
    if (!v25)
    {
      goto LABEL_29;
    }

    v26 = *v303;
LABEL_21:
    v27 = 0;
    while (1)
    {
      if (*v303 != v26)
      {
        objc_enumerationMutation(v24);
      }

      v28 = *(*(&v302 + 1) + 8 * v27);
      memset(&v283, 0, sizeof(v283));
      if (v28)
      {
        [v28 CMTimeRangeValue];
      }

      range = v283;
      time = *a3;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v24 countByEnumeratingWithState:&v302 objects:v309 count:16];
        if (!v25)
        {
LABEL_29:

          m_Obj = a6.m_Obj;
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }

    [(NSLock *)self->super._inspectablePropertiesLock unlock];
    [(NSLock *)self->_documentLock unlock];

    goto LABEL_36;
  }

LABEL_30:
  *&v283.start.value = *&a3->var0;
  v283.start.epoch = a3->var3;
  if (![(PVMotionEffect *)self isVisibleAtTime_NoLock:&v283 timedProperties:v240 defaultProperties:self->super._inspectableProperties])
  {
    [(NSLock *)self->super._inspectablePropertiesLock unlock];
    [(NSLock *)self->_documentLock unlock];
LABEL_36:

    goto LABEL_332;
  }

  if (v237)
  {
    obj = [(NSMutableDictionary *)self->super._inspectableProperties mutableCopy];
    [(NSMutableDictionary *)self->super._inspectableProperties addEntriesFromDictionary:v240];
  }

  else
  {
    obj = 0;
  }

  v223 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"kPVTopLevelOpacityKey"];
  if (v223)
  {
    [v223 doubleValue];
    [(PVMotionEffect *)self setTopLevelOpacity:?];
  }

  v35 = (*(**m_Obj + 40))();
  (*(**m_Obj + 40))();
  v229 = v36;
  v37 = (*(**m_Obj + 48))();
  v38 = (*(**m_Obj + 48))();
  v39 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"swapOutputAspect"];
  v40 = [v39 BOOLValue];
  v220 = v35;
  v41 = v35 * v37;
  v42 = v229 * v38;
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  else
  {
    v43 = v40;
  }

  if (v41 == 0.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"kPVMotionEffectAdditionalTitleScale"];
  v224 = v45 = 1.0;
  if (v224)
  {
    [v224 doubleValue];
    v45 = v46;
  }

  if (v44)
  {
    v47 = v42;
  }

  else
  {
    v47 = v41;
  }

  v48 = v47 * v45;
  if (v44)
  {
    v49 = v41;
  }

  else
  {
    v49 = v42;
  }

  v50 = v49 * v45;
  v51 = v49 * v45 / v48;
  if (v44)
  {
    v52 = v51;
  }

  else
  {
    v52 = 1.0;
  }

  [(PVMotionEffect *)self setEffectOutputAspectWithProperties_NoLock:0 allProperties:self->super._inspectableProperties];
  if (v9 >= 1 && v50 != 0.0 && v48 != 0.0)
  {
    effectOutputAspect = self->_effectOutputAspect;
    if (effectOutputAspect <= 0.0)
    {
      documentInfo = self->_documentInfo;
      LODWORD(v53) = *(documentInfo + 3);
      LODWORD(v54) = *(documentInfo + 4);
      if (vabdd_f64(documentInfo[7] * v53 / v54, v48 / v50) >= 0.0000001)
      {
        [(PVMotionEffect *)self setEffectOutputAspect_NoLock:self->_playableContentMode playableAspect:v48 / v50 playableContentMode:self->_playableAspectRatio];
      }
    }

    else if (vabdd_f64(effectOutputAspect, v35 / v229) >= 0.0000001)
    {
      NSLog(&cfstr_UnexpectedEffe.isa, *&self->_effectOutputAspect, v35 / v229);
    }
  }

  v57 = [(PVMotionEffectTimelineComponent *)self->_timelineComponent isForceRenderAtPosterFrameEnabled:self->super._inspectableProperties];
  memset(&start, 0, sizeof(start));
  timelineComponent = self->_timelineComponent;
  v299 = *&a3->var0;
  var3 = a3->var3;
  if (timelineComponent)
  {
    [(PVMotionEffectTimelineComponent *)timelineComponent timelineTimeFromComponentTime_NoLock:&v299 forcePosterFrame:v57 documentInfo:self->_documentInfo];
  }

  else
  {
    memset(&start, 0, sizeof(start));
  }

  v59 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"PVRestartEffectTime"];
  v60 = v59 == 0;

  if (!v60)
  {
    *&range.start.value = *&a3->var0;
    range.start.epoch = a3->var3;
    [(PVEffect *)self effectRange];
    time = v283.duration;
    CMTimeRangeMake(&v298, &range.start, &time);
    range = v298;
    [(PVEffect *)self setEffectRange:&range];
  }

  v61 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"PVResetScene"];
  v62 = v61 == 0;

  if (!v62)
  {
    OZXResetScene(*self->_documentInfo);
  }

  v63 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"PVDisableObjects"];
  v64 = v63 == 0;

  if (!v64)
  {
    v65 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"PVDisableObjects"];
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    v294 = 0u;
    v66 = v65;
    v67 = [v66 countByEnumeratingWithState:&v294 objects:v308 count:16];
    if (v67)
    {
      v68 = *v295;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v295 != v68)
          {
            objc_enumerationMutation(v66);
          }

          OZXEnableObject(*self->_documentInfo, [*(*(&v294 + 1) + 8 * i) unsignedIntValue], 0);
        }

        v67 = [v66 countByEnumeratingWithState:&v294 objects:v308 count:16];
      }

      while (v67);
    }

    [(NSMutableDictionary *)self->super._inspectableProperties removeObjectForKey:@"PVDisableObjects"];
  }

  v70 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"PVEnvironmentMap"];
  v71 = v70 == 0;

  if (!v71)
  {
    v72 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"PVEnvironmentMap"];
    v73 = v72;
    OZXSetEnvironmentMap(*self->_documentInfo, [v72 CGImage]);
  }

  v293 = 0u;
  v292 = 0u;
  v291 = 0u;
  v290 = 0u;
  v74 = [(NSMutableDictionary *)self->super._inspectableProperties allKeys];
  v75 = [v74 countByEnumeratingWithState:&v290 objects:v307 count:16];
  if (v75)
  {
    v76 = *v291;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v291 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v290 + 1) + 8 * j);
        if ([v78 hasPrefix:@"PVSetEffectAnchor"])
        {
          v79 = [v78 stringByReplacingOccurrencesOfString:@"PVSetEffectAnchor" withString:&stru_2872E16E0];
          v80 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKey:v78];
          OZXForceSetPlaneAnchorUUID(*self->_documentInfo, v79, v80);
        }
      }

      v75 = [v74 countByEnumeratingWithState:&v290 objects:v307 count:16];
    }

    while (v75);
  }

  groupIDToCache = self->_groupIDToCache;
  *&v283.start.value = *&a3->var0;
  v283.start.epoch = a3->var3;
  v82 = [(PVMotionEffect *)self isRenderCachingDisabled_NoLock:&v283];
  if (groupIDToCache)
  {
    v83 = v82;
  }

  else
  {
    v83 = 1;
  }

  if (self->_lastRenderWasHDR != v239)
  {
    self->_cachedRenderDirty = 1;
  }

  if (v83)
  {
    if (!groupIDToCache)
    {
      goto LABEL_110;
    }

    v84 = 0;
  }

  else
  {
    v85 = [(PVMotionEffectTimelineComponent *)self->_timelineComponent isForceRenderAtPosterFrameEnabled:self->super._inspectableProperties];
    inspectableProperties = self->super._inspectableProperties;
    if (v85)
    {
      v87 = [(NSMutableDictionary *)inspectableProperties objectForKeyedSubscript:@"kPVEnablePosterFrameCaching"];
      v84 = [v87 BOOLValue];
    }

    else
    {
      v88 = [(NSMutableDictionary *)inspectableProperties objectForKeyedSubscript:@"kPVEnableLoopedRangeRenderCaching"];
      v84 = [v88 BOOLValue];

      memset(&v283, 0, 24);
      v89 = self->_timelineComponent;
      if (v89)
      {
        [(PVMotionEffectTimelineComponent *)v89 introDuration_NoLock];
      }

      range.start = start;
      time = v283.start;
      if (CMTimeCompare(&range.start, &time) < 0)
      {
        v84 = 0;
      }
    }
  }

  v90 = [MEMORY[0x277CCAE60] valueWithCGSize:{v48, v50}];
  [(PVMotionEffect *)self didSetCacheInvalidatingParameter_NoLock:v90 forKey:@"kPVCachedTextureOutputSize"];
  OZXSetUseRenderCache(*self->_documentInfo, groupIDToCache, v84);
  if (!v84 || self->_cachedRenderDirty)
  {
    OZXClearCachedRender(*self->_documentInfo, groupIDToCache);
  }

  self->_cachedRenderDirty = 0;

LABEL_110:
  if (![(PVMotionEffect *)self isTimeDurationIndefinite])
  {
    memset(&v283, 0, 24);
    v92 = self->_timelineComponent;
    if (v92)
    {
      [(PVMotionEffectTimelineComponent *)v92 timelineLastFrame_NoLock];
    }

    range.start = start;
    time = v283.start;
    if (CMTimeCompare(&range.start, &time) >= 1)
    {
      start = v283.start;
    }
  }

  v233 = fabsf(v17 + -1.0);
  v93 = 1.0;
  if (v50 > 0.0)
  {
    LODWORD(v93) = *(self->_documentInfo + 4);
    v93 = v50 / *&v93;
  }

  v94 = v17;
  if (v233 < 0.00001)
  {
    v94 = 1.0;
  }

  v95 = v94 * v93;
  v289 = 0x3FF0000000000000;
  v286 = 0x3FF0000000000000;
  v283.duration.epoch = 0x3FF0000000000000;
  v283.start.value = 0x3FF0000000000000;
  memset(&v283.start.timescale, 0, 32);
  v284 = 0u;
  v285 = 0u;
  v287 = 0u;
  v288 = 0u;
  if (v94 * v93 != 1.0)
  {
    *&v283.start.value = v94 * v93;
    *&v283.start.timescale = v95 * 0.0;
    *&v283.start.epoch = v95 * 0.0;
    *&v283.duration.value = v95 * 0.0;
  }

  v91.f64[0] = v41 * 0.5;
  v234 = v42 * 0.5;
  v235 = v91;
  if (v95 != -1.0)
  {
    *&v283.duration.timescale = v95 * -0.0;
    *&v283.duration.epoch = -(v94 * v93);
    *&v284 = v95 * -0.0;
    *(&v284 + 1) = v95 * -0.0;
  }

  *&v96 = *&PCMatrix44Tmpl<double>::leftTranslate(&v283, v91, v42 * 0.5, 0.0);
  v282 = 0uLL;
  v97 = [(PVEffect *)self effectType];
  v225 = [v97 isEqualToString:@"effect.video.transition"];

  v98 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKey:@"SelfieEffectUsesCameraFacing"];

  v236 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKey:@"kPVEffectPVARMetadata"];

  v232 = v98;
  v99 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"kPVTransformAnimationKey"];
  *&range.start.value = *&a3->var0;
  range.start.epoch = a3->var3;
  v221 = v99;
  v222 = [PVTransformAnimation getTransformInfoFromAnimation:v99 atTime:&range renderSize:14 contentMode:0 invertY:&time outInfo:v41, v42];
  v100 = a4;
  v278[1] = 0;
  v278[0] = 0;
  v277 = v278;
  v276[1] = 0;
  v276[0] = 0;
  v275 = v276;
  v274[1] = 0;
  v274[0] = 0;
  v273 = v274;
  v272[1] = 0;
  v272[0] = 0;
  v271 = v272;
  PVInputHGNodeMap<unsigned int>::MapKeys(a4, &__p);
  v101 = __p;
  if (__p != v270)
  {
    v102 = v45 * v52;
    v103 = a4 + 32;
    v104 = -v234;
    v218 = vnegq_f64(0);
    while (1)
    {
      v268 = *v101;
      *&v257.var2 = 0;
      *&v257.var0 = 0;
      v105 = *a5;
      PVInputHGNodeMap<unsigned int>::GetNode(v100, v268, &range);
      *&v257.var0 = HGRenderer::GetDOD(v105, range.start.value);
      *&v257.var2 = v106;
      if (range.start.value)
      {
        (*(*range.start.value + 24))(range.start.value);
      }

      v107 = *v103;
      if (!*v103)
      {
        goto LABEL_135;
      }

      v108 = a4 + 32;
      do
      {
        v109 = *(v107 + 8);
        v14 = v109 >= v268;
        v110 = v109 < v268;
        if (v14)
        {
          v108 = v107;
        }

        v107 = *&v107[8 * v110];
      }

      while (v107);
      if (v108 != v103 && *(v108 + 8) <= v268)
      {
        *&v256.var0 = *(v108 + 40);
      }

      else
      {
LABEL_135:
        *&v256.var0 = 0uLL;
      }

      if (v257.var2 == v257.var0)
      {
        goto LABEL_204;
      }

      if (v257.var3 == v257.var1)
      {
        goto LABEL_204;
      }

      v100 = a4;
      if (HGRect::IsNull(&v257))
      {
        goto LABEL_204;
      }

      v100 = a4;
      if (HGRect::IsZero(&v257))
      {
        goto LABEL_204;
      }

      var2 = v257.var2;
      var0 = v257.var0;
      v112 = (*(**a6.m_Obj + 48))();
      v113 = v257.var3;
      var1 = v257.var1;
      v115 = (*(**a6.m_Obj + 48))();
      PVInputHGNodeMap<unsigned int>::GetNode(a4, v268, &v259);
      range.start.value = &v268;
      v116 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v277, &v268);
      v117 = v116[5];
      v118 = v259;
      if (v117 == v259)
      {
        if (v117)
        {
          (*(*v259 + 24))();
        }
      }

      else
      {
        if (v117)
        {
          (*(*v117 + 24))(v117);
          v118 = v259;
        }

        v116[5] = v118;
      }

      PVInputHGNodeMap<unsigned int>::GetPixelTransform(a4, v268, &range);
      *&v259 = &v268;
      v119 = (std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268) + 5);
      if (&range != v119)
      {
        v121 = 0;
        p_range = &range;
        do
        {
          for (k = 0; k != 32; k += 8)
          {
            *(&v119->start.value + k) = *(&p_range->start.value + k);
          }

          ++v121;
          v119 = (v119 + 32);
          p_range = (p_range + 32);
        }

        while (v121 != 4);
      }

      v124 = *(self->_documentInfo + 21);
      if (v124)
      {
        range.start.value = &v268;
        v125 = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v124, &v268) + 8);
        range.start.value = &v268;
        *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v271, &v268) + 8) = v125;
      }

      if (v232)
      {
        break;
      }

      v132 = [(PVEffect *)self conformToInputAspect];
      if ((v132 | v225 & (v268 > 1)) == 1)
      {
        v133 = *v103;
        if (!*v103)
        {
          goto LABEL_174;
        }

        v134 = a4 + 32;
        do
        {
          v135 = *(v133 + 8);
          v14 = v135 >= v268;
          v136 = v135 < v268;
          if (v14)
          {
            v134 = v133;
          }

          v133 = *&v133[8 * v136];
        }

        while (v133);
        if (v134 != v103 && *(v134 + 8) <= v268)
        {
          *&range.start.value = *(v134 + 40);
          v131 = *(v134 + 7);
          v130 = *(v134 + 8);
        }

        else
        {
LABEL_174:
          *&range.start.timescale = 0;
          range.start.value = 0;
          v130 = -1.0;
          v131 = -1.0;
        }

LABEL_175:
        *&v259 = &v268;
        v137 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v275, &v268);
        v138 = *&range.start.value;
        goto LABEL_199;
      }

      range.start.value = &v268;
      v147 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v275, &v268);
      *(v147 + 5) = v282;
      *(v147 + 7) = v220;
      *(v147 + 8) = v229;
LABEL_200:
      if (v102 != 1.0)
      {
        range.start.value = &v268;
        v156 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268);
        v157.f64[0] = -v235.f64[0];
        PCMatrix44Tmpl<double>::leftTranslate((v156 + 5), v157, v104, 0.0);
        range.start.value = &v268;
        v158 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268);
        PCMatrix44Tmpl<double>::leftScale((v158 + 5), v102, v102, 1.0);
        range.start.value = &v268;
        v159 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268);
        PCMatrix44Tmpl<double>::leftTranslate((v159 + 5), v235, v234, 0.0);
      }

      v100 = a4;
      if (v222)
      {
        range.start.value = &v268;
        v160 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268);
        v161.f64[0] = -v235.f64[0];
        PCMatrix44Tmpl<double>::leftTranslate((v160 + 5), v161, v104, 0.0);
        range.start.value = &v268;
        v162 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268);
        PCMatrix44Tmpl<double>::leftScale((v162 + 5), v281, v281, 1.0);
        range.start.value = &v268;
        v163 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268);
        v164.f64[0] = v235.f64[0] + v280.f64[0];
        PCMatrix44Tmpl<double>::leftTranslate((v163 + 5), v164, v234 + v280.f64[1], 0.0);
        v100 = a4;
      }

LABEL_204:
      if (++v101 == v270)
      {
        goto LABEL_209;
      }
    }

    if (v268 <= 1)
    {
      v126 = *v103;
      if (!*v103)
      {
        goto LABEL_164;
      }

      v127 = a4 + 32;
      do
      {
        v128 = *(v126 + 8);
        v14 = v128 >= v268;
        v129 = v128 < v268;
        if (v14)
        {
          v127 = v126;
        }

        v126 = *&v126[8 * v129];
      }

      while (v126);
      if (v127 != v103 && *(v127 + 8) <= v268)
      {
        *&range.start.value = *(v127 + 40);
        v131 = *(v127 + 7);
        v130 = *(v127 + 8);
      }

      else
      {
LABEL_164:
        *&range.start.timescale = 0;
        range.start.value = 0;
        v130 = -1.0;
        v131 = -1.0;
      }

      goto LABEL_175;
    }

    v139 = ((var2 - var0) / v112);
    v140 = ((v113 - var1) / v115);
    v120.f64[0] = v139 * 0.5;
    v141 = v140 * 0.5;
    if (v268 == 2)
    {
      v267 = 0x3FF0000000000000;
      v264 = 0x3FF0000000000000;
      range.start.value = 0x3FF0000000000000;
      memset(&range.start.timescale, 0, 24);
      v262 = 0;
      v263 = 0;
      v265 = 0u;
      v266 = 0u;
      *&range.duration.timescale = xmmword_260342D20;
      v261 = v218;
      PCMatrix44Tmpl<double>::leftTranslate(&range, v120, v141, 0.0);
      *&v259 = &v268;
      v142 = (std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268) + 5);
      if (&range != v142)
      {
        v143 = 0;
        v144 = &range;
        do
        {
          for (m = 0; m != 32; m += 8)
          {
            *(&v142->start.value + m) = *(&v144->start.value + m);
          }

          ++v143;
          v142 = (v142 + 32);
          v144 = (v144 + 32);
        }

        while (v143 != 4);
      }

      *&v259 = &v268;
      v146 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v275, &v268);
      *(v146 + 5) = *&v256.var0;
      *(v146 + 7) = v139;
      *(v146 + 8) = v140;
      goto LABEL_200;
    }

    v267 = 0x3FF0000000000000;
    v264 = 0x3FF0000000000000;
    range.start.value = 0x3FF0000000000000;
    memset(&range.start.timescale, 0, 24);
    v262 = 0;
    v263 = 0;
    v265 = 0u;
    v266 = 0u;
    *&range.duration.timescale = xmmword_260342D20;
    v261 = v218;
    PCMatrix44Tmpl<double>::leftTranslate(&range, v120, v141, 0.0);
    *&v259 = &v268;
    v148 = (std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v273, &v268) + 5);
    if (&range != v148)
    {
      v149 = 0;
      v150 = &range;
      do
      {
        for (n = 0; n != 32; n += 8)
        {
          *(&v148->start.value + n) = *(&v150->start.value + n);
        }

        ++v149;
        v148 = (v148 + 32);
        v150 = (v150 + 32);
      }

      while (v149 != 4);
    }

    v152 = *v103;
    if (!*v103)
    {
      goto LABEL_197;
    }

    v153 = a4 + 32;
    do
    {
      v154 = *(v152 + 8);
      v14 = v154 >= v268;
      v155 = v154 < v268;
      if (v14)
      {
        v153 = v152;
      }

      v152 = *&v152[8 * v155];
    }

    while (v152);
    if (v153 != v103 && *(v153 + 8) <= v268)
    {
      v259 = *(v153 + 40);
      v131 = *(v153 + 7);
      v130 = *(v153 + 8);
    }

    else
    {
LABEL_197:
      v259 = 0uLL;
      v130 = -1.0;
      v131 = -1.0;
    }

    v306 = &v268;
    v137 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v275, &v268);
    v138 = v259;
LABEL_199:
    *(v137 + 5) = v138;
    *(v137 + 7) = v131;
    *(v137 + 8) = v130;
    goto LABEL_200;
  }

LABEL_209:
  if ((*(**a6.m_Obj + 64))())
  {
    v165 = 2;
  }

  else
  {
    v165 = 0;
  }

  if ((*(**a6.m_Obj + 64))())
  {
    +[PVEnvironment PVExportPrefilterValue];
    if (v166 == 0.0)
    {
      v165 = 1;
    }
  }

  if (((*(**a6.m_Obj + 64))() & 1) == 0 && [(PVMotionEffect *)self isSketch])
  {
    v165 = 1;
  }

  v219 = +[PVHostApplicationDelegateHandler sharedInstance];
  *&v257.var2 = 0;
  *&v257.var0 = 0;
  v258 = 0;
  v167 = PVInstructionGraphContext::WorkingColorSpace(*a6.m_Obj);
  PVImagePropertiesForColorSpace(v167, 0, &v257);

  v168 = v258;
  v169 = v257.var1;
  (*(**a6.m_Obj + 48))();
  if (v233 >= 0.00001)
  {
    v170 = v17 * v170;
  }

  *&range.start.value = v170;
  *(&range.start.value + 1) = v170;
  *&v171 = v95;
  range.start.timescale = v171;
  LODWORD(v261.f64[0]) = v165;
  *(v261.f64 + 4) = v169 == 16;
  v262 = v168;
  v263 = v168;
  LOBYTE(v264) = v239;
  HIDWORD(v264) = [(PVMotionEffect *)self stillImageInverseToneMapOperator:self->super._inspectableProperties];
  LOBYTE(v265) = 0;
  [(PVMotionEffect *)self outputROI_NoLock:self->_documentInfo scale:fabsf(*&range.start.timescale)];
  range.start.epoch = v172;
  range.duration.value = v173;
  *&range.duration.timescale = v174;
  range.duration.epoch = v175;
  v176 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"splitACropRect"];
  v177 = v176;
  v226 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"splitBCropRect"];
  v228 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"pipCropRect"];
  v230 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"pipScaleFactor"];
  (*(**a6.m_Obj + 48))();
  v178 = *(a4 + 13);
  if (!v178)
  {
    goto LABEL_227;
  }

  v179 = a4 + 104;
  do
  {
    if (v178[7])
    {
      v179 = v178;
    }

    v178 = *&v178[2 * (v178[7] == 0)];
  }

  while (v178);
  if (v179 != (a4 + 104) && v179[7] <= 1u)
  {
    v180 = v179[8] == 0;
  }

  else
  {
LABEL_227:
    v180 = 1;
  }

  LOBYTE(v217) = v239;
  [(PVMotionEffect *)self adjustCutawayInputs:&v277 splitCropRectA:v176 splitCropRectB:v226 pipRect:v228 pipScaleFactor:v230 renderScale:v180 pipNeedsCrop:v217 isHDRRender:v168 workingColorSpace:?];
  v181 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"inputANeedsBackground"];
  v182 = v232;
  v183 = [v181 BOOLValue];

  v184 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"inputBNeedsBackground"];
  v185 = [v184 BOOLValue];

  v186 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"slideACropRect"];
  v243 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"slideBCropRect"];
  (*(**a6.m_Obj + 48))();
  [(PVMotionEffect *)self adjustTransitionInputs:&v277 renderScale:a5 renderer:v183 inputANeedsBackground:v185 inputBNeedsBackground:v186 slideCropRectA:v243 slideCropRectB:?];
  [(PVMotionEffect *)self adjustPosition:self->super._inspectableProperties];
  v187 = self->super._inspectableProperties;
  v256 = *a3;
  [(PVMotionEffect *)self updateSketchAnimation:v187 defaultProperties:0 time:&v256];
  [(PVMotionEffect *)self adjustCamera:self->super._inspectableProperties];
  v188 = self->super._inspectableProperties;
  v256 = start;
  [(PVMotionEffect *)self applyARData:v188 time:&v256 renderParams:&range];
  [(PVMotionEffect *)self deleteTemporalInspectableProperties];
  motionComponents = self->_motionComponents;
  v253[0] = MEMORY[0x277D85DD0];
  v253[1] = *"";
  v253[2] = __58__PVMotionEffect_hgNodeForTime_inputs_renderer_igContext___block_invoke;
  v253[3] = &unk_279AA6248;
  v253[4] = self;
  v254 = *&a3->var0;
  v255 = a3->var3;
  [(NSMutableArray *)motionComponents enumerateObjectsUsingBlock:v253];
  if (v237)
  {
    objc_storeStrong(&self->super._inspectableProperties, obj);
  }

  v190 = [(PVMotionEffect *)self getOSFAOption:self->super._inspectableProperties];
  {
    [PVMotionEffect hgNodeForTime:inputs:renderer:igContext:]::rigCheckboxName = 0;
    PCString::set(&[PVMotionEffect hgNodeForTime:inputs:renderer:igContext:]::rigCheckboxName, @"IsHDR");
    __cxa_atexit(PCString::~PCString, &[PVMotionEffect hgNodeForTime:inputs:renderer:igContext:]::rigCheckboxName, &dword_25F8F0000);
    v182 = v232;
  }

  v191 = 0.0;
  if (v239)
  {
    v191 = 1.0;
  }

  OZXSetRigValueWithName(*self->_documentInfo, &[PVMotionEffect hgNodeForTime:inputs:renderer:igContext:]::rigCheckboxName, v191);
  v192 = [(NSLock *)self->super._inspectablePropertiesLock unlock];
  v193 = v236;
  if (v239)
  {
    v194 = v277;
    if (v277 != v278)
    {
      do
      {
        if (v182 && *(v194 + 8) == 1 || v193 && (*(v194 + 8) - 1) < 2)
        {
          goto LABEL_263;
        }

        v192 = v194[5];
        if (v190)
        {
          if (v192)
          {
            *&v259 = v194[5];
            (*(*v192 + 16))(v192);
            FxApplySimpleToneCurve(&v259, &v256, 0.7, 12.0);
            v195 = v256.var0;
            if (v259 == v256.var0)
            {
              if (v259)
              {
                (*(*v256.var0 + 24))(v256.var0);
              }
            }

            else
            {
              if (v259)
              {
                (*(*v259 + 24))();
                v195 = v256.var0;
              }

              *&v259 = v195;
            }

            if (v190 == 2)
            {
              FxApplyColorConform(&v259, &kPCNCLC_Rec2020Linear, 1, &kPCNCLC_Rec709, 1, &v256.var0);
              v196 = v256.var0;
              if (v259 == v256.var0)
              {
                if (v259)
                {
                  (*(*v256.var0 + 24))(v256.var0);
                }
              }

              else
              {
                if (v259)
                {
                  (*(*v259 + 24))();
                  v196 = v256.var0;
                }

                *&v259 = v196;
              }
            }

            goto LABEL_256;
          }
        }

        else
        {
          *&v259 = v194[5];
          if (v192)
          {
            (*(*v192 + 16))(v192);
LABEL_256:
            v192 = v194[5];
            v197 = v259;
            if (v192 == v259)
            {
              if (v192)
              {
                v192 = (*(*v259 + 24))(v259);
              }
            }

            else
            {
              if (v192)
              {
                v192 = (*(*v192 + 24))(v192);
                v197 = v259;
              }

              v194[5] = v197;
            }
          }
        }

        v193 = v236;
LABEL_263:
        v198 = v194[1];
        if (v198)
        {
          do
          {
            v199 = v198;
            v198 = *v198;
          }

          while (v198);
        }

        else
        {
          do
          {
            v199 = v194[2];
            v200 = *v199 == v194;
            v194 = v199;
          }

          while (!v200);
        }

        v194 = v199;
      }

      while (v199 != v278);
    }

    if (v190 == 2)
    {
      v262 = PCColorSpaceCache::cgRec709(v192);
      v263 = v262;
      LOBYTE(v264) = 0;
      HIDWORD(v264) = 0;
    }
  }

  v201 = self->_documentInfo;
  *&v259 = 0;
  v202 = *v201;
  v256 = start;
  std::map<unsigned int,HGRef<HGNode>>::map[abi:ne200100](v252, &v277);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](v251, &v271);
  std::map<unsigned int,PCRect<double>>::map[abi:ne200100](v250, &v275);
  std::map<unsigned int,PCMatrix44Tmpl<double>>::map[abi:ne200100](v249, &v273);
  v203 = OZXGetFrameAsRenderGraph(v202, &v256, v252, v251, v250, v249, &range, &v283, 0, *a5, &v259);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v249, v249[1]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v250, v250[1]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v251, v251[1]);
  std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(v252, v252[1]);
  v205 = v259;
  if (!v203)
  {
    v206 = *v241;
    if (*v241 == v259)
    {
      v205 = *v241;
    }

    else
    {
      if (v206)
      {
        (*(*v206 + 24))(v206);
        v205 = v259;
      }

      *v241 = v205;
      if (v205)
      {
        (*(*v205 + 16))(v205);
      }
    }

    if (v239)
    {
      if (v190)
      {
        if (v205)
        {
          v306 = v205;
          (*(*v205 + 16))(v205);
          if (v190 == 2)
          {
            FxApplyColorConform(&v306, &kPCNCLC_Rec709, 1, &kPCNCLC_Rec2020Linear, 1, &v256.var0);
            v207 = v256.var0;
            if (v306 == v256.var0)
            {
              if (v306)
              {
                (*(*v256.var0 + 24))(v256.var0);
              }
            }

            else
            {
              if (v306)
              {
                (*(*v306 + 24))();
                v207 = v256.var0;
              }

              v306 = v207;
            }
          }

          FxApplyInverseSimpleToneCurve(&v306, &v256, 0.7, 12.0);
          v208 = v256.var0;
          if (v306 == v256.var0)
          {
            if (v306)
            {
              (*(*v256.var0 + 24))(v256.var0);
            }
          }

          else
          {
            if (v306)
            {
              (*(*v306 + 24))();
              v208 = v256.var0;
            }

            v306 = v208;
          }
        }

        else
        {
          v306 = 0;
        }
      }

      else
      {
        v306 = v205;
        if (v205)
        {
          (*(*v205 + 16))(v205);
        }
      }

      v209 = v306;
      if (v205 == v306)
      {
        if (v205)
        {
          (*(*v306 + 24))();
        }
      }

      else
      {
        if (v205)
        {
          (*(*v205 + 24))(v205);
          v209 = v306;
        }

        *v241 = v209;
      }
    }

    v204.n128_f32[0] = v233;
    if (v233 >= 0.00001)
    {
      v210 = *v241;
      v248 = v210;
      if (v210)
      {
        (*(*v210 + 16))(v210, v233);
      }

      v211.f64[0] = v235.f64[0];
      v211.f64[1] = v234;
      HGXFormForScaleAroundPoint(&v248, &v256, v211, 1.0 / v17, 0);
      v212 = v256.var0;
      if (v210 == v256.var0)
      {
        if (v210)
        {
          (*(*v256.var0 + 24))();
        }
      }

      else
      {
        if (v210)
        {
          (*(*v210 + 24))(v210);
          v212 = v256.var0;
        }

        *v241 = v212;
        v256.var0 = 0;
      }

      if (v248)
      {
        (*(*v248 + 24))(v248);
      }
    }

    if (v222)
    {
      v213 = *v241;
      v247 = v213;
      if (v213)
      {
        (*(*v213 + 16))(v213, v204);
      }

      v214.f64[0] = v235.f64[0];
      v214.f64[1] = v234;
      HGXFormForScaleAroundPoint(&v247, &v256, v214, v281, v280);
      v215 = v256.var0;
      if (v213 == v256.var0)
      {
        if (v213)
        {
          (*(*v256.var0 + 24))();
        }
      }

      else
      {
        if (v213)
        {
          (*(*v213 + 24))(v213);
          v215 = v256.var0;
        }

        *v241 = v215;
        v256.var0 = 0;
      }

      if (v247)
      {
        (*(*v247 + 24))(v247);
      }
    }

    self->_lastRenderWasHDR = v239;
    v205 = v259;
  }

  if (v205)
  {
    (*(*v205 + 24))(v205);
  }

  if (__p)
  {
    v270 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v271, v272[0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v273, v274[0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v275, v276[0]);
  std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(&v277, v278[0]);

  [(NSLock *)self->_documentLock unlock];
LABEL_332:

  return v216;
}

uint64_t __58__PVMotionEffect_hgNodeForTime_inputs_renderer_igContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 80);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  return [a2 motionEffect:v2 willRender:v3 properties:v4 time:&v6];
}

- (void)adjustCutawayBorder:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = [v4 objectForKeyedSubscript:@"splitACropRect"];
  v6 = v5;
  if (v5)
  {
    [v5 CGRectValue];
    v8 = v7;
    v10 = v9;
    v21.var0 = 0;
    PCString::set(&v21, @"Orientation");
    v11 = 0.0;
    if (v8 > v10)
    {
      v11 = 1.0;
    }

    OZXSetRigValueWithName(*self->_documentInfo, &v21, v11);
    PCString::~PCString(&v21);
    v12 = 0;
  }

  else
  {
    v13 = [v4 objectForKeyedSubscript:@"pipRect"];
    v12 = v13;
    if (v13)
    {
      [v13 CGRectValue];
      documentInfo = self->_documentInfo;
      LODWORD(v15) = *(documentInfo + 3);
      LODWORD(v16) = *(documentInfo + 4);
      OZXSetBorderScaleAndTranslation(*documentInfo, v19, v20, (v18 + v19 * 0.5 + -0.5) * v15, (0.5 - (v17 + v20 * 0.5)) * v16);
    }
  }
}

- (void)adjustCutawayFadeAnimation:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = [v4 objectForKeyedSubscript:@"pipFadeIn"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pipFadeOut"];
    if (v6)
    {
      memset(&v20, 0, sizeof(v20));
      [v5 floatValue];
      CMTimeMakeWithSeconds(&v20, v7, 30);
      memset(&v19, 0, sizeof(v19));
      [v6 floatValue];
      CMTimeMakeWithSeconds(&v19, v8, 30);
      v17 = *MEMORY[0x277CC08F0];
      *v18 = *(MEMORY[0x277CC08F0] + 16);
      [(PVEffect *)self effectRange];
      *&v18[8] = *&v16[8];
      *&v18[24] = *&v16[24];
      memset(&v14, 0, sizeof(v14));
      timelineComponent = self->_timelineComponent;
      v13 = v20;
      *v16 = *v18;
      *&v16[16] = *&v18[16];
      v15 = v17;
      if (timelineComponent)
      {
        [(PVMotionEffectTimelineComponent *)timelineComponent timelineTimeFromComponentTime_NoLock:&v13 editRange:&v15 documentInfo:self->_documentInfo];
        timelineComponent = self->_timelineComponent;
      }

      else
      {
        memset(&v14, 0, sizeof(v14));
      }

      memset(&v12, 0, sizeof(v12));
      v11 = v19;
      v10[0] = v17;
      v10[1] = *v18;
      v10[2] = *&v18[16];
      if (timelineComponent)
      {
        [(PVMotionEffectTimelineComponent *)timelineComponent timelineTimeFromComponentTime_NoLock:&v11 editRange:v10 documentInfo:self->_documentInfo];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      OZXSetCutawayFadeInOut(*self->_documentInfo, &v14, &v12);
    }
  }
}

- (void)adjustCutawayInputs:(void *)a3 splitCropRectA:(id)a4 splitCropRectB:(id)a5 pipRect:(id)a6 pipScaleFactor:(id)a7 renderScale:(float)a8 pipNeedsCrop:(BOOL)a9 isHDRRender:(BOOL)a10 workingColorSpace:(CGColorSpace *)a11
{
  v11 = a9;
  v18 = a4;
  v19 = a5;
  v98 = a6;
  v97 = a7;
  LODWORD(v99) = 0;
  v100 = &v99;
  v20 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v99);
  v21 = v20[5];
  if (v21)
  {
    (*(*v21 + 16))(v20[5]);
  }

  LODWORD(v99) = 1;
  v100 = &v99;
  v22 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v99);
  v23 = v22[5];
  if (v23)
  {
    (*(*v23 + 16))(v22[5]);
  }

  v24 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"pipNeedsBackground"];
  v25 = [v24 BOOLValue];

  v26 = v18;
  v27 = v26;
  if (v26)
  {
    [v26 CGRectValue];
    x = v102.origin.x;
    y = v102.origin.y;
    width = v102.size.width;
    height = v102.size.height;
    MinX = CGRectGetMinX(v102);
    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    MaxX = CGRectGetMaxX(v103);
    v104.origin.x = x;
    v104.origin.y = y;
    v104.size.width = width;
    v104.size.height = height;
    MinY = CGRectGetMinY(v104);
    v105.origin.x = x;
    v105.origin.y = y;
    v105.size.width = width;
    v105.size.height = height;
    MaxY = CGRectGetMaxY(v105);
    v36 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v36);
    v37 = MinX;
    v38 = MaxX;
    v39 = MaxY;
    v40 = v39 * a8;
    v41 = v38 * a8;
    v42 = MinY;
    v44 = HGRectMake4f(v43, v37 * a8, v42 * a8, v41, v40);
    (*(*v36 + 96))(v36, 0, v44, SHIDWORD(v44), v45, v46);
    (*(*v36 + 120))(v36, 0, v21);
    LODWORD(v99) = 0;
    v100 = &v99;
    v47 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v99);
    v48 = v47[5];
    if (v48 != v36)
    {
      if (v48)
      {
        (*(*v48 + 24))(v48);
      }

      v47[5] = v36;
      (*(*v36 + 16))(v36);
    }

    v49 = v19;

    if (v49)
    {
      [v49 CGRectValue];
      v50 = v106.origin.x;
      v51 = v106.origin.y;
      v52 = v106.size.width;
      v53 = v106.size.height;
      v54 = CGRectGetMinX(v106);
      v107.origin.x = v50;
      v107.origin.y = v51;
      v107.size.width = v52;
      v107.size.height = v53;
      v55 = CGRectGetMaxX(v107);
      v108.origin.x = v50;
      v108.origin.y = v51;
      v108.size.width = v52;
      v108.size.height = v53;
      v56 = CGRectGetMinY(v108);
      v109.origin.x = v50;
      v109.origin.y = v51;
      v109.size.width = v52;
      v109.size.height = v53;
      v57 = CGRectGetMaxY(v109);
      v58 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v58);
      v59 = v54;
      v60 = v55;
      v61 = v57;
      v62 = v61 * a8;
      v63 = v60 * a8;
      v64 = v56;
      v66 = HGRectMake4f(v65, v59 * a8, v64 * a8, v63, v62);
      (*(*v58 + 96))(v58, 0, v66, SHIDWORD(v66), v67, v68);
      (*(*v58 + 120))(v58, 0, v23);
      LODWORD(v99) = 1;
      v100 = &v99;
      v69 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v99);
      v70 = v69[5];
      if (v70 != v58)
      {
        if (v70)
        {
          (*(*v70 + 24))(v70);
        }

        v69[5] = v58;
        (*(*v58 + 16))(v58);
      }

      (*(*v58 + 24))(v58);
    }

    (*(*v36 + 24))(v36);
  }

  else
  {
    if (v98)
    {
      if ((v25 & 1) != 0 || ([v97 doubleValue], v88 > 1.0) || v11)
      {
        [v98 CGRectValue];
        v72 = v71 * a8;
        v74 = v73 * a8;
        v76 = v75 * v72 / v71;
        v78 = v77 * v74 / v73;
        v79 = v72 + v76;
        v80 = v74 + v78;
        if (v25)
        {
          LODWORD(v99) = 0;
          v100 = &v99;
          v81 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v99);
          v83 = v81[5];
          if (v83)
          {
            (*(*v83 + 16))(v81[5]);
          }

          v84 = HGRectMake4f(v82, v76, v78, v79, v80);
          v86 = v85;
          v87 = HGObject::operator new(0x1A0uLL);
          *&v101.var0 = v84;
          *&v101.var2 = v86;
          HGSolidColor::HGSolidColor(v87, v101);
        }

        [v97 doubleValue];
        if (v89 > 1.0 || v11)
        {
          v90 = HGObject::operator new(0x1A0uLL);
          HGCrop::HGCrop(v90);
          v92 = HGRectMake4f(v91, v76, v78, v79, v80);
          (*(*v90 + 96))(v90, 0, v92, SHIDWORD(v92), v93, v94);
          (*(*v90 + 120))(v90, 0, v23);
          LODWORD(v99) = 1;
          v100 = &v99;
          v95 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v99);
          v96 = v95[5];
          if (v96 != v90)
          {
            if (v96)
            {
              (*(*v96 + 24))(v96);
            }

            v95[5] = v90;
            (*(*v90 + 16))(v90);
          }

          (*(*v90 + 24))(v90);
        }
      }
    }

    v49 = 0;
  }

  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  if (v21)
  {
    (*(*v21 + 24))(v21);
  }
}

- (HGRect)makeCropRectForDOD:(HGRect)a3 renderRect:(CGRect)a4 renderScale:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  var2 = a3.var2;
  var0 = a3.var0;
  var1 = a3.var1;
  var3 = a3.var3;
  v14 = 0;
  v15 = 0;
  MinX = CGRectGetMinX(a4);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MaxX = CGRectGetMaxX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MinY = CGRectGetMinY(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MaxY = CGRectGetMaxY(v32);
  v21 = MinY * a5;
  v22 = MaxY * a5;
  if ((var0 - (MinX * a5)) > 2.0 || (var2 - (MaxX * a5)) > 2.0 || (var1 - v21) > 2.0 || (var3 - v22) > 2.0)
  {
    v14 = HGRectMake4f(v19, MinX * a5, v21, MaxX * a5, v22);
    v15 = v26;
  }

  v27 = v14;
  v28 = v15;
  result.var2 = v28;
  result.var3 = HIDWORD(v28);
  result.var0 = v27;
  result.var1 = HIDWORD(v27);
  return result;
}

- (void)adjustTransitionInputs:(void *)a3 renderScale:(float)a4 renderer:(const void *)a5 inputANeedsBackground:(BOOL)a6 inputBNeedsBackground:(BOOL)a7 slideCropRectA:(id)a8 slideCropRectB:(id)a9
{
  v10 = a7;
  v11 = a6;
  v16 = a8;
  v17 = a9;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  if (v11)
  {
    LODWORD(v75) = 0;
    *&v74.var0 = &v75;
    v18 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v75);
    v21 = v18[5];
    if (v21)
    {
      v19 = (*(*v21 + 16))(v18[5]);
    }

    documentInfo = self->_documentInfo;
    v19.n128_u32[0] = documentInfo[3];
    LODWORD(v20) = documentInfo[4];
    v23 = HGRectMake4i(0, 0, (a4 * v19.n128_u64[0]), (a4 * v20));
    v25 = v24;
    v26 = HGObject::operator new(0x1A0uLL);
    *&v76.var0 = v23;
    *&v76.var2 = v25;
    HGSolidColor::HGSolidColor(v26, v76);
  }

  if (v10)
  {
    LODWORD(v75) = 1;
    *&v74.var0 = &v75;
    v27 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v75);
    v30 = v27[5];
    if (v30)
    {
      v28 = (*(*v30 + 16))(v27[5]);
    }

    v31 = self->_documentInfo;
    v28.n128_u32[0] = v31[3];
    LODWORD(v29) = v31[4];
    v32 = HGRectMake4i(0, 0, (a4 * v28.n128_u64[0]), (a4 * v29));
    v34 = v33;
    v35 = HGObject::operator new(0x1A0uLL);
    *&v77.var0 = v32;
    *&v77.var2 = v34;
    HGSolidColor::HGSolidColor(v35, v77);
  }

  v36 = v16;
  v37 = v36;
  if (v36)
  {
    [v36 CGRectValue];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LODWORD(v75) = 0;
    *&v74.var0 = &v75;
    v46 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v75);
    v47 = v46[5];
    if (v47)
    {
      (*(*v47 + 16))(v46[5]);
    }

    DOD = HGRenderer::GetDOD(*a5, v47);
    *&v49 = a4;
    *&v74.var0 = [(PVMotionEffect *)self makeCropRectForDOD:DOD renderRect:v50 renderScale:v39, v41, v43, v45, v49];
    *&v74.var2 = v51;
    if (!HGRect::IsZero(&v74))
    {
      v52 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v52);
      (*(*v52 + 96))(v52, 0, v74.var0, v74.var1, v74.var2, v74.var3);
      (*(*v52 + 120))(v52, 0, v47);
      v73 = 0;
      v75 = &v73;
      v53 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v73);
      v54 = v53[5];
      if (v54 != v52)
      {
        if (v54)
        {
          (*(*v54 + 24))(v54);
        }

        v53[5] = v52;
        (*(*v52 + 16))(v52);
      }

      (*(*v52 + 24))(v52);
    }

    if (v47)
    {
      (*(*v47 + 24))(v47);
    }
  }

  v55 = v17;

  if (v55)
  {
    [v55 CGRectValue];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    LODWORD(v75) = 1;
    *&v74.var0 = &v75;
    v64 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v75);
    v65 = v64[5];
    if (v65)
    {
      (*(*v65 + 16))(v64[5]);
    }

    v66 = HGRenderer::GetDOD(*a5, v65);
    *&v67 = a4;
    *&v74.var0 = [(PVMotionEffect *)self makeCropRectForDOD:v66 renderRect:v68 renderScale:v57, v59, v61, v63, v67];
    *&v74.var2 = v69;
    if (!HGRect::IsZero(&v74))
    {
      v70 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v70);
      (*(*v70 + 96))(v70, 0, v74.var0, v74.var1, v74.var2, v74.var3);
      (*(*v70 + 120))(v70, 0, v65);
      v73 = 1;
      v75 = &v73;
      v71 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, &v73);
      v72 = v71[5];
      if (v72 != v70)
      {
        if (v72)
        {
          (*(*v72 + 24))(v72);
        }

        v71[5] = v70;
        (*(*v70 + 16))(v70);
      }

      (*(*v70 + 24))(v70);
    }

    if (v65)
    {
      (*(*v65 + 24))(v65);
    }
  }
}

- (void)adjustKenBurnsAnimation:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = [v4 objectForKeyedSubscript:@"kenBurnsStartXForm"];
  v6 = [v4 objectForKeyedSubscript:@"kenBurnsEndXForm"];
  if (v5 | v6)
  {
    v22 = 0;
    if (!OZXGetDropZone(*self->_documentInfo, 0, &v22) && v22 != 0)
    {
      if (v5)
      {
        CGAffineTransformFromString(&v21, v5);
      }

      else
      {
        v8 = *(MEMORY[0x277CBF2C0] + 16);
        *&v21.a = *MEMORY[0x277CBF2C0];
        *&v21.c = v8;
        *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
      }

      v9 = *&v21.a;
      v10 = *&v21.c;
      v11 = *&v21.tx;
      if (v6)
      {
        CGAffineTransformFromString(&v21, v6);
      }

      else
      {
        v12 = *(MEMORY[0x277CBF2C0] + 16);
        *&v21.a = *MEMORY[0x277CBF2C0];
        *&v21.c = v12;
        *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
      }

      v13 = *&v21.tx;
      v14 = sqrt(*&v9 * *&v9 + *&v10 * *&v10);
      v15 = sqrt(*(&v9 + 1) * *(&v9 + 1) + *(&v10 + 1) * *(&v10 + 1));
      v16 = sqrt(v21.a * v21.a + v21.c * v21.c);
      v17 = sqrt(v21.b * v21.b + v21.d * v21.d);
      OZXSetDropZoneScaleAnimation(*self->_documentInfo, v22, v14, v15, v16, v17);
      documentInfo = self->_documentInfo;
      LODWORD(v19) = documentInfo[3];
      LODWORD(v20) = documentInfo[4];
      OZXSetDropZoneTranslationAnimation(*documentInfo, v22, *&v11 * v19, *(&v11 + 1) * v20, *&v13 * v19, *(&v13 + 1) * v20);
    }
  }
}

- (void)setMaskPoints:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v18 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v4 = [v18 objectForKeyedSubscript:@"Mask Data"];
  v5 = v4;
  if (v4 && [v4 count] >= 3)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v28 + 1) + 8 * i) CGPointValue];
          documentInfo = self->_documentInfo;
          LODWORD(v12) = documentInfo[3];
          LODWORD(v13) = documentInfo[4];
          v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{(v15 + -0.5) * v12, (0.5 - v14) * v13}];
          [v6 addObject:v16];
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    PCColor::PCColor(&v27);
    LOWORD(v23) = 257;
    BYTE2(v23) = 0;
    v24 = 0;
    v17 = *self->_documentInfo;
    v20 = v25;
    v19 = v23;
    v21 = v26;
    v22 = v27;
    if (v27.var1._obj)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v27.var1._obj);
    }

    OZXSetShapePoints(v17, v6, 1, &v19);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v22.var1._obj);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v27.var1._obj);
  }
}

- (void)setSketchStrokes:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v29 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v4 = [v29 objectForKeyedSubscript:@"SketchColor"];
  v5 = v4;
  v45 = 0.0;
  v46 = 0.0;
  v44 = 0.0;
  if (v4)
  {
    [v4 getRed:&v46 green:&v45 blue:&v44 alpha:0];
  }

  v28 = [v29 objectForKeyedSubscript:@"SketchData"];
  if (v28 && [v28 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = v28;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v8)
    {
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v40 + 1) + 8 * i) CGPointValue];
          documentInfo = self->_documentInfo;
          LODWORD(v12) = documentInfo[3];
          LODWORD(v13) = documentInfo[4];
          v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{(v15 + -0.5) * v12, (0.5 - v14) * v13}];
          [v6 addObject:v16];
        }

        v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v8);
    }

    PCColor::PCColor(&v39);
    LOWORD(v36) = 0;
    BYTE2(v36) = 1;
    HIDWORD(v36) = 1;
    v17 = [v29 objectForKeyedSubscript:@"Sketch Write On"];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      v37 = 1;
    }

    if (v5)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v21 = v46;
      v22 = v45;
      v23 = v44;
      PCColor::PCColor(&v35, v21, v22, v23, 1.0, DeviceRGB);
      CGColorSpaceRelease(DeviceRGB);
      *&v39.var0.var0 = *&v35.var0.var0;
      *&v39.var0.var1[1] = *&v35.var0.var1[1];
      *&v39.var0.var1[3] = *&v35.var0.var1[3];
      PCCFRef<CGColorSpace *>::operator=(&v39.var1._obj, &v35.var1._obj);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v35.var1._obj);
    }

    else
    {
      v24 = PCColor::BLACK(v19);
      v25 = *v24;
      v26 = *(v24 + 1);
      *&v39.var0.var1[3] = *(v24 + 2);
      *&v39.var0.var1[1] = v26;
      *&v39.var0.var0 = v25;
      PCCFRef<CGColorSpace *>::operator=(&v39.var1._obj, v24 + 6);
    }

    v38 = 10;
    v27 = *self->_documentInfo;
    v32 = v37;
    v31 = v36;
    v33 = 10;
    v34 = v39;
    if (v39.var1._obj)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v39.var1._obj);
    }

    OZXSetShapePoints(v27, v6, 0, &v31);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v34.var1._obj);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v39.var1._obj);
  }

  else if (v5)
  {
    v36 = 0.0;
    *&v35.var0.var0 = 0;
    v30 = 0.0;
    [v5 getRed:&v36 green:&v35 blue:&v30 alpha:0];
    OZXSetShapeRGBColor(*self->_documentInfo, v36, *&v35.var0.var0, v30);
  }
}

- (void)updateSketchAnimation:(id)a3 defaultProperties:(id)a4 time:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v30 = a4;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v8 = [MEMORY[0x277CBEAC0] objectForKey:@"SketchData" inDictionary:v29 orInDefaultDictionary:v30];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v28 = [MEMORY[0x277CBEAC0] objectForKey:@"SketchTransformAnimation" inDictionary:v29 orInDefaultDictionary:v30];
    v10 = [MEMORY[0x277CBEAC0] objectForKey:@"ParentTransformAnimation" inDictionary:v29 orInDefaultDictionary:v30];
    if (v28 | v10)
    {
      v26 = v10;
      if (v28)
      {
        memset(v39, 0, 40);
        v38 = 0u;
        v45 = *&a5->var0;
        var3 = a5->var3;
        [v28 transformInfoAtTime:&v45];
        v11 = 0.0;
        v13 = 0.0;
        v12 = 0.0;
      }

      else
      {
        v12 = 0.0;
        v13 = 1.0;
        v11 = 0.0;
      }

      if (v26 && !kNoPanZoomEnabled)
      {
        memset(v39, 0, 40);
        v38 = 0u;
        v45 = *&a5->var0;
        var3 = a5->var3;
        [v26 transformInfoAtTime:&v45];
        v11 = 0.0 + 0.0;
        v12 = 0.0 + 0.0;
      }

      v14 = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v16)
      {
        v17 = *v42;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v41 + 1) + 8 * i) CGPointValue];
            documentInfo = self->_documentInfo;
            LODWORD(v20) = documentInfo[3];
            LODWORD(v21) = documentInfo[4];
            v24 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v13 * ((v11 + v23 + -0.5) * v20), v13 * ((0.5 - (v12 + v22)) * v21)}];
            [v14 addObject:v24];
          }

          v16 = [v15 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v16);
      }

      PCColor::PCColor(&v39[1]);
      LOWORD(v38) = 0;
      BYTE2(v38) = 1;
      DWORD1(v38) = 1;
      v25 = *self->_documentInfo;
      v32 = BYTE8(v38);
      v31 = v38;
      v33 = v39[0];
      v36 = *&v39[5];
      v35 = *&v39[3];
      v34 = *&v39[1];
      v37 = space;
      if (space)
      {
        PCCFRefTraits<CGColorSpace *>::retain(space);
      }

      OZXSetShapePoints(v25, v14, 0, &v31);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v37);
      PCCFRef<CGColorSpace *>::~PCCFRef(&space);

      v10 = v27;
    }
  }
}

- (void)adjustPosition:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = [v4 objectForKeyedSubscript:@"Position"];
  v6 = v5;
  if (v5)
  {
    [v5 CGPointValue];
    v8 = v7;
    v10 = v9;
    PCString::PCString(&v14, "Position");
    documentInfo = self->_documentInfo;
    LODWORD(v12) = *(documentInfo + 3);
    LODWORD(v13) = *(documentInfo + 4);
    OZXSetPublishedPosition(*documentInfo, &v14, v8 * v12, v10 * v13);
    PCString::~PCString(&v14);
  }
}

- (void)adjustCamera:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = [v4 objectForKeyedSubscript:@"SelfieEffectUsesCameraFacing"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"SelfieEffectUsesCameraFacing"];
    v7 = [v6 BOOLValue];

    [(PVMotionEffect *)self setIsFrontFacingCamera:v7];
  }

  v8 = [v4 objectForKeyedSubscript:@"SelfieRollRadians"];
  [v8 doubleValue];
  [(PVMotionEffect *)self setRollRadians:?];
  v9 = [v4 objectForKeyedSubscript:@"kPVARSelfieEffectCameraOrientation"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectAtIndex:0];
    [v11 doubleValue];
    v31 = v12;

    v13 = [v10 objectAtIndex:1];
    [v13 doubleValue];
    v30 = v14;

    v15 = [v10 objectAtIndex:2];
    [v15 doubleValue];
    v29 = v16;

    v17 = [v10 objectAtIndex:3];
    [v17 doubleValue];
    v28 = v18;

    *v19.i64 = v28;
    v20.f64[0] = v30;
    *&v19.i64[1] = v31;
    v20.f64[1] = v29;
    v21 = vnegq_f64(v20);
    v22 = vextq_s8(v19, vnegq_f64(v19), 8uLL);
    v23 = vdupq_n_s64(0xBFE6A09E667F3BCCLL);
    v24 = vmlaq_f64(vmulq_f64(v20, 0), v23, vextq_s8(v20, v21, 8uLL));
    v25 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v26 = vaddq_f64(vmlsq_f64(vmulq_f64(v20, v25), vextq_s8(v21, v20, 8uLL), 0), vmlaq_f64(vmulq_f64(v19, vnegq_f64(0)), v23, v22));
    v27 = vaddq_f64(vmlsq_f64(vmulq_f64(v19, v25), v22, 0), v24);
    v32[0] = vextq_s8(v27, v26, 8uLL);
    v32[1] = vextq_s8(v26, v27, 8uLL);
    OZXSetCameraQuaternion(*self->_documentInfo, MEMORY[0x277CC08F0], v32);
    [(PVMotionEffect *)self setQuaternion:v30];
  }
}

- (void)buildDropZoneIdMap_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  if (!OZXGetDropZoneIDMap(*self->_documentInfo, &v4))
  {
    v3 = *(self->_documentInfo + 21);
    if (v3)
    {
      if (v3 != &v4)
      {
        std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>(v3, v4, v5);
      }
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v4, v5[0]);
}

- (void)setupPublishedParameters:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v4 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = v12 == 0;

        [v4 objectForKeyedSubscript:v11];
        if (v13)
          v14 = {;
          [v6 setObject:v14 forKeyedSubscript:v11];
        }

        else
          v14 = {;
          v15 = [v5 objectForKeyedSubscript:v11];
          [v6 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  OZXSetPublishedSettings(*self->_documentInfo, v6);
}

- (void)setupTransitionParameters:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  v6 = [v4 objectForKeyedSubscript:@"Direction"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"Direction"];
    v21.var0 = 0;
    PCString::set(&v21, v7);

    v8 = [v4 objectForKeyedSubscript:@"Direction"];
    v9 = v8;
    if (v8)
    {
      OZXSetPublishedPopup(*self->_documentInfo, &v21, [v8 unsignedIntValue]);
    }

    PCString::~PCString(&v21);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v22[0] = @"Blur";
  v22[1] = @"Zoom";
  v22[2] = @"Bar";
  v22[3] = @"Light";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{4, 0}];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v4 objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = [v5 objectForKeyedSubscript:v14];
          v21.var0 = 0;
          PCString::set(&v21, v16);

          OZXSetPublishedCheckBox(*self->_documentInfo, &v21, [v15 BOOLValue]);
          PCString::~PCString(&v21);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)applyInspectableProperties
{
  v3.receiver = self;
  v3.super_class = PVMotionEffect;
  [(PVEffect *)&v3 applyInspectableProperties];
  [(NSLock *)self->_documentLock lock];
  [(NSLock *)self->super._inspectablePropertiesLock lock];
  [(PVMotionEffect *)self applyInspectableProperties_NoLock];
  [(NSLock *)self->super._inspectablePropertiesLock unlock];
  [(NSLock *)self->_documentLock unlock];
}

- (void)applyInspectableProperties_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoaded];
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v3 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  [(PVMotionEffect *)self setEffectOutputAspectWithProperties_NoLock:0 allProperties:self->super._inspectableProperties];
  v4 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"crossDissolveRamp"];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"crossDissolveRamp"];
    v6 = v5;
    if (v5)
    {
      v7 = CGPointFromString(v5);
      LODWORD(v36) = 0;
      v8 = OZXGetDropZone(*self->_documentInfo, 0, &v36);
      if (v36)
      {
        if (!v8)
        {
          x = v7.x;
          y = v7.y;
          OZXSetDropZoneOpacityAnimation(*self->_documentInfo, v36, x, y);
        }
      }
    }
  }

  v11 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"filterSeed"];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"filterSeed"];
    v13 = v12;
    if (v12)
    {
      OZXSetSeedValue(*self->_documentInfo, [v12 unsignedIntValue]);
    }
  }

  [(PVMotionEffect *)self adjustKenBurnsAnimation:self->super._inspectableProperties];
  [(PVMotionEffect *)self adjustCutawayBorder:self->super._inspectableProperties];
  [(PVMotionEffect *)self adjustCutawayFadeAnimation:self->super._inspectableProperties];
  [(PVMotionEffect *)self setMaskPoints:self->super._inspectableProperties];
  [(PVMotionEffect *)self setSketchStrokes:self->super._inspectableProperties];
  [(PVMotionEffect *)self adjustPosition:self->super._inspectableProperties];
  v14 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"DropShadow"];

  if (v14)
  {
    v15 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"DropShadow"];
    v16 = [v15 BOOLValue];

    *&v36 = 0;
    PCString::set(&v36, @"DropShadow");
    OZXSetPublishedCheckBox(*self->_documentInfo, &v36, v16);
    PCString::~PCString(&v36);
  }

  v17 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"AllCaps"];

  if (v17)
  {
    v18 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"AllCaps"];
    v19 = [v18 BOOLValue];

    *&v36 = 0;
    PCString::set(&v36, @"AllCaps");
    OZXSetPublishedCheckBox(*self->_documentInfo, &v36, v19);
    PCString::~PCString(&v36);
  }

  [(PVMotionEffect *)self setupPublishedParameters:self->super._inspectableProperties];
  v20 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"kPVTopLevelOpacityKey"];

  if (v20)
  {
    v21 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"kPVTopLevelOpacityKey"];
    [v21 doubleValue];
    v23 = v22;

    [(PVMotionEffect *)self setTopLevelOpacity:v23];
  }

  v24 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"ForceDisableBackgroundShape"];

  if (v24)
  {
    v25 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"ForceDisableBackgroundShape"];
    v26 = [v25 BOOLValue];

    v27 = [v3 objectForKeyedSubscript:@"ForceDisableBackgroundShape"];
    *&v36 = 0;
    PCString::set(&v36, v27);

    OZXSetPublishedCheckBox(*self->_documentInfo, &v36, v26);
    PCString::~PCString(&v36);
  }

  v28 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"DisableBackgroundMovieKey"];

  if (v28)
  {
    v29 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"DisableBackgroundMovieKey"];
    v30 = [v29 BOOLValue];

    [(PVMotionEffect *)self disableBackgroundMovie:v30];
  }

  v31 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"Disable Chroma Key"];

  if (v31)
  {
    *&v36 = 0;
    PCString::set(&v36, @"Chroma Key SDR Color");
    v32 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"Disable Chroma Key"];
    v33 = [v32 BOOLValue];

    [(PVMotionEffect *)self disableElementWithPublishedParam:&v36 disable:v33];
    PCString::~PCString(&v36);
  }

  v34 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"SketchData"];

  if (v34)
  {
    inspectableProperties = self->super._inspectableProperties;
    v36 = *MEMORY[0x277CC08F0];
    v37 = *(MEMORY[0x277CC08F0] + 16);
    [(PVMotionEffect *)self updateSketchAnimation:inspectableProperties defaultProperties:0 time:&v36];
  }
}

- (void)updateInspectableProperties
{
  v7.receiver = self;
  v7.super_class = PVMotionEffect;
  [(PVEffect *)&v7 updateInspectableProperties];
  [(NSLock *)self->_documentLock lock];
  v3 = atomic_load(&self->_docLoadStatus);
  if (v3 == 3)
  {
    [(NSLock *)self->super._inspectablePropertiesLock lock];
    inspectableProperties = self->super._inspectableProperties;
    v5 = *MEMORY[0x277CC0898];
    v6 = *(MEMORY[0x277CC0898] + 16);
    [(PVMotionEffect *)self updateInspectableProperties_NoLock:inspectableProperties componentTime:&v5];
    [(NSLock *)self->super._inspectablePropertiesLock unlock];
  }

  [(NSLock *)self->_documentLock unlock];
}

- (void)updateInspectableProperties:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PVMotionEffect;
  [(PVEffect *)&v8 updateInspectableProperties:v4];
  [(NSLock *)self->_documentLock lock];
  v5 = atomic_load(&self->_docLoadStatus);
  if (v5 == 3)
  {
    [(NSLock *)self->super._inspectablePropertiesLock lock];
    v6 = *MEMORY[0x277CC0898];
    v7 = *(MEMORY[0x277CC0898] + 16);
    [(PVMotionEffect *)self updateInspectableProperties_NoLock:v4 componentTime:&v6];
    [(NSLock *)self->super._inspectablePropertiesLock unlock];
  }

  [(NSLock *)self->_documentLock unlock];
}

- (void)updateInspectableProperties_NoLock:(id)a3 componentTime:(id *)a4
{
  v6 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsReady];
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v7 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  v8 = [v6 objectForKeyedSubscript:@"kPVOutputAspectKey"];
  if (v8 || ([v6 objectForKeyedSubscript:@"kPVPlayableAspectRatioKey"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    [(PVMotionEffect *)self setEffectOutputAspectWithProperties_NoLock:v6 allProperties:self->super._inspectableProperties];
    goto LABEL_5;
  }

  v33 = [v6 objectForKeyedSubscript:@"kPVPlayableAspectRatioPreservationModeKey"];

  if (v33)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(PVMotionEffect *)self adjustKenBurnsAnimation:v6];
  [(PVMotionEffect *)self adjustCutawayBorder:v6];
  [(PVMotionEffect *)self adjustCutawayFadeAnimation:v6];
  [(PVMotionEffect *)self setMaskPoints:v6];
  [(PVMotionEffect *)self setSketchStrokes:v6];
  [(PVMotionEffect *)self adjustPosition:v6];
  v9 = [v6 objectForKeyedSubscript:@"DropShadow"];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"DropShadow"];
    v11 = [v10 BOOLValue];

    v36[0].var0 = 0;
    PCString::set(v36, @"DropShadow");
    OZXSetPublishedCheckBox(*self->_documentInfo, v36, v11);
    PCString::~PCString(v36);
  }

  v12 = [v6 objectForKeyedSubscript:@"AllCaps"];

  if (v12)
  {
    v13 = [v6 objectForKeyedSubscript:@"AllCaps"];
    v14 = [v13 BOOLValue];

    v36[0].var0 = 0;
    PCString::set(v36, @"AllCaps");
    OZXSetPublishedCheckBox(*self->_documentInfo, v36, v14);
    PCString::~PCString(v36);
  }

  [(PVMotionEffect *)self setupPublishedParameters:v6];
  v15 = [v6 objectForKeyedSubscript:@"kPVTopLevelOpacityKey"];

  if (v15)
  {
    v16 = [v6 objectForKeyedSubscript:@"kPVTopLevelOpacityKey"];
    [v16 doubleValue];
    v18 = v17;

    [(PVMotionEffect *)self setTopLevelOpacity:v18];
  }

  v19 = [v6 objectForKeyedSubscript:@"ForceDisableBackgroundShape"];

  if (v19)
  {
    v20 = [v6 objectForKeyedSubscript:@"ForceDisableBackgroundShape"];
    v21 = [v20 BOOLValue];

    v22 = [v7 objectForKeyedSubscript:@"ForceDisableBackgroundShape"];
    v36[0].var0 = 0;
    PCString::set(v36, v22);

    OZXSetPublishedCheckBox(*self->_documentInfo, v36, v21);
    PCString::~PCString(v36);
  }

  v23 = [v6 objectForKeyedSubscript:@"DisableBackgroundMovieKey"];

  if (v23)
  {
    v24 = [v6 objectForKeyedSubscript:@"DisableBackgroundMovieKey"];
    v25 = [v24 BOOLValue];

    [(PVMotionEffect *)self disableBackgroundMovie:v25];
  }

  v26 = [v6 objectForKeyedSubscript:@"Disable Chroma Key"];

  if (v26)
  {
    v36[0].var0 = 0;
    PCString::set(v36, @"Chroma Key SDR Color");
    v27 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKeyedSubscript:@"Disable Chroma Key"];
    v28 = [v27 BOOLValue];

    [(PVMotionEffect *)self disableElementWithPublishedParam:v36 disable:v28];
    PCString::~PCString(v36);
  }

  v29 = [v6 objectForKeyedSubscript:@"SketchData"];

  if (v29)
  {
    if (a4->var2)
    {
      v30 = a4;
    }

    else
    {
      v30 = MEMORY[0x277CC08F0];
    }

    *&v36[0].var0 = *&v30->var0;
    var3 = v30->var3;
    [(PVMotionEffect *)self updateSketchAnimation:v6 defaultProperties:self->super._inspectableProperties time:v36];
  }

  components = self->super._components;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = *"";
  v34[2] = __67__PVMotionEffect_updateInspectableProperties_NoLock_componentTime___block_invoke;
  v34[3] = &unk_279AA6270;
  v34[4] = self;
  v32 = v6;
  v35 = v32;
  [(NSMutableArray *)components enumerateObjectsUsingBlock:v34];
}

- (void)setIsFrontFacingCamera:(BOOL)a3
{
  v3 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v7 = 0;
  PCString::PCString(&v6, "PAEEquirectProjectFilter::Filter Name");
  if (OZXFindFilter(*self->_documentInfo, &v6, &v7))
  {
    v5 = 1;
  }

  else
  {
    v5 = v7 == 0;
  }

  if (!v5)
  {
    OZXEquirectProjectFilterSetFrontFacing(*self->_documentInfo, &v7, v3);
  }

  PCString::~PCString(&v6);
}

- (void)setQuaternion:(double)a3 :(double)a4 :(double)a5 :(double)a6
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v13 = 0;
  PCString::PCString(&v12, "PAEEquirectProjectFilter::Filter Name");
  if (OZXFindFilter(*self->_documentInfo, &v12, &v13))
  {
    v11 = 1;
  }

  else
  {
    v11 = v13 == 0;
  }

  if (!v11)
  {
    OZXEquirectProjectFilterSetQuaternion(*self->_documentInfo, a3, a4, a5, a6);
  }

  PCString::~PCString(&v12);
}

- (void)setRollRadians:(double)a3
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = *self->_documentInfo;

  OZXSetSelfieRollRadians(v5, a3);
}

- (CGSize)documentSize
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = &unk_260C3B1FE;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __30__PVMotionEffect_documentSize__block_invoke;
  v6[3] = &unk_279AA6298;
  v6[4] = &v7;
  [(PVMotionEffect *)self runEnsuringDocumentReadyAndLockingDocument:v6];
  v2 = v8[6];
  v3 = v8[7];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

__n128 __30__PVMotionEffect_documentSize__block_invoke(uint64_t a1, __n128 *a2)
{
  result = a2[11];
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (CGSize)outputSize
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = &unk_260C3B1FE;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __28__PVMotionEffect_outputSize__block_invoke;
  v6[3] = &unk_279AA6298;
  v6[4] = &v7;
  [(PVMotionEffect *)self runEnsuringDocumentReadyAndLockingDocument:v6];
  v2 = v8[6];
  v3 = v8[7];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

float64x2_t __28__PVMotionEffect_outputSize__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  result = vcvtq_f64_u64(v3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (CGRect)outputROI
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x5012000000;
  v14 = __Block_byref_object_copy__2145;
  v15 = __Block_byref_object_dispose__2146;
  v16 = &unk_260C3B1FE;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = *"";
  v10[2] = __27__PVMotionEffect_outputROI__block_invoke;
  v10[3] = &unk_279AA5B80;
  v10[4] = self;
  v10[5] = &v11;
  [(PVMotionEffect *)self runEnsuringDocumentReadyAndLockingDocument:v10];
  v2 = v12[6];
  v3 = v12[7];
  v4 = v12[8];
  v5 = v12[9];
  _Block_object_dispose(&v11, 8);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

uint64_t __27__PVMotionEffect_outputROI__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) outputROI_NoLock:a2 scale:1.0];
  v4 = *(*(a1 + 40) + 8);
  v4[6] = v5;
  v4[7] = v6;
  v4[8] = v7;
  v4[9] = v8;
  return result;
}

- (CGRect)outputROI_NoLock:(const void *)a3 scale:(double)a4
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v6 = *(a3 + 12);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  v8 = vcvtq_f64_u64(v7);
  if (self->_hasPlayableAspectOverride)
  {
    v9 = vmuld_lane_f64(self->_playableAspectRatio, v8, 1);
    v10.f64[1] = v8.f64[1];
    v10.f64[0] = v9;
    __asm { FMOV            V1.2D, #0.5 }

    v16 = a4;
    v17 = vmulq_n_f64(vmulq_f64(vsubq_f64(v8, v10), _Q1), a4);
    v18 = v17.f64[1];
  }

  else
  {
    v17.f64[0] = 0.0;
    v18 = 0.0;
    v9 = v8.f64[0];
    v16 = a4;
  }

  v19 = vmuld_lane_f64(v16, v8, 1);
  v20 = v9 * v16;
  result.origin.x = v17.f64[0];
  result.size.height = v19;
  result.size.width = v20;
  result.origin.y = v18;
  return result;
}

- (void)setEffectOutputAspectWithProperties_NoLock:(id)a3 allProperties:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v7 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVOutputAspectKey" inDictionary:v13 orInDefaultDictionary:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVPlayableAspectRatioKey" inDictionary:v13 orInDefaultDictionary:v6];
    v9 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVPlayableAspectRatioPreservationModeKey" inDictionary:v13 orInDefaultDictionary:v6];
    [v7 doubleValue];
    v11 = v10;
    [v8 doubleValue];
    -[PVMotionEffect setEffectOutputAspect_NoLock:playableAspect:playableContentMode:](self, "setEffectOutputAspect_NoLock:playableAspect:playableContentMode:", [v9 integerValue], v11, v12);
  }
}

- (void)setEffectOutputAspect_NoLock:(double)a3 playableAspect:(double)a4 playableContentMode:(int)a5
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  p_effectOutputAspect = &self->_effectOutputAspect;
  self->_effectOutputAspect = a3;
  if (fabs(a3) >= 0.0000001)
  {
    self->_playableAspectRatio = a4;
    self->_playableContentMode = a5;
    v11 = fabs(a4) >= 0.0000001 && a5 != 0 && vabdd_f64(a4, *p_effectOutputAspect) >= 0.0001;
    self->_hasPlayableAspectOverride = v11;
    v12 = [(NSMutableDictionary *)self->super._inspectableProperties objectForKey:@"kPVEffectPVARMetadata"];

    if (self->_hasPlayableAspectOverride)
    {
      p_playableAspectRatio = &self->_playableAspectRatio;
    }

    else
    {
      p_playableAspectRatio = &self->_effectOutputAspect;
    }

    v14 = *p_playableAspectRatio;
    documentInfo = self->_documentInfo;
    v16 = *documentInfo;
    if (v12)
    {
      OZXSetTargetDisplayAspectRatioWithNativeSize(v16, v14, documentInfo[22], documentInfo[23]);
      v17 = [(PVMotionEffect *)self isLandscape:self->super._inspectableProperties];
      v18 = self->_documentInfo;
      if (v17)
      {
        v19 = v18[22];
        v20 = v19 / *p_effectOutputAspect / v18[7] + 0.5 + 0.0000001;
        *(v18 + 3) = v19;
        *(v18 + 4) = vcvtmd_s64_f64(v20);
      }

      else
      {
        v23 = v18[23];
        *(v18 + 3) = vcvtmd_s64_f64(*p_effectOutputAspect * v23 / v18[7] + 0.5 + 0.0000001);
        *(v18 + 4) = v23;
      }
    }

    else
    {
      OZXSetTargetDisplayAspectRatio(v16, v14);
      v21 = self->_documentInfo;
      LODWORD(v22) = *(v21 + 4);
      *(v21 + 3) = vcvtmd_s64_f64(*p_effectOutputAspect * v22 / v21[7] + 0.5 + 0.0000001);
    }

    v24 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [PVMotionEffect didSetCacheInvalidatingParameter_NoLock:"didSetCacheInvalidatingParameter_NoLock:forKey:" forKey:?];

    v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_playableAspectRatio];
    [PVMotionEffect didSetCacheInvalidatingParameter_NoLock:"didSetCacheInvalidatingParameter_NoLock:forKey:" forKey:?];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_playableContentMode];
    [PVMotionEffect didSetCacheInvalidatingParameter_NoLock:"didSetCacheInvalidatingParameter_NoLock:forKey:" forKey:?];
  }
}

- (BOOL)hasPlayableAspectOverride_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  return self->_hasPlayableAspectOverride;
}

- (double)playableAspectRatio_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  return self->_playableAspectRatio;
}

- (int)playableContentMode_NoLock
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  return self->_playableContentMode;
}

- (void)setNodeIDToCache:(unsigned int)a3
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  if (a3)
  {
    groupIDToCache = self->_groupIDToCache;
    if (groupIDToCache != a3)
    {
      self->_previousGroupIDToCache = groupIDToCache;
      self->_groupIDToCache = a3;
      self->_cachedRenderDirty = 1;
      previousGroupIDToCache = self->_previousGroupIDToCache;
      if (previousGroupIDToCache)
      {
        OZXSetUseRenderCache(*self->_documentInfo, previousGroupIDToCache, 0);
        v7 = *self->_documentInfo;
        v8 = self->_previousGroupIDToCache;

        OZXClearCachedRender(v7, v8);
      }
    }
  }
}

- (int)stillImageInverseToneMapOperator:(id)a3
{
  v4 = a3;
  stillImageInverseToneMapOperator = self->_stillImageInverseToneMapOperator;
  if (!stillImageInverseToneMapOperator)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [(PVEffect *)self contentRegistryProperties];
    v8 = [v6 objectForKey:@"stillImageInverseToneMapOperator" inDictionary:v4 orInDefaultDictionary:v7];

    if (v8)
    {
      v9 = [v8 intValue];
      if (v9 < 3)
      {
        v10 = qword_279AA6370[v9];
LABEL_7:
        v11 = self->_stillImageInverseToneMapOperator;
        self->_stillImageInverseToneMapOperator = v10;

        stillImageInverseToneMapOperator = self->_stillImageInverseToneMapOperator;
        goto LABEL_8;
      }

      NSLog(&cfstr_UnsupportedSti.isa, v9);
    }

    v10 = &unk_28732D3A0;
    goto LABEL_7;
  }

LABEL_8:
  v12 = [(NSNumber *)stillImageInverseToneMapOperator intValue];

  return v12;
}

- (int)getOSFAOption:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  inspectableProperties = self->super._inspectableProperties;
  v6 = [(PVEffect *)self contentRegistryProperties];
  v7 = [v4 objectForKey:@"OSFAToneMappingOption" inDictionary:inspectableProperties orInDefaultDictionary:v6];

  if (v7)
  {
    v8 = [v7 intValue];
    v9 = v8;
    if (v8 >= 3)
    {
      NSLog(&cfstr_UnexpectedValu.isa, @"OSFAToneMappingOption", v8);
      v9 = 1;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEAC0];
    v11 = self->super._inspectableProperties;
    v12 = [(PVEffect *)self contentRegistryProperties];
    v7 = [v10 objectForKey:@"wantsOSFAToneMapping" inDictionary:v11 orInDefaultDictionary:v12];

    if (v7)
    {
      v9 = [v7 BOOLValue];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)debugDisplayName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PVEffect *)self displayName];
  v7 = [(PVEffect *)self effectID];
  v8 = [(PVMotionEffect *)self projectPath];
  v9 = [v8 lastPathComponent];
  v10 = [v3 stringWithFormat:@"%@ %@ %@ %@", v5, v6, v7, v9];

  return v10;
}

- (id)ephemeralProperties
{
  if ([PVMotionEffect ephemeralProperties]::onceToken != -1)
  {
    [PVMotionEffect ephemeralProperties];
  }

  v3 = [PVMotionEffect ephemeralProperties]::s_ephemeralProperties;

  return v3;
}

void __37__PVMotionEffect_ephemeralProperties__block_invoke()
{
  v2[17] = *MEMORY[0x277D85DE8];
  v2[0] = @"kPVOutputAspectKey";
  v2[1] = @"TitleBuildIn";
  v2[2] = @"ForceDisableLoop";
  v2[3] = @"RenderAtPosterTime";
  v2[4] = @"ImageSequencePathKey";
  v2[5] = @"kPVEnablePosterFrameCaching";
  v2[6] = @"kPVEnableLoopedRangeRenderCaching";
  v2[7] = @"kPVTextRenderingDisabled";
  v2[8] = @"kPVTopLevelAdditionalScaleKey";
  v2[9] = @"kPVTransformAnimationKey";
  v2[10] = @"kPVTopLevelOpacityKey";
  v2[11] = @"DisableAnimatedLayer";
  v2[12] = @"DisablePosterLayer";
  v2[13] = @"RenderStartOffset";
  v2[14] = @"DisableBackgroundMovieKey";
  v2[15] = @"RenderAtPosterTime";
  v2[16] = @"kPVEffectPVARMetadata";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:17];
  v1 = [PVMotionEffect ephemeralProperties]::s_ephemeralProperties;
  [PVMotionEffect ephemeralProperties]::s_ephemeralProperties = v0;
}

- (BOOL)isEphemeralProperty:(id)a3
{
  v4 = a3;
  v5 = [(PVMotionEffect *)self ephemeralProperties];
  v6 = ([v5 containsObject:v4] & 1) != 0 || -[PVMotionEffect isTemporalProperty:](self, "isTemporalProperty:", v4);

  return v6;
}

- (id)temporalProperties
{
  if ([PVMotionEffect temporalProperties]::onceToken != -1)
  {
    [PVMotionEffect temporalProperties];
  }

  v3 = [PVMotionEffect temporalProperties]::s_temporalProperties;

  return v3;
}

void __36__PVMotionEffect_temporalProperties__block_invoke()
{
  v2[11] = *MEMORY[0x277D85DE8];
  v2[0] = @"PVARClearARAnchors";
  v2[1] = @"PVARUpdateARAnchors";
  v2[2] = @"PVRestartEffectTime";
  v2[3] = @"PVResetScene";
  v2[4] = @"PVARBodyGestures";
  v2[5] = @"PVARFaceGestures";
  v2[6] = @"PVARObjectToAttachToHipID";
  v2[7] = @"PVDisableObjects";
  v2[8] = @"kPVEffectPVARMetadata";
  v2[9] = @"kPVEffectEnableMeshShader";
  v2[10] = @"kPVEffectEnableMeshOcclusion";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:11];
  v1 = [PVMotionEffect temporalProperties]::s_temporalProperties;
  [PVMotionEffect temporalProperties]::s_temporalProperties = v0;
}

- (BOOL)isTemporalProperty:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"PVSetEffectAnchor"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PVMotionEffect *)self temporalProperties];
    v5 = [v6 containsObject:v4];
  }

  return v5;
}

- (BOOL)didSetCacheInvalidatingParameter_NoLock:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  if ([(PVMotionEffect *)self parameterInvalidatesCache_NoLock:v7]&& !*(self->_documentInfo + 41) && [(PVMotionEffect *)self didCacheInvalidatingParameterChange_NoLock:v6 key:v7])
  {
    v8 = 1;
    self->_cachedRenderDirty = 1;
    [(NSMutableDictionary *)self->_parametersThatInvalidateCache setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)didCacheInvalidatingParameterChange_NoLock:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v8 = [(NSMutableDictionary *)self->_parametersThatInvalidateCache objectForKeyedSubscript:v7];
  v9 = v8;
  if (v6 | v8)
  {
    v10 = 1;
    if (v6 && v8)
    {
      if ([@"kPVOutputAspectKey" isEqualToString:v7] || objc_msgSend(@"kPVPlayableAspectRatioKey", "isEqualToString:", v7))
      {
        v11 = PVNumbersAreEqualAsDoubles(v9, v6);
      }

      else if ([@"kPVPlayableAspectRatioPreservationModeKey" isEqualToString:v7])
      {
        v11 = PVNumbersAreEqualAsIntegers(v9, v6);
      }

      else
      {
        if (![@"kPVCachedTextureOutputSize" isEqualToString:v7])
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2020000000;
          v22 = 0;
          motionComponents = self->_motionComponents;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = *"";
          v14[2] = __65__PVMotionEffect_didCacheInvalidatingParameterChange_NoLock_key___block_invoke;
          v14[3] = &unk_279AA62C0;
          v14[4] = self;
          v15 = v7;
          v16 = v9;
          v17 = v6;
          v18 = &v19;
          [(NSMutableArray *)motionComponents enumerateObjectsUsingBlock:v14];
          v10 = *(v20 + 24);

          _Block_object_dispose(&v19, 8);
          goto LABEL_13;
        }

        v11 = PVValuesAreEqualAsCGSizes(v9, v6);
      }

      v10 = !v11;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10 & 1;
}

uint64_t __65__PVMotionEffect_didCacheInvalidatingParameterChange_NoLock_key___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 motionEffect:a1[4] shouldInvalidateCachedRenderForProperty:a1[5] oldValue:a1[6] newValue:a1[7]];
  if (result)
  {
    *(*(a1[8] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)parameterInvalidatesCache_NoLock:(id)a3
{
  v4 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  LOBYTE(self) = [(NSMutableSet *)self->_parameterKeysThatInvalidateCache containsObject:v4];

  return self;
}

- (BOOL)isRenderCachingDisabled_NoLock:(id *)a3
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsReady];
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  if (-[PVEffect isInInteractiveMode](self, "isInInteractiveMode") || (-[PVEffect effectType](self, "effectType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"effect.video.title"], v5, (v6 & 1) == 0))
  {
    v10 = 1;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    timelineComponent = self->_timelineComponent;
    v19 = 0;
    v8 = [(PVMotionEffectTimelineComponent *)timelineComponent isForceRenderAtPosterFrameEnabled:self->super._inspectableProperties];
    motionComponents = self->_motionComponents;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = *"";
    v12[2] = __49__PVMotionEffect_isRenderCachingDisabled_NoLock___block_invoke;
    v12[3] = &unk_279AA62E8;
    v13 = *&a3->var0;
    var3 = a3->var3;
    v15 = v8;
    v12[4] = self;
    v12[5] = &v16;
    [(NSMutableArray *)motionComponents enumerateObjectsUsingBlock:v12];
    v10 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  return v10 & 1;
}

uint64_t __49__PVMotionEffect_isRenderCachingDisabled_NoLock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  result = [a2 motionEffect:v6 propertiesDisableCache:v7 time:&v9 forcePosterFrame:*(a1 + 72)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (double)topLevelOpacity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x3FF0000000000000;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 11;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __33__PVMotionEffect_topLevelOpacity__block_invoke;
  v4[3] = &unk_279AA5148;
  v4[4] = self;
  v4[5] = v5;
  v4[6] = &v7;
  [(PVMotionEffect *)self runEnsuringDocumentReadyAndLockingDocument:v4];
  v2 = v8[3];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __33__PVMotionEffect_topLevelOpacity__block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 164))
  {
    v6 = v2;
    v7 = v3;
    v4 = result;
    v5 = **&MEMORY[0x277CC08F0];
    result = OZXGetObjectOpacity(**(*(result + 32) + 144), &v5, *(a2 + 160), (*(*(result + 48) + 8) + 24));
    *(*(*(v4 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setTopLevelOpacity:(double)a3
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  documentInfo = self->_documentInfo;
  if (!*(documentInfo + 41))
  {
    v6 = **&MEMORY[0x277CC08F0];
    OZXSetObjectOpacity(*documentInfo, &v6, *(documentInfo + 40), a3);
  }
}

- (BOOL)isVisibleAtTime_NoLock:(id *)a3 timedProperties:(id)a4 defaultProperties:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVHiddenKey" inDictionary:v6 orInDefaultDictionary:v7];
  if ([v8 BOOLValue])
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEAC0] objectForKey:@"kPVTopLevelOpacityKey" inDictionary:v6 orInDefaultDictionary:v7];
    v11 = v10;
    v9 = 1;
    if (v10)
    {
      [v10 doubleValue];
      if (fabs(v12) < 0.0000001)
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)publishedParams_NoLock:(const void *)a3
{
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = *a3;

  return OZXGetPublishedSettings(v5);
}

- (id)publishedParam_NoLock:(const void *)a3 forKey:(id)a4 atTime:(id *)a5 includeHidden:(BOOL)a6
{
  v10 = a4;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v11 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  v12 = [v11 objectForKeyedSubscript:v10];
  v17.var0 = 0;
  PCString::set(&v17, v12);

  v13 = *a3;
  v16 = *a5;
  v14 = OZXGetPublishedSetting(v13, &v17, &v16, a6);
  PCString::~PCString(&v17);

  return v14;
}

- (id)effectParameters
{
  v10.receiver = self;
  v10.super_class = PVMotionEffect;
  v3 = [(PVEffect *)&v10 effectParameters];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __34__PVMotionEffect_effectParameters__block_invoke;
  v8[3] = &unk_279AA58C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(PVMotionEffect *)self runEnsuringDocumentReadyAndLockingDocument:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __34__PVMotionEffect_effectParameters__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) publishedParams_NoLock:a2];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  obj = v14 = 0u;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"PVEffectParam_ValueKey"];
        v8 = [v6 objectForKeyedSubscript:@"PVEffectParam_NameKey"];
        v9 = [objc_opt_class() publishedParameterNameToMotionEffectPropertyKeyMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {
          v11 = v10;

          v8 = v11;
        }

        [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

- (void)setEffectParameters:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PVMotionEffect;
  [(PVEffect *)&v5 setEffectParameters:v4];
  [(PVEffect *)self addEntriesToInspectableProperties:v4];
}

- (void)disableBackgroundMovie:(BOOL)a3
{
  v3 = a3;
  [(PVMotionEffect *)self assertDocumentIsLocked];
  [(PVMotionEffect *)self assertDocumentStatusIsLoadedOrReady];
  v5 = 0;
  if (!OZXGetDropZone(*self->_documentInfo, 0, &v5))
  {
    OZXDisableRenderingObject(*self->_documentInfo, v5, v3);
  }
}

- (BOOL)supportsParam:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __32__PVMotionEffect_supportsParam___block_invoke;
  v7[3] = &unk_279AA5120;
  v7[4] = self;
  v8 = v4;
  v9 = &v10;
  v5 = v4;
  [(PVMotionEffect *)self runEnsuringDocumentReadyAndLockingDocument:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __32__PVMotionEffect_supportsParam___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 256) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    *(*(*(a1 + 48) + 8) + 24) = [v4 BOOLValue];
  }

  else
  {
    v6 = [*(a1 + 32) publishedParams_NoLock:a2];
    v10 = MEMORY[0x277D85DD0];
    v11 = *"";
    v12 = __32__PVMotionEffect_supportsParam___block_invoke_2;
    v13 = &unk_279AA6310;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v14 = v7;
    v15 = v8;
    [v6 enumerateObjectsUsingBlock:&v10];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{*(*(*(a1 + 48) + 8) + 24), v10, v11, v12, v13}];
    [*(*(a1 + 32) + 256) setObject:v9 forKeyedSubscript:*(a1 + 40)];

    v5 = v9;
  }
}

void __32__PVMotionEffect_supportsParam___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 objectForKeyedSubscript:@"PVEffectParam_NameKey"];
  LODWORD(v6) = [v6 isEqualToString:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)motionComponentClasses
{
  if (+[PVMotionEffect motionComponentClasses]::onceToken != -1)
  {
    +[PVMotionEffect motionComponentClasses];
  }

  v3 = +[PVMotionEffect motionComponentClasses]::s_motionComponentClasses;

  return v3;
}

void __40__PVMotionEffect_motionComponentClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = +[PVMotionEffect motionComponentClasses]::s_motionComponentClasses;
  +[PVMotionEffect motionComponentClasses]::s_motionComponentClasses = v6;
}

+ (id)motionEffectPropertyKeyToPublishedParameterNameMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __68__PVMotionEffect_motionEffectPropertyKeyToPublishedParameterNameMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::onceToken != -1)
  {
    dispatch_once(&+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::onceToken, block);
  }

  v2 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap;

  return v2;
}

void __68__PVMotionEffect_motionEffectPropertyKeyToPublishedParameterNameMap__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:31];
  v3 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap;
  +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap = v2;

  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"Direction" forKeyedSubscript:@"Direction"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"Blur" forKeyedSubscript:@"Blur"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"Zoom" forKeyedSubscript:@"Zoom"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"Bar" forKeyedSubscript:@"Bar"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"Light" forKeyedSubscript:@"Light"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"SelfieEffectVisibility" forKeyedSubscript:@"kPVARSelfieEffectVisibility"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"SelfieBackgroundVisibility" forKeyedSubscript:@"kPVARSelfieEffectBackgroundVisibility"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"SelfieZoom" forKeyedSubscript:@"kPVARSelfieEffectZoomLevel"];
  [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap setObject:@"SelfieEffectDistance" forKeyedSubscript:@"kPVARSelfieEffectDistance"];
  v4 = [*(a1 + 32) motionComponentClasses];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_2221];
}

void __68__PVMotionEffect_motionEffectPropertyKeyToPublishedParameterNameMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 motionEffectPropertyKeyToPublishedParameterNameMap];
  if (v2)
  {
    [+[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap]::s_motionEffectPropertyKeyToPublishedParameterNameMap addEntriesFromDictionary:v2];
  }
}

+ (id)publishedParameterNameToMotionEffectPropertyKeyMap
{
  if (+[PVMotionEffect publishedParameterNameToMotionEffectPropertyKeyMap]::onceToken != -1)
  {
    +[PVMotionEffect publishedParameterNameToMotionEffectPropertyKeyMap];
  }

  v3 = +[PVMotionEffect publishedParameterNameToMotionEffectPropertyKeyMap]::s_publishedParameterNameToMotionEffectPropertyKeyMap;

  return v3;
}

void __68__PVMotionEffect_publishedParameterNameToMotionEffectPropertyKeyMap__block_invoke()
{
  v2 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
  v0 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v1 = +[PVMotionEffect publishedParameterNameToMotionEffectPropertyKeyMap]::s_publishedParameterNameToMotionEffectPropertyKeyMap;
  +[PVMotionEffect publishedParameterNameToMotionEffectPropertyKeyMap]::s_publishedParameterNameToMotionEffectPropertyKeyMap = v0;

  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_2227];
}

- (BOOL)hasBuiltInEnvironment
{
  v3 = [(PVEffect *)self effectType];
  v4 = [(PVEffect *)self contentProperties];
  v5 = [v4 objectForKey:@"FFEffectProperty_Category"];

  if ([v3 isEqualToString:@"effect.video.filter"] && objc_msgSend(v5, "isEqualToString:", @"Selfie"))
  {
    v6 = [(PVEffect *)self effectID];
    if ([v6 isEqualToString:@"7FFE36D8-396F-4011-90D9-99B6414D4DB1"])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = [(PVEffect *)self effectID];
      v7 = [v8 isEqualToString:@"87530270-50A4-4483-82B5-D520897FF2CE"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isLandscape:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PVVideoOrientation"];
  if (!v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"PVARApplyVerticalRotation"];
    v6 = v5;
    v4 = &unk_28732D3D0;
    if (v5 && ![v5 BOOLValue])
    {
      v4 = &unk_28732D3E8;
    }
  }

  v7 = [v4 unsignedIntValue] - 3 < 2;

  return v7;
}

- (void)applyARData:(id)a3 time:(id *)a4 renderParams:(_OZXRenderParams *)a5
{
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"PVMatteInputMode"];
  OZXSetMatteInputMode(*self->_documentInfo, v8);
  v9 = [v7 objectForKeyedSubscript:@"kPVEffectPVARMetadata"];
  v10 = v9;
  if (v9)
  {
    v72 = v8;
    v11 = [v9 depthData];
    v12 = [v7 objectForKeyedSubscript:@"PVVideoOrientation"];
    if (!v12)
    {
      v13 = [v7 objectForKeyedSubscript:@"PVARApplyVerticalRotation"];
      v14 = [v13 BOOLValue];
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v12 = &unk_28732D3D0;
      }

      else
      {
        v12 = &unk_28732D3E8;
      }
    }

    v16 = [v12 unsignedIntValue];
    if (v16 - 2 >= 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 - 1;
    }

    v73 = [v7 objectForKeyedSubscript:@"PVARFaceGestures"];
    v69 = v12;
    v71 = [v7 objectForKeyedSubscript:@"PVARBodyGestures"];
    v70 = [v7 objectForKeyedSubscript:@"PVAR3DSkeleton"];
    v68 = [v7 objectForKeyedSubscript:@"kPVARFrameSetMetadataPlaneAnchorsKey"];
    v67 = [v7 objectForKeyedSubscript:@"PVEffectSceneNode"];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v18 = [v7 objectForKeyedSubscript:@"WorldOrigin"];
    v19 = v18;
    if (v18)
    {
      [v18 SCNMatrix4Value];
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
    }

    v76 = *&a4->var0;
    var3 = a4->var3;
    v62 = v11;
    v78 = v62;
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v82 = v92;
    v66 = v71;
    v83 = v66;
    v65 = v70;
    v84 = v65;
    v20 = v68;
    v85 = v20;
    v86 = v17;
    v87 = [v73 unsignedLongValue];
    v21 = v67;
    v88 = v21;
    v22 = [v10 arFrame];
    documentInfo = self->_documentInfo;
    if (v22)
    {
      OZXApplyARFrame(*documentInfo, v22, 10.0, 45000.0, &v76);
    }

    else
    {
      v24 = *(documentInfo + 3);
      v25 = *(documentInfo + 4);
      [v10 cameraImageResolution];
      v27 = v26;
      v29 = v28;
      [v10 cameraIntrinsics];
      v30.f32[0] = v27;
      v31 = v29;
      v30.f32[1] = v31;
      *&v32 = v24;
      *(&v32 + 1) = v25;
      pv_simd_matrix_make_perspective(3, v16, 1, 1, v33, v34, v35, v30, v32);
      v75.columns[0] = v36;
      v75.columns[1] = v37;
      v75.columns[2] = v38;
      v75.columns[3] = v39;
      if (v16 > 4)
      {
        v40 = 0;
      }

      else
      {
        v40 = qword_260342DE0[v16];
      }

      v41 = PVCardinalAnglesDouble[v40];
      [v10 cameraTransform];
      v63 = v43;
      v64 = v42;
      v60 = v45;
      v61 = v44;
      v42.f32[0] = v41;
      v46 = __sincosf_stret(v42.f32[0]);
      v47 = 0;
      v48 = vrsqrte_f32(1065353216);
      v49 = vmul_f32(v48, vrsqrts_f32(1065353216, vmul_f32(v48, v48)));
      v50 = vmulq_n_f32(xmmword_2603429D0, vmul_f32(v49, vrsqrts_f32(1065353216, vmul_f32(v49, v49))).f32[0]);
      v51 = (1.0 - v46.__cosval) * vmuls_lane_f32(v50.f32[0], *v50.f32, 1);
      v52 = vmuls_lane_f32(v46.__sinval, v50, 2);
      v53 = (1.0 - v46.__cosval) * vmuls_lane_f32(v50.f32[0], v50, 2);
      v54 = vmuls_lane_f32(v46.__sinval, *v50.f32, 1);
      HIDWORD(v55) = 0;
      *&v55 = v46.__cosval + ((1.0 - v46.__cosval) * vmulq_f32(v50, v50).f32[0]);
      *(&v55 + 1) = v52 + v51;
      *(&v55 + 2) = v53 - v54;
      v56 = (1.0 - v46.__cosval) * vmuls_lane_f32(v50.f32[1], v50, 2);
      HIDWORD(v57) = 0;
      *&v57 = v51 - v52;
      *(&v57 + 1) = v46.__cosval + ((1.0 - v46.__cosval) * vmuls_lane_f32(v50.f32[1], *v50.f32, 1));
      *(&v57 + 2) = (v46.__sinval * v50.f32[0]) + v56;
      *&v58 = v54 + v53;
      *(&v58 + 1) = v56 - (v46.__sinval * v50.f32[0]);
      *(&v58 + 1) = COERCE_UNSIGNED_INT(v46.__cosval + ((1.0 - v46.__cosval) * vmuls_lane_f32(v50.f32[2], v50, 2)));
      v93[0] = v55;
      v93[1] = v57;
      v93[2] = v58;
      v93[3] = xmmword_2603427D0;
      do
      {
        v94.columns[v47] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, COERCE_FLOAT(v93[v47])), v63, *&v93[v47], 1), v61, v93[v47], 2), v60, v93[v47], 3);
        ++v47;
      }

      while (v47 != 4);
      v74 = v94;
      OZXApplyARFrameInfo(*self->_documentInfo, &v75, &v74, 10.0, 45000.0, &v76);
    }

    v8 = v72;
  }

  v59 = [v7 objectForKeyedSubscript:@"PVARClearARAnchors"];
  if (v59)
  {
    OZXClearARAnchors(*self->_documentInfo, v59);
  }
}

@end