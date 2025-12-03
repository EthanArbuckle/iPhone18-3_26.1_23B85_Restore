@interface SMEmergencyContactsNotifiedSyncMessage
- (SMEmergencyContactsNotifiedSyncMessage)initWithCoder:(id)coder;
- (SMEmergencyContactsNotifiedSyncMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerCategory:(unint64_t)category;
- (SMEmergencyContactsNotifiedSyncMessage)initWithDictionary:(id)dictionary;
- (SMEmergencyContactsNotifiedSyncMessage)initWithSessionID:(id)d triggerCategory:(unint64_t)category;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMEmergencyContactsNotifiedSyncMessage

- (SMEmergencyContactsNotifiedSyncMessage)initWithSessionID:(id)d triggerCategory:(unint64_t)category
{
  v6 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v8 = [v6 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v8 messageID:uUID sessionID:dCopy triggerCategory:category];

  return v10;
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerCategory:(unint64_t)category
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  v13 = iDCopy;
  if (!dateCopy)
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

  if (!dCopy)
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

  if (!iDCopy)
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

  if (category - 1 >= 0x19)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: triggerCategory > SMTriggerCategoryUnknown && triggerCategory < SMTriggerCategoryMax";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v19.receiver = self;
  v19.super_class = SMEmergencyContactsNotifiedSyncMessage;
  v14 = [(SMMessage *)&v19 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  if (v14)
  {
    v14->_triggerCategory = category;
  }

  self = v14;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v46) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v46, 2u);
    }

    goto LABEL_14;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
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
    messageType = [objc_opt_class() messageType];
    v52 = 1024;
    v53 = intValue;
    v27 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v28 = v12;
    v29 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, v27, &v46, v29);

    goto LABEL_14;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 == 1)
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

      selfCopy = 0;
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

      selfCopy = 0;
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
        selfCopy = self;
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

    selfCopy = 0;
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
    messageType = intValue2;
    v27 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v28 = v12;
    v29 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  v30 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)outputToDictionary
{
  v6.receiver = self;
  v6.super_class = SMEmergencyContactsNotifiedSyncMessage;
  outputToDictionary = [(SMMessage *)&v6 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMEmergencyContactsNotifiedSyncMessage triggerCategory](self, "triggerCategory")}];
  [outputToDictionary setObject:v4 forKey:@"triggerCategory"];

  return outputToDictionary;
}

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
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
  [(SMMessage *)&v8 encodeWithCoder:coderCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMEmergencyContactsNotifiedSyncMessage triggerCategory](self, "triggerCategory")}];
  [coderCopy encodeObject:v6 forKey:@"triggerCategory"];

  v7 = *MEMORY[0x277D85DE8];
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithCoder:(id)coder
{
  v46 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v38, 2u);
    }

    goto LABEL_14;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
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
    messageType = [objc_opt_class() messageType];
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

      selfCopy = 0;
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

      selfCopy = 0;
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
        selfCopy = self;
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

    selfCopy = 0;
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
    messageType = v21;
    v18 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v19 = v9;
    v20 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end