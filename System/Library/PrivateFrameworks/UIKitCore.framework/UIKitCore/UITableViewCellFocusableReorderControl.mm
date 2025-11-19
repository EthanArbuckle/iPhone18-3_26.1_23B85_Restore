@interface UITableViewCellFocusableReorderControl
- (BOOL)_shouldHandlePressEvent:(id)a3;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (UITableViewCellFocusableReorderControl)initWithTableViewCell:(id)a3;
- (void)_arrowButton:(int64_t)a3;
- (void)_beginIndirectTracking;
- (void)_downArrowButton:(id)a3;
- (void)_endIndirectTracking;
- (void)_panRecognizer:(id)a3;
- (void)_upArrowButton:(id)a3;
- (void)_updateFloatingViewForCurrentTraits;
- (void)_updateFocusedFloatingContentView:(BOOL)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)floatingContentView:(id)a3 didFinishTransitioningToState:(unint64_t)a4;
- (void)floatingContentView:(id)a3 isTransitioningFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UITableViewCellFocusableReorderControl

- (UITableViewCellFocusableReorderControl)initWithTableViewCell:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableReorderControl;
  return [(UITableViewCellReorderControl *)&v4 initWithTableViewCell:a3];
}

- (void)_updateFloatingViewForCurrentTraits
{
  WeakRetained = objc_loadWeakRetained(&self->super._cell);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (self->_cellHasReorderingAppearance)
  {
    [(_UIFloatingContentView *)self->_floatingContentView setBackgroundColor:0 forState:0];
    floatingContentView = self->_floatingContentView;

    [(_UIFloatingContentView *)floatingContentView setBackgroundColor:0 forState:4];
  }

  else
  {
    v7 = v5 == 1000 || v5 == 2;
    v9 = self->_floatingContentView;
    if (v7)
    {
      v8 = [UIColor colorWithWhite:1.0 alpha:0.2];
      [(_UIFloatingContentView *)v9 setBackgroundColor:v8 forState:0];

      v11 = self->_floatingContentView;
      v12 = 1.0;
      v13 = 0.2;
    }

    else
    {
      v10 = [UIColor colorWithWhite:1.0 alpha:0.5];
      [(_UIFloatingContentView *)v9 setBackgroundColor:v10 forState:0];

      v11 = self->_floatingContentView;
      v12 = 1.0;
      v13 = 0.5;
    }

    v14 = [UIColor colorWithWhite:v12 alpha:v13];
    [(_UIFloatingContentView *)v11 setBackgroundColor:v14 forState:4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableReorderControl;
  [(UIView *)&v4 traitCollectionDidChange:a3];
  [(UITableViewCellReorderControl *)self _updateImageView];
  [(UITableViewCellFocusableReorderControl *)self _updateFloatingViewForCurrentTraits];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UITableViewCellFocusableReorderControl;
  [(UITableViewCellReorderControl *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(_UIFloatingContentView *)self->_floatingContentView setFrame:?];
}

- (void)floatingContentView:(id)a3 isTransitioningFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v8 = a3;
  if (a5 == 4)
  {
    v11 = v8;
    WeakRetained = objc_loadWeakRetained(&self->super._cell);
    [WeakRetained _transitionToReorderingAppearance:1];

    self->_cellHasReorderingAppearance = 1;
    [(UITableViewCellFocusableReorderControl *)self _updateFloatingViewForCurrentTraits];
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_6;
    }

    v11 = v8;
    v10 = objc_loadWeakRetained(&self->super._cell);
    [v10 _transitionToReorderingAppearance:0];
  }

  v8 = v11;
LABEL_6:
}

- (void)floatingContentView:(id)a3 didFinishTransitioningToState:(unint64_t)a4
{
  if (a4 != 4 && self->_cellHasReorderingAppearance)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._cell);
    [WeakRetained _finishTransitioningToReorderingAppearance:0];

    self->_cellHasReorderingAppearance = 0;

    [(UITableViewCellFocusableReorderControl *)self _updateFloatingViewForCurrentTraits];
  }
}

- (void)_updateFocusedFloatingContentView:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIControl *)self state];
  if ([(UIControl *)self isTracking])
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  floatingContentView = self->_floatingContentView;

  [(_UIFloatingContentView *)floatingContentView setControlState:v6 animated:v3];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITableViewCellFocusableReorderControl;
  v6 = a3;
  [(UIView *)&v8 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];

  if ([(UIControl *)self isTracking]&& v7 != self)
  {
    [(UIControl *)self setHighlighted:0];
    [(UITableViewCellFocusableReorderControl *)self _endIndirectTracking];
  }

  [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
  [(UITableViewCellReorderControl *)self _updateImageView];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  if ([(UIControl *)self isTracking])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITableViewCellFocusableReorderControl;
    v5 = [(UIView *)&v7 shouldUpdateFocusInContext:v4];
  }

  return v5;
}

