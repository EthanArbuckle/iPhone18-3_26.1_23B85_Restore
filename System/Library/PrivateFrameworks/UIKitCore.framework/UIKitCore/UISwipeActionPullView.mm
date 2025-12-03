@interface UISwipeActionPullView
- (BOOL)primaryActionIsDestructive;
- (Class)_buttonClass;
- (NSString)description;
- (UIColor)primaryActionColor;
- (UIContextualAction)primarySwipeAction;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)extraInsets;
- (UIEdgeInsets)pullViewInsets;
- (UISwipeActionPullView)initWithFrame:(CGRect)frame cellEdge:(unint64_t)edge style:(unint64_t)style;
- (UISwipeActionPullViewDelegate)delegate;
- (double)_directionalMultiplier;
- (double)_interButtonPadding;
- (double)_paddingToSwipedView;
- (double)_totalInterButtonPadding;
- (double)confirmationThreshold;
- (double)openThreshold;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)sourceViewForAction:(id)action;
- (void)_layoutClippingLayer;
- (void)_performAction:(id)action offset:(double)offset extraOffset:(double)extraOffset;
- (void)_pressedButton:(id)button;
- (void)_rebuildButtons;
- (void)_setLayerBounds:(CGRect)bounds;
- (void)_setWidth:(double)width;
- (void)_setupClippingViewIfNeeded;
- (void)_tappedButton:(id)button;
- (void)_unpressedButton:(id)button;
- (void)configureWithSwipeActions:(id)actions;
- (void)freeze;
- (void)layoutSubviews;
- (void)moveToOffset:(double)offset extraOffset:(double)extraOffset animator:(id)animator usingSpringWithStiffness:(double)stiffness initialVelocity:(double)velocity;
- (void)resetView;
- (void)setBounds:(CGRect)bounds;
- (void)setButtonsUnderlapSwipedView:(BOOL)view;
- (void)setFrame:(CGRect)frame;
- (void)swipeActionButton:(id)button willDisplayContextMenuWithAnimator:(id)animator;
@end

@implementation UISwipeActionPullView

- (UISwipeActionPullView)initWithFrame:(CGRect)frame cellEdge:(unint64_t)edge style:(unint64_t)style
{
  v14.receiver = self;
  v14.super_class = UISwipeActionPullView;
  v7 = [(UIView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_cellEdge = edge;
    v7->_style = style;
    traitCollection = [(UIView *)v7 traitCollection];
    v10 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);
    [(UISwipeActionPullView *)v8 setVisualStyle:v10];

    [(UIView *)v8 anchorPoint];
    if (v8->_cellEdge == 2)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    v12 = 1.0;
    if (v8->_cellEdge == 2)
    {
      v12 = 0.0;
    }

    [(UIView *)v8 setAnchorPoint:v12];
    [(UIView *)v8 setAutoresizingMask:v11];
    [(UIView *)v8 _setOverrideUserInterfaceRenderingMode:1];
  }

  return v8;
}

- (UIContextualAction)primarySwipeAction
{
  _swipeActionCount = [(UISwipeActionPullView *)self _swipeActionCount];
  if (_swipeActionCount)
  {
    _swipeActionCount = [(NSArray *)self->_actions objectAtIndexedSubscript:_swipeActionCount - 1];
  }

  return _swipeActionCount;
}

- (BOOL)primaryActionIsDestructive
{
  primarySwipeAction = [(UISwipeActionPullView *)self primarySwipeAction];
  isDestructive = [primarySwipeAction isDestructive];

  return isDestructive;
}

- (UIColor)primaryActionColor
{
  primarySwipeAction = [(UISwipeActionPullView *)self primarySwipeAction];
  backgroundColor = [primarySwipeAction backgroundColor];

  return backgroundColor;
}

- (void)setButtonsUnderlapSwipedView:(BOOL)view
{
  self->_buttonsUnderlapSwipedView = view;
  if (view)
  {
    visualStyle = [(UISwipeActionPullView *)self visualStyle];
    [visualStyle defaultButtonWidth];
    self->_minimumOffset = v5;

    buttonsUnderlapSwipedView = self->_buttonsUnderlapSwipedView;
  }

  else
  {
    buttonsUnderlapSwipedView = 0;
    self->_minimumOffset = 0.0;
  }

  [(UIView *)self setClipsToBounds:buttonsUnderlapSwipedView];
}

