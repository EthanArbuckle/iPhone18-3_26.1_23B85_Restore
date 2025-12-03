@interface RETimeline
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTimeline:(id)timeline;
- (NSDate)endDate;
- (NSDate)startDate;
- (RETimeline)init;
- (RETimeline)initWithStartDate:(id)date values:(id)values durations:(id)durations;
- (RETimeline)initWithTimeline:(id)timeline;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)valueForDate:(id)date;
- (unint64_t)hash;
@end

@implementation RETimeline

- (RETimeline)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = RETimeline;
  v2 = [(RETimeline *)&v9 init];
  if (v2)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v10[0] = distantFuture;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    transitionDates = v2->_transitionDates;
    v2->_transitionDates = v4;

    values = v2->_values;
    v2->_values = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (RETimeline)initWithStartDate:(id)date values:(id)values durations:(id)durations
{
  dateCopy = date;
  valuesCopy = values;
  durationsCopy = durations;
  v11 = [valuesCopy count];
  if (v11 != [durationsCopy count])
  {
    v12 = *MEMORY[0x277CBE660];
    v13 = [valuesCopy count];
    [durationsCopy count];
    RERaiseInternalException(v12, @"Number of values (%lu) must match number of durations (%lu)", v14, v15, v16, v17, v18, v19, v13);
  }

  v35.receiver = self;
  v35.super_class = RETimeline;
  v20 = [(RETimeline *)&v35 init];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count") + 1}];
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
    [v21 addObject:dateCopy];
    if ([valuesCopy count])
    {
      v23 = 0;
      do
      {
        v24 = [durationsCopy objectAtIndexedSubscript:v23];
        [v24 doubleValue];
        v26 = v25;

        if (v26 > 0.0)
        {
          lastObject = [v21 lastObject];
          v28 = [lastObject dateByAddingTimeInterval:v26];
          [v21 addObject:v28];

          v29 = [valuesCopy objectAtIndexedSubscript:v23];
          [v22 addObject:v29];
        }

        ++v23;
      }

      while (v23 < [valuesCopy count]);
    }

    v30 = [v21 copy];
    transitionDates = v20->_transitionDates;
    v20->_transitionDates = v30;

    v32 = [v22 copy];
    values = v20->_values;
    v20->_values = v32;
  }

  return v20;
}

