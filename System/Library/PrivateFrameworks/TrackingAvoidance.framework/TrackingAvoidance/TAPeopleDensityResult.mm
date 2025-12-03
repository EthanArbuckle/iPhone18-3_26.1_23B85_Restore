@interface TAPeopleDensityResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAPeopleDensityResult)initWithCoder:(id)coder;
- (TAPeopleDensityResult)initWithState:(int64_t)state confidence:(double)confidence observationInterval:(id)interval additionalInfo:(id)info date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAPeopleDensityResult

- (TAPeopleDensityResult)initWithState:(int64_t)state confidence:(double)confidence observationInterval:(id)interval additionalInfo:(id)info date:(id)date
{
  intervalCopy = interval;
  infoCopy = info;
  dateCopy = date;
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
  if (confidence >= 0.0 && intervalCopy && dateCopy)
  {
    v15->_peopleDensityState = state;
    v15->_confidence = confidence;
    v18 = [intervalCopy copy];
    observationInterval = v16->_observationInterval;
    v16->_observationInterval = v18;

    v20 = [dateCopy copy];
    date = v16->_date;
    v16->_date = v20;

    if (infoCopy)
    {
      dictionary = [infoCopy copy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    additionalInfo = v16->_additionalInfo;
    v16->_additionalInfo = dictionary;

    goto LABEL_9;
  }

LABEL_10:

  return v17;
}

- (unint64_t)hash
{
  peopleDensityState = [(TAPeopleDensityResult *)self peopleDensityState];
  v4 = MEMORY[0x277CCABB0];
  [(TAPeopleDensityResult *)self confidence];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 hash];
  observationInterval = [(TAPeopleDensityResult *)self observationInterval];
  v8 = peopleDensityState ^ [observationInterval hash];
  additionalInfo = [(TAPeopleDensityResult *)self additionalInfo];
  v10 = v8 ^ [additionalInfo hash];
  date = [(TAPeopleDensityResult *)self date];
  v12 = v10 ^ [date hash];

  return v6 ^ v12;
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
      v7 = equalCopy;
      peopleDensityState = [(TAPeopleDensityResult *)self peopleDensityState];
      if (peopleDensityState != [(TAPeopleDensityResult *)v7 peopleDensityState]|| ([(TAPeopleDensityResult *)self confidence], v10 = v9, [(TAPeopleDensityResult *)v7 confidence], v10 != v11))
      {
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      observationInterval = [(TAPeopleDensityResult *)self observationInterval];
      observationInterval2 = [(TAPeopleDensityResult *)v7 observationInterval];
      if (observationInterval != observationInterval2)
      {
        observationInterval3 = [(TAPeopleDensityResult *)self observationInterval];
        observationInterval4 = [(TAPeopleDensityResult *)v7 observationInterval];
        if (![observationInterval3 isEqual:observationInterval4])
        {
          v14 = 0;
          goto LABEL_22;
        }
      }

      additionalInfo = [(TAPeopleDensityResult *)self additionalInfo];
      additionalInfo2 = [(TAPeopleDensityResult *)v7 additionalInfo];
      v17 = additionalInfo2;
      if (additionalInfo == additionalInfo2)
      {
        v32 = additionalInfo2;
      }

      else
      {
        additionalInfo3 = [(TAPeopleDensityResult *)self additionalInfo];
        additionalInfo4 = [(TAPeopleDensityResult *)v7 additionalInfo];
        if (![additionalInfo3 isEqual:?])
        {
          v14 = 0;
          goto LABEL_20;
        }

        v30 = additionalInfo3;
        v32 = v17;
      }

      date = [(TAPeopleDensityResult *)self date];
      date2 = [(TAPeopleDensityResult *)v7 date];
      v21 = date2;
      if (date == date2)
      {

        v14 = 1;
      }

      else
      {
        [(TAPeopleDensityResult *)self date];
        v22 = v29 = observationInterval3;
        [(TAPeopleDensityResult *)v7 date];
        v28 = additionalInfo;
        v23 = observationInterval4;
        v24 = observationInterval2;
        v26 = v25 = observationInterval;
        v14 = [v22 isEqual:v26];

        observationInterval = v25;
        observationInterval2 = v24;
        observationInterval4 = v23;
        additionalInfo = v28;

        observationInterval3 = v29;
      }

      v17 = v32;
      additionalInfo3 = v30;
      if (additionalInfo == v32)
      {
LABEL_21:

        if (observationInterval == observationInterval2)
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
  observationInterval = [(TAPeopleDensityResult *)self observationInterval];
  v9 = [observationInterval description];
  v17[3] = v9;
  v16[4] = @"AdditionalInfo";
  additionalInfo = [(TAPeopleDensityResult *)self additionalInfo];
  v17[4] = additionalInfo;
  v16[5] = @"Date";
  date = [(TAPeopleDensityResult *)self date];
  getDateString = [date getDateString];
  v17[5] = getDateString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)description
{
  descriptionDictionary = [(TAPeopleDensityResult *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (TAPeopleDensityResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"PeopleDensityState"];
  [coderCopy decodeDoubleForKey:@"Confidence"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObservationInterval"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AdditionalInfo"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v11 = [(TAPeopleDensityResult *)self initWithState:v5 confidence:v8 observationInterval:v9 additionalInfo:v10 date:v7];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  peopleDensityState = self->_peopleDensityState;
  coderCopy = coder;
  [coderCopy encodeInteger:peopleDensityState forKey:@"PeopleDensityState"];
  [coderCopy encodeDouble:@"Confidence" forKey:self->_confidence];
  [coderCopy encodeObject:self->_observationInterval forKey:@"ObservationInterval"];
  [coderCopy encodeObject:self->_additionalInfo forKey:@"AdditionalInfo"];
  [coderCopy encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAPeopleDensityResult allocWithZone:zone];
  peopleDensityState = self->_peopleDensityState;
  confidence = self->_confidence;
  observationInterval = self->_observationInterval;
  additionalInfo = self->_additionalInfo;
  date = self->_date;

  return [(TAPeopleDensityResult *)v4 initWithState:peopleDensityState confidence:observationInterval observationInterval:additionalInfo additionalInfo:date date:confidence];
}

@end