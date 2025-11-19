@interface TSUColor(TSDMixingAdditions)
- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:;
- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions;
@end

@implementation TSUColor(TSDMixingAdditions)

- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions
{
  objc_opt_class();
  if ([a1 isEqual:TSUCheckedDynamicCast()])
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:
{
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();

  return [a1 blendedColorWithFraction:v4 ofColor:a2];
}

@end