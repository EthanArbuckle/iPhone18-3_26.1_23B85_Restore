@interface VCSRecurrenceRule
- (BOOL)decodeDigits:(const char *)digits withResult:(int64_t *)result;
- (BOOL)decodeDuration:(const char *)duration;
- (BOOL)decodeInterval:(const char *)interval;
- (BOOL)decodeMonthlyByDay:(const char *)day;
- (BOOL)decodeMonthlyByPos:(const char *)pos;
- (BOOL)decodeOccurrenceList:(const char *)list;
- (BOOL)decodeWeekdayList:(const char *)list;
- (BOOL)decodeWeekly:(const char *)weekly;
- (BOOL)decodeYearlyByDay:(const char *)day;
- (BOOL)decodeYearlyByMonth:(const char *)month;
- (NSString)description;
- (VCSRecurrenceRule)initWithString:(const char *)string;
- (id)_decodeNumberList:(const char *)list min:(int64_t)min max:(int64_t)max;
- (id)dictify;
@end

@implementation VCSRecurrenceRule

- (VCSRecurrenceRule)initWithString:(const char *)string
{
  v22.receiver = self;
  v22.super_class = VCSRecurrenceRule;
  v4 = [(VCSRecurrenceRule *)&v22 init];
  if (!v4)
  {
LABEL_39:
    v16 = v4;
    goto LABEL_40;
  }

  v5 = 0;
  stringCopy = string;
  v6 = *string;
  if (v6 > 0x56)
  {
    if (v6 == 87)
    {
      v4->_recurrenceType = 2;
      stringCopy = string + 1;
      v5 = [(VCSRecurrenceRule *)v4 decodeWeekly:&stringCopy];
      goto LABEL_18;
    }

    if (v6 != 89)
    {
      goto LABEL_18;
    }

    v8 = *(string + 1);
    stringCopy = string + 1;
    if (v8 != 68)
    {
      if (v8 == 77)
      {
        v4->_recurrenceType = 5;
        stringCopy = string + 2;
        v5 = [(VCSRecurrenceRule *)v4 decodeYearlyByMonth:&stringCopy];
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v4->_recurrenceType = 6;
    stringCopy = string + 2;
    v5 = [(VCSRecurrenceRule *)v4 decodeYearlyByDay:&stringCopy];
  }

  else
  {
    if (v6 == 68)
    {
      v4->_recurrenceType = 1;
      stringCopy = string + 1;
      v5 = [(VCSRecurrenceRule *)v4 decodeDaily:&stringCopy];
      goto LABEL_18;
    }

    if (v6 != 77)
    {
      goto LABEL_18;
    }

    v7 = *(string + 1);
    stringCopy = string + 1;
    if (v7 != 68)
    {
      if (v7 == 80)
      {
        v4->_recurrenceType = 3;
        stringCopy = string + 2;
        v5 = [(VCSRecurrenceRule *)v4 decodeMonthlyByPos:&stringCopy];
        goto LABEL_18;
      }

LABEL_15:
      v5 = 0;
      goto LABEL_18;
    }

    v4->_recurrenceType = 4;
    stringCopy = string + 2;
    v5 = [(VCSRecurrenceRule *)v4 decodeMonthlyByDay:&stringCopy];
  }

LABEL_18:
  if (v4->_recurrenceType)
  {
    if (v5)
    {
      for (i = stringCopy; ; stringCopy = i)
      {
        v10 = *i++;
        if (v10 != 32 && v10 != 9)
        {
          break;
        }
      }

      if ([(VCSRecurrenceRule *)v4 decodeDuration:&stringCopy])
      {
        for (j = stringCopy; ; stringCopy = j)
        {
          v14 = *j++;
          if (v14 != 32 && v14 != 9)
          {
            break;
          }
        }

        v17 = [VCSDate alloc];
        v18 = [(VCSDate *)v17 initWithDateString:stringCopy];
        endDate = v4->_endDate;
        v4->_endDate = v18;

        goto LABEL_39;
      }
    }
  }

  else
  {
    v12 = VCSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VCSRecurrenceRule initWithString:v12];
    }
  }

  v16 = 0;
LABEL_40:

  return v16;
}

