@interface SearchUIHomeScreenAppIconView
+ (id)cacheForVariant:(unint64_t)a3;
+ (id)neverSuggestAppShortcutItemWithLocalizedName:(id)a3;
- (BOOL)currentIconIsPlaceholder;
- (CGRect)highlightFrame;
- (CGSize)maxLabelSize;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUIHomeScreenAppIconView)init;
- (SearchUIHomeScreenEngagementDelegate)engagementDelegate;
- (double)focusHighlightCornerRadius;
- (id)contextMenuDelegateForIconView:(id)a3;
- (id)keyCommands;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_launchWithModifierFlags:(int64_t)a3;
- (void)_updateLabel;
- (void)didEngageWithTriggerEvent:(unint64_t)a3 destination:(unint64_t)a4;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)hidePlaceholder:(BOOL)a3;
- (void)iconImageViewDidChangeContents:(id)a3 forIcon:(id)a4;
- (void)iconTapped:(id)a3;
- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)removePlaceholderAndSetShadowAnimated:(BOOL)a3;
- (void)setAddRoundedKeyboardHighlight:(BOOL)a3;
- (void)setFocusHighlightFrame;
- (void)setVariant:(unint64_t)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)updateCorners;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIHomeScreenAppIconView

- (SearchUIHomeScreenAppIconView)init
{
  v8.receiver = self;
  v8.super_class = SearchUIHomeScreenAppIconView;
  v2 = [(SearchUIHomeScreenAppIconView *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
    [(SearchUIHomeScreenAppIconView *)v2 setPlaceholderView:v3];

    if (+[SearchUIUtilities isIpad])
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    [(SearchUIHomeScreenAppIconView *)v2 setVariant:v4];
    v5 = [(SearchUIHomeScreenAppIconView *)v2 placeholderView];
    [(SearchUIHomeScreenAppIconView *)v2 insertSubview:v5 atIndex:0];

    [(SearchUIHomeScreenAppIconView *)v2 setUsesSceneUserInterfaceStyleForImage:1];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x1E69DEA38] object:0];
  }

  return v2;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(SearchUIHomeScreenAppIconView *)self tlk_updateWithCurrentAppearance];
}

- (void)_updateLabel
{
  v3 = [(SearchUIHomeScreenAppIconView *)self window];

  if (v3)
  {
    [(SearchUIHomeScreenAppIconView *)self setLabelNeedsUpdateOnMovingToWindow:0];
    v4.receiver = self;
    v4.super_class = SearchUIHomeScreenAppIconView;
    [(SearchUIHomeScreenAppIconView *)&v4 _updateLabel];
  }

  else
  {

    [(SearchUIHomeScreenAppIconView *)self setLabelNeedsUpdateOnMovingToWindow:1];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v21 layoutSubviews];
  [(SearchUIHomeScreenAppIconView *)self iconImageFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(SearchUIHomeScreenAppIconView *)self iconImageFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SearchUIHomeScreenAppIconView *)self tintView];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(SearchUIHomeScreenAppIconView *)self setFocusHighlightFrame];
}

- (void)setFocusHighlightFrame
{
  v3 = [(SearchUIHomeScreenAppIconView *)self layer];
  [v3 setAllowsGroupBlending:0];

  [(SearchUIHomeScreenAppIconView *)self highlightFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v15 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
  v13 = [v15 superview];
  v14 = [v13 layer];
  [v14 setAllowsGroupBlending:0];
}

- (CGRect)highlightFrame
{
  +[SearchUIAutoLayout selectionBorderWidth];
  v4 = v3;
  [(SearchUIHomeScreenAppIconView *)self iconImageFrame];
  v6 = v5 - v4;
  v8 = v7 - v4;
  v10 = v9 + v4 * 2.0;
  v12 = v11 + v4 * 2.0;
  result.size.height = v10;
  result.size.width = v12;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v6 didMoveToWindow];
  [(SearchUIHomeScreenAppIconView *)self tlk_updateWithCurrentAppearance];
  v3 = [(SearchUIHomeScreenAppIconView *)self window];
  if (v3)
  {
    v4 = v3;
    v5 = [(SearchUIHomeScreenAppIconView *)self labelNeedsUpdateOnMovingToWindow];

    if (v5)
    {
      [(SearchUIHomeScreenAppIconView *)self _updateLabel];
    }
  }
}

