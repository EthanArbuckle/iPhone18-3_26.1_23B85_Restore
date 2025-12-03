@interface UIEventSessionActionAnalytics
+ (id)sharedInstance;
- (BOOL)getAIDState;
- (BOOL)shouldEnableTouchHeatMapAnalyzer;
- (UIEventSessionActionAnalytics)init;
- (id)_instanceOfActionClass:(Class)class source:(int64_t)source;
- (id)allAccumulatorNames;
- (void)_setPencilIsHoveringTo:(BOOL)to;
- (void)addAccumulator:(id)accumulator;
- (void)checkForUIEventSessionActionAnalytics:(id)analytics forWindow:(id)window isFrontBoard:(BOOL)board isFrontBoardTransitioningToForeground:(BOOL)foreground;
- (void)didHardwareConfigurationChange:(id)change;
- (void)didKeyboardShortcut:(id)shortcut;
- (void)didPencilHover:(id)hover withPhase:(int64_t)phase;
- (void)didPencilSqueezeWithPhase:(unint64_t)phase;
- (void)didPointerClick:(id)click withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds;
- (void)didPointerHover:(id)hover withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds;
- (void)didScroll:(id)scroll withSource:(int64_t)source;
- (void)didShowContextualMenuFromLocation:(CGPoint)location withSource:(int64_t)source;
- (void)didTap:(id)tap withSource:(int64_t)source;
- (void)didTextSelectionWithSource:(int64_t)source;
- (void)didTouch:(id)touch withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds withWindowFrame:(CGRect)frame withTrackpadFingerDownCount:(int64_t)count;
- (void)didTypingWithSource:(int64_t)source;
- (void)q_addAccumulator:(id)accumulator;
- (void)q_addActionAndUpdate:(id)update;
- (void)q_enumerateAnalytics:(id)analytics;
- (void)q_flushRecentActions;
- (void)q_setupDefaultAnalytics;
- (void)q_updateAnalyticsFromAccumulators;
- (void)q_updateHardwareState;
- (void)q_updateUIInterfaceOrientation;
- (void)q_writeAnalytics;
- (void)resetSessionID;
- (void)updateAIDState;
- (void)updateHardwareKeyboardState;
- (void)updateUIInterfaceOrientation;
- (void)writeAnalytics;
- (void)writeEventWithFields:(id)fields andName:(id)name;
@end

@implementation UIEventSessionActionAnalytics

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UIEventSessionActionAnalytics_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A0708 != -1)
  {
    dispatch_once(&qword_1ED4A0708, block);
  }

  v2 = qword_1ED4A0700;

  return v2;
}

void __47__UIEventSessionActionAnalytics_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = objc_alloc_init(*(a1 + 32));
    v5 = qword_1ED4A0700;
    qword_1ED4A0700 = v4;

    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &qword_1ED4A0710);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v12 = 0;
          v8 = "Created shared instance on iPad";
          v9 = &v12;
LABEL_11:
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
        }
      }
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v10 = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &qword_1ED4A0718);
    if (*v10)
    {
      v7 = *(v10 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 0;
        v8 = "Disabled on non-iPad device";
        v9 = &v11;
        goto LABEL_11;
      }
    }
  }
}

- (UIEventSessionActionAnalytics)init
{
  v25.receiver = self;
  v25.super_class = UIEventSessionActionAnalytics;
  v2 = [(UIEventSessionActionAnalytics *)&v25 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v2->_maxDepth = 0;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v5 = dispatch_queue_create("com.apple.UIKit.UIEventSessionActionAnalytics", v4);
  queue = v3->_queue;
  v3->_queue = v5;

  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:100];
  accumulators = v3->_accumulators;
  v3->_accumulators = v7;

  v3->_pencilIsHovering = 0;
  v9 = objc_alloc_init(UIEventSessionTouchEventAnalyzer);
  touchAnalyzer = v3->touchAnalyzer;
  v3->touchAnalyzer = v9;

  if ([(UIEventSessionActionAnalytics *)v3 shouldEnableTouchHeatMapAnalyzer])
  {
    v11 = objc_alloc_init(UIEventSessionHeatMapAnalyzer);
    heatMapAnalyzer = v3->heatMapAnalyzer;
    v3->heatMapAnalyzer = v11;

    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &qword_1ED4A0720);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v24 = 0;
          v15 = "Heat map analyzer enabled via feature flag";
LABEL_16:
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, v15, v24, 2u);
        }
      }
    }
  }

  else
  {
    v16 = v3->heatMapAnalyzer;
    v3->heatMapAnalyzer = 0;

    if (os_variant_has_internal_diagnostics())
    {
      v23 = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &qword_1ED4A0728);
      if (*v23)
      {
        v14 = *(v23 + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v24 = 0;
          v15 = "Heat map analyzer disabled via feature flag";
          goto LABEL_16;
        }
      }
    }
  }

  [(UIEventSessionActionAnalytics *)v3 resetSessionID];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v3 selector:sel_writeAnalytics name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [defaultCenter addObserver:v3 selector:sel_writeAnalytics name:0x1EFBB4890 object:0];
  [defaultCenter addObserver:v3 selector:sel_writeAnalytics name:0x1EFBB47B0 object:0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v3 selector:sel_didHardwareConfigurationChange_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

  if (_UIIsPrivateMainBundle())
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleID = v3->_bundleID;
    v3->_bundleID = bundleIdentifier;
  }

  else
  {
    mainBundle = v3->_bundleID;
    v3->_bundleID = @"other";
  }

  [(UIEventSessionActionAnalytics *)v3 q_setupDefaultAnalytics];
  [(UIEventSessionActionAnalytics *)v3 q_updateHardwareState];
  [(UIEventSessionActionAnalytics *)v3 q_updateUIInterfaceOrientation];

  return v3;
}

