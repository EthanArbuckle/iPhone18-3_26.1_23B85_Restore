@interface RPTScrollViewTestParameters
+ (id)newWithTestName:(id)name scrollBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction completionHandler:(id)handler;
+ (id)newWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler;
- (CGRect)scrollingBounds;
- (RPTScrollViewTestParameters)initWithTestName:(id)name scrollBounds:(CGRect)bounds scrollContentLength:(double)length direction:(int64_t)direction completionHandler:(id)handler;
- (RPTScrollViewTestParameters)initWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler;
- (RPTScrollViewTestParameters)initWithTestName:(id)name scrollViewIdentifier:(id)identifier scrollBounds:(CGRect)bounds scrollContentLength:(double)length direction:(int64_t)direction completionHandler:(id)handler;
- (id)_v1_composerBlock;
- (id)_v2_composerBlock;
- (id)_v3_4_composerBlock;
- (id)composerBlock;
- (unint64_t)effectiveVersion;
- (void)_v3_4_composerBlock;
- (void)completeAfterScrollEndNotification:(id)notification;
- (void)completeAfterScrollEndSignpost:(id)signpost;
- (void)setScrollingBounds:(CGRect)bounds;
- (void)setScrollingContentLength:(double)length;
- (void)waitForPostEventStreamDelayWithHandler:(id)handler;
@end

@implementation RPTScrollViewTestParameters

- (void)setScrollingContentLength:(double)length
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  if (WeakRetained)
  {
    v6 = RPTLogTestRunning();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(RPTScrollViewTestParameters *)self setScrollingContentLength:v6, length];
    }
  }

  self->_scrollingContentLength = length;
}

- (void)setScrollingBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  if (WeakRetained)
  {
    v9 = RPTLogTestRunning();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(RPTScrollViewTestParameters *)self setScrollingBounds:v9, x, y, width, height];
    }
  }

  self->_scrollingBounds.origin.x = x;
  self->_scrollingBounds.origin.y = y;
  self->_scrollingBounds.size.width = width;
  self->_scrollingBounds.size.height = height;
}

- (unint64_t)effectiveVersion
{
  if (_RPTScrollViewTestParametersDefaultVersion_onceToken != -1)
  {
    [RPTScrollViewTestParameters effectiveVersion];
  }

  v3 = _RPTScrollViewTestParametersDefaultVersion_version;
  forceMinVersion = self->_forceMinVersion;
  forceMaxVersion = self->_forceMaxVersion;
  if (forceMinVersion <= _RPTScrollViewTestParametersDefaultVersion_version)
  {
    v6 = _RPTScrollViewTestParametersDefaultVersion_version;
  }

  else
  {
    v6 = self->_forceMinVersion;
  }

  if (forceMinVersion)
  {
    v3 = v6;
  }

  if (forceMaxVersion >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = self->_forceMaxVersion;
  }

  if (forceMaxVersion)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

+ (id)newWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler
{
  handlerCopy = handler;
  viewCopy = view;
  nameCopy = name;
  v10 = RPTDefaultScrollDirection(viewCopy);
  v11 = RPTContentSizeInDirection(viewCopy, v10);
  v12 = RPTGetBoundsForView(viewCopy);
  v16 = [RPTScrollViewTestParameters newWithTestName:nameCopy scrollBounds:_UIScrollDirectionFromRPTScrollDirection(v10) amplitude:handlerCopy direction:v12 completionHandler:v13, v14, v15, v11];

  window = [viewCopy window];

  v18 = [RPTCoordinateSpaceConverter converterFromWindow:window];
  [v16 setConversion:v18];

  return v16;
}

+ (id)newWithTestName:(id)name scrollBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  handlerCopy = handler;
  nameCopy = name;
  v16 = objc_opt_new();
  [v16 setTestName:nameCopy];

  [v16 setScrollingBounds:{x, y, width, height}];
  [v16 setAmplitude:amplitude];
  [v16 setAmplitudeFactor:1.0];
  [v16 setDirection:direction];
  [v16 setCompletionHandler:handlerCopy];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isiOSAppOnMac = [processInfo isiOSAppOnMac];

  if (isiOSAppOnMac)
  {
    [v16 setPreventSheetDismissal:0];
    [v16 setShouldFlick:0];
  }

  [v16 setIterationDurationFactor:1.0];
  v19 = +[RPTCoordinateSpaceConverter identityConverter];
  [v16 setConversion:v19];

  return v16;
}

