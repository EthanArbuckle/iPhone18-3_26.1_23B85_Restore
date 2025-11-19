@interface WFFloatingViewConfiguration
+ (id)bannerImageConfiguration;
+ (id)materialWorkflowConfiguration;
+ (id)paletteColorConfiguration;
+ (id)widgetWorkflowConfiguration;
- (CGSize)shadowOffset;
- (WFFloatingViewConfiguration)init;
@end

@implementation WFFloatingViewConfiguration

- (WFFloatingViewConfiguration)init
{
  v6.receiver = self;
  v6.super_class = WFFloatingViewConfiguration;
  v2 = [(WFFloatingViewConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_scalingFactor = 0.970000029;
    v4 = v2;
  }

  return v3;
}

+ (id)materialWorkflowConfiguration
{
  v2 = objc_opt_new();
  v3 = _UISolariumEnabled();
  v4 = 19.0;
  if (v3)
  {
    v4 = 25.0;
  }

  [v2 setCornerRadius:v4];
  [v2 setShadowOpacity:0.0];
  [v2 setGradientDirection:4];

  return v2;
}

+ (id)paletteColorConfiguration
{
  v2 = objc_opt_new();
  [v2 setUsePillCornerRadius:1];
  [v2 setColorizesShadow:1];
  [v2 setShadowOffset:{0.0, 2.0}];
  LODWORD(v3) = 1036831949;
  [v2 setShadowOpacity:v3];
  [v2 setShadowRadius:5.0];
  [v2 setGradientDirection:4];

  return v2;
}

+ (id)bannerImageConfiguration
{
  v2 = objc_opt_new();
  [v2 setCornerRadius:13.0];
  [v2 setShadowOpacity:0.0];

  return v2;
}

+ (id)widgetWorkflowConfiguration
{
  v2 = objc_opt_new();
  [v2 setCornerRadius:9.0];
  [v2 setShadowOpacity:0.0];
  [v2 setGradientDirection:4];

  return v2;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end