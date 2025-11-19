@interface SMSuggestion
+ (id)stringFromSMSuggestionSuppressionReason:(unint64_t)a3;
+ (id)stringFromSMSuggestionTrigger:(unint64_t)a3;
+ (id)stringFromSMSuggestionUserType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (SMSuggestion)initWithCoder:(id)a3;
- (SMSuggestion)initWithSuggestionTrigger:(unint64_t)a3 suggestionUserType:(unint64_t)a4 suppressionReason:(unint64_t)a5 sessionType:(unint64_t)a6 sourceLocation:(id)a7 destinationLocation:(id)a8 buddy:(id)a9 dateInterval:(id)a10 creationDate:(id)a11 locationOfInterest:(id)a12;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSuggestion

- (SMSuggestion)initWithSuggestionTrigger:(unint64_t)a3 suggestionUserType:(unint64_t)a4 suppressionReason:(unint64_t)a5 sessionType:(unint64_t)a6 sourceLocation:(id)a7 destinationLocation:(id)a8 buddy:(id)a9 dateInterval:(id)a10 creationDate:(id)a11 locationOfInterest:(id)a12
{
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v17 = a11;
  v26 = a12;
  if (!v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: creationDate";
      goto LABEL_13;
    }

LABEL_7:

    v20 = 0;
    goto LABEL_11;
  }

  if (a6 != 4 && !v30)
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
    v21->_suggestionTrigger = a3;
    v21->_suggestionUserType = a4;
    v21->_suppressionReason = a5;
    v21->_sessionType = a6;
    objc_storeStrong(&v21->_sourceLocation, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 7, a9);
    objc_storeStrong(p_isa + 8, a10);
    objc_storeStrong(p_isa + 9, a11);
    objc_storeStrong(p_isa + 10, a12);
  }

  self = p_isa;
  v20 = self;
LABEL_11:

  return v20;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [objc_opt_class() stringFromSMSuggestionTrigger:{-[SMSuggestion suggestionTrigger](self, "suggestionTrigger")}];
  v3 = [objc_opt_class() stringFromSMSuggestionUserType:{-[SMSuggestion suggestionUserType](self, "suggestionUserType")}];
  v13 = [objc_opt_class() stringFromSMSuggestionSuppressionReason:{-[SMSuggestion suppressionReason](self, "suppressionReason")}];
  v4 = [SMSessionConfiguration sessionTypeToString:[(SMSuggestion *)self sessionType]];
  v5 = [(SMSuggestion *)self sourceLocation];
  v6 = [(SMSuggestion *)self destinationLocation];
  v7 = [(SMSuggestion *)self buddy];
  v8 = [(SMSuggestion *)self dateInterval];
  v9 = [(SMSuggestion *)self creationDate];
  v10 = [v9 stringFromDate];
  v11 = [(SMSuggestion *)self locationOfInterest];
  v16 = [v15 stringWithFormat:@"trigger, %@, user type, %@, suppression reason, %@, session type, %@, source location, %@, destination location, %@, buddy, %@, date interval, %@, creationDate, %@, locationOfInterest, %@", v14, v3, v13, v4, v5, v6, v7, v8, v10, v11];

  return v16;
}

+ (id)stringFromSMSuggestionTrigger:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B64CE0[a3 - 1];
  }
}

+ (id)stringFromSMSuggestionUserType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B64D00[a3 - 1];
  }
}

+ (id)stringFromSMSuggestionSuppressionReason:(unint64_t)a3
{
  if (a3 - 1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B64D20[a3 - 1];
  }
}

