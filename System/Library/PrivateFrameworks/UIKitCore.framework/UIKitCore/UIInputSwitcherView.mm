@interface UIInputSwitcherView
+ (BOOL)canShowKeyboardSettings;
+ (UIInputSwitcherView)sharedInstance;
- (BOOL)_isHandBiasSwitchVisible;
- (BOOL)didHitDockItemWithinTypingWindow;
- (BOOL)shouldSelectItemAtIndex:(unint64_t)a3;
- (BOOL)shouldShow;
- (BOOL)shouldShowSelectionExtraViewForIndexPath:(id)a3;
- (BOOL)usesDeviceLanguageForItemAtIndex:(unint64_t)a3;
- (CGSize)preferredSize;
- (UIInputSwitcherView)initWithFrame:(CGRect)a3;
- (id)_itemWithIdentifier:(id)a3;
- (id)buttonPressed:(id)a3 withEvent:(id)a4 location:(CGPoint)a5 isLocationInsideViewHitArea:(BOOL)a6 isForDictation:(BOOL)a7 tapAction:(id)a8;
- (id)defaultInputMode;
- (id)fontForItemAtIndex:(unint64_t)a3;
- (id)localizedTitleForItemAtIndex:(unint64_t)a3;
- (id)nextInputMode;
- (id)previousInputMode;
- (id)selectedInputMode;
- (id)subtitleFontForItemAtIndex:(unint64_t)a3;
- (id)subtitleForItemAtIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForItemAtIndex:(unint64_t)a3;
- (int64_t)_indexOfFastSwitchToggleModeForIdentifier:(id)a3;
- (int64_t)_indexOfInputSwitcherItemWithIdentifier:(id)a3;
- (unint64_t)defaultSelectedIndex;
- (unint64_t)numberOfItems;
- (void)_reloadInputSwitcherItems;
- (void)_segmentControlValueDidChange:(id)a3;
- (void)customizeCell:(id)a3 forItemAtIndex:(unint64_t)a4;
- (void)didFinishSplitTransition;
- (void)didSelectItemAtIndex:(unint64_t)a3;
- (void)didShow;
- (void)fadeWithDelay:(double)a3;
- (void)reloadInputModes;
- (void)removeFromSuperview;
- (void)reportHandBiasToAnalytics:(int64_t)a3;
- (void)returnToKeyboardIfNeeded;
- (void)selectInputMode:(id)a3;
- (void)selectNextInputMode;
- (void)selectPreviousInputMode;
- (void)selectRowForInputMode:(id)a3;
- (void)setInputMode:(id)a3;
- (void)setIsForDictation:(BOOL)a3;
- (void)showAsPopupForKey:(id)a3 inLayout:(id)a4;
- (void)toggleKeyboardFloatingPreference;
- (void)updateSelectionWithPoint:(CGPoint)a3;
- (void)willFadeForSelectionAtIndex:(unint64_t)a3;
@end

@implementation UIInputSwitcherView

