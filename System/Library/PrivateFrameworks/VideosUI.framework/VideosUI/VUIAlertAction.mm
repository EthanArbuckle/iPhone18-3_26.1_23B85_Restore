@interface VUIAlertAction
+ (id)vui_actionWithTitle:(id)title titleImage:(id)image style:(int64_t)style metrics:(id)metrics accessibilityIdentifier:(id)identifier handler:(id)handler;
@end

@implementation VUIAlertAction

+ (id)vui_actionWithTitle:(id)title titleImage:(id)image style:(int64_t)style metrics:(id)metrics accessibilityIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  metricsCopy = metrics;
  imageCopy = image;
  titleCopy = title;
  v18 = objc_alloc_init(VUIAlertAction);
  [(VUIAlertAction *)v18 setTitle:titleCopy];

  [(VUIAlertAction *)v18 setTitleImage:imageCopy];
  [(VUIAlertAction *)v18 setStyle:style];
  [(VUIAlertAction *)v18 setHandler:handlerCopy];

  [(VUIAlertAction *)v18 setMetrics:metricsCopy];
  [(VUIAlertAction *)v18 setAccessibilityIdentifier:identifierCopy];

  return v18;
}

@end