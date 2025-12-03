@interface SMSessionConfiguration
+ (BOOL)configurationIsValid:(id)valid;
+ (id)sessionTypeToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSameSession:(id)session;
- (SMHandle)handle;
- (SMSessionConfiguration)initWithCoder:(id)coder;
- (SMSessionConfiguration)initWithConversation:(id)conversation sessionID:(id)d sessionStartDate:(id)date sessionType:(unint64_t)type time:(id)time destination:(id)destination userResponseSafeDate:(id)safeDate sessionSupportsHandoff:(BOOL)self0 sosReceivers:(id)self1 sessionWorkoutIdentifier:(id)self2 sessionWorkoutType:(unint64_t)self3 sessionWorkoutMirrorType:(int64_t)self4;
- (SMSessionConfiguration)initWithDictionary:(id)dictionary;
- (id)coarseEstimatedEndDate;
- (id)copyConfigurationWithNewSessionID:(id)d;
- (id)description;
- (id)estimatedEndDate;
- (id)initTimeBoundSessionConfigurationWithConversation:(id)conversation sessionID:(id)d time:(id)time sessionSupportsHandoff:(BOOL)handoff sosReceivers:(id)receivers;
- (id)initWorkoutBoundSessionConfigurationWithConversation:(id)conversation sessionID:(id)d sessionStartDate:(id)date sessionSupportsHandoff:(BOOL)handoff sosReceivers:(id)receivers sessionWorkoutIdentifier:(id)identifier sessionWorkoutType:(unint64_t)type sessionWorkoutMirrorType:(int64_t)self0;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionConfiguration

- (id)initTimeBoundSessionConfigurationWithConversation:(id)conversation sessionID:(id)d time:(id)time sessionSupportsHandoff:(BOOL)handoff sosReceivers:(id)receivers
{
  v12 = MEMORY[0x277CBEAA8];
  receiversCopy = receivers;
  timeCopy = time;
  dCopy = d;
  conversationCopy = conversation;
  date = [v12 date];
  LOBYTE(v20) = handoff;
  v18 = [(SMSessionConfiguration *)self initWithConversation:conversationCopy sessionID:dCopy sessionStartDate:date sessionType:1 time:timeCopy destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v20 sosReceivers:receiversCopy sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];

  return v18;
}

