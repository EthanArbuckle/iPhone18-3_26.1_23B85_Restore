@interface SFPowerSourceLEDInfo
- (BOOL)isEqual:(id)equal;
- (SFPowerSourceLEDInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPowerSourceLEDInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  LEDState = self->_LEDState;
  v7 = coderCopy;
  if (LEDState)
  {
    [coderCopy encodeInteger:LEDState forKey:@"state"];
    coderCopy = v7;
  }

  LEDColor = self->_LEDColor;
  if (LEDColor)
  {
    [v7 encodeInteger:LEDColor forKey:@"color"];
    coderCopy = v7;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    LEDState = self->_LEDState;
    if (LEDState == [v5 LEDState])
    {
      LEDColor = self->_LEDColor;
      v8 = LEDColor == [v5 LEDColor];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  LEDState = self->_LEDState;
  if (LEDState <= 2)
  {
    v5 = off_1E788D9E0[LEDState];
  }

  v11 = self->_LEDState;
  NSAppendPrintF();
  v6 = v3;

  LEDColor = self->_LEDColor;
  if (LEDColor <= 4)
  {
    v8 = off_1E788D9F8[LEDColor];
  }

  v12 = self->_LEDColor;
  NSAppendPrintF();
  v9 = v6;

  return v6;
}

- (SFPowerSourceLEDInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SFPowerSourceLEDInfo;
  v5 = [(SFPowerSourceLEDInfo *)&v8 init];
  if (v5)
  {
    v9 = 0;
    if (OUTLINED_FUNCTION_0_10())
    {
      v5->_LEDState = v9;
    }

    v9 = 0;
    if (OUTLINED_FUNCTION_0_10())
    {
      v5->_LEDColor = v9;
    }

    v6 = v5;
  }

  return v5;
}

@end