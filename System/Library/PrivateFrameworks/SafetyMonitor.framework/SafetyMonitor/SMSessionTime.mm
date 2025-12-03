@interface SMSessionTime
- (BOOL)isEqual:(id)equal;
- (SMSessionTime)initWithCoder:(id)coder;
- (SMSessionTime)initWithDictionary:(id)dictionary;
- (SMSessionTime)initWithTimeBound:(id)bound;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
@end

@implementation SMSessionTime

- (SMSessionTime)initWithTimeBound:(id)bound
{
  boundCopy = bound;
  v9.receiver = self;
  v9.super_class = SMSessionTime;
  v6 = [(SMSessionTime *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeBound, bound);
  }

  return v7;
}

- (SMSessionTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeBound"];

  v6 = [(SMSessionTime *)self initWithTimeBound:v5];
  return v6;
}

- (unint64_t)hash
{
  timeBound = [(SMSessionTime *)self timeBound];
  v3 = [timeBound hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timeBound = [(SMSessionTime *)self timeBound];
      [timeBound timeIntervalSince1970];
      v8 = v7;
      timeBound2 = [(SMSessionTime *)v5 timeBound];

      [timeBound2 timeIntervalSince1970];
      v11 = v8 == v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SMSessionTime)initWithDictionary:(id)dictionary
{
  v4 = [dictionary valueForKey:@"TimeBound"];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEAA8];
    [v4 doubleValue];
    v7 = [v6 dateWithTimeIntervalSince1970:?];
    v8 = [[SMSessionTime alloc] initWithTimeBound:v7];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  timeBound = [(SMSessionTime *)self timeBound];
  [timeBound timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"TimeBound"];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  timeBound = [(SMSessionTime *)self timeBound];
  stringFromDate = [timeBound stringFromDate];
  v5 = [v2 stringWithFormat:@"timeBound, %@, ", stringFromDate];

  return v5;
}

@end