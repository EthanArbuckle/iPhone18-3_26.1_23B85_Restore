@interface REMRecurrenceRule(CustomEditorAdditions)
- (uint64_t)isAnyDayRule;
- (uint64_t)isSimpleRule;
- (uint64_t)isWeekdayRule;
- (uint64_t)isWeekendRule;
@end

@implementation REMRecurrenceRule(CustomEditorAdditions)

- (uint64_t)isWeekdayRule
{
  daysOfTheWeek = [self daysOfTheWeek];
  v2 = [daysOfTheWeek valueForKey:@"dayOfTheWeek"];

  v3 = [v2 isEqualToArray:&unk_282F1B1F8];
  return v3;
}

- (uint64_t)isWeekendRule
{
  daysOfTheWeek = [self daysOfTheWeek];
  v2 = [daysOfTheWeek valueForKey:@"dayOfTheWeek"];

  v3 = [v2 isEqualToArray:&unk_282F1B210];
  return v3;
}

- (uint64_t)isAnyDayRule
{
  daysOfTheWeek = [self daysOfTheWeek];
  v2 = [daysOfTheWeek valueForKey:@"dayOfTheWeek"];

  v3 = [v2 isEqualToArray:&unk_282F1B228];
  return v3;
}

- (uint64_t)isSimpleRule
{
  if (![self frequency])
  {
    return 1;
  }

  frequency = [self frequency];
  if (frequency == 1)
  {
    daysOfTheWeek = [self daysOfTheWeek];
    if ([daysOfTheWeek count] < 2)
    {
      v6 = 1;
LABEL_14:

      return v6;
    }
  }

  frequency2 = [self frequency];
  if (frequency2 != 2 || ([self daysOfTheWeek], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "count")))
  {
    v8 = 0;
    v6 = 0;
    if ([self frequency] != 3)
    {
      goto LABEL_11;
    }

LABEL_8:
    daysOfTheWeek2 = [self daysOfTheWeek];
    if ([daysOfTheWeek2 count])
    {

      v6 = 0;
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    monthsOfTheYear = [self monthsOfTheYear];
    if (![monthsOfTheYear count])
    {
      weeksOfTheYear = [self weeksOfTheYear];
      if (![weeksOfTheYear count])
      {
        daysOfTheYear = [self daysOfTheYear];
        v14 = weeksOfTheYear;
        v6 = [daysOfTheYear count] < 2;

        if ((v8 & 1) == 0)
        {
LABEL_11:
          if (frequency2 != 2)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    v6 = 0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  daysOfTheMonth = [self daysOfTheMonth];
  if ([daysOfTheMonth count] > 1)
  {
    if ([self frequency] != 3)
    {

      v6 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v8 = 1;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_13:
  if (frequency == 1)
  {
    goto LABEL_14;
  }

  return v6;
}

@end