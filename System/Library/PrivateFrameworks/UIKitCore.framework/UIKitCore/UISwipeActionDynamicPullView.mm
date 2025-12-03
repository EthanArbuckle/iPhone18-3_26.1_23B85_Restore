@interface UISwipeActionDynamicPullView
- (BOOL)hasActions;
- (BOOL)primaryActionIsDestructive;
- (CGSize)calculateUniformSize;
- (NSString)description;
- (UIContextualAction)primarySwipeAction;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)extraInsets;
- (UIEdgeInsets)pullViewInsets;
- (UISwipeActionDynamicPullView)initWithFrame:(CGRect)frame cellEdge:(unint64_t)edge;
- (UISwipeActionPullViewDelegate)delegate;
- (double)_directionalMultiplier;
- (double)_totalInterButtonPadding;
- (double)confirmationThreshold;
- (double)openThreshold;
- (id)buttonTypes;
- (id)calculateAllInlineWidths:(id)widths;
- (id)sourceViewForAction:(id)action;
- (void)_moveToOffset:(double)offset animator:(id)animator interactive:(BOOL)interactive animated:(BOOL)animated;
- (void)_performAction:(id)action offset:(double)offset;
- (void)_processSizeChange:(CGSize)change newSize:(CGSize)size;
- (void)_rebuildButtons;
- (void)_setFrame:(CGRect)frame processSizeChange:(BOOL)change;
- (void)configureWithSwipeActions:(id)actions;
- (void)freeze;
- (void)layoutSubviews;
- (void)prepareButtons;
- (void)resetView;
- (void)setBounds:(CGRect)bounds;
- (void)swipeActionButtonDidTouchUpInside:(id)inside;
- (void)swipeActionWillDisplayMenuForButton:(id)button;
@end

@implementation UISwipeActionDynamicPullView

- (UISwipeActionDynamicPullView)initWithFrame:(CGRect)frame cellEdge:(unint64_t)edge
{
  v9.receiver = self;
  v9.super_class = UISwipeActionDynamicPullView;
  v5 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_cellEdge = edge;
    if (edge == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }

    [(UIView *)v5 setAutoresizingMask:v7];
    [(UIView *)v6 _setOverrideUserInterfaceRenderingMode:1];
  }

  return v6;
}

