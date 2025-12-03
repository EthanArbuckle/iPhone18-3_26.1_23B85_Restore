@interface RFBinaryButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFBinaryButtonCardSection)initWithCoder:(id)coder;
- (RFBinaryButtonCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFBinaryButtonCardSection

- (RFBinaryButtonCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = RFBinaryButtonCardSection;
  v5 = [(SFCardSection *)&v16 init];
  if (v5)
  {
    primary_button = [protobufCopy primary_button];

    if (primary_button)
    {
      v7 = [SFButtonItem alloc];
      primary_button2 = [protobufCopy primary_button];
      v9 = [(SFButtonItem *)v7 initWithProtobuf:primary_button2];
      [(RFBinaryButtonCardSection *)v5 setPrimary_button:v9];
    }

    secondary_button = [protobufCopy secondary_button];

    if (secondary_button)
    {
      v11 = [SFButtonItem alloc];
      secondary_button2 = [protobufCopy secondary_button];
      v13 = [(SFButtonItem *)v11 initWithProtobuf:secondary_button2];
      [(RFBinaryButtonCardSection *)v5 setSecondary_button:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = RFBinaryButtonCardSection;
  v3 = [(SFCardSection *)&v9 hash];
  primary_button = [(RFBinaryButtonCardSection *)self primary_button];
  v5 = [primary_button hash];
  secondary_button = [(RFBinaryButtonCardSection *)self secondary_button];
  v7 = v5 ^ [secondary_button hash];

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
    if ([(RFBinaryButtonCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = RFBinaryButtonCardSection;
      if ([(SFCardSection *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        primary_button = [(RFBinaryButtonCardSection *)self primary_button];
        primary_button2 = [(RFBinaryButtonCardSection *)v6 primary_button];
        if ((primary_button != 0) == (primary_button2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        primary_button3 = [(RFBinaryButtonCardSection *)self primary_button];
        if (primary_button3)
        {
          primary_button4 = [(RFBinaryButtonCardSection *)self primary_button];
          primary_button5 = [(RFBinaryButtonCardSection *)v6 primary_button];
          if (![primary_button4 isEqual:primary_button5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = primary_button5;
        }

        secondary_button = [(RFBinaryButtonCardSection *)self secondary_button];
        secondary_button2 = [(RFBinaryButtonCardSection *)v6 secondary_button];
        v14 = secondary_button2;
        if ((secondary_button != 0) == (secondary_button2 == 0))
        {

          v11 = 0;
        }

        else
        {
          secondary_button3 = [(RFBinaryButtonCardSection *)self secondary_button];
          if (secondary_button3)
          {
            v16 = secondary_button3;
            secondary_button4 = [(RFBinaryButtonCardSection *)self secondary_button];
            [(RFBinaryButtonCardSection *)v6 secondary_button];
            v17 = v20 = primary_button4;
            v11 = [secondary_button4 isEqual:v17];

            primary_button4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        primary_button5 = v21;
        if (!primary_button3)
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
  v10.super_class = RFBinaryButtonCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:zone];
  primary_button = [(RFBinaryButtonCardSection *)self primary_button];
  v6 = [primary_button copy];
  [v4 setPrimary_button:v6];

  secondary_button = [(RFBinaryButtonCardSection *)self secondary_button];
  v8 = [secondary_button copy];
  [v4 setSecondary_button:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFBinaryButtonCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFBinaryButtonCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFBinaryButtonCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFBinaryButtonCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFBinaryButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFBinaryButtonCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primary_button = [(SFCardSection *)v8 primary_button];
    [(RFBinaryButtonCardSection *)v5 setPrimary_button:primary_button];

    secondary_button = [(SFCardSection *)v8 secondary_button];
    [(RFBinaryButtonCardSection *)v5 setSecondary_button:secondary_button];

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