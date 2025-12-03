@interface SMSessionMonitorContext
+ (id)sessionEndReasonToString:(unint64_t)string;
+ (id)sessionSafetyMonitorUpdateReasonToString:(unint64_t)string;
+ (id)triggerCategoryToString:(unint64_t)string;
+ (id)userTriggerResponseToString:(int64_t)string;
- (BOOL)isEqual:(id)equal;
- (SMSessionMonitorContext)initWithCoder:(id)coder;
- (SMSessionMonitorContext)initWithDictionary:(id)dictionary;
- (SMSessionMonitorContext)initWithUpdateReason:(unint64_t)reason triggerCategory:(unint64_t)category estimatedEndDate:(id)date coarseEstimatedEndDate:(id)endDate sessionID:(id)d;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionMonitorContext

- (SMSessionMonitorContext)initWithUpdateReason:(unint64_t)reason triggerCategory:(unint64_t)category estimatedEndDate:(id)date coarseEstimatedEndDate:(id)endDate sessionID:(id)d
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = SMSessionMonitorContext;
  v16 = [(SMSessionMonitorContext *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_updateReason = reason;
    v16->_triggerCategory = category;
    objc_storeStrong(&v16->_estimatedEndDate, date);
    objc_storeStrong(&v17->_coarseEstimatedEndDate, endDate);
    objc_storeStrong(&v17->_sessionID, d);
  }

  return v17;
}

