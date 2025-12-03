@interface _UIEditMenuOverlayUIServerPresentation
- (id)configureContainerViewWithConfiguration:(id)configuration;
- (void)displayMenuForConfiguration:(id)configuration originContext:(id)context inDisplayDelegate:(id)delegate;
- (void)teardownContainerView;
@end

@implementation _UIEditMenuOverlayUIServerPresentation

- (void)displayMenuForConfiguration:(id)configuration originContext:(id)context inDisplayDelegate:(id)delegate
{
  configurationCopy = configuration;
  contextCopy = context;
  presentationConfiguration = self->_presentationConfiguration;
  self->_presentationConfiguration = configurationCopy;
  v11 = configurationCopy;
  delegateCopy = delegate;

  originContext = self->_originContext;
  self->_originContext = contextCopy;
  v14 = contextCopy;

  objc_storeWeak(&self->_displayDelegate, delegateCopy);
  identifier = [(_UIOEditMenuPresentationConfiguration *)v11 identifier];
  v16 = [UIEditMenuConfiguration configurationWithIdentifier:identifier sourcePoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  [v16 setPreferredArrowDirection:{-[_UIOEditMenuPresentationConfiguration preferredArrowDirection](v11, "preferredArrowDirection")}];
  menu = [(_UIOEditMenuPresentationConfiguration *)v11 menu];
  v18.receiver = self;
  v18.super_class = _UIEditMenuOverlayUIServerPresentation;
  [(_UIEditMenuContentPresentation *)&v18 displayMenu:menu configuration:v16];
}

- (id)configureContainerViewWithConfiguration:(id)configuration
{
  menuContainerView = self->_menuContainerView;
  if (!menuContainerView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);
    window = [WeakRetained window];

    v7 = [[_UIEditMenuContainerView alloc] initWithPresentation:self enablePassthrough:1];
    [window bounds];
    [(_UIEditMenuContainerView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [window addSubview:v7];
    v8 = self->_menuContainerView;
    self->_menuContainerView = v7;

    menuContainerView = self->_menuContainerView;
  }

  return menuContainerView;
}

- (void)teardownContainerView
{
  [(UIView *)self->_menuContainerView removeFromSuperview];
  menuContainerView = self->_menuContainerView;
  self->_menuContainerView = 0;
}

@end