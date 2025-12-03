@interface _UICollectionLayoutSolveParameters
+ (id)parametersForFullResolve;
- (BOOL)isEqual:(id)equal;
- (_UICollectionLayoutAuxillaryOffsets)invalidatedAuxillaryOffsets;
- (_UICollectionLayoutSolveParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexesForInvalidatedAuxillariesOfKind:(id *)kind;
- (id)initWithInvalidatedIndexes:(double)indexes scrollOffset:(double)offset visibleBounds:(double)bounds;
- (id)initWithInvalidatedIndexes:(void *)indexes invalidatedAuxillaryDict:(char)dict isFullResolve:(double)resolve scrollOffset:(double)offset visibleBounds:(double)bounds;
- (void)addAuxillaryIndex:(void *)index elementKind:;
@end

@implementation _UICollectionLayoutSolveParameters

+ (id)parametersForFullResolve
{
  objc_opt_self();
  v0 = [_UICollectionLayoutSolveParameters alloc];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [(_UICollectionLayoutSolveParameters *)v0 initWithInvalidatedIndexes:indexSet invalidatedAuxillaryDict:v2 isFullResolve:1 scrollOffset:*MEMORY[0x1E695EFF8] visibleBounds:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (_UICollectionLayoutSolveParameters)init
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(_UICollectionLayoutSolveParameters *)self initWithInvalidatedIndexes:indexSet invalidatedAuxillaryDict:v4 isFullResolve:0 scrollOffset:*MEMORY[0x1E695EFF8] visibleBounds:*(MEMORY[0x1E695EFF8] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

- (_UICollectionLayoutAuxillaryOffsets)invalidatedAuxillaryOffsets
{
  selfCopy = self;
  if (self)
  {
    if ([self[2] count])
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x3032000000;
      v8 = __Block_byref_object_copy__29;
      v9 = __Block_byref_object_dispose__29;
      v10 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
      isa = selfCopy[1].super.isa;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __65___UICollectionLayoutSolveParameters_invalidatedAuxillaryOffsets__block_invoke;
      v4[3] = &unk_1E70FAD98;
      v4[4] = &v5;
      [(objc_class *)isa enumerateKeysAndObjectsUsingBlock:v4];
      selfCopy = v6[5];
      _Block_object_dispose(&v5, 8);
    }

    else
    {
      selfCopy = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
    }
  }

  return selfCopy;
}

- (id)initWithInvalidatedIndexes:(void *)indexes invalidatedAuxillaryDict:(char)dict isFullResolve:(double)resolve scrollOffset:(double)offset visibleBounds:(double)bounds
{
  if (!self)
  {
    return 0;
  }

  v22.receiver = self;
  v22.super_class = _UICollectionLayoutSolveParameters;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(v19 + 1, a2);
    objc_storeStrong(v20 + 2, indexes);
    *(v20 + 24) = dict;
    *(v20 + 4) = resolve;
    *(v20 + 5) = offset;
    *(v20 + 6) = bounds;
    *(v20 + 7) = a8;
    *(v20 + 8) = a9;
    *(v20 + 9) = a10;
  }

  return v20;
}

- (id)initWithInvalidatedIndexes:(double)indexes scrollOffset:(double)offset visibleBounds:(double)bounds
{
  selfCopy = self;
  if (self)
  {
    v15 = [a2 mutableCopy];
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy = [(_UICollectionLayoutSolveParameters *)selfCopy initWithInvalidatedIndexes:v15 invalidatedAuxillaryDict:v16 isFullResolve:1 scrollOffset:indexes visibleBounds:offset, bounds, a6, a7, a8];
  }

  return selfCopy;
}

- (id)indexesForInvalidatedAuxillariesOfKind:(id *)kind
{
  kindCopy = kind;
  if (kind)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_indexesForInvalidatedAuxillariesOfKind_ object:kindCopy file:@"_UICollectionLayoutHelpers.m" lineNumber:1532 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    v4 = [kindCopy[2] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      indexSet = v4;
    }

    else
    {
      indexSet = [MEMORY[0x1E696AC90] indexSet];
    }

    kindCopy = indexSet;
  }

  return kindCopy;
}

- (void)addAuxillaryIndex:(void *)index elementKind:
{
  if (self)
  {
    if (![index length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addAuxillaryIndex_elementKind_ object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1541 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v6 = [*(self + 16) objectForKeyedSubscript:index];
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(self + 16) setObject:v8 forKeyedSubscript:index];
      v6 = v8;
    }

    v9 = v6;
    [v6 addIndex:a2];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal)
  {
    equalCopy = equal;
    v5 = equalCopy;
    if (self)
    {
      if (self->_isFullResolve != equalCopy[24])
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
      if (equalCopy[24])
      {
        goto LABEL_19;
      }
    }

    if (*(equalCopy + 4) == x && *(equalCopy + 5) == y)
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

      if (CGRectEqualToRect(*(equalCopy + 48), *&v9))
      {
        _content = [(_UILabelConfiguration *)&self->super.isa _content];
        v14 = [_content isEqualToIndexSet:v5[1]];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UICollectionLayoutSolveParameters alloc];
  v5 = [(NSMutableIndexSet *)self->_invalidatedIndexes mutableCopy];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_invalidatedAuxillaryDict copyItems:1];
  v7 = [(_UICollectionLayoutSolveParameters *)v4 initWithInvalidatedIndexes:v5 invalidatedAuxillaryDict:v6 isFullResolve:self->_isFullResolve scrollOffset:self->_scrollOffset.x visibleBounds:self->_scrollOffset.y, self->_visibleBounds.origin.x, self->_visibleBounds.origin.y, self->_visibleBounds.size.width, self->_visibleBounds.size.height];

  return v7;
}

@end