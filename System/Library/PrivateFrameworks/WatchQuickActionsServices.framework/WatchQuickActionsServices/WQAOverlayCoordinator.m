@interface WQAOverlayCoordinator
- (BOOL)_astFocusRingIsVisible;
- (BOOL)_astHasDoubleTapActivationGesture;
- (BOOL)_shouldShowHintsForQuickActions:(id)a3;
- (WQAOverlayCoordinator)initWithDataSource:(id)a3;
- (WQAOverlayDataSource)dataSource;
- (id)_createNonAnimatingShapeLayerFromPath:(id)a3;
- (id)_localizedBannerInstructionText;
- (void)_mainQueue_addAnimatedShapeLayerForQuickAction:(id)a3;
- (void)_mainQueue_backlightDidTurnOff;
- (void)_mainQueue_backlightDidTurnOn;
- (void)_mainQueue_cleanupHintViews;
- (void)_mainQueue_cleanupShapeLayers;
- (void)_mainQueue_removeShapeLayer:(id)a3;
- (void)_mainQueue_showHintsWithPrimaryQuickActions:(id)a3 completion:(id)a4;
- (void)_mainQueue_showUIForQuickActions:(id)a3;
- (void)_updateGestureSettings;
- (void)animateConfirmationForQuickAction:(id)a3 completion:(id)a4;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
- (void)refreshOverlaysIfNecessary;
- (void)stopCurrentOverlays;
@end

@implementation WQAOverlayCoordinator

- (WQAOverlayCoordinator)initWithDataSource:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = WQAOverlayCoordinator;
  v5 = [(WQAOverlayCoordinator *)&v26 init];
  v6 = v5;
  if (v5)
  {
    [(WQAOverlayCoordinator *)v5 setDataSource:v4];
    v7 = [MEMORY[0x277CBEB18] array];
    [(WQAOverlayCoordinator *)v6 setQuickActionShapeLayers:v7];

    v8 = [MEMORY[0x277CF0880] sharedBacklight];
    [v8 addObserver:v6];

    v9 = [MEMORY[0x277CF0880] sharedBacklight];
    v10 = [v9 backlightState] & 0xFFFFFFFFFFFFFFFELL;

    if (v10 == 2)
    {
      [(WQAOverlayCoordinator *)v6 refreshOverlaysIfNecessary];
    }

    [(WQAOverlayCoordinator *)v6 _updateGestureSettings];
    if (WatchControlSettingsLibraryCore())
    {
      v11 = [getWatchControlSettingsClass() sharedInstance];
      [v11 addSettingsObserver:v6];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v13 = getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr;
      v35 = getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr;
      if (!getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr)
      {
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_block_invoke;
        v30 = &unk_279E65C30;
        v31 = &v32;
        v14 = WatchControlSettingsLibrary();
        v15 = dlsym(v14, "kWatchControlReceivedActivationGestureDidChange");
        *(v31[1] + 24) = v15;
        getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr = *(v31[1] + 24);
        v13 = v33[3];
      }

      _Block_object_dispose(&v32, 8);
      if (v13)
      {
        v16 = *v13;
        v17 = *v13;
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, updateGestureSettings, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v18 = CFNotificationCenterGetDarwinNotifyCenter();
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v19 = getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr;
        v35 = getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr;
        if (!getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr)
        {
          v27 = MEMORY[0x277D85DD0];
          v28 = 3221225472;
          v29 = __getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_block_invoke;
          v30 = &unk_279E65C30;
          v31 = &v32;
          v20 = WatchControlSettingsLibrary();
          v21 = dlsym(v20, "kWatchControlInputSourcesRequireFocusRingDidChange");
          *(v31[1] + 24) = v21;
          getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr = *(v31[1] + 24);
          v19 = v33[3];
        }

        _Block_object_dispose(&v32, 8);
        if (v19)
        {
          v22 = *v19;
          v23 = *v19;
          CFNotificationCenterAddObserver(v18, v6, updateGestureSettings, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          goto LABEL_12;
        }
      }

      else
      {
        [WQAOverlayCoordinator initWithDataSource:];
      }

      v25 = [WQAOverlayCoordinator initWithDataSource:];
      _Block_object_dispose(&v32, 8);
      _Unwind_Resume(v25);
    }
  }

LABEL_12:

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x277CF0880] sharedBacklight];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = WQAOverlayCoordinator;
  [(WQAOverlayCoordinator *)&v5 dealloc];
}

