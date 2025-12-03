@interface NSParagraphStyle(UIKitAdditions)
- (uint64_t)_ui_resolvedTextAlignment;
- (uint64_t)_ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:()UIKitAdditions;
- (uint64_t)_ui_resolvedWritingDirection;
- (uint64_t)_ui_resolvedWritingDirectionForUserInterfaceLayoutDirection:()UIKitAdditions;
@end

@implementation NSParagraphStyle(UIKitAdditions)

- (uint64_t)_ui_resolvedTextAlignment
{
  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];

  return [self _ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:userInterfaceLayoutDirection];
}

- (uint64_t)_ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:()UIKitAdditions
{
  result = [self alignment];
  if ((result - 3) <= 1)
  {
    baseWritingDirection = [self baseWritingDirection];
    v7 = a3 != 0;
    if (baseWritingDirection != -1)
    {
      v7 = baseWritingDirection == 1;
    }

    if (v7)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_ui_resolvedWritingDirection
{
  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];

  return [self _ui_resolvedWritingDirectionForUserInterfaceLayoutDirection:userInterfaceLayoutDirection];
}

- (uint64_t)_ui_resolvedWritingDirectionForUserInterfaceLayoutDirection:()UIKitAdditions
{
  result = [self baseWritingDirection];
  if (result == -1)
  {
    return a3 != 0;
  }

  return result;
}

@end