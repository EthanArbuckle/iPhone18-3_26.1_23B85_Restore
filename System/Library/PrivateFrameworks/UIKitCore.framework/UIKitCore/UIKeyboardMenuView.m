@interface UIKeyboardMenuView
- (BOOL)isVisible;
- (BOOL)launchedFromKeyboard;
- (BOOL)shouldShowSelectionExtraViewForIndexPath:(id)a3;
- (BOOL)usesShadowView;
- (CGRect)interactiveBounds;
- (CGRect)popupRect;
- (CGSize)preferredSize;
- (UIKeyboardMenuView)initWithFrame:(CGRect)a3;
- (double)minYOfLastTableCellForSelectionExtraView;
- (id)_renderConfig;
- (id)containerView;
- (id)dimmingView;
- (id)font;
- (id)indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:(CGPoint)a3;
- (id)maskForShadowViewBlurredBackground;
- (id)subtitleFont;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)getRowFromPoint:(CGPoint)a3;
- (unint64_t)_internationalKeyRoundedCornerInLayout:(id)a3;
- (void)_delayedFade;
- (void)autoscrollTimerFired:(id)a3;
- (void)clear;
- (void)customizeCell:(id)a3 forItemAtIndex:(unint64_t)a4;
- (void)dealloc;
- (void)dimmingViewWasTapped:(id)a3;
- (void)endScrolling:(id)a3;
- (void)fade;
- (void)fadeWithDelay:(double)a3 forSelectionAtIndex:(unint64_t)a4;
- (void)hide;
- (void)highlightRow:(unint64_t)a3;
- (void)insertSelExtraView;
- (void)performShowAnimation;
- (void)removeFromSuperview;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectItemAtPoint:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightForRowAtIndexPath:(id)a3 highlight:(BOOL)a4;
- (void)setKeyboardDimmed:(BOOL)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayForCell:(id)a3;
- (void)setNeedsDisplayForTopBottomCells;
- (void)setRenderConfig:(id)a3;
- (void)setupBackgroundKeyViewWithSize:(CGSize)a3;
- (void)setupShadowViewWithSize:(CGSize)a3;
- (void)show;
- (void)showAsHUDFromLocation:(CGPoint)a3 withInputView:(id)a4 touchBegan:(double)a5;
- (void)showAsPopupForKey:(id)a3 inLayout:(id)a4;
- (void)stopAnyAutoscrolling;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateSelectionWithPoint:(CGPoint)a3;
- (void)willShow;
@end

@implementation UIKeyboardMenuView

- (UIKeyboardMenuView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = UIKeyboardMenuView;
  v3 = [(UIView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    if ([(UIKeyboardMenuView *)v3 usesTable])
    {
      v5 = [UIInputSwitcherTableView alloc];
      v6 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
      v10 = [(UITableView *)v5 initWithFrame:0 style:*MEMORY[0x1E695F058], v7, v8, v9];
      m_table = v4->m_table;
      v4->m_table = v10;

      [(UITableView *)v4->m_table setDataSource:v4];
      [(UITableView *)v4->m_table setDelegate:v4];
      [(UITableView *)v4->m_table setSeparatorStyle:0];
      v12 = +[UIColor clearColor];
      [(UITableView *)v4->m_table setBackgroundColor:v12];

      [(UIScrollView *)v4->m_table setUserInteractionEnabled:0];
      [(UIInputSwitcherTableView *)v4->m_table setMenu:v4];
      [(UIView *)v4 addSubview:v4->m_table];
      v13 = [[UIInputSwitcherSelectionExtraView alloc] initWithFrame:v6, v7, v8, v9];
      m_selExtraView = v4->m_selExtraView;
      v4->m_selExtraView = v13;

      [(UIInputSwitcherSelectionExtraView *)v4->m_selExtraView setMenu:v4];
      v15 = v4->m_table;
      v16 = objc_opt_class();
      v17 = +[UIInputSwitcherTableCell reuseIdentifier];
      [(UITableView *)v15 registerClass:v16 forCellReuseIdentifier:v17];
    }

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v4 selector:sel_applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:0];

    [(UIView *)v4 setOpaque:0];
    v4->m_shouldFade = 1;
    v4->m_initialIndexInteracted = -1;
    v4->m_menuDrag = 0;
    v19 = [(UIView *)v4 _inheritedRenderConfig];
    v20 = [v19 colorAdaptiveBackground];

    if (v20)
    {
      v21 = [[_UIViewGlass alloc] initWithVariant:0];
      [(_UIViewGlass *)v21 setBackdropGroupName:@"UIKBBackdropGroupName"];
      [(UIView *)v4 _setBackground:v21];
      v22 = [(UIView *)v4 _inheritedRenderConfig];
      v23 = [v22 colorAdaptiveBackground];
      v24 = 8.0;
      if (v23)
      {
        v24 = 24.0;
      }

      [(UIView *)v4 _setCornerRadius:v24];
    }

    [(UIView *)v4 setMaximumContentSizeCategory:@"UICTContentSizeCategoryXXXL"];
    v25 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationSuspendedNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardMenuView;
  [(UIView *)&v4 dealloc];
}

- (id)subtitleFont
{
  v2 = [(UIView *)self maximumContentSizeCategory];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" maximumContentSizeCategory:v2];

  return v3;
}

- (id)font
{
  v2 = [(UIView *)self maximumContentSizeCategory];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" maximumContentSizeCategory:v2];

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v14 = CGRectIntegral(a3);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v13.receiver = self;
  v13.super_class = UIKeyboardMenuView;
  [(UIView *)&v13 setFrame:?];
  m_shadowView = self->m_shadowView;
  [(UIScrollView *)self->m_table contentSize];
  v10 = v9;
  [(UIScrollView *)self->m_table contentSize];
  [(UIInputSwitcherShadowView *)m_shadowView setFrame:0.0, 0.0, v10, v11];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [(UIInputSwitcherSelectionExtraView *)self->m_selExtraView setFrame:0.0, 0.0, width, height];
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  self->m_pointerOffset = MidX - CGRectGetMidX(self->m_referenceRect);
  [(UIInputSwitcherShadowView *)self->m_shadowView setPointerOffset:?];
  [(UIInputSwitcherSelectionExtraView *)self->m_selExtraView setPointerOffset:self->m_pointerOffset];
}

- (BOOL)isVisible
{
  v2 = [(UIView *)self window];
  v3 = v2 != 0;

  return v3;
}

- (void)performShowAnimation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__UIKeyboardMenuView_performShowAnimation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView animateWithDuration:117440512 delay:v2 options:0 animations:0.0 completion:0.0];
}

- (void)setKeyboardDimmed:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v8 = [v5 _layout];

  if (!v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 deactivateActiveKeysClearingTouchInfo:1 clearingDimming:0];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIKeyboardMenuView *)self usesDarkTheme];
    v7 = 0.1;
    if (v6)
    {
      v7 = 0.4;
    }

    [v8 setKeyboardDim:v3 amount:v7 withDuration:0.3];
  }
}

