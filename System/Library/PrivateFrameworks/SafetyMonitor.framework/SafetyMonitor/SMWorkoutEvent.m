@interface SMWorkoutEvent
- (BOOL)isEqual:(id)a3;
- (SMWorkoutEvent)initWithCoder:(id)a3;
- (SMWorkoutEvent)initWithDictionary:(id)a3;
- (SMWorkoutEvent)initWithIdentifier:(id)a3 sessionIdentifier:(id)a4 location:(id)a5 activityType:(unint64_t)a6 locationType:(int64_t)a7 swimmingLocationType:(int64_t)a8 sessionState:(unint64_t)a9 isResumedSessionState:(BOOL)a10 date:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMWorkoutEvent

- (SMWorkoutEvent)initWithIdentifier:(id)a3 sessionIdentifier:(id)a4 location:(id)a5 activityType:(unint64_t)a6 locationType:(int64_t)a7 swimmingLocationType:(int64_t)a8 sessionState:(unint64_t)a9 isResumedSessionState:(BOOL)a10 date:(id)a11
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a11;
  v26.receiver = self;
  v26.super_class = SMWorkoutEvent;
  v19 = [(SMWorkoutEvent *)&v26 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_5;
  }

  v21 = 0;
  if (v16 && v18)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_sessionIdentifier, a4);
    objc_storeStrong(&v20->_location, a5);
    v20->_activityType = a6;
    v20->_locationType = a7;
    v20->_swimmingLocationType = a8;
    v20->_sessionState = a9;
    v20->_isResumedSessionState = a10;
    objc_storeStrong(&v20->_date, a11);
LABEL_5:
    v21 = v20;
  }

  return v21;
}

- (SMWorkoutEvent)initWithDictionary:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 objectForKey:@"__kSMWorkoutEventIdentifierKey"];
  v7 = [v5 initWithUUIDString:v6];

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v4 objectForKey:@"__kSMWorkoutEventSessionIdentifierKey"];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [SMLocation alloc];
  v12 = [v4 objectForKey:@"__kSMWorkoutEventLocationKey"];
  v13 = [(SMLocation *)v11 initWithDictionary:v12];

  v14 = [v4 objectForKey:@"__kSMWorkoutEventActivityTypeKey"];
  v15 = [v14 unsignedIntValue];

  v16 = [v4 objectForKey:@"__kSMWorkoutEventLocationTypeKey"];
  v17 = [v16 unsignedIntValue];

  v18 = [v4 objectForKey:@"__kSMWorkoutEventSwimmingLocationTypeKey"];
  v19 = [v18 unsignedIntValue];

  v20 = [v4 objectForKey:@"__kSMWorkoutEventSessionStateKey"];
  v21 = [v20 unsignedIntValue];

  v22 = [v4 objectForKey:@"__kSMWorkoutEventIsResumedSessionStateKey"];
  v23 = [v22 BOOLValue];

  v24 = [v4 objectForKey:@"__kSMWorkoutEventDateKey"];

  [v24 doubleValue];
  v26 = v25;

  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
  LOBYTE(v30) = v23;
  v28 = [(SMWorkoutEvent *)self initWithIdentifier:v7 sessionIdentifier:v10 location:v13 activityType:v15 locationType:v17 swimmingLocationType:v19 sessionState:v21 isResumedSessionState:v30 date:v27];

  return v28;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SMWorkoutEvent *)self identifier];

  if (v4)
  {
    v5 = [(SMWorkoutEvent *)self identifier];
    v6 = [v5 UUIDString];
    [v3 setObject:v6 forKey:@"__kSMWorkoutEventIdentifierKey"];
  }

  v7 = [(SMWorkoutEvent *)self sessionIdentifier];

  if (v7)
  {
    v8 = [(SMWorkoutEvent *)self sessionIdentifier];
    v9 = [v8 UUIDString];
    [v3 setObject:v9 forKey:@"__kSMWorkoutEventSessionIdentifierKey"];
  }

  v10 = [(SMWorkoutEvent *)self location];

  if (v10)
  {
    v11 = [(SMWorkoutEvent *)self location];
    v12 = [v11 outputToDictionary];

    [v3 setObject:v12 forKey:@"__kSMWorkoutEventLocationKey"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMWorkoutEvent activityType](self, "activityType")}];
  [v3 setObject:v13 forKey:@"__kSMWorkoutEventActivityTypeKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMWorkoutEvent locationType](self, "locationType")}];
  [v3 setObject:v14 forKey:@"__kSMWorkoutEventLocationTypeKey"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMWorkoutEvent swimmingLocationType](self, "swimmingLocationType")}];
  [v3 setObject:v15 forKey:@"__kSMWorkoutEventSwimmingLocationTypeKey"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMWorkoutEvent sessionState](self, "sessionState")}];
  [v3 setObject:v16 forKey:@"__kSMWorkoutEventSessionStateKey"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMWorkoutEvent isResumedSessionState](self, "isResumedSessionState")}];
  [v3 setObject:v17 forKey:@"__kSMWorkoutEventIsResumedSessionStateKey"];

  v18 = [(SMWorkoutEvent *)self date];

  if (v18)
  {
    v19 = [(SMWorkoutEvent *)self date];
    [v19 timeIntervalSince1970];
    v21 = v20;

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    [v3 setObject:v22 forKey:@"__kSMWorkoutEventDateKey"];
  }

  v23 = [v3 copy];

  return v23;
}

