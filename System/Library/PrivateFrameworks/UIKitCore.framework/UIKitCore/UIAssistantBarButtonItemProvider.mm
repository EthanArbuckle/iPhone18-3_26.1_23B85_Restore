@interface UIAssistantBarButtonItemProvider
+ (BOOL)_isDictationButtonVisible;
+ (BOOL)_isDismissButtonVisible;
+ (BOOL)_isEmojiButtonVisible;
+ (BOOL)_isInputModeVisible:(id)visible;
+ (BOOL)_isKeyboardItemEnabled;
+ (BOOL)_isMinimizeAssistantBarButtonVisible;
+ (BOOL)_isScribbleButtonsVisible;
+ (BOOL)_isShowKeyboardButtonVisible;
+ (BOOL)_isStyleItemEnable:(id)enable;
+ (BOOL)isFloatingKeyboardVisible;
+ (BOOL)isKeyboardGroupVisible;
+ (id)actionForInputMode:(id)mode overrideImage:(id)image overrideTitle:(id)title overrideSubtitle:(id)subtitle;
+ (id)actionForSoftwareKeyboardInputMode:(id)mode;
+ (id)barButtonItemForAssistantItemStyle:(int64_t)style target:(id)target forcePlainButton:(BOOL)button;
+ (id)compactSystemAssistantItem;
+ (id)configuredSymbolImageWithName:(id)name size:(double)size keyboardLanguageCode:(id)code;
+ (id)defaultSystemLeadingBarButtonGroupsForItem:(id)item;
+ (id)defaultSystemTrailingBarButtonGroupsForItem:(id)item;
+ (id)dictationActionForInputMode:(id)mode inCurrentInputMode:(id)inputMode;
+ (id)dictationMenu;
+ (id)imageSymbolConfigurationForAssistantBarWithPointSize:(double)size;
+ (id)inputWindowController;
+ (id)inputWindowControllerForApplication:(BOOL)application;
+ (id)languageIndicatorImage;
+ (id)languageIndicatorItem:(BOOL)item;
+ (id)languageIndicatorMenu:(BOOL)menu;
+ (id)systemDefaultAssistantItem;
+ (id)unmodifiableSystemAssistantItem:(int64_t)item;
+ (void)dismissFloatingKeyboard;
+ (void)presentFloatingKeyboard;
+ (void)setAssistantBarCompact:(BOOL)compact forceReload:(BOOL)reload;
+ (void)setScribbleLanguageIdentifier:(id)identifier;
+ (void)updateFloatingAssistantBarIfNeeded;
@end

@implementation UIAssistantBarButtonItemProvider

+ (id)systemDefaultAssistantItem
{
  v3 = objc_alloc_init(UISystemDefaultTextInputAssistantItem);
  v4 = [self defaultSystemLeadingBarButtonGroupsForItem:v3];
  [(UISystemDefaultTextInputAssistantItem *)v3 setLeadingBarButtonGroups:v4];

  v5 = [self defaultSystemTrailingBarButtonGroupsForItem:v3];
  [(UISystemDefaultTextInputAssistantItem *)v3 setTrailingBarButtonGroups:v5];

  return v3;
}

+ (id)inputWindowController
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v3 visualModeManager];
  shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

  return [self inputWindowControllerForApplication:shouldShowWithinAppWindow];
}

+ (void)updateFloatingAssistantBarIfNeeded
{
  inputWindowController = [self inputWindowController];
  placement = [inputWindowController placement];

  assistantView = [placement assistantView];
  v6 = assistantView;
  if (assistantView)
  {
    v7 = assistantView;
  }

  else
  {
    v7 = placement;
  }

  v11 = v7;

  if ((updateFloatingAssistantBarIfNeeded_updatingFloatingAssistantBar & 1) == 0)
  {
    if ([v11 isFloatingAssistantView])
    {
      if (([v11 isCompactAssistantView] & 1) == 0)
      {
        v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
        preferencesActions = [v8 preferencesActions];
        compactAssistantBarPersistentLocation = [preferencesActions compactAssistantBarPersistentLocation];

        if (compactAssistantBarPersistentLocation == 1)
        {
          updateFloatingAssistantBarIfNeeded_updatingFloatingAssistantBar = 1;
          [self setAssistantBarCompact:objc_msgSend(v11 forceReload:{"isCompactAssistantView"), 0}];
          updateFloatingAssistantBarIfNeeded_updatingFloatingAssistantBar = 0;
        }
      }
    }
  }
}

+ (BOOL)isKeyboardGroupVisible
{
  v3 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder = [v3 delegateAsResponder];
  if (([delegateAsResponder _isDisplayingWritingToolsSessionInUCB] & 1) == 0 && ((objc_msgSend(self, "_isDismissButtonVisible") & 1) != 0 || objc_msgSend(self, "_isScribbleButtonsVisible")))
  {
    inputView = [delegateAsResponder inputView];
    if (inputView)
    {
      v5 = 0;
    }

    else
    {
      inputViewController = [delegateAsResponder inputViewController];
      v5 = inputViewController == 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_isEmojiButtonVisible
{
  v2 = +[UIKeyboardImpl activeInstance];
  canPresentEmojiPopover = [v2 canPresentEmojiPopover];

  return canPresentEmojiPopover;
}

+ (BOOL)_isDictationButtonVisible
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v2 responder];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([responder _isDisplayingWritingToolsSessionInUCB])
  {
    shouldShowDictationKey = 0;
  }

  else
  {
    inputAssistantItem = [responder inputAssistantItem];
    _dictationReplacementAction = [inputAssistantItem _dictationReplacementAction];

    if (_dictationReplacementAction)
    {
      shouldShowDictationKey = 1;
    }

    else
    {
      v7 = +[UIKeyboardImpl activeInstance];
      shouldShowDictationKey = [v7 shouldShowDictationKey];
    }
  }

  return shouldShowDictationKey;
}

+ (BOOL)_isScribbleButtonsVisible
{
  inputWindowController = [self inputWindowController];
  placement = [inputWindowController placement];

  assistantView = [placement assistantView];
  v5 = assistantView;
  if (assistantView)
  {
    v6 = assistantView;
  }

  else
  {
    v6 = placement;
  }

  v7 = v6;

  isFloatingAssistantView = [v7 isFloatingAssistantView];
  if (!isFloatingAssistantView)
  {
    return 0;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  _showsScribbleIconsInAssistantView = [v9 _showsScribbleIconsInAssistantView];

  return _showsScribbleIconsInAssistantView;
}

+ (BOOL)_isDismissButtonVisible
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([v2 _shouldMinimizeForHardwareKeyboard])
  {
    v3 = [v2 _shouldSuppressSoftwareKeyboard] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)_isShowKeyboardButtonVisible
{
  v2 = +[UIKeyboardImpl activeInstance];
  if (([v2 isMinimized] & 1) == 0)
  {
    delegateAsResponder = [v2 delegateAsResponder];
    if ([delegateAsResponder _suppressSoftwareKeyboard])
    {
    }

    else
    {
      _showsScribbleIconsInAssistantView = [v2 _showsScribbleIconsInAssistantView];

      if (!_showsScribbleIconsInAssistantView)
      {
        v5 = 0;
        goto LABEL_6;
      }
    }
  }

  v5 = +[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate];
LABEL_6:

  return v5;
}

+ (BOOL)_isMinimizeAssistantBarButtonVisible
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v3 systemInputAssistantViewController];

  if ([systemInputAssistantViewController isInputAssistantItemEmpty] && !objc_msgSend(self, "_isScribbleButtonsVisible") || (objc_msgSend(systemInputAssistantViewController, "_usesCustomBackground") & 1) != 0 || +[UIKeyboardImpl isFloatingForced](UIKeyboardImpl, "isFloatingForced"))
  {
    supportsCompactStyle = 0;
  }

  else
  {
    supportsCompactStyle = [systemInputAssistantViewController supportsCompactStyle];
  }

  return supportsCompactStyle;
}

+ (BOOL)_isKeyboardItemEnabled
{
  v2 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v2 textInputTraits];
  v4 = [textInputTraits keyboardType] != 122;

  return v4;
}

+ (BOOL)_isStyleItemEnable:(id)enable
{
  enableCopy = enable;
  v4 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v4 textInputTraits];
  allowsTextAnimationsType = [textInputTraits allowsTextAnimationsType];

  if (allowsTextAnimationsType == 2)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [enableCopy _isDisplayingWritingToolsSessionInUCB] ^ 1;
  }

  return v7;
}

