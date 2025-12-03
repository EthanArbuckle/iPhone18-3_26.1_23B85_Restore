@interface SMSessionStartMessage
- (SMSessionStartMessage)initWithCoder:(id)coder;
- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationToken:(id)token sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2;
- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2;
- (SMSessionStartMessage)initWithDictionary:(id)dictionary;
- (SMSessionStartMessage)initWithSessionID:(id)d invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)destinationType destinationMapItem:(id)item lowPowerModeWarningState:(int64_t)self0;
- (SMSessionStartMessage)initWithURL:(id)l;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (id)summaryText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStartMessage

- (SMSessionStartMessage)initWithSessionID:(id)d invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)destinationType destinationMapItem:(id)item lowPowerModeWarningState:(int64_t)self0
{
  v16 = MEMORY[0x277CBEAA8];
  itemCopy = item;
  endTimeCopy = endTime;
  timeCopy = time;
  dictCopy = dict;
  dCopy = d;
  v22 = [v16 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v24 = [(SMSessionStartMessage *)self initWithDate:v22 messageID:uUID sessionID:dCopy invitationTokenDict:dictCopy sessionType:type estimatedEndTime:timeCopy coarseEstimatedEndTime:endTimeCopy destinationType:destinationType destinationMapItem:itemCopy lowPowerModeWarningState:state];

  return v24;
}

- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationToken:(id)token sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2
{
  v32[1] = *MEMORY[0x277D85DE8];
  v31 = @"receiverHandle";
  v32[0] = token;
  v17 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  endTimeCopy = endTime;
  timeCopy = time;
  tokenCopy = token;
  iDCopy = iD;
  dCopy = d;
  dateCopy = date;
  v25 = [v17 dictionaryWithObjects:v32 forKeys:&v31 count:1];

  v26 = [(SMSessionStartMessage *)self initWithDate:dateCopy messageID:dCopy sessionID:iDCopy invitationTokenDict:v25 sessionType:type estimatedEndTime:timeCopy coarseEstimatedEndTime:endTimeCopy destinationType:destinationType destinationMapItem:itemCopy lowPowerModeWarningState:state];
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  dictCopy = dict;
  timeCopy = time;
  endTimeCopy = endTime;
  itemCopy = item;
  if (!dateCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: date";
LABEL_22:
    _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_23;
  }

  if (!dCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: messageID";
    goto LABEL_22;
  }

  if (!iDCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_22;
  }

  if (!dictCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: invitationTokenDict";
    goto LABEL_22;
  }

  if (!timeCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: estimatedEndTime";
    goto LABEL_22;
  }

  if (!type)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: sessionType != SMSessionTypeUnknown";
      goto LABEL_22;
    }

LABEL_23:

    selfCopy = 0;
    goto LABEL_24;
  }

  v31.receiver = self;
  v31.super_class = SMSessionStartMessage;
  v22 = [(SMMessage *)&v31 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_invitationTokenDict, dict);
    v23->_sessionType = type;
    objc_storeStrong(&v23->_estimatedEndTime, time);
    objc_storeStrong(&v23->_coarseEstimatedEndTime, endTime);
    v23->_destinationType = destinationType;
    objc_storeStrong(&v23->_destinationMapItem, item);
    v23->_lowPowerModeWarningState = state;
  }

  self = v23;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (SMSessionStartMessage)initWithDictionary:(id)dictionary
{
  v144 = *MEMORY[0x277D85DE8];
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

    goto LABEL_38;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      v58 = 0;
      goto LABEL_39;
    }

    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = NSStringFromSelector(a2);
    *buf = 138413058;
    v136 = v53;
    v137 = 2112;
    v138 = v54;
    v139 = 1024;
    *v140 = [objc_opt_class() messageType];
    *&v140[4] = 1024;
    *&v140[6] = intValue;
    v55 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v56 = v12;
    v57 = 34;
