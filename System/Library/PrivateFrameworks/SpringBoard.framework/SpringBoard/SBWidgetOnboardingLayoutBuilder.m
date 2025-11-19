@interface SBWidgetOnboardingLayoutBuilder
- (BOOL)isCalendarWidget:(id)a3;
- (BOOL)isCalendarWidgetIcon:(id)a3;
- (BOOL)isClockWidget:(id)a3;
- (BOOL)isFirstSuggestionActiveWidgetIcon:(id)a3;
- (BOOL)isSecondSuggestionActiveWidgetIcon:(id)a3;
- (SBWidgetOnboardingLayoutBuilder)initWithPinnedWidgets:(id)a3 suggestionWidgets:(id)a4;
- (id)deduplicateInsidePinnedWidgets;
- (id)defaultCalendarWidgetIcon:(id)a3;
- (id)defaultFirstSuggestionWidgetIcon:(id)a3;
- (id)defaultSecondSuggestionWidgetIcon:(id)a3;
- (id)defaultSmallClockWidgetIcon;
- (id)defaultSmallNotesWidgetIcon;
- (id)migratedDefaultWidgets:(BOOL)a3;
- (id)migratedFourWidgets:(id)a3;
- (id)migratedOneLargeWidget:(id)a3;
- (id)migratedOneMediumWidget:(id)a3;
- (id)migratedOneSmallWidget:(id)a3;
- (id)migratedSmallAndMediumWidget:(id)a3;
- (id)migratedThreeWidgets:(id)a3;
- (id)migratedTwoMediumWidgets:(id)a3;
- (id)migratedTwoSmallWidgets:(id)a3;
@end

@implementation SBWidgetOnboardingLayoutBuilder

- (SBWidgetOnboardingLayoutBuilder)initWithPinnedWidgets:(id)a3 suggestionWidgets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBWidgetOnboardingLayoutBuilder;
  v8 = [(SBWidgetOnboardingLayoutBuilder *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
    pinnedWidgets = v8->_pinnedWidgets;
    v8->_pinnedWidgets = v9;

    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
    suggestionWidgets = v8->_suggestionWidgets;
    v8->_suggestionWidgets = v11;
  }

  return v8;
}

- (id)defaultSmallClockWidgetIcon
{
  v2 = [objc_alloc(MEMORY[0x277D66450]) initWithWidgetExtensionIdentifiers:&unk_28336EC88 widgetKinds:&unk_28336ECA0 widgetContainerBundleIdentifiers:&unk_28336ECB8];
  [v2 setGridSizeClass:*MEMORY[0x277D66548]];

  return v2;
}

- (id)defaultSmallNotesWidgetIcon
{
  v2 = [objc_alloc(MEMORY[0x277D66450]) initWithWidgetExtensionIdentifiers:&unk_28336ECD0 widgetKinds:&unk_28336ECE8 widgetContainerBundleIdentifiers:&unk_28336ED00];
  [v2 setGridSizeClass:*MEMORY[0x277D66548]];

  return v2;
}

- (id)defaultCalendarWidgetIcon:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277D66518])
  {
    v3 = @"com.apple.CalendarWidget.CalendarListWidget";
  }

  else
  {
    v3 = @"com.apple.CalendarWidget.CalendarUpNextWidget";
  }

  if (*MEMORY[0x277D66510])
  {
    v4 = @"com.apple.CalendarWidget.CalendarUpNextWidget";
  }

  else
  {
    v4 = v3;
  }

  v5 = MEMORY[0x277D66450];
  v6 = a3;
  v7 = [v5 alloc];
  v11[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v7 initWithWidgetExtensionIdentifiers:&unk_28336ED18 widgetKinds:v8 widgetContainerBundleIdentifiers:&unk_28336ED30];

  [v9 setGridSizeClass:v6];

  return v9;
}

- (id)defaultFirstSuggestionWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  v6 = [v5 firstObject];

  [v6 setGridSizeClass:v4];

  return v6;
}

