@interface SMSessionManagerState
+ (id)convertEstimatedEndDateStatusToString:(unint64_t)string;
+ (id)convertSessionStateToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTimerExtensionValid:(double)valid;
- (SMSessionManagerState)init;
- (SMSessionManagerState)initWithCoder:(id)coder;
- (SMSessionManagerState)initWithDictionary:(id)dictionary;
- (SMSessionManagerState)initWithSessionState:(unint64_t)state configuration:(id)configuration userTriggerResponse:(int64_t)response monitorContext:(id)context allowReadToken:(id)token safetyCacheKey:(id)key startMessageGUID:(id)d scheduledSendMessageGUID:(id)self0 scheduledSendMessageDate:(id)self1 activeDeviceIdentifier:(id)self2 estimatedEndDate:(id)self3 coarseEstimatedEndDate:(id)self4 estimatedEndDateStatus:(unint64_t)self5 sessionEndReason:(unint64_t)self6 activePairedDeviceIdentifier:(id)self7;
- (SMSessionManagerState)initWithSessionState:(unint64_t)state configuration:(id)configuration userTriggerResponse:(int64_t)response monitorContext:(id)context date:(id)date location:(id)location allowReadToken:(id)token safetyCacheKey:(id)self0 startMessageGUID:(id)self1 scheduledSendMessageGUID:(id)self2 scheduledSendMessageDate:(id)self3 activeDeviceIdentifier:(id)self4 estimatedEndDate:(id)self5 coarseEstimatedEndDate:(id)self6 estimatedEndDateStatus:(unint64_t)self7 sessionEndReason:(unint64_t)self8 sessionStateTransitionDate:(id)self9 activePairedDeviceIdentifier:(id)deviceIdentifier;
- (id)cacheReleaseDate;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionManagerState

- (SMSessionManagerState)init
{
  date = [MEMORY[0x277CBEAA8] date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v5 = [(SMSessionManagerState *)self initWithSessionState:0 configuration:0 userTriggerResponse:0 monitorContext:0 date:date location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:0 estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:0 sessionStateTransitionDate:date2 activePairedDeviceIdentifier:0];

  return v5;
}

- (SMSessionManagerState)initWithSessionState:(unint64_t)state configuration:(id)configuration userTriggerResponse:(int64_t)response monitorContext:(id)context allowReadToken:(id)token safetyCacheKey:(id)key startMessageGUID:(id)d scheduledSendMessageGUID:(id)self0 scheduledSendMessageDate:(id)self1 activeDeviceIdentifier:(id)self2 estimatedEndDate:(id)self3 coarseEstimatedEndDate:(id)self4 estimatedEndDateStatus:(unint64_t)self5 sessionEndReason:(unint64_t)self6 activePairedDeviceIdentifier:(id)self7
{
  v29 = MEMORY[0x277CBEAA8];
  deviceIdentifierCopy = deviceIdentifier;
  estimatedEndDateCopy = estimatedEndDate;
  endDateCopy = endDate;
  identifierCopy = identifier;
  dateCopy = date;
  iDCopy = iD;
  dCopy = d;
  keyCopy = key;
  tokenCopy = token;
  contextCopy = context;
  configurationCopy = configuration;
  date = [v29 date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v39 = [(SMSessionManagerState *)self initWithSessionState:state configuration:configurationCopy userTriggerResponse:response monitorContext:contextCopy date:date location:0 allowReadToken:tokenCopy safetyCacheKey:keyCopy startMessageGUID:dCopy scheduledSendMessageGUID:iDCopy scheduledSendMessageDate:dateCopy activeDeviceIdentifier:identifierCopy estimatedEndDate:endDateCopy coarseEstimatedEndDate:estimatedEndDateCopy estimatedEndDateStatus:status sessionEndReason:reason sessionStateTransitionDate:date2 activePairedDeviceIdentifier:deviceIdentifierCopy];

  return v39;
}

- (SMSessionManagerState)initWithSessionState:(unint64_t)state configuration:(id)configuration userTriggerResponse:(int64_t)response monitorContext:(id)context date:(id)date location:(id)location allowReadToken:(id)token safetyCacheKey:(id)self0 startMessageGUID:(id)self1 scheduledSendMessageGUID:(id)self2 scheduledSendMessageDate:(id)self3 activeDeviceIdentifier:(id)self4 estimatedEndDate:(id)self5 coarseEstimatedEndDate:(id)self6 estimatedEndDateStatus:(unint64_t)self7 sessionEndReason:(unint64_t)self8 sessionStateTransitionDate:(id)self9 activePairedDeviceIdentifier:(id)deviceIdentifier
{
  configurationCopy = configuration;
  contextCopy = context;
  obj = date;
  dateCopy = date;
  locationCopy = location;
  locationCopy2 = location;
  tokenCopy = token;
  keyCopy = key;
  dCopy = d;
  iDCopy = iD;
  messageDateCopy = messageDate;
  identifierCopy = identifier;
  endDateCopy = endDate;
  estimatedEndDateCopy = estimatedEndDate;
  transitionDateCopy = transitionDate;
  deviceIdentifierCopy = deviceIdentifier;
  v55.receiver = self;
  v55.super_class = SMSessionManagerState;
  v30 = [(SMSessionManagerState *)&v55 init];
  v31 = v30;
  if (v30)
  {
    v30->_sessionState = state;
    v32 = [configurationCopy copy];
    configuration = v31->_configuration;
    v31->_configuration = v32;

    v31->_userTriggerResponse = response;
    v34 = [contextCopy copy];
    monitorContext = v31->_monitorContext;
    v31->_monitorContext = v34;

    objc_storeStrong(&v31->_date, obj);
    objc_storeStrong(&v31->_location, locationCopy);
    v36 = [tokenCopy copy];
    allowReadToken = v31->_allowReadToken;
    v31->_allowReadToken = v36;

    v38 = [keyCopy copy];
    safetyCacheKey = v31->_safetyCacheKey;
    v31->_safetyCacheKey = v38;

    v40 = [dCopy copy];
    startMessageGUID = v31->_startMessageGUID;
    v31->_startMessageGUID = v40;

    objc_storeStrong(&v31->_scheduledSendMessageGUID, iD);
    objc_storeStrong(&v31->_scheduledSendMessageDate, messageDate);
    objc_storeStrong(&v31->_activeDeviceIdentifier, identifier);
    objc_storeStrong(&v31->_estimatedEndDate, endDate);
    objc_storeStrong(&v31->_coarseEstimatedEndDate, estimatedEndDate);
    v31->_estimatedEndDateStatus = status;
    v31->_sessionEndReason = reason;
    objc_storeStrong(&v31->_sessionStateTransitionDate, transitionDate);
    objc_storeStrong(&v31->_activePairedDeviceIdentifier, deviceIdentifier);
  }

  return v31;
}

+ (id)convertSessionStateToString:(unint64_t)string
{
  if (string < 0xF && ((0x5F97u >> string) & 1) != 0)
  {
    string = off_279B64C48[string];
  }

  else
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported (%lu)", string];
  }

  return string;
}

+ (id)convertEstimatedEndDateStatusToString:(unint64_t)string
{
  if (string >= 4)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported (%lu)", string];
  }

  else
  {
    string = off_279B64CC0[string];
  }

  return string;
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

  sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];
  v6 = [sessionStateTransitionDate dateByAddingTimeInterval:*v4];

  v3 = v6;
