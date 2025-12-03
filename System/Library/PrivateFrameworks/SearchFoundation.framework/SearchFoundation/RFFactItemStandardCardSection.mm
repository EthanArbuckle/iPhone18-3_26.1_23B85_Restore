@interface RFFactItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemStandardCardSection)initWithCoder:(id)coder;
- (RFFactItemStandardCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemStandardCardSection

- (RFFactItemStandardCardSection)initWithProtobuf:(id)protobuf
{
  v56 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v53.receiver = self;
  v53.super_class = RFFactItemStandardCardSection;
  v5 = [(SFCardSection *)&v53 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFFactItemStandardCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFFactItemStandardCardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFFactItemStandardCardSection *)v5 setText_3:v17];
    }

    text_4s = [protobufCopy text_4s];
    if (text_4s)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text_4s2 = [protobufCopy text_4s];
    v21 = [text_4s2 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(text_4s2);
          }

          v25 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [text_4s2 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v22);
    }

    [(RFFactItemStandardCardSection *)v5 setText_4:v19];
    text_5s = [protobufCopy text_5s];
    if (text_5s)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text_5s2 = [protobufCopy text_5s];
    v29 = [text_5s2 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(text_5s2);
          }

          v33 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [text_5s2 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v30);
    }

    [(RFFactItemStandardCardSection *)v5 setText_5:v27];
    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v35 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v37 = [(RFVisualProperty *)v35 initWithProtobuf:thumbnail2];
      [(RFFactItemStandardCardSection *)v5 setThumbnail:v37];
    }

    thumbnail22 = [protobufCopy thumbnail2];

    if (thumbnail22)
    {
      v39 = [RFVisualProperty alloc];
      thumbnail23 = [protobufCopy thumbnail2];
      v41 = [(RFVisualProperty *)v39 initWithProtobuf:thumbnail23];
      [(RFFactItemStandardCardSection *)v5 setThumbnail2:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = RFFactItemStandardCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  text = [(RFFactItemStandardCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFFactItemStandardCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFFactItemStandardCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFFactItemStandardCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  text5 = [(RFFactItemStandardCardSection *)self text];
  v13 = v11 ^ [text5 hash] ^ v3;
  thumbnail = [(RFFactItemStandardCardSection *)self thumbnail];
  v15 = [thumbnail hash];
  thumbnail2 = [(RFFactItemStandardCardSection *)self thumbnail2];
  v17 = v15 ^ [thumbnail2 hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(RFFactItemStandardCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = RFFactItemStandardCardSection;
      if ([(SFCardSection *)&v73 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFFactItemStandardCardSection *)self text];
        text2 = [(RFFactItemStandardCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        text3 = [(RFFactItemStandardCardSection *)self text];
        if (text3)
        {
          text4 = [(RFFactItemStandardCardSection *)self text];
          text5 = [(RFFactItemStandardCardSection *)v6 text];
          if (![text4 isEqual:text5])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = text5;
          v72 = text4;
        }

        text6 = [(RFFactItemStandardCardSection *)self text];
        text7 = [(RFFactItemStandardCardSection *)v6 text];
        if ((text6 != 0) != (text7 == 0))
        {
          v70 = text7;
          text8 = [(RFFactItemStandardCardSection *)self text];
          if (text8)
          {
            text9 = [(RFFactItemStandardCardSection *)self text];
            text10 = [(RFFactItemStandardCardSection *)v6 text];
            if (([text9 isEqual:text10] & 1) == 0)
            {

LABEL_45:
LABEL_46:
              v12 = 0;
              goto LABEL_47;
            }

            v68 = text10;
            v69 = text6;
            v3 = text9;
            v18 = text8;
          }

          else
          {
            v69 = text6;
            v18 = 0;
          }

          text11 = [(RFFactItemStandardCardSection *)self text];
          text12 = [(RFFactItemStandardCardSection *)v6 text];
          v21 = v18;
          v22 = v3;
          if ((text11 != 0) != (text12 == 0))
          {
            v66 = text11;
            v67 = text12;
            text13 = [(RFFactItemStandardCardSection *)self text];
            if (text13)
            {
              text14 = [(RFFactItemStandardCardSection *)self text];
              text15 = [(RFFactItemStandardCardSection *)v6 text];
              if (([text14 isEqual:text15] & 1) == 0)
              {

                if (v21)
                {
                }

                goto LABEL_46;
              }

              v63 = text15;
              v64 = text14;
              v25 = v21;
            }

            else
            {
              v25 = v21;
            }

            text16 = [(RFFactItemStandardCardSection *)self text];
            text17 = [(RFFactItemStandardCardSection *)v6 text];
            v21 = v25;
            v22 = v3;
            if ((text16 != 0) != (text17 == 0))
            {
              v62 = text17;
              text18 = [(RFFactItemStandardCardSection *)self text];
              if (text18)
              {
                text19 = [(RFFactItemStandardCardSection *)self text];
                [(RFFactItemStandardCardSection *)v6 text];
                v58 = v60 = text19;
                if (![text19 isEqual:?])
                {
                  v12 = 0;
                  v34 = text18;
                  goto LABEL_71;
                }

                v59 = v21;
              }

              else
              {
                v59 = v21;
              }

              text20 = [(RFFactItemStandardCardSection *)self text];
              text21 = [(RFFactItemStandardCardSection *)v6 text];
              if ((text20 != 0) != (text21 == 0))
              {
                v57 = text21;
                text22 = [(RFFactItemStandardCardSection *)self text];
                v56 = text20;
                if (text22)
                {
                  text23 = [(RFFactItemStandardCardSection *)self text];
                  text24 = [(RFFactItemStandardCardSection *)v6 text];
                  v54 = text23;
                  if (![text23 isEqual:?])
                  {
                    v12 = 0;
                    v39 = text22;
                    v21 = v59;
LABEL_69:

LABEL_70:
                    v34 = text18;
                    if (!text18)
                    {
LABEL_72:

                      if (text13)
                      {
                      }

                      if (v21)
                      {
                      }

LABEL_47:
                      text5 = v71;
                      text4 = v72;
                      if (!text3)
                      {
LABEL_49:

                        goto LABEL_50;
                      }

LABEL_48:

                      goto LABEL_49;
                    }

LABEL_71:

                    goto LABEL_72;
                  }

                  v55 = text22;
                }

                else
                {
                  v55 = 0;
                }

                thumbnail = [(RFFactItemStandardCardSection *)self thumbnail];
                thumbnail2 = [(RFFactItemStandardCardSection *)v6 thumbnail];
                if ((thumbnail != 0) == (thumbnail2 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = thumbnail2;
                [(RFFactItemStandardCardSection *)self thumbnail];
                v51 = v50 = thumbnail;
                if (!v51 || (-[RFFactItemStandardCardSection thumbnail](self, "thumbnail"), v37 = objc_claimAutoreleasedReturnValue(), -[RFFactItemStandardCardSection thumbnail](v6, "thumbnail"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  thumbnail22 = [(RFFactItemStandardCardSection *)self thumbnail2];
                  thumbnail23 = [(RFFactItemStandardCardSection *)v6 thumbnail2];
                  if ((thumbnail22 != 0) == (thumbnail23 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = thumbnail23;
                    v49 = thumbnail22;
                    thumbnail24 = [(RFFactItemStandardCardSection *)self thumbnail2];
                    v21 = v59;
                    if (thumbnail24)
                    {
                      v43 = thumbnail24;
                      thumbnail25 = [(RFFactItemStandardCardSection *)self thumbnail2];
                      thumbnail26 = [(RFFactItemStandardCardSection *)v6 thumbnail2];
                      v12 = [thumbnail25 isEqual:thumbnail26];
                    }

                    else
                    {

                      v12 = 1;
                    }
                  }

                  v38 = v51;
                  if (!v51)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v12 = 0;
                  v21 = v59;
                  v38 = v51;
                }

LABEL_67:
LABEL_68:
                v39 = v55;
                if (!v55)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              if (text18)
              {
              }

              v21 = v59;
              text17 = v62;
            }

            if (text13)
            {
            }

            text11 = v66;
            text12 = v67;
          }

          if (v21)
          {
          }

          text6 = v69;
          text7 = v70;
        }

        goto LABEL_45;
      }
    }

    v12 = 0;
  }

LABEL_51:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = RFFactItemStandardCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:zone];
  text = [(RFFactItemStandardCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFFactItemStandardCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFFactItemStandardCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFFactItemStandardCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  text5 = [(RFFactItemStandardCardSection *)self text];
  v14 = [text5 copy];
  [v4 setText_5:v14];

  thumbnail = [(RFFactItemStandardCardSection *)self thumbnail];
  v16 = [thumbnail copy];
  [v4 setThumbnail:v16];

  thumbnail2 = [(RFFactItemStandardCardSection *)self thumbnail2];
  v18 = [thumbnail2 copy];
  [v4 setThumbnail2:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemStandardCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemStandardCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemStandardCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemStandardCardSection)initWithCoder:(id)coder
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
    [(RFFactItemStandardCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_5:text5];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemStandardCardSection *)v5 setThumbnail:thumbnail];

    thumbnail2 = [(SFCardSection *)v8 thumbnail2];
    [(RFFactItemStandardCardSection *)v5 setThumbnail2:thumbnail2];

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