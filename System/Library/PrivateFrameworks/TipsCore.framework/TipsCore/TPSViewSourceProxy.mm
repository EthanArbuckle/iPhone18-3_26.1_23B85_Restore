@interface TPSViewSourceProxy
+ (id)proxyWithViewMethod:(id)method;
- (BOOL)isEqual:(id)equal;
@end

@implementation TPSViewSourceProxy

+ (id)proxyWithViewMethod:(id)method
{
  methodCopy = method;
  v4 = objc_alloc_init(TPSViewSourceProxy);
  [(TPSViewSourceProxy *)v4 setViewMethod:methodCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end