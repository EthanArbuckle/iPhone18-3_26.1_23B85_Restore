@interface _UILegacyModalViewControllerTransition
+ (id)transitionWithStyle:(int64_t)style;
@end

@implementation _UILegacyModalViewControllerTransition

+ (id)transitionWithStyle:(int64_t)style
{
  _init = [[self alloc] _init];
  _init[1] = style;

  return _init;
}

@end