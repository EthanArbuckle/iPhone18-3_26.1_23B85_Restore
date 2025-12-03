@interface RFDisambiguationTitleCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFDisambiguationTitleCardSection)initWithCoder:(id)coder;
- (RFDisambiguationTitleCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFDisambiguationTitleCardSection

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = RFDisambiguationTitleCardSection;
  v3 = [(SFCardSection *)&v9 hash];
  text = [(RFDisambiguationTitleCardSection *)self text];
  v5 = [text hash];
  thumbnail = [(RFDisambiguationTitleCardSection *)self thumbnail];
  v7 = v5 ^ [thumbnail hash];

  return v7 ^ v3;
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
    if ([(RFDisambiguationTitleCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = RFDisambiguationTitleCardSection;
      if ([(SFCardSection *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFDisambiguationTitleCardSection *)self text];
        text2 = [(RFDisambiguationTitleCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        text3 = [(RFDisambiguationTitleCardSection *)self text];
        if (text3)
        {
          text4 = [(RFDisambiguationTitleCardSection *)self text];
          text5 = [(RFDisambiguationTitleCardSection *)v6 text];
          if (![text4 isEqual:text5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = text5;
        }

        thumbnail = [(RFDisambiguationTitleCardSection *)self thumbnail];
        thumbnail2 = [(RFDisambiguationTitleCardSection *)v6 thumbnail];
        v14 = thumbnail2;
        if ((thumbnail != 0) == (thumbnail2 == 0))
        {

          v11 = 0;
        }

        else
        {
          thumbnail3 = [(RFDisambiguationTitleCardSection *)self thumbnail];
          if (thumbnail3)
          {
            v16 = thumbnail3;
            thumbnail4 = [(RFDisambiguationTitleCardSection *)self thumbnail];
            [(RFDisambiguationTitleCardSection *)v6 thumbnail];
            v17 = v20 = text4;
            v11 = [thumbnail4 isEqual:v17];

            text4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        text5 = v21;
        if (!text3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RFDisambiguationTitleCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:zone];
  text = [(RFDisambiguationTitleCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  thumbnail = [(RFDisambiguationTitleCardSection *)self thumbnail];
  v8 = [thumbnail copy];
  [v4 setThumbnail:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFDisambiguationTitleCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFDisambiguationTitleCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFDisambiguationTitleCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFDisambiguationTitleCardSection)initWithCoder:(id)coder
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
    [(RFDisambiguationTitleCardSection *)v5 setText_1:text];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFDisambiguationTitleCardSection *)v5 setThumbnail:thumbnail];

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

- (RFDisambiguationTitleCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFDisambiguationTitleCardSection;
  v5 = [(SFCardSection *)&v16 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFDisambiguationTitleCardSection *)v5 setText_1:v9];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v11 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v13 = [(RFVisualProperty *)v11 initWithProtobuf:thumbnail2];
      [(RFDisambiguationTitleCardSection *)v5 setThumbnail:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end