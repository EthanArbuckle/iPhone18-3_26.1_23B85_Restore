@interface _PXUITextView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_PXUITextView)initWithFrame:(CGRect)a3;
- (double)_distanceFromContentToGivenPoint:(CGPoint)a3 charIndexAtPoint:(unint64_t *)a4;
- (id)_linkTappedByGesture:(id)a3 charIndexAtPoint:(unint64_t *)a4;
- (id)keyCommands;
- (void)_handleTapGesture:(id)a3;
- (void)setEditable:(BOOL)a3;
@end

@implementation _PXUITextView

- (double)_distanceFromContentToGivenPoint:(CGPoint)a3 charIndexAtPoint:(unint64_t *)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(_PXUITextView *)self characterRangeAtPoint:a3.x, a3.y];
  if (v8)
  {
    [(_PXUITextView *)self firstRectForRange:v8];
    v9 = [(_PXUITextView *)self textContainer];
    [v9 textContainerOrigin];

    UIDistanceBetweenPointAndRect();
    v11 = v10;
    if (a4)
    {
      v12 = [(_PXUITextView *)self closestPositionToPoint:x, y];
      if (v12)
      {
        v13 = [(_PXUITextView *)self beginningOfDocument];
        v14 = [(_PXUITextView *)self offsetFromPosition:v13 toPosition:v12];

        *a4 = v14;
      }
    }
  }

  else
  {
    v11 = 1.79769313e308;
  }

  return v11;
}

- (id)_linkTappedByGesture:(id)a3 charIndexAtPoint:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(_PXUITextView *)self text];
  v8 = [v7 length];

  if (!v8)
  {
    goto LABEL_13;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (![v6 numberOfTouches])
  {
    goto LABEL_6;
  }

  [v6 locationOfTouch:0 inView:self];
  [(_PXUITextView *)self _distanceFromContentToGivenPoint:&v15 charIndexAtPoint:?];
  if (v15 == v8)
  {
    if (v9 < 8.0)
    {
      v10 = [(_PXUITextView *)self textStorage];
      v11 = v10;
      v12 = *MEMORY[0x1E69DB670];
      v13 = v15 - 1;
LABEL_10:
      v8 = [v10 attribute:v12 atIndex:v13 effectiveRange:0];

      goto LABEL_11;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v9 < 28.0)
  {
    v10 = [(_PXUITextView *)self textStorage];
    v11 = v10;
    v12 = *MEMORY[0x1E69DB670];
    v13 = v15;
    goto LABEL_10;
  }

LABEL_11:
  if (a4)
  {
    *a4 = v15;
  }

LABEL_13:

  return v8;
}

- (void)_handleTapGesture:(id)a3
{
  v6 = a3;
  v4 = [(_PXUITextView *)self tapGestureRecognizer];
  if (v4 == v6)
  {
    v5 = [v6 state];

    if (v5 == 3)
    {
      [(_PXUITextView *)self becomeFirstResponder];
    }
  }

  else
  {
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ == a3)
  {
    [(_PXUITextView *)self selectedRange];
    return v5 != 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _PXUITextView;
    return [_PXUITextView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (BOOL)becomeFirstResponder
{
  [(_PXUITextView *)self setEditable:1];
  v4.receiver = self;
  v4.super_class = _PXUITextView;
  return [(_PXUITextView *)&v4 becomeFirstResponder];
}

- (id)keyCommands
{
  v7.receiver = self;
  v7.super_class = _PXUITextView;
  v3 = [(_PXUITextView *)&v7 keyCommands];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v5 = [v3 arrayByAddingObjectsFromArray:self->_keyCommands];

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_PXUITextView *)self tapGestureRecognizer];

  if (v5 == v4)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [(_PXUITextView *)self _linkTappedByGesture:v4 charIndexAtPoint:&v10];

    v6 = v7 == 0;
    if (!v7 && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_PXUITextView *)self setSelectedRange:v10, 0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _PXUITextView;
    v6 = [(_PXUITextView *)&v9 gestureRecognizerShouldBegin:v4];
  }

  return v6;
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _PXUITextView;
  [(_PXUITextView *)&v6 setEditable:?];
  if (!v3)
  {
    [(_PXUITextView *)self setScrollEnabled:0];
  }

  v5 = [(_PXUITextView *)self tapGestureRecognizer];
  [v5 setEnabled:!v3];
}

- (_PXUITextView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _PXUITextView;
  v3 = [(_PXUITextView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__handleTapGesture_];
    tapGestureRecognizer = v3->_tapGestureRecognizer;
    v3->_tapGestureRecognizer = v4;

    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer setDelegate:v3];
    [(_PXUITextView *)v3 addGestureRecognizer:v3->_tapGestureRecognizer];
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    keyCommands = v3->_keyCommands;
    v3->_keyCommands = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69784C8]);
    [v8 setDelegate:v3];
    [(_PXUITextView *)v3 addInteraction:v8];
  }

  return v3;
}

@end