- (UIInputSwitcherView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = UIInputSwitcherView;
  v3 = [(UIKeyboardMenuView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    m_inputModes = v3->m_inputModes;
    v3->m_inputModes = v4;

    m_table = v3->super.m_table;
    v7 = objc_opt_class();
    v8 = +[(UIInputSwitcherTableCell *)UIInputSwitcherSegmentedTableCell];
    [(UITableView *)m_table registerClass:v7 forCellReuseIdentifier:v8];

    [(UIInputSwitcherView *)v3 setShowsSwitches:1];
    v9 = v3;
  }

  return v3;
}

+ (UIInputSwitcherView)sharedInstance
{
  v2 = gSharedInputSwitcher;
  if (!gSharedInputSwitcher)
  {
    v3 = [UIInputSwitcherView alloc];
    v4 = [(UIInputSwitcherView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = gSharedInputSwitcher;
    gSharedInputSwitcher = v4;

    v2 = gSharedInputSwitcher;
  }

  return v2;
}

- (void)setIsForDictation:(BOOL)a3
{
  self->_isForDictation = a3;
  if (a3)
  {

    [(UIKeyboardMenuView *)self setGlomojiAnalyticsInstance:0];
  }

  else
  {
    v4 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];

    if (!v4)
    {
      v5 = objc_alloc_init(UIGlomojiAnalyticsDispatcher);
      [(UIKeyboardMenuView *)self setGlomojiAnalyticsInstance:v5];
    }
  }
}

- (void)didFinishSplitTransition
{
  v3 = [(UIInputSwitcherView *)self finishSplitTransitionBlock];

  if (v3)
  {
    v4 = [(UIInputSwitcherView *)self finishSplitTransitionBlock];
    v4[2]();

    [(UIInputSwitcherView *)self setFinishSplitTransitionBlock:0];
  }
}

- (void)reloadInputModes
{
  v2 = self;
  v33 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->m_inputModes removeAllObjects];
  v3 = off_1E70EA000;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 _clearAllExtensionsIfNeeded];

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 isMinimized];

  if ([(UIInputSwitcherView *)v2 isForDictation])
  {
    m_inputModes = v2->m_inputModes;
    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    v9 = [v8 enabledDictationLanguages];
    [(NSMutableArray *)m_inputModes addObjectsFromArray:v9];

LABEL_19:
    goto LABEL_20;
  }

  if (!v6)
  {
    v25 = v2->m_inputModes;
    v8 = UIKeyboardActiveInputModes;
    [(NSMutableArray *)v25 addObjectsFromArray:v8];
    goto LABEL_19;
  }

  v26 = v2;
  v10 = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v12 = [v11 inputViews];
  v13 = [v12 isCustomInputView];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = v3;
        v20 = [(__objc2_class *)v3[13] sharedInputModeController];
        v21 = [v20 inputModeWithIdentifier:v18];

        if (!v13 || ([v21 hardwareLayout], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
        {
          if (([v18 hasPrefix:@"emoji"] & 1) == 0 && !objc_msgSend(v18, "containsString:", @"HWR") || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEmojiPopoverPresented"), v23, (v24 & 1) == 0))
          {
            [(NSMutableArray *)v26->m_inputModes addObject:v18];
          }
        }

        v3 = v19;
      }

      v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v2 = v26;
LABEL_20:
  [(NSMutableArray *)v2->m_inputModes removeObject:@"autofillsignup"];
}

+ (BOOL)canShowKeyboardSettings
{
  v2 = +[UIKeyboard keyboardBundleIdentifier];
  if ([v2 isEqualToString:@"com.apple.Preferences"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.purplebuddy"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"com.apple.CheckerBoard"] ^ 1;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 deviceStateIsLocked];

  return v3 & (v5 ^ 1);
}

- (void)_reloadInputSwitcherItems
{
  v75 = *MEMORY[0x1E69E9840];
  if (self->super.m_mode)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(UIKeyboardMenuView *)self inputView];
    v3 = v4 == 0;
  }

  v66 = [MEMORY[0x1E695DF70] array];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 deviceStateIsLocked];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v8 = [v7 currentInputMode];
  v9 = [v8 isExtensionInputMode];

  if ([objc_opt_class() canShowKeyboardSettings] && !v3 && -[UIInputSwitcherView _canAddLaunchItem](self, "_canAddLaunchItem"))
  {
    if ([(UIInputSwitcherView *)self isForDictation])
    {
      v10 = [UIInputSwitcherItem switcherItemWithIdentifier:@"launchdictationsettings"];
      v11 = @"Dictation Settings…";
    }

    else
    {
      v10 = [UIInputSwitcherItem switcherItemWithIdentifier:@"launchkeyboardsettings"];
      v11 = @"Keyboard Settings…";
    }

    v12 = _UILocalizedStringInSystemLanguage(v11, v11);
    [v10 setLocalizedTitle:v12];

    [v10 setUsesDeviceLanguage:1];
    [(NSArray *)v66 addObject:v10];
  }

  [(UIInputSwitcherView *)self reloadInputModes];
  v60 = v3;
  v61 = v9;
  v59 = v6;
  if (_os_feature_enabled_impl())
  {
    v62 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v62 = 0;
  }

  v64 = UICurrentKeyboardSupportsMultilingual();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = self->m_inputModes;
  v68 = [(NSMutableArray *)obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v68)
  {
    v67 = *v70;
    v63 = *MEMORY[0x1E695D9B0];
    do
    {
      v13 = 0;
      do
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v69 + 1) + 8 * v13);
        if (!_os_feature_enabled_impl())
        {
          v15 = 0;
LABEL_25:
          v16 = v14;
LABEL_26:
          v17 = [UIInputSwitcherItem switcherItemWithIdentifier:v16];
          v18 = [(UIInputSwitcherView *)self isForDictation];
          v19 = +[UIKeyboardInputModeController sharedInputModeController];
          v20 = v19;
          if (v18)
          {
            v21 = [v19 keyboardLanguageForDictationLanguage:v14];
            v22 = v21;
            if (v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = v14;
            }

            v24 = v23;

            v25 = +[UIKeyboardInputModeController sharedInputModeController];
            v26 = [v25 inputModeWithIdentifier:v24];

            v27 = UIKeyboardLocalizedDictationDisplayName(v14);
          }

          else
          {
            v26 = [v19 inputModeWithIdentifier:v16];

            if (_os_feature_enabled_impl() && [v15 count] >= 2)
            {
              if (v64)
              {
                [v26 displayName];
              }

              else
              {
                [v26 monolingualDisplayName];
              }
              v28 = ;
            }

            else
            {
              v28 = [v26 extendedDisplayName];
            }

            v27 = v28;
          }

          [v17 setLocalizedTitle:v27];

          if (UIKeyboardRequiresFontFallbacksForInputMode())
          {
            v29 = [(UIKeyboardMenuView *)self font];
            v30 = [(UIKeyboardMenuView *)self font];
            [v30 pointSize];
            [v17 setTitleFont:{UIKBCTFontForInputMode(v16, v29, v31)}];

            v32 = [(UIKeyboardMenuView *)self subtitleFont];
            v33 = [(UIKeyboardMenuView *)self subtitleFont];
            [v33 pointSize];
            [v17 setSubtitleFont:{UIKBCTFontForInputMode(v16, v32, v34)}];
          }

          if ([v26 isExtensionInputMode])
          {
            v35 = [v26 primaryLanguage];
            v36 = [v35 length];

            if (v36)
            {
              v37 = [MEMORY[0x1E695DF58] preferredLocale];
              v38 = [v26 primaryLanguage];
              v39 = [v37 displayNameForKey:v63 value:v38];
              [v17 setLocalizedSubtitle:v39];

              goto LABEL_45;
            }
          }

          else
          {
            v40 = [(UIInputSwitcherView *)self inputModes];
            v41 = UIKeyboardInputModesMatchingMode(v16, v40);
            v42 = [v41 count];

            if (v42 >= 2)
            {
              v37 = UIKeyboardLocalizedSWLayoutName(v16);
              [v17 setLocalizedSubtitle:v37];
LABEL_45:
            }
          }

          [(NSArray *)v66 addObject:v17];

          goto LABEL_47;
        }

        if (TIInputModeIsMultilingualOnly())
        {
          goto LABEL_48;
        }

        v15 = TIInputModeGetMultilingualSet();
        if ((([v15 count] > 1) & v64) != 1)
        {
          goto LABEL_25;
        }

        v16 = [v15 firstObject];

        v17 = TIInputModeGetMultilingualID();
        if (([v62 containsObject:v17] & 1) == 0)
        {
          [v62 addObject:v17];

          goto LABEL_26;
        }

LABEL_47:

        v14 = v16;
LABEL_48:

        ++v13;
      }

      while (v68 != v13);
      v43 = [(NSMutableArray *)obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      v68 = v43;
    }

    while (v43);
  }

  if ([(UIInputSwitcherView *)self isForDictation]&& os_variant_has_internal_diagnostics())
  {
    v53 = [UIInputSwitcherItem switcherItemWithIdentifier:@"launchdictationfeedback"];
    v54 = _UILocalizedStringInSystemLanguage(@"Dictation Feedback", @"Dictation Feedback");
    [v53 setLocalizedTitle:v54];

    [v53 setUsesDeviceLanguage:1];
    [(NSArray *)v66 addObject:v53];
  }

  if ((([(UIInputSwitcherView *)self isForDictation]| v59 | v60) & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v55 = TIGetTypoTrackerButtonValue();
      v56 = [v55 BOOLValue];

      if (v56)
      {
        v57 = [UIInputSwitcherItem switcherItemWithIdentifier:@"reporttotypotracker"];
        v58 = _UILocalizedStringInSystemLanguage(@"Keyboard Feedback…", @"Keyboard Feedback…");
        [v57 setLocalizedTitle:v58];

        [v57 setUsesDeviceLanguage:1];
        [(NSArray *)v66 addObject:v57];
      }
    }
  }

  if ((([(UIInputSwitcherView *)self isForDictation]| v61) & 1) == 0)
  {
    if ([(UIInputSwitcherView *)self _isHandBiasSwitchVisible])
    {
      v44 = +[UIKeyboardImpl activeInstance];
      v45 = [v44 isTrackpadMode];

      if ((v45 & 1) == 0)
      {
        v46 = [UIInputSwitcherItem switcherItemWithIdentifier:@"handbiasswitch"];
        [v46 setLocalizedTitle:&stru_1EFB14550];
        v47 = [UIImageSymbolConfiguration configurationWithPointSize:26.0];
        v48 = [UIImage systemImageNamed:@"keyboard.onehanded.left" withConfiguration:v47];
        v73[0] = v48;
        v49 = [UIImage systemImageNamed:@"keyboard" withConfiguration:v47];
        v73[1] = v49;
        v50 = [UIImage systemImageNamed:@"keyboard.onehanded.right" withConfiguration:v47];
        v73[2] = v50;
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
        [v46 setSegmentImages:v51];

        [v46 setPersistentSelectedIndex:&__block_literal_global_342];
        [(NSArray *)v66 addObject:v46];
      }
    }
  }

  m_inputSwitcherItems = self->m_inputSwitcherItems;
  self->m_inputSwitcherItems = v66;
}

