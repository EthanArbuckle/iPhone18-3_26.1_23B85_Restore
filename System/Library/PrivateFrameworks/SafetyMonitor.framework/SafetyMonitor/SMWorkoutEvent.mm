@interface SMWorkoutEvent
- (BOOL)isEqual:(id)equal;
- (SMWorkoutEvent)initWithCoder:(id)coder;
- (SMWorkoutEvent)initWithDictionary:(id)dictionary;
- (SMWorkoutEvent)initWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier location:(id)location activityType:(unint64_t)type locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType sessionState:(unint64_t)state isResumedSessionState:(BOOL)self0 date:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMWorkoutEvent

- (SMWorkoutEvent)initWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier location:(id)location activityType:(unint64_t)type locationType:(int64_t)locationType swimmingLocationType:(int64_t)swimmingLocationType sessionState:(unint64_t)state isResumedSessionState:(BOOL)self0 date:(id)self1
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  locationCopy = location;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = SMWorkoutEvent;
  v19 = [(SMWorkoutEvent *)&v26 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_5;
  }

  v21 = 0;
  if (sessionIdentifierCopy && dateCopy)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_sessionIdentifier, sessionIdentifier);
    objc_storeStrong(&v20->_location, location);
    v20->_activityType = type;
    v20->_locationType = locationType;
    v20->_swimmingLocationType = swimmingLocationType;
    v20->_sessionState = state;
    v20->_isResumedSessionState = sessionState;
    objc_storeStrong(&v20->_date, date);
LABEL_5:
    v21 = v20;
  }

  return v21;
}

- (SMWorkoutEvent)initWithDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CCAD78];
  dictionaryCopy = dictionary;
  v5 = [v3 alloc];
  v6 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventIdentifierKey"];
  v7 = [v5 initWithUUIDString:v6];

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventSessionIdentifierKey"];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [SMLocation alloc];
  v12 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventLocationKey"];
  v13 = [(SMLocation *)v11 initWithDictionary:v12];

  v14 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventActivityTypeKey"];
  unsignedIntValue = [v14 unsignedIntValue];

  v16 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventLocationTypeKey"];
  unsignedIntValue2 = [v16 unsignedIntValue];

  v18 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventSwimmingLocationTypeKey"];
  unsignedIntValue3 = [v18 unsignedIntValue];

  v20 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventSessionStateKey"];
  unsignedIntValue4 = [v20 unsignedIntValue];

  v22 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventIsResumedSessionStateKey"];
  bOOLValue = [v22 BOOLValue];

  v24 = [dictionaryCopy objectForKey:@"__kSMWorkoutEventDateKey"];

  [v24 doubleValue];
  v26 = v25;

  v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
  LOBYTE(v30) = bOOLValue;
  v28 = [(SMWorkoutEvent *)self initWithIdentifier:v7 sessionIdentifier:v10 location:v13 activityType:unsignedIntValue locationType:unsignedIntValue2 swimmingLocationType:unsignedIntValue3 sessionState:unsignedIntValue4 isResumedSessionState:v30 date:v27];

  return v28;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(SMWorkoutEvent *)self identifier];

  if (identifier)
  {
    identifier2 = [(SMWorkoutEvent *)self identifier];
    uUIDString = [identifier2 UUIDString];
    [v3 setObject:uUIDString forKey:@"__kSMWorkoutEventIdentifierKey"];
  }

  sessionIdentifier = [(SMWorkoutEvent *)self sessionIdentifier];

  if (sessionIdentifier)
  {
    sessionIdentifier2 = [(SMWorkoutEvent *)self sessionIdentifier];
    uUIDString2 = [sessionIdentifier2 UUIDString];
    [v3 setObject:uUIDString2 forKey:@"__kSMWorkoutEventSessionIdentifierKey"];
  }

  location = [(SMWorkoutEvent *)self location];

  if (location)
  {
    location2 = [(SMWorkoutEvent *)self location];
    outputToDictionary = [location2 outputToDictionary];

    [v3 setObject:outputToDictionary forKey:@"__kSMWorkoutEventLocationKey"];
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

  date = [(SMWorkoutEvent *)self date];

  if (date)
  {
    date2 = [(SMWorkoutEvent *)self date];
    [date2 timeIntervalSince1970];
    v21 = v20;

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    [v3 setObject:v22 forKey:@"__kSMWorkoutEventDateKey"];
  }

  v23 = [v3 copy];

  return v23;
}

