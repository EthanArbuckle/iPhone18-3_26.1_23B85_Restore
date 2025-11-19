@interface _NSStandardTextGraphicsContextProvider
+ (Class)colorClassForApplicationFrameworkContext:(int64_t)a3;
@end

@implementation _NSStandardTextGraphicsContextProvider

+ (Class)colorClassForApplicationFrameworkContext:(int64_t)a3
{
  v3 = getUIColorClass;
  if (a3 != 1)
  {
    v3 = &getNSColorClass_1;
  }

  return (*v3)();
}

@end