@interface MOResource
+ (id)describeType:(unint64_t)type;
+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)type;
+ (id)getDedupeKeyForResourceData:(id)data type:(unint64_t)type error:(id *)error;
+ (id)getDictionaryForData:(id)data error:(id *)error;
+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)string;
- (BOOL)isEqual:(id)equal;
- (MOResource)initWithCoder:(id)coder;
- (MOResource)initWithEvergreenTypeName:(id)name promptIndex:(unint64_t)index;
- (MOResource)initWithEvergreenTypeName:(id)name promptIndexes:(id)indexes;
- (MOResource)initWithIdentifier:(id)identifier;
- (MOResource)initWithIdentifier:(id)identifier name:(id)name type:(unint64_t)type assets:(id)assets data:(id)data value:(double)value priorityScore:(double)score photoCurationScore:(id)self0 photoFaceCount:(unint64_t)self1 photoAssetMediaType:(unint64_t)self2;
- (MOResource)initWithIdentifier:(id)identifier name:(id)name type:(unint64_t)type assets:(id)assets data:(id)data value:(double)value priorityScore:(double)score photoCurationScore:(id)self0 photoFaceCount:(unint64_t)self1 photoAssetMediaType:(unint64_t)self2 photoAssetCloudIdentifier:(id)self3;
- (MOResource)initWithName:(id)name mapItemHandle:(id)handle priorityScore:(double)score;
- (MOResource)initWithName:(id)name type:(unint64_t)type;
- (MOResource)initWithName:(id)name type:(unint64_t)type assets:(id)assets;
- (MOResource)initWithName:(id)name type:(unint64_t)type dict:(id)dict value:(double)value;
- (MOResource)initWithName:(id)name type:(unint64_t)type photoAssetCloudIdentifier:(id)identifier;
- (MOResource)initWithName:(id)name value:(double)value;
- (MOResource)initWithPerson:(id)person;
- (MOResource)initWithPlace:(id)place startDate:(id)date endDate:(id)endDate;
- (MOResource)initWithWeather:(id)weather;
- (double)endDate;
- (double)startDate;
- (id)cityName;
- (id)describeType;
- (id)description;
- (id)enclosingArea;
- (id)getDedupeKeyError:(id *)error;
- (id)getDictionary;
- (id)location;
- (id)metaData;
- (id)poiCategory;
- (id)promptIndexes;
- (id)temperature;
- (id)weatherSummary;
- (id)weatherSymbolName;
- (id)windSpeed;
- (unint64_t)dataAccessTypeFromResourceType:(unint64_t)type;
- (unint64_t)evergreenType;
- (unint64_t)hash;
- (unint64_t)placeType;
- (unint64_t)placeUserType;
- (unint64_t)promptCount;
- (unint64_t)promptIndex;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOResource

- (MOResource)initWithPerson:(id)person
{
  personCopy = person;
  contactIdentifier = [personCopy contactIdentifier];
  v6 = [NSUUID uuidFromString:contactIdentifier];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(MOResource(MOPerson) *)v6 initWithPerson:personCopy, v7];
  }

  name = [personCopy name];
  contactIdentifier2 = [personCopy contactIdentifier];
  [personCopy priorityScore];
  v11 = [(MOResource *)self initWithIdentifier:v6 name:name type:11 assets:contactIdentifier2 data:0 value:0 priorityScore:0.0 photoCurationScore:v10 photoFaceCount:0 photoAssetMediaType:0];

  return v11;
}

- (MOResource)initWithEvergreenTypeName:(id)name promptIndex:(unint64_t)index
{
  nameCopy = name;
  v12[0] = @"evergreen_type";
  v7 = [NSNumber numberWithUnsignedInteger:[MOResource evergreenTypeFromEvergreenTypeString:nameCopy]];
  v13[0] = v7;
  v12[1] = @"evergreen_index";
  v8 = [NSNumber numberWithUnsignedInteger:index];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [(MOResource *)self initWithName:nameCopy type:9 dict:v9 value:index];
  return v10;
}

