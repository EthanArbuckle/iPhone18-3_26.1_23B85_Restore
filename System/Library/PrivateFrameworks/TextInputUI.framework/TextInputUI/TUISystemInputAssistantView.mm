@interface TUISystemInputAssistantView
- (BOOL)_shouldHostCenterViewOutsidePageView;
- (BOOL)_swiftPlaygroundsWorkaroundEnabled;
- (BOOL)isInputAssistantItemHidden;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldSkipValidation;
- (BOOL)showsCenterView;
- (BOOL)validateIfNeeded;
- (CGRect)containerFrame;
- (CGSize)sizeForVisualState:(int64_t)state;
- (TUICandidateView)candidateView;
- (TUIPredictionView)predictionView;
- (TUISystemInputAssistantView)initWithFrame:(CGRect)frame;
- (TUISystemInputAssistantViewDelegate)delegate;
- (UIEdgeInsets)overrideSafeAreaInsets;
- (UIEdgeInsets)safeAreaInsets;
- (UIView)containerView;
- (id)_createUnifiedButtonBarIfNecessary;
- (id)_currentLayoutViewSet;
- (id)_hostedCenterView;
- (void)_exchangeCenterViewIfNecessaryForCompatibility;
- (void)_setButtonBarItemsExpanded:(BOOL)expanded animationType:(unint64_t)type;
- (void)_updateBarButtonGroups;
- (void)_updateBarButtonGroupsIfNeeded;
- (void)_updateExpandableButtonBarItems;
- (void)_updateStyle;
- (void)_updateStyleForButtonBars;
- (void)_updateVisualProvider;
- (void)assistantButtonBarView:(id)view wantsToShowCollapsedItemGroup:(id)group fromButton:(id)button;
- (void)assistantPageView:(id)view didSwitchToSecondaryViewVisible:(BOOL)visible;
- (void)layoutSubviews;
- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)resetContainerConstraints;
- (void)setBackgroundVisible:(BOOL)visible;
- (void)setButtonBarItemsExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setCenterView:(id)view;
- (void)setCenterViewHidden:(BOOL)hidden;
- (void)setCenterViewWidth:(double)width;
- (void)setHidesExpandableButton:(BOOL)button;
- (void)setInputAssistantItem:(id)item force:(BOOL)force;
- (void)setLayout:(id)layout;
- (void)setNeedsValidation;
- (void)setRenderConfig:(id)config;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSecondaryView:(id)view;
- (void)setShowsButtonBarItemsInline:(BOOL)inline;
- (void)setShowsExpandableButtonBarItems:(BOOL)items;
- (void)setStyle:(id)style;
- (void)setSystemInputAssistantItem:(id)item;
- (void)transitionToLayout:(id)layout withStyle:(id)style start:(id)start;
- (void)updateContainerConstraintsForFloating;
@end

@implementation TUISystemInputAssistantView

- (id)_currentLayoutViewSet
{
  v3 = objc_alloc_init(TUISystemInputAssistantLayoutViewSet);
  _hostedCenterView = [(TUISystemInputAssistantView *)self _hostedCenterView];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setCenterView:_hostedCenterView];

  leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setLeftButtonBar:leftButtonBar];

  rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setRightButtonBar:rightButtonBar];

  unifiedButtonBar = [(TUISystemInputAssistantView *)self unifiedButtonBar];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setUnifiedButtonBar:unifiedButtonBar];

  containerView = [(TUISystemInputAssistantView *)self containerView];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setViewSetContainer:containerView];

  return v3;
}

- (id)_hostedCenterView
{
  if ([(TUISystemInputAssistantView *)self _swiftPlaygroundsWorkaroundEnabled]&& [(TUISystemInputAssistantView *)self _shouldHostCenterViewOutsidePageView])
  {
    centerView = [(TUISystemInputAssistantView *)self centerView];
  }

  else
  {
    centerView = [(TUISystemInputAssistantView *)self centerPageView];
  }

  return centerView;
}

- (BOOL)_swiftPlaygroundsWorkaroundEnabled
{
  if (_swiftPlaygroundsWorkaroundEnabled_onceToken != -1)
  {
    dispatch_once(&_swiftPlaygroundsWorkaroundEnabled_onceToken, &__block_literal_global_166);
  }

  return _swiftPlaygroundsWorkaroundEnabled_workaroundEnabled;
}

void __65__TUISystemInputAssistantView__swiftPlaygroundsWorkaroundEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.Playgrounds"])
  {
    v1 = dyld_program_sdk_at_least() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  _swiftPlaygroundsWorkaroundEnabled_workaroundEnabled = v1;
}

- (UIView)containerView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(TUISystemInputAssistantView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_containerView;
    self->_containerView = v5;

    [(TUISystemInputAssistantView *)self addSubview:self->_containerView];
    containerView = self->_containerView;
  }

  return containerView;
}

