@interface UITableView(Tea)
- (void)deferWhenTouchingWithBlock:()Tea;
@end

@implementation UITableView(Tea)

- (void)deferWhenTouchingWithBlock:()Tea
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 _deferWhenTouchingWithBlock:v4];
  }

  else
  {
    v4[2]();
  }
}

@end