- (void)_beginIndirectTracking
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__panRecognizer_];
  panRecognizer = self->_panRecognizer;
  self->_panRecognizer = v3;

  [(UIGestureRecognizer *)self->_panRecognizer setCancelsTouchesInView:0];
  [(UIView *)self addGestureRecognizer:self->_panRecognizer];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__upArrowButton_];
  upArrowButtonRecognizer = self->_upArrowButtonRecognizer;
  self->_upArrowButtonRecognizer = v5;

  [(UITapGestureRecognizer *)self->_upArrowButtonRecognizer setAllowedPressTypes:&unk_1EFE2D8B8];
  [(UIView *)self addGestureRecognizer:self->_upArrowButtonRecognizer];
  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__downArrowButton_];
  downArrowButtonRecognizer = self->_downArrowButtonRecognizer;
  self->_downArrowButtonRecognizer = v7;

  [(UITapGestureRecognizer *)self->_downArrowButtonRecognizer setAllowedPressTypes:&unk_1EFE2D8D0];
  [(UIView *)self addGestureRecognizer:self->_downArrowButtonRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->super._cell);
  [WeakRetained _grabberBeganReorder:self touch:0];

  [(UITableViewCellReorderControl *)self setTracking:1];

  [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
}

- (void)_endIndirectTracking
{
  [(UIView *)self removeGestureRecognizer:self->_panRecognizer];
  panRecognizer = self->_panRecognizer;
  self->_panRecognizer = 0;

  [(UIView *)self removeGestureRecognizer:self->_upArrowButtonRecognizer];
  upArrowButtonRecognizer = self->_upArrowButtonRecognizer;
  self->_upArrowButtonRecognizer = 0;

  [(UIView *)self removeGestureRecognizer:self->_downArrowButtonRecognizer];
  downArrowButtonRecognizer = self->_downArrowButtonRecognizer;
  self->_downArrowButtonRecognizer = 0;

  WeakRetained = objc_loadWeakRetained(&self->super._cell);
  [WeakRetained _grabberReleased:self];

  [(UITableViewCellReorderControl *)self setTracking:0];

  [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
}

- (BOOL)_shouldHandlePressEvent:(id)a3
{
  v4 = [a3 _lastPreparedPress];
  v5 = [v4 type] == 4 && -[UIControl isEnabled](self, "isEnabled") && -[UIView isFocused](self, "isFocused");

  return v5;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITableViewCellFocusableReorderControl *)self _shouldHandlePressEvent:v7])
  {
    [(UIControl *)self setHighlighted:1];
    [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableReorderControl;
    [(UIResponder *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITableViewCellFocusableReorderControl *)self _shouldHandlePressEvent:v7])
  {
    [(UIControl *)self setHighlighted:0];
    [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
    if ([(UIControl *)self isTracking])
    {
      [(UITableViewCellFocusableReorderControl *)self _endIndirectTracking];
    }

    else
    {
      [(UITableViewCellFocusableReorderControl *)self _beginIndirectTracking];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableReorderControl;
    [(UIResponder *)&v8 pressesEnded:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITableViewCellFocusableReorderControl *)self _shouldHandlePressEvent:v7])
  {
    [(UIControl *)self setHighlighted:0];
    [(_UIFloatingContentView *)self->_floatingContentView setControlState:[(UIControl *)self state] animated:1];
    if ([(UIControl *)self isTracking])
    {
      [(UITableViewCellFocusableReorderControl *)self _endIndirectTracking];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableReorderControl;
    [(UIResponder *)&v8 pressesCancelled:v6 withEvent:v7];
  }
}

- (void)_panRecognizer:(id)a3
{
  v16 = a3;
  if ([(UIControl *)self isTracking])
  {
    v4 = [v16 state];
    if (v4 == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._cell);
      v8 = [WeakRetained _tableView];
      v9 = [v8 _scrollView];
      [v9 frame];
      Height = CGRectGetHeight(v18);
      v11 = [(UIView *)self _screen];
      [v11 bounds];
      v12 = Height / CGRectGetHeight(v19);

      v13 = objc_loadWeakRetained(&self->super._cell);
      [v16 locationInView:self];
      v15 = round(v12 * (v14 - self->super._downPoint.y));
      *&v15 = v15;
      [v13 _grabberDragged:self yDelta:v15];
    }

    else if (v4 == 1)
    {
      [v16 locationInView:self];
      self->super._downPoint.x = v5;
      self->super._downPoint.y = v6;
    }
  }
}

- (void)_arrowButton:(int64_t)a3
{
  if ([(UIControl *)self isTracking])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._cell);
    [WeakRetained frame];
    Height = CGRectGetHeight(v13);
    v7 = objc_loadWeakRetained(&self->super._cell);
    v8 = [v7 _tableView];
    [v8 _rowSpacing];
    v10 = Height + v9;

    v12[1] = 3221225472;
    v11 = -v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[2] = __55__UITableViewCellFocusableReorderControl__arrowButton___block_invoke;
    v12[3] = &unk_1E70F32F0;
    if (a3)
    {
      v11 = v10;
    }

    v12[4] = self;
    *&v12[5] = v11;
    [UIView animateWithDuration:v12 animations:0.2];
  }
}

void __55__UITableViewCellFocusableReorderControl__arrowButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 456));
  v2 = *(a1 + 40);
  *&v2 = v2;
  [WeakRetained _grabberDragged:*(a1 + 32) yDelta:v2];
}

- (void)_upArrowButton:(id)a3
{
  if ([a3 state] == 3)
  {

    [(UITableViewCellFocusableReorderControl *)self _arrowButton:0];
  }
}

- (void)_downArrowButton:(id)a3
{
  if ([a3 state] == 3)
  {

    [(UITableViewCellFocusableReorderControl *)self _arrowButton:1];
  }
}

@end