- (RPTScrollViewTestParameters)initWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  viewCopy = view;
  handlerCopy = handler;
  v11 = RPTLogTestRunning();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"YES";
    *v20 = 138543874;
    *&v20[4] = nameCopy;
    *&v20[12] = 2114;
    if (!handlerCopy)
    {
      v12 = @"NULL";
    }

    *&v20[14] = viewCopy;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_261A17000, v11, OS_LOG_TYPE_DEFAULT, "RPT: [RPTScrollViewTestParameters initWithTestName:]", v20, 0x20u);
  }

  v13 = RPTDefaultScrollDirection(viewCopy);
  RPTContentSizeInDirection(viewCopy, v13);
  v14 = [(RPTScrollViewTestParameters *)self initWithTestName:nameCopy scrollBounds:v13 scrollContentLength:handlerCopy direction:RPTGetBoundsForView(viewCopy) completionHandler:?];
  window = [viewCopy window];
  v16 = [RPTCoordinateSpaceConverter converterFromWindow:window];

  [(RPTScrollViewTestParameters *)v14 setConversion:v16];
  objc_storeWeak(&v14->_scrollView, viewCopy);
  if ([(RPTScrollViewTestParameters *)v14 effectiveVersion]> 2 || [(RPTScrollViewTestParameters *)v14 effectiveVersion]>= 2)
  {
    [(RPTScrollViewTestParameters *)v14 setShouldFlick:1, *v20];
  }

  v17 = RPTLogTestRunning();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    shouldFlick = [(RPTScrollViewTestParameters *)v14 shouldFlick];
    *v20 = 67109120;
    *&v20[4] = shouldFlick;
    _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters shouldFlick: %{BOOL}u", v20, 8u);
  }

  return v14;
}

- (RPTScrollViewTestParameters)initWithTestName:(id)name scrollBounds:(CGRect)bounds scrollContentLength:(double)length direction:(int64_t)direction completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v42 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v17 = RPTLogTestRunning();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v18 = _RPTStringFromCGRect(v43);
    v19 = v18;
    *v35 = 138544386;
    v20 = @"YES";
    *&v35[4] = nameCopy;
    *&v35[12] = 2114;
    if (!handlerCopy)
    {
      v20 = @"NULL";
    }

    *&v35[14] = v18;
    v36 = 2048;
    lengthCopy = length;
    v38 = 2050;
    directionCopy = direction;
    v40 = 2114;
    v41 = v20;
    _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: [RPTScrollViewTestParameters initWithTestName:]", v35, 0x34u);
  }

  v21 = _RPTAxisFromScrollDirection(direction);
  if (RPTSizeAlongAxis(v21, width, height) * 2.5 > length)
  {
    v22 = RPTLogTestRunning();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(RPTScrollViewTestParameters *)v22 initWithTestName:y scrollBounds:width scrollContentLength:height direction:length completionHandler:?];
    }
  }

  v23 = [(RPTScrollViewTestParameters *)self init];
  if (v23)
  {
    v24 = [nameCopy copy];
    testName = v23->_testName;
    v23->_testName = v24;

    v23->_scrollingBounds.origin.x = x;
    v23->_scrollingBounds.origin.y = y;
    v23->_scrollingBounds.size.width = width;
    v23->_scrollingBounds.size.height = height;
    v23->_scrollingContentLength = length;
    v23->_amplitudeFactor = 1.0;
    v23->_direction = _UIScrollDirectionFromRPTScrollDirection(direction);
    v26 = MEMORY[0x2667162B0](handlerCopy);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v26;

    v23->_iterationDurationFactor = 1.0;
    v23->_shouldFlick = 0;
    if ([(RPTScrollViewTestParameters *)v23 effectiveVersion]>= 3)
    {
      v28 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      curveFunction = v23->_curveFunction;
      v23->_curveFunction = v28;
    }

    v23->_preventSheetDismissal = 0;
    v30 = +[RPTCoordinateSpaceConverter identityConverter];
    conversion = v23->_conversion;
    v23->_conversion = v30;
  }

  v32 = RPTLogTestRunning();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    curveFunction = [(RPTScrollViewTestParameters *)v23 curveFunction];
    *v35 = 138543362;
    *&v35[4] = curveFunction;
    _os_log_impl(&dword_261A17000, v32, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters curveFunction: %{public}@", v35, 0xCu);
  }

  return v23;
}

