@interface UIButton(SBUIAdditions)
- (void)sbui_removePointerInteraction;
@end

@implementation UIButton(SBUIAdditions)

- (void)sbui_removePointerInteraction
{
  interactions = [self interactions];
  v2 = [interactions indexesOfObjectsPassingTest:&__block_literal_global_22];
  if ([v2 count])
  {
    v3 = [interactions mutableCopy];
    [v3 removeObjectsAtIndexes:v2];
    [self setInteractions:v3];
  }
}

@end