- (id)valueForDate:(id)date
{
  dateCopy = date;
  if (dateCopy && [(NSArray *)self->_transitionDates count]>= 2)
  {
    startDate = [(RETimeline *)self startDate];
    endDate = [(RETimeline *)self endDate];
    v14 = endDate;
    if (startDate && endDate)
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      startDate2 = [(RETimeline *)self startDate];
      endDate2 = [(RETimeline *)self endDate];
      v18 = [v15 initWithStartDate:startDate2 endDate:endDate2];

      if ([v18 containsDate:dateCopy] && (-[RETimeline endDate](self, "endDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(dateCopy, "isEqual:", v19), v19, (v20 & 1) == 0))
      {
        v21 = [(NSArray *)self->_transitionDates indexOfObject:dateCopy inSortedRange:0 options:[(NSArray *)self->_transitionDates count] usingComparator:256, &__block_literal_global_84];
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [(NSArray *)self->_transitionDates indexOfObject:dateCopy inSortedRange:0 options:[(NSArray *)self->_transitionDates count] usingComparator:1024, &__block_literal_global_9_1]- 1;
        }

        v5 = [(NSArray *)self->_values objectAtIndexedSubscript:v21];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE658], @"startDate(%@) and endDate(%@) must be non-nil.", v8, v9, v10, v11, v12, v13, startDate);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)startDate
{
  transitionDates = [(RETimeline *)self transitionDates];
  firstObject = [transitionDates firstObject];

  return firstObject;
}

- (NSDate)endDate
{
  transitionDates = [(RETimeline *)self transitionDates];
  lastObject = [transitionDates lastObject];

  return lastObject;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RETimeline allocWithZone:zone];

  return [(RETimeline *)v4 initWithTimeline:self];
}

- (unint64_t)hash
{
  transitionDates = [(RETimeline *)self transitionDates];
  v3 = [transitionDates count];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RETimeline *)self isEqualToTimeline:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTimeline:(id)timeline
{
  timelineCopy = timeline;
  v5 = timelineCopy;
  if (self == timelineCopy)
  {
    v16 = 1;
  }

  else
  {
    if (timelineCopy)
    {
      transitionDates = [(RETimeline *)self transitionDates];
      transitionDates2 = [(RETimeline *)v5 transitionDates];
      v8 = [transitionDates count];
      if (v8 == [transitionDates2 count])
      {
        if (![transitionDates count])
        {
LABEL_12:
          v16 = 1;
LABEL_17:

          goto LABEL_18;
        }

        v9 = 0;
        while (1)
        {
          v10 = [transitionDates objectAtIndexedSubscript:v9];
          v11 = [transitionDates2 objectAtIndexedSubscript:v9];
          if (![v10 isEqualToDate:v11])
          {
            break;
          }

          v12 = [(RETimeline *)self valueForDate:v10];
          v13 = [(RETimeline *)v5 valueForDate:v11];
          v14 = v13;
          if (v12 == v13)
          {
          }

          else
          {
            v15 = [v12 isEqual:v13];

            if ((v15 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          if (++v9 >= [transitionDates count])
          {
            goto LABEL_12;
          }
        }
      }

LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }

    v16 = 0;
  }

LABEL_18:

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  transitionDates = [(RETimeline *)self transitionDates];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__RETimeline_description__block_invoke;
  v10[3] = &unk_2785FAAF0;
  v11 = transitionDates;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  v6 = transitionDates;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v13;
  v8 = v5;

  return v5;
}

void __25__RETimeline_description__block_invoke(id *a1, void *a2, unint64_t a3)
{
  v7 = a2;
  if ([a1[4] count] - 1 > a3)
  {
    v5 = [a1[4] objectAtIndexedSubscript:a3 + 1];
    v6 = [a1[5] valueForDate:v7];
    [a1[6] appendFormat:@"\t%@ - %@ : %@\n", v7, v5, v6];
  }
}

- (RETimeline)initWithTimeline:(id)timeline
{
  timelineCopy = timeline;
  startDate = [timelineCopy startDate];
  if (startDate)
  {
    transitionDates = [timelineCopy transitionDates];
    v7 = MEMORY[0x277CBEB18];
    v8 = [transitionDates count];
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 arrayWithCapacity:v9 - 1];
    v11 = MEMORY[0x277CBEB18];
    v12 = [transitionDates count];
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 arrayWithCapacity:v13 - 1];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __51__RETimeline_REExtendedTimeline__initWithTimeline___block_invoke;
    v23 = &unk_2785FDD90;
    v24 = transitionDates;
    v25 = timelineCopy;
    v26 = v10;
    v27 = v14;
    v15 = v14;
    v16 = v10;
    v17 = transitionDates;
    [v17 enumerateObjectsUsingBlock:&v20];
    v18 = [(RETimeline *)self initWithStartDate:startDate values:v15 durations:v16, v20, v21, v22, v23];
  }

  else
  {
    v18 = [(RETimeline *)self init];
  }

  return v18;
}

void __51__RETimeline_REExtendedTimeline__initWithTimeline___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if ([*(a1 + 32) count] - 1 != a3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
    [v5 timeIntervalSinceDate:v12];
    v7 = v6;
    v8 = [v12 dateByAddingTimeInterval:v6 * 0.5];
    v9 = [*(a1 + 40) valueForDate:v8];
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [v10 addObject:v11];

    [*(a1 + 56) addObject:v9];
  }
}

@end