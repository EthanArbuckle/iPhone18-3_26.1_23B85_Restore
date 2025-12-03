@interface SearchUIHomeScreenAppIconView
+ (id)cacheForVariant:(unint64_t)variant;
+ (id)neverSuggestAppShortcutItemWithLocalizedName:(id)name;
- (BOOL)currentIconIsPlaceholder;
- (CGRect)highlightFrame;
- (CGSize)maxLabelSize;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUIHomeScreenAppIconView)init;
- (SearchUIHomeScreenEngagementDelegate)engagementDelegate;
- (double)focusHighlightCornerRadius;
- (id)contextMenuDelegateForIconView:(id)view;
- (id)keyCommands;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_launchWithModifierFlags:(int64_t)flags;
- (void)_updateLabel;
- (void)didEngageWithTriggerEvent:(unint64_t)event destination:(unint64_t)destination;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)hidePlaceholder:(BOOL)placeholder;
- (void)iconImageViewDidChangeContents:(id)contents forIcon:(id)icon;
- (void)iconTapped:(id)tapped;
- (void)iconViewWillBeginDrag:(id)drag session:(id)session;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removePlaceholderAndSetShadowAnimated:(BOOL)animated;
- (void)setAddRoundedKeyboardHighlight:(BOOL)highlight;
- (void)setFocusHighlightFrame;
- (void)setVariant:(unint64_t)variant;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)updateCorners;
- (void)updateWithRowModel:(id)model;
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
    placeholderView = [(SearchUIHomeScreenAppIconView *)v2 placeholderView];
    [(SearchUIHomeScreenAppIconView *)v2 insertSubview:placeholderView atIndex:0];

    [(SearchUIHomeScreenAppIconView *)v2 setUsesSceneUserInterfaceStyleForImage:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x1E69DEA38] object:0];
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
  window = [(SearchUIHomeScreenAppIconView *)self window];

  if (window)
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
  placeholderView = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  [placeholderView setFrame:{v4, v6, v8, v10}];

  [(SearchUIHomeScreenAppIconView *)self iconImageFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  tintView = [(SearchUIHomeScreenAppIconView *)self tintView];
  [tintView setFrame:{v13, v15, v17, v19}];

  [(SearchUIHomeScreenAppIconView *)self setFocusHighlightFrame];
}

- (void)setFocusHighlightFrame
{
  layer = [(SearchUIHomeScreenAppIconView *)self layer];
  [layer setAllowsGroupBlending:0];

  [(SearchUIHomeScreenAppIconView *)self highlightFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  focusHighlightView = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
  [focusHighlightView setFrame:{v5, v7, v9, v11}];

  focusHighlightView2 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
  superview = [focusHighlightView2 superview];
  layer2 = [superview layer];
  [layer2 setAllowsGroupBlending:0];
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
  window = [(SearchUIHomeScreenAppIconView *)self window];
  if (window)
  {
    v4 = window;
    labelNeedsUpdateOnMovingToWindow = [(SearchUIHomeScreenAppIconView *)self labelNeedsUpdateOnMovingToWindow];

    if (labelNeedsUpdateOnMovingToWindow)
    {
      [(SearchUIHomeScreenAppIconView *)self _updateLabel];
    }
  }
}

- (BOOL)currentIconIsPlaceholder
{
  icon = [(SearchUIHomeScreenAppIconView *)self icon];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    icon2 = [(SearchUIHomeScreenAppIconView *)self icon];
  }

  else
  {
    icon2 = 0;
  }

  leafIdentifier = [icon2 leafIdentifier];
  v6 = [leafIdentifier isEqualToString:SearchUIPlaceholderIconIdentifier];

  return v6;
}

+ (id)cacheForVariant:(unint64_t)variant
{
  if (cacheForVariant__onceToken != -1)
  {
    +[SearchUIHomeScreenAppIconView cacheForVariant:];
  }

  v4 = cacheForVariant__iconCache;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variant];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    [SearchUIAppIconImage sizeForVariant:variant];
    v8 = v7;
    v10 = v9;
    [MEMORY[0x1E69D9240] appIconCornerRadiusRatio];
    v12 = v8 * v11;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v15 = v14;

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:variant];
    v17 = [@"SearchUIIconImageCache" stringByAppendingFormat:@"-%@", v16];

    v6 = [(SBHIconImageCache *)[SearchUIIconImageCache alloc] initWithName:v17 iconImageInfo:v8, v10, v15, v12];
    v18 = cacheForVariant__iconCache;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variant];
    [v18 setObject:v6 forKey:v19];
  }

  return v6;
}

