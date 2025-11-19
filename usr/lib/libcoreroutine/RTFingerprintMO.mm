@interface RTFingerprintMO
+ (id)fetchLastByStartDateInManagedObjectContext:(id)a3 error:(id *)a4;
+ (id)fetchRequest;
+ (id)managedObjectWithFingerprint:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTFingerprintMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTFingerprintMO"];

  return v2;
}

+ (id)managedObjectWithFingerprint:(id)a3 inManagedObjectContext:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[RTFingerprintMO managedObjectWithFingerprint:inManagedObjectContext:]";
      v27 = 1024;
      v28 = 23;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprint (in %s:%d)", buf, 0x12u);
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
LABEL_15:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[RTFingerprintMO managedObjectWithFingerprint:inManagedObjectContext:]";
      v27 = 1024;
      v28 = 24;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext (in %s:%d)", buf, 0x12u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  v8 = [[RTFingerprintMO alloc] initWithContext:v6];
  v9 = [v5 identifier];
  [(RTFingerprintMO *)v8 setIdentifier:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "settledState")}];
  [(RTFingerprintMO *)v8 setSettledState:v10];

  v11 = [v5 start];
  [(RTFingerprintMO *)v8 setStart:v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v5 accessPoints];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [RTWiFiAccessPointMO managedObjectWithAccessPoint:*(*(&v20 + 1) + 8 * i) inManagedObjectContext:v7];
        [(RTFingerprintMO *)v8 addWifiAccessPointsObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

LABEL_18:

LABEL_19:

  return v8;
}

+ (id)fetchLastByStartDateInManagedObjectContext:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[RTFingerprintMO fetchRequest];
    [v6 setReturnsObjectsAsFaults:0];
    v14 = @"wifiAccessPoints";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v6 setRelationshipKeyPathsForPrefetching:v7];

    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"start" ascending:0];
    v13 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v6 setSortDescriptors:v9];

    [v6 setFetchLimit:1];
    v10 = [v5 executeFetchRequest:v6 error:a4];
    v11 = [v10 firstObject];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[RTFingerprintMO fetchLastByStartDateInManagedObjectContext:error:]";
      v17 = 1024;
      v18 = 46;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext (in %s:%d)", buf, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

@end