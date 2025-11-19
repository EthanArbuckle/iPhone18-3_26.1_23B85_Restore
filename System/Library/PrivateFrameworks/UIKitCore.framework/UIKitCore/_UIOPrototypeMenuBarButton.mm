@interface _UIOPrototypeMenuBarButton
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation _UIOPrototypeMenuBarButton

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6.receiver = self;
  v6.super_class = _UIOPrototypeMenuBarButton;
  v4 = [(UIButton *)&v6 _contextMenuInteraction:a3 styleForMenuWithConfiguration:a4];
  [v4 set_backgroundInteractionStyle:1];

  return v4;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6.receiver = self;
  v6.super_class = _UIOPrototypeMenuBarButton;
  [(UIControl *)&v6 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  (*(self->_menuPresentationHandler + 2))();
}

@end