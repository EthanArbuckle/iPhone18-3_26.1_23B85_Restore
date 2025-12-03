@interface _TVTemplateFeatureContextHandle
+ (id)handleWithContext:(id)context;
- (BOOL)isEqual:(id)equal;
@end

@implementation _TVTemplateFeatureContextHandle

+ (id)handleWithContext:(id)context
{
  v4 = objc_alloc_init(self);
  v4[1] = context;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_context;

  return v5;
}

@end