- (id)initWorkoutBoundSessionConfigurationWithConversation:(id)conversation sessionID:(id)d sessionStartDate:(id)date sessionSupportsHandoff:(BOOL)handoff sosReceivers:(id)receivers sessionWorkoutIdentifier:(id)identifier sessionWorkoutType:(unint64_t)type sessionWorkoutMirrorType:(int64_t)self0
{
  selfCopy = self;
  if (type)
  {
    LOBYTE(v14) = handoff;
    selfCopy = [(SMSessionConfiguration *)self initWithConversation:conversation sessionID:d sessionStartDate:date sessionType:4 time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v14 sosReceivers:receivers sessionWorkoutIdentifier:identifier sessionWorkoutType:type sessionWorkoutMirrorType:mirrorType];
    v11 = selfCopy;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionWorkoutType != RTHKWorkoutActivityTypeUnknown", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (SMSessionConfiguration)initWithConversation:(id)conversation sessionID:(id)d sessionStartDate:(id)date sessionType:(unint64_t)type time:(id)time destination:(id)destination userResponseSafeDate:(id)safeDate sessionSupportsHandoff:(BOOL)self0 sosReceivers:(id)self1 sessionWorkoutIdentifier:(id)self2 sessionWorkoutType:(unint64_t)self3 sessionWorkoutMirrorType:(int64_t)self4
{
  conversationCopy = conversation;
  dCopy = d;
  dateCopy = date;
  timeCopy = time;
  destinationCopy = destination;
  safeDateCopy = safeDate;
  receiversCopy = receivers;
  identifierCopy = identifier;
  if (dCopy)
  {
    v34.receiver = self;
    v34.super_class = SMSessionConfiguration;
    v21 = [(SMSessionConfiguration *)&v34 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_conversation, conversation);
      objc_storeStrong(&v22->_sessionID, d);
      objc_storeStrong(&v22->_sessionStartDate, date);
      v22->_sessionType = type;
      objc_storeStrong(&v22->_time, time);
      objc_storeStrong(&v22->_destination, destination);
      objc_storeStrong(&v22->_userResponseSafeDate, safeDate);
      v22->_sessionSupportsHandoff = handoff;
      objc_storeStrong(&v22->_sosReceivers, receivers);
      objc_storeStrong(&v22->_sessionWorkoutIdentifier, identifier);
      v22->_sessionWorkoutType = workoutType;
      v22->_sessionWorkoutMirrorType = mirrorType;
    }

    self = v22;
    selfCopy = self;
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyConfigurationWithNewSessionID:(id)d
{
  dCopy = d;
  v17 = [SMSessionConfiguration alloc];
  conversation = [(SMSessionConfiguration *)self conversation];
  sessionStartDate = [(SMSessionConfiguration *)self sessionStartDate];
  sessionType = [(SMSessionConfiguration *)self sessionType];
  time = [(SMSessionConfiguration *)self time];
  destination = [(SMSessionConfiguration *)self destination];
  userResponseSafeDate = [(SMSessionConfiguration *)self userResponseSafeDate];
  sessionSupportsHandoff = [(SMSessionConfiguration *)self sessionSupportsHandoff];
  sosReceivers = [(SMSessionConfiguration *)self sosReceivers];
  sessionWorkoutIdentifier = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];
  LOBYTE(v14) = sessionSupportsHandoff;
  v12 = [(SMSessionConfiguration *)v17 initWithConversation:conversation sessionID:dCopy sessionStartDate:sessionStartDate sessionType:sessionType time:time destination:destination userResponseSafeDate:userResponseSafeDate sessionSupportsHandoff:v14 sosReceivers:sosReceivers sessionWorkoutIdentifier:sessionWorkoutIdentifier sessionWorkoutType:[(SMSessionConfiguration *)self sessionWorkoutType] sessionWorkoutMirrorType:[(SMSessionConfiguration *)self sessionWorkoutMirrorType]];

  return v12;
}

- (id)estimatedEndDate
{
  if ([(SMSessionConfiguration *)self sessionType]== 2)
  {
    destination = [(SMSessionConfiguration *)self destination];

    if (destination)
    {
      destination2 = [(SMSessionConfiguration *)self destination];
      v5 = [destination2 eta];
      etaDate = [v5 etaDate];

LABEL_7:
      goto LABEL_11;
    }
  }

  if ([(SMSessionConfiguration *)self sessionType]== 1)
  {
    time = [(SMSessionConfiguration *)self time];

    if (time)
    {
      destination2 = [(SMSessionConfiguration *)self time];
      etaDate = [destination2 timeBound];
      goto LABEL_7;
    }
  }

  if ([(SMSessionConfiguration *)self sessionType]== 4)
  {
    etaDate = [(NSDate *)self->_sessionStartDate dateByAddingTimeInterval:3600.0];
  }

  else
  {
    etaDate = 0;
  }

LABEL_11:

  return etaDate;
}

- (id)coarseEstimatedEndDate
{
  estimatedEndDate = [(SMSessionConfiguration *)self estimatedEndDate];
  roundedTime = [estimatedEndDate roundedTime];

  return roundedTime;
}

+ (id)sessionTypeToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B65DE8[string - 1];
  }
}

+ (BOOL)configurationIsValid:(id)valid
{
  validCopy = valid;
  sessionID = [validCopy sessionID];

  if (sessionID)
  {
    sessionID = [validCopy conversation];

    if (sessionID)
    {
      if (![validCopy sessionType])
      {
        goto LABEL_11;
      }

      if ([validCopy sessionType] != 2 || (objc_msgSend(validCopy, "destination"), sessionID = objc_claimAutoreleasedReturnValue(), sessionID, sessionID))
      {
        if ([validCopy sessionType] != 1 || (objc_msgSend(validCopy, "time"), sessionID = objc_claimAutoreleasedReturnValue(), sessionID, sessionID))
        {
          if ([validCopy sessionType] != 4 || objc_msgSend(validCopy, "sessionWorkoutType"))
          {
            LOBYTE(sessionID) = 1;
            goto LABEL_12;
          }

LABEL_11:
          LOBYTE(sessionID) = 0;
        }
      }
    }
  }

LABEL_12:

  return sessionID;
}

