@interface SSScreenTimeRequestResultBuilder
- (SSScreenTimeRequestResultBuilder)initWithResult:(id)a3;
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

- (SSScreenTimeRequestResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SSScreenTimeRequestResultBuilder;
  v5 = [(SSResultBuilder *)&v24 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963C88] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestedItemName:v7];

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

    [(SSScreenTimeRequestResultBuilder *)v5 setApprovers:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestedItemDescription:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestDate:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6964290] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setExpireDate:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x1E6963C60] withType:objc_opt_class()];
    -[SSScreenTimeRequestResultBuilder setRequestStatus:](v5, "setRequestStatus:", [v13 unsignedIntValue]);

    v14 = [v4 valueForAttribute:*MEMORY[0x1E6963C68] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestStatusString:v14];

    v15 = [v4 valueForAttribute:*MEMORY[0x1E6963E40] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequesterContactIdentifier:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestIdentifier:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRespondDate:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x1E6963CF0] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequesterDSID:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x1E6963FA0] withType:objc_opt_class()];
    [(SSScreenTimeRequestResultBuilder *)v5 setRequestAmountDuration:v19];

    v20 = [(SSScreenTimeRequestResultBuilder *)v5 requestAmountDuration];

    if (!v20)
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
  v2 = [(SSResultBuilder *)&v6 buildInlineCardSection];
  v3 = [v2 descriptions];
  v4 = [v3 firstObject];
  [v4 setMaxLines:1];

  return v2;
}

- (id)buildInlineCardSections
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(SSScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
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
  v2 = [(SSScreenTimeRequestResultBuilder *)self buildInlineCardSection];
  [v2 setPreventThumbnailImageScaling:1];

  return v2;
}

- (id)buildDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SSScreenTimeRequestResultBuilder *)self requestedItemDescription];

  if (v4)
  {
    v5 = [(SSScreenTimeRequestResultBuilder *)self requestedItemDescription];
    [v3 appendString:v5];
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
  v3 = [(SSScreenTimeRequestResultBuilder *)self requestStatus];
  v4 = [(SSScreenTimeRequestResultBuilder *)self requestStatus];
  if (v3 == 3 || v4 == 2)
  {
    v6 = [(SSScreenTimeRequestResultBuilder *)self requestAmountDuration];
    v7 = [v6 intValue];

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"ASK_FOR_TIME_APPROVED15";
    v11 = @"ASK_FOR_TIME_DECLINED";
    if (v7 == 3600)
    {
      v11 = @"ASK_FOR_TIME_APPROVED_HOUR";
    }

    if (v7 != 900)
    {
      v10 = v11;
    }

    if (v7 == -1)
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
  v3 = [(SSScreenTimeRequestResultBuilder *)self requestDate];

  if (v3)
  {
    v4 = MEMORY[0x1E69CA0F0];
    v5 = [(SSScreenTimeRequestResultBuilder *)self requestDate];
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
  v3 = [(SSScreenTimeRequestResultBuilder *)self requesterDSID];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(SSScreenTimeRequestResultBuilder *)self requestIdentifier];
  v7 = [v5 stringWithFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@#ASK_%@", v3, v6];
  v8 = [v4 URLWithString:v7];

  v9 = [MEMORY[0x1E69CA320] punchoutWithURL:v8];
  v10 = [(SSScreenTimeRequestResultBuilder *)self requestIdentifier];
  [v9 setLabel:v10];

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

    v7 = [(SSScreenTimeRequestResultBuilder *)self buildCommand];
    [v4 setCommand:v7];

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
  v2 = [(SSResultBuilder *)&v4 buildThumbnail];
  [v2 setCornerRoundingStyle:3];

  return v2;
}

@end