- (MOResource)initWithEvergreenTypeName:(id)name promptIndexes:(id)indexes
{
  indexesCopy = indexes;
  nameCopy = name;
  v13[0] = @"evergreen_type";
  v8 = [NSNumber numberWithUnsignedInteger:[MOResource evergreenTypeFromEvergreenTypeString:nameCopy]];
  v14[0] = v8;
  v14[1] = indexesCopy;
  v13[1] = @"evergreen_indexes";
  v13[2] = @"evergreen_count";
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [indexesCopy count]);
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = [(MOResource *)self initWithName:nameCopy type:9 dict:v10 value:0.0];
  return v11;
}

- (unint64_t)evergreenType
{
  getDictionary = [(MOResource *)self getDictionary];

  if (!getDictionary)
  {
    return 0;
  }

  getDictionary2 = [(MOResource *)self getDictionary];
  v5 = [getDictionary2 objectForKeyedSubscript:@"evergreen_type"];
  intValue = [v5 intValue];

  return intValue;
}

- (unint64_t)promptIndex
{
  getDictionary = [(MOResource *)self getDictionary];

  if (getDictionary)
  {
    getDictionary2 = [(MOResource *)self getDictionary];
    v5 = [getDictionary2 objectForKeyedSubscript:@"evergreen_index"];
    intValue = [v5 intValue];
  }

  else
  {
    [(MOResource *)self value];
    return v7;
  }

  return intValue;
}

- (id)promptIndexes
{
  getDictionary = [(MOResource *)self getDictionary];

  if (getDictionary)
  {
    getDictionary2 = [(MOResource *)self getDictionary];
    v5 = [getDictionary2 objectForKeyedSubscript:@"evergreen_indexes"];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (unint64_t)promptCount
{
  getDictionary = [(MOResource *)self getDictionary];

  if (getDictionary)
  {
    getDictionary2 = [(MOResource *)self getDictionary];
    v5 = [getDictionary2 objectForKeyedSubscript:@"evergreen_count"];
    intValue = [v5 intValue];
  }

  else
  {
    [(MOResource *)self value];
    return v7;
  }

  return intValue;
}

+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_1000B4D50[type - 1];
  }

  return v4;
}

+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)string
{
  stringCopy = string;
  if ([@"WISDOM" isEqualToString:stringCopy])
  {
    v4 = 1;
  }

  else if ([@"PURPOSE" isEqualToString:stringCopy])
  {
    v4 = 4;
  }

  else if ([@"KINDNESS" isEqualToString:stringCopy])
  {
    v4 = 3;
  }

  else if ([@"GRATITUDE" isEqualToString:stringCopy])
  {
    v4 = 2;
  }

  else if ([@"CREATIVITY" isEqualToString:stringCopy])
  {
    v4 = 6;
  }

  else if ([@"RESILIENCE" isEqualToString:stringCopy])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MOResource)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOResource initWithIdentifier:v5];
    }
  }

  v6 = [(MOResource *)self initWithIdentifier:identifierCopy name:@"Resource" type:0 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v6;
}

- (MOResource)initWithName:(id)name type:(unint64_t)type assets:(id)assets
{
  assetsCopy = assets;
  nameCopy = name;
  v10 = +[NSUUID UUID];
  v11 = [(MOResource *)self initWithIdentifier:v10 name:nameCopy type:type assets:assetsCopy data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v11;
}

- (MOResource)initWithName:(id)name type:(unint64_t)type photoAssetCloudIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  v10 = +[NSUUID UUID];
  v11 = [(MOResource *)self initWithIdentifier:v10 name:nameCopy type:type assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:identifierCopy];

  return v11;
}

