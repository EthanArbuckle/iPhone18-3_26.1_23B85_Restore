@interface SBWidgetOnboardingLayoutBuilder
- (BOOL)isCalendarWidget:(id)widget;
- (BOOL)isCalendarWidgetIcon:(id)icon;
- (BOOL)isClockWidget:(id)widget;
- (BOOL)isFirstSuggestionActiveWidgetIcon:(id)icon;
- (BOOL)isSecondSuggestionActiveWidgetIcon:(id)icon;
- (SBWidgetOnboardingLayoutBuilder)initWithPinnedWidgets:(id)widgets suggestionWidgets:(id)suggestionWidgets;
- (id)deduplicateInsidePinnedWidgets;
- (id)defaultCalendarWidgetIcon:(id)icon;
- (id)defaultFirstSuggestionWidgetIcon:(id)icon;
- (id)defaultSecondSuggestionWidgetIcon:(id)icon;
- (id)defaultSmallClockWidgetIcon;
- (id)defaultSmallNotesWidgetIcon;
- (id)migratedDefaultWidgets:(BOOL)widgets;
- (id)migratedFourWidgets:(id)widgets;
- (id)migratedOneLargeWidget:(id)widget;
- (id)migratedOneMediumWidget:(id)widget;
- (id)migratedOneSmallWidget:(id)widget;
- (id)migratedSmallAndMediumWidget:(id)widget;
- (id)migratedThreeWidgets:(id)widgets;
- (id)migratedTwoMediumWidgets:(id)widgets;
- (id)migratedTwoSmallWidgets:(id)widgets;
@end

@implementation SBWidgetOnboardingLayoutBuilder

- (SBWidgetOnboardingLayoutBuilder)initWithPinnedWidgets:(id)widgets suggestionWidgets:(id)suggestionWidgets
{
  widgetsCopy = widgets;
  suggestionWidgetsCopy = suggestionWidgets;
  v14.receiver = self;
  v14.super_class = SBWidgetOnboardingLayoutBuilder;
  v8 = [(SBWidgetOnboardingLayoutBuilder *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA60] arrayWithArray:widgetsCopy];
    pinnedWidgets = v8->_pinnedWidgets;
    v8->_pinnedWidgets = v9;

    v11 = [MEMORY[0x277CBEA60] arrayWithArray:suggestionWidgetsCopy];
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

- (id)defaultCalendarWidgetIcon:(id)icon
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
  iconCopy = icon;
  v7 = [v5 alloc];
  v11[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v7 initWithWidgetExtensionIdentifiers:&unk_28336ED18 widgetKinds:v8 widgetContainerBundleIdentifiers:&unk_28336ED30];

  [v9 setGridSizeClass:iconCopy];

  return v9;
}

- (id)defaultFirstSuggestionWidgetIcon:(id)icon
{
  iconCopy = icon;
  suggestionWidgets = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  firstObject = [suggestionWidgets firstObject];

  [firstObject setGridSizeClass:iconCopy];

  return firstObject;
}

- (id)defaultSecondSuggestionWidgetIcon:(id)icon
{
  iconCopy = icon;
  suggestionWidgets = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  v6 = [suggestionWidgets objectAtIndex:1];

  [v6 setGridSizeClass:iconCopy];

  return v6;
}

- (BOOL)isClockWidget:(id)widget
{
  widgetCopy = widget;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  extensionBundleIdentifier = [widgetCopy extensionBundleIdentifier];

  activeWidget = [defaultSmallClockWidgetIcon activeWidget];
  extensionBundleIdentifier2 = [activeWidget extensionBundleIdentifier];
  v9 = [extensionBundleIdentifier isEqual:extensionBundleIdentifier2];

  return v9;
}

- (BOOL)isCalendarWidget:(id)widget
{
  widgetCopy = widget;
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  extensionBundleIdentifier = [widgetCopy extensionBundleIdentifier];

  activeWidget = [defaultSmallCalendarWidgetIcon activeWidget];
  extensionBundleIdentifier2 = [activeWidget extensionBundleIdentifier];
  v9 = [extensionBundleIdentifier isEqual:extensionBundleIdentifier2];

  return v9;
}

- (BOOL)isCalendarWidgetIcon:(id)icon
{
  activeWidget = [icon activeWidget];
  LOBYTE(self) = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidget:activeWidget];

  return self;
}

- (BOOL)isFirstSuggestionActiveWidgetIcon:(id)icon
{
  iconCopy = icon;
  suggestionWidgets = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  firstObject = [suggestionWidgets firstObject];

  activeWidget = [firstObject activeWidget];
  extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
  activeWidget2 = [iconCopy activeWidget];

  extensionBundleIdentifier2 = [activeWidget2 extensionBundleIdentifier];
  v11 = [extensionBundleIdentifier isEqual:extensionBundleIdentifier2];

  return v11;
}

