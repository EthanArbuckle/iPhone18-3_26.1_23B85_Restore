@interface SMEstimatedEndTimeUpdateMessage
- (SMEstimatedEndTimeUpdateMessage)initWithCoder:(id)a3;
- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 estimatedEndTime:(id)a6;
- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 estimatedEndTime:(id)a6 coarseEstimatedEndTime:(id)a7;
- (SMEstimatedEndTimeUpdateMessage)initWithDictionary:(id)a3;
- (SMEstimatedEndTimeUpdateMessage)initWithSessionID:(id)a3 estimatedEndTime:(id)a4 coarseEstimatedEndTime:(id)a5;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMEstimatedEndTimeUpdateMessage

- (SMEstimatedEndTimeUpdateMessage)initWithSessionID:(id)a3 estimatedEndTime:(id)a4 coarseEstimatedEndTime:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 now];
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [(SMEstimatedEndTimeUpdateMessage *)self initWithDate:v12 messageID:v13 sessionID:v11 estimatedEndTime:v10 coarseEstimatedEndTime:v9];

  return v14;
}

- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 estimatedEndTime:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v23 = 0;
    v17 = "Invalid parameter not satisfying: date";
    v18 = &v23;
LABEL_14:
    _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_15;
  }

  if (!v11)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v22 = 0;
    v17 = "Invalid parameter not satisfying: messageID";
    v18 = &v22;
    goto LABEL_14;
  }

  if (!v12)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v21 = 0;
    v17 = "Invalid parameter not satisfying: sessionID";
    v18 = &v21;
    goto LABEL_14;
  }

  if (!v13)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v17 = "Invalid parameter not satisfying: estimatedEndTime";
      v18 = &v20;
      goto LABEL_14;
    }

LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  self = [(SMEstimatedEndTimeUpdateMessage *)self initWithDate:v10 messageID:v11 sessionID:v12 estimatedEndTime:v13 coarseEstimatedEndTime:v13];
  v15 = self;
LABEL_16:

  return v15;
}

- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 estimatedEndTime:(id)a6 coarseEstimatedEndTime:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: date";
LABEL_16:
    _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_17;
  }

  if (!v13)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: messageID";
    goto LABEL_16;
  }

  if (!v14)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_16;
  }

  if (!v15)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: estimatedEndTime";
      goto LABEL_16;
    }

LABEL_17:

    v19 = 0;
    goto LABEL_18;
  }

  v23.receiver = self;
  v23.super_class = SMEstimatedEndTimeUpdateMessage;
  v17 = [(SMMessage *)&v23 initWithDate:v12 messageID:v13 sessionID:v14];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_estimatedEndTime, a6);
    objc_storeStrong(p_isa + 6, a7);
  }

  self = p_isa;
  v19 = self;
LABEL_18:

  return v19;
}