- (void)resetSessionID
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:arc4random_uniform(0x5F5E0FFu)];
  sessionID = self->_sessionID;
  self->_sessionID = v3;
}

- (void)q_enumerateAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if (analyticsCopy)
  {
    [(UIEventSessionActionAnalytics *)self q_flushRecentActions];
    accumulators = self->_accumulators;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__UIEventSessionActionAnalytics_q_enumerateAnalytics___block_invoke;
    v6[3] = &unk_1E711F180;
    v7 = analyticsCopy;
    [(NSMutableSet *)accumulators enumerateObjectsUsingBlock:v6];
  }
}

- (id)allAccumulatorNames
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_accumulators, "count")}];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__UIEventSessionActionAnalytics_allAccumulatorNames__block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __52__UIEventSessionActionAnalytics_allAccumulatorNames__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) name];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)q_writeAnalytics
{
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &q_writeAnalytics___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "writeAnalytics() called! (Should be when app goes to background)", buf, 2u);
      }
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__UIEventSessionActionAnalytics_q_writeAnalytics__block_invoke;
  v5[3] = &unk_1E711F1D0;
  v5[4] = self;
  [(UIEventSessionActionAnalytics *)self q_enumerateAnalytics:v5];
  [(NSMutableSet *)self->_accumulators enumerateObjectsUsingBlock:&__block_literal_global_499];
  [(UIEventSessionActionAnalytics *)self resetSessionID];
}

void __49__UIEventSessionActionAnalytics_q_writeAnalytics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_2___s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "writeAnalytics(): [self enumerateAnalytics]...", buf, 2u);
      }
    }
  }

  v6 = v4;
  AnalyticsSendEventLazy();
}

id __49__UIEventSessionActionAnalytics_q_writeAnalytics__block_invoke_39(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [*(a1 + 40) bundleID];
  [v2 setObject:v3 forKeyedSubscript:@"bundleId"];

  return v2;
}

- (void)writeAnalytics
{
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &writeAnalytics___s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "writeAnalytics() called! (Should be when app goes to background)", buf, 2u);
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [UIApplication performSelector:sel_sharedApplication];
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    if (v3)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47__UIEventSessionActionAnalytics_writeAnalytics__block_invoke;
      v13[3] = &unk_1E70FE3F8;
      v4 = v3;
      v14 = v4;
      v15 = buf;
      v5 = [v4 beginBackgroundTaskWithName:@"FinishAnalytics" expirationHandler:v13];
      *(v17 + 3) = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UIEventSessionActionAnalytics_writeAnalytics__block_invoke_51;
  block[3] = &unk_1E70FFB90;
  v11 = v4;
  v12 = buf;
  block[4] = self;
  v7 = v4;
  dispatch_async(queue, block);

  _Block_object_dispose(buf, 8);
}

uint64_t __47__UIEventSessionActionAnalytics_writeAnalytics__block_invoke(uint64_t a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_3___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "FinishAnalytics background task ran out of time. Ending task.", v5, 2u);
      }
    }
  }

  result = [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

uint64_t __47__UIEventSessionActionAnalytics_writeAnalytics__block_invoke_51(uint64_t a1)
{
  result = [*(a1 + 32) q_writeAnalytics];
  if (*(*(*(a1 + 48) + 8) + 24) && *(a1 + 40))
  {
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_4___s_category);
      if (*CategoryCachedImpl)
      {
        v4 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v5 = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "FinishAnalytics background task finished. Ending task.", v5, 2u);
        }
      }
    }

    result = [*(a1 + 40) endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (void)writeEventWithFields:(id)fields andName:(id)name
{
  fieldsCopy = fields;
  v4 = fieldsCopy;
  AnalyticsSendEventLazy();
}

id __62__UIEventSessionActionAnalytics_writeEventWithFields_andName___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [*(a1 + 40) bundleID];
  [v2 setObject:v3 forKeyedSubscript:@"bID"];

  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_5___s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "writeEventWithFields() wrote %@", &v7, 0xCu);
      }
    }
  }

  return v2;
}