- (UIContextualAction)primarySwipeAction
{
  actions = [(UISwipeActionDynamicPullView *)self actions];
  if ([actions count])
  {
    firstObject = [actions firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)primaryActionIsDestructive
{
  primarySwipeAction = [(UISwipeActionDynamicPullView *)self primarySwipeAction];
  isDestructive = [primarySwipeAction isDestructive];

  return isDestructive;
}

- (BOOL)hasActions
{
  actions = [(UISwipeActionDynamicPullView *)self actions];
  v3 = [actions count] != 0;

  return v3;
}

- (double)openThreshold
{
  v22 = *MEMORY[0x1E69E9840];
  [(UIView *)self layoutIfNeeded];
  result = self->_openThreshold;
  if (result == 0.0)
  {
    if ([(UISwipeActionDynamicPullView *)self hasActions])
    {
      [(UISwipeActionDynamicPullView *)self contentInsets];
      v5 = v4;
      [(UISwipeActionDynamicPullView *)self contentInsets];
      v7 = v5 + v6;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = self->_buttons;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v17 + 1) + 8 * v12) preferredSize];
            v7 = v7 + v13;
            ++v12;
          }

          while (v10 != v12);
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      [(UISwipeActionDynamicPullView *)self _totalInterButtonPadding];
      v15 = v7 + v14;
      [(UISwipeActionDynamicPullView *)self _directionalMultiplier];
      result = v15 * v16;
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
  if (self->_confirmationThreshold == 0.0 && [(UISwipeActionDynamicPullView *)self hasActions])
  {
    [(UISwipeActionDynamicPullView *)self _directionalMultiplier];
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

  [(UISwipeActionDynamicPullView *)self _directionalMultiplier];
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
  cellEdge = [(UISwipeActionDynamicPullView *)self cellEdge];
  result = 1.0;
  if (cellEdge == 8)
  {
    return -1.0;
  }

  return result;
}

- (double)_totalInterButtonPadding
{
  v3 = [(NSMutableArray *)self->_buttons count];
  [(UISwipeActionDynamicPullView *)self _interButtonPadding];
  return v4 * (v3 + 1);
}

- (id)calculateAllInlineWidths:(id)widths
{
  v30 = *MEMORY[0x1E69E9840];
  widthsCopy = widths;
  if (!calculateAllInlineWidths__tempButton)
  {
    v4 = objc_alloc_init(UIButton);
    v5 = calculateAllInlineWidths__tempButton;
    calculateAllInlineWidths__tempButton = v4;
  }

  v6 = +[_UISwipeActionDynamicButtonView defaultButtonConfiguration];
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v8 = self->_buttons;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        title = [v15 title];
        if ([title length])
        {
          [v6 setTitle:title];
          buttonImage = [v15 buttonImage];
          [v6 setImage:buttonImage];

          [v6 setImagePadding:4.0];
          [calculateAllInlineWidths__tempButton setConfiguration:v6];
          [calculateAllInlineWidths__tempButton sizeThatFits:{v12, v13}];
        }

        else
        {
          buttonImage2 = [v15 buttonImage];

          if (buttonImage2)
          {
            [(UIView *)selfCopy bounds];
            [_UISwipeActionDynamicButtonView imageOnlyButtonWidth:widthsCopy buttonTypes:?];
          }

          else
          {
            v18 = 0.0;
          }
        }

        v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        [array addObject:v20];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v21 = [array copy];

  return v21;
}

- (CGSize)calculateUniformSize
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[_UISwipeActionDynamicButtonView defaultTitleLabel];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_buttons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        title = [*(*(&v18 + 1) + 8 * i) title];
        if ([title length])
        {
          [v3 setText:title];
          [v3 sizeThatFits:{v8, v9}];
          if (v11 < v14)
          {
            v11 = v14;
          }

          if (v10 < v15)
          {
            v10 = v15;
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v16 = v11;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)buttonTypes
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_buttons;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        title = [v8 title];
        v10 = [title length];
        v11 = v10 != 0;
        v12 = v10 == 0;

        buttonImage = [v8 buttonImage];

        if (buttonImage)
        {
          v14 = v12;
        }

        else
        {
          v14 = 1;
        }

        if (buttonImage)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11;
        }

        if (v14)
        {
          v16 = v15;
        }

        else
        {
          v16 = 2;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        [v3 addObject:v17];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = [v3 copy];

  return v18;
}

- (void)_rebuildButtons
{
  actions = [(UISwipeActionDynamicPullView *)self actions];
  v4 = [actions count];

  buttons = self->_buttons;
  if (!buttons)
  {
    goto LABEL_6;
  }

  if (v4 == [(NSMutableArray *)buttons count]&& !self->_pullViewHeightDidChange)
  {
    return;
  }

  v6 = self->_buttons;
  if (v6)
  {
    [(NSMutableArray *)v6 makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_buttons removeAllObjects];
    [(UIView *)self->_containerView removeFromSuperview];
  }

  else
  {
LABEL_6:
    v7 = objc_opt_new();
    v8 = self->_buttons;
    self->_buttons = v7;
  }

  [(UIView *)self bounds];
  Height = CGRectGetHeight(v12);
  if (v4)
  {
    v10 = Height;
    do
    {
      v11 = [[_UISwipeActionDynamicButtonView alloc] initWithFrame:0.0, 0.0, 0.0, v10];
      [(UIView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(NSMutableArray *)self->_buttons addObject:v11];

      --v4;
    }

    while (v4);
  }
}

- (void)prepareButtons
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_buttons count];
  [(UISwipeActionDynamicPullView *)self calculateUniformSize];
  v5 = v4;
  v7 = v6;
  buttonTypes = [(UISwipeActionDynamicPullView *)self buttonTypes];
  v9 = [(UISwipeActionDynamicPullView *)self calculateAllInlineWidths:buttonTypes];
  v10 = [v9 valueForKeyPath:@"@max.floatValue"];
  [v10 floatValue];
  v12 = v11;

  v70 = v9;
  v13 = [v9 valueForKeyPath:@"@sum.floatValue"];
  [v13 floatValue];
  v15 = v14;

  cellEdge = [(UISwipeActionDynamicPullView *)self cellEdge];
  v17 = 24;
  if (cellEdge == 8)
  {
    v17 = 8;
  }

  v18 = *(&self->_extraInsets.top + v17);
  superview = [(UIView *)self superview];
  [superview bounds];
  Width = CGRectGetWidth(v79);

  [(UISwipeActionDynamicPullView *)self _interButtonPadding];
  v22 = v21;
  [(UISwipeActionDynamicPullView *)self _interButtonPadding];
  v24 = v23;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v25 = self->_buttons;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = v12;
    v29 = v15;
    v30 = Width - v18;
    v31 = (v3 + 1);
    v32 = v22 * v31 + v29;
    v33 = v3 * v28 + v24 * v31;
    v34 = *v74;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v74 != v34)
        {
          objc_enumerationMutation(v25);
        }

        v36 = *(*(&v73 + 1) + 8 * i);
        [v36 setUniformWidth:v5];
        [v36 setUniformHeight:v7];
        [v36 setUniformInlineWidth:v28];
        [v36 setCanUseInlineStyle:v32 <= v30];
        [v36 setCanUseUniformInlineWidth:v33 <= v30];
        [v36 setButtonTypes:buttonTypes];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v27);
  }

  [(UISwipeActionDynamicPullView *)self openThreshold];
  if (v37 >= 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = -v37;
  }

  containerView = [(UISwipeActionDynamicPullView *)self containerView];
  if (containerView && (v40 = containerView, -[UISwipeActionDynamicPullView containerView](self, "containerView"), v41 = objc_claimAutoreleasedReturnValue(), [v41 superview], v42 = objc_claimAutoreleasedReturnValue(), v42, v41, v40, v42))
  {
    containerView2 = [(UISwipeActionDynamicPullView *)self containerView];
    subviews = [containerView2 subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
  }

  else
  {
    v45 = objc_alloc_init(UIView);
    [(UISwipeActionDynamicPullView *)self setContainerView:v45];

    autoresizingMask = [(UIView *)self autoresizingMask];
    containerView3 = [(UISwipeActionDynamicPullView *)self containerView];
    [containerView3 setAutoresizingMask:autoresizingMask];

    containerView2 = [(UISwipeActionDynamicPullView *)self containerView];
    [(UIView *)self addSubview:containerView2];
  }

  if (self->_cellEdge == 2)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = -v38;
  }

  [(UIView *)self frame];
  Height = CGRectGetHeight(v80);
  containerView4 = [(UISwipeActionDynamicPullView *)self containerView];
  [containerView4 setFrame:{v48, 0.0, v38, Height}];

  if ([(NSMutableArray *)self->_buttons count])
  {
    v51 = 0;
    do
    {
      v52 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v51];
      if ([(UISwipeActionDynamicPullView *)self cellEdge]== 8)
      {
        v53 = 24;
      }

      else
      {
        v53 = 8;
      }

      v54 = *(&self->_contentInsets.top + v53);
      [(UISwipeActionDynamicPullView *)self _interButtonPadding];
      v56 = v55;
      [v52 preferredSize];
      v58 = v57;
      v59 = (v51++ + 0.5) * v57;
      v60 = v54 + v56 * v51 + v59;
      if (self->_cellEdge == 8)
      {
        v61 = v38 - v60;
      }

      else
      {
        v61 = v60;
      }

      [v52 bounds];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      [v52 center];
      [(UIView *)self bounds];
      v68 = CGRectGetHeight(v81) * 0.5;
      containerView5 = [(UISwipeActionDynamicPullView *)self containerView];
      [containerView5 addSubview:v52];

      [v52 setBounds:{v63, v65, v58, v67}];
      [v52 setCenter:{v61, v68}];
      [v52 setAlpha:0.0];
      CGAffineTransformMakeScale(&v72, 0.0, 0.0);
      v71 = v72;
      [v52 setTransform:&v71];
    }

    while (v51 < [(NSMutableArray *)self->_buttons count]);
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = UISwipeActionDynamicPullView;
  [(UIView *)&v10 layoutSubviews];
  if (self->_swipeActionsDidChange || self->_pullViewHeightDidChange)
  {
    self->_swipeActionsDidChange = 0;
    self->_openThreshold = 0.0;
    self->_confirmationThreshold = 0.0;
    [(UISwipeActionDynamicPullView *)self _rebuildButtons];
    if ([(NSMutableArray *)self->_buttons count])
    {
      v3 = 0;
      do
      {
        v4 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v3];
        [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
        v5 = [(NSArray *)self->_actions objectAtIndexedSubscript:v3];
        [v4 setDelegate:self];
        title = [v5 title];
        [v4 setTitle:title];

        image = [v5 image];
        [v4 setButtonImage:image];

        backgroundColor = [v5 backgroundColor];
        [v4 setButtonBackgroundColor:backgroundColor];

        _menu = [v5 _menu];
        [v4 setButtonMenu:_menu];

        ++v3;
      }

      while (v3 < [(NSMutableArray *)self->_buttons count]);
    }

    [(UISwipeActionDynamicPullView *)self prepareButtons];
    self->_pullViewHeightDidChange = 0;
  }
}

