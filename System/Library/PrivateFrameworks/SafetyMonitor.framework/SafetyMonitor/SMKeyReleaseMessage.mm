@interface SMKeyReleaseMessage
- (SMKeyReleaseMessage)initWithCoder:(id)a3;
- (SMKeyReleaseMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 triggerDate:(id)a6 locationOfTrigger:(id)a7 triggerType:(unint64_t)a8 safetyCacheKey:(id)a9 safetyCacheToken:(id)a10 sessionType:(unint64_t)a11 destinationType:(unint64_t)a12 isSOSTrigger:(BOOL)a13 lowPowerModeWarningState:(int64_t)a14;
- (SMKeyReleaseMessage)initWithDictionary:(id)a3;
- (SMKeyReleaseMessage)initWithSessionID:(id)a3 triggerDate:(id)a4 locationOfTrigger:(id)a5 triggerType:(unint64_t)a6 safetyCacheKey:(id)a7 safetyCacheToken:(id)a8 sessionType:(unint64_t)a9 destinationType:(unint64_t)a10 isSOSTrigger:(BOOL)a11 lowPowerModeWarningState:(int64_t)a12;
- (SMKeyReleaseMessage)initWithSessionID:(id)a3 triggerDate:(id)a4 locationOfTrigger:(id)a5 triggerType:(unint64_t)a6 safetyCacheKey:(id)a7 safetyCacheToken:(id)a8 sessionType:(unint64_t)a9 destinationType:(unint64_t)a10 lowPowerModeWarningState:(int64_t)a11;
- (SMKeyReleaseMessage)initWithURL:(id)a3;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (id)summaryText;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMKeyReleaseMessage

- (SMKeyReleaseMessage)initWithSessionID:(id)a3 triggerDate:(id)a4 locationOfTrigger:(id)a5 triggerType:(unint64_t)a6 safetyCacheKey:(id)a7 safetyCacheToken:(id)a8 sessionType:(unint64_t)a9 destinationType:(unint64_t)a10 lowPowerModeWarningState:(int64_t)a11
{
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v24) = 0;
  v22 = [(SMKeyReleaseMessage *)self initWithDate:v20 messageID:v21 sessionID:v19 triggerDate:v18 locationOfTrigger:v17 triggerType:a6 safetyCacheKey:v16 safetyCacheToken:v15 sessionType:a9 destinationType:a10 isSOSTrigger:v24 lowPowerModeWarningState:a11];

  return v22;
}

- (SMKeyReleaseMessage)initWithSessionID:(id)a3 triggerDate:(id)a4 locationOfTrigger:(id)a5 triggerType:(unint64_t)a6 safetyCacheKey:(id)a7 safetyCacheToken:(id)a8 sessionType:(unint64_t)a9 destinationType:(unint64_t)a10 isSOSTrigger:(BOOL)a11 lowPowerModeWarningState:(int64_t)a12
{
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_opt_new();
  v22 = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v25) = a11;
  v23 = [(SMKeyReleaseMessage *)self initWithDate:v21 messageID:v22 sessionID:v20 triggerDate:v19 locationOfTrigger:v18 triggerType:a6 safetyCacheKey:v17 safetyCacheToken:v16 sessionType:a9 destinationType:a10 isSOSTrigger:v25 lowPowerModeWarningState:a12];

  return v23;
}

- (SMKeyReleaseMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 triggerDate:(id)a6 locationOfTrigger:(id)a7 triggerType:(unint64_t)a8 safetyCacheKey:(id)a9 safetyCacheToken:(id)a10 sessionType:(unint64_t)a11 destinationType:(unint64_t)a12 isSOSTrigger:(BOOL)a13 lowPowerModeWarningState:(int64_t)a14
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v32 = a6;
  v31 = a7;
  v23 = a9;
  v30 = a10;
  if (!v20)
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

  if (!v21)
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

  if (!v22)
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

  if (!v32)
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

  if (!v23)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: safetyCacheKey";
      goto LABEL_19;
    }

