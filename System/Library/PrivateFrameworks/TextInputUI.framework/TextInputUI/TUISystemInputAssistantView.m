@interface TUISystemInputAssistantView
- (BOOL)_shouldHostCenterViewOutsidePageView;
- (BOOL)_swiftPlaygroundsWorkaroundEnabled;
- (BOOL)isInputAssistantItemHidden;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldSkipValidation;
- (BOOL)showsCenterView;
- (BOOL)validateIfNeeded;
- (CGRect)containerFrame;
- (CGSize)sizeForVisualState:(int64_t)a3;
- (TUICandidateView)candidateView;
- (TUIPredictionView)predictionView;
- (TUISystemInputAssistantView)initWithFrame:(CGRect)a3;
- (TUISystemInputAssistantViewDelegate)delegate;
- (UIEdgeInsets)overrideSafeAreaInsets;
- (UIEdgeInsets)safeAreaInsets;
- (UIView)containerView;
- (id)_createUnifiedButtonBarIfNecessary;
- (id)_currentLayoutViewSet;
- (id)_hostedCenterView;
- (void)_exchangeCenterViewIfNecessaryForCompatibility;
- (void)_setButtonBarItemsExpanded:(BOOL)a3 animationType:(unint64_t)a4;
- (void)_updateBarButtonGroups;
- (void)_updateBarButtonGroupsIfNeeded;
- (void)_updateExpandableButtonBarItems;
- (void)_updateStyle;
- (void)_updateStyleForButtonBars;
- (void)_updateVisualProvider;
- (void)assistantButtonBarView:(id)a3 wantsToShowCollapsedItemGroup:(id)a4 fromButton:(id)a5;
- (void)assistantPageView:(id)a3 didSwitchToSecondaryViewVisible:(BOOL)a4;
- (void)layoutSubviews;
- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)resetContainerConstraints;
- (void)setBackgroundVisible:(BOOL)a3;
- (void)setButtonBarItemsExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setCenterView:(id)a3;
- (void)setCenterViewHidden:(BOOL)a3;
- (void)setCenterViewWidth:(double)a3;
- (void)setHidesExpandableButton:(BOOL)a3;
- (void)setInputAssistantItem:(id)a3 force:(BOOL)a4;
- (void)setLayout:(id)a3;
- (void)setNeedsValidation;
- (void)setRenderConfig:(id)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setSecondaryView:(id)a3;
- (void)setShowsButtonBarItemsInline:(BOOL)a3;
- (void)setShowsExpandableButtonBarItems:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)setSystemInputAssistantItem:(id)a3;
- (void)transitionToLayout:(id)a3 withStyle:(id)a4 start:(id)a5;
- (void)updateContainerConstraintsForFloating;
@end

@implementation TUISystemInputAssistantView

- (id)_currentLayoutViewSet
{
  v3 = objc_alloc_init(TUISystemInputAssistantLayoutViewSet);
  v4 = [(TUISystemInputAssistantView *)self _hostedCenterView];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setCenterView:v4];

  v5 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setLeftButtonBar:v5];

  v6 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setRightButtonBar:v6];

  v7 = [(TUISystemInputAssistantView *)self unifiedButtonBar];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setUnifiedButtonBar:v7];

  v8 = [(TUISystemInputAssistantView *)self containerView];
  [(TUISystemInputAssistantLayoutViewSet *)v3 setViewSetContainer:v8];

  return v3;
}

