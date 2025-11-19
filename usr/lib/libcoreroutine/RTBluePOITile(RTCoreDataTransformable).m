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
  v5 = [v3 pointsOfInterest];
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D011F0] createWithManagedObject:*(*(&v39 + 1) + 8 * i)];
        if (v4)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [v3 models];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x277D010B0] createWithManagedObject:*(*(&v35 + 1) + 8 * j)];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v14);
  }

  v29 = objc_alloc(MEMORY[0x277D010B8]);
  v34 = [v3 identifier];
  v27 = [v3 apToModelMapping];
  v32 = [v3 date];
  v31 = [v3 downloadKey];
  v28 = [v3 geoCacheInfo];
  v33 = [v3 tileKey];
  v26 = [v33 unsignedLongLongValue];
  v25 = [v3 hashedApToModelMapping];
  v24 = [v3 hashSalt];
  v23 = [v3 modelCalibrationParameters];
  v18 = [v3 modelURLs];
  v19 = [v3 singlePOIMuid];
  v20 = [v19 unsignedLongLongValue];
  v21 = [v3 size];
  [v21 doubleValue];
  v30 = [v29 initWithIdentifier:v34 apToModelMapping:v27 date:v32 downloadKey:v31 geoCacheInfo:v28 geoTileKey:v26 hashedApToModelMapping:v25 hashSalt:v24 modelCalibrationParameters:v23 models:v11 modelURLs:v18 pointsOfInterest:v4 singlePOIMuid:v20 size:?];

  return v30;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTBluePOITileMO managedObjectWithBluePOITile:a1 inManagedObjectContext:a3];
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