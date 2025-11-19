@interface SMSessionEndMessage
+ (unint64_t)sessionEndReasonFromDict:(id)a3;
+ (unint64_t)sessionEndReasonFromURL:(id)a3;
- (SMSessionEndMessage)initWithCoder:(id)a3;
- (SMSessionEndMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 sessionEndReason:(unint64_t)a6 sessionType:(unint64_t)a7 destinationType:(unint64_t)a8 destinationMapItem:(id)a9;
- (SMSessionEndMessage)initWithDictionary:(id)a3;
- (SMSessionEndMessage)initWithSessionID:(id)a3 sessionEndReason:(unint64_t)a4 sessionType:(unint64_t)a5 destinationType:(unint64_t)a6 destinationMapItem:(id)a7;
- (SMSessionEndMessage)initWithURL:(id)a3;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (id)summaryText;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionEndMessage

- (SMSessionEndMessage)initWithSessionID:(id)a3 sessionEndReason:(unint64_t)a4 sessionType:(unint64_t)a5 destinationType:(unint64_t)a6 destinationMapItem:(id)a7
{
  v12 = MEMORY[0x277CBEAA8];
  v13 = a7;
  v14 = a3;
  v15 = [v12 now];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [(SMSessionEndMessage *)self initWithDate:v15 messageID:v16 sessionID:v14 sessionEndReason:a4 sessionType:a5 destinationType:a6 destinationMapItem:v13];

  return v17;
}

- (SMSessionEndMessage)initWithDate:(id)a3 messageID:(id)a4 sessionID:(id)a5 sessionEndReason:(unint64_t)a6 sessionType:(unint64_t)a7 destinationType:(unint64_t)a8 destinationMapItem:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  if (!v15)
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

  if (!v16)
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

  if (!v17)
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
  v25.super_class = SMSessionEndMessage;
  v19 = [(SMMessage *)&v25 initWithDate:v15 messageID:v16 sessionID:v17];
  v20 = v19;
  if (v19)
  {
    v19->_sessionEndReason = a6;
    v19->_sessionType = a7;
    v19->_destinationType = a8;
    objc_storeStrong(&v19->_destinationMapItem, a9);
  }

  self = v20;
  v21 = self;
LABEL_15:

  return v21;
}

- (SMSessionEndMessage)initWithDictionary:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
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

    goto LABEL_17;
  }

  v7 = [v5 valueForKey:@"messageType"];
  v8 = [v7 intValue];

  if ([objc_opt_class() messageType] != v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v36 = 0;
      goto LABEL_18;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(a2);
    *buf = 138413058;
    v68 = v31;
    v69 = 2112;
    v70 = v32;
    v71 = 1024;
    v72 = [objc_opt_class() messageType];
    v73 = 1024;
    v74 = v8;
    v33 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v34 = v12;
    v35 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);

    goto LABEL_17;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  v10 = [v9 intValue];

  if (v10 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v40 = objc_opt_class();
    v31 = NSStringFromClass(v40);
    v32 = NSStringFromSelector(a2);
    *buf = 138412802;
    v68 = v31;
    v69 = 2112;
    v70 = v32;
    v71 = 1024;
    v72 = v10;
    v33 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v34 = v12;
    v35 = 28;
    goto LABEL_32;
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
        v21 = [v6 valueForKey:@"sessionEndReason"];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 intValue];
          v24 = [v6 valueForKey:@"sessionType"];
          v66 = v24;
          if (v24)
          {
            v65 = v22;
            v25 = [v24 intValue];
            v26 = [v6 valueForKey:@"sessionDestinationType"];
            if (v26)
            {
              v27 = v26;
              v63 = v25;
              v64 = v23;
              v62 = [v26 intValue];
              v28 = [v6 valueForKey:@"sessionDestinationMapItem"];
              if (v28)
              {
                v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v28 options:0];
              }

              else
              {
                v29 = 0;
              }

              v22 = v65;
              self = [(SMSessionEndMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 sessionEndReason:v64 sessionType:v63 destinationType:v62 destinationMapItem:v29];

              v36 = self;
            }

            else
            {
              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v59 = objc_opt_class();
                v60 = NSStringFromClass(v59);
                v61 = NSStringFromSelector(a2);
                *buf = 138412546;
                v68 = v60;
                v69 = 2112;
                v70 = v61;
                _os_log_error_impl(&dword_26455D000, v41, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);
              }

              v27 = 0;
              v36 = 0;
              v22 = v65;
            }
          }

          else
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v55 = objc_opt_class();
              NSStringFromClass(v55);
              v57 = v56 = v22;
              v58 = NSStringFromSelector(a2);
              *buf = 138412546;
              v68 = v57;
              v69 = 2112;
              v70 = v58;
              _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

              v22 = v56;
            }

            v36 = 0;
          }

          v39 = v66;
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            v53 = NSStringFromClass(v52);
            v54 = NSStringFromSelector(a2);
            *buf = 138412546;
            v68 = v53;
            v69 = 2112;
            v70 = v54;
            _os_log_error_impl(&dword_26455D000, v39, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionEndReason", buf, 0x16u);

            v22 = 0;
          }

          v36 = 0;
        }
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          NSStringFromClass(v48);
          v50 = v49 = v22;
          v51 = NSStringFromSelector(a2);
          *buf = 138412546;
          v68 = v50;
          v69 = 2112;
          v70 = v51;
          _os_log_error_impl(&dword_26455D000, v49, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);

          v22 = v49;
        }

        v36 = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        *buf = 138412546;
        v68 = v46;
        v69 = 2112;
        v70 = v47;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      v36 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = NSStringFromSelector(a2);
      *buf = 138412546;
      v68 = v43;
      v69 = 2112;
      v70 = v44;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v36 = 0;
  }