LABEL_10:

  return v3;
}

- (SMSessionManagerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeIntegerForKey:@"__kSMSessionManagerStateStateKey"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateConfigurationKey"];
  v18 = [coderCopy decodeIntegerForKey:@"__kSMSessionManagerStateUserTriggerResposeKey"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateMonitorContextKey"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateDateKey"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateLocationKey"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateAllowReadTokenKey"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];
  v6 = [coderCopy decodeIntegerForKey:@"__kSMSessionManagerStateEstimatedEndDateStatusKey"];
  v7 = [coderCopy decodeIntForKey:@"__kSMSessionManagerStateSessionEndReasonKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];

  v23 = [(SMSessionManagerState *)self initWithSessionState:v20 configuration:v24 userTriggerResponse:v18 monitorContext:v21 date:v19 location:v17 allowReadToken:v16 safetyCacheKey:v15 startMessageGUID:v14 scheduledSendMessageGUID:v13 scheduledSendMessageDate:v12 activeDeviceIdentifier:v11 estimatedEndDate:v4 coarseEstimatedEndDate:v5 estimatedEndDateStatus:v6 sessionEndReason:v7 sessionStateTransitionDate:v8 activePairedDeviceIdentifier:v9];
  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SMSessionManagerState sessionState](self forKey:{"sessionState"), @"__kSMSessionManagerStateStateKey"}];
  configuration = [(SMSessionManagerState *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"__kSMSessionManagerStateConfigurationKey"];

  [coderCopy encodeInteger:-[SMSessionManagerState userTriggerResponse](self forKey:{"userTriggerResponse"), @"__kSMSessionManagerStateUserTriggerResposeKey"}];
  monitorContext = [(SMSessionManagerState *)self monitorContext];
  [coderCopy encodeObject:monitorContext forKey:@"__kSMSessionManagerStateMonitorContextKey"];

  date = [(SMSessionManagerState *)self date];
  [coderCopy encodeObject:date forKey:@"__kSMSessionManagerStateDateKey"];

  location = [(SMSessionManagerState *)self location];
  [coderCopy encodeObject:location forKey:@"__kSMSessionManagerStateLocationKey"];

  allowReadToken = [(SMSessionManagerState *)self allowReadToken];
  [coderCopy encodeObject:allowReadToken forKey:@"__kSMSessionManagerStateAllowReadTokenKey"];

  safetyCacheKey = [(SMSessionManagerState *)self safetyCacheKey];
  [coderCopy encodeObject:safetyCacheKey forKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];

  startMessageGUID = [(SMSessionManagerState *)self startMessageGUID];
  [coderCopy encodeObject:startMessageGUID forKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];

  scheduledSendMessageGUID = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  [coderCopy encodeObject:scheduledSendMessageGUID forKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];

  scheduledSendMessageDate = [(SMSessionManagerState *)self scheduledSendMessageDate];
  [coderCopy encodeObject:scheduledSendMessageDate forKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];

  activeDeviceIdentifier = [(SMSessionManagerState *)self activeDeviceIdentifier];
  [coderCopy encodeObject:activeDeviceIdentifier forKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];

  estimatedEndDate = [(SMSessionManagerState *)self estimatedEndDate];
  [coderCopy encodeObject:estimatedEndDate forKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];

  coarseEstimatedEndDate = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  [coderCopy encodeObject:coarseEstimatedEndDate forKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];

  [coderCopy encodeInteger:-[SMSessionManagerState estimatedEndDateStatus](self forKey:{"estimatedEndDateStatus"), @"__kSMSessionManagerStateEstimatedEndDateStatusKey"}];
  [coderCopy encodeInteger:-[SMSessionManagerState sessionEndReason](self forKey:{"sessionEndReason"), @"__kSMSessionManagerStateSessionEndReasonKey"}];
  sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];
  [coderCopy encodeObject:sessionStateTransitionDate forKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];

  activePairedDeviceIdentifier = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  [coderCopy encodeObject:activePairedDeviceIdentifier forKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v23 = [SMSessionManagerMutableState allocWithZone:zone];
  sessionState = [(SMSessionManagerState *)self sessionState];
  configuration = [(SMSessionManagerState *)self configuration];
  userTriggerResponse = [(SMSessionManagerState *)self userTriggerResponse];
  monitorContext = [(SMSessionManagerState *)self monitorContext];
  date = [(SMSessionManagerState *)self date];
  location = [(SMSessionManagerState *)self location];
  allowReadToken = [(SMSessionManagerState *)self allowReadToken];
  safetyCacheKey = [(SMSessionManagerState *)self safetyCacheKey];
  startMessageGUID = [(SMSessionManagerState *)self startMessageGUID];
  scheduledSendMessageGUID = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  scheduledSendMessageDate = [(SMSessionManagerState *)self scheduledSendMessageDate];
  activeDeviceIdentifier = [(SMSessionManagerState *)self activeDeviceIdentifier];
  estimatedEndDate = [(SMSessionManagerState *)self estimatedEndDate];
  coarseEstimatedEndDate = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  estimatedEndDateStatus = [(SMSessionManagerState *)self estimatedEndDateStatus];
  sessionEndReason = [(SMSessionManagerState *)self sessionEndReason];
  sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];
  activePairedDeviceIdentifier = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  v24 = [(SMSessionManagerState *)v23 initWithSessionState:sessionState configuration:configuration userTriggerResponse:userTriggerResponse monitorContext:monitorContext date:date location:location allowReadToken:allowReadToken safetyCacheKey:safetyCacheKey startMessageGUID:startMessageGUID scheduledSendMessageGUID:scheduledSendMessageGUID scheduledSendMessageDate:scheduledSendMessageDate activeDeviceIdentifier:activeDeviceIdentifier estimatedEndDate:estimatedEndDate coarseEstimatedEndDate:coarseEstimatedEndDate estimatedEndDateStatus:estimatedEndDateStatus sessionEndReason:sessionEndReason sessionStateTransitionDate:sessionStateTransitionDate activePairedDeviceIdentifier:activePairedDeviceIdentifier];

  return v24;
}