- (void)_setFrame:(CGRect)frame processSizeChange:(BOOL)change
{
  changeCopy = change;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v14.receiver = self;
  v14.super_class = UISwipeActionDynamicPullView;
  [(UIView *)&v14 setFrame:x, y, width, height];
  if (changeCopy)
  {
    [(UISwipeActionDynamicPullView *)self _processSizeChange:v11 newSize:v13, width, height];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v10.receiver = self;
  v10.super_class = UISwipeActionDynamicPullView;
  [(UIView *)&v10 setBounds:x, y];
  [(UISwipeActionDynamicPullView *)self _processSizeChange:v9 newSize:height, width, height];
}

- (void)_processSizeChange:(CGSize)change newSize:(CGSize)size
{
  width = size.width;
  v6 = size.height - change.height;
  v7 = -v6;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 >= 0.0001)
  {
    self->_pullViewHeightDidChange = 1;

    [(UIView *)self setNeedsLayout];
  }

  else
  {
    v8 = width - change.width;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 >= 0.0001)
    {
      [(UISwipeActionDynamicPullView *)self _directionalMultiplier];
      v10 = width * v9;

      [(UISwipeActionDynamicPullView *)self _moveToOffset:0 animator:0 interactive:0 animated:v10];
    }
  }
}

- (void)resetView
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__UISwipeActionDynamicPullView_resetView__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

