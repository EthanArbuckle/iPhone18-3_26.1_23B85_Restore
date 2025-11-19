@interface CACOnboardingCommandGroup
+ (id)allCommandGroups;
+ (id)groupWithIdentifier:(id)a3;
+ (id)groupsFromIdentifiers:(id)a3;
- (CACOnboardingCommandGroup)initWithGroupTitle:(id)a3 commands:(id)a4;
@end

@implementation CACOnboardingCommandGroup

- (CACOnboardingCommandGroup)initWithGroupTitle:(id)a3 commands:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CACOnboardingCommandGroup;
  v9 = [(CACOnboardingCommandGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_groupTitle, a3);
    objc_storeStrong(&v10->_commands, a4);
  }

  return v10;
}

+ (id)groupWithIdentifier:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 builtInCommandsTable];
  v6 = [v5 objectForKey:@"OverviewSections"];

  v7 = +[CACPreferences sharedPreferences];
  v8 = [v7 builtInCommandsTable];
  v9 = [v8 objectForKey:@"OrderedOverviewSectionIdentifiers"];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"OverviewSectionTitle.%@", v15];
        v17 = [CACLocaleUtilities localizedUIStringForKey:v16];
        if ([v15 isEqualToString:v3])
        {
          v33 = v17;
          v34 = v16;
          v35 = v10;
          v19 = [MEMORY[0x277CBEB18] array];
          v36 = v6;
          v20 = [v6 objectForKey:v15];
          v21 = [v20 objectForKey:@"CommandIdentifiers"];

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = v21;
          v22 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v39;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(obj);
                }

                v26 = *(*(&v38 + 1) + 8 * j);
                v27 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                v28 = [v27 primaryStringForCommandIdentifier:v26];

                v29 = [CACLocaleUtilities localizedUIStringForKey:@"Onboarding.Command.Format.Title"];
                v30 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v28];
                v31 = [CACOnboardingFeature featureWithTitleText:v30 helperText:0];
                [v19 addObject:v31];
              }

              v23 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v23);
          }

          v18 = [[CACOnboardingCommandGroup alloc] initWithGroupTitle:v33 commands:v19];
          v6 = v36;
          v10 = v35;
          goto LABEL_18;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_18:

  return v18;
}

+ (id)groupsFromIdentifiers:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CACOnboardingCommandGroup groupWithIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)allCommandGroups
{
  v2 = +[CACPreferences sharedPreferences];
  v3 = [v2 builtInCommandsTable];
  v4 = [v3 objectForKey:@"OrderedOverviewSectionIdentifiers"];

  v5 = [CACOnboardingCommandGroup groupsFromIdentifiers:v4];

  return v5;
}

@end