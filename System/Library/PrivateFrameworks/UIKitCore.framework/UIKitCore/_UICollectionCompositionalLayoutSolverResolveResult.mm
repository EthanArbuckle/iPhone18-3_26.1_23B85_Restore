@interface _UICollectionCompositionalLayoutSolverResolveResult
- (_UICollectionCompositionalLayoutSolverResolveResult)init;
- (id)description;
- (id)indexPathsForDeletedDecorationsForElementKind:(id *)a1;
- (id)indexPathsForDeletedSupplememtariesForElementKind:(id *)a1;
- (id)indexPathsForInsertedDecorationsForElementKind:(id *)a1;
- (id)indexPathsForInsertedSupplememtariesForElementKind:(id *)a1;
- (void)addDeletedAuxillaryOfElementKind:(uint64_t)a3 atIndexPath:(int)a4 isSupplementary:;
- (void)addInsertedAuxillaryOfElementKind:(uint64_t)a3 atIndexPath:(int)a4 isSupplementary:;
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

- (void)addDeletedAuxillaryOfElementKind:(uint64_t)a3 atIndexPath:(int)a4 isSupplementary:
{
  if (!a1)
  {
    return;
  }

  if (![a2 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_addDeletedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:a1 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3936 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];

    if (a3)
    {
      goto LABEL_4;
    }

LABEL_13:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel_addDeletedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:a1 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3937 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    goto LABEL_4;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (a4)
  {
    v8 = 24;
  }

  else
  {
    v8 = 32;
  }

  v9 = [*(a1 + v8) objectForKeyedSubscript:a2];
  if (!v9)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(a1 + v8) setObject:v12 forKeyedSubscript:a2];
    v9 = v12;
  }

  v13 = v9;
  [v9 addObject:a3];
}

- (void)addInsertedAuxillaryOfElementKind:(uint64_t)a3 atIndexPath:(int)a4 isSupplementary:
{
  if (!a1)
  {
    return;
  }

  if (![a2 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_addInsertedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:a1 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3952 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];

    if (a3)
    {
      goto LABEL_4;
    }

LABEL_13:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel_addInsertedAuxillaryOfElementKind_atIndexPath_isSupplementary_ object:a1 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3953 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    goto LABEL_4;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (a4)
  {
    v8 = 8;
  }

  else
  {
    v8 = 16;
  }

  v9 = [*(a1 + v8) objectForKeyedSubscript:a2];
  if (!v9)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(a1 + v8) setObject:v12 forKeyedSubscript:a2];
    v9 = v12;
  }

  v13 = v9;
  [v9 addObject:a3];
}

- (id)indexPathsForDeletedSupplememtariesForElementKind:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_indexPathsForDeletedSupplememtariesForElementKind_ object:v2 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3968 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [v2[3] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v2 = v6;
  }

  return v2;
}

- (id)indexPathsForDeletedDecorationsForElementKind:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_indexPathsForDeletedDecorationsForElementKind_ object:v2 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3973 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [v2[4] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v2 = v6;
  }

  return v2;
}

- (id)indexPathsForInsertedSupplememtariesForElementKind:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_indexPathsForInsertedSupplememtariesForElementKind_ object:v2 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3978 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [v2[1] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v2 = v6;
  }

  return v2;
}

- (id)indexPathsForInsertedDecorationsForElementKind:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_indexPathsForInsertedDecorationsForElementKind_ object:v2 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3983 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [v2[2] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v2 = v6;
  }

  return v2;
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