- (RPTScrollViewTestParameters)initWithTestName:(id)name scrollViewIdentifier:(id)identifier scrollBounds:(CGRect)bounds scrollContentLength:(double)length direction:(int64_t)direction completionHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifierCopy = identifier;
  v18 = [(RPTScrollViewTestParameters *)self initWithTestName:name scrollBounds:direction scrollContentLength:handler direction:x completionHandler:y, width, height, length];
  v19 = v18;
  if (identifierCopy && v18 && [identifierCopy length])
  {
    v20 = [identifierCopy copy];
    scrollViewIdentifier = v19->_scrollViewIdentifier;
    v19->_scrollViewIdentifier = v20;

    v19->_shouldFlick = 1;
  }

  return v19;
}

- (id)composerBlock
{
  effectiveVersion = [(RPTScrollViewTestParameters *)self effectiveVersion];
  if (effectiveVersion - 3 < 2)
  {
    _v3_4_composerBlock = [(RPTScrollViewTestParameters *)self _v3_4_composerBlock];
  }

  else if (effectiveVersion == 2)
  {
    _v3_4_composerBlock = [(RPTScrollViewTestParameters *)self _v2_composerBlock];
  }

  else if (effectiveVersion == 1)
  {
    _v3_4_composerBlock = [(RPTScrollViewTestParameters *)self _v1_composerBlock];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unknown RPTScrollViewTestParametersForceVersion specified: %ld", effectiveVersion}];
    _v3_4_composerBlock = 0;
  }

  return _v3_4_composerBlock;
}

- (void)waitForPostEventStreamDelayWithHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = RPTLogTestRunning();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    effectiveVersion = [(RPTScrollViewTestParameters *)self effectiveVersion];
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    scrollViewIdentifier = self->_scrollViewIdentifier;
    shouldFlick = self->_shouldFlick;
    v17 = 134218754;
    v18 = effectiveVersion;
    v19 = 1024;
    v20 = WeakRetained != 0;
    v21 = 2112;
    v22 = scrollViewIdentifier;
    v23 = 1024;
    v24 = shouldFlick;
    _os_log_impl(&dword_261A17000, v5, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters: waitForPostEventStreamDelayWithHandler: effectiveVersion=%lu, has_scrollView=%i, _scrollViewIdentifier=%@, _shouldFlick=%i", &v17, 0x22u);
  }

  if ([(RPTScrollViewTestParameters *)self effectiveVersion]< 3)
  {
    goto LABEL_15;
  }

  v10 = objc_loadWeakRetained(&self->_scrollView);

  if (v10)
  {
    v11 = RPTLogTestRunning();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_loadWeakRetained(&self->_scrollView);
      v26.x = RPTContentOffsetOf();
      v13 = _RPTStringFromCGPoint(v26);
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_261A17000, v11, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters ScrollView offset end: %{public}@", &v17, 0xCu);
    }
  }

  if (!self->_shouldFlick)
  {
    goto LABEL_15;
  }

  v14 = objc_loadWeakRetained(&self->_scrollView);

  if (!v14)
  {
    if (self->_shouldFlick && self->_scrollViewIdentifier)
    {
      [(RPTScrollViewTestParameters *)self completeAfterScrollEndSignpost:handlerCopy];
      goto LABEL_16;
    }

LABEL_15:
    handlerCopy[2](handlerCopy);
    goto LABEL_16;
  }

  v15 = objc_loadWeakRetained(&self->_scrollView);
  isDecelerating = [v15 isDecelerating];

  if (!isDecelerating)
  {
    goto LABEL_15;
  }

  [(RPTScrollViewTestParameters *)self completeAfterScrollEndNotification:handlerCopy];
