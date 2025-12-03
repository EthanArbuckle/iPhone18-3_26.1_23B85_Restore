@interface TSDExteriorTextWrap
+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold;
+ (id)exteriorTextWrap;
- (BOOL)isEqual:(id)equal;
- (TSDExteriorTextWrap)initWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TSDExteriorTextWrap

+ (id)exteriorTextWrap
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (TSDExteriorTextWrap)exteriorTextWrapWithIsHTMLWrap:(BOOL)wrap type:(int)type direction:(int)direction fitType:(int)fitType margin:(double)margin alphaThreshold:(double)threshold
{
  v8 = [[self alloc] initWithIsHTMLWrap:wrap type:*&type direction:*&direction fitType:*&fitType margin:margin alphaThreshold:threshold];

  return v8;
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
  v4 = [objc_opt_class() allocWithZone:zone];
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return [v4 initWithIsHTMLWrap:isHTMLWrap type:type direction:direction fitType:fitType margin:margin alphaThreshold:alphaThreshold];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableExteriorTextWrap allocWithZone:zone];
  isHTMLWrap = self->_isHTMLWrap;
  type = self->_type;
  direction = self->_direction;
  fitType = self->_fitType;
  margin = self->_margin;
  alphaThreshold = self->_alphaThreshold;

  return [(TSDExteriorTextWrap *)v4 initWithIsHTMLWrap:isHTMLWrap type:type direction:direction fitType:fitType margin:margin alphaThreshold:alphaThreshold];
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = equal == self;
  LOBYTE(self) = equal == self;
  if (equal)
  {
    if (!v4)
    {
      LODWORD(self) = [equal isMemberOfClass:objc_opt_class()];
      if (self)
      {
        if (*(equal + 8) == selfCopy->_isHTMLWrap && *(equal + 3) == selfCopy->_type && *(equal + 4) == selfCopy->_direction && *(equal + 5) == selfCopy->_fitType && ((v6 = *(equal + 3), margin = selfCopy->_margin, v6 == margin) || vabdd_f64(v6, margin) < fabs(margin * 0.000000999999997)))
        {
          v8 = *(equal + 4);
          alphaThreshold = selfCopy->_alphaThreshold;
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
  type = [(TSDExteriorTextWrap *)self type];
  if (type > 5)
  {
    v5 = &stru_287D36338;
  }

  else
  {
    v5 = off_279D48DC8[type];
  }

  direction = [(TSDExteriorTextWrap *)self direction];
  v7 = &stru_287D36338;
  if (direction <= 2)
  {
    v7 = off_279D48DF8[direction];
  }

  fitType = [(TSDExteriorTextWrap *)self fitType];
  v9 = @"Contour";
  if (fitType != 1)
  {
    v9 = &stru_287D36338;
  }

  if (fitType)
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