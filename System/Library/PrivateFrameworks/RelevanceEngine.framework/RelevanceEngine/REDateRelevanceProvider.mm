@interface REDateRelevanceProvider
+ (id)_simulationDateFormatter;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (REDateRelevanceProvider)initWithDictionary:(id)dictionary;
- (REDateRelevanceProvider)initWithEventDate:(id)date;
- (REDateRelevanceProvider)initWithEventDate:(id)date duration:(double)duration;
- (REDateRelevanceProvider)initWithEventDate:(id)date duration:(double)duration priority:(int64_t)priority;
- (REDateRelevanceProvider)initWithInterval:(id)interval;
- (REDateRelevanceProvider)initWithInterval:(id)interval becomesIrrelevantDate:(id)date firstBecomesRelevantDate:(id)relevantDate recentDuration:(double)duration priority:(int64_t)priority;
- (REDateRelevanceProvider)initWithInterval:(id)interval becomesIrrelevantDate:(id)date priority:(int64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionFromPriority:(int64_t)priority;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REDateRelevanceProvider

- (REDateRelevanceProvider)initWithEventDate:(id)date
{
  v4 = MEMORY[0x277CCA970];
  dateCopy = date;
  v6 = [[v4 alloc] initWithStartDate:dateCopy duration:0.0];

  v7 = [(REDateRelevanceProvider *)self initWithInterval:v6];
  return v7;
}

- (REDateRelevanceProvider)initWithEventDate:(id)date duration:(double)duration
{
  v6 = MEMORY[0x277CCA970];
  dateCopy = date;
  v8 = [[v6 alloc] initWithStartDate:dateCopy duration:duration];

  v9 = [(REDateRelevanceProvider *)self initWithInterval:v8];
  return v9;
}

- (REDateRelevanceProvider)initWithEventDate:(id)date duration:(double)duration priority:(int64_t)priority
{
  v8 = MEMORY[0x277CCA970];
  dateCopy = date;
  v10 = [[v8 alloc] initWithStartDate:dateCopy duration:duration];

  endDate = [v10 endDate];
  v12 = [(REDateRelevanceProvider *)self initWithInterval:v10 becomesIrrelevantDate:endDate priority:priority];

  return v12;
}

- (REDateRelevanceProvider)initWithInterval:(id)interval
{
  intervalCopy = interval;
  endDate = [intervalCopy endDate];
  v6 = [(REDateRelevanceProvider *)self initWithInterval:intervalCopy becomesIrrelevantDate:endDate];

  return v6;
}

- (REDateRelevanceProvider)initWithInterval:(id)interval becomesIrrelevantDate:(id)date priority:(int64_t)priority
{
  v8 = MEMORY[0x277CBEA80];
  dateCopy = date;
  intervalCopy = interval;
  currentCalendar = [v8 currentCalendar];
  startDate = [intervalCopy startDate];
  v13 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:startDate options:0];

  v14 = [(REDateRelevanceProvider *)self initWithInterval:intervalCopy becomesIrrelevantDate:dateCopy firstBecomesRelevantDate:v13 recentDuration:priority priority:1800.0];
  return v14;
}

