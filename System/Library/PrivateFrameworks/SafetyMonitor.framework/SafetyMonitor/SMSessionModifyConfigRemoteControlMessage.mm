@interface SMSessionModifyConfigRemoteControlMessage
- (SMSessionModifyConfigRemoteControlMessage)initWithCoder:(id)a3;
- (SMSessionModifyConfigRemoteControlMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 sourceDeviceType:(int64_t)a6 sourceDeviceID:(id)a7 updatedSessionConfiguration:(id)a8;
- (SMSessionModifyConfigRemoteControlMessage)initWithDictionary:(id)a3;
- (SMSessionModifyConfigRemoteControlMessage)initWithSourceDeviceType:(int64_t)a3 sourceDeviceID:(id)a4 updatedSessionConfiguration:(id)a5;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionModifyConfigRemoteControlMessage

- (SMSessionModifyConfigRemoteControlMessage)initWithSourceDeviceType:(int64_t)a3 sourceDeviceID:(id)a4 updatedSessionConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 sessionID];
  v13 = [(SMSessionModifyConfigRemoteControlMessage *)self initWithDate:v10 messageID:v11 sessionID:v12 sourceDeviceType:a3 sourceDeviceID:v9 updatedSessionConfiguration:v8];

  return v13;
}

- (SMSessionModifyConfigRemoteControlMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 sourceDeviceType:(int64_t)a6 sourceDeviceID:(id)a7 updatedSessionConfiguration:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!v14)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: date";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_14;
  }

  if (!v15)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: messageID";
    goto LABEL_13;
  }

  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = SMSessionModifyConfigRemoteControlMessage;
  v19 = [(SMMessage *)&v25 initWithDate:v14 messageID:v15 sessionID:v16];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_updatedSessionConfiguration, a8);
    objc_storeStrong(&v20->_sourceDeviceID, a7);
    v20->_sourceDeviceType = a6;
  }

  self = v20;
  v21 = self;
LABEL_15:

  return v21;
}

- (SMSessionModifyConfigRemoteControlMessage)initWithDictionary:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
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
      goto LABEL_16;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(a2);
    *buf = 138413058;
    v60 = v30;
    v61 = 2112;
    v62 = v31;
    v63 = 1024;
    v64 = [objc_opt_class() messageType];
    v65 = 1024;
    v66 = v8;
    v32 = "#RemoteControl%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v33 = v12;
    v34 = 34;
LABEL_31:
    _os_log_error_impl(&dword_26455D000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);

    goto LABEL_16;
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
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = NSStringFromSelector(a2);
        *buf = 138412546;
        v60 = v43;
        v61 = 2112;
        v62 = v44;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", buf, 0x16u);
      }

      v28 = 0;
      goto LABEL_42;
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
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        *buf = 138412546;
        v60 = v46;
        v61 = 2112;
        v62 = v47;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", buf, 0x16u);
      }

      v28 = 0;
      goto LABEL_41;
    }

    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = [v6 valueForKey:@"sessionID"];
    v20 = [v18 initWithUUIDString:v19];

    if (!v20)
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = NSStringFromSelector(a2);
        *buf = 138412546;
        v60 = v49;
        v61 = 2112;
        v62 = v50;
        _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", buf, 0x16u);
      }

      v28 = 0;
      goto LABEL_40;
    }

    v21 = [v6 valueForKey:@"idsDeviceType"];
    v22 = v21;
    if (!v21)
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        NSStringFromClass(v51);
        v53 = v52 = v27;
        v54 = NSStringFromSelector(a2);
        *buf = 138412546;
        v60 = v53;
        v61 = 2112;
        v62 = v54;
        _os_log_error_impl(&dword_26455D000, v52, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing idsDeviceType", buf, 0x16u);

        v27 = v52;
      }

      v28 = 0;
      goto LABEL_39;
    }

    v23 = [v21 intValue];
    v58 = [v6 valueForKey:@"sourceDeviceId"];
    if (v58)
    {
      v24 = [[SMSessionConfiguration alloc] initWithDictionary:v6];
      if (v24)
      {
        p_super = &v24->super;
        v26 = v23;
        v27 = v58;
        self = [(SMSessionModifyConfigRemoteControlMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 sourceDeviceType:v26 sourceDeviceID:v58 updatedSessionConfiguration:v24];
        v28 = self;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
LABEL_42:

        goto LABEL_17;
      }

      v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = NSStringFromSelector(a2);
        *buf = 138412546;
        v60 = v56;
        v61 = 2112;
        v62 = v57;
        _os_log_error_impl(&dword_26455D000, v41, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing updatedSessionConfig", buf, 0x16u);
      }

      p_super = 0;
    }

    else
    {
      p_super = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = NSStringFromSelector(a2);
        *buf = 138412546;
        v60 = v39;
        v61 = 2112;
        v62 = v40;
        _os_log_error_impl(&dword_26455D000, p_super, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sourceDeviceID", buf, 0x16u);
      }
    }

    v28 = 0;
    v27 = v58;
    goto LABEL_38;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v37 = objc_opt_class();
    v30 = NSStringFromClass(v37);
    v31 = NSStringFromSelector(a2);
    *buf = 138412802;
    v60 = v30;
    v61 = 2112;
    v62 = v31;
    v63 = 1024;
    v64 = v10;
    v32 = "#RemoteControl%@,%@,unrecognized interface version,%d";
    v33 = v12;
    v34 = 28;
    goto LABEL_31;
  }

