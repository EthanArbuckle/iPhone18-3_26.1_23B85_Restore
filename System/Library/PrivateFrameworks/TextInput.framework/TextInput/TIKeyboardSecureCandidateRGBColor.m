@interface TIKeyboardSecureCandidateRGBColor
+ (id)blackColor;
+ (id)darkSecondaryLabelColor;
+ (id)lightGrayColor;
+ (id)lightSecondaryLabelColor;
+ (id)whiteColor;
- (BOOL)isEqual:(id)a3;
- (TIKeyboardSecureCandidateRGBColor)initWithCoder:(id)a3;
- (TIKeyboardSecureCandidateRGBColor)initWithR:(double)a3 G:(double)a4 B:(double)a5 A:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardSecureCandidateRGBColor

+ (id)whiteColor
{
  v2 = [[a1 alloc] initWithR:1.0 G:1.0 B:1.0 A:1.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[a1 alloc] initWithR:0.0 G:0.0 B:0.0 A:1.0];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(TIKeyboardSecureCandidateRGBColor *)self colorR];
    v7 = v6;
    [v5 colorR];
    if (v7 == v8 && (-[TIKeyboardSecureCandidateRGBColor colorG](self, "colorG"), v10 = v9, [v5 colorG], v10 == v11) && (-[TIKeyboardSecureCandidateRGBColor colorB](self, "colorB"), v13 = v12, objc_msgSend(v5, "colorB"), v13 == v14))
    {
      [(TIKeyboardSecureCandidateRGBColor *)self colorA];
      v16 = v15;
      [v5 colorA];
      v18 = v16 == v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [(TIKeyboardSecureCandidateRGBColor *)self colorR];
  v5 = v4;
  [(TIKeyboardSecureCandidateRGBColor *)self colorG];
  v7 = v6;
  [(TIKeyboardSecureCandidateRGBColor *)self colorB];
  v9 = v8;
  [(TIKeyboardSecureCandidateRGBColor *)self colorA];
  [v3 appendFormat:@"; textColor = [R:%f, G:%f, B:%f, A:%f]", v5, v7, v9, v10];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  colorR = self->_colorR;
  v9 = a3;
  *&v5 = colorR;
  [v9 encodeFloat:@"colorR" forKey:v5];
  colorG = self->_colorG;
  *&colorG = colorG;
  [v9 encodeFloat:@"colorG" forKey:colorG];
  colorB = self->_colorB;
  *&colorB = colorB;
  [v9 encodeFloat:@"colorB" forKey:colorB];
  colorA = self->_colorA;
  *&colorA = colorA;
  [v9 encodeFloat:@"colorA" forKey:colorA];
}

- (TIKeyboardSecureCandidateRGBColor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardSecureCandidateRGBColor;
  v5 = [(TIKeyboardSecureCandidateRGBColor *)&v11 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"colorR"];
    v5->_colorR = v6;
    [v4 decodeFloatForKey:@"colorG"];
    v5->_colorG = v7;
    [v4 decodeFloatForKey:@"colorB"];
    v5->_colorB = v8;
    [v4 decodeFloatForKey:@"colorA"];
    v5->_colorA = v9;
  }

  return v5;
}

- (TIKeyboardSecureCandidateRGBColor)initWithR:(double)a3 G:(double)a4 B:(double)a5 A:(double)a6
{
  v11.receiver = self;
  v11.super_class = TIKeyboardSecureCandidateRGBColor;
  result = [(TIKeyboardSecureCandidateRGBColor *)&v11 init];
  if (result)
  {
    result->_colorR = a3;
    result->_colorG = a4;
    result->_colorB = a5;
    result->_colorA = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(TIKeyboardSecureCandidateRGBColor);
  if (result)
  {
    *(result + 1) = *&self->_colorR;
    *(result + 2) = *&self->_colorG;
    *(result + 3) = *&self->_colorB;
    *(result + 4) = *&self->_colorA;
  }

  return result;
}

+ (id)lightSecondaryLabelColor
{
  v2 = [[a1 alloc] initWithR:0.921568627 G:0.921568627 B:0.960784314 A:0.6];

  return v2;
}

+ (id)darkSecondaryLabelColor
{
  v2 = [[a1 alloc] initWithR:0.235294118 G:0.235294118 B:0.262745098 A:0.6];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[a1 alloc] initWithR:0.898039216 G:0.909803922 B:0.917647059 A:1.0];

  return v2;
}

@end