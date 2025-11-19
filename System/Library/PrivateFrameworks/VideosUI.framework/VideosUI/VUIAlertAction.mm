@interface VUIAlertAction
+ (id)vui_actionWithTitle:(id)a3 titleImage:(id)a4 style:(int64_t)a5 metrics:(id)a6 accessibilityIdentifier:(id)a7 handler:(id)a8;
@end

@implementation VUIAlertAction

+ (id)vui_actionWithTitle:(id)a3 titleImage:(id)a4 style:(int64_t)a5 metrics:(id)a6 accessibilityIdentifier:(id)a7 handler:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(VUIAlertAction);
  [(VUIAlertAction *)v18 setTitle:v17];

  [(VUIAlertAction *)v18 setTitleImage:v16];
  [(VUIAlertAction *)v18 setStyle:a5];
  [(VUIAlertAction *)v18 setHandler:v13];

  [(VUIAlertAction *)v18 setMetrics:v15];
  [(VUIAlertAction *)v18 setAccessibilityIdentifier:v14];

  return v18;
}

@end