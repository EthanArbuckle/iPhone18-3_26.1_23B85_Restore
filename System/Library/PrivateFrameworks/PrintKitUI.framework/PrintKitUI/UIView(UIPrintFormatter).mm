@interface UIView(UIPrintFormatter)
- (id)viewPrintFormatter;
@end

@implementation UIView(UIPrintFormatter)

- (id)viewPrintFormatter
{
  v1 = [objc_alloc(objc_msgSend(a1 "_printFormatterClass"))];

  return v1;
}

@end