- (void)addAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UIEventSessionActionAnalytics_addAccumulator___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = accumulatorCopy;
  v6 = accumulatorCopy;
  dispatch_async(queue, v7);
}

- (void)q_addAccumulator:(id)accumulator
{
  maxDepth = self->_maxDepth;
  accumulatorCopy = accumulator;
  depthRange = [accumulatorCopy depthRange];
  v7 = depthRange + v6;
  if (maxDepth > depthRange + v6)
  {
    v7 = maxDepth;
  }

  self->_maxDepth = v7;
  [(NSMutableSet *)self->_accumulators addObject:accumulatorCopy];
}

- (void)q_addActionAndUpdate:(id)update
{
  v19 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (updateCopy)
  {
    if (!self->_magicKeyboardState || !self->_hardwareKeyboardState)
    {
      [(UIEventSessionActionAnalytics *)self q_updateHardwareState];
    }

    [(UIEventSessionActionAnalytics *)self q_updateUIInterfaceOrientation];
    [updateCopy setSessionID:self->_sessionID];
    [updateCopy setUiInterfaceOrientation:self->_uiInterfaceOrientation];
    [updateCopy setHardwareKeyboardState:self->_hardwareKeyboardState];
    [updateCopy setMagicKeyboardState:self->_magicKeyboardState];
    bundleID = [(UIEventSessionActionAnalytics *)self bundleID];
    if ([bundleID isEqualToString:@"com.apple.springboard"])
    {
      source = [updateCopy source];

      if (source == 2)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    p_lastAction = &self->_lastAction;
    v9 = [(_UIEventSessionAction *)self->_lastAction mergeActionIfPossible:updateCopy];
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &q_addActionAndUpdate____s_category);
      if (*CategoryCachedImpl)
      {
        v11 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = *p_lastAction;
          v13 = 134218498;
          v14 = v9;
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = updateCopy;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "q_addActionAndUpdate: Merge result %lu lastAction:%@ newAction:%@", &v13, 0x20u);
        }
      }
    }

    if (!*p_lastAction)
    {
      goto LABEL_13;
    }

    if (!v9)
    {
      [(UIEventSessionActionAnalytics *)self q_updateAnalyticsFromAccumulators];
LABEL_13:
      objc_storeStrong(&self->_lastAction, update);
    }
  }

LABEL_14:
}

- (void)q_updateAnalyticsFromAccumulators
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_lastAction)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_accumulators;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) increaseWithAction:{self->_lastAction, v9}];
        }

        while (v5 != v7);
        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    lastAction = self->_lastAction;
    self->_lastAction = 0;
  }
}

- (void)q_flushRecentActions
{
  v13 = *MEMORY[0x1E69E9840];
  [(UIEventSessionActionAnalytics *)self q_updateAnalyticsFromAccumulators];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_accumulators;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) flushAccumulator];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_instanceOfActionClass:(Class)class source:(int64_t)source
{
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v6 = objc_alloc_init(class);
    [v6 setSource:source];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldEnableTouchHeatMapAnalyzer
{
  if (qword_1ED4A0730 != -1)
  {
    dispatch_once(&qword_1ED4A0730, &__block_literal_global_57_2);
  }

  return _MergedGlobals_1265;
}

uint64_t __65__UIEventSessionActionAnalytics_shouldEnableTouchHeatMapAnalyzer__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UITouchHeatMapAnalyzerIpad, @"UITouchHeatMapAnalyzerIpad", _UIInternalPreferenceUpdateInteger) & 1) == 0 && qword_1EA95E658)
    {
      result = qword_1EA95E658 >= 0;
    }

    else
    {
      result = _os_feature_enabled_impl();
    }
  }

  else
  {
    result = 0;
  }

  _MergedGlobals_1265 = result;
  return result;
}