- (BOOL)isSecondSuggestionActiveWidgetIcon:(id)icon
{
  iconCopy = icon;
  suggestionWidgets = [(SBWidgetOnboardingLayoutBuilder *)self suggestionWidgets];
  v6 = [suggestionWidgets objectAtIndex:1];

  activeWidget = [v6 activeWidget];
  extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
  activeWidget2 = [iconCopy activeWidget];

  extensionBundleIdentifier2 = [activeWidget2 extensionBundleIdentifier];
  v11 = [extensionBundleIdentifier isEqual:extensionBundleIdentifier2];

  return v11;
}

- (id)deduplicateInsidePinnedWidgets
{
  v36 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
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
        v25 = array;
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
              activeWidget = [v4 activeWidget];
              extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
              activeWidget2 = [v9 activeWidget];
              extensionBundleIdentifier2 = [activeWidget2 extensionBundleIdentifier];
              v14 = [extensionBundleIdentifier isEqual:extensionBundleIdentifier2];

              if (v14)
              {
                widgets = [v4 widgets];
                v16 = [widgets count];
                widgets2 = [v9 widgets];
                v18 = [widgets2 count];

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

  return array;
}

- (id)migratedOneSmallWidget:(id)widget
{
  v16[4] = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:widgetCopy]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:widgetCopy]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:widgetCopy])
  {
    v16[0] = defaultSmallClockWidgetIcon;
    v9 = v16;
    v10 = defaultSmallCalendarWidgetIcon;
    v11 = defaultMediumFirstSuggestionWidgetIcon;
    v12 = defaultMediumSecondSuggestionWidgetIcon;
  }

  else
  {
    [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
    v15 = defaultSmallClockWidgetIcon;
    v9 = &v15;
    v10 = widgetCopy;
    v11 = defaultSmallCalendarWidgetIcon;
    v12 = defaultMediumFirstSuggestionWidgetIcon;
  }

  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v13;
}

- (id)migratedOneMediumWidget:(id)widget
{
  v17[4] = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:widgetCopy])
  {
    [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    v17[0] = defaultSmallClockWidgetIcon;
    v9 = v17;
    v10 = defaultMediumFirstSuggestionWidgetIcon;
    v11 = widgetCopy;
LABEL_6:
    v12 = defaultMediumSecondSuggestionWidgetIcon;
    goto LABEL_7;
  }

  if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:widgetCopy]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:widgetCopy])
  {
    v16 = defaultSmallClockWidgetIcon;
    v9 = &v16;
    v10 = defaultSmallCalendarWidgetIcon;
    v11 = defaultMediumFirstSuggestionWidgetIcon;
    goto LABEL_6;
  }

  v15 = defaultSmallClockWidgetIcon;
  v9 = &v15;
  v10 = defaultSmallCalendarWidgetIcon;
  v11 = widgetCopy;
  v12 = defaultMediumFirstSuggestionWidgetIcon;
LABEL_7:
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v13;
}

- (id)migratedOneLargeWidget:(id)widget
{
  v17[4] = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:widgetCopy])
  {
    [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    v17[0] = defaultSmallClockWidgetIcon;
    v9 = v17;
    v10 = defaultMediumFirstSuggestionWidgetIcon;
  }

  else
  {
    if (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:widgetCopy])
    {
      if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:widgetCopy])
      {
        v15 = defaultSmallClockWidgetIcon;
        v9 = &v15;
      }

      else
      {
        v14 = defaultSmallClockWidgetIcon;
        v9 = &v14;
      }

      v10 = defaultSmallCalendarWidgetIcon;
      v11 = defaultMediumFirstSuggestionWidgetIcon;
      goto LABEL_10;
    }

    v16 = defaultSmallClockWidgetIcon;
    v9 = &v16;
    v10 = defaultSmallCalendarWidgetIcon;
  }

  v11 = defaultMediumSecondSuggestionWidgetIcon;
LABEL_10:
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = widgetCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v12;
}

