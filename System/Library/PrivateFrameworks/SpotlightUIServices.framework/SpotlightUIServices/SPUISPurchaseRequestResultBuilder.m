@interface SPUISPurchaseRequestResultBuilder
- (SPUISPurchaseRequestResultBuilder)initWithResult:(id)a3;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildFootnote;
- (id)buildInlineCardSection;
- (id)buildSecondaryTitle;
- (id)buildThumbnail;
- (id)subclassBuildHorizontallyScrollingCardSection;
@end

@implementation SPUISPurchaseRequestResultBuilder

- (SPUISPurchaseRequestResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SPUISPurchaseRequestResultBuilder;
  v5 = [(SPUISResultBuilder *)&v25 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2478] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC3008] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setAgeRating:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setAppName:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2C48] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setAppPrice:v9];

    v10 = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    [(SPUISPurchaseRequestResultBuilder *)v5 setApprovers:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setAppType:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setRequestDate:v13];

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC2450] withType:objc_opt_class()];
    -[SPUISPurchaseRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v14 unsignedIntValue]);

    v15 = [v4 valueForAttribute:*MEMORY[0x277CC2458] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setRequestStatusString:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x277CC25F0] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setRequesterContactIdentifier:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setRequestIdentifier:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISPurchaseRequestResultBuilder *)v5 setRespondDate:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x277CC3120] withType:objc_opt_class()];
    [v19 floatValue];
    [(SPUISPurchaseRequestResultBuilder *)v5 setStarRating:v20];

    v21 = [v4 valueForAttribute:*MEMORY[0x277CC31C0] withType:objc_opt_class()];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_287C50EE8;
    }

    [(SPUISPurchaseRequestResultBuilder *)v5 setThumbnailAppType:v23];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v6.receiver = self;
  v6.super_class = SPUISPurchaseRequestResultBuilder;
  v2 = [(SPUISResultBuilder *)&v6 buildInlineCardSection];
  v3 = [v2 descriptions];
  v4 = [v3 firstObject];
  [v4 setMaxLines:1];

  return v2;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  v2 = [(SPUISPurchaseRequestResultBuilder *)self buildInlineCardSection];
  [v2 setPreventThumbnailImageScaling:1];

  return v2;
}

- (id)buildDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISPurchaseRequestResultBuilder *)self appType];

  if (v4)
  {
    v5 = [(SPUISPurchaseRequestResultBuilder *)self appType];
    [v3 appendString:v5];
  }

  v6 = [(SPUISPurchaseRequestResultBuilder *)self appPrice];

  if (v6)
  {
    if ([v3 length])
    {
      [v3 appendString:@" · "];
    }

    v7 = [(SPUISPurchaseRequestResultBuilder *)self appPrice];
    [v3 appendString:v7];
  }

  if ([v3 length])
  {
    v8 = [MEMORY[0x277D4C598] textWithString:v3];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)buildFootnote
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISPurchaseRequestResultBuilder *)self requestStatus];
  v4 = [(SPUISPurchaseRequestResultBuilder *)self requestStatus];
  if (v3 == 3 || v4 == 2)
  {
    if (v3 == 3)
    {
      v15 = @"APPROVED";
    }

    else
    {
      v15 = @"DENIED";
    }

    v12 = [SPUISUtilities localizedStringForKey:v15];
    v16 = [(SPUISPurchaseRequestResultBuilder *)self approvers];
    v13 = [v16 firstObject];

    v17 = MEMORY[0x277CCACA8];
    v18 = [SPUISUtilities localizedStringForKey:@"APPROVED_BY_FORMAT"];
    v19 = [v17 localizedStringWithFormat:v18, v12, v13];

    v5 = [MEMORY[0x277D4C598] textWithString:v19];
  }

  else
  {
    v5 = objc_opt_new();
    [(SPUISPurchaseRequestResultBuilder *)self starRating];
    [v5 setStarRating:?];
    v6 = [(SPUISPurchaseRequestResultBuilder *)self ageRating];

    if (!v6)
    {
      goto LABEL_12;
    }

    [(SPUISPurchaseRequestResultBuilder *)self starRating];
    v7 = &stru_287C50EE8;
    if (v8 != 0.0)
    {
      v7 = @"· ";
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = v7;
    v11 = [(SPUISPurchaseRequestResultBuilder *)self ageRating];
    v12 = [v9 localizedStringWithFormat:@"%@%@", v10, v11];

    v13 = [MEMORY[0x277D4C3A0] textWithString:v12];
    v22[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v5 setFormattedTextPieces:v14];
  }

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)buildSecondaryTitle
{
  v3 = [(SPUISPurchaseRequestResultBuilder *)self requestDate];

  if (v3)
  {
    v4 = MEMORY[0x277D4C3A0];
    v5 = [(SPUISPurchaseRequestResultBuilder *)self requestDate];
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
  v3 = objc_opt_new();
  v4 = [(SPUISPurchaseRequestResultBuilder *)self requestIdentifier];
  [v3 setRequestIdentifier:v4];

  return v3;
}

- (id)buildButtonItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(SPUISPurchaseRequestResultBuilder *)self requestStatus]== 3 || [(SPUISPurchaseRequestResultBuilder *)self requestStatus]== 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SPUISPurchaseRequestResultBuilder *)self buildCommand];
    v5 = objc_opt_new();
    v6 = [SPUISUtilities localizedStringForKey:@"VIEW"];
    [v5 setTitle:v6];

    [v5 setCommand:v4];
    v9[0] = v5;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildThumbnail
{
  v7.receiver = self;
  v7.super_class = SPUISPurchaseRequestResultBuilder;
  v3 = [(SPUISResultBuilder *)&v7 buildThumbnail];
  v4 = [(SPUISPurchaseRequestResultBuilder *)self thumbnailAppType];
  if ([&unk_287C59F30 containsObject:v4])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [v3 setCornerRoundingStyle:v5];

  return v3;
}

@end