- (BOOL)getAIDState
{
  v45 = *MEMORY[0x1E69E9840];
  cf = IOHIDEventSystemClientCreateWithType();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = IOHIDEventSystemClientCopyServices(cf);
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0x1E695D000uLL;
    v6 = *v40;
    v7 = @"DeviceUsagePage";
    v8 = @"DeviceUsage";
    v9 = &unk_1EFE32F38;
    obj = v2;
    v27 = *v40;
    do
    {
      v10 = 0;
      v28 = v4;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(obj);
        }

        service = *(*(&v39 + 1) + 8 * v10);
        v11 = IOHIDServiceClientCopyProperty(service, @"DeviceUsagePairs");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v10;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
          v29 = v11;
          if (v13)
          {
            v14 = v13;
            v15 = *v36;
            v33 = v12;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v36 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v35 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = [v17 objectForKey:v7];
                  v19 = [v17 objectForKey:v8];
                  if ([v18 isEqual:v9] && objc_msgSend(v19, "isEqual:", &unk_1EFE32F50))
                  {
                    v20 = v5;
                    v21 = v9;
                    v22 = v8;
                    v23 = v7;
                    v24 = IOHIDServiceClientCopyProperty(service, @"Transport");
                    if ([v24 isEqualToString:@"AID"])
                    {
                      CFRelease(cf);

                      v2 = obj;
                      v25 = 1;
                      goto LABEL_27;
                    }

                    v7 = v23;
                    v8 = v22;
                    v9 = v21;
                    v5 = v20;
                    v12 = v33;
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v4 = v28;
          v11 = v29;
          v6 = v27;
          v10 = v30;
        }

        ++v10;
      }

      while (v10 != v4);
      v2 = obj;
      v4 = [(__CFArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = 0;
LABEL_27:

  return v25;
}

- (void)updateAIDState
{
  v10 = *MEMORY[0x1E69E9840];
  getAIDState = [(UIEventSessionActionAnalytics *)self getAIDState];
  v4 = 1;
  if (getAIDState)
  {
    v4 = 2;
  }

  self->_magicKeyboardState = v4;
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &updateAIDState___s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        magicKeyboardState = self->_magicKeyboardState;
        v8 = 134217984;
        v9 = magicKeyboardState;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "New magic keyboard state: %lu", &v8, 0xCu);
      }
    }
  }
}

- (void)updateHardwareKeyboardState
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[UIDevice currentDevice];
  v4 = v3;
  if (v3)
  {
    _isHardwareKeyboardAvailable = [v3 _isHardwareKeyboardAvailable];
    v6 = 1;
    if (_isHardwareKeyboardAvailable)
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  self->_hardwareKeyboardState = v6;
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &updateHardwareKeyboardState___s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        hardwareKeyboardState = self->_hardwareKeyboardState;
        v10 = 134217984;
        v11 = hardwareKeyboardState;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "New hardware keyboard state: %lu", &v10, 0xCu);
      }
    }
  }
}

- (void)updateUIInterfaceOrientation
{
  v8 = *MEMORY[0x1E69E9840];
  self->_uiInterfaceOrientation = [UIApp activeInterfaceOrientation];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &updateUIInterfaceOrientation___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        uiInterfaceOrientation = self->_uiInterfaceOrientation;
        v6 = 134217984;
        v7 = uiInterfaceOrientation;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "New interface orientation: %lu", &v6, 0xCu);
      }
    }
  }
}