- (id)dimmingView
{
  if (!self->m_dimmingView)
  {
    v3 = [UIDimmingView alloc];
    v4 = [(UIDimmingView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    m_dimmingView = self->m_dimmingView;
    self->m_dimmingView = v4;

    [(UIDimmingView *)self->m_dimmingView setDelegate:self];
  }

  v6 = [(UIKeyboardMenuView *)self containerView];
  v7 = v6;
  if (v6)
  {
    [v6 frame];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = +[UIKeyboard activeKeyboard];
    [v12 frame];
    v9 = v13;
    v11 = v14;
  }

  [(UIView *)self->m_dimmingView setFrame:0.0, 0.0, v9, v11];
  v15 = self->m_dimmingView;
  v16 = v15;

  return v15;
}

- (void)dimmingViewWasTapped:(id)a3
{
  v4 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
  [v4 setKBMenuDismissSource:3];

  [(UIKeyboardMenuView *)self hide];

  [(UIKeyboardMenuView *)self returnToKeyboardIfNeeded];
}

- (BOOL)usesShadowView
{
  v3 = [(UIView *)self _inheritedRenderConfig];
  v4 = [v3 colorAdaptiveBackground];

  return (v4 & 1) == 0 && [(UIKeyboardMenuView *)self mode]== 0;
}

- (void)insertSelExtraView
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v3 = [(UIKeyboardMenuView *)self usesShadowView];
    m_selExtraView = self->m_selExtraView;
    v5 = &OBJC_IVAR___UIKeyboardMenuView_m_table;
    if (v3)
    {
      v5 = &OBJC_IVAR___UIKeyboardMenuView_m_shadowView;
    }

    v6 = *(&self->super.super.super.isa + *v5);

    [(UIView *)self insertSubview:m_selExtraView aboveSubview:v6];
  }
}

- (void)show
{
  if (![(UIKeyboardMenuView *)self shouldShow])
  {
    return;
  }

  [(UITableView *)self->m_table reloadData];
  [(UIKeyboardMenuView *)self willShow];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __26__UIKeyboardMenuView_show__block_invoke;
  v91[3] = &unk_1E70F3590;
  v91[4] = self;
  [UIView performWithoutAnimation:v91];
  [(UIInputSwitcherShadowView *)self->m_shadowView setMode:LODWORD(self->m_mode)];
  [(UIView *)self->m_shadowView setNeedsDisplay];
  [(UIView *)self->m_selExtraView setNeedsDisplay];
  v3 = [(UIKeyboardMenuView *)self containerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [(UIKeyboardMenuView *)self containerView];
  v6 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v5 window];

    v6 = v7;
  }

  if (([v6 _isHostedInAnotherProcess] & 1) != 0 || (objc_msgSend(v6, "windowScene"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_effectiveSettings"), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = 0;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [v9 frame];
    v13 = v12;
    v15 = v14;
  }

  v16 = v13;
  v17 = v15;
  if (CGRectIsEmpty(*&v10))
  {
    v18 = [objc_opt_self() mainScreen];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v23 = [v9 interfaceOrientation];
    if ([UIApp _isSpringBoard])
    {
      v24 = +[UIKeyboardSceneDelegate interfaceOrientation];
      if ((v24 - 1) >= 4)
      {
        v23 = 0;
      }

      else
      {
        v23 = v24;
      }
    }

    if ((v23 - 3) >= 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v13;
    }

    if ((v23 - 3) >= 2)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }
  }

  self->m_visibleRows = [(UIKeyboardMenuView *)self numberOfItems];
  [(UIKeyboardMenuView *)self preferredSize];
  v26 = v25;
  v28 = v27;
  v29 = v22;
  if (!self->m_mode)
  {
    goto LABEL_76;
  }

  v29 = v22;
  if ([(UIKeyboardMenuView *)self usesTable])
  {
    y = self->m_referenceRect.origin.y;
    v89 = [(UIKeyboardMenuView *)self containerView];
    [v89 frame];
    v32 = y + v31 + -6.0;
    v33 = [(UIKeyboardMenuView *)self containerView];
    v34 = [v33 window];
    v35 = __UIStatusBarManagerForWindow(v34);
    [v35 statusBarHeight];
    v37 = v36;

    v29 = v32 - v37;
  }

  if (!self->m_mode)
  {
LABEL_76:
    if (self->m_inputView)
    {
      v38 = self->m_referenceLocation.y;
      v39 = [(UIKeyboardMenuView *)self containerView];
      [v39 safeAreaInsets];
      v29 = v38 - v40 + -6.0;
    }
  }

  if (v26 > v20 + -10.0)
  {
    v26 = v20 + -10.0;
  }

  v41 = [(UIView *)self _inheritedRenderConfig];
  v42 = [v41 colorAdaptiveBackground];

  if (v42)
  {
    v43 = [UIView alloc];
    [(UIView *)self->m_table bounds];
    v44 = [(UIView *)v43 initWithFrame:0.0, 0.0];
    [(UITableView *)self->m_table setTableHeaderView:v44];

    v45 = [UIView alloc];
    [(UIView *)self->m_table bounds];
    v46 = [(UIView *)v45 initWithFrame:0.0, 0.0];
    [(UITableView *)self->m_table setTableFooterView:v46];
  }

  v47 = [(UITableView *)self->m_table tableHeaderView];
  [v47 frame];
  v49 = v48;

  v50 = [(UITableView *)self->m_table tableFooterView];
  [v50 frame];
  v52 = v51;

  v53 = 0;
  v54 = v28 + v49 + v52;
  self->m_scrollable = v54 > v29;
  self->m_scrolling = 0;
  if (self->m_scrollable)
  {
    if (self->m_mode)
    {
      v53 = 1;
    }

    else
    {
      v53 = self->m_inputView != 0;
    }
  }

  [(UIScrollView *)self->m_table setUserInteractionEnabled:v53];
  self->m_startAutoscroll = 0;
  [(UIScrollView *)self->m_table setScrollEnabled:self->m_scrollable];
  [(UIScrollView *)self->m_table _setAutoscrolling:self->m_scrollable];
  v55 = v28 + v49 + v52;
  if (self->m_scrollable)
  {
    v56 = (v29 - (v49 + v52)) / 50.0;
    self->m_visibleRows = vcvtmd_u64_f64(v56);
    v55 = v52 + v49 + floor(v56) * 50.0;
    v54 = v55 + -4.0;
  }

  [(UITableView *)self->m_table setFrame:0.0, 0.0, v26, v54];
  v57 = [(UIView *)self _inheritedRenderConfig];
  v58 = [v57 colorAdaptiveBackground];

  if (v58)
  {
    [(UIScrollView *)self->m_table setScrollIndicatorInsets:12.0, 0.0, 12.0, 0.0];
  }

  [(UIKeyboardMenuView *)self setUsesStraightLeftEdge:0];
  if (self->m_mode)
  {
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v60 = 20.0;
    if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v60 = 0.0;
    }

    p_m_referenceRect = &self->m_referenceRect;
    x = self->m_referenceRect.origin.x;
    if (x < v60)
    {
      [(UIKeyboardMenuView *)self setUsesStraightLeftEdge:1];
      x = p_m_referenceRect->origin.x;
    }

    width = self->m_referenceRect.size.width;
    v64 = self->m_referenceRect.origin.y - v55;
    if ([(UIKeyboardMenuView *)self usesStraightLeftEdge])
    {
      v65 = p_m_referenceRect->origin.x;
    }

    else
    {
      v65 = fmax(x + width * 0.5 - v26 * 0.5, 10.0);
    }

    v72 = v64 + -6.0;
    v74 = [(UIView *)self _inheritedRenderConfig];
    if ([v74 colorAdaptiveBackground])
    {
      v70 = 24.0;
    }

    else
    {
      v70 = 8.0;
    }

    v92.origin.x = p_m_referenceRect->origin.x;
    v92.origin.y = self->m_referenceRect.origin.y;
    v92.size.width = self->m_referenceRect.size.width;
    v92.size.height = self->m_referenceRect.size.height;
    if (CGRectGetMidX(v92) > v70 + 14.0 + 10.0)
    {
      v93.origin.x = p_m_referenceRect->origin.x;
      v93.origin.y = self->m_referenceRect.origin.y;
      v93.size.width = self->m_referenceRect.size.width;
      v93.size.height = self->m_referenceRect.size.height;
      if (v26 + CGRectGetMinX(v93) >= v90)
      {
        v94.origin.x = p_m_referenceRect->origin.x;
        v94.origin.y = self->m_referenceRect.origin.y;
        v94.size.width = self->m_referenceRect.size.width;
        v94.size.height = self->m_referenceRect.size.height;
        v65 = fmax(v70 + CGRectGetMidX(v94) - v26 + 14.0, 25.0);
      }
    }

    v95.origin.x = v65;
    v95.origin.y = v72;
    v95.size.width = v26;
    v95.size.height = v55;
    MinX = CGRectGetMinX(v95);
    v96.origin.x = p_m_referenceRect->origin.x;
    v96.origin.y = self->m_referenceRect.origin.y;
    v96.size.width = self->m_referenceRect.size.width;
    v96.size.height = self->m_referenceRect.size.height;
    if (MinX <= v70 + CGRectGetMinX(v96))
    {
      goto LABEL_61;
    }

    v97.origin.x = p_m_referenceRect->origin.x;
    v97.origin.y = self->m_referenceRect.origin.y;
    v97.size.width = self->m_referenceRect.size.width;
    v97.size.height = self->m_referenceRect.size.height;
    v73 = CGRectGetMinX(v97);
LABEL_58:
    v65 = v73 - v70;
    goto LABEL_61;
  }

  v66 = [(UIKeyboardMenuView *)self containerView];
  [v66 safeAreaInsets];
  v68 = v67;
  v70 = v69;

  if (!self->m_inputView)
  {
    v65 = round(*MEMORY[0x1E695EFF8] + (v90 - v26) * 0.5);
    v72 = round(*(MEMORY[0x1E695EFF8] + 8) + (v22 - v55) * 0.5);
    goto LABEL_61;
  }

  v71 = self->m_referenceLocation.x + v26 * -0.5;
  v72 = self->m_referenceLocation.y - v55 + -6.0;
  v65 = v68 + 5.0;
  if (v71 >= v65)
  {
    if (v70 + v26 + v71 + 5.0 <= v90)
    {
      v65 = self->m_referenceLocation.x + v26 * -0.5;
      goto LABEL_61;
    }

    v73 = v90 - v26 + -5.0;
    goto LABEL_58;
  }

