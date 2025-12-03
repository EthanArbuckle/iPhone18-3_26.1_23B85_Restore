@interface SMMessage
+ (id)createMessageFromDict:(id)dict;
+ (id)createMessageFromURL:(id)l;
+ (id)messageIDFromDict:(id)dict;
+ (id)messageIDFromURL:(id)l;
+ (id)sessionIDFromDict:(id)dict;
+ (id)sessionIDFromURL:(id)l;
+ (unint64_t)interfaceTypeFromMessageType:(unint64_t)type;
+ (unint64_t)messageTypeFromDict:(id)dict;
+ (unint64_t)messageTypeFromURL:(id)l;
- (NSString)summaryText;
- (SMMessage)initWithCoder:(id)coder;
- (SMMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD;
- (SMMessage)initWithDictionary:(id)dictionary;
- (SMMessage)initWithSessionID:(id)d;
- (SMMessage)initWithURL:(id)l;
- (id)description;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMMessage

- (SMMessage)initWithSessionID:(id)d
{
  v4 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v6 = [v4 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [(SMMessage *)self initWithDate:v6 messageID:uUID sessionID:dCopy];

  return v8;
}

- (SMMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  v12 = iDCopy;
  if (!dateCopy)
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

  if (!dCopy)
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

  if (!iDCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v19.receiver = self;
  v19.super_class = SMMessage;
  v13 = [(SMMessage *)&v19 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    v13->_interfaceVersion = 1;
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(p_isa + 3, d);
    objc_storeStrong(p_isa + 4, iD);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (SMMessage)initWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v41, 2u);
    }

    goto LABEL_13;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
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
    messageType = [objc_opt_class() messageType];
    v47 = 1024;
    v48 = intValue;
    v25 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v26 = v12;
    v27 = 34;
LABEL_27:
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, v25, &v41, v27);

    goto LABEL_13;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 == 1)
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

      selfCopy = 0;
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
        self = [(SMMessage *)self initWithDate:v14 messageID:v17 sessionID:v20];
        selfCopy = self;
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

    selfCopy = 0;
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
    messageType = intValue2;
    v25 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v26 = v12;
    v27 = 28;
    goto LABEL_27;
  }

LABEL_13:
  selfCopy = 0;
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "messageType")}];
  [v3 setObject:v4 forKey:@"messageType"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMMessage interfaceVersion](self, "interfaceVersion")}];
  [v3 setObject:v5 forKey:@"interfaceVersion"];

  v6 = MEMORY[0x277CCABB0];
  date = [(SMMessage *)self date];
  [date timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"sendDate"];

  messageID = [(SMMessage *)self messageID];
  uUIDString = [messageID UUIDString];
  [v3 setObject:uUIDString forKey:@"messageID"];

  sessionID = [(SMMessage *)self sessionID];
  uUIDString2 = [sessionID UUIDString];
  [v3 setObject:uUIDString2 forKey:@"sessionID"];

  return v3;
}

