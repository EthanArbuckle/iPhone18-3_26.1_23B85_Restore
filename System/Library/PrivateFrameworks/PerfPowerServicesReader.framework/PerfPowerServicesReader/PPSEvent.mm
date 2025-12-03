@interface PPSEvent
+ (PPSEvent)eventWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary;
+ (PPSEvent)eventWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary groupId:(unint64_t)id;
+ (PPSEvent)eventWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary groupId:(unint64_t)id label:(id)label;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (NSArray)metricKeys;
- (NSArray)metricValues;
- (NSDictionary)metricKeysAndValues;
- (PPSEvent)initWithCoder:(id)coder;
- (PPSEvent)initWithEvent:(id)event;
- (PPSEvent)initWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary groupId:(unint64_t)id;
- (double)epochTimestamp;
- (id)JSONRepresentation;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)logLine;
- (id)metricValueForKey:(id)key;
- (id)metricValuesForKeys:(id)keys;
- (id)valueForKey:(id)key;
- (int64_t)compare:(id)compare;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSEvent

- (PPSEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PPSEvent;
  v5 = [(PPSEvent *)&v19 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"monotonicTimestamp"];
    v5->_monotonicTimestamp = v6;
    [coderCopy decodeDoubleForKey:@"timeOffset"];
    v5->_timeOffset = v7;
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v14;

    v5->_groupId = [coderCopy decodeIntegerForKey:@"groupId"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(PPSEvent *)self monotonicTimestamp];
  [coderCopy encodeDouble:@"monotonicTimestamp" forKey:?];
  [(PPSEvent *)self timeOffset];
  [coderCopy encodeDouble:@"timeOffset" forKey:?];
  metrics = [(PPSEvent *)self metrics];
  [coderCopy encodeObject:metrics forKey:@"metrics"];

  [coderCopy encodeInteger:-[PPSEvent groupId](self forKey:{"groupId"), @"groupId"}];
  label = [(PPSEvent *)self label];
  [coderCopy encodeObject:label forKey:@"label"];
}

+ (PPSEvent)eventWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = [[PPSEvent alloc] initWithMonotonicTimestamp:dictionaryCopy timeOffset:timestamp dictionary:offset];

  return v8;
}

+ (PPSEvent)eventWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary groupId:(unint64_t)id
{
  dictionaryCopy = dictionary;
  v10 = [[PPSEvent alloc] initWithMonotonicTimestamp:dictionaryCopy timeOffset:id dictionary:timestamp groupId:offset];

  return v10;
}

+ (PPSEvent)eventWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary groupId:(unint64_t)id label:(id)label
{
  labelCopy = label;
  dictionaryCopy = dictionary;
  v13 = [[PPSEvent alloc] initWithMonotonicTimestamp:dictionaryCopy timeOffset:id dictionary:timestamp groupId:offset];

  [(PPSEvent *)v13 setLabel:labelCopy];

  return v13;
}

- (PPSEvent)initWithEvent:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = PPSEvent;
  v5 = [(PPSEvent *)&v14 init];
  if (v5)
  {
    [eventCopy monotonicTimestamp];
    v5->_monotonicTimestamp = v6;
    [eventCopy timeOffset];
    v5->_timeOffset = v7;
    metricKeysAndValues = [eventCopy metricKeysAndValues];
    v9 = [metricKeysAndValues mutableCopy];
    metrics = v5->_metrics;
    v5->_metrics = v9;

    v5->_groupId = [eventCopy groupId];
    label = [eventCopy label];
    label = v5->_label;
    v5->_label = label;
  }

  return v5;
}

