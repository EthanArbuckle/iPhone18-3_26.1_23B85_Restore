@interface SSPurchaseRequestResultBuilder
- (SSPurchaseRequestResultBuilder)initWithResult:(id)a3;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildFootnote;
- (id)buildInlineCardSection;
- (id)buildSecondaryTitle;
- (id)buildThumbnail;
- (id)subclassBuildHorizontallyScrollingCardSection;
@end

@implementation SSPurchaseRequestResultBuilder

- (SSPurchaseRequestResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SSPurchaseRequestResultBuilder;
  v5 = [(SSResultBuilder *)&v25 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963C88] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x1E6964990] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAgeRating:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAppName:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E6964490] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAppPrice:v9];

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

    [(SSPurchaseRequestResultBuilder *)v5 setApprovers:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAppType:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequestDate:v13];

    v14 = [v4 valueForAttribute:*MEMORY[0x1E6963C60] withType:objc_opt_class()];
    -[SSPurchaseRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v14 unsignedIntValue]);

    v15 = [v4 valueForAttribute:*MEMORY[0x1E6963C68] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequestStatusString:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x1E6963E40] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequesterContactIdentifier:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequestIdentifier:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRespondDate:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x1E6964B28] withType:objc_opt_class()];
    [v19 floatValue];
    [(SSPurchaseRequestResultBuilder *)v5 setStarRating:v20];

    v21 = [v4 valueForAttribute:*MEMORY[0x1E6964BE8] withType:objc_opt_class()];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1F556FE60;
    }

    [(SSPurchaseRequestResultBuilder *)v5 setThumbnailAppType:v23];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v6.receiver = self;
  v6.super_class = SSPurchaseRequestResultBuilder;
  v2 = [(SSResultBuilder *)&v6 buildInlineCardSection];
  v3 = [v2 descriptions];
  v4 = [v3 firstObject];
  [v4 setMaxLines:1];

  return v2;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  v2 = [(SSPurchaseRequestResultBuilder *)self buildInlineCardSection];
  [v2 setPreventThumbnailImageScaling:1];

  return v2;
}

- (id)buildDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SSPurchaseRequestResultBuilder *)self appType];

  if (v4)
  {
    v5 = [(SSPurchaseRequestResultBuilder *)self appType];
    [v3 appendString:v5];
  }

  v6 = [(SSPurchaseRequestResultBuilder *)self appPrice];

  if (v6)
  {
    if ([v3 length])
    {
      [v3 appendString:@" · "];
    }

    v7 = [(SSPurchaseRequestResultBuilder *)self appPrice];
    [v3 appendString:v7];
  }

  if ([v3 length])
  {
    v8 = [MEMORY[0x1E69CA3A0] textWithString:v3];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)buildFootnote
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSPurchaseRequestResultBuilder *)self requestStatus];
  v4 = [(SSPurchaseRequestResultBuilder *)self requestStatus];
  if (v3 == 3 || v4 == 2)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = v15;
    if (v3 == 3)
    {
      v17 = @"APPROVED";
    }

    else
    {
      v17 = @"DENIED";
    }

    v12 = [v15 localizedStringForKey:v17 value:&stru_1F556FE60 table:@"SpotlightServices"];

    v18 = [(SSPurchaseRequestResultBuilder *)self approvers];
    v13 = [v18 firstObject];

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"APPROVED_BY_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v14 = [v19 localizedStringWithFormat:v21, v12, v13];

    v5 = [MEMORY[0x1E69CA3A0] textWithString:v14];
  }

  else
  {
    v5 = objc_opt_new();
    [(SSPurchaseRequestResultBuilder *)self starRating];
    [v5 setStarRating:?];
    v6 = [(SSPurchaseRequestResultBuilder *)self ageRating];

    if (!v6)
    {
      goto LABEL_12;
    }

    [(SSPurchaseRequestResultBuilder *)self starRating];
    v7 = &stru_1F556FE60;
    if (v8 != 0.0)
    {
      v7 = @"· ";
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = v7;
    v11 = [(SSPurchaseRequestResultBuilder *)self ageRating];
    v12 = [v9 localizedStringWithFormat:@"%@%@", v10, v11];

    v13 = [MEMORY[0x1E69CA0F0] textWithString:v12];
    v24[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v5 setFormattedTextPieces:v14];
  }

LABEL_12:
  v22 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)buildSecondaryTitle
{
  v3 = [(SSPurchaseRequestResultBuilder *)self requestDate];

  if (v3)
  {
    v4 = MEMORY[0x1E69CA0F0];
    v5 = [(SSPurchaseRequestResultBuilder *)self requestDate];
    v6 = [SSDateFormatManager dynamicCompactStringFromDate:v5];
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
  v4 = [(SSPurchaseRequestResultBuilder *)self requestIdentifier];
  [v3 setRequestIdentifier:v4];

  return v3;
}

- (id)buildButtonItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(SSPurchaseRequestResultBuilder *)self requestStatus]== 3 || [(SSPurchaseRequestResultBuilder *)self requestStatus]== 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SSPurchaseRequestResultBuilder *)self buildCommand];
    v5 = objc_opt_new();
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"VIEW" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v5 setTitle:v7];

    [v5 setCommand:v4];
    v10[0] = v5;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildThumbnail
{
  v7.receiver = self;
  v7.super_class = SSPurchaseRequestResultBuilder;
  v3 = [(SSResultBuilder *)&v7 buildThumbnail];
  v4 = [(SSPurchaseRequestResultBuilder *)self thumbnailAppType];
  if ([&unk_1F55B7598 containsObject:v4])
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