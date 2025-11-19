@interface SMSessionEndRemoteControlMessage
- (SMSessionEndRemoteControlMessage)initWithCoder:(id)a3;
- (SMSessionEndRemoteControlMessage)initWithDate:(id)a3 messageID:(id)a4 sessionEndReason:(unint64_t)a5 sessionID:(id)a6 sourceDeviceType:(int64_t)a7 sourceDeviceID:(id)a8;
- (SMSessionEndRemoteControlMessage)initWithDictionary:(id)a3;
- (SMSessionEndRemoteControlMessage)initWithSessionEndReason:(unint64_t)a3 sessionID:(id)a4 sourceDeviceType:(int64_t)a5 sourceDeviceID:(id)a6;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionEndRemoteControlMessage

- (SMSessionEndRemoteControlMessage)initWithSessionEndReason:(unint64_t)a3 sessionID:(id)a4 sourceDeviceType:(int64_t)a5 sourceDeviceID:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [(SMSessionEndRemoteControlMessage *)self initWithDate:v12 messageID:v13 sessionEndReason:a3 sessionID:v11 sourceDeviceType:a5 sourceDeviceID:v10];

  return v14;
}

- (SMSessionEndRemoteControlMessage)initWithDate:(id)a3 messageID:(id)a4 sessionEndReason:(unint64_t)a5 sessionID:(id)a6 sourceDeviceType:(int64_t)a7 sourceDeviceID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (!v14)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: date";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_14;
  }

  if (!v15)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: messageID";
    goto LABEL_13;
  }

  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    v20 = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = SMSessionEndRemoteControlMessage;
  v18 = [(SMMessage *)&v24 initWithDate:v14 messageID:v15 sessionID:v16];
  v19 = v18;
  if (v18)
  {
    v18->_sessionEndReason = a5;
    objc_storeStrong(&v18->_sourceDeviceID, a8);
    v19->_sourceDeviceType = a7;
  }

  self = v19;
  v20 = self;
LABEL_15:

  return v20;
}

- (SMSessionEndRemoteControlMessage)initWithDictionary:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
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

    goto LABEL_16;
  }

  v7 = [v5 valueForKey:@"messageType"];
  v8 = [v7 intValue];

  if ([objc_opt_class() messageType] != v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v29 = 0;
      goto LABEL_17;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(a2);
    *buf = 138413058;
    v64 = v31;
    v65 = 2112;
    v66 = v32;
    v67 = 1024;
    v68 = [objc_opt_class() messageType];
    v69 = 1024;
    v70 = v8;
    v33 = "#RemoteControl,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v34 = v12;
    v35 = 34;
LABEL_31:
    _os_log_error_impl(&dword_26455D000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);

    goto LABEL_16;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  v10 = [v9 intValue];

  if (v10 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v39 = objc_opt_class();
    v31 = NSStringFromClass(v39);
    v32 = NSStringFromSelector(a2);
    *buf = 138412802;
    v64 = v31;
    v65 = 2112;
    v66 = v32;
    v67 = 1024;
    v68 = v10;
    v33 = "#RemoteControl,%@,%@,unrecognized interface version,%d";
    v34 = v12;
    v35 = 28;
    goto LABEL_31;
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
      v18 = [v6 valueForKey:@"sessionEndReason"];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 intValue];
        v21 = objc_alloc(MEMORY[0x277CCAD78]);
        v22 = [v6 valueForKey:@"sessionID"];
        v23 = [v21 initWithUUIDString:v22];

        if (v23)
        {
          v24 = [v6 valueForKey:@"idsDeviceType"];
          v62 = v24;
          if (v24)
          {
            v61 = v23;
            v25 = [v24 intValue];
            v26 = [v6 valueForKey:@"sourceDeviceId"];
            if (v26)
            {
              v27 = v26;
              v28 = v25;
              v23 = v61;
              self = [(SMSessionEndRemoteControlMessage *)self initWithDate:v14 messageID:v17 sessionEndReason:v20 sessionID:v61 sourceDeviceType:v28 sourceDeviceID:v26];
              v29 = self;
            }

            else
            {
              v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v58 = objc_opt_class();
                v59 = NSStringFromClass(v58);
                v60 = NSStringFromSelector(a2);
                *buf = 138412546;
                v64 = v59;
                v65 = 2112;
                v66 = v60;
                _os_log_error_impl(&dword_26455D000, v40, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sourceDeviceID", buf, 0x16u);
              }

              v27 = 0;
              v29 = 0;
              v23 = v61;
            }
          }

          else
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v54 = objc_opt_class();
              NSStringFromClass(v54);
              v56 = v55 = v23;
              v57 = NSStringFromSelector(a2);
              *buf = 138412546;
              v64 = v56;
              v65 = 2112;
              v66 = v57;
              _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing idsDeviceType", buf, 0x16u);

              v23 = v55;
            }

            v29 = 0;
          }

          v38 = v62;
        }

        else
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = NSStringFromSelector(a2);
            *buf = 138412546;
            v64 = v52;
            v65 = 2112;
            v66 = v53;
            _os_log_error_impl(&dword_26455D000, v38, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", buf, 0x16u);

            v23 = 0;
          }

          v29 = 0;
        }
      }

      else
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          NSStringFromClass(v47);
          v49 = v48 = v23;
          v50 = NSStringFromSelector(a2);
          *buf = 138412546;
          v64 = v49;
          v65 = 2112;
          v66 = v50;
          _os_log_error_impl(&dword_26455D000, v48, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionEndReason", buf, 0x16u);

          v23 = v48;
        }

        v29 = 0;
      }
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(a2);
        *buf = 138412546;
        v64 = v45;
        v65 = 2112;
        v66 = v46;
        _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", buf, 0x16u);
      }

      v29 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(a2);
      *buf = 138412546;
      v64 = v42;
      v65 = 2112;
      v66 = v43;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", buf, 0x16u);
    }

    v29 = 0;
  }