- (SMSessionMonitorContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextUpdateReasonKey"];
  v6 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];
  v7 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextSessionIDStringKey"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];

  if (v9)
  {
    v10 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
    v11 = MEMORY[0x277CBEAA8];
    [v10 doubleValue];
    v9 = [v11 dateWithTimeIntervalSince1970:?];
  }

  v12 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];

  if (v12)
  {
    v13 = [dictionaryCopy valueForKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
    v14 = MEMORY[0x277CBEAA8];
    [v13 doubleValue];
    v12 = [v14 dateWithTimeIntervalSince1970:?];
  }

  v15 = 0;
  if (v5 && v6)
  {
    v15 = -[SMSessionMonitorContext initWithUpdateReason:triggerCategory:estimatedEndDate:coarseEstimatedEndDate:sessionID:](self, "initWithUpdateReason:triggerCategory:estimatedEndDate:coarseEstimatedEndDate:sessionID:", [v5 intValue], objc_msgSend(v6, "intValue"), v9, v12, v8);
    self = v15;
  }

  return v15;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMonitorContext updateReason](self, "updateReason")}];
  [v3 setObject:v4 forKey:@"__kSMSessionMonitorContextUpdateReasonKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMonitorContext triggerCategory](self, "triggerCategory")}];
  [v3 setObject:v5 forKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];

  estimatedEndDate = [(SMSessionMonitorContext *)self estimatedEndDate];

  if (estimatedEndDate)
  {
    v7 = MEMORY[0x277CCABB0];
    estimatedEndDate2 = [(SMSessionMonitorContext *)self estimatedEndDate];
    [estimatedEndDate2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
    [v3 setObject:v9 forKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
  }

  coarseEstimatedEndDate = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];

  if (coarseEstimatedEndDate)
  {
    v11 = MEMORY[0x277CCABB0];
    coarseEstimatedEndDate2 = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
    [coarseEstimatedEndDate2 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
    [v3 setObject:v13 forKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
  }

  sessionID = [(SMSessionMonitorContext *)self sessionID];

  if (sessionID)
  {
    sessionID2 = [(SMSessionMonitorContext *)self sessionID];
    uUIDString = [sessionID2 UUIDString];
    [v3 setObject:uUIDString forKey:@"__kSMSessionMonitorContextSessionIDStringKey"];
  }

  return v3;
}

+ (id)sessionSafetyMonitorUpdateReasonToString:(unint64_t)string
{
  if (string - 1 > 4)
  {
    return @"SMSessionMonitorUpdateReasonUnknown";
  }

  else
  {
    return off_279B650B0[string - 1];
  }
}

+ (id)triggerCategoryToString:(unint64_t)string
{
  if (string > 0x19)
  {
    return @"SMTriggerCategoryNone";
  }

  else
  {
    return off_279B650D8[string];
  }
}

+ (id)userTriggerResponseToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"SMUserTriggerResponseUnknown";
  }

  else
  {
    return off_279B651A8[string - 1];
  }
}

+ (id)sessionEndReasonToString:(unint64_t)string
{
  if (string - 1 > 6)
  {
    return @"SMSessionEndReasonUnknown";
  }

  else
  {
    return off_279B651C0[string - 1];
  }
}

- (SMSessionMonitorContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"__kSMSessionMonitorContextUpdateReasonKey"];
  v6 = [coderCopy decodeIntegerForKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorContextSessionIDStringKey"];

  v10 = [(SMSessionMonitorContext *)self initWithUpdateReason:v5 triggerCategory:v6 estimatedEndDate:v7 coarseEstimatedEndDate:v8 sessionID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  updateReason = self->_updateReason;
  coderCopy = coder;
  [coderCopy encodeInteger:updateReason forKey:@"__kSMSessionMonitorContextUpdateReasonKey"];
  [coderCopy encodeInteger:self->_triggerCategory forKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];
  [coderCopy encodeObject:self->_estimatedEndDate forKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
  [coderCopy encodeObject:self->_coarseEstimatedEndDate forKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
  [coderCopy encodeObject:self->_sessionID forKey:@"__kSMSessionMonitorContextSessionIDStringKey"];
}

- (unint64_t)hash
{
  updateReason = [(SMSessionMonitorContext *)self updateReason];
  v4 = [(SMSessionMonitorContext *)self triggerCategory]^ updateReason;
  estimatedEndDate = [(SMSessionMonitorContext *)self estimatedEndDate];
  v6 = v4 ^ [estimatedEndDate hash];
  coarseEstimatedEndDate = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
  v8 = [coarseEstimatedEndDate hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      updateReason = [(SMSessionMonitorContext *)self updateReason];
      if (updateReason == [(SMSessionMonitorContext *)v5 updateReason]&& (v7 = [(SMSessionMonitorContext *)self triggerCategory], v7 == [(SMSessionMonitorContext *)v5 triggerCategory]))
      {
        estimatedEndDate = [(SMSessionMonitorContext *)self estimatedEndDate];
        [estimatedEndDate timeIntervalSince1970];
        v10 = v9;
        estimatedEndDate2 = [(SMSessionMonitorContext *)v5 estimatedEndDate];
        [estimatedEndDate2 timeIntervalSince1970];
        if (v10 == v12)
        {
          coarseEstimatedEndDate = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
          [coarseEstimatedEndDate timeIntervalSince1970];
          v15 = v14;
          coarseEstimatedEndDate2 = [(SMSessionMonitorContext *)v5 coarseEstimatedEndDate];
          [coarseEstimatedEndDate2 timeIntervalSince1970];
          v18 = v15 == v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SMSessionMonitorContext sessionSafetyMonitorUpdateReasonToString:[(SMSessionMonitorContext *)self updateReason]];
  v5 = [SMSessionMonitorContext triggerCategoryToString:[(SMSessionMonitorContext *)self triggerCategory]];
  estimatedEndDate = [(SMSessionMonitorContext *)self estimatedEndDate];
  stringFromDate = [estimatedEndDate stringFromDate];
  coarseEstimatedEndDate = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
  stringFromDate2 = [coarseEstimatedEndDate stringFromDate];
  sessionID = [(SMSessionMonitorContext *)self sessionID];
  v11 = [v3 stringWithFormat:@"{UpdateReason:%@, TriggerCategory:%@, estimatedEndDate:%@, coarseEstimatedEndDate:%@, sessionID:%@}", v4, v5, stringFromDate, stringFromDate2, sessionID];

  return v11;
}

@end