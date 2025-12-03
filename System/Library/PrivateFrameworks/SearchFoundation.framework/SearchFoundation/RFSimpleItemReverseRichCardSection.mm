@interface RFSimpleItemReverseRichCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSimpleItemReverseRichCardSection)initWithCoder:(id)coder;
- (RFSimpleItemReverseRichCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSimpleItemReverseRichCardSection

- (RFSimpleItemReverseRichCardSection)initWithProtobuf:(id)protobuf
{
  v39 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v37.receiver = self;
  v37.super_class = RFSimpleItemReverseRichCardSection;
  v5 = [(SFCardSection *)&v37 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSimpleItemReverseRichCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSimpleItemReverseRichCardSection *)v5 setText_2:v13];
    }

    text_3s = [protobufCopy text_3s];
    if (text_3s)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    text_3s2 = [protobufCopy text_3s];
    v17 = [text_3s2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(text_3s2);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text_3s2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v18);
    }

    [(RFSimpleItemReverseRichCardSection *)v5 setText_3:v15];
    text5 = [protobufCopy text];

    if (text5)
    {
      v23 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:text6];
      [(RFSimpleItemReverseRichCardSection *)v5 setText_4:v25];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v27 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v29 = [(RFVisualProperty *)v27 initWithProtobuf:thumbnail2];
      [(RFSimpleItemReverseRichCardSection *)v5 setThumbnail:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = RFSimpleItemReverseRichCardSection;
  v3 = [(SFCardSection *)&v15 hash];
  text = [(RFSimpleItemReverseRichCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFSimpleItemReverseRichCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFSimpleItemReverseRichCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFSimpleItemReverseRichCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  thumbnail = [(RFSimpleItemReverseRichCardSection *)self thumbnail];
  v13 = v11 ^ [thumbnail hash];

  return v13 ^ v3;
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
    if ([(RFSimpleItemReverseRichCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v50.receiver = self;
      v50.super_class = RFSimpleItemReverseRichCardSection;
      if ([(SFCardSection *)&v50 isEqual:equalCopy])
      {
        v5 = equalCopy;
        text = [(RFSimpleItemReverseRichCardSection *)self text];
        text2 = [(RFSimpleItemReverseRichCardSection *)v5 text];
        if ((text != 0) == (text2 == 0))
        {
          v10 = 0;
LABEL_51:

          goto LABEL_52;
        }

        text3 = [(RFSimpleItemReverseRichCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSimpleItemReverseRichCardSection *)self text];
          text5 = [(RFSimpleItemReverseRichCardSection *)v5 text];
          if (![text4 isEqual:?])
          {
            v10 = 0;
            goto LABEL_49;
          }

          v47 = text4;
        }

        text6 = [(RFSimpleItemReverseRichCardSection *)self text];
        text7 = [(RFSimpleItemReverseRichCardSection *)v5 text];
        if ((text6 != 0) != (text7 == 0))
        {
          text8 = [(RFSimpleItemReverseRichCardSection *)self text];
          if (text8)
          {
            v13 = text8;
            text9 = [(RFSimpleItemReverseRichCardSection *)self text];
            [(RFSimpleItemReverseRichCardSection *)v5 text];
            v45 = v44 = text9;
            if (![text9 isEqual:?])
            {
              v10 = 0;
              v19 = v13;
              v20 = v45;
              goto LABEL_46;
            }

            v46 = v13;
          }

          else
          {
            v46 = 0;
          }

          text10 = [(RFSimpleItemReverseRichCardSection *)self text];
          text11 = [(RFSimpleItemReverseRichCardSection *)v5 text];
          if ((text10 != 0) != (text11 == 0))
          {
            v42 = text10;
            v43 = text11;
            text12 = [(RFSimpleItemReverseRichCardSection *)self text];
            if (text12)
            {
              text13 = [(RFSimpleItemReverseRichCardSection *)self text];
              text14 = [(RFSimpleItemReverseRichCardSection *)v5 text];
              v40 = text13;
              if (![text13 isEqual:?])
              {
                v10 = 0;
                v20 = v45;
                v19 = v46;
                goto LABEL_44;
              }

              v41 = text12;
            }

            else
            {
              v41 = 0;
            }

            text15 = [(RFSimpleItemReverseRichCardSection *)self text];
            text16 = [(RFSimpleItemReverseRichCardSection *)v5 text];
            if ((text15 != 0) != (text16 == 0))
            {
              v38 = text16;
              [(RFSimpleItemReverseRichCardSection *)self text];
              v37 = v20 = v45;
              if (v37)
              {
                v33 = text15;
                text17 = [(RFSimpleItemReverseRichCardSection *)self text];
                text18 = [(RFSimpleItemReverseRichCardSection *)v5 text];
                v36 = text17;
                if (![text17 isEqual:?])
                {
                  v10 = 0;
                  v27 = v37;
                  text15 = v33;
                  goto LABEL_42;
                }

                text15 = v33;
              }

              thumbnail = [(RFSimpleItemReverseRichCardSection *)self thumbnail];
              thumbnail2 = [(RFSimpleItemReverseRichCardSection *)v5 thumbnail];
              if ((thumbnail != 0) == (thumbnail2 == 0))
              {

                v10 = 0;
                v20 = v45;
                v27 = v37;
                if (!v37)
                {
LABEL_43:

                  text12 = v41;
                  v19 = v46;
                  if (!v41)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                v32 = thumbnail2;
                v34 = thumbnail;
                thumbnail3 = [(RFSimpleItemReverseRichCardSection *)self thumbnail];
                v20 = v45;
                v27 = v37;
                if (thumbnail3)
                {
                  v31 = thumbnail3;
                  thumbnail4 = [(RFSimpleItemReverseRichCardSection *)self thumbnail];
                  thumbnail5 = [(RFSimpleItemReverseRichCardSection *)v5 thumbnail];
                  v10 = [thumbnail4 isEqual:thumbnail5];

                  if (!v37)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {

                  v10 = 1;
                  if (!v37)
                  {
                    goto LABEL_43;
                  }
                }
              }

LABEL_42:

              goto LABEL_43;
            }

            v10 = 0;
            v20 = v45;
            v19 = v46;
            text12 = v41;
            if (!v41)
            {
LABEL_45:

              if (!v19)
              {
LABEL_47:

LABEL_48:
                text4 = v47;
                if (!text3)
                {
LABEL_50:

                  goto LABEL_51;
                }

LABEL_49:

                goto LABEL_50;
              }

LABEL_46:

              goto LABEL_47;
            }

LABEL_44:

            goto LABEL_45;
          }

          if (v46)
          {
          }
        }

        v10 = 0;
        goto LABEL_48;
      }
    }

    v10 = 0;
  }

LABEL_52:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RFSimpleItemReverseRichCardSection;
  v4 = [(SFCardSection *)&v16 copyWithZone:zone];
  text = [(RFSimpleItemReverseRichCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSimpleItemReverseRichCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSimpleItemReverseRichCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFSimpleItemReverseRichCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  thumbnail = [(RFSimpleItemReverseRichCardSection *)self thumbnail];
  v14 = [thumbnail copy];
  [v4 setThumbnail:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSimpleItemReverseRichCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSimpleItemReverseRichCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSimpleItemReverseRichCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSimpleItemReverseRichCardSection)initWithCoder:(id)coder
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
    [(RFSimpleItemReverseRichCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSimpleItemReverseRichCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSimpleItemReverseRichCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSimpleItemReverseRichCardSection *)v5 setText_4:text4];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSimpleItemReverseRichCardSection *)v5 setThumbnail:thumbnail];

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