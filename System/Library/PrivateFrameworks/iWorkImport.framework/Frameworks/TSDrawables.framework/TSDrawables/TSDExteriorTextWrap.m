@interface TSDExteriorTextWrap
+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8;
+ (id)exteriorTextWrap;
- (BOOL)isEqual:(id)a3;
- (TSDExteriorTextWrap)initWithArchive:(const void *)a3;
- (TSDExteriorTextWrap)initWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDExteriorTextWrap

+ (id)exteriorTextWrap
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)a3 type:(int)a4 direction:(int)a5 fitType:(int)a6 margin:(double)a7 alphaThreshold:(double)a8
{
  v10 = *&a6;
  v11 = *&a5;
  v12 = *&a4;
  v13 = a3;
  v14 = [a1 alloc];
  IsHTMLWrap_type_direction_fitType_margin_alphaThreshold = objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v14, v15, v13, v12, v11, v10, a7, a8);

  return IsHTMLWrap_type_direction_fitType_margin_alphaThreshold;
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
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v7, v8, isHTMLWrap, type, direction, fitType, margin, alphaThreshold);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableExteriorTextWrap, a2, a3);
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v4, v5, isHTMLWrap, type, direction, fitType, margin, alphaThreshold);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      if (*(v4 + 8) == self->_isHTMLWrap && *(v4 + 12) == self->_type && *(v4 + 16) == self->_direction && *(v4 + 20) == self->_fitType && ((v5 = *(v4 + 24), margin = self->_margin, v5 == margin) || vabdd_f64(v5, margin) < fabs(margin * 0.000000999999997)))
      {
        v7 = *(v4 + 32);
        alphaThreshold = self->_alphaThreshold;
        LOBYTE(v4) = v7 == alphaThreshold || vabdd_f64(v7, alphaThreshold) < fabs(alphaThreshold * 0.000000999999997);
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (unint64_t)hash
{
  TSUHash();
  TSUHashWithSeed();
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (id)description
{
  isHTMLWrap = self->_isHTMLWrap;
  v5 = objc_msgSend_type(self, a2, v2);
  if (v5 > 5)
  {
    v8 = &stru_28857D120;
  }

  else
  {
    v8 = off_27A6CCC20[v5];
  }

  v9 = objc_msgSend_direction(self, v6, v7);
  v12 = &stru_28857D120;
  if (v9 <= 2)
  {
    v12 = off_27A6CCC50[v9];
  }

  v13 = objc_msgSend_fitType(self, v10, v11);
  v16 = @"Contour";
  if (v13 != 1)
  {
    v16 = &stru_28857D120;
  }

  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"Rectangular";
  }

  if (isHTMLWrap)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = MEMORY[0x277CCACA8];
  objc_msgSend_margin(self, v14, v15);
  v21 = v20;
  objc_msgSend_alphaThreshold(self, v22, v23);
  return objc_msgSend_stringWithFormat_(v19, v24, @"TSDExteriorTextWrap isHTMLWrap=%@, type=%@, direction=%@, fitType=%@, margin=%f, alphaThreshold=%f", v18, v8, v12, v17, v21, v25);
}

- (TSDExteriorTextWrap)initWithArchive:(const void *)a3
{
  v3 = *(a3 + 4);
  if ((v3 & 2) != 0)
  {
    v4 = *(a3 + 7);
  }

  else
  {
    v4 = 2;
  }

  v5 = *(a3 + 9);
  if ((v3 & 8) == 0)
  {
    v5 = 0.0;
  }

  v6 = *(a3 + 10);
  if ((v3 & 0x10) == 0)
  {
    v6 = 0.0;
  }

  return objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(self, a2, *(a3 + 44) & ((*(a3 + 4) & 0x20u) >> 5), ((*(a3 + 4) << 31) >> 31) & *(a3 + 6), v4, *(a3 + 8) & ((*(a3 + 4) << 29) >> 31), v5, v6);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v4 = *(a3 + 4);
  type = self->_type;
  *(a3 + 44) = self->_isHTMLWrap;
  margin = self->_margin;
  direction = self->_direction;
  *(a3 + 6) = type;
  *(a3 + 7) = direction;
  *(a3 + 8) = self->_fitType;
  *&margin = margin;
  alphaThreshold = self->_alphaThreshold;
  *(a3 + 4) = v4 | 0x3F;
  *(a3 + 9) = LODWORD(margin);
  *(a3 + 10) = alphaThreshold;
}

@end