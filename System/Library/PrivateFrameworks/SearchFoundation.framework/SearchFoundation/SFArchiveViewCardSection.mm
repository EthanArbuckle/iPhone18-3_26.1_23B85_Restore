@interface SFArchiveViewCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFArchiveViewCardSection)initWithCoder:(id)coder;
- (SFArchiveViewCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFArchiveViewCardSection

- (SFArchiveViewCardSection)initWithProtobuf:(id)protobuf
{
  v35 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v33.receiver = self;
  v33.super_class = SFArchiveViewCardSection;
  v5 = [(SFCardSection *)&v33 init];
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

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v29 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
      [(SFArchiveViewCardSection *)v5 setType:type2];
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

    archive = [protobufCopy archive];

    if (archive)
    {
      archive2 = [protobufCopy archive];
      [(SFArchiveViewCardSection *)v5 setArchive:archive2];
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v21.receiver = self;
  v21.super_class = SFArchiveViewCardSection;
  v3 = [(SFCardSection *)&v21 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFArchiveViewCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  archive = [(SFArchiveViewCardSection *)self archive];
  v19 = v17 ^ [archive hash];

  return v11 ^ v19;
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
    if ([(SFArchiveViewCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v70.receiver = self;
      v70.super_class = SFArchiveViewCardSection;
      if ([(SFCardSection *)&v70 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_49:

          goto LABEL_50;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v6 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
            goto LABEL_47;
          }

          v69 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) != (punchoutPickerTitle2 == 0))
        {
          punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
          if (punchoutPickerTitle3)
          {
            v62 = punchoutOptions3;
            v64 = punchoutOptions5;
            v15 = punchoutPickerTitle2;
            punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
            punchoutPickerTitle5 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([punchoutPickerTitle4 isEqual:punchoutPickerTitle5] & 1) == 0)
            {

              v11 = 0;
              punchoutOptions4 = v69;
              punchoutOptions3 = v62;
              punchoutOptions5 = v64;
              if (!v62)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

            v60 = punchoutPickerTitle5;
            v61 = punchoutPickerTitle4;
            v67 = punchoutOptions;
            v68 = punchoutOptions2;
            v18 = v62;
            punchoutOptions5 = v64;
            v19 = punchoutPickerTitle3;
          }

          else
          {
            v67 = punchoutOptions;
            v68 = punchoutOptions2;
            v18 = punchoutOptions3;
            v15 = punchoutPickerTitle2;
            v19 = 0;
          }

          v66 = punchoutPickerTitle;
          punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText2 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v22 = v19;
          punchoutPickerTitle2 = v15;
          punchoutOptions3 = v18;
          punchoutOptions = v67;
          punchoutOptions2 = v68;
          if ((punchoutPickerDismissText != 0) != (punchoutPickerDismissText2 == 0))
          {
            v58 = punchoutPickerDismissText;
            v59 = punchoutPickerDismissText2;
            punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
            if (punchoutPickerDismissText3)
            {
              punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
              punchoutPickerDismissText5 = [(SFCardSection *)v6 punchoutPickerDismissText];
              v55 = punchoutPickerDismissText4;
              if (![punchoutPickerDismissText4 isEqual:?])
              {
                v11 = 0;
                v27 = punchoutPickerDismissText3;
LABEL_31:

LABEL_32:
                if (v22)
                {
                }

LABEL_46:
                punchoutOptions4 = v69;
                if (!punchoutOptions3)
                {
LABEL_48:

                  goto LABEL_49;
                }

LABEL_47:

                goto LABEL_48;
              }

              v56 = v22;
            }

            else
            {
              v56 = v22;
            }

            canBeHidden = [(SFCardSection *)self canBeHidden];
            if (canBeHidden != [(SFCardSection *)v6 canBeHidden]|| (v25 = [(SFCardSection *)self hasTopPadding], v25 != [(SFCardSection *)v6 hasTopPadding]) || (v26 = [(SFCardSection *)self hasBottomPadding], v26 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v11 = 0;
              v22 = v56;
              goto LABEL_28;
            }

            type = [(SFArchiveViewCardSection *)self type];
            type2 = [(SFArchiveViewCardSection *)v6 type];
            if ((type != 0) != (type2 == 0))
            {
              v53 = type2;
              [(SFArchiveViewCardSection *)self type];
              v52 = v51 = type;
              if (v52)
              {
                type3 = [(SFArchiveViewCardSection *)self type];
                type4 = [(SFArchiveViewCardSection *)v6 type];
                v50 = type3;
                if (![type3 isEqual:?])
                {
                  v11 = 0;
                  v31 = v52;
                  v22 = v56;
                  goto LABEL_66;
                }
              }

              separatorStyle = [(SFCardSection *)self separatorStyle];
              if (separatorStyle == [(SFCardSection *)v6 separatorStyle])
              {
                backgroundColor = [(SFCardSection *)self backgroundColor];
                backgroundColor2 = [(SFCardSection *)v6 backgroundColor];
                if ((backgroundColor != 0) != (backgroundColor2 == 0))
                {
                  v48 = backgroundColor2;
                  v63 = punchoutOptions3;
                  v65 = punchoutOptions5;
                  v47 = punchoutPickerTitle2;
                  backgroundColor3 = [(SFCardSection *)self backgroundColor];
                  if (!backgroundColor3 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v6, "backgroundColor"), v45 = objc_claimAutoreleasedReturnValue(), v46 = v37, [v37 isEqual:?]))
                  {
                    archive = [(SFArchiveViewCardSection *)self archive];
                    archive2 = [(SFArchiveViewCardSection *)v6 archive];
                    v40 = archive2;
                    if ((archive != 0) == (archive2 == 0))
                    {

                      v11 = 0;
                      if (!backgroundColor3)
                      {
LABEL_64:

                        v22 = v56;
                        punchoutOptions3 = v63;
                        punchoutOptions5 = v65;
                        punchoutPickerTitle2 = v47;
                        punchoutOptions = v67;
                        punchoutOptions2 = v68;
LABEL_65:
                        v31 = v52;
                        if (!v52)
                        {
LABEL_67:

LABEL_28:
                          v27 = punchoutPickerDismissText3;
                          if (!punchoutPickerDismissText3)
                          {
                            goto LABEL_32;
                          }

                          goto LABEL_31;
                        }

LABEL_66:

                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      archive3 = [(SFArchiveViewCardSection *)self archive];
                      if (archive3)
                      {
                        v42 = archive3;
                        archive4 = [(SFArchiveViewCardSection *)self archive];
                        archive5 = [(SFArchiveViewCardSection *)v6 archive];
                        v11 = [archive4 isEqual:archive5];

                        if (!backgroundColor3)
                        {
                          goto LABEL_64;
                        }
                      }

                      else
                      {

                        v11 = 1;
                        if (!backgroundColor3)
                        {
                          goto LABEL_64;
                        }
                      }
                    }
                  }

                  else
                  {
                    v11 = 0;
                  }

                  goto LABEL_64;
                }
              }

              v11 = 0;
              v22 = v56;
              goto LABEL_65;
            }

            v22 = v56;
            if (punchoutPickerDismissText3)
            {
            }

            punchoutPickerDismissText = v58;
            punchoutPickerDismissText2 = v59;
          }

          if (v22)
          {
          }

          punchoutPickerTitle = v66;
        }

        v11 = 0;
        goto LABEL_46;
      }
    }

    v11 = 0;
  }

LABEL_50:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = SFArchiveViewCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
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
  type = [(SFArchiveViewCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  archive = [(SFArchiveViewCardSection *)self archive];
  v16 = [archive copy];
  [v4 setArchive:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBArchiveViewCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBArchiveViewCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBArchiveViewCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBArchiveViewCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFArchiveViewCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFArchiveViewCardSection)initWithCoder:(id)coder
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
    [(SFArchiveViewCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    archive = [(SFCardSection *)v8 archive];
    [(SFArchiveViewCardSection *)v5 setArchive:archive];

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