@interface _UIAnimatingLabelLayer
+ (BOOL)needsDisplayForKey:(id)a3;
@end

@implementation _UIAnimatingLabelLayer

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"variantWeight"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS____UIAnimatingLabelLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, v4);
  }

  return v5;
}

@end