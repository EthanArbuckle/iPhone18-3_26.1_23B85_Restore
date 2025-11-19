@interface SMSessionManagerState
+ (id)convertEstimatedEndDateStatusToString:(unint64_t)a3;
+ (id)convertSessionStateToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTimerExtensionValid:(double)a3;
- (SMSessionManagerState)init;
- (SMSessionManagerState)initWithCoder:(id)a3;
- (SMSessionManagerState)initWithDictionary:(id)a3;
- (SMSessionManagerState)initWithSessionState:(unint64_t)a3 configuration:(id)a4 userTriggerResponse:(int64_t)a5 monitorContext:(id)a6 allowReadToken:(id)a7 safetyCacheKey:(id)a8 startMessageGUID:(id)a9 scheduledSendMessageGUID:(id)a10 scheduledSendMessageDate:(id)a11 activeDeviceIdentifier:(id)a12 estimatedEndDate:(id)a13 coarseEstimatedEndDate:(id)a14 estimatedEndDateStatus:(unint64_t)a15 sessionEndReason:(unint64_t)a16 activePairedDeviceIdentifier:(id)a17;
- (SMSessionManagerState)initWithSessionState:(unint64_t)a3 configuration:(id)a4 userTriggerResponse:(int64_t)a5 monitorContext:(id)a6 date:(id)a7 location:(id)a8 allowReadToken:(id)a9 safetyCacheKey:(id)a10 startMessageGUID:(id)a11 scheduledSendMessageGUID:(id)a12 scheduledSendMessageDate:(id)a13 activeDeviceIdentifier:(id)a14 estimatedEndDate:(id)a15 coarseEstimatedEndDate:(id)a16 estimatedEndDateStatus:(unint64_t)a17 sessionEndReason:(unint64_t)a18 sessionStateTransitionDate:(id)a19 activePairedDeviceIdentifier:(id)a20;
- (id)cacheReleaseDate;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionManagerState

- (SMSessionManagerState)init
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(SMSessionManagerState *)self initWithSessionState:0 configuration:0 userTriggerResponse:0 monitorContext:0 date:v3 location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:0 estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:0 sessionStateTransitionDate:v4 activePairedDeviceIdentifier:0];

  return v5;
}

- (SMSessionManagerState)initWithSessionState:(unint64_t)a3 configuration:(id)a4 userTriggerResponse:(int64_t)a5 monitorContext:(id)a6 allowReadToken:(id)a7 safetyCacheKey:(id)a8 startMessageGUID:(id)a9 scheduledSendMessageGUID:(id)a10 scheduledSendMessageDate:(id)a11 activeDeviceIdentifier:(id)a12 estimatedEndDate:(id)a13 coarseEstimatedEndDate:(id)a14 estimatedEndDateStatus:(unint64_t)a15 sessionEndReason:(unint64_t)a16 activePairedDeviceIdentifier:(id)a17
{
  v29 = MEMORY[0x277CBEAA8];
  v33 = a17;
  v32 = a14;
  v25 = a13;
  v28 = a12;
  v27 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v31 = a7;
  v26 = a6;
  v22 = a4;
  v23 = [v29 date];
  v35 = [MEMORY[0x277CBEAA8] date];
  v39 = [(SMSessionManagerState *)self initWithSessionState:a3 configuration:v22 userTriggerResponse:a5 monitorContext:v26 date:v23 location:0 allowReadToken:v31 safetyCacheKey:v21 startMessageGUID:v20 scheduledSendMessageGUID:v19 scheduledSendMessageDate:v27 activeDeviceIdentifier:v28 estimatedEndDate:v25 coarseEstimatedEndDate:v32 estimatedEndDateStatus:a15 sessionEndReason:a16 sessionStateTransitionDate:v35 activePairedDeviceIdentifier:v33];

  return v39;
}

