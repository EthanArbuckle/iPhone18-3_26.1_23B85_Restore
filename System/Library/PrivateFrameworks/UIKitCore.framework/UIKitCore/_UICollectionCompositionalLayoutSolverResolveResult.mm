@interface _UICollectionCompositionalLayoutSolverResolveResult
- (_UICollectionCompositionalLayoutSolverResolveResult)init;
- (id)description;
- (id)indexPathsForDeletedDecorationsForElementKind:(id *)kind;
- (id)indexPathsForDeletedSupplememtariesForElementKind:(id *)kind;
- (id)indexPathsForInsertedDecorationsForElementKind:(id *)kind;
- (id)indexPathsForInsertedSupplememtariesForElementKind:(id *)kind;
- (void)addDeletedAuxillaryOfElementKind:(uint64_t)kind atIndexPath:(int)path isSupplementary:;
- (void)addInsertedAuxillaryOfElementKind:(uint64_t)kind atIndexPath:(int)path isSupplementary:;
@end

@implementation _UICollectionCompositionalLayoutSolverResolveResult

- (_UICollectionCompositionalLayoutSolverResolveResult)init
{
  v12.receiver = self;
  v12.super_class = _UICollectionCompositionalLayoutSolverResolveResult;
  v2 = [(_UICollectionCompositionalLayoutSolverResolveResult *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    insertedSupplementaryElementKindIndexPathsDict = v2->_insertedSupplementaryElementKindIndexPathsDict;
    v2->_insertedSupplementaryElementKindIndexPathsDict = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    insertedDecorationElementKindIndexPathsDict = v2->_insertedDecorationElementKindIndexPathsDict;
    v2->_insertedDecorationElementKindIndexPathsDict = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deletedSupplementaryElementKindIndexPathsDict = v2->_deletedSupplementaryElementKindIndexPathsDict;
    v2->_deletedSupplementaryElementKindIndexPathsDict = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deletedDecorationElementKindIndexPathsDict = v2->_deletedDecorationElementKindIndexPathsDict;
    v2->_deletedDecorationElementKindIndexPathsDict = v9;
  }

  return v2;
}

- (void)addDeletedAuxillaryOfElementKind:(uint64_t)kind atIndexPath:(int)path isSupplementary:
{
  if (!self)
  {
    return;
  }

  if (![a2 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_addDeletedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3936 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];

    if (kind)
    {
      goto LABEL_4;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_addDeletedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3937 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    goto LABEL_4;
  }

  if (!kind)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (path)
  {
    v8 = 24;
  }

  else
  {
    v8 = 32;
  }

  v9 = [*(self + v8) objectForKeyedSubscript:a2];
  if (!v9)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(self + v8) setObject:v12 forKeyedSubscript:a2];
    v9 = v12;
  }

  v13 = v9;
  [v9 addObject:kind];
}

- (void)addInsertedAuxillaryOfElementKind:(uint64_t)kind atIndexPath:(int)path isSupplementary:
{
  if (!self)
  {
    return;
  }

  if (![a2 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_addInsertedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3952 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];

    if (kind)
    {
      goto LABEL_4;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_addInsertedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3953 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    goto LABEL_4;
  }

  if (!kind)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (path)
  {
    v8 = 8;
  }

  else
  {
    v8 = 16;
  }

  v9 = [*(self + v8) objectForKeyedSubscript:a2];
  if (!v9)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(self + v8) setObject:v12 forKeyedSubscript:a2];
    v9 = v12;
  }

  v13 = v9;
  [v9 addObject:kind];
}

- (id)indexPathsForDeletedSupplememtariesForElementKind:(id *)kind
{
  kindCopy = kind;
  if (kind)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_indexPathsForDeletedSupplememtariesForElementKind_ object:kindCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3968 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [kindCopy[3] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    kindCopy = v6;
  }

  return kindCopy;
}

- (id)indexPathsForDeletedDecorationsForElementKind:(id *)kind
{
  kindCopy = kind;
  if (kind)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_indexPathsForDeletedDecorationsForElementKind_ object:kindCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3973 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [kindCopy[4] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    kindCopy = v6;
  }

  return kindCopy;
}

- (id)indexPathsForInsertedSupplememtariesForElementKind:(id *)kind
{
  kindCopy = kind;
  if (kind)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_indexPathsForInsertedSupplememtariesForElementKind_ object:kindCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3978 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [kindCopy[1] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    kindCopy = v6;
  }

  return kindCopy;
}

- (id)indexPathsForInsertedDecorationsForElementKind:(id *)kind
{
  kindCopy = kind;
  if (kind)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_indexPathsForInsertedDecorationsForElementKind_ object:kindCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3983 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [kindCopy[2] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    kindCopy = v6;
  }

  return kindCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: insertedSupplementaries: %@ insertedDecorations: %@; deletedSupplementaries: %@; deletedDecorations: %@>", v5, self, self->_insertedSupplementaryElementKindIndexPathsDict, self->_insertedDecorationElementKindIndexPathsDict, self->_deletedSupplementaryElementKindIndexPathsDict, self->_deletedDecorationElementKindIndexPathsDict];;

  return v6;
}

@end