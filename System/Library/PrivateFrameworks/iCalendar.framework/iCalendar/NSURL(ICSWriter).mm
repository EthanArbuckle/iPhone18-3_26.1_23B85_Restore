@interface NSURL(ICSWriter)
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
@end

@implementation NSURL(ICSWriter)

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v6 = a4;
  v7 = [a1 absoluteString];
  iCalendarAppendStringToStringWithOptions(v7, v6, a3);
}

@end