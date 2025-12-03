@interface UIKeyboardMenuView
- (BOOL)isVisible;
- (BOOL)launchedFromKeyboard;
- (BOOL)shouldShowSelectionExtraViewForIndexPath:(id)path;
- (BOOL)usesShadowView;
- (CGRect)interactiveBounds;
- (CGRect)popupRect;
- (CGSize)preferredSize;
- (UIKeyboardMenuView)initWithFrame:(CGRect)frame;
- (double)minYOfLastTableCellForSelectionExtraView;
- (id)_renderConfig;
- (id)containerView;
- (id)dimmingView;
- (id)font;
- (id)indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:(CGPoint)point;
- (id)maskForShadowViewBlurredBackground;
- (id)subtitleFont;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)getRowFromPoint:(CGPoint)point;
- (unint64_t)_internationalKeyRoundedCornerInLayout:(id)layout;
- (void)_delayedFade;
- (void)autoscrollTimerFired:(id)fired;
- (void)clear;
- (void)customizeCell:(id)cell forItemAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)dimmingViewWasTapped:(id)tapped;
- (void)endScrolling:(id)scrolling;
- (void)fade;
- (void)fadeWithDelay:(double)delay forSelectionAtIndex:(unint64_t)index;
- (void)hide;
- (void)highlightRow:(unint64_t)row;
- (void)insertSelExtraView;
- (void)performShowAnimation;
- (void)removeFromSuperview;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectItemAtPoint:(CGPoint)point;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightForRowAtIndexPath:(id)path highlight:(BOOL)highlight;
- (void)setKeyboardDimmed:(BOOL)dimmed;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayForCell:(id)cell;
- (void)setNeedsDisplayForTopBottomCells;
- (void)setRenderConfig:(id)config;
- (void)setupBackgroundKeyViewWithSize:(CGSize)size;
- (void)setupShadowViewWithSize:(CGSize)size;
- (void)show;
- (void)showAsHUDFromLocation:(CGPoint)location withInputView:(id)view touchBegan:(double)began;
- (void)showAsPopupForKey:(id)key inLayout:(id)layout;
- (void)stopAnyAutoscrolling;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateSelectionWithPoint:(CGPoint)point;
- (void)willShow;
@end

@implementation UIKeyboardMenuView

