@interface UIView(UIPrintFormatter)
- (id)viewPrintFormatter;
@end

@implementation UIView(UIPrintFormatter)

- (id)viewPrintFormatter
{
  v1 = [objc_alloc(objc_msgSend(self "_printFormatterClass"))];

  return v1;
}

@end