- (UIEdgeInsets)safeAreaInsets
{
  v4 = *&self->_overrideSafeAreaInsets.top;
  v5 = *&self->_overrideSafeAreaInsets.bottom;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *MEMORY[0x1E69DDCE0]), vceqq_f64(v5, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v9 = v2;
    v10 = v3;
    v8.receiver = self;
    v8.super_class = TUISystemInputAssistantView;
    [(TUISystemInputAssistantView *)&v8 safeAreaInsets];
  }

  else
  {
    left = self->_overrideSafeAreaInsets.left;
    right = self->_overrideSafeAreaInsets.right;
  }

  result.bottom = v5.f64[0];
  result.top = v4.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (void)setNeedsValidation
{
  self->_needsValidation = 1;
  atomic_fetch_add_explicit(&self->_needsValidationGuard, 1u, memory_order_relaxed);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__TUISystemInputAssistantView_setNeedsValidation__block_invoke;
  block[3] = &unk_1E72D83A0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)showsCenterView
{
  if (![(TUISystemInputAssistantView *)self centerViewHidden])
  {
    return 1;
  }

  return [(TUISystemInputAssistantView *)self showsExpandableButtonBarItems];
}

- (void)_updateBarButtonGroupsIfNeeded
{
  if (!self->_isTransitioning)
  {
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  }
}

- (void)_updateBarButtonGroups
{
  layout = [(TUISystemInputAssistantView *)self layout];
  [layout setUsesUnifiedButtonBar:self->_showsExpandableButtonBarItems];

  layout2 = [(TUISystemInputAssistantView *)self layout];
  _currentLayoutViewSet = [(TUISystemInputAssistantView *)self _currentLayoutViewSet];
  inputAssistantItem = [(TUISystemInputAssistantView *)self inputAssistantItem];
  systemInputAssistantItem = [(TUISystemInputAssistantView *)self systemInputAssistantItem];
  [layout2 configureButtonBarsInViewSet:_currentLayoutViewSet forApplicationAssistantItem:inputAssistantItem withSystemAssistantItem:systemInputAssistantItem withAssistantView:self];

  [(TUISystemInputAssistantView *)self setNeedsValidation];

  [(TUISystemInputAssistantView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = TUISystemInputAssistantView;
  [(TUISystemInputAssistantView *)&v24 layoutSubviews];
  [(TUISystemInputAssistantView *)self validateIfNeeded];
  [(TUISystemInputAssistantView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backdropView = [(TUISystemInputAssistantView *)self backdropView];
  [backdropView setFrame:{v4, v6, v8, v10}];

  [(TUISystemInputAssistantView *)self safeAreaInsets];
  if (v10 > v12)
  {
    [(TUISystemInputAssistantView *)self preferredInsets];
    renderConfig = [(TUISystemInputAssistantView *)self renderConfig];
    if ([renderConfig colorAdaptiveBackground])
    {
      activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
      isMinimized = [activeInstance isMinimized];

      if ((isMinimized & 1) == 0)
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          [MEMORY[0x1E69DCBE0] isFloating];
        }
      }
    }

    else
    {
    }

    UIRectInset();
    v4 = v18;
    v6 = v19;
    v8 = v20;
    v10 = v21;
  }

  _currentLayoutViewSet = [(TUISystemInputAssistantView *)self _currentLayoutViewSet];
  layout = [(TUISystemInputAssistantView *)self layout];
  [layout layoutViewSet:_currentLayoutViewSet inBounds:self forAssistantView:{v4, v6, v8, v10}];
}

- (BOOL)validateIfNeeded
{
  if (self->_needsValidation && ![(TUISystemInputAssistantView *)self shouldSkipValidation])
  {
    validateButtonGroups = [(TUIAssistantButtonBarView *)self->_leftButtonBar validateButtonGroups];
    validateButtonGroups2 = [(TUIAssistantButtonBarView *)self->_rightButtonBar validateButtonGroups];
    validateButtonGroups3 = [(TUIAssistantButtonBarView *)self->_unifiedButtonBar validateButtonGroups];
    self->_needsValidation = 0;
    v3 = validateButtonGroups || validateButtonGroups2 || validateButtonGroups3;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (BOOL)shouldSkipValidation
{
  [(TUISystemInputAssistantView *)self bounds];

  return CGRectIsEmpty(*&v2);
}

- (void)_updateExpandableButtonBarItems
{
  if (self->_showsExpandableButtonBarItems)
  {
    _createUnifiedButtonBarIfNecessary = [(TUISystemInputAssistantView *)self _createUnifiedButtonBarIfNecessary];
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setHidden:0];
    [(TUISystemInputAssistantPageView *)self->_centerPageView setHidesExpandButton:self->_hidesExpandableButton];
    expandButton = [(TUISystemInputAssistantPageView *)self->_centerPageView expandButton];
    [expandButton addTarget:self action:sel__didTapExpandButton_ forControlEvents:64];

    [(TUISystemInputAssistantView *)self _updateVisualProvider];
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
    centerViewHidden = [(TUISystemInputAssistantView *)self centerViewHidden];
  }

  else
  {
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setHidden:1];
    [(TUISystemInputAssistantPageView *)self->_centerPageView setHidesExpandButton:1];
    centerViewHidden = 0;
  }

  [(TUISystemInputAssistantView *)self setButtonBarItemsExpanded:centerViewHidden animated:0];
}

- (BOOL)isInputAssistantItemHidden
{
  [(TUISystemInputAssistantView *)self validateIfNeeded];
  inputAssistantItem = [(TUISystemInputAssistantView *)self inputAssistantItem];
  leadingBarButtonGroups = [inputAssistantItem leadingBarButtonGroups];
  if (__57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(leadingBarButtonGroups))
  {
    inputAssistantItem2 = [(TUISystemInputAssistantView *)self inputAssistantItem];
    _centerBarButtonGroups = [inputAssistantItem2 _centerBarButtonGroups];
    if (__57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(_centerBarButtonGroups))
    {
      inputAssistantItem3 = [(TUISystemInputAssistantView *)self inputAssistantItem];
      trailingBarButtonGroups = [inputAssistantItem3 trailingBarButtonGroups];
      v9 = __57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(trailingBarButtonGroups);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          if (([v8 isHidden] & 1) == 0)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v9 = [v8 barButtonItems];
            v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v18;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v18 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v17 + 1) + 8 * j);
                  if (([v14 _hidden] & 1) == 0 && !objc_msgSend(v14, "isKeyboardItem"))
                  {

                    v15 = 0;
                    goto LABEL_24;
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
        v15 = 1;
      }

      while (v5);
    }

    else
    {
      v15 = 1;
    }

LABEL_24:
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_updateStyle
{
  style = [(TUISystemInputAssistantView *)self style];
  drawsPredictionBackdropView = [style drawsPredictionBackdropView];
  predictionView = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView setDrawsBackdropView:drawsPredictionBackdropView];

  style2 = [(TUISystemInputAssistantView *)self style];
  predictionSeparatorColor = [style2 predictionSeparatorColor];
  predictionView2 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView2 setSeparatorColor:predictionSeparatorColor];

  style3 = [(TUISystemInputAssistantView *)self style];
  predictionHighlightColor = [style3 predictionHighlightColor];
  predictionView3 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView3 setHighlightColor:predictionHighlightColor];

  style4 = [(TUISystemInputAssistantView *)self style];
  [style4 highlightMargin];
  v14 = v13;
  predictionView4 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView4 setHighlightMargin:v14];

  style5 = [(TUISystemInputAssistantView *)self style];
  useContinuousCornerInHighlight = [style5 useContinuousCornerInHighlight];
  predictionView5 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView5 setUseContinuousCornerInHighlight:useContinuousCornerInHighlight];

  style6 = [(TUISystemInputAssistantView *)self style];
  [style6 highlightCornerRadius];
  v21 = v20;
  predictionView6 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView6 setHighlightCornerRadius:v21];

  style7 = [(TUISystemInputAssistantView *)self style];
  [style7 separatorMargin];
  v25 = v24;
  predictionView7 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView7 setSeparatorMargin:v25];

  style8 = [(TUISystemInputAssistantView *)self style];
  shouldAnimatePredictionCandidate = [style8 shouldAnimatePredictionCandidate];
  predictionView8 = [(TUISystemInputAssistantView *)self predictionView];
  [predictionView8 setShouldAnimateCells:shouldAnimatePredictionCandidate];

  [(TUISystemInputAssistantView *)self _updateStyleForButtonBars];
  [(TUISystemInputAssistantView *)self _updateBarButtonGroupsIfNeeded];

  [(TUISystemInputAssistantView *)self setNeedsLayout];
}