LABEL_16:
}

- (void)completeAfterScrollEndNotification:(id)notification
{
  notificationCopy = notification;
  v5 = *MEMORY[0x277D77558];
  v6 = RPTLogTestRunning();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261A17000, v6, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters ScrollView is decelerating", buf, 2u);
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__RPTScrollViewTestParameters_completeAfterScrollEndNotification___block_invoke;
  v12[3] = &unk_279AF3950;
  v13 = notificationCopy;
  v14 = buf;
  v12[4] = self;
  v9 = notificationCopy;
  v10 = [defaultCenter addObserverForName:v5 object:WeakRetained queue:0 usingBlock:v12];
  v11 = *(v16 + 5);
  *(v16 + 5) = v10;

  _Block_object_dispose(buf, 8);
}

void __66__RPTScrollViewTestParameters_completeAfterScrollEndNotification___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1[6] + 8) + 40)];

  (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = RPTLogTestRunning();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v11.x = RPTContentOffsetOf();
    v7 = _RPTStringFromCGPoint(v11);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_261A17000, v5, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters ScrollView offset at complete end: %{public}@", &v8, 0xCu);
  }
}

- (void)completeAfterScrollEndSignpost:(id)signpost
{
  v24 = *MEMORY[0x277D85DE8];
  signpostCopy = signpost;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"category=='ScrollView' AND ((subsystem=='com.apple.UIKit' AND signpostName=='Scroll_Deceleration') OR (subsystem=='com.apple.AppKit' AND signpostName=='ScrollGesture')) AND message CONTAINS 'id=%@'", self->_scrollViewIdentifier];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_alloc_init(MEMORY[0x277D55030]);
  [v17[5] setFilterPredicateString:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RPTScrollViewTestParameters_completeAfterScrollEndSignpost___block_invoke;
  v13[3] = &unk_279AF39A0;
  v15 = &v16;
  v6 = signpostCopy;
  v14 = v6;
  [v17[5] setEndEventProcessingBlock:v13];
  v7 = v17[5];
  v12 = 0;
  v8 = [v7 processNotificationsWithIntervalTimeoutInSeconds:5 errorOut:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = RPTLogTestRunning();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_261A17000, v10, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters started monitoring for signpost with predicate: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = RPTLogTestRunning();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(RPTScrollViewTestParameters *)v5 completeAfterScrollEndSignpost:v9, v11];
    }

    v6[2](v6);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __62__RPTScrollViewTestParameters_completeAfterScrollEndSignpost___block_invoke(uint64_t a1)
{
  v2 = RPTLogTestRunning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters signpost received", buf, 2u);
  }

  [*(*(*(a1 + 40) + 8) + 40) stopProcessing];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RPTScrollViewTestParameters_completeAfterScrollEndSignpost___block_invoke_17;
  block[3] = &unk_279AF3978;
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return 1;
}

