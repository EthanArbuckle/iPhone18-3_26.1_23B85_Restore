@interface PREditorMenuButton
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)setMenuPresentationAssertion:(id)assertion;
@end

@implementation PREditorMenuButton

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = PREditorMenuButton;
  [(PREditorMenuButton *)&v7 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  [(BSInvalidatable *)self->_menuPresentationAssertion invalidate];
  menuPresentationAssertion = self->_menuPresentationAssertion;
  self->_menuPresentationAssertion = 0;
}

- (void)setMenuPresentationAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(BSInvalidatable *)self->_menuPresentationAssertion invalidate];
    objc_storeStrong(&self->_menuPresentationAssertion, assertion);
  }
}

@end