- (double)openThreshold
{
  v24 = *MEMORY[0x1E69E9840];
  [(UIView *)self layoutIfNeeded];
  result = self->_openThreshold;
  if (result == 0.0)
  {
    if ([(UISwipeActionPullView *)self hasActions])
    {
      [(UISwipeActionPullView *)self contentInsets];
      v5 = v4;
      [(UISwipeActionPullView *)self contentInsets];
      v7 = v5 + v6;
      [(UISwipeActionPullView *)self _paddingToSwipedView];
      v9 = v8 + v7;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = self->_buttons;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v19 + 1) + 8 * v14) buttonWidth];
            v9 = v9 + v15;
            ++v14;
          }

          while (v12 != v14);
          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      [(UISwipeActionPullView *)self _totalInterButtonPadding];
      v17 = v9 + v16;
      [(UISwipeActionPullView *)self _directionalMultiplier];
      result = v17 * v18;
      self->_openThreshold = result;
    }

    else
    {
      return self->_openThreshold;
    }
  }

  return result;
}

- (double)confirmationThreshold
{
  if (self->_confirmationThreshold == 0.0 && [(UISwipeActionPullView *)self hasActions])
  {
    [(UISwipeActionPullView *)self _directionalMultiplier];
    v4 = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained confirmationDistanceForPrimaryActionInSwipeActionPullView:self];
    UIRoundToViewScale(0);
    self->_confirmationThreshold = v4 * v6;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    return self->_confirmationThreshold;
  }

  [(UISwipeActionPullView *)self _directionalMultiplier];
  confirmationThreshold = self->_confirmationThreshold;
  if (confirmationThreshold < 0.0)
  {
    confirmationThreshold = -confirmationThreshold;
  }

  openThreshold = self->_openThreshold;
  if (openThreshold < 0.0)
  {
    openThreshold = -openThreshold;
  }

  v12 = openThreshold + 24.0;
  if (confirmationThreshold < v12)
  {
    confirmationThreshold = v12;
  }

  return v9 * confirmationThreshold;
}

- (double)_directionalMultiplier
{
  cellEdge = [(UISwipeActionPullView *)self cellEdge];
  result = 1.0;
  if (cellEdge == 8)
  {
    return -1.0;
  }

  return result;
}