LABEL_20:

    v26 = 0;
    goto LABEL_21;
  }

  v33.receiver = self;
  v33.super_class = SMKeyReleaseMessage;
  v24 = [(SMMessage *)&v33 initWithDate:v20 messageID:v21 sessionID:v22];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_triggerDate, a6);
    objc_storeStrong(&v25->_locationOfTrigger, a7);
    v25->_triggerType = a8;
    objc_storeStrong(&v25->_safetyCacheKey, a9);
    objc_storeStrong(&v25->_safetyCacheToken, a10);
    v25->_sessionType = a11;
    v25->_destinationType = a12;
    v25->_isSOSTrigger = a13;
    v25->_lowPowerModeWarningState = a14;
  }

  self = v25;
  v26 = self;
LABEL_21:

  return v26;
}

- (SMKeyReleaseMessage)initWithDictionary:(id)a3
{
  v129 = *MEMORY[0x277D85DE8];
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

    goto LABEL_27;
  }

  v7 = [v5 valueForKey:@"messageType"];
  v8 = [v7 intValue];

  if ([objc_opt_class() messageType] != v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      v54 = 0;
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
    v126 = [objc_opt_class() messageType];
    v127 = 1024;
    v128 = v8;
    v51 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v52 = v12;
    v53 = 34;
LABEL_42:
    _os_log_error_impl(&dword_26455D000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);

    goto LABEL_27;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  v10 = [v9 intValue];

  if (v10 != 1)
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
    v126 = v10;
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
            v40 = [v116 intValue];
            [v112 doubleValue];
            v41 = v40;
            v22 = v110;
            v115 = [v29 initWithLatitude:v28 longitude:v41 horizontalUncertainty:v31 altitude:v33 verticalUncertainty:v35 date:v37 referenceFrame:v39 speed:v42];
          }

          v43 = [v6 valueForKey:@"triggerType"];
          v44 = v43;
          v17 = v108;
          if (v43)
          {
            v106 = v43;
            v103 = [v43 intValue];
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
                  v62 = [v61 intValue];
                  v63 = [v6 valueForKey:@"sessionDestinationType"];
                  v101 = v63;
                  if (v63)
                  {
                    v99 = v103;
                    v64 = [v63 intValue];
                    v65 = [v6 valueForKey:@"isSOSTrigger"];
                    v98 = [v65 BOOLValue];

                    v66 = [v6 valueForKey:@"lowPowerModeWarningState"];
                    v104 = v66;
                    if (v66)
                    {
                      v67 = [v66 intValue];
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

                      v67 = 0;
                    }

                    LOBYTE(v96) = v98;
                    v95 = v62;
                    v22 = v110;
                    v46 = v111;
                    self = [(SMKeyReleaseMessage *)self initWithDate:v14 messageID:v108 sessionID:v20 triggerDate:v111 locationOfTrigger:v115 triggerType:v99 safetyCacheKey:v107 safetyCacheToken:v102 sessionType:v95 destinationType:v64 isSOSTrigger:v96 lowPowerModeWarningState:v67];
                    v54 = self;
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

                    v54 = 0;
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

                  v54 = 0;
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

                v54 = 0;
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

              v54 = 0;
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

            v54 = 0;
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

          v54 = 0;
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

        v54 = 0;
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

      v54 = 0;
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

    v54 = 0;
  }

LABEL_28:
  v55 = *MEMORY[0x277D85DE8];
  return v54;
}

