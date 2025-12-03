@interface SASportsMatchup(SiriUI)
- (id)siriui_channelsString;
- (id)siriui_firstEntity;
- (id)siriui_firstLineScores;
- (id)siriui_firstScore;
- (id)siriui_localizedScheduleStatusForLeague:()SiriUI sport:showTimeIfToday:;
- (id)siriui_secondEntity;
- (id)siriui_secondLineScores;
- (id)siriui_secondScore;
- (id)siriui_teamVsTeam;
- (id)siriui_venueLocation;
- (uint64_t)siriui_homeIsFirst;
- (uint64_t)siriui_isInTheFuture;
@end

@implementation SASportsMatchup(SiriUI)

- (uint64_t)siriui_isInTheFuture
{
  status = [self status];
  if ([status isEqualToString:*MEMORY[0x277D48A18]] & 1) != 0 || (objc_msgSend(status, "isEqualToString:", *MEMORY[0x277D48A10]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [status isEqualToString:*MEMORY[0x277D48A00]];
  }

  return v2;
}

- (id)siriui_localizedScheduleStatusForLeague:()SiriUI sport:showTimeIfToday:
{
  v7 = a4;
  status = [self status];
  afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
  assistantUILocale = [afui_assistantUIFrameworkBundle assistantUILocale];

  if ([status isEqualToString:*MEMORY[0x277D48A08]])
  {
    timeRemaining = [self timeRemaining];
    periodDescription = [self periodDescription];
    if (([v7 isEqualToString:*MEMORY[0x277D48A90]] & 1) == 0 && objc_msgSend(timeRemaining, "length"))
    {
      v13 = MEMORY[0x277CCACA8];
      startTime2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
      v15 = [startTime2 siriUILocalizedStringForKey:{@"PERIOD_TIME_REMAINING_PAIR %@, %@"}];
      v16 = [v13 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@ error:%@", 0, periodDescription, timeRemaining];
LABEL_5:
      v17 = v16;

LABEL_10:
LABEL_27:

      periodDescription = v17;
      goto LABEL_28;
    }

    v24 = periodDescription;
    periodDescription = v24;
    goto LABEL_12;
  }

  if ([status isEqualToString:*MEMORY[0x277D48A18]])
  {
    timeRemaining = objc_alloc_init(MEMORY[0x277CCA968]);
    [timeRemaining setFormattingContext:2];
    timeTBD = [self timeTBD];
    bOOLValue = [timeTBD BOOLValue];

    startTime = [self startTime];
    sruif_isToday = [startTime sruif_isToday];

    if ((a5 & sruif_isToday) == 1 && (bOOLValue & 1) == 0)
    {
      v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
      periodDescription = [v22 siriUILocalizedStringForKey:@"SCHEDULE_DATE_FORMAT_TEMPLATE"];

      v23 = [MEMORY[0x277CCA968] dateFormatFromTemplate:periodDescription options:0 locale:assistantUILocale];
      [timeRemaining setDateFormat:v23];

      startTime2 = [self startTime];
      v17 = [timeRemaining stringFromDate:startTime2];
      goto LABEL_10;
    }

    if ((a5 & sruif_isToday & bOOLValue) != 1)
    {
      v26 = sruif_isToday | bOOLValue;
      v27 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"EEE MMM d y" options:0 locale:assistantUILocale];
      [timeRemaining setDateFormat:v27];

      startTime3 = [self startTime];
      periodDescription = [timeRemaining stringFromDate:startTime3];

      if (v26)
      {
LABEL_28:

        goto LABEL_29;
      }

      v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
      startTime2 = [v29 siriUILocalizedStringForKey:@"SCHEDULE_DATE_FORMAT_TEMPLATE"];

      v30 = [MEMORY[0x277CCA968] dateFormatFromTemplate:startTime2 options:0 locale:assistantUILocale];
      [timeRemaining setDateFormat:v30];

      startTime4 = [self startTime];
      v15 = [timeRemaining stringFromDate:startTime4];

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", periodDescription, v15];
      goto LABEL_5;
    }

    periodDescription = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v24 = [periodDescription siriUILocalizedStringForKey:@"TO_BE_DETERMINED"];
LABEL_12:
    v17 = v24;
    goto LABEL_27;
  }

  if ([status isEqualToString:*MEMORY[0x277D489F8]])
  {
    v25 = @"FINAL_SCHEDULE_FORMAT";
  }

  else if ([status isEqualToString:*MEMORY[0x277D489F0]])
  {
    v25 = @"CANCELED_SCHEDULE_FORMAT";
  }

  else if ([status isEqualToString:*MEMORY[0x277D48A10]])
  {
    v25 = @"POSTPONED_SCHEDULE_FORMAT";
  }

  else
  {
    if (![status isEqualToString:*MEMORY[0x277D48A00]])
    {
      goto LABEL_32;
    }

    v25 = @"DELAYED_SCHEDULE_FORMAT";
  }

  v32 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  timeRemaining = [v32 siriUILocalizedStringForKey:v25];

  if (timeRemaining)
  {
    periodDescription = objc_alloc_init(MEMORY[0x277CCA968]);
    [periodDescription setLocale:assistantUILocale];
    [periodDescription setDoesRelativeDateFormatting:1];
    [periodDescription setTimeStyle:0];
    [periodDescription setDateStyle:2];
    [periodDescription setFormattingContext:2];
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    startTime5 = [self startTime];
    v35 = [periodDescription stringFromDate:startTime5];
    v17 = [v33 initWithFormat:timeRemaining, v35];

    goto LABEL_27;
  }

LABEL_32:
  periodDescription = 0;
LABEL_29:

  return periodDescription;
}

- (id)siriui_venueLocation
{
  locationName = [self locationName];
  location = [self location];
  if ([location length] && objc_msgSend(locationName, "length"))
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = [v5 siriUILocalizedStringForKey:@"VENUE_LOCATION_FORMAT %@ %@"];
    v7 = [v4 initWithFormat:v6, locationName, location];

    locationName = v5;
LABEL_7:

    locationName = v7;
    goto LABEL_8;
  }

  if (![locationName length] && objc_msgSend(location, "length"))
  {
    v7 = location;
    goto LABEL_7;
  }

LABEL_8:

  return locationName;
}