- (MOResource)initWithName:(id)name type:(unint64_t)type
{
  nameCopy = name;
  v7 = +[NSUUID UUID];
  v8 = [(MOResource *)self initWithIdentifier:v7 name:nameCopy type:type assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v8;
}

- (MOResource)initWithName:(id)name value:(double)value
{
  nameCopy = name;
  v7 = +[NSUUID UUID];
  v8 = [(MOResource *)self initWithIdentifier:v7 name:nameCopy type:1 assets:0 data:0 value:0 priorityScore:value photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v8;
}

- (MOResource)initWithName:(id)name type:(unint64_t)type dict:(id)dict value:(double)value
{
  nameCopy = name;
  if (dict)
  {
    v17 = 0;
    dict = [NSJSONSerialization dataWithJSONObject:dict options:0 error:&v17];
    v11 = v17;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = dict == 0;
    }

    if (v12)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [MOResource initWithName:v11 type:v13 dict:? value:?];
      }
    }
  }

  v14 = +[NSUUID UUID];
  v15 = [(MOResource *)self initWithIdentifier:v14 name:nameCopy type:type assets:0 data:dict value:0 priorityScore:value photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v15;
}

- (MOResource)initWithIdentifier:(id)identifier name:(id)name type:(unint64_t)type assets:(id)assets data:(id)data value:(double)value priorityScore:(double)score photoCurationScore:(id)self0 photoFaceCount:(unint64_t)self1 photoAssetMediaType:(unint64_t)self2
{
  curationScoreCopy = curationScore;
  dataCopy = data;
  assetsCopy = assets;
  nameCopy = name;
  v23 = +[NSUUID UUID];
  v24 = [(MOResource *)self initWithIdentifier:v23 name:nameCopy type:type assets:assetsCopy data:dataCopy value:curationScoreCopy priorityScore:value photoCurationScore:score photoFaceCount:count photoAssetMediaType:mediaType photoAssetCloudIdentifier:0];

  return v24;
}

- (MOResource)initWithIdentifier:(id)identifier name:(id)name type:(unint64_t)type assets:(id)assets data:(id)data value:(double)value priorityScore:(double)score photoCurationScore:(id)self0 photoFaceCount:(unint64_t)self1 photoAssetMediaType:(unint64_t)self2 photoAssetCloudIdentifier:(id)self3
{
  identifierCopy = identifier;
  nameCopy = name;
  assetsCopy = assets;
  dataCopy = data;
  curationScoreCopy = curationScore;
  cloudIdentifierCopy = cloudIdentifier;
  v31.receiver = self;
  v31.super_class = MOResource;
  v24 = [(MOResource *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifier, identifier);
    objc_storeStrong(&v25->_name, name);
    v25->_type = type;
    objc_storeStrong(&v25->_assets, assets);
    objc_storeStrong(&v25->_data, data);
    v25->_value = value;
    v25->_priorityScore = score;
    objc_storeStrong(&v25->_photoCurationScore, curationScore);
    v25->_photoFaceCount = count;
    v25->_photoAssetMediaType = mediaType;
    objc_storeStrong(&v25->_photoAssetCloudIdentifier, cloudIdentifier);
    v25->_sourceEventAccessType = [(MOResource *)v25 dataAccessTypeFromResourceType:type];
  }

  return v25;
}

- (unint64_t)dataAccessTypeFromResourceType:(unint64_t)type
{
  if (type > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_1000A75E8[type];
  }
}

+ (id)getDictionaryForData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v13 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v13];
    v7 = v13;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "resource data dictionary , %@", buf, 0xCu);
    }

    v6 = v6;
    v7 = 0;
    v9 = v6;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_10:
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MOResource getDictionaryForData:v7 error:v10];
  }

  if (error)
  {
    v11 = v7;
    v9 = 0;
    *error = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)getDictionary
{
  v3 = objc_opt_class();
  data = [(MOResource *)self data];
  v5 = [v3 getDictionaryForData:data error:0];

  return v5;
}

