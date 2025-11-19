@interface SBXXTagTouchForTypingMenu
@end

@implementation SBXXTagTouchForTypingMenu

void ___SBXXTagTouchForTypingMenu_block_invoke(uint64_t a1)
{
  v2 = +[SBSystemGestureManager mainDisplayManager];
  [v2 ignoreScreenEdgeTouchWithIdentifier:*(a1 + 32)];
}

@end