- (BOOL)currentIconIsPlaceholder
{
  v3 = [(SearchUIHomeScreenAppIconView *)self icon];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SearchUIHomeScreenAppIconView *)self icon];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 leafIdentifier];
  v6 = [v5 isEqualToString:SearchUIPlaceholderIconIdentifier];

  return v6;
}

+ (id)cacheForVariant:(unint64_t)a3
{
  if (cacheForVariant__onceToken != -1)
  {
    +[SearchUIHomeScreenAppIconView cacheForVariant:];
  }

  v4 = cacheForVariant__iconCache;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    [SearchUIAppIconImage sizeForVariant:a3];
    v8 = v7;
    v10 = v9;
    [MEMORY[0x1E69D9240] appIconCornerRadiusRatio];
    v12 = v8 * v11;
    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v17 = [@"SearchUIIconImageCache" stringByAppendingFormat:@"-%@", v16];

    v6 = [(SBHIconImageCache *)[SearchUIIconImageCache alloc] initWithName:v17 iconImageInfo:v8, v10, v15, v12];
    v18 = cacheForVariant__iconCache;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v18 setObject:v6 forKey:v19];
  }

  return v6;
}

uint64_t __49__SearchUIHomeScreenAppIconView_cacheForVariant___block_invoke()
{
  cacheForVariant__iconCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)setAddRoundedKeyboardHighlight:(BOOL)a3
{
  if (self->_addRoundedKeyboardHighlight != a3)
  {
    v4 = a3;
    self->_addRoundedKeyboardHighlight = a3;
    v6 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];

    if (!v6 && v4)
    {
      v7 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:{+[SearchUIFocusStyleUtilities secondaryHaloProminence](SearchUIFocusStyleUtilities, "secondaryHaloProminence")}];
      [(SearchUIHomeScreenAppIconView *)self setFocusHighlightView:v7];

      v8 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
      [(SearchUIHomeScreenAppIconView *)self insertSubview:v8 atIndex:0];
    }

    [(SearchUIHomeScreenAppIconView *)self focusHighlightCornerRadius];
    v10 = v9;
    v11 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
    [v11 _setContinuousCornerRadius:v10];

    [(SearchUIHomeScreenAppIconView *)self setFocusHighlightFrame];
    v12 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
    [v12 setHidden:!v4];
  }
}

- (double)focusHighlightCornerRadius
{
  [MEMORY[0x1E69D9240] appIconCornerRadiusRatio];
  v4 = v3;
  [(SearchUIHomeScreenAppIconView *)self iconImageFrame];
  Width = CGRectGetWidth(v8);
  +[SearchUIAutoLayout selectionBorderWidth];
  return v6 + v4 * Width;
}

