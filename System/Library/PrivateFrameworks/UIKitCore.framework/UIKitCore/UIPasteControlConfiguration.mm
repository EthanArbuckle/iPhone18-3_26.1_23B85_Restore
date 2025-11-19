@interface UIPasteControlConfiguration
- (UIPasteControlConfiguration)init;
- (UIPasteControlConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIPasteControlConfiguration

- (UIPasteControlConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UIPasteControlConfiguration;
  result = [(UIPasteControlConfiguration *)&v3 init];
  if (result)
  {
    result->_cornerStyle = 2;
    result->_imagePlacement = 2;
  }

  return result;
}

- (UIPasteControlConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIPasteControlConfiguration;
  v5 = [(UIPasteControlConfiguration *)&v12 init];
  if (v5)
  {
    v5->_displayMode = [v4 decodeIntegerForKey:@"UIPasteControlConfigurationDisplayMode"];
    v5->_cornerStyle = [v4 decodeIntegerForKey:@"UIPasteControlConfigurationCornerStyle"];
    [v4 decodeFloatForKey:@"UIPasteControlConfigurationCornerRadius"];
    v5->_cornerRadius = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIPasteControlConfigurationBaseForegroundColor"];
    baseForegroundColor = v5->_baseForegroundColor;
    v5->_baseForegroundColor = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIPasteControlConfigurationBaseBackgroundColor"];
    baseBackgroundColor = v5->_baseBackgroundColor;
    v5->_baseBackgroundColor = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  displayMode = self->_displayMode;
  v6 = a3;
  [v6 encodeInteger:displayMode forKey:@"UIPasteControlConfigurationDisplayMode"];
  [v6 encodeInteger:self->_cornerStyle forKey:@"UIPasteControlConfigurationCornerStyle"];
  cornerRadius = self->_cornerRadius;
  *&cornerRadius = cornerRadius;
  [v6 encodeFloat:@"UIPasteControlConfigurationCornerRadius" forKey:cornerRadius];
  [v6 encodeObject:self->_baseForegroundColor forKey:@"UIPasteControlConfigurationBaseForegroundColor"];
  [v6 encodeObject:self->_baseBackgroundColor forKey:@"UIPasteControlConfigurationBaseBackgroundColor"];
}

@end