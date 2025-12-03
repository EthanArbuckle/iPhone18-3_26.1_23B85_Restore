@interface WFPlatformColorDefinition
- (WFPlatformColorDefinition)initWithDarkMode:(BOOL)mode highContrast:(BOOL)contrast red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation WFPlatformColorDefinition

- (WFPlatformColorDefinition)initWithDarkMode:(BOOL)mode highContrast:(BOOL)contrast red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v18.receiver = self;
  v18.super_class = WFPlatformColorDefinition;
  v14 = [(WFPlatformColorDefinition *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_isDarkMode = mode;
    v14->_isHighContrast = contrast;
    v14->_red = red;
    v14->_green = green;
    v14->_blue = blue;
    v14->_alpha = alpha;
    v16 = v14;
  }

  return v15;
}

@end