- (id)defaultSecondSuggestionWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  v6 = [v5 objectAtIndex:1];

  [v6 setGridSizeClass:v4];

  return v6;
}

- (BOOL)isClockWidget:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [v4 extensionBundleIdentifier];

  v7 = [v5 activeWidget];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [v6 isEqual:v8];

  return v9;
}

- (BOOL)isCalendarWidget:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v6 = [v4 extensionBundleIdentifier];

  v7 = [v5 activeWidget];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [v6 isEqual:v8];

  return v9;
}

- (BOOL)isCalendarWidgetIcon:(id)a3
{
  v4 = [a3 activeWidget];
  LOBYTE(self) = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidget:v4];

  return self;
}

- (BOOL)isFirstSuggestionActiveWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  v6 = [v5 firstObject];

  v7 = [v6 activeWidget];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [v4 activeWidget];

  v10 = [v9 extensionBundleIdentifier];
  v11 = [v8 isEqual:v10];

  return v11;
}

- (BOOL)isSecondSuggestionActiveWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  v6 = [v5 objectAtIndex:1];

  v7 = [v6 activeWidget];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [v4 activeWidget];

  v10 = [v9 extensionBundleIdentifier];
  v11 = [v8 isEqual:v10];

  return v11;
}

- (id)deduplicateInsidePinnedWidgets
{
  v36 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(SBWidgetOnboardingLayoutBuilder *)self pinnedWidgets];
  v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v23)
  {
    v21 = *v31;
    do
    {
      v3 = 0;
      do
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v3;
        v4 = *(*(&v30 + 1) + 8 * v3);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v25 = v22;
        v5 = [v25 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v27;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v27 != v7)
              {
                objc_enumerationMutation(v25);
              }

              v9 = *(*(&v26 + 1) + 8 * i);
              v10 = [v4 activeWidget];
              v11 = [v10 extensionBundleIdentifier];
              v12 = [v9 activeWidget];
              v13 = [v12 extensionBundleIdentifier];
              v14 = [v11 isEqual:v13];

              if (v14)
              {
                v15 = [v4 widgets];
                v16 = [v15 count];
                v17 = [v9 widgets];
                v18 = [v17 count];

                if (v16 > v18)
                {
                  [v25 replaceObjectAtIndex:objc_msgSend(v25 withObject:{"indexOfObject:", v9), v4}];
                }

                goto LABEL_18;
              }
            }

            v6 = [v25 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

        [v25 addObject:v4];
LABEL_18:
        v3 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  return v22;
}

- (id)migratedOneSmallWidget:(id)a3
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v8 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v4]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v4]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v4])
  {
    v16[0] = v5;
    v9 = v16;
    v10 = v6;
    v11 = v7;
    v12 = v8;
  }

  else
  {
    [v6 setGridSizeClass:*MEMORY[0x277D66520]];
    v15 = v5;
    v9 = &v15;
    v10 = v4;
    v11 = v6;
    v12 = v7;
  }

  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v13;
}

- (id)migratedOneMediumWidget:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v8 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v4])
  {
    [v7 setGridSizeClass:*MEMORY[0x277D66548]];
    v17[0] = v5;
    v9 = v17;
    v10 = v7;
    v11 = v4;
LABEL_6:
    v12 = v8;
    goto LABEL_7;
  }

  if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v4]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v4])
  {
    v16 = v5;
    v9 = &v16;
    v10 = v6;
    v11 = v7;
    goto LABEL_6;
  }

  v15 = v5;
  v9 = &v15;
  v10 = v6;
  v11 = v4;
  v12 = v7;
LABEL_7:
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v13;
}

- (id)migratedOneLargeWidget:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v8 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v4])
  {
    [v7 setGridSizeClass:*MEMORY[0x277D66548]];
    v17[0] = v5;
    v9 = v17;
    v10 = v7;
  }

  else
  {
    if (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v4])
    {
      if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v4])
      {
        v15 = v5;
        v9 = &v15;
      }

      else
      {
        v14 = v5;
        v9 = &v14;
      }

      v10 = v6;
      v11 = v7;
      goto LABEL_10;
    }

    v16 = v5;
    v9 = &v16;
    v10 = v6;
  }

  v11 = v8;
