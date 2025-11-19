@interface UICollectionLayoutSectionFixedSolver
@end

@implementation UICollectionLayoutSectionFixedSolver

uint64_t __82___UICollectionLayoutSectionFixedSolver__queryFramesIntersectingRect_frameOffset___block_invoke(uint64_t a1, double a2)
{
  if (a2 >= 0.0)
  {
    return (a2 / *(a1 + 32));
  }

  else
  {
    return 0;
  }
}

@end