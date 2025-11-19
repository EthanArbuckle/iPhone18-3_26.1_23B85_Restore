@interface RTAuthorizedLocationConfirmationStatusMO
+ (id)managedObjectWithAuthorizedLocationConfirmationStatus:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTAuthorizedLocationConfirmationStatusMO

+ (id)managedObjectWithAuthorizedLocationConfirmationStatus:(id)a3 inManagedObjectContext:(id)a4
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
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: confirmationStatus", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__RTAuthorizedLocationConfirmationStatusMO_managedObjectWithAuthorizedLocationConfirmationStatus_inManagedObjectContext___block_invoke;
  v16[3] = &unk_2788C8DC8;
  v19 = buf;
  v17 = v8;
  v18 = v6;
  [v17 performBlockAndWait:v16];
  v13 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
LABEL_12:

  return v13;
}

void __121__RTAuthorizedLocationConfirmationStatusMO_managedObjectWithAuthorizedLocationConfirmationStatus_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTAuthorizedLocationConfirmationStatusMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setConfirmationStatus:{objc_msgSend(*(a1 + 40), "confirmationStatus")}];
  [*(*(*(a1 + 48) + 8) + 40) setConfirmationStatusCode:{objc_msgSend(*(a1 + 40), "confirmationStatusCode")}];
  v5 = [*(a1 + 40) confirmationStatusTime];
  [*(*(*(a1 + 48) + 8) + 40) setConfirmationStatusTime:v5];

  [*(*(*(a1 + 48) + 8) + 40) setZdrConfirmationStatus:{objc_msgSend(*(a1 + 40), "zdrConfirmationStatus")}];
  [*(*(*(a1 + 48) + 8) + 40) setZdrConfirmationStatusCode:{objc_msgSend(*(a1 + 40), "zdrConfirmationStatusCode")}];
  v6 = [*(a1 + 40) zdrConfirmationStatusTime];
  [*(*(*(a1 + 48) + 8) + 40) setZdrConfirmationStatusTime:v6];
}

@end