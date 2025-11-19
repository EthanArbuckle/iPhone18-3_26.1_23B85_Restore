@interface _UIEditMenuOverlayUIServerPresentation
- (id)configureContainerViewWithConfiguration:(id)a3;
- (void)displayMenuForConfiguration:(id)a3 originContext:(id)a4 inDisplayDelegate:(id)a5;
- (void)teardownContainerView;
@end

@implementation _UIEditMenuOverlayUIServerPresentation

- (void)displayMenuForConfiguration:(id)a3 originContext:(id)a4 inDisplayDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  presentationConfiguration = self->_presentationConfiguration;
  self->_presentationConfiguration = v8;
  v11 = v8;
  v12 = a5;

  originContext = self->_originContext;
  self->_originContext = v9;
  v14 = v9;

  objc_storeWeak(&self->_displayDelegate, v12);
  v15 = [(_UIOEditMenuPresentationConfiguration *)v11 identifier];
  v16 = [UIEditMenuConfiguration configurationWithIdentifier:v15 sourcePoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  [v16 setPreferredArrowDirection:{-[_UIOEditMenuPresentationConfiguration preferredArrowDirection](v11, "preferredArrowDirection")}];
  v17 = [(_UIOEditMenuPresentationConfiguration *)v11 menu];
  v18.receiver = self;
  v18.super_class = _UIEditMenuOverlayUIServerPresentation;
  [(_UIEditMenuContentPresentation *)&v18 displayMenu:v17 configuration:v16];
}

- (id)configureContainerViewWithConfiguration:(id)a3
{
  menuContainerView = self->_menuContainerView;
  if (!menuContainerView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);
    v6 = [WeakRetained window];

    v7 = [[_UIEditMenuContainerView alloc] initWithPresentation:self enablePassthrough:1];
    [v6 bounds];
    [(_UIEditMenuContainerView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [v6 addSubview:v7];
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