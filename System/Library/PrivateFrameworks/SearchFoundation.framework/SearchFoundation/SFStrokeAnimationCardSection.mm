@interface SFStrokeAnimationCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFStrokeAnimationCardSection)initWithCoder:(id)coder;
- (SFStrokeAnimationCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStrokeAnimationCardSection

- (unint64_t)hash
{
  v27.receiver = self;
  v27.super_class = SFStrokeAnimationCardSection;
  v3 = [(SFCardSection *)&v27 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v6 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v8 = v6 ^ [punchoutPickerDismissText hash];
  v9 = v8 ^ [(SFCardSection *)self canBeHidden];
  v10 = v9 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFStrokeAnimationCardSection *)self type];
  v13 = hasBottomPadding ^ [type hash];
  v14 = v13 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v16 = v14 ^ [backgroundColor hash];
  strokeAnimationRepresentation = [(SFStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  v18 = v10 ^ v16 ^ [strokeAnimationRepresentation hash];
  strokeNames = [(SFStrokeAnimationCardSection *)self strokeNames];
  v20 = [strokeNames hash];
  characters = [(SFStrokeAnimationCardSection *)self characters];
  v22 = v20 ^ [characters hash];
  pronunciations = [(SFStrokeAnimationCardSection *)self pronunciations];
  v24 = v22 ^ [pronunciations hash];

  return v18 ^ v24;
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
    if ([(SFStrokeAnimationCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v77.receiver = self;
      v77.super_class = SFStrokeAnimationCardSection;
      if ([(SFCardSection *)&v77 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v6 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
LABEL_38:

            goto LABEL_39;
          }

          v75 = punchoutOptions5;
          v76 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
        {
          goto LABEL_35;
        }

        punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
        if (punchoutPickerTitle3)
        {
          punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
          punchoutPickerTitle5 = [(SFCardSection *)v6 punchoutPickerTitle];
          v72 = punchoutPickerTitle4;
          v17 = punchoutPickerTitle4;
          punchoutOptions5 = punchoutPickerTitle5;
          if (![v17 isEqual:punchoutPickerTitle5])
          {
            goto LABEL_34;
          }
        }

        v73 = punchoutPickerTitle;
        v74 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          goto LABEL_33;
        }

        v69 = punchoutPickerDismissText;
        v70 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v68 = punchoutPickerDismissText4;
          v22 = punchoutPickerDismissText4;
          punchoutPickerDismissText = punchoutPickerDismissText5;
          if (![v22 isEqual:punchoutPickerDismissText5])
          {
            goto LABEL_31;
          }
        }

        canBeHidden = [(SFCardSection *)self canBeHidden];
        if (canBeHidden == [(SFCardSection *)v6 canBeHidden])
        {
          hasTopPadding = [(SFCardSection *)self hasTopPadding];
          if (hasTopPadding == [(SFCardSection *)v6 hasTopPadding])
          {
            hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
            if (hasBottomPadding == [(SFCardSection *)v6 hasBottomPadding])
            {
              type = [(SFStrokeAnimationCardSection *)self type];
              type2 = [(SFStrokeAnimationCardSection *)v6 type];
              if ((type != 0) != (type2 == 0))
              {
                v65 = type2;
                v66 = type;
                [(SFStrokeAnimationCardSection *)self type];
                v67 = punchoutPickerTitle3 = v74;
                if (v67)
                {
                  type3 = [(SFStrokeAnimationCardSection *)self type];
                  type4 = [(SFStrokeAnimationCardSection *)v6 type];
                  if (![type3 isEqual:?])
                  {
                    goto LABEL_50;
                  }
                }

                separatorStyle = [(SFCardSection *)self separatorStyle];
                if (separatorStyle == [(SFCardSection *)v6 separatorStyle])
                {
                  backgroundColor = [(SFCardSection *)self backgroundColor];
                  backgroundColor2 = [(SFCardSection *)v6 backgroundColor];
                  if ((backgroundColor != 0) != (backgroundColor2 == 0))
                  {
                    v60 = punchoutOptions5;
                    v61 = backgroundColor2;
                    v59 = punchoutPickerDismissText;
                    backgroundColor3 = [(SFCardSection *)self backgroundColor];
                    if (backgroundColor3)
                    {
                      backgroundColor4 = [(SFCardSection *)self backgroundColor];
                      backgroundColor5 = [(SFCardSection *)v6 backgroundColor];
                      v57 = backgroundColor4;
                      if (![backgroundColor4 isEqual:?])
                      {
LABEL_57:

LABEL_58:
                        punchoutPickerTitle3 = v74;
                        punchoutPickerDismissText = v59;
                        punchoutOptions5 = v60;
LABEL_49:
                        if (!v67)
                        {
LABEL_51:

LABEL_30:
                          if (!punchoutPickerDismissText3)
                          {
LABEL_32:

LABEL_33:
                            punchoutPickerTitle = v73;
                            if (!punchoutPickerTitle3)
                            {
LABEL_35:

                              goto LABEL_36;
                            }

LABEL_34:

                            goto LABEL_35;
                          }

LABEL_31:

                          goto LABEL_32;
                        }

LABEL_50:

                        goto LABEL_51;
                      }
                    }

                    strokeAnimationRepresentation = [(SFStrokeAnimationCardSection *)self strokeAnimationRepresentation];
                    strokeAnimationRepresentation2 = [(SFStrokeAnimationCardSection *)v6 strokeAnimationRepresentation];
                    v34 = strokeAnimationRepresentation2;
                    if ((strokeAnimationRepresentation != 0) == (strokeAnimationRepresentation2 == 0))
                    {

                      if (!backgroundColor3)
                      {
                        goto LABEL_58;
                      }

                      goto LABEL_57;
                    }

                    strokeAnimationRepresentation3 = [(SFStrokeAnimationCardSection *)self strokeAnimationRepresentation];
                    if (strokeAnimationRepresentation3)
                    {
                      strokeAnimationRepresentation4 = [(SFStrokeAnimationCardSection *)self strokeAnimationRepresentation];
                      strokeAnimationRepresentation5 = [(SFStrokeAnimationCardSection *)v6 strokeAnimationRepresentation];
                      v52 = strokeAnimationRepresentation4;
                      if (![strokeAnimationRepresentation4 isEqual:?])
                      {
                        goto LABEL_65;
                      }
                    }

                    strokeNames = [(SFStrokeAnimationCardSection *)self strokeNames];
                    strokeNames2 = [(SFStrokeAnimationCardSection *)v6 strokeNames];
                    if ((strokeNames != 0) == (strokeNames2 == 0))
                    {

                      if (!strokeAnimationRepresentation3)
                      {
LABEL_66:

                        if (backgroundColor3)
                        {
                        }

                        if (v67)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v74)
                        {
                        }

LABEL_36:
                        v11 = 0;
                        if (!punchoutOptions3)
                        {
LABEL_39:

                          goto LABEL_40;
                        }

                        goto LABEL_37;
                      }

LABEL_65:

                      goto LABEL_66;
                    }

                    strokeNames3 = [(SFStrokeAnimationCardSection *)self strokeNames];
                    if (strokeNames3)
                    {
                      strokeNames4 = [(SFStrokeAnimationCardSection *)self strokeNames];
                      strokeNames5 = [(SFStrokeAnimationCardSection *)v6 strokeNames];
                      v47 = strokeNames4;
                      if (![strokeNames4 isEqual:?])
                      {
                        v11 = 0;
LABEL_89:

LABEL_90:
                        if (strokeAnimationRepresentation3)
                        {
                        }

                        if (backgroundColor3)
                        {
                        }

                        if (v67)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v74)
                        {
                        }

                        if (!punchoutOptions3)
                        {
                          goto LABEL_39;
                        }

LABEL_37:
                        punchoutOptions5 = v75;
                        punchoutOptions4 = v76;
                        goto LABEL_38;
                      }
                    }

                    characters = [(SFStrokeAnimationCardSection *)self characters];
                    characters2 = [(SFStrokeAnimationCardSection *)v6 characters];
                    if ((characters != 0) == (characters2 == 0))
                    {

                      v11 = 0;
                      goto LABEL_88;
                    }

                    characters3 = [(SFStrokeAnimationCardSection *)self characters];
                    if (!characters3 || (-[SFStrokeAnimationCardSection characters](self, "characters"), v37 = objc_claimAutoreleasedReturnValue(), -[SFStrokeAnimationCardSection characters](v6, "characters"), v41 = objc_claimAutoreleasedReturnValue(), v42 = v37, [v37 isEqual:?]))
                    {
                      pronunciations = [(SFStrokeAnimationCardSection *)self pronunciations];
                      pronunciations2 = [(SFStrokeAnimationCardSection *)v6 pronunciations];
                      if ((pronunciations != 0) == (pronunciations2 == 0))
                      {

                        v11 = 0;
                      }

                      else
                      {
                        pronunciations3 = [(SFStrokeAnimationCardSection *)self pronunciations];
                        if (pronunciations3)
                        {
                          pronunciations4 = [(SFStrokeAnimationCardSection *)self pronunciations];
                          pronunciations5 = [(SFStrokeAnimationCardSection *)v6 pronunciations];
                          v11 = [pronunciations4 isEqual:pronunciations5];
                        }

                        else
                        {

                          v11 = 1;
                        }
                      }

                      if (!characters3)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v11 = 0;
                    }

LABEL_87:
LABEL_88:
                    if (!strokeNames3)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_89;
                  }
                }

                punchoutPickerTitle3 = v74;
                goto LABEL_49;
              }
            }
          }
        }

        punchoutPickerTitle3 = v74;
        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = SFStrokeAnimationCardSection;
  v4 = [(SFCardSection *)&v24 copyWithZone:zone];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v6 = [punchoutOptions copy];
  [v4 setPunchoutOptions:v6];

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [punchoutPickerTitle copy];
  [v4 setPunchoutPickerTitle:v8];

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [punchoutPickerDismissText copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  type = [(SFStrokeAnimationCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  strokeAnimationRepresentation = [(SFStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  v16 = [strokeAnimationRepresentation copy];
  [v4 setStrokeAnimationRepresentation:v16];

  strokeNames = [(SFStrokeAnimationCardSection *)self strokeNames];
  v18 = [strokeNames copy];
  [v4 setStrokeNames:v18];

  characters = [(SFStrokeAnimationCardSection *)self characters];
  v20 = [characters copy];
  [v4 setCharacters:v20];

  pronunciations = [(SFStrokeAnimationCardSection *)self pronunciations];
  v22 = [pronunciations copy];
  [v4 setPronunciations:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBStrokeAnimationCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBStrokeAnimationCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBStrokeAnimationCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBStrokeAnimationCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFStrokeAnimationCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFStrokeAnimationCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    type = [(SFCardSection *)v8 type];
    [(SFStrokeAnimationCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    strokeAnimationRepresentation = [(SFCardSection *)v8 strokeAnimationRepresentation];
    [(SFStrokeAnimationCardSection *)v5 setStrokeAnimationRepresentation:strokeAnimationRepresentation];

    strokeNames = [(SFCardSection *)v8 strokeNames];
    [(SFStrokeAnimationCardSection *)v5 setStrokeNames:strokeNames];

    characters = [(SFCardSection *)v8 characters];
    [(SFStrokeAnimationCardSection *)v5 setCharacters:characters];

    pronunciations = [(SFCardSection *)v8 pronunciations];
    [(SFStrokeAnimationCardSection *)v5 setPronunciations:pronunciations];

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

    backgroundColor2 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor2];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions2 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions2];

    punchoutPickerTitle2 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];

    punchoutPickerDismissText2 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];

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

- (SFStrokeAnimationCardSection)initWithProtobuf:(id)protobuf
{
  v71 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v66.receiver = self;
  v66.super_class = SFStrokeAnimationCardSection;
  v5 = [(SFCardSection *)&v66 init];
  if (v5)
  {
    punchoutOptions = [protobufCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v63;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v63 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v62 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [protobufCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [protobufCopy punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [protobufCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [protobufCopy punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([protobufCopy canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [protobufCopy canBeHidden]);
    }

    if ([protobufCopy hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [protobufCopy hasTopPadding]);
    }

    if ([protobufCopy hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [protobufCopy hasBottomPadding]);
    }

    type = [protobufCopy type];

    if (type)
    {
      type2 = [protobufCopy type];
      [(SFStrokeAnimationCardSection *)v5 setType:type2];
    }

    if ([protobufCopy separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [protobufCopy separatorStyle]);
    }

    backgroundColor = [protobufCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [SFColor alloc];
      backgroundColor2 = [protobufCopy backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:backgroundColor2];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    strokeAnimationRepresentation = [protobufCopy strokeAnimationRepresentation];

    if (strokeAnimationRepresentation)
    {
      strokeAnimationRepresentation2 = [protobufCopy strokeAnimationRepresentation];
      [(SFStrokeAnimationCardSection *)v5 setStrokeAnimationRepresentation:strokeAnimationRepresentation2];
    }

    strokeNames = [protobufCopy strokeNames];
    if (strokeNames)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    strokeNames2 = [protobufCopy strokeNames];
    v29 = [strokeNames2 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v59;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(strokeNames2);
          }

          if (*(*(&v58 + 1) + 8 * j))
          {
            [v27 addObject:?];
          }
        }

        v30 = [strokeNames2 countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v30);
    }

    [(SFStrokeAnimationCardSection *)v5 setStrokeNames:v27];
    characters = [protobufCopy characters];
    if (characters)
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v34 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    characters2 = [protobufCopy characters];
    v36 = [characters2 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(characters2);
          }

          if (*(*(&v54 + 1) + 8 * k))
          {
            [v34 addObject:?];
          }
        }

        v37 = [characters2 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v37);
    }

    [(SFStrokeAnimationCardSection *)v5 setCharacters:v34];
    pronunciations = [protobufCopy pronunciations];
    if (pronunciations)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    pronunciations2 = [protobufCopy pronunciations];
    v43 = [pronunciations2 countByEnumeratingWithState:&v50 objects:v67 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v51;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(pronunciations2);
          }

          if (*(*(&v50 + 1) + 8 * m))
          {
            [v41 addObject:?];
          }
        }

        v44 = [pronunciations2 countByEnumeratingWithState:&v50 objects:v67 count:16];
      }

      while (v44);
    }

    [(SFStrokeAnimationCardSection *)v5 setPronunciations:v41];
    v47 = v5;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v5;
}

@end