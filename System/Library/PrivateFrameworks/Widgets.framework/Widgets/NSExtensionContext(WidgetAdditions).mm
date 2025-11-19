@interface NSExtensionContext(WidgetAdditions)
- (double)widgetMaximumSizeForDisplayMode:()WidgetAdditions;
- (uint64_t)widgetActiveDisplayMode;
- (uint64_t)widgetLargestAvailableDisplayMode;
- (void)setWidgetLargestAvailableDisplayMode:()WidgetAdditions;
@end

@implementation NSExtensionContext(WidgetAdditions)

- (uint64_t)widgetLargestAvailableDisplayMode
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSExtension+Widgets.m" lineNumber:32 description:@"Intended to be implemented by concrete subclasses"];

  return 0;
}

- (void)setWidgetLargestAvailableDisplayMode:()WidgetAdditions
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSExtension+Widgets.m" lineNumber:38 description:@"Intended to be implemented by concrete subclasses"];
}

- (uint64_t)widgetActiveDisplayMode
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSExtension+Widgets.m" lineNumber:42 description:@"Intended to be implemented by concrete subclasses"];

  return 0;
}

- (double)widgetMaximumSizeForDisplayMode:()WidgetAdditions
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSExtension+Widgets.m" lineNumber:48 description:@"Intended to be implemented by concrete subclasses"];

  return *MEMORY[0x277CBF3A8];
}

@end