- (SMWorkoutEvent)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventIdentifierKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventSessionIdentifierKey"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventLocationKey"];
  v7 = [v3 decodeIntForKey:@"__kSMWorkoutEventActivityTypeKey"];
  v8 = [v3 decodeIntForKey:@"__kSMWorkoutEventLocationTypeKey"];
  v9 = [v3 decodeIntForKey:@"__kSMWorkoutEventSwimmingLocationTypeKey"];
  v10 = [v3 decodeIntForKey:@"__kSMWorkoutEventSessionStateKey"];
  v11 = [v3 decodeBoolForKey:@"__kSMWorkoutEventIsResumedSessionStateKey"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventDateKey"];

  LOBYTE(v15) = v11;
  v13 = [(SMWorkoutEvent *)self initWithIdentifier:v4 sessionIdentifier:v5 location:v6 activityType:v7 locationType:v8 swimmingLocationType:v9 sessionState:v10 isResumedSessionState:v15 date:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMWorkoutEvent *)self identifier];
  [v4 encodeObject:v5 forKey:@"__kSMWorkoutEventIdentifierKey"];

  v6 = [(SMWorkoutEvent *)self sessionIdentifier];
  [v4 encodeObject:v6 forKey:@"__kSMWorkoutEventSessionIdentifierKey"];

  v7 = [(SMWorkoutEvent *)self location];
  [v4 encodeObject:v7 forKey:@"__kSMWorkoutEventLocationKey"];

  [v4 encodeInteger:-[SMWorkoutEvent activityType](self forKey:{"activityType"), @"__kSMWorkoutEventActivityTypeKey"}];
  [v4 encodeInteger:-[SMWorkoutEvent locationType](self forKey:{"locationType"), @"__kSMWorkoutEventLocationTypeKey"}];
  [v4 encodeInteger:-[SMWorkoutEvent swimmingLocationType](self forKey:{"swimmingLocationType"), @"__kSMWorkoutEventSwimmingLocationTypeKey"}];
  [v4 encodeInteger:-[SMWorkoutEvent sessionState](self forKey:{"sessionState"), @"__kSMWorkoutEventSessionStateKey"}];
  [v4 encodeBool:-[SMWorkoutEvent isResumedSessionState](self forKey:{"isResumedSessionState"), @"__kSMWorkoutEventIsResumedSessionStateKey"}];
  v8 = [(SMWorkoutEvent *)self date];
  [v4 encodeObject:v8 forKey:@"__kSMWorkoutEventDateKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v6) = self->_isResumedSessionState;
  return [v4 initWithIdentifier:self->_identifier sessionIdentifier:self->_sessionIdentifier location:self->_location activityType:self->_activityType locationType:self->_locationType swimmingLocationType:self->_swimmingLocationType sessionState:self->_sessionState isResumedSessionState:v6 date:self->_date];
}