- (void)animateConfirmationForQuickAction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke;
  block[3] = &unk_279E65A70;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke(id *a1)
{
  v62 = *MEMORY[0x277D85DE8];
  [a1[4] _mainQueue_cleanupShapeLayers];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2;
  v56[3] = &unk_279E65980;
  v2 = a1[6];
  v56[4] = a1[4];
  v57 = v2;
  v3 = MEMORY[0x2743D34B0](v56);
  v4 = [a1[5] animationHandler];
  v5 = wqa_overlay_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = a1[5];
      *buf = 138412546;
      v59 = v4;
      v60 = 2112;
      v61 = v7;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "custom animation handler: %@ will handle confirmation for quick action: %@", buf, 0x16u);
    }

    [v4 quickActionWillActivate:a1[5]];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    if (v6)
    {
      v8 = a1[5];
      *buf = 138412290;
      v59 = v8;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "animating confirmation for quick action: %@", buf, 0xCu);
    }

    v9 = [a1[5] quickActionHostingView];
    v10 = [a1[5] quickActionPrimaryView];
    v11 = [a1[5] quickActionPath];
    v12 = v11;
    if (v9 && v10 && v11)
    {
      if ([a1[5] allowsResizingAnimations])
      {
        v13 = [a1[4] _createNonAnimatingShapeLayerFromPath:v12];
        v14 = [v9 layer];
        [v14 addSublayer:v13];

        v15 = MEMORY[0x277D75D18];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_285;
        v52[3] = &unk_279E659A8;
        v53 = v10;
        v54 = v9;
        v55 = v13;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2_286;
        v48[3] = &unk_279E65A20;
        v49 = v53;
        v50 = v55;
        v51 = v3;
        v16 = v55;
        [v15 animateWithDuration:v52 animations:v48 completion:0.3];
      }

      else
      {
        v17 = [v9 parentFocusEnvironment];
        v18 = [v17 focusItemContainer];
        v19 = [v18 coordinateSpace];

        [v9 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [v9 coordinateSpace];
        [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v30, v32, v34, v36}];
        v38 = WQADefaultTintColor();
        [v37 setBackgroundColor:v38];

        v39 = [MEMORY[0x277CD9F90] layer];
        [v39 setFrame:{v30, v32, v34, v36}];
        [v39 setFillRule:*MEMORY[0x277CDA250]];
        Mutable = CGPathCreateMutable();
        CGPathAddPath(Mutable, 0, [v12 CGPath]);
        [v39 setPath:Mutable];
        v41 = [v37 layer];
        [v41 setMask:v39];

        [v9 addSubview:v37];
        v42 = MEMORY[0x277D75D18];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_5;
        v45[3] = &unk_279E65A48;
        v46 = v37;
        v47 = v3;
        v43 = v37;
        [v42 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v45 options:0 animations:0.0 completion:0.0];
      }
    }

    else
    {
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  v4 = *(a1 + 32);
  return AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_285(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  v3 = v4;
  result = [*(a1 + 32) setTransform:&v3];
  if (*(a1 + 32) != *(a1 + 40))
  {
    v3 = v4;
    return [*(a1 + 48) setAffineTransform:&v3];
  }

  return result;
}

void __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_2_286(id *a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_3_287;
  v6[3] = &unk_279E659D0;
  v7 = a1[4];
  v8 = a1[5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_4;
  v3[3] = &unk_279E659F8;
  v5 = a1[6];
  v4 = a1[5];
  [v2 animateWithDuration:v6 animations:v3 completion:0.3];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_3_287(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, 1.0, 1.0);
  v2 = *(a1 + 32);
  v6 = v7;
  [v2 setTransform:&v6];
  CGAffineTransformMakeScale(&v5, 1.2, 1.2);
  v3 = *(a1 + 40);
  v6 = v5;
  [v3 setAffineTransform:&v6];
  return [*(a1 + 40) setOpacity:0.0];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeFromSuperlayer];
}

void __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.7];
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_6;
  v6[3] = &unk_279E65958;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_7;
  v3[3] = &unk_279E659F8;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v6 options:v3 animations:0.3 completion:0.0];
}

