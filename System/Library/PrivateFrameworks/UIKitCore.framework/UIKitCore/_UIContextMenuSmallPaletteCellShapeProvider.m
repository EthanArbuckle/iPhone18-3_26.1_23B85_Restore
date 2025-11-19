@interface _UIContextMenuSmallPaletteCellShapeProvider
- (_UIContextMenuSmallPaletteCellLayout)layout;
- (id)resolvedShapeInContext:(id)a3;
@end

@implementation _UIContextMenuSmallPaletteCellShapeProvider

- (id)resolvedShapeInContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuSmallPaletteCellShapeProvider *)self layout];
  [v5 _rectForHighlightContentShape];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [UIShape fixedRectShapeWithRect:v7 cornerRadius:v9, v11, v13, 8.0];
  v15 = [v14 resolvedShapeInContext:v4];

  return v15;
}

- (_UIContextMenuSmallPaletteCellLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end