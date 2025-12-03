@interface PXStoryTransitionFactory
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)visibleOrderOutDurationForTransitionInfo:(SEL)info;
+ (id)effectTransitionWithInfo:(id *)info entityManager:(id)manager;
+ (id)segmentTransitionWithInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts storyTransitionCurveType:(unint64_t)type;
+ (id)wipeTransitionWithConfiguration:(id)configuration;
@end

@implementation PXStoryTransitionFactory

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)visibleOrderOutDurationForTransitionInfo:(SEL)info
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

+ (id)wipeTransitionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[PXStoryTransitionWipe alloc] initWithConfiguration:configurationCopy];

  return v4;
}

+ (id)segmentTransitionWithInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts storyTransitionCurveType:(unint64_t)type
{
  v33 = *MEMORY[0x1E69E9840];
  layoutsCopy = layouts;
  v12 = 0;
  var0 = info->var0;
  if (var0 <= 3)
  {
    if (info->var0 <= 1u)
    {
      if (!info->var0)
      {
        v15 = PLUIGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *&info->var2.var1;
          v30 = *&info->var0;
          v31 = v16;
          v32 = *&info->var3;
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
      v20 = *&info->var2.var1;
      v30 = *&info->var0;
      v31 = v20;
      v32 = *&info->var3;
      v18 = [(PXStoryTransitionCrossfade *)v19 initWithTransitionInfo:&v30 event:event clipLayouts:layoutsCopy storyTransitionCurveType:type];
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
    v22 = *&info->var2.var1;
    v30 = *&info->var0;
    v31 = v22;
    v32 = *&info->var3;
    v18 = [v21 initWithTransitionInfo:&v30 event:event clipLayouts:layoutsCopy];
    goto LABEL_24;
  }

  if (info->var0 <= 6u)
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = currentHandler;
        v26 = @"Use +[PXStoryTransitionFactory panTransitionWithConfiguration:] instead.";
        v27 = a2;
        selfCopy3 = self;
        v29 = 1120;
        goto LABEL_33;
    }
  }

  else
  {
    if (info->var0 <= 8u)
    {
      if (var0 == 7)
      {
        v14 = PXStoryTransitionRotate;
        goto LABEL_23;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = currentHandler;
      v26 = @"Use +[PXStoryTransitionFactory wipeTransitionWithConfiguration:] instead.";
      v27 = a2;
      selfCopy3 = self;
      v29 = 1129;
LABEL_33:
      [currentHandler handleFailureInMethod:v27 object:selfCopy3 file:@"PXStoryTransition.m" lineNumber:v29 description:v26];

      abort();
    }

    if (var0 == 9)
    {
      v14 = PXStoryTransitionZoom;
      goto LABEL_23;
    }

    if (var0 == 10)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = currentHandler;
      v26 = @"Not a valid transition.";
      v27 = a2;
      selfCopy3 = self;
      v29 = 1135;
      goto LABEL_33;
    }
  }

LABEL_25:

  return v12;
}

+ (id)effectTransitionWithInfo:(id *)info entityManager:(id)manager
{
  managerCopy = manager;
  v8 = 0;
  var0 = info->var0;
  if (var0 <= 6)
  {
    if (var0 != 4)
    {
      if (var0 != 5)
      {
        goto LABEL_18;
      }

      v10 = BYTE5(info->var2.var3);
      if ((v10 - 1) < 2)
      {
        v11 = &off_1E7721608;
      }

      else
      {
        if ((v10 - 3) >= 2)
        {
          if (!BYTE5(info->var2.var3))
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:1067 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          v12 = 0;
          goto LABEL_15;
        }

        v11 = &off_1E7721700;
      }

      v12 = [objc_alloc(*v11) initWithEntityManager:managerCopy];
LABEL_15:
      v20 = *&info->var2.var1;
      v23 = *&info->var0;
      v24 = v20;
      v25 = *&info->var3;
      v16 = [PXStoryTransitionPan panWithEffect:v12 transitionInfo:&v23];
      goto LABEL_16;
    }

    v12 = [[off_1E77215E8 alloc] initWithEntityManager:managerCopy];
    v13 = PXStoryTransitionExposureBleed;
LABEL_11:
    v14 = [v13 alloc];
    v15 = *&info->var2.var1;
    v23 = *&info->var0;
    v24 = v15;
    v25 = *&info->var3;
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

    v12 = [[off_1E7721680 alloc] initWithEntityManager:managerCopy];
    v13 = PXStoryTransitionZoom;
    goto LABEL_11;
  }

  v12 = [[off_1E7721698 alloc] initWithEntityManager:managerCopy];
  v17 = [[off_1E7721698 alloc] initWithEntityManager:managerCopy];
  v18 = [PXStoryTransitionRotate alloc];
  v19 = *&info->var2.var1;
  v23 = *&info->var0;
  v24 = v19;
  v25 = *&info->var3;
  v8 = [(PXStoryTransitionRotate *)v18 initWithTransitionInfo:&v23 effect:v12 auxiliaryEffect:v17];

LABEL_17:
LABEL_18:

  return v8;
}

@end