LABEL_10:
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v4;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v12;
}

- (id)migratedTwoSmallWidgets:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v8 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  v9 = [v4 firstObject];
  v10 = [v4 objectAtIndex:1];

  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v9])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      v59 = v5;
      v60 = v6;
      v61 = v7;
      v62 = v8;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v59;
    }

    else
    {
      [v6 setGridSizeClass:*MEMORY[0x277D66520]];
      v55 = v5;
      v56 = v10;
      v57 = v6;
      v58 = v7;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v55;
    }
  }

  else
  {
    v13 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v10];
    v14 = [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9];
    if (v13)
    {
      if (v14 || [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9])
      {
        v51 = v5;
        v52 = v6;
        v53 = v7;
        v54 = v8;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v51;
      }

      else
      {
        [v6 setGridSizeClass:*MEMORY[0x277D66520]];
        v47 = v5;
        v48 = v9;
        v49 = v6;
        v50 = v7;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v47;
      }
    }

    else if (v14 && ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      [v6 setGridSizeClass:*MEMORY[0x277D66520]];
      v43 = v5;
      v44 = v10;
      v45 = v6;
      v46 = v7;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v43;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9])
    {
      [v6 setGridSizeClass:*MEMORY[0x277D66520]];
      v39 = v5;
      v40 = v9;
      v41 = v6;
      v42 = v7;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v39;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9]&& ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10])
    {
      [v6 setGridSizeClass:*MEMORY[0x277D66520]];
      v35 = v5;
      v36 = v10;
      v37 = v6;
      v38 = v8;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v35;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9])
    {
      [v6 setGridSizeClass:*MEMORY[0x277D66520]];
      v31 = v5;
      v32 = v9;
      v33 = v6;
      v34 = v8;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v31;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      v27 = v5;
      v28 = v6;
      v29 = v7;
      v30 = v8;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v27;
    }

    else
    {
      if (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9])
      {
        v18 = v5;
        v19 = v6;
        v20 = v9;
        v21 = v10;
        v22 = v7;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v18;
        v15 = 5;
        goto LABEL_31;
      }

      v23 = v5;
      v24 = v6;
      v25 = v8;
      v26 = v7;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v23;
    }
  }

  v15 = 4;
LABEL_31:
  v16 = [v11 arrayWithObjects:v12 count:{v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63}];

  return v16;
}

- (id)migratedTwoMediumWidgets:(id)a3
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v8 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  v9 = [v4 firstObject];
  v10 = [v4 objectAtIndex:1];

  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v9])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10])
    {
      [v8 setGridSizeClass:*MEMORY[0x277D66548]];
      [v6 setGridSizeClass:*MEMORY[0x277D66520]];
      v33[0] = v5;
      v11 = v33;
      v12 = v8;
LABEL_4:
      v13 = v9;
LABEL_5:
      v14 = v7;
      goto LABEL_40;
    }

    v17 = [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10];
    [v7 setGridSizeClass:*MEMORY[0x277D66548]];
    [v6 setGridSizeClass:*MEMORY[0x277D66520]];
    if (v17)
    {
      v32 = v5;
      v11 = &v32;
      v12 = v7;
LABEL_11:
      v13 = v9;
LABEL_12:
      v14 = v8;
      goto LABEL_40;
    }

    v31 = v5;
    v11 = &v31;
    goto LABEL_30;
  }

  v15 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v10];
  v16 = [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9];
  if (!v15)
  {
    if (v16 && ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      v27 = v5;
      v11 = &v27;
      v12 = v6;
      goto LABEL_28;
    }

    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9])
    {
      v26 = v5;
      v11 = &v26;
      v12 = v6;
      goto LABEL_4;
    }

    if (![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10])
    {
      if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9])
      {
        v24 = v5;
        v11 = &v24;
        v12 = v6;
        goto LABEL_11;
      }

      if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
      {
        v23 = v5;
        v11 = &v23;
        v12 = v6;
        v13 = v7;
        goto LABEL_12;
      }

      if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9])
      {
        v22 = v5;
        v11 = &v22;
        v12 = v6;
        v13 = v8;
        goto LABEL_5;
      }

      v21 = v5;
      v11 = &v21;
      v12 = v6;
      goto LABEL_31;
    }

    v25 = v5;
    v11 = &v25;
    v12 = v6;
