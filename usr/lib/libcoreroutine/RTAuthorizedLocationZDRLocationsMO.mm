@interface RTAuthorizedLocationZDRLocationsMO
+ (id)managedObjectWithAuthorizedZDRLocation:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTAuthorizedLocationZDRLocationsMO

+ (id)managedObjectWithAuthorizedZDRLocation:(id)a3 inManagedObjectContext:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: zdrLocation", buf, 2u);
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

LABEL_13:

    v13 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2117;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@:%@,%{sensitive}@", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = __Block_byref_object_copy__161;
  v22 = __Block_byref_object_dispose__161;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__RTAuthorizedLocationZDRLocationsMO_managedObjectWithAuthorizedZDRLocation_inManagedObjectContext___block_invoke;
  v16[3] = &unk_2788C8DC8;
  v19 = buf;
  v17 = v8;
  v18 = v6;
  [v17 performBlockAndWait:v16];
  v13 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
LABEL_14:

  return v13;
}

void __100__RTAuthorizedLocationZDRLocationsMO_managedObjectWithAuthorizedZDRLocation_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTAuthorizedLocationZDRLocationsMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) zdrLocationDbEntryTimeCfatSec];
  [*(*(*(a1 + 48) + 8) + 40) setZdrLocationDbEntryTimeCfatSec:v5];

  v6 = [*(a1 + 40) zdrLocationUUID];
  [*(*(*(a1 + 48) + 8) + 40) setZdrLocationUUID:v6];

  [*(*(*(a1 + 48) + 8) + 40) setZdrLocationType:{objc_msgSend(*(a1 + 40), "zdrLocationType")}];
  [*(a1 + 40) zdrLocationLatitudeDeg];
  [*(*(*(a1 + 48) + 8) + 40) setZdrLocationLatitudeDeg:?];
  [*(a1 + 40) zdrLocationLongitudeDeg];
  [*(*(*(a1 + 48) + 8) + 40) setZdrLocationLongitudeDeg:?];
  v7 = [*(a1 + 40) zdrLocationLastSeenTimeCfatSec];
  [*(*(*(a1 + 48) + 8) + 40) setZdrLocationLastSeenTimeCfatSec:v7];
}

@end