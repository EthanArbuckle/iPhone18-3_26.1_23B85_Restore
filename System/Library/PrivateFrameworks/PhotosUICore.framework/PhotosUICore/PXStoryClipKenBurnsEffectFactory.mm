@interface PXStoryClipKenBurnsEffectFactory
+ (id)reusableInstances;
+ (void)factoryForSpec:(id)spec clipComposition:(id)composition displayAssets:(id)assets croppingContext:(id)context croppingOptions:(unint64_t)options assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)self0 handler:(id)self1;
+ (void)genericFactoryForSpec:(id)spec assetContentSize:(CGSize)size handler:(id)handler;
+ (void)releaseCachedResources;
- (CGRect)assetRectForClipIndex:(int64_t)index;
- (CGRect)clipFrameForClipIndex:(int64_t)index;
- (PXStoryClipKenBurnsEffectFactory)init;
- (id)_init;
- (void)_configureClipAtIndex:(int64_t)index forPanWithCameraMovingTowardsEdge:(unsigned int)edge distance:(double)distance;
- (void)_configureWithSpec:(id)spec clipComposition:(id)composition displayAssets:(id)assets croppingContext:(id)context croppingOptions:(unint64_t)options assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)self0;
- (void)_getParameters:(id *)parameters forConfiguration:(id)configuration;
- (void)dealloc;
- (void)getParameters:(id *)parameters forOppositePansWithDistance:(double)distance;
- (void)getParameters:(id *)parameters forPanWithCameraMovingTowardsEdge:(unsigned int)edge distance:(double)distance;
- (void)getParameters:(id *)parameters forParallelPansWithDistance:(double)distance;
- (void)getParameters:(id *)parameters forRotationWithAngle:(double)angle scale:(double)scale relativeTransformOrigin:(CGPoint)origin;
- (void)getParameters:(id *)parameters forSplitAssetOppositePansWithDistance:(double)distance;
- (void)getParameters:(id *)parameters forVerticallyPanningPreferredRectMovingTowardsVerticalEdge:(unsigned int)edge;
- (void)getParameters:(id *)parameters forZoomWithScale:(double)scale relativeTransformOrigin:(CGPoint)origin;
- (void)getParametersForNoEffect:(id *)effect;
@end

@implementation PXStoryClipKenBurnsEffectFactory

- (void)getParameters:(id *)parameters forRotationWithAngle:(double)angle scale:(double)scale relativeTransformOrigin:(CGPoint)origin
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101__PXStoryClipKenBurnsEffectFactory_getParameters_forRotationWithAngle_scale_relativeTransformOrigin___block_invoke;
  v6[3] = &unk_1E7747168;
  originCopy = origin;
  v6[4] = self;
  scaleCopy = scale;
  angleCopy = angle;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:parameters forConfiguration:v6];
}

- (void)getParameters:(id *)parameters forSplitAssetOppositePansWithDistance:(double)distance
{
  if (self->_clipCount != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:438 description:{@"Invalid parameter not satisfying: %@", @"_clipCount == 2"}];
  }

  displayAssets = [(PXStoryClipKenBurnsEffectFactory *)self displayAssets];
  [displayAssets objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();

  clipComposition = [(PXStoryClipKenBurnsEffectFactory *)self clipComposition];
  [clipComposition mainDividerAxis];

  PXRectWithOriginAndSize();
}

