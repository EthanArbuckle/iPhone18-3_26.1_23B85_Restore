@interface MOPlace
- (BOOL)_isString:(id)string equalToString:(id)toString;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSimilarToPlace:(id)place locationThreshold:(double)threshold;
- (MOPlace)initWithCoder:(id)coder;
- (MOPlace)initWithIdentifier:(id)identifier;
- (MOPlace)initWithIdentifier:(id)identifier placeName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)self0 categoryMuid:(id)self1 distanceToHomeInMiles:(double)self2 placeNameConfidence:(double)self3 familiarityIndexLOI:(double)self4 priorityScore:(double)self5 startDate:(id)self6 endDate:(id)self7;
- (MOPlace)initWithPlaceName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)self0 distanceToHomeInMiles:(double)self1 placeNameConfidence:(double)self2 familiarityIndexLOI:(double)self3 startDate:(id)self4 endDate:(id)self5;
- (MOPlace)initWithPlaceName:(id)name placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)muid distanceToHomeInMiles:(double)self0 placeNameConfidence:(double)self1 familiarityIndexLOI:(double)self2;
- (id)description;
- (id)placeKey;
- (id)promptDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPlace

- (BOOL)isSimilarToPlace:(id)place locationThreshold:(double)threshold
{
  placeCopy = place;
  if (placeCopy)
  {
    placeName = [(MOPlace *)self placeName];
    placeName2 = [placeCopy placeName];
    if (![(MOPlace *)self _isString:placeName equalToString:placeName2])
    {
      v28 = 0;
LABEL_9:

      goto LABEL_11;
    }

    enclosingArea = [(MOPlace *)self enclosingArea];
    enclosingArea2 = [placeCopy enclosingArea];
    v11 = [(MOPlace *)self _isString:enclosingArea equalToString:enclosingArea2];

    if (v11)
    {
      location = [(MOPlace *)self location];
      if (!location || (v13 = location, [placeCopy location], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
      {
        v28 = 1;
        goto LABEL_11;
      }

      v15 = [CLLocation alloc];
      location2 = [(MOPlace *)self location];
      [location2 latitude];
      v18 = v17;
      location3 = [(MOPlace *)self location];
      [location3 longitude];
      placeName = [v15 initWithLatitude:v18 longitude:v20];

      v21 = [CLLocation alloc];
      location4 = [placeCopy location];
      [location4 latitude];
      v24 = v23;
      location5 = [placeCopy location];
      [location5 longitude];
      placeName2 = [v21 initWithLatitude:v24 longitude:v26];

      [placeName distanceFromLocation:placeName2];
      v28 = v27 <= threshold;
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_11:

  return v28;
}

- (id)placeKey
{
  placeName = [(MOPlace *)self placeName];
  v4 = placeName;
  if (placeName)
  {
    v5 = placeName;
  }

  else
  {
    v5 = &stru_1000BA000;
  }

  v6 = v5;

  enclosingArea = [(MOPlace *)self enclosingArea];
  v8 = enclosingArea;
  if (enclosingArea)
  {
    v9 = enclosingArea;
  }

  else
  {
    v9 = &stru_1000BA000;
  }

  v10 = v9;

  v11 = [NSString stringWithFormat:@"%@|%@", v6, v10];

  return v11;
}

- (BOOL)_isString:(id)string equalToString:(id)toString
{
  stringCopy = string;
  toStringCopy = toString;
  v7 = toStringCopy;
  if (stringCopy | toStringCopy)
  {
    v8 = 0;
    if (stringCopy && toStringCopy)
    {
      v8 = [stringCopy isEqualToString:toStringCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (MOPlace)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOPlace initWithIdentifier:v5];
    }
  }

  v6 = [(MOPlace *)self initWithIdentifier:identifierCopy placeName:&stru_1000BA000 enclosingArea:&stru_1000BA000 placeType:0 placeUserType:0 location:0 locationMode:-1.0 poiCategory:-1.0 categoryMuid:0.0 distanceToHomeInMiles:-1.0 placeNameConfidence:0 familiarityIndexLOI:&stru_1000BA000 priorityScore:0 startDate:0 endDate:0];

  return v6;
}

- (MOPlace)initWithPlaceName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)self0 distanceToHomeInMiles:(double)self1 placeNameConfidence:(double)self2 familiarityIndexLOI:(double)self3 startDate:(id)self4 endDate:(id)self5
{
  endDateCopy = endDate;
  dateCopy = date;
  muidCopy = muid;
  categoryCopy = category;
  locationCopy = location;
  areaCopy = area;
  nameCopy = name;
  v28 = +[NSUUID UUID];
  v29 = [(MOPlace *)self initWithIdentifier:v28 placeName:nameCopy enclosingArea:areaCopy placeType:type placeUserType:userType location:locationCopy locationMode:miles poiCategory:confidence categoryMuid:i distanceToHomeInMiles:-1.0 placeNameConfidence:mode familiarityIndexLOI:categoryCopy priorityScore:muidCopy startDate:dateCopy endDate:endDateCopy];

  return v29;
}

- (MOPlace)initWithPlaceName:(id)name placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)muid distanceToHomeInMiles:(double)self0 placeNameConfidence:(double)self1 familiarityIndexLOI:(double)self2
{
  muidCopy = muid;
  categoryCopy = category;
  locationCopy = location;
  nameCopy = name;
  v26 = +[NSUUID UUID];
  v27 = [(MOPlace *)self initWithIdentifier:v26 placeName:nameCopy enclosingArea:&stru_1000BA000 placeType:type placeUserType:userType location:locationCopy locationMode:miles poiCategory:confidence categoryMuid:i distanceToHomeInMiles:-1.0 placeNameConfidence:mode familiarityIndexLOI:categoryCopy priorityScore:muidCopy startDate:0 endDate:0];

  return v27;
}

- (MOPlace)initWithIdentifier:(id)identifier placeName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)self0 categoryMuid:(id)self1 distanceToHomeInMiles:(double)self2 placeNameConfidence:(double)self3 familiarityIndexLOI:(double)self4 priorityScore:(double)self5 startDate:(id)self6 endDate:(id)self7
{
  identifierCopy = identifier;
  obj = name;
  nameCopy = name;
  areaCopy = area;
  areaCopy2 = area;
  locationCopy = location;
  categoryCopy = category;
  muidCopy = muid;
  dateCopy = date;
  endDateCopy = endDate;
  v41.receiver = self;
  v41.super_class = MOPlace;
  v32 = [(MOPlace *)&v41 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_identifier, identifier);
    v33->_placeUserType = userType;
    v33->_placeType = type;
    objc_storeStrong(&v33->_placeName, obj);
    objc_storeStrong(&v33->_enclosingArea, areaCopy);
    objc_storeStrong(&v33->_location, location);
    v33->_locationMode = mode;
    objc_storeStrong(&v33->_poiCategory, category);
    objc_storeStrong(&v33->_categoryMuid, muid);
    v33->_proposition = 0;
    v33->_familiarityIndexLOI = i;
    v33->_distanceToHomeInMiles = miles;
    v33->_placeNameConfidence = confidence;
    v33->_priorityScore = score;
    objc_storeStrong(&v33->_startDate, date);
    objc_storeStrong(&v33->_endDate, endDate);
    v33->_sourceEventAccessType = 5;
  }

  return v33;
}