- (unint64_t)hash
{
  v3 = [(SMWorkoutEvent *)self sessionIdentifier];
  v4 = [v3 hash];
  v5 = [(SMWorkoutEvent *)self sessionIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(SMWorkoutEvent *)self location];
  v8 = [v7 identifier];
  v9 = v6 ^ [v8 hash];
  v10 = [(SMWorkoutEvent *)self activityType];
  v11 = v10 ^ [(SMWorkoutEvent *)self locationType];
  v12 = v11 ^ [(SMWorkoutEvent *)self swimmingLocationType];
  v13 = v9 ^ v12 ^ [(SMWorkoutEvent *)self sessionState];
  v14 = [(SMWorkoutEvent *)self isResumedSessionState];
  v15 = [(SMWorkoutEvent *)self date];
  v16 = v14 ^ [v15 hash];

  return v13 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMWorkoutEvent *)self identifier];
      v7 = [(SMWorkoutEvent *)v5 identifier];
      if (v6 != v7)
      {
        v8 = [(SMWorkoutEvent *)self identifier];
        v9 = [(SMWorkoutEvent *)v5 identifier];
        if (![v8 isEqual:v9])
        {
          v10 = 0;
          goto LABEL_24;
        }

        v37 = v9;
        v38 = v8;
      }

      v11 = [(SMWorkoutEvent *)self sessionIdentifier];
      v12 = [(SMWorkoutEvent *)v5 sessionIdentifier];
      if (v11 != v12)
      {
        v13 = [(SMWorkoutEvent *)self sessionIdentifier];
        v14 = [(SMWorkoutEvent *)v5 sessionIdentifier];
        if (![v13 isEqual:v14])
        {
          v10 = 0;
          goto LABEL_22;
        }

        v35 = v14;
        v36 = v13;
      }

      v15 = [(SMWorkoutEvent *)self location];
      v16 = [(SMWorkoutEvent *)v5 location];
      if ([v15 isEquivalent:v16] && (v17 = -[SMWorkoutEvent activityType](self, "activityType"), v17 == -[SMWorkoutEvent activityType](v5, "activityType")) && (v18 = -[SMWorkoutEvent locationType](self, "locationType"), v18 == -[SMWorkoutEvent locationType](v5, "locationType")) && (v19 = -[SMWorkoutEvent swimmingLocationType](self, "swimmingLocationType"), v19 == -[SMWorkoutEvent swimmingLocationType](v5, "swimmingLocationType")) && (v20 = -[SMWorkoutEvent sessionState](self, "sessionState"), v20 == -[SMWorkoutEvent sessionState](v5, "sessionState")) && (v21 = -[SMWorkoutEvent isResumedSessionState](self, "isResumedSessionState"), v21 == -[SMWorkoutEvent isResumedSessionState](v5, "isResumedSessionState")))
      {
        v24 = [(SMWorkoutEvent *)self date];
        [v24 timeIntervalSince1970];
        v26 = v25;
        v34 = [(SMWorkoutEvent *)v5 date];
        [v34 timeIntervalSince1970];
        if (v26 == v27)
        {
          v10 = 1;
        }

        else
        {
          v32 = [(SMWorkoutEvent *)self date];
          [v32 timeIntervalSince1970];
          v29 = v28;
          [(SMWorkoutEvent *)v5 date];
          v30 = v33 = v24;
          [v30 timeIntervalSince1970];
          v10 = vabdd_f64(v29, v31) < 2.22044605e-16;

          v24 = v33;
        }

        v22 = v10;
      }

      else
      {

        v10 = 0;
        v22 = 0;
      }

      v14 = v35;
      v13 = v36;
      if (v11 == v12)
      {

        v10 = v22;
        goto LABEL_23;
      }

LABEL_22:

LABEL_23:
      v9 = v37;
      v8 = v38;
      if (v6 == v7)
      {
LABEL_25:

        goto LABEL_26;
      }

LABEL_24:

      goto LABEL_25;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v9 = *&self->_location;
  v10 = *&self->_identifier;
  v8 = *&self->_locationType;
  isResumedSessionState = self->_isResumedSessionState;
  sessionState = self->_sessionState;
  v5 = [(NSDate *)self->_date stringFromDate];
  v6 = [v2 stringWithFormat:@"identifier, %@, sessionIdentifier, %@, location, %@, activityType, %lu, locationType, %lu swimmingLocationType, %lu sessionState, %lu, isResumedSessionState, %d, date, %@", v10, v9, v8, sessionState, isResumedSessionState, v5];

  return v6;
}

@end