- (id)description
{
  identifier = [(MOResource *)self identifier];
  name = [(MOResource *)self name];
  mask = [name mask];
  type = [(MOResource *)self type];
  assets = [(MOResource *)self assets];
  photoAssetCloudIdentifier = [(MOResource *)self photoAssetCloudIdentifier];
  data = [(MOResource *)self data];
  v10 = [data length];
  [(MOResource *)self value];
  v12 = [NSString stringWithFormat:@"<MOResource identifier, %@, name, %@, type, %lu, assets, %@, photoAssetCloudIdentifier, %@, data.length, %lu, value, %f", identifier, mask, type, assets, photoAssetCloudIdentifier, v10, v11];

  return v12;
}

+ (id)describeType:(unint64_t)type
{
  if (type > 0x11)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1000B51F8 + type);
  }
}

- (id)describeType
{
  type = [(MOResource *)self type];

  return [MOResource describeType:type];
}

- (MOResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [(MOResource *)self initWithIdentifier:v5];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v6->_name;
      v6->_name = v7;

      v6->_type = [coderCopy decodeInt64ForKey:@"type"];
      [coderCopy decodeDoubleForKey:@"value"];
      v6->_value = v9;
      [coderCopy decodeDoubleForKey:@"priorityScore"];
      v6->_priorityScore = v10;
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoCurationScore"];
      photoCurationScore = v6->_photoCurationScore;
      v6->_photoCurationScore = v11;

      v6->_photoFaceCount = [coderCopy decodeInt64ForKey:@"photoFaceCount"];
      v6->_photoAssetMediaType = [coderCopy decodeInt64ForKey:@"photoAssetMediaType"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoCreationDate"];
      photoCreationDate = v6->_photoCreationDate;
      v6->_photoCreationDate = v13;

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PhotoAssetCloudIdentifier"];
      photoAssetCloudIdentifier = v6->_photoAssetCloudIdentifier;
      v6->_photoAssetCloudIdentifier = v15;

      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Assets"];
      assets = v6->_assets;
      v6->_assets = v17;

      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      data = v6->_data;
      v6->_data = v19;

      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
      sourceEventIdentifier = v6->_sourceEventIdentifier;
      v6->_sourceEventIdentifier = v21;

      v6->_sourceEventAccessType = [coderCopy decodeInt64ForKey:@"sourceEventAccessType"];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInt64:self->_type forKey:@"type"];
  [coderCopy encodeDouble:@"value" forKey:self->_value];
  [coderCopy encodeDouble:@"priorityScore" forKey:self->_priorityScore];
  [coderCopy encodeObject:self->_photoCurationScore forKey:@"photoCurationScore"];
  [coderCopy encodeInt64:self->_photoFaceCount forKey:@"photoFaceCount"];
  [coderCopy encodeInt64:self->_photoAssetMediaType forKey:@"photoAssetMediaType"];
  [coderCopy encodeObject:self->_photoCreationDate forKey:@"photoCreationDate"];
  [coderCopy encodeObject:self->_photoAssetCloudIdentifier forKey:@"PhotoAssetCloudIdentifier"];
  [coderCopy encodeObject:self->_assets forKey:@"Assets"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  identifier = [(MOResource *)self identifier];
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
        identifier = [(MOResource *)self identifier];
        if (identifier || ([(MOResource *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(MOResource *)self identifier];
          identifier3 = [(MOResource *)v7 identifier];
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

+ (id)getDedupeKeyForResourceData:(id)data type:(unint64_t)type error:(id *)error
{
  dataCopy = data;
  if (!dataCopy)
  {
    type = 0;
    goto LABEL_20;
  }

  if (type == 6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      typeCopy = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using for the dedupe key the map item handler , %lu", buf, 0xCu);
    }

    type = dataCopy;
    v9 = 0;
    goto LABEL_6;
  }

  v31 = 0;
  v9 = [MOResource getDictionaryForData:dataCopy error:&v31];
  v10 = v31;
  if (v10 || ![v9 count])
  {
    if (error)
    {
      v11 = v10;
      type = 0;
      *error = v10;
      goto LABEL_19;
    }

LABEL_18:
    type = 0;
    goto LABEL_19;
  }

  if (type > 0x11)
  {
    goto LABEL_31;
  }

  if (((1 << type) & 0x3DBB8) != 0)
  {
    goto LABEL_14;
  }

  if (type != 10)
  {
    if (type == 13)
    {
      allKeys = [v9 allKeys];
      if ([allKeys containsObject:@"MOActivityMetaDataMotionType"])
      {
        allKeys2 = [v9 allKeys];
        if ([allKeys2 containsObject:@"MOActivityMetaDataKeyStartDate"])
        {
          allKeys3 = [v9 allKeys];
          v17 = [allKeys3 containsObject:@"MOActivityMetaDataKeyEndDate"];

          if (v17)
          {
            type = +[NSMutableDictionary dictionary];
            v18 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataMotionType"];
            [type setObject:v18 forKey:@"MOActivityMetaDataMotionType"];

            v19 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataKeyStartDate"];
            [type setObject:v19 forKey:@"MOActivityMetaDataKeyStartDate"];

            v20 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataKeyEndDate"];
            [type setObject:v20 forKey:@"MOActivityMetaDataKeyEndDate"];

            v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              typeCopy = type;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Using for the dedupe key the dictionary, %@", buf, 0xCu);
            }

            goto LABEL_6;
          }

          goto LABEL_48;
        }
      }

LABEL_48:
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[MOResource getDedupeKeyForResourceData:type:error:];
      }

      goto LABEL_17;
    }

LABEL_31:
    if (type < 2)
    {
LABEL_14:
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOResource getDedupeKeyForResourceData:type type:? error:?];
      }

LABEL_16:

LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    if (type != 2)
    {
      v10 = 0;
      goto LABEL_19;
    }

    allKeys4 = [v9 allKeys];
    v23 = @"MOPhotoResourceLocalIdentifier";
    v24 = [allKeys4 containsObject:@"MOPhotoResourceLocalIdentifier"];

    v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    v12 = v25;
    if (!v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[MOResource getDedupeKeyForResourceData:type:error:];
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v9 objectForKeyedSubscript:@"MOPhotoResourceLocalIdentifier"];
      *buf = 138412290;
      typeCopy = v26;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Using for the dedupe key, %@", buf, 0xCu);

      goto LABEL_41;
    }

    goto LABEL_41;
  }

  allKeys5 = [v9 allKeys];
  v23 = @"MOWorkoutMetaDataKeyWorkoutID";
  v28 = [allKeys5 containsObject:@"MOWorkoutMetaDataKeyWorkoutID"];

  v29 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v12 = v29;
  if (!v28)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[MOResource getDedupeKeyForResourceData:type:error:];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v26 = [v9 objectForKeyedSubscript:@"MOWorkoutMetaDataKeyWorkoutID"];
    *buf = 138412290;
    typeCopy = v26;
    goto LABEL_40;
  }