- (id)promptDescription
{
  placeName = [(MOPlace *)self placeName];

  if (placeName)
  {
    proposition = [(MOPlace *)self proposition];
    v5 = @"at";
    if (proposition == 2)
    {
      v5 = @"on";
    }

    if (proposition == 3)
    {
      v6 = @"in";
    }

    else
    {
      v6 = v5;
    }

    placeName2 = [(MOPlace *)self placeName];
    v8 = [NSString stringWithFormat:@"%@ %@", v6, placeName2];
  }

  else
  {
    v8 = &stru_1000BA000;
  }

  return v8;
}

- (id)description
{
  identifier = [(MOPlace *)self identifier];
  placeName = [(MOPlace *)self placeName];
  mask = [placeName mask];
  [(MOPlace *)self placeNameConfidence];
  v7 = v6;
  placeType = [(MOPlace *)self placeType];
  placeUserType = [(MOPlace *)self placeUserType];
  categoryMuid = [(MOPlace *)self categoryMuid];
  locationMode = [(MOPlace *)self locationMode];
  [(MOPlace *)self distanceToHomeInMiles];
  v13 = v12;
  poiCategory = [(MOPlace *)self poiCategory];
  [(MOPlace *)self familiarityIndexLOI];
  v16 = [NSString stringWithFormat:@"<MOPlace identifier, %@, name, %@, confidence, %f, placeType, %lu, placeUserType, %lu, categoryMuid, %@, locationMode, %lu, distanceToHomeInMiles, %f, poiCategory, %@, familiarityIndexLOI, %f>", identifier, mask, v7, placeType, placeUserType, categoryMuid, locationMode, v13, poiCategory, v15];

  return v16;
}

