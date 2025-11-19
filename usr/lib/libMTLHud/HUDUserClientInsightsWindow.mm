@interface HUDUserClientInsightsWindow
- (BOOL)draw:(HUDMTLLayerState *)a3 drawableState:(HUDMTLLayerDrawableState *)a4 fontSize:(int)a5 frame:(id)a6 width:(float *)a7 height:(float *)a8;
- (BOOL)isInsightEnabled:(id)a3;
- (HUDUserClientInsightsWindow)initWithFrame:(CGRect)a3;
- (id)addInsightGroup:(id)a3;
@end

@implementation HUDUserClientInsightsWindow

- (HUDUserClientInsightsWindow)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = HUDUserClientInsightsWindow;
  v3 = [(HUDUserClientWindow *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    insightGroups = v3->_insightGroups;
    v3->_insightGroups = v4;

    v6 = objc_opt_new();
    insightMap = v3->_insightMap;
    v3->_insightMap = v6;

    v8 = objc_opt_new();
    insightGroupMap = v3->_insightGroupMap;
    v3->_insightGroupMap = v8;

    v10 = [(HUDUserClientInsightsWindow *)v3 addInsightGroup:@"API Usage Patterns"];
    v11 = [(HUDUserClientInsightsWindow *)v3 addInsightGroup:@"Metal 4 Recommendations"];
    v12 = [(HUDUserClientInsightsWindow *)v3 addInsightGroup:@"Other Insights"];
  }

  return v3;
}

- (id)addInsightGroup:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_insightGroupMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[HUDUserClientInsightGroup alloc] initWithCategory:v4];
    [(NSMutableDictionary *)self->_insightGroupMap setObject:v5 forKeyedSubscript:v4];
    [(NSMutableArray *)self->_insightGroups addObject:v5];
  }

  return v5;
}

- (BOOL)draw:(HUDMTLLayerState *)a3 drawableState:(HUDMTLLayerDrawableState *)a4 fontSize:(int)a5 frame:(id)a6 width:(float *)a7 height:(float *)a8
{
  v44 = a8;
  GlobalOverlay = HUDMTLOverlayGetGlobalOverlay();
  v61 = 0;
  HUDUIFrameGetSizeInPoints(a6.var0, &v61 + 1, &v61);
  v10 = objc_opt_new();
  v11 = self;
  objc_sync_enter(v11);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v12 = v11->_insightGroups;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v13)
  {
    v14 = *v58;
    do
    {
      v15 = 0;
      do
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v57 + 1) + 8 * v15) insights];
        [v10 addObjectsFromArray:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v11);
  if ([v10 count])
  {
    *&v17 = HIDWORD(v61);
    LODWORD(v18) = 1333788672;
    LODWORD(v19) = HUDUIRectMake(0.0, 0.0, v17, v18).n128_u32[0];
    v55 = HUDUIInvalidString;
    v56 = qword_784F8;
    HUDUIFrameBeginWindow(a6.var0, &v55, -1291845632, 1, v19, v20, v21, v22, 15.0);
    v23 = HUDCurrentTimeInNs();
    v24 = [v10 reverseObjectEnumerator];
    [v24 nextObject];
    v26 = v25 = 0;
    if (v26)
    {
      do
      {
        v27 = v23 - [v26 timeUpdated];
        if (v27 < [v26 timeOut] && objc_msgSend(v26, "enabled") && objc_msgSend(*(objc_msgSend(v26, "descriptor") + 2), "length"))
        {
          v55 = 0uLL;
          v56 = 0;
          HUDUIWrappedTemporaryString([*(objc_msgSend(v26 "descriptor") + 2)], a6.var0, a5, &v55, (HIDWORD(v61) - 30), 99.0);
          v52 = v55;
          v53 = v56;
          v54 = 0;
          HUDUIWindowGetLabelSize(a6.var0, &v52, &v54 + 1, &v54);
          v28 = HUDUIWindowBeginRow(a6.var0, *&v54);
          v29 = *&v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          *a7 = fmaxf(*(&v54 + 1), *a7);
          if (v27 >= ((([v26 timeOut] * 0xCCCCCCCCCCCCCCCDLL) >> 64) & 0xFFFFFFFFFFFFFFFCLL))
          {
            v37 = [v26 timeOut];
            v38 = (v27 - (((v37 * 0xCCCCCCCCCCCCCCCDLL) >> 64) & 0xFFFFFFFFFFFFFFFCLL)) / ([v26 timeOut] / 5);
            v39 = fmax(1.0 - (v38 * v38), 0.0);
            v36 = ((v39 * 255.0) << 24) | 0xFFFFFF;
          }

          else
          {
            v36 = -1;
          }

          HUDUIAllocUnicodeString(GlobalOverlay, a5, @"⚠️", &v52);
          v50 = v55;
          v51 = v56;
          v48 = HUDUIInvalidString;
          v49 = qword_784F8;
          LODWORD(v40) = v35;
          HUDUIWindowAddLabelKeyValuePair2LA(a6.var0, &v52, v36, &v50, v36, &v48, v36, v29, v31, v33, v40);
          HUDUIWindowEmptyRow(a6.var0, 6.0);
          v25 = 1;
        }

        v41 = [v24 nextObject];

        v26 = v41;
      }

      while (v41);
    }

    HUDUIWindowEmptyRow(a6.var0, 6.0);
    currentInsightWindowHeight = v11->_currentInsightWindowHeight;
    if (currentInsightWindowHeight != HUDUIWindowCurrentHeight(a6.var0))
    {
      v11->_currentInsightWindowHeight = HUDUIWindowCurrentHeight(a6.var0);
    }

    *v44 = HUDUIWindowCurrentHeight(a6.var0);
    HUDUIFrameEndWindow(a6.var0);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)isInsightEnabled:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_insightMap objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 enabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end