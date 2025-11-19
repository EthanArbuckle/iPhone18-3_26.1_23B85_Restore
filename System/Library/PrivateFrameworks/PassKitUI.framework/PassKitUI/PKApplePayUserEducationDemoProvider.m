@interface PKApplePayUserEducationDemoProvider
+ (id)viewControllerWithSource:(unint64_t)a3;
@end

@implementation PKApplePayUserEducationDemoProvider

+ (id)viewControllerWithSource:(unint64_t)a3
{
  v3 = [[PKApplePayUserEducationInstructionsViewController alloc] initWithSource:a3];

  return v3;
}

@end