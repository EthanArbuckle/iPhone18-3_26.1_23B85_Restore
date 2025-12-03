@interface SPUISPhoneResultBuilder
- (SPUISPhoneResultBuilder)initWithResult:(id)result;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildPreviewButtonItems;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (id)contactIdentifiers;
@end

@implementation SPUISPhoneResultBuilder

- (SPUISPhoneResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v23.receiver = self;
  v23.super_class = SPUISPhoneResultBuilder;
  v5 = [(SPUISResultBuilder *)&v23 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC3018] withType:objc_opt_class()];
    firstObject = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    [(SPUISPhoneResultBuilder *)v5 setRecipientContactIdentifiers:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC24C0] withType:objc_opt_class()];
    firstObject2 = [v9 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    [(SPUISPhoneResultBuilder *)v5 setSenderContactIdentifiers:v11];

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2EA0] withType:objc_opt_class()];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      [(SPUISPhoneResultBuilder *)v5 setCallbackURL:v13];
    }

    else
    {
      [(SPUISPhoneResultBuilder *)v5 setCallbackURL:0];
    }

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC3038] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setCallSourceApplicationBundleIdentifier:v14];

    result = [(SPUISResultBuilder *)v5 result];
    contentType = [result contentType];
    -[SPUISPhoneResultBuilder setIsVoicemail:](v5, "setIsVoicemail:", [contentType isEqualToString:@"kSpotlightItemTypeVoicemail"]);

    v17 = [resultCopy valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setVoicemailTranscription:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setCallDate:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC2EA8] withType:objc_opt_class()];
    -[SPUISPhoneResultBuilder setIsMissedCall:](v5, "setIsMissedCall:", [v19 containsString:@"Missed"]);
    -[SPUISPhoneResultBuilder setIsOutgoingCall:](v5, "setIsOutgoingCall:", [v19 containsString:@"Outgoing"]);
    v20 = [resultCopy valueForAttribute:*MEMORY[0x277CC2EB0] withType:objc_opt_class()];
    -[SPUISPhoneResultBuilder setIsVideoCall:](v5, "setIsVideoCall:", [v20 isEqualToString:@"Video"]);

    v21 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setCallOrigin:v21];
  }

  return v5;
}

