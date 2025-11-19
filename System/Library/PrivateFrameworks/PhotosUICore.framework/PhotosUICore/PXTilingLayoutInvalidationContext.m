@interface PXTilingLayoutInvalidationContext
- (NSIndexSet)invalidatedTileGroups;
- (void)enumerateInvalidatedTileIdentifiersUsingBlock:(id)a3;
- (void)invalidateEverything;
- (void)invalidateTileWithIdentifier:(PXTileIdentifier *)a3;
- (void)invalidateTilesInGroup:(unint64_t)a3;
@end

@implementation PXTilingLayoutInvalidationContext

- (NSIndexSet)invalidatedTileGroups
{
  v2 = [(NSMutableIndexSet *)self->_invalidatedTileGroups copy];

  return v2;
}

- (void)invalidateEverything
{
  [(PXTilingLayoutInvalidationContext *)self invalidateAllTiles];
  [(PXTilingLayoutInvalidationContext *)self invalidateContentBounds];
  [(PXTilingLayoutInvalidationContext *)self invalidateScrollBounds];
  [(PXTilingLayoutInvalidationContext *)self invalidateVisibleRect];

  [(PXTilingLayoutInvalidationContext *)self invalidateScrollInfo];
}

- (void)enumerateInvalidatedTileIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  invalidatedTileIdentifiers = self->_invalidatedTileIdentifiers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PXTilingLayoutInvalidationContext_enumerateInvalidatedTileIdentifiersUsingBlock___block_invoke;
  v7[3] = &unk_1E77454A0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)invalidatedTileIdentifiers enumerateObjectsUsingBlock:v7];
}

uint64_t __83__PXTilingLayoutInvalidationContext_enumerateInvalidatedTileIdentifiersUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (a2)
  {
    [a2 PXTileIdentifierValue];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return v11(v10, v13, a4, a4, a5, a6, a7, a8);
}

- (void)invalidateTilesInGroup:(unint64_t)a3
{
  invalidatedTileGroups = self->_invalidatedTileGroups;
  if (invalidatedTileGroups)
  {

    [(NSMutableIndexSet *)invalidatedTileGroups addIndex:a3];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD50] indexSetWithIndex:a3];
    v6 = self->_invalidatedTileGroups;
    self->_invalidatedTileGroups = v5;
  }
}

- (void)invalidateTileWithIdentifier:(PXTileIdentifier *)a3
{
  invalidatedTileIdentifiers = self->_invalidatedTileIdentifiers;
  if (!invalidatedTileIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_invalidatedTileIdentifiers;
    self->_invalidatedTileIdentifiers = v6;

    invalidatedTileIdentifiers = self->_invalidatedTileIdentifiers;
  }

  v8 = *&a3->index[5];
  v11[2] = *&a3->index[3];
  v11[3] = v8;
  v11[4] = *&a3->index[7];
  v12 = a3->index[9];
  v9 = *&a3->index[1];
  v11[0] = *&a3->length;
  v11[1] = v9;
  v10 = [MEMORY[0x1E696B098] valueWithPXTileIdentifier:v11];
  [(NSMutableArray *)invalidatedTileIdentifiers addObject:v10];
}

@end