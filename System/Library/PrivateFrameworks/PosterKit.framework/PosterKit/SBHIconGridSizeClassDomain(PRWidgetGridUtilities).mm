@interface SBHIconGridSizeClassDomain(PRWidgetGridUtilities)
+ (id)pr_widgetDomain;
@end

@implementation SBHIconGridSizeClassDomain(PRWidgetGridUtilities)

+ (id)pr_widgetDomain
{
  if (pr_widgetDomain_onceToken != -1)
  {
    +[SBHIconGridSizeClassDomain(PRWidgetGridUtilities) pr_widgetDomain];
  }

  v1 = pr_widgetDomain_domain;

  return v1;
}

@end