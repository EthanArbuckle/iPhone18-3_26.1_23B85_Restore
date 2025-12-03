@interface SMSessionStartInfoRequestMessage
- (SMSessionStartInfoRequestMessage)initWithCoder:(id)coder;
- (SMSessionStartInfoRequestMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD;
- (SMSessionStartInfoRequestMessage)initWithDictionary:(id)dictionary;
- (SMSessionStartInfoRequestMessage)initWithSessionID:(id)d;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStartInfoRequestMessage

- (SMSessionStartInfoRequestMessage)initWithSessionID:(id)d
{
  v4 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v6 = [v4 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [(SMSessionStartInfoRequestMessage *)self initWithDate:v6 messageID:uUID sessionID:dCopy];

  return v8;
}

- (SMSessionStartInfoRequestMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  v11 = iDCopy;
  if (!dateCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: date";
LABEL_11:
    _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_12;
  }

  if (!dCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: messageID";
    goto LABEL_11;
  }

  if (!iDCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = SMSessionStartInfoRequestMessage;
  self = [(SMMessage *)&v16 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (SMSessionStartInfoRequestMessage)initWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v41, 2u);
    }

    goto LABEL_13;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    v41 = 138413058;
    v42 = v23;
    v43 = 2112;
    v44 = v24;
    v45 = 1024;
    messageType = [objc_opt_class() messageType];
    v47 = 1024;
    v48 = intValue;
    v25 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v26 = v12;
    v27 = 34;
LABEL_27:
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, v25, &v41, v27);

    goto LABEL_13;
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
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        v41 = 138412546;
        v42 = v36;
        v43 = 2112;
        v44 = v37;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v41, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v13 = MEMORY[0x277CBEAA8];
    [v11 doubleValue];
    v14 = [v13 dateWithTimeIntervalSince1970:?];
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = [v6 valueForKey:@"messageID"];
    v17 = [v15 initWithUUIDString:v16];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = [v6 valueForKey:@"sessionID"];
      v20 = [v18 initWithUUIDString:v19];

      if (v20)
      {
        self = [(SMSessionStartInfoRequestMessage *)self initWithDate:v14 messageID:v17 sessionID:v20];
        selfCopy = self;
LABEL_24:

LABEL_25:
        goto LABEL_14;
      }

      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = NSStringFromSelector(a2);
        v41 = 138412546;
        v42 = v39;
        v43 = 2112;
        v44 = v40;
        _os_log_error_impl(&dword_26455D000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v41, 0x16u);
      }

      v20 = 0;
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v41 = 138412546;
        v42 = v31;
        v43 = 2112;
        v44 = v32;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v41, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_24;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v34 = objc_opt_class();
    v23 = NSStringFromClass(v34);
    v24 = NSStringFromSelector(a2);
    v41 = 138412802;
    v42 = v23;
    v43 = 2112;
    v44 = v24;
    v45 = 1024;
    messageType = intValue2;
    v25 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v26 = v12;
    v27 = 28;
    goto LABEL_27;
  }

LABEL_13:
  selfCopy = 0;
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)outputToDictionary
{
  v4.receiver = self;
  v4.super_class = SMSessionStartInfoRequestMessage;
  outputToDictionary = [(SMMessage *)&v4 outputToDictionary];

  return outputToDictionary;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[SMSessionStartInfoRequestMessage encodeWithCoder:]";
      v10 = 1024;
      v11 = 107;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = SMSessionStartInfoRequestMessage;
  [(SMMessage *)&v7 encodeWithCoder:coderCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (SMSessionStartInfoRequestMessage)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v34) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v34, 2u);
    }

    goto LABEL_13;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v34 = 138413058;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 1024;
    messageType = [objc_opt_class() messageType];
    v40 = 1024;
    v41 = v7;
    v17 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v18 = v9;
    v19 = 34;
LABEL_27:
    _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, v17, &v34, v19);

    goto LABEL_13;
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
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        v34 = 138412546;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v34, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = v11;
        self = [(SMSessionStartInfoRequestMessage *)self initWithDate:v9 messageID:v10 sessionID:v11];
        selfCopy = self;
LABEL_24:

LABEL_25:
        goto LABEL_14;
      }

      v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        v34 = 138412546;
        v35 = v32;
        v36 = 2112;
        v37 = v33;
        _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v34, 0x16u);
      }

      v12 = 0;
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        v34 = 138412546;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v34, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_24;
  }

  v20 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v15 = NSStringFromClass(v27);
    v16 = NSStringFromSelector(a2);
    v34 = 138412802;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 1024;
    messageType = v20;
    v17 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v18 = v9;
    v19 = 28;
    goto LABEL_27;
  }

LABEL_13:
  selfCopy = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end