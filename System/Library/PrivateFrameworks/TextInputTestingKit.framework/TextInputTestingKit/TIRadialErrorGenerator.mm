@interface TIRadialErrorGenerator
- (CGPoint)randomBiasForKeyString:(id)string rect:(CGRect)rect;
- (TIRadialErrorGenerator)initWithAttributes:(id)attributes;
@end

@implementation TIRadialErrorGenerator

- (CGPoint)randomBiasForKeyString:(id)string rect:(CGRect)rect
{
  [(TIErrorGenerator *)self uniformRandomNumber:string];
  v6 = v5;
  letterErrorProbability = self->_letterErrorProbability;
  [(TIErrorGenerator *)self uniformRandomNumber];
  v9 = v8;
  v10 = &OBJC_IVAR___TIRadialErrorGenerator__defaultDistanceMin;
  if (v6 < letterErrorProbability)
  {
    v10 = &OBJC_IVAR___TIRadialErrorGenerator__letterDistanceMin;
  }

  v11 = *(&self->super.super.isa + *v10);
  v12 = &OBJC_IVAR___TIRadialErrorGenerator__defaultDistanceMax;
  if (v6 < letterErrorProbability)
  {
    v12 = &OBJC_IVAR___TIRadialErrorGenerator__letterDistanceMax;
  }

  v13 = *(&self->super.super.isa + *v12);
  v14 = arc4random();
  v15 = (v9 + v9) * 3.14159265;
  v16 = v11 + v14 / 4294967300.0 * (v13 - v11);
  v17 = __sincosf_stret(v15);
  v18 = (v17.__sinval * v16);
  v19 = (v17.__cosval * v16);
  result.y = v18;
  result.x = v19;
  return result;
}

- (TIRadialErrorGenerator)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v19.receiver = self;
  v19.super_class = TIRadialErrorGenerator;
  v5 = [(TIErrorGenerator *)&v19 initWithAttributes:attributesCopy];
  v6 = v5;
  if (v5)
  {
    v5->_letterErrorProbability = 0;
    v5->_defaultDistanceMax = 0;
    v5->_defaultDistanceMin = 0;
    v5->_letterDistanceMax = 0;
    v5->_letterDistanceMin = 0;
    v7 = [attributesCopy valueForKey:@"LETTER_ERROR_PROBABILITY"];

    if (v7)
    {
      v8 = [attributesCopy objectForKey:@"LETTER_ERROR_PROBABILITY"];
      [v8 doubleValue];
      v6->_letterErrorProbability = v9;
    }

    v10 = [attributesCopy valueForKey:@"DEFAULT_ERROR_RADIAL_MIN_DISTANCE"];

    if (v10)
    {
      v11 = [attributesCopy objectForKey:@"DEFAULT_ERROR_RADIAL_MIN_DISTANCE"];
      v6->_defaultDistanceMin = [v11 intValue];
    }

    v12 = [attributesCopy valueForKey:@"DEFAULT_ERROR_RADIAL_MAX_DISTANCE"];

    if (v12)
    {
      v13 = [attributesCopy objectForKey:@"DEFAULT_ERROR_RADIAL_MAX_DISTANCE"];
      v6->_defaultDistanceMax = [v13 intValue];
    }

    v14 = [attributesCopy valueForKey:@"LETTER_ERROR_RADIAL_MIN_DISTANCE"];

    if (v14)
    {
      v15 = [attributesCopy objectForKey:@"LETTER_ERROR_RADIAL_MIN_DISTANCE"];
      v6->_letterDistanceMin = [v15 intValue];
    }

    v16 = [attributesCopy valueForKey:@"LETTER_ERROR_RADIAL_MAX_DISTANCE"];

    if (v16)
    {
      v17 = [attributesCopy objectForKey:@"LETTER_ERROR_RADIAL_MAX_DISTANCE"];
      v6->_letterDistanceMax = [v17 intValue];
    }
  }

  return v6;
}

@end