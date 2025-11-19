@interface SMEmergencyContactsNotifiedSyncMessage
- (SMEmergencyContactsNotifiedSyncMessage)initWithCoder:(id)a3;
- (SMEmergencyContactsNotifiedSyncMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 triggerCategory:(unint64_t)a6;
- (SMEmergencyContactsNotifiedSyncMessage)initWithDictionary:(id)a3;
- (SMEmergencyContactsNotifiedSyncMessage)initWithSessionID:(id)a3 triggerCategory:(unint64_t)a4;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMEmergencyContactsNotifiedSyncMessage

- (SMEmergencyContactsNotifiedSyncMessage)initWithSessionID:(id)a3 triggerCategory:(unint64_t)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v8 messageID:v9 sessionID:v7 triggerCategory:a4];

  return v10;
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 triggerCategory:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: date";
LABEL_16:
    _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_17;
  }

  if (!v11)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: messageID";
    goto LABEL_16;
  }

  if (!v12)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_16;
  }

  if (a6 - 1 >= 0x19)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: triggerCategory > SMTriggerCategoryUnknown && triggerCategory < SMTriggerCategoryMax";
      goto LABEL_16;
    }

LABEL_17:

    v15 = 0;
    goto LABEL_18;
  }

  v19.receiver = self;
  v19.super_class = SMEmergencyContactsNotifiedSyncMessage;
  v14 = [(SMMessage *)&v19 initWithDate:v10 messageID:v11 sessionID:v12];
  if (v14)
  {
    v14->_triggerCategory = a6;
  }

  self = v14;
  v15 = self;
LABEL_18:

  return v15;
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithDictionary:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v46) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v46, 2u);
    }

    goto LABEL_14;
  }

  v7 = [v5 valueForKey:@"messageType"];
  v8 = [v7 intValue];

  if ([objc_opt_class() messageType] != v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    v46 = 138413058;
    v47 = v25;
    v48 = 2112;
    v49 = v26;
    v50 = 1024;
    v51 = [objc_opt_class() messageType];
    v52 = 1024;
    v53 = v8;
    v27 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v28 = v12;
    v29 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, v27, &v46, v29);

    goto LABEL_14;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  v10 = [v9 intValue];

  if (v10 == 1)
  {
    v11 = [v6 valueForKey:@"sendDate"];
    v12 = v11;
    if (!v11)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v38;
        v48 = 2112;
        v49 = v39;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v46, 0x16u);
      }

      v23 = 0;
      goto LABEL_30;
    }

    v13 = MEMORY[0x277CBEAA8];
    [v11 doubleValue];
    v14 = [v13 dateWithTimeIntervalSince1970:?];
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = [v6 valueForKey:@"messageID"];
    v17 = [v15 initWithUUIDString:v16];

    if (!v17)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v41;
        v48 = 2112;
        v49 = v42;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v46, 0x16u);
      }

      v23 = 0;
      goto LABEL_29;
    }

    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = [v6 valueForKey:@"sessionID"];
    v20 = [v18 initWithUUIDString:v19];

    if (v20)
    {
      v21 = [v6 valueForKey:@"triggerCategory"];
      if (v21)
      {
        v22 = v21;
        self = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 triggerCategory:[v21 intValue]];
        v23 = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v44;
        v48 = 2112;
        v49 = v45;
        _os_log_error_impl(&dword_26455D000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerCategory", &v46, 0x16u);
      }

      v22 = 0;
    }

    else
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v33;
        v48 = 2112;
        v49 = v34;
        _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v46, 0x16u);
      }
    }

    v23 = 0;
    goto LABEL_28;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v36 = objc_opt_class();
    v25 = NSStringFromClass(v36);
    v26 = NSStringFromSelector(a2);
    v46 = 138412802;
    v47 = v25;
    v48 = 2112;
    v49 = v26;
    v50 = 1024;
    v51 = v10;
    v27 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v28 = v12;
    v29 = 28;
    goto LABEL_32;
  }

LABEL_14:
  v23 = 0;
LABEL_15:

  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)outputToDictionary
{
  v6.receiver = self;
  v6.super_class = SMEmergencyContactsNotifiedSyncMessage;
  v3 = [(SMMessage *)&v6 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMEmergencyContactsNotifiedSyncMessage triggerCategory](self, "triggerCategory")}];
  [v3 setObject:v4 forKey:@"triggerCategory"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[SMEmergencyContactsNotifiedSyncMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 124;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = SMEmergencyContactsNotifiedSyncMessage;
  [(SMMessage *)&v8 encodeWithCoder:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMEmergencyContactsNotifiedSyncMessage triggerCategory](self, "triggerCategory")}];
  [v4 encodeObject:v6 forKey:@"triggerCategory"];

  v7 = *MEMORY[0x277D85DE8];
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v38, 2u);
    }

    goto LABEL_14;
  }

  v7 = [v5 decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v38 = 138413058;
    v39 = v16;
    v40 = 2112;
    v41 = v17;
    v42 = 1024;
    v43 = [objc_opt_class() messageType];
    v44 = 1024;
    v45 = v7;
    v18 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v19 = v9;
    v20 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, v18, &v38, v20);

    goto LABEL_14;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 == 1)
  {
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
    if (!v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v30;
        v40 = 2112;
        v41 = v31;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v38, 0x16u);
      }

      v14 = 0;
      goto LABEL_30;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (!v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v33;
        v40 = 2112;
        v41 = v34;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v38, 0x16u);
      }

      v14 = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"triggerCategory"];
      if (v12)
      {
        v13 = v12;
        self = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v9 messageID:v10 sessionID:v11 triggerCategory:[v12 intValue]];
        v14 = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v36;
        v40 = 2112;
        v41 = v37;
        _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerCategory", &v38, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v25;
        v40 = 2112;
        v41 = v26;
        _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v38, 0x16u);
      }
    }

    v14 = 0;
    goto LABEL_28;
  }

  v21 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v28 = objc_opt_class();
    v16 = NSStringFromClass(v28);
    v17 = NSStringFromSelector(a2);
    v38 = 138412802;
    v39 = v16;
    v40 = 2112;
    v41 = v17;
    v42 = 1024;
    v43 = v21;
    v18 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v19 = v9;
    v20 = 28;
    goto LABEL_32;
  }

LABEL_14:
  v14 = 0;
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

@end