uint64_t __49__SearchUIHomeScreenAppIconView_cacheForVariant___block_invoke()
{
  cacheForVariant__iconCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)setAddRoundedKeyboardHighlight:(BOOL)highlight
{
  if (self->_addRoundedKeyboardHighlight != highlight)
  {
    highlightCopy = highlight;
    self->_addRoundedKeyboardHighlight = highlight;
    focusHighlightView = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];

    if (!focusHighlightView && highlightCopy)
    {
      v7 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:{+[SearchUIFocusStyleUtilities secondaryHaloProminence](SearchUIFocusStyleUtilities, "secondaryHaloProminence")}];
      [(SearchUIHomeScreenAppIconView *)self setFocusHighlightView:v7];

      focusHighlightView2 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
      [(SearchUIHomeScreenAppIconView *)self insertSubview:focusHighlightView2 atIndex:0];
    }

    [(SearchUIHomeScreenAppIconView *)self focusHighlightCornerRadius];
    v10 = v9;
    focusHighlightView3 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
    [focusHighlightView3 _setContinuousCornerRadius:v10];

    [(SearchUIHomeScreenAppIconView *)self setFocusHighlightFrame];
    focusHighlightView4 = [(SearchUIHomeScreenAppIconView *)self focusHighlightView];
    [focusHighlightView4 setHidden:!highlightCopy];
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
  keyCommands = [(SearchUIHomeScreenAppIconView *)&v6 keyCommands];
  if (!keyCommands)
  {
    keyCommands = objc_opt_new();
  }

  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x20000 action:sel_launchWithShift];
  [v3 setWantsPriorityOverSystemBehavior:1];
  v4 = [keyCommands arrayByAddingObject:v3];

  return v4;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v15 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  if (nextFocusedView != self)
  {
    goto LABEL_4;
  }

  engagementDelegate = [(SearchUIHomeScreenAppIconView *)self engagementDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    nextFocusedView = [(SearchUIHomeScreenAppIconView *)self rowModel];
    engagementDelegate2 = [(SearchUIHomeScreenAppIconView *)self engagementDelegate];
    identifyingResult = [(SearchUIHomeScreenAppIconView *)nextFocusedView identifyingResult];
    cardSection = [(SearchUIHomeScreenAppIconView *)nextFocusedView cardSection];
    [engagementDelegate2 didUpdateKeyboardFocusToResult:identifyingResult cardSection:cardSection];

LABEL_4:
  }

  mainSystem = [MEMORY[0x1E69DCC88] mainSystem];
  [mainSystem setNeedsRebuild];

  nextFocusedView2 = [contextCopy nextFocusedView];
  [(SearchUIHomeScreenAppIconView *)self setAddRoundedKeyboardHighlight:nextFocusedView2 == self];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v24.receiver = self;
  v24.super_class = SearchUIHomeScreenAppIconView;
  [(SearchUIHomeScreenAppIconView *)&v24 tlk_updateForAppearance:appearanceCopy];
  v5 = MEMORY[0x1E69DD5B8];
  if ([appearanceCopy isDark])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [v5 sharedInstanceForStyle:v6];
  v8 = objc_alloc(MEMORY[0x1E69DD5B8]);
  style = [v7 style];
  primaryColor = [v7 primaryColor];
  secondaryColor = [v7 secondaryColor];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v13 = [v8 initWithStyle:style primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:clearColor];

  v14 = [MEMORY[0x1E69D40C8] legibilitySettingsForLegibilitySettings:v13];
  [(SearchUIHomeScreenAppIconView *)self setLegibilitySettings:v14];

  if (([appearanceCopy isDark] & 1) == 0)
  {
    tintView = [(SearchUIHomeScreenAppIconView *)self tintView];

    if (!tintView)
    {
      v16 = objc_opt_new();
      [(SearchUIHomeScreenAppIconView *)self setTintView:v16];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v18 = [blackColor colorWithAlphaComponent:0.2];
      tintView2 = [(SearchUIHomeScreenAppIconView *)self tintView];
      [tintView2 setBackgroundColor:v18];

      tintView3 = [(SearchUIHomeScreenAppIconView *)self tintView];
      placeholderView = [(SearchUIHomeScreenAppIconView *)self placeholderView];
      [(SearchUIHomeScreenAppIconView *)self insertSubview:tintView3 aboveSubview:placeholderView];

      [(SearchUIHomeScreenAppIconView *)self updateCorners];
    }
  }

  isDark = [appearanceCopy isDark];
  tintView4 = [(SearchUIHomeScreenAppIconView *)self tintView];
  [tintView4 setHidden:isDark];
}

