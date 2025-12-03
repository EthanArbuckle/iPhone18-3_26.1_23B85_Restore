@interface NSDate(SMExtensions)
- (id)absoluteTimeString:()SMExtensions preposition:capitalized:;
- (id)dateString;
- (id)relativeTimeString;
- (id)roundedFormattedTimeWithRoundedMinutesUnit:()SMExtensions allowedUnits:;
- (id)timeStringWithPreposition:()SMExtensions capitalized:;
- (uint64_t)roundedTime;
@end

@implementation NSDate(SMExtensions)

- (id)roundedFormattedTimeWithRoundedMinutesUnit:()SMExtensions allowedUnits:
{
  date = [MEMORY[0x277CBEAA8] date];
  [self timeIntervalSinceDate:date];
  v7 = v6;

  v8 = (round(v7) / 60.0);
  relativeDateFormatter = [MEMORY[0x277CCAA28] relativeDateFormatter];
  v10 = relativeDateFormatter;
  v11 = a3 - 1;
  if (v7 < 0.0)
  {
    v11 = 0;
  }

  v12 = [relativeDateFormatter localizedStringFromTimeInterval:(60 * (v8 + v11) / a3 * a3)];

  return v12;
}

- (uint64_t)roundedTime
{
  [self timeIntervalSinceReferenceDate];
  v2 = ceil(v1 / 300.0) * 300.0;
  v3 = MEMORY[0x277CBEAA8];

  return [v3 dateWithTimeIntervalSinceReferenceDate:v2];
}

- (id)relativeTimeString
{
  relativeDateFormatter = [MEMORY[0x277CCAA28] relativeDateFormatter];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [relativeDateFormatter localizedStringForDate:self relativeToDate:v3];

  return v4;
}

- (id)absoluteTimeString:()SMExtensions preposition:capitalized:
{
  if (a3 == 1)
  {
    dateString = [self dateString];
  }

  else
  {
    dateFormatter = [MEMORY[0x277CCAA28] dateFormatter];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    v10 = [dateFormatter stringFromDate:self];
    date = [MEMORY[0x277CBEAA8] date];
    v12 = [dateFormatter stringFromDate:date];
    v13 = [v10 isEqual:v12];

    if (v13)
    {
      dateString = [self timeStringWithPreposition:a4 capitalized:a5];
    }

    else
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"ESTIMATED_TIME_NEXT_CALENDAR_DAY" value:@"%@ on %@" table:0];

      v16 = MEMORY[0x277CCACA8];
      v17 = [self timeStringWithPreposition:a4 capitalized:a5];
      dateString2 = [self dateString];
      dateString = [v16 localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v17, dateString2];
    }
  }

  return dateString;
}

- (id)dateString
{
  dateFormatter = [MEMORY[0x277CCAA28] dateFormatter];
  [dateFormatter setLocalizedDateFormatFromTemplate:{@"EEEE, MMMM d"}];
  v3 = [dateFormatter stringFromDate:self];

  return v3;
}

- (id)timeStringWithPreposition:()SMExtensions capitalized:
{
  v7 = [MEMORY[0x277CCA968] localizedStringFromDate:self dateStyle:0 timeStyle:1];
  dateFormatter = [MEMORY[0x277CCAA28] dateFormatter];
  [dateFormatter setLocalizedDateFormatFromTemplate:@"j"];
  v9 = [dateFormatter stringFromDate:self];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v12 = [v9 componentsSeparatedByCharactersInSet:invertedSet];
  v13 = [v12 componentsJoinedByString:&stru_287607830];

  v14 = objc_opt_new();
  v15 = [v14 numberFromString:v13];
  integerValue = [v15 integerValue];

  if (a3 == 1)
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (integerValue == 1)
    {
      if (a4)
      {
        v18 = @"ESTIMATED_TIME_SINGULAR_HOUR_1:XX_WITH_CAPITALIZED_AROUND_PREPOSITION";
LABEL_18:
        v19 = @"Around %@";
        goto LABEL_31;
      }

      v18 = @"ESTIMATED_TIME_SINGULAR_HOUR_1:XX_WITH_NONCAPITALIZED_AROUND_PREPOSITION";
    }

    else
    {
      if (a4)
      {
        v18 = @"ESTIMATED_TIME_PLURAL_HOUR_WITH_CAPITALIZED_AROUND_PREPOSITION";
        goto LABEL_18;
      }

      v18 = @"ESTIMATED_TIME_PLURAL_HOUR_WITH_NONCAPITALIZED_AROUND_PREPOSITION";
    }

    v19 = @"around %@";
    goto LABEL_31;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
      goto LABEL_32;
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (integerValue == 1)
    {
      if (a4)
      {
        v18 = @"ESTIMATED_TIME_SINGULAR_HOUR_1:XX_WITH_CAPITALIZED_AT_PREPOSITION";
LABEL_21:
        v19 = @"At %@";
        goto LABEL_31;
      }

      v18 = @"ESTIMATED_TIME_SINGULAR_HOUR_1:XX_WITH_NONCAPITALIZED_AT_PREPOSITION";
    }

    else
    {
      if (a4)
      {
        v18 = @"ESTIMATED_TIME_PLURAL_HOUR_WITH_CAPITALIZED_AT_PREPOSITION";
        goto LABEL_21;
      }

      v18 = @"ESTIMATED_TIME_PLURAL_HOUR_WITH_NONCAPITALIZED_AT_PREPOSITION";
    }

    v19 = @"at %@";
    goto LABEL_31;
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (integerValue != 1)
  {
    if (a4)
    {
      v18 = @"ESTIMATED_TIME_PLURAL_HOUR_WITH_CAPITALIZED_BY_PREPOSITION";
      goto LABEL_15;
    }

    v18 = @"ESTIMATED_TIME_PLURAL_HOUR_WITH_NONCAPITALIZED_BY_PREPOSITION";
LABEL_24:
    v19 = @"by %@";
    goto LABEL_31;
  }

  if (!a4)
  {
    v18 = @"ESTIMATED_TIME_SINGULAR_HOUR_1:XX_WITH_NONCAPITALIZED_BY_PREPOSITION";
    goto LABEL_24;
  }

  v18 = @"ESTIMATED_TIME_SINGULAR_HOUR_1:XX_WITH_CAPITALIZED_BY_PREPOSITION";
LABEL_15:
  v19 = @"By %@";
LABEL_31:
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:0, v7];

  v7 = v21;
LABEL_32:

  return v7;
}

@end