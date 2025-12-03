@interface _UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout
- (CGRect)frameForDoneButton;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
@end

@implementation _UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = [(UICollectionViewLayoutAttributes *)_UICollectionTableIndexOverlaySelectionViewCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"ExternalDoneKind" withIndexPath:path];
  [v5 setFrame:{self->_frameForDoneButton.origin.x, self->_frameForDoneButton.origin.y, self->_frameForDoneButton.size.width, self->_frameForDoneButton.size.height}];
  [(_UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout *)self rightMarginForDoneButton];
  [v5 setRightMargin:?];

  return v5;
}

- (CGRect)frameForDoneButton
{
  x = self->_frameForDoneButton.origin.x;
  y = self->_frameForDoneButton.origin.y;
  width = self->_frameForDoneButton.size.width;
  height = self->_frameForDoneButton.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout;
  v8 = [(UICollectionViewFlowLayout *)&v14 layoutAttributesForElementsInRect:?];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (CGRectIntersectsRect(v17, self->_frameForDoneButton))
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v10 = [(_UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout *)self layoutAttributesForSupplementaryViewOfKind:@"ExternalDoneKind" atIndexPath:v9];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    v12 = [v8 arrayByAddingObjectsFromArray:v11];

    v8 = v12;
  }

  return v8;
}

@end