- (id)siriui_channelsString
{
  tvChannels = [self tvChannels];
  if ([tvChannels count])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v3 = [v2 siriUILocalizedStringForKey:@"TV_SCHEDULE_LIST_JOINER"];
    v4 = [tvChannels componentsJoinedByString:v3];

    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = [v5 siriUILocalizedStringForKey:@"TV_SCHEDULE_FORMAT %@"];

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)siriui_homeIsFirst
{
  matchupOrder = [self matchupOrder];
  v2 = [matchupOrder isEqualToString:*MEMORY[0x277D489E8]];

  return v2;
}

- (id)siriui_firstEntity
{
  if ([self siriui_homeIsFirst])
  {
    [self homeEntity];
  }

  else
  {
    [self awayEntity];
  }
  v2 = ;

  return v2;
}

- (id)siriui_firstLineScores
{
  if ([self siriui_homeIsFirst])
  {
    [self homeLineScores];
  }

  else
  {
    [self awayLineScores];
  }
  v2 = ;

  return v2;
}

- (id)siriui_firstScore
{
  if ([self siriui_homeIsFirst])
  {
    [self homeScore];
  }

  else
  {
    [self awayScore];
  }
  v2 = ;

  return v2;
}

- (id)siriui_secondEntity
{
  if ([self siriui_homeIsFirst])
  {
    [self awayEntity];
  }

  else
  {
    [self homeEntity];
  }
  v2 = ;

  return v2;
}

- (id)siriui_secondLineScores
{
  if ([self siriui_homeIsFirst])
  {
    [self awayLineScores];
  }

  else
  {
    [self homeLineScores];
  }
  v2 = ;

  return v2;
}

- (id)siriui_secondScore
{
  if ([self siriui_homeIsFirst])
  {
    [self awayScore];
  }

  else
  {
    [self homeScore];
  }
  v2 = ;

  return v2;
}

- (id)siriui_teamVsTeam
{
  homeEntity = [self homeEntity];
  siriui_displayName = [homeEntity siriui_displayName];

  awayEntity = [self awayEntity];
  siriui_displayName2 = [awayEntity siriui_displayName];

  siriui_homeIsFirst = [self siriui_homeIsFirst];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v9 = v8;
  if (siriui_homeIsFirst)
  {
    v10 = [v8 siriUILocalizedStringForKey:@"MATCHUP_VS_TITLE_FORMAT %1$@ %2$@"];
    [v7 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%1$@ %2$@" error:0, siriui_displayName, siriui_displayName2];
  }

  else
  {
    v10 = [v8 siriUILocalizedStringForKey:@"MATCHUP_AT_TITLE_FORMAT %1$@ %2$@"];
    [v7 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%1$@ %2$@" error:0, siriui_displayName2, siriui_displayName];
  }
  v11 = ;

  return v11;
}

@end