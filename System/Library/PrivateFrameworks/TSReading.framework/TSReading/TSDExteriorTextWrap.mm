@interface TSDExteriorTextWrap
+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8;
+ (id)exteriorTextWrap;
- (BOOL)isEqual:(id)a3;
- (TSDExteriorTextWrap)initWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TSDExteriorTextWrap

+ (id)exteriorTextWrap
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8
{
  v8 = [[a1 alloc] initWithIsHTMLWrap:a3 type:*&a4 direction:*&a5 fitType:*&a6 margin:a7 alphaThreshold:a8];

  return v8;
}

- (TSDExteriorTextWrap)initWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8
{
  v15.receiver = self;
  v15.super_class = TSDExteriorTextWrap;
  result = [(TSDExteriorTextWrap *)&v15 init];
  if (result)
  {
    result->_isHTMLWrap = a3;
    result->_type = a4;
    result->_direction = a5;
    result->_fitType = a6;
    result->_margin = a7;
    result->_alphaThreshold = a8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return [v4 initWithIsHTMLWrap:isHTMLWrap type:type direction:direction fitType:fitType margin:margin alphaThreshold:alphaThreshold];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableExteriorTextWrap allocWithZone:a3];
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return [(TSDExteriorTextWrap *)v4 initWithIsHTMLWrap:isHTMLWrap type:type direction:direction fitType:fitType margin:margin alphaThreshold:alphaThreshold];
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  v4 = a3 == self;
  LOBYTE(self) = a3 == self;
  if (a3)
  {
    if (!v4)
    {
      LODWORD(self) = [a3 isMemberOfClass:objc_opt_class()];
      if (self)
      {
        if (*(a3 + 8) == v3->_isHTMLWrap && *(a3 + 3) == v3->_type && *(a3 + 4) == v3->_direction && *(a3 + 5) == v3->_fitType && ((v6 = *(a3 + 3), margin = v3->_margin, v6 == margin) || vabdd_f64(v6, margin) < fabs(margin * 0.000000999999997)))
        {
          v8 = *(a3 + 4);
          alphaThreshold = v3->_alphaThreshold;
          LOBYTE(self) = v8 == alphaThreshold || vabdd_f64(v8, alphaThreshold) < fabs(alphaThreshold * 0.000000999999997);
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (id)description
{
  isHTMLWrap = self->_isHTMLWrap;
  v4 = [(TSDExteriorTextWrap *)self type];
  if (v4 > 5)
  {
    v5 = &stru_287D36338;
  }

  else
  {
    v5 = off_279D48DC8[v4];
  }

  v6 = [(TSDExteriorTextWrap *)self direction];
  v7 = &stru_287D36338;
  if (v6 <= 2)
  {
    v7 = off_279D48DF8[v6];
  }

  v8 = [(TSDExteriorTextWrap *)self fitType];
  v9 = @"Contour";
  if (v8 != 1)
  {
    v9 = &stru_287D36338;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Rectangular";
  }

  if (isHTMLWrap)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = MEMORY[0x277CCACA8];
  [(TSDExteriorTextWrap *)self margin];
  v14 = v13;
  [(TSDExteriorTextWrap *)self alphaThreshold];
  return [v12 stringWithFormat:@"TSDExteriorTextWrap isHTMLWrap=%@, type=%@, direction=%@, fitType=%@, margin=%f, alphaThreshold=%f", v11, v5, v7, v10, v14, v15];
}

@end