LABEL_17:
  v36 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)outputToDictionary
{
  v8.receiver = self;
  v8.super_class = SMSessionEndRemoteControlMessage;
  v3 = [(SMMessage *)&v8 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndRemoteControlMessage sessionEndReason](self, "sessionEndReason")}];
  [v3 setObject:v4 forKey:@"sessionEndReason"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionEndRemoteControlMessage sourceDeviceType](self, "sourceDeviceType")}];
  [v3 setObject:v5 forKey:@"idsDeviceType"];

  v6 = [(SMSessionEndRemoteControlMessage *)self sourceDeviceID];
  [v3 setObject:v6 forKey:@"sourceDeviceId"];

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
      v10 = "[SMSessionEndRemoteControlMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 151;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = SMSessionEndRemoteControlMessage;
  [(SMMessage *)&v8 encodeWithCoder:v4];
  [v4 encodeInteger:-[SMSessionEndRemoteControlMessage sessionEndReason](self forKey:{"sessionEndReason"), @"sessionEndReason"}];
  [v4 encodeInteger:-[SMSessionEndRemoteControlMessage sourceDeviceType](self forKey:{"sourceDeviceType"), @"idsDeviceType"}];
  v6 = [(SMSessionEndRemoteControlMessage *)self sourceDeviceID];
  [v4 encodeObject:v6 forKey:@"sourceDeviceId"];

  v7 = *MEMORY[0x277D85DE8];
}

- (SMSessionEndRemoteControlMessage)initWithCoder:(id)a3
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
    v19 = "#RemoteControl,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v20 = v9;
    v21 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, v19, &v39, v21);

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
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", &v39, 0x16u);
      }

      v15 = 0;
      goto LABEL_30;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
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
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", &v39, 0x16u);
      }

      v15 = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeIntegerForKey:@"sessionEndReason"];
      v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sourceDeviceId"];
      if (v13)
      {
        v14 = v13;
        self = -[SMSessionEndRemoteControlMessage initWithDate:messageID:sessionEndReason:sessionID:sourceDeviceType:sourceDeviceID:](self, "initWithDate:messageID:sessionEndReason:sessionID:sourceDeviceType:sourceDeviceID:", v10, v9, v12, v11, [v6 decodeIntegerForKey:@"idsDeviceType"], v13);
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
        _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sourceDeviceID", &v39, 0x16u);
      }

      v14 = 0;
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", &v39, 0x16u);
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
    v19 = "#RemoteControl,%@,%@,unrecognized interface version,%d";
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