- (unint64_t)hash
{
  sessionState = [(SMSessionManagerState *)self sessionState];
  configuration = [(SMSessionManagerState *)self configuration];
  v4 = [configuration hash];
  v5 = v4 ^ sessionState ^ [(SMSessionManagerState *)self userTriggerResponse];
  monitorContext = [(SMSessionManagerState *)self monitorContext];
  v6 = [monitorContext hash];
  date = [(SMSessionManagerState *)self date];
  v7 = v5 ^ v6 ^ [date hash];
  location = [(SMSessionManagerState *)self location];
  v8 = [location hash];
  allowReadToken = [(SMSessionManagerState *)self allowReadToken];
  v9 = v8 ^ [allowReadToken hash];
  safetyCacheKey = [(SMSessionManagerState *)self safetyCacheKey];
  v10 = v7 ^ v9 ^ [safetyCacheKey hash];
  startMessageGUID = [(SMSessionManagerState *)self startMessageGUID];
  v12 = [startMessageGUID hash];
  scheduledSendMessageGUID = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  v14 = v12 ^ [scheduledSendMessageGUID hash];
  scheduledSendMessageDate = [(SMSessionManagerState *)self scheduledSendMessageDate];
  v16 = v14 ^ [scheduledSendMessageDate hash];
  activeDeviceIdentifier = [(SMSessionManagerState *)self activeDeviceIdentifier];
  v18 = v10 ^ v16 ^ [activeDeviceIdentifier hash];
  estimatedEndDate = [(SMSessionManagerState *)self estimatedEndDate];
  v20 = [estimatedEndDate hash];
  coarseEstimatedEndDate = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  v22 = v20 ^ [coarseEstimatedEndDate hash];
  v23 = v22 ^ [(SMSessionManagerState *)self estimatedEndDateStatus];
  v24 = v23 ^ [(SMSessionManagerState *)self sessionEndReason];
  sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];
  v26 = v18 ^ v24 ^ [sessionStateTransitionDate hash];
  activePairedDeviceIdentifier = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  v28 = [activePairedDeviceIdentifier hash];

  return v26 ^ v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      sessionState = [(SMSessionManagerState *)self sessionState];
      if (sessionState != [(SMSessionManagerState *)v7 sessionState])
      {
        v11 = 0;
LABEL_90:

        goto LABEL_91;
      }

      configuration = [(SMSessionManagerState *)self configuration];
      configuration2 = [(SMSessionManagerState *)v7 configuration];
      if (configuration != configuration2)
      {
        configuration3 = [(SMSessionManagerState *)self configuration];
        configuration4 = [(SMSessionManagerState *)v7 configuration];
        if (![configuration3 isEqual:configuration4])
        {
          v11 = 0;
          goto LABEL_88;
        }
      }

      userTriggerResponse = [(SMSessionManagerState *)self userTriggerResponse];
      if (userTriggerResponse != [(SMSessionManagerState *)v7 userTriggerResponse])
      {
        v11 = 0;
        goto LABEL_87;
      }

      monitorContext = [(SMSessionManagerState *)self monitorContext];
      monitorContext2 = [(SMSessionManagerState *)v7 monitorContext];
      if (monitorContext == monitorContext2)
      {
        v121 = monitorContext;
      }

      else
      {
        monitorContext3 = [(SMSessionManagerState *)self monitorContext];
        monitorContext4 = [(SMSessionManagerState *)v7 monitorContext];
        if (![monitorContext3 isEqual:?])
        {
          v11 = 0;
          goto LABEL_85;
        }

        v118 = monitorContext3;
        v121 = monitorContext;
      }

      date = [(SMSessionManagerState *)self date];
      [date timeIntervalSince1970];
      v18 = v17;
      date2 = [(SMSessionManagerState *)v7 date];
      [date2 timeIntervalSince1970];
      if (v18 != v20)
      {

        v11 = 0;
        monitorContext = v121;
        goto LABEL_84;
      }

      v119 = date2;
      v117 = date;
      location = [(SMSessionManagerState *)self location];
      [location coordinate];
      v22 = v21;
      location2 = [(SMSessionManagerState *)v7 location];
      [location2 coordinate];
      v24 = v23;
      if (v22 == v23)
      {
        v28 = date2;
      }

      else
      {
        location3 = [(SMSessionManagerState *)self location];
        [location3 coordinate];
        v26 = v25;
        location4 = [(SMSessionManagerState *)v7 location];
        [location4 coordinate];
        v28 = date2;
        if (vabdd_f64(v26, v27) >= 2.22044605e-16)
        {
          v11 = 0;
          monitorContext = v121;
          goto LABEL_82;
        }
      }

      location5 = [(SMSessionManagerState *)self location];
      [location5 coordinate];
      v30 = v29;
      location6 = [(SMSessionManagerState *)v7 location];
      [location6 coordinate];
      v32 = v31;
      if (v30 == v31)
      {
        v109 = monitorContext2;
      }

      else
      {
        location7 = [(SMSessionManagerState *)self location];
        [location7 coordinate];
        v34 = v33;
        location8 = [(SMSessionManagerState *)v7 location];
        [location8 coordinate];
        if (vabdd_f64(v34, v35) >= 2.22044605e-16)
        {
          v11 = 0;
          monitorContext = v121;
LABEL_80:

LABEL_81:
          if (v22 == v24)
          {
LABEL_83:

LABEL_84:
            monitorContext3 = v118;
            if (monitorContext == monitorContext2)
            {
LABEL_86:

LABEL_87:
              if (configuration == configuration2)
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

        v109 = monitorContext2;
      }

      allowReadToken = [(SMSessionManagerState *)self allowReadToken];
      [(SMSessionManagerState *)v7 allowReadToken];
      v108 = v110 = allowReadToken;
      if (allowReadToken != v108)
      {
        allowReadToken2 = [(SMSessionManagerState *)self allowReadToken];
        allowReadToken3 = [(SMSessionManagerState *)v7 allowReadToken];
        v104 = allowReadToken2;
        if (![allowReadToken2 isEqual:allowReadToken3])
        {
          v11 = 0;
          monitorContext = v121;
          v38 = v108;
LABEL_78:

LABEL_79:
          v28 = v119;
          monitorContext2 = v109;
          if (v30 == v32)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }
      }

      safetyCacheKey = [(SMSessionManagerState *)self safetyCacheKey];
      safetyCacheKey2 = [(SMSessionManagerState *)v7 safetyCacheKey];
      v105 = safetyCacheKey;
      if (safetyCacheKey != safetyCacheKey2)
      {
        safetyCacheKey3 = [(SMSessionManagerState *)self safetyCacheKey];
        safetyCacheKey4 = [(SMSessionManagerState *)v7 safetyCacheKey];
        v100 = safetyCacheKey3;
        if (![safetyCacheKey3 isEqual:safetyCacheKey4])
        {
          v11 = 0;
          monitorContext = v121;
          v42 = v105;
LABEL_76:

LABEL_77:
          allowReadToken = v110;
          v38 = v108;
          if (v110 == v108)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }
      }

      startMessageGUID = [(SMSessionManagerState *)self startMessageGUID];
      startMessageGUID2 = [(SMSessionManagerState *)v7 startMessageGUID];
      v101 = startMessageGUID;
      v102 = safetyCacheKey2;
      v45 = startMessageGUID == startMessageGUID2;
      v46 = startMessageGUID2;
      if (!v45)
      {
        startMessageGUID3 = [(SMSessionManagerState *)self startMessageGUID];
        startMessageGUID4 = [(SMSessionManagerState *)v7 startMessageGUID];
        v95 = startMessageGUID3;
        if (![startMessageGUID3 isEqual:startMessageGUID4])
        {
          v11 = 0;
          monitorContext = v121;
          v48 = v101;
LABEL_74:

LABEL_75:
          safetyCacheKey2 = v102;
          v42 = v105;
          if (v105 == v102)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }
      }

      scheduledSendMessageGUID = [(SMSessionManagerState *)self scheduledSendMessageGUID];
      scheduledSendMessageGUID2 = [(SMSessionManagerState *)v7 scheduledSendMessageGUID];
      v97 = scheduledSendMessageGUID;
      v98 = v46;
      if (scheduledSendMessageGUID != scheduledSendMessageGUID2)
      {
        scheduledSendMessageGUID3 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
        scheduledSendMessageGUID4 = [(SMSessionManagerState *)v7 scheduledSendMessageGUID];
        v92 = scheduledSendMessageGUID3;
        if (![scheduledSendMessageGUID3 isEqual:scheduledSendMessageGUID4])
        {
          v11 = 0;
          monitorContext = v121;
          v52 = scheduledSendMessageGUID2;
          v51 = v97;
          goto LABEL_72;
        }
      }

      scheduledSendMessageDate = [(SMSessionManagerState *)self scheduledSendMessageDate];
      if (scheduledSendMessageDate || ([(SMSessionManagerState *)v7 scheduledSendMessageDate], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        scheduledSendMessageDate2 = [(SMSessionManagerState *)self scheduledSendMessageDate];
        scheduledSendMessageDate3 = [(SMSessionManagerState *)v7 scheduledSendMessageDate];
        [scheduledSendMessageDate2 timeIntervalSinceDate:scheduledSendMessageDate3];
        v56 = v55;

        v57 = -v56;
        if (v56 >= 0.0)
        {
          v57 = v56;
        }

        if (v57 >= 0.01)
        {
          v11 = 0;
          monitorContext = v121;
          goto LABEL_69;
        }
      }

      else
      {
        v89 = 0;
      }

      activeDeviceIdentifier = [(SMSessionManagerState *)self activeDeviceIdentifier];
      activeDeviceIdentifier2 = [(SMSessionManagerState *)v7 activeDeviceIdentifier];
      v90 = activeDeviceIdentifier;
      if (activeDeviceIdentifier == activeDeviceIdentifier2 || (-[SMSessionManagerState activeDeviceIdentifier](self, "activeDeviceIdentifier"), v60 = objc_claimAutoreleasedReturnValue(), -[SMSessionManagerState activeDeviceIdentifier](v7, "activeDeviceIdentifier"), v86 = objc_claimAutoreleasedReturnValue(), v87 = v60, [v60 isEqual:v86]))
      {
        estimatedEndDate = [(SMSessionManagerState *)self estimatedEndDate];
        [estimatedEndDate timeIntervalSince1970];
        v63 = v62;
        estimatedEndDate2 = [(SMSessionManagerState *)v7 estimatedEndDate];
        [estimatedEndDate2 timeIntervalSince1970];
        if (v63 == v64)
        {
          v85 = activeDeviceIdentifier2;
          coarseEstimatedEndDate = [(SMSessionManagerState *)self coarseEstimatedEndDate];
          [coarseEstimatedEndDate timeIntervalSince1970];
          v67 = v66;
          coarseEstimatedEndDate2 = [(SMSessionManagerState *)v7 coarseEstimatedEndDate];
          [coarseEstimatedEndDate2 timeIntervalSince1970];
          v84 = estimatedEndDate;
          if (v67 == v68)
          {
            v82 = coarseEstimatedEndDate;
            estimatedEndDateStatus = [(SMSessionManagerState *)self estimatedEndDateStatus];
            if (estimatedEndDateStatus == [(SMSessionManagerState *)v7 estimatedEndDateStatus]&& (v70 = [(SMSessionManagerState *)self sessionEndReason], v70 == [(SMSessionManagerState *)v7 sessionEndReason]))
            {
              sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];
              [sessionStateTransitionDate timeIntervalSince1970];
              v73 = v72;
              sessionStateTransitionDate2 = [(SMSessionManagerState *)v7 sessionStateTransitionDate];
              [sessionStateTransitionDate2 timeIntervalSince1970];
              if (v73 == v74)
              {
                activePairedDeviceIdentifier = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
                activePairedDeviceIdentifier2 = [(SMSessionManagerState *)v7 activePairedDeviceIdentifier];
                v80 = activePairedDeviceIdentifier;
                if (activePairedDeviceIdentifier == activePairedDeviceIdentifier2)
                {
                  v11 = 1;
                }

                else
                {
                  v76 = [(SMSessionManagerState *)self activePairedDeviceIdentifier:activePairedDeviceIdentifier2];
                  activePairedDeviceIdentifier3 = [(SMSessionManagerState *)v7 activePairedDeviceIdentifier];
                  v11 = [v76 isEqual:activePairedDeviceIdentifier3];
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

            monitorContext = v121;
            coarseEstimatedEndDate = v82;
          }

          else
          {
            v11 = 0;
            monitorContext = v121;
          }

          activeDeviceIdentifier2 = v85;
          if (v90 == v85)
          {
            goto LABEL_68;
          }
        }

        else
        {

          v11 = 0;
          monitorContext = v121;
          if (v90 == activeDeviceIdentifier2)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        v11 = 0;
        monitorContext = v121;
      }

LABEL_68:
LABEL_69:
      if (!scheduledSendMessageDate)
      {
      }

      v52 = scheduledSendMessageGUID2;
      v51 = v97;
      if (v97 == scheduledSendMessageGUID2)
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

- (SMSessionManagerState)initWithDictionary:(id)dictionary
{
  v75 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateStateKey"];
  v6 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateUserTriggerResposeKey"];
  v7 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateEstimatedEndDateStatusKey"];
  v8 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateSessionEndReasonKey"];
  intValue = [v6 intValue];
  intValue2 = [v5 intValue];
  v11 = [[SMSessionConfiguration alloc] initWithDictionary:dictionaryCopy];
  if (v11)
  {
    v61 = intValue;
    v63 = v6;
    v69 = [[SMSessionMonitorContext alloc] initWithDictionary:dictionaryCopy];
    v12 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateDateKey"];
    selfCopy = self;
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
    v17 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];
    v67 = [v16 initWithUUIDString:v17];

    v18 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateLocationKeyLatitude"];
    v19 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateLocationKeyLongitude"];
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
    v25 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateAllowReadTokenKey"];
    v26 = intValue2;
    if (v25)
    {
      v65 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v25 options:0];
    }

    else
    {
      v65 = 0;
    }

    v27 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];
    if (v27)
    {
      v55 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v27 options:0];
    }

    else
    {
      v55 = 0;
    }

    v56 = v27;
    v54 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];
    v53 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];
    v28 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];
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
    v30 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];
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
    v33 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];
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
    intValue3 = [v7 intValue];
    v60 = v8;
    intValue4 = [v8 intValue];
    v38 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];
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
    v43 = [dictionaryCopy valueForKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];
    v44 = [v42 initWithUUIDString:v43];

    v72 = [(SMSessionManagerState *)selfCopy initWithSessionState:v47 configuration:v70 userTriggerResponse:v48 monitorContext:v69 date:v68 location:v66 allowReadToken:v65 safetyCacheKey:v55 startMessageGUID:v54 scheduledSendMessageGUID:v53 scheduledSendMessageDate:v51 activeDeviceIdentifier:v67 estimatedEndDate:v32 coarseEstimatedEndDate:v35 estimatedEndDateStatus:intValue3 sessionEndReason:intValue4 sessionStateTransitionDate:v41 activePairedDeviceIdentifier:v44];
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
  date = [(SMSessionManagerState *)self date];

  if (date)
  {
    v5 = MEMORY[0x277CCABB0];
    date2 = [(SMSessionManagerState *)self date];
    [date2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
    [v3 setObject:v7 forKey:@"__kSMSessionManagerStateDateKey"];
  }

  sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];

  if (sessionStateTransitionDate)
  {
    v9 = MEMORY[0x277CCABB0];
    sessionStateTransitionDate2 = [(SMSessionManagerState *)self sessionStateTransitionDate];
    [sessionStateTransitionDate2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
    [v3 setObject:v11 forKey:@"__kSMSessionManagerStateSessionStateTransitionDateKey"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionManagerState sessionState](self, "sessionState")}];
  [v3 setObject:v12 forKey:@"__kSMSessionManagerStateStateKey"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionManagerState userTriggerResponse](self, "userTriggerResponse")}];
  [v3 setObject:v13 forKey:@"__kSMSessionManagerStateUserTriggerResposeKey"];

  monitorContext = [(SMSessionManagerState *)self monitorContext];

  if (monitorContext)
  {
    monitorContext2 = [(SMSessionManagerState *)self monitorContext];
    outputToDictionary = [monitorContext2 outputToDictionary];
    [v3 addEntriesFromDictionary:outputToDictionary];
  }

  configuration = [(SMSessionManagerState *)self configuration];
  outputToDictionary2 = [configuration outputToDictionary];

  if (outputToDictionary2)
  {
    [v3 addEntriesFromDictionary:outputToDictionary2];
  }

  activeDeviceIdentifier = [(SMSessionManagerState *)self activeDeviceIdentifier];

  if (activeDeviceIdentifier)
  {
    activeDeviceIdentifier2 = [(SMSessionManagerState *)self activeDeviceIdentifier];
    uUIDString = [activeDeviceIdentifier2 UUIDString];
    [v3 setObject:uUIDString forKey:@"__kSMSessionManagerStateActiveDeviceIdentifierKey"];
  }

  location = [(SMSessionManagerState *)self location];

  if (location)
  {
    v23 = MEMORY[0x277CCABB0];
    location2 = [(SMSessionManagerState *)self location];
    [location2 coordinate];
    v26 = [v23 numberWithDouble:v25];
    [v3 setObject:v26 forKey:@"__kSMSessionManagerStateLocationKeyLongitude"];

    v27 = MEMORY[0x277CCABB0];
    location3 = [(SMSessionManagerState *)self location];
    [location3 coordinate];
    v29 = [v27 numberWithDouble:?];
    [v3 setObject:v29 forKey:@"__kSMSessionManagerStateLocationKeyLatitude"];
  }

  allowReadToken = [(SMSessionManagerState *)self allowReadToken];

  if (allowReadToken)
  {
    allowReadToken2 = [(SMSessionManagerState *)self allowReadToken];
    v32 = [allowReadToken2 base64EncodedStringWithOptions:0];
    [v3 setObject:v32 forKey:@"__kSMSessionManagerStateAllowReadTokenKey"];
  }

  safetyCacheKey = [(SMSessionManagerState *)self safetyCacheKey];

  if (safetyCacheKey)
  {
    safetyCacheKey2 = [(SMSessionManagerState *)self safetyCacheKey];
    v35 = [safetyCacheKey2 base64EncodedStringWithOptions:0];
    [v3 setObject:v35 forKey:@"__kSMSessionManagerStateSafetyCacheKeyKey"];
  }

  startMessageGUID = [(SMSessionManagerState *)self startMessageGUID];

  if (startMessageGUID)
  {
    startMessageGUID2 = [(SMSessionManagerState *)self startMessageGUID];
    [v3 setObject:startMessageGUID2 forKey:@"__kSMSessionManagerStateStartMessageGUIDKey"];
  }

  scheduledSendMessageGUID = [(SMSessionManagerState *)self scheduledSendMessageGUID];

  if (scheduledSendMessageGUID)
  {
    scheduledSendMessageGUID2 = [(SMSessionManagerState *)self scheduledSendMessageGUID];
    [v3 setObject:scheduledSendMessageGUID2 forKey:@"__kSMSessionManagerStateScheduledSendMessageGUIDKey"];
  }

  scheduledSendMessageDate = [(SMSessionManagerState *)self scheduledSendMessageDate];

  if (scheduledSendMessageDate)
  {
    v41 = MEMORY[0x277CCABB0];
    scheduledSendMessageDate2 = [(SMSessionManagerState *)self scheduledSendMessageDate];
    [scheduledSendMessageDate2 timeIntervalSince1970];
    v43 = [v41 numberWithDouble:?];
    [v3 setObject:v43 forKey:@"__kSMSessionManagerStateScheduledSendMessageDateKey"];
  }

  estimatedEndDate = [(SMSessionManagerState *)self estimatedEndDate];

  if (estimatedEndDate)
  {
    v45 = MEMORY[0x277CCABB0];
    estimatedEndDate2 = [(SMSessionManagerState *)self estimatedEndDate];
    [estimatedEndDate2 timeIntervalSince1970];
    v47 = [v45 numberWithDouble:?];
    [v3 setObject:v47 forKey:@"__kSMSessionManagerStateEstimatedEndDateKey"];
  }

  coarseEstimatedEndDate = [(SMSessionManagerState *)self coarseEstimatedEndDate];

  if (coarseEstimatedEndDate)
  {
    v49 = MEMORY[0x277CCABB0];
    coarseEstimatedEndDate2 = [(SMSessionManagerState *)self coarseEstimatedEndDate];
    [coarseEstimatedEndDate2 timeIntervalSince1970];
    v51 = [v49 numberWithDouble:?];
    [v3 setObject:v51 forKey:@"__kSMSessionManagerStateCoarseEstimatedEndDateKey"];
  }

  activePairedDeviceIdentifier = [(SMSessionManagerState *)self activePairedDeviceIdentifier];

  if (activePairedDeviceIdentifier)
  {
    activePairedDeviceIdentifier2 = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
    uUIDString2 = [activePairedDeviceIdentifier2 UUIDString];
    [v3 setObject:uUIDString2 forKey:@"__kSMSessionManagerStateActivePairedDeviceIdentifierKey"];
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
  configuration = [(SMSessionManagerState *)self configuration];
  v33 = [configuration description];
  v32 = [SMSessionMonitorContext userTriggerResponseToString:[(SMSessionManagerState *)self userTriggerResponse]];
  monitorContext = [(SMSessionManagerState *)self monitorContext];
  v18 = [monitorContext description];
  date = [(SMSessionManagerState *)self date];
  stringFromDate = [date stringFromDate];
  location = [(SMSessionManagerState *)self location];
  v29 = [location description];
  allowReadToken = [(SMSessionManagerState *)self allowReadToken];
  v16 = [allowReadToken description];
  safetyCacheKey = [(SMSessionManagerState *)self safetyCacheKey];
  v28 = [safetyCacheKey description];
  startMessageGUID = [(SMSessionManagerState *)self startMessageGUID];
  scheduledSendMessageGUID = [(SMSessionManagerState *)self scheduledSendMessageGUID];
  scheduledSendMessageDate = [(SMSessionManagerState *)self scheduledSendMessageDate];
  stringFromDate2 = [scheduledSendMessageDate stringFromDate];
  activeDeviceIdentifier = [(SMSessionManagerState *)self activeDeviceIdentifier];
  estimatedEndDate = [(SMSessionManagerState *)self estimatedEndDate];
  stringFromDate3 = [estimatedEndDate stringFromDate];
  coarseEstimatedEndDate = [(SMSessionManagerState *)self coarseEstimatedEndDate];
  stringFromDate4 = [coarseEstimatedEndDate stringFromDate];
  v5 = [SMSessionManagerState convertEstimatedEndDateStatusToString:[(SMSessionManagerState *)self estimatedEndDateStatus]];
  v6 = [SMSessionMonitorContext sessionEndReasonToString:[(SMSessionManagerState *)self sessionEndReason]];
  sessionStateTransitionDate = [(SMSessionManagerState *)self sessionStateTransitionDate];
  stringFromDate5 = [sessionStateTransitionDate stringFromDate];
  activePairedDeviceIdentifier = [(SMSessionManagerState *)self activePairedDeviceIdentifier];
  v22 = [v21 stringWithFormat:@"{SessionState:%@, Configuration:%@, UserTriggerResponse:%@, monitorContext:%@, date:%@, location:%@, allowReadToken:%@, safetyCacheKey:%@, startMessageGUID:%@, scheduledSendMessageGUID:%@, scheduledSendMessageDate:%@, activeDeviceIdentifier:%@, estimatedEndDate:%@, coarseEstimatedEndDate:%@, estimatedEndDateStatus:%@, sessionEndReason:%@, sessionStateTransitionDate:%@, activePairedDeviceIdentifier:%@}", v30, v33, v32, v18, stringFromDate, v29, v16, v28, startMessageGUID, scheduledSendMessageGUID, stringFromDate2, activeDeviceIdentifier, stringFromDate3, stringFromDate4, v5, v6, stringFromDate5, activePairedDeviceIdentifier];

  return v22;
}

- (BOOL)isTimerExtensionValid:(double)valid
{
  v21 = *MEMORY[0x277D85DE8];
  configuration = [(SMSessionManagerState *)self configuration];
  sessionStartDate = [configuration sessionStartDate];

  configuration2 = [(SMSessionManagerState *)self configuration];
  time = [configuration2 time];
  timeBound = [time timeBound];

  if (sessionStartDate && timeBound)
  {
    [timeBound timeIntervalSinceDate:sessionStartDate];
    v11 = v10 + 900.0 + valid <= 43200.0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "[SMSessionManagerState isTimerExtensionValid:]";
      v17 = 2112;
      v18 = sessionStartDate;
      v19 = 2112;
      v20 = timeBound;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "%s, Unable to determine if timer extension is valid,startDate,%@,endDate,%@", &v15, 0x20u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

@end