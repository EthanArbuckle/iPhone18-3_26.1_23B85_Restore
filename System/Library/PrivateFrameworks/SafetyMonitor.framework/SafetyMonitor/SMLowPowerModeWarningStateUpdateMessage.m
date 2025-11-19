@interface SMLowPowerModeWarningStateUpdateMessage
- (SMLowPowerModeWarningStateUpdateMessage)initWithCoder:(id)a3;
- (SMLowPowerModeWarningStateUpdateMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 lowPowerModeWarningState:(int64_t)a6;
- (SMLowPowerModeWarningStateUpdateMessage)initWithDictionary:(id)a3;
- (SMLowPowerModeWarningStateUpdateMessage)initWithSessionID:(id)a3 lowPowerModeWarningState:(int64_t)a4;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMLowPowerModeWarningStateUpdateMessage

- (SMLowPowerModeWarningStateUpdateMessage)initWithSessionID:(id)a3 lowPowerModeWarningState:(int64_t)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMLowPowerModeWarningStateUpdateMessage *)self initWithDate:v8 messageID:v9 sessionID:v7 lowPowerModeWarningState:a4];

  return v10;
}

- (SMLowPowerModeWarningStateUpdateMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 lowPowerModeWarningState:(int64_t)a6
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
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: date";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_14;
  }

  if (!v11)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: messageID";
    goto LABEL_13;
  }

  if (!v12)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    v15 = 0;
    goto LABEL_15;
  }

  v19.receiver = self;
  v19.super_class = SMLowPowerModeWarningStateUpdateMessage;
  v14 = [(SMMessage *)&v19 initWithDate:v10 messageID:v11 sessionID:v12];
  if (v14)
  {
    v14->_lowPowerModeWarningState = a6;
  }

  self = v14;
  v15 = self;
LABEL_15:

  return v15;
}

- (SMLowPowerModeWarningStateUpdateMessage)initWithDictionary:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v47) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v47, 2u);
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
LABEL_14:
      v30 = 0;
      goto LABEL_15;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    v47 = 138413058;
    v48 = v25;
    v49 = 2112;
    v50 = v26;
    v51 = 1024;
    v52 = [objc_opt_class() messageType];
    v53 = 1024;
    v54 = v8;
    v27 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v28 = v12;
    v29 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, v27, &v47, v29);

    goto LABEL_14;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  v10 = [v9 intValue];

  if (v10 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v34 = objc_opt_class();
    v25 = NSStringFromClass(v34);
    v26 = NSStringFromSelector(a2);
    v47 = 138412802;
    v48 = v25;
    v49 = 2112;
    v50 = v26;
    v51 = 1024;
    v52 = v10;
    v27 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v28 = v12;
    v29 = 28;
    goto LABEL_33;
  }

  v11 = [v6 valueForKey:@"sendDate"];
  v12 = v11;
  if (v11)
  {
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
        v21 = [v6 valueForKey:@"lowPowerModeWarningState"];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 intValue];
        }

        else
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            v46 = NSStringFromSelector(a2);
            v47 = 138412546;
            v48 = v45;
            v49 = 2112;
            v50 = v46;
            _os_log_error_impl(&dword_26455D000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", &v47, 0x16u);
          }

          v23 = 0;
        }

        self = [(SMLowPowerModeWarningStateUpdateMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 lowPowerModeWarningState:v23];
        v30 = self;
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = NSStringFromSelector(a2);
          v47 = 138412546;
          v48 = v42;
          v49 = 2112;
          v50 = v43;
          _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v47, 0x16u);
        }

        v30 = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = NSStringFromSelector(a2);
        v47 = 138412546;
        v48 = v39;
        v49 = 2112;
        v50 = v40;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v47, 0x16u);
      }

      v30 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      v47 = 138412546;
      v48 = v36;
      v49 = 2112;
      v50 = v37;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v47, 0x16u);
    }

    v30 = 0;
  }

LABEL_15:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)outputToDictionary
{
  v6.receiver = self;
  v6.super_class = SMLowPowerModeWarningStateUpdateMessage;
  v3 = [(SMMessage *)&v6 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMLowPowerModeWarningStateUpdateMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [v3 setObject:v4 forKey:@"lowPowerModeWarningState"];

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
      v10 = "[SMLowPowerModeWarningStateUpdateMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 122;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = SMLowPowerModeWarningStateUpdateMessage;
  [(SMMessage *)&v8 encodeWithCoder:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMLowPowerModeWarningStateUpdateMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [v4 encodeObject:v6 forKey:@"lowPowerModeWarningState"];

  v7 = *MEMORY[0x277D85DE8];
}

- (SMLowPowerModeWarningStateUpdateMessage)initWithCoder:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v39, 2u);
    }

    goto LABEL_14;
  }

  v7 = [v5 decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      v22 = 0;
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v39 = 138413058;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    v43 = 1024;
    v44 = [objc_opt_class() messageType];
    v45 = 1024;
    v46 = v7;
    v18 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v19 = v9;
    v20 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, v18, &v39, v20);

    goto LABEL_14;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v21 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v26 = objc_opt_class();
    v16 = NSStringFromClass(v26);
    v17 = NSStringFromSelector(a2);
    v39 = 138412802;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    v43 = 1024;
    v44 = v21;
    v18 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v19 = v9;
    v20 = 28;
    goto LABEL_33;
  }

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
  if (v9)
  {
    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 intValue];
        }

        else
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = NSStringFromSelector(a2);
            v39 = 138412546;
            v40 = v37;
            v41 = 2112;
            v42 = v38;
            _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", &v39, 0x16u);
          }

          v14 = 0;
        }

        self = [(SMLowPowerModeWarningStateUpdateMessage *)self initWithDate:v9 messageID:v10 sessionID:v11 lowPowerModeWarningState:v14];
        v22 = self;
      }

      else
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = NSStringFromSelector(a2);
          v39 = 138412546;
          v40 = v34;
          v41 = 2112;
          v42 = v35;
          _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v39, 0x16u);
        }

        v22 = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v39, 0x16u);
      }

      v22 = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      v39 = 138412546;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v39, 0x16u);
    }

    v22 = 0;
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

@end