- (id)migratedTwoSmallWidgets:(id)widgets
{
  v63 = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  firstObject = [widgetsCopy firstObject];
  v10 = [widgetsCopy objectAtIndex:1];

  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      v59 = defaultSmallClockWidgetIcon;
      v60 = defaultSmallCalendarWidgetIcon;
      v61 = defaultMediumFirstSuggestionWidgetIcon;
      v62 = defaultMediumSecondSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v59;
    }

    else
    {
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v55 = defaultSmallClockWidgetIcon;
      v56 = v10;
      v57 = defaultSmallCalendarWidgetIcon;
      v58 = defaultMediumFirstSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v55;
    }
  }

  else
  {
    v13 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v10];
    v14 = [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject];
    if (v13)
    {
      if (v14 || [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
      {
        v51 = defaultSmallClockWidgetIcon;
        v52 = defaultSmallCalendarWidgetIcon;
        v53 = defaultMediumFirstSuggestionWidgetIcon;
        v54 = defaultMediumSecondSuggestionWidgetIcon;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v51;
      }

      else
      {
        [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
        v47 = defaultSmallClockWidgetIcon;
        v48 = firstObject;
        v49 = defaultSmallCalendarWidgetIcon;
        v50 = defaultMediumFirstSuggestionWidgetIcon;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v47;
      }
    }

    else if (v14 && ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v43 = defaultSmallClockWidgetIcon;
      v44 = v10;
      v45 = defaultSmallCalendarWidgetIcon;
      v46 = defaultMediumFirstSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v43;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
    {
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v39 = defaultSmallClockWidgetIcon;
      v40 = firstObject;
      v41 = defaultSmallCalendarWidgetIcon;
      v42 = defaultMediumFirstSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v39;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject]&& ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10])
    {
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v35 = defaultSmallClockWidgetIcon;
      v36 = v10;
      v37 = defaultSmallCalendarWidgetIcon;
      v38 = defaultMediumSecondSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v35;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject])
    {
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v31 = defaultSmallClockWidgetIcon;
      v32 = firstObject;
      v33 = defaultSmallCalendarWidgetIcon;
      v34 = defaultMediumSecondSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v31;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      v27 = defaultSmallClockWidgetIcon;
      v28 = defaultSmallCalendarWidgetIcon;
      v29 = defaultMediumFirstSuggestionWidgetIcon;
      v30 = defaultMediumSecondSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v27;
    }

    else
    {
      if (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
      {
        v18 = defaultSmallClockWidgetIcon;
        v19 = defaultSmallCalendarWidgetIcon;
        v20 = firstObject;
        v21 = v10;
        v22 = defaultMediumFirstSuggestionWidgetIcon;
        v11 = MEMORY[0x277CBEA60];
        v12 = &v18;
        v15 = 5;
        goto LABEL_31;
      }

      v23 = defaultSmallClockWidgetIcon;
      v24 = defaultSmallCalendarWidgetIcon;
      v25 = defaultMediumSecondSuggestionWidgetIcon;
      v26 = defaultMediumFirstSuggestionWidgetIcon;
      v11 = MEMORY[0x277CBEA60];
      v12 = &v23;
    }
  }

  v15 = 4;
LABEL_31:
  v16 = [v11 arrayWithObjects:v12 count:{v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63}];

  return v16;
}

- (id)migratedTwoMediumWidgets:(id)widgets
{
  v33[4] = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  firstObject = [widgetsCopy firstObject];
  v10 = [widgetsCopy objectAtIndex:1];

  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10])
    {
      [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v33[0] = defaultSmallClockWidgetIcon;
      v11 = v33;
      v12 = defaultMediumSecondSuggestionWidgetIcon;
LABEL_4:
      v13 = firstObject;
LABEL_5:
      v14 = defaultMediumFirstSuggestionWidgetIcon;
      goto LABEL_40;
    }

    v17 = [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10];
    [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
    if (v17)
    {
      v32 = defaultSmallClockWidgetIcon;
      v11 = &v32;
      v12 = defaultMediumFirstSuggestionWidgetIcon;
LABEL_11:
      v13 = firstObject;
LABEL_12:
      v14 = defaultMediumSecondSuggestionWidgetIcon;
      goto LABEL_40;
    }

    v31 = defaultSmallClockWidgetIcon;
    v11 = &v31;
    goto LABEL_30;
  }

  v15 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v10];
  v16 = [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject];
  if (!v15)
  {
    if (v16 && ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
    {
      v27 = defaultSmallClockWidgetIcon;
      v11 = &v27;
      v12 = defaultSmallCalendarWidgetIcon;
      goto LABEL_28;
    }

    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
    {
      v26 = defaultSmallClockWidgetIcon;
      v11 = &v26;
      v12 = defaultSmallCalendarWidgetIcon;
      goto LABEL_4;
    }

    if (![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10])
    {
      if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10]&& ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject])
      {
        v24 = defaultSmallClockWidgetIcon;
        v11 = &v24;
        v12 = defaultSmallCalendarWidgetIcon;
        goto LABEL_11;
      }

      if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10])
      {
        v23 = defaultSmallClockWidgetIcon;
        v11 = &v23;
        v12 = defaultSmallCalendarWidgetIcon;
        v13 = defaultMediumFirstSuggestionWidgetIcon;
        goto LABEL_12;
      }

      if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
      {
        v22 = defaultSmallClockWidgetIcon;
        v11 = &v22;
        v12 = defaultSmallCalendarWidgetIcon;
        v13 = defaultMediumSecondSuggestionWidgetIcon;
        goto LABEL_5;
      }

      v21 = defaultSmallClockWidgetIcon;
      v11 = &v21;
      v12 = defaultSmallCalendarWidgetIcon;
      goto LABEL_31;
    }

    v25 = defaultSmallClockWidgetIcon;
    v11 = &v25;
    v12 = defaultSmallCalendarWidgetIcon;