- (Class)_buttonClass
{
  if (self->_style > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (double)_paddingToSwipedView
{
  visualStyle = [(UISwipeActionPullView *)self visualStyle];
  [visualStyle paddingToSwipeViewForStyle:self->_style];
  v5 = v4;

  return v5;
}

- (double)_interButtonPadding
{
  visualStyle = [(UISwipeActionPullView *)self visualStyle];
  [visualStyle interButtonPaddingForStyle:self->_style];
  v5 = v4;

  return v5;
}

- (double)_totalInterButtonPadding
{
  v3 = [(NSMutableArray *)self->_buttons count];
  result = 0.0;
  if (v3 >= 2)
  {
    v5 = v3;
    [(UISwipeActionPullView *)self _interButtonPadding];
    return v6 * (v5 - 1);
  }

  return result;
}

- (void)_setupClippingViewIfNeeded
{
  style = self->_style;
  clippingView = self->_clippingView;
  if (style == 2)
  {
    if (clippingView)
    {
      return;
    }

    v5 = [UIView alloc];
    [(UIView *)self bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    v7 = self->_clippingView;
    self->_clippingView = v6;

    layer = [(UIView *)self->_clippingView layer];
    [(UIView *)layer setMasksToBounds:1];
    [(UIView *)layer setMaskedCorners:15];
    [(UIView *)layer setCornerCurve:*MEMORY[0x1E69796E8]];
    if (self->_roundedStyleCornerRadius > 0.0)
    {
      [(UIView *)layer setCornerRadius:?];
    }

    else
    {
      visualStyle = [(UISwipeActionPullView *)self visualStyle];
      [visualStyle buttonCornerRadiusForStyle:self->_style view:self];
      [(UIView *)layer setCornerRadius:?];
    }

    [(UIView *)self insertSubview:self->_clippingView atIndex:0];
    v9 = layer;
  }

  else
  {
    if (!clippingView)
    {
      return;
    }

    [(UIView *)clippingView removeFromSuperview];
    v9 = self->_clippingView;
    self->_clippingView = 0;
  }
}

- (void)_rebuildButtons
{
  _swipeActionCount = [(UISwipeActionPullView *)self _swipeActionCount];
  v4 = 416;
  buttons = self->_buttons;
  if (!buttons)
  {
    goto LABEL_5;
  }

  if (_swipeActionCount == [(NSMutableArray *)buttons count])
  {
    return;
  }

  v6 = self->_buttons;
  if (v6)
  {
    [(NSMutableArray *)v6 makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_buttons removeAllObjects];
  }

  else
  {
LABEL_5:
    v7 = objc_opt_new();
    v8 = self->_buttons;
    self->_buttons = v7;
  }

  [(UISwipeActionPullView *)self _setupClippingViewIfNeeded];
  clippingView = self->_clippingView;
  if (!clippingView)
  {
    clippingView = self;
  }

  v39 = clippingView;
  cellEdge = [(UISwipeActionPullView *)self cellEdge];
  v11 = 1;
  if (cellEdge != 8)
  {
    v11 = 2;
  }

  v37 = v11;
  if (cellEdge == 8)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  minimumOffset = self->_minimumOffset;
  [(UISwipeActionPullView *)self confirmationThreshold];
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  [(UIView *)v39 bounds];
  Height = CGRectGetHeight(v41);
  if (self->_style)
  {
    v17 = 0;
  }

  else
  {
    v17 = _swipeActionCount == 1;
  }

  if (v17)
  {
    firstObject = [(NSArray *)self->_actions firstObject];
    if ([firstObject forcesFallbackBackgroundColor])
    {
      visualStyle = [(UISwipeActionPullView *)self visualStyle];
      defaultButtonBackgroundColor = [visualStyle defaultButtonBackgroundColor];
    }

    else
    {
      defaultButtonBackgroundColor = [firstObject backgroundColor];
    }

    [(UIView *)self setBackgroundColor:defaultButtonBackgroundColor];
  }

  else
  {
    [(UIView *)self setBackgroundColor:0];
  }

  traitCollection = [(UIView *)self traitCollection];
  v22 = _UITableConstantsForTraitCollection(traitCollection);
  traitCollection2 = [(UIView *)self traitCollection];
  v38 = [v22 defaultImageSymbolConfigurationForTraitCollection:traitCollection2];

  if (_swipeActionCount)
  {
    v24 = v15 * 3.0;
    v36 = *MEMORY[0x1E69796E8];
    do
    {
      v25 = v4;
      _buttonClass = [objc_alloc(-[UISwipeActionPullView _buttonClass](self _buttonClass];
      visualStyle2 = [(UISwipeActionPullView *)self visualStyle];
      [_buttonClass setVisualStyle:visualStyle2];

      if (self->_style == 2)
      {
        layer = [_buttonClass layer];
        [layer setMasksToBounds:1];

        layer2 = [_buttonClass layer];
        [layer2 setCornerCurve:v36];

        visualStyle3 = [(UISwipeActionPullView *)self visualStyle];
        [visualStyle3 interitemButtonCornerRadiusForStyle:self->_style];
        v32 = v31;
        layer3 = [_buttonClass layer];
        [layer3 setCornerRadius:v32];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UISwipeActionPullView *)self confirmationThreshold];
          if (v34 < 0.0)
          {
            v34 = -v34;
          }

          [_buttonClass setExtensionLength:v34 * 3.0];
        }
      }

      [_buttonClass addTarget:self action:sel__tappedButton_ forControlEvents:64];
      [_buttonClass addTarget:self action:sel__pressedButton_ forControlEvents:1];
      [_buttonClass addTarget:self action:sel__unpressedButton_ forControlEvents:384];
      [_buttonClass setPreferredSymbolConfiguration:v38 forImageInState:0];
      [_buttonClass setContentHorizontalAlignment:v37];
      titleLabel = [_buttonClass titleLabel];
      [titleLabel setTextAlignment:1];

      [_buttonClass setAnchorPoint:{v12, 0.5}];
      [_buttonClass setFrame:{minimumOffset, 0.0, v24, Height}];
      [_buttonClass setAutosizes:{-[UISwipeActionPullView autosizesButtons](self, "autosizesButtons")}];
      v4 = v25;
      [*(&self->super.super.super.isa + v25) addObject:_buttonClass];
      [(UIView *)v39 addSubview:_buttonClass];

      --_swipeActionCount;
    }

    while (_swipeActionCount);
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UISwipeActionPullView;
  [(UIView *)&v5 layoutSubviews];
  if (self->_swipeActionsDidChange)
  {
    self->_swipeActionsDidChange = 0;
    self->_openThreshold = 0.0;
    self->_confirmationThreshold = 0.0;
    [(UISwipeActionPullView *)self _rebuildButtons];
    buttons = self->_buttons;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __39__UISwipeActionPullView_layoutSubviews__block_invoke;
    v4[3] = &unk_1E7122C00;
    v4[4] = self;
    [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v4];
  }
}

void __39__UISwipeActionPullView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 424) objectAtIndexedSubscript:a3];
  v7 = [v6 image];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v8 = [v7 imageWithRenderingMode:2];

    v7 = v8;
  }

  [v5 setImage:v7 forState:0];
  v9 = [v6 title];
  [v5 setTitle:v9 forState:0];

  v10 = [v6 backgroundColor];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __39__UISwipeActionPullView_layoutSubviews__block_invoke_2;
  v21[3] = &unk_1E70F3870;
  v11 = v10;
  v22 = v11;
  v12 = [UIColor colorWithDynamicProvider:v21];
  [v5 setDefaultBackgroundColor:v11];
  [v5 setHighlightedBackgroundColor:v12];
  v13 = [v6 _menu];
  if (v13)
  {
    [v5 setMenu:v13];
    [v5 setShowsMenuAsPrimaryAction:1];
    [v5 setSwipeActionButtonDelegate:*(a1 + 32)];
  }

  [v5 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v5 buttonWidth];
  [v5 setFrame:{v15, v17, v20, v19}];
}

