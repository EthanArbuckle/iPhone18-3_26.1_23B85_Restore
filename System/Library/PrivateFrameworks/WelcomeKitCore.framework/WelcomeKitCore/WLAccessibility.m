@interface WLAccessibility
- (id)preferredContentSizeCategoryName;
- (void)reset;
@end

@implementation WLAccessibility

- (void)reset
{
  _AXSInvertColorsSetEnabled();

  _AXSSetPreferredContentSizeCategoryName();
}

- (id)preferredContentSizeCategoryName
{
  v2 = _AXSCopyPreferredContentSizeCategoryName();

  return v2;
}

@end