LABEL_61:
  [(UIKeyboardMenuView *)self setupBackgroundKeyViewWithSize:v26, v55];
  [(UIKeyboardMenuView *)self setFrame:v65, v72, v26, v55];
  if ([(UIKeyboardMenuView *)self usesDimmingView])
  {
    v76 = [(UIKeyboardMenuView *)self dimmingView];
    v77 = [(UIKeyboardMenuView *)self containerView];
    [v77 addSubview:v76];
  }

  v78 = [(UIKeyboardMenuView *)self containerView];
  [v78 addSubview:self];

  if (self->m_scrollable)
  {
    [(UITableView *)self->m_table flashScrollIndicators];
  }

  v79 = [(UIKeyboardMenuView *)self defaultSelectedIndex];
  if (v79 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIKeyboardMenuView *)self highlightRow:v79];
  }

  [(UIView *)self->m_selExtraView removeFromSuperview];
  if (self->m_mode == 1)
  {
    v80 = [(UITableView *)self->m_table indexPathForSelectedRow];
    if (v80)
    {
      v81 = v80;
      v82 = [(UITableView *)self->m_table indexPathForSelectedRow];
      v83 = [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:v82];

      if (v83)
      {
        [(UIKeyboardMenuView *)self insertSelExtraView];
      }
    }
  }

  [(UIKeyboardMenuView *)self setNeedsDisplay];
  [(UIKeyboardMenuView *)self performShowAnimation];
  m_slideBehavior = self->m_slideBehavior;
  if (!m_slideBehavior)
  {
    v85 = +[_UISelectionFeedbackGeneratorConfiguration defaultConfiguration];
    v86 = [v85 tweakedConfigurationForClass:objc_opt_class() usage:@"retarget"];

    v87 = [(UIFeedbackGenerator *)[UISelectionFeedbackGenerator alloc] initWithConfiguration:v86];
    v88 = self->m_slideBehavior;
    self->m_slideBehavior = v87;

    [(UIFeedbackGenerator *)self->m_slideBehavior activateWithCompletionBlock:0];
    m_slideBehavior = self->m_slideBehavior;
  }

  [(UISelectionFeedbackGenerator *)m_slideBehavior selectionChanged];
  [(UIKeyboardMenuView *)self didShow];
}

void __26__UIKeyboardMenuView_show__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v1 = [_UIEditMenuSceneComponent sceneComponentForView:v2];
  [v1 dismissCurrentMenu];
}

- (void)setupBackgroundKeyViewWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UIKeyboardMenuView *)self mode])
  {
    m_backgroundKeyView = self->m_backgroundKeyView;

    [(UIKBKeyView *)m_backgroundKeyView removeFromSuperview];
    return;
  }

  if (!setupBackgroundKeyViewWithSize____keyplane)
  {
    v7 = [objc_opt_self() mainScreen];
    v8 = [UIKBScreenTraits traitsWithScreen:v7 orientation:1];

    v9 = UIKeyboardGetKBStarName(@"en_US", v8, 0, 0);
    v10 = UIKeyboardGetKBStarKeyboardWithName(v9);
    v11 = [v10 subtrees];
    v12 = [v11 firstObject];
    v13 = setupBackgroundKeyViewWithSize____keyplane;
    setupBackgroundKeyViewWithSize____keyplane = v12;

    if ([v8 idiom] == 1)
    {
      v14 = 102;
    }

    else
    {
      v14 = 1;
    }

    [setupBackgroundKeyViewWithSize____keyplane setVisualStyle:v14];
  }

  v34 = [(UIKeyboardMenuView *)self _renderConfig];
  v36.origin.x = *MEMORY[0x1E695EFF8];
  v36.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v36.size.width = width;
  v36.size.height = height;
  v37 = CGRectInset(v36, -2.0, -1.0);
  x = v37.origin.x;
  y = v37.origin.y;
  v17 = v37.size.width;
  v18 = v37.size.height;
  v19 = self->m_backgroundKeyView;
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = [(UIKBKeyView *)v19 renderConfig];
  v21 = [v20 lightKeyboard];
  if (v21 != [v34 lightKeyboard])
  {

LABEL_14:
    v23 = [[UIKBTree alloc] initWithType:8];
    v24 = +[UIKBShape shape];
    [(UIKBTree *)v23 setShape:v24];

    [(UIKBTree *)v23 setPaddedFrame:x, y, v17, v18];
    [(UIKBTree *)v23 setState:16];
    [(UIKBTree *)v23 setDisplayTypeHint:12];
    [(UIKBTree *)v23 setInteractionType:9];
    v25 = [UIKBRenderingContext renderingContextForRenderConfig:v34];
    [v25 setIsFloating:{+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating")}];
    v26 = +[UIKBRenderFactory factoryForVisualStyle:renderingContext:](UIKBRenderFactory, "factoryForVisualStyle:renderingContext:", [setupBackgroundKeyViewWithSize____keyplane visualStyling], v25);
    v27 = [v26 traitsForKey:v23 onKeyplane:setupBackgroundKeyViewWithSize____keyplane];
    v28 = objc_alloc_init(UIKBKeyViewAnimator);
    v29 = objc_alloc([(UIKBKeyViewAnimator *)v28 keyViewClassForKey:v23 renderTraits:v27 screenTraits:0]);
    v30 = [v29 initWithFrame:setupBackgroundKeyViewWithSize____keyplane keyplane:v23 key:{x, y, v17, v18}];
    [(UIKBKeyView *)v30 setDrawFrame:x, y, v17, v18];
    [(UIKBKeyView *)self->m_backgroundKeyView removeFromSuperview];
    v31 = self->m_backgroundKeyView;
    self->m_backgroundKeyView = v30;

    goto LABEL_15;
  }

  [(UIView *)self->m_backgroundKeyView frame];
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = v17;
  v39.size.height = v18;
  v22 = CGRectEqualToRect(v38, v39);

  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_15:
  v32 = [(UIView *)self _inheritedRenderConfig];
  v33 = [v32 colorAdaptiveBackground];

  if ((v33 & 1) == 0)
  {
    [(UIView *)self insertSubview:self->m_backgroundKeyView atIndex:0];
    [(UIKBKeyView *)self->m_backgroundKeyView setRenderConfig:v34];
    [(UIKBKeyView *)self->m_backgroundKeyView prepareForDisplay];
    [(UIView *)self->m_backgroundKeyView setNeedsDisplay];
  }
}

- (void)setupShadowViewWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UIKeyboardMenuView *)self usesShadowView])
  {
    m_shadowView = self->m_shadowView;
    if (m_shadowView)
    {
      [(UIView *)m_shadowView removeFromSuperview];
      v7 = self->m_shadowView;
      self->m_shadowView = 0;
    }

    v8 = [[UIInputSwitcherShadowView alloc] initWithFrame:0.0, 0.0, width, height];
    v9 = self->m_shadowView;
    self->m_shadowView = v8;

    [(UIInputSwitcherShadowView *)self->m_shadowView setMode:LODWORD(self->m_mode)];
    [(UIInputSwitcherShadowView *)self->m_shadowView setKeyRect:self->m_referenceRect.origin.x, self->m_referenceRect.origin.y, self->m_referenceRect.size.width, self->m_referenceRect.size.height];
    [(UIInputSwitcherShadowView *)self->m_shadowView setMenu:self];
    [(UIView *)self->m_table insertSubview:self->m_shadowView atIndex:0];
    v10 = self->m_shadowView;

    [(UIView *)v10 setNeedsDisplay];
  }
}

- (id)_renderConfig
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 inputViews];
  v4 = [v3 inputView];

  if (v4)
  {
    v5 = [v4 _inheritedRenderConfig];
  }

  else
  {
    v6 = [v2 containerView];
    v5 = [v6 _inheritedRenderConfig];
  }

  return v5;
}

- (void)showAsHUDFromLocation:(CGPoint)a3 withInputView:(id)a4 touchBegan:(double)a5
{
  y = a3.y;
  x = a3.x;
  v10 = a4;
  if (self->m_timeDismissed <= a5)
  {
    v15 = v10;
    self->m_referenceLocation.x = x;
    self->m_referenceLocation.y = y;
    objc_storeStrong(&self->m_inputView, a4);
    self->m_mode = 0;
    v11 = *(MEMORY[0x1E695F058] + 16);
    self->m_referenceRect.origin = *MEMORY[0x1E695F058];
    self->m_referenceRect.size = v11;
    if ([(UIKeyboardMenuView *)self isVisible])
    {
      v12 = [(UIKeyboardMenuView *)self layout];
      [v12 deactivateActiveKeys];
    }

    v13 = [(UIKeyboardMenuView *)self _renderConfig];
    [(UIKeyboardMenuView *)self setRenderConfig:v13];

    v14 = [(UIKeyboardMenuView *)self containerView];

    v10 = v15;
    if (v14)
    {
      [(UIKeyboardMenuView *)self show];
      v10 = v15;
    }
  }
}

- (id)containerView
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [(UIView *)self->m_inputView window];
  if (v4)
  {
    v5 = self->m_inputView;
  }

  else
  {
    v6 = +[UIKeyboard activeKeyboard];
    v7 = [v6 window];
    if (v7)
    {
      v5 = +[UIKeyboard activeKeyboard];
    }

    else
    {
      v8 = [v3 inputViews];
      v5 = [v8 inputView];
    }
  }

  v9 = [(UIView *)v5 window];
  v10 = [v9 rootViewController];
  v11 = [v10 view];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v3 containerView];
  }

  v14 = v13;

  v15 = [(UIView *)v5 window];
  if (v15 && ![(UIView *)v5 isDescendantOfView:v14])
  {
    v17 = 0;
  }

  else
  {
    v16 = +[UIKeyboardImpl activeInstance];
    v17 = [v16 isDictationPopoverPresented] ^ 1;
  }

  v18 = +[UIKeyboardImpl activeInstance];
  if ([v18 isEmojiPopoverPresented])
  {
    v19 = [v18 emojiPopoverController];
    v20 = [v19 view];
    v21 = [v20 window];
  }

  else
  {
    if (v17)
    {
      v22 = v14;
    }

    else
    {
      v22 = [(UIView *)v5 window];
    }

    v21 = v22;
  }

  return v21;
}