- (void)checkForUIEventSessionActionAnalytics:(id)analytics forWindow:(id)window isFrontBoard:(BOOL)board isFrontBoardTransitioningToForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  boardCopy = board;
  v73 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  windowCopy = window;
  v12 = windowCopy;
  if (boardCopy)
  {
    if (foregroundCopy)
    {
      if (self->_needToFlushUIEventSessionActionAnalytics)
      {
        v13 = +[UIEventSessionActionAnalytics sharedInstance];
        [v13 writeAnalytics];
      }

      self->_needToFlushUIEventSessionActionAnalytics = 0;
      goto LABEL_39;
    }

    self->_needToFlushUIEventSessionActionAnalytics = 1;
  }

  if (([windowCopy _isSystemGestureWindow] & 1) == 0)
  {
    v14 = objc_opt_class();
    if (v14 == objc_opt_class())
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      allTouches = [analyticsCopy allTouches];
      v16 = [allTouches countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v68;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v68 != v18)
            {
              objc_enumerationMutation(allTouches);
            }

            v20 = *(*(&v67 + 1) + 8 * i);
            if ([v20 type] == 2)
            {
              v21 = +[UIEventSessionActionAnalytics sharedInstance];
              [v21 didPencilHover:v20 withPhase:{objc_msgSend(v20, "phase")}];
            }

            if ([v20 _isPointerTouch])
            {
              v22 = +[UIEventSessionActionAnalytics sharedInstance];
              v23 = [(UITouch *)v20 _locationInWindow:v12];
              v25 = v24;
              [v12 bounds];
              [v22 didPointerHover:analyticsCopy withLocationInWindow:v23 withWindowBounds:{v25, v26, v27, v28, v29}];
            }
          }

          v17 = [allTouches countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v17);
      }
    }

    v30 = objc_opt_class();
    if (v30 == objc_opt_class())
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      allTouches2 = [analyticsCopy allTouches];
      v32 = [allTouches2 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (!v32)
      {
        goto LABEL_38;
      }

      v33 = v32;
      v34 = *v64;
      while (1)
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v64 != v34)
          {
            objc_enumerationMutation(allTouches2);
          }

          v36 = *(*(&v63 + 1) + 8 * j);
          _isPointerTouch = [v36 _isPointerTouch];
          phase = [v36 phase];
          if (_isPointerTouch)
          {
            if (phase != 3)
            {
              continue;
            }

            v39 = +[UIEventSessionActionAnalytics sharedInstance];
            v40 = [(UITouch *)v36 _locationInWindow:v12];
            v42 = v41;
            [v12 bounds];
            [v39 didPointerClick:analyticsCopy withLocationInWindow:v40 withWindowBounds:{v42, v43, v44, v45, v46}];
            goto LABEL_35;
          }

          if (!phase || [v36 phase] == 1 || objc_msgSend(v36, "phase") == 3 || objc_msgSend(v36, "phase") == 4)
          {
            _trackpadFingerDownCount = [analyticsCopy _trackpadFingerDownCount];
            v39 = +[UIEventSessionActionAnalytics sharedInstance];
            v48 = [(UITouch *)v36 _locationInWindow:v12];
            v50 = v49;
            [v12 bounds];
            v52 = v51;
            v54 = v53;
            v56 = v55;
            v58 = v57;
            [v12 frame];
            [v39 didTouch:v36 withLocationInWindow:_trackpadFingerDownCount withWindowBounds:v48 withWindowFrame:v50 withTrackpadFingerDownCount:{v52, v54, v56, v58, v59, v60, v61, v62}];
LABEL_35:

            continue;
          }
        }

        v33 = [allTouches2 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (!v33)
        {
LABEL_38:

          break;
        }
      }
    }
  }

LABEL_39:
}

- (void)q_updateHardwareState
{
  v21 = *MEMORY[0x1E69E9840];
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UIEventSessionActionAnalyticsMagicKeyboardStateEnabled, @"UIEventSessionActionAnalyticsMagicKeyboardStateEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E64C)
  {
    [(UIEventSessionActionAnalytics *)self updateAIDState];
  }

  [(UIEventSessionActionAnalytics *)self updateHardwareKeyboardState];
  lastMagicKeyboardState = self->_lastMagicKeyboardState;
  v4 = self->_magicKeyboardState == lastMagicKeyboardState || lastMagicKeyboardState == 0;
  if (!v4 || ((v5 = self->_lastHardwareKeyboardState, self->_hardwareKeyboardState != v5) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &q_updateHardwareState___s_category);
      if (*CategoryCachedImpl)
      {
        v8 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          magicKeyboardState = self->_magicKeyboardState;
          v9 = self->_lastMagicKeyboardState;
          hardwareKeyboardState = self->_hardwareKeyboardState;
          lastHardwareKeyboardState = self->_lastHardwareKeyboardState;
          v13 = 134218752;
          v14 = v9;
          v15 = 2048;
          v16 = magicKeyboardState;
          v17 = 2048;
          v18 = lastHardwareKeyboardState;
          v19 = 2048;
          v20 = hardwareKeyboardState;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "*** Detected hardware state change (Magic KB %lu->%lu, HW KB %lu->%lu)", &v13, 0x2Au);
        }
      }
    }
  }

  self->_lastMagicKeyboardState = self->_magicKeyboardState;
  self->_lastHardwareKeyboardState = self->_hardwareKeyboardState;
}

- (void)q_updateUIInterfaceOrientation
{
  v14 = *MEMORY[0x1E69E9840];
  [(UIEventSessionActionAnalytics *)self updateUIInterfaceOrientation];
  lastUIInterfaceOrientation = self->_lastUIInterfaceOrientation;
  if (self->_uiInterfaceOrientation != lastUIInterfaceOrientation && lastUIInterfaceOrientation != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &q_updateUIInterfaceOrientation___s_category);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          uiInterfaceOrientation = self->_uiInterfaceOrientation;
          v8 = self->_lastUIInterfaceOrientation;
          v10 = 134218240;
          v11 = v8;
          v12 = 2048;
          v13 = uiInterfaceOrientation;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "*** Detected UI interface orientation change (orientation %lu->%lu)", &v10, 0x16u);
        }
      }
    }
  }

  v5 = self->_uiInterfaceOrientation;
  if (v5 != self->_lastUIInterfaceOrientation)
  {
    self->_lastUIInterfaceOrientation = v5;
  }
}

