@interface PLRevGeoPlaceInfo
- (PLRevGeoPlaceInfo)initWithCoder:(id)coder;
- (PLRevGeoPlaceInfo)initWithPlaceName:(id)name;
- (void)addPlaceInfoArea:(double)area;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLRevGeoPlaceInfo

- (PLRevGeoPlaceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PLRevGeoPlaceInfo;
  v5 = [(PLRevGeoPlaceInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:PLRevGeoPlaceInfoPlaceNameKey];
    placeName = v5->_placeName;
    v5->_placeName = v6;

    v8 = [coderCopy containsValueForKey:PLRevGeoPlaceInfoMinimumAreaKey];
    v9 = [coderCopy containsValueForKey:PLRevGeoPlaceInfoMaximumAreaKey];
    if (v8)
    {
      if (v9)
      {
        [coderCopy decodeDoubleForKey:PLRevGeoPlaceInfoMinimumAreaKey];
        v5->_minimumArea = v10;
        [coderCopy decodeDoubleForKey:PLRevGeoPlaceInfoMaximumAreaKey];
        v5->_maximumArea = v11;
        v5->_hasArea = v11 != 0.0;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_placeName forKey:PLRevGeoPlaceInfoPlaceNameKey];
  if (self->_hasArea)
  {
    [coderCopy encodeDouble:PLRevGeoPlaceInfoMinimumAreaKey forKey:self->_minimumArea];
    [coderCopy encodeDouble:PLRevGeoPlaceInfoMaximumAreaKey forKey:self->_maximumArea];
  }
}

- (void)addPlaceInfoArea:(double)area
{
  if (area != 0.0)
  {
    self->_hasArea = 1;
    v3 = *&self->_minimumArea;
    v4 = vcgtq_f64(vdupq_lane_s64(*&area, 0), v3);
    v5.i64[0] = *&self->_minimumArea;
    *&v5.i64[1] = area;
    v3.f64[0] = area;
    *&self->_minimumArea = vbslq_s8(v4, v5, v3);
  }
}

- (PLRevGeoPlaceInfo)initWithPlaceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = PLRevGeoPlaceInfo;
  v5 = [(PLRevGeoPlaceInfo *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v5[8] = 0;
    *(v5 + 24) = xmmword_19C60B080;
  }

  return v5;
}

@end