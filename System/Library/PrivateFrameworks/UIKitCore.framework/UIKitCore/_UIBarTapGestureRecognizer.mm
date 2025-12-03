@interface _UIBarTapGestureRecognizer
- (_UIBarTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (id)description;
- (int64_t)_categoryForTapLocation:(CGPoint)location;
- (void)_setDelegate:(id)delegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIBarTapGestureRecognizer

- (_UIBarTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIBarTapGestureRecognizer;
  v4 = [(UITapGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UITapGestureRecognizer *)v4 setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v5 setNumberOfTouchesRequired:1];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    v5->_failWhenTappingInBars = 1;
  }

  return v5;
}

- (void)_setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarCommon.m" lineNumber:755 description:{@"delegate doesn't implement required methods (%@)", delegateCopy}];
  }

  v7.receiver = self;
  v7.super_class = _UIBarTapGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setDelegate:delegateCopy];
}

- (int64_t)_categoryForTapLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  delegate = [(UIGestureRecognizer *)self delegate];
  _existingNavigationBar = [delegate _existingNavigationBar];
  _existingToolbarWithItems = [delegate _existingToolbarWithItems];
  if (!_existingNavigationBar)
  {
    goto LABEL_7;
  }

  if (![delegate isNavigationBarHidden])
  {
    view = [(UIGestureRecognizer *)self view];
    [_existingNavigationBar convertPoint:view fromView:{x, y}];
    v13 = v12;
    v15 = v14;

    if ([_existingNavigationBar pointInside:0 withEvent:{v13, v15}])
    {
      v10 = 2;
      goto LABEL_14;
    }

LABEL_7:
    if (_existingToolbarWithItems)
    {
      isToolbarHidden = [delegate isToolbarHidden];
      view2 = [(UIGestureRecognizer *)self view];
      v18 = view2;
      if (isToolbarHidden)
      {
        [view2 bounds];
        v20 = v19;
        [_existingToolbarWithItems frame];
        v22 = v20 - v21;

        if (y >= v22)
        {
          v10 = 5;
          goto LABEL_14;
        }
      }

      else
      {
        [_existingToolbarWithItems convertPoint:view2 fromView:{x, y}];
        v24 = v23;
        v26 = v25;

        if ([_existingToolbarWithItems pointInside:0 withEvent:{v24, v26}])
        {
          v10 = 4;
          goto LABEL_14;
        }
      }
    }

    v10 = 1;
    goto LABEL_14;
  }

  [_existingNavigationBar _heightIncludingBackground];
  if (y > v9)
  {
    goto LABEL_7;
  }

  v10 = 3;
LABEL_14:

  return v10;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_tapCategory = 0;
  v7.receiver = self;
  v7.super_class = _UIBarTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v7 touchesBegan:began withEvent:event];
  view = [(UIGestureRecognizer *)self view];
  [(UITapGestureRecognizer *)self locationInView:view];
  v6 = [(_UIBarTapGestureRecognizer *)self _categoryForTapLocation:?];

  if (self->_failWhenTappingInBars && (v6 == 4 || v6 == 2))
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = _UIBarTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v6 touchesEnded:ended withEvent:event];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateEnded)
  {
    view = [(UIGestureRecognizer *)self view];
    [(UITapGestureRecognizer *)self locationInView:view];
    self->_tapCategory = [(_UIBarTapGestureRecognizer *)self _categoryForTapLocation:?];
  }

  else
  {
    self->_tapCategory = 0;
  }
}

- (id)description
{
  tapCategory = self->_tapCategory;
  if (tapCategory > 5)
  {
    v3 = &stru_1EFB14550;
  }

  else
  {
    v3 = off_1E70F7910[tapCategory];
  }

  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIBarTapGestureRecognizer;
  v5 = [(UIGestureRecognizer *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ tapCategory=%@", v5, v3];

  return v6;
}

@end