- (id)dictify
{
  v3 = objc_opt_new();
  v4 = v3;
  recurrenceType = self->_recurrenceType;
  if (recurrenceType > 6)
  {
    v6 = @"Invalid";
  }

  else
  {
    v6 = off_27A64C368[recurrenceType];
  }

  [v3 setObject:v6 forKeyedSubscript:@"type"];
  v7 = [MEMORY[0x277CCABB0] numberWithLong:self->_interval];
  [v4 setObject:v7 forKeyedSubscript:@"interval"];

  if ([(NSMutableArray *)self->_occurrenceList count])
  {
    v8 = [(NSMutableArray *)self->_occurrenceList componentsJoinedByString:@", "];
    [v4 setObject:v8 forKeyedSubscript:@"occurrences"];
  }

  if ([(NSMutableArray *)self->_weekdayList count])
  {
    v9 = [(NSMutableArray *)self->_weekdayList VCS_map:&__block_literal_global_11];
    [v4 setObject:v9 forKeyedSubscript:@"weekdays"];
  }

  if ([(NSArray *)self->_dayNumberList count])
  {
    [v4 setObject:self->_dayNumberList forKeyedSubscript:@"dayNumbers"];
  }

  if ([(NSArray *)self->_monthList count])
  {
    [v4 setObject:self->_monthList forKeyedSubscript:@"months"];
  }

  if ([(NSArray *)self->_dayList count])
  {
    [v4 setObject:self->_dayList forKeyedSubscript:@"days"];
  }

  if (self->_hasDuration)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLong:self->_duration];
    [v4 setObject:v10 forKeyedSubscript:@"duration"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v12 = [(VCSDate *)endDate description];
    [v4 setObject:v12 forKeyedSubscript:@"endDate"];
  }

  return v4;
}

__CFString *__28__VCSRecurrenceRule_dictify__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];
  if (v2 > 6)
  {
    return @"??";
  }

  else
  {
    return off_27A64C3A0[v2];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictify = [(VCSRecurrenceRule *)self dictify];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, dictify];

  return v6;
}

- (BOOL)decodeWeekly:(const char *)weekly
{
  v5 = [(VCSRecurrenceRule *)self decodeInterval:?];
  if (v5)
  {
    for (i = *weekly; ; *weekly = i)
    {
      v7 = *i++;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }
    }

    LOBYTE(v5) = [(VCSRecurrenceRule *)self decodeWeekdayList:weekly];
  }

  return v5;
}

- (BOOL)decodeMonthlyByPos:(const char *)pos
{
  v5 = [(VCSRecurrenceRule *)self decodeInterval:?];
  if (v5)
  {
    for (i = *pos; ; *pos = i)
    {
      v7 = *i++;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }
    }

    v5 = [(VCSRecurrenceRule *)self decodeOccurrenceList:pos];
    if (v5)
    {
      if (self->_occurrenceList)
      {
        for (j = *pos; ; *pos = j)
        {
          v10 = *j++;
          if (v10 != 32 && v10 != 9)
          {
            break;
          }
        }

        LOBYTE(v5) = [(VCSRecurrenceRule *)self decodeWeekdayList:pos];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (BOOL)decodeMonthlyByDay:(const char *)day
{
  v5 = [(VCSRecurrenceRule *)self decodeInterval:?];
  if (v5)
  {
    for (i = *day; ; *day = i)
    {
      v7 = *i++;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }
    }

    v9 = [(VCSRecurrenceRule *)self _decodeNumberList:day min:1 max:31];
    dayNumberList = self->_dayNumberList;
    self->_dayNumberList = v9;
  }

  return v5;
}

- (BOOL)decodeYearlyByMonth:(const char *)month
{
  v5 = [(VCSRecurrenceRule *)self decodeInterval:?];
  if (v5)
  {
    for (i = *month; ; *month = i)
    {
      v7 = *i++;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }
    }

    v9 = [(VCSRecurrenceRule *)self _decodeNumberList:month min:1 max:12];
    monthList = self->_monthList;
    self->_monthList = v9;
  }

  return v5;
}

- (BOOL)decodeYearlyByDay:(const char *)day
{
  v5 = [(VCSRecurrenceRule *)self decodeInterval:?];
  if (v5)
  {
    for (i = *day; ; *day = i)
    {
      v7 = *i++;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }
    }

    v9 = [(VCSRecurrenceRule *)self _decodeNumberList:day min:1 max:366];
    dayList = self->_dayList;
    self->_dayList = v9;
  }

  return v5;
}

- (BOOL)decodeInterval:(const char *)interval
{
  v6 = 0;
  v4 = [(VCSRecurrenceRule *)self decodeDigits:interval withResult:&v6];
  if (v4)
  {
    self->_interval = v6;
  }

  return v4;
}