LABEL_61:
    _os_log_error_impl(&dword_26455D000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);

    goto LABEL_38;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v74 = objc_opt_class();
    v53 = NSStringFromClass(v74);
    v54 = NSStringFromSelector(a2);
    *buf = 138412802;
    v136 = v53;
    v137 = 2112;
    v138 = v54;
    v139 = 1024;
    *v140 = intValue2;
    v55 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v56 = v12;
    v57 = 28;
    goto LABEL_61;
  }

  v11 = [v6 valueForKey:@"sendDate"];
  v12 = v11;
  if (v11)
  {
    aSelector = a2;
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
        v116 = v17;
        v117 = v20;
        v114 = v12;
        v115 = v14;
        selfCopy = self;
        log = objc_alloc_init(MEMORY[0x277CBEB38]);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        [v6 valueForKey:@"receiverHandle"];
        v42 = LABEL_16:;

        if (v42)
        {
          v25 = v42;
        }

        else
        {
          v25 = @"receiverHandle";
        }

        v43 = [v6 valueForKey:@"sharingInvitationData"];

        v133 = v43;
        if (v43)
        {
          v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v43 options:0];
        }

        else
        {
          v41 = 0;
        }

        v44 = MEMORY[0x277CBEBC0];
        v45 = [v6 valueForKey:@"shareURL"];
        v39 = [v44 URLWithString:v45];

        v40 = [v6 valueForKey:@"participantID"];

        if (v41 && v39 && v40)
        {
          v22 = v40;
          v23 = v39;
          v24 = v133;
          while (1)
          {
            v46 = [objc_alloc(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v41 shareURL:v23 participantID:v22];

            if (v46)
            {
              [log setObject:v46 forKey:v25];
            }

            else
            {
              v47 = v23;
              v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                v49 = objc_opt_class();
                v134 = NSStringFromClass(v49);
                v50 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v136 = v134;
                v137 = 2112;
                v138 = v50;
                v51 = v50;
                _os_log_fault_impl(&dword_26455D000, v48, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,Invitation token creation failed", buf, 0x16u);
              }

              v23 = v47;
            }

            ++v26;
            v21 = v46;
            if (!v26)
            {
              [v6 valueForKey:@"receiverHandle"];
              goto LABEL_16;
            }

            v129 = v23;
            v131 = v46;
            v126 = v26;
            v27 = (v26 + 1);
            v28 = [@"receiverHandle" stringByAppendingFormat:@"%d", v27];
            v132 = [v6 valueForKey:v28];

            v29 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", v27];
            v30 = v6;
            v31 = [v6 valueForKey:v29];

            v133 = v31;
            v32 = v22;
            v33 = v31 ? [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v31 options:0] : 0;
            v34 = MEMORY[0x277CBEBC0];
            v35 = [@"shareURL" stringByAppendingFormat:@"%d", v27];
            v36 = [v30 valueForKey:v35];
            v37 = [v34 URLWithString:v36];

            v38 = [@"participantID" stringByAppendingFormat:@"%d", v27];
            v39 = v37;
            v40 = [v30 valueForKey:v38];

            v25 = v132;
            v41 = v33;
            if (!v132 || !v33 || !v37 || !v40)
            {
              break;
            }

            v22 = v40;
            v23 = v39;
            v24 = v133;
            v21 = v131;
            v6 = v30;
            v26 = v126;
          }

          v61 = v117;
          self = selfCopy;
          v21 = v131;
          v6 = v30;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              v63 = objc_opt_class();
              v64 = NSStringFromClass(v63);
              v65 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v136 = v64;
              v137 = 2112;
              v138 = v65;
              v139 = 1024;
              *v140 = v126;
              _os_log_impl(&dword_26455D000, v62, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,finished parsing invitation tokens,found %d tokens", buf, 0x1Cu);

              v61 = v117;
            }
          }

          v66 = [v6 valueForKey:@"sessionType"];
          intValue3 = [v66 intValue];

          if (intValue3)
          {
            v125 = intValue3;
            v68 = [v6 valueForKey:@"estimatedEndTime"];
            v17 = v116;
            v130 = v68;
            if (v68)
            {
              v69 = MEMORY[0x277CBEAA8];
              [v68 doubleValue];
              v127 = [v69 dateWithTimeIntervalSince1970:?];
              v70 = [v6 valueForKey:@"coarseEstimatedEndTime"];
              v123 = v70;
              if (v70)
              {
                v71 = MEMORY[0x277CBEAA8];
                [v70 doubleValue];
                v72 = [v71 dateWithTimeIntervalSince1970:?];
              }

              else
              {
                v76 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  v107 = objc_opt_class();
                  v108 = NSStringFromClass(v107);
                  v109 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v136 = v108;
                  v137 = 2112;
                  v138 = v109;
                  _os_log_error_impl(&dword_26455D000, v76, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing coarseEstimatedEndTimeNumber", buf, 0x16u);
                }

                v72 = 0;
              }

              v77 = [v6 valueForKey:@"sessionDestinationType"];
              v78 = v77;
              v124 = v72;
              if (v77)
              {
                intValue4 = [v77 intValue];
                v80 = [v6 valueForKey:@"sessionDestinationMapItem"];
                if (v80)
                {
                  v81 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v80 options:0];
                }

                else
                {
                  v81 = 0;
                }

                v86 = intValue4;
                v87 = [v6 valueForKey:@"lowPowerModeWarningState"];
                v88 = v87;
                if (v87)
                {
                  intValue5 = [v87 intValue];
                }

                else
                {
                  v90 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                  {
                    v113 = objc_opt_class();
                    v122 = NSStringFromClass(v113);
                    aSelectora = NSStringFromSelector(aSelector);
                    *buf = 138412546;
                    v136 = v122;
                    v137 = 2112;
                    v138 = aSelectora;
                    _os_log_error_impl(&dword_26455D000, v90, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", buf, 0x16u);
                  }

                  intValue5 = 0;
                }

                v82 = v124;
                v91 = [(SMSessionStartMessage *)selfCopy initWithDate:v115 messageID:v116 sessionID:v117 invitationTokenDict:log sessionType:v125 estimatedEndTime:v127 coarseEstimatedEndTime:v124 destinationType:v86 destinationMapItem:v81 lowPowerModeWarningState:intValue5];

                self = v91;
                v58 = v91;
                v21 = v131;
              }

              else
              {
                v80 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  v110 = objc_opt_class();
                  v111 = NSStringFromClass(v110);
                  v112 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v136 = v111;
                  v137 = 2112;
                  v138 = v112;
                  _os_log_error_impl(&dword_26455D000, v80, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

                  self = selfCopy;
                  v21 = v131;

                  v58 = 0;
                }

                else
                {
                  v58 = 0;
                  self = selfCopy;
                }

                v82 = v124;
              }

              v17 = v116;
              v20 = v117;
              v75 = v127;
            }

            else
            {
              v20 = v61;
              v75 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v104 = objc_opt_class();
                NSStringFromClass(v104);
                v105 = v128 = v75;
                v106 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v136 = v105;
                v137 = 2112;
                v138 = v106;
                _os_log_error_impl(&dword_26455D000, v128, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing estimatedEndTimeNumber", buf, 0x16u);

                v75 = v128;
              }

              v58 = 0;
            }

            v73 = v132;
          }

          else
          {
            v130 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            v17 = v116;
            v73 = v132;
            v20 = v61;
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              v101 = objc_opt_class();
              v102 = NSStringFromClass(v101);
              v103 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v136 = v102;
              v137 = 2112;
              v138 = v103;
              _os_log_error_impl(&dword_26455D000, v130, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

              v73 = v132;
            }

            v58 = 0;
          }
        }

        else
        {
          v130 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            v98 = objc_opt_class();
            v99 = NSStringFromClass(v98);
            v100 = NSStringFromSelector(aSelector);
            *buf = 138413314;
            v136 = v99;
            v137 = 2112;
            v138 = v100;
            v139 = 2112;
            *v140 = v41;
            *&v140[8] = 2112;
            v141 = v39;
            v142 = 2112;
            v143 = v40;
            _os_log_error_impl(&dword_26455D000, v130, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing details for Invitation token creation,sharingInvitationData:%@,shareURL:%@,participantID:%@", buf, 0x34u);
          }

          v58 = 0;
          v73 = v25;
          self = selfCopy;
          v17 = v116;
          v20 = v117;
        }

        v12 = v114;
        v14 = v115;
      }

      else
      {
        log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v95 = objc_opt_class();
          v96 = NSStringFromClass(v95);
          v97 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v136 = v96;
          v137 = 2112;
          v138 = v97;
          _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        v58 = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v92 = objc_opt_class();
        v93 = NSStringFromClass(v92);
        v94 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v136 = v93;
        v137 = 2112;
        v138 = v94;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      v58 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v83 = objc_opt_class();
      v84 = NSStringFromClass(v83);
      v85 = NSStringFromSelector(a2);
      *buf = 138412546;
      v136 = v84;
      v137 = 2112;
      v138 = v85;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v58 = 0;
  }

