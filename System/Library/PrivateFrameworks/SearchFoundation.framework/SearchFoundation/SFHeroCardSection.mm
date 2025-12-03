@interface SFHeroCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHeroCardSection)initWithCoder:(id)coder;
- (SFHeroCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFHeroCardSection

- (SFHeroCardSection)initWithProtobuf:(id)protobuf
{
  v58 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v55.receiver = self;
  v55.super_class = SFHeroCardSection;
  v5 = [(SFCardSection *)&v55 init];
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

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v51 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
      [(SFHeroCardSection *)v5 setType:type2];
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
      [(SFHeroCardSection *)v5 setTitle:v27];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v29 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v31 = [(SFRichText *)v29 initWithProtobuf:subtitle2];
      [(SFHeroCardSection *)v5 setSubtitle:v31];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    buttonItems2 = [protobufCopy buttonItems];
    v35 = [buttonItems2 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(buttonItems2);
          }

          v39 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v47 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [buttonItems2 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v36);
    }

    [(SFHeroCardSection *)v5 setButtonItems:v33];
    image = [protobufCopy image];

    if (image)
    {
      v41 = [SFImage alloc];
      image2 = [protobufCopy image];
      v43 = [(SFImage *)v41 initWithProtobuf:image2];
      [(SFHeroCardSection *)v5 setImage:v43];
    }

    if ([protobufCopy imageAlign])
    {
      -[SFHeroCardSection setImageAlign:](v5, "setImageAlign:", [protobufCopy imageAlign]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v28.receiver = self;
  v28.super_class = SFHeroCardSection;
  v3 = [(SFCardSection *)&v28 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [punchoutPickerDismissText hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFHeroCardSection *)self type];
  v12 = hasBottomPadding ^ [type hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [backgroundColor hash];
  title = [(SFHeroCardSection *)self title];
  v17 = v9 ^ v15 ^ [title hash];
  subtitle = [(SFHeroCardSection *)self subtitle];
  v19 = [subtitle hash];
  buttonItems = [(SFHeroCardSection *)self buttonItems];
  v21 = v19 ^ [buttonItems hash];
  image = [(SFHeroCardSection *)self image];
  v23 = v21 ^ [image hash];
  v24 = v23 ^ [(SFHeroCardSection *)self imageAlign];

  return v17 ^ v24;
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
    if ([(SFHeroCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v87.receiver = self;
      v87.super_class = SFHeroCardSection;
      if ([(SFCardSection *)&v87 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v6 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
            goto LABEL_36;
          }

          v86 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
        {
LABEL_35:

          v11 = 0;
          punchoutOptions4 = v86;
          if (!punchoutOptions3)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }

        punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
        if (punchoutPickerTitle3)
        {
          [(SFCardSection *)self punchoutPickerTitle];
          v80 = punchoutOptions2;
          v15 = punchoutOptions;
          v16 = punchoutOptions3;
          v17 = punchoutPickerTitle2;
          v18 = punchoutPickerTitle;
          v20 = v19 = punchoutOptions5;
          punchoutPickerTitle4 = [(SFCardSection *)v6 punchoutPickerTitle];
          v83 = v20;
          v21 = v20;
          punchoutOptions5 = v19;
          punchoutPickerTitle = v18;
          punchoutPickerTitle2 = v17;
          punchoutOptions3 = v16;
          punchoutOptions = v15;
          punchoutOptions2 = v80;
          if (![v21 isEqual:?])
          {
            goto LABEL_33;
          }
        }

        v84 = punchoutOptions5;
        v85 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          goto LABEL_32;
        }

        v77 = punchoutPickerDismissText;
        v78 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v76 = punchoutPickerDismissText4;
          v25 = punchoutPickerDismissText4;
          punchoutPickerTitle3 = v85;
          v26 = punchoutPickerDismissText3;
          if (![v25 isEqual:?])
          {
            goto LABEL_30;
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
              type = [(SFHeroCardSection *)self type];
              type2 = [(SFHeroCardSection *)v6 type];
              if ((type != 0) != (type2 == 0))
              {
                v73 = type2;
                v74 = type;
                type3 = [(SFHeroCardSection *)self type];
                v26 = punchoutPickerDismissText3;
                if (type3)
                {
                  type4 = [(SFHeroCardSection *)self type];
                  type5 = [(SFHeroCardSection *)v6 type];
                  if (![type4 isEqual:?])
                  {
LABEL_54:

LABEL_55:
                    punchoutPickerTitle3 = v85;
                    if (!v26)
                    {
                      goto LABEL_31;
                    }

                    goto LABEL_30;
                  }
                }

                v71 = type3;
                separatorStyle = [(SFCardSection *)self separatorStyle];
                if (separatorStyle != [(SFCardSection *)v6 separatorStyle])
                {
LABEL_53:
                  v26 = punchoutPickerDismissText3;
                  type3 = v71;
                  if (!v71)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_54;
                }

                backgroundColor = [(SFCardSection *)self backgroundColor];
                backgroundColor2 = [(SFCardSection *)v6 backgroundColor];
                if ((backgroundColor != 0) == (backgroundColor2 == 0))
                {

                  goto LABEL_53;
                }

                v68 = backgroundColor2;
                v81 = punchoutOptions2;
                v65 = punchoutOptions;
                v66 = punchoutPickerTitle2;
                v67 = punchoutPickerTitle;
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                if (backgroundColor3)
                {
                  backgroundColor4 = [(SFCardSection *)self backgroundColor];
                  [(SFCardSection *)v6 backgroundColor];
                  punchoutPickerTitle = punchoutOptions2 = backgroundColor4;
                  if (![backgroundColor4 isEqual:?])
                  {
                    goto LABEL_51;
                  }
                }

                title = [(SFHeroCardSection *)self title];
                v69 = v6;
                title2 = [(SFHeroCardSection *)v6 title];
                v41 = title2;
                if ((title != 0) == (title2 == 0))
                {

                  v6 = v69;
                  if (!backgroundColor3)
                  {
LABEL_52:

                    punchoutPickerTitle2 = v66;
                    punchoutPickerTitle = v67;
                    punchoutOptions = v65;
                    punchoutOptions2 = v81;
                    goto LABEL_53;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                title3 = [(SFHeroCardSection *)self title];
                if (title3)
                {
                  title4 = [(SFHeroCardSection *)self title];
                  title5 = [(SFHeroCardSection *)v69 title];
                  v61 = title4;
                  if (![title4 isEqual:?])
                  {
                    goto LABEL_62;
                  }
                }

                subtitle = [(SFHeroCardSection *)self subtitle];
                subtitle2 = [(SFHeroCardSection *)v69 subtitle];
                if ((subtitle != 0) == (subtitle2 == 0))
                {

                  if (!title3)
                  {
LABEL_63:

                    if (backgroundColor3)
                    {
                    }

                    if (v71)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (!v85)
                    {
LABEL_89:

                      v11 = 0;
                      if (punchoutOptions3)
                      {
LABEL_90:
                        punchoutOptions4 = v86;
                        punchoutOptions5 = v84;
                        punchoutOptions = v65;
                        punchoutOptions2 = v81;
                        v6 = v69;
                        goto LABEL_36;
                      }

LABEL_114:
                      punchoutOptions = v65;
                      punchoutOptions2 = v81;
                      v6 = v69;
                      goto LABEL_37;
                    }

LABEL_87:

LABEL_88:
                    goto LABEL_89;
                  }

LABEL_62:

                  goto LABEL_63;
                }

                subtitle3 = [(SFHeroCardSection *)self subtitle];
                if (subtitle3)
                {
                  subtitle4 = [(SFHeroCardSection *)self subtitle];
                  subtitle5 = [(SFHeroCardSection *)v69 subtitle];
                  v56 = subtitle4;
                  if (![subtitle4 isEqual:?])
                  {
LABEL_77:

LABEL_78:
                    if (title3)
                    {
                    }

                    if (backgroundColor3)
                    {
                    }

                    if (v71)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (!v85)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_87;
                  }
                }

                buttonItems = [(SFHeroCardSection *)self buttonItems];
                buttonItems2 = [(SFHeroCardSection *)v69 buttonItems];
                if ((buttonItems != 0) == (buttonItems2 == 0))
                {

                  if (!subtitle3)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_77;
                }

                buttonItems3 = [(SFHeroCardSection *)self buttonItems];
                if (buttonItems3)
                {
                  buttonItems4 = [(SFHeroCardSection *)self buttonItems];
                  buttonItems5 = [(SFHeroCardSection *)v69 buttonItems];
                  v51 = buttonItems4;
                  if (![buttonItems4 isEqual:?])
                  {
                    v11 = 0;
LABEL_100:

LABEL_101:
                    if (subtitle3)
                    {
                    }

                    if (title3)
                    {
                    }

                    if (backgroundColor3)
                    {
                    }

                    if (v71)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (v85)
                    {
                    }

                    if (punchoutOptions3)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_114;
                  }
                }

                image = [(SFHeroCardSection *)self image];
                image2 = [(SFHeroCardSection *)v69 image];
                if ((image != 0) == (image2 == 0))
                {

                  v11 = 0;
                  goto LABEL_99;
                }

                image3 = [(SFHeroCardSection *)self image];
                if (!image3 || (-[SFHeroCardSection image](self, "image"), v45 = objc_claimAutoreleasedReturnValue(), -[SFHeroCardSection image](v69, "image"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v45, [v45 isEqual:?]))
                {
                  imageAlign = [(SFHeroCardSection *)self imageAlign];
                  v11 = imageAlign == [(SFHeroCardSection *)v69 imageAlign];
                  if (!image3)
                  {
LABEL_98:

LABEL_99:
                    if (!buttonItems3)
                    {
                      goto LABEL_101;
                    }

                    goto LABEL_100;
                  }
                }

                else
                {
                  v11 = 0;
                }

                goto LABEL_98;
              }
            }
          }
        }

        punchoutPickerTitle3 = v85;
        v26 = punchoutPickerDismissText3;
        if (!punchoutPickerDismissText3)
        {
LABEL_31:

LABEL_32:
          punchoutOptions5 = v84;
          if (!punchoutPickerTitle3)
          {
LABEL_34:

            goto LABEL_35;
          }

LABEL_33:

          goto LABEL_34;
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    v11 = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = SFHeroCardSection;
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
  type = [(SFHeroCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  title = [(SFHeroCardSection *)self title];
  v16 = [title copy];
  [v4 setTitle:v16];

  subtitle = [(SFHeroCardSection *)self subtitle];
  v18 = [subtitle copy];
  [v4 setSubtitle:v18];

  buttonItems = [(SFHeroCardSection *)self buttonItems];
  v20 = [buttonItems copy];
  [v4 setButtonItems:v20];

  image = [(SFHeroCardSection *)self image];
  v22 = [image copy];
  [v4 setImage:v22];

  [v4 setImageAlign:{-[SFHeroCardSection imageAlign](self, "imageAlign")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHeroCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBHeroCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHeroCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBHeroCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFHeroCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFHeroCardSection)initWithCoder:(id)coder
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
    [(SFHeroCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    title = [(SFCardSection *)v8 title];
    [(SFHeroCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFHeroCardSection *)v5 setSubtitle:subtitle];

    buttonItems = [(SFCardSection *)v8 buttonItems];
    [(SFHeroCardSection *)v5 setButtonItems:buttonItems];

    image = [(SFCardSection *)v8 image];
    [(SFHeroCardSection *)v5 setImage:image];

    [(SFHeroCardSection *)v5 setImageAlign:[(SFCardSection *)v8 imageAlign]];
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