@interface NSObject(ICSWriter)
- (id)_ICSStringWithOptions:()ICSWriter;
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
@end

@implementation NSObject(ICSWriter)

- (id)_ICSStringWithOptions:()ICSWriter
{
  v5 = objc_alloc_init(ICSStringWriter);
  [a1 _ICSStringWithOptions:a3 appendingToString:v5];
  v6 = [(ICSStringWriter *)v5 result];

  return v6;
}

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [a1 description];
  NSLog(&cfstr_WarningIcsstri.isa, v6, v7);

  v8 = [a1 description];
  [v5 appendString:v8];
}

@end