- (SMSessionManagerState)initWithSessionState:(unint64_t)a3 configuration:(id)a4 userTriggerResponse:(int64_t)a5 monitorContext:(id)a6 date:(id)a7 location:(id)a8 allowReadToken:(id)a9 safetyCacheKey:(id)a10 startMessageGUID:(id)a11 scheduledSendMessageGUID:(id)a12 scheduledSendMessageDate:(id)a13 activeDeviceIdentifier:(id)a14 estimatedEndDate:(id)a15 coarseEstimatedEndDate:(id)a16 estimatedEndDateStatus:(unint64_t)a17 sessionEndReason:(unint64_t)a18 sessionStateTransitionDate:(id)a19 activePairedDeviceIdentifier:(id)a20
{
  v53 = a4;
  v52 = a6;
  obj = a7;
  v51 = a7;
  v46 = a8;
  v50 = a8;
  v54 = a9;
  v23 = a10;
  v24 = a11;
  v49 = a12;
  v48 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a19;
  v29 = a20;
  v55.receiver = self;
  v55.super_class = SMSessionManagerState;
  v30 = [(SMSessionManagerState *)&v55 init];
  v31 = v30;
  if (v30)
  {
    v30->_sessionState = a3;
    v32 = [v53 copy];
    configuration = v31->_configuration;
    v31->_configuration = v32;

    v31->_userTriggerResponse = a5;
    v34 = [v52 copy];
    monitorContext = v31->_monitorContext;
    v31->_monitorContext = v34;

    objc_storeStrong(&v31->_date, obj);
    objc_storeStrong(&v31->_location, v46);
    v36 = [v54 copy];
    allowReadToken = v31->_allowReadToken;
    v31->_allowReadToken = v36;

    v38 = [v23 copy];
    safetyCacheKey = v31->_safetyCacheKey;
    v31->_safetyCacheKey = v38;

    v40 = [v24 copy];
    startMessageGUID = v31->_startMessageGUID;
    v31->_startMessageGUID = v40;

    objc_storeStrong(&v31->_scheduledSendMessageGUID, a12);
    objc_storeStrong(&v31->_scheduledSendMessageDate, a13);
    objc_storeStrong(&v31->_activeDeviceIdentifier, a14);
    objc_storeStrong(&v31->_estimatedEndDate, a15);
    objc_storeStrong(&v31->_coarseEstimatedEndDate, a16);
    v31->_estimatedEndDateStatus = a17;
    v31->_sessionEndReason = a18;
    objc_storeStrong(&v31->_sessionStateTransitionDate, a19);
    objc_storeStrong(&v31->_activePairedDeviceIdentifier, a20);
  }

  return v31;
}

+ (id)convertSessionStateToString:(unint64_t)a3
{
  if (a3 < 0xF && ((0x5F97u >> a3) & 1) != 0)
  {
    v4 = off_279B64C48[a3];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported (%lu)", a3];
  }

  return v4;
}

+ (id)convertEstimatedEndDateStatusToString:(unint64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported (%lu)", a3];
  }

  else
  {
    v4 = off_279B64CC0[a3];
  }

  return v4;
}

- (id)cacheReleaseDate
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  if ([(SMSessionManagerState *)self sessionState]== 9)
  {
    v4 = &SMTimerEndedPromptTimerDuration;
  }

  else if ([(SMSessionManagerState *)self sessionState]== 7)
  {
    v4 = &SMDestinationAnomalyPromptTimerDuration;
  }

  else if ([(SMSessionManagerState *)self sessionState]== 8)
  {
    v4 = &SMRoundTripAnomalyPromptTimerDuration;
  }

  else
  {
    if ([(SMSessionManagerState *)self sessionState]!= 14)
    {
      goto LABEL_10;
    }

    v4 = &SMWorkoutSessionEndedExtensionTimerDuration;
  }

  v5 = [(SMSessionManagerState *)self sessionStateTransitionDate];
  v6 = [v5 dateByAddingTimeInterval:*v4];

  v3 = v6;
LABEL_10:

  return v3;
}