LABEL_18:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)outputToDictionary
{
  v11.receiver = self;
  v11.super_class = SMSessionEndMessage;
  v3 = [(SMMessage *)&v11 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage sessionEndReason](self, "sessionEndReason")}];
  [v3 setObject:v4 forKey:@"sessionEndReason"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage sessionType](self, "sessionType")}];
  [v3 setObject:v5 forKey:@"sessionType"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage destinationType](self, "destinationType")}];
  [v3 setObject:v6 forKey:@"sessionDestinationType"];

  v7 = [(SMSessionEndMessage *)self destinationMapItem];

  if (v7)
  {
    v8 = [(SMSessionEndMessage *)self destinationMapItem];
    v9 = [v8 base64EncodedStringWithOptions:0];
    [v3 setObject:v9 forKey:@"sessionDestinationMapItem"];
  }

  return v3;
}

- (SMSessionEndMessage)initWithURL:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v50 = 0;
    goto LABEL_63;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = NSStringFromSelector(a2);
      *buf = 138412546;
      v100 = v61;
      v101 = 2112;
      v102 = v62;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v50 = 0;
    goto LABEL_62;
  }

  v6 = [v4 queryItems];
  v7 = v6;
  if (!v6)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      v67 = NSStringFromSelector(a2);
      *buf = 138412546;
      v100 = v66;
      v101 = 2112;
      v102 = v67;
      _os_log_error_impl(&dword_26455D000, v37, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);
    }

    v50 = 0;
    goto LABEL_61;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (!v8)
  {
    v38 = [0 intValue];
    v37 = 0;
    v39 = 0;
    v94 = 0;
    v49 = 0;
    v51 = 0;
    v85 = 0;
    v84 = 0;
    v83 = 0;
    v82 = 0;
    goto LABEL_58;
  }

  v9 = v8;
  v80 = v5;
  v81 = v3;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v88 = 0;
  v90 = 0;
  v10 = *v96;
  do
  {
    v11 = v7;
    for (i = 0; i != v9; ++i)
    {
      if (*v96 != v10)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v95 + 1) + 8 * i);
      v14 = [v13 value];
      if (v14)
      {
        v15 = [v13 name];
        v16 = [v15 isEqualToString:@"sendDate"];

        if (v16)
        {
          v17 = v94;
          v94 = v14;
        }

        else
        {
          v21 = [v13 name];
          v22 = [v21 isEqualToString:@"messageID"];

          if (v22)
          {
            v17 = v93;
            v93 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
          }

          else
          {
            v23 = [v13 name];
            v24 = [v23 isEqualToString:@"sessionID"];

            if (v24)
            {
              v17 = v92;
              v92 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
            }

            else
            {
              v25 = [v13 name];
              v26 = [v25 isEqualToString:@"messageType"];

              if (v26)
              {
                v17 = v90;
                v90 = v14;
              }

              else
              {
                v27 = [v13 name];
                v28 = [v27 isEqualToString:@"interfaceVersion"];

                if (v28)
                {
                  v17 = v88;
                  v88 = v14;
                }

                else
                {
                  v29 = [v13 name];
                  v30 = [v29 isEqualToString:@"sessionEndReason"];

                  if (v30)
                  {
                    v17 = v85;
                    v85 = v14;
                  }

                  else
                  {
                    v31 = [v13 name];
                    v32 = [v31 isEqualToString:@"sessionType"];

                    if (v32)
                    {
                      v17 = v84;
                      v84 = v14;
                    }

                    else
                    {
                      v33 = [v13 name];
                      v34 = [v33 isEqualToString:@"sessionDestinationType"];

                      if (v34)
                      {
                        v17 = v83;
                        v83 = v14;
                      }

                      else
                      {
                        v35 = [v13 name];
                        v36 = [v35 isEqualToString:@"sessionDestinationMapItem"];

                        if (!v36)
                        {
                          goto LABEL_31;
                        }

                        v17 = v82;
                        v82 = v14;
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
          v100 = v19;
          v101 = 2112;
          v102 = v20;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value", buf, 0x16u);
        }
      }

LABEL_31:
    }

    v7 = v11;
    v9 = [v11 countByEnumeratingWithState:&v95 objects:v107 count:16];
  }

  while (v9);
  v37 = v90;
  v38 = [v90 intValue];
  if (!v90)
  {
    v5 = v80;
    v3 = v81;
    v39 = v88;
    goto LABEL_57;
  }

  v5 = v80;
  v3 = v81;
  v39 = v88;
  if ([objc_opt_class() messageType] != v38)
  {
LABEL_57:
    v51 = v92;
    v49 = v93;
LABEL_58:
    v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      v55 = NSStringFromClass(v63);
      NSStringFromSelector(a2);
      v56 = log = v43;
      v64 = [objc_opt_class() messageType];
      *buf = 138413058;
      v100 = v55;
      v101 = 2112;
      v102 = v56;
      v103 = 1024;
      v104 = v64;
      v105 = 1024;
      v106 = v38;
      v57 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
      v58 = log;
      v59 = 34;
      goto LABEL_67;
    }

LABEL_59:
    v50 = 0;
    goto LABEL_60;
  }

  v40 = [v88 intValue];
  v41 = v40;
  if (!v88 || v40 != 1)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v51 = v92;
    v49 = v93;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      NSStringFromSelector(a2);
      v56 = log = v43;
      *buf = 138412802;
      v100 = v55;
      v101 = 2112;
      v102 = v56;
      v103 = 1024;
      v104 = v41;
      v57 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
      v58 = log;
      v59 = 28;
LABEL_67:
      _os_log_error_impl(&dword_26455D000, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);

      v43 = log;
      goto LABEL_59;
    }

    goto LABEL_59;
  }

  if (!v94)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      v79 = NSStringFromSelector(a2);
      *buf = 138412546;
      v100 = v78;
      v101 = 2112;
      v102 = v79;
      _os_log_error_impl(&dword_26455D000, v43, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v94 = 0;
    v50 = 0;
    v51 = v92;
    v49 = v93;
    goto LABEL_60;
  }

  v42 = MEMORY[0x277CBEAA8];
  [v94 doubleValue];
  v43 = [v42 dateWithTimeIntervalSince1970:?];
  if (!v93)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    v68 = objc_opt_class();
    v69 = NSStringFromClass(v68);
    NSStringFromSelector(a2);
    v71 = v70 = v43;
    *buf = 138412546;
    v100 = v69;
    v101 = 2112;
    v102 = v71;
    v72 = "#SafetyCache,%@,%@,missing messageID";
LABEL_81:
    _os_log_error_impl(&dword_26455D000, v48, OS_LOG_TYPE_ERROR, v72, buf, 0x16u);

    v43 = v70;
    goto LABEL_82;
  }

  if (!v92)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    v73 = objc_opt_class();
    v69 = NSStringFromClass(v73);
    NSStringFromSelector(a2);
    v71 = v70 = v43;
    *buf = 138412546;
    v100 = v69;
    v101 = 2112;
    v102 = v71;
    v72 = "#SafetyCache,%@,%@,missing sessionID";
    goto LABEL_81;
  }

  if (!v85)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    v74 = objc_opt_class();
    v69 = NSStringFromClass(v74);
    NSStringFromSelector(a2);
    v71 = v70 = v43;
    *buf = 138412546;
    v100 = v69;
    v101 = 2112;
    v102 = v71;
    v72 = "#SafetyCache,%@,%@,missing sessionEndReason";
    goto LABEL_81;
  }

  v44 = [v85 intValue];
  if (!v84)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    v75 = objc_opt_class();
    v69 = NSStringFromClass(v75);
    NSStringFromSelector(a2);
    v71 = v70 = v43;
    *buf = 138412546;
    v100 = v69;
    v101 = 2112;
    v102 = v71;
    v72 = "#SafetyCache,%@,%@,missing sessionType";
    goto LABEL_81;
  }

  v45 = [v84 intValue];
  if (!v83)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v76 = objc_opt_class();
      v69 = NSStringFromClass(v76);
      NSStringFromSelector(a2);
      v71 = v70 = v43;
      *buf = 138412546;
      v100 = v69;
      v101 = 2112;
      v102 = v71;
      v72 = "#SafetyCache,%@,%@,missing destinationType";
      goto LABEL_81;
    }