- (id)_v3_4_composerBlock
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = RPTLogTestRunning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261A17000, v3, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters v3 composerBlock", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  if (WeakRetained)
  {
    v5 = RPTLogTestRunning();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(RPTScrollViewTestParameters *)&self->_scrollView _v3_4_composerBlock];
    }
  }

  v6 = RPTAxisFromScrollDirection([(RPTScrollViewTestParameters *)self direction]);
  [(RPTScrollViewTestParameters *)self scrollingBounds];
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v55 = v9;
  v10 = RPTLogTestRunning();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v55;
    _os_log_impl(&dword_261A17000, v10, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters pageLength %f", buf, 0xCu);
  }

  v11 = 0;
  v63 = xmmword_261A289E0;
  v64 = 0xBF0000003F000000;
  *buf = 0x4046000000000000;
  *&buf[8] = vrndmq_f64(vmulq_n_f64(xmmword_261A289A0, v55));
  v61 = vdupq_laneq_s64(*&buf[8], 1);
  v62 = *&buf[8];
  v59[0] = xmmword_261A289B0;
  v59[1] = xmmword_261A289C0;
  v59[2] = xmmword_261A289D0;
  if (self->_shouldFlick)
  {
    v12 = 6;
  }

  else
  {
    v12 = 5;
  }

  v13 = 0.0;
  v14 = 0.0;
  do
  {
    v15 = *&buf[8 * v11];
    v14 = v14 + v15;
    if (v14 >= v13)
    {
      v13 = v14;
    }

    v16 = v14 - v15;
    if (*(&v63 + v11) == *(&v63 + v11))
    {
      v14 = v16;
    }

    ++v11;
  }

  while (v12 != v11);
  v17 = v55 * 0.3;
  [(RPTScrollViewTestParameters *)self scrollingContentLength];
  v19 = v18 - v55;
  if (v55 * 0.3 < v19)
  {
    v17 = v19;
  }

  if (v17 < v13)
  {
    v20 = v17 / v13;
    v21 = RPTLogTestRunning();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 134217984;
      v58 = v20;
      _os_log_impl(&dword_261A17000, v21, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters capOffset scale %f", v57, 0xCu);
    }

    v22 = v59 + 1;
    v23 = &buf[8];
    v24 = v12 - 1;
    do
    {
      *v23 = floor(v20 * *v23);
      ++v23;
      *v22 = (1.0 - (1.0 - v20) * (1.0 - v20)) * *v22;
      ++v22;
      --v24;
    }

    while (v24);
  }

  v25 = RPTLogTestRunning();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 134217984;
    v58 = v17;
    _os_log_impl(&dword_261A17000, v25, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters capOffset %f", v57, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != v12; ++i)
  {
    v27 = *(&v63 + i);
    if (v27 != 0.0 && (i != 5 || self->_shouldFlick))
    {
      v28 = *&buf[8 * i];
      v29 = *(v59 + i);
      v30 = _RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]);
      v31 = v30;
      if (v27 < 0.0)
      {
        v31 = RPTOppositeDirectionFrom(v30);
        v27 = -v27;
        *(&v63 + i) = v27;
      }

      v32 = [RPTOscillationScrollTestParameters alloc];
      testName = [(RPTScrollViewTestParameters *)self testName];
      [(RPTScrollViewTestParameters *)self scrollingBounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      if (i)
      {
        preventSheetDismissal = 0;
      }

      else
      {
        preventSheetDismissal = self->_preventSheetDismissal;
      }

      v43 = v27;
      v44 = v27 != v27;
      [(RPTScrollViewTestParameters *)self _effectiveAmplitudeFactor];
      v46 = v28 * v45;
      [(RPTScrollViewTestParameters *)self iterationDurationFactor];
      v48 = [(RPTOscillationScrollTestParameters *)v32 initWithTestName:testName iterations:v43 scrollingBounds:i == 5 useFlicks:preventSheetDismissal preventDismissalGestures:v31 initialAmplitude:v44 amplitudeVariationPerIteration:v35 initialDirection:v37 iterationDuration:v39 finishWithHalfIteration:v41, v46, 0.0, v28 / v29 * v47];

      conversion = [(RPTScrollViewTestParameters *)self conversion];
      [(RPTOscillationScrollTestParameters *)v48 setConversion:conversion];

      [(RPTOscillationScrollTestParameters *)v48 setUseDefaultDurationForFlick:0.0];
      if (i == 5)
      {
        rcp_functionWithLinearEnd = [(CAMediaTimingFunction *)self->_curveFunction rcp_functionWithLinearEnd];
        [(RPTOscillationScrollTestParameters *)v48 setCurveFunction:rcp_functionWithLinearEnd];
      }

      else
      {
        [(RPTOscillationScrollTestParameters *)v48 setCurveFunction:self->_curveFunction];
      }

      [array addObject:v48];
    }
  }

  testName2 = [(RPTScrollViewTestParameters *)self testName];
  v52 = [RPTGroupScrollTestParameters newWithTestName:testName2 parameters:array completionHandler:0];

  composerBlock = [v52 composerBlock];

  return composerBlock;
}