- (SMSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationConversationKey"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationSessionIDKey"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationStartDateKey"];
  v16 = [coderCopy decodeIntegerForKey:@"__kSMSessionConfigurationTypeKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationTimeKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationDestinationKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
  v8 = [coderCopy decodeBoolForKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationSOSReceiversKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
  v11 = [coderCopy decodeIntegerForKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];
  v12 = [coderCopy decodeIntegerForKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];

  LOBYTE(v15) = v8;
  v13 = [(SMSessionConfiguration *)self initWithConversation:v18 sessionID:v17 sessionStartDate:v4 sessionType:v16 time:v5 destination:v6 userResponseSafeDate:v7 sessionSupportsHandoff:v15 sosReceivers:v9 sessionWorkoutIdentifier:v10 sessionWorkoutType:v11 sessionWorkoutMirrorType:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  conversation = self->_conversation;
  coderCopy = coder;
  [coderCopy encodeObject:conversation forKey:@"__kSMSessionConfigurationConversationKey"];
  [coderCopy encodeObject:self->_sessionID forKey:@"__kSMSessionConfigurationSessionIDKey"];
  [coderCopy encodeObject:self->_sessionStartDate forKey:@"__kSMSessionConfigurationStartDateKey"];
  [coderCopy encodeInteger:self->_sessionType forKey:@"__kSMSessionConfigurationTypeKey"];
  [coderCopy encodeObject:self->_time forKey:@"__kSMSessionConfigurationTimeKey"];
  [coderCopy encodeObject:self->_destination forKey:@"__kSMSessionConfigurationDestinationKey"];
  [coderCopy encodeObject:self->_userResponseSafeDate forKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
  [coderCopy encodeBool:self->_sessionSupportsHandoff forKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];
  [coderCopy encodeObject:self->_sosReceivers forKey:@"__kSMSessionConfigurationSOSReceiversKey"];
  [coderCopy encodeObject:self->_sessionWorkoutIdentifier forKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
  [coderCopy encodeInteger:self->_sessionWorkoutType forKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];
  [coderCopy encodeInteger:self->_sessionWorkoutMirrorType forKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];
}

- (unint64_t)hash
{
  conversation = [(SMSessionConfiguration *)self conversation];
  v3 = [conversation hash];
  sessionID = [(SMSessionConfiguration *)self sessionID];
  v5 = [sessionID hash] ^ v3;
  sessionStartDate = [(SMSessionConfiguration *)self sessionStartDate];
  v7 = [sessionStartDate hash];
  v8 = v5 ^ v7 ^ [(SMSessionConfiguration *)self sessionType];
  time = [(SMSessionConfiguration *)self time];
  v10 = [time hash];
  destination = [(SMSessionConfiguration *)self destination];
  v12 = v10 ^ [destination hash];
  userResponseSafeDate = [(SMSessionConfiguration *)self userResponseSafeDate];
  v14 = v8 ^ v12 ^ [userResponseSafeDate hash];
  sessionSupportsHandoff = [(SMSessionConfiguration *)self sessionSupportsHandoff];
  sosReceivers = [(SMSessionConfiguration *)self sosReceivers];
  v17 = v14 ^ sessionSupportsHandoff ^ [sosReceivers hash];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionConfiguration sessionWorkoutType](self, "sessionWorkoutType")}];
  v19 = [v18 hash];
  v20 = v17 ^ [(SMSessionConfiguration *)self sessionWorkoutMirrorType];

  return v20 ^ v19;
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
      conversation = [(SMSessionConfiguration *)self conversation];
      conversation2 = [(SMSessionConfiguration *)v7 conversation];
      if (conversation != conversation2)
      {
        conversation3 = [(SMSessionConfiguration *)self conversation];
        conversation4 = [(SMSessionConfiguration *)v7 conversation];
        if (![conversation3 isEqual:conversation4])
        {
          v11 = 0;
          goto LABEL_34;
        }

        v60 = conversation4;
        v61 = conversation3;
      }

      sessionID = [(SMSessionConfiguration *)self sessionID];
      sessionID2 = [(SMSessionConfiguration *)v7 sessionID];
      if (sessionID != sessionID2)
      {
        conversation3 = [(SMSessionConfiguration *)self sessionID];
        sessionID3 = [(SMSessionConfiguration *)v7 sessionID];
        if (![conversation3 isEqual:sessionID3])
        {
          goto LABEL_19;
        }
      }

      v59 = sessionID3;
      sessionStartDate = [(SMSessionConfiguration *)self sessionStartDate];
      [sessionStartDate timeIntervalSince1970];
      v16 = v15;
      sessionStartDate2 = [(SMSessionConfiguration *)v7 sessionStartDate];
      [sessionStartDate2 timeIntervalSince1970];
      if (v16 != v18 || (v58 = conversation3, v19 = [(SMSessionConfiguration *)self sessionType], v20 = v19 == [(SMSessionConfiguration *)v7 sessionType], conversation3 = v58, !v20))
      {

        sessionID3 = v59;
        if (sessionID == sessionID2)
        {
LABEL_20:

          v11 = 0;
          goto LABEL_33;
        }

LABEL_19:

        goto LABEL_20;
      }

      v55 = sessionStartDate2;
      v21 = sessionStartDate;
      time = [(SMSessionConfiguration *)self time];
      time2 = [(SMSessionConfiguration *)v7 time];
      v57 = time;
      if (time != time2)
      {
        time3 = [(SMSessionConfiguration *)self time];
        time4 = [(SMSessionConfiguration *)v7 time];
        v51 = time3;
        if (![time3 isEqual:time4])
        {
          v11 = 0;
          v24 = v21;
          v25 = v55;
          goto LABEL_28;
        }
      }

      v54 = v21;
      destination = [(SMSessionConfiguration *)self destination];
      [(SMSessionConfiguration *)v7 destination];
      v53 = v52 = destination;
      if (destination != v53)
      {
        destination2 = [(SMSessionConfiguration *)self destination];
        destination3 = [(SMSessionConfiguration *)v7 destination];
        v49 = destination2;
        if (![destination2 isEqual:destination3])
        {
          v11 = 0;
          v28 = v52;
          v29 = v53;
          goto LABEL_27;
        }
      }

      userResponseSafeDate = [(SMSessionConfiguration *)self userResponseSafeDate];
      [userResponseSafeDate timeIntervalSince1970];
      v32 = v31;
      userResponseSafeDate2 = [(SMSessionConfiguration *)v7 userResponseSafeDate];
      [userResponseSafeDate2 timeIntervalSince1970];
      if (v32 != v34 || (v47 = userResponseSafeDate2, v35 = [(SMSessionConfiguration *)self sessionSupportsHandoff], v20 = v35 == [(SMSessionConfiguration *)v7 sessionSupportsHandoff], userResponseSafeDate2 = v47, !v20))
      {

        v11 = 0;
        v28 = v52;
        v29 = v53;
        conversation3 = v58;
        if (v52 != v53)
        {
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      sosReceivers = [(SMSessionConfiguration *)self sosReceivers];
      [(SMSessionConfiguration *)v7 sosReceivers];
      v46 = v45 = sosReceivers;
      if (sosReceivers == v46 || (-[SMSessionConfiguration sosReceivers](self, "sosReceivers"), v38 = objc_claimAutoreleasedReturnValue(), -[SMSessionConfiguration sosReceivers](v7, "sosReceivers"), v43 = v38, v44 = objc_claimAutoreleasedReturnValue(), [v38 isEqual:v44]))
      {
        sessionWorkoutType = [(SMSessionConfiguration *)self sessionWorkoutType];
        if (sessionWorkoutType == [(SMSessionConfiguration *)v7 sessionWorkoutType])
        {
          sessionWorkoutMirrorType = [(SMSessionConfiguration *)self sessionWorkoutMirrorType];
          v11 = sessionWorkoutMirrorType == [(SMSessionConfiguration *)v7 sessionWorkoutMirrorType];
        }

        else
        {
          v11 = 0;
        }

        v40 = v45;
        conversation3 = v58;
        v39 = v44;
        if (v45 == v46)
        {
LABEL_45:

          v28 = v52;
          v29 = v53;
          if (v52 != v53)
          {
LABEL_27:

            v24 = v54;
            v25 = v55;
            if (v57 == time2)
            {
LABEL_29:

LABEL_30:
              if (sessionID != sessionID2)
              {
              }

LABEL_33:
              conversation4 = v60;
              conversation3 = v61;
              if (conversation == conversation2)
              {
LABEL_35:

                goto LABEL_36;
              }

LABEL_34:

              goto LABEL_35;
            }

LABEL_28:

            goto LABEL_29;
          }

LABEL_46:

          if (v57 != time2)
          {
          }

          goto LABEL_30;
        }
      }

      else
      {
        v11 = 0;
        conversation3 = v58;
        v39 = v44;
        v40 = v45;
      }

      goto LABEL_45;
    }

    v11 = 0;
  }

LABEL_36:

  return v11;
}

- (BOOL)isSameSession:(id)session
{
  sessionCopy = session;
  conversation = [(SMSessionConfiguration *)self conversation];
  conversation2 = [sessionCopy conversation];
  if (conversation != conversation2)
  {
    conversation3 = [(SMSessionConfiguration *)self conversation];
    conversation4 = [sessionCopy conversation];
    if (![conversation3 isEqual:conversation4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  sessionID = [(SMSessionConfiguration *)self sessionID];
  sessionID2 = [sessionCopy sessionID];
  if (sessionID == sessionID2)
  {
    v9 = 1;
  }

  else
  {
    sessionID3 = [(SMSessionConfiguration *)self sessionID];
    sessionID4 = [sessionCopy sessionID];
    v9 = [sessionID3 isEqual:sessionID4];
  }

  if (conversation != conversation2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (SMSessionConfiguration)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [[SMSessionTime alloc] initWithDictionary:dictionaryCopy];
  v46 = [[SMSessionDestination alloc] initWithDictionary:dictionaryCopy];
  v6 = [[SMConversation alloc] initWithDictionary:dictionaryCopy];
  if (v6)
  {
    goto LABEL_6;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v51 = "[SMSessionConfiguration initWithDictionary:]";
    _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "%s, conversation is nil", buf, 0xCu);
  }

  v8 = [[SMHandle alloc] initWithDictionary:dictionaryCopy];
  if (v8)
  {
    v9 = v8;
    v10 = [SMConversation alloc];
    v49 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v6 = [(SMConversation *)v10 initWithReceiverHandles:v11 identifier:0 displayName:0];

LABEL_6:
    selfCopy = self;
    v12 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationStartDateKey"];
    v13 = v12;
    if (v12)
    {
      v14 = MEMORY[0x277CBEAA8];
      [v12 doubleValue];
      v47 = [v14 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v47 = 0;
    }

    v15 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
    v16 = v15;
    v44 = v5;
    if (v15)
    {
      v17 = MEMORY[0x277CBEAA8];
      [v15 doubleValue];
      v45 = [v17 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v45 = 0;
    }

    v43 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationTypeKey"];
    intValue = [v43 intValue];
    v19 = objc_alloc(MEMORY[0x277CCAD78]);
    v20 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationSessionIDKey"];
    v21 = [v19 initWithUUIDString:v20];

    if (!v21)
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v51 = "[SMSessionConfiguration initWithDictionary:]";
        _os_log_error_impl(&dword_26455D000, v34, OS_LOG_TYPE_ERROR, "%s, sessionID is nil", buf, 0xCu);
      }

      v35 = 0;
      v32 = v46;
      goto LABEL_33;
    }

    v22 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];
    bOOLValue = [v22 BOOLValue];

    v23 = objc_alloc(MEMORY[0x277CCAD78]);
    v24 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
    v42 = [v23 initWithUUIDString:v24];

    v25 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];
    integerValue = [v25 integerValue];

    v27 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];
    integerValue2 = [v27 integerValue];

    v29 = [SMConversation alloc];
    v30 = [dictionaryCopy valueForKey:@"__kSMSessionConfigurationSOSReceiversKey"];
    v31 = [(SMConversation *)v29 initWithDictionary:v30];

    if (intValue > 2)
    {
      v32 = v46;
      if (intValue == 3)
      {
        v33 = [(SMSessionConfiguration *)selfCopy initRoundTripSessionConfigurationWithConversation:v6 sessionID:v21 destination:v46 sessionStartDate:v47 userResponseSafeDate:v45 sessionSupportsHandoff:bOOLValue sosReceivers:v31];
        goto LABEL_29;
      }

      if (intValue == 4)
      {
        v36 = v42;
        v37 = [(SMSessionConfiguration *)selfCopy initWorkoutBoundSessionConfigurationWithConversation:v6 sessionID:v21 sessionStartDate:v47 sessionSupportsHandoff:bOOLValue sosReceivers:v31 sessionWorkoutIdentifier:v42 sessionWorkoutType:integerValue sessionWorkoutMirrorType:integerValue2];
        selfCopy = v37;
        v5 = v44;
LABEL_32:
        v34 = v37;

        v35 = v34;
LABEL_33:

        self = selfCopy;
        goto LABEL_34;
      }
    }

    else
    {
      v32 = v46;
      if (intValue == 1)
      {
        v5 = v44;
        v37 = [(SMSessionConfiguration *)selfCopy initTimeBoundSessionConfigurationWithConversation:v6 sessionID:v21 time:v44 sessionStartDate:v47 sessionSupportsHandoff:bOOLValue sosReceivers:v31];
        selfCopy = v37;
LABEL_31:
        v36 = v42;
        goto LABEL_32;
      }

      if (intValue == 2)
      {
        v33 = [(SMSessionConfiguration *)selfCopy initDestinationBoundSessionConfigurationWithConversation:v6 sessionID:v21 destination:v46 sessionStartDate:v47 userResponseSafeDate:v45 sessionSupportsHandoff:bOOLValue sosReceivers:v31];
LABEL_29:
        v37 = v33;
        selfCopy = v37;
        goto LABEL_30;
      }
    }

    LOBYTE(v40) = bOOLValue;
    v37 = [[SMSessionConfiguration alloc] initWithConversation:v6 sessionID:v21 sessionStartDate:0 sessionType:intValue time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v40 sosReceivers:v31 sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];
LABEL_30:
    v5 = v44;
    goto LABEL_31;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v51 = "[SMSessionConfiguration initWithDictionary:]";
    _os_log_error_impl(&dword_26455D000, &v6->super, OS_LOG_TYPE_ERROR, "%s, toHandle is nil", buf, 0xCu);
  }

  v35 = 0;
  v32 = v46;
LABEL_34:

  v38 = *MEMORY[0x277D85DE8];
  return v35;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  conversation = [(SMSessionConfiguration *)self conversation];
  outputToDictionary = [conversation outputToDictionary];

  if (outputToDictionary)
  {
    [v3 addEntriesFromDictionary:outputToDictionary];
  }

  conversation2 = [(SMSessionConfiguration *)self conversation];
  receiverHandles = [conversation2 receiverHandles];
  firstObject = [receiverHandles firstObject];
  outputToDictionary2 = [firstObject outputToDictionary];

  if (outputToDictionary2)
  {
    [v3 addEntriesFromDictionary:outputToDictionary2];
  }

  time = [(SMSessionConfiguration *)self time];

  if (time)
  {
    time2 = [(SMSessionConfiguration *)self time];
    outputToDictionary3 = [time2 outputToDictionary];
    [v3 addEntriesFromDictionary:outputToDictionary3];
  }

  destination = [(SMSessionConfiguration *)self destination];

  if (destination)
  {
    destination2 = [(SMSessionConfiguration *)self destination];
    outputToDictionary4 = [destination2 outputToDictionary];
    [v3 addEntriesFromDictionary:outputToDictionary4];
  }

  sessionStartDate = [(SMSessionConfiguration *)self sessionStartDate];

  if (sessionStartDate)
  {
    v17 = MEMORY[0x277CCABB0];
    sessionStartDate2 = [(SMSessionConfiguration *)self sessionStartDate];
    [sessionStartDate2 timeIntervalSince1970];
    v19 = [v17 numberWithDouble:?];
    [v3 setObject:v19 forKey:@"__kSMSessionConfigurationStartDateKey"];
  }

  userResponseSafeDate = [(SMSessionConfiguration *)self userResponseSafeDate];

  if (userResponseSafeDate)
  {
    v21 = MEMORY[0x277CCABB0];
    userResponseSafeDate2 = [(SMSessionConfiguration *)self userResponseSafeDate];
    [userResponseSafeDate2 timeIntervalSince1970];
    v23 = [v21 numberWithDouble:?];
    [v3 setObject:v23 forKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
  }

  sosReceivers = [(SMSessionConfiguration *)self sosReceivers];

  if (sosReceivers)
  {
    sosReceivers2 = [(SMSessionConfiguration *)self sosReceivers];
    outputToDictionary5 = [sosReceivers2 outputToDictionary];
    [v3 setObject:outputToDictionary5 forKey:@"__kSMSessionConfigurationSOSReceiversKey"];
  }

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionConfiguration sessionSupportsHandoff](self, "sessionSupportsHandoff")}];
  [v3 setObject:v27 forKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];

  sessionID = [(SMSessionConfiguration *)self sessionID];
  uUIDString = [sessionID UUIDString];
  [v3 setObject:uUIDString forKey:@"__kSMSessionConfigurationSessionIDKey"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionConfiguration sessionType](self, "sessionType")}];
  [v3 setObject:v30 forKey:@"__kSMSessionConfigurationTypeKey"];

  sessionWorkoutIdentifier = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];

  if (sessionWorkoutIdentifier)
  {
    sessionWorkoutIdentifier2 = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];
    uUIDString2 = [sessionWorkoutIdentifier2 UUIDString];
    [v3 setObject:uUIDString2 forKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
  }

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionConfiguration sessionWorkoutType](self, "sessionWorkoutType")}];
  [v3 setObject:v34 forKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];

  v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionConfiguration sessionWorkoutMirrorType](self, "sessionWorkoutMirrorType")}];
  [v3 setObject:v35 forKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];

  return v3;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  conversation = [(SMSessionConfiguration *)self conversation];
  receiverHandles = [conversation receiverHandles];
  conversation2 = [(SMSessionConfiguration *)self conversation];
  identifier = [conversation2 identifier];
  sessionID = [(SMSessionConfiguration *)self sessionID];
  sessionStartDate = [(SMSessionConfiguration *)self sessionStartDate];
  stringFromDate = [sessionStartDate stringFromDate];
  v11 = [SMSessionConfiguration sessionTypeToString:[(SMSessionConfiguration *)self sessionType]];
  time = [(SMSessionConfiguration *)self time];
  destination = [(SMSessionConfiguration *)self destination];
  userResponseSafeDate = [(SMSessionConfiguration *)self userResponseSafeDate];
  stringFromDate2 = [userResponseSafeDate stringFromDate];
  sessionSupportsHandoff = [(SMSessionConfiguration *)self sessionSupportsHandoff];
  sosReceivers = [(SMSessionConfiguration *)self sosReceivers];
  sessionWorkoutIdentifier = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];
  v17 = [v16 stringWithFormat:@"{ReceiverHandles:%@, GroupID:%@, SessionID:%@, SessionStartDate:%@, SessionType:%@, Time:%@, Destination:%@, userResponseSafeDate:%@, SessionSupportsHandoff:%d, SOSReceivers:%@, SessionWorkoutID:%@, SessionWorkoutType:%lu, SessionWorkoutMirrorType:%ld}", receiverHandles, identifier, sessionID, stringFromDate, v11, time, destination, stringFromDate2, sessionSupportsHandoff, sosReceivers, sessionWorkoutIdentifier, -[SMSessionConfiguration sessionWorkoutType](self, "sessionWorkoutType"), -[SMSessionConfiguration sessionWorkoutMirrorType](self, "sessionWorkoutMirrorType")];

  return v17;
}

- (SMHandle)handle
{
  conversation = [(SMSessionConfiguration *)self conversation];
  receiverHandles = [conversation receiverHandles];
  firstObject = [receiverHandles firstObject];

  return firstObject;
}

@end