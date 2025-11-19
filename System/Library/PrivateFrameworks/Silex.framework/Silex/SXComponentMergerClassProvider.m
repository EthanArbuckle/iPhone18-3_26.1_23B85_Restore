@interface SXComponentMergerClassProvider
- (Class)classForObject:(id)a3 specVersion:(id)a4;
@end

@implementation SXComponentMergerClassProvider

- (Class)classForObject:(id)a3 specVersion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SXJSONObjectComponentSupport shared];
  v8 = [v7 objectValueClassBlock];

  v9 = objc_opt_class();
  v10 = (v8)[2](v8, v6, v9, v5);

  return v10;
}

@end