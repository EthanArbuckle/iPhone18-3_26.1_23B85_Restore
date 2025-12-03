@interface _UIEmptyEffect
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _UIEmptyEffect

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end