LABEL_38:
    v13 = v8;
    goto LABEL_39;
  }

  if (!v16)
  {
    v18 = [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9];
    [v7 setGridSizeClass:*MEMORY[0x277D66548]];
    [v6 setGridSizeClass:*MEMORY[0x277D66520]];
    if (!v18)
    {
      v28 = v5;
      v11 = &v28;
LABEL_30:
      v12 = v7;
LABEL_31:
      v13 = v9;
      goto LABEL_39;
    }

    v29 = v5;
    v11 = &v29;
    v12 = v7;
    goto LABEL_38;
  }

  [v8 setGridSizeClass:*MEMORY[0x277D66548]];
  [v6 setGridSizeClass:*MEMORY[0x277D66520]];
  v30 = v5;
  v11 = &v30;
  v12 = v8;
LABEL_28:
  v13 = v7;
LABEL_39:
  v14 = v10;
LABEL_40:
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v19;
}

- (id)migratedSmallAndMediumWidget:(id)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  v8 = [v4 firstObject];
  v9 = [v8 gridSizeClass];
  v10 = v9;
  v11 = *MEMORY[0x277D66548];
  if (v9 == *MEMORY[0x277D66548])
  {
  }

  else
  {
    v12 = [v4 firstObject];
    v13 = [v12 gridSizeClass];
    v14 = [v13 isEqualToString:v11];

    if (!v14)
    {
      v15 = [v4 objectAtIndex:1];
      v16 = [v4 firstObject];
      goto LABEL_6;
    }
  }

  v15 = [v4 firstObject];
  v16 = [v4 objectAtIndex:1];
LABEL_6:
  v17 = v16;
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v15])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v17])
    {
      v27[0] = v22;
      v18 = v27;
LABEL_12:
      v19 = v7;
      goto LABEL_17;
    }

    v26 = v22;
    v18 = &v26;
  }

  else
  {
    if (![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v17])
    {
      [v5 setGridSizeClass:*MEMORY[0x277D66520]];
      v23 = v22;
      v18 = &v23;
      v19 = v5;
      goto LABEL_17;
    }

    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v15])
    {
      v25 = v22;
      v18 = &v25;
      goto LABEL_12;
    }

    v24 = v22;
    v18 = &v24;
  }

  v19 = v6;
LABEL_17:
  v18[1] = v15;
  v18[2] = v17;
  v18[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v20;
}