LABEL_39:
  v59 = *MEMORY[0x277D85DE8];
  return v58;
}

- (id)outputToDictionary
{
  v27.receiver = self;
  v27.super_class = SMSessionStartMessage;
  outputToDictionary = [(SMMessage *)&v27 outputToDictionary];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  invitationTokenDict = [(SMSessionStartMessage *)self invitationTokenDict];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__SMSessionStartMessage_outputToDictionary__block_invoke;
  v22 = &unk_279B65248;
  v24 = v25;
  v5 = outputToDictionary;
  v23 = v5;
  [invitationTokenDict enumerateKeysAndObjectsUsingBlock:&v19];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage sessionType](self, "sessionType", v19, v20, v21, v22)}];
  [v5 setObject:v6 forKey:@"sessionType"];

  v7 = MEMORY[0x277CCABB0];
  estimatedEndTime = [(SMSessionStartMessage *)self estimatedEndTime];
  [estimatedEndTime timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  [v5 setObject:v9 forKey:@"estimatedEndTime"];

  coarseEstimatedEndTime = [(SMSessionStartMessage *)self coarseEstimatedEndTime];

  if (coarseEstimatedEndTime)
  {
    v11 = MEMORY[0x277CCABB0];
    coarseEstimatedEndTime2 = [(SMSessionStartMessage *)self coarseEstimatedEndTime];
    [coarseEstimatedEndTime2 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
    [v5 setObject:v13 forKey:@"coarseEstimatedEndTime"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage destinationType](self, "destinationType")}];
  [v5 setObject:v14 forKey:@"sessionDestinationType"];

  destinationMapItem = [(SMSessionStartMessage *)self destinationMapItem];

  if (destinationMapItem)
  {
    destinationMapItem2 = [(SMSessionStartMessage *)self destinationMapItem];
    v17 = [destinationMapItem2 base64EncodedStringWithOptions:0];
    [v5 setObject:v17 forKey:@"sessionDestinationMapItem"];
  }

  _Block_object_dispose(v25, 8);

  return v5;
}

void __43__SMSessionStartMessage_outputToDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = a3;
  v8 = a2;
  if (v6 == 1)
  {
    [v5 setObject:v8 forKey:@"receiverHandle"];

    v9 = *(a1 + 32);
    v10 = [v7 sharingInvitationData];
    v11 = [v10 base64EncodedStringWithOptions:0];
    [v9 setObject:v11 forKey:@"sharingInvitationData"];

    v12 = *(a1 + 32);
    v13 = [v7 shareURL];
    v14 = [v13 absoluteString];
    [v12 setObject:v14 forKey:@"shareURL"];

    v15 = *(a1 + 32);
    v27 = [v7 participantID];

    [v15 setObject:v27 forKey:@"participantID"];
  }

  else
  {
    v16 = [@"receiverHandle" stringByAppendingFormat:@"%d", v6];
    [v5 setObject:v8 forKey:v16];

    v17 = *(a1 + 32);
    v18 = [v7 sharingInvitationData];
    v19 = [v18 base64EncodedStringWithOptions:0];
    v20 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v17 setObject:v19 forKey:v20];

    v21 = *(a1 + 32);
    v22 = [v7 shareURL];
    v23 = [v22 absoluteString];
    v24 = [@"shareURL" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v21 setObject:v23 forKey:v24];

    v25 = *(a1 + 32);
    v27 = [v7 participantID];

    v26 = [@"participantID" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v25 setObject:v27 forKey:v26];
  }
}

