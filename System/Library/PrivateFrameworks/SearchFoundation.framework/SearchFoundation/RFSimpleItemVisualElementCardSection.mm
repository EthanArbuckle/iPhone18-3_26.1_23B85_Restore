@interface RFSimpleItemVisualElementCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSimpleItemVisualElementCardSection)initWithCoder:(id)coder;
- (RFSimpleItemVisualElementCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSimpleItemVisualElementCardSection

- (RFSimpleItemVisualElementCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = RFSimpleItemVisualElementCardSection;
  v5 = [(SFCardSection *)&v24 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [RFVisualProperty alloc];
      image2 = [protobufCopy image];
      v9 = [(RFVisualProperty *)v7 initWithProtobuf:image2];
      [(RFSimpleItemVisualElementCardSection *)v5 setImage:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text2];
      [(RFSimpleItemVisualElementCardSection *)v5 setText_1:v13];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v15 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text4];
      [(RFSimpleItemVisualElementCardSection *)v5 setText_2:v17];
    }

    footnote = [protobufCopy footnote];

    if (footnote)
    {
      v19 = [RFTextProperty alloc];
      footnote2 = [protobufCopy footnote];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:footnote2];
      [(RFSimpleItemVisualElementCardSection *)v5 setFootnote:v21];
    }

    if ([protobufCopy horizontal_alignment])
    {
      -[RFSimpleItemVisualElementCardSection setHorizontal_alignment:](v5, "setHorizontal_alignment:", [protobufCopy horizontal_alignment]);
    }

    if ([protobufCopy attribution_style])
    {
      -[RFSimpleItemVisualElementCardSection setAttribution_style:](v5, "setAttribution_style:", [protobufCopy attribution_style]);
    }

    v22 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = RFSimpleItemVisualElementCardSection;
  v3 = [(SFCardSection *)&v15 hash];
  image = [(RFSimpleItemVisualElementCardSection *)self image];
  v5 = [image hash];
  text = [(RFSimpleItemVisualElementCardSection *)self text];
  v7 = v5 ^ [text hash];
  text2 = [(RFSimpleItemVisualElementCardSection *)self text];
  v9 = v7 ^ [text2 hash];
  footnote = [(RFSimpleItemVisualElementCardSection *)self footnote];
  v11 = v9 ^ [footnote hash];
  v12 = v11 ^ [(RFSimpleItemVisualElementCardSection *)self horizontal_alignment]^ v3;
  attribution_style = [(RFSimpleItemVisualElementCardSection *)self attribution_style];

  return v12 ^ attribution_style;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(RFSimpleItemVisualElementCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v43.receiver = self;
      v43.super_class = RFSimpleItemVisualElementCardSection;
      if ([(SFCardSection *)&v43 isEqual:equalCopy])
      {
        v5 = equalCopy;
        image = [(RFSimpleItemVisualElementCardSection *)self image];
        image2 = [(RFSimpleItemVisualElementCardSection *)v5 image];
        if ((image != 0) == (image2 == 0))
        {
          v10 = 0;
LABEL_38:

          goto LABEL_39;
        }

        image3 = [(RFSimpleItemVisualElementCardSection *)self image];
        if (image3)
        {
          image4 = [(RFSimpleItemVisualElementCardSection *)self image];
          image5 = [(RFSimpleItemVisualElementCardSection *)v5 image];
          if (![image4 isEqual:?])
          {
            v10 = 0;
            goto LABEL_36;
          }

          v40 = image4;
        }

        text = [(RFSimpleItemVisualElementCardSection *)self text];
        text2 = [(RFSimpleItemVisualElementCardSection *)v5 text];
        if ((text != 0) != (text2 == 0))
        {
          text3 = [(RFSimpleItemVisualElementCardSection *)self text];
          if (text3)
          {
            v13 = text3;
            text4 = [(RFSimpleItemVisualElementCardSection *)self text];
            [(RFSimpleItemVisualElementCardSection *)v5 text];
            v39 = v37 = text4;
            if (![text4 isEqual:?])
            {
              v10 = 0;
              v19 = v39;
              goto LABEL_33;
            }

            v38 = v13;
          }

          else
          {
            v38 = 0;
          }

          text5 = [(RFSimpleItemVisualElementCardSection *)self text];
          text6 = [(RFSimpleItemVisualElementCardSection *)v5 text];
          if ((text5 != 0) != (text6 == 0))
          {
            v35 = text5;
            v36 = text6;
            text7 = [(RFSimpleItemVisualElementCardSection *)self text];
            if (text7)
            {
              text8 = [(RFSimpleItemVisualElementCardSection *)self text];
              text9 = [(RFSimpleItemVisualElementCardSection *)v5 text];
              v34 = text8;
              if (![text8 isEqual:?])
              {
                v10 = 0;
                v13 = v38;
                v19 = v39;
                goto LABEL_31;
              }
            }

            footnote = [(RFSimpleItemVisualElementCardSection *)self footnote];
            footnote2 = [(RFSimpleItemVisualElementCardSection *)v5 footnote];
            if ((footnote != 0) == (footnote2 == 0))
            {

              v10 = 0;
              v13 = v38;
              v19 = v39;
              if (!text7)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            v31 = footnote2;
            v32 = footnote;
            [(RFSimpleItemVisualElementCardSection *)self footnote];
            v22 = v19 = v39;
            if (v22)
            {
              v28 = text7;
              footnote3 = [(RFSimpleItemVisualElementCardSection *)self footnote];
              [(RFSimpleItemVisualElementCardSection *)v5 footnote];
              v30 = v27 = footnote3;
              if (![footnote3 isEqual:?])
              {
                v10 = 0;
                text7 = v28;
                v26 = v30;
                goto LABEL_46;
              }

              text7 = v28;
            }

            horizontal_alignment = [(RFSimpleItemVisualElementCardSection *)self horizontal_alignment];
            if (horizontal_alignment == [(RFSimpleItemVisualElementCardSection *)v5 horizontal_alignment])
            {
              attribution_style = [(RFSimpleItemVisualElementCardSection *)self attribution_style];
              v10 = attribution_style == [(RFSimpleItemVisualElementCardSection *)v5 attribution_style];
            }

            else
            {
              v10 = 0;
            }

            v26 = v30;
            if (!v22)
            {
LABEL_47:

              v13 = v38;
              if (!text7)
              {
LABEL_32:

                if (!v13)
                {
LABEL_34:

LABEL_35:
                  image4 = v40;
                  if (!image3)
                  {
LABEL_37:

                    goto LABEL_38;
                  }

LABEL_36:

                  goto LABEL_37;
                }

LABEL_33:

                goto LABEL_34;
              }

LABEL_31:

              goto LABEL_32;
            }

LABEL_46:

            goto LABEL_47;
          }

          if (v38)
          {
          }
        }

        v10 = 0;
        goto LABEL_35;
      }
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RFSimpleItemVisualElementCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:zone];
  image = [(RFSimpleItemVisualElementCardSection *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  text = [(RFSimpleItemVisualElementCardSection *)self text];
  v8 = [text copy];
  [v4 setText_1:v8];

  text2 = [(RFSimpleItemVisualElementCardSection *)self text];
  v10 = [text2 copy];
  [v4 setText_2:v10];

  footnote = [(RFSimpleItemVisualElementCardSection *)self footnote];
  v12 = [footnote copy];
  [v4 setFootnote:v12];

  [v4 setHorizontal_alignment:{-[RFSimpleItemVisualElementCardSection horizontal_alignment](self, "horizontal_alignment")}];
  [v4 setAttribution_style:{-[RFSimpleItemVisualElementCardSection attribution_style](self, "attribution_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSimpleItemVisualElementCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSimpleItemVisualElementCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSimpleItemVisualElementCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSimpleItemVisualElementCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [(SFCardSection *)v8 image];
    [(RFSimpleItemVisualElementCardSection *)v5 setImage:image];

    text = [(SFCardSection *)v8 text];
    [(RFSimpleItemVisualElementCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSimpleItemVisualElementCardSection *)v5 setText_2:text2];

    footnote = [(SFCardSection *)v8 footnote];
    [(RFSimpleItemVisualElementCardSection *)v5 setFootnote:footnote];

    [(RFSimpleItemVisualElementCardSection *)v5 setHorizontal_alignment:[(SFCardSection *)v8 horizontal_alignment]];
    [(RFSimpleItemVisualElementCardSection *)v5 setAttribution_style:[(SFCardSection *)v8 attribution_style]];
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