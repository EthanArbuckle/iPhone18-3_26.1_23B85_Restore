@interface TTRIRecurrenceRuleBuilder
- (TTRIRecurrenceRuleBuilder)init;
- (id)daysOfTheWeekWithWeek:(int64_t)week;
- (id)description;
- (id)recurrenceRuleWithFirstDayOfTheWeek:(int64_t)week;
- (id)setPositions;
- (int64_t)_frequencyToUse;
@end

@implementation TTRIRecurrenceRuleBuilder

- (TTRIRecurrenceRuleBuilder)init
{
  v5.receiver = self;
  v5.super_class = TTRIRecurrenceRuleBuilder;
  v2 = [(TTRIRecurrenceRuleBuilder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TTRIRecurrenceRuleBuilder *)v2 _setDefaultValues];
  }

  return v3;
}

- (id)recurrenceRuleWithFirstDayOfTheWeek:(int64_t)week
{
  _frequencyToUse = [(TTRIRecurrenceRuleBuilder *)self _frequencyToUse];
  if ([(TTRIRecurrenceRuleBuilder *)self count])
  {
    v6 = [MEMORY[0x277D44728] recurrenceEndWithOccurrenceCount:{-[TTRIRecurrenceRuleBuilder count](self, "count")}];
  }

  else
  {
    v6 = 0;
  }

  dayNumbers = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
  if ([dayNumbers count] || -[TTRIRecurrenceRuleBuilder days](self, "days") || -[TTRIRecurrenceRuleBuilder ordinalValue](self, "ordinalValue"))
  {
  }

  else
  {
    monthNumbers = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
    v23 = [monthNumbers count];

    if (!v23)
    {
      daysOfTheWeek = 0;
      weekCopy5 = week;
      setPositions2 = 0;
LABEL_30:
      monthNumbers2 = 0;
LABEL_33:
      dayNumbers3 = 0;
LABEL_34:
      v24 = objc_alloc(MEMORY[0x277D44740]);
      v25 = monthNumbers2;
      v26 = v6;
      newObjectID = [MEMORY[0x277D44740] newObjectID];
      newObjectID2 = [MEMORY[0x277D44548] newObjectID];
      newObjectID3 = [MEMORY[0x277D44750] newObjectID];
      interval = [(TTRIRecurrenceRuleBuilder *)self interval];
      v21 = daysOfTheWeek;
      v13 = [v24 initRecurrenceRuleWithObjectID:newObjectID accountID:newObjectID2 reminderID:newObjectID3 frequency:_frequencyToUse interval:interval firstDayOfTheWeek:weekCopy5 daysOfTheWeek:daysOfTheWeek daysOfTheMonth:dayNumbers3 monthsOfTheYear:v25 weeksOfTheYear:0 daysOfTheYear:0 setPositions:setPositions2 end:v26];

      v6 = v26;
      monthNumbers2 = v25;
      goto LABEL_35;
    }
  }

  if (_frequencyToUse == 3)
  {
    weekCopy5 = week;
    monthNumbers2 = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
    setPositions = [(TTRIRecurrenceRuleBuilder *)self setPositions];
    lastObject = [setPositions lastObject];
    integerValue = [lastObject integerValue];

    if (!integerValue || ![(TTRIRecurrenceRuleBuilder *)self days])
    {
      setPositions2 = 0;
      daysOfTheWeek = 0;
      dayNumbers3 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      if ([(TTRIRecurrenceRuleBuilder *)self days])
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    daysOfTheWeek = [(TTRIRecurrenceRuleBuilder *)self daysOfTheWeekWithWeek:integerValue];
    setPositions2 = 0;
    goto LABEL_33;
  }

  if (_frequencyToUse != 2)
  {
    if (_frequencyToUse != 1 || !-[TTRIRecurrenceRuleBuilder days](self, "days") || (-[TTRIRecurrenceRuleBuilder dayNumbers](self, "dayNumbers"), v8 = objc_claimAutoreleasedReturnValue(), setPositions2 = [v8 count], v8, setPositions2))
    {
      v10 = 0;
      monthNumbers2 = 0;
LABEL_14:
      v12 = 0;
      v13 = 0;
      goto LABEL_36;
    }

    weekCopy5 = week;
    daysOfTheWeek = [(TTRIRecurrenceRuleBuilder *)self daysOfTheWeek];
    goto LABEL_30;
  }

  monthNumbers2 = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
  if ([(TTRIRecurrenceRuleBuilder *)self ordinalValue])
  {
    if ([(TTRIRecurrenceRuleBuilder *)self days])
    {
      dayNumbers2 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
      v15 = [dayNumbers2 count];

      if (!v15)
      {
        weekCopy5 = week;
        setPositions2 = [(TTRIRecurrenceRuleBuilder *)self setPositions];
        daysOfTheWeek = [(TTRIRecurrenceRuleBuilder *)self daysOfTheWeek];
        goto LABEL_33;
      }
    }
  }

  setPositions2 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
  if ([setPositions2 count])
  {
    days = [(TTRIRecurrenceRuleBuilder *)self days];

    if (days)
    {
      v10 = 0;
      goto LABEL_14;
    }

    weekCopy5 = week;
    dayNumbers3 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
    setPositions2 = 0;
    daysOfTheWeek = 0;
    goto LABEL_34;
  }

  v21 = 0;
  dayNumbers3 = 0;
  v13 = 0;
LABEL_35:

  v10 = v21;
  v12 = dayNumbers3;
LABEL_36:

  return v13;
}

- (int64_t)_frequencyToUse
{
  result = [(TTRIRecurrenceRuleBuilder *)self frequency];
  if (result == 3)
  {
    if ([(TTRIRecurrenceRuleBuilder *)self days]== 127 || [(TTRIRecurrenceRuleBuilder *)self days]== 62 || [(TTRIRecurrenceRuleBuilder *)self days]== 65)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (id)daysOfTheWeekWithWeek:(int64_t)week
{
  v5 = objc_opt_new();
  if (([(TTRIRecurrenceRuleBuilder *)self days]& 1) != 0)
  {
    v6 = [MEMORY[0x277D44718] dayOfWeek:1 weekNumber:week];
    [v5 addObject:v6];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 2) != 0)
  {
    v7 = [MEMORY[0x277D44718] dayOfWeek:2 weekNumber:week];
    [v5 addObject:v7];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 4) != 0)
  {
    v8 = [MEMORY[0x277D44718] dayOfWeek:3 weekNumber:week];
    [v5 addObject:v8];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 8) != 0)
  {
    v9 = [MEMORY[0x277D44718] dayOfWeek:4 weekNumber:week];
    [v5 addObject:v9];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 0x10) != 0)
  {
    v10 = [MEMORY[0x277D44718] dayOfWeek:5 weekNumber:week];
    [v5 addObject:v10];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 0x20) != 0)
  {
    v11 = [MEMORY[0x277D44718] dayOfWeek:6 weekNumber:week];
    [v5 addObject:v11];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 0x40) != 0)
  {
    v12 = [MEMORY[0x277D44718] dayOfWeek:7 weekNumber:week];
    [v5 addObject:v12];
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)setPositions
{
  v2 = [(TTRIRecurrenceRuleBuilder *)self ordinalValue]- 1;
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return qword_27832D670[v2];
  }
}

- (id)description
{
  recurrenceRule = [(TTRIRecurrenceRuleBuilder *)self recurrenceRule];
  v16 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  frequency = [(TTRIRecurrenceRuleBuilder *)self frequency];
  interval = [(TTRIRecurrenceRuleBuilder *)self interval];
  v7 = [(TTRIRecurrenceRuleBuilder *)self count];
  dayNumbers = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
  days = [(TTRIRecurrenceRuleBuilder *)self days];
  ordinalValue = [(TTRIRecurrenceRuleBuilder *)self ordinalValue];
  monthNumbers = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
  v12 = monthNumbers;
  v13 = @"NO VALID RULE";
  if (recurrenceRule)
  {
    v13 = recurrenceRule;
  }

  v14 = [v16 stringWithFormat:@"<%@: %p> {\n\tFrequency: %ld\n\tInterval: %ld\n\tCount: %tu\n\tDay Number: %@\n\tDays: %u\n\tOrdinal: %u\n\tMonth Numbers: %@\n\tCurrent Rule: %@\n}", v4, self, frequency, interval, v7, dayNumbers, days, ordinalValue, monthNumbers, v13];

  return v14;
}

@end