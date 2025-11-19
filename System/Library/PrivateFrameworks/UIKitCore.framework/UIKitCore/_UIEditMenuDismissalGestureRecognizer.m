@interface _UIEditMenuDismissalGestureRecognizer
+ (BOOL)canHandleEventForPassthrough:(id)a3;
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)shouldReceiveEvent:(id)a3;
- (_UIEditMenuDismissalGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (_UIEditMenuDismissalGestureRecognizerDelegate)interactionDelegate;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)_transformChangedWithEvent:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIEditMenuDismissalGestureRecognizer

- (_UIEditMenuDismissalGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIEditMenuDismissalGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    *(&v5->super._gestureFlags + 4) &= ~0x10u;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIEditMenuDismissalGestureRecognizer;
  [(UIGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIEditMenuDismissalGestureRecognizer *)self interactionDelegate];
  if (v8)
  {
    v9 = [(UIGestureRecognizer *)self view];
    [v6 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [(_UIEditMenuDismissalGestureRecognizer *)self interactionDelegate];
    v15 = [v14 dismissalGestureRecognizer:self shouldInteractAtLocation:v7 withEvent:{v11, v13}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() canHandleEventForPassthrough:v4])
  {
    v5 = [(_UIEditMenuDismissalGestureRecognizer *)self interactionDelegate];
    if (v5)
    {
      if ([v4 type] == 10)
      {
        v6 = v4;
        v7 = [(UIGestureRecognizer *)self view];
        [v6 locationInView:v7];
        v9 = v8;
        v11 = v10;

        v12 = [v5 dismissalGestureRecognizer:self shouldInteractAtLocation:v6 withEvent:{v9, v11}];
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIEditMenuDismissalGestureRecognizer;
    v12 = [(UIGestureRecognizer *)&v14 shouldReceiveEvent:v4];
  }

  return v12;
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v5 = a3;
  if ([v5 phase] == 2)
  {
    v4 = 1;
  }

  else if ([v5 phase] == 5)
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateEnded)
    {
      goto LABEL_10;
    }

    v4 = 4;
  }

  else if ([v5 phase] == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(UIGestureRecognizer *)self setState:v4];
LABEL_10:
}

- (void)_transformChangedWithEvent:(id)a3
{
  v4 = [a3 phase] - 1;
  if (v4 <= 3)
  {
    v5 = qword_18A682BA0[v4];

    [(UIGestureRecognizer *)self setState:v5];
  }
}

+ (BOOL)canHandleEventForPassthrough:(id)a3
{
  v3 = a3;
  v4 = ![v3 type] || objc_msgSend(v3, "type") == 10 || objc_msgSend(v3, "type") == 14;

  return v4;
}

- (_UIEditMenuDismissalGestureRecognizerDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end