- (BOOL)decodeWeekdayList:(const char *)list
{
  v5 = *list;
LABEL_2:
  while (1)
  {
    v6 = *v5;
    if (v6 != 9 && v6 != 32)
    {
      break;
    }

    ++v5;
  }

  v7 = 0;
  v8 = v5 + 2;
  do
  {
    v9 = decodeWeekdayList__weekdays[v7];
    if (v6 == *v9 && *(v5 + 1) == v9[1])
    {
      v10 = *v8;
      v11 = v10 > 0x20;
      v12 = (1 << v10) & 0x100000201;
      if (!v11 && v12 != 0)
      {
        weekdayList = self->_weekdayList;
        if (!weekdayList)
        {
          v15 = objc_opt_new();
          v16 = self->_weekdayList;
          self->_weekdayList = v15;

          weekdayList = self->_weekdayList;
        }

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:decodeWeekdayList__weekdaysCode[v7]];
        [(NSMutableArray *)weekdayList addObject:v17];

        v5 = v8;
        goto LABEL_2;
      }
    }

    ++v7;
  }

  while (v7 != 7);
  *list = v5;
  return 1;
}

- (BOOL)decodeOccurrenceList:(const char *)list
{
  v5 = *list;
  LOBYTE(v6) = **list;
  do
  {
    if ((v6 - 49) > 4u)
    {
      break;
    }

    v7 = *(v5 + 1);
    if (v7 != 45 && v7 != 43)
    {
      break;
    }

    v8 = v6;
    occurrenceList = self->_occurrenceList;
    if (occurrenceList)
    {
      v6 = v6;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = self->_occurrenceList;
      self->_occurrenceList = v10;

      v6 = *v5;
      v7 = *(v5 + 1);
      occurrenceList = self->_occurrenceList;
    }

    v12 = v8 - 58;
    v13 = v6 - 48;
    v14 = 48 - v6;
    v15 = v7 == 45 ? v14 : v13;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
    [(NSMutableArray *)occurrenceList addObject:v16];

    for (v5 += 2; ; ++v5)
    {
      v6 = *v5;
      if (v6 != 32 && v6 != 9)
      {
        break;
      }
    }
  }

  while (v12 > 0xFFFFFFF5);
  *list = v5;
  return 1;
}

- (id)_decodeNumberList:(const char *)list min:(int64_t)min max:(int64_t)max
{
  i = *list;
  v18 = 0;
  v19 = i;
  if ([(VCSRecurrenceRule *)self decodeDigits:&v19 withResult:&v18]&& (v18 >= min ? (v10 = v18 <= max) : (v10 = 0), v10))
  {
    v11 = 0;
    do
    {
      if (!v11)
      {
        v11 = objc_opt_new();
      }

      v13 = [MEMORY[0x277CCABB0] numberWithLong:?];
      [v11 addObject:v13];

      for (i = v19; ; ++i)
      {
        v14 = *i;
        if (v14 != 32 && v14 != 9)
        {
          break;
        }
      }

      v19 = i;
      if (![(VCSRecurrenceRule *)self decodeDigits:&v19 withResult:&v18])
      {
        break;
      }
    }

    while (v18 >= min && v18 <= max);
  }

  else
  {
    v11 = 0;
  }

  *list = i;

  return v11;
}

- (BOOL)decodeDuration:(const char *)duration
{
  selfCopy = self;
  if (**duration == 35)
  {
    v6 = *duration + 1;
    LODWORD(self) = [(VCSRecurrenceRule *)self decodeDigits:&v6 withResult:&self->_duration];
    if (self)
    {
      selfCopy->_hasDuration = 1;
    }

    *duration = v6;
  }

  else
  {
    self->_hasDuration = 0;
    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)decodeDigits:(const char *)digits withResult:(int64_t *)result
{
  if ((**digits - 48) <= 9)
  {
    __endptr = 0;
    *__error() = 0;
    v6 = strtol(*digits, &__endptr, 10);
    v7 = v6;
    if (v6)
    {
      if ((v6 - 0x7FFFFFFFFFFFFFFFLL) > 1 || *__error() != 34)
      {
        goto LABEL_5;
      }
    }

    else if (*__error() != 22)
    {
LABEL_5:
      *result = v7;
      *digits = __endptr;
      return 1;
    }
  }

  return 0;
}

@end