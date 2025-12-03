@interface _UIOPrototypeMenuBarButton
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation _UIOPrototypeMenuBarButton

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = _UIOPrototypeMenuBarButton;
  v4 = [(UIButton *)&v6 _contextMenuInteraction:interaction styleForMenuWithConfiguration:configuration];
  [v4 set_backgroundInteractionStyle:1];

  return v4;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = objc_alloc_init(_UIContextMenuAsyncConfiguration);
  elementLoader = self->_elementLoader;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84___UIOPrototypeMenuBarButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v9[3] = &unk_1E70F2FC8;
  v7 = v5;
  v10 = v7;
  elementLoader[2](elementLoader, v9);
  (*(self->_menuPresentationHandler + 2))();

  return v7;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v6.receiver = self;
  v6.super_class = _UIOPrototypeMenuBarButton;
  [(UIControl *)&v6 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  (*(self->_menuPresentationHandler + 2))();
}

@end