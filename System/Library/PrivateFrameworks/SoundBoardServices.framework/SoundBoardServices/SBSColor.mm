@interface SBSColor
- (SBSColor)initWithCoder:(id)a3;
- (SBSColor)initWithData:(id)a3;
- (SBSColor)initWithRed:(float)a3 green:(float)a4 blue:(float)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSColor

- (SBSColor)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"redComponent"];
  v6 = v5;
  [v4 decodeFloatForKey:@"greenComponent"];
  v8 = v7;
  [v4 decodeFloatForKey:@"blueComponent"];
  v10 = v9;

  v11 = [SBSColor alloc];
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;
  v15 = [(SBSColor *)v11 initWithRed:v12 green:v13 blue:v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  redComponent = self->_redComponent;
  v8 = a3;
  *&v5 = redComponent;
  [v8 encodeFloat:@"redComponent" forKey:v5];
  *&v6 = self->_greenComponent;
  [v8 encodeFloat:@"greenComponent" forKey:v6];
  *&v7 = self->_blueComponent;
  [v8 encodeFloat:@"blueComponent" forKey:v7];
}

- (SBSColor)initWithRed:(float)a3 green:(float)a4 blue:(float)a5
{
  v15.receiver = self;
  v15.super_class = SBSColor;
  result = [(SBSColor *)&v15 init];
  if (result)
  {
    __asm { FMOV            V1.2S, #1.0 }

    *&result->_redComponent = vbic_s8(vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(a4), LODWORD(a3)), _D1), _D1, __PAIR64__(LODWORD(a4), LODWORD(a3))), vcltz_f32(__PAIR64__(LODWORD(a4), LODWORD(a3))));
    v12 = 1.0;
    if (a5 <= 1.0)
    {
      v12 = a5;
    }

    if (a5 < 0.0)
    {
      v12 = 0.0;
    }

    result->_blueComponent = v12;
  }

  return result;
}

- (SBSColor)initWithData:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v9 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v9];

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