+ (id)barButtonItemForAssistantItemStyle:(int64_t)style target:(id)target forcePlainButton:(BOOL)button
{
  buttonCopy = button;
  targetCopy = target;
  v9 = 0;
  v10 = &stru_1EFB14550;
  v48 = buttonCopy;
  switch(style)
  {
    case 0:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Cut", @"Cut");
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v14 = @"scissors";
      v47 = sel_assistantCut;
      v15 = 20.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = &__block_literal_global_607;
      goto LABEL_29;
    case 1:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Copy", @"Copy");
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v14 = @"doc.on.doc";
      v47 = sel_assistantCopy;
      v15 = 20.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = &__block_literal_global_62_2;
      goto LABEL_29;
    case 2:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Paste", @"Paste");
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v14 = @"doc.on.clipboard";
      v47 = sel_assistantPaste_forEvent_;
      v15 = 20.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = &__block_literal_global_94_2;
      goto LABEL_29;
    case 3:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Undo", @"Undo");
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v14 = @"arrow.uturn.backward";
      v47 = sel_assistantUndo;
      v15 = 20.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = &__block_literal_global_74_4;
      goto LABEL_29;
    case 4:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Redo", @"Redo");
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v14 = @"arrow.uturn.forward";
      v47 = sel_assistantRedo;
      v15 = 20.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = &__block_literal_global_84_3;
      goto LABEL_29;
    case 5:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Bold", @"Bold");
      v47 = sel_assistantBold;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_6;
      v63[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v63[4] = self;
      v18 = _Block_copy(v63);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v15 = 20.0;
      v16 = 0.0;
      v14 = @"bold";
      goto LABEL_21;
    case 6:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Italic", @"Italic");
      v47 = sel_assistantItalic;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_7;
      v62[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v62[4] = self;
      v18 = _Block_copy(v62);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v15 = 20.0;
      v17 = -1.0;
      v14 = @"italic";
      v16 = 0.0;
      goto LABEL_29;
    case 7:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Underline", @"Underline");
      v47 = sel_assistantUnderline;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_8;
      v61[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v61[4] = self;
      v18 = _Block_copy(v61);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v15 = 20.0;
      v17 = 0.0;
      v14 = @"underline";
      v16 = -1.0;
      goto LABEL_29;
    case 8:
      v28 = objc_alloc_init(UIKeyboardBIUImageGenerator);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_9;
      v59[3] = &unk_1E7125510;
      v60 = v28;
      v29 = v28;
      v18 = _Block_copy(v59);

      textEffectsButtonLanguageCode = 0;
      v23 = 0;
      v14 = 0;
      v12 = 0;
      v47 = 0;
      _imageThatSuppressesAccessibilityHairlineThickening = 0;
      v15 = 20.0;
      v16 = 0.0;
      v27 = 1;
      v17 = 0.0;
      v25 = 0.0;
      v10 = &stru_1EFB14550;
      goto LABEL_34;
    case 9:
      v10 = _UINSLocalizedStringWithDefaultValue(@"TEXT_FORMATTING_FORMAT", @"Format");
      v47 = sel_assistantTextFormatting;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_10;
      v58[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v58[4] = self;
      v18 = _Block_copy(v58);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v15 = 20.0;
      v16 = 0.0;
      v14 = @"textformat";
      goto LABEL_21;
    case 10:
      v22 = [UIAssistantBarSeparatorView alloc];
      v23 = [(UIAssistantBarSeparatorView *)v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      +[UIAssistantBarSeparatorView preferredWidth];
      v25 = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_21;
      aBlock[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      aBlock[4] = self;
      v18 = _Block_copy(aBlock);
      textEffectsButtonLanguageCode = 0;
      v14 = 0;
      v12 = 0;
      v47 = 0;
      _imageThatSuppressesAccessibilityHairlineThickening = 0;
      v15 = 20.0;
      v27 = 1;
      v16 = 0.0;
      v17 = 0.0;
      goto LABEL_34;
    case 11:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Emoji", @"Emoji");
      v47 = sel_assistantEmoji;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_12;
      v57[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v57[4] = self;
      v18 = _Block_copy(v57);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 1;
      v15 = 22.0;
      v16 = 0.0;
      v14 = @"face.grinning.inverse";
      goto LABEL_21;
    case 12:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Dictation", @"Dictation");
      v47 = sel_assistantDictation;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_13;
      v56[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v56[4] = self;
      v21 = v56;
      goto LABEL_8;
    case 13:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Dictation", @"Dictation");
      v47 = sel_assistantDictationMicOn;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_14;
      v55[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v55[4] = self;
      v21 = v55;
LABEL_8:
      v18 = _Block_copy(v21);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 1;
      v15 = 22.0;
      v16 = 0.0;
      v14 = @"mic";
      goto LABEL_21;
    case 14:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Dismiss", @"Dismiss");
      v47 = sel_assistantDismiss;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_15;
      v54[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v54[4] = self;
      v18 = _Block_copy(v54);
      textEffectsButtonLanguageCode = 0;
      v12 = 1;
      v15 = 22.0;
      v16 = 0.0;
      v14 = @"keyboard.chevron.compact.down";
      goto LABEL_28;
    case 15:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Show Keyboard", @"Show Keyboard");
      v47 = sel_assistantShowKeyboard;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_17;
      v52[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v52[4] = self;
      v18 = _Block_copy(v52);
      textEffectsButtonLanguageCode = 0;
      v12 = 1;
      v15 = 22.0;
      v16 = 0.0;
      v14 = @"keyboard";
      goto LABEL_28;
    case 16:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Keyboard", @"Keyboard");
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_19;
      v51[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v51[4] = self;
      v18 = _Block_copy(v51);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v47 = 0;
      v15 = 22.0;
      v16 = 0.0;
      v17 = 0.0;
      v14 = @"keyboard.badge.ellipsis";
      goto LABEL_29;
    case 18:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Show Writeboard", @"Show Writeboard");
      v30 = _AXSEnhanceTextLegibilityEnabled();
      v31 = @"UIButtonBarKeyboardWriteboard_bold.png";
      if (!v30)
      {
        v31 = @"UIButtonBarKeyboardWriteboard.png";
      }

      v14 = v31;
      v47 = sel_assistantWriteboard;
      v32 = [UIImage _kitImageNamed:v14 withTrait:0];
      _imageThatSuppressesAccessibilityHairlineThickening = [v32 _imageThatSuppressesAccessibilityHairlineThickening];

      textEffectsButtonLanguageCode = 0;
      v23 = 0;
      v12 = 0;
      v27 = 1;
      v15 = 20.0;
      v16 = 0.0;
      v18 = &__block_literal_global_205_0;
      v17 = 0.0;
      v25 = 0.0;
      goto LABEL_34;
    case 19:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
      v19 = +[UIKeyboardImpl sharedInstance];

      v18 = 0;
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v47 = sel_deleteFromInput;
      v14 = @"delete.left";
      v15 = 20.0;
      v16 = 0.0;
      v17 = 0.0;
      targetCopy = v19;
      goto LABEL_29;
    case 20:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Undo/Redo", @"Undo/Redo");
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_20;
      v50[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v50[4] = self;
      v18 = _Block_copy(v50);
      textEffectsButtonLanguageCode = 0;
      v12 = 0;
      v13 = 0;
      v47 = 0;
      v15 = 22.0;
      v16 = 0.0;
      v17 = 0.0;
      v14 = @"arrow.uturn.backward.circle.badge.ellipsis";
      goto LABEL_29;
    case 21:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Return Key", @"Return Key");
      v47 = sel_assistantReturnKey;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_16;
      v53[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
      v53[4] = self;
      v18 = _Block_copy(v53);
      textEffectsButtonLanguageCode = 0;
      v12 = 1;
      v15 = 22.0;
      v16 = 0.0;
      v14 = @"return";
LABEL_28:
      v17 = 0.0;
      v13 = 1;
      goto LABEL_29;
    case 22:
      v10 = _UINSLocalizedStringWithDefaultValue(@"Text Animation", @"Text Animation");
      v20 = +[UIKeyboardInputModeController sharedInputModeController];
      textEffectsButtonLanguageCode = [v20 textEffectsButtonLanguageCode];

      v12 = 0;
      v13 = 0;
      v14 = @"character.motion";
      v47 = sel_assistantTextAnimation;
      v15 = 20.0;
      v16 = 0.0;
      v18 = &__block_literal_global_151_1;
LABEL_21:
      v17 = 0.0;
LABEL_29:
      v33 = [objc_opt_class() configuredSymbolImageWithName:v14 size:textEffectsButtonLanguageCode keyboardLanguageCode:v15];
      _imageThatSuppressesAccessibilityHairlineThickening = v33;
      v25 = 0.0;
      if (v13)
      {
        v23 = 0;
        v27 = 0;
      }

      else if ([v33 hasBaseline])
      {
        imageWithoutBaseline = [_imageThatSuppressesAccessibilityHairlineThickening imageWithoutBaseline];

        [imageWithoutBaseline _setAlignmentRectInsets:{0.0, 0.0, 0.0, 0.0}];
        v23 = 0;
        v27 = 1;
        _imageThatSuppressesAccessibilityHairlineThickening = imageWithoutBaseline;
      }

      else
      {
        v23 = 0;
        v27 = 1;
      }

LABEL_34:
      if (v16 != 0.0 || v17 != 0.0)
      {
        v35 = [_imageThatSuppressesAccessibilityHairlineThickening imageWithAlignmentRectInsets:{0.0, v17, v16, 0.0}];

        _imageThatSuppressesAccessibilityHairlineThickening = v35;
      }

      if ((v27 | v48))
      {
        v36 = v23;
      }

      else
      {
        v37 = [UIButton alloc];
        v38 = *MEMORY[0x1E695EFF8];
        v39 = *(MEMORY[0x1E695EFF8] + 8);
        [_imageThatSuppressesAccessibilityHairlineThickening size];
        v42 = [(UIButton *)v37 initWithFrame:v38, v39, v40, v41];
        [(UIControl *)v42 setPointerInteractionEnabled:1];
        [(UIButton *)v42 setImage:_imageThatSuppressesAccessibilityHairlineThickening forState:0];
        [v42 setAccessibilityLabel:v10];
        [(UIControl *)v42 addTarget:targetCopy action:v47 forControlEvents:64];
        v36 = v42;

        v43 = 0.0;
        if (v12)
        {
          [_imageThatSuppressesAccessibilityHairlineThickening size];
          v43 = v15 - v44;
        }

        [(UIButton *)v36 setContentEdgeInsets:0.0, 0.0, v43, 0.0];
      }

      v45 = [UIBarButtonItem alloc];
      if (v36)
      {
        v9 = [(UIBarButtonItem *)v45 initWithCustomView:v36];
      }

      else
      {
        v9 = [(UIBarButtonItem *)v45 initWithImage:_imageThatSuppressesAccessibilityHairlineThickening style:0 target:targetCopy action:v47];
        [(UIBarButtonItem *)v9 setTitle:v10];
      }

      [(UIBarButtonItem *)v9 setWidth:v25];
      [(UIBarButtonItem *)v9 _setAutoValidationHandler:v18];

      break;
    default:
      break;
  }

  return v9;
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _getResponderForEditing();
  [v2 setEnabled:{objc_msgSend(v3, "canPerformAction:withSender:", sel_cut_, 0)}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _getResponderForEditing();
  [v2 setEnabled:{objc_msgSend(v3, "canPerformAction:withSender:", sel_copy_, 0)}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = _getResponderForEditing();
  v3 = [v4 undoManager];
  [v2 setEnabled:{objc_msgSend(v3, "canUndo")}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = _getResponderForEditing();
  v3 = [v4 undoManager];
  [v2 setEnabled:{objc_msgSend(v3, "canRedo")}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _getResponderForEditing();
  [v2 setEnabled:{objc_msgSend(v3, "canPerformAction:withSender:", sel_paste_, 0)}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = _getResponderForEditing();
  if ([v8 canPerformAction:sel_toggleBoldface_ withSender:0])
  {
    v4 = [*(a1 + 32) _isStyleItemEnable:v8];
  }

  else
  {
    v4 = 0;
  }

  [v3 setEnabled:v4];
  v5 = _getStylingDictionaryForResponder(v8);
  v6 = [v5 objectForKeyedSubscript:*off_1E70EC918];
  v7 = [v6 fontDescriptor];
  [v3 setSelected:{(objc_msgSend(v7, "symbolicTraits") >> 1) & 1}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = _getResponderForEditing();
  if ([v8 canPerformAction:sel_toggleItalics_ withSender:0])
  {
    v4 = [*(a1 + 32) _isStyleItemEnable:v8];
  }

  else
  {
    v4 = 0;
  }

  [v3 setEnabled:v4];
  v5 = _getStylingDictionaryForResponder(v8);
  v6 = [v5 objectForKeyedSubscript:*off_1E70EC918];
  v7 = [v6 fontDescriptor];
  [v3 setSelected:{objc_msgSend(v7, "symbolicTraits") & 1}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = _getResponderForEditing();
  if ([v7 canPerformAction:sel_toggleUnderline_ withSender:0])
  {
    v4 = [*(a1 + 32) _isStyleItemEnable:v7];
  }

  else
  {
    v4 = 0;
  }

  [v3 setEnabled:v4];
  v5 = _getStylingDictionaryForResponder(v7);
  v6 = [v5 objectForKeyedSubscript:*off_1E70ECAD8];
  [v3 setSelected:{objc_msgSend(v6, "integerValue") != 0}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_9(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [a2 buttonGroup];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 _items];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [*(*(&v27 + 1) + 8 * i) isEnabled];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);

    [v3 setHidden:(v7 & 1) == 0];
    if (v7)
    {
      v10 = [v3 representativeItem];
      v11 = _getResponderForEditing();
      v12 = _getStylingDictionaryForResponder(v11);

      v13 = *off_1E70EC918;
      v14 = [v12 objectForKeyedSubscript:*off_1E70EC918];
      v15 = [v14 fontDescriptor];
      v16 = [v15 symbolicTraits];

      v17 = [v12 objectForKeyedSubscript:v13];
      v18 = [v17 fontDescriptor];
      v19 = [v18 symbolicTraits];
      v20 = v16 & 2 | v19 & 1;
      v21 = (v16 >> 1) & 1;

      v22 = [v12 objectForKeyedSubscript:*off_1E70ECAD8];
      v23 = [v22 integerValue];

      v24 = *(a1 + 32);
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = v20 != 0;
      }

      v26 = [v24 BIUImageForBold:v21 italic:v19 & 1 underline:v23 != 0];
      [v10 setImage:v26];

      [v10 setSelected:v25];
    }
  }

  else
  {

    [v3 setHidden:1];
  }
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _getResponderForEditing();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 _areDefaultTextFormattingAffordancesAvailable])
  {
    v4 = [*(a1 + 32) _isStyleItemEnable:v5];
  }

  else
  {
    v4 = 0;
  }

  [v3 setHidden:v4 ^ 1];
  [v3 setEnabled:v4];
  [v3 setSelected:0];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_11(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 textInputTraits];
  if ([v3 allowsTextAnimationsType] == 2)
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v4 systemInputAssistantViewController];
    v6 = [v5 centerViewController];
    [v7 setHidden:{objc_msgSend(v6, "isVisibleForInputDelegate:inputViews:", 0, 0) ^ 1}];
  }

  else
  {
    [v7 setHidden:1];
  }
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHidden:{objc_msgSend(v2, "_isEmojiButtonVisible") ^ 1}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setHidden:{((objc_msgSend(*(a1 + 32), "_isDictationButtonVisible") | +[UIDictationController isRunning](UIDictationController, "isRunning")) & 1) == 0}];
  if (([v4 isHidden] & 1) == 0)
  {
    if (+[UIDictationController dictationIsFunctional])
    {
      v3 = +[UIKeyboard usesInputSystemUI]^ 1;
    }

    else
    {
      v3 = 0;
    }

    [v4 setEnabled:v3];
  }
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_14(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setHidden:{(objc_msgSend(*(a1 + 32), "_isDictationButtonVisible") ^ 1) & +[UIDictationController isRunning](UIDictationController, "isRunning")}];
  if (([v4 isHidden] & 1) == 0)
  {
    if (+[UIDictationController dictationIsFunctional])
    {
      v3 = +[UIKeyboard usesInputSystemUI]^ 1;
    }

    else
    {
      v3 = 0;
    }

    [v4 setEnabled:v3];
  }
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHidden:{objc_msgSend(v2, "_isDismissButtonVisible") ^ 1}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if ([v2 _isScribbleButtonsVisible])
  {
    v4 = +[UIKeyboard usesInputSystemUI];
  }

  else
  {
    v4 = 1;
  }

  [v3 setHidden:v4];
  v5 = [v3 isHidden];
  v6 = [v3 buttonGroup];

  [v6 setHidden:v5];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHidden:{objc_msgSend(v2, "_isShowKeyboardButtonVisible") ^ 1}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 textInputTraits];
  v5 = [v4 keyboardType];

  v8 = +[UIKeyboardImpl activeInstance];
  v6 = [v8 isMinimized] ^ 1;
  if (v5 == 126)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  [v2 setHidden:v7];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHidden:{objc_msgSend(v2, "isKeyboardGroupVisible") ^ 1}];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if ([v2 _isScribbleButtonsVisible])
  {
    v4 = +[UIKeyboard usesInputSystemUI];
  }

  else
  {
    v4 = 1;
  }

  [v3 setHidden:v4];
  v5 = [v3 isHidden];
  v6 = [v3 buttonGroup];

  [v6 setHidden:v5];
}

void __95__UIAssistantBarButtonItemProvider_barButtonItemForAssistantItemStyle_target_forcePlainButton___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHidden:{objc_msgSend(v2, "isKeyboardGroupVisible") ^ 1}];
}

+ (id)configuredSymbolImageWithName:(id)name size:(double)size keyboardLanguageCode:(id)code
{
  nameCopy = name;
  codeCopy = code;
  v9 = +[UIKeyboard activeKeyboard];
  if ([v9 _lightStyleRenderConfig])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (qword_1ED499078 != -1)
  {
    dispatch_once(&qword_1ED499078, &__block_literal_global_235_3);
  }

  if (qword_1ED499068 != v10)
  {
    [_MergedGlobals_13_6 removeAllObjects];
    qword_1ED499068 = v10;
  }

  if (codeCopy)
  {
    v11 = codeCopy;
  }

  else
  {
    v11 = &stru_1EFB14550;
  }

  v12 = [nameCopy stringByAppendingString:v11];
  v13 = [_MergedGlobals_13_6 objectForKey:v12];
  if (!v13)
  {
    imageConfiguration = [UITraitCollection traitCollectionWithUserInterfaceStyle:v10];
    v15 = imageConfiguration;
    if (imageConfiguration)
    {
      imageConfiguration = [imageConfiguration imageConfiguration];
    }

    v16 = imageConfiguration;

    v17 = [objc_opt_class() imageSymbolConfigurationForAssistantBarWithPointSize:size];
    v18 = [v16 configurationByApplyingConfiguration:v17];

    if (codeCopy)
    {
      v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:codeCopy];
      v20 = [v18 configurationWithLocale:v19];

      v18 = v20;
    }

    v21 = [UIImage imageNamed:nameCopy inBundle:qword_1ED499070 withConfiguration:v18];
    if (v21)
    {
      v13 = v21;
    }

    else
    {
      v13 = [UIImage _systemImageNamed:nameCopy withConfiguration:v18];
      if (!v13)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    [_MergedGlobals_13_6 setObject:v13 forKey:v12];
    goto LABEL_20;
  }

LABEL_21:

  return v13;
}

void __92__UIAssistantBarButtonItemProvider_configuredSymbolImageWithName_size_keyboardLanguageCode___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  v1 = _MergedGlobals_13_6;
  _MergedGlobals_13_6 = v0;

  qword_1ED499068 = 0;
  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/SFSymbols.framework/CoreGlyphsPriority.bundle"];
  v3 = qword_1ED499070;
  qword_1ED499070 = v2;
}

+ (id)imageSymbolConfigurationForAssistantBarWithPointSize:(double)size
{
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleFootnote" scale:-1];
  v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:size];
  v6 = [v4 configurationByApplyingConfiguration:v5];

  return v6;
}

+ (id)inputWindowControllerForApplication:(BOOL)application
{
  applicationCopy = application;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v4 visualModeManager];
  useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

  if (applicationCopy && useVisualModeWindowed)
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v7 containerRootController];
  }

  else
  {
    v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    containerRootController = [v7 inputWindowRootViewController];
  }

  v9 = containerRootController;

  return v9;
}

+ (id)defaultSystemLeadingBarButtonGroupsForItem:(id)item
{
  v34[5] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  defaultSystemLeadingBarButtonGroups = [itemCopy defaultSystemLeadingBarButtonGroups];
  if (!defaultSystemLeadingBarButtonGroups)
  {
    v6 = [self barButtonItemForAssistantItemStyle:0 target:itemCopy];
    [v6 setHidden:1];
    v7 = [self barButtonItemForAssistantItemStyle:1 target:itemCopy];
    [v7 setHidden:1];
    v8 = [self barButtonItemForAssistantItemStyle:2 target:itemCopy];
    v9 = [self barButtonItemForAssistantItemStyle:3 target:itemCopy];
    v10 = [self barButtonItemForAssistantItemStyle:4 target:itemCopy];
    v11 = [objc_opt_class() configuredSymbolImageWithName:@"scissors.badge.ellipsis" size:22.0];
    v12 = [objc_opt_class() configuredSymbolImageWithName:@"arrow.uturn.backward.circle.badge.ellipsis" size:22.0];
    v13 = [[UIBarButtonItem alloc] initWithImage:v12 style:0 target:self action:0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__UIAssistantBarButtonItemProvider_defaultSystemLeadingBarButtonGroupsForItem___block_invoke;
    v24[3] = &unk_1E7125538;
    v25 = v6;
    v26 = v7;
    v27 = v9;
    v28 = v10;
    v29 = v8;
    v30 = v11;
    v31 = v12;
    selfCopy = self;
    v23 = v12;
    v22 = v11;
    v14 = v8;
    v15 = v10;
    v16 = v9;
    v17 = v7;
    v18 = v6;
    [(UIBarButtonItem *)v13 _setAutoValidationHandler:v24];
    v34[0] = v18;
    v34[1] = v17;
    v34[2] = v16;
    v34[3] = v15;
    v34[4] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
    v20 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v19 representativeItem:v13];
    [(UIBarButtonItemGroup *)v20 _setLocked:1];
    [(UIBarButtonItemGroup *)v20 _setSendActionsBeforeDismiss:1];
    [(UIBarButtonItemGroup *)v20 _setExpandStyle:1];
    v33 = v20;
    defaultSystemLeadingBarButtonGroups = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  }

  return defaultSystemLeadingBarButtonGroups;
}

void __79__UIAssistantBarButtonItemProvider_defaultSystemLeadingBarButtonGroupsForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  v16 = a2;
  v4 = [v3 inputWindowController];
  v5 = [v4 placement];

  v6 = [v5 assistantView];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = [v9 showsEditItems];
  if (v10)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 inputDelegate];
    v13 = [v12 selectedTextRange];
    v14 = [v13 _isRanged];

    [*(a1 + 32) setHidden:v14 ^ 1];
    [*(a1 + 40) setHidden:v14 ^ 1];
    [*(a1 + 48) setHidden:v14];
    [*(a1 + 56) setHidden:v14];
    [*(a1 + 64) setHidden:0];
    [v16 setHidden:0];
    v15 = 80;
    if (v14)
    {
      v15 = 72;
    }

    [v16 setImage:*(a1 + v15)];
  }

  else
  {
    [*(a1 + 32) setHidden:1];
    [*(a1 + 40) setHidden:1];
    [*(a1 + 48) setHidden:1];
    [*(a1 + 56) setHidden:1];
    [*(a1 + 64) setHidden:1];
    [v16 setHidden:1];
  }
}

+ (id)defaultSystemTrailingBarButtonGroupsForItem:(id)item
{
  v19[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  defaultSystemTrailingBarButtonGroups = [itemCopy defaultSystemTrailingBarButtonGroups];
  if (!defaultSystemTrailingBarButtonGroups)
  {
    v6 = [self barButtonItemForAssistantItemStyle:5 target:itemCopy];
    v19[0] = v6;
    v7 = [self barButtonItemForAssistantItemStyle:6 target:itemCopy];
    v19[1] = v7;
    v8 = [self barButtonItemForAssistantItemStyle:7 target:itemCopy];
    v19[2] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];

    v10 = [self barButtonItemForAssistantItemStyle:8 target:itemCopy];
    v11 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v9 representativeItem:v10];
    [(UIBarButtonItemGroup *)v11 _setLocked:1];
    [(UIBarButtonItemGroup *)v11 _setSendActionsBeforeDismiss:1];
    [(UIBarButtonItemGroup *)v11 _setExpandStyle:1];
    v12 = [self barButtonItemForAssistantItemStyle:9 target:itemCopy];
    v13 = [UIBarButtonItemGroup alloc];
    v18 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [(UIBarButtonItemGroup *)v13 initWithBarButtonItems:v14 representativeItem:0];

    [(UIBarButtonItemGroup *)v15 _setLocked:1];
    v17[0] = v11;
    v17[1] = v15;
    defaultSystemTrailingBarButtonGroups = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  }

  return defaultSystemTrailingBarButtonGroups;
}

+ (BOOL)_isInputModeVisible:(id)visible
{
  visibleCopy = visible;
  primaryLanguage = [visibleCopy primaryLanguage];
  if (UIKeyboardInputModeIsNonLinguistic(primaryLanguage))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [visibleCopy isExtensionInputMode] ^ 1;
  }

  return v5;
}