uint64_t __41__UISwipeActionDynamicPullView_resetView__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 480);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 _outermostLayer];
        [v8 removeAllAnimations];

        v9 = 0.0;
        if ([*(a1 + 32) buttonsUnderlapSwipedView])
        {
          [*(a1 + 32) _directionalMultiplier];
          v9 = v10 * 0.0;
        }

        v11 = [v7 _outermostLayer];
        [v11 position];
        v13 = v12;
        v14 = [v7 _outermostLayer];
        [v14 setPosition:{v9, v13}];

        [v7 setButtonMenu:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

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

  [(UISwipeActionDynamicPullView *)self setBounds:v16, v18, Width, v20];
  layer3 = [(UIView *)self layer];
  [layer3 removeAllAnimations];
}

- (void)configureWithSwipeActions:(id)actions
{
  objectEnumerator = [actions objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  actions = self->_actions;
  self->_actions = allObjects;

  [(UISwipeActionDynamicPullView *)self setState:0];
  self->_swipeActionsDidChange = 1;

  [(UIView *)self setNeedsLayout];
}

- (void)_moveToOffset:(double)offset animator:(id)animator interactive:(BOOL)interactive animated:(BOOL)animated
{
  animatedCopy = animated;
  interactiveCopy = interactive;
  animatorCopy = animator;
  buttons = [(UISwipeActionDynamicPullView *)self buttons];
  v11 = [buttons count];
  actions = [(UISwipeActionDynamicPullView *)self actions];
  v13 = [actions count];

  if (v13 != v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeActionDynamicPullView.m" lineNumber:406 description:@"The swipe action count does not match the number of swipe action buttons."];
  }

  cellEdge = [(UISwipeActionDynamicPullView *)self cellEdge];
  v15 = 8;
  if (cellEdge == 8)
  {
    v15 = 24;
  }

  if (offset < 0.0 != (cellEdge == 8))
  {
    offset = 0.0;
  }

  v85 = *(&self->_contentInsets.top + v15);
  if (offset >= 0.0)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = -offset;
  }

  [(UISwipeActionDynamicPullView *)self _interButtonPadding];
  v88 = v17;
  offsetCopy2 = offset;
  v18 = offset != 0.0 && animatedCopy;
  v19 = animatorCopy;
  if (animatorCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18;
  }

  v87 = v20;
  if (v11)
  {
    v21 = 0;
    v22 = v17 + v17;
    v84 = fabs(offsetCopy - v85);
    v23 = -(offsetCopy - v85);
    v90 = offsetCopy - v85;
    if (offsetCopy - v85 >= 0.0)
    {
      v23 = offsetCopy - v85;
    }

    v80 = v23 - v22;
    v24 = 1.0;
    v25 = 0.0;
    v81 = offsetCopy;
    do
    {
      v26 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v21, *&v80, *&v81];
      [v26 preferredSize];
      v28 = v27;
      v29 = v88 * (v21 + 1);
      v30 = v25 + v29;
      v31 = v88 + v25 + v29 + v27;
      v32 = 1.0;
      if (v90 < v31)
      {
        v33 = v88 + v88 + v31 - v28;
        v34 = v90 - v33;
        if (v90 - v33 < 0.0)
        {
          v34 = 0.0;
        }

        v32 = v34 / (v31 - v33);
      }

      v35 = v32 + (v24 - v32) * 0.0;
      if (v35 < 0.3)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v35;
      }

      v94 = v36;
      [v26 bounds];
      v92 = v38;
      v93 = v37;
      v40 = v39;
      v91 = v41;
      [v26 center];
      v43 = v42;
      v89 = v44;
      v45 = v21;
      v46 = v21 == 0;
      state = [(UISwipeActionDynamicPullView *)self state];
      v48 = v84 < 2.22044605e-16 || state == 0;
      v49 = !v48;
      [(UISwipeActionDynamicPullView *)self openThreshold];
      if (v50 < 0.0)
      {
        v50 = -v50;
      }

      if (offsetCopy <= v50)
      {
        v43 = v85 + v29 + v25 + v28 * 0.5;
        if (self->_cellEdge == 8)
        {
          [(UISwipeActionDynamicPullView *)self openThreshold];
          if (v60 < 0.0)
          {
            v60 = -v60;
          }

          if (offsetCopy >= v60)
          {
            v60 = offsetCopy;
          }

          v43 = v60 - v43;
        }

        [(UIView *)self bounds];
        v61 = CGRectGetHeight(v124) * 0.5;
        v40 = v28;
        goto LABEL_84;
      }

      if (![(UISwipeActionDynamicPullView *)self primaryActionCanBeTriggeredBySwipe])
      {
        [(UISwipeActionDynamicPullView *)self openThreshold];
        if (v62 < 0.0)
        {
          v62 = -v62;
        }

        v63 = offsetCopy / v62;
        if (v63 <= 1.1)
        {
          v35 = v63;
        }

        else
        {
          v35 = 1.1;
        }

        v64 = v85 + v28 * v63 * 0.5 + v25 * v63 + v29 * v35;
        if (self->_cellEdge == 8)
        {
          v43 = offsetCopy - v64;
        }

        else
        {
          v43 = v64;
        }

        goto LABEL_83;
      }

      v51 = v11;
      if (v49)
      {
        if ([(UISwipeActionDynamicPullView *)self primaryActionIsDestructive])
        {
          v51 = v11;
        }

        else
        {
          v51 = 1.0;
        }
      }

      v52 = [buttons objectAtIndexedSubscript:0];
      [v52 preferredSize];
      v54 = v53;

      v48 = v51 == 1.0;
      v55 = v80;
      offsetCopy = v81;
      if (v48)
      {
        if (!v45)
        {
          goto LABEL_72;
        }
      }

      else
      {
        [(UISwipeActionDynamicPullView *)self openThreshold];
        if (v65 < 0.0)
        {
          v65 = -v65;
        }

        v55 = v54 + v81 - v65;
        if (!v45)
        {
LABEL_72:
          if (v54 >= v55)
          {
            v40 = v54;
          }

          else
          {
            v40 = v55;
          }

          if (self->_cellEdge == 8)
          {
            v43 = v81 - (v85 + v88 + v40 * 0.5);
          }

          else
          {
            v43 = v85 + v88 + v40 * 0.5;
          }

          v28 = v40;
          goto LABEL_83;
        }
      }

      [(UISwipeActionDynamicPullView *)self confirmationThreshold];
      if (v56 < 0.0)
      {
        v56 = -v56;
      }

      v57 = fmin(v81 / v56, 1.0);
      v58 = 1.0 - v57 + v57 * 0.3;
      if (v49)
      {
        v59 = v58;
        if (![(UISwipeActionDynamicPullView *)self primaryActionIsDestructive])
        {
          v59 = 0.0;
        }

        v94 = v59;
        if ([(UISwipeActionDynamicPullView *)self primaryActionIsDestructive])
        {
          v35 = 1.0;
        }

        else
        {
          v35 = 0.0;
        }

        if (![(UISwipeActionDynamicPullView *)self primaryActionIsDestructive])
        {
          goto LABEL_83;
        }
      }

      else
      {
        v94 = v58;
      }

      if (self->_cellEdge == 8)
      {
        v43 = v81 - (v85 + v30 + v28 * 0.5);
      }

      else
      {
        v43 = v85 + v30 + v28 * 0.5;
      }

LABEL_83:
      v61 = v89;
LABEL_84:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke;
      aBlock[3] = &unk_1E71088E8;
      v66 = v26;
      v110 = v66;
      v113 = v94;
      v67 = v19;
      v122 = v49;
      v114 = offsetCopy2;
      v115 = v35;
      v116 = v43;
      v117 = v61;
      v118 = v93;
      v119 = v92;
      v120 = v40;
      v121 = v91;
      v123 = v46;
      v111 = v67;
      selfCopy = self;
      v68 = _Block_copy(aBlock);
      v69 = v68;
      if (v87)
      {
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_3;
        v107[3] = &unk_1E70F0F78;
        v108 = v68;
        [UIView _animateWithSwiftUISpringInteractive:interactiveCopy animations:v107];
      }

      else
      {
        v68[2](v68);
      }

      v24 = 1.0;
      v25 = v25 + v28;

      v21 = v45 + 1;
    }

    while (v45 + 1 != v11);
  }

  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_4;
  v105[3] = &unk_1E70F3590;
  v70 = v19;
  v106 = v70;
  v71 = _Block_copy(v105);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_5;
  v103[3] = &unk_1E70F5AC0;
  v72 = v70;
  v104 = v72;
  v73 = _Block_copy(v103);
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_6;
  v102[3] = &unk_1E70F32F0;
  v102[4] = self;
  *&v102[5] = offsetCopy;
  v74 = _Block_copy(v102);
  v75 = v74;
  if (v87)
  {
    animationGroupCompletion = [(UISwipeActionDynamicPullView *)self animationGroupCompletion];

    if (!animationGroupCompletion)
    {
      v77 = objc_alloc_init(_UIGroupCompletion);
      [(UISwipeActionDynamicPullView *)self setAnimationGroupCompletion:v77];
    }

    animationGroupCompletion2 = [(UISwipeActionDynamicPullView *)self animationGroupCompletion];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_7;
    v99[3] = &unk_1E70F5FA8;
    v101 = offsetCopy;
    v99[4] = self;
    v100 = v73;
    [animationGroupCompletion2 replaceCompletion:v99];

    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_8;
    v96[3] = &unk_1E70F77D0;
    v97 = v75;
    v98 = v71;
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_9;
    v95[3] = &unk_1E70F3FD8;
    v95[4] = self;
    [UIView _animateWithSwiftUISpringInteractive:interactiveCopy animations:v96 completion:v95];
  }

  else
  {
    (*(v74 + 2))(v74);
  }
}

