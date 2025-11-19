@interface TPSViewSourceProxy
+ (id)proxyWithViewMethod:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation TPSViewSourceProxy

+ (id)proxyWithViewMethod:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TPSViewSourceProxy);
  [(TPSViewSourceProxy *)v4 setViewMethod:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end