- (MOPlace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosingArea"];
  v29 = [coderCopy decodeInt64ForKey:@"placeType"];
  v28 = [coderCopy decodeInt64ForKey:@"placeUserType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v27 = [coderCopy decodeInt64ForKey:@"proposition"];
  [coderCopy decodeFloatForKey:@"placeNameConfidence"];
  v8 = v7;
  v9 = [coderCopy decodeInt64ForKey:@"locationMode"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryMuid"];
  [coderCopy decodeFloatForKey:@"distanceToHomeInMiles"];
  v13 = v12;
  [coderCopy decodeFloatForKey:@"familiarityIndexLOI"];
  v15 = v14;
  [coderCopy decodeFloatForKey:@"priorityScore"];
  v17 = v16;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v26 = v10;
  v20 = v10;
  v21 = v6;
  v22 = [(MOPlace *)self initWithIdentifier:v4 placeName:v5 enclosingArea:v30 placeType:v29 placeUserType:v28 location:v6 locationMode:v13 poiCategory:v8 categoryMuid:v15 distanceToHomeInMiles:v17 placeNameConfidence:v9 familiarityIndexLOI:v26 priorityScore:v11 startDate:v18 endDate:v19];
  v23 = v22;
  if (v22)
  {
    [(MOPlace *)v22 setProposition:v27];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOPlace *)v23 setSourceEventIdentifier:v24];

    -[MOPlace setSourceEventAccessType:](v23, "setSourceEventAccessType:", [coderCopy decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_placeName forKey:@"placeName"];
  [coderCopy encodeInt64:self->_placeType forKey:@"placeType"];
  [coderCopy encodeInt64:self->_placeUserType forKey:@"placeUserType"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeInt64:self->_proposition forKey:@"proposition"];
  [coderCopy encodeInt64:self->_locationMode forKey:@"locationMode"];
  [coderCopy encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [coderCopy encodeObject:self->_categoryMuid forKey:@"categoryMuid"];
  priorityScore = self->_priorityScore;
  *&priorityScore = priorityScore;
  [coderCopy encodeFloat:@"priorityScore" forKey:priorityScore];
  distanceToHomeInMiles = self->_distanceToHomeInMiles;
  *&distanceToHomeInMiles = distanceToHomeInMiles;
  [coderCopy encodeFloat:@"distanceToHomeInMiles" forKey:distanceToHomeInMiles];
  placeNameConfidence = self->_placeNameConfidence;
  *&placeNameConfidence = placeNameConfidence;
  [coderCopy encodeFloat:@"placeNameConfidence" forKey:placeNameConfidence];
  familiarityIndexLOI = self->_familiarityIndexLOI;
  *&familiarityIndexLOI = familiarityIndexLOI;
  [coderCopy encodeFloat:@"familiarityIndexLOI" forKey:familiarityIndexLOI];
  [coderCopy encodeObject:self->_enclosingArea forKey:@"enclosingArea"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  identifier = [(MOPlace *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(MOPlace *)self identifier];
        if (identifier || ([(MOPlace *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(MOPlace *)self identifier];
          identifier3 = [(MOPlace *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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