LABEL_16:
  v28 = 0;
LABEL_17:

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)outputToDictionary
{
  v9.receiver = self;
  v9.super_class = SMSessionModifyConfigRemoteControlMessage;
  v3 = [(SMMessage *)&v9 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionModifyConfigRemoteControlMessage sourceDeviceType](self, "sourceDeviceType")}];
  [v3 setObject:v4 forKey:@"idsDeviceType"];

  v5 = [(SMSessionModifyConfigRemoteControlMessage *)self sourceDeviceID];
  [v3 setObject:v5 forKey:@"sourceDeviceId"];

  v6 = [(SMSessionModifyConfigRemoteControlMessage *)self updatedSessionConfiguration];
  v7 = [v6 outputToDictionary];
  [v3 addEntriesFromDictionary:v7];

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
      v11 = "[SMSessionModifyConfigRemoteControlMessage encodeWithCoder:]";
      v12 = 1024;
      v13 = 149;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v9.receiver = self;
  v9.super_class = SMSessionModifyConfigRemoteControlMessage;
  [(SMMessage *)&v9 encodeWithCoder:v4];
  v6 = [(SMSessionModifyConfigRemoteControlMessage *)self updatedSessionConfiguration];
  [v4 encodeObject:v6 forKey:@"updatedSessionConfiguration"];

  [v4 encodeInteger:-[SMSessionModifyConfigRemoteControlMessage sourceDeviceType](self forKey:{"sourceDeviceType"), @"idsDeviceType"}];
  v7 = [(SMSessionModifyConfigRemoteControlMessage *)self sourceDeviceID];
  [v4 encodeObject:v7 forKey:@"sourceDeviceId"];

  v8 = *MEMORY[0x277D85DE8];
}

- (SMSessionModifyConfigRemoteControlMessage)initWithCoder:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v43) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v43, 2u);
    }

    goto LABEL_15;
  }

  v7 = [v5 decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v43 = 138413058;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    v47 = 1024;
    v48 = [objc_opt_class() messageType];
    v49 = 1024;
    v50 = v7;
    v20 = "#RemoteControl,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v21 = v9;
    v22 = 34;
LABEL_29:
    _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, v20, &v43, v22);

    goto LABEL_15;
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
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        v43 = 138412546;
        v44 = v32;
        v45 = 2112;
        v46 = v33;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", &v43, 0x16u);
      }

      v16 = 0;
      goto LABEL_37;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
    if (!v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        v43 = 138412546;
        v44 = v35;
        v45 = 2112;
        v46 = v36;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", &v43, 0x16u);
      }

      v16 = 0;
      goto LABEL_36;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (!v11)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v43 = 138412546;
        v44 = v38;
        v45 = 2112;
        v46 = v39;
        _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", &v43, 0x16u);
      }

      v16 = 0;
      goto LABEL_35;
    }

    v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sourceDeviceId"];
    if (v12)
    {
      v13 = [v6 decodeIntegerForKey:@"idsDeviceType"];
      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"updatedSessionConfiguration"];
      if (v14)
      {
        v15 = v14;
        self = [(SMSessionModifyConfigRemoteControlMessage *)self initWithDate:v10 messageID:v9 sessionID:v11 sourceDeviceType:v13 sourceDeviceID:v12 updatedSessionConfiguration:v14];
        v16 = self;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
        goto LABEL_16;
      }

      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v43 = 138412546;
        v44 = v41;
        v45 = 2112;
        v46 = v42;
        _os_log_error_impl(&dword_26455D000, v30, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing updatedSessionConfiguration", &v43, 0x16u);
      }

      v15 = 0;
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        v43 = 138412546;
        v44 = v27;
        v45 = 2112;
        v46 = v28;
        _os_log_error_impl(&dword_26455D000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sourceDeviceID", &v43, 0x16u);
      }
    }

    v16 = 0;
    goto LABEL_34;
  }

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v18 = NSStringFromClass(v29);
    v19 = NSStringFromSelector(a2);
    v43 = 138412802;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    v47 = 1024;
    v48 = v23;
    v20 = "#RemoteControl,%@,%@,unrecognized interface version,%d";
    v21 = v9;
    v22 = 28;
    goto LABEL_29;
  }

LABEL_15:
  v16 = 0;
LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

@end