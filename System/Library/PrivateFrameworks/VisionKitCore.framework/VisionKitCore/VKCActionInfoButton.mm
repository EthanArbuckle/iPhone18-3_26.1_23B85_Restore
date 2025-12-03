@interface VKCActionInfoButton
+ (id)buttonWithImage:(id)image text:(id)text;
- (BOOL)hasAction:(SEL)action;
- (VKCActionInfoButtonDelegate)delegate;
- (id)buttonConfigurationTextAttributesTransformer;
- (id)dataDetectorContext;
- (id)defaultSymbolConfigurationForImage;
- (id)description;
- (id)filledButtonConfiguration;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)translucentButtonConfiguration;
- (id)translucentSelectedButtonConfiguration;
- (int64_t)overrideUserInterfaceStyle;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)performDefaultElementAction;
@end

@implementation VKCActionInfoButton

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  representedElement = [(VKCActionInfoButton *)self representedElement];
  v6 = [v3 stringWithFormat:@"<%@: %p> element: %@", v4, self, representedElement];

  return v6;
}

+ (id)buttonWithImage:(id)image text:(id)text
{
  textCopy = text;
  imageCopy = image;
  v7 = [objc_opt_class() buttonWithType:1];
  [v7 setImage:imageCopy];

  [v7 setText:textCopy];
  [v7 setPreferredBehavioralStyle:1];
  translucentButtonConfiguration = [v7 translucentButtonConfiguration];
  [v7 setConfiguration:translucentButtonConfiguration];

  [v7 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [v7 setShowsLargeContentViewer:1];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [v7 addInteraction:v9];

  [v7 setPointerInteractionEnabled:1];
  [v7 setQuickActionType:2];

  return v7;
}

- (BOOL)hasAction:(SEL)action
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(VKCActionInfoButton *)self allTargets];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(VKCActionInfoButton *)self actionsForTarget:*(*(&v22 + 1) + 8 * i) forControlEvent:64];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (NSSelectorFromString(*(*(&v18 + 1) + 8 * j)) == action)
              {
                v7 = 1;
                goto LABEL_16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)performDefaultElementAction
{
  v25 = *MEMORY[0x1E69E9840];
  representedElement = [(VKCActionInfoButton *)self representedElement];
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Performing default element action: %@", &buf, 0xCu);
  }

  if ([representedElement isTextDataDetector])
  {
    DDContextMenuActionClass_1 = getDDContextMenuActionClass_1();
    scannerResult = [representedElement scannerResult];
    coreResult = [scannerResult coreResult];
    dataDetectorContext = [(VKCActionInfoButton *)self dataDetectorContext];
    v16 = 0;
    v9 = [DDContextMenuActionClass_1 buttonActionsForURL:0 result:coreResult contact:0 icsString:0 context:dataDetectorContext view:self identifier:0 suggestedActions:0 defaultAction:&v16];
    v10 = v16;

    if (v10)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v11 = getDDUIActionClass_softClass_1;
      v20 = getDDUIActionClass_softClass_1;
      if (!getDDUIActionClass_softClass_1)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v22 = __getDDUIActionClass_block_invoke_1;
        v23 = &unk_1E7BE3F48;
        v24 = &v17;
        __getDDUIActionClass_block_invoke_1(&buf);
        v11 = v18[3];
      }

      v12 = v11;
      _Block_object_dispose(&v17, 8);
      if (objc_opt_isKindOfClass())
      {
        [v10 dd_performAction];
      }
    }

    delegate = [(VKCActionInfoButton *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(VKCActionInfoButton *)self delegate];
      [delegate2 actionInfoButtonDidActivatePrimaryAction:self];
    }
  }
}