- (UIKeyboardMenuView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = UIKeyboardMenuView;
  v3 = [(UIView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:0];

    [(UIView *)v4 setOpaque:0];
    v4->m_shouldFade = 1;
    v4->m_initialIndexInteracted = -1;
    v4->m_menuDrag = 0;
    _inheritedRenderConfig = [(UIView *)v4 _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      v21 = [[_UIViewGlass alloc] initWithVariant:0];
      [(_UIViewGlass *)v21 setBackdropGroupName:@"UIKBBackdropGroupName"];
      [(UIView *)v4 _setBackground:v21];
      _inheritedRenderConfig2 = [(UIView *)v4 _inheritedRenderConfig];
      colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];
      v24 = 8.0;
      if (colorAdaptiveBackground2)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationSuspendedNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardMenuView;
  [(UIView *)&v4 dealloc];
}

- (id)subtitleFont
{
  maximumContentSizeCategory = [(UIView *)self maximumContentSizeCategory];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" maximumContentSizeCategory:maximumContentSizeCategory];

  return v3;
}

- (id)font
{
  maximumContentSizeCategory = [(UIView *)self maximumContentSizeCategory];
  v3 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" maximumContentSizeCategory:maximumContentSizeCategory];

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  v14 = CGRectIntegral(frame);
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
  window = [(UIView *)self window];
  v3 = window != 0;

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

- (void)setKeyboardDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  v5 = +[UIKeyboardImpl activeInstance];
  _layout = [v5 _layout];

  if (!dimmedCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_layout deactivateActiveKeysClearingTouchInfo:1 clearingDimming:0];
  }

  if (objc_opt_respondsToSelector())
  {
    usesDarkTheme = [(UIKeyboardMenuView *)self usesDarkTheme];
    v7 = 0.1;
    if (usesDarkTheme)
    {
      v7 = 0.4;
    }

    [_layout setKeyboardDim:dimmedCopy amount:v7 withDuration:0.3];
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

  containerView = [(UIKeyboardMenuView *)self containerView];
  v7 = containerView;
  if (containerView)
  {
    [containerView frame];
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

- (void)dimmingViewWasTapped:(id)tapped
{
  glomojiAnalyticsInstance = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
  [glomojiAnalyticsInstance setKBMenuDismissSource:3];

  [(UIKeyboardMenuView *)self hide];

  [(UIKeyboardMenuView *)self returnToKeyboardIfNeeded];
}

- (BOOL)usesShadowView
{
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  return (colorAdaptiveBackground & 1) == 0 && [(UIKeyboardMenuView *)self mode]== 0;
}

- (void)insertSelExtraView
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    usesShadowView = [(UIKeyboardMenuView *)self usesShadowView];
    m_selExtraView = self->m_selExtraView;
    v5 = &OBJC_IVAR___UIKeyboardMenuView_m_table;
    if (usesShadowView)
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
  containerView = [(UIKeyboardMenuView *)self containerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  containerView2 = [(UIKeyboardMenuView *)self containerView];
  v6 = containerView2;
  if ((isKindOfClass & 1) == 0)
  {
    window = [containerView2 window];

    v6 = window;
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
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    interfaceOrientation = [v9 interfaceOrientation];
    if ([UIApp _isSpringBoard])
    {
      v24 = +[UIKeyboardSceneDelegate interfaceOrientation];
      if ((v24 - 1) >= 4)
      {
        interfaceOrientation = 0;
      }

      else
      {
        interfaceOrientation = v24;
      }
    }

    if ((interfaceOrientation - 3) >= 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v13;
    }

    if ((interfaceOrientation - 3) >= 2)
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
    containerView3 = [(UIKeyboardMenuView *)self containerView];
    [containerView3 frame];
    v32 = y + v31 + -6.0;
    containerView4 = [(UIKeyboardMenuView *)self containerView];
    window2 = [containerView4 window];
    v35 = __UIStatusBarManagerForWindow(window2);
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
      containerView5 = [(UIKeyboardMenuView *)self containerView];
      [containerView5 safeAreaInsets];
      v29 = v38 - v40 + -6.0;
    }
  }

  if (v26 > v20 + -10.0)
  {
    v26 = v20 + -10.0;
  }

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
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

  tableHeaderView = [(UITableView *)self->m_table tableHeaderView];
  [tableHeaderView frame];
  v49 = v48;

  tableFooterView = [(UITableView *)self->m_table tableFooterView];
  [tableFooterView frame];
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
  _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

  if (colorAdaptiveBackground2)
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
    _inheritedRenderConfig3 = [(UIView *)self _inheritedRenderConfig];
    if ([_inheritedRenderConfig3 colorAdaptiveBackground])
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

  containerView6 = [(UIKeyboardMenuView *)self containerView];
  [containerView6 safeAreaInsets];
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
    dimmingView = [(UIKeyboardMenuView *)self dimmingView];
    containerView7 = [(UIKeyboardMenuView *)self containerView];
    [containerView7 addSubview:dimmingView];
  }

  containerView8 = [(UIKeyboardMenuView *)self containerView];
  [containerView8 addSubview:self];

  if (self->m_scrollable)
  {
    [(UITableView *)self->m_table flashScrollIndicators];
  }

  defaultSelectedIndex = [(UIKeyboardMenuView *)self defaultSelectedIndex];
  if (defaultSelectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIKeyboardMenuView *)self highlightRow:defaultSelectedIndex];
  }

  [(UIView *)self->m_selExtraView removeFromSuperview];
  if (self->m_mode == 1)
  {
    indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
    if (indexPathForSelectedRow)
    {
      v81 = indexPathForSelectedRow;
      indexPathForSelectedRow2 = [(UITableView *)self->m_table indexPathForSelectedRow];
      v83 = [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:indexPathForSelectedRow2];

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

- (void)setupBackgroundKeyViewWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(UIKeyboardMenuView *)self mode])
  {
    m_backgroundKeyView = self->m_backgroundKeyView;

    [(UIKBKeyView *)m_backgroundKeyView removeFromSuperview];
    return;
  }

  if (!setupBackgroundKeyViewWithSize____keyplane)
  {
    mainScreen = [objc_opt_self() mainScreen];
    v8 = [UIKBScreenTraits traitsWithScreen:mainScreen orientation:1];

    v9 = UIKeyboardGetKBStarName(@"en_US", v8, 0, 0);
    v10 = UIKeyboardGetKBStarKeyboardWithName(v9);
    subtrees = [v10 subtrees];
    firstObject = [subtrees firstObject];
    v13 = setupBackgroundKeyViewWithSize____keyplane;
    setupBackgroundKeyViewWithSize____keyplane = firstObject;

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

  _renderConfig = [(UIKeyboardMenuView *)self _renderConfig];
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

  renderConfig = [(UIKBKeyView *)v19 renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  if (lightKeyboard != [_renderConfig lightKeyboard])
  {

LABEL_14:
    v23 = [[UIKBTree alloc] initWithType:8];
    v24 = +[UIKBShape shape];
    [(UIKBTree *)v23 setShape:v24];

    [(UIKBTree *)v23 setPaddedFrame:x, y, v17, v18];
    [(UIKBTree *)v23 setState:16];
    [(UIKBTree *)v23 setDisplayTypeHint:12];
    [(UIKBTree *)v23 setInteractionType:9];
    v25 = [UIKBRenderingContext renderingContextForRenderConfig:_renderConfig];
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
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    [(UIView *)self insertSubview:self->m_backgroundKeyView atIndex:0];
    [(UIKBKeyView *)self->m_backgroundKeyView setRenderConfig:_renderConfig];
    [(UIKBKeyView *)self->m_backgroundKeyView prepareForDisplay];
    [(UIView *)self->m_backgroundKeyView setNeedsDisplay];
  }
}

- (void)setupShadowViewWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(UIKeyboardMenuView *)self usesShadowView])
  {
    m_shadowView = self->m_shadowView;
    if (m_shadowView)
    {
      [(UIView *)m_shadowView removeFromSuperview];
      v7 = self->m_shadowView;
      self->m_shadowView = 0;
    }

    height = [[UIInputSwitcherShadowView alloc] initWithFrame:0.0, 0.0, width, height];
    v9 = self->m_shadowView;
    self->m_shadowView = height;

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
  inputViews = [v2 inputViews];
  inputView = [inputViews inputView];

  if (inputView)
  {
    _inheritedRenderConfig = [inputView _inheritedRenderConfig];
  }

  else
  {
    containerView = [v2 containerView];
    _inheritedRenderConfig = [containerView _inheritedRenderConfig];
  }

  return _inheritedRenderConfig;
}

