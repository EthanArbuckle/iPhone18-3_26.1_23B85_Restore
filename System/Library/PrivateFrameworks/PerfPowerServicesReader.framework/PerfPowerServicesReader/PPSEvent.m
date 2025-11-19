@interface PPSEvent
+ (PPSEvent)eventWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5;
+ (PPSEvent)eventWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5 groupId:(unint64_t)a6;
+ (PPSEvent)eventWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5 groupId:(unint64_t)a6 label:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (NSArray)metricKeys;
- (NSArray)metricValues;
- (NSDictionary)metricKeysAndValues;
- (PPSEvent)initWithCoder:(id)a3;
- (PPSEvent)initWithEvent:(id)a3;
- (PPSEvent)initWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5 groupId:(unint64_t)a6;
- (double)epochTimestamp;
- (id)JSONRepresentation;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)logLine;
- (id)metricValueForKey:(id)a3;
- (id)metricValuesForKeys:(id)a3;
- (id)valueForKey:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSEvent

- (PPSEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PPSEvent;
  v5 = [(PPSEvent *)&v19 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"monotonicTimestamp"];
    v5->_monotonicTimestamp = v6;
    [v4 decodeDoubleForKey:@"timeOffset"];
    v5->_timeOffset = v7;
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v14;

    v5->_groupId = [v4 decodeIntegerForKey:@"groupId"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(PPSEvent *)self monotonicTimestamp];
  [v4 encodeDouble:@"monotonicTimestamp" forKey:?];
  [(PPSEvent *)self timeOffset];
  [v4 encodeDouble:@"timeOffset" forKey:?];
  v5 = [(PPSEvent *)self metrics];
  [v4 encodeObject:v5 forKey:@"metrics"];

  [v4 encodeInteger:-[PPSEvent groupId](self forKey:{"groupId"), @"groupId"}];
  v6 = [(PPSEvent *)self label];
  [v4 encodeObject:v6 forKey:@"label"];
}

+ (PPSEvent)eventWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5
{
  v7 = a5;
  v8 = [[PPSEvent alloc] initWithMonotonicTimestamp:v7 timeOffset:a3 dictionary:a4];

  return v8;
}

+ (PPSEvent)eventWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5 groupId:(unint64_t)a6
{
  v9 = a5;
  v10 = [[PPSEvent alloc] initWithMonotonicTimestamp:v9 timeOffset:a6 dictionary:a3 groupId:a4];

  return v10;
}

+ (PPSEvent)eventWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5 groupId:(unint64_t)a6 label:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = [[PPSEvent alloc] initWithMonotonicTimestamp:v12 timeOffset:a6 dictionary:a3 groupId:a4];

  [(PPSEvent *)v13 setLabel:v11];

  return v13;
}

- (PPSEvent)initWithEvent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PPSEvent;
  v5 = [(PPSEvent *)&v14 init];
  if (v5)
  {
    [v4 monotonicTimestamp];
    v5->_monotonicTimestamp = v6;
    [v4 timeOffset];
    v5->_timeOffset = v7;
    v8 = [v4 metricKeysAndValues];
    v9 = [v8 mutableCopy];
    metrics = v5->_metrics;
    v5->_metrics = v9;

    v5->_groupId = [v4 groupId];
    v11 = [v4 label];
    label = v5->_label;
    v5->_label = v11;
  }

  return v5;
}

