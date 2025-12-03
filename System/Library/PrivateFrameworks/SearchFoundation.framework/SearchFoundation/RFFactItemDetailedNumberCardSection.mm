@interface RFFactItemDetailedNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemDetailedNumberCardSection)initWithCoder:(id)coder;
- (RFFactItemDetailedNumberCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemDetailedNumberCardSection

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = RFFactItemDetailedNumberCardSection;
  v3 = [(SFCardSection *)&v17 hash];
  number = [(RFFactItemDetailedNumberCardSection *)self number];
  v5 = [number hash];
  text = [(RFFactItemDetailedNumberCardSection *)self text];
  v7 = v5 ^ [text hash];
  text2 = [(RFFactItemDetailedNumberCardSection *)self text];
  v9 = v7 ^ [text2 hash];
  text3 = [(RFFactItemDetailedNumberCardSection *)self text];
  v11 = v9 ^ [text3 hash];
  thumbnail = [(RFFactItemDetailedNumberCardSection *)self thumbnail];
  v13 = v11 ^ [thumbnail hash] ^ v3;
  text4 = [(RFFactItemDetailedNumberCardSection *)self text];
  v15 = [text4 hash];

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
    if ([(RFFactItemDetailedNumberCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v58.receiver = self;
      v58.super_class = RFFactItemDetailedNumberCardSection;
      if ([(SFCardSection *)&v58 isEqual:equalCopy])
      {
        v6 = equalCopy;
        number = [(RFFactItemDetailedNumberCardSection *)self number];
        number2 = [(RFFactItemDetailedNumberCardSection *)v6 number];
        if ((number != 0) == (number2 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        number3 = [(RFFactItemDetailedNumberCardSection *)self number];
        if (number3)
        {
          number4 = [(RFFactItemDetailedNumberCardSection *)self number];
          number5 = [(RFFactItemDetailedNumberCardSection *)v6 number];
          if (![number4 isEqual:?])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v54 = number4;
        }

        text = [(RFFactItemDetailedNumberCardSection *)self text];
        text2 = [(RFFactItemDetailedNumberCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          goto LABEL_33;
        }

        text3 = [(RFFactItemDetailedNumberCardSection *)self text];
        if (text3)
        {
          text4 = [(RFFactItemDetailedNumberCardSection *)self text];
          text5 = [(RFFactItemDetailedNumberCardSection *)v6 text];
          if (([text4 isEqual:text5] & 1) == 0)
          {

LABEL_32:
LABEL_33:

            v11 = 0;
            goto LABEL_34;
          }

          v51 = text4;
          v53 = number2;
          v14 = number5;
          v15 = text3;
        }

        else
        {
          v53 = number2;
          v14 = number5;
          v15 = 0;
        }

        v52 = text5;
        number5 = v14;
        text6 = [(RFFactItemDetailedNumberCardSection *)self text];
        text7 = [(RFFactItemDetailedNumberCardSection *)v6 text];
        text3 = v15;
        number2 = v53;
        if ((text6 != 0) != (text7 == 0))
        {
          v50 = text7;
          text8 = [(RFFactItemDetailedNumberCardSection *)self text];
          if (text8)
          {
            text9 = [(RFFactItemDetailedNumberCardSection *)self text];
            text10 = [(RFFactItemDetailedNumberCardSection *)v6 text];
            v47 = text9;
            if (![text9 isEqual:?])
            {
              v11 = 0;
              v24 = text8;
              goto LABEL_57;
            }

            v48 = v15;
          }

          else
          {
            v48 = v15;
          }

          text11 = [(RFFactItemDetailedNumberCardSection *)self text];
          text12 = [(RFFactItemDetailedNumberCardSection *)v6 text];
          if ((text11 != 0) != (text12 == 0))
          {
            v45 = text12;
            [(RFFactItemDetailedNumberCardSection *)self text];
            text3 = v48;
            v44 = v43 = text11;
            if (v44)
            {
              text13 = [(RFFactItemDetailedNumberCardSection *)self text];
              text14 = [(RFFactItemDetailedNumberCardSection *)v6 text];
              v42 = text13;
              if (![text13 isEqual:?])
              {
                v11 = 0;
                v22 = v44;
LABEL_55:

LABEL_56:
                v24 = text8;
                if (!text8)
                {
LABEL_58:

                  if (text3)
                  {
                  }

LABEL_34:
                  number4 = v54;
                  if (!number3)
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

            thumbnail = [(RFFactItemDetailedNumberCardSection *)self thumbnail];
            thumbnail2 = [(RFFactItemDetailedNumberCardSection *)v6 thumbnail];
            if ((thumbnail != 0) == (thumbnail2 == 0))
            {

              v11 = 0;
              text3 = v48;
              goto LABEL_54;
            }

            v39 = thumbnail;
            v40 = thumbnail2;
            [(RFFactItemDetailedNumberCardSection *)self thumbnail];
            v38 = text3 = v48;
            if (v38 && (-[RFFactItemDetailedNumberCardSection thumbnail](self, "thumbnail"), v27 = objc_claimAutoreleasedReturnValue(), -[RFFactItemDetailedNumberCardSection thumbnail](v6, "thumbnail"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
            {
              v11 = 0;
              v32 = v38;
            }

            else
            {
              text15 = [(RFFactItemDetailedNumberCardSection *)self text];
              text16 = [(RFFactItemDetailedNumberCardSection *)v6 text];
              if ((text15 != 0) == (text16 == 0))
              {

                v11 = 0;
                text3 = v48;
              }

              else
              {
                v35 = text16;
                text17 = [(RFFactItemDetailedNumberCardSection *)self text];
                text3 = v48;
                if (text17)
                {
                  v34 = text17;
                  text18 = [(RFFactItemDetailedNumberCardSection *)self text];
                  text19 = [(RFFactItemDetailedNumberCardSection *)v6 text];
                  v11 = [text18 isEqual:?];
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

          text3 = v48;
          if (text8)
          {
          }

          text7 = v50;
        }

        if (text3)
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
  v18.super_class = RFFactItemDetailedNumberCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
  number = [(RFFactItemDetailedNumberCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber:v6];

  text = [(RFFactItemDetailedNumberCardSection *)self text];
  v8 = [text copy];
  [v4 setText_1:v8];

  text2 = [(RFFactItemDetailedNumberCardSection *)self text];
  v10 = [text2 copy];
  [v4 setText_2:v10];

  text3 = [(RFFactItemDetailedNumberCardSection *)self text];
  v12 = [text3 copy];
  [v4 setText_3:v12];

  thumbnail = [(RFFactItemDetailedNumberCardSection *)self thumbnail];
  v14 = [thumbnail copy];
  [v4 setThumbnail:v14];

  text4 = [(RFFactItemDetailedNumberCardSection *)self text];
  v16 = [text4 copy];
  [v4 setText_4:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemDetailedNumberCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemDetailedNumberCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemDetailedNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemDetailedNumberCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    number = [(SFCardSection *)v8 number];
    [(RFFactItemDetailedNumberCardSection *)v5 setNumber:number];

    text = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_3:text3];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemDetailedNumberCardSection *)v5 setThumbnail:thumbnail];

    text4 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_4:text4];

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

- (RFFactItemDetailedNumberCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v32.receiver = self;
  v32.super_class = RFFactItemDetailedNumberCardSection;
  v5 = [(SFCardSection *)&v32 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFFactItemDetailedNumberCardSection *)v5 setNumber:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text2];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_1:v13];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v15 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text4];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_2:v17];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v19 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text6];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_3:v21];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v23 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:thumbnail2];
      [(RFFactItemDetailedNumberCardSection *)v5 setThumbnail:v25];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v27 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:text8];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_4:v29];
    }

    v30 = v5;
  }

  return v5;
}

@end