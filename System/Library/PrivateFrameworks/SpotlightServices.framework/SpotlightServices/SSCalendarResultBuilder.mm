@interface SSCalendarResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSCalendarResultBuilder)initWithResult:(id)result;
- (id)buildBackgroundColor;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildThumbnail;
- (id)buildTitle;
- (unint64_t)numberOfLinesForDescriptions;
@end

@implementation SSCalendarResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SSCalendarResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier isEqualToString:@"com.apple.mobilecal"];
  }

  return v5;
}

- (SSCalendarResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v20.receiver = self;
  v20.super_class = SSCalendarResultBuilder;
  v5 = [(SSResultBuilder *)&v20 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B30] withType:objc_opt_class()];
    [(SSCalendarResultBuilder *)v5 setStartDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963FE8] withType:objc_opt_class()];
    [(SSCalendarResultBuilder *)v5 setEndDate:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E58] withType:objc_opt_class()];
    [(SSCalendarResultBuilder *)v5 setCalendarName:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D60] withType:objc_opt_class()];
    [(SSCalendarResultBuilder *)v5 setDelegateCalendarName:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E69644B0] withType:objc_opt_class()];
    -[SSCalendarResultBuilder setIsAllDay:](v5, "setIsAllDay:", [v10 BOOLValue]);

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSCalendarResultBuilder *)v5 setEventName:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6964600] withType:objc_opt_class()];
    [(SSCalendarResultBuilder *)v5 setLocation:v12];

    location = [(SSCalendarResultBuilder *)v5 location];
    location2 = [(SSCalendarResultBuilder *)v5 location];
    v15 = [location stringByReplacingOccurrencesOfString:@"\\n+" withString:@" " options:1024 range:{0, objc_msgSend(location2, "length")}];
    [(SSCalendarResultBuilder *)v5 setLocation:v15];

    if (isMacOS())
    {
      identifier = [resultCopy valueForAttribute:*MEMORY[0x1E6964440] withType:objc_opt_class()];
      [(SSCalendarResultBuilder *)v5 setEventIdentifier:identifier];
    }

    else
    {
      identifier = [resultCopy identifier];
      v17 = [identifier componentsSeparatedByString:@"."];
      firstObject = [v17 firstObject];
      [(SSCalendarResultBuilder *)v5 setEventIdentifier:firstObject];
    }
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  location = [(SSCalendarResultBuilder *)self location];
  if (location)
  {
    [v3 addObject:location];
  }

  if (isMacOS())
  {
    v5 = [objc_opt_class() isSearchToolClient] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  startDate = [(SSCalendarResultBuilder *)self startDate];
  if (startDate)
  {
    v7 = objc_opt_class();
    endDate = [(SSCalendarResultBuilder *)self endDate];
    v9 = [v7 stringWithStartDate:startDate endDate:endDate isAllDay:{-[SSCalendarResultBuilder isAllDay](self, "isAllDay")}];
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
    calendarName = [(SSCalendarResultBuilder *)self calendarName];
    delegateCalendarName = [(SSCalendarResultBuilder *)self delegateCalendarName];
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
  v29.super_class = SSCalendarResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v29 buildInlineCardSection];
  if ([v9 length])
  {
    v14 = [MEMORY[0x1E69CA0F0] textWithString:v9];
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

  v23 = *MEMORY[0x1E69E9840];

  return buildInlineCardSection;
}

- (id)buildBackgroundColor
{
  eventIdentifier = [(SSCalendarResultBuilder *)self eventIdentifier];

  if (eventIdentifier)
  {
    buildBackgroundColor = objc_opt_new();
    eventIdentifier2 = [(SSCalendarResultBuilder *)self eventIdentifier];
    [buildBackgroundColor setEventIdentifier:eventIdentifier2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SSCalendarResultBuilder;
    buildBackgroundColor = [(SSResultBuilder *)&v7 buildBackgroundColor];
  }

  return buildBackgroundColor;
}

- (id)buildCompactCardSection
{
  v3 = objc_opt_new();
  startDate = [(SSCalendarResultBuilder *)self startDate];
  if (startDate)
  {
    endDate = [(SSCalendarResultBuilder *)self endDate];
    v6 = [SSDateFormatManager stringsFromDate:startDate toDate:endDate isAllDay:[(SSCalendarResultBuilder *)self isAllDay]];

    [v3 addObjectsFromArray:v6];
  }

  location = [(SSCalendarResultBuilder *)self location];
  if (location)
  {
    [v3 addObject:location];
  }

  v11.receiver = self;
  v11.super_class = SSCalendarResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v11 buildCompactCardSection];
  v9 = [objc_opt_class() richTextsFromStrings:v3];
  [buildCompactCardSection setDescriptions:v9];

  return buildCompactCardSection;
}

- (id)buildThumbnail
{
  startDate = [(SSCalendarResultBuilder *)self startDate];
  if (startDate)
  {
    buildThumbnail = [objc_alloc(MEMORY[0x1E69C9EF0]) initWithDate:startDate];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SSCalendarResultBuilder;
    buildThumbnail = [(SSResultBuilder *)&v7 buildThumbnail];
  }

  v5 = buildThumbnail;

  return v5;
}

- (id)buildTitle
{
  v10.receiver = self;
  v10.super_class = SSCalendarResultBuilder;
  buildTitle = [(SSResultBuilder *)&v10 buildTitle];
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
  if ([objc_opt_class() isSearchToolClient] && (isMacOS() & 1) != 0)
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = SSCalendarResultBuilder;
  return [(SSResultBuilder *)&v4 numberOfLinesForDescriptions];
}

@end