- (void)_configureClipAtIndex:(int64_t)index forPanWithCameraMovingTowardsEdge:(unsigned int)edge distance:(double)distance
{
  v6 = distance * -0.5;
  if (edge == 3)
  {
    v7 = distance * -0.5;
  }

  else
  {
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (edge == 2)
  {
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
  }

  v8 = distance * 0.5;
  if (edge == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (edge)
  {
    v8 = *MEMORY[0x1E695EFF8];
    v10 = v9;
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (edge <= 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (edge <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  indexCopy = index;
  v14 = &self->_clipSourceTransforms[index];
  CGAffineTransformMakeTranslation(&v20, -v11, -v12);
  v15 = *&v20.a;
  v16 = *&v20.tx;
  *&v14->c = *&v20.c;
  *&v14->tx = v16;
  *&v14->a = v15;
  v17 = &self->_clipTargetTransforms[indexCopy];
  CGAffineTransformMakeTranslation(&v20, v11, v12);
  v18 = *&v20.a;
  v19 = *&v20.tx;
  *&v17->c = *&v20.c;
  *&v17->tx = v19;
  *&v17->a = v18;
}

- (void)getParameters:(id *)parameters forParallelPansWithDistance:(double)distance
{
  if (self->_clipCount <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"_clipCount >= 2"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PXStoryClipKenBurnsEffectFactory_getParameters_forParallelPansWithDistance___block_invoke;
  v9[3] = &unk_1E77498A0;
  v9[4] = self;
  *&v9[5] = distance;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:parameters forConfiguration:v9];
}

__n128 __78__PXStoryClipKenBurnsEffectFactory_getParameters_forParallelPansWithDistance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clipComposition];
  v3 = [v2 mainDividerAxis];

  switch(v3)
  {
    case 1:
      v7 = 2;
      goto LABEL_7;
    case 2:
      v7 = 3;
LABEL_7:
      [*(a1 + 32) _configureClipAtIndex:0 forPanWithCameraMovingTowardsEdge:v7 distance:*(a1 + 40)];
      break;
    case 0:
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipKenBurnsEffectFactory getParameters:forParallelPansWithDistance:]_block_invoke"];
      [v5 handleFailureInFunction:v6 file:@"PXStoryClipKenBurnsEffect.m" lineNumber:401 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v8 = *(a1 + 32);
  if (*(v8 + 40) >= 2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (*(v8 + 96) + v9);
      v12 = v11[1];
      v11[3] = *v11;
      v11[4] = v12;
      v11[5] = v11[2];
      v13 = *(*(a1 + 32) + 104) + v9;
      v14 = *(v13 + 16);
      *(v13 + 48) = *v13;
      *(v13 + 64) = v14;
      result = *(v13 + 32);
      *(v13 + 80) = result;
      ++v10;
      v8 = *(a1 + 32);
      v9 += 48;
    }

    while (v10 < *(v8 + 40));
  }

  return result;
}

- (void)getParameters:(id *)parameters forOppositePansWithDistance:(double)distance
{
  if (self->_clipCount <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"_clipCount >= 2"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PXStoryClipKenBurnsEffectFactory_getParameters_forOppositePansWithDistance___block_invoke;
  v9[3] = &unk_1E77498A0;
  v9[4] = self;
  *&v9[5] = distance;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:parameters forConfiguration:v9];
}

__n128 __78__PXStoryClipKenBurnsEffectFactory_getParameters_forOppositePansWithDistance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clipComposition];
  v3 = [v2 mainDividerAxis];

  switch(v3)
  {
    case 1:
      v7 = 3;
      v8 = 1;
      goto LABEL_7;
    case 2:
      v7 = 0;
      v8 = 2;
LABEL_7:
      [*(a1 + 32) _configureClipAtIndex:0 forPanWithCameraMovingTowardsEdge:v8 distance:*(a1 + 40)];
      [*(a1 + 32) _configureClipAtIndex:1 forPanWithCameraMovingTowardsEdge:v7 distance:*(a1 + 40)];
      break;
    case 0:
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryClipKenBurnsEffectFactory getParameters:forOppositePansWithDistance:]_block_invoke"];
      [v5 handleFailureInFunction:v6 file:@"PXStoryClipKenBurnsEffect.m" lineNumber:378 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v9 = *(a1 + 32);
  if (*(v9 + 40) >= 3)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = (*(v9 + 96) + v10);
      v13 = v12[1];
      v12[6] = *v12;
      v12[7] = v13;
      v12[8] = v12[2];
      v14 = *(*(a1 + 32) + 104) + v10;
      v15 = *(v14 + 16);
      *(v14 + 96) = *v14;
      *(v14 + 112) = v15;
      result = *(v14 + 32);
      *(v14 + 128) = result;
      ++v11;
      v9 = *(a1 + 32);
      v10 += 48;
    }

    while (v11 < *(v9 + 40));
  }

  return result;
}

- (void)getParameters:(id *)parameters forVerticallyPanningPreferredRectMovingTowardsVerticalEdge:(unsigned int)edge
{
  if (self->_clipCount != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"_clipCount == 1"}];
  }

  if ((edge & 0xFFFFFFFD) != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"edge == CGRectMinYEdge || edge == CGRectMaxYEdge"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __109__PXStoryClipKenBurnsEffectFactory_getParameters_forVerticallyPanningPreferredRectMovingTowardsVerticalEdge___block_invoke;
  v10[3] = &unk_1E7738AA8;
  v10[4] = self;
  v10[5] = a2;
  edgeCopy = edge;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:parameters forConfiguration:v10];
}

