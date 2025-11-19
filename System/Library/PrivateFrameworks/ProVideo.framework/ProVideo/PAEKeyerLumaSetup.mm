@interface PAEKeyerLumaSetup
- (BOOL)isEqualTo:(id)a3;
- (PAEKeyerLumaSetup)init;
- (PAEKeyerLumaSetup)initWithCoder:(id)a3;
- (id)interpolateBetween:(id)a3 withWeight:(float)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLumANumber:(id)a3;
- (void)setLumBNumber:(id)a3;
- (void)setLumCNumber:(id)a3;
- (void)setLumDNumber:(id)a3;
@end

@implementation PAEKeyerLumaSetup

- (void)setLumANumber:(id)a3
{
  v5 = a3;

  self->_lumA = a3;
}

- (void)setLumBNumber:(id)a3
{
  v5 = a3;

  self->_lumB = a3;
}

- (void)setLumCNumber:(id)a3
{
  v5 = a3;

  self->_lumC = a3;
}

- (void)setLumDNumber:(id)a3
{
  v5 = a3;

  self->_lumD = a3;
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

- (PAEKeyerLumaSetup)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PAEKeyerLumaSetup;
  v4 = [(PAEKeyerLumaSetup *)&v6 init];
  if (v4)
  {
    -[PAEKeyerLumaSetup setLumANumber:](v4, "setLumANumber:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"LumA"]);
    -[PAEKeyerLumaSetup setLumBNumber:](v4, "setLumBNumber:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"LumB"]);
    -[PAEKeyerLumaSetup setLumCNumber:](v4, "setLumCNumber:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"LumC"]);
    -[PAEKeyerLumaSetup setLumDNumber:](v4, "setLumDNumber:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"LumD"]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerLumaSetup;
  [(PAEKeyerLumaSetup *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_lumA forKey:@"LumA"];
  [a3 encodeObject:self->_lumB forKey:@"LumB"];
  [a3 encodeObject:self->_lumC forKey:@"LumC"];
  lumD = self->_lumD;

  [a3 encodeObject:lumD forKey:@"LumD"];
}

- (id)interpolateBetween:(id)a3 withWeight:(float)a4
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
  [a3 lumA];
  v15 = v14;
  [a3 lumB];
  v17 = v16;
  [a3 lumC];
  v19 = v18;
  [a3 lumD];
  v21 = v20;
  *&v22 = ((1.0 - a4) * v9) + (v15 * a4);
  [(PAEKeyerLumaSetup *)v7 setLumA:v22];
  *&v23 = ((1.0 - a4) * v11) + (v17 * a4);
  [(PAEKeyerLumaSetup *)v7 setLumB:v23];
  *&v24 = ((1.0 - a4) * v27) + (v19 * a4);
  [(PAEKeyerLumaSetup *)v7 setLumC:v24];
  *&v25 = ((1.0 - a4) * v28) + (v21 * a4);
  [(PAEKeyerLumaSetup *)v7 setLumD:v25];
  return v7;
}

- (BOOL)isEqualTo:(id)a3
{
  [(PAEKeyerLumaSetup *)self lumA];
  v6 = v5;
  [a3 lumA];
  result = 0;
  if (v6 == v7)
  {
    [(PAEKeyerLumaSetup *)self lumB];
    v9 = v8;
    [a3 lumB];
    if (v9 == v10)
    {
      [(PAEKeyerLumaSetup *)self lumC];
      v12 = v11;
      [a3 lumC];
      if (v12 == v13)
      {
        [(PAEKeyerLumaSetup *)self lumD];
        v15 = v14;
        [a3 lumD];
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