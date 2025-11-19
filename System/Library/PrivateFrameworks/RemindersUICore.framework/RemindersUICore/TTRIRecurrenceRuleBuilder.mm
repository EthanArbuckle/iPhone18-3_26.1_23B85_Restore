@interface TTRIRecurrenceRuleBuilder
- (TTRIRecurrenceRuleBuilder)init;
- (id)daysOfTheWeekWithWeek:(int64_t)a3;
- (id)description;
- (id)recurrenceRuleWithFirstDayOfTheWeek:(int64_t)a3;
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

- (id)recurrenceRuleWithFirstDayOfTheWeek:(int64_t)a3
{
  v5 = [(TTRIRecurrenceRuleBuilder *)self _frequencyToUse];
  if ([(TTRIRecurrenceRuleBuilder *)self count])
  {
    v6 = [MEMORY[0x277D44728] recurrenceEndWithOccurrenceCount:{-[TTRIRecurrenceRuleBuilder count](self, "count")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
  if ([v7 count] || -[TTRIRecurrenceRuleBuilder days](self, "days") || -[TTRIRecurrenceRuleBuilder ordinalValue](self, "ordinalValue"))
  {
  }

  else
  {
    v22 = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
    v23 = [v22 count];

    if (!v23)
    {
      v32 = 0;
      v33 = a3;
      v9 = 0;
LABEL_30:
      v11 = 0;
LABEL_33:
      v20 = 0;
LABEL_34:
      v24 = objc_alloc(MEMORY[0x277D44740]);
      v25 = v11;
      v26 = v6;
      v27 = [MEMORY[0x277D44740] newObjectID];
      v28 = [MEMORY[0x277D44548] newObjectID];
      v29 = [MEMORY[0x277D44750] newObjectID];
      v30 = [(TTRIRecurrenceRuleBuilder *)self interval];
      v21 = v32;
      v13 = [v24 initRecurrenceRuleWithObjectID:v27 accountID:v28 reminderID:v29 frequency:v5 interval:v30 firstDayOfTheWeek:v33 daysOfTheWeek:v32 daysOfTheMonth:v20 monthsOfTheYear:v25 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v9 end:v26];

      v6 = v26;
      v11 = v25;
      goto LABEL_35;
    }
  }

  if (v5 == 3)
  {
    v33 = a3;
    v11 = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
    v17 = [(TTRIRecurrenceRuleBuilder *)self setPositions];
    v18 = [v17 lastObject];
    v19 = [v18 integerValue];

    if (!v19 || ![(TTRIRecurrenceRuleBuilder *)self days])
    {
      v9 = 0;
      v32 = 0;
      v20 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      if ([(TTRIRecurrenceRuleBuilder *)self days])
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v32 = [(TTRIRecurrenceRuleBuilder *)self daysOfTheWeekWithWeek:v19];
    v9 = 0;
    goto LABEL_33;
  }

  if (v5 != 2)
  {
    if (v5 != 1 || !-[TTRIRecurrenceRuleBuilder days](self, "days") || (-[TTRIRecurrenceRuleBuilder dayNumbers](self, "dayNumbers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9))
    {
      v10 = 0;
      v11 = 0;
LABEL_14:
      v12 = 0;
      v13 = 0;
      goto LABEL_36;
    }

    v33 = a3;
    v32 = [(TTRIRecurrenceRuleBuilder *)self daysOfTheWeek];
    goto LABEL_30;
  }

  v11 = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
  if ([(TTRIRecurrenceRuleBuilder *)self ordinalValue])
  {
    if ([(TTRIRecurrenceRuleBuilder *)self days])
    {
      v14 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
      v15 = [v14 count];

      if (!v15)
      {
        v33 = a3;
        v9 = [(TTRIRecurrenceRuleBuilder *)self setPositions];
        v32 = [(TTRIRecurrenceRuleBuilder *)self daysOfTheWeek];
        goto LABEL_33;
      }
    }
  }

  v9 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
  if ([v9 count])
  {
    v16 = [(TTRIRecurrenceRuleBuilder *)self days];

    if (v16)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v33 = a3;
    v20 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
    v9 = 0;
    v32 = 0;
    goto LABEL_34;
  }

  v21 = 0;
  v20 = 0;
  v13 = 0;
LABEL_35:

  v10 = v21;
  v12 = v20;
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

- (id)daysOfTheWeekWithWeek:(int64_t)a3
{
  v5 = objc_opt_new();
  if (([(TTRIRecurrenceRuleBuilder *)self days]& 1) != 0)
  {
    v6 = [MEMORY[0x277D44718] dayOfWeek:1 weekNumber:a3];
    [v5 addObject:v6];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 2) != 0)
  {
    v7 = [MEMORY[0x277D44718] dayOfWeek:2 weekNumber:a3];
    [v5 addObject:v7];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 4) != 0)
  {
    v8 = [MEMORY[0x277D44718] dayOfWeek:3 weekNumber:a3];
    [v5 addObject:v8];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 8) != 0)
  {
    v9 = [MEMORY[0x277D44718] dayOfWeek:4 weekNumber:a3];
    [v5 addObject:v9];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 0x10) != 0)
  {
    v10 = [MEMORY[0x277D44718] dayOfWeek:5 weekNumber:a3];
    [v5 addObject:v10];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 0x20) != 0)
  {
    v11 = [MEMORY[0x277D44718] dayOfWeek:6 weekNumber:a3];
    [v5 addObject:v11];
  }

  if (([(TTRIRecurrenceRuleBuilder *)self days]& 0x40) != 0)
  {
    v12 = [MEMORY[0x277D44718] dayOfWeek:7 weekNumber:a3];
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
  v3 = [(TTRIRecurrenceRuleBuilder *)self recurrenceRule];
  v16 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TTRIRecurrenceRuleBuilder *)self frequency];
  v6 = [(TTRIRecurrenceRuleBuilder *)self interval];
  v7 = [(TTRIRecurrenceRuleBuilder *)self count];
  v8 = [(TTRIRecurrenceRuleBuilder *)self dayNumbers];
  v9 = [(TTRIRecurrenceRuleBuilder *)self days];
  v10 = [(TTRIRecurrenceRuleBuilder *)self ordinalValue];
  v11 = [(TTRIRecurrenceRuleBuilder *)self monthNumbers];
  v12 = v11;
  v13 = @"NO VALID RULE";
  if (v3)
  {
    v13 = v3;
  }

  v14 = [v16 stringWithFormat:@"<%@: %p> {\n\tFrequency: %ld\n\tInterval: %ld\n\tCount: %tu\n\tDay Number: %@\n\tDays: %u\n\tOrdinal: %u\n\tMonth Numbers: %@\n\tCurrent Rule: %@\n}", v4, self, v5, v6, v7, v8, v9, v10, v11, v13];

  return v14;
}

@end