uint64_t __48__UIInputSwitcherView__reloadInputSwitcherItems__block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  v1 = [v0 _layout];
  v2 = [v1 currentHandBias];
  for (i = 0; i != 3; ++i)
  {
    if (__handBiasOrdering[i] == v2)
    {
      break;
    }
  }

  return i;
}

- (void)toggleKeyboardFloatingPreference
{
  +[UIKeyboardImpl isFloating];
  v3 = objc_opt_new();
  [v3 actionForMenu:self];
}

- (id)selectedInputMode
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UIInputSwitcherView *)self defaultSelectedIndex];
  v4 = [(UITableView *)self->super.m_table indexPathForSelectedRow];
  v5 = v4;
  if (v4)
  {
    v3 = [v4 row];
  }

  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v3 = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
  }

  if (v3 >= [(NSArray *)self->m_inputSwitcherItems count])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        m_inputSwitcherItems = self->m_inputSwitcherItems;
        v13 = 134218242;
        v14 = v3;
        v15 = 2112;
        v16 = m_inputSwitcherItems;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Attempted to select an out-of-bounds index path (%lu) in %@", &v13, 0x16u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &selectedInputMode___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = self->m_inputSwitcherItems;
        v13 = 134218242;
        v14 = v3;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Attempted to select an out-of-bounds index path (%lu) in %@", &v13, 0x16u);
      }
    }

    v7 = [(UIInputSwitcherView *)self defaultInputMode];
  }

  else
  {
    v6 = [(NSArray *)self->m_inputSwitcherItems objectAtIndex:v3];
    v7 = [v6 identifier];
  }

  return v7;
}

- (BOOL)shouldShowSelectionExtraViewForIndexPath:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIInputSwitcherView;
  if ([(UIKeyboardMenuView *)&v8 shouldShowSelectionExtraViewForIndexPath:v4])
  {
    v5 = -[NSArray objectAtIndex:](self->m_inputSwitcherItems, "objectAtIndex:", [v4 row]);
    v6 = [v5 isSegmentedItem] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int64_t)_indexOfInputSwitcherItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = UICurrentKeyboardSupportsMultilingual();
  v6 = 0;
  if (_os_feature_enabled_impl())
  {
    if (v5)
    {
      v6 = TIInputModeGetMultilingualSet();
      if ([v6 count] >= 2)
      {
        v7 = [v6 firstObject];

        v4 = v7;
      }
    }
  }

  for (i = 0; i < [(NSArray *)self->m_inputSwitcherItems count]; ++i)
  {
    v9 = [(NSArray *)self->m_inputSwitcherItems objectAtIndex:i];
    v10 = [v9 identifier];
    v11 = [v10 isEqualToString:v4];

    if (v11)
    {
      break;
    }
  }

  return i;
}

- (int64_t)_indexOfFastSwitchToggleModeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 currentLinguisticInputMode];

  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    v10 = [v9 inputModeForASCIIToggleWithTraits:0];

    v6 = v10;
  }

  v11 = [v6 identifier];
  v12 = [(UIInputSwitcherView *)self _indexOfInputSwitcherItemWithIdentifier:v11];

  return v12;
}

- (void)selectRowForInputMode:(id)a3
{
  v5 = a3;
  v4 = [(UIInputSwitcherView *)self _indexOfInputSwitcherItemWithIdentifier:?];
  if (![(UIKeyboardMenuView *)self mode])
  {
    [(UIKeyboardMenuView *)self setIndexForSelectedFastSwitchMode:v4];
  }

  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    [(UIKeyboardMenuView *)self setIndexForUnselectedFastSwitchMode:[(UIInputSwitcherView *)self _indexOfFastSwitchToggleModeForIdentifier:v5]];
  }

  [(UIKeyboardMenuView *)self highlightRow:v4];
}

- (void)removeFromSuperview
{
  [(UIInputSwitcherView *)self setIsForDictation:0];
  v3.receiver = self;
  v3.super_class = UIInputSwitcherView;
  [(UIKeyboardMenuView *)&v3 removeFromSuperview];
}

- (void)fadeWithDelay:(double)a3
{
  v4.receiver = self;
  v4.super_class = UIInputSwitcherView;
  [(UIKeyboardMenuView *)&v4 fadeWithDelay:a3];
  [(UIInputSwitcherView *)self returnToKeyboardIfNeeded];
}

- (void)returnToKeyboardIfNeeded
{
  if ([(UIInputSwitcherView *)self isForDictation])
  {
    v2 = +[UIDictationView sharedInstance];
    [v2 setSwitchingLanguage:0];

    v3 = +[UIDictationView sharedInstance];
    [v3 returnToKeyboard];
  }
}

