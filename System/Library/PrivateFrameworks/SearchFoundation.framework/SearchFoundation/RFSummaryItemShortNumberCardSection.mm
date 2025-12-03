@interface RFSummaryItemShortNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemShortNumberCardSection)initWithCoder:(id)coder;
- (RFSummaryItemShortNumberCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemShortNumberCardSection

- (RFSummaryItemShortNumberCardSection)initWithProtobuf:(id)protobuf
{
  v60 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v57.receiver = self;
  v57.super_class = RFSummaryItemShortNumberCardSection;
  v5 = [(SFCardSection *)&v57 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFSummaryItemShortNumberCardSection *)v5 setNumber:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text2];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_2:v13];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v15 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text4];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_1:v17];
    }

    text_3s = [protobufCopy text_3s];
    if (text_3s)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text_3s2 = [protobufCopy text_3s];
    v21 = [text_3s2 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(text_3s2);
          }

          v25 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [text_3s2 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v22);
    }

    [(RFSummaryItemShortNumberCardSection *)v5 setText_3:v19];
    text_4s = [protobufCopy text_4s];
    if (text_4s)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text_4s2 = [protobufCopy text_4s];
    v29 = [text_4s2 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(text_4s2);
          }

          v33 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [text_4s2 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v30);
    }

    [(RFSummaryItemShortNumberCardSection *)v5 setText_4:v27];
    text5 = [protobufCopy text];

    if (text5)
    {
      v35 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:text6];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_5:v37];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v39 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:text8];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_6:v41];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v43 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:thumbnail2];
      [(RFSummaryItemShortNumberCardSection *)v5 setThumbnail:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v21.receiver = self;
  v21.super_class = RFSummaryItemShortNumberCardSection;
  v3 = [(SFCardSection *)&v21 hash];
  number = [(RFSummaryItemShortNumberCardSection *)self number];
  v5 = [number hash];
  text = [(RFSummaryItemShortNumberCardSection *)self text];
  v7 = v5 ^ [text hash];
  text2 = [(RFSummaryItemShortNumberCardSection *)self text];
  v9 = v7 ^ [text2 hash];
  text3 = [(RFSummaryItemShortNumberCardSection *)self text];
  v11 = v9 ^ [text3 hash];
  text4 = [(RFSummaryItemShortNumberCardSection *)self text];
  v13 = v11 ^ [text4 hash] ^ v3;
  text5 = [(RFSummaryItemShortNumberCardSection *)self text];
  v15 = [text5 hash];
  text6 = [(RFSummaryItemShortNumberCardSection *)self text];
  v17 = v15 ^ [text6 hash];
  thumbnail = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
  v19 = v17 ^ [thumbnail hash];

  return v13 ^ v19;
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
    if ([(RFSummaryItemShortNumberCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v74.receiver = self;
      v74.super_class = RFSummaryItemShortNumberCardSection;
      if ([(SFCardSection *)&v74 isEqual:equalCopy])
      {
        v5 = equalCopy;
        number = [(RFSummaryItemShortNumberCardSection *)self number];
        number2 = [(RFSummaryItemShortNumberCardSection *)v5 number];
        if ((number != 0) == (number2 == 0))
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        number3 = [(RFSummaryItemShortNumberCardSection *)self number];
        if (number3)
        {
          number4 = [(RFSummaryItemShortNumberCardSection *)self number];
          number5 = [(RFSummaryItemShortNumberCardSection *)v5 number];
          if (![number4 isEqual:number5])
          {
            v11 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v72 = number5;
          v73 = number4;
        }

        text = [(RFSummaryItemShortNumberCardSection *)self text];
        text2 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((text != 0) == (text2 == 0))
        {
          goto LABEL_23;
        }

        text3 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSummaryItemShortNumberCardSection *)self text];
          text5 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v70 = text4;
          if (![text4 isEqual:text5])
          {
            goto LABEL_21;
          }
        }

        v71 = text3;
        text6 = [(RFSummaryItemShortNumberCardSection *)self text];
        text7 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((text6 != 0) == (text7 == 0))
        {

          if (!text3)
          {
LABEL_22:

LABEL_23:
            v11 = 0;
            if (!number3)
            {
LABEL_26:

              goto LABEL_27;
            }

            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        v66 = text6;
        v67 = text7;
        text8 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (text8)
        {
          text9 = [(RFSummaryItemShortNumberCardSection *)self text];
          [(RFSummaryItemShortNumberCardSection *)v5 text];
          v64 = v65 = text9;
          if (![text9 isEqual:v64])
          {
LABEL_49:

LABEL_50:
            if (!text3)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        text10 = [(RFSummaryItemShortNumberCardSection *)self text];
        text11 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((text10 != 0) == (text11 == 0))
        {

          goto LABEL_48;
        }

        v62 = text10;
        v63 = text11;
        text12 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (text12)
        {
          text13 = [(RFSummaryItemShortNumberCardSection *)self text];
          text14 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v60 = text13;
          if (![text13 isEqual:?])
          {
            goto LABEL_39;
          }
        }

        v61 = text12;
        text15 = [(RFSummaryItemShortNumberCardSection *)self text];
        text16 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((text15 != 0) == (text16 == 0))
        {

          text12 = v61;
          if (!v61)
          {
LABEL_47:

LABEL_48:
            text3 = v71;
            if (!text8)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

LABEL_39:

          goto LABEL_47;
        }

        v56 = text16;
        v57 = text15;
        [(RFSummaryItemShortNumberCardSection *)self text];
        v58 = text12 = v61;
        if (v58)
        {
          text17 = [(RFSummaryItemShortNumberCardSection *)self text];
          text18 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v55 = text17;
          v27 = text17;
          v28 = v58;
          if (![v27 isEqual:?])
          {
LABEL_45:

LABEL_46:
            if (!text12)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }
        }

        text19 = [(RFSummaryItemShortNumberCardSection *)self text];
        text20 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((text19 != 0) == (text20 == 0))
        {

          text12 = v61;
          v28 = v58;
          if (!v58)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v52 = text20;
        v53 = text19;
        text21 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (text21)
        {
          text22 = [(RFSummaryItemShortNumberCardSection *)self text];
          text23 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v50 = text22;
          v33 = [text22 isEqual:?];
          v34 = v57;
          if (!v33)
          {
            v11 = 0;
            goto LABEL_68;
          }

          v51 = text21;
        }

        else
        {
          v51 = 0;
        }

        text24 = [(RFSummaryItemShortNumberCardSection *)self text];
        text25 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((text24 != 0) != (text25 == 0))
        {
          v46 = text24;
          v47 = text25;
          text26 = [(RFSummaryItemShortNumberCardSection *)self text];
          if (!text26 || (-[RFSummaryItemShortNumberCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemShortNumberCardSection text](v5, "text"), v43 = objc_claimAutoreleasedReturnValue(), v44 = v37, [v37 isEqual:?]))
          {
            thumbnail = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
            thumbnail2 = [(RFSummaryItemShortNumberCardSection *)v5 thumbnail];
            if ((thumbnail != 0) == (thumbnail2 == 0))
            {

              v11 = 0;
            }

            else
            {
              thumbnail3 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
              if (thumbnail3)
              {
                v40 = thumbnail3;
                thumbnail4 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
                thumbnail5 = [(RFSummaryItemShortNumberCardSection *)v5 thumbnail];
                v11 = [thumbnail4 isEqual:thumbnail5];
              }

              else
              {

                v11 = 1;
              }
            }

            v34 = v57;
            text21 = v51;
            if (!text26)
            {
LABEL_67:

              if (!text21)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v11 = 0;
            v34 = v57;
            text21 = v51;
          }

          goto LABEL_67;
        }

        v11 = 0;
        text21 = v51;
        v34 = v57;
        if (!v51)
        {
LABEL_69:

          if (v58)
          {
          }

          if (v61)
          {
          }

          if (text8)
          {
          }

          if (v71)
          {
          }

          if (!number3)
          {
            goto LABEL_26;
          }

LABEL_24:
          number5 = v72;
          number4 = v73;
          goto LABEL_25;
        }

LABEL_68:

        goto LABEL_69;
      }
    }

    v11 = 0;
  }

LABEL_28:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22.receiver = self;
  v22.super_class = RFSummaryItemShortNumberCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:zone];
  number = [(RFSummaryItemShortNumberCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber:v6];

  text = [(RFSummaryItemShortNumberCardSection *)self text];
  v8 = [text copy];
  [v4 setText_2:v8];

  text2 = [(RFSummaryItemShortNumberCardSection *)self text];
  v10 = [text2 copy];
  [v4 setText_1:v10];

  text3 = [(RFSummaryItemShortNumberCardSection *)self text];
  v12 = [text3 copy];
  [v4 setText_3:v12];

  text4 = [(RFSummaryItemShortNumberCardSection *)self text];
  v14 = [text4 copy];
  [v4 setText_4:v14];

  text5 = [(RFSummaryItemShortNumberCardSection *)self text];
  v16 = [text5 copy];
  [v4 setText_5:v16];

  text6 = [(RFSummaryItemShortNumberCardSection *)self text];
  v18 = [text6 copy];
  [v4 setText_6:v18];

  thumbnail = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
  v20 = [thumbnail copy];
  [v4 setThumbnail:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemShortNumberCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemShortNumberCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemShortNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemShortNumberCardSection)initWithCoder:(id)coder
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
    [(RFSummaryItemShortNumberCardSection *)v5 setNumber:number];

    text = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_2:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_1:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_5:text5];

    text6 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_6:text6];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemShortNumberCardSection *)v5 setThumbnail:thumbnail];

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