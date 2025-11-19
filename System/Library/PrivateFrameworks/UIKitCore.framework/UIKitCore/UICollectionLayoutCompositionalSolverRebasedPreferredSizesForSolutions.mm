@interface UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions
@end

@implementation UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions

void ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) finalSectionIndexForInitialSectionIndex:?];
  if (a2)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = v8;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7;
    v11 = v10;
    if (v10 && ![v10[2] count])
    {
      [v11[3] count];
    }

    v12 = [(_UICollectionPreferredSizes *)v11 indexes];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_3;
    v23[3] = &unk_1E70FACA8;
    v27 = a3;
    v24 = *(a1 + 32);
    v26 = *(a1 + 40);
    v13 = v11;
    v25 = v13;
    [v12 enumerateIndexesUsingBlock:v23];

    v14 = [(_UICollectionPreferredSizes *)v13 elementKinds];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_4;
    v16[3] = &unk_1E70FACF8;
    v17 = v13;
    v18 = v9;
    v21 = v6;
    v22 = a3;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v15 = v13;
    [v14 enumerateObjectsUsingBlock:v16];
  }
}

_UICollectionPreferredSizes *___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(_UICollectionPreferredSizes);
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  return v6;
}

void ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 56)];
  v17 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_3"}];
    [v9 handleFailureInFunction:v10 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4051 description:@"Failed to determine the initial index path for specified item during rebase. Pleae file a bug on UICollectionView."];

    v4 = 0;
  }

  v5 = [*(a1 + 32) finalIndexPathForInitialIndexPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = (*(*(a1 + 48) + 16))(*(a1 + 48), [v5 section]);
    if (!v7)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_3"}];
      [v11 handleFailureInFunction:v12 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4055 description:{@"Invalid parameter not satisfying: %@", @"finalPreferredSizes"}];
    }

    v8 = [(_UICollectionPreferredSizes *)*(a1 + 40) objectAtIndexedSubscript:a2];
    if (!v8)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_3"}];
      [v13 handleFailureInFunction:v14 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4057 description:{@"Invalid parameter not satisfying: %@", @"preferredSize"}];
    }

    if ([v6 item] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_3"}];
      [v15 handleFailureInFunction:v16 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4058 description:@"Failed to get a valid indexPath for an item during rebase. Please file a bug on UICollectionView."];
    }

    -[_UICollectionPreferredSizes setObject:atIndexedSubscript:](v7, v8, [v6 item]);
  }
}

void ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_6(uint64_t a1, void *a2)
{
  if (a2 && a2[10] == 3 && a2[6] != 0x7FFFFFFFFFFFFFFFLL && a2[1] != a2[3])
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v6 = [v3 objectForKeyedSubscript:v4];

    v5 = v6;
    if (v6)
    {
      [(_UICollectionPreferredSizes *)v6 setObject:a2[4] atIndexedSubscript:?];
      v5 = v6;
    }
  }
}

void ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [(_UICollectionPreferredSizes *)*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_4"}];
    [v7 handleFailureInFunction:v8 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4068 description:{@"Invalid parameter not satisfying: %@", @"initialSupplementaryPreferredSizes"}];
  }

  v5 = [(_UICollectionPreferredSizes *)v4 indexes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_5;
  v9[3] = &unk_1E70FACD0;
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = v4;
  v15 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = v4;
  [v5 enumerateIndexesUsingBlock:v9];
}

void ___UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [*(a1 + 32) supplementaryFrameWithKind:*(a1 + 40) index:a2];
  if (v4)
  {
    v16 = v4;
    v5 = [(_UICollectionPreferredSizes *)*(a1 + 48) objectAtIndexedSubscript:v2];
    if (!v5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_5"}];
      [v12 handleFailureInFunction:v13 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4076 description:{@"Invalid parameter not satisfying: %@", @"supplementaryPreferredSize"}];
    }

    v6 = v16[6];
    if ((v6 - 2) >= 2)
    {
      if (v6 == 1)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_5"}];
        [v10 handleFailureInFunction:v11 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4094 description:@"Unexpected supplementary kind (global) while rebasing. Please file a bug on UICollectionView."];
LABEL_16:

        goto LABEL_17;
      }

      if (v6 != 4)
      {
LABEL_17:

        v4 = v16;
        goto LABEL_18;
      }

      v7 = [MEMORY[0x1E696AC88] indexPathForItem:v2 inSection:*(a1 + 80)];
      v8 = [*(a1 + 56) finalIndexPathForInitialIndexPath:v7];
      v9 = v8;
      if (v8)
      {
        v2 = [v8 item];
        [v9 section];
      }

      else
      {
        v2 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = (*(*(a1 + 64) + 16))();
      if (!v10)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSNumber *, _UICollectionPreferredSizes *> *_UICollectionLayoutCompositionalSolverRebasedPreferredSizesForSolutions(NSArray<_UICollectionCompositionalSolverPreferredSizesRebaseInfo *> *const __strong, _UICollectionCompositionalLayoutSolverUpdate *const __strong, BOOL)_block_invoke_5"}];
        [v14 handleFailureInFunction:v15 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:4099 description:{@"Invalid parameter not satisfying: %@", @"finalSectionPreferredSizes"}];
      }

      v11 = [(_UICollectionPreferredSizes *)v10 objectForKeyedSubscript:?];
      [(_UICollectionPreferredSizes *)v11 setObject:v5 atIndexedSubscript:v2];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_18:
}

@end