@interface SMSessionStartInfoRequestMessage
- (SMSessionStartInfoRequestMessage)initWithCoder:(id)a3;
- (SMSessionStartInfoRequestMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5;
- (SMSessionStartInfoRequestMessage)initWithDictionary:(id)a3;
- (SMSessionStartInfoRequestMessage)initWithSessionID:(id)a3;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionStartInfoRequestMessage

- (SMSessionStartInfoRequestMessage)initWithSessionID:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [(SMSessionStartInfoRequestMessage *)self initWithDate:v6 messageID:v7 sessionID:v5];

  return v8;
}

- (SMSessionStartInfoRequestMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
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

  if (!v9)
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

  if (!v10)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_11;
    }

LABEL_12:

    v12 = 0;
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = SMSessionStartInfoRequestMessage;
  self = [(SMMessage *)&v16 initWithDate:v8 messageID:v9 sessionID:v10];
  v12 = self;
LABEL_13:

  return v12;
}

- (SMSessionStartInfoRequestMessage)initWithDictionary:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v41, 2u);
    }

    goto LABEL_13;
  }

  v7 = [v5 valueForKey:@"messageType"];
  v8 = [v7 intValue];

  if ([objc_opt_class() messageType] != v8)
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
    v46 = [objc_opt_class() messageType];
    v47 = 1024;
    v48 = v8;
    v25 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v26 = v12;
    v27 = 34;
LABEL_27:
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, v25, &v41, v27);

    goto LABEL_13;
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
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        v41 = 138412546;
        v42 = v36;
        v43 = 2112;
        v44 = v37;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v41, 0x16u);
      }

      v21 = 0;
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
        v21 = self;
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

    v21 = 0;
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
    v46 = v10;
    v25 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v26 = v12;
    v27 = 28;
    goto LABEL_27;
  }

LABEL_13:
  v21 = 0;
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)outputToDictionary
{
  v4.receiver = self;
  v4.super_class = SMSessionStartInfoRequestMessage;
  v2 = [(SMMessage *)&v4 outputToDictionary];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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
  [(SMMessage *)&v7 encodeWithCoder:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (SMSessionStartInfoRequestMessage)initWithCoder:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v34) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v34, 2u);
    }

    goto LABEL_13;
  }

  v7 = [v5 decodeIntegerForKey:@"messageType"];
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
    v39 = [objc_opt_class() messageType];
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

      v13 = 0;
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
        v13 = self;
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

    v13 = 0;
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
    v39 = v20;
    v17 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v18 = v9;
    v19 = 28;
    goto LABEL_27;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

@end