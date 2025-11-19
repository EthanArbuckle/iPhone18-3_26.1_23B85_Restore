@interface SMSessionConfiguration
+ (BOOL)configurationIsValid:(id)a3;
+ (id)sessionTypeToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSameSession:(id)a3;
- (SMHandle)handle;
- (SMSessionConfiguration)initWithCoder:(id)a3;
- (SMSessionConfiguration)initWithConversation:(id)a3 sessionID:(id)a4 sessionStartDate:(id)a5 sessionType:(unint64_t)a6 time:(id)a7 destination:(id)a8 userResponseSafeDate:(id)a9 sessionSupportsHandoff:(BOOL)a10 sosReceivers:(id)a11 sessionWorkoutIdentifier:(id)a12 sessionWorkoutType:(unint64_t)a13 sessionWorkoutMirrorType:(int64_t)a14;
- (SMSessionConfiguration)initWithDictionary:(id)a3;
- (id)coarseEstimatedEndDate;
- (id)copyConfigurationWithNewSessionID:(id)a3;
- (id)description;
- (id)estimatedEndDate;
- (id)initTimeBoundSessionConfigurationWithConversation:(id)a3 sessionID:(id)a4 time:(id)a5 sessionSupportsHandoff:(BOOL)a6 sosReceivers:(id)a7;
- (id)initWorkoutBoundSessionConfigurationWithConversation:(id)a3 sessionID:(id)a4 sessionStartDate:(id)a5 sessionSupportsHandoff:(BOOL)a6 sosReceivers:(id)a7 sessionWorkoutIdentifier:(id)a8 sessionWorkoutType:(unint64_t)a9 sessionWorkoutMirrorType:(int64_t)a10;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionConfiguration

- (id)initTimeBoundSessionConfigurationWithConversation:(id)a3 sessionID:(id)a4 time:(id)a5 sessionSupportsHandoff:(BOOL)a6 sosReceivers:(id)a7
{
  v12 = MEMORY[0x277CBEAA8];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 date];
  LOBYTE(v20) = a6;
  v18 = [(SMSessionConfiguration *)self initWithConversation:v16 sessionID:v15 sessionStartDate:v17 sessionType:1 time:v14 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v20 sosReceivers:v13 sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];

  return v18;
}

