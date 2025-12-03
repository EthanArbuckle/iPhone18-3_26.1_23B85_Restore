@interface _UICollectionLayoutSectionSolver
+ (id)solverWithLayoutSection:(uint64_t)section layoutAxis:;
@end

@implementation _UICollectionLayoutSectionSolver

+ (id)solverWithLayoutSection:(uint64_t)section layoutAxis:
{
  objc_opt_self();
  if ([a2 _isListSolverCompatibleForLayoutAxis:section])
  {
    v5 = [[_UICollectionLayoutSectionListSolver alloc] initWithLayoutSection:a2];
  }

  else if ([a2 _containsEstimatedSizeElement])
  {
    v5 = [[_UICollectionLayoutSectionEstimatedSolver alloc] initWithLayoutSection:a2];
  }

  else
  {
    v5 = [[_UICollectionLayoutSectionFixedSolver alloc] initWithLayoutSection:a2];
  }

  return v5;
}

@end