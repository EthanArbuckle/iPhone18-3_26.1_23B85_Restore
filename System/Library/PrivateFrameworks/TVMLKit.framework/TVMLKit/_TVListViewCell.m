@interface _TVListViewCell
- (_TVListViewCell)initWithFrame:(CGRect)a3;
- (_TVListViewCellDelegate)delegate;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (unint64_t)_floatingViewControlState;
- (void)_updateSelectedBackgroundColor;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldAppearSelected:(BOOL)a3;
- (void)setVisualEffectViewBackgroundEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFloatingViewControlStateForPreviouslyFocusedView:(id)a3;
@end

@implementation _TVListViewCell

- (_TVListViewCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _TVListViewCell;
  return [(_TVListViewCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setVisualEffectViewBackgroundEnabled:(BOOL)a3
{
  if (self->_visualEffectViewBackgroundEnabled != a3)
  {
    self->_visualEffectViewBackgroundEnabled = a3;
    if (a3)
    {
      v4 = [(_TVListViewCell *)self traitCollection];
      if ([v4 userInterfaceStyle] == 2)
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
      v11 = [(_UIFloatingContentView *)self->_floatingView visualEffectContainerView];
      [v11 addSubview:self->_backgroundVisualEffectView];

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

- (void)setShouldAppearSelected:(BOOL)a3
{
  if (self->_shouldAppearSelected != a3)
  {
    self->_shouldAppearSelected = a3;
    floatingView = self->_floatingView;
    v5 = [(_TVListViewCell *)self _floatingViewControlState];

    [(_UIFloatingContentView *)floatingView setControlState:v5 withAnimationCoordinator:0];
  }
}

- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4
{
  v13 = a3;
  if (a4 == 1)
  {
    objc_storeStrong(&self->_highlightedBackgroundColor, a3);
    v10 = [(_TVListViewCell *)self selectedBackgroundView];

    if (!v10)
    {
      v11 = objc_opt_new();
      [(_TVListViewCell *)self setSelectedBackgroundView:v11];
    }

    v9 = [(_TVListViewCell *)self selectedBackgroundView];
  }

  else
  {
    if (a4)
    {
      goto LABEL_10;
    }

    objc_storeStrong(&self->_backgroundColor, a3);
    v7 = [(_TVListViewCell *)self backgroundView];

    if (!v7)
    {
      v8 = objc_opt_new();
      [(_TVListViewCell *)self setBackgroundView:v8];
    }

    v9 = [(_TVListViewCell *)self backgroundView];
  }

  v12 = v9;
  [v9 setBackgroundColor:v13];

LABEL_10:
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  if (self->_floatingView)
  {
    v4 = [(_UIFloatingContentView *)self->_floatingView _preferredConfigurationForFocusAnimation:a3 inContext:a4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _TVListViewCell;
    v4 = [(_TVListViewCell *)&v6 _preferredConfigurationForFocusAnimation:a3 inContext:a4];
  }

  return v4;
}

- (void)updateFloatingViewControlStateForPreviouslyFocusedView:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    self->_shouldAppearSelected = [v5 listCell:self shouldAppearSelectedForPreviouslyFocusedView:v6];
  }

  [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState] withAnimationCoordinator:0];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_TVListViewCell *)self isFocused];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(_TVListViewCell *)self contentView];
  v10 = [v9 subviews];

  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) setSelected:v8 animated:1 withAnimationCoordinator:v7];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = [v6 previouslyFocusedView];
  [(_TVListViewCell *)self updateFloatingViewControlStateForPreviouslyFocusedView:v15];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVListViewCell;
  [(UIView *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(_TVListViewCell *)self contentView];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setHighlighted:v3];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v17 setSelected:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(_TVListViewCell *)self contentView];
  v8 = [v7 subviews];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setSelected:v5 animated:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [v8 type];

  if ([v6 count] == 1 && (v9 & 0xFFFFFFFFFFFFFFFDLL) == 4 && -[_TVListViewCell isFocused](self, "isFocused"))
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState]| 1 animated:1];
  }

  v10.receiver = self;
  v10.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v10 pressesBegan:v6 withEvent:v7];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _TVListViewCell;
  v6 = a3;
  [(_TVListViewCell *)&v10 pressesCancelled:v6 withEvent:a4];
  v7 = [v6 anyObject];
  v8 = [v7 type];

  v9 = [v6 count];
  if (v9 == 1 && (v8 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState] animated:1];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _TVListViewCell;
  v6 = a3;
  [(_TVListViewCell *)&v10 pressesEnded:v6 withEvent:a4];
  v7 = [v6 anyObject];
  v8 = [v7 type];

  v9 = [v6 count];
  if (v9 == 1 && (v8 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:[(_TVListViewCell *)self _floatingViewControlState] animated:1];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(_TVListViewCell *)self traitCollection];
  if ([v5 userInterfaceStyle])
  {
    v6 = [v4 userInterfaceStyle];
    v7 = [(_TVListViewCell *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v6 != v8)
    {
      [(_TVListViewCell *)self _updateSelectedBackgroundColor];
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = _TVListViewCell;
  [(_TVListViewCell *)&v9 traitCollectionDidChange:v4];
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
  v3 = [(_TVListViewCell *)self contentView];
  [TVMLUtilities disassociateIKViewElementsRecursivelyFromView:v3];

  self->_shouldAppearSelected = 0;
  [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:0];
}

- (unint64_t)_floatingViewControlState
{
  v3 = [(_TVListViewCell *)self isFocused];
  v4 = 8;
  if (!v3)
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
  v4 = [(_TVListViewCell *)self traitCollection];
  v9 = [v3 colorWithWhite:0.0 alpha:{dbl_26CE87D70[objc_msgSend(v4, "userInterfaceStyle") == 2]}];

  [(_UIFloatingContentView *)self->_floatingView setBackgroundColor:v9 forState:4];
  v5 = [(_TVListViewCell *)self traitCollection];
  if ([v5 userInterfaceStyle] == 2)
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