- (id)keyCommands
{
  v6.receiver = self;
  v6.super_class = SearchUIHomeScreenAppIconView;
  v2 = [(SearchUIHomeScreenAppIconView *)&v6 keyCommands];
  if (!v2)
  {
    v2 = objc_opt_new();
  }

  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x20000 action:sel_launchWithShift];
  [v3 setWantsPriorityOverSystemBehavior:1];
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v15 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  if (v7 != self)
  {
    goto LABEL_4;
  }

  v8 = [(SearchUIHomeScreenAppIconView *)self engagementDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v7 = [(SearchUIHomeScreenAppIconView *)self rowModel];
    v10 = [(SearchUIHomeScreenAppIconView *)self engagementDelegate];
    v11 = [(SearchUIHomeScreenAppIconView *)v7 identifyingResult];
    v12 = [(SearchUIHomeScreenAppIconView *)v7 cardSection];
    [v10 didUpdateKeyboardFocusToResult:v11 cardSection:v12];

LABEL_4:
  }

  v13 = [MEMORY[0x1E69DCC88] mainSystem];
  [v13 setNeedsRebuild];

  v14 = [v6 nextFocusedView];
  [(SearchUIHomeScreenAppIconView *)self setAddRoundedKeyboardHighlight:v14 == self];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v24 tlk_updateForAppearance:v4];
  v5 = MEMORY[0x1E69DD5B8];
  if ([v4 isDark])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [v5 sharedInstanceForStyle:v6];
  v8 = objc_alloc(MEMORY[0x1E69DD5B8]);
  v9 = [v7 style];
  v10 = [v7 primaryColor];
  v11 = [v7 secondaryColor];
  v12 = [MEMORY[0x1E69DC888] clearColor];
  v13 = [v8 initWithStyle:v9 primaryColor:v10 secondaryColor:v11 shadowColor:v12];

  v14 = [MEMORY[0x1E69D40C8] legibilitySettingsForLegibilitySettings:v13];
  [(SearchUIHomeScreenAppIconView *)self setLegibilitySettings:v14];

  if (([v4 isDark] & 1) == 0)
  {
    v15 = [(SearchUIHomeScreenAppIconView *)self tintView];

    if (!v15)
    {
      v16 = objc_opt_new();
      [(SearchUIHomeScreenAppIconView *)self setTintView:v16];

      v17 = [MEMORY[0x1E69DC888] blackColor];
      v18 = [v17 colorWithAlphaComponent:0.2];
      v19 = [(SearchUIHomeScreenAppIconView *)self tintView];
      [v19 setBackgroundColor:v18];

      v20 = [(SearchUIHomeScreenAppIconView *)self tintView];
      v21 = [(SearchUIHomeScreenAppIconView *)self placeholderView];
      [(SearchUIHomeScreenAppIconView *)self insertSubview:v20 aboveSubview:v21];

      [(SearchUIHomeScreenAppIconView *)self updateCorners];
    }
  }

  v22 = [v4 isDark];
  v23 = [(SearchUIHomeScreenAppIconView *)self tintView];
  [v23 setHidden:v22];
}

- (void)setVariant:(unint64_t)a3
{
  if (self->_variant != a3)
  {
    self->_variant = a3;
    v5 = [objc_opt_class() cacheForVariant:a3];
    [(SearchUIHomeScreenAppIconView *)self setIconImageCache:v5];

    v6 = [(SearchUIHomeScreenAppIconView *)self rowModel];

    if (v6)
    {
      v7 = [(SearchUIHomeScreenAppIconView *)self rowModel];
      [(SearchUIHomeScreenAppIconView *)self updateWithRowModel:v7];
    }

    [(SearchUIHomeScreenAppIconView *)self updateCorners];
  }
}