- (id)migratedThreeWidgets:(id)a3
{
  v76[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v52 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v51 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v50 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  v8 = [v6 objectAtIndex:0];
  v9 = [v8 gridSizeClass];
  v10 = *MEMORY[0x277D66520];
  v49 = *MEMORY[0x277D66520];
  v53 = v7;
  if (v9 != *MEMORY[0x277D66520])
  {
    v4 = [v6 objectAtIndex:0];
    v3 = [v4 gridSizeClass];
    if (![v3 isEqualToString:v10])
    {

LABEL_11:
      v18 = [v6 firstObject];
      v19 = [v6 objectAtIndex:1];
      v20 = [v6 objectAtIndex:2];
      goto LABEL_12;
    }
  }

  v11 = [v6 objectAtIndex:{2, self}];
  v12 = [v11 gridSizeClass];
  v13 = *MEMORY[0x277D66548];
  v14 = v6;
  if (v12 == *MEMORY[0x277D66548])
  {
    v17 = 1;
  }

  else
  {
    v15 = [v6 objectAtIndex:2];
    v16 = [v15 gridSizeClass];
    v17 = [v16 isEqualToString:v13];
  }

  v10 = v49;
  if (v9 == v49)
  {

    v6 = v14;
    self = v48;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v6 = v14;
    self = v48;
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v18 = [v6 objectAtIndex:1];
  v19 = [v6 objectAtIndex:2];
  v20 = [v6 firstObject];
LABEL_12:
  v21 = v20;
  v22 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v18]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v19]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v21];
  v23 = [v21 gridSizeClass];
  v24 = v23;
  if (v23 == v10)
  {

LABEL_23:
    v33 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "Builder logic small, small, medium widgets", buf, 2u);
    }

    if (!v22)
    {
      v29 = v52;
      v76[0] = v53;
      v76[1] = v52;
      v76[2] = v18;
      v76[3] = v19;
      v76[4] = v21;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:5];
      v31 = v50;
      v30 = v51;
      goto LABEL_93;
    }

    if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v18])
    {
      v31 = v50;
      v30 = v51;
      if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v19])
      {
        v34 = *MEMORY[0x277D66548];
        [v51 setGridSizeClass:*MEMORY[0x277D66548]];
        [v50 setGridSizeClass:v34];
        v75[0] = v53;
        v75[1] = v18;
        v75[2] = v51;
        v75[3] = v50;
        v75[4] = v21;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:5];
        v29 = v52;
        goto LABEL_93;
      }

      v29 = v52;
      if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v19])
      {
        v42 = *MEMORY[0x277D66548];
        [v51 setGridSizeClass:*MEMORY[0x277D66548]];
        [v50 setGridSizeClass:v42];
        v74[0] = v53;
        v74[1] = v18;
        v74[2] = v50;
        v74[3] = v51;
        v74[4] = v21;
        v36 = MEMORY[0x277CBEA60];
        v37 = v74;
LABEL_87:
        v44 = 5;
        goto LABEL_88;
      }

      [v52 setGridSizeClass:v49];
      v73[0] = v53;
      v73[1] = v19;
      v73[2] = v52;
      v73[3] = v21;
      v36 = MEMORY[0x277CBEA60];
      v37 = v73;
    }

    else
    {
      v31 = v50;
      v30 = v51;
      if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v19])
      {
        v29 = v52;
        if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v18])
        {
          v72[0] = v53;
          v72[1] = v19;
          v72[2] = v51;
          v72[3] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v72;
        }

        else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v18])
        {
          v71[0] = v53;
          v71[1] = v19;
          v71[2] = v50;
          v71[3] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v71;
        }

        else
        {
          [v52 setGridSizeClass:v49];
          v70[0] = v53;
          v70[1] = v18;
          v70[2] = v52;
          v70[3] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v70;
        }
      }

      else
      {
        v29 = v52;
        if (![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v21])
        {
          v35 = 0;
          goto LABEL_93;
        }

        if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v18]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v19])
        {
          v45 = *MEMORY[0x277D66548];
          [v51 setGridSizeClass:*MEMORY[0x277D66548]];
          [v50 setGridSizeClass:v45];
          v69[0] = v53;
          v69[1] = v51;
          v69[2] = v21;
          v69[3] = v19;
          v69[4] = v50;
          v36 = MEMORY[0x277CBEA60];
          v37 = v69;
          goto LABEL_87;
        }

        if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v19]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v18])
        {
          v46 = *MEMORY[0x277D66548];
          [v51 setGridSizeClass:*MEMORY[0x277D66548]];
          [v50 setGridSizeClass:v46];
          v68[0] = v53;
          v68[1] = v18;
          v68[2] = v21;
          v68[3] = v51;
          v68[4] = v50;
          v36 = MEMORY[0x277CBEA60];
          v37 = v68;
          goto LABEL_87;
        }

        if ((![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v18]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v19]) && (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v19]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v18]))
        {
          [v51 setGridSizeClass:*MEMORY[0x277D66548]];
          v66[0] = v53;
          v66[1] = v51;
          v66[2] = v18;
          v66[3] = v19;
          v66[4] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v66;
          goto LABEL_87;
        }

        [v51 setGridSizeClass:*MEMORY[0x277D66548]];
        v67[0] = v53;
        v67[1] = v51;
        v67[2] = v21;
        v67[3] = v50;
        v36 = MEMORY[0x277CBEA60];
        v37 = v67;
      }
    }

    v44 = 4;