- (void)setVariant:(unint64_t)variant
{
  if (self->_variant != variant)
  {
    self->_variant = variant;
    v5 = [objc_opt_class() cacheForVariant:variant];
    [(SearchUIHomeScreenAppIconView *)self setIconImageCache:v5];

    rowModel = [(SearchUIHomeScreenAppIconView *)self rowModel];

    if (rowModel)
    {
      rowModel2 = [(SearchUIHomeScreenAppIconView *)self rowModel];
      [(SearchUIHomeScreenAppIconView *)self updateWithRowModel:rowModel2];
    }

    [(SearchUIHomeScreenAppIconView *)self updateCorners];
  }
}

- (void)updateCorners
{
  iconImageCache = [(SearchUIHomeScreenAppIconView *)self iconImageCache];
  [iconImageCache iconImageInfo];
  v5 = v4;

  placeholderView = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  [placeholderView _setContinuousCornerRadius:v5];

  tintView = [(SearchUIHomeScreenAppIconView *)self tintView];
  [tintView _setContinuousCornerRadius:v5];
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  [(SearchUIHomeScreenAppIconView *)self setRowModel:modelCopy];
  identifyingResult = [modelCopy identifyingResult];
  cardSection = [modelCopy cardSection];
  command = [cardSection command];

  cardSection2 = [modelCopy cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cardSection3 = [modelCopy cardSection];
  }

  else
  {
    cardSection3 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    command = 0;
  }

  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];
  -[SearchUIHomeScreenAppIconView setIsInSuggestionContext:](self, "setIsInSuggestionContext:", [sectionBundleIdentifier isEqualToString:@"com.apple.searchd.zkw.apps"]);

  applicationBundleIdentifier = [cardSection3 applicationBundleIdentifier];
  v13 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    v14 = applicationBundleIdentifier;
  }

  else
  {
    identifier = [identifyingResult identifier];
    v16 = identifier;
    if (identifier)
    {
      applicationBundleIdentifier2 = identifier;
    }

    else
    {
      applicationBundleIdentifier2 = [command applicationBundleIdentifier];
    }

    v14 = applicationBundleIdentifier2;
  }

  applicationBundleIdentifier3 = [identifyingResult applicationBundleIdentifier];
  v19 = [SearchUIUtilities bundleIdentifierForApp:0];
  v20 = [applicationBundleIdentifier3 isEqualToString:v19];

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
    v23 = [[SearchUITemporaryInternalAppsIcon alloc] initWithResult:identifyingResult variant:[(SearchUIHomeScreenAppIconView *)self variant]];
    v24 = SearchUIGeneralLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [(SearchUIHomeScreenAppIconView *)identifyingResult updateWithRowModel:v14, v24];
    }
  }

  [(SBIcon *)v23 setDelegate:self];
  [(SearchUIHomeScreenAppIconView *)self setIcon:v23];
  if (v23)
  {
    _iconImageView = [(SearchUIHomeScreenAppIconView *)self _iconImageView];
    if ([_iconImageView isDisplayingRealImageContents])
    {
    }

    else
    {
      icon = [(SearchUIHomeScreenAppIconView *)self icon];
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

- (void)iconImageViewDidChangeContents:(id)contents forIcon:(id)icon
{
  v12.receiver = self;
  v12.super_class = SearchUIHomeScreenAppIconView;
  iconCopy = icon;
  [(SearchUIHomeScreenAppIconView *)&v12 iconImageViewDidChangeContents:contents forIcon:iconCopy];
  v7 = [(SearchUIHomeScreenAppIconView *)self icon:v12.receiver];

  if (v7 == iconCopy)
  {
    currentIconIsPlaceholder = [(SearchUIHomeScreenAppIconView *)self currentIconIsPlaceholder];
    if (contents)
    {
      if (!currentIconIsPlaceholder)
      {
        placeholderView = [(SearchUIHomeScreenAppIconView *)self placeholderView];
        [placeholderView alpha];
        v11 = v10;

        if (v11 == 1.0)
        {
          [(SearchUIHomeScreenAppIconView *)self removePlaceholderAndSetShadowAnimated:1];
        }
      }
    }
  }
}

- (void)removePlaceholderAndSetShadowAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _iconImageView = [(SearchUIHomeScreenAppIconView *)self _iconImageView];
  [MEMORY[0x1E69D9248] enableShadow:1 forView:_iconImageView];
  placeholderView = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  [placeholderView _continuousCornerRadius];
  [_iconImageView _setContinuousCornerRadius:?];

  [(SearchUIHomeScreenAppIconView *)self effectiveScreenScale];
  v8 = v7;
  layer = [_iconImageView layer];
  [layer setContentsScale:v8];

  layer2 = [_iconImageView layer];
  [layer2 setShadowPathIsBounds:1];

  layer3 = [_iconImageView layer];
  [layer3 setAllowsGroupOpacity:0];

  layer4 = [_iconImageView layer];
  [layer4 setPunchoutShadow:1];

  v13 = MEMORY[0x1E696AEC0];
  rowModel = [(SearchUIHomeScreenAppIconView *)self rowModel];
  identifyingResult = [rowModel identifyingResult];
  title = [identifyingResult title];
  text = [title text];
  v18 = [v13 stringWithFormat:@"Identifier:AppIconButton, AppName:%@", text];

  [(SearchUIHomeScreenAppIconView *)self setAccessibilityIdentifier:v18];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__SearchUIHomeScreenAppIconView_removePlaceholderAndSetShadowAnimated___block_invoke;
  v19[3] = &unk_1E85B24C8;
  v19[4] = self;
  [MEMORY[0x1E69D9240] performAnimatableChanges:v19 animated:animatedCopy];
}

- (void)hidePlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  placeholderView = [(SearchUIHomeScreenAppIconView *)self placeholderView];
  v6 = placeholderView;
  if (placeholderCopy)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (placeholderCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [placeholderView setAlpha:v7];

  tintView = [(SearchUIHomeScreenAppIconView *)self tintView];
  [tintView setAlpha:v8];

  _iconImageView = [(SearchUIHomeScreenAppIconView *)self _iconImageView];
  [_iconImageView setAlpha:v8];
}

- (void)iconViewWillBeginDrag:(id)drag session:(id)session
{
  [(SearchUIHomeScreenAppIconView *)self didEngageWithTriggerEvent:18 destination:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SearchUIWillInitiateDragHomeScreenIconNotification" object:0];
}

- (void)_launchWithModifierFlags:(int64_t)flags
{
  v19 = *MEMORY[0x1E69E9840];
  engagementDelegate = [(SearchUIHomeScreenAppIconView *)self engagementDelegate];

  if (engagementDelegate)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      icon = [(SearchUIHomeScreenAppIconView *)self icon];
      rowModel = [(SearchUIHomeScreenAppIconView *)self rowModel];
      identifyingResult = [rowModel identifyingResult];
      applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
      v15 = 138412546;
      v16 = icon;
      v17 = 2112;
      v18 = applicationBundleIdentifier;
      _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "icon %@, rowModel:%@", &v15, 0x16u);
    }

    feedbackDelegate = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
    v12 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

    [v12 setModifierFlags:flags];
    rowModel2 = [(SearchUIHomeScreenAppIconView *)self rowModel];
    v14 = [SearchUICommandHandler handlerForRowModel:rowModel2 environment:v12];
    [v14 executeWithTriggerEvent:2];
  }
}

