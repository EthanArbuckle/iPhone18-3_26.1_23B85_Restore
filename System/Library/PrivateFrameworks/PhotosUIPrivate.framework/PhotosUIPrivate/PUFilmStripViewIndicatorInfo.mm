@interface PUFilmStripViewIndicatorInfo
- (BOOL)isEqual:(id)equal;
- (PUFilmStripViewIndicatorInfo)initWithLocation:(double)location preferredColor:(id)color;
- (unint64_t)hash;
@end

@implementation PUFilmStripViewIndicatorInfo

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PUFilmStripViewIndicatorInfo;
  v3 = [(PUFilmStripViewIndicatorInfo *)&v6 hash];
  v4 = (self->_normalizedLocation * 1000.0);
  return v3 + [(UIColor *)self->_preferredColor hash]+ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = PUFilmStripViewIndicatorInfo;
  if (-[PUFilmStripViewIndicatorInfo isEqual:](&v11, sel_isEqual_, equalCopy) && (normalizedLocation = self->_normalizedLocation, [equalCopy normalizedLocation], normalizedLocation == v6))
  {
    preferredColor = self->_preferredColor;
    preferredColor = [equalCopy preferredColor];
    if (preferredColor == preferredColor)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(UIColor *)preferredColor isEqual:preferredColor];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PUFilmStripViewIndicatorInfo)initWithLocation:(double)location preferredColor:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = PUFilmStripViewIndicatorInfo;
  v8 = [(PUFilmStripViewIndicatorInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_normalizedLocation = location;
    objc_storeStrong(&v8->_preferredColor, color);
  }

  return v9;
}

@end