uint64_t __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 56)];
  if (!*(a1 + 40) && *(a1 + 64) == 0.0)
  {
    CGAffineTransformMakeScale(&v8, *(a1 + 72), *(a1 + 72));
    v2 = *(a1 + 32);
    v12 = *&v8.a;
    v13 = *&v8.c;
    v3 = *&v8.tx;
    goto LABEL_7;
  }

  if (*(a1 + 128) == 1)
  {
    CGAffineTransformMakeScale(&v15, *(a1 + 72), *(a1 + 72));
    v2 = *(a1 + 32);
    v12 = *&v15.a;
    v13 = *&v15.c;
    v3 = *&v15.tx;
LABEL_7:
    v14 = v3;
    [v2 setTransform:&v12];
    goto LABEL_8;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_2;
  v9[3] = &unk_1E70F32F0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 72);
  [UIView _animateWithSwiftUISpringExtraBounce:v9 animations:0.0];

LABEL_8:
  [*(a1 + 32) setCenter:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 32) setBounds:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  if (*(a1 + 129) == 1 && [*(a1 + 48) primaryActionIsDestructive] && *(a1 + 128) == 1 && (Width = CGRectGetWidth(*(a1 + 96)), objc_msgSend(*(a1 + 32), "preferredSize"), Width > v5))
  {
    if (*(*(a1 + 48) + 416) == 8)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) setState:v6];
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) _animations];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) _completions];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * i) + 16))();
      }

      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6[52] == 2)
  {
    v7 = 0.0;
    v8 = 1;
  }

  else
  {
    v9 = [v6 superview];
    [v9 frame];
    v7 = v10 - *(a1 + 40);

    v6 = *(a1 + 32);
    v8 = 3;
    if (v6[52] == 2)
    {
      v8 = 1;
    }
  }

  v11 = *&v6[v8 + 68];
  v12 = v11 + *(a1 + 40);
  [v6 _setFrame:0 processSizeChange:{v7, v3, v12, v5}];
  v13 = *(a1 + 40);
  if (v13 != 0.0)
  {
    [*(a1 + 32) openThreshold];
    if (v14 < 0.0)
    {
      v14 = -v14;
    }

    if (v13 < v14)
    {
      v13 = v14;
    }

    if (*(*(a1 + 32) + 416) != 2)
    {
      v18.origin.x = v7;
      v18.origin.y = v3;
      v18.size.width = v12;
      v18.size.height = v5;
      v11 = CGRectGetWidth(v18) - v13 - v11;
    }

    v19.origin.x = v7;
    v19.origin.y = v3;
    v19.size.width = v12;
    v19.size.height = v5;
    Height = CGRectGetHeight(v19);
    v16 = [*(a1 + 32) containerView];
    [v16 setFrame:{v11, 0.0, v13, Height}];
  }
}

