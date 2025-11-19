@interface NSManagedObjectContext(Cloud)
- (id)currentDevice;
- (uint64_t)mirroringQualityOfService;
- (uint64_t)setMirroringQualityOfService:()Cloud;
@end

@implementation NSManagedObjectContext(Cloud)

- (id)currentDevice
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [a1 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"RTPersistenceDriverUserInfoDeviceMOIDKey"];

  if (!v3)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [a1 userInfo];
      *buf = 138413058;
      v31 = @"RTPersistenceDriverUserInfoDeviceMOIDKey";
      v32 = 2112;
      v33 = v13;
      v34 = 2080;
      v35 = "[NSManagedObjectContext(Cloud) currentDevice]";
      v36 = 1024;
      LODWORD(v37) = 93;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "userInfo returned is nil for key, %@, userInfo, %@ (in %s:%d)", buf, 0x26u);
    }

    v4 = 0;
    goto LABEL_20;
  }

  v27 = 0;
  v4 = [a1 existingObjectWithID:v3 error:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v18 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [a1 userInfo];
        if (v21)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        if (v4)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v24 = [v4 identifier];
        v25 = [v24 UUIDString];
        *buf = 138413314;
        v31 = v22;
        v32 = 2112;
        v33 = @"YES";
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v25;
        v38 = 2112;
        v39 = v18;
        _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "hasUserInfo, %@, hasDeviceRecordID, %@, hasCurrentDeviceMO, %@, currentDeviceMo.identifier, %@, error, %@", buf, 0x34u);
      }
    }

    v28[0] = *MEMORY[0x277CCA7E8];
    v28[1] = @"RTPersistenceOpearationsErrorDomain";
    v29[0] = v18;
    v29[1] = &unk_28459DDD0;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No existing current device!" userInfo:objc_claimAutoreleasedReturnValue()];
    objc_exception_throw(v26);
  }

  v7 = [v4 identifier];

  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v14 = [a1 userInfo];
        if (v14)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v16 = [v4 identifier];
        v17 = [v16 UUIDString];
        *buf = 138413314;
        v31 = v15;
        v32 = 2112;
        v33 = @"YES";
        v34 = 2112;
        v35 = @"YES";
        v36 = 2112;
        v37 = v17;
        v38 = 2112;
        v39 = 0;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "hasUserInfo, %@, hasDeviceRecordID, %@, hasCurrentDeviceMO, %@, currentDeviceMo.identifier, %@, error, %@", buf, 0x34u);
      }
    }

    v9 = [v4 identifier];

    if (!v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v31 = v3;
        v32 = 2080;
        v33 = "[NSManagedObjectContext(Cloud) currentDevice]";
        v34 = 1024;
        LODWORD(v35) = 125;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "objectWithID, %@, returned nil (in %s:%d)", buf, 0x1Cu);
      }
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_fault_impl(&dword_2304B3000, v11, OS_LOG_TYPE_FAULT, "No existing device with object ID: %@", buf, 0xCu);
    }

LABEL_20:
  }

  return v4;
}

- (uint64_t)mirroringQualityOfService
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a1 mirroringQualityOfService];
}

- (uint64_t)setMirroringQualityOfService:()Cloud
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a1 setMirroringQualityOfService:a3];
  }

  return result;
}

@end