- (void)didEngageWithTriggerEvent:(unint64_t)event destination:(unint64_t)destination
{
  rowModel = [(SearchUIHomeScreenAppIconView *)self rowModel];
  identifyingResult = [rowModel identifyingResult];
  feedbackDelegate = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
  queryId = [rowModel queryId];
  if (identifyingResult && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:identifyingResult triggerEvent:event destination:destination actionTarget:0];
    [v10 setQueryId:queryId];
    [feedbackDelegate didEngageResult:v10];
  }

  rowModel2 = [(SearchUIHomeScreenAppIconView *)self rowModel];
  cardSection = [rowModel2 cardSection];

  if (cardSection && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [objc_alloc(MEMORY[0x1E69C9F10]) initWithCardSection:cardSection destination:0 triggerEvent:event actionCardType:0];
    [v13 setQueryId:queryId];
    [feedbackDelegate didEngageCardSection:v13];
  }
}

- (void)iconTapped:(id)tapped
{
  icon = [tapped icon];
  [icon launchFromLocation:*MEMORY[0x1E69D4150] context:0];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (forwardEvent(beganCopy))
  {
    v8.receiver = self;
    v8.super_class = SearchUIHomeScreenAppIconView;
    [(SearchUIHomeScreenAppIconView *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (forwardEvent(endedCopy))
  {
    v11.receiver = self;
    v11.super_class = SearchUIHomeScreenAppIconView;
    [(SearchUIHomeScreenAppIconView *)&v11 pressesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    feedbackDelegate = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      feedbackDelegate2 = [(SearchUIHomeScreenAppIconView *)self feedbackDelegate];
      [feedbackDelegate2 performSelector:sel_skipDown];
    }
  }
}

- (id)contextMenuDelegateForIconView:(id)view
{
  v3 = +[SearchUIHomeScreenAppIconViewContextMenuController sharedInstance];
  contextMenuManager = [v3 contextMenuManager];

  return contextMenuManager;
}

+ (id)neverSuggestAppShortcutItemWithLocalizedName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [SearchUIUtilities localizedStringForKey:@"HIDE_APP_SUGGESTION"];
  nameCopy = [v5 stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, nameCopy];

  v8 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"hand.raised"];
  [v4 setIcon:v8];

  [v4 setLocalizedTitle:nameCopy];
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