- (id)dataDetectorContext
{
  representedElement = [(VKCActionInfoButton *)self representedElement];
  scannerResult = [representedElement scannerResult];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allUnfilteredElements = [(VKCActionInfoButton *)self allUnfilteredElements];
  v7 = [allUnfilteredElements vk_compactMap:&__block_literal_global_40];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = getkDataDetectorsAllResultsKeySymbolLoc_ptr_1;
  v26 = getkDataDetectorsAllResultsKeySymbolLoc_ptr_1;
  if (!getkDataDetectorsAllResultsKeySymbolLoc_ptr_1)
  {
    v9 = DataDetectorsUILibrary_5();
    v24[3] = dlsym(v9, "kDataDetectorsAllResultsKey");
    getkDataDetectorsAllResultsKeySymbolLoc_ptr_1 = v24[3];
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    getkDDRVInteractionDidFinishNotification_cold_1();
    goto LABEL_13;
  }

  [v5 vk_setNonNilObject:v7 forKey:*v8];
  representedElement2 = [(VKCActionInfoButton *)self representedElement];
  groupedElementData = [representedElement2 groupedElementData];
  [v5 vk_addEntriesFromNonNilDictionary:groupedElementData];

  representedElement3 = [(VKCActionInfoButton *)self representedElement];
  scannerResult2 = [representedElement3 scannerResult];
  value = [scannerResult2 value];
  v15 = [value length];

  if (!v15)
  {
    goto LABEL_9;
  }

  value2 = [scannerResult value];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v17 = getkDataDetectorsMiddleTextSymbolLoc_ptr_0;
  v26 = getkDataDetectorsMiddleTextSymbolLoc_ptr_0;
  if (!getkDataDetectorsMiddleTextSymbolLoc_ptr_0)
  {
    v18 = DataDetectorsUILibrary_5();
    v24[3] = dlsym(v18, "kDataDetectorsMiddleText");
    getkDataDetectorsMiddleTextSymbolLoc_ptr_0 = v24[3];
    v17 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v17)
  {
LABEL_13:
    v22 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v22);
  }

  [v5 setObject:value2 forKeyedSubscript:*v17];

LABEL_9:
  DDContextMenuActionClass_1 = getDDContextMenuActionClass_1();
  [(VKCActionInfoButton *)self bounds];
  v20 = [DDContextMenuActionClass_1 updateContext:v5 withSourceRect:?];

  return v20;
}

id __42__VKCActionInfoButton_dataDetectorContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 scannerResult];
  v3 = [v2 coreResult];

  return v3;
}

- (id)buttonConfigurationTextAttributesTransformer
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__VKCActionInfoButton_buttonConfigurationTextAttributesTransformer__block_invoke;
  v4[3] = &unk_1E7BE7540;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

id __67__VKCActionInfoButton_buttonConfigurationTextAttributesTransformer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 mutableCopy];
    v6 = MEMORY[0x1E69DB878];
    v7 = *MEMORY[0x1E69DDD80];
    v8 = [WeakRetained traitCollection];
    v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];

    if (vk_isSeedBuild())
    {
      v10 = [WeakRetained traitCollection];
      v11 = [v10 vk_isOptimizedForMac];

      v12 = MEMORY[0x1E69DB878];
      if (v11)
      {
        v13 = 13.0;
      }

      else
      {
        [v9 pointSize];
        v13 = v14 * 1.2987013;
      }

      v15 = [v12 systemFontOfSize:v13];

      v9 = v15;
    }

    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)filledButtonConfiguration
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  image = [(VKCActionInfoButton *)self image];
  [filledButtonConfiguration setImage:image];

  text = [(VKCActionInfoButton *)self text];
  [filledButtonConfiguration setTitle:text];

  [(VKCActionInfoButton *)self setTintAdjustmentMode:1];
  buttonConfigurationTextAttributesTransformer = [(VKCActionInfoButton *)self buttonConfigurationTextAttributesTransformer];
  [filledButtonConfiguration setTitleTextAttributesTransformer:buttonConfigurationTextAttributesTransformer];

  [filledButtonConfiguration setTitleLineBreakMode:4];
  [filledButtonConfiguration setImagePadding:5.0];
  [filledButtonConfiguration setCornerStyle:4];
  defaultSymbolConfigurationForImage = [(VKCActionInfoButton *)self defaultSymbolConfigurationForImage];
  [filledButtonConfiguration setPreferredSymbolConfigurationForImage:defaultSymbolConfigurationForImage];

  return filledButtonConfiguration;
}