- (REDateRelevanceProvider)initWithInterval:(id)interval becomesIrrelevantDate:(id)date firstBecomesRelevantDate:(id)relevantDate recentDuration:(double)duration priority:(int64_t)priority
{
  intervalCopy = interval;
  dateCopy = date;
  relevantDateCopy = relevantDate;
  v37.receiver = self;
  v37.super_class = REDateRelevanceProvider;
  v15 = [(RERelevanceProvider *)&v37 init];
  v16 = v15;
  if (v15)
  {
    v15->_recentDuration = floor(duration);
    v17 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [intervalCopy startDate];
    v19 = REDateByRemovingSubseconds(startDate);
    endDate = [intervalCopy endDate];
    REDateByRemovingSubseconds(endDate);
    priorityCopy = priority;
    v22 = v21 = dateCopy;
    v23 = [v17 initWithStartDate:v19 endDate:v22];
    interval = v16->_interval;
    v16->_interval = v23;

    dateCopy = v21;
    v25 = REDateByRemovingSubseconds(relevantDateCopy);
    initialRelevanceDate = v16->_initialRelevanceDate;
    v16->_initialRelevanceDate = v25;

    v27 = REDateByRemovingSubseconds(v21);
    irrelevantDate = v16->_irrelevantDate;
    v16->_irrelevantDate = v27;

    v16->_priority = priorityCopy;
    v29 = v16->_initialRelevanceDate;
    startDate2 = [(NSDateInterval *)v16->_interval startDate];
    v31 = [(NSDate *)v29 compare:startDate2];

    if (v31 == 1)
    {
      v32 = MEMORY[0x277CBEAD8];
      v33 = *MEMORY[0x277CBE658];
      startDate3 = [intervalCopy startDate];
      [v32 raise:v33 format:{@"Initial Relevance Date (%@) must occur before or be equal the Event Date (%@)", relevantDateCopy, startDate3}];
    }

    if (![(NSDateInterval *)v16->_interval containsDate:v16->_irrelevantDate])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The irrelevant date (%@) must be in specified interval (%@)", dateCopy, intervalCopy}];
    }
  }

  return v16;
}

+ (id)_simulationDateFormatter
{
  if (_simulationDateFormatter_onceToken != -1)
  {
    +[REDateRelevanceProvider _simulationDateFormatter];
  }

  v3 = _simulationDateFormatter_dateFormatter;

  return v3;
}

