@interface _UICollectionLayoutUpdateContainerOffsetResult
- (NSSet)invalidatedAuxillaryKinds;
- (_UICollectionLayoutUpdateContainerOffsetResult)init;
- (id)indexPathsForInvalidatedSupplementariesOfKind:(id)a3;
- (void)addInvalidatedSupplementaryForKind:(id)a3 indexPath:(id)a4;
@end

@implementation _UICollectionLayoutUpdateContainerOffsetResult

- (_UICollectionLayoutUpdateContainerOffsetResult)init
{
  v6.receiver = self;
  v6.super_class = _UICollectionLayoutUpdateContainerOffsetResult;
  v2 = [(_UICollectionLayoutUpdateContainerOffsetResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    invalidatedSupplementaryIndexesDict = v2->_invalidatedSupplementaryIndexesDict;
    v2->_invalidatedSupplementaryIndexesDict = v3;
  }

  return v2;
}

- (NSSet)invalidatedAuxillaryKinds
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexesDict allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)indexPathsForInvalidatedSupplementariesOfKind:(id)a3
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3656 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
  }

  v5 = [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexesDict objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (void)addInvalidatedSupplementaryForKind:(id)a3 indexPath:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3662 description:{@"Invalid parameter not satisfying: %@", @"kind"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3663 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

LABEL_3:
  v8 = [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexesDict objectForKeyedSubscript:a3];
  if (!v8)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexesDict setObject:v11 forKeyedSubscript:a3];
    v8 = v11;
  }

  v12 = v8;
  [v8 addObject:a4];
}

@end