@interface RTBluePOITile(RTCoreDataTransformable)
+ (id)createWithBluePOITileMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTBluePOITile(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithBluePOITileMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[RTBluePOITile(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 41;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTBluePOITile+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithBluePOITileMO:()RTCoreDataTransformable
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  pointsOfInterest = [v3 pointsOfInterest];
  v6 = [pointsOfInterest countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(pointsOfInterest);
        }

        v10 = [MEMORY[0x277D011F0] createWithManagedObject:*(*(&v39 + 1) + 8 * i)];
        if (v4)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [pointsOfInterest countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  models = [v3 models];
  v13 = [models countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(models);
        }

        v17 = [MEMORY[0x277D010B0] createWithManagedObject:*(*(&v35 + 1) + 8 * j)];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [models countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v14);
  }

  v29 = objc_alloc(MEMORY[0x277D010B8]);
  identifier = [v3 identifier];
  apToModelMapping = [v3 apToModelMapping];
  date = [v3 date];
  downloadKey = [v3 downloadKey];
  geoCacheInfo = [v3 geoCacheInfo];
  tileKey = [v3 tileKey];
  unsignedLongLongValue = [tileKey unsignedLongLongValue];
  hashedApToModelMapping = [v3 hashedApToModelMapping];
  hashSalt = [v3 hashSalt];
  modelCalibrationParameters = [v3 modelCalibrationParameters];
  modelURLs = [v3 modelURLs];
  singlePOIMuid = [v3 singlePOIMuid];
  unsignedLongLongValue2 = [singlePOIMuid unsignedLongLongValue];
  v21 = [v3 size];
  [v21 doubleValue];
  v30 = [v29 initWithIdentifier:identifier apToModelMapping:apToModelMapping date:date downloadKey:downloadKey geoCacheInfo:geoCacheInfo geoTileKey:unsignedLongLongValue hashedApToModelMapping:hashedApToModelMapping hashSalt:hashSalt modelCalibrationParameters:modelCalibrationParameters models:v11 modelURLs:modelURLs pointsOfInterest:v4 singlePOIMuid:unsignedLongLongValue2 size:?];

  return v30;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTBluePOITileMO managedObjectWithBluePOITile:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end