- (SMSessionStartMessage)initWithURL:(id)l
{
  v195 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v61 = 0;
    goto LABEL_97;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    queryItems = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(queryItems, OS_LOG_TYPE_ERROR))
    {
      v110 = objc_opt_class();
      v111 = NSStringFromClass(v110);
      v112 = NSStringFromSelector(a2);
      *buf = 138412546;
      v186 = v111;
      v187 = 2112;
      v188 = v112;
      _os_log_error_impl(&dword_26455D000, queryItems, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v61 = 0;
    goto LABEL_96;
  }

  queryItems = [v4 queryItems];
  if (!queryItems)
  {
    v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v128 = objc_opt_class();
      v129 = NSStringFromClass(v128);
      NSStringFromSelector(a2);
      v131 = v130 = v62;
      *buf = 138412546;
      v186 = v129;
      v187 = 2112;
      v188 = v131;
      _os_log_error_impl(&dword_26455D000, v130, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);

      v62 = v130;
    }

    v61 = 0;
    goto LABEL_95;
  }

  v159 = v5;
  v160 = lCopy;
  v170 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v169 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v167 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v166 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v158 = queryItems;
  v7 = queryItems;
  v8 = [v7 countByEnumeratingWithState:&v181 objects:v194 count:16];
  if (!v8)
  {
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    intValue = 0;
    v177 = 0;
    v179 = 0;
    v180 = 0;
    v173 = 0;
    v175 = 0;
    goto LABEL_58;
  }

  v9 = v8;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  intValue = 0;
  v177 = 0;
  v179 = 0;
  v180 = 0;
  v173 = 0;
  v175 = 0;
  v10 = *v182;
  do
  {
    v11 = 0;
    do
    {
      if (*v182 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v181 + 1) + 8 * v11);
      value = [v12 value];
      if (!value)
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = NSStringFromSelector(a2);
          name = [v12 name];
          *buf = 138412802;
          v186 = v31;
          v187 = 2112;
          v188 = v32;
          v189 = 2112;
          *v190 = name;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value,queryName,%@", buf, 0x20u);
        }

        goto LABEL_14;
      }

      name2 = [v12 name];
      v15 = [name2 isEqualToString:@"sendDate"];

      if (v15)
      {
        v16 = value;

        v180 = v16;
        goto LABEL_23;
      }

      name3 = [v12 name];
      v19 = [name3 isEqualToString:@"messageID"];

      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];

        v179 = v20;
      }

      else
      {
        name4 = [v12 name];
        v22 = [name4 isEqualToString:@"sessionID"];

        if (v22)
        {
          v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];

          v177 = v23;
        }

        else
        {
          name5 = [v12 name];
          v25 = [name5 isEqualToString:@"messageType"];

          if (v25)
          {
            v26 = value;

            v175 = v26;
          }

          else
          {
            name6 = [v12 name];
            v28 = [name6 isEqualToString:@"interfaceVersion"];

            if (v28)
            {
              v29 = value;

              v173 = v29;
            }

            else
            {
              name7 = [v12 name];
              v35 = [name7 hasPrefix:@"receiverHandle"];

              name8 = [v12 name];
              v17 = name8;
              if (v35)
              {
                v37 = v170;
                goto LABEL_33;
              }

              v38 = [name8 hasPrefix:@"sharingInvitationData"];

              name9 = [v12 name];
              v17 = name9;
              if (v38)
              {
                v37 = v169;
                goto LABEL_33;
              }

              v40 = [name9 hasPrefix:@"shareURL"];

              name10 = [v12 name];
              v17 = name10;
              if (v40)
              {
                v37 = v167;
                goto LABEL_33;
              }

              v42 = [name10 hasPrefix:@"participantID"];

              name11 = [v12 name];
              v17 = name11;
              if (v42)
              {
                v37 = v166;
LABEL_33:
                [v37 setObject:value forKey:v17];
LABEL_14:

                goto LABEL_23;
              }

              v44 = [name11 isEqualToString:@"sessionType"];

              if (v44)
              {
                intValue = [value intValue];
              }

              else
              {
                name12 = [v12 name];
                v46 = [name12 isEqualToString:@"estimatedEndTime"];

                if (v46)
                {
                  v47 = value;

                  v165 = v47;
                }

                else
                {
                  name13 = [v12 name];
                  v49 = [name13 isEqualToString:@"coarseEstimatedEndTime"];

                  if (v49)
                  {
                    v50 = value;

                    v164 = v50;
                  }

                  else
                  {
                    name14 = [v12 name];
                    v52 = [name14 isEqualToString:@"sessionDestinationType"];

                    if (v52)
                    {
                      v53 = value;

                      v163 = v53;
                    }

                    else
                    {
                      name15 = [v12 name];
                      v55 = [name15 isEqualToString:@"sessionDestinationMapItem"];

                      if (v55)
                      {
                        v56 = value;

                        v162 = v56;
                      }

                      else
                      {
                        name16 = [v12 name];
                        v58 = [name16 isEqualToString:@"lowPowerModeWarningState"];

                        if (v58)
                        {
                          v59 = value;

                          v161 = v59;
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

LABEL_23:

      ++v11;
    }

    while (v9 != v11);
    v60 = [v7 countByEnumeratingWithState:&v181 objects:v194 count:16];
    v9 = v60;
  }

  while (v60);
LABEL_58:

  v62 = v175;
  intValue2 = [v175 intValue];
  if (!v175 || [objc_opt_class() messageType] != intValue2)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v5 = v159;
    lCopy = v160;
    queryItems = v158;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v113 = objc_opt_class();
      v105 = NSStringFromClass(v113);
      v106 = NSStringFromSelector(a2);
      messageType = [objc_opt_class() messageType];
      *buf = 138413058;
      v186 = v105;
      v187 = 2112;
      v188 = v106;
      v189 = 1024;
      *v190 = messageType;
      *&v190[4] = 1024;
      *&v190[6] = intValue2;
      v107 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
      v108 = v68;
      v109 = 34;
      goto LABEL_104;
    }

LABEL_93:
    v61 = 0;
    v69 = v179;
    v70 = v162;
    goto LABEL_94;
  }

  intValue3 = [v173 intValue];
  v65 = intValue3;
  v5 = v159;
  lCopy = v160;
  queryItems = v158;
  if (!v173 || intValue3 != 1)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      v106 = NSStringFromSelector(a2);
      *buf = 138412802;
      v186 = v105;
      v187 = 2112;
      v188 = v106;
      v189 = 1024;
      *v190 = v65;
      v107 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
      v108 = v68;
      v109 = 28;
LABEL_104:
      _os_log_error_impl(&dword_26455D000, v108, OS_LOG_TYPE_ERROR, v107, buf, v109);

      v62 = v175;
      goto LABEL_93;
    }

    goto LABEL_93;
  }

  if (!v180)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v70 = v162;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v145 = objc_opt_class();
      v146 = NSStringFromClass(v145);
      v147 = NSStringFromSelector(a2);
      *buf = 138412546;
      v186 = v146;
      v187 = 2112;
      v188 = v147;
      _os_log_error_impl(&dword_26455D000, v68, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);

      v62 = v175;
    }

    v61 = 0;
    v69 = v179;
    goto LABEL_94;
  }

  v66 = MEMORY[0x277CBEAA8];
  [v180 doubleValue];
  v67 = [v66 dateWithTimeIntervalSince1970:?];
  v68 = v67;
  v69 = v179;
  v70 = v162;
  if (!v179)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
LABEL_116:
      v61 = 0;
      goto LABEL_138;
    }

    v124 = objc_opt_class();
    v125 = NSStringFromClass(v124);
    v126 = NSStringFromSelector(a2);
    *buf = 138412546;
    v186 = v125;
    v187 = 2112;
    v188 = v126;
    v127 = "#SafetyCache,%@,%@,missing messageID";
