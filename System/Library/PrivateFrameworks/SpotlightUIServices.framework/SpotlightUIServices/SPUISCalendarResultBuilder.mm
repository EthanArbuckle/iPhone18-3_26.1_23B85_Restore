@interface SPUISCalendarResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISCalendarResultBuilder)initWithResult:(id)result;
- (id)buildBackgroundColor;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildThumbnail;
- (id)buildTitle;
- (unint64_t)numberOfLinesForDescriptions;
@end

@implementation SPUISCalendarResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SPUISCalendarResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier isEqualToString:@"com.apple.iCal"];
  }

  return v5;
}

- (SPUISCalendarResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v20.receiver = self;
  v20.super_class = SPUISCalendarResultBuilder;
  v5 = [(SPUISResultBuilder *)&v20 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC3128] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setStartDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC27A0] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setEndDate:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2630] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setCalendarName:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2520] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setDelegateCalendarName:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2C60] withType:objc_opt_class()];
    -[SPUISCalendarResultBuilder setIsAllDay:](v5, "setIsAllDay:", [v10 BOOLValue]);

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setEventName:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2DD0] withType:objc_opt_class()];
    [(SPUISCalendarResultBuilder *)v5 setLocation:v12];

    location = [(SPUISCalendarResultBuilder *)v5 location];
    location2 = [(SPUISCalendarResultBuilder *)v5 location];
    v15 = [location stringByReplacingOccurrencesOfString:@"\\n+" withString:@" " options:1024 range:{0, objc_msgSend(location2, "length")}];
    [(SPUISCalendarResultBuilder *)v5 setLocation:v15];

    if (+[SPUISUtilities isMacOS])
    {
      identifier = [resultCopy valueForAttribute:*MEMORY[0x277CC2BD8] withType:objc_opt_class()];
      [(SPUISCalendarResultBuilder *)v5 setEventIdentifier:identifier];
    }

    else
    {
      identifier = [resultCopy identifier];
      v17 = [identifier componentsSeparatedByString:@"."];
      firstObject = [v17 firstObject];
      [(SPUISCalendarResultBuilder *)v5 setEventIdentifier:firstObject];
    }
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  location = [(SPUISCalendarResultBuilder *)self location];
  if (location)
  {
    [v3 addObject:location];
  }

  if (+[SPUISUtilities isMacOS])
  {
    v5 = [objc_opt_class() isSearchToolClient] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  startDate = [(SPUISCalendarResultBuilder *)self startDate];
  if (startDate)
  {
    v7 = objc_opt_class();
    endDate = [(SPUISCalendarResultBuilder *)self endDate];
    v9 = [v7 stringWithStartDate:startDate endDate:endDate isAllDay:{-[SPUISCalendarResultBuilder isAllDay](self, "isAllDay")}];
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
    calendarName = [(SPUISCalendarResultBuilder *)self calendarName];
    delegateCalendarName = [(SPUISCalendarResultBuilder *)self delegateCalendarName];
    if (delegateCalendarName)
    {
      [v10 addObject:delegateCalendarName];
    }

    if (calendarName)
    {
      [v10 addObject:calendarName];
    }
  }

  v9 = 0;
LABEL_18:
  v29.receiver = self;
  v29.super_class = SPUISCalendarResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v29 buildInlineCardSection];
  if ([v9 length])
  {
    v14 = [MEMORY[0x277D4C3A0] textWithString:v9];
    [buildInlineCardSection setSecondaryTitle:v14];
  }

  else
  {
    [buildInlineCardSection setSecondaryTitle:0];
  }

  title = [buildInlineCardSection title];
  [title setMaxLines:1];

  secondaryTitle = [buildInlineCardSection secondaryTitle];
  [buildInlineCardSection setIsSecondaryTitleDetached:secondaryTitle != 0];

  if ([v3 count])
  {
    v17 = [objc_opt_class() richTextsFromStrings:v3];
    [buildInlineCardSection setDescriptions:v17];
  }

  else
  {
    [buildInlineCardSection setDescriptions:0];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  descriptions = [buildInlineCardSection descriptions];
  v19 = [descriptions countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(descriptions);
        }

        [*(*(&v25 + 1) + 8 * i) setMaxLines:1];
      }

      v20 = [descriptions countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];

  return buildInlineCardSection;
}

- (id)buildBackgroundColor
{
  eventIdentifier = [(SPUISCalendarResultBuilder *)self eventIdentifier];

  if (eventIdentifier)
  {
    buildBackgroundColor = objc_opt_new();
    eventIdentifier2 = [(SPUISCalendarResultBuilder *)self eventIdentifier];
    [buildBackgroundColor setEventIdentifier:eventIdentifier2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISCalendarResultBuilder;
    buildBackgroundColor = [(SPUISResultBuilder *)&v7 buildBackgroundColor];
  }

  return buildBackgroundColor;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  startDate = [(SPUISCalendarResultBuilder *)self startDate];
  if (startDate)
  {
    endDate = [(SPUISCalendarResultBuilder *)self endDate];
    v6 = [SPUISDateFormatManager stringsFromDate:startDate toDate:endDate isAllDay:[(SPUISCalendarResultBuilder *)self isAllDay]];

    [v3 addObjectsFromArray:v6];
  }

  location = [(SPUISCalendarResultBuilder *)self location];
  if (location)
  {
    [v3 addObject:location];
  }

  v11.receiver = self;
  v11.super_class = SPUISCalendarResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v11 buildCompactCardSection];
  v9 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v9];

  return buildCompactCardSection;
}

- (id)buildThumbnail
{
  startDate = [(SPUISCalendarResultBuilder *)self startDate];
  if (startDate)
  {
    buildThumbnail = [objc_alloc(MEMORY[0x277D4C220]) initWithDate:startDate];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISCalendarResultBuilder;
    buildThumbnail = [(SPUISResultBuilder *)&v7 buildThumbnail];
  }

  v5 = buildThumbnail;

  return v5;
}

- (id)buildTitle
{
  v10.receiver = self;
  v10.super_class = SPUISCalendarResultBuilder;
  buildTitle = [(SPUISResultBuilder *)&v10 buildTitle];
  text = [buildTitle text];
  if (text)
  {
    v4 = text;
    formattedTextPieces = [buildTitle formattedTextPieces];

    if (!formattedTextPieces)
    {
      v6 = objc_opt_class();
      text2 = [buildTitle text];
      v8 = [v6 whiteSpaceCondensedStringForString:text2];
      [buildTitle setText:v8];
    }
  }

  return buildTitle;
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