- (SMMessage)initWithURL:(id)l
{
  v85 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v36 = 0;
    goto LABEL_50;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromSelector(a2);
      *buf = 138412546;
      v77 = v46;
      v78 = 2112;
      v79 = v47;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v36 = 0;
    goto LABEL_49;
  }

  queryItems = [v4 queryItems];
  v7 = queryItems;
  if (!queryItems)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      *buf = 138412546;
      v77 = v51;
      v78 = 2112;
      v79 = v52;
      _os_log_error_impl(&dword_26455D000, v29, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);
    }

    v36 = 0;
    goto LABEL_48;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v8 = [queryItems countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (!v8)
  {
    intValue = [0 intValue];
    v29 = 0;
    v68 = 0;
    v10 = 0;
    v31 = 0;
LABEL_45:
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v48 = objc_opt_class();
    NSStringFromClass(v48);
    v40 = v70 = v31;
    NSStringFromSelector(a2);
    v41 = v71 = v8;
    messageType = [objc_opt_class() messageType];
    *buf = 138413058;
    v77 = v40;
    v78 = 2112;
    v79 = v41;
    v80 = 1024;
    v81 = messageType;
    v82 = 1024;
    v83 = intValue;
    v42 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v43 = v35;
    v44 = 34;
LABEL_54:
    _os_log_error_impl(&dword_26455D000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);

    v8 = v71;
    v31 = v70;
    goto LABEL_46;
  }

  v9 = v7;
  v64 = v5;
  v65 = lCopy;
  v70 = 0;
  v71 = 0;
  v10 = 0;
  v68 = 0;
  v69 = 0;
  v11 = *v73;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v73 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v72 + 1) + 8 * i);
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
            v17 = v71;
            v71 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
          }

          else
          {
            name3 = [v13 name];
            v24 = [name3 isEqualToString:@"sessionID"];

            if (v24)
            {
              v17 = v70;
              v70 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
            }

            else
            {
              name4 = [v13 name];
              v26 = [name4 isEqualToString:@"messageType"];

              if (v26)
              {
                v17 = v69;
                v69 = value;
              }

              else
              {
                name5 = [v13 name];
                v28 = [name5 isEqualToString:@"interfaceVersion"];

                if (!v28)
                {
                  goto LABEL_23;
                }

                v17 = v68;
                v68 = value;
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
          v77 = v19;
          v78 = 2112;
          v79 = v20;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value", buf, 0x16u);
        }
      }

LABEL_23:
    }

    v8 = [v9 countByEnumeratingWithState:&v72 objects:v84 count:16];
  }

  while (v8);
  v29 = v69;
  intValue = [v69 intValue];
  if (!v69)
  {
    v5 = v64;
    lCopy = v65;
    v7 = v9;
    v31 = v70;
    v8 = v71;
    goto LABEL_45;
  }

  v5 = v64;
  v7 = v9;
  v31 = v70;
  v8 = v71;
  if ([objc_opt_class() messageType] != intValue)
  {
    lCopy = v65;
    goto LABEL_45;
  }

  intValue2 = [v68 intValue];
  v33 = intValue2;
  if (!v68 || intValue2 != 1)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v65;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = NSStringFromSelector(a2);
    *buf = 138412802;
    v77 = v40;
    v78 = 2112;
    v79 = v41;
    v80 = 1024;
    v81 = v33;
    v42 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v43 = v35;
    v44 = 28;
    goto LABEL_54;
  }

  if (v10)
  {
    v34 = MEMORY[0x277CBEAA8];
    [v10 doubleValue];
    v35 = [v34 dateWithTimeIntervalSince1970:?];
    lCopy = v65;
    if (v71)
    {
      if (v70)
      {
        v36 = [(SMMessage *)self initWithDate:v35 messageID:v71 sessionID:v70];
        self = v36;
        goto LABEL_47;
      }

      v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = NSStringFromSelector(a2);
        *buf = 138412546;
        v77 = v62;
        v78 = 2112;
        v79 = v63;
        _os_log_error_impl(&dword_26455D000, v54, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);

        v8 = v71;
      }

      v31 = 0;
    }

    else
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = NSStringFromSelector(a2);
        *buf = 138412546;
        v77 = v59;
        v78 = 2112;
        v79 = v60;
        _os_log_error_impl(&dword_26455D000, v53, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);

        v31 = v70;
      }

      v8 = 0;
    }
  }

  else
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v65;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(a2);
      *buf = 138412546;
      v77 = v56;
      v78 = 2112;
      v79 = v57;
      _os_log_error_impl(&dword_26455D000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);

      v31 = v70;
    }

    v10 = 0;
  }

LABEL_46:
  v36 = 0;
LABEL_47:

LABEL_48:
LABEL_49:

LABEL_50:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc(MEMORY[0x277CCAD18]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "messageType")}];
  stringValue = [v6 stringValue];
  v8 = [v5 initWithName:@"messageType" value:stringValue];
  [v4 addObject:v8];

  v9 = objc_alloc(MEMORY[0x277CCAD18]);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMMessage interfaceVersion](self, "interfaceVersion")}];
  stringValue2 = [v10 stringValue];
  v12 = [v9 initWithName:@"interfaceVersion" value:stringValue2];
  [v4 addObject:v12];

  v13 = MEMORY[0x277CCABB0];
  date = [(SMMessage *)self date];
  [date timeIntervalSince1970];
  v15 = [v13 numberWithDouble:?];
  stringValue3 = [v15 stringValue];

  v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sendDate" value:stringValue3];
  [v4 addObject:v17];

  v18 = objc_alloc(MEMORY[0x277CCAD18]);
  messageID = [(SMMessage *)self messageID];
  uUIDString = [messageID UUIDString];
  v21 = [v18 initWithName:@"messageID" value:uUIDString];
  [v4 addObject:v21];

  v22 = objc_alloc(MEMORY[0x277CCAD18]);
  sessionID = [(SMMessage *)self sessionID];
  uUIDString2 = [sessionID UUIDString];
  v25 = [v22 initWithName:@"sessionID" value:uUIDString2];
  [v4 addObject:v25];

  [v3 setQueryItems:v4];

  return v3;
}

