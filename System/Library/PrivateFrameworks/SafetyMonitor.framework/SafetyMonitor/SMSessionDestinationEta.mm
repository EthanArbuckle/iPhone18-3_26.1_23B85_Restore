@interface SMSessionDestinationEta
- (BOOL)isEqual:(id)equal;
- (SMSessionDestinationEta)initWithCoder:(id)coder;
- (SMSessionDestinationEta)initWithDictionary:(id)dictionary;
- (SMSessionDestinationEta)initWithExpectedTravelTime:(double)time additionalTravelTime:(double)travelTime transportType:(unint64_t)type;
- (id)coarseEtaDate;
- (id)description;
- (id)etaDate;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionDestinationEta

- (SMSessionDestinationEta)initWithExpectedTravelTime:(double)time additionalTravelTime:(double)travelTime transportType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = SMSessionDestinationEta;
  result = [(SMSessionDestinationEta *)&v9 init];
  if (result)
  {
    result->_expectedTravelTime = time;
    result->_additionalTravelTime = travelTime;
    result->_transportType = type;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SMSessionDestinationEta *)self expectedTravelTime];
  [coderCopy encodeDouble:@"__kSMSessionDestinationEtaExpectedTravelTimeKey" forKey:?];
  [(SMSessionDestinationEta *)self additionalTravelTime];
  [coderCopy encodeDouble:@"__kSMSessionDestinationEtaAdditionalTravelTimeKey" forKey:?];
  [coderCopy encodeInteger:-[SMSessionDestinationEta transportType](self forKey:{"transportType"), @"__kSMSessionDestinationEtaTransportTypeKey"}];
}

- (SMSessionDestinationEta)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"__kSMSessionDestinationEtaExpectedTravelTimeKey"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"__kSMSessionDestinationEtaAdditionalTravelTimeKey"];
  v8 = v7;
  v9 = [coderCopy decodeIntForKey:@"__kSMSessionDestinationEtaTransportTypeKey"];

  return [(SMSessionDestinationEta *)self initWithExpectedTravelTime:v9 additionalTravelTime:v6 transportType:v8];
}

- (unint64_t)hash
{
  [(SMSessionDestinationEta *)self expectedTravelTime];
  v4 = v3;
  [(SMSessionDestinationEta *)self additionalTravelTime];
  return v5 ^ v4 ^ [(SMSessionDestinationEta *)self transportType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(SMSessionDestinationEta *)self expectedTravelTime];
      v7 = v6;
      [(SMSessionDestinationEta *)v5 expectedTravelTime];
      if (v7 != v8)
      {
        [(SMSessionDestinationEta *)self expectedTravelTime];
        v10 = v9;
        [(SMSessionDestinationEta *)v5 expectedTravelTime];
        if (vabdd_f64(v10, v11) >= 2.22044605e-16)
        {
          goto LABEL_10;
        }
      }

      [(SMSessionDestinationEta *)self additionalTravelTime];
      v13 = v12;
      [(SMSessionDestinationEta *)v5 additionalTravelTime];
      if (v13 == v14 || ([(SMSessionDestinationEta *)self additionalTravelTime], v16 = v15, [(SMSessionDestinationEta *)v5 additionalTravelTime], vabdd_f64(v16, v17) < 2.22044605e-16))
      {
        transportType = [(SMSessionDestinationEta *)self transportType];
        v19 = transportType == [(SMSessionDestinationEta *)v5 transportType];
      }

      else
      {
LABEL_10:
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (SMSessionDestinationEta)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = [dictionaryCopy objectForKey:@"__kSMSessionDestinationEtaExpectedTravelTimeKey"];
  if (selfCopy)
  {
    v6 = [dictionaryCopy objectForKey:@"__kSMSessionDestinationEtaAdditionalTravelTimeKey"];
    if (v6)
    {
      v7 = v6;
      v8 = [dictionaryCopy objectForKey:@"__kSMSessionDestinationEtaTransportTypeKey"];

      if (v8)
      {
        v9 = [dictionaryCopy valueForKey:@"__kSMSessionDestinationEtaExpectedTravelTimeKey"];
        [v9 doubleValue];
        v11 = v10;

        v12 = [dictionaryCopy valueForKey:@"__kSMSessionDestinationEtaAdditionalTravelTimeKey"];
        [v12 doubleValue];
        v14 = v13;

        v15 = [dictionaryCopy valueForKey:@"__kSMSessionDestinationEtaTransportTypeKey"];
        intValue = [v15 intValue];

        self = [(SMSessionDestinationEta *)self initWithExpectedTravelTime:intValue additionalTravelTime:v11 transportType:v14];
        selfCopy = self;
        goto LABEL_7;
      }
    }

    else
    {
    }

    selfCopy = 0;
  }

LABEL_7:

  return selfCopy;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(SMSessionDestinationEta *)self expectedTravelTime];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKey:@"__kSMSessionDestinationEtaExpectedTravelTimeKey"];

  v6 = MEMORY[0x277CCABB0];
  [(SMSessionDestinationEta *)self additionalTravelTime];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"__kSMSessionDestinationEtaAdditionalTravelTimeKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionDestinationEta transportType](self, "transportType")}];
  [v3 setObject:v8 forKey:@"__kSMSessionDestinationEtaTransportTypeKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SMSessionDestinationEta *)self expectedTravelTime];
  v5 = v4;
  [(SMSessionDestinationEta *)self additionalTravelTime];
  return [v3 stringWithFormat:@"expected travel time, %.1f, additional travel time, %.1f, transportType, %d", v5, v6, -[SMSessionDestinationEta transportType](self, "transportType")];
}

- (id)etaDate
{
  [(SMSessionDestinationEta *)self expectedTravelTime];
  v4 = v3;
  [(SMSessionDestinationEta *)self additionalTravelTime];
  v6 = v4 + v5;
  v7 = MEMORY[0x277CBEAA8];

  return [v7 dateWithTimeIntervalSinceNow:v6];
}

- (id)coarseEtaDate
{
  v2 = MEMORY[0x277CBEAA8];
  etaDate = [(SMSessionDestinationEta *)self etaDate];
  v4 = [v2 roundingUpDate:etaDate bucketDurationMinute:5];

  return v4;
}

@end