- (TUIPredictionView)predictionView
{
  v21 = *MEMORY[0x1E69E9840];
  centerView = [(TUISystemInputAssistantView *)self centerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    centerView2 = [(TUISystemInputAssistantView *)self centerView];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      centerView3 = [(TUISystemInputAssistantView *)self centerView];
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();

      if (v7)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        centerView4 = [(TUISystemInputAssistantView *)self centerView];
        arrangedSubviews = [centerView4 arrangedSubviews];

        v10 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(arrangedSubviews);
              }

              v14 = *(*(&v16 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                centerView2 = v14;

                goto LABEL_15;
              }
            }

            v11 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    centerView2 = 0;
  }

LABEL_15:

  return centerView2;
}

- (void)_updateStyleForButtonBars
{
  style = [(TUISystemInputAssistantView *)self style];
  [style barButtonWidth];
  v5 = v4;
  leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
  [leftButtonBar setBarButtonWidth:v5];

  style2 = [(TUISystemInputAssistantView *)self style];
  [style2 minimumInterBarItemSpace];
  v9 = v8;
  leftButtonBar2 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [leftButtonBar2 setMinimumInterItemSpace:v9];

  style3 = [(TUISystemInputAssistantView *)self style];
  clipsToBounds = [style3 clipsToBounds];
  leftButtonBar3 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [leftButtonBar3 setClipsToBounds:clipsToBounds];

  style4 = [(TUISystemInputAssistantView *)self style];
  [style4 barButtonWidth];
  v16 = v15;
  rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
  [rightButtonBar setBarButtonWidth:v16];

  style5 = [(TUISystemInputAssistantView *)self style];
  [style5 minimumInterBarItemSpace];
  v20 = v19;
  rightButtonBar2 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [rightButtonBar2 setMinimumInterItemSpace:v20];

  style6 = [(TUISystemInputAssistantView *)self style];
  clipsToBounds2 = [style6 clipsToBounds];
  rightButtonBar3 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [rightButtonBar3 setClipsToBounds:clipsToBounds2];
}

