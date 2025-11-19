@interface _TVTemplateFeatureContextHandle
+ (id)handleWithContext:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation _TVTemplateFeatureContextHandle

+ (id)handleWithContext:(id)a3
{
  v4 = objc_alloc_init(a1);
  v4[1] = a3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_context;

  return v5;
}

@end