+ (void)setScribbleLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  PKTextInputInteractionClass = getPKTextInputInteractionClass();
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v4 scene];
  v6 = [PKTextInputInteractionClass interactionForScene:scene];

  enabledLanguageIdentifiers = [v6 enabledLanguageIdentifiers];
  LODWORD(scene) = [enabledLanguageIdentifiers containsObject:identifierCopy];

  if (scene)
  {
    [v6 setCurrentLanguageIdentifier:identifierCopy];
  }
}

+ (id)actionForSoftwareKeyboardInputMode:(id)mode
{
  modeCopy = mode;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 inputModeWithIdentifier:modeCopy];

  indicatorIconForSoftwareLayout = [v6 indicatorIconForSoftwareLayout];
  v8 = UIKeyboardActiveInputModes;
  v9 = UIKeyboardInputModesMatchingMode(modeCopy, v8);
  v10 = [v9 count];

  if (v10 < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = UIKeyboardLocalizedSWLayoutName(modeCopy);
  }

  v12 = [self actionForInputMode:modeCopy overrideImage:indicatorIconForSoftwareLayout overrideTitle:0 overrideSubtitle:v11];

  return v12;
}

+ (id)actionForInputMode:(id)mode overrideImage:(id)image overrideTitle:(id)title overrideSubtitle:(id)subtitle
{
  modeCopy = mode;
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  v14 = +[UIKeyboardInputModeController sharedInputModeController];
  v15 = [v14 inputModeWithIdentifier:modeCopy];

  if (![self _isInputModeVisible:v15])
  {
    v16 = 0;
    goto LABEL_19;
  }

  if (imageCopy)
  {
    if (!titleCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    imageCopy = [v15 indicatorIcon];
    if (!titleCopy)
    {
LABEL_7:
      identifier = [v15 identifier];
      if (UIKeyboardShowsTransliterationCandidatesForInputMode())
      {
        [v15 monolingualDisplayName];
      }

      else
      {
        [v15 extendedDisplayName];
      }
      titleCopy = ;
    }
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __100__UIAssistantBarButtonItemProvider_actionForInputMode_overrideImage_overrideTitle_overrideSubtitle___block_invoke;
  v28[3] = &unk_1E7103DD0;
  selfCopy = self;
  v18 = modeCopy;
  v29 = v18;
  v19 = [UIAction actionWithTitle:titleCopy image:imageCopy identifier:v18 handler:v28];
  v16 = v19;
  if (subtitleCopy)
  {
    [v19 setSubtitle:subtitleCopy];
  }

  if ([self _isScribbleButtonsVisible])
  {
    PKTextInputInteractionClass = getPKTextInputInteractionClass();
    v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v21 scene];
    [PKTextInputInteractionClass interactionForScene:scene];
    v27 = imageCopy;
    v24 = v23 = subtitleCopy;

    currentLanguageIdentifier = [v24 currentLanguageIdentifier];

    subtitleCopy = v23;
    imageCopy = v27;
  }

  else
  {
    currentLanguageIdentifier = UIKeyboardGetCurrentInputMode();
  }

  if ([v18 isEqualToString:currentLanguageIdentifier])
  {
    [v16 setState:1];
  }

LABEL_19:

  return v16;
}

void __100__UIAssistantBarButtonItemProvider_actionForInputMode_overrideImage_overrideTitle_overrideSubtitle___block_invoke(uint64_t a1)
{
  v4 = +[UIKeyboardImpl sharedInstance];
  if ([*(a1 + 40) _isScribbleButtonsVisible])
  {
    v2 = +[UIKeyboardInputModeController sharedInputModeController];
    v3 = [v2 inputModeIdentifierLastUsedForLanguage:*(a1 + 32)];
    [v4 setInputMode:v3 userInitiated:1];
  }

  else
  {
    [v4 setInputMode:*(a1 + 32) userInitiated:1];
  }

  [*(a1 + 40) updateFloatingAssistantBarIfNeeded];
}

+ (void)setAssistantBarCompact:(BOOL)compact forceReload:(BOOL)reload
{
  compactCopy = compact;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__UIAssistantBarButtonItemProvider_setAssistantBarCompact_forceReload___block_invoke;
  aBlock[3] = &__block_descriptor_42_e5_v8__0l;
  compactCopy2 = compact;
  aBlock[4] = self;
  reloadCopy = reload;
  v6 = _Block_copy(aBlock);
  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v7 preferencesActions];
  compactAssistantBarPersistentLocation = [preferencesActions compactAssistantBarPersistentLocation];

  v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v10 visualModeManager];
  if (![visualModeManager useVisualModeWindowed])
  {

    goto LABEL_5;
  }

  if (((compactAssistantBarPersistentLocation & 4) == 0) != compactCopy)
  {
LABEL_5:
    v6[2](v6);
    goto LABEL_6;
  }

  v12 = [self inputWindowControllerForApplication:compactCopy];
  v13 = [self inputWindowControllerForApplication:compactCopy ^ 1];
  v14 = +[UIInputViewSetPlacementOffScreenDown placement];
  [v12 setPlacement:v14 completion:&__block_literal_global_255_1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__UIAssistantBarButtonItemProvider_setAssistantBarCompact_forceReload___block_invoke_3;
  v15[3] = &unk_1E70F0F78;
  v16 = v6;
  [v13 setPlacement:v14 completion:v15];

LABEL_6:
}