- (void)getParameters:(id *)parameters forPanWithCameraMovingTowardsEdge:(unsigned int)edge distance:(double)distance
{
  if (self->_clipCount != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"_clipCount == 1"}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PXStoryClipKenBurnsEffectFactory_getParameters_forPanWithCameraMovingTowardsEdge_distance___block_invoke;
  v11[3] = &unk_1E7738AA8;
  v11[4] = self;
  edgeCopy = edge;
  *&v11[5] = distance;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:parameters forConfiguration:v11];
}

__n128 __93__PXStoryClipKenBurnsEffectFactory_getParameters_forPanWithCameraMovingTowardsEdge_distance___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureClipAtIndex:0 forPanWithCameraMovingTowardsEdge:*(a1 + 48) distance:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 40) >= 2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (*(v3 + 96) + v4);
      v7 = v6[1];
      v6[3] = *v6;
      v6[4] = v7;
      v6[5] = v6[2];
      v8 = *(*(a1 + 32) + 104) + v4;
      v9 = *(v8 + 16);
      *(v8 + 48) = *v8;
      *(v8 + 64) = v9;
      result = *(v8 + 32);
      *(v8 + 80) = result;
      ++v5;
      v3 = *(a1 + 32);
      v4 += 48;
    }

    while (v5 < *(v3 + 40));
  }

  return result;
}

- (void)getParameters:(id *)parameters forZoomWithScale:(double)scale relativeTransformOrigin:(CGPoint)origin
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__PXStoryClipKenBurnsEffectFactory_getParameters_forZoomWithScale_relativeTransformOrigin___block_invoke;
  v5[3] = &unk_1E7749770;
  originCopy = origin;
  v5[4] = self;
  scaleCopy = scale;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:parameters forConfiguration:v5];
}

- (void)getParametersForNoEffect:(id *)effect
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PXStoryClipKenBurnsEffectFactory_getParametersForNoEffect___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXStoryClipKenBurnsEffectFactory *)self _getParameters:effect forConfiguration:v3];
}

uint64_t __61__PXStoryClipKenBurnsEffectFactory_getParametersForNoEffect___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[5] >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v6 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      v7 = (v1[12] + v2);
      v8 = (v1[13] + v2);
      *v8 = v4;
      v8[1] = v5;
      v8[2] = v6;
      *v7 = v4;
      v7[1] = v5;
      v7[2] = v6;
      ++v3;
      v1 = *(result + 32);
      v2 += 48;
    }

    while (v3 < v1[5]);
  }

  return result;
}

- (void)_getParameters:(id *)parameters forConfiguration:(id)configuration
{
  configurationCopy = configuration;
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 0.0, 0.0);
  clipAssetIndexes = [(PXStoryClipComposition *)self->_clipComposition clipAssetIndexes];
  if (self->_clipCount >= 1)
  {
    [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndexedSubscript:*clipAssetIndexes];
    objc_claimAutoreleasedReturnValue();
    PXRectWithOriginAndSize();
  }

  configurationCopy[2]();
  if (self->_clipCount >= 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PXStoryClipKenBurnsEffectFactory__getParameters_forConfiguration___block_invoke;
    aBlock[3] = &unk_1E7738A58;
    v9 = v11;
    v10 = a2;
    aBlock[4] = self;
    _Block_copy(aBlock);
    PXRectWithOriginAndSize();
  }
}

__n128 __68__PXStoryClipKenBurnsEffectFactory__getParameters_forConfiguration___block_invoke@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = *(a1 + 56);
  *&v9.a = *(a1 + 40);
  *&v9.c = v6;
  *&v9.tx = *(a1 + 72);
  if (CGAffineTransformEqualToTransform(&t1, &v9))
  {
    PXAssertGetLog();
  }

  v7 = a2[1];
  *a3 = *a2;
  a3[1] = v7;
  result = a2[2];
  a3[2] = result;
  return result;
}

BOOL __68__PXStoryClipKenBurnsEffectFactory__getParameters_forConfiguration___block_invoke_22(double a1, double a2, double a3, double a4)
{
  result = CGRectIsEmpty(*&a1);
  if (!result)
  {
    PXRectFlippedVertically();
  }

  return result;
}

