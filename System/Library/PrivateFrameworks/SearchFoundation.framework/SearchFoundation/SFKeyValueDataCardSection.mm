@interface SFKeyValueDataCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFKeyValueDataCardSection)initWithCoder:(id)coder;
- (SFKeyValueDataCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFKeyValueDataCardSection

- (SFKeyValueDataCardSection)initWithProtobuf:(id)protobuf
{
  v50 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v47.receiver = self;
  v47.super_class = SFKeyValueDataCardSection;
  v5 = [(SFCardSection *)&v47 init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
      [(SFKeyValueDataCardSection *)v5 setType:type2];
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

    datas = [protobufCopy datas];
    if (datas)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    datas2 = [protobufCopy datas];
    v27 = [datas2 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(datas2);
          }

          v31 = [[SFKeyValueTuple alloc] initWithProtobuf:*(*(&v39 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [datas2 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v28);
    }

    [(SFKeyValueDataCardSection *)v5 setData:v25];
    accessoryImage = [protobufCopy accessoryImage];

    if (accessoryImage)
    {
      v33 = [SFImage alloc];
      accessoryImage2 = [protobufCopy accessoryImage];
      v35 = [(SFImage *)v33 initWithProtobuf:accessoryImage2];
      [(SFKeyValueDataCardSection *)v5 setAccessoryImage:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v23.receiver = self;
  v23.super_class = SFKeyValueDataCardSection;
  v3 = [(SFCardSection *)&v23 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFKeyValueDataCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  data = [(SFKeyValueDataCardSection *)self data];
  v19 = v11 ^ v17 ^ [data hash];
  accessoryImage = [(SFKeyValueDataCardSection *)self accessoryImage];
  v21 = [accessoryImage hash];

  return v19 ^ v21;
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
    if ([(SFKeyValueDataCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v78.receiver = self;
      v78.super_class = SFKeyValueDataCardSection;
      if ([(SFCardSection *)&v78 isEqual:equalCopy])
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

          v77 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) != (punchoutPickerTitle2 == 0))
        {
          punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
          v74 = punchoutOptions5;
          if (punchoutPickerTitle3)
          {
            v71 = punchoutPickerTitle;
            punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
            punchoutPickerTitle5 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([punchoutPickerTitle4 isEqual:punchoutPickerTitle5] & 1) == 0)
            {

LABEL_31:
              v11 = 0;
              goto LABEL_32;
            }

            v69 = punchoutPickerTitle5;
            v70 = punchoutPickerTitle4;
            v75 = v6;
            v73 = punchoutOptions2;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = v71;
            punchoutOptions5 = v74;
            v21 = punchoutPickerTitle3;
          }

          else
          {
            v75 = v6;
            v73 = punchoutOptions2;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = punchoutPickerTitle;
            v21 = 0;
          }

          punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText2 = [(SFCardSection *)v75 punchoutPickerDismissText];
          v24 = v21;
          punchoutPickerTitle = v20;
          punchoutPickerTitle2 = v19;
          punchoutOptions3 = v18;
          punchoutOptions = v17;
          punchoutOptions2 = v73;
          if ((punchoutPickerDismissText != 0) != (punchoutPickerDismissText2 == 0))
          {
            v67 = punchoutPickerDismissText2;
            v68 = punchoutPickerDismissText;
            punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
            if (punchoutPickerDismissText3)
            {
              punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
              v6 = v75;
              punchoutPickerDismissText5 = [(SFCardSection *)v75 punchoutPickerDismissText];
              v65 = punchoutPickerDismissText4;
              v26 = [punchoutPickerDismissText4 isEqual:?];
              v27 = v68;
              if (!v26)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v6 = v75;
              v27 = v68;
            }

            v66 = v24;
            canBeHidden = [(SFCardSection *)self canBeHidden];
            if (canBeHidden != [(SFCardSection *)v6 canBeHidden]|| (v29 = [(SFCardSection *)self hasTopPadding], v29 != [(SFCardSection *)v6 hasTopPadding]) || (v30 = [(SFCardSection *)self hasBottomPadding], v30 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v24 = v66;
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

            type = [(SFKeyValueDataCardSection *)self type];
            type2 = [(SFKeyValueDataCardSection *)v6 type];
            if ((type != 0) != (type2 == 0))
            {
              v63 = type2;
              v76 = type;
              type3 = [(SFKeyValueDataCardSection *)self type];
              if (type3)
              {
                type4 = [(SFKeyValueDataCardSection *)self type];
                type5 = [(SFKeyValueDataCardSection *)v6 type];
                if (![type4 isEqual:?])
                {
                  v11 = 0;
                  goto LABEL_68;
                }

                v61 = type3;
              }

              else
              {
                v61 = 0;
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
                v59 = backgroundColor2;
                v57 = punchoutOptions3;
                v58 = punchoutOptions;
                v56 = punchoutPickerTitle2;
                v37 = punchoutPickerTitle;
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                if (backgroundColor3)
                {
                  backgroundColor4 = [(SFCardSection *)self backgroundColor];
                  backgroundColor5 = [(SFCardSection *)v6 backgroundColor];
                  v55 = backgroundColor4;
                  if (![backgroundColor4 isEqual:?])
                  {
                    v11 = 0;
                    goto LABEL_65;
                  }
                }

                data = [(SFKeyValueDataCardSection *)self data];
                data2 = [(SFKeyValueDataCardSection *)v6 data];
                v43 = data2;
                if ((data != 0) == (data2 == 0))
                {

                  v11 = 0;
                  if (!backgroundColor3)
                  {
LABEL_66:

                    punchoutPickerTitle = v37;
                    punchoutPickerTitle2 = v56;
                    punchoutOptions3 = v57;
                    punchoutOptions = v58;
                    punchoutOptions2 = v73;
                    v27 = v68;
LABEL_67:
                    type3 = v61;
                    if (!v61)
                    {
LABEL_69:

                      if (punchoutPickerDismissText3)
                      {
                      }

                      if (v66)
                      {
                      }

LABEL_32:
                      punchoutOptions4 = v77;
                      punchoutOptions5 = v74;
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

                data3 = [(SFKeyValueDataCardSection *)self data];
                if (!data3 || (-[SFKeyValueDataCardSection data](self, "data"), v44 = objc_claimAutoreleasedReturnValue(), -[SFKeyValueDataCardSection data](v6, "data"), v50 = objc_claimAutoreleasedReturnValue(), v51 = v44, [v44 isEqual:?]))
                {
                  accessoryImage = [(SFKeyValueDataCardSection *)self accessoryImage];
                  accessoryImage2 = [(SFKeyValueDataCardSection *)v6 accessoryImage];
                  v46 = accessoryImage2;
                  if ((accessoryImage != 0) == (accessoryImage2 == 0))
                  {

                    v11 = 0;
                  }

                  else
                  {
                    accessoryImage3 = [(SFKeyValueDataCardSection *)self accessoryImage];
                    if (accessoryImage3)
                    {
                      accessoryImage4 = [(SFKeyValueDataCardSection *)self accessoryImage];
                      accessoryImage5 = [(SFKeyValueDataCardSection *)v6 accessoryImage];
                      v11 = [accessoryImage4 isEqual:accessoryImage5];
                    }

                    else
                    {

                      v11 = 1;
                    }
                  }

                  if (!data3)
                  {
LABEL_81:

                    if (!backgroundColor3)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_65;
                  }
                }

                else
                {
                  v11 = 0;
                }

                goto LABEL_81;
              }

              if (v61)
              {
              }

              type = v76;
              type2 = v63;
            }

            v75 = v6;

            v24 = v66;
            if (punchoutPickerDismissText3)
            {
            }

            punchoutPickerDismissText2 = v67;
            punchoutPickerDismissText = v68;
            punchoutOptions5 = v74;
          }

          if (v24)
          {
          }

          v6 = v75;
        }

        v11 = 0;
        punchoutOptions4 = v77;
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
  v20.super_class = SFKeyValueDataCardSection;
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
  type = [(SFKeyValueDataCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  data = [(SFKeyValueDataCardSection *)self data];
  v16 = [data copy];
  [v4 setData:v16];

  accessoryImage = [(SFKeyValueDataCardSection *)self accessoryImage];
  v18 = [accessoryImage copy];
  [v4 setAccessoryImage:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBKeyValueDataCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBKeyValueDataCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBKeyValueDataCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBKeyValueDataCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFKeyValueDataCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFKeyValueDataCardSection)initWithCoder:(id)coder
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
    [(SFKeyValueDataCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    data = [(SFCardSection *)v8 data];
    [(SFKeyValueDataCardSection *)v5 setData:data];

    accessoryImage = [(SFCardSection *)v8 accessoryImage];
    [(SFKeyValueDataCardSection *)v5 setAccessoryImage:accessoryImage];

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