void __71__UIAssistantBarButtonItemProvider_setAssistantBarCompact_forceReload___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = [v4 compactAssistantBarPersistentLocation] & 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!v2)
  {
    v6 = 0;
  }

  [v4 setCompactAssistantBarPersistentLocation:v5 | v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [*(a1 + 32) inputWindowController];
  v8 = [v7 hosting];
  v9 = [v8 allHostingItems];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a1 + 40);
        v15 = [*(*(&v18 + 1) + 8 * v13) flickingAssistantViewSupport];
        [v15 setCompact:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = +[UIKeyboardImpl activeInstance];
  [v16 updateAssistantView];

  if (*(a1 + 41) == 1)
  {
    v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v17 reloadPlacement];
  }
}

+ (void)dismissFloatingKeyboard
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v7 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v7 remoteTextInputPartner];
    [remoteTextInputPartner forwardKeyboardOperation:a2 object:0];
  }

  else
  {
    PKTextInputInteractionClass = getPKTextInputInteractionClass();
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v5 scene];
    v7 = [PKTextInputInteractionClass interactionForScene:scene];

    [v7 dismissFloatingKeyboard];
  }
}

+ (void)presentFloatingKeyboard
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v9 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v9 remoteTextInputPartner];
    [remoteTextInputPartner forwardKeyboardOperation:a2 object:0];
  }

  else
  {
    PKTextInputInteractionClass = getPKTextInputInteractionClass();
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v5 scene];
    v9 = [PKTextInputInteractionClass interactionForScene:scene];

    if ([v9 isFloatingKeyboardVisible])
    {
      [v9 dismissFloatingKeyboard];
    }

    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v7 systemInputAssistantViewController];
    remoteTextInputPartner = [systemInputAssistantViewController view];

    if (objc_opt_respondsToSelector() & 1) != 0 && [remoteTextInputPartner _textInputSource] == 3 && (objc_opt_respondsToSelector())
    {
      [remoteTextInputPartner set_textInputSource:0];
    }

    [v9 presentFloatingKeyboard];
  }
}

