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
  v2 = [a1 league];
  if ([v2 displayTeamLocationOverName])
  {
    [a1 location];
  }

  else
  {
    [a1 name];
  }
  v3 = ;

  return v3;
}

- (id)siriui_displayNameAndLocation
{
  v2 = [a1 location];
  v3 = [a1 league];
  v4 = [v3 displayTeamLocationOverName];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v8 = [v7 siriUILocalizedStringForKey:@"ROSTER_NAME_AND_LOCATION_FORMAT %@ %@"];
    v9 = [a1 name];
    v5 = [v6 initWithFormat:v8, v2, v9];
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
    v9[2](v9, a1);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [a1 athletes];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) siriui_enumerateEntitiesWithGroupHandler:v8 teamHandler:v9 athleteHandler:v10];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v6 = v5;
    v7 = @"W";
LABEL_5:
    v8 = [v5 siriUILocalizedStringForKey:v7];
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A30]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
    v7 = @"L";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A60]])
  {
    v6 = [a1 league];
    v10 = [v6 sport];
    if ([v10 isEqualToString:*MEMORY[0x277D48A98]])
    {
      v11 = [v6 identifier];
      v12 = [v11 isEqualToString:@"mls"];

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
    v6 = v5;
    v7 = @"OTL";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A58]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
    v7 = @"PTS";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A20]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
    v7 = @"GB";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A50]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
    v7 = @"GF";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A48]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
    v7 = @"GA";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A68]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
    v7 = @"PCT";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A28]])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v6 = v5;
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
    v5 = [a1 name];
LABEL_23:
    v6 = v5;
    goto LABEL_24;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A28]])
  {
    v5 = [a1 location];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A70]])
  {
    v5 = [a1 wins];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A30]])
  {
    v5 = [a1 losses];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A60]])
  {
    v5 = [a1 ties];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A40]])
  {
    v5 = [a1 overtimeLosses];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A58]])
  {
    v5 = [a1 points];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A20]])
  {
    v5 = [a1 gamesBehind];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A50]])
  {
    v5 = [a1 pointsFor];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A48]])
  {
    v5 = [a1 pointsAgainst];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D48A68]])
  {
    v5 = [a1 winPercentage];
    goto LABEL_23;
  }

  v6 = 0;
LABEL_24:

  return v6;
}

- (id)siriui_textForSnippetColumn:()SiriUI
{
  v4 = a3;
  if (!v4 || ([a1 _siriui_sportsValueForStandingsSnippetColumn:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [a1 statistics];
    v7 = [v6 firstObject];

    v8 = [v7 metadata];
    v9 = [v8 firstObject];

    v5 = [v9 value];
  }

  return v5;
}

- (id)siriui_localizedQualificationPositionFormatString
{
  v1 = [a1 qualificationPosition];
  if ([v1 isEqualToString:*MEMORY[0x277D48A88]])
  {
    v2 = @"QUALIFICATION_POSITION_FORMAT_PLAYOFFS";
LABEL_7:
    v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v4 = [v3 siriUILocalizedStringForKey:v2];

    goto LABEL_8;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D48A80]])
  {
    v2 = @"QUALIFICATION_POSITION_FORMAT_DIVISION";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D48A78]])
  {
    v2 = @"QUALIFICATION_POSITION_FORMAT_CONFERENCE";
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

@end