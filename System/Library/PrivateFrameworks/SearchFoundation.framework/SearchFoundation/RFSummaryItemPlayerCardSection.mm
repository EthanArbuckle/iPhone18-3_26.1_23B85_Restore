@interface RFSummaryItemPlayerCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemPlayerCardSection)initWithCoder:(id)coder;
- (RFSummaryItemPlayerCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemPlayerCardSection

- (RFSummaryItemPlayerCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v32.receiver = self;
  v32.super_class = RFSummaryItemPlayerCardSection;
  v5 = [(SFCardSection *)&v32 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemPlayerCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSummaryItemPlayerCardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFSummaryItemPlayerCardSection *)v5 setText_3:v17];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v19 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text8];
      [(RFSummaryItemPlayerCardSection *)v5 setText_4:v21];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v23 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:thumbnail2];
      [(RFSummaryItemPlayerCardSection *)v5 setThumbnail:v25];
    }

    player = [protobufCopy player];

    if (player)
    {
      v27 = [SFButtonItem alloc];
      player2 = [protobufCopy player];
      v29 = [(SFButtonItem *)v27 initWithProtobuf:player2];
      [(RFSummaryItemPlayerCardSection *)v5 setPlayer:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = RFSummaryItemPlayerCardSection;
  v3 = [(SFCardSection *)&v17 hash];
  text = [(RFSummaryItemPlayerCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFSummaryItemPlayerCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFSummaryItemPlayerCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFSummaryItemPlayerCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  thumbnail = [(RFSummaryItemPlayerCardSection *)self thumbnail];
  v13 = v11 ^ [thumbnail hash] ^ v3;
  player = [(RFSummaryItemPlayerCardSection *)self player];
  v15 = [player hash];

  return v13 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFSummaryItemPlayerCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v58.receiver = self;
      v58.super_class = RFSummaryItemPlayerCardSection;
      if ([(SFCardSection *)&v58 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFSummaryItemPlayerCardSection *)self text];
        text2 = [(RFSummaryItemPlayerCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        text3 = [(RFSummaryItemPlayerCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSummaryItemPlayerCardSection *)self text];
          text5 = [(RFSummaryItemPlayerCardSection *)v6 text];
          if (![text4 isEqual:?])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v54 = text4;
        }

        text6 = [(RFSummaryItemPlayerCardSection *)self text];
        text7 = [(RFSummaryItemPlayerCardSection *)v6 text];
        if ((text6 != 0) == (text7 == 0))
        {
          goto LABEL_33;
        }

        text8 = [(RFSummaryItemPlayerCardSection *)self text];
        if (text8)
        {
          text9 = [(RFSummaryItemPlayerCardSection *)self text];
          text10 = [(RFSummaryItemPlayerCardSection *)v6 text];
          if (([text9 isEqual:text10] & 1) == 0)
          {

LABEL_32:
LABEL_33:

            v11 = 0;
            goto LABEL_34;
          }

          v51 = text9;
          v53 = text2;
          v14 = text5;
          v15 = text8;
        }

        else
        {
          v53 = text2;
          v14 = text5;
          v15 = 0;
        }

        v52 = text10;
        text5 = v14;
        text11 = [(RFSummaryItemPlayerCardSection *)self text];
        text12 = [(RFSummaryItemPlayerCardSection *)v6 text];
        text8 = v15;
        text2 = v53;
        if ((text11 != 0) != (text12 == 0))
        {
          v50 = text12;
          text13 = [(RFSummaryItemPlayerCardSection *)self text];
          if (text13)
          {
            text14 = [(RFSummaryItemPlayerCardSection *)self text];
            text15 = [(RFSummaryItemPlayerCardSection *)v6 text];
            v47 = text14;
            if (![text14 isEqual:?])
            {
              v11 = 0;
              v24 = text13;
              goto LABEL_57;
            }

            v48 = v15;
          }

          else
          {
            v48 = v15;
          }

          text16 = [(RFSummaryItemPlayerCardSection *)self text];
          text17 = [(RFSummaryItemPlayerCardSection *)v6 text];
          if ((text16 != 0) != (text17 == 0))
          {
            v45 = text17;
            [(RFSummaryItemPlayerCardSection *)self text];
            text8 = v48;
            v44 = v43 = text16;
            if (v44)
            {
              text18 = [(RFSummaryItemPlayerCardSection *)self text];
              text19 = [(RFSummaryItemPlayerCardSection *)v6 text];
              v42 = text18;
              if (![text18 isEqual:?])
              {
                v11 = 0;
                v22 = v44;
LABEL_55:

LABEL_56:
                v24 = text13;
                if (!text13)
                {
LABEL_58:

                  if (text8)
                  {
                  }

LABEL_34:
                  text4 = v54;
                  if (!text3)
                  {
LABEL_36:

                    goto LABEL_37;
                  }

LABEL_35:

                  goto LABEL_36;
                }

LABEL_57:

                goto LABEL_58;
              }
            }

            thumbnail = [(RFSummaryItemPlayerCardSection *)self thumbnail];
            thumbnail2 = [(RFSummaryItemPlayerCardSection *)v6 thumbnail];
            if ((thumbnail != 0) == (thumbnail2 == 0))
            {

              v11 = 0;
              text8 = v48;
              goto LABEL_54;
            }

            v39 = thumbnail;
            v40 = thumbnail2;
            [(RFSummaryItemPlayerCardSection *)self thumbnail];
            v38 = text8 = v48;
            if (v38 && (-[RFSummaryItemPlayerCardSection thumbnail](self, "thumbnail"), v27 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemPlayerCardSection thumbnail](v6, "thumbnail"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
            {
              v11 = 0;
              v32 = v38;
            }

            else
            {
              player = [(RFSummaryItemPlayerCardSection *)self player];
              player2 = [(RFSummaryItemPlayerCardSection *)v6 player];
              if ((player != 0) == (player2 == 0))
              {

                v11 = 0;
                text8 = v48;
              }

              else
              {
                v35 = player2;
                player3 = [(RFSummaryItemPlayerCardSection *)self player];
                text8 = v48;
                if (player3)
                {
                  v34 = player3;
                  player4 = [(RFSummaryItemPlayerCardSection *)self player];
                  player5 = [(RFSummaryItemPlayerCardSection *)v6 player];
                  v11 = [player4 isEqual:?];
                }

                else
                {

                  v11 = 1;
                }
              }

              v32 = v38;
              if (!v38)
              {
                goto LABEL_53;
              }
            }

LABEL_53:
LABEL_54:
            v22 = v44;
            if (!v44)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          text8 = v48;
          if (text13)
          {
          }

          text12 = v50;
        }

        if (text8)
        {
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RFSummaryItemPlayerCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
  text = [(RFSummaryItemPlayerCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSummaryItemPlayerCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSummaryItemPlayerCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFSummaryItemPlayerCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  thumbnail = [(RFSummaryItemPlayerCardSection *)self thumbnail];
  v14 = [thumbnail copy];
  [v4 setThumbnail:v14];

  player = [(RFSummaryItemPlayerCardSection *)self player];
  v16 = [player copy];
  [v4 setPlayer:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemPlayerCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemPlayerCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemPlayerCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemPlayerCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [(SFCardSection *)v8 text];
    [(RFSummaryItemPlayerCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPlayerCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPlayerCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemPlayerCardSection *)v5 setText_4:text4];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemPlayerCardSection *)v5 setThumbnail:thumbnail];

    player = [(SFCardSection *)v8 player];
    [(RFSummaryItemPlayerCardSection *)v5 setPlayer:player];

    nextCard = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:nextCard];

    commands = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:commands];

    parameterKeyPaths = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:parameterKeyPaths];

    cardSectionId = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:resultIdentifier];

    userReportRequest = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:userReportRequest];

    command = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:command];

    previewCommand = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:previewCommand];

    previewButtonItems = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:previewButtonItems];

    cardSectionDetail = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:cardSectionDetail];

    previewButtonItemsTitle = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle];

    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    referencedCommands = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:referencedCommands];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    appEntityAnnotation = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:appEntityAnnotation];

    emphasisSubjectId = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    secondaryCommand = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:secondaryCommand];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    racFeedbackSubfeatureId = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:racFeedbackLoggingContent];

    copyableItems = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:copyableItems];

    applicationBundleIdentifier = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  return v5;
}

@end