@interface RETimeline
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimeline:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (RETimeline)init;
- (RETimeline)initWithStartDate:(id)a3 values:(id)a4 durations:(id)a5;
- (RETimeline)initWithTimeline:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)valueForDate:(id)a3;
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
    v3 = [MEMORY[0x277CBEAA8] distantFuture];
    v10[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    transitionDates = v2->_transitionDates;
    v2->_transitionDates = v4;

    values = v2->_values;
    v2->_values = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (RETimeline)initWithStartDate:(id)a3 values:(id)a4 durations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  if (v11 != [v10 count])
  {
    v12 = *MEMORY[0x277CBE660];
    v13 = [v9 count];
    [v10 count];
    RERaiseInternalException(v12, @"Number of values (%lu) must match number of durations (%lu)", v14, v15, v16, v17, v18, v19, v13);
  }

  v35.receiver = self;
  v35.super_class = RETimeline;
  v20 = [(RETimeline *)&v35 init];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count") + 1}];
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    [v21 addObject:v8];
    if ([v9 count])
    {
      v23 = 0;
      do
      {
        v24 = [v10 objectAtIndexedSubscript:v23];
        [v24 doubleValue];
        v26 = v25;

        if (v26 > 0.0)
        {
          v27 = [v21 lastObject];
          v28 = [v27 dateByAddingTimeInterval:v26];
          [v21 addObject:v28];

          v29 = [v9 objectAtIndexedSubscript:v23];
          [v22 addObject:v29];
        }

        ++v23;
      }

      while (v23 < [v9 count]);
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

- (id)valueForDate:(id)a3
{
  v4 = a3;
  if (v4 && [(NSArray *)self->_transitionDates count]>= 2)
  {
    v6 = [(RETimeline *)self startDate];
    v7 = [(RETimeline *)self endDate];
    v14 = v7;
    if (v6 && v7)
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      v16 = [(RETimeline *)self startDate];
      v17 = [(RETimeline *)self endDate];
      v18 = [v15 initWithStartDate:v16 endDate:v17];

      if ([v18 containsDate:v4] && (-[RETimeline endDate](self, "endDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v4, "isEqual:", v19), v19, (v20 & 1) == 0))
      {
        v21 = [(NSArray *)self->_transitionDates indexOfObject:v4 inSortedRange:0 options:[(NSArray *)self->_transitionDates count] usingComparator:256, &__block_literal_global_84];
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [(NSArray *)self->_transitionDates indexOfObject:v4 inSortedRange:0 options:[(NSArray *)self->_transitionDates count] usingComparator:1024, &__block_literal_global_9_1]- 1;
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
      RERaiseInternalException(*MEMORY[0x277CBE658], @"startDate(%@) and endDate(%@) must be non-nil.", v8, v9, v10, v11, v12, v13, v6);
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
  v2 = [(RETimeline *)self transitionDates];
  v3 = [v2 firstObject];

  return v3;
}

- (NSDate)endDate
{
  v2 = [(RETimeline *)self transitionDates];
  v3 = [v2 lastObject];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RETimeline allocWithZone:a3];

  return [(RETimeline *)v4 initWithTimeline:self];
}

- (unint64_t)hash
{
  v2 = [(RETimeline *)self transitionDates];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RETimeline *)self isEqualToTimeline:v4];
  }

  return v5;
}

- (BOOL)isEqualToTimeline:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    if (v4)
    {
      v6 = [(RETimeline *)self transitionDates];
      v7 = [(RETimeline *)v5 transitionDates];
      v8 = [v6 count];
      if (v8 == [v7 count])
      {
        if (![v6 count])
        {
LABEL_12:
          v16 = 1;
LABEL_17:

          goto LABEL_18;
        }

        v9 = 0;
        while (1)
        {
          v10 = [v6 objectAtIndexedSubscript:v9];
          v11 = [v7 objectAtIndexedSubscript:v9];
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

          if (++v9 >= [v6 count])
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
  v4 = [(RETimeline *)self transitionDates];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__RETimeline_description__block_invoke;
  v10[3] = &unk_2785FAAF0;
  v11 = v4;
  v12 = self;
  v5 = v3;
  v13 = v5;
  v6 = v4;
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

- (RETimeline)initWithTimeline:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  if (v5)
  {
    v6 = [v4 transitionDates];
    v7 = MEMORY[0x277CBEB18];
    v8 = [v6 count];
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
    v12 = [v6 count];
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
    v24 = v6;
    v25 = v4;
    v26 = v10;
    v27 = v14;
    v15 = v14;
    v16 = v10;
    v17 = v6;
    [v17 enumerateObjectsUsingBlock:&v20];
    v18 = [(RETimeline *)self initWithStartDate:v5 values:v15 durations:v16, v20, v21, v22, v23];
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