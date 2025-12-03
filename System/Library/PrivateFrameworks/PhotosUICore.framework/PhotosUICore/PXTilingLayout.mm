@interface PXTilingLayout
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (BOOL)shouldFlipHorizontally;
- (CGPoint)visibleOrigin;
- (CGRect)contentBounds;
- (CGRect)scrollBounds;
- (CGRect)visibleRect;
- (CGSize)referenceSize;
- (CGSize)visibleSize;
- (PXTilingLayout)init;
- (PXTilingLayoutObserver)observer;
- (UIEdgeInsets)contentInset;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)invalidateLayout;
- (void)invalidateLayoutWithContext:(id)context;
@end

@implementation PXTilingLayout

- (PXTilingLayoutObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (CGPoint)visibleOrigin
{
  x = self->_visibleOrigin.x;
  y = self->_visibleOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)visibleSize
{
  width = self->_visibleSize.width;
  height = self->_visibleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)shouldFlipHorizontally
{
  if ([MEMORY[0x1E695DF58] px_currentCharacterDirection] != 2)
  {
    v3 = +[PXTilingSettings sharedInstance];
    flipLayoutsHorizontally = [v3 flipLayoutsHorizontally];

    if (!flipLayoutsHorizontally)
    {
      return 0;
    }
  }

  return [(PXTilingLayout *)self allowHorizontalFlip];
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  observer = [(PXTilingLayout *)self observer];
  [observer tilingLayout:self invalidatedWithContext:contextCopy];
}

- (void)invalidateLayout
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 setTag:@"Generic Invalidate Everything"];
  [(PXTilingLayoutInvalidationContext *)v3 invalidateEverything];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingLayout.m" lineNumber:55 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingLayout.m" lineNumber:51 description:@"must be implemented by concrete subclass"];
}

- (CGRect)scrollBounds
{
  [(PXTilingLayout *)self contentBounds];
  [(PXTilingLayout *)self contentInset];
  sub_1A524D1F4();
}

- (CGRect)contentBounds
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingLayout.m" lineNumber:39 description:@"must be implemented by concrete subclass"];

  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)visibleRect
{
  [(PXTilingLayout *)self visibleOrigin];
  v4 = v3;
  v6 = v5;
  [(PXTilingLayout *)self visibleSize];
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PXTilingLayout)init
{
  v6.receiver = self;
  v6.super_class = PXTilingLayout;
  v2 = [(PXTilingLayout *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXTilingCoordinateSpace);
    coordinateSpace = v2->_coordinateSpace;
    v2->_coordinateSpace = v3;

    v2->_coordinateSpaceIdentifier = [(PXTilingCoordinateSpace *)v2->_coordinateSpace identifier];
  }

  return v2;
}

@end