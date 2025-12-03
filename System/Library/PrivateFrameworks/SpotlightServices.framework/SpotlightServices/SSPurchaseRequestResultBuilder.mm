@interface SSPurchaseRequestResultBuilder
- (SSPurchaseRequestResultBuilder)initWithResult:(id)result;
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

- (SSPurchaseRequestResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v25.receiver = self;
  v25.super_class = SSPurchaseRequestResultBuilder;
  v5 = [(SSResultBuilder *)&v25 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C88] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6964990] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAgeRating:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAppName:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6964490] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAppPrice:v9];

    firstObject = [v6 firstObject];
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

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setAppType:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequestDate:v13];

    v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C60] withType:objc_opt_class()];
    -[SSPurchaseRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v14 unsignedIntValue]);

    v15 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C68] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequestStatusString:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E40] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequesterContactIdentifier:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRequestIdentifier:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSPurchaseRequestResultBuilder *)v5 setRespondDate:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B28] withType:objc_opt_class()];
    [v19 floatValue];
    [(SSPurchaseRequestResultBuilder *)v5 setStarRating:v20];

    v21 = [resultCopy valueForAttribute:*MEMORY[0x1E6964BE8] withType:objc_opt_class()];
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
  buildInlineCardSection = [(SSResultBuilder *)&v6 buildInlineCardSection];
  descriptions = [buildInlineCardSection descriptions];
  firstObject = [descriptions firstObject];
  [firstObject setMaxLines:1];

  return buildInlineCardSection;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  buildInlineCardSection = [(SSPurchaseRequestResultBuilder *)self buildInlineCardSection];
  [buildInlineCardSection setPreventThumbnailImageScaling:1];

  return buildInlineCardSection;
}

- (id)buildDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  appType = [(SSPurchaseRequestResultBuilder *)self appType];

  if (appType)
  {
    appType2 = [(SSPurchaseRequestResultBuilder *)self appType];
    [v3 appendString:appType2];
  }

  appPrice = [(SSPurchaseRequestResultBuilder *)self appPrice];

  if (appPrice)
  {
    if ([v3 length])
    {
      [v3 appendString:@" · "];
    }

    appPrice2 = [(SSPurchaseRequestResultBuilder *)self appPrice];
    [v3 appendString:appPrice2];
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
  requestStatus = [(SSPurchaseRequestResultBuilder *)self requestStatus];
  requestStatus2 = [(SSPurchaseRequestResultBuilder *)self requestStatus];
  if (requestStatus == 3 || requestStatus2 == 2)
  {
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = v15;
    if (requestStatus == 3)
    {
      v17 = @"APPROVED";
    }

    else
    {
      v17 = @"DENIED";
    }

    v12 = [v15 localizedStringForKey:v17 value:&stru_1F556FE60 table:@"SpotlightServices"];

    approvers = [(SSPurchaseRequestResultBuilder *)self approvers];
    firstObject = [approvers firstObject];

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"APPROVED_BY_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v14 = [v19 localizedStringWithFormat:v21, v12, firstObject];

    v5 = [MEMORY[0x1E69CA3A0] textWithString:v14];
  }

  else
  {
    v5 = objc_opt_new();
    [(SSPurchaseRequestResultBuilder *)self starRating];
    [v5 setStarRating:?];
    ageRating = [(SSPurchaseRequestResultBuilder *)self ageRating];

    if (!ageRating)
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
    ageRating2 = [(SSPurchaseRequestResultBuilder *)self ageRating];
    v12 = [v9 localizedStringWithFormat:@"%@%@", v10, ageRating2];

    firstObject = [MEMORY[0x1E69CA0F0] textWithString:v12];
    v24[0] = firstObject;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v5 setFormattedTextPieces:v14];
  }

LABEL_12:
  v22 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)buildSecondaryTitle
{
  requestDate = [(SSPurchaseRequestResultBuilder *)self requestDate];

  if (requestDate)
  {
    v4 = MEMORY[0x1E69CA0F0];
    requestDate2 = [(SSPurchaseRequestResultBuilder *)self requestDate];
    v6 = [SSDateFormatManager dynamicCompactStringFromDate:requestDate2];
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
  requestIdentifier = [(SSPurchaseRequestResultBuilder *)self requestIdentifier];
  [v3 setRequestIdentifier:requestIdentifier];

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
    buildCommand = [(SSPurchaseRequestResultBuilder *)self buildCommand];
    v5 = objc_opt_new();
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"VIEW" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v5 setTitle:v7];

    [v5 setCommand:buildCommand];
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
  buildThumbnail = [(SSResultBuilder *)&v7 buildThumbnail];
  thumbnailAppType = [(SSPurchaseRequestResultBuilder *)self thumbnailAppType];
  if ([&unk_1F55B7598 containsObject:thumbnailAppType])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [buildThumbnail setCornerRoundingStyle:v5];

  return buildThumbnail;
}

@end