LABEL_82:
    v50 = 0;
    v51 = v92;
    v49 = v93;
    goto LABEL_83;
  }

  v89 = v44;
  v46 = v45;
  v47 = [v83 intValue];
  v48 = v82;
  if (v82)
  {
    v48 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v82 options:0];
  }

  v49 = v93;
  v50 = [(SMSessionEndMessage *)self initWithDate:v43 messageID:v93 sessionID:v92 sessionEndReason:v89 sessionType:v46 destinationType:v47 destinationMapItem:v48];
  self = v50;
  v7 = v11;
  v51 = v92;
LABEL_83:

LABEL_60:
LABEL_61:

LABEL_62:
LABEL_63:

  v52 = *MEMORY[0x277D85DE8];
  return v50;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25.receiver = self;
  v25.super_class = SMSessionEndMessage;
  v5 = [(SMMessage *)&v25 outputToURLComponents];
  v6 = [v5 queryItems];
  [v4 addObjectsFromArray:v6];

  v7 = objc_alloc(MEMORY[0x277CCAD18]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage sessionEndReason](self, "sessionEndReason")}];
  v9 = [v8 stringValue];
  v10 = [v7 initWithName:@"sessionEndReason" value:v9];
  [v4 addObject:v10];

  v11 = objc_alloc(MEMORY[0x277CCAD18]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage sessionType](self, "sessionType")}];
  v13 = [v12 stringValue];
  v14 = [v11 initWithName:@"sessionType" value:v13];
  [v4 addObject:v14];

  v15 = objc_alloc(MEMORY[0x277CCAD18]);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage destinationType](self, "destinationType")}];
  v17 = [v16 stringValue];
  v18 = [v15 initWithName:@"sessionDestinationType" value:v17];
  [v4 addObject:v18];

  v19 = [(SMSessionEndMessage *)self destinationMapItem];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277CCAD18]);
    v21 = [(SMSessionEndMessage *)self destinationMapItem];
    v22 = [v21 base64EncodedStringWithOptions:0];
    v23 = [v20 initWithName:@"sessionDestinationMapItem" value:v22];
    [v4 addObject:v23];
  }

  [v3 setQueryItems:v4];

  return v3;
}

