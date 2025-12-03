@interface SSScreenTimeRequestResultBuilder
- (SSScreenTimeRequestResultBuilder)initWithResult:(id)result;
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

@implementation SSScreenTimeRequestResultBuilder

- (SSScreenTimeRequestResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v24.receiver = self;
  v24.super_class = SSScreenTimeRequestResultBuilder;
  v5 = [(SSResultBuilder *)&v24 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C88] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestedItemName:v7];

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

    [(SSScreenTimeRequestResultBuilder *)v5 setApprovers:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestedItemDescription:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestDate:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6964290] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setExpireDate:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C60] withType:objc_opt_class()];
    -[SSScreenTimeRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v13 unsignedIntValue]);

    v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6963C68] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestStatusString:v14];

    v15 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E40] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequesterContactIdentifier:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestIdentifier:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRespondDate:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x1E6963CF0] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequesterDSID:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x1E6963FA0] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestAmountDuration:v19];

    requestAmountDuration = [(SSScreenTimeRequestResultBuilder *)v5 requestAmountDuration];

    if (!requestAmountDuration)
    {
      if ([(SSScreenTimeRequestResultBuilder *)v5 requestStatus]== 3)
      {
        v21 = 0xFFFFFFFFLL;
      }

      else
      {
        v21 = 0;
      }

      v22 = [MEMORY[0x1E696AD98] numberWithInt:v21];
      [(SSScreenTimeRequestResultBuilder *)v5 setRequestAmountDuration:v22];
    }
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v6.receiver = self;
  v6.super_class = SSScreenTimeRequestResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v6 buildInlineCardSection];
  descriptions = [buildInlineCardSection descriptions];
  firstObject = [descriptions firstObject];
  [firstObject setMaxLines:1];

  return buildInlineCardSection;
}

- (id)buildInlineCardSections
{
  v7[1] = *MEMORY[0x1E69E9840];
  buildInlineCardSection = [(SSScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  v3 = buildInlineCardSection;
  if (buildInlineCardSection)
  {
    v7[0] = buildInlineCardSection;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  buildInlineCardSection = [(SSScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  [buildInlineCardSection setPreventThumbnailImageScaling:1];

  return buildInlineCardSection;
}

- (id)buildDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  requestedItemDescription = [(SSScreenTimeRequestResultBuilder *)self requestedItemDescription];

  if (requestedItemDescription)
  {
    requestedItemDescription2 = [(SSScreenTimeRequestResultBuilder *)self requestedItemDescription];
    [v3 appendString:requestedItemDescription2];
  }

  if ([v3 length])
  {
    v6 = [MEMORY[0x1E69CA3A0] textWithString:v3];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)buildFootnote
{
  requestStatus = [(SSScreenTimeRequestResultBuilder *)self requestStatus];
  requestStatus2 = [(SSScreenTimeRequestResultBuilder *)self requestStatus];
  if (requestStatus == 3 || requestStatus2 == 2)
  {
    requestAmountDuration = [(SSScreenTimeRequestResultBuilder *)self requestAmountDuration];
    intValue = [requestAmountDuration intValue];

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"ASK_FOR_TIME_APPROVED15";
    v11 = @"ASK_FOR_TIME_DECLINED";
    if (intValue == 3600)
    {
      v11 = @"ASK_FOR_TIME_APPROVED_HOUR";
    }

    if (intValue != 900)
    {
      v10 = v11;
    }

    if (intValue == -1)
    {
      v12 = @"ASK_FOR_TIME_APPROVED_DAY";
    }

    else
    {
      v12 = v10;
    }

    v13 = [v8 localizedStringForKey:v12 value:&stru_1F556FE60 table:@"SpotlightServices"];

    v5 = [MEMORY[0x1E69CA3A0] textWithString:v13];
  }

  else
  {
    v5 = [MEMORY[0x1E69CA3A0] textWithString:@" "];
  }

  return v5;
}

- (id)buildSecondaryTitle
{
  requestDate = [(SSScreenTimeRequestResultBuilder *)self requestDate];

  if (requestDate)
  {
    v4 = MEMORY[0x1E69CA0F0];
    requestDate2 = [(SSScreenTimeRequestResultBuilder *)self requestDate];
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
  requesterDSID = [(SSScreenTimeRequestResultBuilder *)self requesterDSID];
  if (!requesterDSID)
  {
    requesterDSID = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  requestIdentifier = [(SSScreenTimeRequestResultBuilder *)self requestIdentifier];
  v7 = [v5 stringWithFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@#ASK_%@", requesterDSID, requestIdentifier];
  v8 = [v4 URLWithString:v7];

  v9 = [MEMORY[0x1E69CA320] punchoutWithURL:v8];
  requestIdentifier2 = [(SSScreenTimeRequestResultBuilder *)self requestIdentifier];
  [v9 setLabel:requestIdentifier2];

  v11 = objc_opt_new();
  [v11 setPunchout:v9];

  return v11;
}

- (id)buildButtonItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(SSScreenTimeRequestResultBuilder *)self requestStatus]== 3 || [(SSScreenTimeRequestResultBuilder *)self requestStatus]== 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"VIEW" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v4 setTitle:v6];

    buildCommand = [(SSScreenTimeRequestResultBuilder *)self buildCommand];
    [v4 setCommand:buildCommand];

    v10[0] = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildThumbnail
{
  v4.receiver = self;
  v4.super_class = SSScreenTimeRequestResultBuilder;
  buildThumbnail = [(SSResultBuilder *)&v4 buildThumbnail];
  [buildThumbnail setCornerRoundingStyle:3];

  return buildThumbnail;
}

@end