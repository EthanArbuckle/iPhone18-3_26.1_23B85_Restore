@interface SSPhoneResultBuilder
- (SSPhoneResultBuilder)initWithResult:(id)a3;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildPreviewButtonItems;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (id)contactIdentifiers;
@end

@implementation SSPhoneResultBuilder

- (SSPhoneResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SSPhoneResultBuilder;
  v5 = [(SSResultBuilder *)&v23 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E69649E8] withType:objc_opt_class()];
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

    [(SSPhoneResultBuilder *)v5 setRecipientContactIdentifiers:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E6963CF8] withType:objc_opt_class()];
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

    [(SSPhoneResultBuilder *)v5 setSenderContactIdentifiers:v11];

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6964708] withType:objc_opt_class()];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
      [(SSPhoneResultBuilder *)v5 setCallbackURL:v13];
    }

    else
    {
      [(SSPhoneResultBuilder *)v5 setCallbackURL:0];
    }

    v14 = [v4 valueForAttribute:*MEMORY[0x1E6964A20] withType:objc_opt_class()];
    [(SSPhoneResultBuilder *)v5 setCallSourceApplicationBundleIdentifier:v14];

    v15 = [(SSResultBuilder *)v5 result];
    v16 = [v15 contentType];
    -[SSPhoneResultBuilder setIsVoicemail:](v5, "setIsVoicemail:", [v16 isEqualToString:@"public.voice-audio"]);

    v17 = [v4 valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
    [(SSPhoneResultBuilder *)v5 setVoicemailTranscription:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSPhoneResultBuilder *)v5 setCallDate:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x1E6964710] withType:objc_opt_class()];
    -[SSPhoneResultBuilder setIsMissedCall:](v5, "setIsMissedCall:", [v19 containsString:@"Missed"]);
    -[SSPhoneResultBuilder setIsOutgoingCall:](v5, "setIsOutgoingCall:", [v19 containsString:@"Outgoing"]);
    v20 = [v4 valueForAttribute:*MEMORY[0x1E6964718] withType:objc_opt_class()];
    -[SSPhoneResultBuilder setIsVideoCall:](v5, "setIsVideoCall:", [v20 isEqualToString:@"Video"]);

    v21 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPhoneResultBuilder *)v5 setCallOrigin:v21];
  }

  return v5;
}

- (id)buildTitle
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSPhoneResultBuilder *)self voicemailTranscription];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(SSPhoneResultBuilder *)self voicemailTranscription];
    v6 = [(SSResultBuilder *)self buildHighlightedTextWithString:v5 includeQuotes:1];

    [v6 setMaxLines:2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SSPhoneResultBuilder;
    v6 = [(SSResultBuilder *)&v13 buildTitle];
    if ([(SSPhoneResultBuilder *)self isMissedCall])
    {
      v7 = objc_opt_new();
      v8 = [v6 text];
      [v7 setText:v8];

      [v7 setTextColor:1];
      v9 = objc_opt_new();

      v14[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v9 setFormattedTextPieces:v10];

      v6 = v9;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)buildDescriptions
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SSPhoneResultBuilder *)self voicemailTranscription];
  v5 = [v4 length];

  if (v5)
  {
    v19.receiver = self;
    v19.super_class = SSPhoneResultBuilder;
    v6 = [(SSResultBuilder *)&v19 buildTitle];
    v7 = [v6 text];

    if (![v7 length])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [(SSPhoneResultBuilder *)self callOrigin];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = [(SSPhoneResultBuilder *)self callOrigin];
  }

  [v3 addObject:v7];
LABEL_7:

LABEL_8:
  v10 = [(SSPhoneResultBuilder *)self callDate];

  if (v10)
  {
    v11 = [(SSPhoneResultBuilder *)self callDate];
    v12 = [SSDateFormatManager dynamicCompactStringFromDate:v11];
    [v3 addObject:v12];
  }

  if ([v3 count])
  {
    v13 = MEMORY[0x1E69CA3A0];
    v14 = [v3 componentsJoinedByString:@" · "];
    v15 = [v13 textWithString:v14];
    v20[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  v4 = [(SSPhoneResultBuilder *)self contactIdentifiers];
  [v3 setContactIdentifiers:v4];

  [v3 setThreeDTouchEnabled:1];

  return v3;
}

- (id)contactIdentifiers
{
  if ([(SSPhoneResultBuilder *)self isOutgoingCall])
  {
    [(SSPhoneResultBuilder *)self recipientContactIdentifiers];
  }

  else
  {
    [(SSPhoneResultBuilder *)self senderContactIdentifiers];
  }
  v3 = ;

  return v3;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  v2 = [(SSPhoneResultBuilder *)self callSourceApplicationBundleIdentifier];
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
  if ([(SSPhoneResultBuilder *)self isVoicemail])
  {
    v4 = objc_opt_new();
    v5 = [(SSResultBuilder *)self result];
    v6 = [v5 identifier];
    [v4 setMediaIdentifier:v6];

    [v4 setMediaType:100];
    v7 = objc_opt_new();
    [v7 setMediaMetadata:v4];
    [v3 addObject:v7];
  }

  v8 = [(SSPhoneResultBuilder *)self callbackURL];

  if (v8)
  {
    v9 = objc_opt_new();
    v10 = MEMORY[0x1E69CA320];
    v11 = [(SSPhoneResultBuilder *)self callbackURL];
    v12 = [v10 punchoutWithURL:v11];
    [v9 setPunchout:v12];

    v13 = objc_opt_new();
    if ([(SSPhoneResultBuilder *)self isVideoCall])
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
  v4 = [(SSResultBuilder *)self coreSpotlightId];
  [v3 setCoreSpotlightIdentifier:v4];

  v5 = [(SSResultBuilder *)self result];
  v6 = [v5 applicationBundleIdentifier];
  [v3 setApplicationBundleIdentifier:v6];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSPhoneResultBuilder *)self contactIdentifiers];
  if ([v3 count] && (-[SSPhoneResultBuilder voicemailTranscription](self, "voicemailTranscription"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, !v5))
  {
    v7 = objc_opt_new();
    v8 = [v3 firstObject];
    [v7 setContactIdentifier:v8];

    v9 = MEMORY[0x1E696AD98];
    if ([(SSPhoneResultBuilder *)self isVideoCall])
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    v11 = [v9 numberWithInt:v10];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v7 setActionTypesToShow:v12];

    v16 = v7;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SSPhoneResultBuilder;
    v6 = [(SSResultBuilder *)&v15 buildPreviewButtonItems];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

@end