- (id)outputToDictionary
{
  v44.receiver = self;
  v44.super_class = SMKeyReleaseMessage;
  v3 = [(SMMessage *)&v44 outputToDictionary];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(SMKeyReleaseMessage *)self triggerDate];
  [v5 timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"triggerTime"];

  v7 = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v9 latitude];
    v10 = [v8 numberWithDouble:?];
    [v3 setObject:v10 forKey:@"latitude"];

    v11 = MEMORY[0x277CCABB0];
    v12 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v12 longitude];
    v13 = [v11 numberWithDouble:?];
    [v3 setObject:v13 forKey:@"longitude"];

    v14 = MEMORY[0x277CCABB0];
    v15 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v15 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [v3 setObject:v16 forKey:@"hunc"];

    v17 = MEMORY[0x277CCABB0];
    v18 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v18 altitude];
    v19 = [v17 numberWithDouble:?];
    [v3 setObject:v19 forKey:@"altitude"];

    v20 = MEMORY[0x277CCABB0];
    v21 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v21 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [v3 setObject:v22 forKey:@"vunc"];

    v23 = MEMORY[0x277CCABB0];
    v24 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v25 = [v24 date];
    [v25 timeIntervalSince1970];
    v26 = [v23 numberWithDouble:?];
    [v3 setObject:v26 forKey:@"timeOfLocation"];

    v27 = MEMORY[0x277CCABB0];
    v28 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v29 = [v27 numberWithUnsignedInt:{objc_msgSend(v28, "referenceFrame")}];
    [v3 setObject:v29 forKey:@"referenceFrame"];

    v30 = MEMORY[0x277CCABB0];
    v31 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v31 speed];
    v32 = [v30 numberWithDouble:?];
    [v3 setObject:v32 forKey:@"speed"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  [v3 setObject:v33 forKey:@"triggerType"];

  v34 = [(SMKeyReleaseMessage *)self safetyCacheKey];
  v35 = [v34 base64EncodedStringWithOptions:0];
  [v3 setObject:v35 forKey:@"safetyCacheKey"];

  v36 = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (v36)
  {
    v37 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    v38 = [v37 base64EncodedStringWithOptions:0];
    [v3 setObject:v38 forKey:@"safetyCacheToken"];
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  [v3 setObject:v39 forKey:@"sessionType"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  [v3 setObject:v40 forKey:@"sessionDestinationType"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  [v3 setObject:v41 forKey:@"isSOSTrigger"];

  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [v3 setObject:v42 forKey:@"lowPowerModeWarningState"];

  return v3;
}

- (SMKeyReleaseMessage)initWithURL:(id)a3
{
  v178 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
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

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v3 resolvingAgainstBaseURL:0];
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

  v6 = [v4 queryItems];
  v7 = v6;
  if (!v6)
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
  v8 = [v6 countByEnumeratingWithState:&v165 objects:v177 count:16];
  if (!v8)
  {
    v61 = [0 intValue];
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
  v137 = v3;
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
      v14 = [v13 value];
      if (v14)
      {
        v15 = [v13 name];
        v16 = [v15 isEqualToString:@"sendDate"];

        if (v16)
        {
          v17 = v10;
          v10 = v14;
        }

        else
        {
          v21 = [v13 name];
          v22 = [v21 isEqualToString:@"messageID"];

          if (v22)
          {
            v17 = v163;
            v163 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
          }

          else
          {
            v23 = [v13 name];
            v24 = [v23 isEqualToString:@"sessionID"];

            if (v24)
            {
              v17 = v162;
              v162 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
            }

            else
            {
              v25 = [v13 name];
              v26 = [v25 isEqualToString:@"messageType"];

              if (v26)
              {
                v17 = v160;
                v160 = v14;
              }

              else
              {
                v27 = [v13 name];
                v28 = [v27 isEqualToString:@"interfaceVersion"];

                if (v28)
                {
                  v17 = v158;
                  v158 = v14;
                }

                else
                {
                  v29 = [v13 name];
                  v30 = [v29 isEqualToString:@"triggerTime"];

                  if (v30)
                  {
                    v17 = v154;
                    v154 = v14;
                  }

                  else
                  {
                    v31 = [v13 name];
                    v32 = [v31 isEqualToString:@"latitude"];

                    if (v32)
                    {
                      v17 = v153;
                      v153 = v14;
                    }

                    else
                    {
                      v33 = [v13 name];
                      v34 = [v33 isEqualToString:@"longitude"];

                      if (v34)
                      {
                        v17 = v152;
                        v152 = v14;
                      }

                      else
                      {
                        v35 = [v13 name];
                        v36 = [v35 isEqualToString:@"hunc"];

                        if (v36)
                        {
                          v17 = v151;
                          v151 = v14;
                        }

                        else
                        {
                          v37 = [v13 name];
                          v38 = [v37 isEqualToString:@"altitude"];

                          if (v38)
                          {
                            v17 = v150;
                            v150 = v14;
                          }

                          else
                          {
                            v39 = [v13 name];
                            v40 = [v39 isEqualToString:@"vunc"];

                            if (v40)
                            {
                              v17 = v149;
                              v149 = v14;
                            }

                            else
                            {
                              v41 = [v13 name];
                              v42 = [v41 isEqualToString:@"timeOfLocation"];

                              if (v42)
                              {
                                v17 = v148;
                                v148 = v14;
                              }

                              else
                              {
                                v43 = [v13 name];
                                v44 = [v43 isEqualToString:@"referenceFrame"];

                                if (v44)
                                {
                                  v17 = v147;
                                  v147 = v14;
                                }

                                else
                                {
                                  v45 = [v13 name];
                                  v46 = [v45 isEqualToString:@"speed"];

                                  if (v46)
                                  {
                                    v17 = v146;
                                    v146 = v14;
                                  }

                                  else
                                  {
                                    v47 = [v13 name];
                                    v48 = [v47 isEqualToString:@"triggerType"];

                                    if (v48)
                                    {
                                      v17 = v145;
                                      v145 = v14;
                                    }

                                    else
                                    {
                                      v49 = [v13 name];
                                      v50 = [v49 isEqualToString:@"safetyCacheKey"];

                                      if (v50)
                                      {
                                        v17 = v144;
                                        v144 = v14;
                                      }

                                      else
                                      {
                                        v51 = [v13 name];
                                        v52 = [v51 isEqualToString:@"safetyCacheToken"];

                                        if (v52)
                                        {
                                          v17 = v143;
                                          v143 = v14;
                                        }

                                        else
                                        {
                                          v53 = [v13 name];
                                          v54 = [v53 isEqualToString:@"sessionType"];

                                          if (v54)
                                          {
                                            v17 = v142;
                                            v142 = v14;
                                          }

                                          else
                                          {
                                            v55 = [v13 name];
                                            v56 = [v55 isEqualToString:@"sessionDestinationType"];

                                            if (v56)
                                            {
                                              v17 = v141;
                                              v141 = v14;
                                            }

                                            else
                                            {
                                              v57 = [v13 name];
                                              v58 = [v57 isEqualToString:@"isSOSTrigger"];

                                              if (v58)
                                              {
                                                v17 = v140;
                                                v140 = v14;
                                              }

                                              else
                                              {
                                                v59 = [v13 name];
                                                v60 = [v59 isEqualToString:@"lowPowerModeWarningState"];

                                                if (!v60)
                                                {
                                                  goto LABEL_55;
                                                }

                                                v17 = v139;
                                                v139 = v14;
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
  v61 = [v160 intValue];
  if (!v160)
  {
    v160 = 0;
    v3 = v137;
    v5 = v138;
    v7 = obj;
    goto LABEL_91;
  }

  v5 = v138;
  v7 = obj;
  if ([objc_opt_class() messageType] != v61)
  {
    v3 = v137;
LABEL_91:
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v98 = objc_opt_class();
      v93 = NSStringFromClass(v98);
      NSStringFromSelector(a2);
      v100 = v99 = v7;
      v101 = [objc_opt_class() messageType];
      *buf = 138413058;
      v170 = v93;
      v171 = 2112;
      v172 = v100;
      v173 = 1024;
      v174 = v101;
      v175 = 1024;
      v176 = v61;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d", buf, 0x22u);

      v7 = v99;
      goto LABEL_100;
    }

LABEL_92:
    v88 = 0;
    goto LABEL_93;
  }

  v62 = [v158 intValue];
  v63 = v62;
  if (!v158 || v62 != 1)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v3 = v137;
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
    v3 = v137;
    goto LABEL_93;
  }

  v64 = MEMORY[0x277CBEAA8];
  [v10 doubleValue];
  v65 = [v64 dateWithTimeIntervalSince1970:?];
  if (!v163)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v3 = v137;
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
      v3 = v137;
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
    v82 = [v147 intValue];
    [v146 doubleValue];
    v68 = [v71 initWithLatitude:v70 longitude:v82 horizontalUncertainty:v73 altitude:v75 verticalUncertainty:v77 date:v79 referenceFrame:v81 speed:v83];
  }

  if (!v145)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
LABEL_114:
      v88 = 0;
      v3 = v137;
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

  v84 = [v145 intValue];
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

  v85 = v84;
  v86 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v144 options:0];
  if (!v86)
  {
    v87 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v3 = v137;
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

  v3 = v137;
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

  v119 = [v142 intValue];
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

  v120 = v119;
  v121 = [v141 intValue];
  v122 = [v140 BOOLValue];
  if (v139)
  {
    v123 = [v139 intValue];
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

    v123 = 0;
  }

  LOBYTE(v136) = v122;
  v88 = [(SMKeyReleaseMessage *)self initWithDate:v65 messageID:v163 sessionID:v162 triggerDate:v67 locationOfTrigger:v68 triggerType:v85 safetyCacheKey:v86 safetyCacheToken:v87 sessionType:v120 destinationType:v121 isSOSTrigger:v136 lowPowerModeWarningState:v123];
  self = v88;
  v3 = v137;
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
  v5 = [(SMMessage *)&v94 outputToURLComponents];
  v6 = [v5 queryItems];
  [v4 addObjectsFromArray:v6];

  v7 = objc_alloc(MEMORY[0x277CCAD18]);
  v8 = MEMORY[0x277CCABB0];
  v9 = [(SMKeyReleaseMessage *)self triggerDate];
  [v9 timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v11 = [v10 stringValue];
  v12 = [v7 initWithName:@"triggerTime" value:v11];
  [v4 addObject:v12];

  v13 = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD18]);
    v15 = MEMORY[0x277CCABB0];
    v16 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v16 latitude];
    v17 = [v15 numberWithDouble:?];
    v18 = [v17 stringValue];
    v19 = [v14 initWithName:@"latitude" value:v18];
    [v4 addObject:v19];

    v20 = objc_alloc(MEMORY[0x277CCAD18]);
    v21 = MEMORY[0x277CCABB0];
    v22 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v22 longitude];
    v23 = [v21 numberWithDouble:?];
    v24 = [v23 stringValue];
    v25 = [v20 initWithName:@"longitude" value:v24];
    [v4 addObject:v25];

    v26 = objc_alloc(MEMORY[0x277CCAD18]);
    v27 = MEMORY[0x277CCABB0];
    v28 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v28 horizontalUncertainty];
    v29 = [v27 numberWithDouble:?];
    v30 = [v29 stringValue];
    v31 = [v26 initWithName:@"hunc" value:v30];
    [v4 addObject:v31];

    v32 = objc_alloc(MEMORY[0x277CCAD18]);
    v33 = MEMORY[0x277CCABB0];
    v34 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v34 altitude];
    v35 = [v33 numberWithDouble:?];
    v36 = [v35 stringValue];
    v37 = [v32 initWithName:@"altitude" value:v36];
    [v4 addObject:v37];

    v38 = objc_alloc(MEMORY[0x277CCAD18]);
    v39 = MEMORY[0x277CCABB0];
    v40 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v40 verticalUncertainty];
    v41 = [v39 numberWithDouble:?];
    v42 = [v41 stringValue];
    v43 = [v38 initWithName:@"vunc" value:v42];
    [v4 addObject:v43];

    v44 = objc_alloc(MEMORY[0x277CCAD18]);
    v45 = MEMORY[0x277CCABB0];
    v46 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v47 = [v46 date];
    [v47 timeIntervalSince1970];
    v48 = [v45 numberWithDouble:?];
    [v48 stringValue];
    v50 = v49 = v3;
    v51 = [v44 initWithName:@"timeOfLocation" value:v50];
    [v4 addObject:v51];

    v3 = v49;
    v52 = objc_alloc(MEMORY[0x277CCAD18]);
    v53 = MEMORY[0x277CCABB0];
    v54 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v55 = [v53 numberWithUnsignedInt:{objc_msgSend(v54, "referenceFrame")}];
    v56 = [v55 stringValue];
    v57 = [v52 initWithName:@"referenceFrame" value:v56];
    [v4 addObject:v57];

    v58 = objc_alloc(MEMORY[0x277CCAD18]);
    v59 = MEMORY[0x277CCABB0];
    v60 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v60 speed];
    v61 = [v59 numberWithDouble:?];
    v62 = [v61 stringValue];
    v63 = [v58 initWithName:@"speed" value:v62];
    [v4 addObject:v63];
  }

  v64 = objc_alloc(MEMORY[0x277CCAD18]);
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  v66 = [v65 stringValue];
  v67 = [v64 initWithName:@"triggerType" value:v66];
  [v4 addObject:v67];

  v68 = objc_alloc(MEMORY[0x277CCAD18]);
  v69 = [(SMKeyReleaseMessage *)self safetyCacheKey];
  v70 = [v69 base64EncodedStringWithOptions:0];
  v71 = [v68 initWithName:@"safetyCacheKey" value:v70];
  [v4 addObject:v71];

  v72 = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (v72)
  {
    v73 = objc_alloc(MEMORY[0x277CCAD18]);
    v74 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    v75 = [v74 base64EncodedStringWithOptions:0];
    v76 = [v73 initWithName:@"safetyCacheToken" value:v75];
    [v4 addObject:v76];
  }

  v77 = objc_alloc(MEMORY[0x277CCAD18]);
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  v79 = [v78 stringValue];
  v80 = [v77 initWithName:@"sessionType" value:v79];
  [v4 addObject:v80];

  v81 = objc_alloc(MEMORY[0x277CCAD18]);
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  v83 = [v82 stringValue];
  v84 = [v81 initWithName:@"sessionDestinationType" value:v83];
  [v4 addObject:v84];

  v85 = objc_alloc(MEMORY[0x277CCAD18]);
  v86 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  v87 = [v86 stringValue];
  v88 = [v85 initWithName:@"isSOSTrigger" value:v87];
  [v4 addObject:v88];

  v89 = objc_alloc(MEMORY[0x277CCAD18]);
  v90 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  v91 = [v90 stringValue];
  v92 = [v89 initWithName:@"lowPowerModeWarningState" value:v91];
  [v4 addObject:v92];

  [v3 setQueryItems:v4];

  return v3;
}

- (id)summaryText
{
  v3 = [(SMKeyReleaseMessage *)self triggerType];
  if (v3 > 12)
  {
    switch(v3)
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
    switch(v3)
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

  v8 = [(SMKeyReleaseMessage *)self sessionType];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
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
    if (v8 != 1)
    {
      if (v8 == 2)
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

- (void)encodeWithCoder:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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
  [(SMMessage *)&v40 encodeWithCoder:v4];
  v6 = [(SMKeyReleaseMessage *)self triggerDate];
  [v4 encodeObject:v6 forKey:@"triggerTime"];

  v7 = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v9 latitude];
    v10 = [v8 numberWithDouble:?];
    [v4 encodeObject:v10 forKey:@"latitude"];

    v11 = MEMORY[0x277CCABB0];
    v12 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v12 longitude];
    v13 = [v11 numberWithDouble:?];
    [v4 encodeObject:v13 forKey:@"longitude"];

    v14 = MEMORY[0x277CCABB0];
    v15 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v15 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [v4 encodeObject:v16 forKey:@"hunc"];

    v17 = MEMORY[0x277CCABB0];
    v18 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v18 altitude];
    v19 = [v17 numberWithDouble:?];
    [v4 encodeObject:v19 forKey:@"altitude"];

    v20 = MEMORY[0x277CCABB0];
    v21 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v21 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [v4 encodeObject:v22 forKey:@"vunc"];

    v23 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v24 = [v23 date];
    [v4 encodeObject:v24 forKey:@"timeOfLocation"];

    v25 = MEMORY[0x277CCABB0];
    v26 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v27 = [v25 numberWithUnsignedInt:{objc_msgSend(v26, "referenceFrame")}];
    [v4 encodeObject:v27 forKey:@"referenceFrame"];

    v28 = MEMORY[0x277CCABB0];
    v29 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [v29 speed];
    v30 = [v28 numberWithDouble:?];
    [v4 encodeObject:v30 forKey:@"speed"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  [v4 encodeObject:v31 forKey:@"triggerType"];

  v32 = [(SMKeyReleaseMessage *)self safetyCacheKey];
  [v4 encodeObject:v32 forKey:@"safetyCacheKey"];

  v33 = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (v33)
  {
    v34 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    [v4 encodeObject:v34 forKey:@"safetyCacheToken"];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  [v4 encodeObject:v35 forKey:@"sessionType"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  [v4 encodeObject:v36 forKey:@"sessionDestinationType"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  [v4 encodeObject:v37 forKey:@"isSOSTrigger"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [v4 encodeObject:v38 forKey:@"lowPowerModeWarningState"];

  v39 = *MEMORY[0x277D85DE8];
}

- (SMKeyReleaseMessage)initWithCoder:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", buf, 2u);
    }

    goto LABEL_28;
  }

  v7 = [v5 decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      v51 = 0;
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
    v110 = [objc_opt_class() messageType];
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
    v110 = v50;
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
            v30 = [v100 intValue];
            [v98 doubleValue];
            v31 = v18;
            v14 = v17;
            v32 = v30;
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
            v36 = [v35 intValue];
            [v6 decodeObjectOfClass:objc_opt_class() forKey:@"safetyCacheKey"];
            v91 = v11 = v97;
            if (v91)
            {
              v95 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"safetyCacheToken"];
              v37 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
              v89 = v37;
              if (v37)
              {
                v38 = [v37 intValue];
                v39 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationType"];
                v90 = v39;
                if (v39)
                {
                  v86 = v38;
                  v87 = v36;
                  v40 = [v39 intValue];
                  v41 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isSOSTrigger"];
                  v85 = [v41 intValue];

                  v42 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
                  v88 = v42;
                  if (v42)
                  {
                    v43 = [v42 intValue];
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

                    v43 = 0;
                  }

                  v55 = v91;
                  LOBYTE(v84) = v85 != 0;
                  self = [(SMKeyReleaseMessage *)self initWithDate:v9 messageID:v10 sessionID:v97 triggerDate:log locationOfTrigger:v34 triggerType:v87 safetyCacheKey:v91 safetyCacheToken:v95 sessionType:v86 destinationType:v40 isSOSTrigger:v84 lowPowerModeWarningState:v43];
                  v51 = self;
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

                  v51 = 0;
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

                v51 = 0;
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

              v51 = 0;
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

            v51 = 0;
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

          v51 = 0;
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

        v51 = 0;
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

      v51 = 0;
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

    v51 = 0;
  }

LABEL_29:
  v52 = *MEMORY[0x277D85DE8];
  return v51;
}

@end