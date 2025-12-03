@interface PAEKeyerLumaSetup
- (BOOL)isEqualTo:(id)to;
- (PAEKeyerLumaSetup)init;
- (PAEKeyerLumaSetup)initWithCoder:(id)coder;
- (id)interpolateBetween:(id)between withWeight:(float)weight;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLumANumber:(id)number;
- (void)setLumBNumber:(id)number;
- (void)setLumCNumber:(id)number;
- (void)setLumDNumber:(id)number;
@end

@implementation PAEKeyerLumaSetup

- (void)setLumANumber:(id)number
{
  numberCopy = number;

  self->_lumA = number;
}

- (void)setLumBNumber:(id)number
{
  numberCopy = number;

  self->_lumB = number;
}

- (void)setLumCNumber:(id)number
{
  numberCopy = number;

  self->_lumC = number;
}

- (void)setLumDNumber:(id)number
{
  numberCopy = number;

  self->_lumD = number;
}

- (PAEKeyerLumaSetup)init
{
  v12.receiver = self;
  v12.super_class = PAEKeyerLumaSetup;
  v2 = [(PAEKeyerLumaSetup *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCABB0]);
    LODWORD(v4) = -1.0;
    v2->_lumA = [v3 initWithFloat:v4];
    v5 = objc_alloc(MEMORY[0x277CCABB0]);
    LODWORD(v6) = -0.5;
    v2->_lumB = [v5 initWithFloat:v6];
    v7 = objc_alloc(MEMORY[0x277CCABB0]);
    LODWORD(v8) = 0.5;
    v2->_lumC = [v7 initWithFloat:v8];
    v9 = objc_alloc(MEMORY[0x277CCABB0]);
    LODWORD(v10) = 1.0;
    v2->_lumD = [v9 initWithFloat:v10];
  }

  return v2;
}

- (PAEKeyerLumaSetup)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PAEKeyerLumaSetup;
  v4 = [(PAEKeyerLumaSetup *)&v6 init];
  if (v4)
  {
    -[PAEKeyerLumaSetup setLumANumber:](v4, "setLumANumber:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"LumA"]);
    -[PAEKeyerLumaSetup setLumBNumber:](v4, "setLumBNumber:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"LumB"]);
    -[PAEKeyerLumaSetup setLumCNumber:](v4, "setLumCNumber:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"LumC"]);
    -[PAEKeyerLumaSetup setLumDNumber:](v4, "setLumDNumber:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"LumD"]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerLumaSetup;
  [(PAEKeyerLumaSetup *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_lumA forKey:@"LumA"];
  [coder encodeObject:self->_lumB forKey:@"LumB"];
  [coder encodeObject:self->_lumC forKey:@"LumC"];
  lumD = self->_lumD;

  [coder encodeObject:lumD forKey:@"LumD"];
}

- (id)interpolateBetween:(id)between withWeight:(float)weight
{
  v7 = objc_alloc_init(PAEKeyerLumaSetup);
  [(PAEKeyerLumaSetup *)self lumA];
  v9 = v8;
  [(PAEKeyerLumaSetup *)self lumB];
  v11 = v10;
  [(PAEKeyerLumaSetup *)self lumC];
  v27 = v12;
  [(PAEKeyerLumaSetup *)self lumD];
  v28 = v13;
  [between lumA];
  v15 = v14;
  [between lumB];
  v17 = v16;
  [between lumC];
  v19 = v18;
  [between lumD];
  v21 = v20;
  *&v22 = ((1.0 - weight) * v9) + (v15 * weight);
  [(PAEKeyerLumaSetup *)v7 setLumA:v22];
  *&v23 = ((1.0 - weight) * v11) + (v17 * weight);
  [(PAEKeyerLumaSetup *)v7 setLumB:v23];
  *&v24 = ((1.0 - weight) * v27) + (v19 * weight);
  [(PAEKeyerLumaSetup *)v7 setLumC:v24];
  *&v25 = ((1.0 - weight) * v28) + (v21 * weight);
  [(PAEKeyerLumaSetup *)v7 setLumD:v25];
  return v7;
}

- (BOOL)isEqualTo:(id)to
{
  [(PAEKeyerLumaSetup *)self lumA];
  v6 = v5;
  [to lumA];
  result = 0;
  if (v6 == v7)
  {
    [(PAEKeyerLumaSetup *)self lumB];
    v9 = v8;
    [to lumB];
    if (v9 == v10)
    {
      [(PAEKeyerLumaSetup *)self lumC];
      v12 = v11;
      [to lumC];
      if (v12 == v13)
      {
        [(PAEKeyerLumaSetup *)self lumD];
        v15 = v14;
        [to lumD];
        if (v15 == v16)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

@end