+ (BOOL)isFloatingKeyboardVisible
{
  if (+[UIKeyboard isKeyboardProcess])
  {

    return +[UIKeyboardImpl isFloatingForced];
  }

  else
  {
    PKTextInputInteractionClass = getPKTextInputInteractionClass();
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v4 scene];
    v6 = [PKTextInputInteractionClass interactionForScene:scene];

    LOBYTE(v4) = [v6 isFloatingKeyboardVisible];
    return v4;
  }
}

+ (id)languageIndicatorMenu:(BOOL)menu
{
  menuCopy = menu;
  v65 = *MEMORY[0x1E69E9840];
  if ([self _isScribbleButtonsVisible])
  {
    PKTextInputInteractionClass = getPKTextInputInteractionClass();
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v6 scene];
    v8 = [PKTextInputInteractionClass interactionForScene:scene];

    v51 = v8;
    enabledLanguageIdentifiers = [v8 enabledLanguageIdentifiers];
    if (enabledLanguageIdentifiers)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v51 = 0;
  }

  enabledLanguageIdentifiers = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
LABEL_6:
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(enabledLanguageIdentifiers, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = enabledLanguageIdentifiers;
  v13 = [v12 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v59;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v59 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [self actionForInputMode:*(*(&v58 + 1) + 8 * i)];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v14);
  }

  if ([self _isEmojiButtonVisible])
  {
    v18 = _UINSLocalizedStringWithDefaultValue(@"Show Emoji", @"Show Emoji");
    v19 = [self configuredSymbolImageWithName:@"face.grinning" size:22.0];
    v20 = [UIAction actionWithTitle:v18 image:v19 identifier:@"emoji" handler:&__block_literal_global_271_1];
    [v10 addObject:v20];
  }

  if ([self _isScribbleButtonsVisible])
  {
    if ([self isFloatingKeyboardVisible])
    {
      v21 = _UINSLocalizedStringWithDefaultValue(@"Hide Keyboard", @"Hide Keyboard");
      v22 = [self configuredSymbolImageWithName:@"keyboard" size:22.0];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_3;
      v57[3] = &__block_descriptor_40_e18_v16__0__UIAction_8l;
      v57[4] = self;
      v23 = v57;
    }

    else
    {
      v21 = _UINSLocalizedStringWithDefaultValue(@"Show Keyboard", @"Show Keyboard");
      v22 = [self configuredSymbolImageWithName:@"keyboard" size:22.0];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_4;
      v56[3] = &__block_descriptor_40_e18_v16__0__UIAction_8l;
      v56[4] = self;
      v23 = v56;
    }

    goto LABEL_23;
  }

  if ([self _isShowKeyboardButtonVisible])
  {
    [self dismissFloatingKeyboardFromPencilKitIfNeeded];
    v21 = _UINSLocalizedStringWithDefaultValue(@"Show Keyboard", @"Show Keyboard");
    v22 = [self configuredSymbolImageWithName:@"keyboard" size:22.0];
    v23 = &__block_literal_global_279_0;
LABEL_23:
    v24 = [UIAction actionWithTitle:v21 image:v22 identifier:@"keyboard" handler:v23];
    [v10 addObject:v24];
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if (![self _isMinimizeAssistantBarButtonVisible])
    {
      goto LABEL_33;
    }

    if (menuCopy)
    {
      v25 = _UINSLocalizedStringWithDefaultValue(@"Expand", @"Expand");
      v26 = [self configuredSymbolImageWithName:@"arrow.up.left.and.arrow.down.right" size:22.0];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_6;
      v55[3] = &__block_descriptor_40_e18_v16__0__UIAction_8l;
      v55[4] = self;
      v27 = @"minimize";
      v28 = v55;
    }

    else
    {
      v25 = _UINSLocalizedStringWithDefaultValue(@"Minimize", @"Minimize");
      v26 = [self configuredSymbolImageWithName:@"arrow.down.right.and.arrow.up.left" size:22.0];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_7;
      v54[3] = &__block_descriptor_40_e18_v16__0__UIAction_8l;
      v54[4] = self;
      v27 = @"minimize";
      v28 = v54;
    }
  }

  else
  {
    if (![self _isDismissButtonVisible])
    {
      goto LABEL_33;
    }

    v25 = _UINSLocalizedStringWithDefaultValue(@"Dismiss", @"Dismiss");
    v26 = [self configuredSymbolImageWithName:@"keyboard.chevron.compact.down" size:22.0];
    v27 = @"dismiss";
    v28 = &__block_literal_global_303_3;
  }

  v29 = [UIAction actionWithTitle:v25 image:v26 identifier:v27 handler:v28];
  [v10 addObject:v29];