- (id)_hostedCenterView
{
  if ([(TUISystemInputAssistantView *)self _swiftPlaygroundsWorkaroundEnabled]&& [(TUISystemInputAssistantView *)self _shouldHostCenterViewOutsidePageView])
  {
    v3 = [(TUISystemInputAssistantView *)self centerView];
  }

  else
  {
    v3 = [(TUISystemInputAssistantView *)self centerPageView];
  }

  return v3;
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
  v3 = [(TUISystemInputAssistantView *)self layout];
  [v3 setUsesUnifiedButtonBar:self->_showsExpandableButtonBarItems];

  v4 = [(TUISystemInputAssistantView *)self layout];
  v5 = [(TUISystemInputAssistantView *)self _currentLayoutViewSet];
  v6 = [(TUISystemInputAssistantView *)self inputAssistantItem];
  v7 = [(TUISystemInputAssistantView *)self systemInputAssistantItem];
  [v4 configureButtonBarsInViewSet:v5 forApplicationAssistantItem:v6 withSystemAssistantItem:v7 withAssistantView:self];

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
  v11 = [(TUISystemInputAssistantView *)self backdropView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(TUISystemInputAssistantView *)self safeAreaInsets];
  if (v10 > v12)
  {
    [(TUISystemInputAssistantView *)self preferredInsets];
    v13 = [(TUISystemInputAssistantView *)self renderConfig];
    if ([v13 colorAdaptiveBackground])
    {
      v14 = [MEMORY[0x1E69DCBE0] activeInstance];
      v15 = [v14 isMinimized];

      if ((v15 & 1) == 0)
      {
        v16 = [MEMORY[0x1E69DC938] currentDevice];
        v17 = [v16 userInterfaceIdiom];

        if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

  v22 = [(TUISystemInputAssistantView *)self _currentLayoutViewSet];
  v23 = [(TUISystemInputAssistantView *)self layout];
  [v23 layoutViewSet:v22 inBounds:self forAssistantView:{v4, v6, v8, v10}];
}

- (BOOL)validateIfNeeded
{
  if (self->_needsValidation && ![(TUISystemInputAssistantView *)self shouldSkipValidation])
  {
    v4 = [(TUIAssistantButtonBarView *)self->_leftButtonBar validateButtonGroups];
    v5 = [(TUIAssistantButtonBarView *)self->_rightButtonBar validateButtonGroups];
    v6 = [(TUIAssistantButtonBarView *)self->_unifiedButtonBar validateButtonGroups];
    self->_needsValidation = 0;
    v3 = v4 || v5 || v6;
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
    v3 = [(TUISystemInputAssistantView *)self _createUnifiedButtonBarIfNecessary];
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setHidden:0];
    [(TUISystemInputAssistantPageView *)self->_centerPageView setHidesExpandButton:self->_hidesExpandableButton];
    v4 = [(TUISystemInputAssistantPageView *)self->_centerPageView expandButton];
    [v4 addTarget:self action:sel__didTapExpandButton_ forControlEvents:64];

    [(TUISystemInputAssistantView *)self _updateVisualProvider];
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
    v5 = [(TUISystemInputAssistantView *)self centerViewHidden];
  }

  else
  {
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setHidden:1];
    [(TUISystemInputAssistantPageView *)self->_centerPageView setHidesExpandButton:1];
    v5 = 0;
  }

  [(TUISystemInputAssistantView *)self setButtonBarItemsExpanded:v5 animated:0];
}

- (BOOL)isInputAssistantItemHidden
{
  [(TUISystemInputAssistantView *)self validateIfNeeded];
  v3 = [(TUISystemInputAssistantView *)self inputAssistantItem];
  v4 = [v3 leadingBarButtonGroups];
  if (__57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(v4))
  {
    v5 = [(TUISystemInputAssistantView *)self inputAssistantItem];
    v6 = [v5 _centerBarButtonGroups];
    if (__57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(v6))
    {
      v7 = [(TUISystemInputAssistantView *)self inputAssistantItem];
      v8 = [v7 trailingBarButtonGroups];
      v9 = __57__TUISystemInputAssistantView_isInputAssistantItemHidden__block_invoke(v8);
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
  v3 = [(TUISystemInputAssistantView *)self style];
  v4 = [v3 drawsPredictionBackdropView];
  v5 = [(TUISystemInputAssistantView *)self predictionView];
  [v5 setDrawsBackdropView:v4];

  v6 = [(TUISystemInputAssistantView *)self style];
  v7 = [v6 predictionSeparatorColor];
  v8 = [(TUISystemInputAssistantView *)self predictionView];
  [v8 setSeparatorColor:v7];

  v9 = [(TUISystemInputAssistantView *)self style];
  v10 = [v9 predictionHighlightColor];
  v11 = [(TUISystemInputAssistantView *)self predictionView];
  [v11 setHighlightColor:v10];

  v12 = [(TUISystemInputAssistantView *)self style];
  [v12 highlightMargin];
  v14 = v13;
  v15 = [(TUISystemInputAssistantView *)self predictionView];
  [v15 setHighlightMargin:v14];

  v16 = [(TUISystemInputAssistantView *)self style];
  v17 = [v16 useContinuousCornerInHighlight];
  v18 = [(TUISystemInputAssistantView *)self predictionView];
  [v18 setUseContinuousCornerInHighlight:v17];

  v19 = [(TUISystemInputAssistantView *)self style];
  [v19 highlightCornerRadius];
  v21 = v20;
  v22 = [(TUISystemInputAssistantView *)self predictionView];
  [v22 setHighlightCornerRadius:v21];

  v23 = [(TUISystemInputAssistantView *)self style];
  [v23 separatorMargin];
  v25 = v24;
  v26 = [(TUISystemInputAssistantView *)self predictionView];
  [v26 setSeparatorMargin:v25];

  v27 = [(TUISystemInputAssistantView *)self style];
  v28 = [v27 shouldAnimatePredictionCandidate];
  v29 = [(TUISystemInputAssistantView *)self predictionView];
  [v29 setShouldAnimateCells:v28];

  [(TUISystemInputAssistantView *)self _updateStyleForButtonBars];
  [(TUISystemInputAssistantView *)self _updateBarButtonGroupsIfNeeded];

  [(TUISystemInputAssistantView *)self setNeedsLayout];
}

- (TUIPredictionView)predictionView
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(TUISystemInputAssistantView *)self centerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TUISystemInputAssistantView *)self centerView];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v6 = [(TUISystemInputAssistantView *)self centerView];
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();

      if (v7)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [(TUISystemInputAssistantView *)self centerView];
        v9 = [v8 arrangedSubviews];

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v16 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v5 = v14;

                goto LABEL_15;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v5 = 0;
  }