uint64_t __70__WQAOverlayCoordinator_animateConfirmationForQuickAction_completion___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)stopCurrentOverlays
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WQAOverlayCoordinator_stopCurrentOverlays__block_invoke;
  block[3] = &unk_279E65958;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateGestureSettings
{
  if (WatchControlSettingsLibraryCore())
  {
    v3 = [getWatchControlSettingsClass() sharedInstance];
    -[WQAOverlayCoordinator setReceivedActivationGesture:](self, "setReceivedActivationGesture:", [v3 receivedActivationGesture]);
    -[WQAOverlayCoordinator setInputSourcesRequireFocusRing:](self, "setInputSourcesRequireFocusRing:", [v3 inputSourcesRequireFocusRing]);
    v4 = [v3 greyActivationGesture];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v5 = getWCGreyEventNoneSymbolLoc_ptr;
    v11 = getWCGreyEventNoneSymbolLoc_ptr;
    if (!getWCGreyEventNoneSymbolLoc_ptr)
    {
      v6 = WatchControlSettingsLibrary();
      v9[3] = dlsym(v6, "WCGreyEventNone");
      getWCGreyEventNoneSymbolLoc_ptr = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      v7 = [WQAOverlayCoordinator initWithDataSource:];
      _Block_object_dispose(&v8, 8);
      _Unwind_Resume(v7);
    }

    [(WQAOverlayCoordinator *)self setHasNoActivationGesture:v4 == *v5];
  }
}

- (BOOL)_astFocusRingIsVisible
{
  v2 = _AXSWatchControlEnabled();
  if (v2)
  {
    LOBYTE(v2) = _AXSFullKeyboardAccessFocusRingEnabled() != 0;
  }

  return v2;
}

- (BOOL)_astHasDoubleTapActivationGesture
{
  if (!_AXSWatchControlEnabled())
  {
    return 0;
  }

  v2 = [getWatchControlSettingsClass() sharedInstance];
  v3 = [v2 greyActivationGesture] == 3;

  return v3;
}

- (void)refreshOverlaysIfNecessary
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF0880] sharedBacklight];
  v4 = [v3 backlightState];

  if (v4 <= 1)
  {
    v5 = wqa_overlay_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "backlight is off, skipping refresh", buf, 2u);
    }

    goto LABEL_13;
  }

  if ([(WQAOverlayCoordinator *)self _astFocusRingIsVisible])
  {
    v6 = wqa_overlay_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "AST focus ring is visible, hide all overlays";
LABEL_11:
      _os_log_impl(&dword_272AAE000, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([(WQAOverlayCoordinator *)self _astHasDoubleTapActivationGesture])
  {
    v6 = wqa_overlay_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "AST has double tap activation gesture, hide all overlays";
      goto LABEL_11;
    }

LABEL_12:

    [(WQAOverlayCoordinator *)self stopCurrentOverlays];
    goto LABEL_13;
  }

  if (_AXSWatchControlEnabled() && [(WQAOverlayCoordinator *)self inputSourcesRequireFocusRing])
  {
    if ([(WQAOverlayCoordinator *)self hasNoActivationGesture])
    {
      v6 = wqa_overlay_log();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v7 = "activation gesture set to none, hide all overlays";
      goto LABEL_11;
    }

    if ([(WQAOverlayCoordinator *)self receivedActivationGesture])
    {
      v6 = wqa_overlay_log();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v7 = "already received activation gesture, hide all overlays";
      goto LABEL_11;
    }
  }

  v9 = [(WQAOverlayCoordinator *)self dataSource];
  v10 = [v9 quickActionsForOverlayCoordinator:self];

  if ([v10 count])
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v17 identifier];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    v19 = v11;
    AXPerformBlockOnMainThread();
  }

  else
  {
    v20 = wqa_overlay_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272AAE000, v20, OS_LOG_TYPE_INFO, "no more quick actions, cleaning up overlays", buf, 2u);
    }

    [(WQAOverlayCoordinator *)self stopCurrentOverlays];
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

