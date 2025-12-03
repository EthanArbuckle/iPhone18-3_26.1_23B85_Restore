@interface SASportsTeam(SiriUI)
- (id)_siriui_sportsValueForStandingsSnippetColumn:()SiriUI;
- (id)siriui_displayName;
- (id)siriui_displayNameAndLocation;
- (id)siriui_localizedQualificationPositionFormatString;
- (id)siriui_localizedSnippetColumnHeader:()SiriUI;
- (id)siriui_textForSnippetColumn:()SiriUI;
- (void)siriui_enumerateEntitiesWithGroupHandler:()SiriUI teamHandler:athleteHandler:;
@end

@implementation SASportsTeam(SiriUI)

- (id)siriui_displayName
{
  league = [self league];
  if ([league displayTeamLocationOverName])
  {
    [self location];
  }

  else
  {
    [self name];
  }
  v3 = ;

  return v3;
}

- (id)siriui_displayNameAndLocation
{
  location = [self location];
  league = [self league];
  displayTeamLocationOverName = [league displayTeamLocationOverName];

  if (displayTeamLocationOverName)
  {
    v5 = location;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v8 = [v7 siriUILocalizedStringForKey:@"ROSTER_NAME_AND_LOCATION_FORMAT %@ %@"];
    name = [self name];
    v5 = [v6 initWithFormat:v8, location, name];
  }

  return v5;
}

- (void)siriui_enumerateEntitiesWithGroupHandler:()SiriUI teamHandler:athleteHandler:
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v9[2](v9, self);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  athletes = [self athletes];
  v12 = [athletes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(athletes);
        }

        [*(*(&v16 + 1) + 8 * v15++) siriui_enumerateEntitiesWithGroupHandler:v8 teamHandler:v9 athleteHandler:v10];
      }

      while (v13 != v15);
      v13 = [athletes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (id)siriui_localizedSnippetColumnHeader:()SiriUI
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D48A70]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"W";
LABEL_5:
    v8 = [v5 siriUILocalizedStringForKey:v7];
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A30]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"L";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A60]])
  {
    league = [self league];
    sport = [league sport];
    if ([sport isEqualToString:*MEMORY[0x277D48A98]])
    {
      identifier = [league identifier];
      v12 = [identifier isEqualToString:@"mls"];

      if (!v12)
      {
        v13 = @"D";
LABEL_18:
        v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
        v8 = [v14 siriUILocalizedStringForKey:v13];

        goto LABEL_6;
      }
    }

    else
    {
    }

    v13 = @"T";
    goto LABEL_18;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A40]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"OTL";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A58]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"PTS";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A20]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"GB";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A50]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"GF";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A48]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"GA";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A68]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"PCT";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A28]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    league = v5;
    v7 = @"LOC";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_siriui_sportsValueForStandingsSnippetColumn:()SiriUI
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D48A38]])
  {
    name = [self name];
LABEL_23:
    v6 = name;
    goto LABEL_24;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A28]])
  {
    name = [self location];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A70]])
  {
    name = [self wins];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A30]])
  {
    name = [self losses];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A60]])
  {
    name = [self ties];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A40]])
  {
    name = [self overtimeLosses];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A58]])
  {
    name = [self points];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A20]])
  {
    name = [self gamesBehind];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A50]])
  {
    name = [self pointsFor];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A48]])
  {
    name = [self pointsAgainst];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A68]])
  {
    name = [self winPercentage];
    goto LABEL_23;
  }

  v6 = 0;
LABEL_24:

  return v6;
}

- (id)siriui_textForSnippetColumn:()SiriUI
{
  v4 = a3;
  if (!v4 || ([self _siriui_sportsValueForStandingsSnippetColumn:v4], (value = objc_claimAutoreleasedReturnValue()) == 0))
  {
    statistics = [self statistics];
    firstObject = [statistics firstObject];

    metadata = [firstObject metadata];
    firstObject2 = [metadata firstObject];

    value = [firstObject2 value];
  }

  return value;
}

- (id)siriui_localizedQualificationPositionFormatString
{
  qualificationPosition = [self qualificationPosition];
  if ([qualificationPosition isEqualToString:*MEMORY[0x277D48A88]])
  {
    v2 = @"QUALIFICATION_POSITION_FORMAT_PLAYOFFS";
LABEL_7:
    v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v4 = [v3 siriUILocalizedStringForKey:v2];

    goto LABEL_8;
  }

  if ([qualificationPosition isEqualToString:*MEMORY[0x277D48A80]])
  {
    v2 = @"QUALIFICATION_POSITION_FORMAT_DIVISION";
    goto LABEL_7;
  }

  if ([qualificationPosition isEqualToString:*MEMORY[0x277D48A78]])
  {
    v2 = @"QUALIFICATION_POSITION_FORMAT_CONFERENCE";
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

@end