- (void)setInputMode:(id)a3
{
  v18 = a3;
  if ([(UIInputSwitcherView *)self isForDictation])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    if ([v4 isUsingDictationLayout])
    {
      v5 = @"UIDictationInputModeInvocationSourceGlobalButtonOnDictationPlane";
    }

    else
    {
      v5 = @"UIDictationInputModeInvocationSourceMicButtonOnKeyboardWithInputSwitcher";
    }

    v6 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:v5];

    v7 = +[UIDictationController sharedInstance];
    [v7 switchToDictationLanguage:v18 inputOptions:v6];

    v8 = +[UIDictationView sharedInstance];
    [v8 setSwitchingLanguage:0];
  }

  else
  {
    v9 = [(UIKeyboardMenuView *)self layout];
    v10 = [(UIKeyboardMenuView *)self referenceKey];
    [v9 setState:2 forKey:v10];

    v6 = +[UIKeyboardImpl activeInstance];
    [v6 setInputMode:v18 userInitiated:1];
    v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v12 = [v11 preferencesActions];
    v8 = [v12 inputModeSelectionSequence];

    if ([v8 count] && (TIInputModeGetNormalizedIdentifier(), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(@"emoji", "isEqualToString:", v13), v13, v14))
    {
      v15 = +[UIKeyboardInputModeController sharedInputModeController];
      v16 = +[UIKeyboardInputModeController sharedInputModeController];
      v17 = [v16 currentInputMode];
      [v15 updateLastUsedInputMode:v17];
    }

    else
    {
      v15 = +[UIKeyboardInputModeController sharedInputModeController];
      [v15 clearNextInputModeToUse];
    }
  }
}

- (void)selectInputMode:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardMenuView *)self isVisible])
  {
    [(UIInputSwitcherView *)self selectRowForInputMode:v4];
  }
}

- (void)_segmentControlValueDidChange:(id)a3
{
  v8 = a3;
  v4 = [v8 superview];
  v5 = [(UITableView *)self->super.m_table indexPathForCell:v4];
  v6 = v5;
  if (v5)
  {
    v7 = -[NSArray objectAtIndex:](self->m_inputSwitcherItems, "objectAtIndex:", [v5 row]);
    [v7 setSelectedSegmentIndex:{objc_msgSend(v8, "selectedSegmentIndex")}];
  }
}

- (void)updateSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = UIInputSwitcherView;
  [(UIKeyboardMenuView *)&v15 updateSelectionWithPoint:?];
  [(UIView *)self convertPoint:self->super.m_table toView:x, y];
  v6 = [(UIKeyboardMenuView *)self indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:?];
  v7 = v6;
  if (v6)
  {
    v8 = -[NSArray objectAtIndex:](self->m_inputSwitcherItems, "objectAtIndex:", [v6 row]);
    v9 = [(UITableView *)self->super.m_table cellForRowAtIndexPath:v7];
    if (v9)
    {
      [(UIView *)self convertPoint:v9 toView:x, y];
      [v9 updateSelectionWithPoint:?];
    }
  }

  else
  {
    v8 = 0;
  }

  m_inputSwitcherItems = self->m_inputSwitcherItems;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__UIInputSwitcherView_updateSelectionWithPoint___block_invoke;
  v12[3] = &unk_1E710E440;
  v13 = v8;
  v14 = self;
  v11 = v8;
  [(NSArray *)m_inputSwitcherItems enumerateObjectsUsingBlock:v12];
}

void __48__UIInputSwitcherView_updateSelectionWithPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [v15 switchControl];

  if (v5)
  {
    v6 = *(a1 + 32) == v15;
    v7 = [v15 switchControl];
    v8 = [v15 switchIsOnBlock];
    [v7 setOn:v6 ^ v8[2]() animated:1];
  }

  if ([v15 isSegmentedItem] && *(a1 + 32) != v15)
  {
    v9 = [v15 persistentSelectedIndex];
    [v15 setSelectedSegmentIndex:v9[2]()];

    v10 = *(*(a1 + 40) + 408);
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
    v12 = [v10 cellForRowAtIndexPath:v11];

    v13 = [v15 selectedSegmentIndex];
    v14 = [v12 segmentControl];
    [v14 setSelectedSegmentIndex:v13];
  }
}

- (BOOL)shouldSelectItemAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->m_inputSwitcherItems objectAtIndex:a3];
  v4 = [v3 switchControl];
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v3 isSegmentedItem] ^ 1;
  }

  return v5;
}

- (void)didSelectItemAtIndex:(unint64_t)a3
{
  v11 = [(NSArray *)self->m_inputSwitcherItems objectAtIndex:?];
  if ([(UIInputSwitcherView *)self defaultSelectedIndex]== a3 && ![(UIInputSwitcherView *)self isForDictation])
  {
    goto LABEL_17;
  }

  v5 = [v11 identifier];
  if ([(NSMutableArray *)self->m_inputModes containsObject:v5])
  {
    [(UIInputSwitcherView *)self setInputMode:v5];
    v6 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    [v6 setUpdatedInputMode:v5];

    v7 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    v8 = v7;
    v9 = 2;
LABEL_14:
    [v7 setKBMenuSelectedAction:v9];
    goto LABEL_15;
  }

  if (v5 == @"reporttotypotracker")
  {
    v10 = +[UIKeyboardImpl activeInstance];
    [v10 createTypoTrackerReport];

    v7 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    v8 = v7;
    v9 = 3;
    goto LABEL_14;
  }

  if (v5 == @"launchkeyboardsettings")
  {
    [MEMORY[0x1E69D9560] launchKeyboardSettings];
    v7 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    v8 = v7;
    v9 = 1;
    goto LABEL_14;
  }

  if (v5 == @"launchdictationsettings")
  {
    [MEMORY[0x1E69D9560] launchDictationSettings];
    goto LABEL_16;
  }

  if (v5 == @"dismiss")
  {
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 dismissKeyboard];
  }

  else
  {
    if (v5 != @"launchdictationfeedback" || !os_variant_has_internal_diagnostics())
    {
      goto LABEL_16;
    }

    v8 = +[UIDictationController activeInstance];
    [v8 launchDictationFeedbackApp];
  }

LABEL_15:

LABEL_16:
LABEL_17:
  if ([(UIKeyboardMenuView *)self launchedFromKeyboard])
  {
    [(UIInputSwitcherView *)self willFadeForSelectionAtIndex:a3];
    [(UIKeyboardMenuView *)self hide];
  }

  else
  {
    [(UIKeyboardMenuView *)self fadeWithDelay:a3 forSelectionAtIndex:0.1];
  }

  [(UIInputSwitcherView *)self setIsForDictation:0];
}

- (id)nextInputMode
{
  m_inputModes = self->m_inputModes;
  if ([(UIKeyboardMenuView *)self isVisible])
  {
    [(UIInputSwitcherView *)self selectedInputMode];
  }

  else
  {
    [(UIInputSwitcherView *)self defaultInputMode];
  }
  v4 = ;
  v5 = [(NSMutableArray *)m_inputModes indexOfObject:v4];

  v6 = (v5 + 1) % [(NSMutableArray *)self->m_inputModes count];
  v7 = self->m_inputModes;

  return [(NSMutableArray *)v7 objectAtIndex:v6];
}

- (void)selectNextInputMode
{
  v3 = [(UIInputSwitcherView *)self nextInputMode];
  [(UIInputSwitcherView *)self setInputMode:v3];
  [(UIInputSwitcherView *)self selectRowForInputMode:v3];
}

- (id)previousInputMode
{
  m_inputModes = self->m_inputModes;
  if ([(UIKeyboardMenuView *)self isVisible])
  {
    [(UIInputSwitcherView *)self selectedInputMode];
  }

  else
  {
    [(UIInputSwitcherView *)self defaultInputMode];
  }
  v4 = ;
  v5 = [(NSMutableArray *)m_inputModes indexOfObject:v4];

  if (v5 <= 0)
  {
    v6 = [(UIInputSwitcherView *)self inputModes];
    v5 = [v6 count];
  }

  v7 = [(UIInputSwitcherView *)self inputModes];
  v8 = [v7 objectAtIndex:v5 - 1];

  return v8;
}

- (void)selectPreviousInputMode
{
  v3 = [(UIInputSwitcherView *)self previousInputMode];
  [(UIInputSwitcherView *)self setInputMode:v3];
  [(UIInputSwitcherView *)self selectRowForInputMode:v3];
}

- (void)showAsPopupForKey:(id)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UIInputSwitcherView *)self setShowsSwitches:1];
  -[UIInputSwitcherView setIsForDictation:](self, "setIsForDictation:", [v7 interactionType] == 5);
  [(UIKeyboardMenuView *)self setShowingCapsLockSwitcher:0];
  v8.receiver = self;
  v8.super_class = UIInputSwitcherView;
  [(UIKeyboardMenuView *)&v8 showAsPopupForKey:v7 inLayout:v6];
}

- (BOOL)shouldShow
{
  [(UIInputSwitcherView *)self _reloadInputSwitcherItems];
  if (+[UIKeyboard isShowingEmojiSearch]|| [(UIInputSwitcherView *)self isForDictation])
  {
    return 1;
  }

  v4 = [(UIInputSwitcherView *)self inputModes];
  v3 = [v4 count] > 1;

  return v3;
}

- (void)didShow
{
  if ([(UIInputSwitcherView *)self isForDictation])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v8 = [v3 activeDictationLanguage];

    v4 = v8;
  }

  else
  {
    v4 = UIKeyboardGetCurrentInputMode();
  }

  v9 = v4;
  if (([(NSMutableArray *)self->m_inputModes containsObject:v4]& 1) == 0)
  {
    v5 = [(NSMutableArray *)self->m_inputModes firstObject];

    v9 = v5;
  }

  if (!-[UIInputSwitcherView isForDictation](self, "isForDictation") || (+[UIDictationController sharedInstance](UIDictationController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 smartLanguageSelectionOverridden], v6, v7))
  {
    [(UIInputSwitcherView *)self selectRowForInputMode:v9];
  }
}

- (void)willFadeForSelectionAtIndex:(unint64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = 672;
  v4 = self->m_inputSwitcherItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [v9 switchControl];

        if (v10)
        {
          v11 = [v9 switchIsOnBlock];
          v12 = v11[2]();
          v13 = [v9 switchControl];
          v14 = [v13 isOn];

          if (v12 != v14)
          {
            v15 = [v9 switchToggleBlock];
            v16 = [v9 switchControl];
            v15[2](v15, [v16 isOn]);
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v6);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = [*(&self->super.super.super.super.isa + v33) objectAtIndex:?];
  }

  v18 = [(UIInputSwitcherView *)self _itemWithIdentifier:@"handbiasswitch", v33];
  v19 = v18;
  if (v18 && v17 == v18)
  {
    v20 = [v18 selectedSegmentIndex];
    if (v20 <= 3)
    {
      v21 = __handBiasOrdering[v20];
    }

    else
    {
      v21 = 0;
    }

    [(UIInputSwitcherView *)self reportHandBiasToAnalytics:v21];
    v22 = +[UIKeyboardImpl activeInstance];
    v23 = [v22 _layout];
    v24 = [v23 currentHandBias];

    if (v21 != v24)
    {
      v25 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v26 = [v25 preferencesActions];
      [v26 setHandBias:v21];

      v27 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v28 = [v27 preferencesActions];
      [v28 performedFirstReachableKeyboardInteraction];

      v29 = +[UIKeyboardImpl activeInstance];
      v30 = [v29 _layout];
      [v30 setKeyboardBias:v21];

      v31 = +[UIKeyboardImpl activeInstance];
      [v31 updateForHandBiasChange];
    }
  }

  m_gestureState = self->m_gestureState;
  self->m_gestureState = 0;
}

- (void)reportHandBiasToAnalytics:(int64_t)a3
{
  if (a3 <= 2)
  {
    v4 = qword_18A67E858[a3];
    v5 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    [v5 setKBMenuSelectedAction:v4];
  }
}

- (unint64_t)numberOfItems
{
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    return 2;
  }

  m_inputSwitcherItems = self->m_inputSwitcherItems;

  return [(NSArray *)m_inputSwitcherItems count];
}

