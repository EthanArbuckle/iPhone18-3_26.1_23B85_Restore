@interface RFSimpleItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSimpleItemStandardCardSection)initWithCoder:(id)coder;
- (RFSimpleItemStandardCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSimpleItemStandardCardSection

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = RFSimpleItemStandardCardSection;
  v3 = [(SFCardSection *)&v17 hash];
  text = [(RFSimpleItemStandardCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFSimpleItemStandardCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFSimpleItemStandardCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFSimpleItemStandardCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  text5 = [(RFSimpleItemStandardCardSection *)self text];
  v13 = v11 ^ [text5 hash] ^ v3;
  text6 = [(RFSimpleItemStandardCardSection *)self text];
  v15 = [text6 hash];

  return v13 ^ v15;
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
    if ([(RFSimpleItemStandardCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v58.receiver = self;
      v58.super_class = RFSimpleItemStandardCardSection;
      if ([(SFCardSection *)&v58 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFSimpleItemStandardCardSection *)self text];
        text2 = [(RFSimpleItemStandardCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        text3 = [(RFSimpleItemStandardCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSimpleItemStandardCardSection *)self text];
          text5 = [(RFSimpleItemStandardCardSection *)v6 text];
          if (![text4 isEqual:?])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v54 = text4;
        }

        text6 = [(RFSimpleItemStandardCardSection *)self text];
        text7 = [(RFSimpleItemStandardCardSection *)v6 text];
        if ((text6 != 0) == (text7 == 0))
        {
          goto LABEL_33;
        }

        text8 = [(RFSimpleItemStandardCardSection *)self text];
        if (text8)
        {
          text9 = [(RFSimpleItemStandardCardSection *)self text];
          text10 = [(RFSimpleItemStandardCardSection *)v6 text];
          if (([text9 isEqual:text10] & 1) == 0)
          {

LABEL_32:
LABEL_33:

            v11 = 0;
            goto LABEL_34;
          }

          v51 = text9;
          v53 = text2;
          v14 = text5;
          v15 = text8;
        }

        else
        {
          v53 = text2;
          v14 = text5;
          v15 = 0;
        }

        v52 = text10;
        text5 = v14;
        text11 = [(RFSimpleItemStandardCardSection *)self text];
        text12 = [(RFSimpleItemStandardCardSection *)v6 text];
        text8 = v15;
        text2 = v53;
        if ((text11 != 0) != (text12 == 0))
        {
          v50 = text12;
          text13 = [(RFSimpleItemStandardCardSection *)self text];
          if (text13)
          {
            text14 = [(RFSimpleItemStandardCardSection *)self text];
            text15 = [(RFSimpleItemStandardCardSection *)v6 text];
            v47 = text14;
            if (![text14 isEqual:?])
            {
              v11 = 0;
              v24 = text13;
              goto LABEL_57;
            }

            v48 = v15;
          }

          else
          {
            v48 = v15;
          }

          text16 = [(RFSimpleItemStandardCardSection *)self text];
          text17 = [(RFSimpleItemStandardCardSection *)v6 text];
          if ((text16 != 0) != (text17 == 0))
          {
            v45 = text17;
            [(RFSimpleItemStandardCardSection *)self text];
            text8 = v48;
            v44 = v43 = text16;
            if (v44)
            {
              text18 = [(RFSimpleItemStandardCardSection *)self text];
              text19 = [(RFSimpleItemStandardCardSection *)v6 text];
              v42 = text18;
              if (![text18 isEqual:?])
              {
                v11 = 0;
                v22 = v44;
LABEL_55:

LABEL_56:
                v24 = text13;
                if (!text13)
                {
LABEL_58:

                  if (text8)
                  {
                  }

LABEL_34:
                  text4 = v54;
                  if (!text3)
                  {
LABEL_36:

                    goto LABEL_37;
                  }

LABEL_35:

                  goto LABEL_36;
                }

LABEL_57:

                goto LABEL_58;
              }
            }

            text20 = [(RFSimpleItemStandardCardSection *)self text];
            text21 = [(RFSimpleItemStandardCardSection *)v6 text];
            if ((text20 != 0) == (text21 == 0))
            {

              v11 = 0;
              text8 = v48;
              goto LABEL_54;
            }

            v39 = text20;
            v40 = text21;
            [(RFSimpleItemStandardCardSection *)self text];
            v38 = text8 = v48;
            if (v38 && (-[RFSimpleItemStandardCardSection text](self, "text"), v27 = objc_claimAutoreleasedReturnValue(), -[RFSimpleItemStandardCardSection text](v6, "text"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
            {
              v11 = 0;
              v32 = v38;
            }

            else
            {
              text22 = [(RFSimpleItemStandardCardSection *)self text];
              text23 = [(RFSimpleItemStandardCardSection *)v6 text];
              if ((text22 != 0) == (text23 == 0))
              {

                v11 = 0;
                text8 = v48;
              }

              else
              {
                v35 = text23;
                text24 = [(RFSimpleItemStandardCardSection *)self text];
                text8 = v48;
                if (text24)
                {
                  v34 = text24;
                  text25 = [(RFSimpleItemStandardCardSection *)self text];
                  text26 = [(RFSimpleItemStandardCardSection *)v6 text];
                  v11 = [text25 isEqual:?];
                }

                else
                {

                  v11 = 1;
                }
              }

              v32 = v38;
              if (!v38)
              {
                goto LABEL_53;
              }
            }

LABEL_53:
LABEL_54:
            v22 = v44;
            if (!v44)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          text8 = v48;
          if (text13)
          {
          }

          text12 = v50;
        }

        if (text8)
        {
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RFSimpleItemStandardCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
  text = [(RFSimpleItemStandardCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSimpleItemStandardCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSimpleItemStandardCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFSimpleItemStandardCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  text5 = [(RFSimpleItemStandardCardSection *)self text];
  v14 = [text5 copy];
  [v4 setText_5:v14];

  text6 = [(RFSimpleItemStandardCardSection *)self text];
  v16 = [text6 copy];
  [v4 setText_6:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSimpleItemStandardCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSimpleItemStandardCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSimpleItemStandardCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSimpleItemStandardCardSection)initWithCoder:(id)coder
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
    [(RFSimpleItemStandardCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSimpleItemStandardCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSimpleItemStandardCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSimpleItemStandardCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFSimpleItemStandardCardSection *)v5 setText_5:text5];

    text6 = [(SFCardSection *)v8 text];
    [(RFSimpleItemStandardCardSection *)v5 setText_6:text6];

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

- (RFSimpleItemStandardCardSection)initWithProtobuf:(id)protobuf
{
  v52 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v49.receiver = self;
  v49.super_class = RFSimpleItemStandardCardSection;
  v5 = [(SFCardSection *)&v49 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSimpleItemStandardCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSimpleItemStandardCardSection *)v5 setText_2:v13];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text_3s2 = [protobufCopy text_3s];
    v17 = [text_3s2 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(text_3s2);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text_3s2 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v18);
    }

    [(RFSimpleItemStandardCardSection *)v5 setText_3:v15];
    text_4s = [protobufCopy text_4s];
    if (text_4s)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    text_4s2 = [protobufCopy text_4s];
    v25 = [text_4s2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(text_4s2);
          }

          v29 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text_4s2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v26);
    }

    [(RFSimpleItemStandardCardSection *)v5 setText_4:v23];
    text5 = [protobufCopy text];

    if (text5)
    {
      v31 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:text6];
      [(RFSimpleItemStandardCardSection *)v5 setText_5:v33];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v35 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:text8];
      [(RFSimpleItemStandardCardSection *)v5 setText_6:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

@end