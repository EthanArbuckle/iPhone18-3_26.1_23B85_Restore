@interface RTFingerprintMO
+ (id)fetchLastByStartDateInManagedObjectContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)managedObjectWithFingerprint:(id)fingerprint inManagedObjectContext:(id)context;
@end

@implementation RTFingerprintMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTFingerprintMO"];

  return v2;
}

+ (id)managedObjectWithFingerprint:(id)fingerprint inManagedObjectContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  contextCopy = context;
  v7 = contextCopy;
  if (!fingerprintCopy)
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

  if (!contextCopy)
  {
LABEL_15:
    accessPoints = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(accessPoints, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[RTFingerprintMO managedObjectWithFingerprint:inManagedObjectContext:]";
      v27 = 1024;
      v28 = 24;
      _os_log_error_impl(&dword_2304B3000, accessPoints, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext (in %s:%d)", buf, 0x12u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  v8 = [[RTFingerprintMO alloc] initWithContext:contextCopy];
  identifier = [fingerprintCopy identifier];
  [(RTFingerprintMO *)v8 setIdentifier:identifier];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(fingerprintCopy, "settledState")}];
  [(RTFingerprintMO *)v8 setSettledState:v10];

  start = [fingerprintCopy start];
  [(RTFingerprintMO *)v8 setStart:start];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  accessPoints = [fingerprintCopy accessPoints];
  v13 = [accessPoints countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(accessPoints);
        }

        v17 = [RTWiFiAccessPointMO managedObjectWithAccessPoint:*(*(&v20 + 1) + 8 * i) inManagedObjectContext:v7];
        [(RTFingerprintMO *)v8 addWifiAccessPointsObject:v17];
      }

      v14 = [accessPoints countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

LABEL_18:

LABEL_19:

  return v8;
}

+ (id)fetchLastByStartDateInManagedObjectContext:(id)context error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
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
    v10 = [contextCopy executeFetchRequest:v6 error:error];
    firstObject = [v10 firstObject];
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

    firstObject = 0;
  }

  return firstObject;
}

@end