LABEL_41:

  type = [v9 objectForKeyedSubscript:v23];
LABEL_6:
  v10 = 0;
LABEL_19:

LABEL_20:

  return type;
}

- (id)getDedupeKeyError:(id *)error
{
  v5 = objc_opt_class();
  data = [(MOResource *)self data];
  v7 = [v5 getDedupeKeyForResourceData:data type:-[MOResource type](self error:{"type"), error}];

  return v7;
}

- (MOResource)initWithPlace:(id)place startDate:(id)date endDate:(id)endDate
{
  placeCopy = place;
  dateCopy = date;
  endDateCopy = endDate;
  v11 = objc_opt_new();
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeCopy placeType]);
  [v11 setObject:v12 forKeyedSubscript:@"placeType"];

  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeCopy placeUserType]);
  [v11 setObject:v13 forKeyedSubscript:@"placeUserType"];

  location = [placeCopy location];
  dictionary = [location dictionary];
  [v11 setObject:dictionary forKeyedSubscript:@"location"];

  poiCategory = [placeCopy poiCategory];
  [v11 setObject:poiCategory forKeyedSubscript:@"poiCategory"];

  if ([placeCopy placeType] != 101 && objc_msgSend(placeCopy, "placeType") != 102)
  {
    enclosingArea = [placeCopy enclosingArea];
    [v11 setObject:enclosingArea forKeyedSubscript:@"cityName"];
  }

  enclosingArea2 = [placeCopy enclosingArea];
  [v11 setObject:enclosingArea2 forKeyedSubscript:@"enclosingArea"];

  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v19 = [NSNumber numberWithDouble:?];
    [v11 setObject:v19 forKeyedSubscript:@"startDate"];
  }

  if (endDateCopy)
  {
    [endDateCopy timeIntervalSinceReferenceDate];
    v20 = [NSNumber numberWithDouble:?];
    [v11 setObject:v20 forKeyedSubscript:@"endDate"];
  }

  v21 = [MODictionaryEncoder encodeDictionary:v11];
  identifier = [placeCopy identifier];
  placeName = [placeCopy placeName];
  [placeCopy placeNameConfidence];
  v25 = v24;
  [placeCopy priorityScore];
  v27 = [(MOResource *)self initWithIdentifier:identifier name:placeName type:12 assets:0 data:v21 value:0 priorityScore:v25 photoCurationScore:v26 photoFaceCount:0 photoAssetMediaType:0];

  return v27;
}

