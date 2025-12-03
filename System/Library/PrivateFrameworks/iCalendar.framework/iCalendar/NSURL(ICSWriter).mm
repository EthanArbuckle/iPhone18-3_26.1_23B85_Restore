@interface NSURL(ICSWriter)
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
@end

@implementation NSURL(ICSWriter)

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v6 = a4;
  absoluteString = [self absoluteString];
  iCalendarAppendStringToStringWithOptions(absoluteString, v6, a3);
}

@end