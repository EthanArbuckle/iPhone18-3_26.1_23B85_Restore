@interface SBSColor
- (SBSColor)initWithCoder:(id)coder;
- (SBSColor)initWithData:(id)data;
- (SBSColor)initWithRed:(float)red green:(float)green blue:(float)blue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSColor

- (SBSColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"redComponent"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"greenComponent"];
  v8 = v7;
  [coderCopy decodeFloatForKey:@"blueComponent"];
  v10 = v9;

  v11 = [SBSColor alloc];
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;
  v15 = [(SBSColor *)v11 initWithRed:v12 green:v13 blue:v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  redComponent = self->_redComponent;
  coderCopy = coder;
  *&v5 = redComponent;
  [coderCopy encodeFloat:@"redComponent" forKey:v5];
  *&v6 = self->_greenComponent;
  [coderCopy encodeFloat:@"greenComponent" forKey:v6];
  *&v7 = self->_blueComponent;
  [coderCopy encodeFloat:@"blueComponent" forKey:v7];
}

- (SBSColor)initWithRed:(float)red green:(float)green blue:(float)blue
{
  v15.receiver = self;
  v15.super_class = SBSColor;
  result = [(SBSColor *)&v15 init];
  if (result)
  {
    __asm { FMOV            V1.2S, #1.0 }

    *&result->_redComponent = vbic_s8(vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(green), LODWORD(red)), _D1), _D1, __PAIR64__(LODWORD(green), LODWORD(red))), vcltz_f32(__PAIR64__(LODWORD(green), LODWORD(red))));
    blueCopy = 1.0;
    if (blue <= 1.0)
    {
      blueCopy = blue;
    }

    if (blue < 0.0)
    {
      blueCopy = 0.0;
    }

    result->_blueComponent = blueCopy;
  }

  return result;
}

- (SBSColor)initWithData:(id)data
{
  v4 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v9 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end