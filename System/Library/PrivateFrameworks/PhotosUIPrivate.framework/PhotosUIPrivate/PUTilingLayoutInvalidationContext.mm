@interface PUTilingLayoutInvalidationContext
- (PUTilingLayoutInvalidationContext)init;
- (void)enumerateInvalidatedTilesUsingBlock:(id)block;
- (void)invalidateAllTiles;
- (void)invalidateAllTilesWithKind:(id)kind;
- (void)invalidateTileWithIndexPath:(id)path kind:(id)kind;
@end

@implementation PUTilingLayoutInvalidationContext

- (void)enumerateInvalidatedTilesUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayoutInvalidationContext.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"enumerationBlock != NULL"}];
  }

  _invalidatedIndexPathsByTileKind = [(PUTilingLayoutInvalidationContext *)self _invalidatedIndexPathsByTileKind];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PUTilingLayoutInvalidationContext_enumerateInvalidatedTilesUsingBlock___block_invoke;
  v9[3] = &unk_1E7B7E9A8;
  v7 = blockCopy;
  v10 = v7;
  v11 = v12;
  [_invalidatedIndexPathsByTileKind enumerateKeysAndObjectsUsingBlock:v9];

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

- (void)invalidateAllTilesWithKind:(id)kind
{
  [(NSMutableSet *)self->_invalidatedTileKinds addObject:kind];

  [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
}

- (void)invalidateTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  if (pathCopy)
  {
    if (kindCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayoutInvalidationContext.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    if (kindCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingLayoutInvalidationContext.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"tileKind != nil"}];

LABEL_3:
  _invalidatedIndexPathsByTileKind = [(PUTilingLayoutInvalidationContext *)self _invalidatedIndexPathsByTileKind];
  v9 = [_invalidatedIndexPathsByTileKind objectForKeyedSubscript:kindCopy];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    [_invalidatedIndexPathsByTileKind setObject:v9 forKeyedSubscript:kindCopy];
  }

  [v9 addObject:pathCopy];
  [(PUTilingLayoutInvalidationContext *)self setInvalidatedAnyTile:1];
}

- (PUTilingLayoutInvalidationContext)init
{
  v8.receiver = self;
  v8.super_class = PUTilingLayoutInvalidationContext;
  v2 = [(PUTilingLayoutInvalidationContext *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    invalidatedIndexPathsByTileKind = v2->__invalidatedIndexPathsByTileKind;
    v2->__invalidatedIndexPathsByTileKind = dictionary;

    v5 = [MEMORY[0x1E695DFA8] set];
    invalidatedTileKinds = v2->_invalidatedTileKinds;
    v2->_invalidatedTileKinds = v5;
  }

  return v2;
}

@end