LABEL_88:
    v35 = [v36 arrayWithObjects:v37 count:v44];
    goto LABEL_93;
  }

  v25 = [v21 gridSizeClass];
  v26 = [v25 isEqualToString:v10];

  if (v26)
  {
    goto LABEL_23;
  }

  v27 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Builder logic small, small, small widgets", buf, 2u);
  }

  v28 = v6;

  v30 = v51;
  v29 = v52;
  v31 = v50;
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v19])
  {
    v32 = v18;
    v18 = v19;
  }

  else
  {
    v38 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v21];
    if (v38)
    {
      v39 = v18;
    }

    else
    {
      v39 = v21;
    }

    if (v38)
    {
      v18 = v21;
    }

    v21 = v39;
    v32 = v19;
  }

  if (![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v18])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v18])
    {
      v61[0] = v53;
      v61[1] = v52;
      v61[2] = v32;
      v61[3] = v21;
      v61[4] = v51;
      v40 = MEMORY[0x277CBEA60];
      v41 = v61;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v18])
    {
      v60[0] = v53;
      v60[1] = v52;
      v60[2] = v32;
      v60[3] = v21;
      v60[4] = v50;
      v40 = MEMORY[0x277CBEA60];
      v41 = v60;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32])
    {
      v59[0] = v53;
      v59[1] = v52;
      v59[2] = v18;
      v59[3] = v21;
      v59[4] = v51;
      v40 = MEMORY[0x277CBEA60];
      v41 = v59;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32])
    {
      v58[0] = v53;
      v58[1] = v52;
      v58[2] = v18;
      v58[3] = v21;
      v58[4] = v50;
      v40 = MEMORY[0x277CBEA60];
      v41 = v58;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21])
    {
      v57[0] = v53;
      v57[1] = v52;
      v57[2] = v18;
      v57[3] = v32;
      v57[4] = v51;
      v40 = MEMORY[0x277CBEA60];
      v41 = v57;
    }

    else
    {
      if (![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21])
      {
        [v51 setGridSizeClass:*MEMORY[0x277D66548]];
        v55[0] = v53;
        v55[1] = v52;
        v55[2] = v18;
        v55[3] = v32;
        v55[4] = v21;
        v55[5] = v51;
        v40 = MEMORY[0x277CBEA60];
        v41 = v55;
        v43 = 6;
        goto LABEL_92;
      }

      v56[0] = v53;
      v56[1] = v52;
      v56[2] = v18;
      v56[3] = v32;
      v56[4] = v50;
      v40 = MEMORY[0x277CBEA60];
      v41 = v56;
    }

    goto LABEL_91;
  }

  if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32])
  {
    [v50 setGridSizeClass:*MEMORY[0x277D66548]];
    v65[0] = v53;
    v65[1] = v18;
    v65[2] = v32;
    v65[3] = v21;
    v65[4] = v50;
    v40 = MEMORY[0x277CBEA60];
    v41 = v65;
    goto LABEL_91;
  }

  if (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21]|| ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32])
  {
    [v51 setGridSizeClass:*MEMORY[0x277D66548]];
    v64[0] = v53;
    v64[1] = v18;
    v64[2] = v32;
    v64[3] = v21;
    v64[4] = v51;
    v40 = MEMORY[0x277CBEA60];
    v41 = v64;
LABEL_91:
    v43 = 5;
    goto LABEL_92;
  }

  if ((![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21]) && (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32]))
  {
    v62[0] = v53;
    v62[1] = v18;
    v62[2] = v32;
    v62[3] = v21;
    v62[4] = v51;
    v40 = MEMORY[0x277CBEA60];
    v41 = v62;
    goto LABEL_91;
  }

  v63[0] = v53;
  v63[1] = v18;
  v63[2] = v51;
  v63[3] = v50;
  v40 = MEMORY[0x277CBEA60];
  v41 = v63;
  v43 = 4;
