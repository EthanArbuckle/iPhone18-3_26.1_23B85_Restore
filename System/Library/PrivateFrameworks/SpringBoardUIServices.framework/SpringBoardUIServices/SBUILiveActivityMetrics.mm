@interface SBUILiveActivityMetrics
+ (id)_systemApertureMetrics;
+ (id)ambientCompactDefaultMetrics;
+ (id)ambientDefaultMetrics;
+ (id)ambientWidgetMetrics;
+ (id)defaultMetrics;
+ (id)lockScreenNotificationListItemMetricsWithScaleFactor:(double)factor;
+ (id)modalFullScreenMetrics;
@end

@implementation SBUILiveActivityMetrics

+ (id)defaultMetrics
{
  v3 = objc_alloc(getACUISActivityMetricsRequestClass());
  v4 = [self lockScreenNotificationListItemMetricsWithScaleFactor:1.0];
  v5 = [v3 initWithLockScreenMetrics:v4];

  if (SBSIsSystemApertureAvailable())
  {
    _systemApertureMetrics = [self _systemApertureMetrics];
    [v5 setSystemApertureMetrics:_systemApertureMetrics];
  }

  return v5;
}

+ (id)ambientDefaultMetrics
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayCornerRadius];
  v5 = v4;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 nativeBounds];
  v8 = v7;
  v10 = v9;

  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen3 nativeScale];
  v13 = v12;

  v14 = [getACUISSizeDimensionRequestClass() fixed:v10 / v13];
  v15 = [getACUISSizeDimensionRequestClass() fixed:v8 / v13];
  v16 = [objc_alloc(getACUISEdgeInsetsClass()) initWithTop:0.0 leading:30.0 bottom:0.0 trailing:34.0];
  v17 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v14 height:v15 cornerRadius:v16 edgeInsets:v5 clipMargin:1.0 scaleFactor:1.0];
  v18 = [objc_alloc(getACUISActivityMetricsRequestClass()) initWithLockScreenMetrics:v17];
  [v18 setAmbientMetrics:v17];

  return v18;
}

+ (id)ambientCompactDefaultMetrics
{
  v2 = [getACUISSizeDimensionRequestClass() fixed:40.0];
  v3 = [getACUISSizeDimensionRequestClass() fixed:40.0];
  v4 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v2 height:v3 cornerRadius:0 edgeInsets:10.0 clipMargin:1.0 scaleFactor:1.0];
  v5 = [objc_alloc(getACUISActivityMetricsRequestClass()) initWithLockScreenMetrics:v4];

  return v5;
}

+ (id)ambientWidgetMetrics
{
  v3 = [self lockScreenNotificationListItemMetricsWithScaleFactor:2.0];
  v4 = [objc_alloc(getACUISActivityMetricsRequestClass()) initWithLockScreenMetrics:v3];
  [v4 setAmbientMetrics:v3];
  _systemApertureMetrics = [self _systemApertureMetrics];
  [v4 setSystemApertureMetrics:_systemApertureMetrics];

  return v4;
}

+ (id)modalFullScreenMetrics
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  v6 = v5;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 nativeScale];
  v9 = v8;

  v10 = [getACUISSizeDimensionRequestClass() fixed:v4 / v9];
  v11 = [getACUISSizeDimensionRequestClass() fixed:v6 / v9];
  v12 = [objc_alloc(getACUISEdgeInsetsClass()) initWithTop:0.0 leading:0.0 bottom:0.0 trailing:0.0];
  v13 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v10 height:v11 cornerRadius:v12 edgeInsets:0.0 clipMargin:1.0 scaleFactor:1.0];
  v14 = [objc_alloc(getACUISActivityMetricsRequestClass()) initWithLockScreenMetrics:v13];
  [v14 setAmbientMetrics:v13];

  return v14;
}

