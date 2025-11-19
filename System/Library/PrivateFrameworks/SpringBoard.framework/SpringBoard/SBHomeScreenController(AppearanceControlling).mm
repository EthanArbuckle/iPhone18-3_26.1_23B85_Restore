@interface SBHomeScreenController(AppearanceControlling)
@end

@implementation SBHomeScreenController(AppearanceControlling)

- (void)beginRequiringContentForReason:()AppearanceControlling options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenController+AppearanceControlling.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)endRequiringContentForReason:()AppearanceControlling .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenController+AppearanceControlling.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end