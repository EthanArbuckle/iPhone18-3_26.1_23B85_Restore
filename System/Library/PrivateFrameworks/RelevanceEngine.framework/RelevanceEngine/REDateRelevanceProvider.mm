@interface REDateRelevanceProvider
+ (id)_simulationDateFormatter;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (REDateRelevanceProvider)initWithDictionary:(id)a3;
- (REDateRelevanceProvider)initWithEventDate:(id)a3;
- (REDateRelevanceProvider)initWithEventDate:(id)a3 duration:(double)a4;
- (REDateRelevanceProvider)initWithEventDate:(id)a3 duration:(double)a4 priority:(int64_t)a5;
- (REDateRelevanceProvider)initWithInterval:(id)a3;
- (REDateRelevanceProvider)initWithInterval:(id)a3 becomesIrrelevantDate:(id)a4 firstBecomesRelevantDate:(id)a5 recentDuration:(double)a6 priority:(int64_t)a7;
- (REDateRelevanceProvider)initWithInterval:(id)a3 becomesIrrelevantDate:(id)a4 priority:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionFromPriority:(int64_t)a3;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REDateRelevanceProvider

- (REDateRelevanceProvider)initWithEventDate:(id)a3
{
  v4 = MEMORY[0x277CCA970];
  v5 = a3;
  v6 = [[v4 alloc] initWithStartDate:v5 duration:0.0];

  v7 = [(REDateRelevanceProvider *)self initWithInterval:v6];
  return v7;
}

- (REDateRelevanceProvider)initWithEventDate:(id)a3 duration:(double)a4
{
  v6 = MEMORY[0x277CCA970];
  v7 = a3;
  v8 = [[v6 alloc] initWithStartDate:v7 duration:a4];

  v9 = [(REDateRelevanceProvider *)self initWithInterval:v8];
  return v9;
}

- (REDateRelevanceProvider)initWithEventDate:(id)a3 duration:(double)a4 priority:(int64_t)a5
{
  v8 = MEMORY[0x277CCA970];
  v9 = a3;
  v10 = [[v8 alloc] initWithStartDate:v9 duration:a4];

  v11 = [v10 endDate];
  v12 = [(REDateRelevanceProvider *)self initWithInterval:v10 becomesIrrelevantDate:v11 priority:a5];

  return v12;
}

- (REDateRelevanceProvider)initWithInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 endDate];
  v6 = [(REDateRelevanceProvider *)self initWithInterval:v4 becomesIrrelevantDate:v5];

  return v6;
}

- (REDateRelevanceProvider)initWithInterval:(id)a3 becomesIrrelevantDate:(id)a4 priority:(int64_t)a5
{
  v8 = MEMORY[0x277CBEA80];
  v9 = a4;
  v10 = a3;
  v11 = [v8 currentCalendar];
  v12 = [v10 startDate];
  v13 = [v11 dateByAddingUnit:16 value:-1 toDate:v12 options:0];

  v14 = [(REDateRelevanceProvider *)self initWithInterval:v10 becomesIrrelevantDate:v9 firstBecomesRelevantDate:v13 recentDuration:a5 priority:1800.0];
  return v14;
}

