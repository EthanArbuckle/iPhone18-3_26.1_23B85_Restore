@interface IPABestFitShortSideWithLongSideLimit
- (BOOL)isEqual:(id)equal;
- (CGSize)transformSize:(CGSize)size;
- (IPABestFitShortSideWithLongSideLimit)initWithCoder:(id)coder;
- (IPABestFitShortSideWithLongSideLimit)initWithNominalShortSide:(int64_t)side minLongSide:(int64_t)longSide maxLongSide:(int64_t)maxLongSide;
- (double)transformScaleForSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPABestFitShortSideWithLongSideLimit

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = *&self->_nominalShortSide == *(equalCopy + 8) && self->_maxLongSide == *(equalCopy + 3);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IPABestFitShortSideWithLongSideLimit;
  coderCopy = coder;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_nominalShortSide forKey:{@"nominal short", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_minLongSide forKey:@"min long"];
  [coderCopy encodeInteger:self->_maxLongSide forKey:@"max long"];
}

- (IPABestFitShortSideWithLongSideLimit)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = IPABestFitShortSideWithLongSideLimit;
  coderCopy = coder;
  v4 = [(IPAImageSizePolicy *)&v7 initWithCoder:coderCopy];
  v4->_nominalShortSide = [coderCopy decodeIntegerForKey:{@"nominal short", v7.receiver, v7.super_class}];
  v4->_minLongSide = [coderCopy decodeIntegerForKey:@"min long"];
  v5 = [coderCopy decodeIntegerForKey:@"max long"];

  v4->_maxLongSide = v5;
  return v4;
}

- (double)transformScaleForSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (size.width >= size.height)
  {
    size.height = size.width;
  }

  result = self->_nominalShortSide / height;
  v5 = floor(size.height * result);
  minLongSide = self->_minLongSide;
  if (v5 < minLongSide || (minLongSide = self->_maxLongSide, v5 > minLongSide))
  {
    result = minLongSide / size.height;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)transformSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width < 0.0 || size.height < 0.0)
  {
    NSStringFromSize(size);
    objc_claimAutoreleasedReturnValue();
    v8 = _PFAssertFailHandler();
    [(IPABestFitShortSideWithLongSideLimit *)v8 isBestFitPolicy];
  }

  else
  {
    [(IPABestFitShortSideWithLongSideLimit *)self transformScaleForSize:size.width, size.height];
    v6 = height * v5;
    v7 = width * v5;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (IPABestFitShortSideWithLongSideLimit)initWithNominalShortSide:(int64_t)side minLongSide:(int64_t)longSide maxLongSide:(int64_t)maxLongSide
{
  if (side <= 0)
  {
    _PFAssertFailHandler();
    goto LABEL_8;
  }

  if (longSide <= 0)
  {
LABEL_8:
    _PFAssertFailHandler();
    goto LABEL_9;
  }

  if (maxLongSide <= 0)
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
    result->_nominalShortSide = side;
    result->_minLongSide = longSide;
    result->_maxLongSide = maxLongSide;
  }

  return result;
}

@end