LABEL_38:
    v13 = defaultMediumSecondSuggestionWidgetIcon;
    goto LABEL_39;
  }

  if (!v16)
  {
    v18 = [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject];
    [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
    if (!v18)
    {
      v28 = defaultSmallClockWidgetIcon;
      v11 = &v28;
LABEL_30:
      v12 = defaultMediumFirstSuggestionWidgetIcon;
LABEL_31:
      v13 = firstObject;
      goto LABEL_39;
    }

    v29 = defaultSmallClockWidgetIcon;
    v11 = &v29;
    v12 = defaultMediumFirstSuggestionWidgetIcon;
    goto LABEL_38;
  }

  [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
  [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
  v30 = defaultSmallClockWidgetIcon;
  v11 = &v30;
  v12 = defaultMediumSecondSuggestionWidgetIcon;
LABEL_28:
  v13 = defaultMediumFirstSuggestionWidgetIcon;
LABEL_39:
  v14 = v10;
LABEL_40:
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v19;
}

- (id)migratedSmallAndMediumWidget:(id)widget
{
  v27[4] = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  firstObject = [widgetCopy firstObject];
  gridSizeClass = [firstObject gridSizeClass];
  v10 = gridSizeClass;
  v11 = *MEMORY[0x277D66548];
  if (gridSizeClass == *MEMORY[0x277D66548])
  {
  }

  else
  {
    firstObject2 = [widgetCopy firstObject];
    gridSizeClass2 = [firstObject2 gridSizeClass];
    v14 = [gridSizeClass2 isEqualToString:v11];

    if (!v14)
    {
      firstObject4 = [widgetCopy objectAtIndex:1];
      firstObject3 = [widgetCopy firstObject];
      goto LABEL_6;
    }
  }

  firstObject4 = [widgetCopy firstObject];
  firstObject3 = [widgetCopy objectAtIndex:1];
LABEL_6:
  v17 = firstObject3;
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject4])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v17])
    {
      v27[0] = defaultSmallClockWidgetIcon;
      v18 = v27;
LABEL_12:
      v19 = defaultMediumSecondSuggestionWidgetIcon;
      goto LABEL_17;
    }

    v26 = defaultSmallClockWidgetIcon;
    v18 = &v26;
  }

  else
  {
    if (![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v17])
    {
      [defaultSmallCalendarWidgetIcon setGridSizeClass:*MEMORY[0x277D66520]];
      v23 = defaultSmallClockWidgetIcon;
      v18 = &v23;
      v19 = defaultSmallCalendarWidgetIcon;
      goto LABEL_17;
    }

    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject4])
    {
      v25 = defaultSmallClockWidgetIcon;
      v18 = &v25;
      goto LABEL_12;
    }

    v24 = defaultSmallClockWidgetIcon;
    v18 = &v24;
  }

  v19 = defaultMediumFirstSuggestionWidgetIcon;
LABEL_17:
  v18[1] = firstObject4;
  v18[2] = v17;
  v18[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v20;
}

