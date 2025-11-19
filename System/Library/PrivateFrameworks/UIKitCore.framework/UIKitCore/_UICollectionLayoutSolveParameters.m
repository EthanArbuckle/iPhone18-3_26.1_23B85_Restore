@interface _UICollectionLayoutSolveParameters
+ (id)parametersForFullResolve;
- (BOOL)isEqual:(id)a3;
- (_UICollectionLayoutAuxillaryOffsets)invalidatedAuxillaryOffsets;
- (_UICollectionLayoutSolveParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexesForInvalidatedAuxillariesOfKind:(id *)a1;
- (id)initWithInvalidatedIndexes:(double)a3 scrollOffset:(double)a4 visibleBounds:(double)a5;
- (id)initWithInvalidatedIndexes:(void *)a3 invalidatedAuxillaryDict:(char)a4 isFullResolve:(double)a5 scrollOffset:(double)a6 visibleBounds:(double)a7;
- (void)addAuxillaryIndex:(void *)a3 elementKind:;
@end

@implementation _UICollectionLayoutSolveParameters

+ (id)parametersForFullResolve
{
  objc_opt_self();
  v0 = [_UICollectionLayoutSolveParameters alloc];
  v1 = [MEMORY[0x1E696AD50] indexSet];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [(_UICollectionLayoutSolveParameters *)v0 initWithInvalidatedIndexes:v1 invalidatedAuxillaryDict:v2 isFullResolve:1 scrollOffset:*MEMORY[0x1E695EFF8] visibleBounds:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (_UICollectionLayoutSolveParameters)init
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(_UICollectionLayoutSolveParameters *)self initWithInvalidatedIndexes:v3 invalidatedAuxillaryDict:v4 isFullResolve:0 scrollOffset:*MEMORY[0x1E695EFF8] visibleBounds:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

- (_UICollectionLayoutAuxillaryOffsets)invalidatedAuxillaryOffsets
{
  v1 = a1;
  if (a1)
  {
    if ([a1[2] count])
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x3032000000;
      v8 = __Block_byref_object_copy__29;
      v9 = __Block_byref_object_dispose__29;
      v10 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
      isa = v1[1].super.isa;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __65___UICollectionLayoutSolveParameters_invalidatedAuxillaryOffsets__block_invoke;
      v4[3] = &unk_1E70FAD98;
      v4[4] = &v5;
      [(objc_class *)isa enumerateKeysAndObjectsUsingBlock:v4];
      v1 = v6[5];
      _Block_object_dispose(&v5, 8);
    }

    else
    {
      v1 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
    }
  }

  return v1;
}

- (id)initWithInvalidatedIndexes:(void *)a3 invalidatedAuxillaryDict:(char)a4 isFullResolve:(double)a5 scrollOffset:(double)a6 visibleBounds:(double)a7
{
  if (!a1)
  {
    return 0;
  }

  v22.receiver = a1;
  v22.super_class = _UICollectionLayoutSolveParameters;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(v19 + 1, a2);
    objc_storeStrong(v20 + 2, a3);
    *(v20 + 24) = a4;
    *(v20 + 4) = a5;
    *(v20 + 5) = a6;
    *(v20 + 6) = a7;
    *(v20 + 7) = a8;
    *(v20 + 8) = a9;
    *(v20 + 9) = a10;
  }

  return v20;
}

- (id)initWithInvalidatedIndexes:(double)a3 scrollOffset:(double)a4 visibleBounds:(double)a5
{
  v8 = a1;
  if (a1)
  {
    v15 = [a2 mutableCopy];
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [(_UICollectionLayoutSolveParameters *)v8 initWithInvalidatedIndexes:v15 invalidatedAuxillaryDict:v16 isFullResolve:1 scrollOffset:a3 visibleBounds:a4, a5, a6, a7, a8];
  }

  return v8;
}

- (id)indexesForInvalidatedAuxillariesOfKind:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_indexesForInvalidatedAuxillariesOfKind_ object:v2 file:@"_UICollectionLayoutHelpers.m" lineNumber:1532 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    v4 = [v2[2] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696AC90] indexSet];
    }

    v2 = v6;
  }

  return v2;
}

- (void)addAuxillaryIndex:(void *)a3 elementKind:
{
  if (a1)
  {
    if (![a3 length])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_addAuxillaryIndex_elementKind_ object:a1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1541 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v6 = [*(a1 + 16) objectForKeyedSubscript:a3];
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(a1 + 16) setObject:v8 forKeyedSubscript:a3];
      v6 = v8;
    }

    v9 = v6;
    [v6 addIndex:a2];
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3)
  {
    v4 = a3;
    v5 = v4;
    if (self)
    {
      if (self->_isFullResolve != v4[24])
      {
        goto LABEL_19;
      }

      x = self->_scrollOffset.x;
      y = self->_scrollOffset.y;
    }

    else
    {
      y = 0.0;
      x = 0.0;
      if (v4[24])
      {
        goto LABEL_19;
      }
    }

    if (*(v4 + 4) == x && *(v4 + 5) == y)
    {
      if (self)
      {
        v9 = self->_visibleBounds.origin.x;
        v10 = self->_visibleBounds.origin.y;
        width = self->_visibleBounds.size.width;
        height = self->_visibleBounds.size.height;
      }

      else
      {
        v10 = 0.0;
        width = 0.0;
        height = 0.0;
        v9 = 0.0;
      }

      if (CGRectEqualToRect(*(v4 + 48), *&v9))
      {
        v13 = [(_UILabelConfiguration *)&self->super.isa _content];
        v14 = [v13 isEqualToIndexSet:v5[1]];

        if (v14)
        {
          v15 = [(NSMutableDictionary *)self->_invalidatedAuxillaryDict isEqualToDictionary:v5[2]];
LABEL_20:

          return v15;
        }
      }
    }

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UICollectionLayoutSolveParameters alloc];
  v5 = [(NSMutableIndexSet *)self->_invalidatedIndexes mutableCopy];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_invalidatedAuxillaryDict copyItems:1];
  v7 = [(_UICollectionLayoutSolveParameters *)v4 initWithInvalidatedIndexes:v5 invalidatedAuxillaryDict:v6 isFullResolve:self->_isFullResolve scrollOffset:self->_scrollOffset.x visibleBounds:self->_scrollOffset.y, self->_visibleBounds.origin.x, self->_visibleBounds.origin.y, self->_visibleBounds.size.width, self->_visibleBounds.size.height];

  return v7;
}

@end