LABEL_92:
  v35 = [v40 arrayWithObjects:v41 count:v43];
  v19 = v32;
  v6 = v28;
LABEL_93:

  return v35;
}

- (id)migratedFourWidgets:(id)a3
{
  v27[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  v6 = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  v7 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  v24 = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  v8 = [v4 firstObject];
  v9 = [v4 objectAtIndex:1];
  v10 = [v4 objectAtIndex:2];
  v11 = [v4 objectAtIndex:3];

  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v8]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v10])
  {
    v12 = 0;
  }

  else
  {
    v12 = ![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v11];
  }

  v13 = [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v8]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v11];
  v14 = [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v8]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v11];
  if (((v12 | v13) & 1) == 0)
  {
    [v7 setGridSizeClass:*MEMORY[0x277D66548]];
    v15 = v27;
    v16 = v8;
    v27[0] = v5;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v7;
    goto LABEL_17;
  }

  if ((v12 | v14))
  {
    v15 = &v25;
    v16 = v6;
    v25 = v5;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
LABEL_17:
    v21 = v24;
    goto LABEL_19;
  }

  v21 = v24;
  [v24 setGridSizeClass:*MEMORY[0x277D66548]];
  v15 = &v26;
  v16 = v8;
  v26 = v5;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v24;
LABEL_19:
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v18;
  v15[4] = v19;
  v15[5] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v22;
}

- (id)migratedDefaultWidgets:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v72[5] = *MEMORY[0x277D85DE8];
  v5 = self->_pinnedWidgets;
  if (v3)
  {
    v6 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultSmallClockWidgetIcon];
    v7 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultSmallNotesWidgetIcon];
    v8 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultMediumCalendarWidgetIcon];
    v9 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultLargeFirstSuggestionWidgetIcon];
    v10 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultLargeSecondSuggestionWidgetIcon];
    v72[0] = v6;
    v72[1] = v7;
    v72[2] = v9;
    v72[3] = v10;
    v72[4] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
    v12 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Builder logic 0", buf, 2u);
    }

