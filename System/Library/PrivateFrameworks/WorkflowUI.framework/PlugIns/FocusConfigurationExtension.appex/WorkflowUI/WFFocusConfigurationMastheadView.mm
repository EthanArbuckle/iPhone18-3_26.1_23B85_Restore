@interface WFFocusConfigurationMastheadView
- (NSString)subtitle;
- (NSString)title;
- (WFFocusConfigurationMastheadView)initWithBundleIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle;
- (WFFocusConfigurationMastheadView)initWithSymbolName:(id)name color:(id)color title:(id)title subtitle:(id)subtitle;
@end

@implementation WFFocusConfigurationMastheadView

- (NSString)title
{
  FocusConfigurationMastheadView.title.getter();
  v2 = sub_10001DD04();

  return v2;
}

- (NSString)subtitle
{
  FocusConfigurationMastheadView.subtitle.getter();
  if (v2)
  {
    v3 = sub_10001DD04();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WFFocusConfigurationMastheadView)initWithBundleIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle
{
  v6 = sub_10001DD14();
  v8 = v7;
  v9 = sub_10001DD14();
  v11 = v10;
  if (subtitle)
  {
    v12 = sub_10001DD14();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return FocusConfigurationMastheadView.init(bundleIdentifier:title:subtitle:)(v6, v8, v9, v11, v12, v14);
}

- (WFFocusConfigurationMastheadView)initWithSymbolName:(id)name color:(id)color title:(id)title subtitle:(id)subtitle
{
  v8 = sub_10001DD14();
  v10 = v9;
  v11 = sub_10001DD14();
  v13 = v12;
  if (subtitle)
  {
    subtitle = sub_10001DD14();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return FocusConfigurationMastheadView.init(symbolName:color:title:subtitle:)(v8, v10, color, v11, v13, subtitle, v15);
}

@end