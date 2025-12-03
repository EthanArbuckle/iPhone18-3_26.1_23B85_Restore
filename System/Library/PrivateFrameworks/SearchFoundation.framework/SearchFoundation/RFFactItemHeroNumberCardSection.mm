@interface RFFactItemHeroNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemHeroNumberCardSection)initWithCoder:(id)coder;
- (RFFactItemHeroNumberCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFFactItemHeroNumberCardSection

- (RFFactItemHeroNumberCardSection)initWithProtobuf:(id)protobuf
{
  v52 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v49.receiver = self;
  v49.super_class = RFFactItemHeroNumberCardSection;
  v5 = [(SFCardSection *)&v49 init];
  if (v5)
  {
    number = [protobufCopy number];

    if (number)
    {
      v7 = [RFTextProperty alloc];
      number2 = [protobufCopy number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:number2];
      [(RFFactItemHeroNumberCardSection *)v5 setNumber:v9];
    }

    unit = [protobufCopy unit];

    if (unit)
    {
      v11 = [RFTextProperty alloc];
      unit2 = [protobufCopy unit];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:unit2];
      [(RFFactItemHeroNumberCardSection *)v5 setUnit:v13];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text_2s2 = [protobufCopy text_2s];
    v17 = [text_2s2 countByEnumeratingWithState:&v45 objects:v51 count:16];
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
            objc_enumerationMutation(text_2s2);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text_2s2 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v18);
    }

    [(RFFactItemHeroNumberCardSection *)v5 setText_2:v15];
    text_3s = [protobufCopy text_3s];
    if (text_3s)
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
    text_3s2 = [protobufCopy text_3s];
    v25 = [text_3s2 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
            objc_enumerationMutation(text_3s2);
          }

          v29 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text_3s2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v26);
    }

    [(RFFactItemHeroNumberCardSection *)v5 setText_3:v23];
    text = [protobufCopy text];

    if (text)
    {
      v31 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:text2];
      [(RFFactItemHeroNumberCardSection *)v5 setText_4:v33];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v35 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:text4];
      [(RFFactItemHeroNumberCardSection *)v5 setText_5:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = RFFactItemHeroNumberCardSection;
  v3 = [(SFCardSection *)&v17 hash];
  number = [(RFFactItemHeroNumberCardSection *)self number];
  v5 = [number hash];
  unit = [(RFFactItemHeroNumberCardSection *)self unit];
  v7 = v5 ^ [unit hash];
  text = [(RFFactItemHeroNumberCardSection *)self text];
  v9 = v7 ^ [text hash];
  text2 = [(RFFactItemHeroNumberCardSection *)self text];
  v11 = v9 ^ [text2 hash];
  text3 = [(RFFactItemHeroNumberCardSection *)self text];
  v13 = v11 ^ [text3 hash] ^ v3;
  text4 = [(RFFactItemHeroNumberCardSection *)self text];
  v15 = [text4 hash];

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
    if ([(RFFactItemHeroNumberCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v58.receiver = self;
      v58.super_class = RFFactItemHeroNumberCardSection;
      if ([(SFCardSection *)&v58 isEqual:equalCopy])
      {
        v6 = equalCopy;
        number = [(RFFactItemHeroNumberCardSection *)self number];
        number2 = [(RFFactItemHeroNumberCardSection *)v6 number];
        if ((number != 0) == (number2 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        number3 = [(RFFactItemHeroNumberCardSection *)self number];
        if (number3)
        {
          number4 = [(RFFactItemHeroNumberCardSection *)self number];
          number5 = [(RFFactItemHeroNumberCardSection *)v6 number];
          if (![number4 isEqual:?])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v54 = number4;
        }

        unit = [(RFFactItemHeroNumberCardSection *)self unit];
        unit2 = [(RFFactItemHeroNumberCardSection *)v6 unit];
        if ((unit != 0) == (unit2 == 0))
        {
          goto LABEL_33;
        }

        unit3 = [(RFFactItemHeroNumberCardSection *)self unit];
        if (unit3)
        {
          unit4 = [(RFFactItemHeroNumberCardSection *)self unit];
          unit5 = [(RFFactItemHeroNumberCardSection *)v6 unit];
          if (([unit4 isEqual:unit5] & 1) == 0)
          {

LABEL_32:
LABEL_33:

            v11 = 0;
            goto LABEL_34;
          }

          v51 = unit4;
          v53 = number2;
          v14 = number5;
          v15 = unit3;
        }

        else
        {
          v53 = number2;
          v14 = number5;
          v15 = 0;
        }

        v52 = unit5;
        number5 = v14;
        text = [(RFFactItemHeroNumberCardSection *)self text];
        text2 = [(RFFactItemHeroNumberCardSection *)v6 text];
        unit3 = v15;
        number2 = v53;
        if ((text != 0) != (text2 == 0))
        {
          v50 = text2;
          text3 = [(RFFactItemHeroNumberCardSection *)self text];
          if (text3)
          {
            text4 = [(RFFactItemHeroNumberCardSection *)self text];
            text5 = [(RFFactItemHeroNumberCardSection *)v6 text];
            v47 = text4;
            if (![text4 isEqual:?])
            {
              v11 = 0;
              v24 = text3;
              goto LABEL_57;
            }

            v48 = v15;
          }

          else
          {
            v48 = v15;
          }

          text6 = [(RFFactItemHeroNumberCardSection *)self text];
          text7 = [(RFFactItemHeroNumberCardSection *)v6 text];
          if ((text6 != 0) != (text7 == 0))
          {
            v45 = text7;
            [(RFFactItemHeroNumberCardSection *)self text];
            unit3 = v48;
            v44 = v43 = text6;
            if (v44)
            {
              text8 = [(RFFactItemHeroNumberCardSection *)self text];
              text9 = [(RFFactItemHeroNumberCardSection *)v6 text];
              v42 = text8;
              if (![text8 isEqual:?])
              {
                v11 = 0;
                v22 = v44;
LABEL_55:

LABEL_56:
                v24 = text3;
                if (!text3)
                {
LABEL_58:

                  if (unit3)
                  {
                  }

LABEL_34:
                  number4 = v54;
                  if (!number3)
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

            text10 = [(RFFactItemHeroNumberCardSection *)self text];
            text11 = [(RFFactItemHeroNumberCardSection *)v6 text];
            if ((text10 != 0) == (text11 == 0))
            {

              v11 = 0;
              unit3 = v48;
              goto LABEL_54;
            }

            v39 = text10;
            v40 = text11;
            [(RFFactItemHeroNumberCardSection *)self text];
            v38 = unit3 = v48;
            if (v38 && (-[RFFactItemHeroNumberCardSection text](self, "text"), v27 = objc_claimAutoreleasedReturnValue(), -[RFFactItemHeroNumberCardSection text](v6, "text"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
            {
              v11 = 0;
              v32 = v38;
            }

            else
            {
              text12 = [(RFFactItemHeroNumberCardSection *)self text];
              text13 = [(RFFactItemHeroNumberCardSection *)v6 text];
              if ((text12 != 0) == (text13 == 0))
              {

                v11 = 0;
                unit3 = v48;
              }

              else
              {
                v35 = text13;
                text14 = [(RFFactItemHeroNumberCardSection *)self text];
                unit3 = v48;
                if (text14)
                {
                  v34 = text14;
                  text15 = [(RFFactItemHeroNumberCardSection *)self text];
                  text16 = [(RFFactItemHeroNumberCardSection *)v6 text];
                  v11 = [text15 isEqual:?];
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

          unit3 = v48;
          if (text3)
          {
          }

          text2 = v50;
        }

        if (unit3)
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
  v18.super_class = RFFactItemHeroNumberCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
  number = [(RFFactItemHeroNumberCardSection *)self number];
  v6 = [number copy];
  [v4 setNumber:v6];

  unit = [(RFFactItemHeroNumberCardSection *)self unit];
  v8 = [unit copy];
  [v4 setUnit:v8];

  text = [(RFFactItemHeroNumberCardSection *)self text];
  v10 = [text copy];
  [v4 setText_2:v10];

  text2 = [(RFFactItemHeroNumberCardSection *)self text];
  v12 = [text2 copy];
  [v4 setText_3:v12];

  text3 = [(RFFactItemHeroNumberCardSection *)self text];
  v14 = [text3 copy];
  [v4 setText_4:v14];

  text4 = [(RFFactItemHeroNumberCardSection *)self text];
  v16 = [text4 copy];
  [v4 setText_5:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFFactItemHeroNumberCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFFactItemHeroNumberCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFFactItemHeroNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFFactItemHeroNumberCardSection)initWithCoder:(id)coder
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
    [(RFFactItemHeroNumberCardSection *)v5 setNumber:number];

    unit = [(SFCardSection *)v8 unit];
    [(RFFactItemHeroNumberCardSection *)v5 setUnit:unit];

    text = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_2:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_3:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_4:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_5:text4];

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