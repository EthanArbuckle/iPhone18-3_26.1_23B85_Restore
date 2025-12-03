@interface SMSessionStateUpdateReqMessage
- (SMSessionStateUpdateReqMessage)initWithCoder:(id)coder;
- (SMSessionStateUpdateReqMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD deviceToRequest:(id)request;
- (SMSessionStateUpdateReqMessage)initWithDictionary:(id)dictionary;
- (id)initSessionID:(id)d deviceToRequest:(id)request;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStateUpdateReqMessage

- (SMSessionStateUpdateReqMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD deviceToRequest:(id)request
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  requestCopy = request;
  v14 = requestCopy;
  if (!dateCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: date";
LABEL_16:
    _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_17;
  }

  if (!dCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: messageID";
    goto LABEL_16;
  }

  if (!iDCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_16;
  }

  if (!requestCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: deviceToRequest";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v21.receiver = self;
  v21.super_class = SMSessionStateUpdateReqMessage;
  v15 = [(SMMessage *)&v21 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceToRequest, request);
  }

  self = v16;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)initSessionID:(id)d deviceToRequest:(id)request
{
  requestCopy = request;
  dCopy = d;
  v8 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMSessionStateUpdateReqMessage *)self initWithDate:v8 messageID:uUID sessionID:dCopy deviceToRequest:requestCopy];

  return v10;
}

- (SMSessionStateUpdateReqMessage)initWithDictionary:(id)dictionary
{
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v47) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v47, 2u);
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

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v47 = 138413058;
    v48 = v26;
    v49 = 2112;
    v50 = v27;
    v51 = 1024;
    messageType = [objc_opt_class() messageType];
    v53 = 1024;
    v54 = intValue;
    v28 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v29 = v12;
    v30 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v29, OS_LOG_TYPE_ERROR, v28, &v47, v30);

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
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = NSStringFromSelector(a2);
        v47 = 138412546;
        v48 = v39;
        v49 = 2112;
        v50 = v40;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v47, 0x16u);
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
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(a2);
        v47 = 138412546;
        v48 = v42;
        v49 = 2112;
        v50 = v43;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v47, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = [v6 valueForKey:@"sessionID"];
    v20 = [v18 initWithUUIDString:v19];

    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCAD78]);
      v22 = [v6 valueForKey:@"deviceToRequest"];
      v23 = [v21 initWithUUIDString:v22];

      if (v23)
      {
        self = [(SMSessionStateUpdateReqMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 deviceToRequest:v23];
        selfCopy = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(a2);
        v47 = 138412546;
        v48 = v45;
        v49 = 2112;
        v50 = v46;
        _os_log_error_impl(&dword_26455D000, v36, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing deviceToRequest", &v47, 0x16u);
      }

      v23 = 0;
    }

    else
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        v47 = 138412546;
        v48 = v34;
        v49 = 2112;
        v50 = v35;
        _os_log_error_impl(&dword_26455D000, v23, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v47, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_28;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v37 = objc_opt_class();
    v26 = NSStringFromClass(v37);
    v27 = NSStringFromSelector(a2);
    v47 = 138412802;
    v48 = v26;
    v49 = 2112;
    v50 = v27;
    v51 = 1024;
    messageType = intValue2;
    v28 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v29 = v12;
    v30 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  v31 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)outputToDictionary
{
  v7.receiver = self;
  v7.super_class = SMSessionStateUpdateReqMessage;
  outputToDictionary = [(SMMessage *)&v7 outputToDictionary];
  deviceToRequest = [(SMSessionStateUpdateReqMessage *)self deviceToRequest];
  uUIDString = [deviceToRequest UUIDString];
  [outputToDictionary setValue:uUIDString forKey:@"deviceToRequest"];

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
      v10 = "[SMSessionStateUpdateReqMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 106;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = SMSessionStateUpdateReqMessage;
  [(SMMessage *)&v8 encodeWithCoder:coderCopy];
  deviceToRequest = [(SMSessionStateUpdateReqMessage *)self deviceToRequest];
  [coderCopy encodeObject:deviceToRequest forKey:@"deviceToRequest"];

  v7 = *MEMORY[0x277D85DE8];
}

- (SMSessionStateUpdateReqMessage)initWithCoder:(id)coder
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
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
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
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v38, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_30;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
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
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v38, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"deviceToRequest"];
      if (v12)
      {
        v13 = v12;
        self = [(SMSessionStateUpdateReqMessage *)self initWithDate:v10 messageID:v9 sessionID:v11 deviceToRequest:v12];
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
        _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing deviceToRequest", &v38, 0x16u);
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