- (void)didPencilSqueezeWithPhase:(unint64_t)phase
{
  if (phase == 1)
  {
    v3 = @"SqueezeBegan";
  }

  else
  {
    if (phase != 3)
    {
      return;
    }

    v3 = @"SqueezeEnded";
  }

  [_UISignalAnalytics asyncSendPencilSignal:v3 payload:0];
}

- (void)_setPencilIsHoveringTo:(BOOL)to
{
  if (self->_pencilIsHovering != to)
  {
    v10 = v4;
    v11 = v3;
    if (to)
    {
      v9 = @"HoverBegan";
    }

    else
    {
      v9 = @"HoverEnded";
    }

    [_UISignalAnalytics asyncSendPencilSignal:v9 payload:0, v10, v11, v5, v6];
    self->_pencilIsHovering = to;
  }
}

- (void)didPencilHover:(id)hover withPhase:(int64_t)phase
{
  hoverCopy = hover;
  if ((phase - 5) <= 2)
  {
    v7 = hoverCopy;
    [(UIEventSessionActionAnalytics *)self _setPencilIsHoveringTo:phase != 7];
    hoverCopy = v7;
  }
}

- (void)didTouch:(id)touch withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds withWindowFrame:(CGRect)frame withTrackpadFingerDownCount:(int64_t)count
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = window.y;
  v12 = window.x;
  v14 = MEMORY[0x1E696AD98];
  touchCopy = touch;
  v16 = [v14 numberWithInt:{objc_msgSend(touchCopy, "_touchIdentifier")}];
  phase = [touchCopy phase];
  type = [touchCopy type];

  if (type == 2)
  {
    if (!phase)
    {
      [(UIEventSessionActionAnalytics *)self _setPencilIsHoveringTo:0];
      v19 = @"TouchBegan";
      goto LABEL_6;
    }

    if ((phase - 3) <= 1)
    {
      v19 = @"TouchEnded";
LABEL_6:
      [_UISignalAnalytics asyncSendPencilSignal:v19 payload:0];
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__UIEventSessionActionAnalytics_didTouch_withLocationInWindow_withWindowBounds_withWindowFrame_withTrackpadFingerDownCount___block_invoke;
  block[3] = &unk_1E711F218;
  block[4] = self;
  v24 = v16;
  v25 = phase;
  v26 = type;
  v27 = v12;
  v28 = v11;
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  countCopy = count;
  frameCopy = frame;
  v21 = v16;
  dispatch_async(queue, block);
}

void __124__UIEventSessionActionAnalytics_didTouch_withLocationInWindow_withWindowBounds_withWindowFrame_withTrackpadFingerDownCount___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) didTouchWithID:*(a1 + 40) withPhase:*(a1 + 48) withType:*(a1 + 56) withLocationInWindow:*(a1 + 112) withWindowBounds:*(a1 + 64) withTrackpadFingerDownCount:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) q_addActionAndUpdate:*(*(&v9 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  if (v7[6] && [v7 shouldEnableTouchHeatMapAnalyzer])
  {
    [*(a1 + 32) q_updateUIInterfaceOrientation];
    [*(a1 + 32) q_updateHardwareState];
    v8 = *(a1 + 32);
    [*(v8 + 48) didTouchWithID:*(a1 + 40) withPhase:*(a1 + 48) withType:*(a1 + 56) withLocationInWindow:*(v8 + 88) withWindowFrame:*(v8 + 72) withUIInterfaceOrientation:*(v8 + 56) withHardwareKeyboardState:*(a1 + 64) withMagicKeyboardState:{*(a1 + 72), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144)}];
  }
}

- (void)didPointerHover:(id)hover withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds
{
  if (hover)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v9 = window.y;
    v10 = window.x;
    _trackpadFingerDownCount = [hover _trackpadFingerDownCount];
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__UIEventSessionActionAnalytics_didPointerHover_withLocationInWindow_withWindowBounds___block_invoke;
    v14[3] = &unk_1E711F240;
    v14[4] = self;
    v14[5] = _trackpadFingerDownCount;
    *&v14[6] = v10;
    *&v14[7] = v9;
    *&v14[8] = x;
    *&v14[9] = y;
    *&v14[10] = width;
    *&v14[11] = height;
    dispatch_async(queue, v14);
  }
}