- (REDateRelevanceProvider)initWithInterval:(id)a3 becomesIrrelevantDate:(id)a4 firstBecomesRelevantDate:(id)a5 recentDuration:(double)a6 priority:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v37.receiver = self;
  v37.super_class = REDateRelevanceProvider;
  v15 = [(RERelevanceProvider *)&v37 init];
  v16 = v15;
  if (v15)
  {
    v15->_recentDuration = floor(a6);
    v17 = objc_alloc(MEMORY[0x277CCA970]);
    v18 = [v12 startDate];
    v19 = REDateByRemovingSubseconds(v18);
    v20 = [v12 endDate];
    REDateByRemovingSubseconds(v20);
    v36 = a7;
    v22 = v21 = v13;
    v23 = [v17 initWithStartDate:v19 endDate:v22];
    interval = v16->_interval;
    v16->_interval = v23;

    v13 = v21;
    v25 = REDateByRemovingSubseconds(v14);
    initialRelevanceDate = v16->_initialRelevanceDate;
    v16->_initialRelevanceDate = v25;

    v27 = REDateByRemovingSubseconds(v21);
    irrelevantDate = v16->_irrelevantDate;
    v16->_irrelevantDate = v27;

    v16->_priority = v36;
    v29 = v16->_initialRelevanceDate;
    v30 = [(NSDateInterval *)v16->_interval startDate];
    v31 = [(NSDate *)v29 compare:v30];

    if (v31 == 1)
    {
      v32 = MEMORY[0x277CBEAD8];
      v33 = *MEMORY[0x277CBE658];
      v34 = [v12 startDate];
      [v32 raise:v33 format:{@"Initial Relevance Date (%@) must occur before or be equal the Event Date (%@)", v14, v34}];
    }

    if (![(NSDateInterval *)v16->_interval containsDate:v16->_irrelevantDate])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The irrelevant date (%@) must be in specified interval (%@)", v13, v12}];
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

- (REDateRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"start_date"];
  v6 = [v4 objectForKeyedSubscript:@"end_date"];
  if (v5)
  {
    v7 = [objc_opt_class() _simulationDateFormatter];
    v8 = [v7 dateFromString:v5];
    v32 = v8;
    if (v6)
    {
      v9 = [v7 dateFromString:v6];
    }

    else
    {
      v9 = v8;
    }

    v11 = v9;
    v12 = [v4 objectForKeyedSubscript:@"irrelevant_date"];
    if (!v12 || ([v7 dateFromString:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13 = v11;
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:{@"recent_duration", v13}];
    v15 = v14;
    v16 = &unk_283BBD080;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = [v4 objectForKeyedSubscript:@"initial_relevance_date"];
    if (!v18 || ([v7 dateFromString:v18], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v20 = [MEMORY[0x277CBEA80] currentCalendar];
      v19 = [v20 dateByAddingUnit:16 value:-1 toDate:v32 options:0];
    }

    v30 = v7;
    v21 = [v4 objectForKeyedSubscript:@"priority"];
    v22 = v21;
    v31 = v6;
    if (v21)
    {
      v23 = [v21 integerValue];
    }

    else
    {
      v23 = 2;
    }

    v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v32 endDate:v11];
    [v17 doubleValue];
    v26 = v25;

    self = [(REDateRelevanceProvider *)self initWithInterval:v24 becomesIrrelevantDate:v28 firstBecomesRelevantDate:v19 recentDuration:v23 priority:v26];
    v10 = self;
    v6 = v31;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryEncoding
{
  v3 = [objc_opt_class() _simulationDateFormatter];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NSDateInterval *)self->_interval startDate];
  v6 = [v3 stringFromDate:v5];
  [v4 setObject:v6 forKeyedSubscript:@"start_date"];

  v7 = [(NSDateInterval *)self->_interval endDate];
  v8 = [v3 stringFromDate:v7];
  [v4 setObject:v8 forKeyedSubscript:@"end_date"];

  irrelevantDate = self->_irrelevantDate;
  v10 = [(NSDateInterval *)self->_interval endDate];
  LOBYTE(irrelevantDate) = [(NSDate *)irrelevantDate isEqual:v10];

  if ((irrelevantDate & 1) == 0)
  {
    v11 = [v3 stringFromDate:self->_irrelevantDate];
    [v4 setObject:v11 forKeyedSubscript:@"irrelevant_date"];
  }

  recentDuration = self->_recentDuration;
  if (!RERelevanceEqualToRelevance(recentDuration, 1800.0))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recentDuration];
    [v4 setObject:v13 forKeyedSubscript:@"recent_duration"];
  }

  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [(NSDateInterval *)self->_interval startDate];
  v16 = [v14 dateByAddingUnit:16 value:-1 toDate:v15 options:0];

  if (([v16 isEqualToDate:self->_initialRelevanceDate] & 1) == 0)
  {
    v17 = [v3 stringFromDate:self->_initialRelevanceDate];
    [v4 setObject:v17 forKeyedSubscript:@"initial_relevance_date"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_priority];
  [v4 setObject:v18 forKeyedSubscript:@"priority"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = REDateRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 6, self->_interval);
  objc_storeStrong(v4 + 4, self->_initialRelevanceDate);
  objc_storeStrong(v4 + 5, self->_irrelevantDate);
  v4[7] = *&self->_recentDuration;
  v4[8] = self->_priority;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = REDateRelevanceProvider;
    if ([(RERelevanceProvider *)&v22 isEqual:v4])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
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
  v4 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v3 setTimeZone:v4];

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZZZ"];
  v15.receiver = self;
  v15.super_class = REDateRelevanceProvider;
  v5 = [(REDateRelevanceProvider *)&v15 description];
  v6 = [(NSDateInterval *)self->_interval startDate];
  v7 = [v3 stringFromDate:v6];
  v8 = [(NSDateInterval *)self->_interval endDate];
  v9 = [v3 stringFromDate:v8];
  v10 = [v3 stringFromDate:self->_initialRelevanceDate];
  v11 = [v3 stringFromDate:self->_irrelevantDate];
  v12 = [(REDateRelevanceProvider *)self descriptionFromPriority:self->_priority];
  v13 = [v5 stringByAppendingFormat:@" intervalStartDate=%@, intervalEndDate=%@, initialRelevanceDate=%@, irrelevantDate=%@, priority=%@", v7, v9, v10, v11, v12];

  return v13;
}

- (id)descriptionFromPriority:(int64_t)a3
{
  v3 = @"Default";
  if (a3 == 3)
  {
    v3 = @"Calendar Event";
  }

  if (a3 == 1)
  {
    return @"Informational";
  }

  else
  {
    return v3;
  }
}

@end