- (void)updateCorners
{
  v3 = [(SearchUIHomeScreenAppIconView *)self iconImageCache];
  [v3 iconImageInfo];
  v5 = v4;

  v6 = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  [v6 _setContinuousCornerRadius:v5];

  v7 = [(SearchUIHomeScreenAppIconView *)self tintView];
  [v7 _setContinuousCornerRadius:v5];
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  [(SearchUIHomeScreenAppIconView *)self setRowModel:v4];
  v5 = [v4 identifyingResult];
  v6 = [v4 cardSection];
  v7 = [v6 command];

  v8 = [v4 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v4 cardSection];
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  v11 = [v5 sectionBundleIdentifier];
  -[SearchUIHomeScreenAppIconView setIsInSuggestionContext:](self, "setIsInSuggestionContext:", [v11 isEqualToString:@"com.apple.searchd.zkw.apps"]);

  v12 = [v10 applicationBundleIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v5 identifier];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v7 applicationBundleIdentifier];
    }

    v14 = v17;
  }

  v18 = [v5 applicationBundleIdentifier];
  v19 = [SearchUIUtilities bundleIdentifierForApp:0];
  v20 = [v18 isEqualToString:v19];

  v21 = +[SearchUIHomeScreenModel sharedInstance];
  v22 = v21;
  if (v20)
  {
    [v21 clipIconForIdentifier:v14];
  }

  else
  {
    [v21 appIconForApplicationBundleIdentifier:v14];
  }
  v23 = ;

  if (!v23)
  {
    v23 = [[SearchUITemporaryInternalAppsIcon alloc] initWithResult:v5 variant:[(SearchUIHomeScreenAppIconView *)self variant]];
    v24 = SearchUIGeneralLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [(SearchUIHomeScreenAppIconView *)v5 updateWithRowModel:v14, v24];
    }
  }

  [(SBIcon *)v23 setDelegate:self];
  [(SearchUIHomeScreenAppIconView *)self setIcon:v23];
  if (v23)
  {
    v25 = [(SearchUIHomeScreenAppIconView *)self _iconImageView];
    if ([v25 isDisplayingRealImageContents])
    {
    }

    else
    {
      v26 = [(SearchUIHomeScreenAppIconView *)self icon];
      objc_opt_class();
      v27 = objc_opt_isKindOfClass();

      if ((v27 & 1) == 0)
      {
        [(SearchUIHomeScreenAppIconView *)self hidePlaceholder:0];
        goto LABEL_25;
      }
    }

    [(SearchUIHomeScreenAppIconView *)self removePlaceholderAndSetShadowAnimated:0];
  }

LABEL_25:
}

- (void)iconImageViewDidChangeContents:(id)a3 forIcon:(id)a4
{
  v12.receiver = self;
  v12.super_class = SearchUIHomeScreenAppIconView;
  v6 = a4;
  [(SearchUIHomeScreenAppIconView *)&v12 iconImageViewDidChangeContents:a3 forIcon:v6];
  v7 = [(SearchUIHomeScreenAppIconView *)self icon:v12.receiver];

  if (v7 == v6)
  {
    v8 = [(SearchUIHomeScreenAppIconView *)self currentIconIsPlaceholder];
    if (a3)
    {
      if (!v8)
      {
        v9 = [(SearchUIHomeScreenAppIconView *)self placeholderView];
        [v9 alpha];
        v11 = v10;

        if (v11 == 1.0)
        {
          [(SearchUIHomeScreenAppIconView *)self removePlaceholderAndSetShadowAnimated:1];
        }
      }
    }
  }
}

- (void)removePlaceholderAndSetShadowAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUIHomeScreenAppIconView *)self _iconImageView];
  [MEMORY[0x1E69D9248] enableShadow:1 forView:v5];
  v6 = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  [v6 _continuousCornerRadius];
  [v5 _setContinuousCornerRadius:?];

  [(SearchUIHomeScreenAppIconView *)self effectiveScreenScale];
  v8 = v7;
  v9 = [v5 layer];
  [v9 setContentsScale:v8];

  v10 = [v5 layer];
  [v10 setShadowPathIsBounds:1];

  v11 = [v5 layer];
  [v11 setAllowsGroupOpacity:0];

  v12 = [v5 layer];
  [v12 setPunchoutShadow:1];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(SearchUIHomeScreenAppIconView *)self rowModel];
  v15 = [v14 identifyingResult];
  v16 = [v15 title];
  v17 = [v16 text];
  v18 = [v13 stringWithFormat:@"Identifier:AppIconButton, AppName:%@", v17];

  [(SearchUIHomeScreenAppIconView *)self setAccessibilityIdentifier:v18];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__SearchUIHomeScreenAppIconView_removePlaceholderAndSetShadowAnimated___block_invoke;
  v19[3] = &unk_1E85B24C8;
  v19[4] = self;
  [MEMORY[0x1E69D9240] performAnimatableChanges:v19 animated:v3];
}

