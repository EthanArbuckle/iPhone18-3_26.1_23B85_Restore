@interface _UICoreUIEffect
+ (id)coreUIEffectForBlurStyle:(int64_t)a3;
@end

@implementation _UICoreUIEffect

+ (id)coreUIEffectForBlurStyle:(int64_t)a3
{
  v3 = [a1 _coreUIImplementationForStyle:a3];
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