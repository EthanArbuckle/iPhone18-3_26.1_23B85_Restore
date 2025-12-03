@interface SFHeroTitleCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHeroTitleCardSection)initWithCoder:(id)coder;
- (SFHeroTitleCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFHeroTitleCardSection

- (unint64_t)hash
{
  v26.receiver = self;
  v26.super_class = SFHeroTitleCardSection;
  v3 = [(SFCardSection *)&v26 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v6 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v8 = v6 ^ [punchoutPickerDismissText hash];
  v9 = v8 ^ [(SFCardSection *)self canBeHidden];
  v10 = v9 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFHeroTitleCardSection *)self type];
  v13 = hasBottomPadding ^ [type hash];
  v14 = v13 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v16 = v14 ^ [backgroundColor hash];
  title = [(SFHeroTitleCardSection *)self title];
  v18 = v10 ^ v16 ^ [title hash];
  subtitle = [(SFHeroTitleCardSection *)self subtitle];
  v20 = [subtitle hash];
  buttonItems = [(SFHeroTitleCardSection *)self buttonItems];
  v22 = v20 ^ [buttonItems hash];
  v23 = v22 ^ [(SFHeroTitleCardSection *)self maxVisibleButtonItems];

  return v18 ^ v23;
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
    if ([(SFHeroTitleCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = SFHeroTitleCardSection;
      if ([(SFCardSection *)&v73 isEqual:equalCopy])
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

          v71 = punchoutOptions5;
          v72 = punchoutOptions4;
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
          v68 = punchoutPickerTitle4;
          v17 = punchoutPickerTitle4;
          punchoutOptions5 = punchoutPickerTitle5;
          if (![v17 isEqual:punchoutPickerTitle5])
          {
            goto LABEL_34;
          }
        }

        v69 = punchoutPickerTitle;
        v70 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          goto LABEL_33;
        }

        v65 = punchoutPickerDismissText;
        v66 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v64 = punchoutPickerDismissText4;
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
              type = [(SFHeroTitleCardSection *)self type];
              type2 = [(SFHeroTitleCardSection *)v6 type];
              if ((type != 0) != (type2 == 0))
              {
                v61 = type2;
                v62 = type;
                [(SFHeroTitleCardSection *)self type];
                v63 = punchoutPickerTitle3 = v70;
                if (v63)
                {
                  type3 = [(SFHeroTitleCardSection *)self type];
                  type4 = [(SFHeroTitleCardSection *)v6 type];
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
                    v56 = punchoutOptions5;
                    v57 = backgroundColor2;
                    v55 = punchoutPickerDismissText;
                    backgroundColor3 = [(SFCardSection *)self backgroundColor];
                    if (backgroundColor3)
                    {
                      backgroundColor4 = [(SFCardSection *)self backgroundColor];
                      backgroundColor5 = [(SFCardSection *)v6 backgroundColor];
                      v53 = backgroundColor4;
                      if (![backgroundColor4 isEqual:?])
                      {
LABEL_57:

LABEL_58:
                        punchoutPickerTitle3 = v70;
                        punchoutPickerDismissText = v55;
                        punchoutOptions5 = v56;
LABEL_49:
                        if (!v63)
                        {
LABEL_51:

LABEL_30:
                          if (!punchoutPickerDismissText3)
                          {
LABEL_32:

LABEL_33:
                            punchoutPickerTitle = v69;
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

                    title = [(SFHeroTitleCardSection *)self title];
                    title2 = [(SFHeroTitleCardSection *)v6 title];
                    v34 = title2;
                    if ((title != 0) == (title2 == 0))
                    {

                      if (!backgroundColor3)
                      {
                        goto LABEL_58;
                      }

                      goto LABEL_57;
                    }

                    title3 = [(SFHeroTitleCardSection *)self title];
                    if (title3)
                    {
                      title4 = [(SFHeroTitleCardSection *)self title];
                      title5 = [(SFHeroTitleCardSection *)v6 title];
                      v48 = title4;
                      if (![title4 isEqual:?])
                      {
                        goto LABEL_65;
                      }
                    }

                    subtitle = [(SFHeroTitleCardSection *)self subtitle];
                    subtitle2 = [(SFHeroTitleCardSection *)v6 subtitle];
                    if ((subtitle != 0) == (subtitle2 == 0))
                    {

                      if (!title3)
                      {
LABEL_66:

                        if (backgroundColor3)
                        {
                        }

                        if (v63)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v70)
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

                    subtitle3 = [(SFHeroTitleCardSection *)self subtitle];
                    if (subtitle3)
                    {
                      subtitle4 = [(SFHeroTitleCardSection *)self subtitle];
                      subtitle5 = [(SFHeroTitleCardSection *)v6 subtitle];
                      v43 = subtitle4;
                      if (![subtitle4 isEqual:?])
                      {
                        v11 = 0;
LABEL_84:

LABEL_85:
                        if (title3)
                        {
                        }

                        if (backgroundColor3)
                        {
                        }

                        if (v63)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v70)
                        {
                        }

                        if (!punchoutOptions3)
                        {
                          goto LABEL_39;
                        }

LABEL_37:
                        punchoutOptions5 = v71;
                        punchoutOptions4 = v72;
                        goto LABEL_38;
                      }
                    }

                    buttonItems = [(SFHeroTitleCardSection *)self buttonItems];
                    buttonItems2 = [(SFHeroTitleCardSection *)v6 buttonItems];
                    if ((buttonItems != 0) == (buttonItems2 == 0))
                    {

                      v11 = 0;
                      goto LABEL_83;
                    }

                    buttonItems3 = [(SFHeroTitleCardSection *)self buttonItems];
                    if (!buttonItems3 || (-[SFHeroTitleCardSection buttonItems](self, "buttonItems"), v37 = objc_claimAutoreleasedReturnValue(), -[SFHeroTitleCardSection buttonItems](v6, "buttonItems"), v39 = objc_claimAutoreleasedReturnValue(), v40 = v37, [v37 isEqual:?]))
                    {
                      maxVisibleButtonItems = [(SFHeroTitleCardSection *)self maxVisibleButtonItems];
                      v11 = maxVisibleButtonItems == [(SFHeroTitleCardSection *)v6 maxVisibleButtonItems];
                      if (!buttonItems3)
                      {
LABEL_82:

LABEL_83:
                        if (!subtitle3)
                        {
                          goto LABEL_85;
                        }

                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      v11 = 0;
                    }

                    goto LABEL_82;
                  }
                }

                punchoutPickerTitle3 = v70;
                goto LABEL_49;
              }
            }
          }
        }

        punchoutPickerTitle3 = v70;
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
  v22.receiver = self;
  v22.super_class = SFHeroTitleCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:zone];
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
  type = [(SFHeroTitleCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  title = [(SFHeroTitleCardSection *)self title];
  v16 = [title copy];
  [v4 setTitle:v16];

  subtitle = [(SFHeroTitleCardSection *)self subtitle];
  v18 = [subtitle copy];
  [v4 setSubtitle:v18];

  buttonItems = [(SFHeroTitleCardSection *)self buttonItems];
  v20 = [buttonItems copy];
  [v4 setButtonItems:v20];

  [v4 setMaxVisibleButtonItems:{-[SFHeroTitleCardSection maxVisibleButtonItems](self, "maxVisibleButtonItems")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBHeroTitleCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBHeroTitleCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFHeroTitleCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFHeroTitleCardSection)initWithCoder:(id)coder
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
    [(SFHeroTitleCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    title = [(SFCardSection *)v8 title];
    [(SFHeroTitleCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFHeroTitleCardSection *)v5 setSubtitle:subtitle];

    buttonItems = [(SFCardSection *)v8 buttonItems];
    [(SFHeroTitleCardSection *)v5 setButtonItems:buttonItems];

    [(SFHeroTitleCardSection *)v5 setMaxVisibleButtonItems:[(SFCardSection *)v8 maxVisibleButtonItems]];
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

- (SFHeroTitleCardSection)initWithProtobuf:(id)protobuf
{
  v54 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v51.receiver = self;
  v51.super_class = SFHeroTitleCardSection;
  v5 = [(SFCardSection *)&v51 init];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v53 count:16];
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
      [(SFHeroTitleCardSection *)v5 setType:type2];
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

    title = [protobufCopy title];

    if (title)
    {
      v25 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v27 = [(SFRichText *)v25 initWithProtobuf:title2];
      [(SFHeroTitleCardSection *)v5 setTitle:v27];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v29 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v31 = [(SFRichText *)v29 initWithProtobuf:subtitle2];
      [(SFHeroTitleCardSection *)v5 setSubtitle:v31];
    }

    buttonItems = [protobufCopy buttonItems];
    if (buttonItems)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    buttonItems2 = [protobufCopy buttonItems];
    v35 = [buttonItems2 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v44;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(buttonItems2);
          }

          v39 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [buttonItems2 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v36);
    }

    [(SFHeroTitleCardSection *)v5 setButtonItems:v33];
    if ([protobufCopy maxVisibleButtonItems])
    {
      -[SFHeroTitleCardSection setMaxVisibleButtonItems:](v5, "setMaxVisibleButtonItems:", [protobufCopy maxVisibleButtonItems]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

@end