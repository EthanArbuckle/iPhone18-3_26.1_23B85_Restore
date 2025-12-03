@interface RFPrimaryHeaderRichCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPrimaryHeaderRichCardSection)initWithCoder:(id)coder;
- (RFPrimaryHeaderRichCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFPrimaryHeaderRichCardSection

- (unint64_t)hash
{
  v16.receiver = self;
  v16.super_class = RFPrimaryHeaderRichCardSection;
  v3 = [(SFCardSection *)&v16 hash];
  text = [(RFPrimaryHeaderRichCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFPrimaryHeaderRichCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFPrimaryHeaderRichCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFPrimaryHeaderRichCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  thumbnail = [(RFPrimaryHeaderRichCardSection *)self thumbnail];
  v13 = v11 ^ [thumbnail hash] ^ v3;
  addTint = [(RFPrimaryHeaderRichCardSection *)self addTint];

  return v13 ^ addTint;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFPrimaryHeaderRichCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v52.receiver = self;
      v52.super_class = RFPrimaryHeaderRichCardSection;
      if ([(SFCardSection *)&v52 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFPrimaryHeaderRichCardSection *)self text];
        text2 = [(RFPrimaryHeaderRichCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_37:

          goto LABEL_38;
        }

        text3 = [(RFPrimaryHeaderRichCardSection *)self text];
        if (text3)
        {
          text4 = [(RFPrimaryHeaderRichCardSection *)self text];
          text5 = [(RFPrimaryHeaderRichCardSection *)v6 text];
          if (![text4 isEqual:?])
          {
            LOBYTE(v11) = 0;
            goto LABEL_35;
          }

          v48 = text4;
        }

        text6 = [(RFPrimaryHeaderRichCardSection *)self text];
        text7 = [(RFPrimaryHeaderRichCardSection *)v6 text];
        if ((text6 != 0) == (text7 == 0))
        {
          goto LABEL_33;
        }

        text8 = [(RFPrimaryHeaderRichCardSection *)self text];
        if (text8)
        {
          text9 = [(RFPrimaryHeaderRichCardSection *)self text];
          text10 = [(RFPrimaryHeaderRichCardSection *)v6 text];
          if (([text9 isEqual:text10] & 1) == 0)
          {

LABEL_32:
LABEL_33:

            LOBYTE(v11) = 0;
            goto LABEL_34;
          }

          v45 = text9;
          v47 = text;
          v14 = text5;
          v15 = text8;
        }

        else
        {
          v47 = text;
          v14 = text5;
          v15 = 0;
        }

        v46 = text10;
        text5 = v14;
        text11 = [(RFPrimaryHeaderRichCardSection *)self text];
        text12 = [(RFPrimaryHeaderRichCardSection *)v6 text];
        text8 = v15;
        text = v47;
        if ((text11 != 0) != (text12 == 0))
        {
          v44 = text12;
          text13 = [(RFPrimaryHeaderRichCardSection *)self text];
          if (text13)
          {
            text14 = [(RFPrimaryHeaderRichCardSection *)self text];
            text15 = [(RFPrimaryHeaderRichCardSection *)v6 text];
            v41 = text14;
            if (![text14 isEqual:?])
            {
              LOBYTE(v11) = 0;
              v24 = text13;
              goto LABEL_51;
            }

            v42 = v15;
          }

          else
          {
            v42 = v15;
          }

          text16 = [(RFPrimaryHeaderRichCardSection *)self text];
          text17 = [(RFPrimaryHeaderRichCardSection *)v6 text];
          if ((text16 != 0) != (text17 == 0))
          {
            v39 = text17;
            [(RFPrimaryHeaderRichCardSection *)self text];
            text8 = v42;
            v38 = v37 = text16;
            if (v38)
            {
              text18 = [(RFPrimaryHeaderRichCardSection *)self text];
              text19 = [(RFPrimaryHeaderRichCardSection *)v6 text];
              v36 = text18;
              if (![text18 isEqual:?])
              {
                LOBYTE(v11) = 0;
                v22 = v38;
LABEL_49:

LABEL_50:
                v24 = text13;
                if (!text13)
                {
LABEL_52:

                  if (text8)
                  {
                  }

LABEL_34:
                  text4 = v48;
                  if (!text3)
                  {
LABEL_36:

                    goto LABEL_37;
                  }

LABEL_35:

                  goto LABEL_36;
                }

LABEL_51:

                goto LABEL_52;
              }
            }

            thumbnail = [(RFPrimaryHeaderRichCardSection *)self thumbnail];
            thumbnail2 = [(RFPrimaryHeaderRichCardSection *)v6 thumbnail];
            if ((thumbnail != 0) == (thumbnail2 == 0))
            {

              LOBYTE(v11) = 0;
              text8 = v42;
              goto LABEL_48;
            }

            v32 = thumbnail;
            v33 = thumbnail2;
            [(RFPrimaryHeaderRichCardSection *)self thumbnail];
            v34 = text8 = v42;
            if (!v34 || (-[RFPrimaryHeaderRichCardSection thumbnail](self, "thumbnail"), v27 = objc_claimAutoreleasedReturnValue(), -[RFPrimaryHeaderRichCardSection thumbnail](v6, "thumbnail"), v28 = objc_claimAutoreleasedReturnValue(), v31 = v27, v29 = v27, thumbnail = v28, [v29 isEqual:v28]))
            {
              addTint = [(RFPrimaryHeaderRichCardSection *)self addTint];
              v11 = addTint ^ [(RFPrimaryHeaderRichCardSection *)v6 addTint]^ 1;
              if (!v34)
              {
LABEL_47:

LABEL_48:
                v22 = v38;
                if (!v38)
                {
                  goto LABEL_50;
                }

                goto LABEL_49;
              }
            }

            else
            {
              LOBYTE(v11) = 0;
            }

            goto LABEL_47;
          }

          text8 = v42;
          if (text13)
          {
          }

          text12 = v44;
        }

        if (text8)
        {
        }

        goto LABEL_32;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RFPrimaryHeaderRichCardSection;
  v4 = [(SFCardSection *)&v16 copyWithZone:zone];
  text = [(RFPrimaryHeaderRichCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFPrimaryHeaderRichCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFPrimaryHeaderRichCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFPrimaryHeaderRichCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  thumbnail = [(RFPrimaryHeaderRichCardSection *)self thumbnail];
  v14 = [thumbnail copy];
  [v4 setThumbnail:v14];

  [v4 setAddTint:{-[RFPrimaryHeaderRichCardSection addTint](self, "addTint")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFPrimaryHeaderRichCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFPrimaryHeaderRichCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFPrimaryHeaderRichCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFPrimaryHeaderRichCardSection)initWithCoder:(id)coder
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
    [(RFPrimaryHeaderRichCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFPrimaryHeaderRichCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFPrimaryHeaderRichCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFPrimaryHeaderRichCardSection *)v5 setText_4:text4];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFPrimaryHeaderRichCardSection *)v5 setThumbnail:thumbnail];

    [(RFPrimaryHeaderRichCardSection *)v5 setAddTint:[(SFCardSection *)v8 addTint]];
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

- (RFPrimaryHeaderRichCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v28.receiver = self;
  v28.super_class = RFPrimaryHeaderRichCardSection;
  v5 = [(SFCardSection *)&v28 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFPrimaryHeaderRichCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFPrimaryHeaderRichCardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFPrimaryHeaderRichCardSection *)v5 setText_3:v17];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v19 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text8];
      [(RFPrimaryHeaderRichCardSection *)v5 setText_4:v21];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v23 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:thumbnail2];
      [(RFPrimaryHeaderRichCardSection *)v5 setThumbnail:v25];
    }

    if ([protobufCopy addTint])
    {
      -[RFPrimaryHeaderRichCardSection setAddTint:](v5, "setAddTint:", [protobufCopy addTint]);
    }

    v26 = v5;
  }

  return v5;
}

@end