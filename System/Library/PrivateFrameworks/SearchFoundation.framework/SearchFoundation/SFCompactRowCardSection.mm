@interface SFCompactRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCompactRowCardSection)initWithCoder:(id)coder;
- (SFCompactRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCompactRowCardSection

- (SFCompactRowCardSection)initWithProtobuf:(id)protobuf
{
  v45 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v43.receiver = self;
  v43.super_class = SFCompactRowCardSection;
  v5 = [(SFCardSection *)&v43 init];
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

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v39 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
      [(SFCompactRowCardSection *)v5 setType:type2];
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
      [(SFCompactRowCardSection *)v5 setTitle:v27];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v29 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v31 = [(SFRichText *)v29 initWithProtobuf:subtitle2];
      [(SFCompactRowCardSection *)v5 setSubtitle:v31];
    }

    if ([protobufCopy isSubtitleDetatched])
    {
      -[SFCompactRowCardSection setIsSubtitleDetatched:](v5, "setIsSubtitleDetatched:", [protobufCopy isSubtitleDetatched]);
    }

    image = [protobufCopy image];

    if (image)
    {
      v33 = [SFImage alloc];
      image2 = [protobufCopy image];
      v35 = [(SFImage *)v33 initWithProtobuf:image2];
      [(SFCompactRowCardSection *)v5 setImage:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v26.receiver = self;
  v26.super_class = SFCompactRowCardSection;
  v3 = [(SFCardSection *)&v26 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFCompactRowCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  title = [(SFCompactRowCardSection *)self title];
  v19 = v11 ^ v17 ^ [title hash];
  subtitle = [(SFCompactRowCardSection *)self subtitle];
  v21 = [subtitle hash];
  v22 = v21 ^ [(SFCompactRowCardSection *)self isSubtitleDetatched];
  image = [(SFCompactRowCardSection *)self image];
  v24 = v22 ^ [image hash];

  return v19 ^ v24;
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
    if ([(SFCompactRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v68.receiver = self;
      v68.super_class = SFCompactRowCardSection;
      if ([(SFCardSection *)&v68 isEqual:equalCopy])
      {
        v5 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v5 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v66 = punchoutOptions5;
          v67 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
        {
          goto LABEL_23;
        }

        punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
        if (punchoutPickerTitle3)
        {
          punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
          punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
          v64 = punchoutPickerTitle4;
          if (![punchoutPickerTitle4 isEqual:punchoutPickerTitle5])
          {
            goto LABEL_21;
          }
        }

        v65 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          if (!punchoutPickerTitle3)
          {
LABEL_22:

LABEL_23:
            v11 = 0;
            if (!punchoutOptions3)
            {
LABEL_26:

              goto LABEL_27;
            }

            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        v60 = punchoutPickerDismissText;
        v61 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v5 punchoutPickerDismissText];
          v59 = punchoutPickerDismissText4;
          v20 = punchoutPickerDismissText4;
          punchoutPickerDismissText = punchoutPickerDismissText5;
          if (![v20 isEqual:punchoutPickerDismissText5])
          {
LABEL_39:

LABEL_40:
            if (!punchoutPickerTitle3)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        canBeHidden = [(SFCardSection *)self canBeHidden];
        if (canBeHidden == [(SFCardSection *)v5 canBeHidden])
        {
          hasTopPadding = [(SFCardSection *)self hasTopPadding];
          if (hasTopPadding == [(SFCardSection *)v5 hasTopPadding])
          {
            hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
            if (hasBottomPadding == [(SFCardSection *)v5 hasBottomPadding])
            {
              type = [(SFCompactRowCardSection *)self type];
              type2 = [(SFCompactRowCardSection *)v5 type];
              if ((type != 0) != (type2 == 0))
              {
                v56 = type2;
                v57 = type;
                [(SFCompactRowCardSection *)self type];
                v58 = punchoutPickerTitle3 = v65;
                if (v58)
                {
                  type3 = [(SFCompactRowCardSection *)self type];
                  type4 = [(SFCompactRowCardSection *)v5 type];
                  if (![type3 isEqual:?])
                  {
                    goto LABEL_50;
                  }
                }

                separatorStyle = [(SFCardSection *)self separatorStyle];
                if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
                {
                  backgroundColor = [(SFCardSection *)self backgroundColor];
                  backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
                  if ((backgroundColor != 0) != (backgroundColor2 == 0))
                  {
                    v51 = punchoutPickerDismissText;
                    v52 = backgroundColor2;
                    backgroundColor3 = [(SFCardSection *)self backgroundColor];
                    if (backgroundColor3)
                    {
                      backgroundColor4 = [(SFCardSection *)self backgroundColor];
                      backgroundColor5 = [(SFCardSection *)v5 backgroundColor];
                      v48 = backgroundColor4;
                      if (![backgroundColor4 isEqual:?])
                      {
                        goto LABEL_57;
                      }
                    }

                    title = [(SFCompactRowCardSection *)self title];
                    title2 = [(SFCompactRowCardSection *)v5 title];
                    if ((title != 0) == (title2 == 0))
                    {

                      if (!backgroundColor3)
                      {
LABEL_58:

                        punchoutPickerTitle3 = v65;
                        punchoutPickerDismissText = v51;
LABEL_49:
                        if (!v58)
                        {
LABEL_51:

LABEL_38:
                          if (!punchoutPickerDismissText3)
                          {
                            goto LABEL_40;
                          }

                          goto LABEL_39;
                        }

LABEL_50:

                        goto LABEL_51;
                      }

LABEL_57:

                      goto LABEL_58;
                    }

                    title3 = [(SFCompactRowCardSection *)self title];
                    if (title3)
                    {
                      title4 = [(SFCompactRowCardSection *)self title];
                      title5 = [(SFCompactRowCardSection *)v5 title];
                      v43 = title4;
                      if (![title4 isEqual:?])
                      {
                        v11 = 0;
LABEL_74:

LABEL_75:
                        if (backgroundColor3)
                        {
                        }

                        if (v58)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v65)
                        {
                        }

                        if (!punchoutOptions3)
                        {
                          goto LABEL_26;
                        }

LABEL_24:
                        punchoutOptions5 = v66;
                        punchoutOptions4 = v67;
                        goto LABEL_25;
                      }
                    }

                    subtitle = [(SFCompactRowCardSection *)self subtitle];
                    subtitle2 = [(SFCompactRowCardSection *)v5 subtitle];
                    if ((subtitle != 0) == (subtitle2 == 0))
                    {

                      v11 = 0;
                      goto LABEL_73;
                    }

                    subtitle3 = [(SFCompactRowCardSection *)self subtitle];
                    if (subtitle3)
                    {
                      subtitle4 = [(SFCompactRowCardSection *)self subtitle];
                      subtitle5 = [(SFCompactRowCardSection *)v5 subtitle];
                      v40 = subtitle4;
                      if (![subtitle4 isEqual:?])
                      {
                        v11 = 0;
                        goto LABEL_71;
                      }
                    }

                    isSubtitleDetatched = [(SFCompactRowCardSection *)self isSubtitleDetatched];
                    if (isSubtitleDetatched == [(SFCompactRowCardSection *)v5 isSubtitleDetatched])
                    {
                      image = [(SFCompactRowCardSection *)self image];
                      image2 = [(SFCompactRowCardSection *)v5 image];
                      if ((image != 0) != (image2 == 0))
                      {
                        image3 = [(SFCompactRowCardSection *)self image];
                        if (image3)
                        {
                          image4 = [(SFCompactRowCardSection *)self image];
                          image5 = [(SFCompactRowCardSection *)v5 image];
                          v11 = [image4 isEqual:image5];
                        }

                        else
                        {

                          v11 = 1;
                        }

LABEL_70:
                        if (!subtitle3)
                        {
LABEL_72:

LABEL_73:
                          if (!title3)
                          {
                            goto LABEL_75;
                          }

                          goto LABEL_74;
                        }

LABEL_71:

                        goto LABEL_72;
                      }
                    }

                    v11 = 0;
                    goto LABEL_70;
                  }
                }

                punchoutPickerTitle3 = v65;
                goto LABEL_49;
              }
            }
          }
        }

        punchoutPickerTitle3 = v65;
        goto LABEL_38;
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
  v22.super_class = SFCompactRowCardSection;
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
  type = [(SFCompactRowCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  title = [(SFCompactRowCardSection *)self title];
  v16 = [title copy];
  [v4 setTitle:v16];

  subtitle = [(SFCompactRowCardSection *)self subtitle];
  v18 = [subtitle copy];
  [v4 setSubtitle:v18];

  [v4 setIsSubtitleDetatched:{-[SFCompactRowCardSection isSubtitleDetatched](self, "isSubtitleDetatched")}];
  image = [(SFCompactRowCardSection *)self image];
  v20 = [image copy];
  [v4 setImage:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCompactRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBCompactRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCompactRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCompactRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCompactRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFCompactRowCardSection)initWithCoder:(id)coder
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
    [(SFCompactRowCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    title = [(SFCardSection *)v8 title];
    [(SFCompactRowCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFCompactRowCardSection *)v5 setSubtitle:subtitle];

    [(SFCompactRowCardSection *)v5 setIsSubtitleDetatched:[(SFCardSection *)v8 isSubtitleDetatched]];
    image = [(SFCardSection *)v8 image];
    [(SFCompactRowCardSection *)v5 setImage:image];

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

@end