@interface VUIBaseListViewCell
- (VUIBaseListViewCell)initWithFrame:(CGRect)frame;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)contentView;
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
- (void)setShouldAppearSelected:(BOOL)selected withAnimationCoordinator:(id)coordinator;
- (void)setVisualEffectViewBackgroundEnabled:(BOOL)enabled;
- (void)updateFloatingViewControlStateForPreviouslyFocusedView:(id)view withAnimationCoordinator:(id)coordinator;
@end

@implementation VUIBaseListViewCell

- (VUIBaseListViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VUIBaseListViewCell;
  return [(VUIBaseListViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setVisualEffectViewBackgroundEnabled:(BOOL)enabled
{
  if (self->_visualEffectViewBackgroundEnabled != enabled)
  {
    self->_visualEffectViewBackgroundEnabled = enabled;
    if (enabled)
    {
      traitCollection = [(VUIBaseListViewCell *)self traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        v5 = 4015;
      }

      else
      {
        v5 = 4014;
      }

      v6 = objc_alloc(MEMORY[0x1E69DD298]);
      v7 = [MEMORY[0x1E69DC730] effectWithStyle:v5];
      v8 = [v6 initWithEffect:v7];
      backgroundVisualEffectView = self->_backgroundVisualEffectView;
      self->_backgroundVisualEffectView = v8;

      v10 = self->_backgroundVisualEffectView;
      [(_UIFloatingContentView *)self->_floatingView cornerRadius];
      [(UIVisualEffectView *)v10 _setCornerRadius:?];
      visualEffectContainerView = [(_UIFloatingContentView *)self->_floatingView visualEffectContainerView];
      [visualEffectContainerView addSubview:self->_backgroundVisualEffectView];

      [(VUIBaseListViewCell *)self setNeedsLayout];
    }

    else
    {
      [(UIVisualEffectView *)self->_backgroundVisualEffectView removeFromSuperview];
      v12 = self->_backgroundVisualEffectView;
      self->_backgroundVisualEffectView = 0;
    }
  }
}

- (void)setShouldAppearSelected:(BOOL)selected withAnimationCoordinator:(id)coordinator
{
  if (self->_shouldAppearSelected != selected)
  {
    self->_shouldAppearSelected = selected;
    floatingView = self->_floatingView;
    coordinatorCopy = coordinator;
    [(_UIFloatingContentView *)floatingView setControlState:[(VUIBaseListViewCell *)self _floatingViewControlState] withAnimationCoordinator:coordinatorCopy];
  }
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  if (state == 1)
  {
    objc_storeStrong(&self->_highlightedBackgroundColor, color);
    selectedBackgroundView = [(VUIBaseListViewCell *)self selectedBackgroundView];

    if (!selectedBackgroundView)
    {
      v11 = objc_opt_new();
      [(VUIBaseListViewCell *)self setSelectedBackgroundView:v11];
    }

    selectedBackgroundView2 = [(VUIBaseListViewCell *)self selectedBackgroundView];
  }

  else
  {
    if (state)
    {
      goto LABEL_10;
    }

    objc_storeStrong(&self->_backgroundColor, color);
    backgroundView = [(VUIBaseListViewCell *)self backgroundView];

    if (!backgroundView)
    {
      v8 = objc_opt_new();
      [(VUIBaseListViewCell *)self setBackgroundView:v8];
    }

    selectedBackgroundView2 = [(VUIBaseListViewCell *)self backgroundView];
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
    v6.super_class = VUIBaseListViewCell;
    v4 = [(VUIBaseListViewCell *)&v6 _preferredConfigurationForFocusAnimation:animation inContext:context];
  }

  return v4;
}

- (void)updateFloatingViewControlStateForPreviouslyFocusedView:(id)view withAnimationCoordinator:(id)coordinator
{
  floatingView = self->_floatingView;
  coordinatorCopy = coordinator;
  [(_UIFloatingContentView *)floatingView setControlState:[(VUIBaseListViewCell *)self _floatingViewControlState] withAnimationCoordinator:coordinatorCopy];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  coordinatorCopy = coordinator;
  isFocused = [(VUIBaseListViewCell *)self isFocused];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentView = [(VUIBaseListViewCell *)self contentView];
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
  [(VUIBaseListViewCell *)self updateFloatingViewControlStateForPreviouslyFocusedView:previouslyFocusedView withAnimationCoordinator:coordinatorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VUIBaseListViewCell;
  [(VUIBaseListViewCell *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentView = [(VUIBaseListViewCell *)self contentView];
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
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VUIBaseListViewCell;
  [(VUIBaseListViewCell *)&v17 setSelected:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  contentView = [(VUIBaseListViewCell *)self contentView];
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
  allObjects = [beganCopy allObjects];
  firstObject = [allObjects firstObject];
  type = [firstObject type];

  if ([beganCopy count] == 1 && (type & 0xFFFFFFFFFFFFFFFDLL) == 4 && -[VUIBaseListViewCell isFocused](self, "isFocused"))
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(VUIBaseListViewCell *)self _floatingViewControlState]| 1 animated:1];
  }

  v11.receiver = self;
  v11.super_class = VUIBaseListViewCell;
  [(VUIBaseListViewCell *)&v11 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = VUIBaseListViewCell;
  cancelledCopy = cancelled;
  [(VUIBaseListViewCell *)&v11 pressesCancelled:cancelledCopy withEvent:event];
  allObjects = [cancelledCopy allObjects];
  firstObject = [allObjects firstObject];
  type = [firstObject type];

  v10 = [cancelledCopy count];
  if (v10 == 1 && (type & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(VUIBaseListViewCell *)self _floatingViewControlState] animated:1];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = VUIBaseListViewCell;
  endedCopy = ended;
  [(VUIBaseListViewCell *)&v11 pressesEnded:endedCopy withEvent:event];
  allObjects = [endedCopy allObjects];
  firstObject = [allObjects firstObject];
  type = [firstObject type];

  v10 = [endedCopy count];
  if (v10 == 1 && (type & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(VUIBaseListViewCell *)self _floatingViewControlState] animated:1];
  }
}

- (id)contentView
{
  if (self->_floatingView)
  {
    selfCopy = [(_UIFloatingContentView *)self->_floatingView contentView];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VUIBaseListViewCell;
  [(VUIBaseListViewCell *)&v6 layoutSubviews];
  floatingView = self->_floatingView;
  [(VUIBaseListViewCell *)self bounds];
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
  v3.receiver = self;
  v3.super_class = VUIBaseListViewCell;
  [(VUIBaseListViewCell *)&v3 prepareForReuse];
  self->_shouldAppearSelected = 0;
  [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:0];
}

- (unint64_t)_floatingViewControlState
{
  isFocused = [(VUIBaseListViewCell *)self isFocused];
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
  v3 = MEMORY[0x1E69DC888];
  traitCollection = [(VUIBaseListViewCell *)self traitCollection];
  v9 = [v3 colorWithWhite:0.0 alpha:{dbl_1E42973E0[objc_msgSend(traitCollection, "userInterfaceStyle") == 2]}];

  [(_UIFloatingContentView *)self->_floatingView setBackgroundColor:v9 forState:4];
  traitCollection2 = [(VUIBaseListViewCell *)self traitCollection];
  if ([traitCollection2 userInterfaceStyle] == 2)
  {
    v6 = 4015;
  }

  else
  {
    v6 = 4014;
  }

  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  v8 = [MEMORY[0x1E69DC730] effectWithStyle:v6];
  [(UIVisualEffectView *)backgroundVisualEffectView setEffect:v8];
}

@end