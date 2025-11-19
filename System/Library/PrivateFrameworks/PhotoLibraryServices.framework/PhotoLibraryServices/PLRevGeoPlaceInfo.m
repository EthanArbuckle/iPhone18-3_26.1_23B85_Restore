@interface PLRevGeoPlaceInfo
- (PLRevGeoPlaceInfo)initWithCoder:(id)a3;
- (PLRevGeoPlaceInfo)initWithPlaceName:(id)a3;
- (void)addPlaceInfoArea:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLRevGeoPlaceInfo

- (PLRevGeoPlaceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLRevGeoPlaceInfo;
  v5 = [(PLRevGeoPlaceInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:PLRevGeoPlaceInfoPlaceNameKey];
    placeName = v5->_placeName;
    v5->_placeName = v6;

    v8 = [v4 containsValueForKey:PLRevGeoPlaceInfoMinimumAreaKey];
    v9 = [v4 containsValueForKey:PLRevGeoPlaceInfoMaximumAreaKey];
    if (v8)
    {
      if (v9)
      {
        [v4 decodeDoubleForKey:PLRevGeoPlaceInfoMinimumAreaKey];
        v5->_minimumArea = v10;
        [v4 decodeDoubleForKey:PLRevGeoPlaceInfoMaximumAreaKey];
        v5->_maximumArea = v11;
        v5->_hasArea = v11 != 0.0;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_placeName forKey:PLRevGeoPlaceInfoPlaceNameKey];
  if (self->_hasArea)
  {
    [v4 encodeDouble:PLRevGeoPlaceInfoMinimumAreaKey forKey:self->_minimumArea];
    [v4 encodeDouble:PLRevGeoPlaceInfoMaximumAreaKey forKey:self->_maximumArea];
  }
}

- (void)addPlaceInfoArea:(double)a3
{
  if (a3 != 0.0)
  {
    self->_hasArea = 1;
    v3 = *&self->_minimumArea;
    v4 = vcgtq_f64(vdupq_lane_s64(*&a3, 0), v3);
    v5.i64[0] = *&self->_minimumArea;
    *&v5.i64[1] = a3;
    v3.f64[0] = a3;
    *&self->_minimumArea = vbslq_s8(v4, v5, v3);
  }
}

- (PLRevGeoPlaceInfo)initWithPlaceName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLRevGeoPlaceInfo;
  v5 = [(PLRevGeoPlaceInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v5[8] = 0;
    *(v5 + 24) = xmmword_19C60B080;
  }

  return v5;
}

@end