@interface PXStoryRecipeClipTransitionProvider
- ($7B05257DCED3654557744F96476E9D8A)_nextTransitionFromTable:(SEL)a3 currentMotion:(id)a4 nextMotion:(id *)a5;
- ($7B05257DCED3654557744F96476E9D8A)nextIntraMomentTransition;
- (BOOL)_cameraMovement:(int64_t)a3 allowsTransition:(int64_t)a4;
- (PXStoryRecipeClipTransitionProvider)init;
- (PXStoryRecipeClipTransitionProvider)initWithConfiguration:(id)a3 colorGradeCategory:(id)a4 songPace:(int64_t)a5 randomNumberGenerator:(id)a6;
- (void)provideTransitionsForMomentClipRange:(_NSRange)a3 withClipCatalog:(id)a4 usingBlock:(id)a5;
@end

@implementation PXStoryRecipeClipTransitionProvider

- (void)provideTransitionsForMomentClipRange:(_NSRange)a3 withClipCatalog:(id)a4 usingBlock:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v38 = a5;
  v53 = 0u;
  v54 = 0u;
  v9 = length - 1;
  v36 = length - 1 + location;
  if (!__CFADD__(length - 1, location))
  {
    v10 = 0;
    v35 = v8;
    while (1)
    {
      v37 = v10;
      v11 = location + 1;
      v12 = [v8 numberOfClips];
      v13 = [v8 clipAtIndex:location];
      if (location + 1 >= v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v8 clipAtIndex:location + 1];
      }

      v15 = [v13 displayAssets];
      v40 = [v15 count];

      v42 = v14;
      if (v11 >= v12)
      {
        v17 = [v13 moduleInfo];
        [v13 moduleInfo];
        v20 = v23;
        v18 = 0;
        v22 = 0;
        v41 = 1;
      }

      else
      {
        v16 = [v14 displayAssets];
        v41 = [v16 count] < 2;

        v17 = [v13 moduleInfo];
        v18 = [v14 moduleInfo];
        [v13 moduleInfo];
        v20 = v19;
        [v14 moduleInfo];
        v22 = v21 & 1;
      }

      [v13 moduleInfo];
      v25 = v24;
      v26 = v17 == v18 ? v22 : 1;
      v51 = 0u;
      v52 = 0u;
      if ((v20 & 1) != 0 || v22 || !v17 || v17 != v18)
      {
        break;
      }

      v51 = v53;
      v52 = v54;
      v8 = v35;
      v27 = v42;
      v10 = v26;
LABEL_31:
      v34 = v38[2];
      v43 = v51;
      v44 = v52;
      v34(v38, &v43, location);
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
    v8 = v35;
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

- ($7B05257DCED3654557744F96476E9D8A)_nextTransitionFromTable:(SEL)a3 currentMotion:(id)a4 nextMotion:(id *)a5
{
  var0 = a5->var0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PXStoryRecipeClipTransitionProvider__nextTransitionFromTable_currentMotion_nextMotion___block_invoke;
  v17[3] = &unk_1E77433A8;
  v17[4] = self;
  v17[5] = var0;
  v11 = [a4 nextValuePassingTest:v17];
  v12 = [v11 integerValue];
  if (v12 == 8)
  {
    if (a6->var0 == 1 || (a6 = a5, a5->var0 == 1))
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

  var1 = a5->var1;
  retstr->var0 = v12;
  retstr->var1 = 0.0;
  retstr->var2.var0.var0 = 0;
  retstr->var2.var0.var1 = 0;
  if (v12 == 7 || v12 == 6)
  {
    retstr->var2.var0.var0 = var1.var0.var0;
  }

  else if (v12 == 5)
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

- (BOOL)_cameraMovement:(int64_t)a3 allowsTransition:(int64_t)a4
{
  v4 = a4 != 5 || a3 == 1;
  if (a4 == 6)
  {
    v4 = a3 == 2;
  }

  if (a4 == 7)
  {
    return a3 == 3;
  }

  else
  {
    return v4;
  }
}

- (PXStoryRecipeClipTransitionProvider)initWithConfiguration:(id)a3 colorGradeCategory:(id)a4 songPace:(int64_t)a5 randomNumberGenerator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v36.receiver = self;
  v36.super_class = PXStoryRecipeClipTransitionProvider;
  v13 = [(PXStoryRecipeClipTransitionProvider *)&v36 init];
  v14 = v13;
  if (v13)
  {
    v13->_songPace = a5;
    v15 = [v10 defaultTransitionTable];
    v35 = [v15 transitionsForColorGrade:v11 songPace:a5];

    v16 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v35 randomNumberGenerator:v12 fallbackValue:&unk_1F190D8E8];
    baseTransitionTable = v14->_baseTransitionTable;
    v14->_baseTransitionTable = v16;

    v18 = [v10 interMomentTransitionTable];
    v19 = [v18 transitionsForColorGrade:v11 songPace:a5];

    v20 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v19 randomNumberGenerator:v12 fallbackValue:&unk_1F190D900];
    interMomentTransitionTable = v14->_interMomentTransitionTable;
    v14->_interMomentTransitionTable = v20;

    v22 = [v10 portraitTransitionTable];
    v23 = [v22 transitionsForColorGrade:v11 songPace:a5];

    v24 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v23 randomNumberGenerator:v12 fallbackValue:&unk_1F190D918];
    portraitTransitionTable = v14->_portraitTransitionTable;
    v14->_portraitTransitionTable = v24;

    v26 = [v10 nUpTransitionTable];
    v27 = [v26 transitionsForColorGrade:v11 songPace:a5];

    v28 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v27 randomNumberGenerator:v12 fallbackValue:&unk_1F190D930];
    nUpTransitionTable = v14->_nUpTransitionTable;
    v14->_nUpTransitionTable = v28;

    v30 = [v10 interModuleTransitionTable];
    v31 = [v30 transitionsForColorGrade:v11 songPace:a5];

    v32 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v31 randomNumberGenerator:v12 fallbackValue:&unk_1F190D918];
    interModuleTransitionTable = v14->_interModuleTransitionTable;
    v14->_interModuleTransitionTable = v32;

    objc_storeStrong(&v14->_randomNumberGenerator, a6);
  }

  return v14;
}

- (PXStoryRecipeClipTransitionProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryRecipeClipTransitionProvider.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXStoryRecipeClipTransitionProvider init]"}];

  abort();
}

@end