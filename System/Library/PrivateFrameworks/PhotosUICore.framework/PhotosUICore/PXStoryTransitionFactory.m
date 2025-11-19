@interface PXStoryTransitionFactory
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)visibleOrderOutDurationForTransitionInfo:(SEL)a3;
+ (id)effectTransitionWithInfo:(id *)a3 entityManager:(id)a4;
+ (id)segmentTransitionWithInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5 storyTransitionCurveType:(unint64_t)a6;
+ (id)wipeTransitionWithConfiguration:(id)a3;
@end

@implementation PXStoryTransitionFactory

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)visibleOrderOutDurationForTransitionInfo:(SEL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  var0 = a4->var0;
  if (var0 >= 0xA)
  {
    PXAssertGetLog();
  }

  v6 = dword_1A5381778[var0];
  *&v8.value = *(&a4->var1 + 3);
  v8.epoch = *&a4->var2.var2;
  return CMTimeMultiplyByRatio(retstr, &v8, v6, 100);
}

+ (id)wipeTransitionWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[PXStoryTransitionWipe alloc] initWithConfiguration:v3];

  return v4;
}

+ (id)segmentTransitionWithInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5 storyTransitionCurveType:(unint64_t)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = 0;
  var0 = a3->var0;
  if (var0 <= 3)
  {
    if (a3->var0 <= 1u)
    {
      if (!a3->var0)
      {
        v15 = PLUIGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *&a3->var2.var1;
          v30 = *&a3->var0;
          v31 = v16;
          v32 = *&a3->var3;
          v17 = PXStoryTransitionInfoDescription(&v30);
          LODWORD(v30) = 138543362;
          *(&v30 + 4) = v17;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "Requesting .none transition with transition info: %{public}@", &v30, 0xCu);
        }
      }

      v18 = +[PXStoryTransitionCut cut];
      goto LABEL_24;
    }

    if (var0 == 2)
    {
      v19 = [PXStoryTransitionCrossfade alloc];
      v20 = *&a3->var2.var1;
      v30 = *&a3->var0;
      v31 = v20;
      v32 = *&a3->var3;
      v18 = [(PXStoryTransitionCrossfade *)v19 initWithTransitionInfo:&v30 event:a4 clipLayouts:v11 storyTransitionCurveType:a6];
LABEL_24:
      v12 = v18;
      goto LABEL_25;
    }

    if (var0 != 3)
    {
      goto LABEL_25;
    }

    v14 = PXStoryTransitionFadeToBlack;
LABEL_23:
    v21 = [v14 alloc];
    v22 = *&a3->var2.var1;
    v30 = *&a3->var0;
    v31 = v22;
    v32 = *&a3->var3;
    v18 = [v21 initWithTransitionInfo:&v30 event:a4 clipLayouts:v11];
    goto LABEL_24;
  }

  if (a3->var0 <= 6u)
  {
    switch(var0)
    {
      case 4u:
        v14 = PXStoryTransitionExposureBleed;
        goto LABEL_23;
      case 6u:
        v14 = PXStoryTransitionScale;
        goto LABEL_23;
      case 5u:
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = v24;
        v26 = @"Use +[PXStoryTransitionFactory panTransitionWithConfiguration:] instead.";
        v27 = a2;
        v28 = a1;
        v29 = 1120;
        goto LABEL_33;
    }
  }

  else
  {
    if (a3->var0 <= 8u)
    {
      if (var0 == 7)
      {
        v14 = PXStoryTransitionRotate;
        goto LABEL_23;
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = v24;
      v26 = @"Use +[PXStoryTransitionFactory wipeTransitionWithConfiguration:] instead.";
      v27 = a2;
      v28 = a1;
      v29 = 1129;
LABEL_33:
      [v24 handleFailureInMethod:v27 object:v28 file:@"PXStoryTransition.m" lineNumber:v29 description:v26];

      abort();
    }

    if (var0 == 9)
    {
      v14 = PXStoryTransitionZoom;
      goto LABEL_23;
    }

    if (var0 == 10)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = v24;
      v26 = @"Not a valid transition.";
      v27 = a2;
      v28 = a1;
      v29 = 1135;
      goto LABEL_33;
    }
  }

LABEL_25:

  return v12;
}

+ (id)effectTransitionWithInfo:(id *)a3 entityManager:(id)a4
{
  v7 = a4;
  v8 = 0;
  var0 = a3->var0;
  if (var0 <= 6)
  {
    if (var0 != 4)
    {
      if (var0 != 5)
      {
        goto LABEL_18;
      }

      v10 = BYTE5(a3->var2.var3);
      if ((v10 - 1) < 2)
      {
        v11 = &off_1E7721608;
      }

      else
      {
        if ((v10 - 3) >= 2)
        {
          if (!BYTE5(a3->var2.var3))
          {
            v22 = [MEMORY[0x1E696AAA8] currentHandler];
            [v22 handleFailureInMethod:a2 object:a1 file:@"PXStoryTransition.m" lineNumber:1067 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          v12 = 0;
          goto LABEL_15;
        }

        v11 = &off_1E7721700;
      }

      v12 = [objc_alloc(*v11) initWithEntityManager:v7];
LABEL_15:
      v20 = *&a3->var2.var1;
      v23 = *&a3->var0;
      v24 = v20;
      v25 = *&a3->var3;
      v16 = [PXStoryTransitionPan panWithEffect:v12 transitionInfo:&v23];
      goto LABEL_16;
    }

    v12 = [[off_1E77215E8 alloc] initWithEntityManager:v7];
    v13 = PXStoryTransitionExposureBleed;
LABEL_11:
    v14 = [v13 alloc];
    v15 = *&a3->var2.var1;
    v23 = *&a3->var0;
    v24 = v15;
    v25 = *&a3->var3;
    v16 = [v14 initWithTransitionInfo:&v23 effect:v12];
LABEL_16:
    v8 = v16;
    goto LABEL_17;
  }

  if (var0 != 7)
  {
    if (var0 != 9)
    {
      goto LABEL_18;
    }

    v12 = [[off_1E7721680 alloc] initWithEntityManager:v7];
    v13 = PXStoryTransitionZoom;
    goto LABEL_11;
  }

  v12 = [[off_1E7721698 alloc] initWithEntityManager:v7];
  v17 = [[off_1E7721698 alloc] initWithEntityManager:v7];
  v18 = [PXStoryTransitionRotate alloc];
  v19 = *&a3->var2.var1;
  v23 = *&a3->var0;
  v24 = v19;
  v25 = *&a3->var3;
  v8 = [(PXStoryTransitionRotate *)v18 initWithTransitionInfo:&v23 effect:v12 auxiliaryEffect:v17];

LABEL_17:
LABEL_18:

  return v8;
}

@end