- (id)migratedThreeWidgets:(id)widgets
{
  v76[5] = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  v8 = [widgetsCopy objectAtIndex:0];
  gridSizeClass = [v8 gridSizeClass];
  v10 = *MEMORY[0x277D66520];
  v49 = *MEMORY[0x277D66520];
  v53 = defaultSmallClockWidgetIcon;
  if (gridSizeClass != *MEMORY[0x277D66520])
  {
    v4 = [widgetsCopy objectAtIndex:0];
    gridSizeClass2 = [v4 gridSizeClass];
    if (![gridSizeClass2 isEqualToString:v10])
    {

LABEL_11:
      firstObject = [widgetsCopy firstObject];
      v19 = [widgetsCopy objectAtIndex:1];
      firstObject2 = [widgetsCopy objectAtIndex:2];
      goto LABEL_12;
    }
  }

  v11 = [widgetsCopy objectAtIndex:{2, self}];
  gridSizeClass3 = [v11 gridSizeClass];
  v13 = *MEMORY[0x277D66548];
  v14 = widgetsCopy;
  if (gridSizeClass3 == *MEMORY[0x277D66548])
  {
    v17 = 1;
  }

  else
  {
    v15 = [widgetsCopy objectAtIndex:2];
    gridSizeClass4 = [v15 gridSizeClass];
    v17 = [gridSizeClass4 isEqualToString:v13];
  }

  v10 = v49;
  if (gridSizeClass == v49)
  {

    widgetsCopy = v14;
    self = v48;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  else
  {

    widgetsCopy = v14;
    self = v48;
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  firstObject = [widgetsCopy objectAtIndex:1];
  v19 = [widgetsCopy objectAtIndex:2];
  firstObject2 = [widgetsCopy firstObject];
LABEL_12:
  v21 = firstObject2;
  v22 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v19]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v21];
  gridSizeClass5 = [v21 gridSizeClass];
  v24 = gridSizeClass5;
  if (gridSizeClass5 == v10)
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
      v29 = defaultSmallCalendarWidgetIcon;
      v76[0] = v53;
      v76[1] = defaultSmallCalendarWidgetIcon;
      v76[2] = firstObject;
      v76[3] = v19;
      v76[4] = v21;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:5];
      v31 = defaultMediumSecondSuggestionWidgetIcon;
      v30 = defaultMediumFirstSuggestionWidgetIcon;
      goto LABEL_93;
    }

    if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject])
    {
      v31 = defaultMediumSecondSuggestionWidgetIcon;
      v30 = defaultMediumFirstSuggestionWidgetIcon;
      if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v19])
      {
        v34 = *MEMORY[0x277D66548];
        [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
        [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:v34];
        v75[0] = v53;
        v75[1] = firstObject;
        v75[2] = defaultMediumFirstSuggestionWidgetIcon;
        v75[3] = defaultMediumSecondSuggestionWidgetIcon;
        v75[4] = v21;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:5];
        v29 = defaultSmallCalendarWidgetIcon;
        goto LABEL_93;
      }

      v29 = defaultSmallCalendarWidgetIcon;
      if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v19])
      {
        v42 = *MEMORY[0x277D66548];
        [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
        [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:v42];
        v74[0] = v53;
        v74[1] = firstObject;
        v74[2] = defaultMediumSecondSuggestionWidgetIcon;
        v74[3] = defaultMediumFirstSuggestionWidgetIcon;
        v74[4] = v21;
        v36 = MEMORY[0x277CBEA60];
        v37 = v74;
LABEL_87:
        v44 = 5;
        goto LABEL_88;
      }

      [defaultSmallCalendarWidgetIcon setGridSizeClass:v49];
      v73[0] = v53;
      v73[1] = v19;
      v73[2] = defaultSmallCalendarWidgetIcon;
      v73[3] = v21;
      v36 = MEMORY[0x277CBEA60];
      v37 = v73;
    }

    else
    {
      v31 = defaultMediumSecondSuggestionWidgetIcon;
      v30 = defaultMediumFirstSuggestionWidgetIcon;
      if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v19])
      {
        v29 = defaultSmallCalendarWidgetIcon;
        if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject])
        {
          v72[0] = v53;
          v72[1] = v19;
          v72[2] = defaultMediumFirstSuggestionWidgetIcon;
          v72[3] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v72;
        }

        else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
        {
          v71[0] = v53;
          v71[1] = v19;
          v71[2] = defaultMediumSecondSuggestionWidgetIcon;
          v71[3] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v71;
        }

        else
        {
          [defaultSmallCalendarWidgetIcon setGridSizeClass:v49];
          v70[0] = v53;
          v70[1] = firstObject;
          v70[2] = defaultSmallCalendarWidgetIcon;
          v70[3] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v70;
        }
      }

      else
      {
        v29 = defaultSmallCalendarWidgetIcon;
        if (![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v21])
        {
          v35 = 0;
          goto LABEL_93;
        }

        if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v19])
        {
          v45 = *MEMORY[0x277D66548];
          [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
          [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:v45];
          v69[0] = v53;
          v69[1] = defaultMediumFirstSuggestionWidgetIcon;
          v69[2] = v21;
          v69[3] = v19;
          v69[4] = defaultMediumSecondSuggestionWidgetIcon;
          v36 = MEMORY[0x277CBEA60];
          v37 = v69;
          goto LABEL_87;
        }

        if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v19]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
        {
          v46 = *MEMORY[0x277D66548];
          [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
          [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:v46];
          v68[0] = v53;
          v68[1] = firstObject;
          v68[2] = v21;
          v68[3] = defaultMediumFirstSuggestionWidgetIcon;
          v68[4] = defaultMediumSecondSuggestionWidgetIcon;
          v36 = MEMORY[0x277CBEA60];
          v37 = v68;
          goto LABEL_87;
        }

        if ((![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v19]) && (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v19]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject]))
        {
          [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
          v66[0] = v53;
          v66[1] = defaultMediumFirstSuggestionWidgetIcon;
          v66[2] = firstObject;
          v66[3] = v19;
          v66[4] = v21;
          v36 = MEMORY[0x277CBEA60];
          v37 = v66;
          goto LABEL_87;
        }

        [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
        v67[0] = v53;
        v67[1] = defaultMediumFirstSuggestionWidgetIcon;
        v67[2] = v21;
        v67[3] = defaultMediumSecondSuggestionWidgetIcon;
        v36 = MEMORY[0x277CBEA60];
        v37 = v67;
      }
    }

    v44 = 4;
