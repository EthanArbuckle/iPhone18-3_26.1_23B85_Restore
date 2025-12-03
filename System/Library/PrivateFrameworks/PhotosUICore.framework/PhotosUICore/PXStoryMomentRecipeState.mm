@interface PXStoryMomentRecipeState
- (PXStoryMomentRecipeState)init;
- (PXStoryMomentRecipeState)initWithRandomNumberGenerator:(id)generator;
- (int64_t)nextEmptySpaceStrategy;
- (unint64_t)_nextModuleRecipeWithModuleClipRange:(_NSRange)range clipCatalog:(id)catalog;
- (unint64_t)next2UpPanRelativeMotion;
- (unint64_t)next3UpPanRelativeMotion;
- (unint64_t)nextBaseMomentRecipe;
- (unint64_t)nextNUpPanRelativeMotionWithN:(int64_t)n;
- (unint64_t)nextPanDirection;
- (unint64_t)nextRotateDirection;
- (unint64_t)nextScaleDirection;
- (unint64_t)nextSingleAssetMomentRecipe;
@end

@implementation PXStoryMomentRecipeState

- (int64_t)nextEmptySpaceStrategy
{
  v2 = 1;
  if (self->_previousEmptySpaceStrategy == 1)
  {
    v2 = 2;
  }

  self->_previousEmptySpaceStrategy = v2;
  return v2;
}

- (unint64_t)nextSingleAssetMomentRecipe
{
  v2 = 7;
  if (self->_previousSingleAssetMomentRecipe == 7)
  {
    v2 = 8;
  }

  self->_previousSingleAssetMomentRecipe = v2;
  return v2;
}

- (unint64_t)_nextModuleRecipeWithModuleClipRange:(_NSRange)range clipCatalog:(id)catalog
{
  length = range.length;
  location = range.location;
  catalogCopy = catalog;
  if (!length)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"moduleClipRange.length != 0"}];
  }

  v9 = [catalogCopy clipAtIndex:location];
  moduleInfo = [v9 moduleInfo];
  if ((moduleInfo - 1) > 1)
  {
    if (moduleInfo != 3)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:154 description:@"Unhandled module type"];

      abort();
    }

    v11 = 6;
  }

  else
  {
    if (self->_previousPortraitMomentRecipe == 2 || ![PXStoryRecipeClipUtilities canRotate1UpClipsInRange:location clipCatalog:length maxAdjacent1Ups:catalogCopy, 0])
    {
      v11 = 6;
    }

    else
    {
      v11 = 2;
    }

    self->_previousPortraitMomentRecipe = v11;
  }

  return v11;
}

- (unint64_t)nextBaseMomentRecipe
{
  basicRecipeFrequencyTable = self->_basicRecipeFrequencyTable;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PXStoryMomentRecipeState_nextBaseMomentRecipe__block_invoke;
  v7[3] = &unk_1E7746258;
  v7[4] = self;
  v4 = [(PFStoryAutoEditFrequencyTable *)basicRecipeFrequencyTable nextValuePassingTest:v7];
  integerValue = [v4 integerValue];
  self->_previousBaseMomentRecipe = integerValue;

  return integerValue;
}

- (unint64_t)nextRotateDirection
{
  v2 = 1;
  if (self->_previousRotateDirection == 1)
  {
    v2 = 2;
  }

  self->_previousRotateDirection = v2;
  return v2;
}

- (unint64_t)nextScaleDirection
{
  v2 = 1;
  if (self->_previousScaleDirection != 2)
  {
    v2 = 2;
  }

  self->_previousScaleDirection = v2;
  return v2;
}

- (unint64_t)nextNUpPanRelativeMotionWithN:(int64_t)n
{
  if (n == 3)
  {

    return [(PXStoryMomentRecipeState *)self next3UpPanRelativeMotion];
  }

  else
  {
    if (n != 2)
    {
      v13 = v4;
      v14 = v3;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:104 description:@"N should be 2 or 3"];

      abort();
    }

    return [(PXStoryMomentRecipeState *)self next2UpPanRelativeMotion];
  }
}

- (unint64_t)next3UpPanRelativeMotion
{
  v2 = 1;
  if (self->_previous3UpPanRelativeMotion != 2)
  {
    v2 = 2;
  }

  self->_previous3UpPanRelativeMotion = v2;
  return v2;
}

- (unint64_t)next2UpPanRelativeMotion
{
  v2 = 1;
  if (self->_previous2UpPanRelativeMotion != 2)
  {
    v2 = 2;
  }

  self->_previous2UpPanRelativeMotion = v2;
  return v2;
}

- (unint64_t)nextPanDirection
{
  v2 = 1;
  if (self->_previousPanDirection != 2)
  {
    v2 = 2;
  }

  self->_previousPanDirection = v2;
  return v2;
}

- (PXStoryMomentRecipeState)initWithRandomNumberGenerator:(id)generator
{
  v22[9] = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  v21.receiver = self;
  v21.super_class = PXStoryMomentRecipeState;
  v5 = [(PXStoryMomentRecipeState *)&v21 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 9) = 0;
    *(v5 + 56) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 8) = 0u;
    v7 = +[PXStorySettings sharedInstance];
    [v7 scaleRecipeRelativeFrequency];
    v9 = (v8 * 10.0);
    [v7 panRecipeRelativeFrequency];
    v11 = (v10 * 10.0);
    [v7 exposeToBlackRecipeRelativeFrequency];
    v13 = (v12 * 10.0);
    v22[0] = &unk_1F190A228;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v22[1] = v14;
    v22[2] = &unk_1F190A228;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v22[3] = v15;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    v22[4] = v16;
    v22[5] = &unk_1F190A228;
    v22[6] = &unk_1F190A228;
    v22[7] = &unk_1F190A228;
    v22[8] = &unk_1F190A228;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:9];

    v18 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v17 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F190A240];
    basicRecipeFrequencyTable = v6->_basicRecipeFrequencyTable;
    v6->_basicRecipeFrequencyTable = v18;
  }

  return v6;
}

- (PXStoryMomentRecipeState)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXStoryMomentRecipeState init]"}];

  abort();
}

@end