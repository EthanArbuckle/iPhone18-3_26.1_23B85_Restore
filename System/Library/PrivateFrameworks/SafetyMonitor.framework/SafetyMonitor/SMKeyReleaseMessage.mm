@interface SMKeyReleaseMessage
- (SMKeyReleaseMessage)initWithCoder:(id)coder;
- (SMKeyReleaseMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerDate:(id)triggerDate locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)self0 sessionType:(unint64_t)self1 destinationType:(unint64_t)self2 isSOSTrigger:(BOOL)self3 lowPowerModeWarningState:(int64_t)self4;
- (SMKeyReleaseMessage)initWithDictionary:(id)dictionary;
- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 isSOSTrigger:(BOOL)self1 lowPowerModeWarningState:(int64_t)self2;
- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 lowPowerModeWarningState:(int64_t)self1;
- (SMKeyReleaseMessage)initWithURL:(id)l;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (id)summaryText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMKeyReleaseMessage

- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 lowPowerModeWarningState:(int64_t)self1
{
  tokenCopy = token;
  keyCopy = key;
  triggerCopy = trigger;
  dateCopy = date;
  dCopy = d;
  v20 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v24) = 0;
  v22 = [(SMKeyReleaseMessage *)self initWithDate:v20 messageID:uUID sessionID:dCopy triggerDate:dateCopy locationOfTrigger:triggerCopy triggerType:type safetyCacheKey:keyCopy safetyCacheToken:tokenCopy sessionType:sessionType destinationType:destinationType isSOSTrigger:v24 lowPowerModeWarningState:state];

  return v22;
}

- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 isSOSTrigger:(BOOL)self1 lowPowerModeWarningState:(int64_t)self2
{
  tokenCopy = token;
  keyCopy = key;
  triggerCopy = trigger;
  dateCopy = date;
  dCopy = d;
  v21 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v25) = sTrigger;
  v23 = [(SMKeyReleaseMessage *)self initWithDate:v21 messageID:uUID sessionID:dCopy triggerDate:dateCopy locationOfTrigger:triggerCopy triggerType:type safetyCacheKey:keyCopy safetyCacheToken:tokenCopy sessionType:sessionType destinationType:destinationType isSOSTrigger:v25 lowPowerModeWarningState:state];

  return v23;
}

- (SMKeyReleaseMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerDate:(id)triggerDate locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)self0 sessionType:(unint64_t)self1 destinationType:(unint64_t)self2 isSOSTrigger:(BOOL)self3 lowPowerModeWarningState:(int64_t)self4
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  triggerDateCopy = triggerDate;
  triggerCopy = trigger;
  keyCopy = key;
  tokenCopy = token;
  if (!dateCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: date";
LABEL_19:
    _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_20;
  }

  if (!dCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: messageID";
    goto LABEL_19;
  }

  if (!iDCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_19;
  }

  if (!triggerDateCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: triggerDate";
    goto LABEL_19;
  }

  if (!keyCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: safetyCacheKey";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v33.receiver = self;
  v33.super_class = SMKeyReleaseMessage;
  v24 = [(SMMessage *)&v33 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_triggerDate, triggerDate);
    objc_storeStrong(&v25->_locationOfTrigger, trigger);
    v25->_triggerType = type;
    objc_storeStrong(&v25->_safetyCacheKey, key);
    objc_storeStrong(&v25->_safetyCacheToken, token);
    v25->_sessionType = sessionType;
    v25->_destinationType = destinationType;
    v25->_isSOSTrigger = sTrigger;
    v25->_lowPowerModeWarningState = state;
  }

  self = v25;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (SMKeyReleaseMessage)initWithDictionary:(id)dictionary
{
  v129 = *MEMORY[0x277D85DE8];
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

    goto LABEL_27;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      selfCopy = 0;
      goto LABEL_28;
    }

    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = NSStringFromSelector(a2);
    *buf = 138413058;
    v122 = v49;
    v123 = 2112;
    v124 = v50;
    v125 = 1024;
    messageType = [objc_opt_class() messageType];
    v127 = 1024;
    v128 = intValue;
    v51 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v52 = v12;
    v53 = 34;