- (SMWorkoutEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventIdentifierKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventSessionIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventLocationKey"];
  v7 = [coderCopy decodeIntForKey:@"__kSMWorkoutEventActivityTypeKey"];
  v8 = [coderCopy decodeIntForKey:@"__kSMWorkoutEventLocationTypeKey"];
  v9 = [coderCopy decodeIntForKey:@"__kSMWorkoutEventSwimmingLocationTypeKey"];
  v10 = [coderCopy decodeIntForKey:@"__kSMWorkoutEventSessionStateKey"];
  v11 = [coderCopy decodeBoolForKey:@"__kSMWorkoutEventIsResumedSessionStateKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMWorkoutEventDateKey"];

  LOBYTE(v15) = v11;
  v13 = [(SMWorkoutEvent *)self initWithIdentifier:v4 sessionIdentifier:v5 location:v6 activityType:v7 locationType:v8 swimmingLocationType:v9 sessionState:v10 isResumedSessionState:v15 date:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMWorkoutEvent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"__kSMWorkoutEventIdentifierKey"];

  sessionIdentifier = [(SMWorkoutEvent *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"__kSMWorkoutEventSessionIdentifierKey"];

  location = [(SMWorkoutEvent *)self location];
  [coderCopy encodeObject:location forKey:@"__kSMWorkoutEventLocationKey"];

  [coderCopy encodeInteger:-[SMWorkoutEvent activityType](self forKey:{"activityType"), @"__kSMWorkoutEventActivityTypeKey"}];
  [coderCopy encodeInteger:-[SMWorkoutEvent locationType](self forKey:{"locationType"), @"__kSMWorkoutEventLocationTypeKey"}];
  [coderCopy encodeInteger:-[SMWorkoutEvent swimmingLocationType](self forKey:{"swimmingLocationType"), @"__kSMWorkoutEventSwimmingLocationTypeKey"}];
  [coderCopy encodeInteger:-[SMWorkoutEvent sessionState](self forKey:{"sessionState"), @"__kSMWorkoutEventSessionStateKey"}];
  [coderCopy encodeBool:-[SMWorkoutEvent isResumedSessionState](self forKey:{"isResumedSessionState"), @"__kSMWorkoutEventIsResumedSessionStateKey"}];
  date = [(SMWorkoutEvent *)self date];
  [coderCopy encodeObject:date forKey:@"__kSMWorkoutEventDateKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_isResumedSessionState;
  return [v4 initWithIdentifier:self->_identifier sessionIdentifier:self->_sessionIdentifier location:self->_location activityType:self->_activityType locationType:self->_locationType swimmingLocationType:self->_swimmingLocationType sessionState:self->_sessionState isResumedSessionState:v6 date:self->_date];
}

- (unint64_t)hash
{
  sessionIdentifier = [(SMWorkoutEvent *)self sessionIdentifier];
  v4 = [sessionIdentifier hash];
  sessionIdentifier2 = [(SMWorkoutEvent *)self sessionIdentifier];
  v6 = [sessionIdentifier2 hash] ^ v4;
  location = [(SMWorkoutEvent *)self location];
  identifier = [location identifier];
  v9 = v6 ^ [identifier hash];
  activityType = [(SMWorkoutEvent *)self activityType];
  v11 = activityType ^ [(SMWorkoutEvent *)self locationType];
  v12 = v11 ^ [(SMWorkoutEvent *)self swimmingLocationType];
  v13 = v9 ^ v12 ^ [(SMWorkoutEvent *)self sessionState];
  isResumedSessionState = [(SMWorkoutEvent *)self isResumedSessionState];
  date = [(SMWorkoutEvent *)self date];
  v16 = isResumedSessionState ^ [date hash];

  return v13 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SMWorkoutEvent *)self identifier];
      identifier2 = [(SMWorkoutEvent *)v5 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(SMWorkoutEvent *)self identifier];
        identifier4 = [(SMWorkoutEvent *)v5 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_24;
        }

        v37 = identifier4;
        v38 = identifier3;
      }

      sessionIdentifier = [(SMWorkoutEvent *)self sessionIdentifier];
      sessionIdentifier2 = [(SMWorkoutEvent *)v5 sessionIdentifier];
      if (sessionIdentifier != sessionIdentifier2)
      {
        sessionIdentifier3 = [(SMWorkoutEvent *)self sessionIdentifier];
        sessionIdentifier4 = [(SMWorkoutEvent *)v5 sessionIdentifier];
        if (![sessionIdentifier3 isEqual:sessionIdentifier4])
        {
          v10 = 0;
          goto LABEL_22;
        }

        v35 = sessionIdentifier4;
        v36 = sessionIdentifier3;
      }

      location = [(SMWorkoutEvent *)self location];
      location2 = [(SMWorkoutEvent *)v5 location];
      if ([location isEquivalent:location2] && (v17 = -[SMWorkoutEvent activityType](self, "activityType"), v17 == -[SMWorkoutEvent activityType](v5, "activityType")) && (v18 = -[SMWorkoutEvent locationType](self, "locationType"), v18 == -[SMWorkoutEvent locationType](v5, "locationType")) && (v19 = -[SMWorkoutEvent swimmingLocationType](self, "swimmingLocationType"), v19 == -[SMWorkoutEvent swimmingLocationType](v5, "swimmingLocationType")) && (v20 = -[SMWorkoutEvent sessionState](self, "sessionState"), v20 == -[SMWorkoutEvent sessionState](v5, "sessionState")) && (v21 = -[SMWorkoutEvent isResumedSessionState](self, "isResumedSessionState"), v21 == -[SMWorkoutEvent isResumedSessionState](v5, "isResumedSessionState")))
      {
        date = [(SMWorkoutEvent *)self date];
        [date timeIntervalSince1970];
        v26 = v25;
        date2 = [(SMWorkoutEvent *)v5 date];
        [date2 timeIntervalSince1970];
        if (v26 == v27)
        {
          v10 = 1;
        }

        else
        {
          date3 = [(SMWorkoutEvent *)self date];
          [date3 timeIntervalSince1970];
          v29 = v28;
          [(SMWorkoutEvent *)v5 date];
          v30 = v33 = date;
          [v30 timeIntervalSince1970];
          v10 = vabdd_f64(v29, v31) < 2.22044605e-16;

          date = v33;
        }

        v22 = v10;
      }

      else
      {

        v10 = 0;
        v22 = 0;
      }

      sessionIdentifier4 = v35;
      sessionIdentifier3 = v36;
      if (sessionIdentifier == sessionIdentifier2)
      {

        v10 = v22;
        goto LABEL_23;
      }

LABEL_22:

LABEL_23:
      identifier4 = v37;
      identifier3 = v38;
      if (identifier == identifier2)
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
  stringFromDate = [(NSDate *)self->_date stringFromDate];
  v6 = [v2 stringWithFormat:@"identifier, %@, sessionIdentifier, %@, location, %@, activityType, %lu, locationType, %lu swimmingLocationType, %lu sessionState, %lu, isResumedSessionState, %d, date, %@", v10, v9, v8, sessionState, isResumedSessionState, stringFromDate];

  return v6;
}

@end