@interface SMSessionTime
- (BOOL)isEqual:(id)a3;
- (SMSessionTime)initWithCoder:(id)a3;
- (SMSessionTime)initWithDictionary:(id)a3;
- (SMSessionTime)initWithTimeBound:(id)a3;
- (id)description;
- (id)outputToDictionary;
- (unint64_t)hash;
@end

@implementation SMSessionTime

- (SMSessionTime)initWithTimeBound:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SMSessionTime;
  v6 = [(SMSessionTime *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeBound, a3);
  }

  return v7;
}

- (SMSessionTime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimeBound"];

  v6 = [(SMSessionTime *)self initWithTimeBound:v5];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(SMSessionTime *)self timeBound];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMSessionTime *)self timeBound];
      [v6 timeIntervalSince1970];
      v8 = v7;
      v9 = [(SMSessionTime *)v5 timeBound];

      [v9 timeIntervalSince1970];
      v11 = v8 == v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SMSessionTime)initWithDictionary:(id)a3
{
  v4 = [a3 valueForKey:@"TimeBound"];
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
  v5 = [(SMSessionTime *)self timeBound];
  [v5 timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [v3 setObject:v6 forKey:@"TimeBound"];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SMSessionTime *)self timeBound];
  v4 = [v3 stringFromDate];
  v5 = [v2 stringWithFormat:@"timeBound, %@, ", v4];

  return v5;
}

@end