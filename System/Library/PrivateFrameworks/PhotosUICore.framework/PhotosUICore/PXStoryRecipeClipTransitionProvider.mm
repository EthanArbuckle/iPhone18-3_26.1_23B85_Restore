@interface PXStoryRecipeClipTransitionProvider
- ($7B05257DCED3654557744F96476E9D8A)_nextTransitionFromTable:(SEL)table currentMotion:(id)motion nextMotion:(id *)nextMotion;
- ($7B05257DCED3654557744F96476E9D8A)nextIntraMomentTransition;
- (BOOL)_cameraMovement:(int64_t)movement allowsTransition:(int64_t)transition;
- (PXStoryRecipeClipTransitionProvider)init;
- (PXStoryRecipeClipTransitionProvider)initWithConfiguration:(id)configuration colorGradeCategory:(id)category songPace:(int64_t)pace randomNumberGenerator:(id)generator;
- (void)provideTransitionsForMomentClipRange:(_NSRange)range withClipCatalog:(id)catalog usingBlock:(id)block;
@end

@implementation PXStoryRecipeClipTransitionProvider

- (void)provideTransitionsForMomentClipRange:(_NSRange)range withClipCatalog:(id)catalog usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  catalogCopy = catalog;
  blockCopy = block;
  v53 = 0u;
  v54 = 0u;
  v9 = length - 1;
  v36 = length - 1 + location;
  if (!__CFADD__(length - 1, location))
  {
    v10 = 0;
    v35 = catalogCopy;
    while (1)
    {
      v37 = v10;
      v11 = location + 1;
      numberOfClips = [catalogCopy numberOfClips];
      v13 = [catalogCopy clipAtIndex:location];
      if (location + 1 >= numberOfClips)
      {
        v14 = 0;
      }

      else
      {
        v14 = [catalogCopy clipAtIndex:location + 1];
      }

      displayAssets = [v13 displayAssets];
      v40 = [displayAssets count];

      v42 = v14;
      if (v11 >= numberOfClips)
      {
        moduleInfo = [v13 moduleInfo];
        [v13 moduleInfo];
        v20 = v23;
        moduleInfo2 = 0;
        v22 = 0;
        v41 = 1;
      }

      else
      {
        displayAssets2 = [v14 displayAssets];
        v41 = [displayAssets2 count] < 2;

        moduleInfo = [v13 moduleInfo];
        moduleInfo2 = [v14 moduleInfo];
        [v13 moduleInfo];
        v20 = v19;
        [v14 moduleInfo];
        v22 = v21 & 1;
      }

      [v13 moduleInfo];
      v25 = v24;
      v26 = moduleInfo == moduleInfo2 ? v22 : 1;
      v51 = 0u;
      v52 = 0u;
      if ((v20 & 1) != 0 || v22 || !moduleInfo || moduleInfo != moduleInfo2)
      {
        break;
      }

      v51 = v53;
      v52 = v54;
      catalogCopy = v35;
      v27 = v42;
      v10 = v26;
LABEL_31:
      v34 = blockCopy[2];
      v43 = v51;
      v44 = v52;
      v34(blockCopy, &v43, location);
      v53 = v51;
      v54 = v52;

      --v9;
      ++location;
      if (v11 > v36)
      {
        goto LABEL_3;
      }
    }

    v28 = self->_baseTransitionTable;
    p_nUpTransitionTable = &self->_nUpTransitionTable;
    v10 = v26;
    if (v40 < 2 && v41)
    {
      v30 = 24;
      if (!v9)
      {
        v30 = 16;
      }

      if ((v9 == 0) | v20 & 1)
      {
        p_nUpTransitionTable = (&self->super.isa + v30);
      }

      else
      {
        p_nUpTransitionTable = &self->_interModuleTransitionTable;
        if ((v26 & (v37 ^ 1) & 1) == 0)
        {
          p_nUpTransitionTable = &self->_interModuleTransitionTable;
          if ((v25 & 0x100) == 0)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v31 = *p_nUpTransitionTable;

    v28 = v31;
LABEL_24:
    catalogCopy = v35;
    v32 = [v35 clipAtIndex:location];
    v33 = v32;
    v43 = 0uLL;
    *&v44 = 0;
    v27 = v42;
    if (v32)
    {
      [v32 motionInfo];
    }

    v49 = 0uLL;
    v50 = 0;
    if (v41)
    {
      v49 = 0uLL;
      v50 = 0;
    }

    else if (v42)
    {
      [v42 motionInfo];
    }

    v47 = v43;
    v48 = v44;
    v45 = v49;
    v46 = v50;
    [(PXStoryRecipeClipTransitionProvider *)self _nextTransitionFromTable:v28 currentMotion:&v47 nextMotion:&v45];

    goto LABEL_31;
  }

LABEL_3:
}

- ($7B05257DCED3654557744F96476E9D8A)nextIntraMomentTransition
{
  baseTransitionTable = self->_baseTransitionTable;
  *&retstr->var0 = 0u;
  retstr->var2 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  return [(PXStoryRecipeClipTransitionProvider *)self _nextTransitionFromTable:baseTransitionTable currentMotion:v6 nextMotion:v5];
}

- ($7B05257DCED3654557744F96476E9D8A)_nextTransitionFromTable:(SEL)table currentMotion:(id)motion nextMotion:(id *)nextMotion
{
  var0 = nextMotion->var0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PXStoryRecipeClipTransitionProvider__nextTransitionFromTable_currentMotion_nextMotion___block_invoke;
  v17[3] = &unk_1E77433A8;
  v17[4] = self;
  v17[5] = var0;
  v11 = [motion nextValuePassingTest:v17];
  integerValue = [v11 integerValue];
  if (integerValue == 8)
  {
    if (a6->var0 == 1 || (a6 = nextMotion, nextMotion->var0 == 1))
    {
      v13 = a6->var1.var0.var0;
      if (v13 > 1)
      {
        if ((v13 - 2) < 2)
        {
          v14 = 512;
LABEL_20:
          retstr->var0 = 8;
          retstr->var1 = 0.0;
          retstr->var2.var0.var0 = 0;
          retstr->var2.var0.var1 = 0;
          LOWORD(retstr->var2.var0.var0) = v14;
          goto LABEL_21;
        }

        if (v13 == 4)
        {
LABEL_19:
          v14 = 256;
          goto LABEL_20;
        }

LABEL_14:
        PXAssertGetLog();
      }

      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }
    }

    if ([(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2])
    {
      v14 = 256;
    }

    else
    {
      v14 = 512;
    }

    goto LABEL_20;
  }

  var1 = nextMotion->var1;
  retstr->var0 = integerValue;
  retstr->var1 = 0.0;
  retstr->var2.var0.var0 = 0;
  retstr->var2.var0.var1 = 0;
  if (integerValue == 7 || integerValue == 6)
  {
    retstr->var2.var0.var0 = var1.var0.var0;
  }

  else if (integerValue == 5)
  {
    retstr->var2 = var1;
  }

LABEL_21:

  return result;
}

uint64_t __89__PXStoryRecipeClipTransitionProvider__nextTransitionFromTable_currentMotion_nextMotion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _cameraMovement:v5 allowsTransition:v3];
}

