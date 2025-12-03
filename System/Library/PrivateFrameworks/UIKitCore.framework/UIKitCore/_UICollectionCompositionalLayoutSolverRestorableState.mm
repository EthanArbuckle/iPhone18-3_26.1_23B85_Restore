@interface _UICollectionCompositionalLayoutSolverRestorableState
- (void)applyToSolver:(id)solver;
@end

@implementation _UICollectionCompositionalLayoutSolverRestorableState

- (void)applyToSolver:(id)solver
{
  if (solver)
  {
    v5 = *(solver + 11);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if ((dyld_program_sdk_at_least() & 1) != 0 || [v7 isEqualToIndexSet:self->_orthogonalSectionIndexes])
  {
    if (solver)
    {
      v6 = *(solver + 23);
    }

    else
    {
      v6 = 0;
    }

    [(_UICollectionCompositionalLayoutSolver *)solver _restoreStateFromBookmarkSnapshots:v6 bookmarks:0 update:?];
  }
}

@end