LABEL_140:
    _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, v127, buf, 0x16u);

    v62 = v175;
    v69 = v179;
    goto LABEL_116;
  }

  if (!v177)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    v148 = objc_opt_class();
    v125 = NSStringFromClass(v148);
    v126 = NSStringFromSelector(a2);
    *buf = 138412546;
    v186 = v125;
    v187 = 2112;
    v188 = v126;
    v127 = "#SafetyCache,%@,%@,missing sessionID";
    goto LABEL_140;
  }

  v156 = v67;
  log = objc_alloc_init(MEMORY[0x277CBEB38]);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  [v170 valueForKey:@"receiverHandle"];
  v82 = LABEL_68:;

  if (v82)
  {
    v75 = v82;
  }

  else
  {
    v75 = @"receiverHandle";
  }

  v81 = [v169 valueForKey:@"sharingInvitationData"];

  v178 = v81;
  if (v81)
  {
    v81 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v81 options:0];
  }

  v83 = MEMORY[0x277CBEBC0];
  v84 = [v167 valueForKey:@"shareURL"];
  v85 = [v83 URLWithString:v84];

  v86 = [v166 valueForKey:@"participantID"];

  if (!v81 || !v85 || !v86)
  {
    v87 = v71;
    v88 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v91 = NSStringFromSelector(a2);
      *buf = 138413314;
      v186 = v90;
      v187 = 2112;
      v188 = v91;
      v189 = 2112;
      *v190 = v81;
      *&v190[8] = 2112;
      v191 = v85;
      v192 = 2112;
      v193 = v86;
      _os_log_impl(&dword_26455D000, v88, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,missing details for Invitation token creation,sharingInvitationData:%@,shareURL:%@,participantID:%@", buf, 0x34u);
    }

    v71 = v87;
  }

  while (1)
  {
    v97 = [objc_alloc(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v81 shareURL:v85 participantID:v86];

    if (v97)
    {
      [log setObject:v97 forKey:v75];
    }

    else
    {
      v98 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = objc_opt_class();
        v100 = NSStringFromClass(v99);
        v101 = NSStringFromSelector(a2);
        *buf = 138412546;
        v186 = v100;
        v187 = 2112;
        v188 = v101;
        _os_log_impl(&dword_26455D000, v98, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,Invitation token creation failed", buf, 0x16u);
      }
    }

    ++v76;
    v71 = v97;
    v72 = v86;
    v73 = v85;
    v74 = v178;
    if (!v76)
    {
      [v170 valueForKey:@"receiverHandle"];
      goto LABEL_68;
    }

    v176 = v97;
    v77 = [@"receiverHandle" stringByAppendingFormat:@"%d", (v76 + 1)];
    v78 = [v170 valueForKey:v77];

    v79 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", (v76 + 1)];
    v80 = [v169 valueForKey:v79];

    v178 = v80;
    v81 = v80 ? [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v80 options:0] : 0;
    v92 = MEMORY[0x277CBEBC0];
    v93 = [@"shareURL" stringByAppendingFormat:@"%d", (v76 + 1)];
    v94 = [v167 valueForKey:v93];
    v85 = [v92 URLWithString:v94];

    v95 = [@"participantID" stringByAppendingFormat:@"%d", (v76 + 1)];
    v86 = [v166 valueForKey:v95];

    v96 = v78;
    if (!v78 || !v81 || !v85 || !v86)
    {
      break;
    }

    v75 = v78;
    v71 = v176;
  }

  v115 = v176;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v116 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      v117 = objc_opt_class();
      v118 = NSStringFromClass(v117);
      v119 = NSStringFromSelector(a2);
      *buf = 138412802;
      v186 = v118;
      v187 = 2112;
      v188 = v119;
      v189 = 1024;
      *v190 = v76;
      _os_log_impl(&dword_26455D000, v116, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,finished parsing invitation tokens,found %d tokens", buf, 0x1Cu);
    }
  }

  if (!intValue)
  {
    v121 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v160;
    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
LABEL_120:
      v61 = 0;
      goto LABEL_137;
    }

    v132 = objc_opt_class();
    v133 = NSStringFromClass(v132);
    v134 = NSStringFromSelector(a2);
    *buf = 138412546;
    v186 = v133;
    v187 = 2112;
    v188 = v134;
    v135 = "#SafetyCache,%@,%@,missing sessionType";
