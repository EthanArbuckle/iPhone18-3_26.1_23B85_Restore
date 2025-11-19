@interface MOPlace
- (BOOL)_isString:(id)a3 equalToString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSimilarToPlace:(id)a3 locationThreshold:(double)a4;
- (MOPlace)initWithCoder:(id)a3;
- (MOPlace)initWithIdentifier:(id)a3;
- (MOPlace)initWithIdentifier:(id)a3 placeName:(id)a4 enclosingArea:(id)a5 placeType:(unint64_t)a6 placeUserType:(unint64_t)a7 location:(id)a8 locationMode:(unint64_t)a9 poiCategory:(id)a10 categoryMuid:(id)a11 distanceToHomeInMiles:(double)a12 placeNameConfidence:(double)a13 familiarityIndexLOI:(double)a14 priorityScore:(double)a15 startDate:(id)a16 endDate:(id)a17;
- (MOPlace)initWithPlaceName:(id)a3 enclosingArea:(id)a4 placeType:(unint64_t)a5 placeUserType:(unint64_t)a6 location:(id)a7 locationMode:(unint64_t)a8 poiCategory:(id)a9 categoryMuid:(id)a10 distanceToHomeInMiles:(double)a11 placeNameConfidence:(double)a12 familiarityIndexLOI:(double)a13 startDate:(id)a14 endDate:(id)a15;
- (MOPlace)initWithPlaceName:(id)a3 placeType:(unint64_t)a4 placeUserType:(unint64_t)a5 location:(id)a6 locationMode:(unint64_t)a7 poiCategory:(id)a8 categoryMuid:(id)a9 distanceToHomeInMiles:(double)a10 placeNameConfidence:(double)a11 familiarityIndexLOI:(double)a12;
- (id)description;
- (id)placeKey;
- (id)promptDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPlace

- (BOOL)isSimilarToPlace:(id)a3 locationThreshold:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(MOPlace *)self placeName];
    v8 = [v6 placeName];
    if (![(MOPlace *)self _isString:v7 equalToString:v8])
    {
      v28 = 0;
LABEL_9:

      goto LABEL_11;
    }

    v9 = [(MOPlace *)self enclosingArea];
    v10 = [v6 enclosingArea];
    v11 = [(MOPlace *)self _isString:v9 equalToString:v10];

    if (v11)
    {
      v12 = [(MOPlace *)self location];
      if (!v12 || (v13 = v12, [v6 location], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
      {
        v28 = 1;
        goto LABEL_11;
      }

      v15 = [CLLocation alloc];
      v16 = [(MOPlace *)self location];
      [v16 latitude];
      v18 = v17;
      v19 = [(MOPlace *)self location];
      [v19 longitude];
      v7 = [v15 initWithLatitude:v18 longitude:v20];

      v21 = [CLLocation alloc];
      v22 = [v6 location];
      [v22 latitude];
      v24 = v23;
      v25 = [v6 location];
      [v25 longitude];
      v8 = [v21 initWithLatitude:v24 longitude:v26];

      [v7 distanceFromLocation:v8];
      v28 = v27 <= a4;
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_11:

  return v28;
}

- (id)placeKey
{
  v3 = [(MOPlace *)self placeName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1000BA000;
  }

  v6 = v5;

  v7 = [(MOPlace *)self enclosingArea];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1000BA000;
  }

  v10 = v9;

  v11 = [NSString stringWithFormat:@"%@|%@", v6, v10];

  return v11;
}

- (BOOL)_isString:(id)a3 equalToString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (MOPlace)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOPlace initWithIdentifier:v5];
    }
  }

  v6 = [(MOPlace *)self initWithIdentifier:v4 placeName:&stru_1000BA000 enclosingArea:&stru_1000BA000 placeType:0 placeUserType:0 location:0 locationMode:-1.0 poiCategory:-1.0 categoryMuid:0.0 distanceToHomeInMiles:-1.0 placeNameConfidence:0 familiarityIndexLOI:&stru_1000BA000 priorityScore:0 startDate:0 endDate:0];

  return v6;
}

