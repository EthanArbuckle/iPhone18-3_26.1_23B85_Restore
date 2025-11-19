@interface _UIKeyShortcutHUDPadCompactMetrics
- (double)menuBaseVerticalContentInset;
@end

@implementation _UIKeyShortcutHUDPadCompactMetrics

- (double)menuBaseVerticalContentInset
{
  [(_UIKeyShortcutHUDPadCompactMetrics *)self standardMenuPadding];
  v4 = v3;
  [(_UIKeyShortcutHUDPadCompactMetrics *)self menuCellHorizontalContentMargin];
  return v4 - v5;
}

@end