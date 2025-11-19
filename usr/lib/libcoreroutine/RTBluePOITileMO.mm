@interface RTBluePOITileMO
+ (id)managedObjectWithBluePOITile:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTBluePOITileMO

+ (id)managedObjectWithBluePOITile:(id)a3 inManagedObjectContext:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: bluePOITile";
LABEL_30:
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_25;
  }

  if (!v6)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_30;
  }

  v8 = [[RTBluePOITileMO alloc] initWithContext:v6];
  v9 = [v5 identifier];
  [(RTBluePOITileMO *)v8 setIdentifier:v9];

  v10 = [v5 date];
  [(RTBluePOITileMO *)v8 setDate:v10];

  v11 = [v5 downloadKey];
  [(RTBluePOITileMO *)v8 setDownloadKey:v11];

  v12 = [v5 geoCacheInfo];
  [(RTBluePOITileMO *)v8 setGeoCacheInfo:v12];

  v13 = [v5 hashSalt];
  [(RTBluePOITileMO *)v8 setHashSalt:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "geoTileKey")}];
  [(RTBluePOITileMO *)v8 setTileKey:v14];

  v15 = [v5 apToModelMapping];
  [(RTBluePOITileMO *)v8 setApToModelMapping:v15];

  v16 = [v5 hashedApToModelMapping];
  [(RTBluePOITileMO *)v8 setHashedApToModelMapping:v16];

  v17 = [v5 modelCalibrationParameters];
  [(RTBluePOITileMO *)v8 setModelCalibrationParameters:v17];

  v18 = [v5 modelURLs];
  [(RTBluePOITileMO *)v8 setModelURLs:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "singlePOIMuid")}];
  [(RTBluePOITileMO *)v8 setSinglePOIMuid:v19];

  v20 = MEMORY[0x277CCABB0];
  [v5 size];
  v21 = [v20 numberWithDouble:?];
  [(RTBluePOITileMO *)v8 setSize:v21];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = [v5 pointsOfInterest];
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v46 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v40 + 1) + 8 * i) managedObjectWithContext:v7];
        if (v27)
        {
          [(RTBluePOITileMO *)v8 addPointsOfInterestObject:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v24);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = [v5 models];
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v45 count:16];
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
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v36 + 1) + 8 * j) managedObjectWithContext:v7];
        if (v33)
        {
          [(RTBluePOITileMO *)v8 addModelsObject:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v30);
  }

LABEL_26:

  return v8;
}

@end