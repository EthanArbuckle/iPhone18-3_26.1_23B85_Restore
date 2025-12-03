@interface _UIAnimatingLabelLayer
+ (BOOL)needsDisplayForKey:(id)key;
@end

@implementation _UIAnimatingLabelLayer

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"variantWeight"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____UIAnimatingLabelLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, keyCopy);
  }

  return v5;
}

@end