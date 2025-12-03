@interface PVMotionEffectHitAreaComponent
+ (id)motionEffectPropertyKeyToPublishedParameterNameMap;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertTimeToTimelineTime_noLock:(SEL)lock forcePosterFrame:(id *)frame documentInfo:(BOOL)info;
- (BOOL)hitTest:(CGPoint)test atTime:(id *)time forcePosterFrame:(BOOL)frame scale:(CGPoint)scale adjustForMinimumSize:(BOOL)size minimumSize:(double)minimumSize sizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1;
- (CGPath)createPathsForHitTestingAtTime:(id *)time forcePosterFrame:(BOOL)frame scale:(CGPoint)scale adjustForMinimumSize:(BOOL)size minimumSize:(double)minimumSize sizeThreshold:(double)threshold viewSize:(CGSize)viewSize viewOrigin:(int)self0 outExpandedPath:(const CGPath *)self1;
- (id)hitAreaPointsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow scale:(CGPoint)scale viewSize:(CGSize)size viewOrigin:(int)origin;
- (id)objectHitTest:(CGPoint)test atTime:(id *)time forcePosterFrame:(BOOL)frame scale:(CGPoint)scale adjustForMinimumSize:(BOOL)size minimumSize:(double)minimumSize sizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1;
@end

@implementation PVMotionEffectHitAreaComponent

- (id)hitAreaPointsAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow scale:(CGPoint)scale viewSize:(CGSize)size viewOrigin:(int)origin
{
  v8 = *&origin;
  height = size.height;
  width = size.width;
  y = scale.y;
  x = scale.x;
  shadowCopy = shadow;
  frameCopy = frame;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  [motionEffect outputSize];
  v19 = v18;
  v21 = v20;

  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  LODWORD(motionEffect) = [motionEffect2 origin];

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  motionEffect3 = [(PVMotionEffectComponent *)self motionEffect];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = *"";
  v34[2] = __115__PVMotionEffectHitAreaComponent_hitAreaPointsAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke;
  v34[3] = &unk_279AA5A50;
  v38 = frameCopy;
  v35 = *time;
  *&v34[6] = x;
  *&v34[7] = y;
  v34[4] = self;
  v34[5] = &v39;
  v34[8] = v19;
  v34[9] = v21;
  *&v34[10] = width;
  *&v34[11] = height;
  v36 = motionEffect;
  v37 = v8;
  [motionEffect3 runEnsuringDocumentReadyAndLockingDocument:v34];

  if ([v40[5] count] < 3)
  {
    memset(&v33, 0, sizeof(v33));
    motionEffect4 = [(PVMotionEffectComponent *)self motionEffect];
    transformComponent = [motionEffect4 transformComponent];
    v27 = transformComponent;
    v31 = *&time->var0;
    var3 = time->var3;
    if (transformComponent)
    {
      [transformComponent cornersAtTime:&v31 forcePosterFrame:frameCopy includeDropShadow:shadowCopy scale:v8 viewSize:x viewOrigin:{y, width, height}];
    }

    else
    {
      memset(&v33, 0, sizeof(v33));
    }

    v30 = v33;
    v24 = PVCGPointQuad_to_NSArray(&v30);
  }

  else
  {
    v24 = v40[5];
  }

  v28 = v24;
  _Block_object_dispose(&v39, 8);

  return v28;
}