- (PPSEvent)initWithMonotonicTimestamp:(double)timestamp timeOffset:(double)offset dictionary:(id)dictionary groupId:(unint64_t)id
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PPSEvent;
  v11 = [(PPSEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_monotonicTimestamp = timestamp;
    v11->_timeOffset = offset;
    v13 = [dictionaryCopy mutableCopy];
    metrics = v12->_metrics;
    v12->_metrics = v13;

    v12->_groupId = id;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(PPSEvent *)self isEqualToEvent:equalCopy];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = PPSEvent;
      v6 = [(PPSEvent *)&v9 isEqual:equalCopy];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  if (self == eventCopy)
  {
    v13 = 1;
  }

  else
  {
    [(PPSEvent *)self monotonicTimestamp];
    v6 = v5;
    [(PPSEvent *)eventCopy monotonicTimestamp];
    if (v6 == v7 && ([(PPSEvent *)self timeOffset], v9 = v8, [(PPSEvent *)eventCopy timeOffset], v9 == v10))
    {
      metricKeysAndValues = [(PPSEvent *)self metricKeysAndValues];
      metricKeysAndValues2 = [(PPSEvent *)eventCopy metricKeysAndValues];
      v13 = [metricKeysAndValues isEqualToDictionary:metricKeysAndValues2];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(PPSEvent *)self monotonicTimestamp];
  v6 = v5;
  [compareCopy monotonicTimestamp];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    [(PPSEvent *)self monotonicTimestamp];
    v10 = v9;
    [compareCopy monotonicTimestamp];
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
  metrics = [(PPSEvent *)self metrics];
  v3 = [metrics count];

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
  metrics = [(PPSEvent *)self metrics];
  v5 = [v3 dictionaryWithDictionary:metrics];

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
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CBEB38];
  metrics = [(PPSEvent *)self metrics];
  v6 = [v4 dictionaryWithDictionary:metrics];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __19__PPSEvent_logLine__block_invoke;
  v13[3] = &unk_279A113C8;
  v14 = array;
  v7 = array;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  v9 = [v8 componentsJoinedByString:@" "];

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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
  metrics = [(PPSEvent *)self metrics];
  v8 = v4 ^ (([metrics hash] ^ v6) << 32);

  return v8;
}

- (NSArray)metricKeys
{
  metrics = [(PPSEvent *)self metrics];
  allKeys = [metrics allKeys];

  return allKeys;
}

- (NSArray)metricValues
{
  metrics = [(PPSEvent *)self metrics];
  allValues = [metrics allValues];

  return allValues;
}

- (NSDictionary)metricKeysAndValues
{
  metrics = [(PPSEvent *)self metrics];
  v3 = [metrics copy];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  metrics = [(PPSEvent *)self metrics];
  v5 = [v3 dictionaryWithDictionary:metrics];

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
  dictionaryRepresentation = [(PPSEvent *)self dictionaryRepresentation];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:dictionaryRepresentation options:1 error:&v8];
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

- (id)metricValueForKey:(id)key
{
  keyCopy = key;
  metrics = [(PPSEvent *)self metrics];
  v6 = [metrics valueForKey:keyCopy];

  return v6;
}

- (id)metricValuesForKeys:(id)keys
{
  keysCopy = keys;
  metrics = [(PPSEvent *)self metrics];
  null = [MEMORY[0x277CBEB68] null];
  v7 = [metrics objectsForKeys:keysCopy notFoundMarker:null];

  return v7;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"@"])
  {
    metrics = [keyCopy substringFromIndex:{objc_msgSend(@"@", "length")}];
    v10.receiver = self;
    v10.super_class = PPSEvent;
    v6 = [(PPSEvent *)&v10 valueForKey:metrics];
LABEL_3:
    v7 = v6;

    goto LABEL_8;
  }

  if (([keyCopy isEqualToString:@"monotonicTimestamp"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"timestamp"))
  {
    v8 = MEMORY[0x277CCABB0];
    [(PPSEvent *)self monotonicTimestamp];
  }

  else
  {
    if (![keyCopy isEqualToString:@"epochTimestamp"])
    {
      metrics = [(PPSEvent *)self metrics];
      v6 = [metrics objectForKey:keyCopy];
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