void __51__WQAOverlayCoordinator_refreshOverlaysIfNecessary__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB58] indexSet];
  v3 = [*(a1 + 32) quickActionShapeLayers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [*(a1 + 32) quickActionShapeLayers];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [v7 superlayer];

      if (v8)
      {
        v9 = *(a1 + 40);
        v10 = [v7 quickActionIdentifier];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11 && (v12 = [v11 currentVisualsToken], v12 == objc_msgSend(v7, "quickActionVisualsToken")))
        {
          v13 = *(a1 + 40);
          v14 = [v7 quickActionIdentifier];
          [v13 removeObjectForKey:v14];
        }

        else
        {
          [*(a1 + 32) _mainQueue_removeShapeLayer:v7];
          [v2 addIndex:v5];
        }
      }

      else
      {
        [v2 addIndex:v5];
      }

      ++v5;
      v15 = [*(a1 + 32) quickActionShapeLayers];
      v16 = [v15 count];
    }

    while (v5 < v16);
  }

  if ([v2 count])
  {
    v17 = wqa_overlay_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v2;
      _os_log_impl(&dword_272AAE000, v17, OS_LOG_TYPE_INFO, "removing shape layers at indeces: %@", &v22, 0xCu);
    }

    v18 = [*(a1 + 32) quickActionShapeLayers];
    [v18 removeObjectsAtIndexes:v2];
  }

  v19 = *(a1 + 32);
  v20 = [*(a1 + 40) allValues];
  [v19 _mainQueue_showUIForQuickActions:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_mainQueue_removeShapeLayer:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = wqa_overlay_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_272AAE000, v4, OS_LOG_TYPE_INFO, "removing shape layer: %@", &v6, 0xCu);
  }

  [v3 removeFromSuperlayer];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_mainQueue_addAnimatedShapeLayerForQuickAction:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [v4 animationHandler];
  if (v5)
  {
    v6 = wqa_overlay_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_272AAE000, v6, OS_LOG_TYPE_INFO, "animation handler: %@ will handle pulse for quick action: %@", &v23, 0x16u);
    }

    [v5 quickActionWillPulse:v4];
  }

  else
  {
    v7 = [v4 quickActionHostingView];
    v8 = [v4 quickActionPath];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = wqa_overlay_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v4;
        _os_log_impl(&dword_272AAE000, v10, OS_LOG_TYPE_INFO, "adding shape layer for quick action: %@", &v23, 0xCu);
      }

      v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      [v11 setFromValue:&unk_2882248C8];
      [v11 setToValue:&unk_2882248D8];
      [v11 setAutoreverses:1];
      [v11 setDuration:1.5];
      LODWORD(v12) = 2139095039;
      [v11 setRepeatCount:v12];
      v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v11 setTimingFunction:v13];

      LODWORD(v14) = 2139095040;
      [v11 setRepeatCount:v14];
      v15 = +[WQAShapeLayer layer];
      v16 = [v4 identifier];
      [v15 setQuickActionIdentifier:v16];

      [v15 setQuickActionVisualsToken:{objc_msgSend(v4, "currentVisualsToken")}];
      [v15 setOpacity:0.0];
      [v15 setPath:{objc_msgSend(v9, "CGPath")}];
      [v9 bounds];
      [v15 setBounds:?];
      [v9 bounds];
      MidX = CGRectGetMidX(v28);
      [v9 bounds];
      [v15 setPosition:{MidX, CGRectGetMidY(v29)}];
      v18 = WQADefaultTintColor();
      [v15 setStrokeColor:{objc_msgSend(v18, "CGColor")}];

      [v15 setLineWidth:WQADefaultShapeLineWidth()];
      v19 = [MEMORY[0x277D75348] clearColor];
      [v15 setFillColor:{objc_msgSend(v19, "CGColor")}];

      v20 = [v7 layer];
      [v20 addSublayer:v15];

      [v15 addAnimation:v11 forKey:@"animations"];
      v21 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
      [v21 addObject:v15];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_createNonAnimatingShapeLayerFromPath:(id)a3
{
  v3 = MEMORY[0x277CD9F90];
  v4 = a3;
  v5 = [v3 layer];
  [v5 setPath:{objc_msgSend(v4, "CGPath")}];
  [v4 bounds];
  [v5 setBounds:?];
  [v4 bounds];
  MidX = CGRectGetMidX(v19);
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  [v5 setPosition:{MidX, CGRectGetMidY(v20)}];
  v15 = WQADefaultTintColor();
  [v5 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

  [v5 setLineWidth:WQADefaultShapeLineWidth()];
  v16 = [MEMORY[0x277D75348] clearColor];
  [v5 setFillColor:{objc_msgSend(v16, "CGColor")}];

  return v5;
}

- (BOOL)_shouldShowHintsForQuickActions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 applicationState];

  if (v6)
  {
    v7 = wqa_overlay_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272AAE000, v7, OS_LOG_TYPE_INFO, "will not show quick action banner because UIApp is not active", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if ([v14 canShowOverlays])
        {
          break;
        }

        v15 = [v14 animationHandler];

        if (v15)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      if ([(WQAOverlayCoordinator *)self _astFocusRingIsVisible])
      {
        goto LABEL_16;
      }

      v8 = _AXSWatchQuickActionBannerAppearance() == 0;
    }

    else
    {
LABEL_14:

LABEL_16:
      v8 = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_mainQueue_showUIForQuickActions:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 ax_filteredArrayUsingBlock:&__block_literal_global_0];
  if ([v4 count])
  {
    v5 = [(WQAOverlayCoordinator *)self currentShapeLayersForHint];

    if (!v5)
    {
      v6 = wqa_overlay_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_272AAE000, v6, OS_LOG_TYPE_INFO, "showing UI for quick actions: %@", buf, 0xCu);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_306;
      v12[3] = &unk_279E659D0;
      v12[4] = self;
      v7 = v4;
      v13 = v7;
      v8 = MEMORY[0x2743D34B0](v12);
      v11 = v7;
      v9 = v8;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_306(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _astFocusRingIsVisible] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(a1 + 32) _mainQueue_addAnimatedShapeLayerForQuickAction:{*(*(&v8 + 1) + 8 * v6++), v8}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _shouldShowHintsForQuickActions:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__WQAOverlayCoordinator__mainQueue_showUIForQuickActions___block_invoke_3;
    v5[3] = &unk_279E65AB8;
    v6 = *(a1 + 48);
    [v2 _mainQueue_showHintsWithPrimaryQuickActions:v3 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

- (id)_localizedBannerInstructionText
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WQAOverlayCoordinator__localizedBannerInstructionText__block_invoke;
  block[3] = &unk_279E65958;
  block[4] = self;
  if (_localizedBannerInstructionText_onceToken != -1)
  {
    dispatch_once(&_localizedBannerInstructionText_onceToken, block);
  }

  v2 = [_localizedBannerInstructionText__Bundle localizedStringForKey:@"banner.hint" value:&stru_288223548 table:@"Localizable-elton"];

  return v2;
}

uint64_t __56__WQAOverlayCoordinator__localizedBannerInstructionText__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _localizedBannerInstructionText__Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (void)_mainQueue_showHintsWithPrimaryQuickActions:(id)a3 completion:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v48 = self;
  v8 = [(WQAOverlayCoordinator *)self _localizedBannerInstructionText];
  _AXSReduceMotionEnabled();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        if (!v12)
        {
          v12 = [*(*(&v58 + 1) + 8 * i) localizedTitle];
        }

        if (([v15 canShowOverlays] & 1) == 0)
        {
          [v15 animationHandler];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v11);

    if (v12)
    {
      v44 = objc_opt_new();
      v43 = objc_opt_new();
      v47 = objc_opt_new();
      if (![(WQAOverlayCoordinator *)v48 _astFocusRingIsVisible])
      {
        v41 = v8;
        v42 = v7;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v40 = v9;
        v16 = v9;
        v17 = [v16 countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v55;
          v45 = *v55;
          v46 = v16;
          do
          {
            v20 = 0;
            v49 = v18;
            do
            {
              if (*v55 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v54 + 1) + 8 * v20);
              v22 = [v21 animationHandler];
              if (v22)
              {
                v23 = wqa_overlay_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf.a) = 138412546;
                  *(&buf.a + 4) = v22;
                  WORD2(buf.b) = 2112;
                  *(&buf.b + 6) = v21;
                  _os_log_impl(&dword_272AAE000, v23, OS_LOG_TYPE_INFO, "animation handler: %@ will handle hint for quick action: %@", &buf, 0x16u);
                }
              }

              else
              {
                v23 = [v21 quickActionHostingView];
                v24 = [v21 quickActionPrimaryView];
                v25 = [v21 quickActionPath];
                v26 = v25;
                if (v23)
                {
                  v27 = v24 == 0;
                }

                else
                {
                  v27 = 1;
                }

                if (!v27 && v25 != 0)
                {
                  v29 = [(WQAOverlayCoordinator *)v48 _createNonAnimatingShapeLayerFromPath:v25];
                  v30 = [v23 layer];
                  [v30 addSublayer:v29];

                  [v47 addObject:v29];
                  if ([v21 allowsResizingAnimations])
                  {
                    [v44 addObject:v24];
                    if (v23 != v24)
                    {
                      [v43 addObject:v29];
                    }
                  }

                  v19 = v45;
                  v16 = v46;
                }

                v18 = v49;
              }

              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v54 objects:v63 count:16];
          }

          while (v18);
        }

        v8 = v41;
        v7 = v42;
        v9 = v40;
      }

      [(WQAOverlayCoordinator *)v48 setCurrentShapeLayersForHint:v47];
      v31 = _AXSReduceMotionEnabled();
      v32 = 0.93;
      memset(&buf.c, 0, 32);
      if (v31)
      {
        v32 = 1.0;
      }

      *&buf.a = 0uLL;
      CGAffineTransformMakeScale(&buf, v32, v32);
      memset(&v53, 0, sizeof(v53));
      CGAffineTransformMakeScale(&v53, 1.0, 1.0);
      v33 = wqa_overlay_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&dword_272AAE000, v33, OS_LOG_TYPE_INFO, "presenting banner and hints", v52, 2u);
      }

      v34 = +[WatchQuickActionsServices sharedInstance];
      [v34 showInstructionalBannerWithTitle:v12 subtitle:v8];

      v50 = v9;
      v51 = v7;
      v35 = v47;
      v36 = v43;
      v37 = v44;
      AXPerformBlockOnMainThreadAfterDelay();

      goto LABEL_46;
    }
  }

  else
  {
  }

  v38 = wqa_overlay_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_272AAE000, v38, OS_LOG_TYPE_INFO, "no title to present banner with", &buf, 2u);
  }

  (*(v7 + 2))(v7, 1);
  v12 = 0;
