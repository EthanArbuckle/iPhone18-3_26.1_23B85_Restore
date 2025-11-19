@interface ContextMenuInteractionDelegate
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
@end

@implementation ContextMenuInteractionDelegate

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_220E9E468();

  return v9;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = sub_220E9E9BC(v7, x, y);

  return v9;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_220E9FA84(v6, v7);

  return v9;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_220E9FA84(v6, v7);

  return v9;
}

@end