LABEL_142:
    _os_log_error_impl(&dword_26455D000, v121, OS_LOG_TYPE_ERROR, v135, buf, 0x16u);

    goto LABEL_120;
  }

  lCopy = v160;
  if (!v165)
  {
    v121 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    v149 = objc_opt_class();
    v133 = NSStringFromClass(v149);
    v134 = NSStringFromSelector(a2);
    *buf = 138412546;
    v186 = v133;
    v187 = 2112;
    v188 = v134;
    v135 = "#SafetyCache,%@,%@,missing estimatedEndTimeString";
    goto LABEL_142;
  }

  v120 = MEMORY[0x277CBEAA8];
  [v165 doubleValue];
  v121 = [v120 dateWithTimeIntervalSince1970:?];
  if (v164)
  {
    v122 = MEMORY[0x277CBEAA8];
    [v164 doubleValue];
    v123 = [v122 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v136 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      v150 = objc_opt_class();
      v151 = NSStringFromClass(v150);
      v152 = NSStringFromSelector(a2);
      *buf = 138412546;
      v186 = v151;
      v187 = 2112;
      v188 = v152;
      _os_log_error_impl(&dword_26455D000, v136, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing coarseEstimatedEndTimeString", buf, 0x16u);

      v115 = v176;
    }

    v123 = 0;
  }

  if (v163)
  {
    intValue4 = [v163 intValue];
    if (!v161 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v138 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
      {
        v139 = objc_opt_class();
        v174 = NSStringFromClass(v139);
        v140 = NSStringFromSelector(a2);
        *buf = 138412546;
        v186 = v174;
        v187 = 2112;
        v188 = v140;
        v141 = v140;
        _os_log_impl(&dword_26455D000, v138, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningState", buf, 0x16u);
      }
    }

    v142 = intValue4;
    intValue5 = [v161 intValue];
    v144 = v162;
    if (v162)
    {
      v144 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v162 options:0];
    }

    v61 = [(SMSessionStartMessage *)self initWithDate:v156 messageID:v179 sessionID:v177 invitationTokenDict:log sessionType:intValue estimatedEndTime:v121 coarseEstimatedEndTime:v123 destinationType:v142 destinationMapItem:v144 lowPowerModeWarningState:intValue5];
    self = v61;
    v115 = v176;
  }

  else
  {
    v144 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      v153 = objc_opt_class();
      v154 = NSStringFromClass(v153);
      v155 = NSStringFromSelector(a2);
      *buf = 138412546;
      v186 = v154;
      v187 = 2112;
      v188 = v155;
      _os_log_error_impl(&dword_26455D000, v144, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

      v115 = v176;
    }

    v61 = 0;
  }

LABEL_137:
  queryItems = v158;
  v5 = v159;
  v62 = v175;
  v69 = v179;
  v70 = v162;
  v68 = v156;
LABEL_138:

LABEL_94:
LABEL_95:

LABEL_96:
LABEL_97:

  v102 = *MEMORY[0x277D85DE8];
  return v61;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46.receiver = self;
  v46.super_class = SMSessionStartMessage;
  outputToURLComponents = [(SMMessage *)&v46 outputToURLComponents];
  queryItems = [outputToURLComponents queryItems];
  [v4 addObjectsFromArray:queryItems];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  invitationTokenDict = [(SMSessionStartMessage *)self invitationTokenDict];
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = __46__SMSessionStartMessage_outputToURLComponents__block_invoke;
  v41 = &unk_279B65248;
  v43 = v44;
  v8 = v4;
  v42 = v8;
  [invitationTokenDict enumerateKeysAndObjectsUsingBlock:&v38];

  v9 = objc_alloc(MEMORY[0x277CCAD18]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage sessionType](self, "sessionType", v38, v39, v40, v41)}];
  stringValue = [v10 stringValue];
  v12 = [v9 initWithName:@"sessionType" value:stringValue];
  [v8 addObject:v12];

  v13 = MEMORY[0x277CCABB0];
  estimatedEndTime = [(SMSessionStartMessage *)self estimatedEndTime];
  [estimatedEndTime timeIntervalSince1970];
  v15 = [v13 numberWithDouble:?];
  stringValue2 = [v15 stringValue];

  v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"estimatedEndTime" value:stringValue2];
  [v8 addObject:v17];

  coarseEstimatedEndTime = [(SMSessionStartMessage *)self coarseEstimatedEndTime];

  if (coarseEstimatedEndTime)
  {
    v19 = MEMORY[0x277CCABB0];
    coarseEstimatedEndTime2 = [(SMSessionStartMessage *)self coarseEstimatedEndTime];
    [coarseEstimatedEndTime2 timeIntervalSince1970];
    v21 = [v19 numberWithDouble:?];
    stringValue3 = [v21 stringValue];

    v23 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"coarseEstimatedEndTime" value:stringValue3];
    [v8 addObject:v23];
  }

  v24 = objc_alloc(MEMORY[0x277CCAD18]);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage destinationType](self, "destinationType")}];
  stringValue4 = [v25 stringValue];
  v27 = [v24 initWithName:@"sessionDestinationType" value:stringValue4];
  [v8 addObject:v27];

  destinationMapItem = [(SMSessionStartMessage *)self destinationMapItem];

  if (destinationMapItem)
  {
    v29 = objc_alloc(MEMORY[0x277CCAD18]);
    destinationMapItem2 = [(SMSessionStartMessage *)self destinationMapItem];
    v31 = [destinationMapItem2 base64EncodedStringWithOptions:0];
    v32 = [v29 initWithName:@"sessionDestinationMapItem" value:v31];
    [v8 addObject:v32];
  }

  v33 = objc_alloc(MEMORY[0x277CCAD18]);
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionStartMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  stringValue5 = [v34 stringValue];
  v36 = [v33 initWithName:@"lowPowerModeWarningState" value:stringValue5];
  [v8 addObject:v36];

  [v3 setQueryItems:v8];
  _Block_object_dispose(v44, 8);

  return v3;
}