LABEL_88:
    v35 = [v36 arrayWithObjects:v37 count:v44];
    goto LABEL_93;
  }

  gridSizeClass6 = [v21 gridSizeClass];
  v26 = [gridSizeClass6 isEqualToString:v10];

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

  v28 = widgetsCopy;

  v30 = defaultMediumFirstSuggestionWidgetIcon;
  v29 = defaultSmallCalendarWidgetIcon;
  v31 = defaultMediumSecondSuggestionWidgetIcon;
  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v19])
  {
    v32 = firstObject;
    firstObject = v19;
  }

  else
  {
    v38 = [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v21];
    if (v38)
    {
      v39 = firstObject;
    }

    else
    {
      v39 = v21;
    }

    if (v38)
    {
      firstObject = v21;
    }

    v21 = v39;
    v32 = v19;
  }

  if (![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject])
  {
    if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject])
    {
      v61[0] = v53;
      v61[1] = defaultSmallCalendarWidgetIcon;
      v61[2] = v32;
      v61[3] = v21;
      v61[4] = defaultMediumFirstSuggestionWidgetIcon;
      v40 = MEMORY[0x277CBEA60];
      v41 = v61;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject])
    {
      v60[0] = v53;
      v60[1] = defaultSmallCalendarWidgetIcon;
      v60[2] = v32;
      v60[3] = v21;
      v60[4] = defaultMediumSecondSuggestionWidgetIcon;
      v40 = MEMORY[0x277CBEA60];
      v41 = v60;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32])
    {
      v59[0] = v53;
      v59[1] = defaultSmallCalendarWidgetIcon;
      v59[2] = firstObject;
      v59[3] = v21;
      v59[4] = defaultMediumFirstSuggestionWidgetIcon;
      v40 = MEMORY[0x277CBEA60];
      v41 = v59;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32])
    {
      v58[0] = v53;
      v58[1] = defaultSmallCalendarWidgetIcon;
      v58[2] = firstObject;
      v58[3] = v21;
      v58[4] = defaultMediumSecondSuggestionWidgetIcon;
      v40 = MEMORY[0x277CBEA60];
      v41 = v58;
    }

    else if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21])
    {
      v57[0] = v53;
      v57[1] = defaultSmallCalendarWidgetIcon;
      v57[2] = firstObject;
      v57[3] = v32;
      v57[4] = defaultMediumFirstSuggestionWidgetIcon;
      v40 = MEMORY[0x277CBEA60];
      v41 = v57;
    }

    else
    {
      if (![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21])
      {
        [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
        v55[0] = v53;
        v55[1] = defaultSmallCalendarWidgetIcon;
        v55[2] = firstObject;
        v55[3] = v32;
        v55[4] = v21;
        v55[5] = defaultMediumFirstSuggestionWidgetIcon;
        v40 = MEMORY[0x277CBEA60];
        v41 = v55;
        v43 = 6;
        goto LABEL_92;
      }

      v56[0] = v53;
      v56[1] = defaultSmallCalendarWidgetIcon;
      v56[2] = firstObject;
      v56[3] = v32;
      v56[4] = defaultMediumSecondSuggestionWidgetIcon;
      v40 = MEMORY[0x277CBEA60];
      v41 = v56;
    }

    goto LABEL_91;
  }

  if ([(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21]&& ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32])
  {
    [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    v65[0] = v53;
    v65[1] = firstObject;
    v65[2] = v32;
    v65[3] = v21;
    v65[4] = defaultMediumSecondSuggestionWidgetIcon;
    v40 = MEMORY[0x277CBEA60];
    v41 = v65;
    goto LABEL_91;
  }

  if (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21]|| ![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21]&& [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32])
  {
    [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    v64[0] = v53;
    v64[1] = firstObject;
    v64[2] = v32;
    v64[3] = v21;
    v64[4] = defaultMediumFirstSuggestionWidgetIcon;
    v40 = MEMORY[0x277CBEA60];
    v41 = v64;
LABEL_91:
    v43 = 5;
    goto LABEL_92;
  }

  if ((![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v32]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v21]) && (![(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v21]|| ![(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v32]))
  {
    v62[0] = v53;
    v62[1] = firstObject;
    v62[2] = v32;
    v62[3] = v21;
    v62[4] = defaultMediumFirstSuggestionWidgetIcon;
    v40 = MEMORY[0x277CBEA60];
    v41 = v62;
    goto LABEL_91;
  }

  v63[0] = v53;
  v63[1] = firstObject;
  v63[2] = defaultMediumFirstSuggestionWidgetIcon;
  v63[3] = defaultMediumSecondSuggestionWidgetIcon;
  v40 = MEMORY[0x277CBEA60];
  v41 = v63;
  v43 = 4;
LABEL_92:
  v35 = [v40 arrayWithObjects:v41 count:v43];
  v19 = v32;
  widgetsCopy = v28;
LABEL_93:

  return v35;
}

- (id)migratedFourWidgets:(id)widgets
{
  v27[6] = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallClockWidgetIcon];
  defaultSmallCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultSmallCalendarWidgetIcon];
  defaultMediumFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumFirstSuggestionWidgetIcon];
  defaultMediumSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)self defaultMediumSecondSuggestionWidgetIcon];
  firstObject = [widgetsCopy firstObject];
  v9 = [widgetsCopy objectAtIndex:1];
  v10 = [widgetsCopy objectAtIndex:2];
  v11 = [widgetsCopy objectAtIndex:3];

  if ([(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:firstObject]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v10])
  {
    v12 = 0;
  }

  else
  {
    v12 = ![(SBWidgetOnboardingLayoutBuilder *)self isCalendarWidgetIcon:v11];
  }

  v13 = [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:firstObject]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v10]|| [(SBWidgetOnboardingLayoutBuilder *)self isFirstSuggestionActiveWidgetIcon:v11];
  v14 = [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:firstObject]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v9]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v10]|| [(SBWidgetOnboardingLayoutBuilder *)self isSecondSuggestionActiveWidgetIcon:v11];
  if (((v12 | v13) & 1) == 0)
  {
    [defaultMediumFirstSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
    v15 = v27;
    v16 = firstObject;
    v27[0] = defaultSmallClockWidgetIcon;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = defaultMediumFirstSuggestionWidgetIcon;
    goto LABEL_17;
  }

  if ((v12 | v14))
  {
    v15 = &v25;
    v16 = defaultSmallCalendarWidgetIcon;
    v25 = defaultSmallClockWidgetIcon;
    v17 = firstObject;
    v18 = v9;
    v19 = v10;
    v20 = v11;
LABEL_17:
    v21 = defaultMediumSecondSuggestionWidgetIcon;
    goto LABEL_19;
  }

  v21 = defaultMediumSecondSuggestionWidgetIcon;
  [defaultMediumSecondSuggestionWidgetIcon setGridSizeClass:*MEMORY[0x277D66548]];
  v15 = &v26;
  v16 = firstObject;
  v26 = defaultSmallClockWidgetIcon;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = defaultMediumSecondSuggestionWidgetIcon;
LABEL_19:
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v18;
  v15[4] = v19;
  v15[5] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v22;
}

