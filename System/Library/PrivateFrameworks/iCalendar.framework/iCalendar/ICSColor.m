@interface ICSColor
+ (BOOL)colorDetailsAreEffectivelyDifferentFirstColor:(id)a3 secondColor:(id)a4 firstSymbolicName:(id)a5 secondSymbolicName:(id)a6;
- (ICSColor)initWithCoder:(id)a3;
- (ICSColor)initWithRed:(unsigned __int8)a3 green:(unsigned __int8)a4 blue:(unsigned __int8)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICSColor

- (ICSColor)initWithRed:(unsigned __int8)a3 green:(unsigned __int8)a4 blue:(unsigned __int8)a5
{
  v9.receiver = self;
  v9.super_class = ICSColor;
  result = [(ICSColor *)&v9 init];
  if (result)
  {
    result->_red = a3;
    result->_green = a4;
    result->_blue = a5;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  red = self->_red;
  v5 = a3;
  [v5 encodeInt:red forKey:@"Red"];
  [v5 encodeInt:self->_green forKey:@"Green"];
  [v5 encodeInt:self->_blue forKey:@"Blue"];
}

- (ICSColor)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICSColor;
  v5 = [(ICSColor *)&v7 init];
  if (v5)
  {
    v5->_red = [v4 decodeIntForKey:@"Red"];
    v5->_green = [v4 decodeIntForKey:@"Green"];
    v5->_blue = [v4 decodeIntForKey:@"Blue"];
  }

  return v5;
}

+ (BOOL)colorDetailsAreEffectivelyDifferentFirstColor:(id)a3 secondColor:(id)a4 firstSymbolicName:(id)a5 secondSymbolicName:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v11)
  {
    v14 = [v11 isEqualToString:@"custom"] ^ 1;
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
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if ((v14 | v15))
  {
    if (v11 != v13)
    {
      LOBYTE(v16) = 1;
      if (v11 && v13)
      {
        v17 = v11;
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

  if (v9 == v10)
  {
    goto LABEL_16;
  }

  LOBYTE(v16) = 1;
  if (v9 && v10)
  {
    v17 = v9;
    v18 = v10;
    goto LABEL_15;
  }

LABEL_17:

  return v16;
}

@end