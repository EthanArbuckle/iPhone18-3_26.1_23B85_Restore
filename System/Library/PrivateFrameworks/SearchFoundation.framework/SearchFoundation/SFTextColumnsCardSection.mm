@interface SFTextColumnsCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextColumnsCardSection)initWithCoder:(id)coder;
- (SFTextColumnsCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFTextColumnsCardSection

- (unint64_t)hash
{
  v24.receiver = self;
  v24.super_class = SFTextColumnsCardSection;
  v3 = [(SFCardSection *)&v24 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFTextColumnsCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  title = [(SFTextColumnsCardSection *)self title];
  v19 = v11 ^ v17 ^ [title hash];
  titleWeight = [(SFTextColumnsCardSection *)self titleWeight];
  columns = [(SFTextColumnsCardSection *)self columns];
  v22 = titleWeight ^ [columns hash];

  return v19 ^ v22;
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
    if ([(SFTextColumnsCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v80.receiver = self;
      v80.super_class = SFTextColumnsCardSection;
      if ([(SFCardSection *)&v80 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_58:

          goto LABEL_59;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v6 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
            goto LABEL_56;
          }

          v79 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) != (punchoutPickerTitle2 == 0))
        {
          punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
          v76 = punchoutOptions5;
          if (punchoutPickerTitle3)
          {
            v73 = punchoutPickerTitle;
            punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
            punchoutPickerTitle5 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([punchoutPickerTitle4 isEqual:punchoutPickerTitle5] & 1) == 0)
            {

LABEL_31:
              v11 = 0;
              goto LABEL_32;
            }

            v71 = punchoutPickerTitle5;
            v72 = punchoutPickerTitle4;
            v77 = v6;
            v75 = punchoutOptions2;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = v73;
            punchoutOptions5 = v76;
            v21 = punchoutPickerTitle3;
          }

          else
          {
            v77 = v6;
            v75 = punchoutOptions2;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = punchoutPickerTitle;
            v21 = 0;
          }

          punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText2 = [(SFCardSection *)v77 punchoutPickerDismissText];
          v24 = v21;
          punchoutPickerTitle = v20;
          punchoutPickerTitle2 = v19;
          punchoutOptions3 = v18;
          punchoutOptions = v17;
          punchoutOptions2 = v75;
          if ((punchoutPickerDismissText != 0) != (punchoutPickerDismissText2 == 0))
          {
            v69 = punchoutPickerDismissText2;
            v70 = punchoutPickerDismissText;
            punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
            if (punchoutPickerDismissText3)
            {
              punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
              v6 = v77;
              punchoutPickerDismissText5 = [(SFCardSection *)v77 punchoutPickerDismissText];
              v67 = punchoutPickerDismissText4;
              v26 = [punchoutPickerDismissText4 isEqual:?];
              v27 = v70;
              if (!v26)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v6 = v77;
              v27 = v70;
            }

            v68 = v24;
            canBeHidden = [(SFCardSection *)self canBeHidden];
            if (canBeHidden != [(SFCardSection *)v6 canBeHidden]|| (v29 = [(SFCardSection *)self hasTopPadding], v29 != [(SFCardSection *)v6 hasTopPadding]) || (v30 = [(SFCardSection *)self hasBottomPadding], v30 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v24 = v68;
              if (!punchoutPickerDismissText3)
              {
LABEL_28:

                if (v24)
                {
                }

                goto LABEL_31;
              }

LABEL_27:

              goto LABEL_28;
            }

            v65 = punchoutPickerTitle2;
            type = [(SFTextColumnsCardSection *)self type];
            type2 = [(SFTextColumnsCardSection *)v6 type];
            if ((type != 0) != (type2 == 0))
            {
              v78 = type;
              v64 = type2;
              type3 = [(SFTextColumnsCardSection *)self type];
              if (type3)
              {
                type4 = [(SFTextColumnsCardSection *)self type];
                type5 = [(SFTextColumnsCardSection *)v6 type];
                v62 = type4;
                v36 = type4;
                type = type5;
                if (![v36 isEqual:type5])
                {
                  v11 = 0;
                  goto LABEL_68;
                }

                v63 = type3;
              }

              else
              {
                v63 = 0;
              }

              separatorStyle = [(SFCardSection *)self separatorStyle];
              if (separatorStyle != [(SFCardSection *)v6 separatorStyle])
              {
                v11 = 0;
                goto LABEL_67;
              }

              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v6 backgroundColor];
              if ((backgroundColor != 0) != (backgroundColor2 == 0))
              {
                v60 = type;
                v61 = backgroundColor2;
                v59 = punchoutOptions;
                v40 = punchoutPickerTitle;
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                if (backgroundColor3)
                {
                  backgroundColor4 = [(SFCardSection *)self backgroundColor];
                  backgroundColor5 = [(SFCardSection *)v6 backgroundColor];
                  v58 = backgroundColor4;
                  if (![backgroundColor4 isEqual:?])
                  {
                    v11 = 0;
                    goto LABEL_65;
                  }
                }

                title = [(SFTextColumnsCardSection *)self title];
                title2 = [(SFTextColumnsCardSection *)v6 title];
                v46 = title2;
                if ((title != 0) == (title2 == 0))
                {

                  v11 = 0;
                  if (!backgroundColor3)
                  {
LABEL_66:

                    punchoutPickerTitle = v40;
                    punchoutOptions = v59;
                    type = v60;
                    punchoutOptions2 = v75;
                    v27 = v70;
LABEL_67:
                    type3 = v63;
                    if (!v63)
                    {
LABEL_69:

                      if (punchoutPickerDismissText3)
                      {
                      }

                      if (v68)
                      {
                      }

LABEL_32:
                      punchoutOptions4 = v79;
                      punchoutOptions5 = v76;
                      if (!punchoutOptions3)
                      {
                        goto LABEL_57;
                      }

                      goto LABEL_56;
                    }

LABEL_68:

                    goto LABEL_69;
                  }

LABEL_65:

                  goto LABEL_66;
                }

                title3 = [(SFTextColumnsCardSection *)self title];
                if (title3)
                {
                  title4 = [(SFTextColumnsCardSection *)self title];
                  title5 = [(SFTextColumnsCardSection *)v6 title];
                  v55 = title4;
                  if (![title4 isEqual:?])
                  {
                    v11 = 0;
LABEL_81:

LABEL_82:
                    if (!backgroundColor3)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_65;
                  }
                }

                titleWeight = [(SFTextColumnsCardSection *)self titleWeight];
                if (titleWeight == [(SFTextColumnsCardSection *)v6 titleWeight])
                {
                  columns = [(SFTextColumnsCardSection *)self columns];
                  columns2 = [(SFTextColumnsCardSection *)v6 columns];
                  if ((columns != 0) != (columns2 == 0))
                  {
                    columns3 = [(SFTextColumnsCardSection *)self columns];
                    if (columns3)
                    {
                      columns4 = [(SFTextColumnsCardSection *)self columns];
                      columns5 = [(SFTextColumnsCardSection *)v6 columns];
                      v11 = [columns4 isEqual:columns5];
                    }

                    else
                    {

                      v11 = 1;
                    }

LABEL_80:
                    if (!title3)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_81;
                  }
                }

                v11 = 0;
                goto LABEL_80;
              }

              if (v63)
              {
              }

              type2 = v64;
              type = v78;
            }

            v77 = v6;

            v24 = v68;
            if (punchoutPickerDismissText3)
            {
            }

            punchoutPickerDismissText2 = v69;
            punchoutPickerDismissText = v70;
            punchoutOptions5 = v76;
            punchoutPickerTitle2 = v65;
          }

          if (v24)
          {
          }

          v6 = v77;
        }

        v11 = 0;
        punchoutOptions4 = v79;
        if (!punchoutOptions3)
        {
LABEL_57:

          goto LABEL_58;
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    v11 = 0;
  }

LABEL_59:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = SFTextColumnsCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:zone];
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
  type = [(SFTextColumnsCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  title = [(SFTextColumnsCardSection *)self title];
  v16 = [title copy];
  [v4 setTitle:v16];

  [v4 setTitleWeight:{-[SFTextColumnsCardSection titleWeight](self, "titleWeight")}];
  columns = [(SFTextColumnsCardSection *)self columns];
  v18 = [columns copy];
  [v4 setColumns:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBTextColumnsCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBTextColumnsCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFTextColumnsCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFTextColumnsCardSection)initWithCoder:(id)coder
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
    [(SFTextColumnsCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    title = [(SFCardSection *)v8 title];
    [(SFTextColumnsCardSection *)v5 setTitle:title];

    [(SFTextColumnsCardSection *)v5 setTitleWeight:[(SFCardSection *)v8 titleWeight]];
    columns = [(SFCardSection *)v8 columns];
    [(SFTextColumnsCardSection *)v5 setColumns:columns];

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

- (SFTextColumnsCardSection)initWithProtobuf:(id)protobuf
{
  v48 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v45.receiver = self;
  v45.super_class = SFTextColumnsCardSection;
  v5 = [(SFCardSection *)&v45 init];
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

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
      [(SFTextColumnsCardSection *)v5 setType:type2];
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
      title2 = [protobufCopy title];
      [(SFTextColumnsCardSection *)v5 setTitle:title2];
    }

    if ([protobufCopy titleWeight])
    {
      -[SFTextColumnsCardSection setTitleWeight:](v5, "setTitleWeight:", [protobufCopy titleWeight]);
    }

    columns = [protobufCopy columns];
    if (columns)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    columns2 = [protobufCopy columns];
    v29 = [columns2 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v38;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(columns2);
          }

          v33 = [[SFTextColumn alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [columns2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v30);
    }

    [(SFTextColumnsCardSection *)v5 setColumns:v27];
    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

@end