- (id)migratedDefaultWidgets:(BOOL)widgets
{
  widgetsCopy = widgets;
  selfCopy = self;
  v72[5] = *MEMORY[0x277D85DE8];
  v5 = self->_pinnedWidgets;
  if (widgetsCopy)
  {
    defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultSmallClockWidgetIcon];
    defaultSmallNotesWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultSmallNotesWidgetIcon];
    defaultMediumCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultMediumCalendarWidgetIcon];
    defaultLargeFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultLargeFirstSuggestionWidgetIcon];
    defaultLargeSecondSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultLargeSecondSuggestionWidgetIcon];
    v72[0] = defaultSmallClockWidgetIcon;
    v72[1] = defaultSmallNotesWidgetIcon;
    v72[2] = defaultLargeFirstSuggestionWidgetIcon;
    v72[3] = defaultLargeSecondSuggestionWidgetIcon;
    v72[4] = defaultMediumCalendarWidgetIcon;
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
        v11 = [(SBWidgetOnboardingLayoutBuilder *)selfCopy migratedThreeWidgets:v13];
        defaultSmallClockWidgetIcon = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(defaultSmallClockWidgetIcon, OS_LOG_TYPE_DEFAULT))
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
          defaultSmallClockWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultSmallClockWidgetIcon];
          defaultSmallNotesWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultSmallCalendarWidgetIcon];
          defaultMediumCalendarWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultMediumFirstSuggestionWidgetIcon];
          defaultLargeFirstSuggestionWidgetIcon = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultMediumSecondSuggestionWidgetIcon];
          v71[0] = defaultSmallClockWidgetIcon;
          v71[1] = defaultSmallNotesWidgetIcon;
          v71[2] = defaultMediumCalendarWidgetIcon;
          v71[3] = defaultLargeFirstSuggestionWidgetIcon;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
          v45 = SBLogWidgetDiscoverability();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEFAULT, "Builder logic other", buf, 2u);
          }

          goto LABEL_5;
        }

        v11 = [(SBWidgetOnboardingLayoutBuilder *)selfCopy migratedFourWidgets:v13];
        defaultSmallClockWidgetIcon = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(defaultSmallClockWidgetIcon, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v38 = "Builder logic four widgets";
      }

      _os_log_impl(&dword_21ED4E000, defaultSmallClockWidgetIcon, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
      goto LABEL_52;
    }

    v30 = selfCopy;
    defaultSmallClockWidgetIcon = [(NSArray *)v13 firstObject];
    defaultSmallNotesWidgetIcon = [(NSArray *)v13 objectAtIndex:1];
    gridSizeClass = [defaultSmallClockWidgetIcon gridSizeClass];
    gridSizeClass2 = [defaultSmallNotesWidgetIcon gridSizeClass];
    v33 = gridSizeClass2;
    if (gridSizeClass == gridSizeClass2)
    {
    }

    else
    {
      gridSizeClass3 = [defaultSmallClockWidgetIcon gridSizeClass];
      gridSizeClass4 = [defaultSmallNotesWidgetIcon gridSizeClass];
      v36 = [gridSizeClass3 isEqualToString:gridSizeClass4];

      if (!v36)
      {
        selfCopy = v30;
        v11 = [(SBWidgetOnboardingLayoutBuilder *)v30 migratedSmallAndMediumWidget:v13];
        defaultMediumCalendarWidgetIcon = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(defaultMediumCalendarWidgetIcon, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        *buf = 0;
        v37 = "Builder logic one small, one medium";
LABEL_39:
        _os_log_impl(&dword_21ED4E000, defaultMediumCalendarWidgetIcon, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
        goto LABEL_6;
      }
    }

    gridSizeClass5 = [defaultSmallClockWidgetIcon gridSizeClass];
    v41 = gridSizeClass5;
    v42 = *MEMORY[0x277D66548];
    if (gridSizeClass5 == *MEMORY[0x277D66548])
    {
    }

    else
    {
      gridSizeClass6 = [defaultSmallClockWidgetIcon gridSizeClass];
      v44 = [gridSizeClass6 isEqualToString:v42];

      if (!v44)
      {
        selfCopy = v30;
        v11 = [(SBWidgetOnboardingLayoutBuilder *)v30 migratedTwoMediumWidgets:v13];
        defaultMediumCalendarWidgetIcon = SBLogWidgetDiscoverability();
        if (!os_log_type_enabled(defaultMediumCalendarWidgetIcon, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        *buf = 0;
        v37 = "Builder logic two mediums";
        goto LABEL_39;
      }
    }

    selfCopy = v30;
    v11 = [(SBWidgetOnboardingLayoutBuilder *)v30 migratedTwoSmallWidgets:v13];
    defaultMediumCalendarWidgetIcon = SBLogWidgetDiscoverability();
    if (!os_log_type_enabled(defaultMediumCalendarWidgetIcon, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v37 = "Builder logic two smalls";
    goto LABEL_39;
  }

  v14 = selfCopy;
  defaultSmallClockWidgetIcon = [(NSArray *)v13 firstObject];
  gridSizeClass7 = [defaultSmallClockWidgetIcon gridSizeClass];
  v16 = gridSizeClass7;
  v17 = *MEMORY[0x277D66518];
  if (gridSizeClass7 == *MEMORY[0x277D66518])
  {
  }

  else
  {
    gridSizeClass8 = [defaultSmallClockWidgetIcon gridSizeClass];
    v19 = [gridSizeClass8 isEqualToString:v17];

    if (!v19)
    {
      gridSizeClass9 = [defaultSmallClockWidgetIcon gridSizeClass];
      v21 = gridSizeClass9;
      v22 = *MEMORY[0x277D66520];
      if (gridSizeClass9 == *MEMORY[0x277D66520])
      {
      }

      else
      {
        gridSizeClass10 = [defaultSmallClockWidgetIcon gridSizeClass];
        v24 = [gridSizeClass10 isEqualToString:v22];

        if (!v24)
        {
          gridSizeClass11 = [defaultSmallClockWidgetIcon gridSizeClass];
          v26 = gridSizeClass11;
          v27 = *MEMORY[0x277D66548];
          if (gridSizeClass11 == *MEMORY[0x277D66548])
          {
          }

          else
          {
            gridSizeClass12 = [defaultSmallClockWidgetIcon gridSizeClass];
            v29 = [gridSizeClass12 isEqualToString:v27];

            if (!v29)
            {
              v11 = 0;
              selfCopy = v14;
              goto LABEL_52;
            }
          }

          v48 = SBLogWidgetDiscoverability();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEFAULT, "Builder logic one small", buf, 2u);
          }

          selfCopy = v14;
          v47 = [(SBWidgetOnboardingLayoutBuilder *)v14 migratedOneSmallWidget:defaultSmallClockWidgetIcon];
          goto LABEL_51;
        }
      }

      v46 = SBLogWidgetDiscoverability();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Builder logic one medium", buf, 2u);
      }

      selfCopy = v14;
      v47 = [(SBWidgetOnboardingLayoutBuilder *)v14 migratedOneMediumWidget:defaultSmallClockWidgetIcon];
LABEL_51:
      v11 = v47;
      goto LABEL_52;
    }
  }

  selfCopy = v14;
  v11 = [(SBWidgetOnboardingLayoutBuilder *)v14 migratedOneLargeWidget:defaultSmallClockWidgetIcon];
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
        activeWidget = [v55 activeWidget];
        kind = [activeWidget kind];
        if ([kind isEqualToString:@"com.apple.CalendarWidget.CalendarWidget"])
        {
          gridSizeClass13 = [v55 gridSizeClass];
          v59 = selfCopy;
          v60 = [(SBWidgetOnboardingLayoutBuilder *)selfCopy defaultCalendarWidgetIcon:gridSizeClass13];
          [v50 addObject:v60];

          v61 = SBLogWidgetDiscoverability();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v61, OS_LOG_TYPE_DEFAULT, "Builder logic: Upgrading calendar widget", buf, 2u);
          }

          selfCopy = v59;
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