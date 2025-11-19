@interface WFFloatingButtonConfiguration
- (WFFloatingButtonConfiguration)init;
@end

@implementation WFFloatingButtonConfiguration

- (WFFloatingButtonConfiguration)init
{
  v7.receiver = self;
  v7.super_class = WFFloatingButtonConfiguration;
  v2 = [(WFFloatingViewConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(WFFloatingViewConfiguration *)v2 setShadowOffset:0.0, 3.0];
    LODWORD(v4) = 1045220557;
    [(WFFloatingViewConfiguration *)v3 setShadowOpacity:v4];
    [(WFFloatingViewConfiguration *)v3 setShadowRadius:5.0];
    [(WFFloatingViewConfiguration *)v3 setCornerRadius:6.0];
    v5 = v3;
  }

  return v3;
}

@end