LABEL_42:
    _os_log_error_impl(&dword_26455D000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);

    goto LABEL_27;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v57 = objc_opt_class();
    v49 = NSStringFromClass(v57);
    v50 = NSStringFromSelector(a2);
    *buf = 138412802;
    v122 = v49;
    v123 = 2112;
    v124 = v50;
    v125 = 1024;
    messageType = intValue2;
    v51 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v52 = v12;
    v53 = 28;
    goto LABEL_42;
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
        v21 = [v6 valueForKey:@"triggerTime"];
        v22 = v21;
        if (v21)
        {
          v108 = v17;
          v23 = MEMORY[0x277CBEAA8];
          [v21 doubleValue];
          v111 = [v23 dateWithTimeIntervalSince1970:?];
          v24 = [v6 valueForKey:@"latitude"];
          v25 = [v6 valueForKey:@"longitude"];
          v120 = [v6 valueForKey:@"hunc"];
          v119 = [v6 valueForKey:@"altitude"];
          v118 = [v6 valueForKey:@"vunc"];
          v117 = [v6 valueForKey:@"timeOfLocation"];
          v116 = [v6 valueForKey:@"referenceFrame"];
          v26 = [v6 valueForKey:@"speed"];
          v114 = v24;
          v115 = 0;
          v110 = v22;
          v112 = v26;
          v113 = v25;
          if (v24 && v25 && v120 && v119 && v118 && v117 && v116 && v26)
          {
            v27 = MEMORY[0x277CBEAA8];
            [v117 doubleValue];
            v28 = [v27 dateWithTimeIntervalSince1970:?];
            v29 = objc_alloc(MEMORY[0x277D01160]);
            [v114 doubleValue];
            v31 = v30;
            [v25 doubleValue];
            v33 = v32;
            [v120 doubleValue];
            v35 = v34;
            [v119 doubleValue];
            v37 = v36;
            [v118 doubleValue];
            v39 = v38;
            intValue3 = [v116 intValue];
            [v112 doubleValue];
            v41 = intValue3;
            v22 = v110;
            v115 = [v29 initWithLatitude:v28 longitude:v41 horizontalUncertainty:v31 altitude:v33 verticalUncertainty:v35 date:v37 referenceFrame:v39 speed:v42];
          }

          v43 = [v6 valueForKey:@"triggerType"];
          v44 = v43;
          v17 = v108;
          if (v43)
          {
            v106 = v43;
            intValue4 = [v43 intValue];
            v45 = [v6 valueForKey:@"safetyCacheKey"];
            v46 = v111;
            log = v45;
            if (v45)
            {
              v107 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v45 options:0];
              if (v107)
              {
                v47 = [v6 valueForKey:@"safetyCacheToken"];
                if (v47)
                {
                  v102 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v47 options:0];
                }

                else
                {
                  v102 = 0;
                }

                v22 = v110;
                v61 = [v6 valueForKey:@"sessionType"];
                v105 = v47;
                v100 = v61;
                if (v61)
                {
                  intValue5 = [v61 intValue];
                  v63 = [v6 valueForKey:@"sessionDestinationType"];
                  v101 = v63;
                  if (v63)
                  {
                    v99 = intValue4;
                    intValue6 = [v63 intValue];
                    v65 = [v6 valueForKey:@"isSOSTrigger"];
                    bOOLValue = [v65 BOOLValue];

                    v66 = [v6 valueForKey:@"lowPowerModeWarningState"];
                    v104 = v66;
                    if (v66)
                    {
                      intValue7 = [v66 intValue];
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        v74 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                        {
                          v75 = objc_opt_class();
                          v97 = NSStringFromClass(v75);
                          v76 = NSStringFromSelector(a2);
                          *buf = 138412546;
                          v122 = v97;
                          v123 = 2112;
                          v124 = v76;
                          _os_log_impl(&dword_26455D000, v74, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@ ,missing lowPowerModeWarningStateNumber, OK to proceed", buf, 0x16u);
                        }
                      }

                      intValue7 = 0;
                    }

                    LOBYTE(v96) = bOOLValue;
                    v95 = intValue5;
                    v22 = v110;
                    v46 = v111;
                    self = [(SMKeyReleaseMessage *)self initWithDate:v14 messageID:v108 sessionID:v20 triggerDate:v111 locationOfTrigger:v115 triggerType:v99 safetyCacheKey:v107 safetyCacheToken:v102 sessionType:v95 destinationType:intValue6 isSOSTrigger:v96 lowPowerModeWarningState:intValue7];
                    selfCopy = self;
                    v44 = v106;
                  }

                  else
                  {
                    v104 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                    v44 = v106;
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                    {
                      v92 = objc_opt_class();
                      v93 = NSStringFromClass(v92);
                      v94 = NSStringFromSelector(a2);
                      *buf = 138412546;
                      v122 = v93;
                      v123 = 2112;
                      v124 = v94;
                      _os_log_error_impl(&dword_26455D000, v104, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

                      v44 = v106;
                      v22 = v110;
                    }

                    selfCopy = 0;
                    v46 = v111;
                  }
                }

                else
                {
                  v101 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    v89 = objc_opt_class();
                    v90 = NSStringFromClass(v89);
                    v91 = NSStringFromSelector(a2);
                    *buf = 138412546;
                    v122 = v90;
                    v123 = 2112;
                    v124 = v91;
                    _os_log_error_impl(&dword_26455D000, v101, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

                    v22 = v110;
                  }

                  selfCopy = 0;
                  v44 = v106;
                }
              }

              else
              {
                v105 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  v86 = objc_opt_class();
                  v87 = NSStringFromClass(v86);
                  v88 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v122 = v87;
                  v123 = 2112;
                  v124 = v88;
                  _os_log_error_impl(&dword_26455D000, v105, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to convert safetyCacheKey to NSData", buf, 0x16u);
                }

                selfCopy = 0;
                v22 = v110;
                v44 = v106;
              }
            }

            else
            {
              v107 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                v83 = objc_opt_class();
                v84 = NSStringFromClass(v83);
                v85 = NSStringFromSelector(a2);
                *buf = 138412546;
                v122 = v84;
                v123 = 2112;
                v124 = v85;
                _os_log_error_impl(&dword_26455D000, v107, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing safetyCacheKey", buf, 0x16u);

                v22 = v110;
              }

              selfCopy = 0;
              v44 = v106;
            }
          }

          else
          {
            log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            v46 = v111;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v80 = objc_opt_class();
              v81 = NSStringFromClass(v80);
              v82 = NSStringFromSelector(a2);
              *buf = 138412546;
              v122 = v81;
              v123 = 2112;
              v124 = v82;
              _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerType", buf, 0x16u);

              v44 = 0;
              v22 = v110;
            }

            selfCopy = 0;
          }
        }

        else
        {
          v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v77 = objc_opt_class();
            v78 = NSStringFromClass(v77);
            v79 = NSStringFromSelector(a2);
            *buf = 138412546;
            v122 = v78;
            v123 = 2112;
            v124 = v79;
            _os_log_error_impl(&dword_26455D000, v46, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerTime", buf, 0x16u);
          }

          selfCopy = 0;
        }
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          v73 = NSStringFromSelector(a2);
          *buf = 138412546;
          v122 = v72;
          v123 = 2112;
          v124 = v73;
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
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        v70 = NSStringFromSelector(a2);
        *buf = 138412546;
        v122 = v69;
        v123 = 2112;
        v124 = v70;
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
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = NSStringFromSelector(a2);
      *buf = 138412546;
      v122 = v59;
      v123 = 2112;
      v124 = v60;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_28:
  v55 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)outputToDictionary
{
  v44.receiver = self;
  v44.super_class = SMKeyReleaseMessage;
  outputToDictionary = [(SMMessage *)&v44 outputToDictionary];
  v4 = MEMORY[0x277CCABB0];
  triggerDate = [(SMKeyReleaseMessage *)self triggerDate];
  [triggerDate timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [outputToDictionary setObject:v6 forKey:@"triggerTime"];

  locationOfTrigger = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    v8 = MEMORY[0x277CCABB0];
    locationOfTrigger2 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger2 latitude];
    v10 = [v8 numberWithDouble:?];
    [outputToDictionary setObject:v10 forKey:@"latitude"];

    v11 = MEMORY[0x277CCABB0];
    locationOfTrigger3 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger3 longitude];
    v13 = [v11 numberWithDouble:?];
    [outputToDictionary setObject:v13 forKey:@"longitude"];

    v14 = MEMORY[0x277CCABB0];
    locationOfTrigger4 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger4 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [outputToDictionary setObject:v16 forKey:@"hunc"];

    v17 = MEMORY[0x277CCABB0];
    locationOfTrigger5 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger5 altitude];
    v19 = [v17 numberWithDouble:?];
    [outputToDictionary setObject:v19 forKey:@"altitude"];

    v20 = MEMORY[0x277CCABB0];
    locationOfTrigger6 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger6 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [outputToDictionary setObject:v22 forKey:@"vunc"];

    v23 = MEMORY[0x277CCABB0];
    locationOfTrigger7 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    date = [locationOfTrigger7 date];
    [date timeIntervalSince1970];
    v26 = [v23 numberWithDouble:?];
    [outputToDictionary setObject:v26 forKey:@"timeOfLocation"];

    v27 = MEMORY[0x277CCABB0];
    locationOfTrigger8 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v29 = [v27 numberWithUnsignedInt:{objc_msgSend(locationOfTrigger8, "referenceFrame")}];
    [outputToDictionary setObject:v29 forKey:@"referenceFrame"];

    v30 = MEMORY[0x277CCABB0];
    locationOfTrigger9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger9 speed];
    v32 = [v30 numberWithDouble:?];
    [outputToDictionary setObject:v32 forKey:@"speed"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  [outputToDictionary setObject:v33 forKey:@"triggerType"];

  safetyCacheKey = [(SMKeyReleaseMessage *)self safetyCacheKey];
  v35 = [safetyCacheKey base64EncodedStringWithOptions:0];
  [outputToDictionary setObject:v35 forKey:@"safetyCacheKey"];

  safetyCacheToken = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (safetyCacheToken)
  {
    safetyCacheToken2 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    v38 = [safetyCacheToken2 base64EncodedStringWithOptions:0];
    [outputToDictionary setObject:v38 forKey:@"safetyCacheToken"];
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  [outputToDictionary setObject:v39 forKey:@"sessionType"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  [outputToDictionary setObject:v40 forKey:@"sessionDestinationType"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  [outputToDictionary setObject:v41 forKey:@"isSOSTrigger"];

  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [outputToDictionary setObject:v42 forKey:@"lowPowerModeWarningState"];

  return outputToDictionary;
}

- (SMKeyReleaseMessage)initWithURL:(id)l
{
  v178 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v88 = 0;
    goto LABEL_96;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v95 = objc_opt_class();
      v96 = NSStringFromClass(v95);
      v97 = NSStringFromSelector(a2);
      *buf = 138412546;
      v170 = v96;
      v171 = 2112;
      v172 = v97;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v88 = 0;
    goto LABEL_95;
  }

  queryItems = [v4 queryItems];
  v7 = queryItems;
  if (!queryItems)
  {
    v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v102 = objc_opt_class();
      v103 = NSStringFromClass(v102);
      v104 = NSStringFromSelector(a2);
      *buf = 138412546;
      v170 = v103;
      v171 = 2112;
      v172 = v104;
      _os_log_error_impl(&dword_26455D000, v89, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);
    }

    v88 = 0;
    goto LABEL_94;
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v8 = [queryItems countByEnumeratingWithState:&v165 objects:v177 count:16];
  if (!v8)
  {
    intValue = [0 intValue];
    v160 = 0;
    v158 = 0;
    v10 = 0;
    v162 = 0;
    v163 = 0;
    v154 = 0;
    v153 = 0;
    v152 = 0;
    v150 = 0;
    v151 = 0;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v142 = 0;
    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    goto LABEL_91;
  }

  v9 = v8;
  v163 = 0;
  obj = v7;
  v137 = lCopy;
  v138 = v5;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v162 = 0;
  v10 = 0;
  v158 = 0;
  v160 = 0;
  v11 = *v166;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v166 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v165 + 1) + 8 * i);
      value = [v13 value];
      if (value)
      {
        name = [v13 name];
        v16 = [name isEqualToString:@"sendDate"];

        if (v16)
        {
          v17 = v10;
          v10 = value;
        }

        else
        {
          name2 = [v13 name];
          v22 = [name2 isEqualToString:@"messageID"];

          if (v22)
          {
            v17 = v163;
            v163 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
          }

          else
          {
            name3 = [v13 name];
            v24 = [name3 isEqualToString:@"sessionID"];

            if (v24)
            {
              v17 = v162;
              v162 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
            }

            else
            {
              name4 = [v13 name];
              v26 = [name4 isEqualToString:@"messageType"];

              if (v26)
              {
                v17 = v160;
                v160 = value;
              }

              else
              {
                name5 = [v13 name];
                v28 = [name5 isEqualToString:@"interfaceVersion"];

                if (v28)
                {
                  v17 = v158;
                  v158 = value;
                }

                else
                {
                  name6 = [v13 name];
                  v30 = [name6 isEqualToString:@"triggerTime"];

                  if (v30)
                  {
                    v17 = v154;
                    v154 = value;
                  }

                  else
                  {
                    name7 = [v13 name];
                    v32 = [name7 isEqualToString:@"latitude"];

                    if (v32)
                    {
                      v17 = v153;
                      v153 = value;
                    }

                    else
                    {
                      name8 = [v13 name];
                      v34 = [name8 isEqualToString:@"longitude"];

                      if (v34)
                      {
                        v17 = v152;
                        v152 = value;
                      }

                      else
                      {
                        name9 = [v13 name];
                        v36 = [name9 isEqualToString:@"hunc"];

                        if (v36)
                        {
                          v17 = v151;
                          v151 = value;
                        }

                        else
                        {
                          name10 = [v13 name];
                          v38 = [name10 isEqualToString:@"altitude"];

                          if (v38)
                          {
                            v17 = v150;
                            v150 = value;
                          }

                          else
                          {
                            name11 = [v13 name];
                            v40 = [name11 isEqualToString:@"vunc"];

                            if (v40)
                            {
                              v17 = v149;
                              v149 = value;
                            }

                            else
                            {
                              name12 = [v13 name];
                              v42 = [name12 isEqualToString:@"timeOfLocation"];

                              if (v42)
                              {
                                v17 = v148;
                                v148 = value;
                              }

                              else
                              {
                                name13 = [v13 name];
                                v44 = [name13 isEqualToString:@"referenceFrame"];

                                if (v44)
                                {
                                  v17 = v147;
                                  v147 = value;
                                }

                                else
                                {
                                  name14 = [v13 name];
                                  v46 = [name14 isEqualToString:@"speed"];

                                  if (v46)
                                  {
                                    v17 = v146;
                                    v146 = value;
                                  }

                                  else
                                  {
                                    name15 = [v13 name];
                                    v48 = [name15 isEqualToString:@"triggerType"];

                                    if (v48)
                                    {
                                      v17 = v145;
                                      v145 = value;
                                    }

                                    else
                                    {
                                      name16 = [v13 name];
                                      v50 = [name16 isEqualToString:@"safetyCacheKey"];

                                      if (v50)
                                      {
                                        v17 = v144;
                                        v144 = value;
                                      }

                                      else
                                      {
                                        name17 = [v13 name];
                                        v52 = [name17 isEqualToString:@"safetyCacheToken"];

                                        if (v52)
                                        {
                                          v17 = v143;
                                          v143 = value;
                                        }

                                        else
                                        {
                                          name18 = [v13 name];
                                          v54 = [name18 isEqualToString:@"sessionType"];

                                          if (v54)
                                          {
                                            v17 = v142;
                                            v142 = value;
                                          }

                                          else
                                          {
                                            name19 = [v13 name];
                                            v56 = [name19 isEqualToString:@"sessionDestinationType"];

                                            if (v56)
                                            {
                                              v17 = v141;
                                              v141 = value;
                                            }

                                            else
                                            {
                                              name20 = [v13 name];
                                              v58 = [name20 isEqualToString:@"isSOSTrigger"];

                                              if (v58)
                                              {
                                                v17 = v140;
                                                v140 = value;
                                              }

                                              else
                                              {
                                                name21 = [v13 name];
                                                v60 = [name21 isEqualToString:@"lowPowerModeWarningState"];

                                                if (!v60)
                                                {
                                                  goto LABEL_55;
                                                }

                                                v17 = v139;
                                                v139 = value;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(a2);
          *buf = 138412546;
          v170 = v19;
          v171 = 2112;
          v172 = v20;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value", buf, 0x16u);
        }
      }

LABEL_55:
    }

    v9 = [obj countByEnumeratingWithState:&v165 objects:v177 count:16];
  }

  while (v9);
  intValue = [v160 intValue];
  if (!v160)
  {
    v160 = 0;
    lCopy = v137;
    v5 = v138;
    v7 = obj;
    goto LABEL_91;
  }

  v5 = v138;
  v7 = obj;
  if ([objc_opt_class() messageType] != intValue)
  {
    lCopy = v137;
LABEL_91:
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v98 = objc_opt_class();
      v93 = NSStringFromClass(v98);
      NSStringFromSelector(a2);
      v100 = v99 = v7;
      messageType = [objc_opt_class() messageType];
      *buf = 138413058;
      v170 = v93;
      v171 = 2112;
      v172 = v100;
      v173 = 1024;
      v174 = messageType;
      v175 = 1024;
      v176 = intValue;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d", buf, 0x22u);

      v7 = v99;
      goto LABEL_100;
    }

LABEL_92:
    v88 = 0;
    goto LABEL_93;
  }

  intValue2 = [v158 intValue];
  v63 = intValue2;
  if (!v158 || intValue2 != 1)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v137;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v92 = objc_opt_class();
      v93 = NSStringFromClass(v92);
      v94 = NSStringFromSelector(a2);
      *buf = 138412802;
      v170 = v93;
      v171 = 2112;
      v172 = v94;
      v173 = 1024;
      v174 = v63;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,unrecognized interface version,%d", buf, 0x1Cu);

      v7 = obj;
LABEL_100:

      goto LABEL_92;
    }

    goto LABEL_92;
  }

  if (!v10)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v116 = objc_opt_class();
      v117 = NSStringFromClass(v116);
      v118 = NSStringFromSelector(a2);
      *buf = 138412546;
      v170 = v117;
      v171 = 2112;
      v172 = v118;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v10 = 0;
    v88 = 0;
    lCopy = v137;
    goto LABEL_93;
  }

  v64 = MEMORY[0x277CBEAA8];
  [v10 doubleValue];
  v65 = [v64 dateWithTimeIntervalSince1970:?];
  if (!v163)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v137;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v129 = objc_opt_class();
      v130 = NSStringFromClass(v129);
      v131 = NSStringFromSelector(a2);
      *buf = 138412546;
      v170 = v130;
      v171 = 2112;
      v172 = v131;
      _os_log_error_impl(&dword_26455D000, v67, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);

      v7 = obj;
    }

    v88 = 0;
    goto LABEL_135;
  }

  if (!v162)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
LABEL_110:
      v88 = 0;
      lCopy = v137;
      goto LABEL_135;
    }

    v105 = objc_opt_class();
    v106 = NSStringFromClass(v105);
    v107 = NSStringFromSelector(a2);
    *buf = 138412546;
    v170 = v106;
    v171 = 2112;
    v172 = v107;
    v108 = "#SafetyCache,%@,%@,missing sessionID";
LABEL_137:
    _os_log_error_impl(&dword_26455D000, v67, OS_LOG_TYPE_ERROR, v108, buf, 0x16u);

    v7 = obj;
    goto LABEL_110;
  }

  if (!v154)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_110;
    }

    v133 = objc_opt_class();
    v106 = NSStringFromClass(v133);
    v107 = NSStringFromSelector(a2);
    *buf = 138412546;
    v170 = v106;
    v171 = 2112;
    v172 = v107;
    v108 = "#SafetyCache,%@,%@,missing triggerTime";
    goto LABEL_137;
  }

  v66 = MEMORY[0x277CBEAA8];
  [v154 doubleValue];
  v67 = [v66 dateWithTimeIntervalSince1970:?];
  v68 = 0;
  if (v153 && v152 && v151 && v150 && v149 && v148 && v147 && v146)
  {
    v69 = MEMORY[0x277CBEAA8];
    [v148 doubleValue];
    v70 = [v69 dateWithTimeIntervalSince1970:?];
    v71 = objc_alloc(MEMORY[0x277D01160]);
    [v153 doubleValue];
    v73 = v72;
    [v152 doubleValue];
    v75 = v74;
    [v151 doubleValue];
    v77 = v76;
    [v150 doubleValue];
    v79 = v78;
    [v149 doubleValue];
    v81 = v80;
    intValue3 = [v147 intValue];
    [v146 doubleValue];
    v68 = [v71 initWithLatitude:v70 longitude:intValue3 horizontalUncertainty:v73 altitude:v75 verticalUncertainty:v77 date:v79 referenceFrame:v81 speed:v83];
  }

  if (!v145)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
LABEL_114:
      v88 = 0;
      lCopy = v137;
      goto LABEL_134;
    }

    v109 = objc_opt_class();
    v110 = NSStringFromClass(v109);
    v111 = NSStringFromSelector(a2);
    *buf = 138412546;
    v170 = v110;
    v171 = 2112;
    v172 = v111;
    v112 = "#SafetyCache,%@,%@,missing triggerType";
LABEL_139:
    _os_log_error_impl(&dword_26455D000, v86, OS_LOG_TYPE_ERROR, v112, buf, 0x16u);

    v5 = v138;
    goto LABEL_114;
  }

  intValue4 = [v145 intValue];
  if (!v144)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v134 = objc_opt_class();
    v110 = NSStringFromClass(v134);
    v111 = NSStringFromSelector(a2);
    *buf = 138412546;
    v170 = v110;
    v171 = 2112;
    v172 = v111;
    v112 = "#SafetyCache,%@,%@,missing safetyCacheKey";
    goto LABEL_139;
  }

  v85 = intValue4;
  v86 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v144 options:0];
  if (!v86)
  {
    v87 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v137;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v113 = objc_opt_class();
      v114 = NSStringFromClass(v113);
      v115 = NSStringFromSelector(a2);
      *buf = 138412546;
      v170 = v114;
      v171 = 2112;
      v172 = v115;
      _os_log_error_impl(&dword_26455D000, v87, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to convert safetyCacheKey to NSData", buf, 0x16u);
    }

    goto LABEL_126;
  }

  if (v143)
  {
    v87 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v143 options:0];
  }

  else
  {
    v87 = 0;
  }

  lCopy = v137;
  if (!v142)
  {
    v124 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
LABEL_125:

LABEL_126:
      v88 = 0;
      goto LABEL_133;
    }

    v125 = objc_opt_class();
    v126 = NSStringFromClass(v125);
    v127 = NSStringFromSelector(a2);
    *buf = 138412546;
    v170 = v126;
    v171 = 2112;
    v172 = v127;
    v128 = "#SafetyCache,%@,%@,missing sessionType";
LABEL_141:
    _os_log_error_impl(&dword_26455D000, v124, OS_LOG_TYPE_ERROR, v128, buf, 0x16u);

    goto LABEL_125;
  }

  intValue5 = [v142 intValue];
  if (!v141)
  {
    v124 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_125;
    }

    v135 = objc_opt_class();
    v126 = NSStringFromClass(v135);
    v127 = NSStringFromSelector(a2);
    *buf = 138412546;
    v170 = v126;
    v171 = 2112;
    v172 = v127;
    v128 = "#SafetyCache,%@,%@,missing destinationType";
    goto LABEL_141;
  }

  v120 = intValue5;
  intValue6 = [v141 intValue];
  bOOLValue = [v140 BOOLValue];
  if (v139)
  {
    intValue7 = [v139 intValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v132 = objc_opt_class();
        v159 = NSStringFromClass(v132);
        v157 = NSStringFromSelector(a2);
        *buf = 138412546;
        v170 = v159;
        v171 = 2112;
        v172 = v157;
        _os_log_impl(&dword_26455D000, log, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", buf, 0x16u);
      }
    }

    intValue7 = 0;
  }

  LOBYTE(v136) = bOOLValue;
  v88 = [(SMKeyReleaseMessage *)self initWithDate:v65 messageID:v163 sessionID:v162 triggerDate:v67 locationOfTrigger:v68 triggerType:v85 safetyCacheKey:v86 safetyCacheToken:v87 sessionType:v120 destinationType:intValue6 isSOSTrigger:v136 lowPowerModeWarningState:intValue7];
  self = v88;
  lCopy = v137;
LABEL_133:

  v5 = v138;
LABEL_134:

  v7 = obj;
LABEL_135:

LABEL_93:
  v89 = v160;
LABEL_94:

LABEL_95:
LABEL_96:

  v90 = *MEMORY[0x277D85DE8];
  return v88;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94.receiver = self;
  v94.super_class = SMKeyReleaseMessage;
  outputToURLComponents = [(SMMessage *)&v94 outputToURLComponents];
  queryItems = [outputToURLComponents queryItems];
  [v4 addObjectsFromArray:queryItems];

  v7 = objc_alloc(MEMORY[0x277CCAD18]);
  v8 = MEMORY[0x277CCABB0];
  triggerDate = [(SMKeyReleaseMessage *)self triggerDate];
  [triggerDate timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  stringValue = [v10 stringValue];
  v12 = [v7 initWithName:@"triggerTime" value:stringValue];
  [v4 addObject:v12];

  locationOfTrigger = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD18]);
    v15 = MEMORY[0x277CCABB0];
    locationOfTrigger2 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger2 latitude];
    v17 = [v15 numberWithDouble:?];
    stringValue2 = [v17 stringValue];
    v19 = [v14 initWithName:@"latitude" value:stringValue2];
    [v4 addObject:v19];

    v20 = objc_alloc(MEMORY[0x277CCAD18]);
    v21 = MEMORY[0x277CCABB0];
    locationOfTrigger3 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger3 longitude];
    v23 = [v21 numberWithDouble:?];
    stringValue3 = [v23 stringValue];
    v25 = [v20 initWithName:@"longitude" value:stringValue3];
    [v4 addObject:v25];

    v26 = objc_alloc(MEMORY[0x277CCAD18]);
    v27 = MEMORY[0x277CCABB0];
    locationOfTrigger4 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger4 horizontalUncertainty];
    v29 = [v27 numberWithDouble:?];
    stringValue4 = [v29 stringValue];
    v31 = [v26 initWithName:@"hunc" value:stringValue4];
    [v4 addObject:v31];

    v32 = objc_alloc(MEMORY[0x277CCAD18]);
    v33 = MEMORY[0x277CCABB0];
    locationOfTrigger5 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger5 altitude];
    v35 = [v33 numberWithDouble:?];
    stringValue5 = [v35 stringValue];
    v37 = [v32 initWithName:@"altitude" value:stringValue5];
    [v4 addObject:v37];

    v38 = objc_alloc(MEMORY[0x277CCAD18]);
    v39 = MEMORY[0x277CCABB0];
    locationOfTrigger6 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger6 verticalUncertainty];
    v41 = [v39 numberWithDouble:?];
    stringValue6 = [v41 stringValue];
    v43 = [v38 initWithName:@"vunc" value:stringValue6];
    [v4 addObject:v43];

    v44 = objc_alloc(MEMORY[0x277CCAD18]);
    v45 = MEMORY[0x277CCABB0];
    locationOfTrigger7 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    date = [locationOfTrigger7 date];
    [date timeIntervalSince1970];
    v48 = [v45 numberWithDouble:?];
    [v48 stringValue];
    v50 = v49 = v3;
    v51 = [v44 initWithName:@"timeOfLocation" value:v50];
    [v4 addObject:v51];

    v3 = v49;
    v52 = objc_alloc(MEMORY[0x277CCAD18]);
    v53 = MEMORY[0x277CCABB0];
    locationOfTrigger8 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v55 = [v53 numberWithUnsignedInt:{objc_msgSend(locationOfTrigger8, "referenceFrame")}];
    stringValue7 = [v55 stringValue];
    v57 = [v52 initWithName:@"referenceFrame" value:stringValue7];
    [v4 addObject:v57];

    v58 = objc_alloc(MEMORY[0x277CCAD18]);
    v59 = MEMORY[0x277CCABB0];
    locationOfTrigger9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger9 speed];
    v61 = [v59 numberWithDouble:?];
    stringValue8 = [v61 stringValue];
    v63 = [v58 initWithName:@"speed" value:stringValue8];
    [v4 addObject:v63];
  }

  v64 = objc_alloc(MEMORY[0x277CCAD18]);
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  stringValue9 = [v65 stringValue];
  v67 = [v64 initWithName:@"triggerType" value:stringValue9];
  [v4 addObject:v67];

  v68 = objc_alloc(MEMORY[0x277CCAD18]);
  safetyCacheKey = [(SMKeyReleaseMessage *)self safetyCacheKey];
  v70 = [safetyCacheKey base64EncodedStringWithOptions:0];
  v71 = [v68 initWithName:@"safetyCacheKey" value:v70];
  [v4 addObject:v71];

  safetyCacheToken = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (safetyCacheToken)
  {
    v73 = objc_alloc(MEMORY[0x277CCAD18]);
    safetyCacheToken2 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    v75 = [safetyCacheToken2 base64EncodedStringWithOptions:0];
    v76 = [v73 initWithName:@"safetyCacheToken" value:v75];
    [v4 addObject:v76];
  }

  v77 = objc_alloc(MEMORY[0x277CCAD18]);
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  stringValue10 = [v78 stringValue];
  v80 = [v77 initWithName:@"sessionType" value:stringValue10];
  [v4 addObject:v80];

  v81 = objc_alloc(MEMORY[0x277CCAD18]);
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  stringValue11 = [v82 stringValue];
  v84 = [v81 initWithName:@"sessionDestinationType" value:stringValue11];
  [v4 addObject:v84];

  v85 = objc_alloc(MEMORY[0x277CCAD18]);
  v86 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  stringValue12 = [v86 stringValue];
  v88 = [v85 initWithName:@"isSOSTrigger" value:stringValue12];
  [v4 addObject:v88];

  v89 = objc_alloc(MEMORY[0x277CCAD18]);
  v90 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  stringValue13 = [v90 stringValue];
  v92 = [v89 initWithName:@"lowPowerModeWarningState" value:stringValue13];
  [v4 addObject:v92];

  [v3 setQueryItems:v4];

  return v3;
}