LABEL_15:

  return v5;
}

- (void)_updateStyleForButtonBars
{
  v3 = [(TUISystemInputAssistantView *)self style];
  [v3 barButtonWidth];
  v5 = v4;
  v6 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [v6 setBarButtonWidth:v5];

  v7 = [(TUISystemInputAssistantView *)self style];
  [v7 minimumInterBarItemSpace];
  v9 = v8;
  v10 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [v10 setMinimumInterItemSpace:v9];

  v11 = [(TUISystemInputAssistantView *)self style];
  v12 = [v11 clipsToBounds];
  v13 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [v13 setClipsToBounds:v12];

  v14 = [(TUISystemInputAssistantView *)self style];
  [v14 barButtonWidth];
  v16 = v15;
  v17 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [v17 setBarButtonWidth:v16];

  v18 = [(TUISystemInputAssistantView *)self style];
  [v18 minimumInterBarItemSpace];
  v20 = v19;
  v21 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [v21 setMinimumInterItemSpace:v20];

  v24 = [(TUISystemInputAssistantView *)self style];
  v22 = [v24 clipsToBounds];
  v23 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [v23 setClipsToBounds:v22];
}

- (void)_updateVisualProvider
{
  v3 = [(TUISystemInputAssistantView *)self renderConfig];
  if ([v3 lightKeyboard])
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [(TUISystemInputAssistantView *)self setTintColor:v4];

  v5 = [(TUISystemInputAssistantView *)self renderConfig];
  v9 = [v5 buttonBarVisualProvider];

  if (v9)
  {
    v6 = [(TUISystemInputAssistantView *)self leftButtonBar];
    [v6 setVisualProvider:v9];

    v7 = [(TUISystemInputAssistantView *)self rightButtonBar];
    [v7 setVisualProvider:v9];

    v8 = [(TUISystemInputAssistantView *)self unifiedButtonBar];
    [v8 setVisualProvider:v9];

    [(TUISystemInputAssistantView *)self layoutIfNeeded];
  }
}

