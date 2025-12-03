@interface RFPrimaryHeaderMarqueeCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPrimaryHeaderMarqueeCardSection)initWithCoder:(id)coder;
- (RFPrimaryHeaderMarqueeCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFPrimaryHeaderMarqueeCardSection

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = RFPrimaryHeaderMarqueeCardSection;
  v3 = [(SFCardSection *)&v12 hash];
  text = [(RFPrimaryHeaderMarqueeCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  thumbnail = [(RFPrimaryHeaderMarqueeCardSection *)self thumbnail];
  v9 = v7 ^ [thumbnail hash];
  v10 = v9 ^ [(RFPrimaryHeaderMarqueeCardSection *)self addTint];

  return v10 ^ v3;
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
    if ([(RFPrimaryHeaderMarqueeCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = RFPrimaryHeaderMarqueeCardSection;
      if ([(SFCardSection *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFPrimaryHeaderMarqueeCardSection *)self text];
        text2 = [(RFPrimaryHeaderMarqueeCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_34:

          goto LABEL_35;
        }

        text3 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
        if (text3)
        {
          text4 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
          text5 = [(RFPrimaryHeaderMarqueeCardSection *)v6 text];
          if (![text4 isEqual:text5])
          {
            LOBYTE(v11) = 0;
            goto LABEL_32;
          }

          v33 = text4;
        }

        text6 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
        text7 = [(RFPrimaryHeaderMarqueeCardSection *)v6 text];
        v14 = text7;
        if ((text6 != 0) == (text7 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_31;
        }

        text8 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
        if (text8)
        {
          v27 = text6;
          text9 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
          text10 = [(RFPrimaryHeaderMarqueeCardSection *)v6 text];
          v30 = text9;
          if (![text9 isEqual:?])
          {
            LOBYTE(v11) = 0;
            text6 = v27;
            goto LABEL_29;
          }

          v31 = text8;
          v32 = text5;
          text6 = v27;
        }

        else
        {
          v31 = 0;
          v32 = text5;
        }

        thumbnail = [(RFPrimaryHeaderMarqueeCardSection *)self thumbnail];
        thumbnail2 = [(RFPrimaryHeaderMarqueeCardSection *)v6 thumbnail];
        if ((thumbnail != 0) == (thumbnail2 == 0))
        {

          LOBYTE(v11) = 0;
          text8 = v31;
          text5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = thumbnail2;
        v26 = thumbnail;
        [(RFPrimaryHeaderMarqueeCardSection *)self thumbnail];
        v28 = text8 = v31;
        if (v28)
        {
          thumbnail3 = [(RFPrimaryHeaderMarqueeCardSection *)self thumbnail];
          thumbnail4 = [(RFPrimaryHeaderMarqueeCardSection *)v6 thumbnail];
          v24 = thumbnail3;
          v20 = [thumbnail3 isEqual:?];
          text5 = v32;
          if (!v20)
          {
            LOBYTE(v11) = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              text4 = v33;
              if (!text3)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          text5 = v32;
        }

        addTint = [(RFPrimaryHeaderMarqueeCardSection *)self addTint];
        v11 = addTint ^ [(RFPrimaryHeaderMarqueeCardSection *)v6 addTint]^ 1;
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RFPrimaryHeaderMarqueeCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  text = [(RFPrimaryHeaderMarqueeCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFPrimaryHeaderMarqueeCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  thumbnail = [(RFPrimaryHeaderMarqueeCardSection *)self thumbnail];
  v10 = [thumbnail copy];
  [v4 setThumbnail:v10];

  [v4 setAddTint:{-[RFPrimaryHeaderMarqueeCardSection addTint](self, "addTint")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFPrimaryHeaderMarqueeCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFPrimaryHeaderMarqueeCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFPrimaryHeaderMarqueeCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFPrimaryHeaderMarqueeCardSection)initWithCoder:(id)coder
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
    [(RFPrimaryHeaderMarqueeCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFPrimaryHeaderMarqueeCardSection *)v5 setText_2:text2];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFPrimaryHeaderMarqueeCardSection *)v5 setThumbnail:thumbnail];

    [(RFPrimaryHeaderMarqueeCardSection *)v5 setAddTint:[(SFCardSection *)v8 addTint]];
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

- (RFPrimaryHeaderMarqueeCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFPrimaryHeaderMarqueeCardSection;
  v5 = [(SFCardSection *)&v20 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFPrimaryHeaderMarqueeCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFPrimaryHeaderMarqueeCardSection *)v5 setText_2:v13];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v15 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v17 = [(RFVisualProperty *)v15 initWithProtobuf:thumbnail2];
      [(RFPrimaryHeaderMarqueeCardSection *)v5 setThumbnail:v17];
    }

    if ([protobufCopy addTint])
    {
      -[RFPrimaryHeaderMarqueeCardSection setAddTint:](v5, "setAddTint:", [protobufCopy addTint]);
    }

    v18 = v5;
  }

  return v5;
}

@end