@interface IPABestFitShortSideWithLongSideLimit
- (BOOL)isEqual:(id)a3;
- (CGSize)transformSize:(CGSize)a3;
- (IPABestFitShortSideWithLongSideLimit)initWithCoder:(id)a3;
- (IPABestFitShortSideWithLongSideLimit)initWithNominalShortSide:(int64_t)a3 minLongSide:(int64_t)a4 maxLongSide:(int64_t)a5;
- (double)transformScaleForSize:(CGSize)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPABestFitShortSideWithLongSideLimit

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = *&self->_nominalShortSide == *(v4 + 8) && self->_maxLongSide == *(v4 + 3);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IPABestFitShortSideWithLongSideLimit;
  v4 = a3;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_nominalShortSide forKey:{@"nominal short", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_minLongSide forKey:@"min long"];
  [v4 encodeInteger:self->_maxLongSide forKey:@"max long"];
}

- (IPABestFitShortSideWithLongSideLimit)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = IPABestFitShortSideWithLongSideLimit;
  v3 = a3;
  v4 = [(IPAImageSizePolicy *)&v7 initWithCoder:v3];
  v4->_nominalShortSide = [v3 decodeIntegerForKey:{@"nominal short", v7.receiver, v7.super_class}];
  v4->_minLongSide = [v3 decodeIntegerForKey:@"min long"];
  v5 = [v3 decodeIntegerForKey:@"max long"];

  v4->_maxLongSide = v5;
  return v4;
}

- (double)transformScaleForSize:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    height = a3.height;
  }

  else
  {
    height = a3.width;
  }

  if (a3.width >= a3.height)
  {
    a3.height = a3.width;
  }

  result = self->_nominalShortSide / height;
  v5 = floor(a3.height * result);
  minLongSide = self->_minLongSide;
  if (v5 < minLongSide || (minLongSide = self->_maxLongSide, v5 > minLongSide))
  {
    result = minLongSide / a3.height;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)transformSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width < 0.0 || a3.height < 0.0)
  {
    NSStringFromSize(a3);
    objc_claimAutoreleasedReturnValue();
    v8 = _PFAssertFailHandler();
    [(IPABestFitShortSideWithLongSideLimit *)v8 isBestFitPolicy];
  }

  else
  {
    [(IPABestFitShortSideWithLongSideLimit *)self transformScaleForSize:a3.width, a3.height];
    v6 = height * v5;
    v7 = width * v5;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (IPABestFitShortSideWithLongSideLimit)initWithNominalShortSide:(int64_t)a3 minLongSide:(int64_t)a4 maxLongSide:(int64_t)a5
{
  if (a3 <= 0)
  {
    _PFAssertFailHandler();
    goto LABEL_8;
  }

  if (a4 <= 0)
  {
LABEL_8:
    _PFAssertFailHandler();
    goto LABEL_9;
  }

  if (a5 <= 0)
  {
LABEL_9:
    v9 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v9 largestPolicyWithPolicies:v10, v11];
  }

  v12.receiver = self;
  v12.super_class = IPABestFitShortSideWithLongSideLimit;
  result = [(IPABestFitShortSideWithLongSideLimit *)&v12 init];
  if (result)
  {
    result->_nominalShortSide = a3;
    result->_minLongSide = a4;
    result->_maxLongSide = a5;
  }

  return result;
}

@end