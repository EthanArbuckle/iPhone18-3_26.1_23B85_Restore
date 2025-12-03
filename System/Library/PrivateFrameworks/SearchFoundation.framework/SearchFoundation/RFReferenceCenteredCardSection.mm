@interface RFReferenceCenteredCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFReferenceCenteredCardSection)initWithCoder:(id)coder;
- (RFReferenceCenteredCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFReferenceCenteredCardSection

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = RFReferenceCenteredCardSection;
  v3 = [(SFCardSection *)&v14 hash];
  text = [(RFReferenceCenteredCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFReferenceCenteredCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFReferenceCenteredCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFReferenceCenteredCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  v12 = v11 ^ [(RFReferenceCenteredCardSection *)self add_tint];

  return v12 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(RFReferenceCenteredCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = RFReferenceCenteredCardSection;
      if ([(SFCardSection *)&v42 isEqual:equalCopy])
      {
        v5 = equalCopy;
        text = [(RFReferenceCenteredCardSection *)self text];
        text2 = [(RFReferenceCenteredCardSection *)v5 text];
        if ((text != 0) == (text2 == 0))
        {
          LOBYTE(v10) = 0;
LABEL_38:

          goto LABEL_39;
        }

        text3 = [(RFReferenceCenteredCardSection *)self text];
        if (text3)
        {
          text4 = [(RFReferenceCenteredCardSection *)self text];
          text5 = [(RFReferenceCenteredCardSection *)v5 text];
          if (![text4 isEqual:?])
          {
            LOBYTE(v10) = 0;
            goto LABEL_36;
          }

          v39 = text4;
        }

        text6 = [(RFReferenceCenteredCardSection *)self text];
        text7 = [(RFReferenceCenteredCardSection *)v5 text];
        if ((text6 != 0) != (text7 == 0))
        {
          text8 = [(RFReferenceCenteredCardSection *)self text];
          if (text8)
          {
            v13 = text8;
            text9 = [(RFReferenceCenteredCardSection *)self text];
            [(RFReferenceCenteredCardSection *)v5 text];
            v38 = v36 = text9;
            if (![text9 isEqual:?])
            {
              LOBYTE(v10) = 0;
              v19 = v38;
              goto LABEL_33;
            }

            v37 = v13;
          }

          else
          {
            v37 = 0;
          }

          text10 = [(RFReferenceCenteredCardSection *)self text];
          text11 = [(RFReferenceCenteredCardSection *)v5 text];
          if ((text10 != 0) != (text11 == 0))
          {
            v34 = text10;
            v35 = text11;
            text12 = [(RFReferenceCenteredCardSection *)self text];
            if (text12)
            {
              text13 = [(RFReferenceCenteredCardSection *)self text];
              text14 = [(RFReferenceCenteredCardSection *)v5 text];
              v33 = text13;
              if (![text13 isEqual:?])
              {
                LOBYTE(v10) = 0;
                v13 = v37;
                v19 = v38;
                goto LABEL_31;
              }
            }

            text15 = [(RFReferenceCenteredCardSection *)self text];
            v21 = text15 != 0;
            text16 = [(RFReferenceCenteredCardSection *)v5 text];
            if (v21 == (text16 == 0))
            {

              LOBYTE(v10) = 0;
              v13 = v37;
              v19 = v38;
              if (!text12)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            v29 = text16;
            v30 = text15;
            [(RFReferenceCenteredCardSection *)self text];
            v31 = v19 = v38;
            if (!v31 || (-[RFReferenceCenteredCardSection text](self, "text"), v23 = objc_claimAutoreleasedReturnValue(), -[RFReferenceCenteredCardSection text](v5, "text"), v24 = objc_claimAutoreleasedReturnValue(), v28 = v23, v25 = v23, v21 = v24, [v25 isEqual:v24]))
            {
              add_tint = [(RFReferenceCenteredCardSection *)self add_tint];
              v10 = add_tint ^ [(RFReferenceCenteredCardSection *)v5 add_tint]^ 1;
              if (!v31)
              {
                goto LABEL_42;
              }
            }

            else
            {
              LOBYTE(v10) = 0;
            }

LABEL_42:
            v13 = v37;
            if (!text12)
            {
LABEL_32:

              if (!v13)
              {
LABEL_34:

LABEL_35:
                text4 = v39;
                if (!text3)
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

          if (v37)
          {
          }
        }

        LOBYTE(v10) = 0;
        goto LABEL_35;
      }
    }

    LOBYTE(v10) = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RFReferenceCenteredCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:zone];
  text = [(RFReferenceCenteredCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFReferenceCenteredCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFReferenceCenteredCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFReferenceCenteredCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  [v4 setAdd_tint:{-[RFReferenceCenteredCardSection add_tint](self, "add_tint")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFReferenceCenteredCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFReferenceCenteredCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFReferenceCenteredCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFReferenceCenteredCardSection)initWithCoder:(id)coder
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
    [(RFReferenceCenteredCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFReferenceCenteredCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFReferenceCenteredCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFReferenceCenteredCardSection *)v5 setText_4:text4];

    [(RFReferenceCenteredCardSection *)v5 setAdd_tint:[(SFCardSection *)v8 add_tint]];
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

- (RFReferenceCenteredCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = RFReferenceCenteredCardSection;
  v5 = [(SFCardSection *)&v24 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFReferenceCenteredCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFReferenceCenteredCardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFReferenceCenteredCardSection *)v5 setText_3:v17];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v19 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text8];
      [(RFReferenceCenteredCardSection *)v5 setText_4:v21];
    }

    if ([protobufCopy add_tint])
    {
      -[RFReferenceCenteredCardSection setAdd_tint:](v5, "setAdd_tint:", [protobufCopy add_tint]);
    }

    v22 = v5;
  }

  return v5;
}

@end