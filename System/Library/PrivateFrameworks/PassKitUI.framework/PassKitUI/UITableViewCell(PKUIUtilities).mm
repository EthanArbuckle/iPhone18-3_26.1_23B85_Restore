@interface UITableViewCell(PKUIUtilities)
- (double)pkui_effectiveLayoutMargins;
@end

@implementation UITableViewCell(PKUIUtilities)

- (double)pkui_effectiveLayoutMargins
{
  [a1 _shouldReverseLayoutDirection];
  v2 = [a1 contentView];
  [a1 separatorInset];
  [v2 layoutMargins];
  v4 = v3;

  return v4;
}

@end