void __115__PVMotionEffectHitAreaComponent_hitAreaPointsAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 164))
  {
    v4 = *(a2 + 160);
    if (*(a1 + 128))
    {
      v5 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) motionEffect];
      v7 = [v6 timelineComponent];
      v5 = [v7 isForceRenderAtPosterFrameEnabled];
    }

    v38 = 0uLL;
    v39 = 0;
    v8 = [*(a1 + 32) motionEffect];
    v9 = [v8 timelineComponent];
    v10 = v9;
    v36 = *(a1 + 96);
    v37 = *(a1 + 112);
    if (v9)
    {
      [v9 timelineTimeFromComponentTime_NoLock:&v36 forcePosterFrame:v5 documentInfo:a2];
    }

    else
    {
      v38 = 0uLL;
      v39 = 0;
    }

    v11 = [*(a1 + 32) motionEffect];
    v31 = v38;
    v32 = v39;
    v12 = [v11 publishedParam_NoLock:a2 forKey:@"kPVHitAreaPointsKey" atTime:&v31 includeHidden:1];

    *&v31 = 0;
    *(&v31 + 1) = &v31;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = [v12 objectForKeyedSubscript:@"PVEffectParam_ValuesArrayKey"];
    if ([*(*(&v31 + 1) + 40) count] >= 3)
    {
      v13 = pv_CGPoint_scale_polygon(*(*(&v31 + 1) + 40), *(a1 + 48), *(a1 + 56));
      v14 = *(*(&v31 + 1) + 40);
      *(*(&v31 + 1) + 40) = v13;

      v15 = [*(a1 + 32) motionEffect];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = *"";
      v25[2] = __115__PVMotionEffectHitAreaComponent_hitAreaPointsAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_2;
      v25[3] = &unk_279AA53A0;
      v25[4] = *(a1 + 32);
      v25[5] = &v31;
      v26 = v4;
      v27 = v38;
      v28 = v39;
      v29 = *(a1 + 96);
      v30 = *(a1 + 112);
      v25[6] = a2;
      [v15 runWithInspectableProperties:v25];

      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(&v31 + 1) + 40), "count")}];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = *(*(&v31 + 1) + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = *"";
      v20 = *(a1 + 80);
      v22 = *(a1 + 64);
      v21[2] = __115__PVMotionEffectHitAreaComponent_hitAreaPointsAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_3;
      v21[3] = &unk_279AA5A28;
      v23 = v20;
      v24 = *(a1 + 120);
      v21[4] = *(a1 + 40);
      [v19 enumerateObjectsUsingBlock:v21];
    }

    _Block_object_dispose(&v31, 8);
  }
}

void __115__PVMotionEffectHitAreaComponent_hitAreaPointsAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) motionEffect];
  v5 = [v4 transformComponent];
  v6 = *(a1 + 48);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 76);
  v12 = *(a1 + 84);
  v13 = *(a1 + 100);
  v9 = [v5 transformObjectPointsToImage_NoLock:v7 objectID:v8 timelineTime:&v14 componentTime:&v12 flatten:0 documentInfo:v6 properties:v3];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __115__PVMotionEffectHitAreaComponent_hitAreaPointsAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 CGPointValue];
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v11 = *(a1 + 76);
  v14 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
  if (v12 == 2)
  {
    if (!v11)
    {
      v14 = v8 * 0.5;
      v13 = v9 * 0.5;
    }

    v24 = v11 == 1;
    if (v11 == 1)
    {
      v25 = v8 * 0.5;
    }

    else
    {
      v25 = v14;
    }

    if (v11 == 1)
    {
      v26 = v9 * 0.5;
    }

    else
    {
      v26 = v13;
    }
  }

  else
  {
    v15 = v8 * -0.5;
    v16 = v9 * 0.5;
    if (v11)
    {
      v17 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v17 = *(a1 + 48);
    }

    v18 = v11 == 2 || v11 == 0;
    if (v11 == 2)
    {
      v19 = v8 * -0.5;
    }

    else
    {
      v19 = *MEMORY[0x277CBF348];
    }

    if (v11 != 2)
    {
      v16 = v17;
    }

    v20 = v9 * -0.5;
    if (v11 == 1)
    {
      v21 = *(a1 + 48);
    }

    else
    {
      v21 = *(MEMORY[0x277CBF348] + 8);
    }

    v22 = v11 == 2;
    v23 = v11 != 2 && v11 == 1;
    if (!v22)
    {
      v15 = *MEMORY[0x277CBF348];
      v20 = v21;
    }

    if (v12)
    {
      v23 = 0;
    }

    else
    {
      v14 = v15;
    }

    if (!v12)
    {
      v13 = v20;
    }

    if (v12 == 1)
    {
      v24 = v18;
    }

    else
    {
      v24 = v23;
    }

    if (v12 == 1)
    {
      v25 = v19;
    }

    else
    {
      v25 = v14;
    }

    if (v12 == 1)
    {
      v26 = v16;
    }

    else
    {
      v26 = v13;
    }
  }

  v27 = *(a1 + 56) / v8;
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, v27, v10 / v9);
  v31 = v30;
  CGAffineTransformTranslate(&v32, &v31, v25, v26);
  v30 = v32;
  if (v24)
  {
    v31 = v30;
    CGAffineTransformScale(&v32, &v31, 1.0, -1.0);
    v30 = v32;
  }

  v28 = *(*(*(a1 + 32) + 8) + 40);
  v29 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v30.tx + v5 * v30.a + v7 * v30.c, v30.ty + v5 * v30.b + v7 * v30.d, *&v30.a, *&v30.c, *&v30.tx}];
  [v28 addObject:v29];
}

