@interface _PXUITextView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_PXUITextView)initWithFrame:(CGRect)frame;
- (double)_distanceFromContentToGivenPoint:(CGPoint)point charIndexAtPoint:(unint64_t *)atPoint;
- (id)_linkTappedByGesture:(id)gesture charIndexAtPoint:(unint64_t *)point;
- (id)keyCommands;
- (void)_handleTapGesture:(id)gesture;
- (void)setEditable:(BOOL)editable;
@end

@implementation _PXUITextView

- (double)_distanceFromContentToGivenPoint:(CGPoint)point charIndexAtPoint:(unint64_t *)atPoint
{
  y = point.y;
  x = point.x;
  if (atPoint)
  {
    *atPoint = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(_PXUITextView *)self characterRangeAtPoint:point.x, point.y];
  if (v8)
  {
    [(_PXUITextView *)self firstRectForRange:v8];
    textContainer = [(_PXUITextView *)self textContainer];
    [textContainer textContainerOrigin];

    UIDistanceBetweenPointAndRect();
    v11 = v10;
    if (atPoint)
    {
      v12 = [(_PXUITextView *)self closestPositionToPoint:x, y];
      if (v12)
      {
        beginningOfDocument = [(_PXUITextView *)self beginningOfDocument];
        v14 = [(_PXUITextView *)self offsetFromPosition:beginningOfDocument toPosition:v12];

        *atPoint = v14;
      }
    }
  }

  else
  {
    v11 = 1.79769313e308;
  }

  return v11;
}

- (id)_linkTappedByGesture:(id)gesture charIndexAtPoint:(unint64_t *)point
{
  gestureCopy = gesture;
  text = [(_PXUITextView *)self text];
  v8 = [text length];

  if (!v8)
  {
    goto LABEL_13;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (![gestureCopy numberOfTouches])
  {
    goto LABEL_6;
  }

  [gestureCopy locationOfTouch:0 inView:self];
  [(_PXUITextView *)self _distanceFromContentToGivenPoint:&v15 charIndexAtPoint:?];
  if (v15 == v8)
  {
    if (v9 < 8.0)
    {
      textStorage = [(_PXUITextView *)self textStorage];
      v11 = textStorage;
      v12 = *MEMORY[0x1E69DB670];
      v13 = v15 - 1;
LABEL_10:
      v8 = [textStorage attribute:v12 atIndex:v13 effectiveRange:0];

      goto LABEL_11;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v9 < 28.0)
  {
    textStorage = [(_PXUITextView *)self textStorage];
    v11 = textStorage;
    v12 = *MEMORY[0x1E69DB670];
    v13 = v15;
    goto LABEL_10;
  }

LABEL_11:
  if (point)
  {
    *point = v15;
  }

LABEL_13:

  return v8;
}

- (void)_handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  tapGestureRecognizer = [(_PXUITextView *)self tapGestureRecognizer];
  if (tapGestureRecognizer == gestureCopy)
  {
    state = [gestureCopy state];

    if (state == 3)
    {
      [(_PXUITextView *)self becomeFirstResponder];
    }
  }

  else
  {
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ == action)
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
  keyCommands = [(_PXUITextView *)&v7 keyCommands];
  v4 = keyCommands;
  if (!keyCommands)
  {
    keyCommands = MEMORY[0x1E695E0F0];
  }

  v5 = [keyCommands arrayByAddingObjectsFromArray:self->_keyCommands];

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(_PXUITextView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [(_PXUITextView *)self _linkTappedByGesture:beginCopy charIndexAtPoint:&v10];

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
    v6 = [(_PXUITextView *)&v9 gestureRecognizerShouldBegin:beginCopy];
  }

  return v6;
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  v6.receiver = self;
  v6.super_class = _PXUITextView;
  [(_PXUITextView *)&v6 setEditable:?];
  if (!editableCopy)
  {
    [(_PXUITextView *)self setScrollEnabled:0];
  }

  tapGestureRecognizer = [(_PXUITextView *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:!editableCopy];
}

- (_PXUITextView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _PXUITextView;
  v3 = [(_PXUITextView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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