- (MOPlace)initWithPlaceName:(id)a3 enclosingArea:(id)a4 placeType:(unint64_t)a5 placeUserType:(unint64_t)a6 location:(id)a7 locationMode:(unint64_t)a8 poiCategory:(id)a9 categoryMuid:(id)a10 distanceToHomeInMiles:(double)a11 placeNameConfidence:(double)a12 familiarityIndexLOI:(double)a13 startDate:(id)a14 endDate:(id)a15
{
  v21 = a15;
  v22 = a14;
  v23 = a10;
  v24 = a9;
  v25 = a7;
  v26 = a4;
  v27 = a3;
  v28 = +[NSUUID UUID];
  v29 = [(MOPlace *)self initWithIdentifier:v28 placeName:v27 enclosingArea:v26 placeType:a5 placeUserType:a6 location:v25 locationMode:a11 poiCategory:a12 categoryMuid:a13 distanceToHomeInMiles:-1.0 placeNameConfidence:a8 familiarityIndexLOI:v24 priorityScore:v23 startDate:v22 endDate:v21];

  return v29;
}

- (MOPlace)initWithPlaceName:(id)a3 placeType:(unint64_t)a4 placeUserType:(unint64_t)a5 location:(id)a6 locationMode:(unint64_t)a7 poiCategory:(id)a8 categoryMuid:(id)a9 distanceToHomeInMiles:(double)a10 placeNameConfidence:(double)a11 familiarityIndexLOI:(double)a12
{
  v22 = a9;
  v23 = a8;
  v24 = a6;
  v25 = a3;
  v26 = +[NSUUID UUID];
  v27 = [(MOPlace *)self initWithIdentifier:v26 placeName:v25 enclosingArea:&stru_1000BA000 placeType:a4 placeUserType:a5 location:v24 locationMode:a10 poiCategory:a11 categoryMuid:a12 distanceToHomeInMiles:-1.0 placeNameConfidence:a7 familiarityIndexLOI:v23 priorityScore:v22 startDate:0 endDate:0];

  return v27;
}

- (MOPlace)initWithIdentifier:(id)a3 placeName:(id)a4 enclosingArea:(id)a5 placeType:(unint64_t)a6 placeUserType:(unint64_t)a7 location:(id)a8 locationMode:(unint64_t)a9 poiCategory:(id)a10 categoryMuid:(id)a11 distanceToHomeInMiles:(double)a12 placeNameConfidence:(double)a13 familiarityIndexLOI:(double)a14 priorityScore:(double)a15 startDate:(id)a16 endDate:(id)a17
{
  v26 = a3;
  obj = a4;
  v27 = a4;
  v38 = a5;
  v28 = a5;
  v40 = a8;
  v39 = a10;
  v29 = a11;
  v30 = a16;
  v31 = a17;
  v41.receiver = self;
  v41.super_class = MOPlace;
  v32 = [(MOPlace *)&v41 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_identifier, a3);
    v33->_placeUserType = a7;
    v33->_placeType = a6;
    objc_storeStrong(&v33->_placeName, obj);
    objc_storeStrong(&v33->_enclosingArea, v38);
    objc_storeStrong(&v33->_location, a8);
    v33->_locationMode = a9;
    objc_storeStrong(&v33->_poiCategory, a10);
    objc_storeStrong(&v33->_categoryMuid, a11);
    v33->_proposition = 0;
    v33->_familiarityIndexLOI = a14;
    v33->_distanceToHomeInMiles = a12;
    v33->_placeNameConfidence = a13;
    v33->_priorityScore = a15;
    objc_storeStrong(&v33->_startDate, a16);
    objc_storeStrong(&v33->_endDate, a17);
    v33->_sourceEventAccessType = 5;
  }

  return v33;
}

- (id)promptDescription
{
  v3 = [(MOPlace *)self placeName];

  if (v3)
  {
    v4 = [(MOPlace *)self proposition];
    v5 = @"at";
    if (v4 == 2)
    {
      v5 = @"on";
    }

    if (v4 == 3)
    {
      v6 = @"in";
    }

    else
    {
      v6 = v5;
    }

    v7 = [(MOPlace *)self placeName];
    v8 = [NSString stringWithFormat:@"%@ %@", v6, v7];
  }

  else
  {
    v8 = &stru_1000BA000;
  }

  return v8;
}