- (SMSessionManagerState)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeIntegerForKey:@"__kSMSessionManagerStateStateKey"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateConfigurationKey"];
  v18 = [v3 decodeIntegerForKey:@"__kSMSessionManagerStateUserTriggerResposeKey"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateMonitorContextKey"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateDateKey"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateLocationKey"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateAllowReadTokenKey"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];
  v6 = [v3 decodeIntegerForKey:@"__kSMSessionManagerStateEstimatedEndDateStatusKey"];
  v7 = [v3 decodeIntForKey:@"__kSMSessionManagerStateSessionEndReasonKey"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];

  v23 = [(SMSessionManagerState *)self initWithSessionState:v20 configuration:v24 userTriggerResponse:v18 monitorContext:v21 date:v19 location:v17 allowReadToken:v16 safetyCacheKey:v15 startMessageGUID:v14 scheduledSendMessageGUID:v13 scheduledSendMessageDate:v12 activeDeviceIdentifier:v11 estimatedEndDate:v4 coarseEstimatedEndDate:v5 estimatedEndDateStatus:v6 sessionEndReason:v7 sessionStateTransitionDate:v8 activePairedDeviceIdentifier:v9];
  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SMSessionManagerState sessionState](self forKey:{"sessionState"), @"__kSMSessionManagerStateStateKey"}];
  v5 = [(SMSessionManagerState *)self configuration];
  [v4 encodeObject:v5 forKey:@"__kSMSessionManagerStateConfigurationKey"];

  [v4 encodeInteger:-[SMSessionManagerState userTriggerResponse](self forKey:{"userTriggerResponse"), @"__kSMSessionManagerStateUserTriggerResposeKey"}];
  v6 = [(SMSessionManagerState *)self monitorContext];
  [v4 encodeObject:v6 forKey:@"__kSMSessionManagerStateMonitorContextKey"];

  v7 = [(SMSessionManagerState *)self date];
  [v4 encodeObject:v7 forKey:@"__kSMSessionManagerStateDateKey"];

  v8 = [(SMSessionManagerState *)self location];
  [v4 encodeObject:v8 forKey:@"__kSMSessionManagerStateLocationKey"];

  v9 = [(SMSessionManagerState *)self allowReadToken];
  [v4 encodeObject:v9 forKey:@"__kSMSessionManagerStateAllowReadTokenKey"];

  v10 = [(SMSessionManagerState *)self safetyCacheKey];
  [v4 encodeObject:v10 forKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];

  v11 = [(SMSessionManagerState *)self startMessageGUID];
  [v4 encodeObject:v11 forKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];

  v12 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  [v4 encodeObject:v12 forKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];

  v13 = [(SMSessionManagerState *)self scheduledSendMessageDate];
  [v4 encodeObject:v13 forKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];

  v14 = [(SMSessionManagerState *)self activeDeviceIdentifier];
  [v4 encodeObject:v14 forKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];

  v15 = [(SMSessionManagerState *)self estimatedEndDate];
  [v4 encodeObject:v15 forKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];

  v16 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  [v4 encodeObject:v16 forKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];

  [v4 encodeInteger:-[SMSessionManagerState estimatedEndDateStatus](self forKey:{"estimatedEndDateStatus"), @"__kSMSessionManagerStateEstimatedEndDateStatusKey"}];
  [v4 encodeInteger:-[SMSessionManagerState sessionEndReason](self forKey:{"sessionEndReason"), @"__kSMSessionManagerStateSessionEndReasonKey"}];
  v17 = [(SMSessionManagerState *)self sessionStateTransitionDate];
  [v4 encodeObject:v17 forKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];

  v18 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  [v4 encodeObject:v18 forKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v23 = [SMSessionManagerMutableState allocWithZone:a3];
  v22 = [(SMSessionManagerState *)self sessionState];
  v21 = [(SMSessionManagerState *)self configuration];
  v20 = [(SMSessionManagerState *)self userTriggerResponse];
  v19 = [(SMSessionManagerState *)self monitorContext];
  v18 = [(SMSessionManagerState *)self date];
  v17 = [(SMSessionManagerState *)self location];
  v15 = [(SMSessionManagerState *)self allowReadToken];
  v14 = [(SMSessionManagerState *)self safetyCacheKey];
  v13 = [(SMSessionManagerState *)self startMessageGUID];
  v16 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  v11 = [(SMSessionManagerState *)self scheduledSendMessageDate];
  v12 = [(SMSessionManagerState *)self activeDeviceIdentifier];
  v4 = [(SMSessionManagerState *)self estimatedEndDate];
  v5 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  v6 = [(SMSessionManagerState *)self estimatedEndDateStatus];
  v7 = [(SMSessionManagerState *)self sessionEndReason];
  v8 = [(SMSessionManagerState *)self sessionStateTransitionDate];
  v9 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  v24 = [(SMSessionManagerState *)v23 initWithSessionState:v22 configuration:v21 userTriggerResponse:v20 monitorContext:v19 date:v18 location:v17 allowReadToken:v15 safetyCacheKey:v14 startMessageGUID:v13 scheduledSendMessageGUID:v16 scheduledSendMessageDate:v11 activeDeviceIdentifier:v12 estimatedEndDate:v4 coarseEstimatedEndDate:v5 estimatedEndDateStatus:v6 sessionEndReason:v7 sessionStateTransitionDate:v8 activePairedDeviceIdentifier:v9];

  return v24;
}

