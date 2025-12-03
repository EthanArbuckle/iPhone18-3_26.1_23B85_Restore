@interface RFFactItemImageRightCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemImageRightCardSection)initWithCoder:(id)coder;
- (RFFactItemImageRightCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemImageRightCardSection

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = RFFactItemImageRightCardSection;
  v3 = [(SFCardSection *)&v11 hash];
  number = [(RFFactItemImageRightCardSection *)self number];
  v5 = [number hash];
  text = [(RFFactItemImageRightCardSection *)self text];
  v7 = v5 ^ [text hash];
  thumbnail = [(RFFactItemImageRightCardSection *)self thumbnail];
  v9 = v7 ^ [thumbnail hash];

  return v9 ^ v3;
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
    if ([(RFFactItemImageRightCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = RFFactItemImageRightCardSection;
      if ([(SFCardSection *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        number = [(RFFactItemImageRightCardSection *)self number];
        number2 = [(RFFactItemImageRightCardSection *)v6 number];
        if ((number != 0) == (number2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        number3 = [(RFFactItemImageRightCardSection *)self number];
        if (number3)
        {
          number4 = [(RFFactItemImageRightCardSection *)self number];
          number5 = [(RFFactItemImageRightCardSection *)v6 number];
          if (![number4 isEqual:number5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = number5;
        }

        text = [(RFFactItemImageRightCardSection *)self text];
        text2 = [(RFFactItemImageRightCardSection *)v6 text];
        v14 = text2;
        if ((text != 0) == (text2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        text3 = [(RFFactItemImageRightCardSection *)self text];
        if (text3)
        {
          v25 = text;
          text4 = [(RFFactItemImageRightCardSection *)self text];
          text5 = [(RFFactItemImageRightCardSection *)v6 text];
          v28 = text4;
          if (![text4 isEqual:?])
          {
            v11 = 0;
            text = v25;
            goto LABEL_26;
          }

          v29 = text3;
          v30 = number4;
          text = v25;
        }

        else
        {
          v29 = 0;
          v30 = number4;
        }

        thumbnail = [(RFFactItemImageRightCardSection *)self thumbnail];
        thumbnail2 = [(RFFactItemImageRightCardSection *)v6 thumbnail];
        if ((thumbnail != 0) == (thumbnail2 == 0))
        {

          v11 = 0;
          text3 = v29;
          number4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = thumbnail;
          v26 = thumbnail2;
          thumbnail3 = [(RFFactItemImageRightCardSection *)self thumbnail];
          text3 = v29;
          if (thumbnail3)
          {
            v23 = thumbnail3;
            thumbnail4 = [(RFFactItemImageRightCardSection *)self thumbnail];
            thumbnail5 = [(RFFactItemImageRightCardSection *)v6 thumbnail];
            v11 = [thumbnail4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          number4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        number5 = v31;
        if (!number3)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RFFactItemImageRightCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  number = [(RFFactItemImageRightCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber:v6];

  text = [(RFFactItemImageRightCardSection *)self text];
  v8 = [text copy];
  [v4 setText_1:v8];

  thumbnail = [(RFFactItemImageRightCardSection *)self thumbnail];
  v10 = [thumbnail copy];
  [v4 setThumbnail:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemImageRightCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemImageRightCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemImageRightCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemImageRightCardSection)initWithCoder:(id)coder
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
    [(RFFactItemImageRightCardSection *)v5 setNumber:number];

    text = [(SFCardSection *)v8 text];
    [(RFFactItemImageRightCardSection *)v5 setText_1:text];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemImageRightCardSection *)v5 setThumbnail:thumbnail];

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

- (RFFactItemImageRightCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFFactItemImageRightCardSection;
  v5 = [(SFCardSection *)&v20 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFFactItemImageRightCardSection *)v5 setNumber:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text2];
      [(RFFactItemImageRightCardSection *)v5 setText_1:v13];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v15 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v17 = [(RFVisualProperty *)v15 initWithProtobuf:thumbnail2];
      [(RFFactItemImageRightCardSection *)v5 setThumbnail:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end