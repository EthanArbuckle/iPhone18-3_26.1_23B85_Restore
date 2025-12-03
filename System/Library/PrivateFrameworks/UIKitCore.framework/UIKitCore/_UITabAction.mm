@interface _UITabAction
- (_UITabAction)initWithIdentifier:(id)identifier title:(id)title image:(id)image handler:(id)handler;
- (void)_performAction;
@end

@implementation _UITabAction

- (_UITabAction)initWithIdentifier:(id)identifier title:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = _UITabAction;
  v11 = [(UITab *)&v15 initWithTitle:title image:image identifier:identifier viewControllerProvider:0];
  if (v11)
  {
    v12 = _Block_copy(handlerCopy);
    actionHandler = v11->_actionHandler;
    v11->_actionHandler = v12;
  }

  return v11;
}

- (void)_performAction
{
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, self);
  }
}

@end