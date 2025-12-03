@interface PKApplePayUserEducationDemoProvider
+ (id)viewControllerWithSource:(unint64_t)source;
@end

@implementation PKApplePayUserEducationDemoProvider

+ (id)viewControllerWithSource:(unint64_t)source
{
  v3 = [[PKApplePayUserEducationInstructionsViewController alloc] initWithSource:source];

  return v3;
}

@end