- (id)buildTitle
{
  v14[1] = *MEMORY[0x277D85DE8];
  voicemailTranscription = [(SPUISPhoneResultBuilder *)self voicemailTranscription];
  v4 = [voicemailTranscription length];

  if (v4)
  {
    voicemailTranscription2 = [(SPUISPhoneResultBuilder *)self voicemailTranscription];
    buildTitle = [(SPUISResultBuilder *)self buildHighlightedTextWithString:voicemailTranscription2 includeQuotes:1];

    [buildTitle setMaxLines:2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SPUISPhoneResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v13 buildTitle];
    if ([(SPUISPhoneResultBuilder *)self isMissedCall])
    {
      v7 = objc_opt_new();
      text = [buildTitle text];
      [v7 setText:text];

      [v7 setTextColor:1];
      v9 = objc_opt_new();

      v14[0] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      [v9 setFormattedTextPieces:v10];

      buildTitle = v9;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return buildTitle;
}

- (id)buildDescriptions
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  voicemailTranscription = [(SPUISPhoneResultBuilder *)self voicemailTranscription];
  v5 = [voicemailTranscription length];

  if (v5)
  {
    v19.receiver = self;
    v19.super_class = SPUISPhoneResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v19 buildTitle];
    text = [buildTitle text];

    if (![text length])
    {
      goto LABEL_7;
    }
  }

  else
  {
    callOrigin = [(SPUISPhoneResultBuilder *)self callOrigin];
    v9 = [callOrigin length];

    if (!v9)
    {
      goto LABEL_8;
    }

    text = [(SPUISPhoneResultBuilder *)self callOrigin];
  }

  [v3 addObject:text];
LABEL_7:

LABEL_8:
  callDate = [(SPUISPhoneResultBuilder *)self callDate];

  if (callDate)
  {
    callDate2 = [(SPUISPhoneResultBuilder *)self callDate];
    v12 = [SPUISDateFormatManager dynamicCompactStringFromDate:callDate2];
    [v3 addObject:v12];
  }

  if ([v3 count])
  {
    v13 = MEMORY[0x277D4C598];
    v14 = [v3 componentsJoinedByString:@" · "];
    v15 = [v13 textWithString:v14];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  contactIdentifiers = [(SPUISPhoneResultBuilder *)self contactIdentifiers];
  [v3 setContactIdentifiers:contactIdentifiers];

  [v3 setThreeDTouchEnabled:1];

  return v3;
}

- (id)contactIdentifiers
{
  if ([(SPUISPhoneResultBuilder *)self isOutgoingCall])
  {
    [(SPUISPhoneResultBuilder *)self recipientContactIdentifiers];
  }

  else
  {
    [(SPUISPhoneResultBuilder *)self senderContactIdentifiers];
  }
  v3 = ;

  return v3;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  callSourceApplicationBundleIdentifier = [(SPUISPhoneResultBuilder *)self callSourceApplicationBundleIdentifier];
  v3 = callSourceApplicationBundleIdentifier;
  if (callSourceApplicationBundleIdentifier)
  {
    bundleId = callSourceApplicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  v5 = bundleId;

  return v5;
}

- (id)buildButtonItems
{
  v3 = objc_opt_new();
  if ([(SPUISPhoneResultBuilder *)self isVoicemail])
  {
    v4 = objc_opt_new();
    result = [(SPUISResultBuilder *)self result];
    identifier = [result identifier];
    [v4 setMediaIdentifier:identifier];

    [v4 setMediaType:100];
    v7 = objc_opt_new();
    [v7 setMediaMetadata:v4];
    [v3 addObject:v7];
  }

  callbackURL = [(SPUISPhoneResultBuilder *)self callbackURL];

  if (callbackURL)
  {
    v9 = objc_opt_new();
    v10 = MEMORY[0x277D4C550];
    callbackURL2 = [(SPUISPhoneResultBuilder *)self callbackURL];
    v12 = [v10 punchoutWithURL:callbackURL2];
    [v9 setPunchout:v12];

    v13 = objc_opt_new();
    if ([(SPUISPhoneResultBuilder *)self isVideoCall])
    {
      v14 = @"video";
    }

    else
    {
      v14 = @"phone";
    }

    [v13 setSymbolName:v14];
    [v13 setIsTemplate:1];
    v15 = objc_opt_new();
    [v15 setCommand:v9];
    [v15 setImage:v13];
    [v3 addObject:v15];
  }

  if ([v3 count])
  {
    v16 = v3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  [v3 setCoreSpotlightIdentifier:coreSpotlightId];

  result = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  [v3 setApplicationBundleIdentifier:applicationBundleIdentifier];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v17[1] = *MEMORY[0x277D85DE8];
  contactIdentifiers = [(SPUISPhoneResultBuilder *)self contactIdentifiers];
  if ([contactIdentifiers count] && (-[SPUISPhoneResultBuilder voicemailTranscription](self, "voicemailTranscription"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, !v5))
  {
    v7 = objc_opt_new();
    firstObject = [contactIdentifiers firstObject];
    [v7 setContactIdentifier:firstObject];

    v9 = MEMORY[0x277CCABB0];
    if ([(SPUISPhoneResultBuilder *)self isVideoCall])
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    v11 = [v9 numberWithInt:v10];
    v17[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v7 setActionTypesToShow:v12];

    v16 = v7;
    buildPreviewButtonItems = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SPUISPhoneResultBuilder;
    buildPreviewButtonItems = [(SPUISResultBuilder *)&v15 buildPreviewButtonItems];
  }

  v13 = *MEMORY[0x277D85DE8];

  return buildPreviewButtonItems;
}

@end