- (void)showAsHUDFromLocation:(CGPoint)location withInputView:(id)view touchBegan:(double)began
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  if (self->m_timeDismissed <= began)
  {
    v15 = viewCopy;
    self->m_referenceLocation.x = x;
    self->m_referenceLocation.y = y;
    objc_storeStrong(&self->m_inputView, view);
    self->m_mode = 0;
    v11 = *(MEMORY[0x1E695F058] + 16);
    self->m_referenceRect.origin = *MEMORY[0x1E695F058];
    self->m_referenceRect.size = v11;
    if ([(UIKeyboardMenuView *)self isVisible])
    {
      layout = [(UIKeyboardMenuView *)self layout];
      [layout deactivateActiveKeys];
    }

    _renderConfig = [(UIKeyboardMenuView *)self _renderConfig];
    [(UIKeyboardMenuView *)self setRenderConfig:_renderConfig];

    containerView = [(UIKeyboardMenuView *)self containerView];

    viewCopy = v15;
    if (containerView)
    {
      [(UIKeyboardMenuView *)self show];
      viewCopy = v15;
    }
  }
}

- (id)containerView
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  window = [(UIView *)self->m_inputView window];
  if (window)
  {
    inputView = self->m_inputView;
  }

  else
  {
    v6 = +[UIKeyboard activeKeyboard];
    window2 = [v6 window];
    if (window2)
    {
      inputView = +[UIKeyboard activeKeyboard];
    }

    else
    {
      inputViews = [v3 inputViews];
      inputView = [inputViews inputView];
    }
  }

  window3 = [(UIView *)inputView window];
  rootViewController = [window3 rootViewController];
  view = [rootViewController view];
  v12 = view;
  if (view)
  {
    containerView = view;
  }

  else
  {
    containerView = [v3 containerView];
  }

  v14 = containerView;

  window4 = [(UIView *)inputView window];
  if (window4 && ![(UIView *)inputView isDescendantOfView:v14])
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
    emojiPopoverController = [v18 emojiPopoverController];
    view2 = [emojiPopoverController view];
    window5 = [view2 window];
  }

  else
  {
    if (v17)
    {
      window6 = v14;
    }

    else
    {
      window6 = [(UIView *)inputView window];
    }

    window5 = window6;
  }

  return window5;
}

