@interface SPUISCalendarResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISCalendarResultBuilder)initWithResult:(id)a3;
- (id)buildBackgroundColor;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildThumbnail;
- (id)buildTitle;
- (unint64_t)numberOfLinesForDescriptions;
@end

@implementation SPUISCalendarResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SPUISCalendarResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 applicationBundleIdentifier];
    v5 = [v6 isEqualToString:@"com.apple.iCal"];
  }

  return v5;
}

- (SPUISCalendarResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SPUISCalendarResultBuilder;
  v5 = [(SPUISResultBuilder *)&v20 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC3128] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setStartDate:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC27A0] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setEndDate:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC2630] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setCalendarName:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2520] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setDelegateCalendarName:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2C60] withType:objc_opt_class()];
    -[SPUISCalendarResultBuilder setIsAllDay:](v5, "setIsAllDay:", [v10 BOOLValue]);

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setEventName:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2DD0] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setLocation:v12];

    v13 = [(SPUISCalendarResultBuilder *)v5 location];
    v14 = [(SPUISCalendarResultBuilder *)v5 location];
    v15 = [v13 stringByReplacingOccurrencesOfString:@"\\n+" withString:@" " options:1024 range:{0, objc_msgSend(v14, "length")}];
    [(SPUISCalendarResultBuilder *)v5 setLocation:v15];

    if (+[SPUISUtilities isMacOS])
    {
      v16 = [v4 valueForAttribute:*MEMORY[0x277CC2BD8] withType:objc_opt_class()];
      [(SPUISCalendarResultBuilder *)v5 setEventIdentifier:v16];
    }

    else
    {
      v16 = [v4 identifier];
      v17 = [v16 componentsSeparatedByString:@"."];
      v18 = [v17 firstObject];
      [(SPUISCalendarResultBuilder *)v5 setEventIdentifier:v18];
    }
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISCalendarResultBuilder *)self location];
  if (v4)
  {
    [v3 addObject:v4];
  }

  if (+[SPUISUtilities isMacOS])
  {
    v5 = [objc_opt_class() isSearchToolClient] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SPUISCalendarResultBuilder *)self startDate];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(SPUISCalendarResultBuilder *)self endDate];
    v9 = [v7 stringWithStartDate:v6 endDate:v8 isAllDay:{-[SPUISCalendarResultBuilder isAllDay](self, "isAllDay")}];
    if (v5)
    {

      v10 = objc_opt_new();
      goto LABEL_18;
    }

    [v3 addObject:v9];

    v10 = objc_opt_new();
    goto LABEL_12;
  }

  v10 = objc_opt_new();
  if ((v5 & 1) == 0)
  {
LABEL_12:
    v11 = [(SPUISCalendarResultBuilder *)self calendarName];
    v12 = [(SPUISCalendarResultBuilder *)self delegateCalendarName];
    if (v12)
    {
      [v10 addObject:v12];
    }

    if (v11)
    {
      [v10 addObject:v11];
    }
  }

  v9 = 0;
LABEL_18:
  v29.receiver = self;
  v29.super_class = SPUISCalendarResultBuilder;
  v13 = [(SPUISResultBuilder *)&v29 buildInlineCardSection];
  if ([v9 length])
  {
    v14 = [MEMORY[0x277D4C3A0] textWithString:v9];
    [v13 setSecondaryTitle:v14];
  }

  else
  {
    [v13 setSecondaryTitle:0];
  }

  v15 = [v13 title];
  [v15 setMaxLines:1];

  v16 = [v13 secondaryTitle];
  [v13 setIsSecondaryTitleDetached:v16 != 0];

  if ([v3 count])
  {
    v17 = [objc_opt_class() richTextsFromStrings:v3];
    [v13 setDescriptions:v17];
  }

  else
  {
    [v13 setDescriptions:0];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [v13 descriptions];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * i) setMaxLines:1];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)buildBackgroundColor
{
  v3 = [(SPUISCalendarResultBuilder *)self eventIdentifier];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SPUISCalendarResultBuilder *)self eventIdentifier];
    [v4 setEventIdentifier:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISCalendarResultBuilder;
    v4 = [(SPUISResultBuilder *)&v7 buildBackgroundColor];
  }

  return v4;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  v4 = [(SPUISCalendarResultBuilder *)self startDate];
  if (v4)
  {
    v5 = [(SPUISCalendarResultBuilder *)self endDate];
    v6 = [SPUISDateFormatManager stringsFromDate:v4 toDate:v5 isAllDay:[(SPUISCalendarResultBuilder *)self isAllDay]];

    [v3 addObjectsFromArray:v6];
  }

  v7 = [(SPUISCalendarResultBuilder *)self location];
  if (v7)
  {
    [v3 addObject:v7];
  }

  v11.receiver = self;
  v11.super_class = SPUISCalendarResultBuilder;
  v8 = [(SPUISResultBuilder *)&v11 buildCompactCardSection];
  v9 = [objc_opt_class() richTextsFromStrings:v3];
  [v8 setDescriptions:v9];

  return v8;
}

- (id)buildThumbnail
{
  v3 = [(SPUISCalendarResultBuilder *)self startDate];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D4C220]) initWithDate:v3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISCalendarResultBuilder;
    v4 = [(SPUISResultBuilder *)&v7 buildThumbnail];
  }

  v5 = v4;

  return v5;
}

- (id)buildTitle
{
  v10.receiver = self;
  v10.super_class = SPUISCalendarResultBuilder;
  v2 = [(SPUISResultBuilder *)&v10 buildTitle];
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 formattedTextPieces];

    if (!v5)
    {
      v6 = objc_opt_class();
      v7 = [v2 text];
      v8 = [v6 whiteSpaceCondensedStringForString:v7];
      [v2 setText:v8];
    }
  }

  return v2;
}

- (unint64_t)numberOfLinesForDescriptions
{
  if ([objc_opt_class() isSearchToolClient] && +[SPUISUtilities isMacOS](SPUISUtilities, "isMacOS"))
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = SPUISCalendarResultBuilder;
  return [(SPUISResultBuilder *)&v4 numberOfLinesForDescriptions];
}

@end