- (id)summaryText
{
  triggerType = [(SMKeyReleaseMessage *)self triggerType];
  if (triggerType > 12)
  {
    switch(triggerType)
    {
      case 13:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SOS_HARD_FALL_EVENT_SUMMARY";
        v7 = @"Check In: Emergency services called, fall detected, location shared";
        goto LABEL_24;
      case 14:
        goto LABEL_12;
      case 15:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SCHEDULED_SEND_SUMMARY";
        v7 = @"Check In: Device offline, location shared";
        goto LABEL_24;
    }
  }

  else
  {
    switch(triggerType)
    {
      case 10:
        goto LABEL_12;
      case 11:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SOS_CAR_CRASH_EVENT_SUMMARY";
        v7 = @"Check In: Emergency services called, car crash detected, location shared";
        goto LABEL_24;
      case 12:
LABEL_12:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SOS_EVENT_SUMMARY";
        v7 = @"Check In: Emergency services called, location shared";
        goto LABEL_24;
    }
  }

  if ([(SMKeyReleaseMessage *)self isSOSTrigger])
  {
    goto LABEL_12;
  }

  sessionType = [(SMKeyReleaseMessage *)self sessionType];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (sessionType > 2)
  {
    if (sessionType != 3)
    {
      if (sessionType == 4)
      {
        v6 = @"KEY_RELEASE_MESSAGE_WORKOUT_SUMMARY";
        v7 = @"Check In: Has not completed workout as expected, location shared";
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v6 = @"KEY_RELEASE_MESSAGE_ROUNDTRIP_SUMMARY";
    v7 = @"Check In: Has not arrived back as expected, location shared";
  }

  else
  {
    if (sessionType != 1)
    {
      if (sessionType == 2)
      {
        v6 = @"KEY_RELEASE_MESSAGE_DESTINATION_BOUND_SUMMARY";
        v7 = @"Check In: Has not arrived as expected, location shared";
        goto LABEL_24;
      }

LABEL_21:
      v6 = @"KEY_RELEASE_MESSAGE_DEFAULT_SUMMARY";
      v7 = @"Check In: Location available";
      goto LABEL_24;
    }

    v6 = @"KEY_RELEASE_MESSAGE_TIME_BOUND_SUMMARY";
    v7 = @"Check In: Has not checked in when expected, location shared";
  }

LABEL_24:
  v9 = [v4 localizedStringForKey:v6 value:v7 table:0];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v45 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[SMKeyReleaseMessage encodeWithCoder:]";
      v43 = 1024;
      v44 = 594;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v40.receiver = self;
  v40.super_class = SMKeyReleaseMessage;
  [(SMMessage *)&v40 encodeWithCoder:coderCopy];
  triggerDate = [(SMKeyReleaseMessage *)self triggerDate];
  [coderCopy encodeObject:triggerDate forKey:@"triggerTime"];

  locationOfTrigger = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    v8 = MEMORY[0x277CCABB0];
    locationOfTrigger2 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger2 latitude];
    v10 = [v8 numberWithDouble:?];
    [coderCopy encodeObject:v10 forKey:@"latitude"];

    v11 = MEMORY[0x277CCABB0];
    locationOfTrigger3 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger3 longitude];
    v13 = [v11 numberWithDouble:?];
    [coderCopy encodeObject:v13 forKey:@"longitude"];

    v14 = MEMORY[0x277CCABB0];
    locationOfTrigger4 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger4 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [coderCopy encodeObject:v16 forKey:@"hunc"];

    v17 = MEMORY[0x277CCABB0];
    locationOfTrigger5 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger5 altitude];
    v19 = [v17 numberWithDouble:?];
    [coderCopy encodeObject:v19 forKey:@"altitude"];

    v20 = MEMORY[0x277CCABB0];
    locationOfTrigger6 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger6 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [coderCopy encodeObject:v22 forKey:@"vunc"];

    locationOfTrigger7 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    date = [locationOfTrigger7 date];
    [coderCopy encodeObject:date forKey:@"timeOfLocation"];

    v25 = MEMORY[0x277CCABB0];
    locationOfTrigger8 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v27 = [v25 numberWithUnsignedInt:{objc_msgSend(locationOfTrigger8, "referenceFrame")}];
    [coderCopy encodeObject:v27 forKey:@"referenceFrame"];

    v28 = MEMORY[0x277CCABB0];
    locationOfTrigger9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger9 speed];
    v30 = [v28 numberWithDouble:?];
    [coderCopy encodeObject:v30 forKey:@"speed"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  [coderCopy encodeObject:v31 forKey:@"triggerType"];

  safetyCacheKey = [(SMKeyReleaseMessage *)self safetyCacheKey];
  [coderCopy encodeObject:safetyCacheKey forKey:@"safetyCacheKey"];

  safetyCacheToken = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (safetyCacheToken)
  {
    safetyCacheToken2 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    [coderCopy encodeObject:safetyCacheToken2 forKey:@"safetyCacheToken"];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  [coderCopy encodeObject:v35 forKey:@"sessionType"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  [coderCopy encodeObject:v36 forKey:@"sessionDestinationType"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  [coderCopy encodeObject:v37 forKey:@"isSOSTrigger"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [coderCopy encodeObject:v38 forKey:@"lowPowerModeWarningState"];

  v39 = *MEMORY[0x277D85DE8];
}

- (SMKeyReleaseMessage)initWithCoder:(id)coder
{
  v113 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", buf, 2u);
    }

    goto LABEL_28;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      selfCopy = 0;
      goto LABEL_29;
    }

    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = NSStringFromSelector(a2);
    *buf = 138413058;
    v106 = v45;
    v107 = 2112;
    v108 = v46;
    v109 = 1024;
    messageType = [objc_opt_class() messageType];
    v111 = 1024;
    v112 = v7;
    v47 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v48 = v9;
    v49 = 34;
LABEL_43:
    _os_log_error_impl(&dword_26455D000, v48, OS_LOG_TYPE_ERROR, v47, buf, v49);

    goto LABEL_28;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v50 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v54 = objc_opt_class();
    v45 = NSStringFromClass(v54);
    v46 = NSStringFromSelector(a2);
    *buf = 138412802;
    v106 = v45;
    v107 = 2112;
    v108 = v46;
    v109 = 1024;
    messageType = v50;
    v47 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v48 = v9;
    v49 = 28;
    goto LABEL_43;
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
        log = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"triggerTime"];
        if (log)
        {
          v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"latitude"];
          v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"longitude"];
          v103 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"hunc"];
          v102 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"altitude"];
          v101 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"vunc"];
          v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"timeOfLocation"];
          v100 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"referenceFrame"];
          v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"speed"];
          v16 = 0;
          v97 = v11;
          v98 = v15;
          v99 = v13;
          if (v12 && v13 && v103 && v102 && v101 && v14 && v100 && v15)
          {
            v17 = v14;
            v18 = objc_alloc(MEMORY[0x277D01160]);
            [v12 doubleValue];
            v20 = v19;
            [v13 doubleValue];
            v22 = v21;
            [v103 doubleValue];
            v24 = v23;
            [v102 doubleValue];
            v26 = v25;
            [v101 doubleValue];
            v28 = v27;
            v29 = v12;
            intValue = [v100 intValue];
            [v98 doubleValue];
            v31 = v18;
            v14 = v17;
            v32 = intValue;
            v12 = v29;
            v16 = [v31 initWithLatitude:v17 longitude:v32 horizontalUncertainty:v20 altitude:v22 verticalUncertainty:v24 date:v26 referenceFrame:v28 speed:v33];
          }

          v34 = v16;
          v35 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"triggerType"];
          v96 = v35;
          if (v35)
          {
            v92 = v12;
            v93 = v14;
            intValue2 = [v35 intValue];
            [v6 decodeObjectOfClass:objc_opt_class() forKey:@"safetyCacheKey"];
            v91 = v11 = v97;
            if (v91)
            {
              v95 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"safetyCacheToken"];
              v37 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
              v89 = v37;
              if (v37)
              {
                intValue3 = [v37 intValue];
                v39 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationType"];
                v90 = v39;
                if (v39)
                {
                  v86 = intValue3;
                  v87 = intValue2;
                  intValue4 = [v39 intValue];
                  v41 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isSOSTrigger"];
                  intValue5 = [v41 intValue];

                  v42 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
                  v88 = v42;
                  if (v42)
                  {
                    intValue6 = [v42 intValue];
                    v14 = v93;
                  }

                  else
                  {
                    v14 = v93;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                      {
                        v63 = objc_opt_class();
                        v64 = NSStringFromClass(v63);
                        v65 = NSStringFromSelector(a2);
                        *buf = 138412546;
                        v106 = v64;
                        v107 = 2112;
                        v108 = v65;
                        _os_log_impl(&dword_26455D000, v62, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningStateNumber", buf, 0x16u);

                        v14 = v93;
                      }
                    }

                    intValue6 = 0;
                  }

                  v55 = v91;
                  LOBYTE(v84) = intValue5 != 0;
                  self = [(SMKeyReleaseMessage *)self initWithDate:v9 messageID:v10 sessionID:v97 triggerDate:log locationOfTrigger:v34 triggerType:v87 safetyCacheKey:v91 safetyCacheToken:v95 sessionType:v86 destinationType:intValue4 isSOSTrigger:v84 lowPowerModeWarningState:intValue6];
                  selfCopy = self;
                  v12 = v92;
                }

                else
                {
                  v88 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  v12 = v92;
                  v14 = v93;
                  v55 = v91;
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    v81 = objc_opt_class();
                    v82 = NSStringFromClass(v81);
                    v83 = NSStringFromSelector(a2);
                    *buf = 138412546;
                    v106 = v82;
                    v107 = 2112;
                    v108 = v83;
                    _os_log_error_impl(&dword_26455D000, v88, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

                    v14 = v93;
                  }

                  selfCopy = 0;
                }
              }

              else
              {
                v90 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  v78 = objc_opt_class();
                  v79 = NSStringFromClass(v78);
                  v80 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v106 = v79;
                  v107 = 2112;
                  v108 = v80;
                  _os_log_error_impl(&dword_26455D000, v90, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);
                }

                selfCopy = 0;
                v12 = v92;
                v14 = v93;
                v55 = v91;
              }
            }

            else
            {
              v95 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              v12 = v92;
              if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
              {
                v75 = objc_opt_class();
                v76 = NSStringFromClass(v75);
                v77 = NSStringFromSelector(a2);
                *buf = 138412546;
                v106 = v76;
                v107 = 2112;
                v108 = v77;
                _os_log_error_impl(&dword_26455D000, v95, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing safetyCacheKey", buf, 0x16u);

                v14 = v93;
              }

              selfCopy = 0;
              v55 = 0;
            }
          }

          else
          {
            v55 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            v11 = v97;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v72 = objc_opt_class();
              NSStringFromClass(v72);
              v73 = v94 = v14;
              v74 = NSStringFromSelector(a2);
              *buf = 138412546;
              v106 = v73;
              v107 = 2112;
              v108 = v74;
              _os_log_error_impl(&dword_26455D000, v55, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerType", buf, 0x16u);

              v14 = v94;
            }

            selfCopy = 0;
          }
        }

        else
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v69 = objc_opt_class();
            v70 = NSStringFromClass(v69);
            v71 = NSStringFromSelector(a2);
            *buf = 138412546;
            v106 = v70;
            v107 = 2112;
            v108 = v71;
            _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerDate", buf, 0x16u);
          }

          selfCopy = 0;
        }
      }

      else
      {
        log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          v68 = NSStringFromSelector(a2);
          *buf = 138412546;
          v106 = v67;
          v107 = 2112;
          v108 = v68;
          _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = NSStringFromSelector(a2);
        *buf = 138412546;
        v106 = v60;
        v107 = 2112;
        v108 = v61;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = NSStringFromSelector(a2);
      *buf = 138412546;
      v106 = v57;
      v107 = 2112;
      v108 = v58;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_29:
  v52 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end