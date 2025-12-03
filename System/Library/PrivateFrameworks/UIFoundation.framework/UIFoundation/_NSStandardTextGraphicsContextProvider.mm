@interface _NSStandardTextGraphicsContextProvider
+ (Class)colorClassForApplicationFrameworkContext:(int64_t)context;
@end

@implementation _NSStandardTextGraphicsContextProvider

+ (Class)colorClassForApplicationFrameworkContext:(int64_t)context
{
  v3 = getUIColorClass;
  if (context != 1)
  {
    v3 = &getNSColorClass_1;
  }

  return (*v3)();
}

@end