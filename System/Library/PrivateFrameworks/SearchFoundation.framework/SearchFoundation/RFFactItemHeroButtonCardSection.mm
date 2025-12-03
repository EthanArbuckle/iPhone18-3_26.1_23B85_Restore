@interface RFFactItemHeroButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemHeroButtonCardSection)initWithCoder:(id)coder;
- (RFFactItemHeroButtonCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemHeroButtonCardSection

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = RFFactItemHeroButtonCardSection;
  v3 = [(SFCardSection *)&v11 hash];
  number = [(RFFactItemHeroButtonCardSection *)self number];
  v5 = [number hash];
  text = [(RFFactItemHeroButtonCardSection *)self text];
  v7 = v5 ^ [text hash];
  button = [(RFFactItemHeroButtonCardSection *)self button];
  v9 = v7 ^ [button hash];

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
    if ([(RFFactItemHeroButtonCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = RFFactItemHeroButtonCardSection;
      if ([(SFCardSection *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        number = [(RFFactItemHeroButtonCardSection *)self number];
        number2 = [(RFFactItemHeroButtonCardSection *)v6 number];
        if ((number != 0) == (number2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        number3 = [(RFFactItemHeroButtonCardSection *)self number];
        if (number3)
        {
          number4 = [(RFFactItemHeroButtonCardSection *)self number];
          number5 = [(RFFactItemHeroButtonCardSection *)v6 number];
          if (![number4 isEqual:number5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = number5;
        }

        text = [(RFFactItemHeroButtonCardSection *)self text];
        text2 = [(RFFactItemHeroButtonCardSection *)v6 text];
        v14 = text2;
        if ((text != 0) == (text2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        text3 = [(RFFactItemHeroButtonCardSection *)self text];
        if (text3)
        {
          v25 = text;
          text4 = [(RFFactItemHeroButtonCardSection *)self text];
          text5 = [(RFFactItemHeroButtonCardSection *)v6 text];
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

        button = [(RFFactItemHeroButtonCardSection *)self button];
        button2 = [(RFFactItemHeroButtonCardSection *)v6 button];
        if ((button != 0) == (button2 == 0))
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
          v24 = button;
          v26 = button2;
          button3 = [(RFFactItemHeroButtonCardSection *)self button];
          text3 = v29;
          if (button3)
          {
            v23 = button3;
            button4 = [(RFFactItemHeroButtonCardSection *)self button];
            button5 = [(RFFactItemHeroButtonCardSection *)v6 button];
            v11 = [button4 isEqual:?];
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
  v12.super_class = RFFactItemHeroButtonCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  number = [(RFFactItemHeroButtonCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber:v6];

  text = [(RFFactItemHeroButtonCardSection *)self text];
  v8 = [text copy];
  [v4 setText_1:v8];

  button = [(RFFactItemHeroButtonCardSection *)self button];
  v10 = [button copy];
  [v4 setButton:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemHeroButtonCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemHeroButtonCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemHeroButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemHeroButtonCardSection)initWithCoder:(id)coder
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
    [(RFFactItemHeroButtonCardSection *)v5 setNumber:number];

    text = [(SFCardSection *)v8 text];
    [(RFFactItemHeroButtonCardSection *)v5 setText_1:text];

    button = [(SFCardSection *)v8 button];
    [(RFFactItemHeroButtonCardSection *)v5 setButton:button];

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

- (RFFactItemHeroButtonCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFFactItemHeroButtonCardSection;
  v5 = [(SFCardSection *)&v20 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFFactItemHeroButtonCardSection *)v5 setNumber:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text2];
      [(RFFactItemHeroButtonCardSection *)v5 setText_1:v13];
    }

    button = [protobufCopy button];

    if (button)
    {
      v15 = [SFButtonItem alloc];
      button2 = [protobufCopy button];
      v17 = [(SFButtonItem *)v15 initWithProtobuf:button2];
      [(RFFactItemHeroButtonCardSection *)v5 setButton:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end