LABEL_46:

  v39 = *MEMORY[0x277D85DE8];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 176) == 1)
  {
    v2 = +[WatchQuickActionsServices sharedInstance];
    [v2 animateInstructionalBannerWithScaleFactor:0.93 interstepDuration:{0.93, 0.15}];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [v8 animationHandler];
        v10 = v9;
        if (v9)
        {
          [v9 quickActionWillHint:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v5);
  }

  v11 = MEMORY[0x277D75D18];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_2;
  v30[3] = &unk_279E65B08;
  v31 = *(a1 + 40);
  v12 = *(a1 + 96);
  v33 = *(a1 + 80);
  v34 = v12;
  v35 = *(a1 + 112);
  v32 = *(a1 + 48);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_3;
  v20[3] = &unk_279E65BA8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 144);
  v24 = *(a1 + 128);
  v25 = v14;
  v26 = *(a1 + 160);
  v15 = *(a1 + 48);
  v16 = *(a1 + 96);
  v27 = *(a1 + 80);
  v28 = v16;
  v29 = *(a1 + 112);
  *&v17 = *(a1 + 56);
  *(&v17 + 1) = *(a1 + 64);
  *&v18 = v13;
  *(&v18 + 1) = v15;
  v21 = v18;
  v22 = v17;
  v23 = *(a1 + 72);
  [v11 animateWithDuration:v30 animations:v20 completion:0.15];

  v19 = *MEMORY[0x277D85DE8];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v8;
        v23 = *(a1 + 80);
        [v7 setTransform:&v21];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v15;
        v23 = *(a1 + 80);
        [v14 setAffineTransform:{&v21, v17}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_4;
  v18[3] = &unk_279E65B08;
  v19 = *(a1 + 32);
  v21 = *(a1 + 72);
  v22 = *(a1 + 88);
  v23 = *(a1 + 104);
  v20 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_5;
  v8[3] = &unk_279E65BA8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 136);
  v12 = *(a1 + 120);
  v13 = v4;
  v14 = *(a1 + 152);
  v5 = *(a1 + 40);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v17 = *(a1 + 104);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v2 animateWithDuration:v18 animations:v8 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v8;
        v23 = *(a1 + 80);
        [v7 setTransform:&v21];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v15;
        v23 = *(a1 + 80);
        [v14 setAffineTransform:{&v21, v17}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_6;
  v16[3] = &unk_279E65B08;
  v17 = *(a1 + 32);
  v3 = *(a1 + 88);
  v19 = *(a1 + 72);
  v20 = v3;
  v21 = *(a1 + 104);
  v18 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_7;
  v9[3] = &unk_279E65B80;
  v4 = *(a1 + 32);
  v5 = *(a1 + 136);
  v13 = *(a1 + 120);
  v14 = v5;
  v15 = *(a1 + 152);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = *(a1 + 56);
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v2 animateWithDuration:v16 animations:v9 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_6(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v8;
        v23 = *(a1 + 80);
        [v7 setTransform:&v21];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v15;
        v23 = *(a1 + 80);
        [v14 setAffineTransform:{&v21, v17}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_8;
  v11[3] = &unk_279E65B08;
  v12 = *(a1 + 32);
  v3 = *(a1 + 88);
  v14 = *(a1 + 72);
  v15 = v3;
  v16 = *(a1 + 104);
  v13 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_9;
  v7[3] = &unk_279E65A20;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v2 animateWithDuration:v11 animations:v7 completion:0.15];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_8(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v8;
        v23 = *(a1 + 80);
        [v7 setTransform:&v21];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 64);
        v21 = *(a1 + 48);
        v22 = v15;
        v23 = *(a1 + 80);
        [v14 setAffineTransform:{&v21, v17}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_9(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v2 setFromValue:&unk_2882248D8];
  [v2 setToValue:&unk_2882248E8];
  [v2 setDuration:0.3];
  [v2 setFillMode:*MEMORY[0x277CDA238]];
  [v2 setRemovedOnCompletion:0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v3 = v2;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_320(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = +[WatchQuickActionsServices sharedInstance];
  [v2 hideInstructionalBanner];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) addAnimation:*(a1 + 40) forKey:@"fadeOutAnimation"];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  AXPerformBlockOnMainThreadAfterDelay();

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __80__WQAOverlayCoordinator__mainQueue_showHintsWithPrimaryQuickActions_completion___block_invoke_2_324(uint64_t a1)
{
  [*(a1 + 32) _mainQueue_cleanupHintViews];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_mainQueue_cleanupHintViews
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(WQAOverlayCoordinator *)self currentShapeLayersForHint];

  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(WQAOverlayCoordinator *)self currentShapeLayersForHint];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(WQAOverlayCoordinator *)self setCurrentShapeLayersForHint:0];
  }

  v9 = +[WatchQuickActionsServices sharedInstance];
  [v9 hideInstructionalBanner];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_mainQueue_backlightDidTurnOn
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = wqa_overlay_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272AAE000, v3, OS_LOG_TYPE_INFO, "backlight did turn on", buf, 2u);
  }

  if (_AXSWatchControlEnabled() && [(WQAOverlayCoordinator *)self inputSourcesRequireFocusRing]&& [(WQAOverlayCoordinator *)self hasNoActivationGesture])
  {
    v4 = wqa_overlay_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_272AAE000, v4, OS_LOG_TYPE_INFO, "activation gesture set to none, do not show overlays", v6, 2u);
    }
  }

  else
  {
    v4 = [(WQAOverlayCoordinator *)self dataSource];
    v5 = [v4 quickActionsForOverlayCoordinator:self];
    [(WQAOverlayCoordinator *)self _mainQueue_showUIForQuickActions:v5];
  }
}