- (SMEstimatedEndTimeUpdateMessage)initWithDictionary:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", buf, 2u);
    }

    goto LABEL_15;
  }

  v7 = [v5 valueForKey:@"messageType"];
  v8 = [v7 intValue];

  if ([objc_opt_class() messageType] != v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v34 = 0;
      goto LABEL_16;
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = NSStringFromSelector(a2);
    *buf = 138413058;
    v58 = v29;
    v59 = 2112;
    v60 = v30;
    v61 = 1024;
    v62 = [objc_opt_class() messageType];
    v63 = 1024;
    v64 = v8;
    v31 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v32 = v12;
    v33 = 34;
LABEL_30:
    _os_log_error_impl(&dword_26455D000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);

    goto LABEL_15;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  v10 = [v9 intValue];

  if (v10 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v38 = objc_opt_class();
    v29 = NSStringFromClass(v38);
    v30 = NSStringFromSelector(a2);
    *buf = 138412802;
    v58 = v29;
    v59 = 2112;
    v60 = v30;
    v61 = 1024;
    v62 = v10;
    v31 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v32 = v12;
    v33 = 28;
    goto LABEL_30;
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
        v21 = [v6 valueForKey:@"estimatedEndTime"];
        v22 = v21;
        if (v21)
        {
          v23 = MEMORY[0x277CBEAA8];
          [v21 doubleValue];
          v56 = [v23 dateWithTimeIntervalSince1970:?];
          v24 = [v6 valueForKey:@"coarseEstimatedEndTime"];
          v25 = v24;
          if (v24)
          {
            v26 = MEMORY[0x277CBEAA8];
            [v24 doubleValue];
            v27 = [v26 dateWithTimeIntervalSince1970:?];
          }

          else
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v53 = objc_opt_class();
              v55 = NSStringFromClass(v53);
              v54 = NSStringFromSelector(a2);
              *buf = 138412546;
              v58 = v55;
              v59 = 2112;
              v60 = v54;
              _os_log_error_impl(&dword_26455D000, v39, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing coarseEstimatedEndTime", buf, 0x16u);
            }

            v27 = 0;
          }

          v37 = v56;
          self = [(SMEstimatedEndTimeUpdateMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 estimatedEndTime:v56 coarseEstimatedEndTime:v27, v55];

          v34 = self;
        }

        else
        {
          v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            NSStringFromClass(v49);
            v51 = v50 = v37;
            v52 = NSStringFromSelector(a2);
            *buf = 138412546;
            v58 = v51;
            v59 = 2112;
            v60 = v52;
            _os_log_error_impl(&dword_26455D000, v50, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing estimatedEndTime", buf, 0x16u);

            v37 = v50;
          }

          v34 = 0;
        }
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = NSStringFromSelector(a2);
          *buf = 138412546;
          v58 = v47;
          v59 = 2112;
          v60 = v48;
          _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        v34 = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        *buf = 138412546;
        v58 = v44;
        v59 = 2112;
        v60 = v45;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      v34 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v58 = v41;
      v59 = 2112;
      v60 = v42;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v34 = 0;
  }

LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)outputToDictionary
{
  v12.receiver = self;
  v12.super_class = SMEstimatedEndTimeUpdateMessage;
  v3 = [(SMMessage *)&v12 outputToDictionary];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(SMEstimatedEndTimeUpdateMessage *)self estimatedEndTime];
  [v5 timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"estimatedEndTime"];

  v7 = [(SMEstimatedEndTimeUpdateMessage *)self coarseEstimatedEndTime];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [(SMEstimatedEndTimeUpdateMessage *)self coarseEstimatedEndTime];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    [v3 setObject:v10 forKey:@"coarseEstimatedEndTime"];
  }

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
      v11 = "[SMEstimatedEndTimeUpdateMessage encodeWithCoder:]";
      v12 = 1024;
      v13 = 156;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v9.receiver = self;
  v9.super_class = SMEstimatedEndTimeUpdateMessage;
  [(SMMessage *)&v9 encodeWithCoder:v4];
  v6 = [(SMEstimatedEndTimeUpdateMessage *)self estimatedEndTime];
  [v4 encodeObject:v6 forKey:@"estimatedEndTime"];

  v7 = [(SMEstimatedEndTimeUpdateMessage *)self coarseEstimatedEndTime];
  [v4 encodeObject:v7 forKey:@"coarseEstimatedEndTime"];

  v8 = *MEMORY[0x277D85DE8];
}

- (SMEstimatedEndTimeUpdateMessage)initWithCoder:(id)a3
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
      goto LABEL_14;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v39 = 138413058;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 1024;
    v44 = [objc_opt_class() messageType];
    v45 = 1024;
    v46 = v7;
    v19 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v20 = v9;
    v21 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, v19, &v39, v21);

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
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v39, 0x16u);
      }

      v15 = 0;
      goto LABEL_30;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (!v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v34;
        v41 = 2112;
        v42 = v35;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v39, 0x16u);
      }

      v15 = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedEndTime"];
      if (v12)
      {
        v13 = v12;
        v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"coarseEstimatedEndTime"];
        self = [(SMEstimatedEndTimeUpdateMessage *)self initWithDate:v9 messageID:v10 sessionID:v11 estimatedEndTime:v13 coarseEstimatedEndTime:v14];

        v15 = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v37;
        v41 = 2112;
        v42 = v38;
        _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing estimatedEndTime", &v39, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v39, 0x16u);
      }
    }

    v15 = 0;
    goto LABEL_28;
  }

  v22 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v17 = NSStringFromClass(v29);
    v18 = NSStringFromSelector(a2);
    v39 = 138412802;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 1024;
    v44 = v22;
    v19 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v20 = v9;
    v21 = 28;
    goto LABEL_32;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

@end