@interface UITableViewCellFocusableReorderControl
- (BOOL)_shouldHandlePressEvent:(id)event;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (UITableViewCellFocusableReorderControl)initWithTableViewCell:(id)cell;
- (void)_arrowButton:(int64_t)button;
- (void)_beginIndirectTracking;
- (void)_downArrowButton:(id)button;
- (void)_endIndirectTracking;
- (void)_panRecognizer:(id)recognizer;
- (void)_upArrowButton:(id)button;
- (void)_updateFloatingViewForCurrentTraits;
- (void)_updateFocusedFloatingContentView:(BOOL)view;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state;
- (void)floatingContentView:(id)view isTransitioningFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UITableViewCellFocusableReorderControl

- (UITableViewCellFocusableReorderControl)initWithTableViewCell:(id)cell
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableReorderControl;
  return [(UITableViewCellReorderControl *)&v4 initWithTableViewCell:cell];
}

- (void)_updateFloatingViewForCurrentTraits
{
  WeakRetained = objc_loadWeakRetained(&self->super._cell);
  traitCollection = [WeakRetained traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (self->_cellHasReorderingAppearance)
  {
    [(_UIFloatingContentView *)self->_floatingContentView setBackgroundColor:0 forState:0];
    floatingContentView = self->_floatingContentView;

    [(_UIFloatingContentView *)floatingContentView setBackgroundColor:0 forState:4];
  }

  else
  {
    v7 = userInterfaceStyle == 1000 || userInterfaceStyle == 2;
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = UITableViewCellFocusableReorderControl;
  [(UIView *)&v4 traitCollectionDidChange:change];
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

- (void)floatingContentView:(id)view isTransitioningFromState:(unint64_t)state toState:(unint64_t)toState
{
  viewCopy = view;
  if (toState == 4)
  {
    v11 = viewCopy;
    WeakRetained = objc_loadWeakRetained(&self->super._cell);
    [WeakRetained _transitionToReorderingAppearance:1];

    self->_cellHasReorderingAppearance = 1;
    [(UITableViewCellFocusableReorderControl *)self _updateFloatingViewForCurrentTraits];
  }

  else
  {
    if (state != 4)
    {
      goto LABEL_6;
    }

    v11 = viewCopy;
    v10 = objc_loadWeakRetained(&self->super._cell);
    [v10 _transitionToReorderingAppearance:0];
  }

  viewCopy = v11;
LABEL_6:
}

- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state
{
  if (state != 4 && self->_cellHasReorderingAppearance)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._cell);
    [WeakRetained _finishTransitioningToReorderingAppearance:0];

    self->_cellHasReorderingAppearance = 0;

    [(UITableViewCellFocusableReorderControl *)self _updateFloatingViewForCurrentTraits];
  }
}

- (void)_updateFocusedFloatingContentView:(BOOL)view
{
  viewCopy = view;
  state = [(UIControl *)self state];
  if ([(UIControl *)self isTracking])
  {
    v6 = 4;
  }

  else
  {
    v6 = state;
  }

  floatingContentView = self->_floatingContentView;

  [(_UIFloatingContentView *)floatingContentView setControlState:v6 animated:viewCopy];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = UITableViewCellFocusableReorderControl;
  contextCopy = context;
  [(UIView *)&v8 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];

  if ([(UIControl *)self isTracking]&& nextFocusedView != self)
  {
    [(UIControl *)self setHighlighted:0];
    [(UITableViewCellFocusableReorderControl *)self _endIndirectTracking];
  }

  [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
  [(UITableViewCellReorderControl *)self _updateImageView];
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  if ([(UIControl *)self isTracking])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITableViewCellFocusableReorderControl;
    v5 = [(UIView *)&v7 shouldUpdateFocusInContext:contextCopy];
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

- (BOOL)_shouldHandlePressEvent:(id)event
{
  _lastPreparedPress = [event _lastPreparedPress];
  v5 = [_lastPreparedPress type] == 4 && -[UIControl isEnabled](self, "isEnabled") && -[UIView isFocused](self, "isFocused");

  return v5;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UITableViewCellFocusableReorderControl *)self _shouldHandlePressEvent:eventCopy])
  {
    [(UIControl *)self setHighlighted:1];
    [(UITableViewCellFocusableReorderControl *)self _updateFocusedFloatingContentView:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCellFocusableReorderControl;
    [(UIResponder *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UITableViewCellFocusableReorderControl *)self _shouldHandlePressEvent:eventCopy])
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
    [(UIResponder *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(UITableViewCellFocusableReorderControl *)self _shouldHandlePressEvent:eventCopy])
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
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)_panRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(UIControl *)self isTracking])
  {
    state = [recognizerCopy state];
    if (state == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._cell);
      _tableView = [WeakRetained _tableView];
      _scrollView = [_tableView _scrollView];
      [_scrollView frame];
      Height = CGRectGetHeight(v18);
      _screen = [(UIView *)self _screen];
      [_screen bounds];
      v12 = Height / CGRectGetHeight(v19);

      v13 = objc_loadWeakRetained(&self->super._cell);
      [recognizerCopy locationInView:self];
      v15 = round(v12 * (v14 - self->super._downPoint.y));
      *&v15 = v15;
      [v13 _grabberDragged:self yDelta:v15];
    }

    else if (state == 1)
    {
      [recognizerCopy locationInView:self];
      self->super._downPoint.x = v5;
      self->super._downPoint.y = v6;
    }
  }
}

- (void)_arrowButton:(int64_t)button
{
  if ([(UIControl *)self isTracking])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._cell);
    [WeakRetained frame];
    Height = CGRectGetHeight(v13);
    v7 = objc_loadWeakRetained(&self->super._cell);
    _tableView = [v7 _tableView];
    [_tableView _rowSpacing];
    v10 = Height + v9;

    v12[1] = 3221225472;
    v11 = -v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[2] = __55__UITableViewCellFocusableReorderControl__arrowButton___block_invoke;
    v12[3] = &unk_1E70F32F0;
    if (button)
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

- (void)_upArrowButton:(id)button
{
  if ([button state] == 3)
  {

    [(UITableViewCellFocusableReorderControl *)self _arrowButton:0];
  }
}

- (void)_downArrowButton:(id)button
{
  if ([button state] == 3)
  {

    [(UITableViewCellFocusableReorderControl *)self _arrowButton:1];
  }
}

@end