- (void)_updateVisualProvider
{
  renderConfig = [(TUISystemInputAssistantView *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [(TUISystemInputAssistantView *)self setTintColor:v4];

  renderConfig2 = [(TUISystemInputAssistantView *)self renderConfig];
  buttonBarVisualProvider = [renderConfig2 buttonBarVisualProvider];

  if (buttonBarVisualProvider)
  {
    leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
    [leftButtonBar setVisualProvider:buttonBarVisualProvider];

    rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
    [rightButtonBar setVisualProvider:buttonBarVisualProvider];

    unifiedButtonBar = [(TUISystemInputAssistantView *)self unifiedButtonBar];
    [unifiedButtonBar setVisualProvider:buttonBarVisualProvider];

    [(TUISystemInputAssistantView *)self layoutIfNeeded];
  }
}

- (void)_exchangeCenterViewIfNecessaryForCompatibility
{
  if ([(TUISystemInputAssistantView *)self _swiftPlaygroundsWorkaroundEnabled])
  {
    if ([(TUISystemInputAssistantView *)self _shouldHostCenterViewOutsidePageView])
    {
      centerView = [(TUISystemInputAssistantView *)self centerView];
      superview = [centerView superview];

      if (superview == self)
      {
        return;
      }

      centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
      [centerPageView removeFromSuperview];

      containerView = [(TUISystemInputAssistantView *)self containerView];
      centerView2 = [(TUISystemInputAssistantView *)self centerView];
    }

    else
    {
      centerPageView2 = [(TUISystemInputAssistantView *)self centerPageView];
      superview2 = [centerPageView2 superview];

      if (superview2 == self)
      {
        return;
      }

      centerView3 = [(TUISystemInputAssistantView *)self centerView];
      [centerView3 removeFromSuperview];

      centerView4 = [(TUISystemInputAssistantView *)self centerView];
      centerPageView3 = [(TUISystemInputAssistantView *)self centerPageView];
      [centerPageView3 setPrimaryView:centerView4];

      containerView = [(TUISystemInputAssistantView *)self containerView];
      centerView2 = [(TUISystemInputAssistantView *)self centerPageView];
    }

    v12 = centerView2;
    [containerView addSubview:centerView2];
  }
}

uint64_t __49__TUISystemInputAssistantView_setNeedsValidation__block_invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((*(result + 32) + 412), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = [*(result + 32) validateIfNeeded];
    if (result)
    {
      v2 = *(v1 + 32);

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

- (UIEdgeInsets)overrideSafeAreaInsets
{
  top = self->_overrideSafeAreaInsets.top;
  left = self->_overrideSafeAreaInsets.left;
  bottom = self->_overrideSafeAreaInsets.bottom;
  right = self->_overrideSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TUISystemInputAssistantViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldHostCenterViewOutsidePageView
{
  inputAssistantItem = [(TUISystemInputAssistantView *)self inputAssistantItem];
  _centerBarButtonGroups = [inputAssistantItem _centerBarButtonGroups];
  v4 = [_centerBarButtonGroups count] != 0;

  return v4;
}

- (void)assistantPageView:(id)view didSwitchToSecondaryViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_buttonBarItemsExpanded = visible;
  delegate = [(TUISystemInputAssistantView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(TUISystemInputAssistantView *)self delegate];
    [delegate2 systemInputAssistantView:self didExpand:visibleCopy];
  }
}

- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  if ((type - 6) <= 2)
  {
    [(TUISystemInputAssistantView *)self setAlpha:state, 0.0];
  }
}

- (CGSize)sizeForVisualState:(int64_t)state
{
  v3 = *MEMORY[0x1E69DE788];
  v4 = *MEMORY[0x1E69DE788];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)assistantButtonBarView:(id)view wantsToShowCollapsedItemGroup:(id)group fromButton:(id)button
{
  groupCopy = group;
  buttonCopy = button;
  representativeItem = [groupCopy representativeItem];
  target = [representativeItem target];
  if (target)
  {
    v10 = target;
    action = [representativeItem action];

    if (action)
    {
      target2 = [representativeItem target];
      [target2 performSelector:objc_msgSend(representativeItem withObject:{"action"), representativeItem}];
LABEL_7:

      goto LABEL_8;
    }
  }

  delegate = [(TUISystemInputAssistantView *)self delegate];
  if (delegate)
  {
    v14 = delegate;
    delegate2 = [(TUISystemInputAssistantView *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      target2 = [(TUISystemInputAssistantView *)self delegate];
      [target2 systemInputAssistantView:self wantsToShowCollapsedItemGroup:groupCopy fromView:buttonCopy];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)transitionToLayout:(id)layout withStyle:(id)style start:(id)start
{
  layoutCopy = layout;
  styleCopy = style;
  startCopy = start;
  layout = [(TUISystemInputAssistantView *)self layout];

  if (layout != layoutCopy)
  {
    self->_isTransitioning = 1;
  }

  if (startCopy)
  {
    startCopy[2](startCopy);
  }

  [(TUISystemInputAssistantView *)self setStyle:styleCopy];
  [(TUISystemInputAssistantView *)self setLayout:layoutCopy];
  [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  self->_isTransitioning = 0;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    v6 = styleCopy;
    objc_storeStrong(&self->_style, style);
    [(TUISystemInputAssistantView *)self _updateStyle];
    styleCopy = v6;
  }
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  layout = self->_layout;
  if (layout != layoutCopy)
  {
    v9 = layoutCopy;
    _currentLayoutViewSet = [(TUISystemInputAssistantView *)self _currentLayoutViewSet];
    [(TUISystemInputAssistantLayout *)layout invalidate:_currentLayoutViewSet];

    objc_storeStrong(&self->_layout, layout);
    if ([(TUISystemInputAssistantLayout *)v9 usesUnifiedButtonBar])
    {
      _createUnifiedButtonBarIfNecessary = [(TUISystemInputAssistantView *)self _createUnifiedButtonBarIfNecessary];
    }

    [(TUISystemInputAssistantView *)self _updateBarButtonGroupsIfNeeded];
    [(TUISystemInputAssistantView *)self setNeedsLayout];
    layoutCopy = v9;
  }
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  renderConfig = self->_renderConfig;
  if (renderConfig)
  {
    lightKeyboard = [(UIKBRenderConfig *)renderConfig lightKeyboard];
    lightKeyboard2 = [configCopy lightKeyboard];
    v11.receiver = self;
    v11.super_class = TUISystemInputAssistantView;
    [(TUISystemInputAssistantView *)&v11 _setRenderConfig:configCopy];
    if (lightKeyboard == lightKeyboard2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUISystemInputAssistantView;
    [(TUISystemInputAssistantView *)&v11 _setRenderConfig:configCopy];
  }

  objc_storeStrong(&self->_renderConfig, config);
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_centerView setRenderConfig:configCopy];
  }

  [(TUISystemInputAssistantView *)self _updateVisualProvider];
  if ([configCopy lightKeyboard])
  {
    v9 = 3901;
  }

  else
  {
    v9 = 2030;
  }

  backdropView = [(TUISystemInputAssistantView *)self backdropView];
  [backdropView transitionToStyle:v9];

LABEL_11:
}

- (void)setSystemInputAssistantItem:(id)item
{
  itemCopy = item;
  if (self->_systemInputAssistantItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_systemInputAssistantItem, item);
    [(TUISystemInputAssistantView *)self _updateBarButtonGroupsIfNeeded];
    itemCopy = v6;
  }
}

- (void)setInputAssistantItem:(id)item force:(BOOL)force
{
  forceCopy = force;
  itemCopy = item;
  if (self->_inputAssistantItem != itemCopy || forceCopy)
  {
    v9 = itemCopy;
    objc_storeStrong(&self->_inputAssistantItem, item);
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
    [(TUISystemInputAssistantView *)self _exchangeCenterViewIfNecessaryForCompatibility];
    itemCopy = v9;
  }
}

- (void)_setButtonBarItemsExpanded:(BOOL)expanded animationType:(unint64_t)type
{
  if (self->_buttonBarItemsExpanded != expanded)
  {
    v15 = v4;
    v16 = v5;
    expandedCopy = expanded;
    self->_buttonBarItemsExpanded = expanded;
    delegate = [(TUISystemInputAssistantView *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(TUISystemInputAssistantView *)self delegate];
      [delegate2 systemInputAssistantView:self willExpand:expandedCopy];
    }

    centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__TUISystemInputAssistantView__setButtonBarItemsExpanded_animationType___block_invoke;
    v13[3] = &unk_1E72D2C30;
    v13[4] = self;
    v14 = expandedCopy;
    [centerPageView setSecondaryViewVisible:expandedCopy withAnimationType:type completion:v13];

    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  }
}

void __72__TUISystemInputAssistantView__setButtonBarItemsExpanded_animationType___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 systemInputAssistantView:*(a1 + 32) didExpand:*(a1 + 40)];
    }
  }
}

