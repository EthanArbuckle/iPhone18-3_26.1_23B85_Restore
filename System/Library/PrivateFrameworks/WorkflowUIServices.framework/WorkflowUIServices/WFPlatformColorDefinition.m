@interface WFPlatformColorDefinition
- (WFPlatformColorDefinition)initWithDarkMode:(BOOL)a3 highContrast:(BOOL)a4 red:(double)a5 green:(double)a6 blue:(double)a7 alpha:(double)a8;
@end

@implementation WFPlatformColorDefinition

- (WFPlatformColorDefinition)initWithDarkMode:(BOOL)a3 highContrast:(BOOL)a4 red:(double)a5 green:(double)a6 blue:(double)a7 alpha:(double)a8
{
  v18.receiver = self;
  v18.super_class = WFPlatformColorDefinition;
  v14 = [(WFPlatformColorDefinition *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_isDarkMode = a3;
    v14->_isHighContrast = a4;
    v14->_red = a5;
    v14->_green = a6;
    v14->_blue = a7;
    v14->_alpha = a8;
    v16 = v14;
  }

  return v15;
}

@end