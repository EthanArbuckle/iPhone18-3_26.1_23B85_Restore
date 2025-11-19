@interface _UILegacyModalViewControllerTransition
+ (id)transitionWithStyle:(int64_t)a3;
@end

@implementation _UILegacyModalViewControllerTransition

+ (id)transitionWithStyle:(int64_t)a3
{
  v4 = [[a1 alloc] _init];
  v4[1] = a3;

  return v4;
}

@end