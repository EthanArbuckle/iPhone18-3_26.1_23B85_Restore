@interface UITableViewCell(PKUIUtilities)
- (double)pkui_effectiveLayoutMargins;
@end

@implementation UITableViewCell(PKUIUtilities)

- (double)pkui_effectiveLayoutMargins
{
  [self _shouldReverseLayoutDirection];
  contentView = [self contentView];
  [self separatorInset];
  [contentView layoutMargins];
  v4 = v3;

  return v4;
}

@end