- (BOOL)_cameraMovement:(int64_t)movement allowsTransition:(int64_t)transition
{
  v4 = transition != 5 || movement == 1;
  if (transition == 6)
  {
    v4 = movement == 2;
  }

  if (transition == 7)
  {
    return movement == 3;
  }

  else
  {
    return v4;
  }
}

- (PXStoryRecipeClipTransitionProvider)initWithConfiguration:(id)configuration colorGradeCategory:(id)category songPace:(int64_t)pace randomNumberGenerator:(id)generator
{
  configurationCopy = configuration;
  categoryCopy = category;
  generatorCopy = generator;
  v36.receiver = self;
  v36.super_class = PXStoryRecipeClipTransitionProvider;
  v13 = [(PXStoryRecipeClipTransitionProvider *)&v36 init];
  v14 = v13;
  if (v13)
  {
    v13->_songPace = pace;
    defaultTransitionTable = [configurationCopy defaultTransitionTable];
    v35 = [defaultTransitionTable transitionsForColorGrade:categoryCopy songPace:pace];

    v16 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v35 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F190D8E8];
    baseTransitionTable = v14->_baseTransitionTable;
    v14->_baseTransitionTable = v16;

    interMomentTransitionTable = [configurationCopy interMomentTransitionTable];
    v19 = [interMomentTransitionTable transitionsForColorGrade:categoryCopy songPace:pace];

    v20 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v19 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F190D900];
    interMomentTransitionTable = v14->_interMomentTransitionTable;
    v14->_interMomentTransitionTable = v20;

    portraitTransitionTable = [configurationCopy portraitTransitionTable];
    v23 = [portraitTransitionTable transitionsForColorGrade:categoryCopy songPace:pace];

    v24 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v23 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F190D918];
    portraitTransitionTable = v14->_portraitTransitionTable;
    v14->_portraitTransitionTable = v24;

    nUpTransitionTable = [configurationCopy nUpTransitionTable];
    v27 = [nUpTransitionTable transitionsForColorGrade:categoryCopy songPace:pace];

    v28 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v27 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F190D930];
    nUpTransitionTable = v14->_nUpTransitionTable;
    v14->_nUpTransitionTable = v28;

    interModuleTransitionTable = [configurationCopy interModuleTransitionTable];
    v31 = [interModuleTransitionTable transitionsForColorGrade:categoryCopy songPace:pace];

    v32 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v31 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F190D918];
    interModuleTransitionTable = v14->_interModuleTransitionTable;
    v14->_interModuleTransitionTable = v32;

    objc_storeStrong(&v14->_randomNumberGenerator, generator);
  }

  return v14;
}

- (PXStoryRecipeClipTransitionProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeClipTransitionProvider.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXStoryRecipeClipTransitionProvider init]"}];

  abort();
}

@end