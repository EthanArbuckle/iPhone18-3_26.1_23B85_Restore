@interface SPUISScreenTimeRequestResultBuilder
- (SPUISScreenTimeRequestResultBuilder)initWithResult:(id)a3;
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

- (SPUISScreenTimeRequestResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SPUISScreenTimeRequestResultBuilder;
  v5 = [(SPUISResultBuilder *)&v24 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2478] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestedItemName:v7];

    v8 = [v6 firstObject];
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

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestedItemDescription:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestDate:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2A70] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setExpireDate:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x277CC2450] withType:objc_opt_class()];
    -[SPUISScreenTimeRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v13 unsignedIntValue]);

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC2458] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestStatusString:v14];

    v15 = [v4 valueForAttribute:*MEMORY[0x277CC25F0] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequesterContactIdentifier:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestIdentifier:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRespondDate:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x277CC24B8] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequesterDSID:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [(SPUISScreenTimeRequestResultBuilder *)v5 setRequestAmountDuration:v19];

    v20 = [(SPUISScreenTimeRequestResultBuilder *)v5 requestAmountDuration];

    if (!v20)
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
  v2 = [(SPUISResultBuilder *)&v6 buildInlineCardSection];
  v3 = [v2 descriptions];
  v4 = [v3 firstObject];
  [v4 setMaxLines:1];

  return v2;
}

- (id)buildInlineCardSections
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(SPUISScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
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
  v2 = [(SPUISScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  [v2 setPreventThumbnailImageScaling:1];

  return v2;
}

- (id)buildDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISScreenTimeRequestResultBuilder *)self requestedItemDescription];

  if (v4)
  {
    v5 = [(SPUISScreenTimeRequestResultBuilder *)self requestedItemDescription];
    [v3 appendString:v5];
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
  v3 = [(SPUISScreenTimeRequestResultBuilder *)self requestStatus];
  v4 = [(SPUISScreenTimeRequestResultBuilder *)self requestStatus];
  if (v3 == 3 || v4 == 2)
  {
    v6 = [(SPUISScreenTimeRequestResultBuilder *)self requestAmountDuration];
    v7 = [v6 intValue];

    v8 = @"ASK_FOR_TIME_APPROVED15";
    v9 = @"ASK_FOR_TIME_DECLINED";
    if (v7 == 3600)
    {
      v9 = @"ASK_FOR_TIME_APPROVED_HOUR";
    }

    if (v7 != 900)
    {
      v8 = v9;
    }

    if (v7 == -1)
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
  v3 = [(SPUISScreenTimeRequestResultBuilder *)self requestDate];

  if (v3)
  {
    v4 = MEMORY[0x277D4C3A0];
    v5 = [(SPUISScreenTimeRequestResultBuilder *)self requestDate];
    v6 = [SPUISDateFormatManager dynamicCompactStringFromDate:v5];
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
  v3 = [(SPUISScreenTimeRequestResultBuilder *)self requesterDSID];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
  }

  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(SPUISScreenTimeRequestResultBuilder *)self requestIdentifier];
  v7 = [v5 stringWithFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@#ASK_%@", v3, v6];
  v8 = [v4 URLWithString:v7];

  v9 = [MEMORY[0x277D4C550] punchoutWithURL:v8];
  v10 = [(SPUISScreenTimeRequestResultBuilder *)self requestIdentifier];
  [v9 setLabel:v10];

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

    v6 = [(SPUISScreenTimeRequestResultBuilder *)self buildCommand];
    [v4 setCommand:v6];

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
  v2 = [(SPUISResultBuilder *)&v4 buildThumbnail];
  [v2 setCornerRoundingStyle:3];

  return v2;
}

@end