@interface TSDExteriorTextWrap
+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold;
+ (id)exteriorTextWrap;
- (BOOL)isEqual:(id)equal;
- (TSDExteriorTextWrap)initWithArchive:(const void *)archive;
- (TSDExteriorTextWrap)initWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDExteriorTextWrap

+ (id)exteriorTextWrap
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold
{
  v10 = *&fitType;
  v11 = *&direction;
  v12 = *&type;
  wrapCopy = wrap;
  v14 = [self alloc];
  IsHTMLWrap_type_direction_fitType_margin_alphaThreshold = objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v14, v15, wrapCopy, v12, v11, v10, margin, threshold);

  return IsHTMLWrap_type_direction_fitType_margin_alphaThreshold;
}

- (TSDExteriorTextWrap)initWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold
{
  v15.receiver = self;
  v15.super_class = TSDExteriorTextWrap;
  result = [(TSDExteriorTextWrap *)&v15 init];
  if (result)
  {
    result->_isHTMLWrap = wrap;
    result->_type = type;
    result->_direction = direction;
    result->_fitType = fitType;
    result->_margin = margin;
    result->_alphaThreshold = threshold;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v7, v8, isHTMLWrap, type, direction, fitType, margin, alphaThreshold);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableExteriorTextWrap, a2, zone);
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v4, v5, isHTMLWrap, type, direction, fitType, margin, alphaThreshold);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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

- (TSDExteriorTextWrap)initWithArchive:(const void *)archive
{
  v3 = *(archive + 4);
  if ((v3 & 2) != 0)
  {
    v4 = *(archive + 7);
  }

  else
  {
    v4 = 2;
  }

  v5 = *(archive + 9);
  if ((v3 & 8) == 0)
  {
    v5 = 0.0;
  }

  v6 = *(archive + 10);
  if ((v3 & 0x10) == 0)
  {
    v6 = 0.0;
  }

  return objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(self, a2, *(archive + 44) & ((*(archive + 4) & 0x20u) >> 5), ((*(archive + 4) << 31) >> 31) & *(archive + 6), v4, *(archive + 8) & ((*(archive + 4) << 29) >> 31), v5, v6);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v4 = *(archive + 4);
  type = self->_type;
  *(archive + 44) = self->_isHTMLWrap;
  margin = self->_margin;
  direction = self->_direction;
  *(archive + 6) = type;
  *(archive + 7) = direction;
  *(archive + 8) = self->_fitType;
  *&margin = margin;
  alphaThreshold = self->_alphaThreshold;
  *(archive + 4) = v4 | 0x3F;
  *(archive + 9) = LODWORD(margin);
  *(archive + 10) = alphaThreshold;
}

@end