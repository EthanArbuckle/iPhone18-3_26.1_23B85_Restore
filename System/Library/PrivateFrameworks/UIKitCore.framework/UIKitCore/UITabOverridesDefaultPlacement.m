@interface UITabOverridesDefaultPlacement
@end

@implementation UITabOverridesDefaultPlacement

void ___UITabOverridesDefaultPlacement_block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 arrayForKey:@"UITabOverrideDefaultPlacements"];
  v1 = qword_1ED49D638;
  qword_1ED49D638 = v0;
}

@end