- (id)_v2_composerBlock
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = RPTLogTestRunning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261A17000, v3, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters v2 composerBlock", buf, 2u);
  }

  v4 = RPTAxisFromScrollDirection([(RPTScrollViewTestParameters *)self direction]);
  [(RPTScrollViewTestParameters *)self scrollingBounds];
  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *buf = 0x4046000000000000;
  v70 = vrndmq_f64(vmulq_n_f64(xmmword_261A289A0, v8));
  v78 = v70;
  v9 = v8 * 0.3;
  [(RPTScrollViewTestParameters *)self scrollingContentLength:*&v8];
  v11 = v10 - v69;
  if (v9 >= v11)
  {
    v11 = v9;
  }

  if (v11 < v70.f64[1])
  {
    v12 = 0;
    v13 = v11 / v70.f64[1];
    do
    {
      *&buf[v12] = v13 * *&buf[v12];
      v12 += 8;
    }

    while (v12 != 24);
  }

  v14 = 0;
  v15 = MEMORY[0x277CBEBF8];
  do
  {
    v16 = v15;
    v17 = [RPTOscillationScrollTestParameters alloc];
    testName = [(RPTScrollViewTestParameters *)self testName];
    v19 = qword_261A289F8[v14];
    [(RPTScrollViewTestParameters *)self scrollingBounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    preventSheetDismissal = self->_preventSheetDismissal;
    v29 = *&buf[v14 * 8];
    [(RPTScrollViewTestParameters *)self _effectiveAmplitudeFactor];
    v31 = v29 * v30;
    [(RPTScrollViewTestParameters *)self _effectiveAmplitudeFactor];
    v33 = v29 * v32 * -0.2;
    v34 = _RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]);
    v35 = *&qword_261A28A10[v14];
    [(RPTScrollViewTestParameters *)self iterationDurationFactor];
    v37 = [(RPTOscillationScrollTestParameters *)v17 initWithTestName:testName iterations:v19 scrollingBounds:0 useFlicks:preventSheetDismissal preventDismissalGestures:v34 initialAmplitude:1 amplitudeVariationPerIteration:v21 initialDirection:v23 iterationDuration:v25 finishWithHalfIteration:v27, v31, v33, v35 * v36];
    v15 = [v16 arrayByAddingObject:v37];

    ++v14;
  }

  while (v14 != 3);
  if (self->_shouldFlick)
  {
    v38 = [RPTOscillationScrollTestParameters alloc];
    testName2 = [(RPTScrollViewTestParameters *)self testName];
    [(RPTScrollViewTestParameters *)self scrollingBounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = self->_preventSheetDismissal;
    v49 = v78.f64[0];
    [(RPTScrollViewTestParameters *)self _effectiveAmplitudeFactor];
    v51 = v49 * v50;
    v52 = _RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]);
    v53 = RPTOppositeDirectionFrom(v52);
    [(RPTScrollViewTestParameters *)self iterationDurationFactor];
    v55 = [(RPTOscillationScrollTestParameters *)v38 initWithTestName:testName2 iterations:2 scrollingBounds:1 useFlicks:v48 preventDismissalGestures:v53 initialAmplitude:1 amplitudeVariationPerIteration:v41 initialDirection:v43 iterationDuration:v45 finishWithHalfIteration:v47, v51, 0.0, v54 * 1.875];
    v76 = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    v57 = [v15 arrayByAddingObjectsFromArray:v56];

    v15 = v57;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v58 = v15;
  v59 = [v58 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v72;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v72 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v71 + 1) + 8 * i);
        conversion = [(RPTScrollViewTestParameters *)self conversion];
        [v63 setConversion:conversion];
      }

      v60 = [v58 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v60);
  }

  testName3 = [(RPTScrollViewTestParameters *)self testName];
  v66 = [RPTGroupScrollTestParameters newWithTestName:testName3 parameters:v58 completionHandler:0];

  composerBlock = [v66 composerBlock];

  return composerBlock;
}

