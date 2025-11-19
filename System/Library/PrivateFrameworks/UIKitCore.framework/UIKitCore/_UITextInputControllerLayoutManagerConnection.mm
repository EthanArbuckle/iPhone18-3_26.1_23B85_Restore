@interface _UITextInputControllerLayoutManagerConnection
- (_UITextInputControllerLayoutManagerConnection)initWithTextInputController:(id)a3;
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

- (_UITextInputControllerLayoutManagerConnection)initWithTextInputController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UITextInputControllerLayoutManagerConnection;
  v6 = [(_UITextInputControllerLayoutManagerConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textInputController, a3);
  }

  return v7;
}

@end