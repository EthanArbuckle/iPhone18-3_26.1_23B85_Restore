@interface VKCActionInfoButton
+ (id)buttonWithImage:(id)a3 text:(id)a4;
- (BOOL)hasAction:(SEL)a3;
- (VKCActionInfoButtonDelegate)delegate;
- (id)buttonConfigurationTextAttributesTransformer;
- (id)dataDetectorContext;
- (id)defaultSymbolConfigurationForImage;
- (id)description;
- (id)filledButtonConfiguration;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)translucentButtonConfiguration;
- (id)translucentSelectedButtonConfiguration;
- (int64_t)overrideUserInterfaceStyle;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)performDefaultElementAction;
@end

@implementation VKCActionInfoButton

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(VKCActionInfoButton *)self representedElement];
  v6 = [v3 stringWithFormat:@"<%@: %p> element: %@", v4, self, v5];

  return v6;
}

+ (id)buttonWithImage:(id)a3 text:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() buttonWithType:1];
  [v7 setImage:v6];

  [v7 setText:v5];
  [v7 setPreferredBehavioralStyle:1];
  v8 = [v7 translucentButtonConfiguration];
  [v7 setConfiguration:v8];

  [v7 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [v7 setShowsLargeContentViewer:1];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [v7 addInteraction:v9];

  [v7 setPointerInteractionEnabled:1];
  [v7 setQuickActionType:2];

  return v7;
}

- (BOOL)hasAction:(SEL)a3
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

              if (NSSelectorFromString(*(*(&v18 + 1) + 8 * j)) == a3)
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
  v3 = [(VKCActionInfoButton *)self representedElement];
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Performing default element action: %@", &buf, 0xCu);
  }

  if ([v3 isTextDataDetector])
  {
    DDContextMenuActionClass_1 = getDDContextMenuActionClass_1();
    v6 = [v3 scannerResult];
    v7 = [v6 coreResult];
    v8 = [(VKCActionInfoButton *)self dataDetectorContext];
    v16 = 0;
    v9 = [DDContextMenuActionClass_1 buttonActionsForURL:0 result:v7 contact:0 icsString:0 context:v8 view:self identifier:0 suggestedActions:0 defaultAction:&v16];
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

    v13 = [(VKCActionInfoButton *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(VKCActionInfoButton *)self delegate];
      [v15 actionInfoButtonDidActivatePrimaryAction:self];
    }
  }
}

- (id)dataDetectorContext
{
  v3 = [(VKCActionInfoButton *)self representedElement];
  v4 = [v3 scannerResult];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(VKCActionInfoButton *)self allUnfilteredElements];
  v7 = [v6 vk_compactMap:&__block_literal_global_40];

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
  v10 = [(VKCActionInfoButton *)self representedElement];
  v11 = [v10 groupedElementData];
  [v5 vk_addEntriesFromNonNilDictionary:v11];

  v12 = [(VKCActionInfoButton *)self representedElement];
  v13 = [v12 scannerResult];
  v14 = [v13 value];
  v15 = [v14 length];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v4 value];
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

  [v5 setObject:v16 forKeyedSubscript:*v17];

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
  v3 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v4 = [(VKCActionInfoButton *)self image];
  [v3 setImage:v4];

  v5 = [(VKCActionInfoButton *)self text];
  [v3 setTitle:v5];

  [(VKCActionInfoButton *)self setTintAdjustmentMode:1];
  v6 = [(VKCActionInfoButton *)self buttonConfigurationTextAttributesTransformer];
  [v3 setTitleTextAttributesTransformer:v6];

  [v3 setTitleLineBreakMode:4];
  [v3 setImagePadding:5.0];
  [v3 setCornerStyle:4];
  v7 = [(VKCActionInfoButton *)self defaultSymbolConfigurationForImage];
  [v3 setPreferredSymbolConfigurationForImage:v7];

  return v3;
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
  v5 = [(VKCActionInfoButton *)self image];
  [v4 setImage:v5];

  v6 = [(VKCActionInfoButton *)self text];
  [v4 setTitle:v6];

  [(VKCActionInfoButton *)self setTintAdjustmentMode:1];
  v7 = [(VKCActionInfoButton *)self buttonConfigurationTextAttributesTransformer];
  [v4 setTitleTextAttributesTransformer:v7];

  [v4 setTitleLineBreakMode:4];
  [v4 setImagePadding:5.0];
  [v4 setCornerStyle:4];
  if ((v3 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v9 = [MEMORY[0x1E69DC730] effectWithStyle:17];
    [v8 setVisualEffect:v9];

    [v4 setBackground:v8];
  }

  v10 = [(VKCActionInfoButton *)self defaultSymbolConfigurationForImage];
  [v4 setPreferredSymbolConfigurationForImage:v10];

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
  v5 = [(VKCActionInfoButton *)self image];
  [v4 setImage:v5];

  v6 = [(VKCActionInfoButton *)self text];
  [v4 setTitle:v6];

  [(VKCActionInfoButton *)self setTintAdjustmentMode:1];
  v7 = [(VKCActionInfoButton *)self buttonConfigurationTextAttributesTransformer];
  [v4 setTitleTextAttributesTransformer:v7];

  [v4 setTitleLineBreakMode:4];
  [v4 setImagePadding:5.0];
  [v4 setCornerStyle:4];
  if (v3)
  {
    v8 = [(VKCActionInfoButton *)self tintColor];
    v9 = [v8 colorWithAlphaComponent:0.85];
    [(VKCActionInfoButton *)self setTintColor:v9];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:12];
    [v8 setVisualEffect:v10];

    v11 = [(VKCActionInfoButton *)self tintColor];
    v12 = [v11 colorWithAlphaComponent:0.85];
    [v8 setBackgroundColor:v12];

    [v4 setBackground:v8];
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

  v16 = [(VKCActionInfoButton *)self defaultSymbolConfigurationForImage];
  [v4 setPreferredSymbolConfigurationForImage:v16];

  return v4;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = MEMORY[0x1E69DC728];
  [(VKCActionInfoButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(VKCActionInfoButton *)self layer];
  [v15 cornerRadius];
  v17 = [v6 bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, v16}];
  [v5 setVisiblePath:v17];

  v18 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v19 = [MEMORY[0x1E69DCDB8] effectWithPreview:v18];
  v20 = [MEMORY[0x1E69DCDD0] styleWithEffect:v19 shape:0];

  return v20;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Displaying menu for quick action: %@", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = VKCActionInfoButton;
  [(VKCActionInfoButton *)&v15 contextMenuInteraction:v10 willDisplayMenuForConfiguration:v9 animator:v8];

  v12 = [(VKCActionInfoButton *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(VKCActionInfoButton *)self delegate];
    [v14 willDisplayMenuForActionInfoButton:self];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Hiding menu for quick action: %@", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = VKCActionInfoButton;
  [(VKCActionInfoButton *)&v15 contextMenuInteraction:v10 willEndForConfiguration:v9 animator:v8];

  v12 = [(VKCActionInfoButton *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(VKCActionInfoButton *)self delegate];
    [v14 willHideMenuForActionInfoButton:self];
  }
}

- (VKCActionInfoButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end