- (CGSize)preferredSize
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v3 = [(UIView *)self _inheritedRenderConfig];
  if ([v3 colorAdaptiveBackground])
  {
    v4 = 26.0;
  }

  else
  {
    v4 = 24.0;
  }

  *&v22[3] = v4;
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 isMinimized];

  m_inputSwitcherItems = self->m_inputSwitcherItems;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__UIInputSwitcherView_preferredSize__block_invoke;
  v20[3] = &unk_1E710E468;
  v20[4] = self;
  v20[5] = v22;
  v20[6] = &v23;
  v21 = v6;
  [(NSArray *)m_inputSwitcherItems enumerateObjectsUsingBlock:v20];
  if (self->super.m_mode)
  {
    v8 = +[UIKeyboardImpl keyboardScreen];
    [v8 bounds];
    v10 = v9 + -50.0;

    v11 = v24[3];
    if (v11 < self->super.m_referenceRect.size.width + 40.0)
    {
      v11 = self->super.m_referenceRect.size.width + 40.0;
    }

    if (v10 < v11)
    {
      v11 = v10;
    }

    v24[3] = v11;
    v12 = self->super.m_referenceRect.size.height + 50.0;
  }

  else
  {
    v12 = 50.0;
  }

  if ([(UIKeyboardMenuView *)self usesTable])
  {
    v12 = self->super.m_visibleRows * 50.0;
  }

  v13 = [(UIInputSwitcherView *)self _itemWithIdentifier:@"handbiasswitch"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 segmentImages];
    +[UIInputSwitcherSegmentedTableCell preferredSizeWithSegmentCount:](UIInputSwitcherSegmentedTableCell, "preferredSizeWithSegmentCount:", [v15 count]);
    v17 = v16;

    if (v17 < v24[3])
    {
      v17 = v24[3];
    }

    v24[3] = v17;
    v12 = v12 + 4.0;
  }

  else
  {
    v17 = v24[3];
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v23, 8);
  v18 = v17;
  v19 = v12;
  result.height = v19;
  result.width = v18;
  return result;
}

void __36__UIInputSwitcherView_preferredSize__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v5 = [v31 titleFont];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [*(a1 + 32) font];
  }

  v8 = v7;

  v9 = [v31 subtitleFont];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [*(a1 + 32) subtitleFont];
  }

  v12 = v11;

  v13 = [v31 localizedTitle];
  [v13 _legacy_sizeWithFont:v8];
  v15 = v14 + *(*(*(a1 + 40) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24);
  v16 = [v31 switchControl];

  if (v16)
  {
    v17 = [v31 switchControl];
    [v17 frame];
    v15 = v15 + v18;
  }

  v19 = [v31 identifier];
  v20 = *(*(a1 + 48) + 8);
  if (*(v20 + 24) < v15)
  {
    *(v20 + 24) = v15;
  }

  v21 = +[UIKeyboardInputModeController sharedInputModeController];
  v22 = [v21 identifierIsValidSystemInputMode:v19];

  if (v22)
  {
    v23 = [*(a1 + 32) inputModes];
    v24 = UIKeyboardInputModesMatchingMode(v19, v23);
    v25 = [v24 count] > 1;
  }

  else
  {
    v25 = 0;
  }

  if (*(a1 + 56) & 1) == 0 && ((v22 ^ 1 | v25))
  {
    v26 = [*(a1 + 32) subtitleForItemAtIndex:a3];
    if ([v26 length])
    {
      [v26 _legacy_sizeWithFont:v12];
      v27 = *(*(*(a1 + 40) + 8) + 24);
      v29 = v28 + v27 + v27;
      v30 = *(*(a1 + 48) + 8);
      if (*(v30 + 24) < v29)
      {
        *(v30 + 24) = v29;
      }
    }
  }
}

- (id)_itemWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->m_inputSwitcherItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 identifier];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)defaultInputMode
{
  if ([(UIInputSwitcherView *)self isForDictation])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    if ([v3 isUsingDictationLayout])
    {
      v4 = +[UIDictationController sharedInstance];
      [v4 currentInputModeForDictation];
    }

    else
    {
      v4 = +[UIKeyboardInputModeController sharedInputModeController];
      [v4 currentInputMode];
    }
    v6 = ;
    v5 = [v6 dictationLanguage];
  }

  else
  {
    v5 = UIKeyboardGetCurrentInputMode();
  }

  if (([(NSMutableArray *)self->m_inputModes containsObject:v5]& 1) == 0)
  {
    v7 = [(NSMutableArray *)self->m_inputModes firstObject];

    v5 = v7;
  }

  return v5;
}

- (unint64_t)defaultSelectedIndex
{
  if ([(UIInputSwitcherView *)self isForDictation])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(UIInputSwitcherView *)self defaultInputMode];
  v5 = [(UIInputSwitcherView *)self _indexOfInputSwitcherItemWithIdentifier:v4];

  return v5;
}

- (id)titleForItemAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->m_inputSwitcherItems objectAtIndexedSubscript:a3];
  v4 = [v3 localizedTitle];

  return v4;
}

- (id)localizedTitleForItemAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->m_inputSwitcherItems objectAtIndexedSubscript:a3];
  v4 = [v3 localizedTitle];

  return v4;
}

- (id)fontForItemAtIndex:(unint64_t)a3
{
  v4 = [(NSArray *)self->m_inputSwitcherItems objectAtIndexedSubscript:a3];
  v5 = [v4 titleFont];

  if (!v5)
  {
    v5 = [(UIKeyboardMenuView *)self font];
  }

  return v5;
}

- (id)subtitleForItemAtIndex:(unint64_t)a3
{
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 isMinimized];

  if (v6)
  {
    v7 = &stru_1EFB14550;
  }

  else
  {
    v8 = [(NSArray *)self->m_inputSwitcherItems objectAtIndexedSubscript:a3];
    v7 = [v8 localizedSubtitle];
  }

  return v7;
}

- (id)subtitleFontForItemAtIndex:(unint64_t)a3
{
  v4 = [(NSArray *)self->m_inputSwitcherItems objectAtIndexedSubscript:a3];
  v5 = [v4 subtitleFont];

  if (!v5)
  {
    v5 = [(UIKeyboardMenuView *)self subtitleFont];
  }

  return v5;
}

- (BOOL)usesDeviceLanguageForItemAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->m_inputSwitcherItems objectAtIndexedSubscript:a3];
  v4 = [v3 usesDeviceLanguage];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIInputSwitcherTableCell reuseIdentifier];
  v9 = -[NSArray objectAtIndex:](self->m_inputSwitcherItems, "objectAtIndex:", [v7 row]);
  if ([v9 isSegmentedItem])
  {
    v10 = +[(UIInputSwitcherTableCell *)UIInputSwitcherSegmentedTableCell];

    v8 = v10;
  }

  v11 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v7];
  -[UIInputSwitcherView customizeCell:forItemAtIndex:](self, "customizeCell:forItemAtIndex:", v11, [v7 row]);

  return v11;
}

- (void)customizeCell:(id)a3 forItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v36.receiver = self;
  v36.super_class = UIInputSwitcherView;
  [(UIKeyboardMenuView *)&v36 customizeCell:v6 forItemAtIndex:a4];
  v7 = a4;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v8 = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
    v9 = [(UIKeyboardMenuView *)self indexForUnselectedFastSwitchMode];
    if (a4 == 1)
    {
      if (v8 >= v9)
      {
LABEL_5:
        v10 = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
LABEL_8:
        v7 = v10;
        goto LABEL_9;
      }
    }

    else
    {
      v7 = a4;
      if (a4)
      {
        goto LABEL_9;
      }

      if (v8 < v9)
      {
        goto LABEL_5;
      }
    }

    v10 = [(UIKeyboardMenuView *)self indexForUnselectedFastSwitchMode];
    goto LABEL_8;
  }

LABEL_9:
  [v6 setInteractiveInsets:{0.0, 0.0, 0.0, 0.0}];
  v11 = [(NSArray *)self->m_inputSwitcherItems objectAtIndex:v7];
  v12 = [v11 switchControl];

  if (v12)
  {
    v12 = [v11 switchControl];
    v13 = [v11 switchIsOnBlock];
    v14 = v13[2]();
    v15 = [v11 switchControl];
    [v15 setOn:v14];

    v16 = [v6 textLabel];
    [v16 setTextAlignment:0];
  }

  if ([v11 isSegmentedItem])
  {
    v17 = v6;
    v18 = [v11 segmentImages];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [v11 segmentImages];
      v21 = [v17 segmentControl];
      [v21 setSegmentImages:v20];
    }

    v22 = [v11 segmentTitles];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [v11 segmentTitles];
      v25 = [v17 segmentControl];
      [v25 setSegmentTitles:v24];
    }

    v26 = +[UIKeyboardImpl activeInstance];
    v27 = [v26 _layout];
    v28 = [v27 currentHandBias];

    for (i = 0; i != 3; ++i)
    {
      if (__handBiasOrdering[i] == v28)
      {
        break;
      }
    }

    v30 = [v17 segmentControl];
    [v30 setSelectedSegmentIndex:i];

    v31 = [v17 segmentControl];
    [v31 addTarget:self action:sel__segmentControlValueDidChange_ forControlEvents:4096];

    v32 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v33 = [v32 preferencesActions];
    v34 = [v33 isFirstReachableKeyboardInteraction];

    if ((v34 & 1) == 0 && [(NSArray *)self->m_inputSwitcherItems count]- 1 == a4)
    {
      [v17 setInteractiveInsets:{0.0, 0.0, -50.0, 0.0}];
    }
  }

  [v6 setAccessoryView:v12];
  v35 = [v6 textLabel];
  [v35 setAlpha:1.0];
}

- (BOOL)_isHandBiasSwitchVisible
{
  v2 = [(UIInputSwitcherView *)self showsSwitches];
  if (v2)
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 allowsReachableKeyboard];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)didHitDockItemWithinTypingWindow
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 0;
  if (isKindOfClass)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 _layout];
    [v6 lastTouchUpTimestamp];
    v8 = v7;

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.325)
    {
      return 1;
    }
  }

  return result;
}

