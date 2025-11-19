@interface SPUISPhoneResultBuilder
- (SPUISPhoneResultBuilder)initWithResult:(id)a3;
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

- (SPUISPhoneResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SPUISPhoneResultBuilder;
  v5 = [(SPUISResultBuilder *)&v23 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC3018] withType:objc_opt_class()];
    v7 = [v6 firstObject];
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

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC24C0] withType:objc_opt_class()];
    v10 = [v9 firstObject];
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

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2EA0] withType:objc_opt_class()];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      [(SPUISPhoneResultBuilder *)v5 setCallbackURL:v13];
    }

    else
    {
      [(SPUISPhoneResultBuilder *)v5 setCallbackURL:0];
    }

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC3038] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setCallSourceApplicationBundleIdentifier:v14];

    v15 = [(SPUISResultBuilder *)v5 result];
    v16 = [v15 contentType];
    -[SPUISPhoneResultBuilder setIsVoicemail:](v5, "setIsVoicemail:", [v16 isEqualToString:@"kSpotlightItemTypeVoicemail"]);

    v17 = [v4 valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setVoicemailTranscription:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setCallDate:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x277CC2EA8] withType:objc_opt_class()];
    -[SPUISPhoneResultBuilder setIsMissedCall:](v5, "setIsMissedCall:", [v19 containsString:@"Missed"]);
    -[SPUISPhoneResultBuilder setIsOutgoingCall:](v5, "setIsOutgoingCall:", [v19 containsString:@"Outgoing"]);
    v20 = [v4 valueForAttribute:*MEMORY[0x277CC2EB0] withType:objc_opt_class()];
    -[SPUISPhoneResultBuilder setIsVideoCall:](v5, "setIsVideoCall:", [v20 isEqualToString:@"Video"]);

    v21 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISPhoneResultBuilder *)v5 setCallOrigin:v21];
  }

  return v5;
}

- (id)buildTitle
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISPhoneResultBuilder *)self voicemailTranscription];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(SPUISPhoneResultBuilder *)self voicemailTranscription];
    v6 = [(SPUISResultBuilder *)self buildHighlightedTextWithString:v5 includeQuotes:1];

    [v6 setMaxLines:2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SPUISPhoneResultBuilder;
    v6 = [(SPUISResultBuilder *)&v13 buildTitle];
    if ([(SPUISPhoneResultBuilder *)self isMissedCall])
    {
      v7 = objc_opt_new();
      v8 = [v6 text];
      [v7 setText:v8];

      [v7 setTextColor:1];
      v9 = objc_opt_new();

      v14[0] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      [v9 setFormattedTextPieces:v10];

      v6 = v9;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildDescriptions
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISPhoneResultBuilder *)self voicemailTranscription];
  v5 = [v4 length];

  if (v5)
  {
    v19.receiver = self;
    v19.super_class = SPUISPhoneResultBuilder;
    v6 = [(SPUISResultBuilder *)&v19 buildTitle];
    v7 = [v6 text];

    if (![v7 length])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [(SPUISPhoneResultBuilder *)self callOrigin];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = [(SPUISPhoneResultBuilder *)self callOrigin];
  }

  [v3 addObject:v7];
LABEL_7:

LABEL_8:
  v10 = [(SPUISPhoneResultBuilder *)self callDate];

  if (v10)
  {
    v11 = [(SPUISPhoneResultBuilder *)self callDate];
    v12 = [SPUISDateFormatManager dynamicCompactStringFromDate:v11];
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
  v4 = [(SPUISPhoneResultBuilder *)self contactIdentifiers];
  [v3 setContactIdentifiers:v4];

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
  v2 = [(SPUISPhoneResultBuilder *)self callSourceApplicationBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_opt_class() bundleId];
  }

  v5 = v4;

  return v5;
}

- (id)buildButtonItems
{
  v3 = objc_opt_new();
  if ([(SPUISPhoneResultBuilder *)self isVoicemail])
  {
    v4 = objc_opt_new();
    v5 = [(SPUISResultBuilder *)self result];
    v6 = [v5 identifier];
    [v4 setMediaIdentifier:v6];

    [v4 setMediaType:100];
    v7 = objc_opt_new();
    [v7 setMediaMetadata:v4];
    [v3 addObject:v7];
  }

  v8 = [(SPUISPhoneResultBuilder *)self callbackURL];

  if (v8)
  {
    v9 = objc_opt_new();
    v10 = MEMORY[0x277D4C550];
    v11 = [(SPUISPhoneResultBuilder *)self callbackURL];
    v12 = [v10 punchoutWithURL:v11];
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
  v4 = [(SPUISResultBuilder *)self coreSpotlightId];
  [v3 setCoreSpotlightIdentifier:v4];

  v5 = [(SPUISResultBuilder *)self result];
  v6 = [v5 applicationBundleIdentifier];
  [v3 setApplicationBundleIdentifier:v6];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISPhoneResultBuilder *)self contactIdentifiers];
  if ([v3 count] && (-[SPUISPhoneResultBuilder voicemailTranscription](self, "voicemailTranscription"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, !v5))
  {
    v7 = objc_opt_new();
    v8 = [v3 firstObject];
    [v7 setContactIdentifier:v8];

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
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SPUISPhoneResultBuilder;
    v6 = [(SPUISResultBuilder *)&v15 buildPreviewButtonItems];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

@end