- (BOOL)hitTest:(CGPoint)test atTime:(id *)time forcePosterFrame:(BOOL)frame scale:(CGPoint)scale adjustForMinimumSize:(BOOL)size minimumSize:(double)minimumSize sizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1
{
  v11 = *&origin;
  height = viewSize.height;
  width = viewSize.width;
  sizeCopy = size;
  y = scale.y;
  x = scale.x;
  frameCopy = frame;
  v21 = test.y;
  v22 = test.x;
  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  isVisible = [motionEffect isVisible];

  if ((isVisible & 1) == 0)
  {
    return 0;
  }

  v28 = *&time->var0;
  var3 = time->var3;
  path = 0;
  height = [(PVMotionEffectHitAreaComponent *)self createPathsForHitTestingAtTime:&v28 forcePosterFrame:frameCopy scale:sizeCopy adjustForMinimumSize:v11 minimumSize:&path sizeThreshold:x viewSize:y viewOrigin:minimumSize outExpandedPath:threshold, width, height];
  v31.x = v22;
  v31.y = v21;
  if (CGPathContainsPoint(height, 0, v31, 0))
  {
    return 1;
  }

  result = 0;
  if (sizeCopy)
  {
    if (path)
    {
      v32.x = v22;
      v32.y = v21;
      return CGPathContainsPoint(path, 0, v32, 0);
    }
  }

  return result;
}