+ (unint64_t)sessionEndReasonFromDict:(id)a3
{
  v3 = [a3 valueForKey:@"sessionEndReason"];
  v4 = [v3 intValue];

  return v4;
}

+ (unint64_t)sessionEndReasonFromURL:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v3 resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 name];
          v12 = [v11 isEqualToString:@"sessionEndReason"];

          if (v12)
          {
            v14 = [v10 value];
            v13 = [v14 intValue];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)summaryText
{
  v3 = [(SMSessionEndMessage *)self sessionEndReason];
  if (v3 == 8)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"END_MESSAGE_WORKOUT_ENDED_SUMMARY";
    v8 = @"Check In: Workout Ended";
  }

  else if (v3 == 1)
  {
    v4 = [(SMSessionEndMessage *)self destinationType];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    switch(v4)
    {
      case 3uLL:
        v7 = @"END_MESSAGE_SAFE_ARRIVAL_SCHOOL_SUMMARY";
        v8 = @"Check In: Arrived at school";
        break;
      case 2uLL:
        v7 = @"END_MESSAGE_SAFE_ARRIVAL_WORK_SUMMARY";
        v8 = @"Check In: Arrived at work";
        break;
      case 1uLL:
        v7 = @"END_MESSAGE_SAFE_ARRIVAL_HOME_SUMMARY";
        v8 = @"Check In: Arrived at home";
        break;
      default:
        v7 = @"END_MESSAGE_SAFE_ARRIVAL_DEFAULT_DESTINATION_SUMMARY";
        v8 = @"Check In: Arrived at destination";
        break;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"END_MESSAGE_DEFAULT_SUMMARY";
    v8 = @"Check In: Ended";
  }

  v9 = [v5 localizedStringForKey:v7 value:v8 table:0];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSessionEndMessage encodeWithCoder:]";
      v15 = 1024;
      v16 = 396;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v12.receiver = self;
  v12.super_class = SMSessionEndMessage;
  [(SMMessage *)&v12 encodeWithCoder:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage sessionEndReason](self, "sessionEndReason")}];
  [v4 encodeObject:v6 forKey:@"sessionEndReason"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage sessionType](self, "sessionType")}];
  [v4 encodeObject:v7 forKey:@"sessionType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionEndMessage destinationType](self, "destinationType")}];
  [v4 encodeObject:v8 forKey:@"sessionDestinationType"];

  v9 = [(SMSessionEndMessage *)self destinationMapItem];

  if (v9)
  {
    v10 = [(SMSessionEndMessage *)self destinationMapItem];
    [v4 encodeObject:v10 forKey:@"sessionDestinationMapItem"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (SMSessionEndMessage)initWithCoder:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
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

    goto LABEL_16;
  }

  v7 = [v5 decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_17;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    *buf = 138413058;
    v56 = v24;
    v57 = 2112;
    v58 = v25;
    v59 = 1024;
    v60 = [objc_opt_class() messageType];
    v61 = 1024;
    v62 = v7;
    v26 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v27 = v9;
    v28 = 34;
LABEL_31:
    _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);

    goto LABEL_16;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v29 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v32 = objc_opt_class();
    v24 = NSStringFromClass(v32);
    v25 = NSStringFromSelector(a2);
    *buf = 138412802;
    v56 = v24;
    v57 = 2112;
    v58 = v25;
    v59 = 1024;
    v60 = v29;
    v26 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v27 = v9;
    v28 = 28;
    goto LABEL_31;
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
        v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionEndReason"];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 intValue];
          v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
          v16 = v15;
          if (v15)
          {
            v54 = v15;
            v17 = [v15 intValue];
            v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationType"];
            if (v18)
            {
              v19 = v18;
              v53 = v14;
              v20 = [v18 intValue];
              v21 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationMapItem"];
              self = [(SMSessionEndMessage *)self initWithDate:v9 messageID:v10 sessionID:v11 sessionEndReason:v53 sessionType:v17 destinationType:v20 destinationMapItem:v21];

              v22 = self;
            }

            else
            {
              v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v50 = objc_opt_class();
                v51 = NSStringFromClass(v50);
                v52 = NSStringFromSelector(a2);
                *buf = 138412546;
                v56 = v51;
                v57 = 2112;
                v58 = v52;
                _os_log_error_impl(&dword_26455D000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);
              }

              v19 = 0;
              v22 = 0;
            }

            v16 = v54;
          }

          else
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              v49 = NSStringFromSelector(a2);
              *buf = 138412546;
              v56 = v48;
              v57 = 2112;
              v58 = v49;
              _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

              v16 = 0;
            }

            v22 = 0;
          }
        }

        else
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            NSStringFromClass(v43);
            v45 = v44 = v16;
            v46 = NSStringFromSelector(a2);
            *buf = 138412546;
            v56 = v45;
            v57 = 2112;
            v58 = v46;
            _os_log_error_impl(&dword_26455D000, v44, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionEndReason", buf, 0x16u);

            v16 = v44;
          }

          v22 = 0;
        }
      }

      else
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = NSStringFromSelector(a2);
          *buf = 138412546;
          v56 = v41;
          v57 = 2112;
          v58 = v42;
          _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        v22 = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        *buf = 138412546;
        v56 = v38;
        v57 = 2112;
        v58 = v39;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      v22 = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      *buf = 138412546;
      v56 = v35;
      v57 = 2112;
      v58 = v36;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v22 = 0;
  }

LABEL_17:
  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

@end