+ (id)_systemApertureMetrics
{
  v2 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v2 sensorRegionSize];
  v4 = v3;
  v6 = v5;
  [v2 minimumScreenEdgeInsets];
  v8 = v7;
  [v2 minimumContinuousCornerRadius];
  v10 = v9;
  [v2 maximumLeadingTrailingViewSize];
  v12 = v11;
  v14 = [objc_alloc(getACUISSizeDimensionRequestClass()) initWithMinimum:0.0 maximum:v13];
  v15 = [getACUISSizeDimensionRequestClass() fixed:v12];
  v16 = [objc_alloc(getACUISEdgeInsetsClass()) initWithTop:7.0 leading:7.0 bottom:7.0 trailing:7.0];
  v17 = [v16 copy];
  [v17 setTrailing:0.0];
  v39 = v17;
  v40 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v14 height:v15 cornerRadius:v17 edgeInsets:v10 clipMargin:5.0];
  v18 = [v16 copy];
  [v18 setLeading:0.0];
  v41 = v14;
  v36 = v18;
  v38 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v14 height:v15 cornerRadius:v18 edgeInsets:v10 clipMargin:5.0];
  v19 = objc_alloc(getACUISSizeDimensionRequestClass());
  [v2 maximumHorizontalMinimalViewSize];
  v35 = [v19 initWithMinimum:0.0 maximum:v20];
  v37 = v15;
  v21 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v35 height:v15 cornerRadius:v16 edgeInsets:v10 clipMargin:5.0];
  [v2 maximumContinuousCornerRadius];
  v23 = v22;
  [v2 minimumExpandedSize];
  v25 = v24;
  [v2 maximumExpandedSize];
  v27 = [getACUISSizeDimensionRequestClass() fixed:v26];
  v28 = [objc_alloc(getACUISSizeDimensionRequestClass()) initWithMinimum:v25 maximum:160.0];
  v29 = [objc_alloc(getACUISEdgeInsetsClass()) initWithTop:18.0 leading:18.0 bottom:18.0 trailing:18.0];
  v30 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v27 height:v28 cornerRadius:v29 edgeInsets:v23 clipMargin:13.0];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v31 = getACUISSystemApertureMetricsRequestClass_softClass;
  v46 = getACUISSystemApertureMetricsRequestClass_softClass;
  if (!getACUISSystemApertureMetricsRequestClass_softClass)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __getACUISSystemApertureMetricsRequestClass_block_invoke;
    v42[3] = &unk_1E789DA88;
    v42[4] = &v43;
    __getACUISSystemApertureMetricsRequestClass_block_invoke(v42);
    v31 = v44[3];
  }

  v32 = v31;
  _Block_object_dispose(&v43, 8);
  v33 = [[v31 alloc] initWithObstructionSize:v30 obstructionTopMargin:v40 expandedMetricsRequest:v38 compactLeadingMetricsRequest:v21 compactTrailingMetricsRequest:v4 minimalMetricsRequest:{v6, v8}];

  return v33;
}

+ (id)lockScreenNotificationListItemMetricsWithScaleFactor:(double)factor
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    +[SBUISearchUtilities idealSearchPlatterWidth];
    v7 = v6;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen nativeBounds];
    v10 = v9;
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 nativeScale];
    v13 = v12;

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v14 = getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_ptr;
    v23 = getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_ptr;
    if (!getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_ptr)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_block_invoke;
      v19[3] = &unk_1E789DA88;
      v19[4] = &v20;
      __getNCNotificationStructuredListViewControllerInsetMarginHorizontalSymbolLoc_block_invoke(v19);
      v14 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v14)
    {
      +[SBUILiveActivityMetrics lockScreenNotificationListItemMetricsWithScaleFactor:];
    }

    v7 = v10 / v13 + v14() * -2.0;
  }

  v15 = [getACUISSizeDimensionRequestClass() fixed:v7];
  v16 = [objc_alloc(getACUISSizeDimensionRequestClass()) initWithMinimum:64.0 maximum:160.0];
  v17 = [objc_alloc(getACUISActivityItemMetricsRequestClass()) initWithWidth:v15 height:v16 cornerRadius:0 edgeInsets:23.5 clipMargin:1.0 scaleFactor:factor];

  return v17;
}

+ (void)lockScreenNotificationListItemMetricsWithScaleFactor:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat soft_NCNotificationStructuredListViewControllerInsetMarginHorizontal(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBUILiveActivityMetrics.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

@end