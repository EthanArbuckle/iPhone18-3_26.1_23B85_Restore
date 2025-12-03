@interface SBStatusBarMenuBarView
- (SBStatusBarMenuBarView)initWithMenuBarController:(id)controller;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation SBStatusBarMenuBarView

- (SBStatusBarMenuBarView)initWithMenuBarController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SBStatusBarMenuBarView;
  v5 = [(SBStatusBarMenuBarView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_menuBarViewController, controllerCopy);
  }

  return v6;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarViewController);
  [WeakRetained _applyStyleAttributes:attributesCopy];
}

@end