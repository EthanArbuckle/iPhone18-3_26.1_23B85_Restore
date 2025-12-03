@interface NSObject(ICSWriter)
- (id)_ICSStringWithOptions:()ICSWriter;
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
@end

@implementation NSObject(ICSWriter)

- (id)_ICSStringWithOptions:()ICSWriter
{
  v5 = objc_alloc_init(ICSStringWriter);
  [self _ICSStringWithOptions:a3 appendingToString:v5];
  result = [(ICSStringWriter *)v5 result];

  return result;
}

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [self description];
  NSLog(&cfstr_WarningIcsstri.isa, v6, v7);

  v8 = [self description];
  [v5 appendString:v8];
}

@end