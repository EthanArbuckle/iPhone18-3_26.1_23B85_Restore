@interface CRConstant
+ (id)constant;
- (BOOL)isEqual:(id)equal;
@end

@implementation CRConstant

+ (id)constant
{
  v2 = objc_alloc_init(CRConstant);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end