- (void)hidePlaceholder:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  v6 = v5;
  if (v3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (v3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v5 setAlpha:v7];

  v9 = [(SearchUIHomeScreenAppIconView *)self tintView];
  [v9 setAlpha:v8];

  v10 = [(SearchUIHomeScreenAppIconView *)self _iconImageView];
  [v10 setAlpha:v8];
}

- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4
{
  [(SearchUIHomeScreenAppIconView *)self didEngageWithTriggerEvent:18 destination:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"SearchUIWillInitiateDragHomeScreenIconNotification" object:0];
}

- (void)_launchWithModifierFlags:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SearchUIHomeScreenAppIconView *)self engagementDelegate];

  if (v5)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SearchUIHomeScreenAppIconView *)self icon];
      v8 = [(SearchUIHomeScreenAppIconView *)self rowModel];
      v9 = [v8 identifyingResult];
      v10 = [v9 applicationBundleIdentifier];
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "icon %@, rowModel:%@", &v15, 0x16u);
    }

    v11 = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
    v12 = [SearchUIUtilities environmentForDelegate:v11];

    [v12 setModifierFlags:a3];
    v13 = [(SearchUIHomeScreenAppIconView *)self rowModel];
    v14 = [SearchUICommandHandler handlerForRowModel:v13 environment:v12];
    [v14 executeWithTriggerEvent:2];
  }
}

- (void)didEngageWithTriggerEvent:(unint64_t)a3 destination:(unint64_t)a4
{
  v14 = [(SearchUIHomeScreenAppIconView *)self rowModel];
  v7 = [v14 identifyingResult];
  v8 = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
  v9 = [v14 queryId];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:v7 triggerEvent:a3 destination:a4 actionTarget:0];
    [v10 setQueryId:v9];
    [v8 didEngageResult:v10];
  }

  v11 = [(SearchUIHomeScreenAppIconView *)self rowModel];
  v12 = [v11 cardSection];

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [objc_alloc(MEMORY[0x1E69C9F10]) initWithCardSection:v12 destination:0 triggerEvent:a3 actionCardType:0];
    [v13 setQueryId:v9];
    [v8 didEngageCardSection:v13];
  }
}

- (void)iconTapped:(id)a3
{
  v3 = [a3 icon];
  [v3 launchFromLocation:*MEMORY[0x1E69D4150] context:0];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (forwardEvent(v6))
  {
    v8.receiver = self;
    v8.super_class = SearchUIHomeScreenAppIconView;
    [(SearchUIHomeScreenAppIconView *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (forwardEvent(v6))
  {
    v11.receiver = self;
    v11.super_class = SearchUIHomeScreenAppIconView;
    [(SearchUIHomeScreenAppIconView *)&v11 pressesEnded:v6 withEvent:v7];
  }

  else
  {
    v8 = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
      [v10 performSelector:sel_skipDown];
    }
  }
}

- (id)contextMenuDelegateForIconView:(id)a3
{
  v3 = +[SearchUIHomeScreenAppIconViewContextMenuController sharedInstance];
  v4 = [v3 contextMenuManager];

  return v4;
}

+ (id)neverSuggestAppShortcutItemWithLocalizedName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [SearchUIUtilities localizedStringForKey:@"HIDE_APP_SUGGESTION"];
  v7 = [v5 stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, v3];

  v8 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"hand.raised"];
  [v4 setIcon:v8];

  [v4 setLocalizedTitle:v7];
  [v4 setType:@"com.apple.SearchUI.application-shortcut-item.never-show-suggestion"];

  return v4;
}

- (CGSize)maxLabelSize
{
  v5.receiver = self;
  v5.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v5 maxLabelSize];
  v4 = v3 + -8.0;
  result.height = v2;
  result.width = v4;
  return result;
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (SearchUIHomeScreenEngagementDelegate)engagementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_engagementDelegate);

  return WeakRetained;
}

- (void)updateWithRowModel:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 applicationBundleIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_1DA169000, a3, OS_LOG_TYPE_FAULT, "No Springboard icon for app %@, identifier %@", &v6, 0x16u);
}

@end