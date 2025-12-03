@interface RFSummaryItemSwitchV2CardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemSwitchV2CardSection)initWithCoder:(id)coder;
- (RFSummaryItemSwitchV2CardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemSwitchV2CardSection

- (unint64_t)hash
{
  v16.receiver = self;
  v16.super_class = RFSummaryItemSwitchV2CardSection;
  v3 = [(SFCardSection *)&v16 hash];
  is_on = [(RFSummaryItemSwitchV2CardSection *)self is_on];
  text = [(RFSummaryItemSwitchV2CardSection *)self text];
  v6 = is_on ^ [text hash];
  text2 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v8 = v6 ^ [text2 hash];
  text3 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v10 = v3 ^ v8 ^ [text3 hash];
  text4 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v12 = [text4 hash];
  thumbnail = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
  v14 = v12 ^ [thumbnail hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    if ([(RFSummaryItemSwitchV2CardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v51.receiver = self;
      v51.super_class = RFSummaryItemSwitchV2CardSection;
      if ([(SFCardSection *)&v51 isEqual:equalCopy])
      {
        v5 = equalCopy;
        is_on = [(RFSummaryItemSwitchV2CardSection *)self is_on];
        if (is_on != [(RFSummaryItemSwitchV2CardSection *)v5 is_on])
        {
          v7 = 0;
LABEL_54:

          goto LABEL_55;
        }

        text = [(RFSummaryItemSwitchV2CardSection *)self text];
        text2 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
        if ((text != 0) == (text2 == 0))
        {
          v7 = 0;
LABEL_53:

          goto LABEL_54;
        }

        text3 = [(RFSummaryItemSwitchV2CardSection *)self text];
        if (text3)
        {
          text4 = [(RFSummaryItemSwitchV2CardSection *)self text];
          text5 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
          if (![text4 isEqual:?])
          {
            v7 = 0;
            goto LABEL_51;
          }

          v48 = text4;
        }

        text6 = [(RFSummaryItemSwitchV2CardSection *)self text];
        text7 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
        if ((text6 != 0) != (text7 == 0))
        {
          text8 = [(RFSummaryItemSwitchV2CardSection *)self text];
          if (text8)
          {
            v14 = text8;
            text9 = [(RFSummaryItemSwitchV2CardSection *)self text];
            [(RFSummaryItemSwitchV2CardSection *)v5 text];
            v46 = v45 = text9;
            if (![text9 isEqual:?])
            {
              v7 = 0;
              v20 = v14;
              v21 = v46;
              goto LABEL_48;
            }

            v47 = v14;
          }

          else
          {
            v47 = 0;
          }

          text10 = [(RFSummaryItemSwitchV2CardSection *)self text];
          text11 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
          if ((text10 != 0) != (text11 == 0))
          {
            v43 = text10;
            v44 = text11;
            text12 = [(RFSummaryItemSwitchV2CardSection *)self text];
            if (text12)
            {
              text13 = [(RFSummaryItemSwitchV2CardSection *)self text];
              text14 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
              v41 = text13;
              if (![text13 isEqual:?])
              {
                v7 = 0;
                v21 = v46;
                v20 = v47;
                goto LABEL_46;
              }

              v42 = text12;
            }

            else
            {
              v42 = 0;
            }

            text15 = [(RFSummaryItemSwitchV2CardSection *)self text];
            text16 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
            if ((text15 != 0) != (text16 == 0))
            {
              v39 = text16;
              [(RFSummaryItemSwitchV2CardSection *)self text];
              v38 = v21 = v46;
              if (v38)
              {
                v34 = text15;
                text17 = [(RFSummaryItemSwitchV2CardSection *)self text];
                text18 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
                v37 = text17;
                if (![text17 isEqual:?])
                {
                  v7 = 0;
                  v28 = v38;
                  text15 = v34;
                  goto LABEL_44;
                }

                text15 = v34;
              }

              thumbnail = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
              thumbnail2 = [(RFSummaryItemSwitchV2CardSection *)v5 thumbnail];
              if ((thumbnail != 0) == (thumbnail2 == 0))
              {

                v7 = 0;
                v21 = v46;
                v28 = v38;
                if (!v38)
                {
LABEL_45:

                  text12 = v42;
                  v20 = v47;
                  if (!v42)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_46;
                }
              }

              else
              {
                v33 = thumbnail2;
                v35 = thumbnail;
                thumbnail3 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
                v21 = v46;
                v28 = v38;
                if (thumbnail3)
                {
                  v32 = thumbnail3;
                  thumbnail4 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
                  thumbnail5 = [(RFSummaryItemSwitchV2CardSection *)v5 thumbnail];
                  v7 = [thumbnail4 isEqual:thumbnail5];

                  if (!v38)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {

                  v7 = 1;
                  if (!v38)
                  {
                    goto LABEL_45;
                  }
                }
              }

LABEL_44:

              goto LABEL_45;
            }

            v7 = 0;
            v21 = v46;
            v20 = v47;
            text12 = v42;
            if (!v42)
            {
LABEL_47:

              if (!v20)
              {
LABEL_49:

LABEL_50:
                text4 = v48;
                if (!text3)
                {
LABEL_52:

                  goto LABEL_53;
                }

LABEL_51:

                goto LABEL_52;
              }

LABEL_48:

              goto LABEL_49;
            }

LABEL_46:

            goto LABEL_47;
          }

          if (v47)
          {
          }
        }

        v7 = 0;
        goto LABEL_50;
      }
    }

    v7 = 0;
  }

LABEL_55:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RFSummaryItemSwitchV2CardSection;
  v4 = [(SFCardSection *)&v16 copyWithZone:zone];
  [v4 setIs_on:{-[RFSummaryItemSwitchV2CardSection is_on](self, "is_on")}];
  text = [(RFSummaryItemSwitchV2CardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  thumbnail = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
  v14 = [thumbnail copy];
  [v4 setThumbnail:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemSwitchV2CardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemSwitchV2CardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemSwitchV2CardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemSwitchV2CardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RFSummaryItemSwitchV2CardSection *)v5 setIs_on:[(SFCardSection *)v8 is_on]];
    text = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_4:text4];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemSwitchV2CardSection *)v5 setThumbnail:thumbnail];

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

- (RFSummaryItemSwitchV2CardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v28.receiver = self;
  v28.super_class = RFSummaryItemSwitchV2CardSection;
  v5 = [(SFCardSection *)&v28 init];
  if (v5)
  {
    if ([protobufCopy is_on])
    {
      -[RFSummaryItemSwitchV2CardSection setIs_on:](v5, "setIs_on:", [protobufCopy is_on]);
    }

    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_3:v17];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v19 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text8];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_4:v21];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v23 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:thumbnail2];
      [(RFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v25];
    }

    v26 = v5;
  }

  return v5;
}

@end