void __46__SMSessionStartMessage_outputToURLComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = MEMORY[0x277CCAD18];
  v8 = a3;
  v9 = a2;
  v10 = [v7 alloc];
  v11 = v10;
  if (v6 == 1)
  {
    v12 = [v10 initWithName:@"receiverHandle" value:v9];

    [v5 addObject:v12];
    v13 = *(a1 + 32);
    v14 = objc_alloc(MEMORY[0x277CCAD18]);
    v15 = [v8 sharingInvitationData];
    v16 = [v15 base64EncodedStringWithOptions:0];
    v17 = [v14 initWithName:@"sharingInvitationData" value:v16];
    [v13 addObject:v17];

    v18 = *(a1 + 32);
    v19 = objc_alloc(MEMORY[0x277CCAD18]);
    v20 = [v8 shareURL];
    v21 = [v20 absoluteString];
    v22 = [v19 initWithName:@"shareURL" value:v21];
    [v18 addObject:v22];

    v23 = *(a1 + 32);
    v24 = objc_alloc(MEMORY[0x277CCAD18]);
    v43 = [v8 participantID];

    v25 = [v24 initWithName:@"participantID" value:v43];
    [v23 addObject:v25];
  }

  else
  {
    v26 = [@"receiverHandle" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v27 = [v11 initWithName:v26 value:v9];

    [v5 addObject:v27];
    v28 = *(a1 + 32);
    v29 = objc_alloc(MEMORY[0x277CCAD18]);
    v30 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v31 = [v8 sharingInvitationData];
    v32 = [v31 base64EncodedStringWithOptions:0];
    v33 = [v29 initWithName:v30 value:v32];
    [v28 addObject:v33];

    v34 = *(a1 + 32);
    v35 = objc_alloc(MEMORY[0x277CCAD18]);
    v36 = [@"shareURL" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v37 = [v8 shareURL];
    v38 = [v37 absoluteString];
    v39 = [v35 initWithName:v36 value:v38];
    [v34 addObject:v39];

    v40 = *(a1 + 32);
    v41 = objc_alloc(MEMORY[0x277CCAD18]);
    v43 = [@"participantID" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v25 = [v8 participantID];

    v42 = [v41 initWithName:v43 value:v25];
    [v40 addObject:v42];
  }
}

- (id)summaryText
{
  sessionType = [(SMSessionStartMessage *)self sessionType];
  if (sessionType > 2)
  {
    if (sessionType == 3)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"START_MESSAGE_ROUNDTRIP_DEFAULT_SUMMARY_FORMAT";
      v8 = @"Check In: Round trip";
      goto LABEL_17;
    }

    if (sessionType == 4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"START_MESSAGE_WORKOUT_BOUND_SUMMARY_FORMAT";
      v8 = @"Check In: Workout Started";
      goto LABEL_17;
    }

LABEL_11:
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CHECK_IN_MESSAGE";
    v8 = @"Check In";
    goto LABEL_17;
  }

  if (sessionType == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"START_MESSAGE_TIME_BOUND_SUMMARY_FORMAT";
    v8 = @"Check In: Timer Started";
    goto LABEL_17;
  }

  if (sessionType != 2)
  {
    goto LABEL_11;
  }

  destinationType = [(SMSessionStartMessage *)self destinationType];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  switch(destinationType)
  {
    case 3uLL:
      v7 = @"START_MESSAGE_SCHOOL_SUMMARY_FORMAT";
      v8 = @"Check In: School";
      break;
    case 2uLL:
      v7 = @"START_MESSAGE_WORK_SUMMARY_FORMAT";
      v8 = @"Check In: Work";
      break;
    case 1uLL:
      v7 = @"START_MESSAGE_HOME_SUMMARY_FORMAT";
      v8 = @"Check In: Home";
      break;
    default:
      v7 = @"START_MESSAGE_DEFAULT_DESTINATION_SUMMARY_FORMAT";
      v8 = @"Check In: Destination";
      break;
  }

LABEL_17:
  v9 = [v5 localizedStringForKey:v7 value:v8 table:0];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSessionStartMessage encodeWithCoder:]";
      *&buf[12] = 1024;
      *&buf[14] = 619;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v21.receiver = self;
  v21.super_class = SMSessionStartMessage;
  [(SMMessage *)&v21 encodeWithCoder:coderCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 0;
  invitationTokenDict = [(SMSessionStartMessage *)self invitationTokenDict];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __41__SMSessionStartMessage_encodeWithCoder___block_invoke;
  v18 = &unk_279B65248;
  v20 = buf;
  v7 = coderCopy;
  v19 = v7;
  [invitationTokenDict enumerateKeysAndObjectsUsingBlock:&v15];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionStartMessage sessionType](self, "sessionType", v15, v16, v17, v18)}];
  [v7 encodeObject:v8 forKey:@"sessionType"];

  estimatedEndTime = [(SMSessionStartMessage *)self estimatedEndTime];
  [v7 encodeObject:estimatedEndTime forKey:@"estimatedEndTime"];

  coarseEstimatedEndTime = [(SMSessionStartMessage *)self coarseEstimatedEndTime];
  [v7 encodeObject:coarseEstimatedEndTime forKey:@"coarseEstimatedEndTime"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionStartMessage destinationType](self, "destinationType")}];
  [v7 encodeObject:v11 forKey:@"sessionDestinationType"];

  destinationMapItem = [(SMSessionStartMessage *)self destinationMapItem];
  LOBYTE(v11) = destinationMapItem == 0;

  if ((v11 & 1) == 0)
  {
    destinationMapItem2 = [(SMSessionStartMessage *)self destinationMapItem];
    [v7 encodeObject:destinationMapItem2 forKey:@"sessionDestinationMapItem"];
  }

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __41__SMSessionStartMessage_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = a3;
  v8 = a2;
  if (v6 == 1)
  {
    [v5 encodeObject:v8 forKey:@"receiverHandle"];

    v9 = *(a1 + 32);
    v10 = [v7 sharingInvitationData];
    [v9 encodeObject:v10 forKey:@"sharingInvitationData"];

    v11 = *(a1 + 32);
    v12 = [v7 shareURL];
    [v11 encodeObject:v12 forKey:@"shareURL"];

    v13 = *(a1 + 32);
    v23 = [v7 participantID];

    [v13 encodeObject:v23 forKey:@"participantID"];
  }

  else
  {
    v14 = [@"receiverHandle" stringByAppendingFormat:@"%d", v6];
    [v5 encodeObject:v8 forKey:v14];

    v15 = *(a1 + 32);
    v16 = [v7 sharingInvitationData];
    v17 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v15 encodeObject:v16 forKey:v17];

    v18 = *(a1 + 32);
    v19 = [v7 shareURL];
    v20 = [@"shareURL" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v18 encodeObject:v19 forKey:v20];

    v21 = *(a1 + 32);
    v23 = [v7 participantID];

    v22 = [@"participantID" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v21 encodeObject:v23 forKey:v22];
  }
}

- (SMSessionStartMessage)initWithCoder:(id)coder
{
  v110 = *MEMORY[0x277D85DE8];
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

    goto LABEL_32;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_32:
      v43 = 0;
      goto LABEL_33;
    }

    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    *buf = 138413058;
    v102 = v37;
    v103 = 2112;
    v104 = v38;
    v105 = 1024;
    *v106 = [objc_opt_class() messageType];
    *&v106[4] = 1024;
    *&v106[6] = v7;
    v39 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v40 = v9;
    v41 = 34;
