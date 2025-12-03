@interface UITableViewCellFocusableEditControl
- (id)_currentImage;
- (void)_updateFloatingViewForCurrentTraits;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UITableViewCellFocusableEditControl

- (void)_updateFloatingViewForCurrentTraits
{
  WeakRetained = objc_loadWeakRetained(&self->super._cell);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2 || userInterfaceStyle == 1000)
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v4 traitCollectionDidChange:change];
  [(UITableViewCellEditControl *)self _updateImageView];
  [(UITableViewCellFocusableEditControl *)self _updateFloatingViewForCurrentTraits];
}

- (id)_currentImage
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  _currentImage = [(UITableViewCellEditControl *)&v4 _currentImage];

  return _currentImage;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setFrame:?];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v4 setHighlighted:highlighted];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setControlState:[(UIControl *)self state] animated:+[UIView _isInAnimationBlock]];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableEditControl;
  [(UITableViewCellEditControl *)&v4 setSelected:selected];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setControlState:[(UIControl *)self state] animated:+[UIView _isInAnimationBlock]];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = UITableViewCellFocusableEditControl;
  [(UIView *)&v5 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  [(_UIFloatingContentView *)self->_focusedFloatingContentView setControlState:[(UIControl *)self state] animated:1];
  [(UITableViewCellEditControl *)self _updateImageView];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UITableViewCellFocusableEditControl *)self _shouldHandlePressEvent:eventCopy])
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
    [(UIResponder *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UITableViewCellFocusableEditControl *)self _shouldHandlePressEvent:eventCopy])
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
    [(UIResponder *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(UITableViewCellFocusableEditControl *)self _shouldHandlePressEvent:eventCopy])
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
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

@end