id __39__UISwipeActionPullView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInterfaceStyle];
  v5 = *(a1 + 32);
  if (v4 == 2)
  {
    [UIColor _accessibilityLightenedColorForColor:v5];
  }

  else
  {
    [UIColor _accessibilityDarkenedColorForColor:v5];
  }
  v6 = ;
  v7 = [v6 resolvedColorWithTraitCollection:v3];

  return v7;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UISwipeActionPullView *)self _setWidth:CGRectGetWidth(frame)];
  v8.receiver = self;
  v8.super_class = UISwipeActionPullView;
  [(UIView *)&v8 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v8.receiver = self;
  v8.super_class = UISwipeActionPullView;
  [(UIView *)&v8 setBounds:x, y];
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  [(UISwipeActionPullView *)self _setWidth:CGRectGetWidth(v9)];
}

- (void)_setWidth:(double)width
{
  [(UISwipeActionPullView *)self _directionalMultiplier];
  v6 = v5 * width;

  [(UISwipeActionPullView *)self moveToOffset:0 extraOffset:v6 animator:0.0 usingSpringWithStiffness:0.0 initialVelocity:0.0];
}

- (void)_setLayerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  layer = [(UIView *)self layer];
  [layer setBounds:{x, y, width, height}];

  [(UISwipeActionPullView *)self _layoutClippingLayer];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_buttons;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        superview = [v14 superview];
        [superview bounds];
        v22 = CGRectGetHeight(v31);

        [v14 setBounds:{v16, v18, v20, v22}];
        [v14 center];
        v24 = v23;
        v32.origin.x = v16;
        v32.origin.y = v18;
        v32.size.width = v20;
        v32.size.height = v22;
        [v14 setCenter:{v24, CGRectGetMidY(v32)}];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)_layoutClippingLayer
{
  if (self->_clippingView)
  {
    layer = [(UIView *)self layer];
    [layer bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if ([(UISwipeActionPullView *)self cellEdge]== 2)
    {
      left = self->_contentInsets.left;
      v5 = v5 + left;
    }

    else
    {
      left = self->_contentInsets.right;
    }

    v13 = fmax(v9 - left, 0.0);
    layer2 = [(UIView *)self->_clippingView layer];
    [layer2 setBounds:{v5, v7, v13, v11}];

    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v13;
    v19.size.height = v11;
    MidX = CGRectGetMidX(v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v13;
    v20.size.height = v11;
    MidY = CGRectGetMidY(v20);
    layer3 = [(UIView *)self->_clippingView layer];
    [layer3 setPosition:{MidX, MidY}];
  }
}

- (void)resetView
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__UISwipeActionPullView_resetView__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

uint64_t __34__UISwipeActionPullView_resetView__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(*(a1 + 32) + 416);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 _outermostLayer];
        [v8 removeAllAnimations];

        v9 = 0.0;
        if ([*(a1 + 32) buttonsUnderlapSwipedView])
        {
          v10 = *(a1 + 32);
          v11 = fmax(v10[58], 0.0);
          [v10 _directionalMultiplier];
          v9 = v12 * v11;
        }

        v13 = [v7 _outermostLayer];
        [v13 position];
        v15 = v14;
        v16 = [v7 _outermostLayer];
        [v16 setPosition:{v9, v15}];

        [v7 setMenu:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 441) = 0;
  return [*(a1 + 32) setState:0];
}

