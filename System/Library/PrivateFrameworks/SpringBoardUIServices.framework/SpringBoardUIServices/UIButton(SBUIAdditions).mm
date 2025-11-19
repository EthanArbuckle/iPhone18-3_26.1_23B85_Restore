@interface UIButton(SBUIAdditions)
- (void)sbui_removePointerInteraction;
@end

@implementation UIButton(SBUIAdditions)

- (void)sbui_removePointerInteraction
{
  v4 = [a1 interactions];
  v2 = [v4 indexesOfObjectsPassingTest:&__block_literal_global_22];
  if ([v2 count])
  {
    v3 = [v4 mutableCopy];
    [v3 removeObjectsAtIndexes:v2];
    [a1 setInteractions:v3];
  }
}

@end