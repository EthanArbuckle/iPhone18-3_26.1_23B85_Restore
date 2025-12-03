@interface _TVListViewCell
- (_TVListViewCell)initWithFrame:(CGRect)frame;
- (_TVListViewCellDelegate)delegate;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (unint64_t)_floatingViewControlState;
- (void)_updateSelectedBackgroundColor;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShouldAppearSelected:(BOOL)selected;
- (void)setVisualEffectViewBackgroundEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFloatingViewControlStateForPreviouslyFocusedView:(id)view;
@end

@implementation _TVListViewCell

- (_TVListViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _TVListViewCell;
  return [(_TVListViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setVisualEffectViewBackgroundEnabled:(BOOL)enabled
{
  if (self->_visualEffectViewBackgroundEnabled != enabled)
  {
    self->_visualEffectViewBackgroundEnabled = enabled;
    if (enabled)
    {
      traitCollection = [(_TVListViewCell *)self traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        v5 = 4015;
      }

      else
      {
        v5 = 4014;
      }

      v6 = objc_alloc(MEMORY[0x277D75D68]);
      v7 = [MEMORY[0x277D75210] effectWithStyle:v5];
      v8 = [v6 initWithEffect:v7];
      backgroundVisualEffectView = self->_backgroundVisualEffectView;
      self->_backgroundVisualEffectView = v8;

      v10 = self->_backgroundVisualEffectView;
      [(_UIFloatingContentView *)self->_floatingView cornerRadius];
      [(UIVisualEffectView *)v10 _setCornerRadius:?];
      visualEffectContainerView = [(_UIFloatingContentView *)self->_floatingView visualEffectContainerView];
      [visualEffectContainerView addSubview:self->_backgroundVisualEffectView];

      [(_TVListViewCell *)self setNeedsLayout];
    }

    else
    {
      [(UIVisualEffectView *)self->_backgroundVisualEffectView removeFromSuperview];
      v12 = self->_backgroundVisualEffectView;
      self->_backgroundVisualEffectView = 0;
    }
  }
}

- (void)setShouldAppearSelected:(BOOL)selected
{
  if (self->_shouldAppearSelected != selected)
  {
    self->_shouldAppearSelected = selected;
    floatingView = self->_floatingView;
    _floatingViewControlState = [(_TVListViewCell *)self _floatingViewControlState];

    [(_UIFloatingContentView *)floatingView setControlState:_floatingViewControlState withAnimationCoordinator:0];
  }
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  if (state == 1)
  {
    objc_storeStrong(&self->_highlightedBackgroundColor, color);
    selectedBackgroundView = [(_TVListViewCell *)self selectedBackgroundView];

    if (!selectedBackgroundView)
    {
      v11 = objc_opt_new();
      [(_TVListViewCell *)self setSelectedBackgroundView:v11];
    }

    selectedBackgroundView2 = [(_TVListViewCell *)self selectedBackgroundView];
  }

  else
  {
    if (state)
    {
      goto LABEL_10;
    }

    objc_storeStrong(&self->_backgroundColor, color);
    backgroundView = [(_TVListViewCell *)self backgroundView];

    if (!backgroundView)
    {
      v8 = objc_opt_new();
      [(_TVListViewCell *)self setBackgroundView:v8];
    }

    selectedBackgroundView2 = [(_TVListViewCell *)self backgroundView];
  }

  v12 = selectedBackgroundView2;
  [selectedBackgroundView2 setBackgroundColor:colorCopy];

LABEL_10:
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  if (self->_floatingView)
  {
    v4 = [(_UIFloatingContentView *)self->_floatingView _preferredConfigurationForFocusAnimation:animation inContext:context];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _TVListViewCell;
    v4 = [(_TVListViewCell *)&v6 _preferredConfigurationForFocusAnimation:animation inContext:context];
  }

  return v4;
}

- (void)updateFloatingViewControlStateForPreviouslyFocusedView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    self->_shouldAppearSelected = [v5 listCell:self shouldAppearSelectedForPreviouslyFocusedView:viewCopy];
  }

  [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState] withAnimationCoordinator:0];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  coordinatorCopy = coordinator;
  isFocused = [(_TVListViewCell *)self isFocused];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentView = [(_TVListViewCell *)self contentView];
  subviews = [contentView subviews];

  v11 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v16 + 1) + 8 * v14++) setSelected:isFocused animated:1 withAnimationCoordinator:coordinatorCopy];
      }

      while (v12 != v14);
      v12 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  previouslyFocusedView = [contextCopy previouslyFocusedView];
  [(_TVListViewCell *)self updateFloatingViewControlStateForPreviouslyFocusedView:previouslyFocusedView];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVListViewCell;
  [(UIView *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentView = [(_TVListViewCell *)self contentView];
  subviews = [contentView subviews];

  v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setHighlighted:highlightedCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v17 setSelected:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  contentView = [(_TVListViewCell *)self contentView];
  subviews = [contentView subviews];

  v9 = [subviews countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v13 + 1) + 8 * v12++) setSelected:selectedCopy animated:animatedCopy];
      }

      while (v10 != v12);
      v10 = [subviews countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  type = [anyObject type];

  if ([beganCopy count] == 1 && (type & 0xFFFFFFFFFFFFFFFDLL) == 4 && -[_TVListViewCell isFocused](self, "isFocused"))
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState]| 1 animated:1];
  }

  v10.receiver = self;
  v10.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v10 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _TVListViewCell;
  cancelledCopy = cancelled;
  [(_TVListViewCell *)&v10 pressesCancelled:cancelledCopy withEvent:event];
  anyObject = [cancelledCopy anyObject];
  type = [anyObject type];

  v9 = [cancelledCopy count];
  if (v9 == 1 && (type & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState] animated:1];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _TVListViewCell;
  endedCopy = ended;
  [(_TVListViewCell *)&v10 pressesEnded:endedCopy withEvent:event];
  anyObject = [endedCopy anyObject];
  type = [anyObject type];

  v9 = [endedCopy count];
  if (v9 == 1 && (type & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState] animated:1];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(_TVListViewCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle])
  {
    userInterfaceStyle = [changeCopy userInterfaceStyle];
    traitCollection2 = [(_TVListViewCell *)self traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
    {
      [(_TVListViewCell *)self _updateSelectedBackgroundColor];
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v9 traitCollectionDidChange:changeCopy];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v6 layoutSubviews];
  floatingView = self->_floatingView;
  [(_TVListViewCell *)self bounds];
  [(_UIFloatingContentView *)floatingView setFrame:?];
  [(_UIFloatingContentView *)self->_floatingView layoutIfNeeded];
  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  if (backgroundVisualEffectView)
  {
    [(_UIFloatingContentView *)self->_floatingView bounds];
    [(UIVisualEffectView *)backgroundVisualEffectView setFrame:?];
    v5 = self->_backgroundVisualEffectView;
    [(_UIFloatingContentView *)self->_floatingView cornerRadius];
    [(UIVisualEffectView *)v5 _setCornerRadius:?];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v4 prepareForReuse];
  contentView = [(_TVListViewCell *)self contentView];
  [TVMLUtilities disassociateIKViewElementsRecursivelyFromView:contentView];

  self->_shouldAppearSelected = 0;
  [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:0];
}

- (unint64_t)_floatingViewControlState
{
  isFocused = [(_TVListViewCell *)self isFocused];
  v4 = 8;
  if (!isFocused)
  {
    v4 = 0;
  }

  if (self->_shouldAppearSelected)
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

- (void)_updateSelectedBackgroundColor
{
  v3 = MEMORY[0x277D75348];
  traitCollection = [(_TVListViewCell *)self traitCollection];
  v9 = [v3 colorWithWhite:0.0 alpha:{dbl_26CE87D70[objc_msgSend(traitCollection, "userInterfaceStyle") == 2]}];

  [(_UIFloatingContentView *)self->_floatingView setBackgroundColor:v9 forState:4];
  traitCollection2 = [(_TVListViewCell *)self traitCollection];
  if ([traitCollection2 userInterfaceStyle] == 2)
  {
    v6 = 4015;
  }

  else
  {
    v6 = 4014;
  }

  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  v8 = [MEMORY[0x277D75210] effectWithStyle:v6];
  [(UIVisualEffectView *)backgroundVisualEffectView setEffect:v8];
}

- (_TVListViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end