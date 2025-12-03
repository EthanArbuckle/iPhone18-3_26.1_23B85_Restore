@interface RTBluePOITileMO
+ (id)managedObjectWithBluePOITile:(id)tile inManagedObjectContext:(id)context;
@end

@implementation RTBluePOITileMO

+ (id)managedObjectWithBluePOITile:(id)tile inManagedObjectContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  tileCopy = tile;
  contextCopy = context;
  v7 = contextCopy;
  if (!tileCopy)
  {
    models = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(models, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: bluePOITile";
LABEL_30:
    _os_log_error_impl(&dword_2304B3000, models, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_25;
  }

  if (!contextCopy)
  {
    models = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(models, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_30;
  }

  v8 = [[RTBluePOITileMO alloc] initWithContext:contextCopy];
  identifier = [tileCopy identifier];
  [(RTBluePOITileMO *)v8 setIdentifier:identifier];

  date = [tileCopy date];
  [(RTBluePOITileMO *)v8 setDate:date];

  downloadKey = [tileCopy downloadKey];
  [(RTBluePOITileMO *)v8 setDownloadKey:downloadKey];

  geoCacheInfo = [tileCopy geoCacheInfo];
  [(RTBluePOITileMO *)v8 setGeoCacheInfo:geoCacheInfo];

  hashSalt = [tileCopy hashSalt];
  [(RTBluePOITileMO *)v8 setHashSalt:hashSalt];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(tileCopy, "geoTileKey")}];
  [(RTBluePOITileMO *)v8 setTileKey:v14];

  apToModelMapping = [tileCopy apToModelMapping];
  [(RTBluePOITileMO *)v8 setApToModelMapping:apToModelMapping];

  hashedApToModelMapping = [tileCopy hashedApToModelMapping];
  [(RTBluePOITileMO *)v8 setHashedApToModelMapping:hashedApToModelMapping];

  modelCalibrationParameters = [tileCopy modelCalibrationParameters];
  [(RTBluePOITileMO *)v8 setModelCalibrationParameters:modelCalibrationParameters];

  modelURLs = [tileCopy modelURLs];
  [(RTBluePOITileMO *)v8 setModelURLs:modelURLs];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(tileCopy, "singlePOIMuid")}];
  [(RTBluePOITileMO *)v8 setSinglePOIMuid:v19];

  v20 = MEMORY[0x277CCABB0];
  [tileCopy size];
  v21 = [v20 numberWithDouble:?];
  [(RTBluePOITileMO *)v8 setSize:v21];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  pointsOfInterest = [tileCopy pointsOfInterest];
  v23 = [pointsOfInterest countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(pointsOfInterest);
        }

        v27 = [*(*(&v40 + 1) + 8 * i) managedObjectWithContext:v7];
        if (v27)
        {
          [(RTBluePOITileMO *)v8 addPointsOfInterestObject:v27];
        }
      }

      v24 = [pointsOfInterest countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v24);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  models = [tileCopy models];
  v29 = [models countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(models);
        }

        v33 = [*(*(&v36 + 1) + 8 * j) managedObjectWithContext:v7];
        if (v33)
        {
          [(RTBluePOITileMO *)v8 addModelsObject:v33];
        }
      }

      v30 = [models countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v30);
  }

LABEL_26:

  return v8;
}

@end