void __87__UIEventSessionActionAnalytics_didPointerHover_withLocationInWindow_withWindowBounds___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) didPointerHoverWithTrackpadFingerDownCount:*(a1 + 40) withLocationInWindow:*(a1 + 48) withWindowBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) q_addActionAndUpdate:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)didPointerClick:(id)click withLocationInWindow:(CGPoint)window withWindowBounds:(CGRect)bounds
{
  if (click)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v9 = window.y;
    v10 = window.x;
    _trackpadFingerDownCount = [click _trackpadFingerDownCount];
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__UIEventSessionActionAnalytics_didPointerClick_withLocationInWindow_withWindowBounds___block_invoke;
    v14[3] = &unk_1E711F240;
    v14[4] = self;
    v14[5] = _trackpadFingerDownCount;
    *&v14[6] = v10;
    *&v14[7] = v9;
    *&v14[8] = x;
    *&v14[9] = y;
    *&v14[10] = width;
    *&v14[11] = height;
    dispatch_async(queue, v14);
  }
}

void __87__UIEventSessionActionAnalytics_didPointerClick_withLocationInWindow_withWindowBounds___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) didPointerClickWithTrackpadFingerDownCount:*(a1 + 40) withLocationInWindow:*(a1 + 48) withWindowBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) q_addActionAndUpdate:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)didTap:(id)tap withSource:(int64_t)source
{
  v5 = [(UIEventSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class() source:source];
  asTap = [v5 asTap];

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__UIEventSessionActionAnalytics_didTap_withSource___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v10 = asTap;
  selfCopy = self;
  v8 = asTap;
  dispatch_async(queue, v9);
}

uint64_t __51__UIEventSessionActionAnalytics_didTap_withSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_6___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 description];
        v8 = [*(a1 + 40) bundleID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "didTap action = %@, bundleId = %@", &v9, 0x16u);
      }
    }
  }

  return [*(a1 + 40) q_addActionAndUpdate:*(a1 + 32)];
}

- (void)didScroll:(id)scroll withSource:(int64_t)source
{
  v5 = [(UIEventSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class() source:source];
  asScroll = [v5 asScroll];

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__UIEventSessionActionAnalytics_didScroll_withSource___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v10 = asScroll;
  selfCopy = self;
  v8 = asScroll;
  dispatch_async(queue, v9);
}

void __54__UIEventSessionActionAnalytics_didScroll_withSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_UIIsPrivateMainBundle())
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = @"other";
  }

  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_7___s_category);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = v5;
        v8 = [v6 description];
        v9 = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "didScroll action = %@, bundleId = %@", &v9, 0x16u);
      }
    }
  }

  [*(a1 + 40) q_addActionAndUpdate:*(a1 + 32)];
}

- (void)didShowContextualMenuFromLocation:(CGPoint)location withSource:(int64_t)source
{
  v5 = [(UIEventSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class() source:source];
  asContextualPress = [v5 asContextualPress];

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__UIEventSessionActionAnalytics_didShowContextualMenuFromLocation_withSource___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v10 = asContextualPress;
  selfCopy = self;
  v8 = asContextualPress;
  dispatch_async(queue, v9);
}

uint64_t __78__UIEventSessionActionAnalytics_didShowContextualMenuFromLocation_withSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_8___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 description];
        v8 = [*(a1 + 40) bundleID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "didShowContextualMenuFromLocation action = %@, bundleId = %@", &v9, 0x16u);
      }
    }
  }

  return [*(a1 + 40) q_addActionAndUpdate:*(a1 + 32)];
}

- (void)didTypingWithSource:(int64_t)source
{
  if (source == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIEventSessionActionAnalytics.m" lineNumber:738 description:@"didTypingWithSource called with direct touch source. This should be accounted for in didTouch:"];
  }

  v5 = [(UIEventSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class() source:source];
  asTyping = [v5 asTyping];

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__UIEventSessionActionAnalytics_didTypingWithSource___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v12 = asTyping;
  selfCopy = self;
  v8 = asTyping;
  dispatch_async(queue, v11);
}

uint64_t __53__UIEventSessionActionAnalytics_didTypingWithSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_9___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 description];
        v8 = [*(a1 + 40) bundleID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "didTypingWithSource action = %@, bundleId = %@", &v9, 0x16u);
      }
    }
  }

  return [*(a1 + 40) q_addActionAndUpdate:*(a1 + 32)];
}

