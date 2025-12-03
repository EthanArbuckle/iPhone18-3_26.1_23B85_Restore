@interface SMReceiverContact(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithReceiverContactMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
- (void)updateManagedObject:()RTCoreDataTransformable;
@end

@implementation SMReceiverContact(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v10) = 0;
    v6 = "Invalid parameter not satisfying: managedObject";
    v7 = v5;
    v8 = 2;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, v6, &v10, v8);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() createWithReceiverContactMO:v3];
    goto LABEL_8;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412802;
    v11 = v3;
    v12 = 2080;
    v13 = "+[SMReceiverContact(RTCoreDataTransformable) createWithManagedObject:]";
    v14 = 1024;
    v15 = 33;
    v6 = "managedObject, %@, is not supported by SMReceiverContact+CoreDataTransformable (in %s:%d)";
    v7 = v5;
    v8 = 28;
    goto LABEL_12;
  }

LABEL_7:

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithReceiverContactMO:()RTCoreDataTransformable
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__206;
    v16 = __Block_byref_object_dispose__206;
    v17 = 0;
    managedObjectContext = [v3 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__SMReceiverContact_RTCoreDataTransformable__createWithReceiverContactMO___block_invoke;
    v9[3] = &unk_2788C7FB0;
    v11 = buf;
    v10 = v4;
    [managedObjectContext performBlockAndWait:v9];

    v6 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiverContactMO", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [SMReceiverContactMO managedObjectWithReceiverContact:self inManagedObjectContext:a3];
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

- (void)updateManagedObject:()RTCoreDataTransformable
{
  v6 = a3;
  managedObjectContext = [v6 managedObjectContext];
  v5 = [SMReceiverContactMO managedObjectWithReceiverContact:self managedObject:v6 inManagedObjectContext:managedObjectContext];
}

@end