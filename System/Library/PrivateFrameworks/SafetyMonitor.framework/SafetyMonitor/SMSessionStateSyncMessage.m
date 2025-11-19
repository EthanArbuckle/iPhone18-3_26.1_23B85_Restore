@interface SMSessionStateSyncMessage
- (SMSessionStateSyncMessage)initWithCoder:(id)a3;
- (SMSessionStateSyncMessage)initWithDate:(id)a3 messageID:(id)a4 sessionManagerState:(id)a5 stateTransitionType:(unint64_t)a6;
- (SMSessionStateSyncMessage)initWithDictionary:(id)a3;
- (SMSessionStateSyncMessage)initWithSessionManagerState:(id)a3 stateTransitionType:(unint64_t)a4;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionStateSyncMessage

- (SMSessionStateSyncMessage)initWithSessionManagerState:(id)a3 stateTransitionType:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [(SMSessionStateSyncMessage *)self initWithDate:v7 messageID:v8 sessionManagerState:v6 stateTransitionType:a4];

  return v9;
}

- (SMSessionStateSyncMessage)initWithDate:(id)a3 messageID:(id)a4 sessionManagerState:(id)a5 stateTransitionType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v10)
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

  if (!v11)
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

  if (!v12)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: sessionManagerState";
    goto LABEL_16;
  }

  if (![v12 sessionState])
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: sessionManagerState.sessionState";
      goto LABEL_16;
    }

LABEL_17:

    v17 = 0;
    goto LABEL_18;
  }

  v14 = [v13 configuration];
  v15 = [v14 sessionID];
  v21.receiver = self;
  v21.super_class = SMSessionStateSyncMessage;
  v16 = [(SMMessage *)&v21 initWithDate:v10 messageID:v11 sessionID:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_sessionManagerState, a5);
    v16->_stateTransitionType = a6;
  }

  self = v16;
  v17 = self;
LABEL_18:

  return v17;
}

- (SMSessionStateSyncMessage)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v45) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v45, 2u);
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
      v28 = 0;
      goto LABEL_15;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    v45 = 138413058;
    v46 = v23;
    v47 = 2112;
    v48 = v24;
    v49 = 1024;
    v50 = [objc_opt_class() messageType];
    v51 = 1024;
    v52 = v8;
    v25 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v26 = v12;
    v27 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, v25, &v45, v27);

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

    v32 = objc_opt_class();
    v23 = NSStringFromClass(v32);
    v24 = NSStringFromSelector(a2);
    v45 = 138412802;
    v46 = v23;
    v47 = 2112;
    v48 = v24;
    v49 = 1024;
    v50 = v10;
    v25 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v26 = v12;
    v27 = 28;
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
      v18 = [[SMSessionManagerState alloc] initWithDictionary:v6];
      if (v18)
      {
        v19 = [v6 valueForKey:@"stateTransitionType"];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 intValue];
        }

        else
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = NSStringFromSelector(a2);
            v45 = 138412546;
            v46 = v43;
            v47 = 2112;
            v48 = v44;
            _os_log_error_impl(&dword_26455D000, v31, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing stateTransitionType", &v45, 0x16u);
          }

          v21 = 0;
        }

        self = [(SMSessionStateSyncMessage *)self initWithDate:v14 messageID:v17 sessionManagerState:v18 stateTransitionType:v21];
        v28 = self;
      }

      else
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = NSStringFromSelector(a2);
          v45 = 138412546;
          v46 = v40;
          v47 = 2112;
          v48 = v41;
          _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache, %@, %@, sessionManagerState is nil", &v45, 0x16u);
        }

        v28 = 0;
      }
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v45 = 138412546;
        v46 = v37;
        v47 = 2112;
        v48 = v38;
        _os_log_error_impl(&dword_26455D000, &v18->super, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v45, 0x16u);
      }

      v28 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      v45 = 138412546;
      v46 = v34;
      v47 = 2112;
      v48 = v35;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v45, 0x16u);
    }

    v28 = 0;
  }

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)outputToDictionary
{
  v8.receiver = self;
  v8.super_class = SMSessionStateSyncMessage;
  v3 = [(SMMessage *)&v8 outputToDictionary];
  v4 = [(SMSessionStateSyncMessage *)self sessionManagerState];
  v5 = [v4 outputToDictionary];
  [v3 addEntriesFromDictionary:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStateSyncMessage stateTransitionType](self, "stateTransitionType")}];
  [v3 setObject:v6 forKey:@"stateTransitionType"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[SMSessionStateSyncMessage encodeWithCoder:]";
      v12 = 1024;
      v13 = 132;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v9.receiver = self;
  v9.super_class = SMSessionStateSyncMessage;
  [(SMMessage *)&v9 encodeWithCoder:v4];
  v6 = [(SMSessionStateSyncMessage *)self sessionManagerState];
  [v4 encodeObject:v6 forKey:@"sessionState"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionStateSyncMessage stateTransitionType](self, "stateTransitionType")}];
  [v4 encodeObject:v7 forKey:@"stateTransitionType"];

  v8 = *MEMORY[0x277D85DE8];
}

- (SMSessionStateSyncMessage)initWithCoder:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v40) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v40, 2u);
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
      v23 = 0;
      goto LABEL_15;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v40 = 138413058;
    v41 = v17;
    v42 = 2112;
    v43 = v18;
    v44 = 1024;
    v45 = [objc_opt_class() messageType];
    v46 = 1024;
    v47 = v7;
    v19 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v20 = v9;
    v21 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, v19, &v40, v21);

    goto LABEL_14;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v22 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v27 = objc_opt_class();
    v17 = NSStringFromClass(v27);
    v18 = NSStringFromSelector(a2);
    v40 = 138412802;
    v41 = v17;
    v42 = 2112;
    v43 = v18;
    v44 = 1024;
    v45 = v22;
    v19 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v20 = v9;
    v21 = 28;
    goto LABEL_33;
  }

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
  if (v9)
  {
    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionState"];
        v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"stateTransitionType"];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 intValue];
        }

        else
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v39 = NSStringFromSelector(a2);
            v40 = 138412546;
            v41 = v38;
            v42 = 2112;
            v43 = v39;
            _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing stateTransitionType", &v40, 0x16u);
          }

          v15 = 0;
        }

        self = [(SMSessionStateSyncMessage *)self initWithDate:v10 messageID:v9 sessionManagerState:v12 stateTransitionType:v15];

        v23 = self;
      }

      else
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(a2);
          v40 = 138412546;
          v41 = v35;
          v42 = 2112;
          v43 = v36;
          _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v40, 0x16u);
        }

        v23 = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        v40 = 138412546;
        v41 = v32;
        v42 = 2112;
        v43 = v33;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v40, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v40 = 138412546;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v40, 0x16u);
    }

    v23 = 0;
  }

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end