- (id)_v1_composerBlock
{
  v102[2] = *MEMORY[0x277D85DE8];
  v3 = RPTLogTestRunning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261A17000, v3, OS_LOG_TYPE_DEFAULT, "RPT: RPTScrollViewTestParameters v1 composerBlock", buf, 2u);
  }

  v4 = RPTAxisFromScrollDirection([(RPTScrollViewTestParameters *)self direction]);
  [(RPTScrollViewTestParameters *)self scrollingBounds];
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  [(RPTScrollViewTestParameters *)self scrollingContentLength];
  v9 = floor(v8 / v7);
  [(RPTScrollViewTestParameters *)self scrollingContentLength];
  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = v7 / 10.0;
  [(RPTScrollViewTestParameters *)self iterationDurationFactor];
  v13 = v12 * 0.3125;
  v14 = [RPTOscillationScrollTestParameters alloc];
  testName = [(RPTScrollViewTestParameters *)self testName];
  [(RPTScrollViewTestParameters *)self scrollingBounds];
  v20 = [(RPTOscillationScrollTestParameters *)v14 initWithTestName:testName iterations:6 scrollingBounds:0 useFlicks:self->_preventSheetDismissal preventDismissalGestures:_RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]) initialAmplitude:0 amplitudeVariationPerIteration:v16 initialDirection:v17 iterationDuration:v18 finishWithHalfIteration:v19, v7 / 10.0];
  v102[0] = v20;
  v21 = [RPTOscillationScrollTestParameters alloc];
  testName2 = [(RPTScrollViewTestParameters *)self testName];
  [(RPTScrollViewTestParameters *)self scrollingBounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  preventSheetDismissal = self->_preventSheetDismissal;
  v32 = _RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]);
  [(RPTScrollViewTestParameters *)self iterationDurationFactor];
  v34 = v26;
  v35 = v7;
  v36 = [(RPTOscillationScrollTestParameters *)v21 initWithTestName:testName2 iterations:3 scrollingBounds:0 useFlicks:preventSheetDismissal preventDismissalGestures:v32 initialAmplitude:1 amplitudeVariationPerIteration:v24 initialDirection:v34 iterationDuration:v28 finishWithHalfIteration:v30, v7, 0.0, v33 * 1.25];
  v102[1] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];

  if (v9 <= 1.0)
  {
    v64 = v37;
  }

  else
  {
    v38 = 1.0;
    v93 = v11;
    do
    {
      v39 = [RPTOscillationScrollTestParameters alloc];
      testName3 = [(RPTScrollViewTestParameters *)self testName];
      [(RPTScrollViewTestParameters *)self scrollingBounds];
      v41 = v9;
      v42 = v35;
      v47 = [(RPTOscillationScrollTestParameters *)v39 initWithTestName:testName3 iterations:6 scrollingBounds:0 useFlicks:self->_preventSheetDismissal preventDismissalGestures:_RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]) initialAmplitude:0 amplitudeVariationPerIteration:v43 initialDirection:v44 iterationDuration:v45 finishWithHalfIteration:v46, v93, 0.015, v13];
      v101[0] = v47;
      v48 = [RPTOscillationScrollTestParameters alloc];
      testName4 = [(RPTScrollViewTestParameters *)self testName];
      [(RPTScrollViewTestParameters *)self scrollingBounds];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = self->_preventSheetDismissal;
      v59 = _RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]);
      [(RPTScrollViewTestParameters *)self iterationDurationFactor];
      v61 = v53;
      v35 = v42;
      v9 = v41;
      v62 = [(RPTOscillationScrollTestParameters *)v48 initWithTestName:testName4 iterations:3 scrollingBounds:0 useFlicks:v58 preventDismissalGestures:v59 initialAmplitude:1 amplitudeVariationPerIteration:v51 initialDirection:v61 iterationDuration:v55 finishWithHalfIteration:v57, v35, 0.0, v60 * 1.25];
      v101[1] = v62;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
      v64 = [v37 arrayByAddingObjectsFromArray:v63];

      v38 = v38 + 1.0;
      v37 = v64;
    }

    while (v38 < v41);
  }

  if (self->_shouldFlick)
  {
    v65 = [RPTOscillationScrollTestParameters alloc];
    testName5 = [(RPTScrollViewTestParameters *)self testName];
    [(RPTScrollViewTestParameters *)self scrollingBounds];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = self->_preventSheetDismissal;
    v76 = _RPTScrollDirectionFromUIScrollDirection([(RPTScrollViewTestParameters *)self direction]);
    v77 = RPTOppositeDirectionFrom(v76);
    [(RPTScrollViewTestParameters *)self iterationDurationFactor];
    v79 = [(RPTOscillationScrollTestParameters *)v65 initWithTestName:testName5 iterations:6 scrollingBounds:1 useFlicks:v75 preventDismissalGestures:v77 initialAmplitude:1 amplitudeVariationPerIteration:v68 initialDirection:v70 iterationDuration:v72 finishWithHalfIteration:v74, v35, 0.0, v78 * 1.875];
    v100 = v79;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    v81 = [v64 arrayByAddingObjectsFromArray:v80];

    v64 = v81;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v82 = v64;
  v83 = [v82 countByEnumeratingWithState:&v94 objects:v99 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v95;
    do
    {
      for (i = 0; i != v84; ++i)
      {
        if (*v95 != v85)
        {
          objc_enumerationMutation(v82);
        }

        v87 = *(*(&v94 + 1) + 8 * i);
        conversion = [(RPTScrollViewTestParameters *)self conversion];
        [v87 setConversion:conversion];
      }

      v84 = [v82 countByEnumeratingWithState:&v94 objects:v99 count:16];
    }

    while (v84);
  }

  testName6 = [(RPTScrollViewTestParameters *)self testName];
  v90 = [RPTGroupScrollTestParameters newWithTestName:testName6 parameters:v82 completionHandler:0];

  composerBlock = [v90 composerBlock];

  return composerBlock;
}