- (void)_exchangeCenterViewIfNecessaryForCompatibility
{
  if ([(TUISystemInputAssistantView *)self _swiftPlaygroundsWorkaroundEnabled])
  {
    if ([(TUISystemInputAssistantView *)self _shouldHostCenterViewOutsidePageView])
    {
      v3 = [(TUISystemInputAssistantView *)self centerView];
      v4 = [v3 superview];

      if (v4 == self)
      {
        return;
      }

      v5 = [(TUISystemInputAssistantView *)self centerPageView];
      [v5 removeFromSuperview];

      v13 = [(TUISystemInputAssistantView *)self containerView];
      v6 = [(TUISystemInputAssistantView *)self centerView];
    }

    else
    {
      v7 = [(TUISystemInputAssistantView *)self centerPageView];
      v8 = [v7 superview];

      if (v8 == self)
      {
        return;
      }

      v9 = [(TUISystemInputAssistantView *)self centerView];
      [v9 removeFromSuperview];

      v10 = [(TUISystemInputAssistantView *)self centerView];
      v11 = [(TUISystemInputAssistantView *)self centerPageView];
      [v11 setPrimaryView:v10];

      v13 = [(TUISystemInputAssistantView *)self containerView];
      v6 = [(TUISystemInputAssistantView *)self centerPageView];
    }

    v12 = v6;
    [v13 addSubview:v6];
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
  v2 = [(TUISystemInputAssistantView *)self inputAssistantItem];
  v3 = [v2 _centerBarButtonGroups];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)assistantPageView:(id)a3 didSwitchToSecondaryViewVisible:(BOOL)a4
{
  v4 = a4;
  self->_buttonBarItemsExpanded = a4;
  v6 = [(TUISystemInputAssistantView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(TUISystemInputAssistantView *)self delegate];
    [v8 systemInputAssistantView:self didExpand:v4];
  }
}

- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  if ((a4 - 6) <= 2)
  {
    [(TUISystemInputAssistantView *)self setAlpha:a3, 0.0];
  }
}

- (CGSize)sizeForVisualState:(int64_t)a3
{
  v3 = *MEMORY[0x1E69DE788];
  v4 = *MEMORY[0x1E69DE788];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)assistantButtonBarView:(id)a3 wantsToShowCollapsedItemGroup:(id)a4 fromButton:(id)a5
{
  v17 = a4;
  v7 = a5;
  v8 = [v17 representativeItem];
  v9 = [v8 target];
  if (v9)
  {
    v10 = v9;
    v11 = [v8 action];

    if (v11)
    {
      v12 = [v8 target];
      [v12 performSelector:objc_msgSend(v8 withObject:{"action"), v8}];
LABEL_7:

      goto LABEL_8;
    }
  }

  v13 = [(TUISystemInputAssistantView *)self delegate];
  if (v13)
  {
    v14 = v13;
    v15 = [(TUISystemInputAssistantView *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v12 = [(TUISystemInputAssistantView *)self delegate];
      [v12 systemInputAssistantView:self wantsToShowCollapsedItemGroup:v17 fromView:v7];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)transitionToLayout:(id)a3 withStyle:(id)a4 start:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TUISystemInputAssistantView *)self layout];

  if (v10 != v11)
  {
    self->_isTransitioning = 1;
  }

  if (v9)
  {
    v9[2](v9);
  }

  [(TUISystemInputAssistantView *)self setStyle:v8];
  [(TUISystemInputAssistantView *)self setLayout:v11];
  [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  self->_isTransitioning = 0;
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if (self->_style != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_style, a3);
    [(TUISystemInputAssistantView *)self _updateStyle];
    v5 = v6;
  }
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  layout = self->_layout;
  if (layout != v5)
  {
    v9 = v5;
    v7 = [(TUISystemInputAssistantView *)self _currentLayoutViewSet];
    [(TUISystemInputAssistantLayout *)layout invalidate:v7];

    objc_storeStrong(&self->_layout, a3);
    if ([(TUISystemInputAssistantLayout *)v9 usesUnifiedButtonBar])
    {
      v8 = [(TUISystemInputAssistantView *)self _createUnifiedButtonBarIfNecessary];
    }

    [(TUISystemInputAssistantView *)self _updateBarButtonGroupsIfNeeded];
    [(TUISystemInputAssistantView *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)setRenderConfig:(id)a3
{
  v5 = a3;
  renderConfig = self->_renderConfig;
  if (renderConfig)
  {
    v7 = [(UIKBRenderConfig *)renderConfig lightKeyboard];
    v8 = [v5 lightKeyboard];
    v11.receiver = self;
    v11.super_class = TUISystemInputAssistantView;
    [(TUISystemInputAssistantView *)&v11 _setRenderConfig:v5];
    if (v7 == v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUISystemInputAssistantView;
    [(TUISystemInputAssistantView *)&v11 _setRenderConfig:v5];
  }

  objc_storeStrong(&self->_renderConfig, a3);
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_centerView setRenderConfig:v5];
  }

  [(TUISystemInputAssistantView *)self _updateVisualProvider];
  if ([v5 lightKeyboard])
  {
    v9 = 3901;
  }

  else
  {
    v9 = 2030;
  }

  v10 = [(TUISystemInputAssistantView *)self backdropView];
  [v10 transitionToStyle:v9];

LABEL_11:
}

- (void)setSystemInputAssistantItem:(id)a3
{
  v5 = a3;
  if (self->_systemInputAssistantItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_systemInputAssistantItem, a3);
    [(TUISystemInputAssistantView *)self _updateBarButtonGroupsIfNeeded];
    v5 = v6;
  }
}

- (void)setInputAssistantItem:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_inputAssistantItem != v7 || v4)
  {
    v9 = v7;
    objc_storeStrong(&self->_inputAssistantItem, a3);
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
    [(TUISystemInputAssistantView *)self _exchangeCenterViewIfNecessaryForCompatibility];
    v7 = v9;
  }
}

