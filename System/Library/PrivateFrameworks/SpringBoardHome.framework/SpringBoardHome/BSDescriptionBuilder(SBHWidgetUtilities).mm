@interface BSDescriptionBuilder(SBHWidgetUtilities)
- (void)sbh_appendDescriptionsForViewControllers:()SBHWidgetUtilities;
@end

@implementation BSDescriptionBuilder(SBHWidgetUtilities)

- (void)sbh_appendDescriptionsForViewControllers:()SBHWidgetUtilities
{
  v4 = a3;
  v5 = SBHWidgetViewControllerDescriptionsForSysdiagnose(v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__BSDescriptionBuilder_SBHWidgetUtilities__sbh_appendDescriptionsForViewControllers___block_invoke;
  v9[3] = &unk_1E808C028;
  v10 = v5;
  v6 = v5;
  v7 = [v4 bs_map:v9];

  [self appendArraySection:v7 withName:@"widgetViewControllers" skipIfEmpty:0];
  return self;
}

@end