@interface _UIEmptyEffect
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIEmptyEffect

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end