- (PPSEvent)initWithMonotonicTimestamp:(double)a3 timeOffset:(double)a4 dictionary:(id)a5 groupId:(unint64_t)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PPSEvent;
  v11 = [(PPSEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_monotonicTimestamp = a3;
    v11->_timeOffset = a4;
    v13 = [v10 mutableCopy];
    metrics = v12->_metrics;
    v12->_metrics = v13;

    v12->_groupId = a6;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(PPSEvent *)self isEqualToEvent:v4];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = PPSEvent;
      v6 = [(PPSEvent *)&v9 isEqual:v4];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    [(PPSEvent *)self monotonicTimestamp];
    v6 = v5;
    [(PPSEvent *)v4 monotonicTimestamp];
    if (v6 == v7 && ([(PPSEvent *)self timeOffset], v9 = v8, [(PPSEvent *)v4 timeOffset], v9 == v10))
    {
      v11 = [(PPSEvent *)self metricKeysAndValues];
      v12 = [(PPSEvent *)v4 metricKeysAndValues];
      v13 = [v11 isEqualToDictionary:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(PPSEvent *)self monotonicTimestamp];
  v6 = v5;
  [v4 monotonicTimestamp];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    [(PPSEvent *)self monotonicTimestamp];
    v10 = v9;
    [v4 monotonicTimestamp];
    if (v10 > v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

- (unint64_t)count
{
  v2 = [(PPSEvent *)self metrics];
  v3 = [v2 count];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PPSEvent *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(PPSEvent *)self metrics];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = MEMORY[0x277CBEAA8];
  [(PPSEvent *)self epochTimestamp];
  v7 = [v6 dateWithTimeIntervalSince1970:?];
  [v5 setObject:v7 forKeyedSubscript:@"date"];

  v8 = MEMORY[0x277CCABB0];
  [(PPSEvent *)self monotonicTimestamp];
  v9 = [v8 numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"monotonicTimestamp"];

  v10 = MEMORY[0x277CCABB0];
  [(PPSEvent *)self timeOffset];
  v11 = [v10 numberWithDouble:?];
  [v5 setObject:v11 forKeyedSubscript:@"timeOffset"];

  v12 = [v5 description];

  return v12;
}

- (id)logLine
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CBEB38];
  v5 = [(PPSEvent *)self metrics];
  v6 = [v4 dictionaryWithDictionary:v5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __19__PPSEvent_logLine__block_invoke;
  v13[3] = &unk_279A113C8;
  v14 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  v9 = [v8 componentsJoinedByString:@" "];

  v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  return v11;
}

void __19__PPSEvent_logLine__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];;
  [*(a1 + 32) addObject:v4];
}

- (double)epochTimestamp
{
  [(PPSEvent *)self monotonicTimestamp];
  v4 = v3;
  [(PPSEvent *)self timeOffset];
  return v4 + v5;
}

- (unint64_t)hash
{
  [(PPSEvent *)self monotonicTimestamp];
  v4 = v3;
  [(PPSEvent *)self timeOffset];
  v6 = v5;
  v7 = [(PPSEvent *)self metrics];
  v8 = v4 ^ (([v7 hash] ^ v6) << 32);

  return v8;
}

- (NSArray)metricKeys
{
  v2 = [(PPSEvent *)self metrics];
  v3 = [v2 allKeys];

  return v3;
}

- (NSArray)metricValues
{
  v2 = [(PPSEvent *)self metrics];
  v3 = [v2 allValues];

  return v3;
}

- (NSDictionary)metricKeysAndValues
{
  v2 = [(PPSEvent *)self metrics];
  v3 = [v2 copy];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(PPSEvent *)self metrics];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = MEMORY[0x277CCABB0];
  [(PPSEvent *)self monotonicTimestamp];
  v7 = [v6 numberWithDouble:?];
  [v5 setObject:v7 forKeyedSubscript:@"monotonicTimestamp"];

  v8 = MEMORY[0x277CCABB0];
  [(PPSEvent *)self epochTimestamp];
  v9 = [v8 numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"epoch"];

  v10 = [v5 copy];

  return v10;
}

- (id)JSONRepresentation
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(PPSEvent *)self dictionaryRepresentation];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = PPSReaderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PPSTimeSeries *)v5 JSONRepresentation];
    }
  }

  return v4;
}

- (id)metricValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(PPSEvent *)self metrics];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (id)metricValuesForKeys:(id)a3
{
  v4 = a3;
  v5 = [(PPSEvent *)self metrics];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = [v5 objectsForKeys:v4 notFoundMarker:v6];

  return v7;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"@"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"@", "length")}];
    v10.receiver = self;
    v10.super_class = PPSEvent;
    v6 = [(PPSEvent *)&v10 valueForKey:v5];
LABEL_3:
    v7 = v6;

    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"monotonicTimestamp"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"timestamp"))
  {
    v8 = MEMORY[0x277CCABB0];
    [(PPSEvent *)self monotonicTimestamp];
  }

  else
  {
    if (![v4 isEqualToString:@"epochTimestamp"])
    {
      v5 = [(PPSEvent *)self metrics];
      v6 = [v5 objectForKey:v4];
      goto LABEL_3;
    }

    v8 = MEMORY[0x277CCABB0];
    [(PPSEvent *)self epochTimestamp];
  }

  v7 = [v8 numberWithDouble:?];
LABEL_8:

  return v7;
}

@end