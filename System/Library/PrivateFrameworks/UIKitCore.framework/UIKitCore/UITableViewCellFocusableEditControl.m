@interface UITableViewCellFocusableEditControl
- (id)_currentImage;
- (void)_updateFloatingViewForCurrentTraits;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UITableViewCellFocusableEditControl

- (void)_updateFloatingViewForCurrentTraits
{
  WeakRetained = objc_loadWeakRetained(&self->super._cell);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2 || v5 == 1000)
  {
    v7 = 0.2;
  }

  else
  {
    v7 = 0.5;
  }

  focusedFloatingContentView = self->_focusedFloatingContentView;
  v9 = [UIColor colorWithWhite:1.0 alpha:v7];
  [(_UIFloatingContentView *)focusedFloatingContentView setBackgroundColor:v9 forState:0];

  v10 = self->_focusedFloatingContentView;
  v11 = [UIColor colorWithWhite:1.0 alpha:v7];
  [(_UIFloatingContentView *)v10 setBackgroundColor:v11 forState:4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v4 traitCollectionDidChange:a3];
  [(UITableViewCellEditControl *)self _updateImageView];
  [(UITableViewCellFocusableEditControl *)self _updateFloatingViewForCurrentTraits];
}

- (id)_currentImage
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  v2 = [(UITableViewCellEditControl *)&v4 _currentImage];

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setFrame:?];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v4 setHighlighted:a3];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setControlState:[(UIControl *)self state] animated:+[UIView _isInAnimationBlock]];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v4 setSelected:a3];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setControlState:[(UIControl *)self state] animated:+[UIView _isInAnimationBlock]];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = UITableViewCellFocusableEditControl;
  [(UIView *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setControlState:[(UIControl *)self state] animated:1];
  [(UITableViewCellEditControl *)self _updateImageView];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITableViewCellFocusableEditControl *)self _shouldHandlePressEvent:v7])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__UITableViewCellFocusableEditControl_pressesBegan_withEvent___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIView animateWithDuration:v9 animations:0.1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableEditControl;
    [(UIResponder *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITableViewCellFocusableEditControl *)self _shouldHandlePressEvent:v7])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__UITableViewCellFocusableEditControl_pressesEnded_withEvent___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIView animateWithDuration:v9 animations:0.1];
    [(UIControl *)self sendActionsForControlEvents:0x2000];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableEditControl;
    [(UIResponder *)&v8 pressesEnded:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITableViewCellFocusableEditControl *)self _shouldHandlePressEvent:v7])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__UITableViewCellFocusableEditControl_pressesCancelled_withEvent___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIView animateWithDuration:v9 animations:0.1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableEditControl;
    [(UIResponder *)&v8 pressesCancelled:v6 withEvent:v7];
  }
}

@end