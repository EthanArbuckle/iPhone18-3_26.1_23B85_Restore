@interface SMSuggestion
+ (id)stringFromSMSuggestionSuppressionReason:(unint64_t)reason;
+ (id)stringFromSMSuggestionTrigger:(unint64_t)trigger;
+ (id)stringFromSMSuggestionUserType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (SMSuggestion)initWithCoder:(id)coder;
- (SMSuggestion)initWithSuggestionTrigger:(unint64_t)trigger suggestionUserType:(unint64_t)type suppressionReason:(unint64_t)reason sessionType:(unint64_t)sessionType sourceLocation:(id)location destinationLocation:(id)destinationLocation buddy:(id)buddy dateInterval:(id)self0 creationDate:(id)self1 locationOfInterest:(id)self2;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSuggestion

- (SMSuggestion)initWithSuggestionTrigger:(unint64_t)trigger suggestionUserType:(unint64_t)type suppressionReason:(unint64_t)reason sessionType:(unint64_t)sessionType sourceLocation:(id)location destinationLocation:(id)destinationLocation buddy:(id)buddy dateInterval:(id)self0 creationDate:(id)self1 locationOfInterest:(id)self2
{
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  buddyCopy = buddy;
  intervalCopy = interval;
  dateCopy = date;
  interestCopy = interest;
  if (!dateCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: creationDate";
      goto LABEL_13;
    }

LABEL_7:

    selfCopy = 0;
    goto LABEL_11;
  }

  if (sessionType != 4 && !locationCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: sourceLocation";
LABEL_13:
      _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v31.receiver = self;
  v31.super_class = SMSuggestion;
  v21 = [(SMSuggestion *)&v31 init];
  p_isa = &v21->super.isa;
  if (v21)
  {
    v21->_suggestionTrigger = trigger;
    v21->_suggestionUserType = type;
    v21->_suppressionReason = reason;
    v21->_sessionType = sessionType;
    objc_storeStrong(&v21->_sourceLocation, location);
    objc_storeStrong(p_isa + 6, destinationLocation);
    objc_storeStrong(p_isa + 7, buddy);
    objc_storeStrong(p_isa + 8, interval);
    objc_storeStrong(p_isa + 9, date);
    objc_storeStrong(p_isa + 10, interest);
  }

  self = p_isa;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [objc_opt_class() stringFromSMSuggestionTrigger:{-[SMSuggestion suggestionTrigger](self, "suggestionTrigger")}];
  v3 = [objc_opt_class() stringFromSMSuggestionUserType:{-[SMSuggestion suggestionUserType](self, "suggestionUserType")}];
  v13 = [objc_opt_class() stringFromSMSuggestionSuppressionReason:{-[SMSuggestion suppressionReason](self, "suppressionReason")}];
  v4 = [SMSessionConfiguration sessionTypeToString:[(SMSuggestion *)self sessionType]];
  sourceLocation = [(SMSuggestion *)self sourceLocation];
  destinationLocation = [(SMSuggestion *)self destinationLocation];
  buddy = [(SMSuggestion *)self buddy];
  dateInterval = [(SMSuggestion *)self dateInterval];
  creationDate = [(SMSuggestion *)self creationDate];
  stringFromDate = [creationDate stringFromDate];
  locationOfInterest = [(SMSuggestion *)self locationOfInterest];
  v16 = [v15 stringWithFormat:@"trigger, %@, user type, %@, suppression reason, %@, session type, %@, source location, %@, destination location, %@, buddy, %@, date interval, %@, creationDate, %@, locationOfInterest, %@", v14, v3, v13, v4, sourceLocation, destinationLocation, buddy, dateInterval, stringFromDate, locationOfInterest];

  return v16;
}

+ (id)stringFromSMSuggestionTrigger:(unint64_t)trigger
{
  if (trigger - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B64CE0[trigger - 1];
  }
}

