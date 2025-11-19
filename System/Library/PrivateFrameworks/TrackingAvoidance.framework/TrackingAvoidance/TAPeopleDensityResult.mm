@interface TAPeopleDensityResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAPeopleDensityResult)initWithCoder:(id)a3;
- (TAPeopleDensityResult)initWithState:(int64_t)a3 confidence:(double)a4 observationInterval:(id)a5 additionalInfo:(id)a6 date:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAPeopleDensityResult

- (TAPeopleDensityResult)initWithState:(int64_t)a3 confidence:(double)a4 observationInterval:(id)a5 additionalInfo:(id)a6 date:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v25.receiver = self;
  v25.super_class = TAPeopleDensityResult;
  v15 = [(TAPeopleDensityResult *)&v25 init];
  v16 = v15;
  if (!v15)
  {
LABEL_9:
    v17 = v16;
    goto LABEL_10;
  }

  v17 = 0;
  if (a4 >= 0.0 && v12 && v14)
  {
    v15->_peopleDensityState = a3;
    v15->_confidence = a4;
    v18 = [v12 copy];
    observationInterval = v16->_observationInterval;
    v16->_observationInterval = v18;

    v20 = [v14 copy];
    date = v16->_date;
    v16->_date = v20;

    if (v13)
    {
      v22 = [v13 copy];
    }

    else
    {
      v22 = [MEMORY[0x277CBEAC0] dictionary];
    }

    additionalInfo = v16->_additionalInfo;
    v16->_additionalInfo = v22;

    goto LABEL_9;
  }

LABEL_10:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(TAPeopleDensityResult *)self peopleDensityState];
  v4 = MEMORY[0x277CCABB0];
  [(TAPeopleDensityResult *)self confidence];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 hash];
  v7 = [(TAPeopleDensityResult *)self observationInterval];
  v8 = v3 ^ [v7 hash];
  v9 = [(TAPeopleDensityResult *)self additionalInfo];
  v10 = v8 ^ [v9 hash];
  v11 = [(TAPeopleDensityResult *)self date];
  v12 = v10 ^ [v11 hash];

  return v6 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TAPeopleDensityResult *)self peopleDensityState];
      if (v8 != [(TAPeopleDensityResult *)v7 peopleDensityState]|| ([(TAPeopleDensityResult *)self confidence], v10 = v9, [(TAPeopleDensityResult *)v7 confidence], v10 != v11))
      {
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v12 = [(TAPeopleDensityResult *)self observationInterval];
      v13 = [(TAPeopleDensityResult *)v7 observationInterval];
      if (v12 != v13)
      {
        v3 = [(TAPeopleDensityResult *)self observationInterval];
        v4 = [(TAPeopleDensityResult *)v7 observationInterval];
        if (![v3 isEqual:v4])
        {
          v14 = 0;
          goto LABEL_22;
        }
      }

      v15 = [(TAPeopleDensityResult *)self additionalInfo];
      v16 = [(TAPeopleDensityResult *)v7 additionalInfo];
      v17 = v16;
      if (v15 == v16)
      {
        v32 = v16;
      }

      else
      {
        v18 = [(TAPeopleDensityResult *)self additionalInfo];
        v31 = [(TAPeopleDensityResult *)v7 additionalInfo];
        if (![v18 isEqual:?])
        {
          v14 = 0;
          goto LABEL_20;
        }

        v30 = v18;
        v32 = v17;
      }

      v19 = [(TAPeopleDensityResult *)self date];
      v20 = [(TAPeopleDensityResult *)v7 date];
      v21 = v20;
      if (v19 == v20)
      {

        v14 = 1;
      }

      else
      {
        [(TAPeopleDensityResult *)self date];
        v22 = v29 = v3;
        [(TAPeopleDensityResult *)v7 date];
        v28 = v15;
        v23 = v4;
        v24 = v13;
        v26 = v25 = v12;
        v14 = [v22 isEqual:v26];

        v12 = v25;
        v13 = v24;
        v4 = v23;
        v15 = v28;

        v3 = v29;
      }

      v17 = v32;
      v18 = v30;
      if (v15 == v32)
      {
LABEL_21:

        if (v12 == v13)
        {
LABEL_23:

          goto LABEL_24;
        }

LABEL_22:

        goto LABEL_23;
      }

LABEL_20:

      goto LABEL_21;
    }

    v14 = 0;
  }

LABEL_25:

  return v14;
}

- (id)descriptionDictionary
{
  v17[6] = *MEMORY[0x277D85DE8];
  v16[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v17[0] = v4;
  v16[1] = @"PeopleDensityState";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TAPeopleDensityResult peopleDensityState](self, "peopleDensityState")}];
  v17[1] = v5;
  v16[2] = @"Confidence";
  v6 = MEMORY[0x277CCABB0];
  [(TAPeopleDensityResult *)self confidence];
  v7 = [v6 numberWithDouble:?];
  v17[2] = v7;
  v16[3] = @"ObservationInterval";
  v8 = [(TAPeopleDensityResult *)self observationInterval];
  v9 = [v8 description];
  v17[3] = v9;
  v16[4] = @"AdditionalInfo";
  v10 = [(TAPeopleDensityResult *)self additionalInfo];
  v17[4] = v10;
  v16[5] = @"Date";
  v11 = [(TAPeopleDensityResult *)self date];
  v12 = [v11 getDateString];
  v17[5] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  v3 = [(TAPeopleDensityResult *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (TAPeopleDensityResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"PeopleDensityState"];
  [v4 decodeDoubleForKey:@"Confidence"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ObservationInterval"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AdditionalInfo"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v11 = [(TAPeopleDensityResult *)self initWithState:v5 confidence:v8 observationInterval:v9 additionalInfo:v10 date:v7];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  peopleDensityState = self->_peopleDensityState;
  v5 = a3;
  [v5 encodeInteger:peopleDensityState forKey:@"PeopleDensityState"];
  [v5 encodeDouble:@"Confidence" forKey:self->_confidence];
  [v5 encodeObject:self->_observationInterval forKey:@"ObservationInterval"];
  [v5 encodeObject:self->_additionalInfo forKey:@"AdditionalInfo"];
  [v5 encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TAPeopleDensityResult allocWithZone:a3];
  peopleDensityState = self->_peopleDensityState;
  confidence = self->_confidence;
  observationInterval = self->_observationInterval;
  additionalInfo = self->_additionalInfo;
  date = self->_date;

  return [(TAPeopleDensityResult *)v4 initWithState:peopleDensityState confidence:observationInterval observationInterval:additionalInfo additionalInfo:date date:confidence];
}

@end