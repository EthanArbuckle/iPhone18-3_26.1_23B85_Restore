@interface SBHTintedIconImageStyleConfiguration
- (SBHTintedIconImageStyleConfiguration)initWithConfigurationType:(int64_t)a3 variant:(int64_t)a4 tintColor:(id)a5;
@end

@implementation SBHTintedIconImageStyleConfiguration

- (SBHTintedIconImageStyleConfiguration)initWithConfigurationType:(int64_t)a3 variant:(int64_t)a4 tintColor:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = SBHTintedIconImageStyleConfiguration;
  v9 = [(SBHIconImageStyleConfiguration *)&v13 initWithConfigurationType:a3 variant:a4 tintColor:v8];
  if (v9)
  {
    v10 = [v8 copy];
    tintColor = v9->_tintColor;
    v9->_tintColor = v10;
  }

  return v9;
}

@end