- (void)freeze
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_buttons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        _outermostLayer = [*(*(&v25 + 1) + 8 * v7) _outermostLayer];
        [_outermostLayer position];
        v10 = v9;
        presentationLayer = [_outermostLayer presentationLayer];
        [presentationLayer position];
        v13 = v12;

        [_outermostLayer setPosition:{v13, v10}];
        [_outermostLayer removeAllAnimations];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  layer = [(UIView *)self layer];
  [layer bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  layer2 = [(UIView *)self layer];
  presentationLayer2 = [layer2 presentationLayer];
  [presentationLayer2 bounds];
  Width = CGRectGetWidth(v31);

  [(UISwipeActionPullView *)self _setLayerBounds:v16, v18, Width, v20];
  layer3 = [(UIView *)self layer];
  [layer3 removeAllAnimations];
}

- (void)configureWithSwipeActions:(id)actions
{
  reverseObjectEnumerator = [actions reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  actions = self->_actions;
  self->_actions = allObjects;

  [(UISwipeActionPullView *)self setState:0];
  self->_swipeActionsDidChange = 1;

  [(UIView *)self setNeedsLayout];
}

- (void)moveToOffset:(double)offset extraOffset:(double)extraOffset animator:(id)animator usingSpringWithStiffness:(double)stiffness initialVelocity:(double)velocity
{
  stiffnessCopy = stiffness;
  v129 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  [(UISwipeActionPullView *)self _paddingToSwipedView];
  v12 = v11;
  cellEdge = [(UISwipeActionPullView *)self cellEdge];
  v14 = 0.0;
  if (offset >= 0.0)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = 0.0;
  }

  v16 = offsetCopy - v12;
  if (offsetCopy - v12 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = 8;
  v18 = fmin(offset, 0.0);
  v19 = fmin(v18 + v12, 0.0);
  if (cellEdge == 8)
  {
    v17 = 24;
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (cellEdge == 8)
  {
    offsetCopy = v18;
  }

  v106 = offsetCopy;
  v21 = *(&self->_contentInsets.top + v17);
  _swipeActionCount = [(UISwipeActionPullView *)self _swipeActionCount];
  v23 = self->_buttons;
  if (_swipeActionCount != [(NSMutableArray *)v23 count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeActionPullView.m" lineNumber:514 description:@"The swipe action count does not match the number of swipe action buttons."];
  }

  if (v20 >= 0.0)
  {
    v24 = v20;
  }

  else
  {
    v24 = -v20;
  }

  [(UISwipeActionPullView *)self confirmationThreshold];
  if (v25 < 0.0)
  {
    v25 = -v25;
  }

  v26 = v25 * 3.0;
  v105 = v24;
  if (v24 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  v108 = 472;
  if (self->_style == 2)
  {
    [(UISwipeActionPullView *)self openThreshold];
    if (v28 < 0.0)
    {
      v28 = -v28;
    }

    v29 = v28 - v12;
    if (v27 < v29)
    {
      v27 = v29;
    }

    v14 = (v27 - v29) / _swipeActionCount;
  }

  _interButtonPadding = [(UISwipeActionPullView *)self _interButtonPadding];
  v32 = v31;
  v33 = MEMORY[0x1EEE9AC00](_interButtonPadding);
  v35 = (v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  autosizesButtons = [(UISwipeActionPullView *)self autosizesButtons];
  v104[1] = v104;
  if (!autosizesButtons)
  {
    v48 = v27 / (_swipeActionCount + 1);
    if (v48 <= v21)
    {
      v37 = v27 / (_swipeActionCount + 1);
      if (!_swipeActionCount)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v37 = v48 + (v48 - v21) / _swipeActionCount;
      v48 = v21;
      if (!_swipeActionCount)
      {
        goto LABEL_107;
      }
    }

    v49 = _swipeActionCount - 1;
    v50 = v48 + v37;
    v51 = (_swipeActionCount + 1) & 0xFFFFFFFFFFFFFFFELL;
    v52 = vdupq_n_s64(_swipeActionCount - 1);
    v53 = xmmword_18A64C520;
    v54 = v35 + 1;
    v55 = vdupq_n_s64(2uLL);
    do
    {
      v56 = vmovn_s64(vcgeq_u64(v52, v53));
      if (v56.i8[0])
      {
        if (v49)
        {
          v57 = v37;
        }

        else
        {
          v57 = v50;
        }

        *(v54 - 1) = v57;
      }

      if (v56.i8[4])
      {
        if (v49 == 1)
        {
          v58 = v50;
        }

        else
        {
          v58 = v37;
        }

        *v54 = v58;
      }

      v53 = vaddq_s64(v53, v55);
      v49 -= 2;
      v54 += 2;
      v51 -= 2;
    }

    while (v51);
    goto LABEL_53;
  }

  [(UISwipeActionPullView *)self _totalInterButtonPadding];
  if (_swipeActionCount)
  {
    v38 = 0;
    v39 = v21 + v37;
    do
    {
      v40 = [(NSMutableArray *)v23 objectAtIndexedSubscript:v38];
      [v40 buttonWidth];
      v39 = v39 + v14 + v41;

      ++v38;
    }

    while (_swipeActionCount != v38);
    v42 = 0;
    v43 = _swipeActionCount;
    do
    {
      v44 = [(NSMutableArray *)v23 objectAtIndexedSubscript:v42];
      [v44 buttonWidth];
      v46 = v14 + v45;
      if (--v43)
      {
        v47 = v32;
      }

      else
      {
        v47 = v21;
      }

      v35[v42] = v27 * (v47 + v46) / v39;

      ++v42;
    }

    while (v43);
LABEL_53:
    v118 = _swipeActionCount - 1;
    if (_swipeActionCount == 1)
    {
      firstObject = [(NSMutableArray *)v23 firstObject];
      [firstObject buttonWidth];
      v61 = v14 + v60;

      v62 = v21 + v61;
      if (v27 <= v21 + v61)
      {
        v62 = v27;
      }

      *v35 = v62;
    }

    v63 = 0;
    v112 = fabs(v106);
    v111 = v121;
    v107 = stiffnessCopy + stiffnessCopy;
    v110 = 2.22044605e-16;
    v109 = 3221225472;
    v114 = v23;
    v113 = v20;
    v64 = v108;
    do
    {
      v65 = [(NSMutableArray *)v23 objectAtIndexedSubscript:v63];
      v66 = 0.0;
      v67 = v63;
      do
      {
        v66 = v66 + v35[v67++];
      }

      while (_swipeActionCount != v67);
      state = [(UISwipeActionPullView *)self state];
      v70 = v112 >= v110 && state != 0;
      v117 = 441;
      v72 = stiffnessCopy > 0.0 && self->_isTentative != v70;
      v73 = *(&self->super.super.super.isa + v64);
      if (v73)
      {
        if (v73 == 1)
        {
          if (_swipeActionCount != 1 && v70)
          {
            if (!v63)
            {
              v72 = 0;
            }

            goto LABEL_87;
          }

LABEL_86:
          if (!v70)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

        if (v73 != 2)
        {
          goto LABEL_86;
        }
      }

      if (v63 != v118)
      {
        LOBYTE(v70) = 0;
        v72 = 0;
      }

      if (!v70)
      {
LABEL_88:
        v75 = 0;
        goto LABEL_89;
      }

LABEL_87:
      v75 = 1;
      v66 = v27;
LABEL_89:
      _outermostLayer = [v65 _outermostLayer];
      [v65 bounds];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v84 = *(&self->super.super.super.isa + v64);
      if (v84 == 2)
      {
        v85 = v27;
      }

      else
      {
        v85 = v77;
      }

      v116 = v75;
      if ((v75 & 1) == 0 && v84 == 2)
      {
        [v65 buttonWidth];
        v85 = v14 + v86;
      }

      v87 = v14;
      minimumOffset = self->_minimumOffset;
      [(UISwipeActionPullView *)self contentInsets];
      if (v66 < minimumOffset - v89)
      {
        v66 = minimumOffset - v89;
      }

      [(UISwipeActionPullView *)self _directionalMultiplier];
      v91 = v90 * v66;
      if ([(UISwipeActionPullView *)self cellEdge]== 8)
      {
        v91 = v91 - v113;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = v109;
      v121[0] = __100__UISwipeActionPullView_moveToOffset_extraOffset_animator_usingSpringWithStiffness_initialVelocity___block_invoke;
      v121[1] = &unk_1E7101718;
      v92 = _outermostLayer;
      v122 = v92;
      v124 = v91;
      v93 = v65;
      v123 = v93;
      v125 = v79;
      v126 = v81;
      v127 = v85;
      v128 = v83;
      v94 = _Block_copy(aBlock);
      v95 = v94;
      if (v72)
      {
        +[_UISwipeActionSpringAnimationParameters defaultStiffness];
        v97 = v107 * v96;
        +[_UISwipeActionSpringAnimationParameters defaultDamping];
        v99 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:v97 damping:v98 initialVelocity:0.0, 0.0];
        v100 = animatorCopy;
        v101 = [[UIViewPropertyAnimator alloc] initWithDuration:v99 timingParameters:0.0];
        [(UIViewPropertyAnimator *)v101 addAnimations:v95];
        [(UIViewPropertyAnimator *)v101 startAnimation];

        animatorCopy = v100;
        v64 = v108;
      }

      else if (animatorCopy)
      {
        [animatorCopy addAnimations:v94];
      }

      else
      {
        (*(v94 + 2))(v94);
      }

      v14 = v87;
      if (v63 == v118)
      {
        *(&self->super.super.super.isa + v117) = v116;
      }

      ++v63;
      v23 = v114;
    }

    while (v63 != _swipeActionCount);
  }

LABEL_107:
  [(UIView *)self bounds];
  Height = CGRectGetHeight(v130);
  if (animatorCopy)
  {
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __100__UISwipeActionPullView_moveToOffset_extraOffset_animator_usingSpringWithStiffness_initialVelocity___block_invoke_2;
    v119[3] = &unk_1E70F3B20;
    v119[6] = 0;
    v119[4] = self;
    v119[5] = 0;
    *&v119[7] = v105;
    *&v119[8] = Height;
    [animatorCopy addAnimations:v119];
  }

  else
  {
    [(UISwipeActionPullView *)self _setLayerBounds:0.0, 0.0, v105, Height];
  }

  self->_currentOffset = v106;
}

uint64_t __100__UISwipeActionPullView_moveToOffset_extraOffset_animator_usingSpringWithStiffness_initialVelocity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) position];
  [*(a1 + 32) setPosition:v2];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 40);

  return [v7 setBounds:{v3, v4, v5, v6}];
}

- (void)_performAction:(id)action offset:(double)offset extraOffset:(double)extraOffset
{
  actionCopy = action;
  primarySwipeAction = [(UISwipeActionPullView *)self primarySwipeAction];

  if (primarySwipeAction == actionCopy)
  {
    primaryActionIsDestructive = [(UISwipeActionPullView *)self primaryActionIsDestructive];

    if (primaryActionIsDestructive)
    {
      [(UISwipeActionPullView *)self setState:2];

      [(UISwipeActionPullView *)self moveToOffset:0 extraOffset:offset animator:extraOffset usingSpringWithStiffness:1.0 initialVelocity:0.0];
    }
  }

  else
  {
  }
}

- (id)sourceViewForAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__188;
  v16 = __Block_byref_object_dispose__188;
  selfCopy = self;
  buttons = selfCopy->_buttons;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__UISwipeActionPullView_sourceViewForAction___block_invoke;
  v9[3] = &unk_1E7122C28;
  v9[4] = selfCopy;
  v6 = actionCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__UISwipeActionPullView_sourceViewForAction___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(a1[4] + 424) objectAtIndexedSubscript:a3];
  if (v7 == a1[5])
  {
    v8 = [v11 sourceView];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (void)_tappedButton:(id)button
{
  if (self->_pressedButton == button)
  {
    v4 = [(NSMutableArray *)self->_buttons indexOfObject:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(NSArray *)self->_actions objectAtIndexedSubscript:v4];
    [WeakRetained swipeActionPullView:self tappedAction:v6];

    pressedButton = self->_pressedButton;
    self->_pressedButton = 0;
  }
}

- (void)_pressedButton:(id)button
{
  buttonCopy = button;
  if (!self->_pressedButton)
  {
    v6 = buttonCopy;
    objc_storeStrong(&self->_pressedButton, button);
    buttonCopy = v6;
  }
}

- (void)_unpressedButton:(id)button
{
  pressedButton = self->_pressedButton;
  if (pressedButton == button)
  {
    self->_pressedButton = 0;
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__188;
  v21 = __Block_byref_object_dispose__188;
  v22 = 0;
  if (self->_pressedButton)
  {
    selfCopy = self;
  }

  else
  {
    buttons = self->_buttons;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__UISwipeActionPullView_hitTest_withEvent___block_invoke;
    v16[3] = &unk_1E7122C50;
    *&v16[6] = x;
    *&v16[7] = y;
    v16[4] = self;
    v16[5] = &v17;
    [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v16];
    v10 = v18[5];
    if (!v10)
    {
      v15.receiver = self;
      v15.super_class = UISwipeActionPullView;
      v11 = [(UIView *)&v15 hitTest:eventCopy withEvent:x, y];
      v12 = v18[5];
      v18[5] = v11;

      v10 = v18[5];
    }

    selfCopy = v10;
  }

  v13 = selfCopy;
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __43__UISwipeActionPullView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = a2;
  [v25 convertPoint:*(a1 + 32) fromView:{*(a1 + 48), *(a1 + 56)}];
  v8 = v7;
  v10 = v9;
  [v25 bounds];
  v12 = v11;
  v14 = v13;
  [v25 buttonWidth];
  v16 = v15;
  v17 = [*(a1 + 32) cellEdge];
  v18 = 0.0;
  if (v17 == 2)
  {
    [v25 frame];
    v20 = v19;
    [v25 buttonWidth];
    v18 = v20 - v21;
  }

  v22 = v12;
  v23 = v16;
  v24 = v14;
  v27.x = v8;
  v27.y = v10;
  if (CGRectContainsPoint(*&v18, v27))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)swipeActionButton:(id)button willDisplayContextMenuWithAnimator:(id)animator
{
  animator = [(NSMutableArray *)self->_buttons indexOfObject:button, animator];
  if (animator != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = animator;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(NSArray *)self->_actions objectAtIndexedSubscript:v6];
    [WeakRetained swipeActionPullView:self tappedAction:v7];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(UISwipeActionPullView *)self cellEdge]== 8)
  {
    v5 = @"UIRectEdgeRight";
  }

  else
  {
    v5 = @"UIRectEdgeLeft";
  }

  if (self->_actions)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSArray: %p>", self->_actions];
    v7 = [v3 stringWithFormat:@"<%@: %p cellEdge = %@, actions = %@>", v4, self, v5, v6];;
  }

  else
  {
    v7 = [v3 stringWithFormat:@"<%@: %p cellEdge = %@, actions = %@>", v4, self, v5, 0];;
  }

  return v7;
}

- (UISwipeActionPullViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)pullViewInsets
{
  top = self->_pullViewInsets.top;
  left = self->_pullViewInsets.left;
  bottom = self->_pullViewInsets.bottom;
  right = self->_pullViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)extraInsets
{
  top = self->_extraInsets.top;
  left = self->_extraInsets.left;
  bottom = self->_extraInsets.bottom;
  right = self->_extraInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end