- (void)_setButtonBarItemsExpanded:(BOOL)a3 animationType:(unint64_t)a4
{
  if (self->_buttonBarItemsExpanded != a3)
  {
    v15 = v4;
    v16 = v5;
    v7 = a3;
    self->_buttonBarItemsExpanded = a3;
    v9 = [(TUISystemInputAssistantView *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TUISystemInputAssistantView *)self delegate];
      [v11 systemInputAssistantView:self willExpand:v7];
    }

    v12 = [(TUISystemInputAssistantView *)self centerPageView];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__TUISystemInputAssistantView__setButtonBarItemsExpanded_animationType___block_invoke;
    v13[3] = &unk_1E72D2C30;
    v13[4] = self;
    v14 = v7;
    [v12 setSecondaryViewVisible:v7 withAnimationType:a4 completion:v13];

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

- (void)setButtonBarItemsExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(TUISystemInputAssistantView *)self _setButtonBarItemsExpanded:a3 animationType:v4];
}

- (void)setHidesExpandableButton:(BOOL)a3
{
  if (self->_hidesExpandableButton != a3)
  {
    self->_hidesExpandableButton = a3;
    [(TUISystemInputAssistantView *)self _updateExpandableButtonBarItems];
  }
}

- (void)setShowsExpandableButtonBarItems:(BOOL)a3
{
  if (self->_showsExpandableButtonBarItems != a3)
  {
    self->_showsExpandableButtonBarItems = a3;
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
    v6 = [(TUISystemInputAssistantView *)self renderConfig];
    v7 = [v6 buttonBarVisualProvider];
    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setVisualProvider:v7];

    [(TUIAssistantButtonBarView *)self->_unifiedButtonBar setAccessibilityIdentifier:@"UnifiedButtonBar"];
    [(TUISystemInputAssistantView *)self setButtonBarItemsExpanded:0 animated:0];
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];
  }

  v8 = [(TUISystemInputAssistantView *)self secondaryView];
  v9 = v8;
  if (!v8)
  {
    v9 = self->_unifiedButtonBar;
  }

  v10 = [(TUISystemInputAssistantView *)self centerPageView];
  [v10 setSecondaryView:v9];

  v11 = self->_unifiedButtonBar;

  return v11;
}