uint64_t __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_7(uint64_t a1)
{
  if (*(a1 + 48) == 0.0)
  {
    v2 = [*(a1 + 32) containerView];
    [v2 frame];
    v4 = v3;
    v6 = v5;

    v7 = *(a1 + 32);
    v8 = 0.0;
    if (v7[52] != 2)
    {
      v8 = *(a1 + 48);
    }

    v9 = [v7 containerView];
    [v9 setFrame:{v8, v4, 0.0, v6}];
  }

  (*(*(a1 + 40) + 16))();
  v10 = *(a1 + 32);

  return [v10 setAnimationGroupCompletion:0];
}

uint64_t __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __76__UISwipeActionDynamicPullView__moveToOffset_animator_interactive_animated___block_invoke_9(uint64_t a1)
{
  v1 = [*(a1 + 32) animationGroupCompletion];
  [v1 complete];
}

- (void)_performAction:(id)action offset:(double)offset
{
  actionCopy = action;
  primarySwipeAction = [(UISwipeActionDynamicPullView *)self primarySwipeAction];

  if (primarySwipeAction == actionCopy)
  {
    primaryActionIsDestructive = [(UISwipeActionDynamicPullView *)self primaryActionIsDestructive];

    if (primaryActionIsDestructive)
    {
      [(UISwipeActionDynamicPullView *)self setState:2];

      [(UISwipeActionDynamicPullView *)self _moveToOffset:0 animator:0 interactive:0 animated:offset];
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
  v15 = __Block_byref_object_copy__87;
  v16 = __Block_byref_object_dispose__87;
  selfCopy = self;
  buttons = selfCopy->_buttons;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__UISwipeActionDynamicPullView_sourceViewForAction___block_invoke;
  v9[3] = &unk_1E7108910;
  v9[4] = selfCopy;
  v6 = actionCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__UISwipeActionDynamicPullView_sourceViewForAction___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [*(a1[4] + 488) objectAtIndexedSubscript:a3];
  if (v8 == a1[5])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)swipeActionButtonDidTouchUpInside:(id)inside
{
  v4 = [(NSMutableArray *)self->_buttons indexOfObject:inside];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(NSArray *)self->_actions objectAtIndexedSubscript:v4];
  [WeakRetained swipeActionPullView:self tappedAction:v5];
}

- (void)swipeActionWillDisplayMenuForButton:(id)button
{
  v4 = [(NSMutableArray *)self->_buttons indexOfObject:button];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(NSArray *)self->_actions objectAtIndexedSubscript:v5];
    [WeakRetained swipeActionPullView:self tappedAction:v6];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(UISwipeActionDynamicPullView *)self cellEdge]== 8)
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