- (CGRect)scrollingBounds
{
  x = self->_scrollingBounds.origin.x;
  y = self->_scrollingBounds.origin.y;
  width = self->_scrollingBounds.size.width;
  height = self->_scrollingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setScrollingContentLength:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_261A17000, a2, OS_LOG_TYPE_DEBUG, "Overriding default amplitude %.1f pts with %.1f pts. This may have undefined behavior and should be avoided, when target scroll view is known.", &v4, 0x16u);
}

- (void)setScrollingBounds:(CGFloat)a3 .cold.1(uint64_t a1, NSObject *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = _RPTStringFromCGRect(*(a1 + 112));
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  v12 = _RPTStringFromCGRect(v18);
  v13 = 138412546;
  v14 = v11;
  v15 = 2112;
  v16 = v12;
  _os_log_debug_impl(&dword_261A17000, a2, OS_LOG_TYPE_DEBUG, "Overriding default amplitude %@ pts with %@ pts. This may have undefined behavior and should be avoided, when target scroll view is known.", &v13, 0x16u);
}

- (void)initWithTestName:(double)a3 scrollBounds:(double)a4 scrollContentLength:(double)a5 direction:(double)a6 completionHandler:.cold.1(NSObject *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = _RPTStringFromCGRect(*&a2);
  v9 = 134218242;
  v10 = a6;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_261A17000, a1, OS_LOG_TYPE_ERROR, "RPT: RPTScrollViewTestParameters scrollContentLength: %f too short for scrollBounds %{public}@ for a meaningful test.", &v9, 0x16u);
}

- (void)completeAfterScrollEndSignpost:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_261A17000, log, OS_LOG_TYPE_ERROR, "RPT: RPTScrollViewTestParameters failed to set up signpost monitoring with predicate: %@ - Because of: %@", &v3, 0x16u);
}

- (void)_v3_4_composerBlock
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(self);
  v8.x = RPTContentOffsetOf();
  v4 = _RPTStringFromCGPoint(v8);
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_261A17000, a2, OS_LOG_TYPE_DEBUG, "RPT: RPTScrollViewTestParameters ScrollView offset start: %{public}@", &v5, 0xCu);
}

@end