- (id)translucentButtonConfiguration
{
  v3 = vk_solariumEnabled(self, a2);
  if (v3)
  {
    [MEMORY[0x1E69DC740] _glassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }
  v4 = ;
  image = [(VKCActionInfoButton *)self image];
  [v4 setImage:image];

  text = [(VKCActionInfoButton *)self text];
  [v4 setTitle:text];

  [(VKCActionInfoButton *)self setTintAdjustmentMode:1];
  buttonConfigurationTextAttributesTransformer = [(VKCActionInfoButton *)self buttonConfigurationTextAttributesTransformer];
  [v4 setTitleTextAttributesTransformer:buttonConfigurationTextAttributesTransformer];

  [v4 setTitleLineBreakMode:4];
  [v4 setImagePadding:5.0];
  [v4 setCornerStyle:4];
  if ((v3 & 1) == 0)
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v9 = [MEMORY[0x1E69DC730] effectWithStyle:17];
    [clearConfiguration setVisualEffect:v9];

    [v4 setBackground:clearConfiguration];
  }

  defaultSymbolConfigurationForImage = [(VKCActionInfoButton *)self defaultSymbolConfigurationForImage];
  [v4 setPreferredSymbolConfigurationForImage:defaultSymbolConfigurationForImage];

  if (([(VKCActionInfoButton *)self isHighlighted]& 1) != 0)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v11 = ;
  if (v3)
  {
    [v4 setBaseForegroundColor:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v13 = [v11 resolvedColorWithTraitCollection:v12];
    [v4 setBaseForegroundColor:v13];
  }

  return v4;
}

- (id)defaultSymbolConfigurationForImage
{
  if (vk_isSeedBuild())
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = MEMORY[0x1E69DCAD8];
  v4 = *MEMORY[0x1E69DDD80];

  return [v3 configurationWithTextStyle:v4 scale:v2];
}

- (int64_t)overrideUserInterfaceStyle
{
  if (vk_solariumEnabled(self, a2))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)translucentSelectedButtonConfiguration
{
  v3 = vk_solariumEnabled(self, a2);
  if (v3)
  {
    [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DC740] filledButtonConfiguration];
  }
  v4 = ;
  image = [(VKCActionInfoButton *)self image];
  [v4 setImage:image];

  text = [(VKCActionInfoButton *)self text];
  [v4 setTitle:text];

  [(VKCActionInfoButton *)self setTintAdjustmentMode:1];
  buttonConfigurationTextAttributesTransformer = [(VKCActionInfoButton *)self buttonConfigurationTextAttributesTransformer];
  [v4 setTitleTextAttributesTransformer:buttonConfigurationTextAttributesTransformer];

  [v4 setTitleLineBreakMode:4];
  [v4 setImagePadding:5.0];
  [v4 setCornerStyle:4];
  if (v3)
  {
    tintColor = [(VKCActionInfoButton *)self tintColor];
    v9 = [tintColor colorWithAlphaComponent:0.85];
    [(VKCActionInfoButton *)self setTintColor:v9];
  }

  else
  {
    tintColor = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:12];
    [tintColor setVisualEffect:v10];

    tintColor2 = [(VKCActionInfoButton *)self tintColor];
    v12 = [tintColor2 colorWithAlphaComponent:0.85];
    [tintColor setBackgroundColor:v12];

    [v4 setBackground:tintColor];
  }

  if (([(VKCActionInfoButton *)self isHighlighted]& 1) != 0)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v13 = ;
  if (v3)
  {
    [v4 setBaseForegroundColor:v13];
  }

  else
  {
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v15 = [v13 resolvedColorWithTraitCollection:v14];
    [v4 setBaseForegroundColor:v15];
  }

  defaultSymbolConfigurationForImage = [(VKCActionInfoButton *)self defaultSymbolConfigurationForImage];
  [v4 setPreferredSymbolConfigurationForImage:defaultSymbolConfigurationForImage];

  return v4;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = MEMORY[0x1E69DC728];
  [(VKCActionInfoButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  layer = [(VKCActionInfoButton *)self layer];
  [layer cornerRadius];
  v17 = [v6 bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, v16}];
  [v5 setVisiblePath:v17];

  v18 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v19 = [MEMORY[0x1E69DCDB8] effectWithPreview:v18];
  v20 = [MEMORY[0x1E69DCDD0] styleWithEffect:v19 shape:0];

  return v20;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v18 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Displaying menu for quick action: %@", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = VKCActionInfoButton;
  [(VKCActionInfoButton *)&v15 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];

  delegate = [(VKCActionInfoButton *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(VKCActionInfoButton *)self delegate];
    [delegate2 willDisplayMenuForActionInfoButton:self];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v18 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Hiding menu for quick action: %@", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = VKCActionInfoButton;
  [(VKCActionInfoButton *)&v15 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];

  delegate = [(VKCActionInfoButton *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(VKCActionInfoButton *)self delegate];
    [delegate2 willHideMenuForActionInfoButton:self];
  }
}

- (VKCActionInfoButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end