LABEL_56:
    _os_log_error_impl(&dword_26455D000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);

    goto LABEL_32;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v42 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v61 = objc_opt_class();
    v37 = NSStringFromClass(v61);
    v38 = NSStringFromSelector(a2);
    *buf = 138412802;
    v102 = v37;
    v103 = 2112;
    v104 = v38;
    v105 = 1024;
    *v106 = v42;
    v39 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v40 = v9;
    v41 = 28;
    goto LABEL_56;
  }

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      v65 = NSStringFromSelector(a2);
      *buf = 138412546;
      v102 = v64;
      v103 = 2112;
      v104 = v65;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v43 = 0;
    goto LABEL_75;
  }

  v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
  if (!v10)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(a2);
      *buf = 138412546;
      v102 = v68;
      v103 = 2112;
      v104 = v69;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
    }

    v43 = 0;
    goto LABEL_74;
  }

  v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
  v12 = v11;
  if (!v11)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      v72 = NSStringFromSelector(a2);
      *buf = 138412546;
      v102 = v71;
      v103 = 2112;
      v104 = v72;
      _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
    }

    v43 = 0;
    goto LABEL_73;
  }

  aSelector = a2;
  v88 = v11;
  v89 = v10;
  v90 = v9;
  selfCopy = self;
  log = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  for (i = 0; ; ++i)
  {
    v19 = objc_opt_class();
    if (!i)
    {
      break;
    }

    v99 = v13;
    v20 = [@"receiverHandle" stringByAppendingFormat:@"%d", (i + 1)];
    v21 = [v6 decodeObjectOfClass:v19 forKey:v20];

    v22 = objc_opt_class();
    v23 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", (i + 1)];
    v24 = [v6 decodeObjectOfClass:v22 forKey:v23];

    v25 = objc_opt_class();
    v26 = [@"shareURL" stringByAppendingFormat:@"%d", (i + 1)];
    v27 = [v6 decodeObjectOfClass:v25 forKey:v26];

    v28 = objc_opt_class();
    v29 = [@"participantID" stringByAppendingFormat:@"%d", (i + 1)];
    v30 = [v6 decodeObjectOfClass:v28 forKey:v29];

    if (!v21 || !v24 || !v27 || !v30)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v102 = v48;
          v103 = 2112;
          v104 = v49;
          v105 = 1024;
          *v106 = i;
          _os_log_impl(&dword_26455D000, v46, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,finished parsing invitation tokens,found %d tokens", buf, 0x1Cu);
        }
      }

      v50 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
      v51 = v50;
      v13 = v99;
      if (v50)
      {
        intValue = [v50 intValue];
        v98 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedEndTime"];
        if (v98)
        {
          v96 = v51;
          v97 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"coarseEstimatedEndTime"];
          v53 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationType"];
          v54 = v53;
          if (v53)
          {
            v55 = intValue;
            intValue2 = [v53 intValue];
            v57 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationMapItem"];
            v58 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
            v59 = v58;
            if (v58)
            {
              intValue3 = [v58 intValue];
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v95 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
                {
                  v66 = objc_opt_class();
                  v94 = NSStringFromClass(v66);
                  v93 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v102 = v94;
                  v103 = 2112;
                  v104 = v93;
                  _os_log_impl(&dword_26455D000, v95, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", buf, 0x16u);
                }
              }

              intValue3 = 0;
            }

            v43 = [(SMSessionStartMessage *)selfCopy initWithDate:v90 messageID:v89 sessionID:v88 invitationTokenDict:log sessionType:v55 estimatedEndTime:v98 coarseEstimatedEndTime:v97 destinationType:intValue2 destinationMapItem:v57 lowPowerModeWarningState:intValue3];

            self = v43;
          }

          else
          {
            v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v84 = objc_opt_class();
              v85 = NSStringFromClass(v84);
              v86 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v102 = v85;
              v103 = 2112;
              v104 = v86;
              _os_log_error_impl(&dword_26455D000, v57, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

              self = selfCopy;
              v43 = 0;
            }

            else
            {
              v43 = 0;
              self = selfCopy;
            }
          }

          v51 = v96;
          v62 = v97;
        }

        else
        {
          v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            self = selfCopy;
            v80 = objc_opt_class();
            v81 = NSStringFromClass(v80);
            NSStringFromSelector(aSelector);
            v83 = v82 = v62;
            *buf = 138412546;
            v102 = v81;
            v103 = 2112;
            v104 = v83;
            _os_log_error_impl(&dword_26455D000, v82, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing estimatedEndTime", buf, 0x16u);

            v62 = v82;
            v43 = 0;
          }

          else
          {
            v43 = 0;
            self = selfCopy;
          }
        }

        v13 = v99;
      }

      else
      {
        v98 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          self = selfCopy;
          v77 = objc_opt_class();
          v78 = NSStringFromClass(v77);
          v79 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v102 = v78;
          v103 = 2112;
          v104 = v79;
          _os_log_error_impl(&dword_26455D000, v98, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

          v13 = v99;
          v43 = 0;
        }

        else
        {
          v43 = 0;
          self = selfCopy;
        }
      }

      goto LABEL_72;
    }

    v14 = v30;
    v15 = v27;
    v16 = v24;
    v17 = v21;
LABEL_21:
    v32 = [objc_alloc(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v16 shareURL:v15 participantID:v14];

    if (v32)
    {
      [log setObject:v32 forKey:v17];
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v100 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v102 = v35;
        v103 = 2112;
        v104 = v100;
        _os_log_fault_impl(&dword_26455D000, v33, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,Invitation token creation failed", buf, 0x16u);
      }
    }

    v13 = v32;
  }

  v31 = [v6 decodeObjectOfClass:v19 forKey:@"receiverHandle"];

  if (v31)
  {
    v17 = v31;
  }

  else
  {
    v17 = @"receiverHandle";
  }

  v24 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInvitationData"];

  v27 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];

  v30 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"participantID"];

  if (v24 && v27 && v30)
  {
    v14 = v30;
    v15 = v27;
    v16 = v24;
    goto LABEL_21;
  }

  v51 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v73 = objc_opt_class();
    NSStringFromClass(v73);
    v75 = v74 = v13;
    v76 = NSStringFromSelector(aSelector);
    *buf = 138413314;
    v102 = v75;
    v103 = 2112;
    v104 = v76;
    v105 = 2112;
    *v106 = v24;
    *&v106[8] = 2112;
    v107 = v27;
    v108 = 2112;
    v109 = v30;
    _os_log_error_impl(&dword_26455D000, v51, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing details for Invitation token creation,sharingInvitationData:%@,shareURL:%@,participantID:%@", buf, 0x34u);

    v13 = v74;
  }

  v43 = 0;
  v21 = v17;
  self = selfCopy;
LABEL_72:

  v10 = v89;
  v9 = v90;
  v12 = v88;
LABEL_73:

LABEL_74:
LABEL_75:

LABEL_33:
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

@end