LABEL_5:
LABEL_6:

    goto LABEL_52;
  }

  v13 = v5;
  if ([(NSArray *)v5 count]!= 1)
  {
    if ([(NSArray *)v13 count]!= 2)
    {
      if ([(NSArray *)v13 count]== 3)
      {
        v11 = [(SBWidgetOnboardingLayoutBuilder *)v4 migratedThreeWidgets:v13];
        v6 = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v38 = "Builder logic three widgets";
      }

      else
      {
        if ([(NSArray *)v13 count]!= 4)
        {
          v6 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultSmallClockWidgetIcon];
          v7 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultSmallCalendarWidgetIcon];
          v8 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultMediumFirstSuggestionWidgetIcon];
          v9 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultMediumSecondSuggestionWidgetIcon];
          v71[0] = v6;
          v71[1] = v7;
          v71[2] = v8;
          v71[3] = v9;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
          v45 = SBLogWidgetDiscoverability();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEFAULT, "Builder logic other", buf, 2u);
          }

          goto LABEL_5;
        }

        v11 = [(SBWidgetOnboardingLayoutBuilder *)v4 migratedFourWidgets:v13];
        v6 = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v38 = "Builder logic four widgets";
      }

      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
      goto LABEL_52;
    }

    v30 = v4;
    v6 = [(NSArray *)v13 firstObject];
    v7 = [(NSArray *)v13 objectAtIndex:1];
    v31 = [v6 gridSizeClass];
    v32 = [v7 gridSizeClass];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [v6 gridSizeClass];
      v35 = [v7 gridSizeClass];
      v36 = [v34 isEqualToString:v35];

      if (!v36)
      {
        v4 = v30;
        v11 = [(SBWidgetOnboardingLayoutBuilder *)v30 migratedSmallAndMediumWidget:v13];
        v8 = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        *buf = 0;
        v37 = "Builder logic one small, one medium";
LABEL_39:
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
        goto LABEL_6;
      }
    }

    v40 = [v6 gridSizeClass];
    v41 = v40;
    v42 = *MEMORY[0x277D66548];
    if (v40 == *MEMORY[0x277D66548])
    {
    }

    else
    {
      v43 = [v6 gridSizeClass];
      v44 = [v43 isEqualToString:v42];

      if (!v44)
      {
        v4 = v30;
        v11 = [(SBWidgetOnboardingLayoutBuilder *)v30 migratedTwoMediumWidgets:v13];
        v8 = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        *buf = 0;
        v37 = "Builder logic two mediums";
        goto LABEL_39;
      }
    }

    v4 = v30;
    v11 = [(SBWidgetOnboardingLayoutBuilder *)v30 migratedTwoSmallWidgets:v13];
    v8 = SBLogWidgetDiscoverability();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v37 = "Builder logic two smalls";
    goto LABEL_39;
  }

  v14 = v4;
  v6 = [(NSArray *)v13 firstObject];
  v15 = [v6 gridSizeClass];
  v16 = v15;
  v17 = *MEMORY[0x277D66518];
  if (v15 == *MEMORY[0x277D66518])
  {
  }

  else
  {
    v18 = [v6 gridSizeClass];
    v19 = [v18 isEqualToString:v17];

    if (!v19)
    {
      v20 = [v6 gridSizeClass];
      v21 = v20;
      v22 = *MEMORY[0x277D66520];
      if (v20 == *MEMORY[0x277D66520])
      {
      }

      else
      {
        v23 = [v6 gridSizeClass];
        v24 = [v23 isEqualToString:v22];

        if (!v24)
        {
          v25 = [v6 gridSizeClass];
          v26 = v25;
          v27 = *MEMORY[0x277D66548];
          if (v25 == *MEMORY[0x277D66548])
          {
          }

          else
          {
            v28 = [v6 gridSizeClass];
            v29 = [v28 isEqualToString:v27];

            if (!v29)
            {
              v11 = 0;
              v4 = v14;
              goto LABEL_52;
            }
          }

          v48 = SBLogWidgetDiscoverability();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEFAULT, "Builder logic one small", buf, 2u);
          }

          v4 = v14;
          v47 = [(SBWidgetOnboardingLayoutBuilder *)v14 migratedOneSmallWidget:v6];
          goto LABEL_51;
        }
      }

      v46 = SBLogWidgetDiscoverability();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Builder logic one medium", buf, 2u);
      }

      v4 = v14;
      v47 = [(SBWidgetOnboardingLayoutBuilder *)v14 migratedOneMediumWidget:v6];
LABEL_51:
      v11 = v47;
      goto LABEL_52;
    }
  }

  v4 = v14;
  v11 = [(SBWidgetOnboardingLayoutBuilder *)v14 migratedOneLargeWidget:v6];
  v39 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "Builder logic one large", buf, 2u);
  }

LABEL_52:
  v49 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEFAULT, "Builder logic CalendarWidgetMigrator starting...", buf, 2u);
  }

  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v11;
  v51 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v66;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v66 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v65 + 1) + 8 * i);
        v56 = [v55 activeWidget];
        v57 = [v56 kind];
        if ([v57 isEqualToString:@"com.apple.CalendarWidget.CalendarWidget"])
        {
          v58 = [v55 gridSizeClass];
          v59 = v4;
          v60 = [(SBWidgetOnboardingLayoutBuilder *)v4 defaultCalendarWidgetIcon:v58];
          [v50 addObject:v60];

          v61 = SBLogWidgetDiscoverability();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v61, OS_LOG_TYPE_DEFAULT, "Builder logic: Upgrading calendar widget", buf, 2u);
          }

          v4 = v59;
        }

        else
        {
          [v50 addObject:v55];
        }
      }

      v52 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v52);
  }

  return v50;
}

@end