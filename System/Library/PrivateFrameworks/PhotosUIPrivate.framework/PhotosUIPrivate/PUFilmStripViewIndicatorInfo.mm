@interface PUFilmStripViewIndicatorInfo
- (BOOL)isEqual:(id)a3;
- (PUFilmStripViewIndicatorInfo)initWithLocation:(double)a3 preferredColor:(id)a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUFilmStripViewIndicatorInfo;
  if (-[PUFilmStripViewIndicatorInfo isEqual:](&v11, sel_isEqual_, v4) && (normalizedLocation = self->_normalizedLocation, [v4 normalizedLocation], normalizedLocation == v6))
  {
    preferredColor = self->_preferredColor;
    v8 = [v4 preferredColor];
    if (preferredColor == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(UIColor *)preferredColor isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PUFilmStripViewIndicatorInfo)initWithLocation:(double)a3 preferredColor:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PUFilmStripViewIndicatorInfo;
  v8 = [(PUFilmStripViewIndicatorInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_normalizedLocation = a3;
    objc_storeStrong(&v8->_preferredColor, a4);
  }

  return v9;
}

@end