@interface _UIBarTapGestureRecognizer
- (_UIBarTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (id)description;
- (int64_t)_categoryForTapLocation:(CGPoint)a3;
- (void)_setDelegate:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIBarTapGestureRecognizer

- (_UIBarTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIBarTapGestureRecognizer;
  v4 = [(UITapGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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

- (void)_setDelegate:(id)a3
{
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIBarCommon.m" lineNumber:755 description:{@"delegate doesn't implement required methods (%@)", v5}];
  }

  v7.receiver = self;
  v7.super_class = _UIBarTapGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setDelegate:v5];
}

- (int64_t)_categoryForTapLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIGestureRecognizer *)self delegate];
  v7 = [v6 _existingNavigationBar];
  v8 = [v6 _existingToolbarWithItems];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (![v6 isNavigationBarHidden])
  {
    v11 = [(UIGestureRecognizer *)self view];
    [v7 convertPoint:v11 fromView:{x, y}];
    v13 = v12;
    v15 = v14;

    if ([v7 pointInside:0 withEvent:{v13, v15}])
    {
      v10 = 2;
      goto LABEL_14;
    }

LABEL_7:
    if (v8)
    {
      v16 = [v6 isToolbarHidden];
      v17 = [(UIGestureRecognizer *)self view];
      v18 = v17;
      if (v16)
      {
        [v17 bounds];
        v20 = v19;
        [v8 frame];
        v22 = v20 - v21;

        if (y >= v22)
        {
          v10 = 5;
          goto LABEL_14;
        }
      }

      else
      {
        [v8 convertPoint:v17 fromView:{x, y}];
        v24 = v23;
        v26 = v25;

        if ([v8 pointInside:0 withEvent:{v24, v26}])
        {
          v10 = 4;
          goto LABEL_14;
        }
      }
    }

    v10 = 1;
    goto LABEL_14;
  }

  [v7 _heightIncludingBackground];
  if (y > v9)
  {
    goto LABEL_7;
  }

  v10 = 3;
LABEL_14:

  return v10;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_tapCategory = 0;
  v7.receiver = self;
  v7.super_class = _UIBarTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v7 touchesBegan:a3 withEvent:a4];
  v5 = [(UIGestureRecognizer *)self view];
  [(UITapGestureRecognizer *)self locationInView:v5];
  v6 = [(_UIBarTapGestureRecognizer *)self _categoryForTapLocation:?];

  if (self->_failWhenTappingInBars && (v6 == 4 || v6 == 2))
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = _UIBarTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v6 touchesEnded:a3 withEvent:a4];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateEnded)
  {
    v5 = [(UIGestureRecognizer *)self view];
    [(UITapGestureRecognizer *)self locationInView:v5];
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