- (void)_mainQueue_backlightDidTurnOff
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = wqa_overlay_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272AAE000, v3, OS_LOG_TYPE_INFO, "backlight did turn off", v4, 2u);
  }

  [(WQAOverlayCoordinator *)self _mainQueue_cleanupShapeLayers];
}

- (void)_mainQueue_cleanupShapeLayers
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = wqa_overlay_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "removing shape layers: %@", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(WQAOverlayCoordinator *)self _mainQueue_removeShapeLayer:*(*(&v27 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v12 = [(WQAOverlayCoordinator *)self quickActionShapeLayers];
    [v12 removeAllObjects];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [(WQAOverlayCoordinator *)self dataSource];
  v14 = [v13 quickActionsForOverlayCoordinator:self];

  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        v20 = [v19 animationHandler];
        v21 = v20;
        if (v20)
        {
          [v20 quickActionDidBecomeInactive:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  [(WQAOverlayCoordinator *)self _mainQueue_cleanupHintViews];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = wqa_overlay_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WQAOverlayCoordinator backlight:v8 didCompleteUpdateToState:v9 forEvent:?];
    }

    v10 = v8;
    if ([v10 previousState] >= 2)
    {
    }

    else
    {
      v11 = [v10 state] & 0xFFFFFFFFFFFFFFFELL;

      if (v11 == 2)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __69__WQAOverlayCoordinator_backlight_didCompleteUpdateToState_forEvent___block_invoke;
        v17[3] = &unk_279E65958;
        v17[4] = self;
        v12 = MEMORY[0x277D85CD0];
        v13 = v17;
LABEL_11:
        dispatch_async(v12, v13);
        goto LABEL_13;
      }
    }

    v14 = v10;
    if (([v14 previousState] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {

      goto LABEL_13;
    }

    v15 = [v14 state];

    if (v15 <= 1)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __69__WQAOverlayCoordinator_backlight_didCompleteUpdateToState_forEvent___block_invoke_2;
      v16[3] = &unk_279E65958;
      v16[4] = self;
      v12 = MEMORY[0x277D85CD0];
      v13 = v16;
      goto LABEL_11;
    }
  }

LABEL_13:
}

- (WQAOverlayDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (uint64_t)initWithDataSource:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [WQAOverlayCoordinator backlight:v0 didCompleteUpdateToState:? forEvent:?];
}

- (void)backlight:(void *)a1 didCompleteUpdateToState:(NSObject *)a2 forEvent:.cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "previousState")}];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "state")}];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_272AAE000, a2, OS_LOG_TYPE_DEBUG, "backlight did change from '%@' to '%@'", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end