+ (id)stringFromSMSuggestionUserType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B64D00[type - 1];
  }
}

+ (id)stringFromSMSuggestionSuppressionReason:(unint64_t)reason
{
  if (reason - 1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B64D20[reason - 1];
  }
}

- (SMSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = [coderCopy decodeIntegerForKey:@"Trigger"];
  v4 = [coderCopy decodeIntegerForKey:@"UserType"];
  v5 = [coderCopy decodeIntegerForKey:@"SuppressionReason"];
  v6 = [coderCopy decodeIntegerForKey:@"sSssionType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceLocation"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DestinationLocation"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Buddy"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocationOfInterest"];

  v13 = [(SMSuggestion *)self initWithSuggestionTrigger:v15 suggestionUserType:v4 suppressionReason:v5 sessionType:v6 sourceLocation:v7 destinationLocation:v8 buddy:v9 dateInterval:v10 creationDate:v11 locationOfInterest:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  suggestionTrigger = self->_suggestionTrigger;
  coderCopy = coder;
  [coderCopy encodeInteger:suggestionTrigger forKey:@"Trigger"];
  [coderCopy encodeInteger:self->_suggestionUserType forKey:@"UserType"];
  [coderCopy encodeInteger:self->_suppressionReason forKey:@"SuppressionReason"];
  [coderCopy encodeInteger:self->_sessionType forKey:@"sSssionType"];
  [coderCopy encodeObject:self->_sourceLocation forKey:@"SourceLocation"];
  [coderCopy encodeObject:self->_destinationLocation forKey:@"DestinationLocation"];
  [coderCopy encodeObject:self->_buddy forKey:@"Buddy"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"DateInterval"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeObject:self->_locationOfInterest forKey:@"LocationOfInterest"];
}

- (unint64_t)hash
{
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSuggestion suggestionTrigger](self, "suggestionTrigger")}];
  v3 = [v23 hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSuggestion suggestionUserType](self, "suggestionUserType")}];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSuggestion suppressionReason](self, "suppressionReason")}];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSuggestion sessionType](self, "sessionType")}];
  v22 = v5 ^ v7 ^ [v8 hash];
  sourceLocation = [(SMSuggestion *)self sourceLocation];
  v10 = [sourceLocation hash];
  destinationLocation = [(SMSuggestion *)self destinationLocation];
  v12 = v10 ^ [destinationLocation hash];
  buddy = [(SMSuggestion *)self buddy];
  v14 = v12 ^ [buddy hash];
  dateInterval = [(SMSuggestion *)self dateInterval];
  v16 = v14 ^ [dateInterval hash];
  creationDate = [(SMSuggestion *)self creationDate];
  v18 = v16 ^ [creationDate hash];
  locationOfInterest = [(SMSuggestion *)self locationOfInterest];
  v20 = v18 ^ [locationOfInterest hash];

  return v22 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      suggestionTrigger = [(SMSuggestion *)self suggestionTrigger];
      if (suggestionTrigger != [(SMSuggestion *)v6 suggestionTrigger]|| (v8 = [(SMSuggestion *)self suggestionUserType], v8 != [(SMSuggestion *)v6 suggestionUserType]) || (v9 = [(SMSuggestion *)self suppressionReason], v9 != [(SMSuggestion *)v6 suppressionReason]) || (v10 = [(SMSuggestion *)self sessionType], v10 != [(SMSuggestion *)v6 sessionType]))
      {
        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }

      sourceLocation = [(SMSuggestion *)self sourceLocation];
      sourceLocation2 = [(SMSuggestion *)v6 sourceLocation];
      if (sourceLocation != sourceLocation2)
      {
        sourceLocation3 = [(SMSuggestion *)self sourceLocation];
        sourceLocation4 = [(SMSuggestion *)v6 sourceLocation];
        v60 = sourceLocation3;
        if (![sourceLocation3 isEqual:sourceLocation4])
        {
          v14 = 0;
          goto LABEL_44;
        }
      }

      destinationLocation = [(SMSuggestion *)self destinationLocation];
      destinationLocation2 = [(SMSuggestion *)v6 destinationLocation];
      if (destinationLocation != destinationLocation2)
      {
        destinationLocation3 = [(SMSuggestion *)self destinationLocation];
        destinationLocation4 = [(SMSuggestion *)v6 destinationLocation];
        if (![destinationLocation3 isEqual:?])
        {
          v14 = 0;
LABEL_42:

LABEL_43:
          if (sourceLocation == sourceLocation2)
          {
LABEL_45:

            goto LABEL_13;
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      buddy = [(SMSuggestion *)self buddy];
      buddy2 = [(SMSuggestion *)v6 buddy];
      v58 = buddy;
      v20 = buddy == buddy2;
      v21 = buddy2;
      if (v20)
      {
        v55 = buddy2;
      }

      else
      {
        buddy3 = [(SMSuggestion *)self buddy];
        buddy4 = [(SMSuggestion *)v6 buddy];
        v52 = buddy3;
        if (![buddy3 isEqual:buddy4])
        {
          v14 = 0;
          v29 = v21;
          v30 = v58;
LABEL_40:

LABEL_41:
          if (destinationLocation == destinationLocation2)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v55 = v21;
      }

      dateInterval = [(SMSuggestion *)self dateInterval];
      dateInterval2 = [(SMSuggestion *)v6 dateInterval];
      v53 = dateInterval;
      v54 = destinationLocation3;
      v20 = dateInterval == dateInterval2;
      v25 = dateInterval2;
      if (!v20)
      {
        dateInterval3 = [(SMSuggestion *)self dateInterval];
        dateInterval4 = [(SMSuggestion *)v6 dateInterval];
        v46 = dateInterval3;
        if (![dateInterval3 isEqual:dateInterval4])
        {
          v27 = v55;
          v14 = 0;
          v28 = v53;
LABEL_38:

LABEL_39:
          v30 = v58;
          v29 = v27;
          v20 = v58 == v27;
          destinationLocation3 = v54;
          if (v20)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      creationDate = [(SMSuggestion *)self creationDate];
      creationDate2 = [(SMSuggestion *)v6 creationDate];
      v49 = creationDate;
      v50 = v25;
      v47 = destinationLocation2;
      if (creationDate == creationDate2)
      {
        v44 = destinationLocation;
        v34 = v55;
      }

      else
      {
        creationDate3 = [(SMSuggestion *)self creationDate];
        creationDate4 = [(SMSuggestion *)v6 creationDate];
        v43 = creationDate3;
        v33 = [creationDate3 isEqual:creationDate4];
        v34 = v55;
        if (!v33)
        {
          v14 = 0;
          v41 = creationDate2;
          v40 = v49;
          goto LABEL_35;
        }

        v44 = destinationLocation;
      }

      locationOfInterest = [(SMSuggestion *)self locationOfInterest];
      locationOfInterest2 = [(SMSuggestion *)v6 locationOfInterest];
      v37 = locationOfInterest2;
      if (locationOfInterest == locationOfInterest2)
      {

        v14 = 1;
      }

      else
      {
        [(SMSuggestion *)self locationOfInterest];
        v38 = v56 = v34;
        locationOfInterest3 = [(SMSuggestion *)v6 locationOfInterest];
        v14 = [v38 isEqual:locationOfInterest3];

        v34 = v56;
      }

      v41 = creationDate2;
      v40 = v49;
      destinationLocation = v44;
      if (v49 == creationDate2)
      {
        v27 = v34;
LABEL_37:

        v28 = v53;
        v25 = v50;
        destinationLocation2 = v47;
        if (v53 == v50)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_35:
      v27 = v34;

      goto LABEL_37;
    }

    v14 = 0;
  }

LABEL_14:

  return v14;
}

@end