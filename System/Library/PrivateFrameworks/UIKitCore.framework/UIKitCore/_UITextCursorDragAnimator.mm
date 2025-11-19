@interface _UITextCursorDragAnimator
- (id)_initWithTextCursorView:(id)a3 textInput:(id)a4;
@end

@implementation _UITextCursorDragAnimator

- (id)_initWithTextCursorView:(id)a3 textInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UITextCursorDragAnimator;
  v8 = [(_UITextCursorDragAnimator *)&v12 init];
  if (v8)
  {
    v9 = [[UITextCursorDropPositionAnimator alloc] initWithTextCursorView:v6 textInput:v7];
    impl = v8->_impl;
    v8->_impl = v9;
  }

  return v8;
}

@end