LABEL_33:
  if ([self _isScribbleButtonsVisible])
  {
    v30 = _UINSLocalizedStringWithDefaultValue(@"Pencil Settings…", @"Pencil Settings…");
    v31 = [self configuredSymbolImageWithName:@"gear" size:22.0];
    v32 = &__block_literal_global_314;
  }

  else
  {
    if (!+[UIInputSwitcherView canShowKeyboardSettings])
    {
      goto LABEL_38;
    }

    v30 = _UINSLocalizedStringWithDefaultValue(@"Keyboard Settings…", @"Keyboard Settings…");
    v31 = [self configuredSymbolImageWithName:@"gear" size:22.0];
    v32 = &__block_literal_global_323_1;
  }

  v33 = [UIAction actionWithTitle:v30 image:v31 identifier:@"setting" handler:v32];
  [v10 addObject:v33];

LABEL_38:
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if ([v11 count] >= 2)
  {
    v35 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"keyboards" options:1 children:v11];
    [v34 addObject:v35];
  }

  v36 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"action" options:1 children:v10];
  [v34 addObject:v36];
  if (os_variant_has_internal_diagnostics())
  {
    if ([self _isScribbleButtonsVisible])
    {
      v49 = _UINSLocalizedStringWithDefaultValue(@"Report a Problem…", @"Report a Problem…");
      v39 = [self configuredSymbolImageWithName:@"ladybug" size:22.0];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_11;
      v52[3] = &unk_1E70F4708;
      v53 = v51;
      v40 = [UIAction actionWithTitle:v49 image:v39 identifier:@"pencilProblemReporter" handler:v52];
      v63 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      v42 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"internal" options:1 children:v41];
      [v34 addObject:v42];

      v43 = v53;
    }

    else
    {
      v44 = TIGetTypoTrackerButtonValue_0();
      bOOLValue = [v44 BOOLValue];

      if (!bOOLValue)
      {
        goto LABEL_41;
      }

      v43 = _UINSLocalizedStringWithDefaultValue(@"Keyboard Feedback…", @"Keyboard Feedback…");
      v50 = [self configuredSymbolImageWithName:@"ant" size:22.0];
      v46 = [UIAction actionWithTitle:v43 image:v50 identifier:@"typotracker" handler:&__block_literal_global_356_2];
      v62 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
      v48 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"internal" options:1 children:v47];
      [v34 addObject:v48];
    }
  }

LABEL_41:
  v37 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"action" options:1 children:v34];

  return v37;
}

void __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_2()
{
  v0 = +[UIKeyboardImpl sharedInstance];
  [v0 presentEmojiPopoverViaTrigger:@"ucb" completion:0];
}

void __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_5()
{
  v3 = +[UIKeyboardImpl activeInstance];
  v0 = [v3 delegateAsResponder];
  v1 = [v0 _suppressSoftwareKeyboard];

  if (v1)
  {
    v2 = [v3 delegateAsResponder];
    [v2 _setSuppressSoftwareKeyboard:0];
  }

  else if ([v3 isMinimized])
  {
    [v3 showKeyboardWithoutSuppressionPolicy];
  }
}

void __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_8()
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([v2 isMinimized])
  {
    v0 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v0 setHideSystemInputAssistantView:1];

    v1 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v1 minimize];
  }
}

uint64_t __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_9()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x1E69D9560];

    return [v1 performSelector:sel_launchPencilSettings];
  }

  return result;
}