- (unint64_t)hash
{
  v3 = [(SMSessionManagerState *)self sessionState];
  v35 = [(SMSessionManagerState *)self configuration];
  v4 = [v35 hash];
  v5 = v4 ^ v3 ^ [(SMSessionManagerState *)self userTriggerResponse];
  v34 = [(SMSessionManagerState *)self monitorContext];
  v6 = [v34 hash];
  v33 = [(SMSessionManagerState *)self date];
  v7 = v5 ^ v6 ^ [v33 hash];
  v32 = [(SMSessionManagerState *)self location];
  v8 = [v32 hash];
  v31 = [(SMSessionManagerState *)self allowReadToken];
  v9 = v8 ^ [v31 hash];
  v30 = [(SMSessionManagerState *)self safetyCacheKey];
  v10 = v7 ^ v9 ^ [v30 hash];
  v11 = [(SMSessionManagerState *)self startMessageGUID];
  v12 = [v11 hash];
  v13 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  v14 = v12 ^ [v13 hash];
  v15 = [(SMSessionManagerState *)self scheduledSendMessageDate];
  v16 = v14 ^ [v15 hash];
  v17 = [(SMSessionManagerState *)self activeDeviceIdentifier];
  v18 = v10 ^ v16 ^ [v17 hash];
  v19 = [(SMSessionManagerState *)self estimatedEndDate];
  v20 = [v19 hash];
  v21 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(SMSessionManagerState *)self estimatedEndDateStatus];
  v24 = v23 ^ [(SMSessionManagerState *)self sessionEndReason];
  v25 = [(SMSessionManagerState *)self sessionStateTransitionDate];
  v26 = v18 ^ v24 ^ [v25 hash];
  v27 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  v28 = [v27 hash];

  return v26 ^ v28;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SMSessionManagerState *)self sessionState];
      if (v8 != [(SMSessionManagerState *)v7 sessionState])
      {
        v11 = 0;
LABEL_90:

        goto LABEL_91;
      }

      v9 = [(SMSessionManagerState *)self configuration];
      v10 = [(SMSessionManagerState *)v7 configuration];
      if (v9 != v10)
      {
        v3 = [(SMSessionManagerState *)self configuration];
        v4 = [(SMSessionManagerState *)v7 configuration];
        if (![v3 isEqual:v4])
        {
          v11 = 0;
          goto LABEL_88;
        }
      }

      v12 = [(SMSessionManagerState *)self userTriggerResponse];
      if (v12 != [(SMSessionManagerState *)v7 userTriggerResponse])
      {
        v11 = 0;
        goto LABEL_87;
      }

      v13 = [(SMSessionManagerState *)self monitorContext];
      v14 = [(SMSessionManagerState *)v7 monitorContext];
      if (v13 == v14)
      {
        v121 = v13;
      }

      else
      {
        v15 = [(SMSessionManagerState *)self monitorContext];
        v120 = [(SMSessionManagerState *)v7 monitorContext];
        if (![v15 isEqual:?])
        {
          v11 = 0;
          goto LABEL_85;
        }

        v118 = v15;
        v121 = v13;
      }

      v16 = [(SMSessionManagerState *)self date];
      [v16 timeIntervalSince1970];
      v18 = v17;
      v19 = [(SMSessionManagerState *)v7 date];
      [v19 timeIntervalSince1970];
      if (v18 != v20)
      {

        v11 = 0;
        v13 = v121;
        goto LABEL_84;
      }

      v119 = v19;
      v117 = v16;
      v116 = [(SMSessionManagerState *)self location];
      [v116 coordinate];
      v22 = v21;
      v115 = [(SMSessionManagerState *)v7 location];
      [v115 coordinate];
      v24 = v23;
      if (v22 == v23)
      {
        v28 = v19;
      }

      else
      {
        v112 = [(SMSessionManagerState *)self location];
        [v112 coordinate];
        v26 = v25;
        v111 = [(SMSessionManagerState *)v7 location];
        [v111 coordinate];
        v28 = v19;
        if (vabdd_f64(v26, v27) >= 2.22044605e-16)
        {
          v11 = 0;
          v13 = v121;
          goto LABEL_82;
        }
      }

      v114 = [(SMSessionManagerState *)self location];
      [v114 coordinate];
      v30 = v29;
      v113 = [(SMSessionManagerState *)v7 location];
      [v113 coordinate];
      v32 = v31;
      if (v30 == v31)
      {
        v109 = v14;
      }

      else
      {
        v107 = [(SMSessionManagerState *)self location];
        [v107 coordinate];
        v34 = v33;
        v106 = [(SMSessionManagerState *)v7 location];
        [v106 coordinate];
        if (vabdd_f64(v34, v35) >= 2.22044605e-16)
        {
          v11 = 0;
          v13 = v121;
LABEL_80:

LABEL_81:
          if (v22 == v24)
          {
LABEL_83:

LABEL_84:
            v15 = v118;
            if (v13 == v14)
            {
LABEL_86:

LABEL_87:
              if (v9 == v10)
              {
LABEL_89:

                goto LABEL_90;
              }

LABEL_88:

              goto LABEL_89;
            }

LABEL_85:

            goto LABEL_86;
          }

LABEL_82:

          goto LABEL_83;
        }

        v109 = v14;
      }

      v36 = [(SMSessionManagerState *)self allowReadToken];
      [(SMSessionManagerState *)v7 allowReadToken];
      v108 = v110 = v36;
      if (v36 != v108)
      {
        v37 = [(SMSessionManagerState *)self allowReadToken];
        v103 = [(SMSessionManagerState *)v7 allowReadToken];
        v104 = v37;
        if (![v37 isEqual:v103])
        {
          v11 = 0;
          v13 = v121;
          v38 = v108;
LABEL_78:

LABEL_79:
          v28 = v119;
          v14 = v109;
          if (v30 == v32)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }
      }

      v39 = [(SMSessionManagerState *)self safetyCacheKey];
      v40 = [(SMSessionManagerState *)v7 safetyCacheKey];
      v105 = v39;
      if (v39 != v40)
      {
        v41 = [(SMSessionManagerState *)self safetyCacheKey];
        v99 = [(SMSessionManagerState *)v7 safetyCacheKey];
        v100 = v41;
        if (![v41 isEqual:v99])
        {
          v11 = 0;
          v13 = v121;
          v42 = v105;
LABEL_76:

LABEL_77:
          v36 = v110;
          v38 = v108;
          if (v110 == v108)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }
      }

      v43 = [(SMSessionManagerState *)self startMessageGUID];
      v44 = [(SMSessionManagerState *)v7 startMessageGUID];
      v101 = v43;
      v102 = v40;
      v45 = v43 == v44;
      v46 = v44;
      if (!v45)
      {
        v47 = [(SMSessionManagerState *)self startMessageGUID];
        v94 = [(SMSessionManagerState *)v7 startMessageGUID];
        v95 = v47;
        if (![v47 isEqual:v94])
        {
          v11 = 0;
          v13 = v121;
          v48 = v101;
LABEL_74:

LABEL_75:
          v40 = v102;
          v42 = v105;
          if (v105 == v102)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }
      }

      v49 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
      v96 = [(SMSessionManagerState *)v7 scheduledSendMessageGUID];
      v97 = v49;
      v98 = v46;
      if (v49 != v96)
      {
        v50 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
        v91 = [(SMSessionManagerState *)v7 scheduledSendMessageGUID];
        v92 = v50;
        if (![v50 isEqual:v91])
        {
          v11 = 0;
          v13 = v121;
          v52 = v96;
          v51 = v97;
          goto LABEL_72;
        }
      }

      v93 = [(SMSessionManagerState *)self scheduledSendMessageDate];
      if (v93 || ([(SMSessionManagerState *)v7 scheduledSendMessageDate], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v53 = [(SMSessionManagerState *)self scheduledSendMessageDate];
        v54 = [(SMSessionManagerState *)v7 scheduledSendMessageDate];
        [v53 timeIntervalSinceDate:v54];
        v56 = v55;

        v57 = -v56;
        if (v56 >= 0.0)
        {
          v57 = v56;
        }

        if (v57 >= 0.01)
        {
          v11 = 0;
          v13 = v121;
          goto LABEL_69;
        }
      }

      else
      {
        v89 = 0;
      }

      v58 = [(SMSessionManagerState *)self activeDeviceIdentifier];
      v59 = [(SMSessionManagerState *)v7 activeDeviceIdentifier];
      v90 = v58;
      if (v58 == v59 || (-[SMSessionManagerState activeDeviceIdentifier](self, "activeDeviceIdentifier"), v60 = objc_claimAutoreleasedReturnValue(), -[SMSessionManagerState activeDeviceIdentifier](v7, "activeDeviceIdentifier"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v60, [v60 isEqual:v86]))
      {
        v61 = [(SMSessionManagerState *)self estimatedEndDate];
        [v61 timeIntervalSince1970];
        v63 = v62;
        v88 = [(SMSessionManagerState *)v7 estimatedEndDate];
        [v88 timeIntervalSince1970];
        if (v63 == v64)
        {
          v85 = v59;
          v65 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
          [v65 timeIntervalSince1970];
          v67 = v66;
          v83 = [(SMSessionManagerState *)v7 coarseEstimatedEndDate];
          [v83 timeIntervalSince1970];
          v84 = v61;
          if (v67 == v68)
          {
            v82 = v65;
            v69 = [(SMSessionManagerState *)self estimatedEndDateStatus];
            if (v69 == [(SMSessionManagerState *)v7 estimatedEndDateStatus]&& (v70 = [(SMSessionManagerState *)self sessionEndReason], v70 == [(SMSessionManagerState *)v7 sessionEndReason]))
            {
              v71 = [(SMSessionManagerState *)self sessionStateTransitionDate];
              [v71 timeIntervalSince1970];
              v73 = v72;
              v81 = [(SMSessionManagerState *)v7 sessionStateTransitionDate];
              [v81 timeIntervalSince1970];
              if (v73 == v74)
              {
                v75 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
                v79 = [(SMSessionManagerState *)v7 activePairedDeviceIdentifier];
                v80 = v75;
                if (v75 == v79)
                {
                  v11 = 1;
                }

                else
                {
                  v76 = [(SMSessionManagerState *)self activePairedDeviceIdentifier:v79];
                  v77 = [(SMSessionManagerState *)v7 activePairedDeviceIdentifier];
                  v11 = [v76 isEqual:v77];
                }
              }

              else
              {
                v11 = 0;
              }
            }

            else
            {
              v11 = 0;
            }

            v13 = v121;
            v65 = v82;
          }

          else
          {
            v11 = 0;
            v13 = v121;
          }

          v59 = v85;
          if (v90 == v85)
          {
            goto LABEL_68;
          }
        }

        else
        {

          v11 = 0;
          v13 = v121;
          if (v90 == v59)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        v11 = 0;
        v13 = v121;
      }

LABEL_68:
LABEL_69:
      if (!v93)
      {
      }

      v52 = v96;
      v51 = v97;
      if (v97 == v96)
      {
LABEL_73:

        v48 = v101;
        v46 = v98;
        if (v101 == v98)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

LABEL_72:

      goto LABEL_73;
    }

    v11 = 0;
  }

LABEL_91:

  return v11;
}

- (SMSessionManagerState)initWithDictionary:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForKey:@"__kSMSessionManagerStateStateKey"];
  v6 = [v4 valueForKey:@"__kSMSessionManagerStateUserTriggerResposeKey"];
  v7 = [v4 valueForKey:@"__kSMSessionManagerStateEstimatedEndDateStatusKey"];
  v8 = [v4 valueForKey:@"__kSMSessionManagerStateSessionEndReasonKey"];
  v9 = [v6 intValue];
  v10 = [v5 intValue];
  v11 = [[SMSessionConfiguration alloc] initWithDictionary:v4];
  if (v11)
  {
    v61 = v9;
    v63 = v6;
    v69 = [[SMSessionMonitorContext alloc] initWithDictionary:v4];
    v12 = [v4 valueForKey:@"__kSMSessionManagerStateDateKey"];
    v71 = self;
    v64 = v5;
    v59 = v12;
    if (v12)
    {
      v13 = MEMORY[0x277CBEAA8];
      [v12 doubleValue];
      v68 = [v13 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v68 = 0;
    }

    v16 = objc_alloc(MEMORY[0x277CCAD78]);
    v17 = [v4 valueForKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];
    v67 = [v16 initWithUUIDString:v17];

    v18 = [v4 valueForKey:@"__kSMSessionManagerStateLocationKeyLatitude"];
    v19 = [v4 valueForKey:@"__kSMSessionManagerStateLocationKeyLongitude"];
    v20 = 0;
    if (v18 && v19)
    {
      v21 = objc_alloc(MEMORY[0x277CE41F8]);
      [v18 doubleValue];
      v23 = v22;
      [v19 doubleValue];
      v20 = [v21 initWithLatitude:v23 longitude:v24];
    }

    v66 = v20;
    v25 = [v4 valueForKey:@"__kSMSessionManagerStateAllowReadTokenKey"];
    v26 = v10;
    if (v25)
    {
      v65 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v25 options:0];
    }

    else
    {
      v65 = 0;
    }

    v27 = [v4 valueForKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];
    if (v27)
    {
      v55 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v27 options:0];
    }

    else
    {
      v55 = 0;
    }

    v56 = v27;
    v54 = [v4 valueForKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];
    v53 = [v4 valueForKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];
    v28 = [v4 valueForKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];
    v52 = v28;
    if (v28)
    {
      v29 = MEMORY[0x277CBEAA8];
      [v28 doubleValue];
      v51 = [v29 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v51 = 0;
    }

    v58 = v18;
    v30 = [v4 valueForKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];
    v57 = v19;
    v50 = v30;
    if (v30)
    {
      v31 = MEMORY[0x277CBEAA8];
      [v30 doubleValue];
      v32 = [v31 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v32 = 0;
    }

    v47 = v26;
    v48 = v61;
    v33 = [v4 valueForKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];
    v70 = v11;
    v49 = v33;
    if (v33)
    {
      v34 = MEMORY[0x277CBEAA8];
      [v33 doubleValue];
      v35 = [v34 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v35 = 0;
    }

    v62 = v7;
    v36 = [v7 intValue];
    v60 = v8;
    v37 = [v8 intValue];
    v38 = [v4 valueForKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];
    v39 = v38;
    if (v38)
    {
      v40 = MEMORY[0x277CBEAA8];
      [v38 doubleValue];
      v41 = [v40 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v41 = 0;
    }

    v42 = objc_alloc(MEMORY[0x277CCAD78]);
    v43 = [v4 valueForKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];
    v44 = [v42 initWithUUIDString:v43];

    v72 = [(SMSessionManagerState *)v71 initWithSessionState:v47 configuration:v70 userTriggerResponse:v48 monitorContext:v69 date:v68 location:v66 allowReadToken:v65 safetyCacheKey:v55 startMessageGUID:v54 scheduledSendMessageGUID:v53 scheduledSendMessageDate:v51 activeDeviceIdentifier:v67 estimatedEndDate:v32 coarseEstimatedEndDate:v35 estimatedEndDateStatus:v36 sessionEndReason:v37 sessionStateTransitionDate:v41 activePairedDeviceIdentifier:v44];
    self = v72;

    v11 = v70;
    v15 = v72;
    v6 = v63;
    v5 = v64;
    v7 = v62;
    v8 = v60;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v74 = "[SMSessionManagerState initWithDictionary:]";
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "%s, configuration is nil", buf, 0xCu);
    }

    v15 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = [(SMSessionManagerState *)self date];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(SMSessionManagerState *)self date];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
    [v3 setObject:v7 forKey:@"__kSMSessionManagerStateDateKey"];
  }

  v8 = [(SMSessionManagerState *)self sessionStateTransitionDate];

  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [(SMSessionManagerState *)self sessionStateTransitionDate];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
    [v3 setObject:v11 forKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionManagerState sessionState](self, "sessionState")}];
  [v3 setObject:v12 forKey:@"__kSMSessionManagerStateStateKey"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionManagerState userTriggerResponse](self, "userTriggerResponse")}];
  [v3 setObject:v13 forKey:@"__kSMSessionManagerStateUserTriggerResposeKey"];

  v14 = [(SMSessionManagerState *)self monitorContext];

  if (v14)
  {
    v15 = [(SMSessionManagerState *)self monitorContext];
    v16 = [v15 outputToDictionary];
    [v3 addEntriesFromDictionary:v16];
  }

  v17 = [(SMSessionManagerState *)self configuration];
  v18 = [v17 outputToDictionary];

  if (v18)
  {
    [v3 addEntriesFromDictionary:v18];
  }

  v19 = [(SMSessionManagerState *)self activeDeviceIdentifier];

  if (v19)
  {
    v20 = [(SMSessionManagerState *)self activeDeviceIdentifier];
    v21 = [v20 UUIDString];
    [v3 setObject:v21 forKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];
  }

  v22 = [(SMSessionManagerState *)self location];

  if (v22)
  {
    v23 = MEMORY[0x277CCABB0];
    v24 = [(SMSessionManagerState *)self location];
    [v24 coordinate];
    v26 = [v23 numberWithDouble:v25];
    [v3 setObject:v26 forKey:@"__kSMSessionManagerStateLocationKeyLongitude"];

    v27 = MEMORY[0x277CCABB0];
    v28 = [(SMSessionManagerState *)self location];
    [v28 coordinate];
    v29 = [v27 numberWithDouble:?];
    [v3 setObject:v29 forKey:@"__kSMSessionManagerStateLocationKeyLatitude"];
  }

  v30 = [(SMSessionManagerState *)self allowReadToken];

  if (v30)
  {
    v31 = [(SMSessionManagerState *)self allowReadToken];
    v32 = [v31 base64EncodedStringWithOptions:0];
    [v3 setObject:v32 forKey:@"__kSMSessionManagerStateAllowReadTokenKey"];
  }

  v33 = [(SMSessionManagerState *)self safetyCacheKey];

  if (v33)
  {
    v34 = [(SMSessionManagerState *)self safetyCacheKey];
    v35 = [v34 base64EncodedStringWithOptions:0];
    [v3 setObject:v35 forKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];
  }

  v36 = [(SMSessionManagerState *)self startMessageGUID];

  if (v36)
  {
    v37 = [(SMSessionManagerState *)self startMessageGUID];
    [v3 setObject:v37 forKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];
  }

  v38 = [(SMSessionManagerState *)self scheduledSendMessageGUID];

  if (v38)
  {
    v39 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
    [v3 setObject:v39 forKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];
  }

  v40 = [(SMSessionManagerState *)self scheduledSendMessageDate];

  if (v40)
  {
    v41 = MEMORY[0x277CCABB0];
    v42 = [(SMSessionManagerState *)self scheduledSendMessageDate];
    [v42 timeIntervalSince1970];
    v43 = [v41 numberWithDouble:?];
    [v3 setObject:v43 forKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];
  }

  v44 = [(SMSessionManagerState *)self estimatedEndDate];

  if (v44)
  {
    v45 = MEMORY[0x277CCABB0];
    v46 = [(SMSessionManagerState *)self estimatedEndDate];
    [v46 timeIntervalSince1970];
    v47 = [v45 numberWithDouble:?];
    [v3 setObject:v47 forKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];
  }

  v48 = [(SMSessionManagerState *)self coarseEstimatedEndDate];

  if (v48)
  {
    v49 = MEMORY[0x277CCABB0];
    v50 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
    [v50 timeIntervalSince1970];
    v51 = [v49 numberWithDouble:?];
    [v3 setObject:v51 forKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];
  }

  v52 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];

  if (v52)
  {
    v53 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
    v54 = [v53 UUIDString];
    [v3 setObject:v54 forKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];
  }

  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionManagerState estimatedEndDateStatus](self, "estimatedEndDateStatus")}];
  [v3 setObject:v55 forKey:@"__kSMSessionManagerStateEstimatedEndDateStatusKey"];

  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionManagerState sessionEndReason](self, "sessionEndReason")}];
  [v3 setObject:v56 forKey:@"__kSMSessionManagerStateSessionEndReasonKey"];

  return v3;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  v30 = [SMSessionManagerState convertSessionStateToString:[(SMSessionManagerState *)self sessionState]];
  v27 = [(SMSessionManagerState *)self configuration];
  v33 = [v27 description];
  v32 = [SMSessionMonitorContext userTriggerResponseToString:[(SMSessionManagerState *)self userTriggerResponse]];
  v26 = [(SMSessionManagerState *)self monitorContext];
  v18 = [v26 description];
  v25 = [(SMSessionManagerState *)self date];
  v31 = [v25 stringFromDate];
  v24 = [(SMSessionManagerState *)self location];
  v29 = [v24 description];
  v23 = [(SMSessionManagerState *)self allowReadToken];
  v16 = [v23 description];
  v20 = [(SMSessionManagerState *)self safetyCacheKey];
  v28 = [v20 description];
  v14 = [(SMSessionManagerState *)self startMessageGUID];
  v13 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  v19 = [(SMSessionManagerState *)self scheduledSendMessageDate];
  v12 = [v19 stringFromDate];
  v3 = [(SMSessionManagerState *)self activeDeviceIdentifier];
  v17 = [(SMSessionManagerState *)self estimatedEndDate];
  v11 = [v17 stringFromDate];
  v15 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  v4 = [v15 stringFromDate];
  v5 = [SMSessionManagerState convertEstimatedEndDateStatusToString:[(SMSessionManagerState *)self estimatedEndDateStatus]];
  v6 = [SMSessionMonitorContext sessionEndReasonToString:[(SMSessionManagerState *)self sessionEndReason]];
  v7 = [(SMSessionManagerState *)self sessionStateTransitionDate];
  v8 = [v7 stringFromDate];
  v9 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  v22 = [v21 stringWithFormat:@"{SessionState:%@, Configuration:%@, UserTriggerResponse:%@, monitorContext:%@, date:%@, location:%@, allowReadToken:%@, safetyCacheKey:%@, startMessageGUID:%@, scheduledSendMessageGUID:%@, scheduledSendMessageDate:%@, activeDeviceIdentifier:%@, estimatedEndDate:%@, coarseEstimatedEndDate:%@, estimatedEndDateStatus:%@, sessionEndReason:%@, sessionStateTransitionDate:%@, activePairedDeviceIdentifier:%@}", v30, v33, v32, v18, v31, v29, v16, v28, v14, v13, v12, v3, v11, v4, v5, v6, v8, v9];

  return v22;
}

- (BOOL)isTimerExtensionValid:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(SMSessionManagerState *)self configuration];
  v6 = [v5 sessionStartDate];

  v7 = [(SMSessionManagerState *)self configuration];
  v8 = [v7 time];
  v9 = [v8 timeBound];

  if (v6 && v9)
  {
    [v9 timeIntervalSinceDate:v6];
    v11 = v10 + 900.0 + a3 <= 43200.0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "[SMSessionManagerState isTimerExtensionValid:]";
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "%s, Unable to determine if timer extension is valid,startDate,%@,endDate,%@", &v15, 0x20u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

@end