- (CGRect)clipFrameForClipIndex:(int64_t)index
{
  if (self->_clipCount <= index)
  {
    v3 = MEMORY[0x1E695F050];
  }

  else
  {
    v3 = &self->_clipFrames[index];
  }

  width = v3->size.width;
  height = v3->size.height;
  x = v3->origin.x;
  y = v3->origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)assetRectForClipIndex:(int64_t)index
{
  if (self->_clipCount > index)
  {
    PXRectWithOriginAndSize();
  }

  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_configureWithSpec:(id)spec clipComposition:(id)composition displayAssets:(id)assets croppingContext:(id)context croppingOptions:(unint64_t)options assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)self0
{
  specCopy = spec;
  compositionCopy = composition;
  assetsCopy = assets;
  contextCopy = context;
  objc_storeStrong(&self->_spec, spec);
  objc_storeStrong(&self->_clipComposition, composition);
  objc_storeStrong(&self->_displayAssets, assets);
  objc_storeStrong(&self->_croppingContext, context);
  self->_croppingOptions = options;
  numberOfClips = [(PXStoryClipComposition *)self->_clipComposition numberOfClips];
  self->_clipCount = numberOfClips;
  if (numberOfClips <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_clipCount >= 1", compositionCopy, specCopy}];
  }

  _PXGArrayCapacityResizeToCount();
}

- (void)dealloc
{
  free(self->_clipFrames);
  free(self->_clipSafeAreaInsets);
  free(self->_clipAssetIndexes);
  free(self->_clipAssetSizes);
  free(self->_clipSuggestedCrops);
  free(self->_clipSourceTransforms);
  free(self->_clipTargetTransforms);
  free(self->_assetContentInfos);
  free(self->_assetPlaybackStyles);
  v3.receiver = self;
  v3.super_class = PXStoryClipKenBurnsEffectFactory;
  [(PXStoryClipKenBurnsEffectFactory *)&v3 dealloc];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PXStoryClipKenBurnsEffectFactory;
  return [(PXStoryClipKenBurnsEffectFactory *)&v3 init];
}

- (PXStoryClipKenBurnsEffectFactory)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipKenBurnsEffect.m" lineNumber:121 description:{@"%s is not available as initializer", "-[PXStoryClipKenBurnsEffectFactory init]"}];

  abort();
}

+ (void)genericFactoryForSpec:(id)spec assetContentSize:(CGSize)size handler:(id)handler
{
  height = size.height;
  width = size.width;
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  specCopy = spec;
  +[PXStoryClipCompositionFactory oneUpComposition];
  objc_claimAutoreleasedReturnValue();
  v10 = [off_1E77218F8 alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__PXStoryClipKenBurnsEffectFactory_genericFactoryForSpec_assetContentSize_handler___block_invoke;
  v11[3] = &__block_descriptor_48_e35_v16__0___PXMutableSyntheticAsset__8l;
  *&v11[4] = width;
  *&v11[5] = height;
  v12[0] = [v10 initWithConfiguration:v11];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromArray();
}

+ (void)factoryForSpec:(id)spec clipComposition:(id)composition displayAssets:(id)assets croppingContext:(id)context croppingOptions:(unint64_t)options assetContentInfos:(id *)infos playbackStyles:(const int64_t *)styles separatorEffectParameters:(id *)self0 handler:(id)self1
{
  specCopy = spec;
  compositionCopy = composition;
  assetsCopy = assets;
  contextCopy = context;
  handlerCopy = handler;
  reusableInstances = [self reusableInstances];
  objc_sync_enter(reusableInstances);
  px_popLast = [reusableInstances px_popLast];
  v22 = px_popLast;
  if (px_popLast)
  {
    _init = px_popLast;
  }

  else
  {
    _init = [[PXStoryClipKenBurnsEffectFactory alloc] _init];
  }

  v24 = _init;

  objc_sync_exit(reusableInstances);
  [v24 _configureWithSpec:specCopy clipComposition:compositionCopy displayAssets:assetsCopy croppingContext:contextCopy croppingOptions:options assetContentInfos:infos playbackStyles:styles separatorEffectParameters:parameters];
  handlerCopy[2](handlerCopy, v24);
  v25 = reusableInstances;
  objc_sync_enter(v25);
  [v25 addObject:v24];
  objc_sync_exit(v25);
}

+ (void)releaseCachedResources
{
  obj = [self reusableInstances];
  objc_sync_enter(obj);
  [obj removeAllObjects];
  objc_sync_exit(obj);
}

+ (id)reusableInstances
{
  if (reusableInstances_onceToken != -1)
  {
    dispatch_once(&reusableInstances_onceToken, &__block_literal_global_104207);
  }

  v3 = reusableInstances_reusableInstances;

  return v3;
}

void __53__PXStoryClipKenBurnsEffectFactory_reusableInstances__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = reusableInstances_reusableInstances;
  reusableInstances_reusableInstances = v0;
}

@end