- (MOResource)initWithName:(id)name mapItemHandle:(id)handle priorityScore:(double)score
{
  handleCopy = handle;
  nameCopy = name;
  v10 = +[NSUUID UUID];
  v11 = [(MOResource *)self initWithIdentifier:v10 name:nameCopy type:6 assets:0 data:handleCopy value:0 priorityScore:0.0 photoCurationScore:score photoFaceCount:0 photoAssetMediaType:0];

  return v11;
}

- (id)cityName
{
  metaData = [(MOResource *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOResource *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"cityName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)enclosingArea
{
  metaData = [(MOResource *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOResource *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"enclosingArea"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)placeUserType
{
  metaData = [(MOResource *)self metaData];

  if (!metaData)
  {
    return 0;
  }

  metaData2 = [(MOResource *)self metaData];
  v5 = [metaData2 objectForKeyedSubscript:@"placeUserType"];
  intValue = [v5 intValue];

  return intValue;
}

- (unint64_t)placeType
{
  metaData = [(MOResource *)self metaData];

  if (!metaData)
  {
    return 0;
  }

  metaData2 = [(MOResource *)self metaData];
  v5 = [metaData2 objectForKeyedSubscript:@"placeType"];
  intValue = [v5 intValue];

  return intValue;
}

- (id)location
{
  metaData = [(MOResource *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOResource *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"location"];

    v6 = [RTLocation locationFromDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)poiCategory
{
  metaData = [(MOResource *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOResource *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"poiCategory"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MOResource)initWithWeather:(id)weather
{
  weatherCopy = weather;
  v5 = objc_opt_new();
  startDate = [weatherCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = [NSNumber numberWithDouble:?];
  [v5 setObject:v7 forKeyedSubscript:@"MOWeatherMetaDataKeyStartDate"];

  endDate = [weatherCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"MOWeatherMetaDataKeyEndDate"];

  weatherSummary = [weatherCopy weatherSummary];
  [v5 setObject:weatherSummary forKeyedSubscript:@"MOWeatherMetaDataKeyWeatherSummary"];

  weatherSymbolName = [weatherCopy weatherSymbolName];
  [v5 setObject:weatherSymbolName forKeyedSubscript:@"MOWeatherMetaDataKeySymbolName"];

  temperature = [weatherCopy temperature];

  if (temperature)
  {
    temperature2 = [weatherCopy temperature];
    [temperature2 doubleValue];
    v14 = [NSNumber numberWithDouble:?];
    [v5 setObject:v14 forKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"];

    temperature3 = [weatherCopy temperature];
    unit = [temperature3 unit];
    symbol = [unit symbol];
    [v5 setObject:symbol forKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureUnitSymbol"];
  }

  windSpeed = [weatherCopy windSpeed];

  if (windSpeed)
  {
    windSpeed2 = [weatherCopy windSpeed];
    [windSpeed2 doubleValue];
    v20 = [NSNumber numberWithDouble:?];
    [v5 setObject:v20 forKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"];

    windSpeed3 = [weatherCopy windSpeed];
    unit2 = [windSpeed3 unit];
    symbol2 = [unit2 symbol];
    [v5 setObject:symbol2 forKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedUnitSymbol"];
  }

  v24 = [MODictionaryEncoder encodeDictionary:v5];
  v25 = +[NSUUID UUID];
  v26 = [(MOResource *)self initWithIdentifier:v25 name:@"Weather" type:14 assets:0 data:v24 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0];

  return v26;
}

- (id)metaData
{
  data = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:data];

  return v3;
}

- (double)endDate
{
  metaData = [(MOResource *)self metaData];

  if (!metaData)
  {
    return 0.0;
  }

  metaData2 = [(MOResource *)self metaData];
  v5 = [metaData2 objectForKeyedSubscript:@"MOWeatherMetaDataKeyEndDate"];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)startDate
{
  metaData = [(MOResource *)self metaData];

  if (!metaData)
  {
    return 0.0;
  }

  metaData2 = [(MOResource *)self metaData];
  v5 = [metaData2 objectForKeyedSubscript:@"MOWeatherMetaDataKeyStartDate"];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (id)temperature
{
  metaData = [(MOResource *)self metaData];

  if (metaData && (-[MOResource metaData](self, "metaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSMeasurement alloc];
    metaData2 = [(MOResource *)self metaData];
    v8 = [metaData2 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"];
    [v8 doubleValue];
    v10 = v9;
    v11 = [NSUnitTemperature alloc];
    metaData3 = [(MOResource *)self metaData];
    v13 = [metaData3 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureUnitSymbol"];
    v14 = [v11 initWithSymbol:v13];
    v15 = [v6 initWithDoubleValue:v14 unit:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)weatherSummary
{
  metaData = [(MOResource *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOResource *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWeatherSummary"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)weatherSymbolName
{
  metaData = [(MOResource *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOResource *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"MOWeatherMetaDataKeySymbolName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)windSpeed
{
  metaData = [(MOResource *)self metaData];

  if (metaData && (-[MOResource metaData](self, "metaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSMeasurement alloc];
    metaData2 = [(MOResource *)self metaData];
    v8 = [metaData2 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"];
    [v8 doubleValue];
    v10 = v9;
    v11 = [NSUnit alloc];
    metaData3 = [(MOResource *)self metaData];
    v13 = [metaData3 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedUnitSymbol"];
    v14 = [v11 initWithSymbol:v13];
    v15 = [v6 initWithDoubleValue:v14 unit:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOResource initWithIdentifier:]";
  v3 = 1024;
  v4 = 29;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v1, 0x12u);
}

- (void)initWithName:(uint64_t)a1 type:(NSObject *)a2 dict:value:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to json, %@", &v2, 0xCu);
}

+ (void)getDictionaryForData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to deserialize data to dictionary, %@", &v2, 0xCu);
}

+ (void)getDedupeKeyForResourceData:(uint64_t)a1 type:error:.cold.1(uint64_t a1)
{
  v6 = [MOResource getStringTypeForResources:a1];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v5 = [MOResource getStringTypeForResources:13];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x34u);
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v0 = [MOResource getStringTypeForResources:10];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  v0 = [MOResource getStringTypeForResources:2];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

@end