@interface UIView
@end

@implementation UIView

uint64_t __50__UIView_PGAdditions__PG_performWithoutAnimation___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] activate];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

uint64_t __61__UIView_PGAdditions__PG_performWithoutRetargetingAnimation___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] activate];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

uint64_t __85__UIView_PGAdditions__PG_animateUsingDefaultTimingWithOptions_animations_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] activate];
  [MEMORY[0x1E6979518] begin];
  v2 = MEMORY[0x1E6979518];
  [*(a1 + 40) _currentAnimationDuration];
  [v2 setAnimationDuration:?];
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x1E6979518];

  return [v3 commit];
}

uint64_t __105__UIView_PGAdditions__PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity_animations_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] activate];
  [MEMORY[0x1E6979518] begin];
  v2 = MEMORY[0x1E6979518];
  [*(a1 + 40) _currentAnimationDuration];
  [v2 setAnimationDuration:?];
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x1E6979518];

  return [v3 commit];
}

@end