uint64_t __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_11(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 presentProblemReportingView];
  }

  return result;
}

void __58__UIAssistantBarButtonItemProvider_languageIndicatorMenu___block_invoke_12()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 createTypoTrackerReport];
}

+ (id)languageIndicatorImage
{
  if ([self _isScribbleButtonsVisible])
  {
    PKTextInputInteractionClass = getPKTextInputInteractionClass();
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v4 scene];
    v6 = [PKTextInputInteractionClass interactionForScene:scene];

    enabledLanguageIdentifiers = [v6 enabledLanguageIdentifiers];
    v8 = [enabledLanguageIdentifiers count];

    if (v8 >= 2)
    {
      v9 = +[UIKeyboardInputModeController sharedInputModeController];
      currentLanguageIdentifier = [v6 currentLanguageIdentifier];
      v11 = [v9 inputModeWithIdentifier:currentLanguageIdentifier];

      indicatorIcon = [v11 indicatorIcon];

      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (UIKeyboardHasMultipleActiveLinguisticNonExtensionInputModes())
  {
    v13 = +[UIKeyboardInputModeController sharedInputModeController];
    v14 = UIKeyboardGetCurrentInputMode();
    v6 = [v13 inputModeWithIdentifier:v14];

    if ([self _isInputModeVisible:v6])
    {
      indicatorIcon = [v6 indicatorIcon];
LABEL_7:

      if (indicatorIcon)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v15 = [objc_opt_class() configuredSymbolImageWithName:@"keyboard.badge.ellipsis" size:22.0];
  [v15 alignmentRectInsets];
  indicatorIcon = [v15 imageWithAlignmentRectInsets:{v16 + 2.0, v17 + 2.5, v18 + -2.0, v19 + -2.5}];

LABEL_11:
  if (+[UIKeyboard usesInputSystemUI])
  {
    v20 = +[UIColor clearColor];
    v21 = [indicatorIcon imageWithTintColor:v20 renderingMode:1];

    indicatorIcon = v21;
  }

  return indicatorIcon;
}

+ (id)languageIndicatorItem:(BOOL)item
{
  itemCopy = item;
  languageIndicatorImage = [self languageIndicatorImage];
  v6 = [UIBarButtonItem alloc];
  v7 = v6;
  if (itemCopy)
  {
    v8 = [UIAction actionWithTitle:&stru_1EFB14550 image:languageIndicatorImage identifier:0 handler:&__block_literal_global_359_2];
    v9 = [(UIBarButtonItem *)v7 initWithPrimaryAction:v8];
  }

  else
  {
    v9 = [(UIBarButtonItem *)v6 initWithImage:languageIndicatorImage menu:0];
  }

  v10 = _UINSLocalizedStringWithDefaultValue(@"Keyboard", @"Keyboard");
  [(UIBarButtonItem *)v9 setTitle:v10];

  [(UIBarItem *)v9 setTag:1735287116];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorItem___block_invoke_2;
  v13[3] = &__block_descriptor_41_e28___UIMenu_24__0_8__NSArray_16l;
  v13[4] = self;
  v14 = itemCopy;
  [(UIBarButtonItem *)v9 _setSecondaryActionsProvider:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__UIAssistantBarButtonItemProvider_languageIndicatorItem___block_invoke_3;
  v12[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
  v12[4] = self;
  [(UIBarButtonItem *)v9 _setAutoValidationHandler:v12];
  [(UIBarButtonItem *)v9 setIsKeyboardItem:1];

  return v9;
}

void __58__UIAssistantBarButtonItemProvider_languageIndicatorItem___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setHidden:{objc_msgSend(*(a1 + 32), "isKeyboardGroupVisible") ^ 1}];
  if ([*(a1 + 32) _isKeyboardItemEnabled])
  {
    v3 = +[UIKeyboard usesInputSystemUI]^ 1;
  }

  else
  {
    v3 = 0;
  }

  [v4 setEnabled:v3];
}

+ (id)dictationActionForInputMode:(id)mode inCurrentInputMode:(id)inputMode
{
  modeCopy = mode;
  inputModeCopy = inputMode;
  v7 = +[UIKeyboardInputMode dictationInputMode];
  v8 = [v7 indicatorIconForDictationLanguage:modeCopy scaleFactor:1.0];

  v9 = UIKeyboardLocalizedDictationDisplayName(modeCopy);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__UIAssistantBarButtonItemProvider_dictationActionForInputMode_inCurrentInputMode___block_invoke;
  v13[3] = &unk_1E70F4708;
  v10 = modeCopy;
  v14 = v10;
  v11 = [UIAction actionWithTitle:v9 image:v8 identifier:v10 handler:v13];

  LODWORD(v9) = [v10 isEqualToString:inputModeCopy];
  if (v9)
  {
    [v11 setState:1];
  }

  return v11;
}

void __83__UIAssistantBarButtonItemProvider_dictationActionForInputMode_inCurrentInputMode___block_invoke(uint64_t a1)
{
  v2 = +[UIDictationController sharedInstance];
  [v2 setReasonType:12];

  v3 = +[UIDictationController sharedInstance];
  [v3 switchToDictationLanguage:*(a1 + 32)];

  v4 = +[UIDictationView sharedInstance];
  [v4 setSwitchingLanguage:0];
}

+ (id)dictationMenu
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  enabledDictationLanguages = [v3 enabledDictationLanguages];

  if ([enabledDictationLanguages count] >= 2)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(enabledDictationLanguages, "count")}];
    v7 = +[UIKeyboardImpl activeInstance];
    activeDictationLanguage = [v7 activeDictationLanguage];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = enabledDictationLanguages;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [self dictationActionForInputMode:*(*(&v29 + 1) + 8 * i) inCurrentInputMode:{activeDictationLanguage, v29}];
          [v6 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v11);
    }

    if (+[UIInputSwitcherView canShowKeyboardSettings])
    {
      v15 = _UILocalizedStringInSystemLanguage(@"Dictation Settings…", @"Dictation Settings…");
      v16 = [self configuredSymbolImageWithName:@"gear" size:22.0];
      v17 = [UIAction actionWithTitle:v15 image:v16 identifier:@"setting" handler:&__block_literal_global_368];
    }

    else
    {
      v17 = 0;
    }

    v18 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"keyboards" options:1 children:v6, v29];
    v36[0] = v18;
    if (v17)
    {
      v35 = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    v20 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"action" options:1 children:v19];
    v36[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];

    if (v17)
    {
    }

    if (os_variant_has_internal_diagnostics())
    {
      v23 = _UILocalizedStringInSystemLanguage(@"Dictation Feedback", @"Dictation Feedback");
      v24 = [self configuredSymbolImageWithName:@"ladybug" size:22.0];
      v25 = [UIAction actionWithTitle:v23 image:v24 identifier:@"report" handler:&__block_literal_global_376];

      v34 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v27 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"report" options:1 children:v26];

      if (v21)
      {
        v28 = [v21 arrayByAddingObject:v27];

        v21 = v28;
      }

      else
      {
        v33 = v27;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      }
    }

    v5 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"action" options:1 children:v21];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __49__UIAssistantBarButtonItemProvider_dictationMenu__block_invoke_2()
{
  v0 = +[UIDictationController sharedInstance];
  [v0 launchDictationFeedbackApp];
}

