@interface _UICoreUIEffect
+ (id)coreUIEffectForBlurStyle:(int64_t)style;
@end

@implementation _UICoreUIEffect

+ (id)coreUIEffectForBlurStyle:(int64_t)style
{
  v3 = [self _coreUIImplementationForStyle:style];
  if (v3)
  {
    v4 = [(UIBlurEffect *)[_UICoreUIEffect alloc] _initWithImplementation:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end