- (id)initWorkoutBoundSessionConfigurationWithConversation:(id)a3 sessionID:(id)a4 sessionStartDate:(id)a5 sessionSupportsHandoff:(BOOL)a6 sosReceivers:(id)a7 sessionWorkoutIdentifier:(id)a8 sessionWorkoutType:(unint64_t)a9 sessionWorkoutMirrorType:(int64_t)a10
{
  v10 = self;
  if (a9)
  {
    LOBYTE(v14) = a6;
    v10 = [(SMSessionConfiguration *)self initWithConversation:a3 sessionID:a4 sessionStartDate:a5 sessionType:4 time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v14 sosReceivers:a7 sessionWorkoutIdentifier:a8 sessionWorkoutType:a9 sessionWorkoutMirrorType:a10];
    v11 = v10;
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

- (SMSessionConfiguration)initWithConversation:(id)a3 sessionID:(id)a4 sessionStartDate:(id)a5 sessionType:(unint64_t)a6 time:(id)a7 destination:(id)a8 userResponseSafeDate:(id)a9 sessionSupportsHandoff:(BOOL)a10 sosReceivers:(id)a11 sessionWorkoutIdentifier:(id)a12 sessionWorkoutType:(unint64_t)a13 sessionWorkoutMirrorType:(int64_t)a14
{
  v33 = a3;
  v20 = a4;
  v32 = a5;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v28 = a11;
  v27 = a12;
  if (v20)
  {
    v34.receiver = self;
    v34.super_class = SMSessionConfiguration;
    v21 = [(SMSessionConfiguration *)&v34 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_conversation, a3);
      objc_storeStrong(&v22->_sessionID, a4);
      objc_storeStrong(&v22->_sessionStartDate, a5);
      v22->_sessionType = a6;
      objc_storeStrong(&v22->_time, a7);
      objc_storeStrong(&v22->_destination, a8);
      objc_storeStrong(&v22->_userResponseSafeDate, a9);
      v22->_sessionSupportsHandoff = a10;
      objc_storeStrong(&v22->_sosReceivers, a11);
      objc_storeStrong(&v22->_sessionWorkoutIdentifier, a12);
      v22->_sessionWorkoutType = a13;
      v22->_sessionWorkoutMirrorType = a14;
    }

    self = v22;
    v23 = self;
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)copyConfigurationWithNewSessionID:(id)a3
{
  v4 = a3;
  v17 = [SMSessionConfiguration alloc];
  v16 = [(SMSessionConfiguration *)self conversation];
  v5 = [(SMSessionConfiguration *)self sessionStartDate];
  v15 = [(SMSessionConfiguration *)self sessionType];
  v6 = [(SMSessionConfiguration *)self time];
  v7 = [(SMSessionConfiguration *)self destination];
  v8 = [(SMSessionConfiguration *)self userResponseSafeDate];
  v9 = [(SMSessionConfiguration *)self sessionSupportsHandoff];
  v10 = [(SMSessionConfiguration *)self sosReceivers];
  v11 = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];
  LOBYTE(v14) = v9;
  v12 = [(SMSessionConfiguration *)v17 initWithConversation:v16 sessionID:v4 sessionStartDate:v5 sessionType:v15 time:v6 destination:v7 userResponseSafeDate:v8 sessionSupportsHandoff:v14 sosReceivers:v10 sessionWorkoutIdentifier:v11 sessionWorkoutType:[(SMSessionConfiguration *)self sessionWorkoutType] sessionWorkoutMirrorType:[(SMSessionConfiguration *)self sessionWorkoutMirrorType]];

  return v12;
}

- (id)estimatedEndDate
{
  if ([(SMSessionConfiguration *)self sessionType]== 2)
  {
    v3 = [(SMSessionConfiguration *)self destination];

    if (v3)
    {
      v4 = [(SMSessionConfiguration *)self destination];
      v5 = [v4 eta];
      v6 = [v5 etaDate];

LABEL_7:
      goto LABEL_11;
    }
  }

  if ([(SMSessionConfiguration *)self sessionType]== 1)
  {
    v7 = [(SMSessionConfiguration *)self time];

    if (v7)
    {
      v4 = [(SMSessionConfiguration *)self time];
      v6 = [v4 timeBound];
      goto LABEL_7;
    }
  }

  if ([(SMSessionConfiguration *)self sessionType]== 4)
  {
    v6 = [(NSDate *)self->_sessionStartDate dateByAddingTimeInterval:3600.0];
  }

  else
  {
    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (id)coarseEstimatedEndDate
{
  v2 = [(SMSessionConfiguration *)self estimatedEndDate];
  v3 = [v2 roundedTime];

  return v3;
}

+ (id)sessionTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B65DE8[a3 - 1];
  }
}

+ (BOOL)configurationIsValid:(id)a3
{
  v3 = a3;
  v4 = [v3 sessionID];

  if (v4)
  {
    v4 = [v3 conversation];

    if (v4)
    {
      if (![v3 sessionType])
      {
        goto LABEL_11;
      }

      if ([v3 sessionType] != 2 || (objc_msgSend(v3, "destination"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
      {
        if ([v3 sessionType] != 1 || (objc_msgSend(v3, "time"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
        {
          if ([v3 sessionType] != 4 || objc_msgSend(v3, "sessionWorkoutType"))
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }

LABEL_11:
          LOBYTE(v4) = 0;
        }
      }
    }
  }

LABEL_12:

  return v4;
}

- (SMSessionConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationConversationKey"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationSessionIDKey"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationStartDateKey"];
  v16 = [v3 decodeIntegerForKey:@"__kSMSessionConfigurationTypeKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationTimeKey"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationDestinationKey"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
  v8 = [v3 decodeBoolForKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationSOSReceiversKey"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
  v11 = [v3 decodeIntegerForKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];
  v12 = [v3 decodeIntegerForKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];

  LOBYTE(v15) = v8;
  v13 = [(SMSessionConfiguration *)self initWithConversation:v18 sessionID:v17 sessionStartDate:v4 sessionType:v16 time:v5 destination:v6 userResponseSafeDate:v7 sessionSupportsHandoff:v15 sosReceivers:v9 sessionWorkoutIdentifier:v10 sessionWorkoutType:v11 sessionWorkoutMirrorType:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  conversation = self->_conversation;
  v5 = a3;
  [v5 encodeObject:conversation forKey:@"__kSMSessionConfigurationConversationKey"];
  [v5 encodeObject:self->_sessionID forKey:@"__kSMSessionConfigurationSessionIDKey"];
  [v5 encodeObject:self->_sessionStartDate forKey:@"__kSMSessionConfigurationStartDateKey"];
  [v5 encodeInteger:self->_sessionType forKey:@"__kSMSessionConfigurationTypeKey"];
  [v5 encodeObject:self->_time forKey:@"__kSMSessionConfigurationTimeKey"];
  [v5 encodeObject:self->_destination forKey:@"__kSMSessionConfigurationDestinationKey"];
  [v5 encodeObject:self->_userResponseSafeDate forKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
  [v5 encodeBool:self->_sessionSupportsHandoff forKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];
  [v5 encodeObject:self->_sosReceivers forKey:@"__kSMSessionConfigurationSOSReceiversKey"];
  [v5 encodeObject:self->_sessionWorkoutIdentifier forKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
  [v5 encodeInteger:self->_sessionWorkoutType forKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];
  [v5 encodeInteger:self->_sessionWorkoutMirrorType forKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];
}

- (unint64_t)hash
{
  v22 = [(SMSessionConfiguration *)self conversation];
  v3 = [v22 hash];
  v4 = [(SMSessionConfiguration *)self sessionID];
  v5 = [v4 hash] ^ v3;
  v6 = [(SMSessionConfiguration *)self sessionStartDate];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(SMSessionConfiguration *)self sessionType];
  v9 = [(SMSessionConfiguration *)self time];
  v10 = [v9 hash];
  v11 = [(SMSessionConfiguration *)self destination];
  v12 = v10 ^ [v11 hash];
  v13 = [(SMSessionConfiguration *)self userResponseSafeDate];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [(SMSessionConfiguration *)self sessionSupportsHandoff];
  v16 = [(SMSessionConfiguration *)self sosReceivers];
  v17 = v14 ^ v15 ^ [v16 hash];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionConfiguration sessionWorkoutType](self, "sessionWorkoutType")}];
  v19 = [v18 hash];
  v20 = v17 ^ [(SMSessionConfiguration *)self sessionWorkoutMirrorType];

  return v20 ^ v19;
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
      v8 = [(SMSessionConfiguration *)self conversation];
      v9 = [(SMSessionConfiguration *)v7 conversation];
      if (v8 != v9)
      {
        v3 = [(SMSessionConfiguration *)self conversation];
        v10 = [(SMSessionConfiguration *)v7 conversation];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_34;
        }

        v60 = v10;
        v61 = v3;
      }

      v12 = [(SMSessionConfiguration *)self sessionID];
      v13 = [(SMSessionConfiguration *)v7 sessionID];
      if (v12 != v13)
      {
        v3 = [(SMSessionConfiguration *)self sessionID];
        v4 = [(SMSessionConfiguration *)v7 sessionID];
        if (![v3 isEqual:v4])
        {
          goto LABEL_19;
        }
      }

      v59 = v4;
      v14 = [(SMSessionConfiguration *)self sessionStartDate];
      [v14 timeIntervalSince1970];
      v16 = v15;
      v17 = [(SMSessionConfiguration *)v7 sessionStartDate];
      [v17 timeIntervalSince1970];
      if (v16 != v18 || (v58 = v3, v19 = [(SMSessionConfiguration *)self sessionType], v20 = v19 == [(SMSessionConfiguration *)v7 sessionType], v3 = v58, !v20))
      {

        v4 = v59;
        if (v12 == v13)
        {
LABEL_20:

          v11 = 0;
          goto LABEL_33;
        }

LABEL_19:

        goto LABEL_20;
      }

      v55 = v17;
      v21 = v14;
      v22 = [(SMSessionConfiguration *)self time];
      v56 = [(SMSessionConfiguration *)v7 time];
      v57 = v22;
      if (v22 != v56)
      {
        v23 = [(SMSessionConfiguration *)self time];
        v50 = [(SMSessionConfiguration *)v7 time];
        v51 = v23;
        if (![v23 isEqual:v50])
        {
          v11 = 0;
          v24 = v21;
          v25 = v55;
          goto LABEL_28;
        }
      }

      v54 = v21;
      v26 = [(SMSessionConfiguration *)self destination];
      [(SMSessionConfiguration *)v7 destination];
      v53 = v52 = v26;
      if (v26 != v53)
      {
        v27 = [(SMSessionConfiguration *)self destination];
        v48 = [(SMSessionConfiguration *)v7 destination];
        v49 = v27;
        if (![v27 isEqual:v48])
        {
          v11 = 0;
          v28 = v52;
          v29 = v53;
          goto LABEL_27;
        }
      }

      v30 = [(SMSessionConfiguration *)self userResponseSafeDate];
      [v30 timeIntervalSince1970];
      v32 = v31;
      v33 = [(SMSessionConfiguration *)v7 userResponseSafeDate];
      [v33 timeIntervalSince1970];
      if (v32 != v34 || (v47 = v33, v35 = [(SMSessionConfiguration *)self sessionSupportsHandoff], v20 = v35 == [(SMSessionConfiguration *)v7 sessionSupportsHandoff], v33 = v47, !v20))
      {

        v11 = 0;
        v28 = v52;
        v29 = v53;
        v3 = v58;
        if (v52 != v53)
        {
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      v37 = [(SMSessionConfiguration *)self sosReceivers];
      [(SMSessionConfiguration *)v7 sosReceivers];
      v46 = v45 = v37;
      if (v37 == v46 || (-[SMSessionConfiguration sosReceivers](self, "sosReceivers"), v38 = objc_claimAutoreleasedReturnValue(), -[SMSessionConfiguration sosReceivers](v7, "sosReceivers"), v43 = v38, v44 = objc_claimAutoreleasedReturnValue(), [v38 isEqual:v44]))
      {
        v41 = [(SMSessionConfiguration *)self sessionWorkoutType];
        if (v41 == [(SMSessionConfiguration *)v7 sessionWorkoutType])
        {
          v42 = [(SMSessionConfiguration *)self sessionWorkoutMirrorType];
          v11 = v42 == [(SMSessionConfiguration *)v7 sessionWorkoutMirrorType];
        }

        else
        {
          v11 = 0;
        }

        v40 = v45;
        v3 = v58;
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
            if (v57 == v56)
            {
LABEL_29:

LABEL_30:
              if (v12 != v13)
              {
              }

LABEL_33:
              v10 = v60;
              v3 = v61;
              if (v8 == v9)
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

          if (v57 != v56)
          {
          }

          goto LABEL_30;
        }
      }

      else
      {
        v11 = 0;
        v3 = v58;
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

- (BOOL)isSameSession:(id)a3
{
  v6 = a3;
  v7 = [(SMSessionConfiguration *)self conversation];
  v8 = [v6 conversation];
  if (v7 != v8)
  {
    v3 = [(SMSessionConfiguration *)self conversation];
    v4 = [v6 conversation];
    if (![v3 isEqual:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(SMSessionConfiguration *)self sessionID];
  v11 = [v6 sessionID];
  if (v10 == v11)
  {
    v9 = 1;
  }

  else
  {
    v12 = [(SMSessionConfiguration *)self sessionID];
    v13 = [v6 sessionID];
    v9 = [v12 isEqual:v13];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (SMSessionConfiguration)initWithDictionary:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[SMSessionTime alloc] initWithDictionary:v4];
  v46 = [[SMSessionDestination alloc] initWithDictionary:v4];
  v6 = [[SMConversation alloc] initWithDictionary:v4];
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

  v8 = [[SMHandle alloc] initWithDictionary:v4];
  if (v8)
  {
    v9 = v8;
    v10 = [SMConversation alloc];
    v49 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v6 = [(SMConversation *)v10 initWithReceiverHandles:v11 identifier:0 displayName:0];

LABEL_6:
    v48 = self;
    v12 = [v4 valueForKey:@"__kSMSessionConfigurationStartDateKey"];
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

    v15 = [v4 valueForKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
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

    v43 = [v4 valueForKey:@"__kSMSessionConfigurationTypeKey"];
    v18 = [v43 intValue];
    v19 = objc_alloc(MEMORY[0x277CCAD78]);
    v20 = [v4 valueForKey:@"__kSMSessionConfigurationSessionIDKey"];
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

    v22 = [v4 valueForKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];
    v41 = [v22 BOOLValue];

    v23 = objc_alloc(MEMORY[0x277CCAD78]);
    v24 = [v4 valueForKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
    v42 = [v23 initWithUUIDString:v24];

    v25 = [v4 valueForKey:@"__kSMSessionConfigurationSessionWorkoutTypeKey"];
    v26 = [v25 integerValue];

    v27 = [v4 valueForKey:@"__kSMSessionConfigurationSessionWorkoutMirrorTypeKey"];
    v28 = [v27 integerValue];

    v29 = [SMConversation alloc];
    v30 = [v4 valueForKey:@"__kSMSessionConfigurationSOSReceiversKey"];
    v31 = [(SMConversation *)v29 initWithDictionary:v30];

    if (v18 > 2)
    {
      v32 = v46;
      if (v18 == 3)
      {
        v33 = [(SMSessionConfiguration *)v48 initRoundTripSessionConfigurationWithConversation:v6 sessionID:v21 destination:v46 sessionStartDate:v47 userResponseSafeDate:v45 sessionSupportsHandoff:v41 sosReceivers:v31];
        goto LABEL_29;
      }

      if (v18 == 4)
      {
        v36 = v42;
        v37 = [(SMSessionConfiguration *)v48 initWorkoutBoundSessionConfigurationWithConversation:v6 sessionID:v21 sessionStartDate:v47 sessionSupportsHandoff:v41 sosReceivers:v31 sessionWorkoutIdentifier:v42 sessionWorkoutType:v26 sessionWorkoutMirrorType:v28];
        v48 = v37;
        v5 = v44;
LABEL_32:
        v34 = v37;

        v35 = v34;
LABEL_33:

        self = v48;
        goto LABEL_34;
      }
    }

    else
    {
      v32 = v46;
      if (v18 == 1)
      {
        v5 = v44;
        v37 = [(SMSessionConfiguration *)v48 initTimeBoundSessionConfigurationWithConversation:v6 sessionID:v21 time:v44 sessionStartDate:v47 sessionSupportsHandoff:v41 sosReceivers:v31];
        v48 = v37;
LABEL_31:
        v36 = v42;
        goto LABEL_32;
      }

      if (v18 == 2)
      {
        v33 = [(SMSessionConfiguration *)v48 initDestinationBoundSessionConfigurationWithConversation:v6 sessionID:v21 destination:v46 sessionStartDate:v47 userResponseSafeDate:v45 sessionSupportsHandoff:v41 sosReceivers:v31];
LABEL_29:
        v37 = v33;
        v48 = v37;
        goto LABEL_30;
      }
    }

    LOBYTE(v40) = v41;
    v37 = [[SMSessionConfiguration alloc] initWithConversation:v6 sessionID:v21 sessionStartDate:0 sessionType:v18 time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v40 sosReceivers:v31 sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];
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
  v4 = [(SMSessionConfiguration *)self conversation];
  v5 = [v4 outputToDictionary];

  if (v5)
  {
    [v3 addEntriesFromDictionary:v5];
  }

  v6 = [(SMSessionConfiguration *)self conversation];
  v7 = [v6 receiverHandles];
  v8 = [v7 firstObject];
  v9 = [v8 outputToDictionary];

  if (v9)
  {
    [v3 addEntriesFromDictionary:v9];
  }

  v10 = [(SMSessionConfiguration *)self time];

  if (v10)
  {
    v11 = [(SMSessionConfiguration *)self time];
    v12 = [v11 outputToDictionary];
    [v3 addEntriesFromDictionary:v12];
  }

  v13 = [(SMSessionConfiguration *)self destination];

  if (v13)
  {
    v14 = [(SMSessionConfiguration *)self destination];
    v15 = [v14 outputToDictionary];
    [v3 addEntriesFromDictionary:v15];
  }

  v16 = [(SMSessionConfiguration *)self sessionStartDate];

  if (v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [(SMSessionConfiguration *)self sessionStartDate];
    [v18 timeIntervalSince1970];
    v19 = [v17 numberWithDouble:?];
    [v3 setObject:v19 forKey:@"__kSMSessionConfigurationStartDateKey"];
  }

  v20 = [(SMSessionConfiguration *)self userResponseSafeDate];

  if (v20)
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [(SMSessionConfiguration *)self userResponseSafeDate];
    [v22 timeIntervalSince1970];
    v23 = [v21 numberWithDouble:?];
    [v3 setObject:v23 forKey:@"__kSMSessionConfigurationUserResponseSafeDateKey"];
  }

  v24 = [(SMSessionConfiguration *)self sosReceivers];

  if (v24)
  {
    v25 = [(SMSessionConfiguration *)self sosReceivers];
    v26 = [v25 outputToDictionary];
    [v3 setObject:v26 forKey:@"__kSMSessionConfigurationSOSReceiversKey"];
  }

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionConfiguration sessionSupportsHandoff](self, "sessionSupportsHandoff")}];
  [v3 setObject:v27 forKey:@"__kSMSessionConfigurationSessionSupportsHandoffKey"];

  v28 = [(SMSessionConfiguration *)self sessionID];
  v29 = [v28 UUIDString];
  [v3 setObject:v29 forKey:@"__kSMSessionConfigurationSessionIDKey"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionConfiguration sessionType](self, "sessionType")}];
  [v3 setObject:v30 forKey:@"__kSMSessionConfigurationTypeKey"];

  v31 = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];

  if (v31)
  {
    v32 = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];
    v33 = [v32 UUIDString];
    [v3 setObject:v33 forKey:@"__kSMSessionConfigurationSessionWorkoutIDKey"];
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
  v20 = [(SMSessionConfiguration *)self conversation];
  v15 = [v20 receiverHandles];
  v19 = [(SMSessionConfiguration *)self conversation];
  v14 = [v19 identifier];
  v13 = [(SMSessionConfiguration *)self sessionID];
  v18 = [(SMSessionConfiguration *)self sessionStartDate];
  v12 = [v18 stringFromDate];
  v11 = [SMSessionConfiguration sessionTypeToString:[(SMSessionConfiguration *)self sessionType]];
  v3 = [(SMSessionConfiguration *)self time];
  v4 = [(SMSessionConfiguration *)self destination];
  v5 = [(SMSessionConfiguration *)self userResponseSafeDate];
  v6 = [v5 stringFromDate];
  v7 = [(SMSessionConfiguration *)self sessionSupportsHandoff];
  v8 = [(SMSessionConfiguration *)self sosReceivers];
  v9 = [(SMSessionConfiguration *)self sessionWorkoutIdentifier];
  v17 = [v16 stringWithFormat:@"{ReceiverHandles:%@, GroupID:%@, SessionID:%@, SessionStartDate:%@, SessionType:%@, Time:%@, Destination:%@, userResponseSafeDate:%@, SessionSupportsHandoff:%d, SOSReceivers:%@, SessionWorkoutID:%@, SessionWorkoutType:%lu, SessionWorkoutMirrorType:%ld}", v15, v14, v13, v12, v11, v3, v4, v6, v7, v8, v9, -[SMSessionConfiguration sessionWorkoutType](self, "sessionWorkoutType"), -[SMSessionConfiguration sessionWorkoutMirrorType](self, "sessionWorkoutMirrorType")];

  return v17;
}

- (SMHandle)handle
{
  v2 = [(SMSessionConfiguration *)self conversation];
  v3 = [v2 receiverHandles];
  v4 = [v3 firstObject];

  return v4;
}

@end