uint64_t __51__REDateRelevanceProvider__simulationDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _simulationDateFormatter_dateFormatter;
  _simulationDateFormatter_dateFormatter = v0;

  v2 = _simulationDateFormatter_dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (REDateRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"start_date"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"end_date"];
  if (v5)
  {
    _simulationDateFormatter = [objc_opt_class() _simulationDateFormatter];
    v8 = [_simulationDateFormatter dateFromString:v5];
    v32 = v8;
    if (v6)
    {
      v9 = [_simulationDateFormatter dateFromString:v6];
    }

    else
    {
      v9 = v8;
    }

    v11 = v9;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"irrelevant_date"];
    if (!v12 || ([_simulationDateFormatter dateFromString:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13 = v11;
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:{@"recent_duration", v13}];
    v15 = v14;
    v16 = &unk_283BBD080;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"initial_relevance_date"];
    if (!v18 || ([_simulationDateFormatter dateFromString:v18], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v19 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:v32 options:0];
    }

    v30 = _simulationDateFormatter;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"priority"];
    v22 = v21;
    v31 = v6;
    if (v21)
    {
      integerValue = [v21 integerValue];
    }

    else
    {
      integerValue = 2;
    }

    v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v32 endDate:v11];
    [v17 doubleValue];
    v26 = v25;

    self = [(REDateRelevanceProvider *)self initWithInterval:v24 becomesIrrelevantDate:v28 firstBecomesRelevantDate:v19 recentDuration:integerValue priority:v26];
    selfCopy = self;
    v6 = v31;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryEncoding
{
  _simulationDateFormatter = [objc_opt_class() _simulationDateFormatter];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  startDate = [(NSDateInterval *)self->_interval startDate];
  v6 = [_simulationDateFormatter stringFromDate:startDate];
  [dictionary setObject:v6 forKeyedSubscript:@"start_date"];

  endDate = [(NSDateInterval *)self->_interval endDate];
  v8 = [_simulationDateFormatter stringFromDate:endDate];
  [dictionary setObject:v8 forKeyedSubscript:@"end_date"];

  irrelevantDate = self->_irrelevantDate;
  endDate2 = [(NSDateInterval *)self->_interval endDate];
  LOBYTE(irrelevantDate) = [(NSDate *)irrelevantDate isEqual:endDate2];

  if ((irrelevantDate & 1) == 0)
  {
    v11 = [_simulationDateFormatter stringFromDate:self->_irrelevantDate];
    [dictionary setObject:v11 forKeyedSubscript:@"irrelevant_date"];
  }

  recentDuration = self->_recentDuration;
  if (!RERelevanceEqualToRelevance(recentDuration, 1800.0))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recentDuration];
    [dictionary setObject:v13 forKeyedSubscript:@"recent_duration"];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  startDate2 = [(NSDateInterval *)self->_interval startDate];
  v16 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:startDate2 options:0];

  if (([v16 isEqualToDate:self->_initialRelevanceDate] & 1) == 0)
  {
    v17 = [_simulationDateFormatter stringFromDate:self->_initialRelevanceDate];
    [dictionary setObject:v17 forKeyedSubscript:@"initial_relevance_date"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_priority];
  [dictionary setObject:v18 forKeyedSubscript:@"priority"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REDateRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_interval);
  objc_storeStrong(v4 + 4, self->_initialRelevanceDate);
  objc_storeStrong(v4 + 5, self->_irrelevantDate);
  v4[7] = *&self->_recentDuration;
  v4[8] = self->_priority;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = REDateRelevanceProvider;
    if ([(RERelevanceProvider *)&v22 isEqual:equalCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        interval = v5->_interval;
        v7 = self->_interval;
        v8 = v7;
        if (v7 == interval)
        {
        }

        else
        {
          v9 = [(NSDateInterval *)v7 isEqual:interval];

          if (!v9)
          {
            goto LABEL_20;
          }
        }

        initialRelevanceDate = v5->_initialRelevanceDate;
        v12 = self->_initialRelevanceDate;
        v13 = v12;
        if (v12 == initialRelevanceDate)
        {
        }

        else
        {
          v14 = [(NSDate *)v12 isEqual:initialRelevanceDate];

          if (!v14)
          {
            goto LABEL_20;
          }
        }

        irrelevantDate = v5->_irrelevantDate;
        v16 = self->_irrelevantDate;
        v17 = v16;
        if (v16 == irrelevantDate)
        {
        }

        else
        {
          v18 = [(NSDate *)v16 isEqual:irrelevantDate];

          if (!v18)
          {
            goto LABEL_20;
          }
        }

        recentDuration = self->_recentDuration;
        v20 = v5->_recentDuration;
        if (vabds_f32(recentDuration, v20) < 0.00000011921)
        {
          v10 = self->_priority == v5->_priority;
LABEL_21:

          goto LABEL_22;
        }

LABEL_20:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v10 = 0;
  }

LABEL_22:

  return v10;
}

- (unint64_t)_hash
{
  v3 = [(NSDateInterval *)self->_interval hash];
  v4 = [(NSDate *)self->_initialRelevanceDate hash]^ v3;
  v5 = v4 ^ [(NSDate *)self->_irrelevantDate hash];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recentDuration];
  v7 = [v6 hash] ^ self->_priority;

  return v5 ^ v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v3 setTimeZone:systemTimeZone];

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZZZ"];
  v15.receiver = self;
  v15.super_class = REDateRelevanceProvider;
  v5 = [(REDateRelevanceProvider *)&v15 description];
  startDate = [(NSDateInterval *)self->_interval startDate];
  v7 = [v3 stringFromDate:startDate];
  endDate = [(NSDateInterval *)self->_interval endDate];
  v9 = [v3 stringFromDate:endDate];
  v10 = [v3 stringFromDate:self->_initialRelevanceDate];
  v11 = [v3 stringFromDate:self->_irrelevantDate];
  v12 = [(REDateRelevanceProvider *)self descriptionFromPriority:self->_priority];
  v13 = [v5 stringByAppendingFormat:@" intervalStartDate=%@, intervalEndDate=%@, initialRelevanceDate=%@, irrelevantDate=%@, priority=%@", v7, v9, v10, v11, v12];

  return v13;
}

- (id)descriptionFromPriority:(int64_t)priority
{
  v3 = @"Default";
  if (priority == 3)
  {
    v3 = @"Calendar Event";
  }

  if (priority == 1)
  {
    return @"Informational";
  }

  else
  {
    return v3;
  }
}

@end