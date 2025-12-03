@interface RESessionRelevanceProvider
+ (id)_simulationDateFormatter;
- (BOOL)isEqual:(id)equal;
- (RESessionRelevanceProvider)initWithDictionary:(id)dictionary;
- (RESessionRelevanceProvider)initWithStartDate:(id)date endDate:(id)endDate historic:(BOOL)historic;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation RESessionRelevanceProvider

- (RESessionRelevanceProvider)initWithStartDate:(id)date endDate:(id)endDate historic:(BOOL)historic
{
  dateCopy = date;
  endDateCopy = endDate;
  v18.receiver = self;
  v18.super_class = RESessionRelevanceProvider;
  v10 = [(RERelevanceProvider *)&v18 init];
  if (v10)
  {
    v11 = REDateByRemovingSubseconds(dateCopy);
    startDate = v10->_startDate;
    v10->_startDate = v11;

    v13 = REDateByRemovingSubseconds(endDateCopy);
    endDate = v10->_endDate;
    v10->_endDate = v13;

    v10->_historic = historic;
    v15 = v10->_startDate;
    if (v15)
    {
      if (v10->_endDate && [(NSDate *)v15 compare:?]== NSOrderedDescending)
      {
        v16 = v10->_startDate;
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Start Date (%@) must occur before the End Date (%@)", v16, v10->_endDate}];
      }
    }
  }

  return v10;
}

+ (id)_simulationDateFormatter
{
  if (_simulationDateFormatter_onceToken_0 != -1)
  {
    +[RESessionRelevanceProvider _simulationDateFormatter];
  }

  v3 = _simulationDateFormatter_dateFormatter_0;

  return v3;
}

uint64_t __54__RESessionRelevanceProvider__simulationDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _simulationDateFormatter_dateFormatter_0;
  _simulationDateFormatter_dateFormatter_0 = v0;

  v2 = _simulationDateFormatter_dateFormatter_0;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (RESessionRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"start_date"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"end_date"];
  v7 = v6;
  if (v5)
  {
    _simulationDateFormatter = [objc_opt_class() _simulationDateFormatter];
    v9 = [_simulationDateFormatter dateFromString:v5];

    if (v7)
    {
LABEL_3:
      _simulationDateFormatter2 = [objc_opt_class() _simulationDateFormatter];
      v11 = [_simulationDateFormatter2 dateFromString:v7];

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = [dictionaryCopy objectForKeyedSubscript:@"historic"];
  v13 = v12;
  v14 = MEMORY[0x277CBEC28];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  bOOLValue = [v15 BOOLValue];
  v17 = [(RESessionRelevanceProvider *)self initWithStartDate:v9 endDate:v11 historic:bOOLValue];

  return v17;
}

- (id)dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_historic];
  [dictionary setObject:v4 forKeyedSubscript:@"historic"];

  if (self->_startDate)
  {
    _simulationDateFormatter = [objc_opt_class() _simulationDateFormatter];
    v6 = [_simulationDateFormatter stringFromDate:self->_startDate];
    [dictionary setObject:v6 forKeyedSubscript:@"start_date"];
  }

  if (self->_endDate)
  {
    _simulationDateFormatter2 = [objc_opt_class() _simulationDateFormatter];
    v8 = [_simulationDateFormatter2 stringFromDate:self->_endDate];
    [dictionary setObject:v8 forKeyedSubscript:@"end_date"];
  }

  v9 = [dictionary copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = RESessionRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 5, self->_startDate);
  objc_storeStrong(v4 + 6, self->_endDate);
  *(v4 + 32) = self->_historic;
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
    v16.receiver = self;
    v16.super_class = RESessionRelevanceProvider;
    if ([(RERelevanceProvider *)&v16 isEqual:equalCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        startDate = v5->_startDate;
        v7 = self->_startDate;
        v8 = v7;
        if (v7 == startDate)
        {
        }

        else
        {
          v9 = [(NSDate *)v7 isEqual:startDate];

          if (!v9)
          {
            goto LABEL_12;
          }
        }

        endDate = v5->_endDate;
        v12 = self->_endDate;
        v13 = v12;
        if (v12 == endDate)
        {
        }

        else
        {
          v14 = [(NSDate *)v12 isEqual:endDate];

          if (!v14)
          {
LABEL_12:
            v10 = 0;
LABEL_15:

            goto LABEL_16;
          }
        }

        v10 = self->_historic == v5->_historic;
        goto LABEL_15;
      }
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (unint64_t)_hash
{
  v3 = [(NSDate *)self->_startDate hash];
  v4 = [(NSDate *)self->_endDate hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_historic];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RESessionRelevanceProvider;
  v3 = [(RESessionRelevanceProvider *)&v8 description];
  v4 = v3;
  if (self->_historic)
  {
    v5 = @", historic";
  }

  else
  {
    v5 = &stru_283B97458;
  }

  v6 = [v3 stringByAppendingFormat:@" start=%@, end=%@%@", self->_startDate, self->_endDate, v5];

  return v6;
}

@end