- (id)maskForShadowViewBlurredBackground
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v5 = v4;

  [(UIScrollView *)self->m_table contentSize];
  v7 = v6;
  v9 = v8;
  _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v8, v5);
  v10 = +[UIColor blackColor];
  [v10 set];

  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
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

  visibleCells = [(UITableView *)self->m_table visibleCells];
  if ([visibleCells count])
  {
    if (v5 <= 1.0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.5;
    }

    v19 = [visibleCells objectAtIndex:0];
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
  visibleCells = [(UITableView *)self->m_table visibleCells];
  lastObject = [visibleCells lastObject];
  superview = [lastObject superview];
  [lastObject frame];
  [superview convertRect:self->m_selExtraView toView:?];
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

- (unint64_t)_internationalKeyRoundedCornerInLayout:(id)layout
{
  layoutCopy = layout;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = -1;
  }

  else
  {
    keyboardName = [layoutCopy keyboardName];
    v6 = [keyboardName rangeOfString:@"Emoji"];

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

- (void)showAsPopupForKey:(id)key inLayout:(id)layout
{
  layoutCopy = layout;
  keyCopy = key;
  [keyCopy paddedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  self->m_mode = 1;
  containerView = [(UIKeyboardMenuView *)self containerView];
  [layoutCopy convertRect:containerView toView:{v9, v11, v13, v15}];
  self->m_referenceRect.origin.x = v17;
  self->m_referenceRect.origin.y = v18;
  self->m_referenceRect.size.width = v19;
  self->m_referenceRect.size.height = v20;

  [(UIInputSwitcherSelectionExtraView *)self->m_selExtraView setRoundedCorners:[(UIKeyboardMenuView *)self _internationalKeyRoundedCornerInLayout:layoutCopy]];
  [(UIInputSwitcherSelectionExtraView *)self->m_selExtraView setKeyRect:self->m_referenceRect.origin.x, self->m_referenceRect.origin.y, self->m_referenceRect.size.width, self->m_referenceRect.size.height];
  [(UIKeyboardMenuView *)self setReferenceKey:keyCopy];

  [(UIKeyboardMenuView *)self setLayout:layoutCopy];
  [(UIKeyboardMenuView *)self show];
  layout = [(UIKeyboardMenuView *)self layout];
  referenceKey = [(UIKeyboardMenuView *)self referenceKey];
  [layout setState:16 forKey:referenceKey];

  layout2 = [(UIKeyboardMenuView *)self layout];
  currentKeyplaneView = [layout2 currentKeyplaneView];
  referenceKey2 = [(UIKeyboardMenuView *)self referenceKey];
  v38 = [currentKeyplaneView viewForKey:referenceKey2];

  superview = [(UIView *)self superview];
  [v38 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  superview2 = [v38 superview];
  [superview convertRect:superview2 fromView:{v28, v30, v32, v34}];
  [v38 setFrame:?];

  superview3 = [(UIView *)self superview];
  [superview3 addSubview:v38];

  superview4 = [(UIView *)self superview];
  [(UIView *)self frame];
  [superview4 convertRect:v38 toView:?];
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
  superview = [(UIView *)self superview];
  if (superview && (m_shouldFade = self->m_shouldFade, superview, m_shouldFade))
  {
    layout = [(UIKeyboardMenuView *)self layout];
    currentKeyplaneView = [layout currentKeyplaneView];
    referenceKey = [(UIKeyboardMenuView *)self referenceKey];
    v8 = [currentKeyplaneView viewForKey:referenceKey];

    layout2 = [(UIKeyboardMenuView *)self layout];
    referenceKey2 = [(UIKeyboardMenuView *)self referenceKey];
    [layout2 setState:2 forKey:referenceKey2];

    superview2 = [(UIView *)self superview];

    if (superview2 == v8)
    {
      [(UIKeyboardMenuView *)self clear];
    }

    else
    {
      showingCapsLockSwitcher = [(UIKeyboardMenuView *)self showingCapsLockSwitcher];
      v13 = 0.5;
      if (showingCapsLockSwitcher)
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

- (void)fadeWithDelay:(double)delay forSelectionAtIndex:(unint64_t)index
{
  [(UIKeyboardMenuView *)self willFadeForSelectionAtIndex:index];
  if (self->m_mode || self->m_inputView)
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      v7 = superview;
      referenceKey = [(UIKeyboardMenuView *)self referenceKey];
      state = [referenceKey state];

      if (state == 16)
      {
        layout = [(UIKeyboardMenuView *)self layout];
        currentKeyplaneView = [layout currentKeyplaneView];
        referenceKey2 = [(UIKeyboardMenuView *)self referenceKey];
        v13 = [currentKeyplaneView viewForKey:referenceKey2];

        if (v13)
        {
          [(UIView *)self frame];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          superview2 = [(UIView *)self superview];
          [v13 convertRect:superview2 fromView:{v15, v17, v19, v21}];
          [(UIKeyboardMenuView *)self setFrame:?];

          [v13 addSubview:self];
        }
      }
    }

    [(UIKeyboardMenuView *)self performSelector:sel__delayedFade withObject:0 afterDelay:delay];
  }
}

- (void)clear
{
  dimmingView = [(UIKeyboardMenuView *)self dimmingView];
  [dimmingView removeFromSuperview];

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
  isVisible = [(UIKeyboardMenuView *)self isVisible];
  if (isVisible)
  {
    LOBYTE(isVisible) = self->m_mode == 1 || self->m_inputView != 0;
  }

  return isVisible;
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

    layout = [(UIKeyboardMenuView *)self layout];
    referenceKey = [(UIKeyboardMenuView *)self referenceKey];
    [layout setState:2 forKey:referenceKey];

    [(UIView *)self setAlpha:0.0];
    self->m_shouldFade = 1;
    [(UIKeyboardMenuView *)self removeFromSuperview];
  }

  glomojiAnalyticsInstance = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
  [glomojiAnalyticsInstance didKBMenuAction];

  self->m_initialIndexInteracted = -1;
  self->m_menuDrag = 0;
}

- (void)setNeedsDisplayForCell:(id)cell
{
  backgroundView = [cell backgroundView];
  [backgroundView setNeedsDisplay];
}

- (void)setNeedsDisplayForTopBottomCells
{
  visibleCells = [(UITableView *)self->m_table visibleCells];
  if ([visibleCells count])
  {
    v3 = [visibleCells objectAtIndex:0];
    [(UIKeyboardMenuView *)self setNeedsDisplayForCell:v3];

    lastObject = [visibleCells lastObject];
    [(UIKeyboardMenuView *)self setNeedsDisplayForCell:lastObject];
  }
}

- (void)setNeedsDisplay
{
  v15 = *MEMORY[0x1E69E9840];
  window = [(UIView *)self window];

  if (window)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    visibleCells = [(UITableView *)self->m_table visibleCells];
    v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          [(UIKeyboardMenuView *)self setNeedsDisplayForCell:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9.receiver = self;
  v9.super_class = UIKeyboardMenuView;
  [(UIView *)&v9 setNeedsDisplay];
}

- (void)endScrolling:(id)scrolling
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
      indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
      v7 = [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:indexPathForSelectedRow];

      if (v7)
      {
        [(UIKeyboardMenuView *)self insertSelExtraView];
      }
    }

    [(UIKeyboardMenuView *)self performSelector:sel_endScrolling_ withObject:0 afterDelay:0.3];
  }
}

- (void)autoscrollTimerFired:(id)fired
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
    indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
    if (([v30 isEqual:indexPathForSelectedRow] & 1) == 0)
    {
      m_table = self->m_table;
      indexPathForSelectedRow2 = [(UITableView *)m_table indexPathForSelectedRow];
      [(UIInputSwitcherTableView *)m_table deselectRowAtIndexPath:indexPathForSelectedRow2 animated:1];

      [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v30 animated:0 scrollPosition:0];
      v26 = [(UITableView *)self->m_table cellForRowAtIndexPath:indexPathForSelectedRow];
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

- (id)indexPathForInputSwitcherCellIncludingInteractiveInsetsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  visibleCells = [(UITableView *)self->m_table visibleCells];
  v7 = [visibleCells countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(visibleCells);
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

      v8 = [visibleCells countByEnumeratingWithState:&v28 objects:v32 count:16];
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
  visibleCells = [(UITableView *)self->m_table visibleCells];
  v12 = [visibleCells countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(visibleCells);
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

      v13 = [visibleCells countByEnumeratingWithState:&v33 objects:v37 count:16];
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

- (void)updateSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  m_table = self->m_table;
  [(UIView *)self convertPoint:m_table toView:?];
  v24 = [(UITableView *)m_table indexPathForRowAtPoint:?];
  indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
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
    visibleCells = [(UITableView *)self->m_table visibleCells];
    v10 = [(UITableView *)self->m_table cellForRowAtIndexPath:v24];
    v11 = [visibleCells containsObject:v10];

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
  if (!indexPathForSelectedRow || (v16 = [v13 row], v16 != objc_msgSend(indexPathForSelectedRow, "row")))
  {
    v17 = self->m_table;
    indexPathForSelectedRow2 = [(UITableView *)v17 indexPathForSelectedRow];
    [(UIInputSwitcherTableView *)v17 deselectRowAtIndexPath:indexPathForSelectedRow2 animated:1];

    if ([v24 row] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v24 animated:0 scrollPosition:0];
    }

    [(UIView *)self->m_selExtraView removeFromSuperview];
    if (self->m_mode == 1 && [(UIKeyboardMenuView *)self shouldShowSelectionExtraViewForIndexPath:v24])
    {
      [(UIKeyboardMenuView *)self insertSelExtraView];
    }

    indexPathForSelectedRow3 = [(UITableView *)self->m_table indexPathForSelectedRow];

    if (indexPathForSelectedRow3)
    {
      [(UISelectionFeedbackGenerator *)self->m_slideBehavior selectionChanged];
      indexPathForSelectedRow = indexPathForSelectedRow3;
    }

    else
    {
      indexPathForSelectedRow = 0;
    }
  }

LABEL_39:
}

- (void)highlightRow:(unint64_t)row
{
  v12 = [MEMORY[0x1E696AC88] indexPathForRow:row inSection:0];
  showingCapsLockSwitcher = [(UIKeyboardMenuView *)self showingCapsLockSwitcher];
  m_table = self->m_table;
  if (showingCapsLockSwitcher)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [(UITableView *)m_table reloadSections:v6 withRowAnimation:5];

    indexForSelectedFastSwitchMode = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
    v8 = indexForSelectedFastSwitchMode > [(UIKeyboardMenuView *)self indexForUnselectedFastSwitchMode];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];

    [(UIInputSwitcherTableView *)self->m_table selectRowAtIndexPath:v9 animated:0 scrollPosition:3];
    v12 = v9;
  }

  else
  {
    indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
    [(UIInputSwitcherTableView *)m_table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

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

- (BOOL)shouldShowSelectionExtraViewForIndexPath:(id)path
{
  m_table = self->m_table;
  pathCopy = path;
  indexPathsForVisibleRows = [(UITableView *)m_table indexPathsForVisibleRows];
  lastObject = [indexPathsForVisibleRows lastObject];

  return lastObject == pathCopy;
}

- (void)selectItemAtPoint:(CGPoint)point
{
  self->m_shouldFade = 1;
  [(UIView *)self convertPoint:self->m_table toView:point.x, point.y];
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

- (void)setHighlightForRowAtIndexPath:(id)path highlight:(BOOL)highlight
{
  pathCopy = path;
  v6 = [(UITableView *)self->m_table cellForRowAtIndexPath:?];
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    if (highlight)
    {
      v9 = +[UIColor whiteColor];
      textLabel = [v6 textLabel];
      [textLabel setTextColor:v9];

      v11 = +[UIColor whiteColor];
      detailTextLabel = [v6 detailTextLabel];
      [detailTextLabel setTextColor:v11];

      [(UIView *)self->m_selExtraView removeFromSuperview];
      if (self->m_mode == 1)
      {
        indexPathsForVisibleRows = [(UITableView *)self->m_table indexPathsForVisibleRows];
        lastObject = [indexPathsForVisibleRows lastObject];

        if (lastObject == pathCopy)
        {
          [(UIView *)self insertSubview:self->m_selExtraView aboveSubview:self->m_shadowView];
        }
      }
    }

    else
    {
      _renderConfig = [(UIKeyboardMenuView *)self _renderConfig];
      if ([_renderConfig colorAdaptiveBackground])
      {
        [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha65")];
      }

      else
      {
        +[UIColor blackColor];
      }
      v16 = ;
      textLabel2 = [v6 textLabel];
      [textLabel2 setTextColor:v16];

      _renderConfig2 = [(UIKeyboardMenuView *)self _renderConfig];
      if ([_renderConfig2 colorAdaptiveBackground])
      {
        [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBColorBlack_Alpha65")];
      }

      else
      {
        +[UIColor blackColor];
      }
      v19 = ;
      detailTextLabel2 = [v6 detailTextLabel];
      [detailTextLabel2 setTextColor:v19];
    }
  }

  backgroundView = [v6 backgroundView];
  [backgroundView setNeedsDisplay];
}

- (int64_t)getRowFromPoint:(CGPoint)point
{
  [(UIView *)self convertPoint:self->m_table toView:point.x, point.y];
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

- (void)customizeCell:(id)cell forItemAtIndex:(unint64_t)index
{
  v50[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  indexCopy2 = index;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    indexForSelectedFastSwitchMode = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
    indexForUnselectedFastSwitchMode = [(UIKeyboardMenuView *)self indexForUnselectedFastSwitchMode];
    if (index == 1)
    {
      if (indexForSelectedFastSwitchMode >= indexForUnselectedFastSwitchMode)
      {
LABEL_5:
        indexForSelectedFastSwitchMode2 = [(UIKeyboardMenuView *)self indexForSelectedFastSwitchMode];
LABEL_8:
        indexCopy2 = indexForSelectedFastSwitchMode2;
        goto LABEL_9;
      }
    }

    else
    {
      indexCopy2 = index;
      if (index)
      {
        goto LABEL_9;
      }

      if (indexForSelectedFastSwitchMode < indexForUnselectedFastSwitchMode)
      {
        goto LABEL_5;
      }
    }

    indexForSelectedFastSwitchMode2 = [(UIKeyboardMenuView *)self indexForUnselectedFastSwitchMode];
    goto LABEL_8;
  }

LABEL_9:
  v11 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v11];

  [cellCopy setSelectionFadeDuration:0.0];
  [cellCopy setSelectionStyle:0];
  [cellCopy setFirst:index == 0];
  [cellCopy setLast:{-[UIKeyboardMenuView numberOfItems](self, "numberOfItems") - 1 == index}];
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    [cellCopy setFirst:index == 0];
    [cellCopy setLast:index == 1];
  }

  [cellCopy setUsesDarkTheme:{-[UIKeyboardMenuView usesDarkTheme](self, "usesDarkTheme")}];
  [cellCopy setUsesStraightLeftEdge:{-[UIKeyboardMenuView usesStraightLeftEdge](self, "usesStraightLeftEdge")}];
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    v14 = MEMORY[0x1E695DF58];
    _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
    v16 = 2 * ([v14 characterDirectionForLanguage:_deviceLanguage] == 2);
  }

  else
  {
    v16 = 1;
  }

  textLabel = [cellCopy textLabel];
  [textLabel setTextAlignment:v16];
  v18 = [(UIKeyboardMenuView *)self localizedTitleForItemAtIndex:indexCopy2];
  [textLabel setText:v18];

  if ([(UIKeyboardMenuView *)self usesDeviceLanguageForItemAtIndex:indexCopy2])
  {
    text = [textLabel text];

    if (text)
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      text2 = [textLabel text];
      v49 = *MEMORY[0x1E6965A20];
      _deviceLanguage2 = [MEMORY[0x1E695DF58] _deviceLanguage];
      v50[0] = _deviceLanguage2;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v24 = [v20 initWithString:text2 attributes:v23];
      [textLabel setAttributedText:v24];
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
  [textLabel setTextColor:v25];

  _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

  if (colorAdaptiveBackground2)
  {
    v28 = +[UIColor labelColor];
    [textLabel setTextColor:v28];
  }

  textColor = [textLabel textColor];
  [textLabel setHighlightedTextColor:textColor];

  v30 = [(UIKeyboardMenuView *)self fontForItemAtIndex:indexCopy2];
  [textLabel setFont:v30];

  v31 = [(UIKeyboardMenuView *)self subtitleForItemAtIndex:indexCopy2];
  if ([v31 length])
  {
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setTextAlignment:v16];
    if ([(UIKeyboardMenuView *)self usesDarkTheme])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v33 = ;
    [detailTextLabel setTextColor:v33];

    _inheritedRenderConfig3 = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground3 = [_inheritedRenderConfig3 colorAdaptiveBackground];

    if (colorAdaptiveBackground3)
    {
      v36 = +[UIColor secondaryLabelColor];
      [detailTextLabel setTextColor:v36];
    }

    textColor2 = [detailTextLabel textColor];
    [detailTextLabel setHighlightedTextColor:textColor2];

    v38 = [(UIKeyboardMenuView *)self subtitleFontForItemAtIndex:indexCopy2];
    [detailTextLabel setFont:v38];
  }

  v39 = [cellCopy _detailTextLabel:0];
  [v39 setText:v31];

  v40 = [(UIKeyboardMenuView *)self usesDeviceLanguageForItemAtIndex:indexCopy2];
  if (v31 && v40)
  {
    v41 = objc_alloc(MEMORY[0x1E696AAB0]);
    v47 = *MEMORY[0x1E6965A20];
    _deviceLanguage3 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v48 = _deviceLanguage3;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v44 = [v41 initWithString:v31 attributes:v43];
    v45 = [cellCopy _detailTextLabel:0];
    [v45 setAttributedText:v44];
  }

  if (!self->m_mode)
  {
    textLabel2 = [cellCopy textLabel];
    [textLabel2 setShadowColor:0];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v6];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[UIInputSwitcherTableCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = [pathCopy row];
  [(UIKeyboardMenuView *)self customizeCell:v9 forItemAtIndex:v10];

  return v9;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  }

  else
  {
    v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [(UIKeyboardMenuView *)self setHighlightForRowAtIndexPath:pathCopy highlight:0];
    v8 = pathCopy;
  }

  return v8;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  }

  else
  {
    [(UIKeyboardMenuView *)self setHighlightForRowAtIndexPath:pathCopy highlight:1];
    v6 = pathCopy;
  }

  v7 = v6;

  return v7;
}

- (void)scrollViewDidScroll:(id)scroll
{
  indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
  [(UIKeyboardMenuView *)self setHighlightForRowAtIndexPath:indexPathForSelectedRow highlight:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(UIKeyboardMenuView *)self showingCapsLockSwitcher])
  {
    v5 = 0;
  }

  else
  {
    v5 = [pathCopy row];
  }

  [(UIKeyboardMenuView *)self didSelectItemAtIndex:v5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->m_shouldFade = 0;
  anyObject = [began anyObject];
  [anyObject locationInView:self];
  v7 = v6;
  v9 = v8;

  self->m_initialIndexInteracted = [(UIKeyboardMenuView *)self getRowFromPoint:v7, v9];
  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v10 currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];
  glomojiAnalyticsInstance = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
  [glomojiAnalyticsInstance setOriginalInputMode:identifierWithLayouts];

  [(UIKeyboardMenuView *)self updateSelectionWithPoint:v7, v9];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  self->m_shouldFade = 0;
  anyObject = [moved anyObject];
  [anyObject locationInView:self];
  [(UIKeyboardMenuView *)self updateSelectionWithPoint:?];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  self->m_shouldFade = 1;
  anyObject = [ended anyObject];
  [anyObject locationInView:self];
  [(UIKeyboardMenuView *)self updateSelectionWithPoint:?];
  indexPathForSelectedRow = [(UITableView *)self->m_table indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    m_menuDrag = self->m_menuDrag;
    glomojiAnalyticsInstance = [(UIKeyboardMenuView *)self glomojiAnalyticsInstance];
    v8 = glomojiAnalyticsInstance;
    if (m_menuDrag)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    [glomojiAnalyticsInstance setKBMenuInteractionSource:v9];

    [anyObject locationInView:self];
    [(UIKeyboardMenuView *)self selectItemAtPoint:?];
  }

  else
  {
    [(UIKeyboardMenuView *)self fadeWithDelay:0.1];
  }
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  usesDarkTheme = [(UIKeyboardMenuView *)self usesDarkTheme];
  v5 = usesDarkTheme == [configCopy whiteText];
  v6 = configCopy;
  if (!v5)
  {
    -[UIKeyboardMenuView setUsesDarkTheme:](self, "setUsesDarkTheme:", [configCopy whiteText]);
    [(UITableView *)self->m_table reloadData];
    renderConfig = [(UIKBKeyView *)self->m_backgroundKeyView renderConfig];
    lightKeyboard = [renderConfig lightKeyboard];
    lightKeyboard2 = [configCopy lightKeyboard];

    if (lightKeyboard != lightKeyboard2)
    {
      [(UIView *)self frame];
      [(UIKeyboardMenuView *)self setupBackgroundKeyViewWithSize:v10, v11];
    }

    [(UIKeyboardMenuView *)self setNeedsDisplay];
    v6 = configCopy;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:0x1EFB791F0 object:0];
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