- (void)setShowsButtonBarItemsInline:(BOOL)a3
{
  if (self->_showsButtonBarItemsInline != a3)
  {
    self->_showsButtonBarItemsInline = a3;
    leftButtonBar = self->_leftButtonBar;
    if (a3)
    {
      if (!leftButtonBar)
      {
        v5 = [TUIAssistantButtonBarView alloc];
        v6 = [(TUIAssistantButtonBarView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v7 = self->_leftButtonBar;
        self->_leftButtonBar = v6;

        [(TUIAssistantButtonBarView *)self->_leftButtonBar setDelegate:self];
        v8 = [(TUISystemInputAssistantView *)self appearanceDelegate];
        [(TUIAssistantButtonBarView *)self->_leftButtonBar setAppearanceDelegate:v8];

        [(TUIAssistantButtonBarView *)self->_leftButtonBar setButtonAlignment:0];
        [(TUIAssistantButtonBarView *)self->_leftButtonBar setAccessibilityIdentifier:@"LeftButtonBar"];
        v9 = [(TUISystemInputAssistantView *)self containerView];
        [v9 addSubview:self->_leftButtonBar];
      }

      if (!self->_rightButtonBar)
      {
        v10 = [TUIAssistantButtonBarView alloc];
        v11 = [(TUIAssistantButtonBarView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        rightButtonBar = self->_rightButtonBar;
        self->_rightButtonBar = v11;

        [(TUIAssistantButtonBarView *)self->_rightButtonBar setDelegate:self];
        v13 = [(TUISystemInputAssistantView *)self appearanceDelegate];
        [(TUIAssistantButtonBarView *)self->_rightButtonBar setAppearanceDelegate:v13];

        [(TUIAssistantButtonBarView *)self->_rightButtonBar setButtonAlignment:2];
        [(TUIAssistantButtonBarView *)self->_rightButtonBar setAccessibilityIdentifier:@"RightButtonBar"];
        v14 = [(TUISystemInputAssistantView *)self containerView];
        [v14 addSubview:self->_rightButtonBar];
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

- (void)setBackgroundVisible:(BOOL)a3
{
  v3 = a3;
  self->_backgroundVisible = a3;
  v4 = [(TUISystemInputAssistantView *)self backdropView];
  [v4 setHidden:!v3];
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  self->_scrollEnabled = a3;
  v4 = [(TUISystemInputAssistantView *)self centerPageView];
  [v4 setScrollEnabled:v3];
}

- (void)setCenterViewHidden:(BOOL)a3
{
  if (self->_centerViewHidden != a3)
  {
    v4 = a3;
    self->_centerViewHidden = a3;
    v6 = [(TUISystemInputAssistantView *)self centerView];
    [v6 setHidden:v4];

    v7 = [(TUISystemInputAssistantView *)self leftButtonBar];
    [v7 setConstrainedHorizontally:v4 ^ 1];

    v8 = [(TUISystemInputAssistantView *)self rightButtonBar];
    [v8 setConstrainedHorizontally:v4 ^ 1];

    [(TUISystemInputAssistantView *)self _updateExpandableButtonBarItems];
    [(TUISystemInputAssistantView *)self _updateBarButtonGroups];

    [(TUISystemInputAssistantView *)self setNeedsLayout];
  }
}

- (void)setCenterViewWidth:(double)a3
{
  if (self->_centerViewWidth != a3)
  {
    self->_centerViewWidth = a3;
    [(TUISystemInputAssistantView *)self setNeedsLayout];
  }
}

- (void)setSecondaryView:(id)a3
{
  objc_storeStrong(&self->_secondaryView, a3);
  v5 = a3;
  unifiedButtonBar = v5;
  if (!v5)
  {
    unifiedButtonBar = self->_unifiedButtonBar;
  }

  v7 = [(TUISystemInputAssistantView *)self centerPageView];
  [v7 setSecondaryView:unifiedButtonBar];
}

- (void)setCenterView:(id)a3
{
  objc_storeStrong(&self->_centerView, a3);
  v5 = a3;
  [v5 setHidden:self->_centerViewHidden];
  v6 = [(TUISystemInputAssistantView *)self renderConfig];
  [v5 _setRenderConfig:v6];

  v7 = [(TUISystemInputAssistantView *)self centerPageView];
  [v7 setPrimaryView:v5];

  [(TUISystemInputAssistantView *)self _exchangeCenterViewIfNecessaryForCompatibility];

  [(TUISystemInputAssistantView *)self _updateStyle];
}

- (void)resetContainerConstraints
{
  v3 = [(TUISystemInputAssistantView *)self staticConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(TUISystemInputAssistantView *)self staticConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(TUISystemInputAssistantView *)self containerLeading];

  if (v6)
  {
    v7 = [(TUISystemInputAssistantView *)self containerLeading];
    [v7 setActive:0];
  }

  v8 = [(TUISystemInputAssistantView *)self containerTrailing];

  if (v8)
  {
    v9 = [(TUISystemInputAssistantView *)self containerTrailing];
    [v9 setActive:0];
  }

  v10 = [(TUISystemInputAssistantView *)self containerCenter];

  if (v10)
  {
    v11 = [(TUISystemInputAssistantView *)self containerCenter];
    [v11 setActive:0];
  }

  v12 = [(TUISystemInputAssistantView *)self containerView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:1];
}

- (void)updateContainerConstraintsForFloating
{
  v50[5] = *MEMORY[0x1E69E9840];
  v3 = [(TUISystemInputAssistantView *)self containerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(TUISystemInputAssistantView *)self containerLeading];

  if (!v4)
  {
    v5 = [(TUISystemInputAssistantView *)self containerView];
    v6 = [v5 leadingAnchor];
    v7 = [(TUISystemInputAssistantView *)self leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:16.0];
    [(TUISystemInputAssistantView *)self setContainerLeading:v8];
  }

  v9 = [(TUISystemInputAssistantView *)self containerTrailing];

  if (!v9)
  {
    v10 = [(TUISystemInputAssistantView *)self trailingAnchor];
    v11 = [(TUISystemInputAssistantView *)self containerView];
    v12 = [v11 trailingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
    [(TUISystemInputAssistantView *)self setContainerTrailing:v13];
  }

  v14 = [(TUISystemInputAssistantView *)self containerCenter];

  if (!v14)
  {
    v15 = [(TUISystemInputAssistantView *)self containerView];
    v16 = [v15 centerXAnchor];
    v17 = [(TUISystemInputAssistantView *)self centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [(TUISystemInputAssistantView *)self setContainerCenter:v18];
  }

  v19 = [(TUISystemInputAssistantView *)self staticConstraints];

  if (!v19)
  {
    v49 = [(TUISystemInputAssistantView *)self containerView];
    v47 = [v49 leftAnchor];
    v48 = [(TUISystemInputAssistantView *)self leftButtonBar];
    v46 = [v48 leftAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v50[0] = v45;
    v44 = [(TUISystemInputAssistantView *)self containerView];
    v42 = [v44 rightAnchor];
    v43 = [(TUISystemInputAssistantView *)self rightButtonBar];
    v41 = [v43 rightAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v50[1] = v40;
    v39 = [(TUISystemInputAssistantView *)self containerView];
    v37 = [v39 topAnchor];
    v38 = [(TUISystemInputAssistantView *)self rightButtonBar];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v50[2] = v35;
    v34 = [(TUISystemInputAssistantView *)self containerView];
    v20 = [v34 bottomAnchor];
    v21 = [(TUISystemInputAssistantView *)self rightButtonBar];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v50[3] = v23;
    v24 = [(TUISystemInputAssistantView *)self containerView];
    v25 = [v24 topAnchor];
    v26 = [(TUISystemInputAssistantView *)self topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v50[4] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
    [(TUISystemInputAssistantView *)self setStaticConstraints:v28];
  }

  v29 = [(TUISystemInputAssistantView *)self staticConstraints];
  v30 = [v29 objectAtIndexedSubscript:0];
  v31 = [v30 isActive];

  if ((v31 & 1) == 0)
  {
    v32 = MEMORY[0x1E696ACD8];
    v33 = [(TUISystemInputAssistantView *)self staticConstraints];
    [v32 activateConstraints:v33];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = [(TUISystemInputAssistantView *)self centerPageView];
  v10 = [v9 isHidden];
  if ((v10 & 1) == 0)
  {
    v11 = [(TUISystemInputAssistantView *)self centerPageView];
    v12 = [(TUISystemInputAssistantView *)self centerPageView];
    [(TUISystemInputAssistantView *)self convertPoint:v12 toView:x, y];
    if ([v11 pointInside:v8 withEvent:?])
    {
      v13 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v22 = v12;
    v23 = v11;
  }

  v14 = [(TUISystemInputAssistantView *)self leftButtonBar];
  v15 = [v14 isHidden];
  if ((v15 & 1) == 0)
  {
    v16 = [(TUISystemInputAssistantView *)self leftButtonBar];
    v4 = [(TUISystemInputAssistantView *)self leftButtonBar];
    [(TUISystemInputAssistantView *)self convertPoint:v4 toView:x, y];
    if ([v16 pointInside:v8 withEvent:?])
    {
      v13 = 1;
LABEL_13:

      goto LABEL_14;
    }

    v21 = v16;
  }

  v17 = [(TUISystemInputAssistantView *)self rightButtonBar];
  if ([v17 isHidden])
  {

    v13 = 0;
  }

  else
  {
    v18 = [(TUISystemInputAssistantView *)self rightButtonBar];
    v19 = [(TUISystemInputAssistantView *)self rightButtonBar];
    [(TUISystemInputAssistantView *)self convertPoint:v19 toView:x, y];
    v13 = [v18 pointInside:v8 withEvent:?];
  }

  v16 = v21;
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:

  v12 = v22;
  v11 = v23;
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v13;
}

- (TUISystemInputAssistantView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = TUISystemInputAssistantView;
  v3 = [(TUISystemInputAssistantView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCB90]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:3903 style:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(TUISystemInputAssistantView *)v3 setBackdropView:v9];

    v10 = [(TUISystemInputAssistantView *)v3 containerView];
    v11 = [(TUISystemInputAssistantView *)v3 backdropView];
    [v10 addSubview:v11];

    v12 = objc_alloc_init(TUISystemInputAssistantLayoutStandard);
    [(TUISystemInputAssistantView *)v3 setLayout:v12];

    v13 = objc_alloc_init(TUISystemInputAssistantStyleStandard);
    [(TUISystemInputAssistantView *)v3 setStyle:v13];

    v14 = [[TUISystemInputAssistantPageView alloc] initWithFrame:v5, v6, v7, v8];
    [(TUISystemInputAssistantView *)v3 setCenterPageView:v14];

    v15 = [(TUISystemInputAssistantView *)v3 centerPageView];
    [v15 setPageViewDelegate:v3];

    v16 = [(TUISystemInputAssistantView *)v3 centerPageView];
    [v16 setAccessibilityIdentifier:@"CenterPageView"];

    v17 = [(TUISystemInputAssistantView *)v3 containerView];
    v18 = [(TUISystemInputAssistantView *)v3 centerPageView];
    [v17 addSubview:v18];

    [(TUISystemInputAssistantView *)v3 setScrollEnabled:1];
    v19 = [[TUIButtonBarAppearanceDelegate alloc] initWithSystemInputAssistantView:v3];
    [(TUISystemInputAssistantView *)v3 setAppearanceDelegate:v19];
  }

  return v3;
}

- (CGRect)containerFrame
{
  v3 = [(TUISystemInputAssistantView *)self leftButtonBar];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TUISystemInputAssistantView *)self rightButtonBar];
  [v12 frame];
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
    v21 = [(TUISystemInputAssistantView *)self centerPageView];
    [v21 frame];
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
  v3 = [(TUISystemInputAssistantView *)self centerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TUISystemInputAssistantView *)self centerView];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v6 = [(TUISystemInputAssistantView *)self centerView];
      objc_opt_class();
      v7 = objc_opt_isKindOfClass();

      if (v7)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [(TUISystemInputAssistantView *)self centerView];
        v9 = [v8 arrangedSubviews];

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v16 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v5 = v14;

                goto LABEL_15;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v5 = 0;
  }

LABEL_15:

  return v5;
}

@end