+ (id)createMessageFromDict:(id)dict
{
  v92 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if (dictCopy)
  {
    switch([objc_opt_class() messageTypeFromDict:dictCopy])
    {
      case 0:
        v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_104;
        }

        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        v88 = 138412546;
        v89 = v7;
        v90 = 2112;
        v91 = v8;
        v9 = "#SafetyCache,%@,%@,SMMessageTypeUnknown";
        goto LABEL_106;
      case 1:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v35;
            v90 = 2112;
            v91 = v36;
            _os_log_impl(&dword_26455D000, v33, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStart", &v88, 0x16u);
          }
        }

        v16 = SMSessionStartMessage;
        goto LABEL_99;
      case 2:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v51;
            v90 = 2112;
            v91 = v52;
            _os_log_impl(&dword_26455D000, v49, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionEnd", &v88, 0x16u);
          }
        }

        v16 = SMSessionEndMessage;
        goto LABEL_99;
      case 3:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v47;
            v90 = 2112;
            v91 = v48;
            _os_log_impl(&dword_26455D000, v45, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyRelease", &v88, 0x16u);
          }
        }

        v16 = SMKeyReleaseMessage;
        goto LABEL_99;
      case 6:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v27;
            v90 = 2112;
            v91 = v28;
            _os_log_impl(&dword_26455D000, v25, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeCacheUpdated", &v88, 0x16u);
          }
        }

        v16 = SMCacheUpdatedMessage;
        goto LABEL_99;
      case 7:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v39;
            v90 = 2112;
            v91 = v40;
            _os_log_impl(&dword_26455D000, v37, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSync", &v88, 0x16u);
          }
        }

        v16 = SMSessionStateSyncMessage;
        goto LABEL_99;
      case 8:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = objc_opt_class();
            v55 = NSStringFromClass(v54);
            v56 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v55;
            v90 = 2112;
            v91 = v56;
            _os_log_impl(&dword_26455D000, v53, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeHandoff", &v88, 0x16u);
          }
        }

        v16 = SMSessionHandoffMessage;
        goto LABEL_99;
      case 9:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            v60 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v59;
            v90 = 2112;
            v91 = v60;
            _os_log_impl(&dword_26455D000, v57, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeHandoffAck", &v88, 0x16u);
          }
        }

        v16 = SMSessionHandoffAckMessage;
        goto LABEL_99;
      case 10:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v73 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v74 = objc_opt_class();
            v75 = NSStringFromClass(v74);
            v76 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v75;
            v90 = 2112;
            v91 = v76;
            _os_log_impl(&dword_26455D000, v73, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMEstimatedEndTimeUpdateMessage", &v88, 0x16u);
          }
        }

        v16 = SMEstimatedEndTimeUpdateMessage;
        goto LABEL_99;
      case 11:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v69 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = objc_opt_class();
            v71 = NSStringFromClass(v70);
            v72 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v71;
            v90 = 2112;
            v91 = v72;
            _os_log_impl(&dword_26455D000, v69, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMEmergencyContactsNotifiedSyncMessage", &v88, 0x16u);
          }
        }

        v16 = SMEmergencyContactsNotifiedSyncMessage;
        goto LABEL_99;
      case 12:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v23;
            v90 = 2112;
            v91 = v24;
            _os_log_impl(&dword_26455D000, v21, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStartInfoRequest", &v88, 0x16u);
          }
        }

        v16 = SMSessionStartInfoRequestMessage;
        goto LABEL_99;
      case 13:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v43;
            v90 = 2112;
            v91 = v44;
            _os_log_impl(&dword_26455D000, v41, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStartInfo", &v88, 0x16u);
          }
        }

        v16 = SMSessionStartInfoMessage;
        goto LABEL_99;
      case 14:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v31;
            v90 = 2112;
            v91 = v32;
            _os_log_impl(&dword_26455D000, v29, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfoRequest", &v88, 0x16u);
          }
        }

        v16 = SMKeyReleaseInfoRequestMessage;
        goto LABEL_99;
      case 15:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v19;
            v90 = 2112;
            v91 = v20;
            _os_log_impl(&dword_26455D000, v17, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfo", &v88, 0x16u);
          }
        }

        v16 = SMKeyReleaseInfoMessage;
        goto LABEL_99;
      case 16:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            v64 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v63;
            v90 = 2112;
            v91 = v64;
            _os_log_impl(&dword_26455D000, v61, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeStateUpdateReq", &v88, 0x16u);
          }
        }

        v16 = SMSessionStateUpdateReqMessage;
        goto LABEL_99;
      case 17:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            v68 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v67;
            v90 = 2112;
            v91 = v68;
            _os_log_impl(&dword_26455D000, v65, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionEndRemoteControl", &v88, 0x16u);
          }
        }

        v16 = SMSessionEndRemoteControlMessage;
        goto LABEL_99;
      case 18:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            v84 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v83;
            v90 = 2112;
            v91 = v84;
            _os_log_impl(&dword_26455D000, v81, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMSessionModifyConfigRemoteControlMessage", &v88, 0x16u);
          }
        }

        v16 = SMSessionModifyConfigRemoteControlMessage;
        goto LABEL_99;
      case 19:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v77 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = objc_opt_class();
            v79 = NSStringFromClass(v78);
            v80 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v79;
            v90 = 2112;
            v91 = v80;
            _os_log_impl(&dword_26455D000, v77, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMResponseToTriggerPromptRemoteControlMessage", &v88, 0x16u);
          }
        }

        v16 = SMResponseToTriggerPromptRemoteControlMessage;
        goto LABEL_99;
      case 20:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromSelector(a2);
            v88 = 138412546;
            v89 = v14;
            v90 = 2112;
            v91 = v15;
            _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMLowPowerModeWarningStateUpdateMessage", &v88, 0x16u);
          }
        }

        v16 = SMLowPowerModeWarningStateUpdateMessage;