- (id)buttonPressed:(id)a3 withEvent:(id)a4 location:(CGPoint)a5 isLocationInsideViewHitArea:(BOOL)a6 isForDictation:(BOOL)a7 tapAction:(id)a8
{
  v9 = a7;
  y = a5.y;
  x = a5.x;
  v15 = a3;
  v16 = a8;
  v17 = [a4 touchesForView:v15];
  v18 = [v17 anyObject];

  [v18 locationInView:self];
  v20 = v19;
  v22 = v21;
  v23 = [v15 window];
  [v18 locationInView:v23];
  v25 = v24;
  v27 = v26;

  v28 = [v18 phase];
  if (v28 > 2)
  {
    if (v28 == 3)
    {
      [(UIInputSwitcherGestureState *)self->m_gestureState touchDown];
      if (v43 == 0.0)
      {
        goto LABEL_32;
      }

      [(UIInputSwitcherGestureState *)self->m_gestureState setTouchDown:0.0];
      v44 = [(UIInputSwitcherGestureState *)self->m_gestureState gestureConflictsWithTypingWindow];
      if (![(UIKeyboardMenuView *)self isVisible])
      {
        [v15 bounds];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [v18 locationInView:v15];
        v77.x = v53;
        v77.y = v54;
        v79.origin.x = v46;
        v79.origin.y = v48;
        v79.size.width = v50;
        v79.size.height = v52;
        if (!(v44 | !CGRectContainsPoint(v79, v77)))
        {
          if (v16)
          {
            v16[2](v16);
          }

          else
          {
            v68 = [(UIInputSwitcherView *)self nextInputMode];
          }

          v69 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
          [v69 didGlomojiTap];

          goto LABEL_32;
        }
      }

      if (![(UIKeyboardMenuView *)self isVisible])
      {
        goto LABEL_32;
      }

      if ([(UIInputSwitcherGestureState *)self->m_gestureState didMoveBeyondThreshold])
      {
        [(UIKeyboardMenuView *)self interactiveBounds];
        v78.x = v20;
        v78.y = v22;
        if (CGRectContainsPoint(v80, v78))
        {
          v55 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
          [v55 setKBMenuInteractionSource:2];

          [(UIKeyboardMenuView *)self selectItemAtPoint:v20, v22];
          goto LABEL_32;
        }
      }

      if (v9)
      {
        v63 = +[UIKeyboardInputMode dictationInputMode];
        v64 = +[UIKeyboardInputModeController sharedInputModeController];
        v65 = [v64 currentInputMode];
        v66 = [v63 isEqual:v65];

        if ((v66 & 1) == 0)
        {
          v16[2](v16);
          goto LABEL_32;
        }
      }

      if (![(UIInputSwitcherGestureState *)self->m_gestureState hideSwitcher])
      {
LABEL_32:
        p_m_gestureState = &self->m_gestureState;
        goto LABEL_33;
      }

      v67 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
      [v67 setKBMenuDismissSource:2];
    }

    else
    {
      if (v28 != 4)
      {
        goto LABEL_32;
      }

      [(UIInputSwitcherGestureState *)self->m_gestureState setTouchDown:0.0];
      if (![(UIKeyboardMenuView *)self isVisible])
      {
        goto LABEL_32;
      }
    }

    [(UIKeyboardMenuView *)self hide];
    goto LABEL_32;
  }

  if (!v28)
  {
    if ([(UIKeyboardMenuView *)self isVisible])
    {
      [(UIKeyboardMenuView *)self hide];
    }

    [(UIInputSwitcherView *)self setIsForDictation:v9];
    v32 = objc_alloc_init(UIInputSwitcherGestureState);
    m_gestureState = self->m_gestureState;
    self->m_gestureState = v32;

    [(UIInputSwitcherGestureState *)self->m_gestureState setTouchDown:CFAbsoluteTimeGetCurrent()];
    [(UIInputSwitcherGestureState *)self->m_gestureState setFirstReferencePoint:v25, v27];
    v34 = +[UIKeyboardImpl activeInstance];
    [v34 lastTouchDownTimestamp];
    [(UIInputSwitcherGestureState *)self->m_gestureState setLastSeenKeyboardTouchDown:?];

    v35 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    v36 = [v35 getInputMode];
    v37 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    [v37 setOriginalInputMode:v36];

    if (TIGetGlobeButtonDelayValue_onceToken != -1)
    {
      dispatch_once(&TIGetGlobeButtonDelayValue_onceToken, &__block_literal_global_515);
    }

    v38 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v39 = [v38 valueForPreferenceKey:@"GlobeButtonDelay"];

    [v39 doubleValue];
    v41 = v40;

    if ([(UIInputSwitcherGestureState *)self->m_gestureState gestureConflictsWithTypingWindow])
    {
      v41 = v41 + v41;
    }

    v42 = dispatch_time(0, (v41 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__UIInputSwitcherView_buttonPressed_withEvent_location_isLocationInsideViewHitArea_isForDictation_tapAction___block_invoke;
    block[3] = &unk_1E710E490;
    block[4] = self;
    v73 = v41;
    v76 = a6;
    v71 = v18;
    v74 = x;
    v75 = y;
    v72 = v15;
    dispatch_after(v42, MEMORY[0x1E69E96A0], block);

    goto LABEL_32;
  }

  if (v28 != 1)
  {
    goto LABEL_32;
  }

  p_m_gestureState = &self->m_gestureState;
  [(UIInputSwitcherGestureState *)self->m_gestureState firstReferencePoint];
  v31 = v30;
  if (![(UIInputSwitcherGestureState *)self->m_gestureState didMoveBeyondThreshold])
  {
    [(UIInputSwitcherGestureState *)*p_m_gestureState setDidMoveBeyondThreshold:vabdd_f64(v27, v31) > 25.0];
  }

  if ([(UIInputSwitcherGestureState *)*p_m_gestureState didMoveBeyondThreshold])
  {
    if ([(UIKeyboardMenuView *)self isVisible])
    {
      [(UIInputSwitcherView *)self updateSelectionWithPoint:v20, v22];
    }

    else
    {
      if (!+[UIKeyboard isModelessActive])
      {
        v56 = +[UIDictationController sharedInstance];
        [v56 setReasonType:16];

        v57 = +[UIDictationController sharedInstance];
        [v57 stopDictation];
      }

      [(UIInputSwitcherView *)self setShowsSwitches:1];
      [v18 timestamp];
      [(UIKeyboardMenuView *)self showAsHUDFromLocation:v15 withInputView:x touchBegan:y, v58];
      v59 = +[UIKeyboardImpl activeInstance];
      [v59 _tagTouchForTypingMenu:{objc_msgSend(v18, "_touchIdentifier")}];
    }

    [(UIInputSwitcherGestureState *)*p_m_gestureState setHideSwitcher:1];
    goto LABEL_32;
  }

LABEL_33:
  v60 = *p_m_gestureState;
  v61 = *p_m_gestureState;

  return v60;
}

uint64_t __109__UIInputSwitcherView_buttonPressed_withEvent_location_isLocationInsideViewHitArea_isForDictation_tapAction___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  [*(*(a1 + 32) + 680) touchDown];
  v4 = v3;
  v5 = *(a1 + 56);
  v6 = [*(*(a1 + 32) + 680) gestureConflictsWithTypingWindow];
  result = [*(*(a1 + 32) + 680) touchDown];
  if (v8 > 0.0)
  {
    result = [*(a1 + 32) isVisible];
    v9 = Current - v4 < v5 ? 1 : result;
    if (((v9 | v6) & 1) == 0 && *(a1 + 80) == 1)
    {
      if (!+[UIKeyboard isModelessActive])
      {
        v10 = +[UIDictationController sharedInstance];
        [v10 setReasonType:16];

        v11 = +[UIDictationController sharedInstance];
        [v11 stopDictation];
      }

      [*(a1 + 32) setShowsSwitches:1];
      v12 = +[UIKeyboardImpl activeInstance];
      [v12 _tagTouchForTypingMenu:{objc_msgSend(*(a1 + 40), "_touchIdentifier")}];

      [*(a1 + 32) setShowingCapsLockSwitcher:0];
      v13 = *(a1 + 48);
      v14 = *(a1 + 32);
      [*(a1 + 40) timestamp];
      [v14 showAsHUDFromLocation:v13 withInputView:*(a1 + 64) touchBegan:{*(a1 + 72), v15}];
      v16 = [*(a1 + 32) glomojiAnalyticsInstance];
      [v16 setKBMenuAppeared:1];

      v17 = [*(a1 + 32) glomojiAnalyticsInstance];
      [v17 didKBMenuAppear];

      return +[UIKBAnalyticsDispatcher globeKeyLongPress];
    }
  }

  return result;
}

@end