- (void)setButtonBarItemsExpanded:(BOOL)expanded animated:(BOOL)animated
{
  if (animated)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(TUISystemInputAssistantView *)self _setButtonBarItemsExpanded:expanded animationType:v4];
}

- (void)setHidesExpandableButton:(BOOL)button
{
  if (self->_hidesExpandableButton != button)
  {
    self->_hidesExpandableButton = button;
    [(TUISystemInputAssistantView *)self _updateExpandableButtonBarItems];
  }
}

- (void)setShowsExpandableButtonBarItems:(BOOL)items
{
  if (self->_showsExpandableButtonBarItems != items)
  {
    self->_showsExpandableButtonBarItems = items;
    [(TUISystemInputAssistantView *)self _updateExpandableButtonBarItems];

    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  }
}

- (id)_createUnifiedButtonBarIfNecessary
{
  if (!self->_unifiedButtonBar)
  {
    v3 = [TUIAssistantButtonBarView alloc];
    v4 = [(TUIAssistantButtonBarView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    unifiedButtonBar = self->_unifiedButtonBar;
    self->_unifiedButtonBar = v4;

    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setDelegate:self];
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setButtonAlignment:1];
    renderConfig = [(TUISystemInputAssistantView *)self renderConfig];
    buttonBarVisualProvider = [renderConfig buttonBarVisualProvider];
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setVisualProvider:buttonBarVisualProvider];

    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setAccessibilityIdentifier:@"UnifiedButtonBar"];
    [(TUISystemInputAssistantView *)self setButtonBarItemsExpanded:0 animated:0];
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  }

  secondaryView = [(TUISystemInputAssistantView *)self secondaryView];
  v9 = secondaryView;
  if (!secondaryView)
  {
    v9 = self->_unifiedButtonBar;
  }

  centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
  [centerPageView setSecondaryView:v9];

  v11 = self->_unifiedButtonBar;

  return v11;
}