LABEL_99:
        v11 = [[v16 alloc] initWithDictionary:dictCopy];
        goto LABEL_100;
      default:
        v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v87 = objc_opt_class();
          v7 = NSStringFromClass(v87);
          v8 = NSStringFromSelector(a2);
          v88 = 138412546;
          v89 = v7;
          v90 = 2112;
          v91 = v8;
          v9 = "#SafetyCache,%@,%@,unknown message type";
LABEL_106:
          _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, v9, &v88, 0x16u);
        }

LABEL_104:

        goto LABEL_8;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v88) = 0;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v88, 2u);
  }

LABEL_8:
  v11 = 0;
LABEL_100:

  v85 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)createMessageFromURL:(id)l
{
  v49 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v45) = 0;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", &v45, 2u);
    }

    goto LABEL_56;
  }

  v5 = [objc_opt_class() messageTypeFromURL:lCopy];
  if (v5 > 5)
  {
    if (v5 > 13)
    {
      if (v5 == 14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = NSStringFromSelector(a2);
            v45 = 138412546;
            v46 = v39;
            v47 = 2112;
            v48 = v40;
            _os_log_impl(&dword_26455D000, v37, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfoRequest", &v45, 0x16u);
          }
        }

        v10 = SMKeyReleaseInfoRequestMessage;
        goto LABEL_53;
      }

      if (v5 == 15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = NSStringFromSelector(a2);
            v45 = 138412546;
            v46 = v22;
            v47 = 2112;
            v48 = v23;
            _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfo", &v45, 0x16u);
          }
        }

        v10 = SMKeyReleaseInfoMessage;
        goto LABEL_53;
      }
    }

    else
    {
      if (v5 == 6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            v45 = 138412546;
            v46 = v31;
            v47 = 2112;
            v48 = v32;
            _os_log_impl(&dword_26455D000, v29, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeCacheUpdated", &v45, 0x16u);
          }
        }

        v10 = SMCacheUpdatedMessage;
        goto LABEL_53;
      }

      if (v5 == 13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromSelector(a2);
            v45 = 138412546;
            v46 = v14;
            v47 = 2112;
            v48 = v15;
            _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStartInfo", &v45, 0x16u);
          }
        }

        v10 = SMSessionStartInfoMessage;
        goto LABEL_53;
      }
    }

LABEL_54:
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v44 = objc_opt_class();
    v26 = NSStringFromClass(v44);
    v27 = NSStringFromSelector(a2);
    v45 = 138412546;
    v46 = v26;
    v47 = 2112;
    v48 = v27;
    v28 = "#SafetyCache,%@,%@,unknown message type";
