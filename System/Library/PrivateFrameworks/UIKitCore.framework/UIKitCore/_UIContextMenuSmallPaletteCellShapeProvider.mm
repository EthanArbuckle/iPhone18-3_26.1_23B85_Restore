@interface _UIContextMenuSmallPaletteCellShapeProvider
- (_UIContextMenuSmallPaletteCellLayout)layout;
- (id)resolvedShapeInContext:(id)context;
@end

@implementation _UIContextMenuSmallPaletteCellShapeProvider

- (id)resolvedShapeInContext:(id)context
{
  contextCopy = context;
  layout = [(_UIContextMenuSmallPaletteCellShapeProvider *)self layout];
  [layout _rectForHighlightContentShape];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [UIShape fixedRectShapeWithRect:v7 cornerRadius:v9, v11, v13, 8.0];
  v15 = [v14 resolvedShapeInContext:contextCopy];

  return v15;
}

- (_UIContextMenuSmallPaletteCellLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end