- (void)setShowsButtonBarItemsInline:(BOOL)inline
{
  if (self->_showsButtonBarItemsInline != inline)
  {
    self->_showsButtonBarItemsInline = inline;
    leftButtonBar = self->_leftButtonBar;
    if (inline)
    {
      if (!leftButtonBar)
      {
        v5 = [TUIAssistantButtonBarView alloc];
        v6 = [(TUIAssistantButtonBarView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v7 = self->_leftButtonBar;
        self->_leftButtonBar = v6;

        [(TUIAssistantButtonBarView *)self->_leftButtonBar setDelegate:self];
        appearanceDelegate = [(TUISystemInputAssistantView *)self appearanceDelegate];
        [(TUIAssistantButtonBarView *)self->_leftButtonBar setAppearanceDelegate:appearanceDelegate];

        [(TUIAssistantButtonBarView *)self->_leftButtonBar setButtonAlignment:0];
        [(TUIAssistantButtonBarView *)self->_leftButtonBar setAccessibilityIdentifier:@"LeftButtonBar"];
        containerView = [(TUISystemInputAssistantView *)self containerView];
        [containerView addSubview:self->_leftButtonBar];
      }

      if (!self->_rightButtonBar)
      {
        v10 = [TUIAssistantButtonBarView alloc];
        v11 = [(TUIAssistantButtonBarView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        rightButtonBar = self->_rightButtonBar;
        self->_rightButtonBar = v11;

        [(TUIAssistantButtonBarView *)self->_rightButtonBar setDelegate:self];
        appearanceDelegate2 = [(TUISystemInputAssistantView *)self appearanceDelegate];
        [(TUIAssistantButtonBarView *)self->_rightButtonBar setAppearanceDelegate:appearanceDelegate2];

        [(TUIAssistantButtonBarView *)self->_rightButtonBar setButtonAlignment:2];
        [(TUIAssistantButtonBarView *)self->_rightButtonBar setAccessibilityIdentifier:@"RightButtonBar"];
        containerView2 = [(TUISystemInputAssistantView *)self containerView];
        [containerView2 addSubview:self->_rightButtonBar];
      }

      [(TUIAssistantButtonBarView *)self->_leftButtonBar setHidden:0];
      [(TUIAssistantButtonBarView *)self->_rightButtonBar setHidden:0];
      [(TUISystemInputAssistantView *)self _updateVisualProvider];

      [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
    }

    else
    {
      [(TUIAssistantButtonBarView *)leftButtonBar setHidden:1];
      v15 = self->_rightButtonBar;

      [(TUIAssistantButtonBarView *)v15 setHidden:1];
    }
  }
}

- (void)setBackgroundVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_backgroundVisible = visible;
  backdropView = [(TUISystemInputAssistantView *)self backdropView];
  [backdropView setHidden:!visibleCopy];
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_scrollEnabled = enabled;
  centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
  [centerPageView setScrollEnabled:enabledCopy];
}

- (void)setCenterViewHidden:(BOOL)hidden
{
  if (self->_centerViewHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_centerViewHidden = hidden;
    centerView = [(TUISystemInputAssistantView *)self centerView];
    [centerView setHidden:hiddenCopy];

    leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
    [leftButtonBar setConstrainedHorizontally:hiddenCopy ^ 1];

    rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
    [rightButtonBar setConstrainedHorizontally:hiddenCopy ^ 1];

    [(TUISystemInputAssistantView *)self _updateExpandableButtonBarItems];
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];

    [(TUISystemInputAssistantView *)self setNeedsLayout];
  }
}

- (void)setCenterViewWidth:(double)width
{
  if (self->_centerViewWidth != width)
  {
    self->_centerViewWidth = width;
    [(TUISystemInputAssistantView *)self setNeedsLayout];
  }
}

- (void)setSecondaryView:(id)view
{
  objc_storeStrong(&self->_secondaryView, view);
  viewCopy = view;
  unifiedButtonBar = viewCopy;
  if (!viewCopy)
  {
    unifiedButtonBar = self->_unifiedButtonBar;
  }

  centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
  [centerPageView setSecondaryView:unifiedButtonBar];
}

- (void)setCenterView:(id)view
{
  objc_storeStrong(&self->_centerView, view);
  viewCopy = view;
  [viewCopy setHidden:self->_centerViewHidden];
  renderConfig = [(TUISystemInputAssistantView *)self renderConfig];
  [viewCopy _setRenderConfig:renderConfig];

  centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
  [centerPageView setPrimaryView:viewCopy];

  [(TUISystemInputAssistantView *)self _exchangeCenterViewIfNecessaryForCompatibility];

  [(TUISystemInputAssistantView *)self _updateStyle];
}

- (void)resetContainerConstraints
{
  staticConstraints = [(TUISystemInputAssistantView *)self staticConstraints];

  if (staticConstraints)
  {
    v4 = MEMORY[0x1E696ACD8];
    staticConstraints2 = [(TUISystemInputAssistantView *)self staticConstraints];
    [v4 deactivateConstraints:staticConstraints2];
  }

  containerLeading = [(TUISystemInputAssistantView *)self containerLeading];

  if (containerLeading)
  {
    containerLeading2 = [(TUISystemInputAssistantView *)self containerLeading];
    [containerLeading2 setActive:0];
  }

  containerTrailing = [(TUISystemInputAssistantView *)self containerTrailing];

  if (containerTrailing)
  {
    containerTrailing2 = [(TUISystemInputAssistantView *)self containerTrailing];
    [containerTrailing2 setActive:0];
  }

  containerCenter = [(TUISystemInputAssistantView *)self containerCenter];

  if (containerCenter)
  {
    containerCenter2 = [(TUISystemInputAssistantView *)self containerCenter];
    [containerCenter2 setActive:0];
  }

  containerView = [(TUISystemInputAssistantView *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:1];
}

- (void)updateContainerConstraintsForFloating
{
  v50[5] = *MEMORY[0x1E69E9840];
  containerView = [(TUISystemInputAssistantView *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerLeading = [(TUISystemInputAssistantView *)self containerLeading];

  if (!containerLeading)
  {
    containerView2 = [(TUISystemInputAssistantView *)self containerView];
    leadingAnchor = [containerView2 leadingAnchor];
    leadingAnchor2 = [(TUISystemInputAssistantView *)self leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [(TUISystemInputAssistantView *)self setContainerLeading:v8];
  }

  containerTrailing = [(TUISystemInputAssistantView *)self containerTrailing];

  if (!containerTrailing)
  {
    trailingAnchor = [(TUISystemInputAssistantView *)self trailingAnchor];
    containerView3 = [(TUISystemInputAssistantView *)self containerView];
    trailingAnchor2 = [containerView3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
    [(TUISystemInputAssistantView *)self setContainerTrailing:v13];
  }

  containerCenter = [(TUISystemInputAssistantView *)self containerCenter];

  if (!containerCenter)
  {
    containerView4 = [(TUISystemInputAssistantView *)self containerView];
    centerXAnchor = [containerView4 centerXAnchor];
    centerXAnchor2 = [(TUISystemInputAssistantView *)self centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(TUISystemInputAssistantView *)self setContainerCenter:v18];
  }

  staticConstraints = [(TUISystemInputAssistantView *)self staticConstraints];

  if (!staticConstraints)
  {
    containerView5 = [(TUISystemInputAssistantView *)self containerView];
    leftAnchor = [containerView5 leftAnchor];
    leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
    leftAnchor2 = [leftButtonBar leftAnchor];
    v45 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v50[0] = v45;
    containerView6 = [(TUISystemInputAssistantView *)self containerView];
    rightAnchor = [containerView6 rightAnchor];
    rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
    rightAnchor2 = [rightButtonBar rightAnchor];
    v40 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v50[1] = v40;
    containerView7 = [(TUISystemInputAssistantView *)self containerView];
    topAnchor = [containerView7 topAnchor];
    rightButtonBar2 = [(TUISystemInputAssistantView *)self rightButtonBar];
    topAnchor2 = [rightButtonBar2 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[2] = v35;
    containerView8 = [(TUISystemInputAssistantView *)self containerView];
    bottomAnchor = [containerView8 bottomAnchor];
    rightButtonBar3 = [(TUISystemInputAssistantView *)self rightButtonBar];
    bottomAnchor2 = [rightButtonBar3 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v23;
    containerView9 = [(TUISystemInputAssistantView *)self containerView];
    topAnchor3 = [containerView9 topAnchor];
    topAnchor4 = [(TUISystemInputAssistantView *)self topAnchor];
    v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v50[4] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
    [(TUISystemInputAssistantView *)self setStaticConstraints:v28];
  }

  staticConstraints2 = [(TUISystemInputAssistantView *)self staticConstraints];
  v30 = [staticConstraints2 objectAtIndexedSubscript:0];
  isActive = [v30 isActive];

  if ((isActive & 1) == 0)
  {
    v32 = MEMORY[0x1E696ACD8];
    staticConstraints3 = [(TUISystemInputAssistantView *)self staticConstraints];
    [v32 activateConstraints:staticConstraints3];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
  isHidden = [centerPageView isHidden];
  if ((isHidden & 1) == 0)
  {
    centerPageView2 = [(TUISystemInputAssistantView *)self centerPageView];
    centerPageView3 = [(TUISystemInputAssistantView *)self centerPageView];
    [(TUISystemInputAssistantView *)self convertPoint:centerPageView3 toView:x, y];
    if ([centerPageView2 pointInside:eventCopy withEvent:?])
    {
      v13 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v22 = centerPageView3;
    v23 = centerPageView2;
  }

  leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
  isHidden2 = [leftButtonBar isHidden];
  if ((isHidden2 & 1) == 0)
  {
    leftButtonBar2 = [(TUISystemInputAssistantView *)self leftButtonBar];
    leftButtonBar3 = [(TUISystemInputAssistantView *)self leftButtonBar];
    [(TUISystemInputAssistantView *)self convertPoint:leftButtonBar3 toView:x, y];
    if ([leftButtonBar2 pointInside:eventCopy withEvent:?])
    {
      v13 = 1;
LABEL_13:

      goto LABEL_14;
    }

    v21 = leftButtonBar2;
  }

  rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
  if ([rightButtonBar isHidden])
  {

    v13 = 0;
  }

  else
  {
    rightButtonBar2 = [(TUISystemInputAssistantView *)self rightButtonBar];
    rightButtonBar3 = [(TUISystemInputAssistantView *)self rightButtonBar];
    [(TUISystemInputAssistantView *)self convertPoint:rightButtonBar3 toView:x, y];
    v13 = [rightButtonBar2 pointInside:eventCopy withEvent:?];
  }

  leftButtonBar2 = v21;
  if ((isHidden2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:

  centerPageView3 = v22;
  centerPageView2 = v23;
  if ((isHidden & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v13;
}

- (TUISystemInputAssistantView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = TUISystemInputAssistantView;
  v3 = [(TUISystemInputAssistantView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCB90]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:3903 style:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(TUISystemInputAssistantView *)v3 setBackdropView:v9];

    containerView = [(TUISystemInputAssistantView *)v3 containerView];
    backdropView = [(TUISystemInputAssistantView *)v3 backdropView];
    [containerView addSubview:backdropView];

    v12 = objc_alloc_init(TUISystemInputAssistantLayoutStandard);
    [(TUISystemInputAssistantView *)v3 setLayout:v12];

    v13 = objc_alloc_init(TUISystemInputAssistantStyleStandard);
    [(TUISystemInputAssistantView *)v3 setStyle:v13];

    v14 = [[TUISystemInputAssistantPageView alloc] initWithFrame:v5, v6, v7, v8];
    [(TUISystemInputAssistantView *)v3 setCenterPageView:v14];

    centerPageView = [(TUISystemInputAssistantView *)v3 centerPageView];
    [centerPageView setPageViewDelegate:v3];

    centerPageView2 = [(TUISystemInputAssistantView *)v3 centerPageView];
    [centerPageView2 setAccessibilityIdentifier:@"CenterPageView"];

    containerView2 = [(TUISystemInputAssistantView *)v3 containerView];
    centerPageView3 = [(TUISystemInputAssistantView *)v3 centerPageView];
    [containerView2 addSubview:centerPageView3];

    [(TUISystemInputAssistantView *)v3 setScrollEnabled:1];
    v19 = [[TUIButtonBarAppearanceDelegate alloc] initWithSystemInputAssistantView:v3];
    [(TUISystemInputAssistantView *)v3 setAppearanceDelegate:v19];
  }

  return v3;
}

- (CGRect)containerFrame
{
  leftButtonBar = [(TUISystemInputAssistantView *)self leftButtonBar];
  [leftButtonBar frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  rightButtonBar = [(TUISystemInputAssistantView *)self rightButtonBar];
  [rightButtonBar frame];
  v40.origin.x = v13;
  v40.origin.y = v14;
  v40.size.width = v15;
  v40.size.height = v16;
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v36 = CGRectUnion(v35, v40);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;

  if (![(TUISystemInputAssistantView *)self centerViewHidden])
  {
    centerPageView = [(TUISystemInputAssistantView *)self centerPageView];
    [centerPageView frame];
    v41.origin.x = v22;
    v41.origin.y = v23;
    v41.size.width = v24;
    v41.size.height = v25;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectUnion(v37, v41);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView convertRect:self toView:x, y, width, height];
    x = v27;
    y = v28;
    width = v29;
    height = v30;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (TUICandidateView)candidateView
{
  v21 = *MEMORY[0x1E69E9840];
  centerView = [(TUISystemInputAssistantView *)self centerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    centerView2 = [(TUISystemInputAssistantView *)self centerView];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      centerView3 = [(TUISystemInputAssistantView *)self centerView];
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();

      if (v7)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        centerView4 = [(TUISystemInputAssistantView *)self centerView];
        arrangedSubviews = [centerView4 arrangedSubviews];

        v10 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(arrangedSubviews);
              }

              v14 = *(*(&v16 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                centerView2 = v14;

                goto LABEL_15;
              }
            }

            v11 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    centerView2 = 0;
  }

LABEL_15:

  return centerView2;
}

@end