- (id)description
{
  v3 = [(MOPlace *)self identifier];
  v4 = [(MOPlace *)self placeName];
  v5 = [v4 mask];
  [(MOPlace *)self placeNameConfidence];
  v7 = v6;
  v8 = [(MOPlace *)self placeType];
  v9 = [(MOPlace *)self placeUserType];
  v10 = [(MOPlace *)self categoryMuid];
  v11 = [(MOPlace *)self locationMode];
  [(MOPlace *)self distanceToHomeInMiles];
  v13 = v12;
  v14 = [(MOPlace *)self poiCategory];
  [(MOPlace *)self familiarityIndexLOI];
  v16 = [NSString stringWithFormat:@"<MOPlace identifier, %@, name, %@, confidence, %f, placeType, %lu, placeUserType, %lu, categoryMuid, %@, locationMode, %lu, distanceToHomeInMiles, %f, poiCategory, %@, familiarityIndexLOI, %f>", v3, v5, v7, v8, v9, v10, v11, v13, v14, v15];

  return v16;
}

- (MOPlace)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"enclosingArea"];
  v29 = [v3 decodeInt64ForKey:@"placeType"];
  v28 = [v3 decodeInt64ForKey:@"placeUserType"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v27 = [v3 decodeInt64ForKey:@"proposition"];
  [v3 decodeFloatForKey:@"placeNameConfidence"];
  v8 = v7;
  v9 = [v3 decodeInt64ForKey:@"locationMode"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"categoryMuid"];
  [v3 decodeFloatForKey:@"distanceToHomeInMiles"];
  v13 = v12;
  [v3 decodeFloatForKey:@"familiarityIndexLOI"];
  v15 = v14;
  [v3 decodeFloatForKey:@"priorityScore"];
  v17 = v16;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v26 = v10;
  v20 = v10;
  v21 = v6;
  v22 = [(MOPlace *)self initWithIdentifier:v4 placeName:v5 enclosingArea:v30 placeType:v29 placeUserType:v28 location:v6 locationMode:v13 poiCategory:v8 categoryMuid:v15 distanceToHomeInMiles:v17 placeNameConfidence:v9 familiarityIndexLOI:v26 priorityScore:v11 startDate:v18 endDate:v19];
  v23 = v22;
  if (v22)
  {
    [(MOPlace *)v22 setProposition:v27];
    v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOPlace *)v23 setSourceEventIdentifier:v24];

    -[MOPlace setSourceEventAccessType:](v23, "setSourceEventAccessType:", [v3 decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v9 = a3;
  [v9 encodeObject:identifier forKey:@"identifier"];
  [v9 encodeObject:self->_placeName forKey:@"placeName"];
  [v9 encodeInt64:self->_placeType forKey:@"placeType"];
  [v9 encodeInt64:self->_placeUserType forKey:@"placeUserType"];
  [v9 encodeObject:self->_location forKey:@"location"];
  [v9 encodeInt64:self->_proposition forKey:@"proposition"];
  [v9 encodeInt64:self->_locationMode forKey:@"locationMode"];
  [v9 encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [v9 encodeObject:self->_categoryMuid forKey:@"categoryMuid"];
  priorityScore = self->_priorityScore;
  *&priorityScore = priorityScore;
  [v9 encodeFloat:@"priorityScore" forKey:priorityScore];
  distanceToHomeInMiles = self->_distanceToHomeInMiles;
  *&distanceToHomeInMiles = distanceToHomeInMiles;
  [v9 encodeFloat:@"distanceToHomeInMiles" forKey:distanceToHomeInMiles];
  placeNameConfidence = self->_placeNameConfidence;
  *&placeNameConfidence = placeNameConfidence;
  [v9 encodeFloat:@"placeNameConfidence" forKey:placeNameConfidence];
  familiarityIndexLOI = self->_familiarityIndexLOI;
  *&familiarityIndexLOI = familiarityIndexLOI;
  [v9 encodeFloat:@"familiarityIndexLOI" forKey:familiarityIndexLOI];
  [v9 encodeObject:self->_enclosingArea forKey:@"enclosingArea"];
  [v9 encodeObject:self->_startDate forKey:@"startDate"];
  [v9 encodeObject:self->_endDate forKey:@"endDate"];
  [v9 encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [v9 encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  v2 = [(MOPlace *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOPlace *)self identifier];
        if (v8 || ([(MOPlace *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOPlace *)self identifier];
          v10 = [(MOPlace *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOPlace initWithIdentifier:]";
  v3 = 1024;
  v4 = 23;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v1, 0x12u);
}

@end