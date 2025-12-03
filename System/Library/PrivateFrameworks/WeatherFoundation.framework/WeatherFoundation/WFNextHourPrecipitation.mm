@interface WFNextHourPrecipitation
- (BOOL)isEqual:(id)equal;
- (BOOL)isRelevant;
- (NSArray)activeMinutes;
- (WFNextHourPrecipitation)initWithCoder:(id)coder;
- (WFNextHourPrecipitation)initWithReadDate:(id)date startDate:(id)startDate expirationDate:(id)expirationDate minutes:(id)minutes conditions:(id)conditions descriptions:(id)descriptions;
- (WFNextHourPrecipitationDescription)currentDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFNextHourPrecipitation

- (WFNextHourPrecipitation)initWithReadDate:(id)date startDate:(id)startDate expirationDate:(id)expirationDate minutes:(id)minutes conditions:(id)conditions descriptions:(id)descriptions
{
  dateCopy = date;
  startDateCopy = startDate;
  expirationDateCopy = expirationDate;
  minutesCopy = minutes;
  conditionsCopy = conditions;
  descriptionsCopy = descriptions;
  v34.receiver = self;
  v34.super_class = WFNextHourPrecipitation;
  v20 = [(WFNextHourPrecipitation *)&v34 init];
  if (v20)
  {
    v21 = [dateCopy copy];
    readDate = v20->_readDate;
    v20->_readDate = v21;

    v23 = [startDateCopy copy];
    startDate = v20->_startDate;
    v20->_startDate = v23;

    v25 = [expirationDateCopy copy];
    expirationDate = v20->_expirationDate;
    v20->_expirationDate = v25;

    v27 = [minutesCopy copy];
    minutes = v20->_minutes;
    v20->_minutes = v27;

    v29 = [descriptionsCopy copy];
    precipitationDescriptions = v20->_precipitationDescriptions;
    v20->_precipitationDescriptions = v29;

    v31 = [conditionsCopy copy];
    conditions = v20->_conditions;
    v20->_conditions = v31;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSDate *)self->_readDate copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSDate *)self->_startDate copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSDate *)self->_expirationDate copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSArray *)self->_minutes copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSArray *)self->_precipitationDescriptions copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [(NSArray *)self->_conditions copy];
  v16 = v4[6];
  v4[6] = v15;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    readDate = [(WFNextHourPrecipitation *)self readDate];
    readDate2 = [v5 readDate];
    if ([readDate isEqual:readDate2])
    {
      startDate = [(WFNextHourPrecipitation *)self startDate];
      startDate2 = [v5 startDate];
      if ([startDate isEqual:startDate2])
      {
        expirationDate = [(WFNextHourPrecipitation *)self expirationDate];
        expirationDate2 = [v5 expirationDate];
        v12 = [expirationDate isEqual:expirationDate2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  readDate = [(WFNextHourPrecipitation *)self readDate];
  v4 = [readDate hash];
  startDate = [(WFNextHourPrecipitation *)self startDate];
  v6 = [startDate hash] ^ v4;
  expirationDate = [(WFNextHourPrecipitation *)self expirationDate];
  v8 = [expirationDate hash];

  return v6 ^ v8;
}

- (NSArray)activeMinutes
{
  v38 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:floor(v5 / 60.0) * 60.0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  minutes = [(WFNextHourPrecipitation *)self minutes];
  v8 = [minutes countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(minutes);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        date2 = [v12 date];
        [date2 timeIntervalSinceDate:v6];
        v15 = v14;

        if (v15 >= 0.0)
        {
          [array addObject:v12];
        }
      }

      v9 = [minutes countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  minutes2 = [(WFNextHourPrecipitation *)self minutes];
  v17 = [minutes2 count];
  v18 = v17 - [array count];

  minutes3 = [(WFNextHourPrecipitation *)self minutes];
  lastObject = [minutes3 lastObject];

  if (v18 >= 1)
  {
    v21 = 60;
    do
    {
      date3 = [lastObject date];
      v23 = [date3 dateByAddingTimeInterval:v21];

      v24 = [WFNextHourPrecipitationMinute alloc];
      [lastObject intensity];
      v26 = v25;
      [lastObject chance];
      v28 = v27;
      [lastObject perceivedIntensity];
      v30 = [(WFNextHourPrecipitationMinute *)v24 initWithIntensity:v23 chance:v26 perceivedIntensity:v28 date:v29];
      [array addObject:v30];

      v21 += 60;
      --v18;
    }

    while (v18);
  }

  v31 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v31;
}

- (BOOL)isRelevant
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272B94000, v3, OS_LOG_TYPE_INFO, "Determining if NextHour data is relevant by examining the conditions.", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  startDate = [(WFNextHourPrecipitation *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v7 = v6;

  if (v7 <= 900.0)
  {
    conditions = [(WFNextHourPrecipitation *)self conditions];
    v11 = [conditions count];

    if (v11)
    {
      v13 = 0;
      v8 = 0;
      *&v12 = 67109632;
      v31 = v12;
      while (1)
      {
        conditions2 = [(WFNextHourPrecipitation *)self conditions];
        v15 = [conditions2 objectAtIndex:v13];

        v16 = WFLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          LODWORD(v33) = v13;
          WORD2(v33) = 2114;
          *(&v33 + 6) = v15;
          _os_log_impl(&dword_272B94000, v16, OS_LOG_TYPE_INFO, "Checking NextHour data condition[%d]=%{public}@", buf, 0x12u);
        }

        type = [v15 type];
        validUntil = [v15 validUntil];
        if (validUntil)
        {
          validUntil2 = [v15 validUntil];
          [validUntil2 timeIntervalSinceNow];
          v21 = v20 > 0.0;
        }

        else
        {
          v21 = 1;
        }

        if (type >= 2 && v21)
        {
          break;
        }

        v22 = WFLogForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = v31;
          LODWORD(v33) = v13;
          WORD2(v33) = 1024;
          *(&v33 + 6) = type > 1;
          WORD5(v33) = 1024;
          HIDWORD(v33) = v21;
          _os_log_impl(&dword_272B94000, v22, OS_LOG_TYPE_INFO, "condition[%d] does not have a valid condition precipitation, skipping...isConditionPrecipitation=%d, isConditionUnexpired=%d", buf, 0x14u);
        }

        validUntil3 = [v15 validUntil];

        ++v13;
        conditions3 = [(WFNextHourPrecipitation *)self conditions];
        v25 = [conditions3 count];

        v8 = validUntil3;
        if (v25 <= v13)
        {
          goto LABEL_21;
        }
      }

      v26 = WFLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v33) = v13;
        _os_log_impl(&dword_272B94000, v26, OS_LOG_TYPE_INFO, "condition[%d] is valid (it's a precipitation and it's not expired). Now checking if it's relevant", buf, 8u);
      }

      [v8 timeIntervalSinceNow];
      v28 = v27;
      v9 = v27 <= 3000.0;
      v29 = WFLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 67109890;
        LODWORD(v33) = v13;
        WORD2(v33) = 2048;
        *(&v33 + 6) = 0x4049000000000000;
        HIWORD(v33) = 1024;
        v34 = v28 <= 3000.0;
        v35 = 2114;
        v36 = v8;
        _os_log_impl(&dword_272B94000, v29, OS_LOG_TYPE_INFO, "condition[%d] is relevant only if its preceding condition expires within the next %f minutes. isRelevant=%d, previousConditionValidUntil=%{public}@", buf, 0x22u);
      }
    }

    else
    {
      validUntil3 = 0;
LABEL_21:
      v15 = WFLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272B94000, v15, OS_LOG_TYPE_INFO, "NextHour data has no relevant condition. Returning isRelevant=NO", buf, 2u);
      }

      v9 = 0;
      v8 = validUntil3;
    }
  }

  else
  {
    v8 = WFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&v33 = v7;
      _os_log_impl(&dword_272B94000, v8, OS_LOG_TYPE_INFO, "NextHour data is stale, age=%f. Returning isRelevant=NO", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (WFNextHourPrecipitationDescription)currentDescription
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272B94000, v3, OS_LOG_TYPE_INFO, "About to compute the NextHour currentDesription", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_precipitationDescriptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138543362;
    v16 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isValidAtDate:{date, v16, v17}])
        {
          v13 = v11;
          goto LABEL_15;
        }

        v12 = WFLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = v16;
          v22 = v11;
          _os_log_impl(&dword_272B94000, v12, OS_LOG_TYPE_INFO, "skipping description because it's not valid at this time. description=%{public}@ expired)", buf, 0xCu);
        }
      }

      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_15:

  v14 = WFLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v13;
    _os_log_impl(&dword_272B94000, v14, OS_LOG_TYPE_INFO, "Looped through NextHour.descriptions and found: currentDescription=%{public}@", buf, 0xCu);
  }

  return v13;
}

