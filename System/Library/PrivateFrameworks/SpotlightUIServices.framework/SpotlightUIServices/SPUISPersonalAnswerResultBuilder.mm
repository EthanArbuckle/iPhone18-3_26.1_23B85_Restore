@interface SPUISPersonalAnswerResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISPersonalAnswerResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildDescriptions;
- (id)buildInlineCardSections;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)processRawTitleString:(id)string;
@end

@implementation SPUISPersonalAnswerResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SPUISPersonalAnswerResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier isEqualToString:@"com.apple.spotlight.events"];
  }

  return v5;
}

- (SPUISPersonalAnswerResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = SPUISPersonalAnswerResultBuilder;
  v5 = [(SPUISResultBuilder *)&v12 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISPersonalAnswerResultBuilder *)v5 setDisplayName:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    v8 = [(SPUISPersonalAnswerResultBuilder *)v5 processRawTitleString:v7];
    [(SPUISPersonalAnswerResultBuilder *)v5 setTitleString:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC3128] withType:objc_opt_class()];
    [(SPUISPersonalAnswerResultBuilder *)v5 setStartDate:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC27A0] withType:objc_opt_class()];
    [(SPUISPersonalAnswerResultBuilder *)v5 setEndDate:v10];
  }

  return v5;
}

- (id)processRawTitleString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"Flight: "])
  {
    v5 = [stringCopy stringByReplacingOccurrencesOfString:@": " withString:@" "];

    [(SPUISPersonalAnswerResultBuilder *)self setIsFlight:1];
  }

  else if ([stringCopy hasPrefix:@"Stay: "])
  {
    v5 = [stringCopy stringByReplacingOccurrencesOfString:@"Stay: " withString:&stru_287C50EE8];

    [(SPUISPersonalAnswerResultBuilder *)self setIsHotel:1];
  }

  else
  {
    v5 = stringCopy;
    if ([stringCopy hasPrefix:@"Reservation: "])
    {
      v5 = [stringCopy stringByReplacingOccurrencesOfString:@"Reservation: " withString:&stru_287C50EE8];

      [(SPUISPersonalAnswerResultBuilder *)self setIsRestaurant:1];
    }
  }

  v6 = v5;

  return v5;
}

- (id)buildInlineCardSections
{
  v4.receiver = self;
  v4.super_class = SPUISPersonalAnswerResultBuilder;
  buildInlineCardSections = [(SPUISResultBuilder *)&v4 buildInlineCardSections];

  return buildInlineCardSections;
}

- (id)buildTitle
{
  displayName = [(SPUISPersonalAnswerResultBuilder *)self displayName];
  v4 = [displayName length];

  if (v4)
  {
    displayName2 = [(SPUISPersonalAnswerResultBuilder *)self displayName];
  }

  else
  {
    titleString = [(SPUISPersonalAnswerResultBuilder *)self titleString];
    v7 = [titleString length];

    if (v7)
    {
      [(SPUISPersonalAnswerResultBuilder *)self titleString];
    }

    else
    {
      [SPUISUtilities localizedStringForKey:@"NO_TITLE"];
    }
    displayName2 = ;
  }

  v8 = displayName2;
  if (displayName2)
  {
    v9 = [MEMORY[0x277D4C598] textWithString:displayName2];
    displayName3 = [(SPUISPersonalAnswerResultBuilder *)self displayName];
    v11 = [displayName3 length];

    if (v11)
    {
      [v9 setMaxLines:2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)buildDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  displayName = [(SPUISPersonalAnswerResultBuilder *)self displayName];

  if (displayName)
  {
    displayName = self->_titleString;
  }

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"MMMM d, yyyy"];
  startDate = [(SPUISPersonalAnswerResultBuilder *)self startDate];
  v6 = [v4 stringFromDate:startDate];

  [v4 setDateFormat:@"h:mm a"];
  startDate2 = [(SPUISPersonalAnswerResultBuilder *)self startDate];
  v8 = [v4 stringFromDate:startDate2];

  if ([(SPUISPersonalAnswerResultBuilder *)self isFlight])
  {
    endDate = [(SPUISPersonalAnswerResultBuilder *)self endDate];
    v10 = [v4 stringFromDate:endDate];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ to %@", v8, v10];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Check in at %@", v8];
  }

  v12 = [MEMORY[0x277D4C598] textWithString:displayName];
  v18[0] = v12;
  v13 = [MEMORY[0x277D4C598] textWithString:v6];
  v18[1] = v13;
  v14 = [MEMORY[0x277D4C598] textWithString:v11];
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  if ([(SPUISPersonalAnswerResultBuilder *)self isFlight])
  {
    v4 = @"airplane.circle.fill";
  }

  else if ([(SPUISPersonalAnswerResultBuilder *)self isHotel])
  {
    v4 = @"bed.double.circle.fill";
  }

  else
  {
    if (![(SPUISPersonalAnswerResultBuilder *)self isRestaurant])
    {
      goto LABEL_8;
    }

    v4 = @"fork.knife.circle.fill";
  }

  [v3 setSymbolName:v4];
LABEL_8:
  [v3 setPrimaryColor:4];

  return v3;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  v3 = objc_opt_new();
  [v3 setSymbolName:@"envelope.fill"];
  [v3 setPrimaryColor:7];

  return v3;
}

@end