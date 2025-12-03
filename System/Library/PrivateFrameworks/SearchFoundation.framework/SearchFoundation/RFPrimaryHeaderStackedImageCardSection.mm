@interface RFPrimaryHeaderStackedImageCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPrimaryHeaderStackedImageCardSection)initWithCoder:(id)coder;
- (RFPrimaryHeaderStackedImageCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFPrimaryHeaderStackedImageCardSection

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = RFPrimaryHeaderStackedImageCardSection;
  v3 = [(SFCardSection *)&v11 hash];
  text = [(RFPrimaryHeaderStackedImageCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  images = [(RFPrimaryHeaderStackedImageCardSection *)self images];
  v9 = v7 ^ [images hash];

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
    if ([(RFPrimaryHeaderStackedImageCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = RFPrimaryHeaderStackedImageCardSection;
      if ([(SFCardSection *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFPrimaryHeaderStackedImageCardSection *)self text];
        text2 = [(RFPrimaryHeaderStackedImageCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        text3 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
        if (text3)
        {
          text4 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
          text5 = [(RFPrimaryHeaderStackedImageCardSection *)v6 text];
          if (![text4 isEqual:text5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = text5;
        }

        text6 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
        text7 = [(RFPrimaryHeaderStackedImageCardSection *)v6 text];
        v14 = text7;
        if ((text6 != 0) == (text7 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        text8 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
        if (text8)
        {
          v25 = text6;
          text9 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
          text10 = [(RFPrimaryHeaderStackedImageCardSection *)v6 text];
          v28 = text9;
          if (![text9 isEqual:?])
          {
            v11 = 0;
            text6 = v25;
            goto LABEL_26;
          }

          v29 = text8;
          v30 = text4;
          text6 = v25;
        }

        else
        {
          v29 = 0;
          v30 = text4;
        }

        images = [(RFPrimaryHeaderStackedImageCardSection *)self images];
        images2 = [(RFPrimaryHeaderStackedImageCardSection *)v6 images];
        if ((images != 0) == (images2 == 0))
        {

          v11 = 0;
          text8 = v29;
          text4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = images;
          v26 = images2;
          images3 = [(RFPrimaryHeaderStackedImageCardSection *)self images];
          text8 = v29;
          if (images3)
          {
            v23 = images3;
            images4 = [(RFPrimaryHeaderStackedImageCardSection *)self images];
            images5 = [(RFPrimaryHeaderStackedImageCardSection *)v6 images];
            v11 = [images4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          text4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        text5 = v31;
        if (!text3)
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
  v12.super_class = RFPrimaryHeaderStackedImageCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  text = [(RFPrimaryHeaderStackedImageCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFPrimaryHeaderStackedImageCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  images = [(RFPrimaryHeaderStackedImageCardSection *)self images];
  v10 = [images copy];
  [v4 setImages:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFPrimaryHeaderStackedImageCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFPrimaryHeaderStackedImageCardSection)initWithCoder:(id)coder
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
    [(RFPrimaryHeaderStackedImageCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFPrimaryHeaderStackedImageCardSection *)v5 setText_2:text2];

    images = [(SFCardSection *)v8 images];
    [(RFPrimaryHeaderStackedImageCardSection *)v5 setImages:images];

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

- (RFPrimaryHeaderStackedImageCardSection)initWithProtobuf:(id)protobuf
{
  v31 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v29.receiver = self;
  v29.super_class = RFPrimaryHeaderStackedImageCardSection;
  v5 = [(SFCardSection *)&v29 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFPrimaryHeaderStackedImageCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFPrimaryHeaderStackedImageCardSection *)v5 setText_2:v13];
    }

    images = [protobufCopy images];
    if (images)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    images2 = [protobufCopy images];
    v17 = [images2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(images2);
          }

          v21 = [[RFVisualProperty alloc] initWithProtobuf:*(*(&v25 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [images2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    [(RFPrimaryHeaderStackedImageCardSection *)v5 setImages:v15];
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

@end