+ (id)unmodifiableSystemAssistantItem:(int64_t)item
{
  v88[2] = *MEMORY[0x1E69E9840];
  if ((item - 2) > 2)
  {
    compactSystemAssistantItem = objc_alloc_init(UISystemDefaultTextInputAssistantItem);
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v7 = [self barButtonItemForAssistantItemStyle:18 target:compactSystemAssistantItem];
    v70 = [self barButtonItemForAssistantItemStyle:11 target:compactSystemAssistantItem];
    v8 = [self barButtonItemForAssistantItemStyle:12 target:compactSystemAssistantItem forcePlainButton:item == 1];
    v60 = array;
    if (+[UIDictationController isRunning](UIDictationController, "isRunning") && (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || !+[UIKeyboard usesInputSystemUI]))
    {
      v9 = [self barButtonItemForAssistantItemStyle:13 target:compactSystemAssistantItem forcePlainButton:item == 1];

      v72 = v9;
    }

    else
    {
      v72 = v8;
    }

    v71 = [self barButtonItemForAssistantItemStyle:21 target:compactSystemAssistantItem forcePlainButton:item == 1];
    v75 = [self barButtonItemForAssistantItemStyle:22 target:compactSystemAssistantItem];
    v69 = [self barButtonItemForAssistantItemStyle:14 target:compactSystemAssistantItem];
    v68 = [self barButtonItemForAssistantItemStyle:15 target:compactSystemAssistantItem];
    v10 = [self barButtonItemForAssistantItemStyle:10 target:compactSystemAssistantItem];
    v11 = [self barButtonItemForAssistantItemStyle:3 target:compactSystemAssistantItem];
    v12 = [self barButtonItemForAssistantItemStyle:4 target:compactSystemAssistantItem];
    v13 = [UIBarButtonItemGroup alloc];
    v65 = v10;
    v66 = v7;
    v88[0] = v7;
    v88[1] = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
    v67 = [(UIBarButtonItemGroup *)v13 initWithBarButtonItems:v14 representativeItem:0];

    v15 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder = [v15 delegateAsResponder];
    v74 = [delegateAsResponder _assistantBarButtonItemForWritingToolsWithStyle:24];

    v17 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder2 = [v17 delegateAsResponder];
    v73 = [delegateAsResponder2 _assistantBarButtonItemForWritingToolsWithStyle:25];

    v19 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder3 = [v19 delegateAsResponder];
    v21 = [delegateAsResponder3 _assistantBarButtonItemForWritingToolsWithStyle:23];

    v22 = [self barButtonItemForAssistantItemStyle:20 target:compactSystemAssistantItem];
    [v22 setIsKeyboardItem:1];
    [v11 setIsKeyboardItem:1];
    [v12 setIsKeyboardItem:1];
    v23 = [UIBarButtonItemGroup alloc];
    v63 = v12;
    v64 = v11;
    v87[0] = v11;
    v87[1] = v12;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v62 = v22;
    v25 = [(UIBarButtonItemGroup *)v23 initWithBarButtonItems:v24 representativeItem:v22];

    [(UIBarButtonItemGroup *)v25 _setExpandStyle:1];
    [(UIBarButtonItemGroup *)v25 _setShouldAlwaysCollapse:1];
    v26 = v60;
    [v60 addObject:v25];
    v27 = [self barButtonItemForAssistantItemStyle:16 target:compactSystemAssistantItem];
    v28 = v60;
    v76 = v21;
    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      v29 = [self languageIndicatorItem:{0, v60, v27}];
      v30 = [UIBarButtonItemGroup alloc];
      v86 = v29;
      v31 = 1;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
      v33 = [(UIBarButtonItemGroup *)v30 initWithBarButtonItems:v32 representativeItem:0];

      v26 = v28;
      v34 = v67;
    }

    else
    {
      if (item == 1)
      {
        [v27 setIsKeyboardItem:1];
        v35 = [UIBarButtonItemGroup alloc];
        v85[0] = v70;
        v85[1] = v68;
        v85[2] = v69;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v85;
        v38 = 3;
      }

      else
      {
        v35 = [UIBarButtonItemGroup alloc];
        v84[0] = v70;
        v84[1] = v72;
        v84[2] = v68;
        v84[3] = v69;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v84;
        v38 = 4;
      }

      v39 = [v36 arrayWithObjects:v37 count:{v38, v60, v27}];
      v33 = [(UIBarButtonItemGroup *)v35 initWithBarButtonItems:v39 representativeItem:v27];
      v34 = v67;

      [(UIBarButtonItemGroup *)v33 _setExpandStyle:1];
      [(UIBarButtonItemGroup *)v33 _setShouldAlwaysCollapse:1];
      v31 = 0;
    }

    [v26 addObject:v33];
    if (v74)
    {
      v40 = [UIBarButtonItemGroup alloc];
      v83 = v74;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      v42 = [(UIBarButtonItemGroup *)v40 initWithBarButtonItems:v41 representativeItem:0];

      [v28 addObject:v42];
    }

    if (item == 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v31;
    }

    if ((v43 & 1) == 0)
    {
      [array2 addObject:v34];
    }

    [v75 setIsKeyboardItem:1];
    v44 = [UIBarButtonItemGroup alloc];
    v82 = v75;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    v46 = [(UIBarButtonItemGroup *)v44 initWithBarButtonItems:v45 representativeItem:0];

    [array2 addObject:v46];
    if (v73 | v76)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v48 = v47;
      if (v73)
      {
        [v47 addObject:v73];
      }

      if (v76)
      {
        [v48 addObject:?];
      }

      v49 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v48 representativeItem:0];
      [array2 addObject:v49];
    }

    if (item == 1)
    {
      if ([self _isDictationButtonVisible])
      {
        if (+[UIKeyboard usesInputSystemUI])
        {
          image = [v72 image];
          v51 = +[UIColor clearColor];
          v52 = [image imageWithTintColor:v51 renderingMode:1];
          v34 = v67;
          [v72 setImage:v52];
        }

        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __68__UIAssistantBarButtonItemProvider_unmodifiableSystemAssistantItem___block_invoke;
        v79[3] = &__block_descriptor_40_e28___UIMenu_24__0_8__NSArray_16l;
        v79[4] = self;
        [v72 _setSecondaryActionsProvider:v79];
        [v72 setIsKeyboardItem:1];
        [v72 setTag:1944175551];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __68__UIAssistantBarButtonItemProvider_unmodifiableSystemAssistantItem___block_invoke_2;
        v78[3] = &__block_descriptor_40_e25_v16__0__UIBarButtonItem_8l;
        v78[4] = self;
        [v72 _setAutoValidationHandler:v78];
        v53 = [UIBarButtonItemGroup alloc];
        v81 = v72;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
        v55 = [(UIBarButtonItemGroup *)v53 initWithBarButtonItems:v54 representativeItem:0];

        [array2 addObject:v55];
      }

      [v71 setIsKeyboardItem:1];
      v56 = [UIBarButtonItemGroup alloc];
      v80 = v71;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
      v58 = [(UIBarButtonItemGroup *)v56 initWithBarButtonItems:v57 representativeItem:0];

      [array2 addObject:v58];
    }

    [(UISystemDefaultTextInputAssistantItem *)compactSystemAssistantItem setLeadingBarButtonGroups:v28];
    [(UISystemDefaultTextInputAssistantItem *)compactSystemAssistantItem setTrailingBarButtonGroups:array2];
  }

  else
  {
    compactSystemAssistantItem = [self compactSystemAssistantItem];
  }

  return compactSystemAssistantItem;
}

void __68__UIAssistantBarButtonItemProvider_unmodifiableSystemAssistantItem___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) _isKeyboardItemEnabled])
  {
    v3 = +[UIKeyboardInputModeController dictationInputModeIsFunctional];
  }

  else
  {
    v3 = 0;
  }

  [v4 setEnabled:v3];
}

+ (id)compactSystemAssistantItem
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(UISystemDefaultTextInputAssistantItem);
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v4 = [self languageIndicatorItem:1];
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:sel_assistantExpand];
    v18[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v4 _setGestureRecognizers:v6];

    v7 = [UIBarButtonItemGroup alloc];
    v17 = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v9 = [(UIBarButtonItemGroup *)v7 initWithBarButtonItems:v8 representativeItem:0];
  }

  else
  {
    v4 = [self barButtonItemForAssistantItemStyle:16 target:v3];
    v5 = [self barButtonItemForAssistantItemStyle:11 target:v3];
    v8 = [self barButtonItemForAssistantItemStyle:15 target:v3];
    v10 = [self barButtonItemForAssistantItemStyle:14 target:v3];
    [v4 setIsKeyboardItem:1];
    v11 = [UIBarButtonItemGroup alloc];
    v16[0] = v5;
    v16[1] = v8;
    v16[2] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v9 = [(UIBarButtonItemGroup *)v11 initWithBarButtonItems:v12 representativeItem:v4];

    [(UIBarButtonItemGroup *)v9 _setExpandStyle:1];
    [(UIBarButtonItemGroup *)v9 _setShouldAlwaysCollapse:1];
  }

  v15 = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [(UISystemDefaultTextInputAssistantItem *)v3 setLeadingBarButtonGroups:v13];

  [(UISystemDefaultTextInputAssistantItem *)v3 setTrailingBarButtonGroups:MEMORY[0x1E695E0F0]];

  return v3;
}

@end