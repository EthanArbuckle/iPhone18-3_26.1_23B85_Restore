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
  v1 = [a1 status];
  if ([v1 isEqualToString:*MEMORY[0x277D48A18]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D48A10]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D48A00]];
  }

  return v2;
}

- (id)siriui_localizedScheduleStatusForLeague:()SiriUI sport:showTimeIfToday:
{
  v7 = a4;
  v8 = [a1 status];
  v9 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
  v10 = [v9 assistantUILocale];

  if ([v8 isEqualToString:*MEMORY[0x277D48A08]])
  {
    v11 = [a1 timeRemaining];
    v12 = [a1 periodDescription];
    if (([v7 isEqualToString:*MEMORY[0x277D48A90]] & 1) == 0 && objc_msgSend(v11, "length"))
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
      v15 = [v14 siriUILocalizedStringForKey:{@"PERIOD_TIME_REMAINING_PAIR %@, %@"}];
      v16 = [v13 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@ error:%@", 0, v12, v11];
LABEL_5:
      v17 = v16;

LABEL_10:
LABEL_27:

      v12 = v17;
      goto LABEL_28;
    }

    v24 = v12;
    v12 = v24;
    goto LABEL_12;
  }

  if ([v8 isEqualToString:*MEMORY[0x277D48A18]])
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v11 setFormattingContext:2];
    v18 = [a1 timeTBD];
    v19 = [v18 BOOLValue];

    v20 = [a1 startTime];
    v21 = [v20 sruif_isToday];

    if ((a5 & v21) == 1 && (v19 & 1) == 0)
    {
      v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
      v12 = [v22 siriUILocalizedStringForKey:@"SCHEDULE_DATE_FORMAT_TEMPLATE"];

      v23 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v12 options:0 locale:v10];
      [v11 setDateFormat:v23];

      v14 = [a1 startTime];
      v17 = [v11 stringFromDate:v14];
      goto LABEL_10;
    }

    if ((a5 & v21 & v19) != 1)
    {
      v26 = v21 | v19;
      v27 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"EEE MMM d y" options:0 locale:v10];
      [v11 setDateFormat:v27];

      v28 = [a1 startTime];
      v12 = [v11 stringFromDate:v28];

      if (v26)
      {
LABEL_28:

        goto LABEL_29;
      }

      v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
      v14 = [v29 siriUILocalizedStringForKey:@"SCHEDULE_DATE_FORMAT_TEMPLATE"];

      v30 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v14 options:0 locale:v10];
      [v11 setDateFormat:v30];

      v31 = [a1 startTime];
      v15 = [v11 stringFromDate:v31];

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v12, v15];
      goto LABEL_5;
    }

    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v24 = [v12 siriUILocalizedStringForKey:@"TO_BE_DETERMINED"];
LABEL_12:
    v17 = v24;
    goto LABEL_27;
  }

  if ([v8 isEqualToString:*MEMORY[0x277D489F8]])
  {
    v25 = @"FINAL_SCHEDULE_FORMAT";
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D489F0]])
  {
    v25 = @"CANCELED_SCHEDULE_FORMAT";
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D48A10]])
  {
    v25 = @"POSTPONED_SCHEDULE_FORMAT";
  }

  else
  {
    if (![v8 isEqualToString:*MEMORY[0x277D48A00]])
    {
      goto LABEL_32;
    }

    v25 = @"DELAYED_SCHEDULE_FORMAT";
  }

  v32 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v11 = [v32 siriUILocalizedStringForKey:v25];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v12 setLocale:v10];
    [v12 setDoesRelativeDateFormatting:1];
    [v12 setTimeStyle:0];
    [v12 setDateStyle:2];
    [v12 setFormattingContext:2];
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = [a1 startTime];
    v35 = [v12 stringFromDate:v34];
    v17 = [v33 initWithFormat:v11, v35];

    goto LABEL_27;
  }

LABEL_32:
  v12 = 0;
LABEL_29:

  return v12;
}

- (id)siriui_venueLocation
{
  v2 = [a1 locationName];
  v3 = [a1 location];
  if ([v3 length] && objc_msgSend(v2, "length"))
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = [v5 siriUILocalizedStringForKey:@"VENUE_LOCATION_FORMAT %@ %@"];
    v7 = [v4 initWithFormat:v6, v2, v3];

    v2 = v5;
LABEL_7:

    v2 = v7;
    goto LABEL_8;
  }

  if (![v2 length] && objc_msgSend(v3, "length"))
  {
    v7 = v3;
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

- (id)siriui_channelsString
{
  v1 = [a1 tvChannels];
  if ([v1 count])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v3 = [v2 siriUILocalizedStringForKey:@"TV_SCHEDULE_LIST_JOINER"];
    v4 = [v1 componentsJoinedByString:v3];

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
  v1 = [a1 matchupOrder];
  v2 = [v1 isEqualToString:*MEMORY[0x277D489E8]];

  return v2;
}

- (id)siriui_firstEntity
{
  if ([a1 siriui_homeIsFirst])
  {
    [a1 homeEntity];
  }

  else
  {
    [a1 awayEntity];
  }
  v2 = ;

  return v2;
}

- (id)siriui_firstLineScores
{
  if ([a1 siriui_homeIsFirst])
  {
    [a1 homeLineScores];
  }

  else
  {
    [a1 awayLineScores];
  }
  v2 = ;

  return v2;
}

- (id)siriui_firstScore
{
  if ([a1 siriui_homeIsFirst])
  {
    [a1 homeScore];
  }

  else
  {
    [a1 awayScore];
  }
  v2 = ;

  return v2;
}

- (id)siriui_secondEntity
{
  if ([a1 siriui_homeIsFirst])
  {
    [a1 awayEntity];
  }

  else
  {
    [a1 homeEntity];
  }
  v2 = ;

  return v2;
}

- (id)siriui_secondLineScores
{
  if ([a1 siriui_homeIsFirst])
  {
    [a1 awayLineScores];
  }

  else
  {
    [a1 homeLineScores];
  }
  v2 = ;

  return v2;
}

- (id)siriui_secondScore
{
  if ([a1 siriui_homeIsFirst])
  {
    [a1 awayScore];
  }

  else
  {
    [a1 homeScore];
  }
  v2 = ;

  return v2;
}

- (id)siriui_teamVsTeam
{
  v2 = [a1 homeEntity];
  v3 = [v2 siriui_displayName];

  v4 = [a1 awayEntity];
  v5 = [v4 siriui_displayName];

  v6 = [a1 siriui_homeIsFirst];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 siriUILocalizedStringForKey:@"MATCHUP_VS_TITLE_FORMAT %1$@ %2$@"];
    [v7 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%1$@ %2$@" error:0, v3, v5];
  }

  else
  {
    v10 = [v8 siriUILocalizedStringForKey:@"MATCHUP_AT_TITLE_FORMAT %1$@ %2$@"];
    [v7 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%1$@ %2$@" error:0, v5, v3];
  }
  v11 = ;

  return v11;
}

@end