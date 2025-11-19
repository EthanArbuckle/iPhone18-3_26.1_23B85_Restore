@interface PUTilingLayoutInvalidationContext
- (PUTilingLayoutInvalidationContext)init;
- (void)enumerateInvalidatedTilesUsingBlock:(id)a3;
- (void)invalidateAllTiles;
- (void)invalidateAllTilesWithKind:(id)a3;
- (void)invalidateTileWithIndexPath:(id)a3 kind:(id)a4;
@end

@implementation PUTilingLayoutInvalidationContext

- (void)enumerateInvalidatedTilesUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUTilingLayoutInvalidationContext.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock != NULL"}];
  }

  v6 = [(PUTilingLayoutInvalidationContext *)self _invalidatedIndexPathsByTileKind];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PUTilingLayoutInvalidationContext_enumerateInvalidatedTilesUsingBlock___block_invoke;
  v9[3] = &unk_1E7B7E9A8;
  v7 = v5;
  v10 = v7;
  v11 = v12;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  _Block_object_dispose(v12, 8);
}

void __73__PUTilingLayoutInvalidationContext_enumerateInvalidatedTilesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PUTilingLayoutInvalidationContext_enumerateInvalidatedTilesUsingBlock___block_invoke_2;
  v10[3] = &unk_1E7B7E980;
  v12 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 40);
  v11 = v8;
  v13 = v9;
  [a3 enumerateObjectsUsingBlock:v10];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t __73__PUTilingLayoutInvalidationContext_enumerateInvalidatedTilesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)invalidateAllTiles
{
  [(PUTilingLayoutInvalidationContext *)self setInvalidatedAllTiles:1];

  [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
}

- (void)invalidateAllTilesWithKind:(id)a3
{
  [(NSMutableSet *)self->_invalidatedTileKinds addObject:a3];

  [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
}

- (void)invalidateTileWithIndexPath:(id)a3 kind:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUTilingLayoutInvalidationContext.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PUTilingLayoutInvalidationContext.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"tileKind != nil"}];

LABEL_3:
  v8 = [(PUTilingLayoutInvalidationContext *)self _invalidatedIndexPathsByTileKind];
  v9 = [v8 objectForKeyedSubscript:v7];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    [v8 setObject:v9 forKeyedSubscript:v7];
  }

  [v9 addObject:v12];
  [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
}

- (PUTilingLayoutInvalidationContext)init
{
  v8.receiver = self;
  v8.super_class = PUTilingLayoutInvalidationContext;
  v2 = [(PUTilingLayoutInvalidationContext *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    invalidatedIndexPathsByTileKind = v2->__invalidatedIndexPathsByTileKind;
    v2->__invalidatedIndexPathsByTileKind = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    invalidatedTileKinds = v2->_invalidatedTileKinds;
    v2->_invalidatedTileKinds = v5;
  }

  return v2;
}

@end