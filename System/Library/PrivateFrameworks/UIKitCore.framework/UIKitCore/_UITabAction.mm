@interface _UITabAction
- (_UITabAction)initWithIdentifier:(id)a3 title:(id)a4 image:(id)a5 handler:(id)a6;
- (void)_performAction;
@end

@implementation _UITabAction

- (_UITabAction)initWithIdentifier:(id)a3 title:(id)a4 image:(id)a5 handler:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = _UITabAction;
  v11 = [(UITab *)&v15 initWithTitle:a4 image:a5 identifier:a3 viewControllerProvider:0];
  if (v11)
  {
    v12 = _Block_copy(v10);
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