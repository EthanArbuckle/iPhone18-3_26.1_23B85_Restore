@interface WFAlert(UIKitAdditions)
- (double)contentViewPadding;
- (void)addKeyCommand:()UIKitAdditions;
- (void)setContentViewPadding:()UIKitAdditions;
@end

@implementation WFAlert(UIKitAdditions)

- (void)addKeyCommand:()UIKitAdditions
{
  v4 = a3;
  keyCommands = [self keyCommands];
  v6 = keyCommands;
  v7 = MEMORY[0x277CBEBF8];
  if (keyCommands)
  {
    v7 = keyCommands;
  }

  v8 = v7;

  value = [v8 arrayByAddingObject:v4];

  objc_setAssociatedObject(self, sel_keyCommands, value, 1);
}

- (double)contentViewPadding
{
  v1 = objc_getAssociatedObject(self, sel_contentViewPadding);
  [v1 UIEdgeInsetsValue];
  v3 = v2;

  return v3;
}

- (void)setContentViewPadding:()UIKitAdditions
{
  v2 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:?];
  objc_setAssociatedObject(self, sel_contentViewPadding, v2, 1);
}

@end