LABEL_61:
    _os_log_error_impl(&dword_26455D000, v24, OS_LOG_TYPE_ERROR, v28, &v45, 0x16u);

    goto LABEL_55;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(a2);
          v45 = 138412546;
          v46 = v35;
          v47 = 2112;
          v48 = v36;
          _os_log_impl(&dword_26455D000, v33, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionEnd", &v45, 0x16u);
        }
      }

      v10 = SMSessionEndMessage;
      goto LABEL_53;
    }

    if (v5 == 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(a2);
          v45 = 138412546;
          v46 = v18;
          v47 = 2112;
          v48 = v19;
          _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyRelease", &v45, 0x16u);
        }
      }

      v10 = SMKeyReleaseMessage;
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = NSStringFromSelector(a2);
          v45 = 138412546;
          v46 = v8;
          v47 = 2112;
          v48 = v9;
          _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStart", &v45, 0x16u);
        }
      }

      v10 = SMSessionStartMessage;
LABEL_53:
      v41 = [[v10 alloc] initWithURL:lCopy];
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v45 = 138412546;
    v46 = v26;
    v47 = 2112;
    v48 = v27;
    v28 = "#SafetyCache,%@,%@,SMMessageTypeUnknown";
    goto LABEL_61;
  }

LABEL_55:

LABEL_56:
  v41 = 0;
LABEL_57:

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (unint64_t)interfaceTypeFromMessageType:(unint64_t)type
{
  if (type - 1 > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_2645DA8C0[type - 1];
  }
}

+ (unint64_t)messageTypeFromDict:(id)dict
{
  if (dict)
  {
    v3 = [dict valueForKey:@"messageType"];
    intValue = [v3 intValue];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", v7, 2u);
    }

    return 0;
  }

  return intValue;
}

+ (unint64_t)messageTypeFromURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          name = [v10 name];
          v12 = [name isEqualToString:@"messageType"];

          if (v12)
          {
            value = [v10 value];
            intValue = [value intValue];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    intValue = 0;
LABEL_12:
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    intValue = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return intValue;
}

+ (id)messageIDFromDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [dictCopy valueForKey:@"messageID"];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)messageIDFromURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v21 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"messageID"];

          if (v12)
          {
            v14 = objc_alloc(MEMORY[0x277CCAD78]);
            value = [v10 value];
            v13 = [v14 initWithUUIDString:value];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)sessionIDFromDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [dictCopy valueForKey:@"sessionID"];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)sessionIDFromURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v21 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"sessionID"];

          if (v12)
          {
            v14 = objc_alloc(MEMORY[0x277CCAD78]);
            value = [v10 value];
            v13 = [v14 initWithUUIDString:value];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  outputToDictionary = [(SMMessage *)self outputToDictionary];
  v4 = [v2 stringWithFormat:@"%@", outputToDictionary];

  return v4;
}

- (NSString)summaryText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHECK_IN_MESSAGE" value:@"Check In" table:0];

  return v3;
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
      v10 = 136315394;
      v11 = "[SMMessage encodeWithCoder:]";
      v12 = 1024;
      v13 = 559;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", &v10, 0x12u);
    }
  }

  [coderCopy encodeInteger:objc_msgSend(objc_opt_class() forKey:{"messageType"), @"messageType"}];
  [coderCopy encodeInteger:-[SMMessage interfaceVersion](self forKey:{"interfaceVersion"), @"interfaceVersion"}];
  date = [(SMMessage *)self date];
  [coderCopy encodeObject:date forKey:@"sendDate"];

  messageID = [(SMMessage *)self messageID];
  [coderCopy encodeObject:messageID forKey:@"messageID"];

  sessionID = [(SMMessage *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  v9 = *MEMORY[0x277D85DE8];
}

- (SMMessage)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v34) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v34, 2u);
    }

    goto LABEL_13;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
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
    messageType = [objc_opt_class() messageType];
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

      selfCopy = 0;
      goto LABEL_25;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = v11;
        self = [(SMMessage *)self initWithDate:v9 messageID:v10 sessionID:v11];
        selfCopy = self;
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

    selfCopy = 0;
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
    messageType = v20;
    v17 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v18 = v9;
    v19 = 28;
    goto LABEL_27;
  }

LABEL_13:
  selfCopy = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end