- (CGPath)createPathsForHitTestingAtTime:(id *)time forcePosterFrame:(BOOL)frame scale:(CGPoint)scale adjustForMinimumSize:(BOOL)size minimumSize:(double)minimumSize sizeThreshold:(double)threshold viewSize:(CGSize)viewSize viewOrigin:(int)self0 outExpandedPath:(const CGPath *)self1
{
  sizeCopy = size;
  v22 = *time;
  v15 = [(PVMotionEffectHitAreaComponent *)self hitAreaPointsAtTime:&v22 forcePosterFrame:frame includeDropShadow:0 scale:*&origin viewSize:scale.x viewOrigin:scale.y, viewSize.width, viewSize.height];
  closed_CGPath_with_points = pv_create_closed_CGPath_with_points(v15);
  if (path)
  {
    if (!sizeCopy || (pv_bounding_CGRect(v15), v18.f64[1] = v17, v19 = fmin(fmax(threshold / sqrt(vaddvq_f64(vmulq_f64(v18, v18))), 0.0), 1.0) * minimumSize, v19 <= 0.0) || (expanded_closed_CGPath_with_CGPath = pv_create_expanded_closed_CGPath_with_CGPath(closed_CGPath_with_points, v19)) == 0)
    {
      expanded_closed_CGPath_with_CGPath = CGPathRetain(closed_CGPath_with_points);
    }

    *path = expanded_closed_CGPath_with_CGPath;
  }

  return closed_CGPath_with_points;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertTimeToTimelineTime_noLock:(SEL)lock forcePosterFrame:(id *)frame documentInfo:(BOOL)info
{
  if (info)
  {
    isForceRenderAtPosterFrameEnabled = 1;
  }

  else
  {
    motionEffect = [(PVMotionEffectComponent *)self motionEffect];
    timelineComponent = [motionEffect timelineComponent];
    isForceRenderAtPosterFrameEnabled = [timelineComponent isForceRenderAtPosterFrameEnabled];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  timelineComponent2 = [motionEffect2 timelineComponent];
  v15 = timelineComponent2;
  v17 = *&frame->var0;
  var3 = frame->var3;
  if (timelineComponent2)
  {
    [timelineComponent2 timelineTimeFromComponentTime_NoLock:&v17 forcePosterFrame:isForceRenderAtPosterFrameEnabled documentInfo:a6];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)objectHitTest:(CGPoint)test atTime:(id *)time forcePosterFrame:(BOOL)frame scale:(CGPoint)scale adjustForMinimumSize:(BOOL)size minimumSize:(double)minimumSize sizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1
{
  height = viewSize.height;
  width = viewSize.width;
  y = test.y;
  x = test.x;
  v19 = [(PVMotionEffectComponent *)self motionEffect:time];
  [v19 outputSize];
  v21 = v20;
  v23 = v22;

  motionEffect = [(PVMotionEffectComponent *)self motionEffect];
  LODWORD(v19) = [motionEffect origin];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  motionEffect2 = [(PVMotionEffectComponent *)self motionEffect];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = *"";
  v28[2] = __145__PVMotionEffectHitAreaComponent_objectHitTest_atTime_forcePosterFrame_scale_adjustForMinimumSize_minimumSize_sizeThreshold_viewSize_viewOrigin___block_invoke;
  v28[3] = &unk_279AA5A50;
  v29 = *time;
  frameCopy = frame;
  *&v28[6] = x;
  *&v28[7] = y;
  *&v28[8] = width;
  *&v28[9] = height;
  v28[10] = v21;
  v28[11] = v23;
  originCopy = origin;
  v31 = v19;
  v28[4] = self;
  v28[5] = &v33;
  [motionEffect2 runEnsuringDocumentReadyAndLockingDocument:v28];

  v26 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v26;
}

void __145__PVMotionEffectHitAreaComponent_objectHitTest_atTime_forcePosterFrame_scale_adjustForMinimumSize_minimumSize_sizeThreshold_viewSize_viewOrigin___block_invoke(uint64_t a1, void **a2)
{
  memset(&v36, 0, sizeof(v36));
  v4 = *(a1 + 32);
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  if (v4)
  {
    [v4 convertTimeToTimelineTime_noLock:&v34 forcePosterFrame:*(a1 + 128) documentInfo:a2];
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  v10 = *(a1 + 120);
  v9 = *(a1 + 124);
  v12 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  if (v10 == 2)
  {
    if (!v9)
    {
      v12 = v5 * 0.5;
      v11 = v6 * 0.5;
    }

    v22 = v9 == 1;
    if (v9 == 1)
    {
      v23 = v5 * 0.5;
    }

    else
    {
      v23 = v12;
    }

    if (v9 == 1)
    {
      v24 = v6 * 0.5;
    }

    else
    {
      v24 = v11;
    }
  }

  else
  {
    v13 = v5 * -0.5;
    v14 = v6 * 0.5;
    if (v9)
    {
      v15 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v15 = *(a1 + 72);
    }

    v16 = v9 == 2 || v9 == 0;
    if (v9 == 2)
    {
      v17 = v5 * -0.5;
    }

    else
    {
      v17 = *MEMORY[0x277CBF348];
    }

    if (v9 != 2)
    {
      v14 = v15;
    }

    v18 = v6 * -0.5;
    if (v9 == 1)
    {
      v19 = *(a1 + 72);
    }

    else
    {
      v19 = *(MEMORY[0x277CBF348] + 8);
    }

    v20 = v9 == 2;
    v21 = v9 != 2 && v9 == 1;
    if (!v20)
    {
      v13 = *MEMORY[0x277CBF348];
      v18 = v19;
    }

    if (v10)
    {
      v21 = 0;
    }

    else
    {
      v12 = v13;
    }

    if (!v10)
    {
      v11 = v18;
    }

    if (v10 == 1)
    {
      v22 = v16;
    }

    else
    {
      v22 = v21;
    }

    if (v10 == 1)
    {
      v23 = v17;
    }

    else
    {
      v23 = v12;
    }

    if (v10 == 1)
    {
      v24 = v14;
    }

    else
    {
      v24 = v11;
    }
  }

  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeScale(&v37, v8 / v5, v7 / v6);
  v38 = v37;
  CGAffineTransformTranslate(&v39, &v38, v23, v24);
  v37 = v39;
  if (v22)
  {
    v38 = v37;
    CGAffineTransformScale(&v39, &v38, 1.0, -1.0);
    v37 = v39;
  }

  v25 = vaddq_f64(*&v37.tx, vaddq_f64(vmulq_n_f64(*&v37.a, v32), vmulq_n_f64(*&v37.c, v33)));
  LODWORD(v39.a) = 0;
  y = v25.y;
  if (!OZXHitCheck(*a2, v25, &v36, &v39))
  {
    v27 = [*(a1 + 32) motionEffect];
    v28 = [v27 sceneManagerComponent];
    v29 = [v28 handleForOZID:LODWORD(v39.a)];
    v30 = *(*(a1 + 40) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      NSLog(&cfstr_WarningEffectH.isa);
    }
  }
}

+ (id)motionEffectPropertyKeyToPublishedParameterNameMap
{
  v9[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___PVMotionEffectHitAreaComponent;
  v2 = objc_msgSendSuper2(&v7, sel_motionEffectPropertyKeyToPublishedParameterNameMap);
  v3 = [v2 mutableCopy];

  v8 = @"kPVHitAreaPointsKey";
  v9[0] = @"HitAreaPoints";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if ([v3 count])
  {
    [v3 addEntriesFromDictionary:v4];
    v5 = v3;

    v4 = v5;
  }

  return v4;
}

@end