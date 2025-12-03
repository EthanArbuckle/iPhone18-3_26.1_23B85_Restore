@interface UIPasteControlConfiguration
- (UIPasteControlConfiguration)init;
- (UIPasteControlConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (UIPasteControlConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UIPasteControlConfiguration;
  v5 = [(UIPasteControlConfiguration *)&v12 init];
  if (v5)
  {
    v5->_displayMode = [coderCopy decodeIntegerForKey:@"UIPasteControlConfigurationDisplayMode"];
    v5->_cornerStyle = [coderCopy decodeIntegerForKey:@"UIPasteControlConfigurationCornerStyle"];
    [coderCopy decodeFloatForKey:@"UIPasteControlConfigurationCornerRadius"];
    v5->_cornerRadius = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIPasteControlConfigurationBaseForegroundColor"];
    baseForegroundColor = v5->_baseForegroundColor;
    v5->_baseForegroundColor = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIPasteControlConfigurationBaseBackgroundColor"];
    baseBackgroundColor = v5->_baseBackgroundColor;
    v5->_baseBackgroundColor = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  displayMode = self->_displayMode;
  coderCopy = coder;
  [coderCopy encodeInteger:displayMode forKey:@"UIPasteControlConfigurationDisplayMode"];
  [coderCopy encodeInteger:self->_cornerStyle forKey:@"UIPasteControlConfigurationCornerStyle"];
  cornerRadius = self->_cornerRadius;
  *&cornerRadius = cornerRadius;
  [coderCopy encodeFloat:@"UIPasteControlConfigurationCornerRadius" forKey:cornerRadius];
  [coderCopy encodeObject:self->_baseForegroundColor forKey:@"UIPasteControlConfigurationBaseForegroundColor"];
  [coderCopy encodeObject:self->_baseBackgroundColor forKey:@"UIPasteControlConfigurationBaseBackgroundColor"];
}

@end