- (id)maskForShadowViewBlurredBackground
{
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  [(UIScrollView *)self->m_table contentSize];
  v7 = v6;
  v9 = v8;
  _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v8, v5);
  v10 = +[UIColor blackColor];
  [v10 set];

  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = [(UIView *)self _inheritedRenderConfig];
  if ([v13 colorAdaptiveBackground])
  {
    v14 = 24.0;
  }

  else
  {
    v14 = 8.0;
  }

  v15 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v11 cornerRadii:v12, v7, v9, v14, v14];
  [v15 fill];

  v16 = +[UIColor clearColor];
  [v16 set];

  v17 = [(UITableView *)self->m_table visibleCells];
  if ([v17 count])
  {
    if (v5 <= 1.0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.5;
    }

    v19 = [v17 objectAtIndex:0];
    [v19 frame];
    v21 = v20;

    for (i = v21 - v18; i < v9; i = v21 + i)
    {
      v26.origin.x = 0.0;
      v26.origin.y = i;
      v26.size.width = v7;
      v26.size.height = v18;
      UIRectFillUsingBlendMode(v26, kCGBlendModeCopy);
    }

    v23 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (double)minYOfLastTableCellForSelectionExtraView
{
  v3 = [(UITableView *)self->m_table visibleCells];
  v4 = [v3 lastObject];
  v5 = [v4 superview];
  [v4 frame];
  [v5 convertRect:self->m_selExtraView toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  MinY = CGRectGetMinY(v16);

  return MinY;
}

- (unint64_t)_internationalKeyRoundedCornerInLayout:(id)a3
{
  v3 = a3;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = -1;
  }

  else
  {
    v5 = [v3 keyboardName];
    v6 = [v5 rangeOfString:@"Emoji"];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)showAsPopupForKey:(id)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 paddedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  self->m_mode = 1;
  v16 = [(UIKeyboardMenuView *)self containerView];
  [v6 convertRect:v16 toView:{v9, v11, v13, v15}];
  self->m_referenceRect.origin.x = v17;
  self->m_referenceRect.origin.y = v18;
  self->m_referenceRect.size.width = v19;
  self->m_referenceRect.size.height = v20;

  [(UIInputSwitcherSelectionExtraView *)self->m_selExtraView setRoundedCorners:[(UIKeyboardMenuView *)self _internationalKeyRoundedCornerInLayout:v6]];
  [(UIInputSwitcherSelectionExtraView *)self->m_selExtraView setKeyRect:self->m_referenceRect.origin.x, self->m_referenceRect.origin.y, self->m_referenceRect.size.width, self->m_referenceRect.size.height];
  [(UIKeyboardMenuView *)self setReferenceKey:v7];

  [(UIKeyboardMenuView *)self setLayout:v6];
  [(UIKeyboardMenuView *)self show];
  v21 = [(UIKeyboardMenuView *)self layout];
  v22 = [(UIKeyboardMenuView *)self referenceKey];
  [v21 setState:16 forKey:v22];

  v23 = [(UIKeyboardMenuView *)self layout];
  v24 = [v23 currentKeyplaneView];
  v25 = [(UIKeyboardMenuView *)self referenceKey];
  v38 = [v24 viewForKey:v25];

  v26 = [(UIView *)self superview];
  [v38 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [v38 superview];
  [v26 convertRect:v35 fromView:{v28, v30, v32, v34}];
  [v38 setFrame:?];

  v36 = [(UIView *)self superview];
  [v36 addSubview:v38];

  v37 = [(UIView *)self superview];
  [(UIView *)self frame];
  [v37 convertRect:v38 toView:?];
  [(UIKeyboardMenuView *)self setFrame:?];

  [v38 setUserInteractionEnabled:1];
  [v38 addSubview:self];
}

- (void)_delayedFade
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UIKeyboardMenuView *)self setKeyboardDimmed:0];
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3 = [(UIView *)self superview];
  if (v3 && (m_shouldFade = self->m_shouldFade, v3, m_shouldFade))
  {
    v5 = [(UIKeyboardMenuView *)self layout];
    v6 = [v5 currentKeyplaneView];
    v7 = [(UIKeyboardMenuView *)self referenceKey];
    v8 = [v6 viewForKey:v7];

    v9 = [(UIKeyboardMenuView *)self layout];
    v10 = [(UIKeyboardMenuView *)self referenceKey];
    [v9 setState:2 forKey:v10];

    v11 = [(UIView *)self superview];

    if (v11 == v8)
    {
      [(UIKeyboardMenuView *)self clear];
    }

    else
    {
      v12 = [(UIKeyboardMenuView *)self showingCapsLockSwitcher];
      v13 = 0.5;
      if (v12)
      {
        v13 = 0.25;
      }

      v14[4] = self;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __34__UIKeyboardMenuView__delayedFade__block_invoke;
      v15[3] = &unk_1E70F3590;
      v15[4] = self;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __34__UIKeyboardMenuView__delayedFade__block_invoke_2;
      v14[3] = &unk_1E70F5AC0;
      [UIView animateWithDuration:0 delay:v15 options:v14 animations:v13 completion:0.0];
    }
  }

  else
  {
    self->m_shouldFade = 1;
  }
}

uint64_t __34__UIKeyboardMenuView__delayedFade__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

- (void)fade
{
  if (self->m_mode)
  {
    [(UIKeyboardMenuView *)self fadeWithDelay:0x7FFFFFFFFFFFFFFFLL forSelectionAtIndex:1.0];
  }
}

- (void)fadeWithDelay:(double)a3 forSelectionAtIndex:(unint64_t)a4
{
  [(UIKeyboardMenuView *)self willFadeForSelectionAtIndex:a4];
  if (self->m_mode || self->m_inputView)
  {
    v6 = [(UIView *)self superview];
    if (v6)
    {
      v7 = v6;
      v8 = [(UIKeyboardMenuView *)self referenceKey];
      v9 = [v8 state];

      if (v9 == 16)
      {
        v10 = [(UIKeyboardMenuView *)self layout];
        v11 = [v10 currentKeyplaneView];
        v12 = [(UIKeyboardMenuView *)self referenceKey];
        v13 = [v11 viewForKey:v12];

        if (v13)
        {
          [(UIView *)self frame];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v22 = [(UIView *)self superview];
          [v13 convertRect:v22 fromView:{v15, v17, v19, v21}];
          [(UIKeyboardMenuView *)self setFrame:?];

          [v13 addSubview:self];
        }
      }
    }

    [(UIKeyboardMenuView *)self performSelector:sel__delayedFade withObject:0 afterDelay:a3];
  }
}

- (void)clear
{
  v3 = [(UIKeyboardMenuView *)self dimmingView];
  [v3 removeFromSuperview];

  m_inputView = self->m_inputView;
  self->m_inputView = 0;

  self->m_mode = 0;
  self->m_timeDismissed = GSCurrentEventTimestamp() / 1000000000.0;
  [(UIKeyboardMenuView *)self stopAnyAutoscrolling];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(UIFeedbackGenerator *)self->m_slideBehavior deactivate];
  m_slideBehavior = self->m_slideBehavior;
  self->m_slideBehavior = 0;
}

- (BOOL)launchedFromKeyboard
{
  v3 = [(UIKeyboardMenuView *)self isVisible];
  if (v3)
  {
    LOBYTE(v3) = self->m_mode == 1 || self->m_inputView != 0;
  }

  return v3;
}