- (void)didTextSelectionWithSource:(int64_t)source
{
  v4 = [(UIEventSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class() source:source];
  asTextSelection = [v4 asTextSelection];

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__UIEventSessionActionAnalytics_didTextSelectionWithSource___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v9 = asTextSelection;
  selfCopy = self;
  v7 = asTextSelection;
  dispatch_async(queue, v8);
}

uint64_t __60__UIEventSessionActionAnalytics_didTextSelectionWithSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_10___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 description];
        v8 = [*(a1 + 40) bundleID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "didTextSelectionWithSource action = %@, bundleId = %@", &v9, 0x16u);
      }
    }
  }

  return [*(a1 + 40) q_addActionAndUpdate:*(a1 + 32)];
}

- (void)didKeyboardShortcut:(id)shortcut
{
  v4 = [(UIEventSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class() source:6];
  asKeyCommand = [v4 asKeyCommand];

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__UIEventSessionActionAnalytics_didKeyboardShortcut___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v9 = asKeyCommand;
  selfCopy = self;
  v7 = asKeyCommand;
  dispatch_async(queue, v8);
}

uint64_t __53__UIEventSessionActionAnalytics_didKeyboardShortcut___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &IASignalPencilDoubleTapped_block_invoke_11___s_category);
    if (*CategoryCachedImpl)
    {
      v4 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 description];
        v8 = [*(a1 + 40) bundleID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "didKeyCommand action = %@, bundleId = %@", &v9, 0x16u);
      }
    }
  }

  return [*(a1 + 40) q_addActionAndUpdate:*(a1 + 32)];
}

- (void)didHardwareConfigurationChange:(id)change
{
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &didHardwareConfigurationChange____s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Received hardware keyboard availability change notification!", buf, 2u);
      }
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__UIEventSessionActionAnalytics_didHardwareConfigurationChange___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)q_setupDefaultAnalytics
{
  v17[8] = *MEMORY[0x1E69E9840];
  v16[0] = objc_opt_class();
  v17[0] = &unk_1EFE2DC30;
  v16[1] = objc_opt_class();
  v17[1] = &unk_1EFE2DC48;
  v16[2] = objc_opt_class();
  v17[2] = &unk_1EFE2DC60;
  v16[3] = objc_opt_class();
  v17[3] = &unk_1EFE2DC78;
  v16[4] = objc_opt_class();
  v17[4] = &unk_1EFE2DC90;
  v16[5] = objc_opt_class();
  v17[5] = &unk_1EFE2DCA8;
  v16[6] = objc_opt_class();
  v17[6] = &unk_1EFE2DCC0;
  v16[7] = objc_opt_class();
  v17[7] = &unk_1EFE2DCD8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:8];
  v4 = [v3 objectForKeyedSubscript:objc_opt_class()];
  v5 = [v4 count];

  if (v5 != 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIEventSessionActionDefaultAnalytics.m" lineNumber:76 description:@"rawEventsAllowedActionSourcePairs has incorrect length. Make sure it aligns with _UIEventSourceCount"];
  }

  v14[0] = objc_opt_class();
  v15[0] = &unk_1EFE2DCF0;
  v14[1] = objc_opt_class();
  v15[1] = &unk_1EFE2DD08;
  v14[2] = objc_opt_class();
  v15[2] = &unk_1EFE2DD20;
  v14[3] = objc_opt_class();
  v15[3] = &unk_1EFE2DD38;
  v14[4] = objc_opt_class();
  v15[4] = &unk_1EFE2DD50;
  v14[5] = objc_opt_class();
  v15[5] = &unk_1EFE2DD68;
  v14[6] = objc_opt_class();
  v15[6] = &unk_1EFE2DD80;
  v14[7] = objc_opt_class();
  v15[7] = &unk_1EFE2DD98;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
  v7 = [v6 objectForKeyedSubscript:objc_opt_class()];
  v8 = [v7 count];

  if (v8 != 7)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIEventSessionActionDefaultAnalytics.m" lineNumber:91 description:@"rawEventsAllowedActionSourcePairs has incorrect length. Make sure it aligns with _UIEventSourceCount"];
  }

  v9 = [_UIEventSessionDynamicAllEventAccumulator accumulatorWithName:@"com.apple.inputAnalytics.eventSessionActionRawEvents" depth:1 block:&__block_literal_global_628 delegate:self allowedActionSourceTypes:v3];
  [(UIEventSessionActionAnalytics *)self q_addAccumulator:v9];

  v10 = [_UIEventSessionDynamicAllEventAccumulator accumulatorWithName:@"com.apple.inputAnalytics.eventSessionActionContextualEvents" depth:1 block:&__block_literal_global_94_3 delegate:self allowedActionSourceTypes:v6];
  [(UIEventSessionActionAnalytics *)self q_addAccumulator:v10];
}

uint64_t __65__UIEventSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 actionCount];

  return v3;
}

uint64_t __65__UIEventSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 actionCount];

  return v3;
}

@end