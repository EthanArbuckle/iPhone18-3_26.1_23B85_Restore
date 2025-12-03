@interface RFReferenceStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFReferenceStandardCardSection)initWithCoder:(id)coder;
- (RFReferenceStandardCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFReferenceStandardCardSection

- (RFReferenceStandardCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = RFReferenceStandardCardSection;
  v5 = [(SFCardSection *)&v12 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFReferenceStandardCardSection *)v5 setText_1:v9];
    }

    if ([protobufCopy addTint])
    {
      -[RFReferenceStandardCardSection setAddTint:](v5, "setAddTint:", [protobufCopy addTint]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = RFReferenceStandardCardSection;
  v3 = [(SFCardSection *)&v8 hash];
  text = [(RFReferenceStandardCardSection *)self text];
  v5 = [text hash];
  v6 = v5 ^ [(RFReferenceStandardCardSection *)self addTint];

  return v6 ^ v3;
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
    if ([(RFReferenceStandardCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = RFReferenceStandardCardSection;
      if ([(SFCardSection *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        text = [(RFReferenceStandardCardSection *)self text];
        text2 = [(RFReferenceStandardCardSection *)v7 text];
        if ((text != 0) == (text2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        text3 = [(RFReferenceStandardCardSection *)self text];
        if (!text3 || (-[RFReferenceStandardCardSection text](self, "text"), v3 = objc_claimAutoreleasedReturnValue(), -[RFReferenceStandardCardSection text](v7, "text"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          addTint = [(RFReferenceStandardCardSection *)self addTint];
          v11 = addTint ^ [(RFReferenceStandardCardSection *)v7 addTint]^ 1;
          if (!text3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RFReferenceStandardCardSection;
  v4 = [(SFCardSection *)&v8 copyWithZone:zone];
  text = [(RFReferenceStandardCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  [v4 setAddTint:{-[RFReferenceStandardCardSection addTint](self, "addTint")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFReferenceStandardCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFReferenceStandardCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFReferenceStandardCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFReferenceStandardCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFReferenceStandardCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFReferenceStandardCardSection)initWithCoder:(id)coder
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
    [(RFReferenceStandardCardSection *)v5 setText_1:text];

    [(RFReferenceStandardCardSection *)v5 setAddTint:[(SFCardSection *)v8 addTint]];
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