- (void)removeFromSuperview
{
  [(UIKeyboardMenuView *)self clear];
  v3.receiver = self;
  v3.super_class = UIKeyboardMenuView;
  [(UIView *)&v3 removeFromSuperview];
}

- (void)hide
{
  if (self->m_mode || self->m_inputView)
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UIKeyboardMenuView *)self setKeyboardDimmed:0];
    }

    v3 = [(UIKeyboardMenuView *)self layout];
    v4 = [(UIKeyboardMenuView *)self referenceKey];
    [v3 setState:2 forKey:v4];

    [(UIView *)self setAlpha:0.0];
    self->m_shouldFade = 1;
    [(UIKeyboardMenuView *)self removeFromSuperview];
  }

  v5 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
  [v5 didKBMenuAction];

  self->m_initialIndexInteracted = -1;
  self->m_menuDrag = 0;
}

- (void)setNeedsDisplayForCell:(id)a3
{
  v3 = [a3 backgroundView];
  [v3 setNeedsDisplay];
}

- (void)setNeedsDisplayForTopBottomCells
{
  v5 = [(UITableView *)self->m_table visibleCells];
  if ([v5 count])
  {
    v3 = [v5 objectAtIndex:0];
    [(UIKeyboardMenuView *)self setNeedsDisplayForCell:v3];

    v4 = [v5 lastObject];
    [(UIKeyboardMenuView *)self setNeedsDisplayForCell:v4];
  }
}

- (void)setNeedsDisplay
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self window];

  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(UITableView *)self->m_table visibleCells];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(UIKeyboardMenuView *)self setNeedsDisplayForCell:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9.receiver = self;
  v9.super_class = UIKeyboardMenuView;
  [(UIView *)&v9 setNeedsDisplay];
}

- (void)endScrolling:(id)a3
{
  if (self->m_scrolling)
  {
    [(UIKeyboardMenuView *)self setNeedsDisplayForTopBottomCells];
    self->m_scrolling = 0;
    x = self->m_point.x;
    y = self->m_point.y;

    [(UIKeyboardMenuView *)self updateSelectionWithPoint:x, y];
  }
}

- (void)stopAnyAutoscrolling
{
  m_scrollTimer = self->m_scrollTimer;
  if (m_scrollTimer)
  {
    [(NSTimer *)m_scrollTimer invalidate];
    v4 = self->m_scrollTimer;
    self->m_scrollTimer = 0;

    self->m_scrolling = 1;
    if (self->m_scrollDirection == 8)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    [(UITableView *)self->m_table scrollToNearestSelectedRowAtScrollPosition:v5 animated:1];
    if (self->m_scrollDirection == 8 && self->m_mode == 1)
    {
      v6 = [(UITableView *)self->m_table indexPathForSelectedRow];
      v7 = [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:v6];

      if (v7)
      {
        [(UIKeyboardMenuView *)self insertSelExtraView];
      }
    }

    [(UIKeyboardMenuView *)self performSelector:sel_endScrolling_ withObject:0 afterDelay:0.3];
  }
}

- (void)autoscrollTimerFired:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - self->m_scrollStartTime + Current - self->m_scrollStartTime;
  if (v5 >= 1.0)
  {
    v6 = 40.0;
  }

  else
  {
    v6 = v5 * v5 * 40.0;
  }

  if (v6 <= 0.0 || ((v7 = v6 * 1.1, [(UIScrollView *)self->m_table _contentOffsetAnimationDuration], v9 = v8, [(UIScrollView *)self->m_table contentOffset], v11 = v10, v13 = v12, [(UIScrollView *)self->m_table contentSize], v15 = v14, v16 = -(v6 * 1.1), self->m_scrollDirection != 8) ? (v17 = -(v6 * 1.1)) : (v17 = v6 * 1.1), (v18 = v13 + v17, v13 + v17 <= v16) || ([(UIView *)self->m_table frame], v18 >= v7 + v15 - v19)))
  {

    [(UIKeyboardMenuView *)self stopAnyAutoscrolling];
  }

  else
  {
    if (self->m_scrollDirection == 8)
    {
      [(UIView *)self->m_table frame];
      v21 = v20 + -16.6666667;
    }

    else
    {
      v21 = 16.6666667;
    }

    v22 = v13 + v21;
    [(UIView *)self->m_selExtraView removeFromSuperview];
    v30 = [(UITableView *)self->m_table indexPathForRowAtPoint:v11, v22];
    v23 = [(UITableView *)self->m_table indexPathForSelectedRow];
    if (([v30 isEqual:v23] & 1) == 0)
    {
      m_table = self->m_table;
      v25 = [(UITableView *)m_table indexPathForSelectedRow];
      [(UIInputSwitcherTableView *)m_table deselectRowAtIndexPath:v25 animated:1];

      [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v30 animated:0 scrollPosition:0];
      v26 = [(UITableView *)self->m_table cellForRowAtIndexPath:v23];
      [(UIKeyboardMenuView *)self setNeedsDisplayForCell:v26];

      [(UIKeyboardMenuView *)self setNeedsDisplayForTopBottomCells];
    }

    v27 = 0.0;
    if (v18 >= 0.0)
    {
      [(UIView *)self->m_table frame];
      v27 = v18;
      if (v18 > v15 - v28)
      {
        [(UIView *)self->m_table frame];
        v27 = v15 - v29;
      }
    }

    [(UIScrollView *)self->m_table _setContentOffsetAnimationDuration:0.11];
    [(UIScrollView *)self->m_table _setContentOffset:1 animated:3 animationCurve:v11, v27];
    [(UIScrollView *)self->m_table _setContentOffsetAnimationDuration:v9];
  }
}

- (id)indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(UITableView *)self->m_table visibleCells];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        [v11 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v11 interactiveInsets];
        v21 = v15 + v20;
        v24 = v17 - (v22 + v23);
        v36.size.height = v19 - (v20 + v25);
        v36.origin.x = v13 + v22;
        v36.origin.y = v21;
        v36.size.width = v24;
        v35.x = x;
        v35.y = y;
        if (CGRectContainsPoint(v36, v35))
        {
          v26 = [(UITableView *)self->m_table indexPathForCell:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_11:

  return v26;
}

- (CGRect)interactiveBounds
{
  v38 = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [(UITableView *)self->m_table visibleCells];
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [v16 interactiveInsets];
        v42.origin.x = v18 + v25;
        v42.origin.y = v20 + v26;
        v42.size.width = v22 - (v25 + v27);
        v42.size.height = v24 - (v26 + v28);
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        v40 = CGRectUnion(v39, v42);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)updateSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  m_table = self->m_table;
  [(UIView *)self convertPoint:m_table toView:?];
  v24 = [(UITableView *)m_table indexPathForRowAtPoint:?];
  v7 = [(UITableView *)self->m_table indexPathForSelectedRow];
  if (!self->m_menuDrag)
  {
    m_initialIndexInteracted = self->m_initialIndexInteracted;
    if ((m_initialIndexInteracted & 0x8000000000000000) == 0 && m_initialIndexInteracted != [(UIKeyboardMenuView *)self getRowFromPoint:x, y])
    {
      self->m_menuDrag = 1;
    }
  }

  if (!self->m_scrollable)
  {
    goto LABEL_15;
  }

  if (v24)
  {
    v9 = [(UITableView *)self->m_table visibleCells];
    v10 = [(UITableView *)self->m_table cellForRowAtIndexPath:v24];
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      self->m_startAutoscroll = 1;
      goto LABEL_11;
    }
  }

  v24 = 0;
