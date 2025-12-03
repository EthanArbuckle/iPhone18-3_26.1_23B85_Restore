@interface _UITextCursorDragAnimator
- (id)_initWithTextCursorView:(id)view textInput:(id)input;
@end

@implementation _UITextCursorDragAnimator

- (id)_initWithTextCursorView:(id)view textInput:(id)input
{
  viewCopy = view;
  inputCopy = input;
  v12.receiver = self;
  v12.super_class = _UITextCursorDragAnimator;
  v8 = [(_UITextCursorDragAnimator *)&v12 init];
  if (v8)
  {
    v9 = [[UITextCursorDropPositionAnimator alloc] initWithTextCursorView:viewCopy textInput:inputCopy];
    impl = v8->_impl;
    v8->_impl = v9;
  }

  return v8;
}

@end