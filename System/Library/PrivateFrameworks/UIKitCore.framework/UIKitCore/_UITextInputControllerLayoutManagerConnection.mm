@interface _UITextInputControllerLayoutManagerConnection
- (_UITextInputControllerLayoutManagerConnection)initWithTextInputController:(id)controller;
- (void)dealloc;
@end

@implementation _UITextInputControllerLayoutManagerConnection

- (void)dealloc
{
  [(UITextInputController *)self->_textInputController _detachFromLayoutManager];
  v3.receiver = self;
  v3.super_class = _UITextInputControllerLayoutManagerConnection;
  [(_UITextInputControllerLayoutManagerConnection *)&v3 dealloc];
}

- (_UITextInputControllerLayoutManagerConnection)initWithTextInputController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _UITextInputControllerLayoutManagerConnection;
  v6 = [(_UITextInputControllerLayoutManagerConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textInputController, controller);
  }

  return v7;
}

@end