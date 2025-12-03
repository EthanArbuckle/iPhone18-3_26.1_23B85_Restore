@interface RFFactItemShortHeroNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemShortHeroNumberCardSection)initWithCoder:(id)coder;
- (RFFactItemShortHeroNumberCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemShortHeroNumberCardSection

- (RFFactItemShortHeroNumberCardSection)initWithProtobuf:(id)protobuf
{
  v56 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v53.receiver = self;
  v53.super_class = RFFactItemShortHeroNumberCardSection;
  v5 = [(SFCardSection *)&v53 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFFactItemShortHeroNumberCardSection *)v5 setNumber:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text2];
      [(RFFactItemShortHeroNumberCardSection *)v5 setText_1:v13];
    }

    text_2s = [protobufCopy text_2s];
    if (text_2s)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text_2s2 = [protobufCopy text_2s];
    v17 = [text_2s2 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(text_2s2);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text_2s2 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v18);
    }

    [(RFFactItemShortHeroNumberCardSection *)v5 setText_2:v15];
    text_3s = [protobufCopy text_3s];
    if (text_3s)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text_3s2 = [protobufCopy text_3s];
    v25 = [text_3s2 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v46;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(text_3s2);
          }

          v29 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text_3s2 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v26);
    }

    [(RFFactItemShortHeroNumberCardSection *)v5 setText_3:v23];
    unit = [protobufCopy unit];

    if (unit)
    {
      v31 = [RFTextProperty alloc];
      unit2 = [protobufCopy unit];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:unit2];
      [(RFFactItemShortHeroNumberCardSection *)v5 setUnit:v33];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v35 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:text4];
      [(RFFactItemShortHeroNumberCardSection *)v5 setText_4:v37];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v39 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v41 = [(RFVisualProperty *)v39 initWithProtobuf:thumbnail2];
      [(RFFactItemShortHeroNumberCardSection *)v5 setThumbnail:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = RFFactItemShortHeroNumberCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  number = [(RFFactItemShortHeroNumberCardSection *)self number];
  v5 = [number hash];
  text = [(RFFactItemShortHeroNumberCardSection *)self text];
  v7 = v5 ^ [text hash];
  text2 = [(RFFactItemShortHeroNumberCardSection *)self text];
  v9 = v7 ^ [text2 hash];
  text3 = [(RFFactItemShortHeroNumberCardSection *)self text];
  v11 = v9 ^ [text3 hash];
  unit = [(RFFactItemShortHeroNumberCardSection *)self unit];
  v13 = v11 ^ [unit hash] ^ v3;
  text4 = [(RFFactItemShortHeroNumberCardSection *)self text];
  v15 = [text4 hash];
  thumbnail = [(RFFactItemShortHeroNumberCardSection *)self thumbnail];
  v17 = v15 ^ [thumbnail hash];

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
    if ([(RFFactItemShortHeroNumberCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = RFFactItemShortHeroNumberCardSection;
      if ([(SFCardSection *)&v73 isEqual:equalCopy])
      {
        v6 = equalCopy;
        number = [(RFFactItemShortHeroNumberCardSection *)self number];
        number2 = [(RFFactItemShortHeroNumberCardSection *)v6 number];
        if ((number != 0) == (number2 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        number3 = [(RFFactItemShortHeroNumberCardSection *)self number];
        if (number3)
        {
          number4 = [(RFFactItemShortHeroNumberCardSection *)self number];
          number5 = [(RFFactItemShortHeroNumberCardSection *)v6 number];
          if (![number4 isEqual:number5])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = number5;
          v72 = number4;
        }

        text = [(RFFactItemShortHeroNumberCardSection *)self text];
        text2 = [(RFFactItemShortHeroNumberCardSection *)v6 text];
        if ((text != 0) != (text2 == 0))
        {
          v70 = text2;
          text3 = [(RFFactItemShortHeroNumberCardSection *)self text];
          if (text3)
          {
            text4 = [(RFFactItemShortHeroNumberCardSection *)self text];
            text5 = [(RFFactItemShortHeroNumberCardSection *)v6 text];
            if (([text4 isEqual:text5] & 1) == 0)
            {

LABEL_45:
LABEL_46:
              v12 = 0;
              goto LABEL_47;
            }

            v68 = text5;
            v69 = text;
            v3 = text4;
            v18 = text3;
          }

          else
          {
            v69 = text;
            v18 = 0;
          }

          text6 = [(RFFactItemShortHeroNumberCardSection *)self text];
          text7 = [(RFFactItemShortHeroNumberCardSection *)v6 text];
          v21 = v18;
          v22 = v3;
          if ((text6 != 0) != (text7 == 0))
          {
            v66 = text6;
            v67 = text7;
            text8 = [(RFFactItemShortHeroNumberCardSection *)self text];
            if (text8)
            {
              text9 = [(RFFactItemShortHeroNumberCardSection *)self text];
              text10 = [(RFFactItemShortHeroNumberCardSection *)v6 text];
              if (([text9 isEqual:text10] & 1) == 0)
              {

                if (v21)
                {
                }

                goto LABEL_46;
              }

              v63 = text10;
              v64 = text9;
              v25 = v21;
            }

            else
            {
              v25 = v21;
            }

            text11 = [(RFFactItemShortHeroNumberCardSection *)self text];
            text12 = [(RFFactItemShortHeroNumberCardSection *)v6 text];
            v21 = v25;
            v22 = v3;
            if ((text11 != 0) != (text12 == 0))
            {
              v62 = text12;
              text13 = [(RFFactItemShortHeroNumberCardSection *)self text];
              if (text13)
              {
                text14 = [(RFFactItemShortHeroNumberCardSection *)self text];
                [(RFFactItemShortHeroNumberCardSection *)v6 text];
                v58 = v60 = text14;
                if (![text14 isEqual:?])
                {
                  v12 = 0;
                  v34 = text13;
                  goto LABEL_71;
                }

                v59 = v21;
              }

              else
              {
                v59 = v21;
              }

              unit = [(RFFactItemShortHeroNumberCardSection *)self unit];
              unit2 = [(RFFactItemShortHeroNumberCardSection *)v6 unit];
              if ((unit != 0) != (unit2 == 0))
              {
                v57 = unit2;
                unit3 = [(RFFactItemShortHeroNumberCardSection *)self unit];
                v56 = unit;
                if (unit3)
                {
                  unit4 = [(RFFactItemShortHeroNumberCardSection *)self unit];
                  unit5 = [(RFFactItemShortHeroNumberCardSection *)v6 unit];
                  v54 = unit4;
                  if (![unit4 isEqual:?])
                  {
                    v12 = 0;
                    v39 = unit3;
                    v21 = v59;
LABEL_69:

LABEL_70:
                    v34 = text13;
                    if (!text13)
                    {
LABEL_72:

                      if (text8)
                      {
                      }

                      if (v21)
                      {
                      }

LABEL_47:
                      number5 = v71;
                      number4 = v72;
                      if (!number3)
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

                  v55 = unit3;
                }

                else
                {
                  v55 = 0;
                }

                text15 = [(RFFactItemShortHeroNumberCardSection *)self text];
                text16 = [(RFFactItemShortHeroNumberCardSection *)v6 text];
                if ((text15 != 0) == (text16 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = text16;
                [(RFFactItemShortHeroNumberCardSection *)self text];
                v51 = v50 = text15;
                if (!v51 || (-[RFFactItemShortHeroNumberCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFFactItemShortHeroNumberCardSection text](v6, "text"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  thumbnail = [(RFFactItemShortHeroNumberCardSection *)self thumbnail];
                  thumbnail2 = [(RFFactItemShortHeroNumberCardSection *)v6 thumbnail];
                  if ((thumbnail != 0) == (thumbnail2 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = thumbnail2;
                    v49 = thumbnail;
                    thumbnail3 = [(RFFactItemShortHeroNumberCardSection *)self thumbnail];
                    v21 = v59;
                    if (thumbnail3)
                    {
                      v43 = thumbnail3;
                      thumbnail4 = [(RFFactItemShortHeroNumberCardSection *)self thumbnail];
                      thumbnail5 = [(RFFactItemShortHeroNumberCardSection *)v6 thumbnail];
                      v12 = [thumbnail4 isEqual:thumbnail5];
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

              if (text13)
              {
              }

              v21 = v59;
              text12 = v62;
            }

            if (text8)
            {
            }

            text6 = v66;
            text7 = v67;
          }

          if (v21)
          {
          }

          text = v69;
          text2 = v70;
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
  v20.super_class = RFFactItemShortHeroNumberCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:zone];
  number = [(RFFactItemShortHeroNumberCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber:v6];

  text = [(RFFactItemShortHeroNumberCardSection *)self text];
  v8 = [text copy];
  [v4 setText_1:v8];

  text2 = [(RFFactItemShortHeroNumberCardSection *)self text];
  v10 = [text2 copy];
  [v4 setText_2:v10];

  text3 = [(RFFactItemShortHeroNumberCardSection *)self text];
  v12 = [text3 copy];
  [v4 setText_3:v12];

  unit = [(RFFactItemShortHeroNumberCardSection *)self unit];
  v14 = [unit copy];
  [v4 setUnit:v14];

  text4 = [(RFFactItemShortHeroNumberCardSection *)self text];
  v16 = [text4 copy];
  [v4 setText_4:v16];

  thumbnail = [(RFFactItemShortHeroNumberCardSection *)self thumbnail];
  v18 = [thumbnail copy];
  [v4 setThumbnail:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemShortHeroNumberCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemShortHeroNumberCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemShortHeroNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemShortHeroNumberCardSection)initWithCoder:(id)coder
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
    [(RFFactItemShortHeroNumberCardSection *)v5 setNumber:number];

    text = [(SFCardSection *)v8 text];
    [(RFFactItemShortHeroNumberCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFFactItemShortHeroNumberCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFFactItemShortHeroNumberCardSection *)v5 setText_3:text3];

    unit = [(SFCardSection *)v8 unit];
    [(RFFactItemShortHeroNumberCardSection *)v5 setUnit:unit];

    text4 = [(SFCardSection *)v8 text];
    [(RFFactItemShortHeroNumberCardSection *)v5 setText_4:text4];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemShortHeroNumberCardSection *)v5 setThumbnail:thumbnail];

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