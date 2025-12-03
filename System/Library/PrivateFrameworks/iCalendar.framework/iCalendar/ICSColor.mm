@interface ICSColor
+ (BOOL)colorDetailsAreEffectivelyDifferentFirstColor:(id)color secondColor:(id)secondColor firstSymbolicName:(id)name secondSymbolicName:(id)symbolicName;
- (ICSColor)initWithCoder:(id)coder;
- (ICSColor)initWithRed:(unsigned __int8)red green:(unsigned __int8)green blue:(unsigned __int8)blue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICSColor

- (ICSColor)initWithRed:(unsigned __int8)red green:(unsigned __int8)green blue:(unsigned __int8)blue
{
  v9.receiver = self;
  v9.super_class = ICSColor;
  result = [(ICSColor *)&v9 init];
  if (result)
  {
    result->_red = red;
    result->_green = green;
    result->_blue = blue;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  red = self->_red;
  coderCopy = coder;
  [coderCopy encodeInt:red forKey:@"Red"];
  [coderCopy encodeInt:self->_green forKey:@"Green"];
  [coderCopy encodeInt:self->_blue forKey:@"Blue"];
}

- (ICSColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ICSColor;
  v5 = [(ICSColor *)&v7 init];
  if (v5)
  {
    v5->_red = [coderCopy decodeIntForKey:@"Red"];
    v5->_green = [coderCopy decodeIntForKey:@"Green"];
    v5->_blue = [coderCopy decodeIntForKey:@"Blue"];
  }

  return v5;
}

+ (BOOL)colorDetailsAreEffectivelyDifferentFirstColor:(id)color secondColor:(id)secondColor firstSymbolicName:(id)name secondSymbolicName:(id)symbolicName
{
  colorCopy = color;
  secondColorCopy = secondColor;
  nameCopy = name;
  symbolicNameCopy = symbolicName;
  v13 = symbolicNameCopy;
  if (nameCopy)
  {
    v14 = [nameCopy isEqualToString:@"custom"] ^ 1;
    if (v13)
    {
LABEL_3:
      v15 = [v13 isEqualToString:@"custom"] ^ 1;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (symbolicNameCopy)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if ((v14 | v15))
  {
    if (nameCopy != v13)
    {
      LOBYTE(v16) = 1;
      if (nameCopy && v13)
      {
        v17 = nameCopy;
        v18 = v13;
LABEL_15:
        v16 = [v17 isEqualToString:v18] ^ 1;
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_16:
    LOBYTE(v16) = 0;
    goto LABEL_17;
  }

  if (colorCopy == secondColorCopy)
  {
    goto LABEL_16;
  }

  LOBYTE(v16) = 1;
  if (colorCopy && secondColorCopy)
  {
    v17 = colorCopy;
    v18 = secondColorCopy;
    goto LABEL_15;
  }

LABEL_17:

  return v16;
}

@end