LABEL_11:
  self->m_point.x = x;
  self->m_point.y = y;
  if (self->m_startAutoscroll && x >= 0.0)
  {
    [(UIView *)self->m_table frame];
    if (x <= v12)
    {
      if (y <= 25.0 || ([(UIView *)self->m_table frame], y >= v20 + -12.5))
      {
        if (y > 50.0)
        {
          v21 = 8;
        }

        else
        {
          v21 = 4;
        }

        self->m_scrollDirection = v21;
        if (!self->m_scrollTimer)
        {
          self->m_scrollStartTime = CFAbsoluteTimeGetCurrent();
          v22 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_autoscrollTimerFired_ selector:0 userInfo:1 repeats:0.1];
          m_scrollTimer = self->m_scrollTimer;
          self->m_scrollTimer = v22;
        }

        goto LABEL_39;
      }
    }
  }

  [(UIKeyboardMenuView *)self stopAnyAutoscrolling];
  if (self->m_scrolling)
  {
    goto LABEL_39;
  }

LABEL_15:
  if (v24)
  {
    if (-[UIKeyboardMenuView shouldSelectItemAtIndex:](self, "shouldSelectItemAtIndex:", [v24 row]))
    {
      v13 = v24;
    }

    else
    {
      v15 = [MEMORY[0x1E696AC88] indexPathForRow:-[UIKeyboardMenuView defaultSelectedIndex](self inSection:{"defaultSelectedIndex"), 0}];

      v13 = v15;
    }
  }

  else
  {
    self->m_shouldFade = 1;
    [(UIView *)self bounds];
    v27.size.height = v14 + 16.6666667;
    v26.x = x;
    v26.y = y;
    if (CGRectContainsPoint(v27, v26))
    {
      v24 = 0;
      goto LABEL_39;
    }

    v13 = [MEMORY[0x1E696AC88] indexPathForRow:-[UIKeyboardMenuView defaultSelectedIndex](self inSection:{"defaultSelectedIndex"), 0}];
  }

  v24 = v13;
  if (!v7 || (v16 = [v13 row], v16 != objc_msgSend(v7, "row")))
  {
    v17 = self->m_table;
    v18 = [(UITableView *)v17 indexPathForSelectedRow];
    [(UIInputSwitcherTableView *)v17 deselectRowAtIndexPath:v18 animated:1];

    if ([v24 row] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v24 animated:0 scrollPosition:0];
    }

    [(UIView *)self->m_selExtraView removeFromSuperview];
    if (self->m_mode == 1 && [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:v24])
    {
      [(UIKeyboardMenuView *)self insertSelExtraView];
    }

    v19 = [(UITableView *)self->m_table indexPathForSelectedRow];

    if (v19)
    {
      [(UISelectionFeedbackGenerator *)self->m_slideBehavior selectionChanged];
      v7 = v19;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_39:
}

- (void)highlightRow:(unint64_t)a3
{
  v12 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v4 = [(UIKeyboardMenuView *)self showingCapsLockSwitcher];
  m_table = self->m_table;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [(UITableView *)m_table reloadSections:v6 withRowAnimation:5];

    v7 = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
    v8 = v7 > [(UIKeyboardMenuView *)self indexForUnselectedFastSwitchMode];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];

    [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v9 animated:0 scrollPosition:3];
    v12 = v9;
  }

  else
  {
    v10 = [(UITableView *)self->m_table indexPathForSelectedRow];
    [(UIInputSwitcherTableView *)m_table deselectRowAtIndexPath:v10 animated:1];

    if (self->m_mode == 1)
    {
      v11 = 3;
    }

    else if (self->m_inputView)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v12 animated:0 scrollPosition:v11];
  }

  if (!self->m_mode)
  {
    [(UIScrollView *)self->m_table contentOffset];
    [(UITableView *)self->m_table setContentOffset:?];
  }

  [(UIView *)self->m_selExtraView removeFromSuperview];
  if (self->m_mode == 1 && [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:v12])
  {
    [(UIKeyboardMenuView *)self insertSelExtraView];
  }

  [(UIView *)self->m_table setNeedsDisplay];
}

- (BOOL)shouldShowSelectionExtraViewForIndexPath:(id)a3
{
  m_table = self->m_table;
  v4 = a3;
  v5 = [(UITableView *)m_table indexPathsForVisibleRows];
  v6 = [v5 lastObject];

  return v6 == v4;
}

- (void)selectItemAtPoint:(CGPoint)a3
{
  self->m_shouldFade = 1;
  [(UIView *)self convertPoint:self->m_table toView:a3.x, a3.y];
  v4 = [(UIKeyboardMenuView *)self indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:?];
  v5 = v4;
  if (v4)
  {
    -[UIKeyboardMenuView didSelectItemAtIndex:](self, "didSelectItemAtIndex:", [v4 row]);
  }

  else
  {
    [(UIKeyboardMenuView *)self fade];
  }
}

