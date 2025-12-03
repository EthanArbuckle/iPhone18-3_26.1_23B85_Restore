@interface SBHTintedIconImageStyleConfiguration
- (SBHTintedIconImageStyleConfiguration)initWithConfigurationType:(int64_t)type variant:(int64_t)variant tintColor:(id)color;
@end

@implementation SBHTintedIconImageStyleConfiguration

- (SBHTintedIconImageStyleConfiguration)initWithConfigurationType:(int64_t)type variant:(int64_t)variant tintColor:(id)color
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = SBHTintedIconImageStyleConfiguration;
  v9 = [(SBHIconImageStyleConfiguration *)&v13 initWithConfigurationType:type variant:variant tintColor:colorCopy];
  if (v9)
  {
    v10 = [colorCopy copy];
    tintColor = v9->_tintColor;
    v9->_tintColor = v10;
  }

  return v9;
}

@end