- (id)description
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(WFNextHourPrecipitation *)self minutes];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      v8 = v3;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v7);
        v10 = MEMORY[0x277CCACA8];
        minutes = [(WFNextHourPrecipitation *)self minutes];
        v12 = [minutes indexOfObject:v9];
        [v9 perceivedIntensity];
        v14 = [v10 stringWithFormat:@"\nMinute: %lu - Value: %f", v12, v13];

        v3 = [v8 stringByAppendingString:v14];

        ++v7;
        v8 = v3;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  readDate = [(WFNextHourPrecipitation *)self readDate];
  [coderCopy encodeObject:readDate forKey:@"WFNextHourPrecipitationReadDateKey"];

  startDate = [(WFNextHourPrecipitation *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"WFNextHourPrecipitationStartDateKey"];

  expirationDate = [(WFNextHourPrecipitation *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"WFNextHourPrecipitationExpirationDateKey"];

  minutes = [(WFNextHourPrecipitation *)self minutes];
  [coderCopy encodeObject:minutes forKey:@"WFNextHourPrecipitationMinutesKey"];

  conditions = [(WFNextHourPrecipitation *)self conditions];
  [coderCopy encodeObject:conditions forKey:@"WFNextHourPrecipitationConditionsKey"];

  precipitationDescriptions = [(WFNextHourPrecipitation *)self precipitationDescriptions];
  [coderCopy encodeObject:precipitationDescriptions forKey:@"WFNextHourPrecipitationPrecipitationDescriptionsKey"];
}

- (WFNextHourPrecipitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationReadDateKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationStartDateKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationExpirationDateKey"];
  if (initWithCoder__onceToken != -1)
  {
    [WFNextHourPrecipitation initWithCoder:];
  }

  v8 = [coderCopy decodeObjectOfClasses:initWithCoder__classes forKey:@"WFNextHourPrecipitationMinutesKey"];
  v9 = [coderCopy decodeObjectOfClasses:initWithCoder__classes forKey:@"WFNextHourPrecipitationConditionsKey"];
  v10 = [coderCopy decodeObjectOfClasses:initWithCoder__classes forKey:@"WFNextHourPrecipitationPrecipitationDescriptionsKey"];
  v11 = [(WFNextHourPrecipitation *)self initWithReadDate:v5 startDate:v6 expirationDate:v7 minutes:v8 conditions:v9 descriptions:v10];

  return v11;
}

uint64_t __41__WFNextHourPrecipitation_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  initWithCoder__classes = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end