- (void)setHighlightForRowAtIndexPath:(id)a3 highlight:(BOOL)a4
{
  v22 = a3;
  v6 = [(UITableView *)self->m_table cellForRowAtIndexPath:?];
  v7 = [(UIView *)self _inheritedRenderConfig];
  v8 = [v7 colorAdaptiveBackground];

  if ((v8 & 1) == 0)
  {
    if (a4)
    {
      v9 = +[UIColor whiteColor];
      v10 = [v6 textLabel];
      [v10 setTextColor:v9];

      v11 = +[UIColor whiteColor];
      v12 = [v6 detailTextLabel];
      [v12 setTextColor:v11];

      [(UIView *)self->m_selExtraView removeFromSuperview];
      if (self->m_mode == 1)
      {
        v13 = [(UITableView *)self->m_table indexPathsForVisibleRows];
        v14 = [v13 lastObject];

        if (v14 == v22)
        {
          [(UIView *)self insertSubview:self->m_selExtraView aboveSubview:self->m_shadowView];
        }
      }
    }

    else
    {
      v15 = [(UIKeyboardMenuView *)self _renderConfig];
      if ([v15 colorAdaptiveBackground])
      {
        [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha65")];
      }

      else
      {
        +[UIColor blackColor];
      }
      v16 = ;
      v17 = [v6 textLabel];
      [v17 setTextColor:v16];

      v18 = [(UIKeyboardMenuView *)self _renderConfig];
      if ([v18 colorAdaptiveBackground])
      {
        [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha65")];
      }

      else
      {
        +[UIColor blackColor];
      }
      v19 = ;
      v20 = [v6 detailTextLabel];
      [v20 setTextColor:v19];
    }
  }

  v21 = [v6 backgroundView];
  [v21 setNeedsDisplay];
}

- (int64_t)getRowFromPoint:(CGPoint)a3
{
  [(UIView *)self convertPoint:self->m_table toView:a3.x, a3.y];
  v4 = [(UIKeyboardMenuView *)self indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 row];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)customizeCell:(id)a3 forItemAtIndex:(unint64_t)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
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
  v11 = +[UIColor clearColor];
  [v6 setBackgroundColor:v11];

  [v6 setSelectionFadeDuration:0.0];
  [v6 setSelectionStyle:0];
  [v6 setFirst:a4 == 0];
  [v6 setLast:{-[UIKeyboardMenuView numberOfItems](self, "numberOfItems") - 1 == a4}];
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    [v6 setFirst:a4 == 0];
    [v6 setLast:a4 == 1];
  }

  [v6 setUsesDarkTheme:{-[UIKeyboardMenuView usesDarkTheme](self, "usesDarkTheme")}];
  [v6 setUsesStraightLeftEdge:{-[UIKeyboardMenuView usesStraightLeftEdge](self, "usesStraightLeftEdge")}];
  v12 = [(UIView *)self _inheritedRenderConfig];
  v13 = [v12 colorAdaptiveBackground];

  if (v13)
  {
    v14 = MEMORY[0x1E695DF58];
    v15 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v16 = 2 * ([v14 characterDirectionForLanguage:v15] == 2);
  }

  else
  {
    v16 = 1;
  }

  v17 = [v6 textLabel];
  [v17 setTextAlignment:v16];
  v18 = [(UIKeyboardMenuView *)self localizedTitleForItemAtIndex:v7];
  [v17 setText:v18];

  if ([(UIKeyboardMenuView *)self usesDeviceLanguageForItemAtIndex:v7])
  {
    v19 = [v17 text];

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = [v17 text];
      v49 = *MEMORY[0x1E6965A20];
      v22 = [MEMORY[0x1E695DF58] _deviceLanguage];
      v50[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v24 = [v20 initWithString:v21 attributes:v23];
      [v17 setAttributedText:v24];
    }
  }

  if ([(UIKeyboardMenuView *)self usesDarkTheme])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v25 = ;
  [v17 setTextColor:v25];

  v26 = [(UIView *)self _inheritedRenderConfig];
  v27 = [v26 colorAdaptiveBackground];

  if (v27)
  {
    v28 = +[UIColor labelColor];
    [v17 setTextColor:v28];
  }

  v29 = [v17 textColor];
  [v17 setHighlightedTextColor:v29];

  v30 = [(UIKeyboardMenuView *)self fontForItemAtIndex:v7];
  [v17 setFont:v30];

  v31 = [(UIKeyboardMenuView *)self subtitleForItemAtIndex:v7];
  if ([v31 length])
  {
    v32 = [v6 detailTextLabel];
    [v32 setTextAlignment:v16];
    if ([(UIKeyboardMenuView *)self usesDarkTheme])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v33 = ;
    [v32 setTextColor:v33];

    v34 = [(UIView *)self _inheritedRenderConfig];
    v35 = [v34 colorAdaptiveBackground];

    if (v35)
    {
      v36 = +[UIColor secondaryLabelColor];
      [v32 setTextColor:v36];
    }

    v37 = [v32 textColor];
    [v32 setHighlightedTextColor:v37];

    v38 = [(UIKeyboardMenuView *)self subtitleFontForItemAtIndex:v7];
    [v32 setFont:v38];
  }

  v39 = [v6 _detailTextLabel:0];
  [v39 setText:v31];

  v40 = [(UIKeyboardMenuView *)self usesDeviceLanguageForItemAtIndex:v7];
  if (v31 && v40)
  {
    v41 = objc_alloc(MEMORY[0x1E696AAB0]);
    v47 = *MEMORY[0x1E6965A20];
    v42 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v48 = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v44 = [v41 initWithString:v31 attributes:v43];
    v45 = [v6 _detailTextLabel:0];
    [v45 setAttributedText:v44];
  }

  if (!self->m_mode)
  {
    v46 = [v6 textLabel];
    [v46 setShadowColor:0];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIInputSwitcherTableCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [v6 row];
  [(UIKeyboardMenuView *)self customizeCell:v9 forItemAtIndex:v10];

  return v9;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  }

  else
  {
    v9 = [v6 cellForRowAtIndexPath:v7];
    [(UIKeyboardMenuView *)self setHighlightForRowAtIndexPath:v7 highlight:0];
    v8 = v7;
  }

  return v8;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  }

  else
  {
    [(UIKeyboardMenuView *)self setHighlightForRowAtIndexPath:v5 highlight:1];
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(UITableView *)self->m_table indexPathForSelectedRow];
  [(UIKeyboardMenuView *)self setHighlightForRowAtIndexPath:v4 highlight:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v6 row];
  }

  [(UIKeyboardMenuView *)self didSelectItemAtIndex:v5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->m_shouldFade = 0;
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;

  self->m_initialIndexInteracted = [(UIKeyboardMenuView *)self getRowFromPoint:v7, v9];
  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [v10 currentInputMode];
  v12 = [v11 identifierWithLayouts];
  v13 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
  [v13 setOriginalInputMode:v12];

  [(UIKeyboardMenuView *)self updateSelectionWithPoint:v7, v9];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  self->m_shouldFade = 0;
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  [(UIKeyboardMenuView *)self updateSelectionWithPoint:?];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  self->m_shouldFade = 1;
  v10 = [a3 anyObject];
  [v10 locationInView:self];
  [(UIKeyboardMenuView *)self updateSelectionWithPoint:?];
  v5 = [(UITableView *)self->m_table indexPathForSelectedRow];
  if (v5)
  {
    m_menuDrag = self->m_menuDrag;
    v7 = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    v8 = v7;
    if (m_menuDrag)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    [v7 setKBMenuInteractionSource:v9];

    [v10 locationInView:self];
    [(UIKeyboardMenuView *)self selectItemAtPoint:?];
  }

  else
  {
    [(UIKeyboardMenuView *)self fadeWithDelay:0.1];
  }
}

- (void)setRenderConfig:(id)a3
{
  v12 = a3;
  v4 = [(UIKeyboardMenuView *)self usesDarkTheme];
  v5 = v4 == [v12 whiteText];
  v6 = v12;
  if (!v5)
  {
    -[UIKeyboardMenuView setUsesDarkTheme:](self, "setUsesDarkTheme:", [v12 whiteText]);
    [(UITableView *)self->m_table reloadData];
    v7 = [(UIKBKeyView *)self->m_backgroundKeyView renderConfig];
    v8 = [v7 lightKeyboard];
    v9 = [v12 lightKeyboard];

    if (v8 != v9)
    {
      [(UIView *)self frame];
      [(UIKeyboardMenuView *)self setupBackgroundKeyViewWithSize:v10, v11];
    }

    [(UIKeyboardMenuView *)self setNeedsDisplay];
    v6 = v12;
  }
}

- (CGRect)popupRect
{
  [(UIView *)self->m_table frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)willShow
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:0x1EFB791F0 object:0];
}

- (CGSize)preferredSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end