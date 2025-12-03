@interface MPVector
+ (id)vectorFromCGColor:(CGColor *)color;
+ (id)vectorFromMCVector:(id *)vector;
+ (id)vectorFromString:(id)string;
+ (id)vectorWithValues:(id)values;
- ($421962E1114BB55FD51FACB03C2AC210)vector;
- (MPVector)init;
- (id)CIColorString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)string;
- (id)values;
- (void)setValues:(id)values;
- (void)setVector:(id *)vector;
@end

@implementation MPVector

+ (id)vectorFromString:(id)string
{
  v4 = objc_alloc_init(self);
  MCStringToVector(string, v6);
  [v4 setVector:v6];
  return v4;
}

+ (id)vectorWithValues:(id)values
{
  v4 = objc_alloc_init(self);
  [v4 setValues:values];
  return v4;
}

+ (id)vectorFromCGColor:(CGColor *)color
{
  v4 = objc_alloc_init(self);
  Components = CGColorGetComponents(color);
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*Components), Components[1]);
  v8 = 4;
  v9 = 0;
  v10 = 0;
  v11 = v6;
  [v4 setVector:&v8];
  return v4;
}

- (MPVector)init
{
  v3.receiver = self;
  v3.super_class = MPVector;
  return [(MPVector *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setValues:{-[MPVector values](self, "values")}];
  return v4;
}

- (id)string
{
  v7 = 0;
  v6 = 0;
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(*self->_vector), *&self->_vector[2]);
  LOBYTE(v4) = self->_length;
  *(&v4 + 1) = 0;
  HIBYTE(v4) = 0;
  v5 = v2;
  return MCVectorToString(&v4);
}

- (id)CIColorString
{
  length = self->_length;
  if (length > 2)
  {
    if (length != 3)
    {
      if (length == 4)
      {
        return [NSString stringWithFormat:@"%f %f %f %f", *&self->_vector[0], *&self->_vector[1], *&self->_vector[2], *&self->_vector[3]];
      }

      return &stru_1AC858;
    }

    return [NSString stringWithFormat:@"%f %f %f", *&self->_vector[0], *&self->_vector[1], *&self->_vector[2], v6];
  }

  else
  {
    if (length != 1)
    {
      if (length == 2)
      {
        return [NSString stringWithFormat:@"%f %f", *&self->_vector[0], *&self->_vector[1], v5, v6];
      }

      return &stru_1AC858;
    }

    return [NSString stringWithFormat:@"%f", *&self->_vector[0], v4, v5, v6];
  }
}

- (id)values
{
  length = self->_length;
  v4 = +[NSMutableArray array];
  if ((length - 1) <= 3)
  {
    vector = self->_vector;
    do
    {
      v6 = *vector++;
      HIDWORD(v7) = HIDWORD(v6);
      *&v7 = v6;
      [v4 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v7)}];
      --length;
    }

    while (length);
  }

  return v4;
}

- (void)setValues:(id)values
{
  v5 = [values count];
  if (v5 <= 4)
  {
    v6 = v5;
    self->_length = v5;
    if (v5 >= 1)
    {
      v7 = 0;
      vector = self->_vector;
      do
      {
        [objc_msgSend(values objectAtIndex:{v7), "floatValue"}];
        vector[v7] = v9;
        v7 = v7 + 1;
      }

      while (v6 != v7);
    }
  }
}

+ (id)vectorFromMCVector:(id *)vector
{
  v4 = objc_alloc_init(self);
  v6 = *vector;
  [v4 setVector:&v6];
  return v4;
}

- (void)setVector:(id *)vector
{
  self->_length = vector->var0;
  v3 = *vector->var1;
  *&self->_vector[2] = vcvt_hight_f64_f32(v3);
  *self->_vector = vcvtq_f64_f32(*v3.f32);
}

- ($421962E1114BB55FD51FACB03C2AC210)vector
{
  retstr->var1[3] = 0.0;
  *&retstr->var0 = 0;
  *&retstr->var1[1] = 0;
  retstr->var0 = *&self[2].var0;
  *retstr->var1 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->var1[1]), *self[1].var1);
  return self;
}

@end