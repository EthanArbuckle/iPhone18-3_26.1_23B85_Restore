@interface _UICollectionCompositionalLayoutSolverRestorableState
- (void)applyToSolver:(id)a3;
@end

@implementation _UICollectionCompositionalLayoutSolverRestorableState

- (void)applyToSolver:(id)a3
{
  if (a3)
  {
    v5 = *(a3 + 11);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if ((dyld_program_sdk_at_least() & 1) != 0 || [v7 isEqualToIndexSet:self->_orthogonalSectionIndexes])
  {
    if (a3)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = 0;
    }

    [(_UICollectionCompositionalLayoutSolver *)a3 _restoreStateFromBookmarkSnapshots:v6 bookmarks:0 update:?];
  }
}

@end