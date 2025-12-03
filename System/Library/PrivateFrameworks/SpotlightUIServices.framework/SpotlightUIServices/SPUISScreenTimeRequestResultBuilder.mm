@interface SPUISScreenTimeRequestResultBuilder
- (SPUISScreenTimeRequestResultBuilder)initWithResult:(id)result;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildFootnote;
- (id)buildInlineCardSection;
- (id)buildInlineCardSections;
- (id)buildSecondaryTitle;
- (id)buildThumbnail;
- (id)subclassBuildHorizontallyScrollingCardSection;
@end

@implementation SPUISScreenTimeRequestResultBuilder

- (SPUISScreenTimeRequestResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v24.receiver = self;
  v24.super_class = SPUISScreenTimeRequestResultBuilder;
  v5 = [(SPUISResultBuilder *)&v24 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2478] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestedItemName:v7];

    firstObject = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    [(SPUISScreenTimeRequestResultBuilder *)v5 setApprovers:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestedItemDescription:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestDate:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2A70] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setExpireDate:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC2450] withType:objc_opt_class()];
    -[SPUISScreenTimeRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v13 unsignedIntValue]);

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC2458] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestStatusString:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC25F0] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequesterContactIdentifier:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestIdentifier:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRespondDate:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x277CC24B8] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequesterDSID:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestAmountDuration:v19];

    requestAmountDuration = [(SPUISScreenTimeRequestResultBuilder *)v5 requestAmountDuration];

    if (!requestAmountDuration)
    {
      if ([(SPUISScreenTimeRequestResultBuilder *)v5 requestStatus]== 3)
      {
        v21 = 0xFFFFFFFFLL;
      }

      else
      {
        v21 = 0;
      }

      v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
      [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestAmountDuration:v22];
    }
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v6.receiver = self;
  v6.super_class = SPUISScreenTimeRequestResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v6 buildInlineCardSection];
  descriptions = [buildInlineCardSection descriptions];
  firstObject = [descriptions firstObject];
  [firstObject setMaxLines:1];

  return buildInlineCardSection;
}

- (id)buildInlineCardSections
{
  v7[1] = *MEMORY[0x277D85DE8];
  buildInlineCardSection = [(SPUISScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  v3 = buildInlineCardSection;
  if (buildInlineCardSection)
  {
    v7[0] = buildInlineCardSection;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  buildInlineCardSection = [(SPUISScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  [buildInlineCardSection setPreventThumbnailImageScaling:1];

  return buildInlineCardSection;
}

- (id)buildDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  requestedItemDescription = [(SPUISScreenTimeRequestResultBuilder *)self requestedItemDescription];

  if (requestedItemDescription)
  {
    requestedItemDescription2 = [(SPUISScreenTimeRequestResultBuilder *)self requestedItemDescription];
    [v3 appendString:requestedItemDescription2];
  }

  if ([v3 length])
  {
    v6 = [MEMORY[0x277D4C598] textWithString:v3];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)buildFootnote
{
  requestStatus = [(SPUISScreenTimeRequestResultBuilder *)self requestStatus];
  requestStatus2 = [(SPUISScreenTimeRequestResultBuilder *)self requestStatus];
  if (requestStatus == 3 || requestStatus2 == 2)
  {
    requestAmountDuration = [(SPUISScreenTimeRequestResultBuilder *)self requestAmountDuration];
    intValue = [requestAmountDuration intValue];

    v8 = @"ASK_FOR_TIME_APPROVED15";
    v9 = @"ASK_FOR_TIME_DECLINED";
    if (intValue == 3600)
    {
      v9 = @"ASK_FOR_TIME_APPROVED_HOUR";
    }

    if (intValue != 900)
    {
      v8 = v9;
    }

    if (intValue == -1)
    {
      v10 = @"ASK_FOR_TIME_APPROVED_DAY";
    }

    else
    {
      v10 = v8;
    }

    v11 = [SPUISUtilities localizedStringForKey:v10];
    v5 = [MEMORY[0x277D4C598] textWithString:v11];
  }

  else
  {
    v5 = [MEMORY[0x277D4C598] textWithString:@" "];
  }

  return v5;
}

- (id)buildSecondaryTitle
{
  requestDate = [(SPUISScreenTimeRequestResultBuilder *)self requestDate];

  if (requestDate)
  {
    v4 = MEMORY[0x277D4C3A0];
    requestDate2 = [(SPUISScreenTimeRequestResultBuilder *)self requestDate];
    v6 = [SPUISDateFormatManager dynamicCompactStringFromDate:requestDate2];
    v7 = [v4 textWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)buildCommand
{
  requesterDSID = [(SPUISScreenTimeRequestResultBuilder *)self requesterDSID];
  if (!requesterDSID)
  {
    requesterDSID = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
  }

  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  requestIdentifier = [(SPUISScreenTimeRequestResultBuilder *)self requestIdentifier];
  v7 = [v5 stringWithFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@#ASK_%@", requesterDSID, requestIdentifier];
  v8 = [v4 URLWithString:v7];

  v9 = [MEMORY[0x277D4C550] punchoutWithURL:v8];
  requestIdentifier2 = [(SPUISScreenTimeRequestResultBuilder *)self requestIdentifier];
  [v9 setLabel:requestIdentifier2];

  v11 = objc_opt_new();
  [v11 setPunchout:v9];

  return v11;
}

- (id)buildButtonItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(SPUISScreenTimeRequestResultBuilder *)self requestStatus]== 3 || [(SPUISScreenTimeRequestResultBuilder *)self requestStatus]== 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [SPUISUtilities localizedStringForKey:@"VIEW"];
    [v4 setTitle:v5];

    buildCommand = [(SPUISScreenTimeRequestResultBuilder *)self buildCommand];
    [v4 setCommand:buildCommand];

    v9[0] = v4;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildThumbnail
{
  v4.receiver = self;
  v4.super_class = SPUISScreenTimeRequestResultBuilder;
  buildThumbnail = [(SPUISResultBuilder *)&v4 buildThumbnail];
  [buildThumbnail setCornerRoundingStyle:3];

  return buildThumbnail;
}

@end