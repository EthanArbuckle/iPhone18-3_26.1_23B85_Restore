@interface SMEstimatedEndTimeUpdateMessage
- (SMEstimatedEndTimeUpdateMessage)initWithCoder:(id)coder;
- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD estimatedEndTime:(id)time;
- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime;
- (SMEstimatedEndTimeUpdateMessage)initWithDictionary:(id)dictionary;
- (SMEstimatedEndTimeUpdateMessage)initWithSessionID:(id)d estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMEstimatedEndTimeUpdateMessage

- (SMEstimatedEndTimeUpdateMessage)initWithSessionID:(id)d estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime
{
  v8 = MEMORY[0x277CBEAA8];
  endTimeCopy = endTime;
  timeCopy = time;
  dCopy = d;
  v12 = [v8 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = [(SMEstimatedEndTimeUpdateMessage *)self initWithDate:v12 messageID:uUID sessionID:dCopy estimatedEndTime:timeCopy coarseEstimatedEndTime:endTimeCopy];

  return v14;
}

- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD estimatedEndTime:(id)time
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  v14 = timeCopy;
  if (!dateCopy)
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

  if (!dCopy)
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

  if (!iDCopy)
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

  if (!timeCopy)
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

    selfCopy = 0;
    goto LABEL_16;
  }

  self = [(SMEstimatedEndTimeUpdateMessage *)self initWithDate:dateCopy messageID:dCopy sessionID:iDCopy estimatedEndTime:timeCopy coarseEstimatedEndTime:timeCopy];
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (SMEstimatedEndTimeUpdateMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  endTimeCopy = endTime;
  if (!dateCopy)
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

  if (!dCopy)
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

  if (!iDCopy)
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

  if (!timeCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: estimatedEndTime";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v23.receiver = self;
  v23.super_class = SMEstimatedEndTimeUpdateMessage;
  v17 = [(SMMessage *)&v23 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_estimatedEndTime, time);
    objc_storeStrong(p_isa + 6, endTime);
  }

  self = p_isa;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (SMEstimatedEndTimeUpdateMessage)initWithDictionary:(id)dictionary
{
  v65 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", buf, 2u);
    }

    goto LABEL_15;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      selfCopy = 0;
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
    messageType = [objc_opt_class() messageType];
    v63 = 1024;
    v64 = intValue;
    v31 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v32 = v12;
    v33 = 34;
LABEL_30:
    _os_log_error_impl(&dword_26455D000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);

    goto LABEL_15;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
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
    messageType = intValue2;
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

          selfCopy = self;
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

          selfCopy = 0;
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

        selfCopy = 0;
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

      selfCopy = 0;
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

    selfCopy = 0;
  }

LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)outputToDictionary
{
  v12.receiver = self;
  v12.super_class = SMEstimatedEndTimeUpdateMessage;
  outputToDictionary = [(SMMessage *)&v12 outputToDictionary];
  v4 = MEMORY[0x277CCABB0];
  estimatedEndTime = [(SMEstimatedEndTimeUpdateMessage *)self estimatedEndTime];
  [estimatedEndTime timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [outputToDictionary setObject:v6 forKey:@"estimatedEndTime"];

  coarseEstimatedEndTime = [(SMEstimatedEndTimeUpdateMessage *)self coarseEstimatedEndTime];

  if (coarseEstimatedEndTime)
  {
    v8 = MEMORY[0x277CCABB0];
    coarseEstimatedEndTime2 = [(SMEstimatedEndTimeUpdateMessage *)self coarseEstimatedEndTime];
    [coarseEstimatedEndTime2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    [outputToDictionary setObject:v10 forKey:@"coarseEstimatedEndTime"];
  }

  return outputToDictionary;
}

- (void)encodeWithCoder:(id)coder
{
  v14 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
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
  [(SMMessage *)&v9 encodeWithCoder:coderCopy];
  estimatedEndTime = [(SMEstimatedEndTimeUpdateMessage *)self estimatedEndTime];
  [coderCopy encodeObject:estimatedEndTime forKey:@"estimatedEndTime"];

  coarseEstimatedEndTime = [(SMEstimatedEndTimeUpdateMessage *)self coarseEstimatedEndTime];
  [coderCopy encodeObject:coarseEstimatedEndTime forKey:@"coarseEstimatedEndTime"];

  v8 = *MEMORY[0x277D85DE8];
}

- (SMEstimatedEndTimeUpdateMessage)initWithCoder:(id)coder
{
  v47 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v39, 2u);
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

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v39 = 138413058;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 1024;
    messageType = [objc_opt_class() messageType];
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

      selfCopy = 0;
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

      selfCopy = 0;
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

        selfCopy = self;
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

    selfCopy = 0;
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
    messageType = v22;
    v19 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v20 = v9;
    v21 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end