- (SMSuggestion)initWithCoder:(id)a3
{
  v3 = a3;
  v15 = [v3 decodeIntegerForKey:@"Trigger"];
  v4 = [v3 decodeIntegerForKey:@"UserType"];
  v5 = [v3 decodeIntegerForKey:@"SuppressionReason"];
  v6 = [v3 decodeIntegerForKey:@"sSssionType"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SourceLocation"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DestinationLocation"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Buddy"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LocationOfInterest"];

  v13 = [(SMSuggestion *)self initWithSuggestionTrigger:v15 suggestionUserType:v4 suppressionReason:v5 sessionType:v6 sourceLocation:v7 destinationLocation:v8 buddy:v9 dateInterval:v10 creationDate:v11 locationOfInterest:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  suggestionTrigger = self->_suggestionTrigger;
  v5 = a3;
  [v5 encodeInteger:suggestionTrigger forKey:@"Trigger"];
  [v5 encodeInteger:self->_suggestionUserType forKey:@"UserType"];
  [v5 encodeInteger:self->_suppressionReason forKey:@"SuppressionReason"];
  [v5 encodeInteger:self->_sessionType forKey:@"sSssionType"];
  [v5 encodeObject:self->_sourceLocation forKey:@"SourceLocation"];
  [v5 encodeObject:self->_destinationLocation forKey:@"DestinationLocation"];
  [v5 encodeObject:self->_buddy forKey:@"Buddy"];
  [v5 encodeObject:self->_dateInterval forKey:@"DateInterval"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeObject:self->_locationOfInterest forKey:@"LocationOfInterest"];
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
  v9 = [(SMSuggestion *)self sourceLocation];
  v10 = [v9 hash];
  v11 = [(SMSuggestion *)self destinationLocation];
  v12 = v10 ^ [v11 hash];
  v13 = [(SMSuggestion *)self buddy];
  v14 = v12 ^ [v13 hash];
  v15 = [(SMSuggestion *)self dateInterval];
  v16 = v14 ^ [v15 hash];
  v17 = [(SMSuggestion *)self creationDate];
  v18 = v16 ^ [v17 hash];
  v19 = [(SMSuggestion *)self locationOfInterest];
  v20 = v18 ^ [v19 hash];

  return v22 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(SMSuggestion *)self suggestionTrigger];
      if (v7 != [(SMSuggestion *)v6 suggestionTrigger]|| (v8 = [(SMSuggestion *)self suggestionUserType], v8 != [(SMSuggestion *)v6 suggestionUserType]) || (v9 = [(SMSuggestion *)self suppressionReason], v9 != [(SMSuggestion *)v6 suppressionReason]) || (v10 = [(SMSuggestion *)self sessionType], v10 != [(SMSuggestion *)v6 sessionType]))
      {
        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v11 = [(SMSuggestion *)self sourceLocation];
      v12 = [(SMSuggestion *)v6 sourceLocation];
      if (v11 != v12)
      {
        v13 = [(SMSuggestion *)self sourceLocation];
        v59 = [(SMSuggestion *)v6 sourceLocation];
        v60 = v13;
        if (![v13 isEqual:v59])
        {
          v14 = 0;
          goto LABEL_44;
        }
      }

      v16 = [(SMSuggestion *)self destinationLocation];
      v17 = [(SMSuggestion *)v6 destinationLocation];
      if (v16 != v17)
      {
        v3 = [(SMSuggestion *)self destinationLocation];
        v57 = [(SMSuggestion *)v6 destinationLocation];
        if (![v3 isEqual:?])
        {
          v14 = 0;
LABEL_42:

LABEL_43:
          if (v11 == v12)
          {
LABEL_45:

            goto LABEL_13;
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      v18 = [(SMSuggestion *)self buddy];
      v19 = [(SMSuggestion *)v6 buddy];
      v58 = v18;
      v20 = v18 == v19;
      v21 = v19;
      if (v20)
      {
        v55 = v19;
      }

      else
      {
        v22 = [(SMSuggestion *)self buddy];
        v51 = [(SMSuggestion *)v6 buddy];
        v52 = v22;
        if (![v22 isEqual:v51])
        {
          v14 = 0;
          v29 = v21;
          v30 = v58;
LABEL_40:

LABEL_41:
          if (v16 == v17)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v55 = v21;
      }

      v23 = [(SMSuggestion *)self dateInterval];
      v24 = [(SMSuggestion *)v6 dateInterval];
      v53 = v23;
      v54 = v3;
      v20 = v23 == v24;
      v25 = v24;
      if (!v20)
      {
        v26 = [(SMSuggestion *)self dateInterval];
        v45 = [(SMSuggestion *)v6 dateInterval];
        v46 = v26;
        if (![v26 isEqual:v45])
        {
          v27 = v55;
          v14 = 0;
          v28 = v53;
LABEL_38:

LABEL_39:
          v30 = v58;
          v29 = v27;
          v20 = v58 == v27;
          v3 = v54;
          if (v20)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      v31 = [(SMSuggestion *)self creationDate];
      v48 = [(SMSuggestion *)v6 creationDate];
      v49 = v31;
      v50 = v25;
      v47 = v17;
      if (v31 == v48)
      {
        v44 = v16;
        v34 = v55;
      }

      else
      {
        v32 = [(SMSuggestion *)self creationDate];
        v42 = [(SMSuggestion *)v6 creationDate];
        v43 = v32;
        v33 = [v32 isEqual:v42];
        v34 = v55;
        if (!v33)
        {
          v14 = 0;
          v41 = v48;
          v40 = v49;
          goto LABEL_35;
        }

        v44 = v16;
      }

      v35 = [(SMSuggestion *)self locationOfInterest];
      v36 = [(SMSuggestion *)v6 locationOfInterest];
      v37 = v36;
      if (v35 == v36)
      {

        v14 = 1;
      }

      else
      {
        [(SMSuggestion *)self locationOfInterest];
        v38 = v56 = v34;
        v39 = [(SMSuggestion *)v6 locationOfInterest];
        v14 = [v38 isEqual:v39];

        v34 = v56;
      }

      v41 = v48;
      v40 = v49;
      v16 = v44;
      if (v49 == v48)
      {
        v27 = v34;
LABEL_37:

        v28 = v53;
        v25 = v50;
        v17 = v47;
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