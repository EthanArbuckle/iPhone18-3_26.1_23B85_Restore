@interface SMSessionMonitorContext
+ (id)sessionEndReasonToString:(unint64_t)a3;
+ (id)sessionSafetyMonitorUpdateReasonToString:(unint64_t)a3;
+ (id)triggerCategoryToString:(unint64_t)a3;
+ (id)userTriggerResponseToString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (SMSessionMonitorContext)initWithCoder:(id)a3;
- (SMSessionMonitorContext)initWithDictionary:(id)a3;
- (SMSessionMonitorContext)initWithUpdateReason:(unint64_t)a3 triggerCategory:(unint64_t)a4 estimatedEndDate:(id)a5 coarseEstimatedEndDate:(id)a6 sessionID:(id)a7;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionMonitorContext

- (SMSessionMonitorContext)initWithUpdateReason:(unint64_t)a3 triggerCategory:(unint64_t)a4 estimatedEndDate:(id)a5 coarseEstimatedEndDate:(id)a6 sessionID:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = SMSessionMonitorContext;
  v16 = [(SMSessionMonitorContext *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_updateReason = a3;
    v16->_triggerCategory = a4;
    objc_storeStrong(&v16->_estimatedEndDate, a5);
    objc_storeStrong(&v17->_coarseEstimatedEndDate, a6);
    objc_storeStrong(&v17->_sessionID, a7);
  }

  return v17;
}

- (SMSessionMonitorContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"__kSMSessionMonitorContextUpdateReasonKey"];
  v6 = [v4 valueForKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];
  v7 = [v4 valueForKey:@"__kSMSessionMonitorContextSessionIDStringKey"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 valueForKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];

  if (v9)
  {
    v10 = [v4 valueForKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
    v11 = MEMORY[0x277CBEAA8];
    [v10 doubleValue];
    v9 = [v11 dateWithTimeIntervalSince1970:?];
  }

  v12 = [v4 valueForKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];

  if (v12)
  {
    v13 = [v4 valueForKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
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

  v6 = [(SMSessionMonitorContext *)self estimatedEndDate];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [(SMSessionMonitorContext *)self estimatedEndDate];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
    [v3 setObject:v9 forKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
  }

  v10 = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];

  if (v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
    [v12 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
    [v3 setObject:v13 forKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
  }

  v14 = [(SMSessionMonitorContext *)self sessionID];

  if (v14)
  {
    v15 = [(SMSessionMonitorContext *)self sessionID];
    v16 = [v15 UUIDString];
    [v3 setObject:v16 forKey:@"__kSMSessionMonitorContextSessionIDStringKey"];
  }

  return v3;
}

+ (id)sessionSafetyMonitorUpdateReasonToString:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"SMSessionMonitorUpdateReasonUnknown";
  }

  else
  {
    return off_279B650B0[a3 - 1];
  }
}

+ (id)triggerCategoryToString:(unint64_t)a3
{
  if (a3 > 0x19)
  {
    return @"SMTriggerCategoryNone";
  }

  else
  {
    return off_279B650D8[a3];
  }
}

+ (id)userTriggerResponseToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"SMUserTriggerResponseUnknown";
  }

  else
  {
    return off_279B651A8[a3 - 1];
  }
}

+ (id)sessionEndReasonToString:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return @"SMSessionEndReasonUnknown";
  }

  else
  {
    return off_279B651C0[a3 - 1];
  }
}

- (SMSessionMonitorContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"__kSMSessionMonitorContextUpdateReasonKey"];
  v6 = [v4 decodeIntegerForKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMSessionMonitorContextSessionIDStringKey"];

  v10 = [(SMSessionMonitorContext *)self initWithUpdateReason:v5 triggerCategory:v6 estimatedEndDate:v7 coarseEstimatedEndDate:v8 sessionID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  updateReason = self->_updateReason;
  v5 = a3;
  [v5 encodeInteger:updateReason forKey:@"__kSMSessionMonitorContextUpdateReasonKey"];
  [v5 encodeInteger:self->_triggerCategory forKey:@"__kSMSessionMonitorContextTriggerCategoryKey"];
  [v5 encodeObject:self->_estimatedEndDate forKey:@"__kSMSessionMonitorContextEstimatedEndDateKey"];
  [v5 encodeObject:self->_coarseEstimatedEndDate forKey:@"__kSMSessionMonitorContextCoarseEstimatedEndDateKey"];
  [v5 encodeObject:self->_sessionID forKey:@"__kSMSessionMonitorContextSessionIDStringKey"];
}

- (unint64_t)hash
{
  v3 = [(SMSessionMonitorContext *)self updateReason];
  v4 = [(SMSessionMonitorContext *)self triggerCategory]^ v3;
  v5 = [(SMSessionMonitorContext *)self estimatedEndDate];
  v6 = v4 ^ [v5 hash];
  v7 = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMSessionMonitorContext *)self updateReason];
      if (v6 == [(SMSessionMonitorContext *)v5 updateReason]&& (v7 = [(SMSessionMonitorContext *)self triggerCategory], v7 == [(SMSessionMonitorContext *)v5 triggerCategory]))
      {
        v8 = [(SMSessionMonitorContext *)self estimatedEndDate];
        [v8 timeIntervalSince1970];
        v10 = v9;
        v11 = [(SMSessionMonitorContext *)v5 estimatedEndDate];
        [v11 timeIntervalSince1970];
        if (v10 == v12)
        {
          v13 = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
          [v13 timeIntervalSince1970];
          v15 = v14;
          v16 = [(SMSessionMonitorContext *)v5 coarseEstimatedEndDate];
          [v16 timeIntervalSince1970];
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
  v6 = [(SMSessionMonitorContext *)self estimatedEndDate];
  v7 = [v6 stringFromDate];
  v8 = [(SMSessionMonitorContext *)self coarseEstimatedEndDate];
  v9 = [v8 stringFromDate];
  v10 = [(SMSessionMonitorContext *)self sessionID];
  v11 = [v3 stringWithFormat:@"{UpdateReason:%@, TriggerCategory:%@, estimatedEndDate:%@, coarseEstimatedEndDate:%@, sessionID:%@}", v4, v5, v7, v9, v10];

  return v11;
}

@end