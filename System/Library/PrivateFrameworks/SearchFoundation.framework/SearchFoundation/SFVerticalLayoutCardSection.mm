@interface SFVerticalLayoutCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFVerticalLayoutCardSection)initWithCoder:(id)coder;
- (SFVerticalLayoutCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFVerticalLayoutCardSection

- (SFVerticalLayoutCardSection)initWithProtobuf:(id)protobuf
{
  v49 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v47.receiver = self;
  v47.super_class = SFVerticalLayoutCardSection;
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
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
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

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
      [(SFVerticalLayoutCardSection *)v5 setType:type2];
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

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v25 = [SFImage alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v27 = [(SFImage *)v25 initWithProtobuf:thumbnail2];
      [(SFVerticalLayoutCardSection *)v5 setThumbnail:v27];
    }

    title = [protobufCopy title];

    if (title)
    {
      v29 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v31 = [(SFRichText *)v29 initWithProtobuf:title2];
      [(SFVerticalLayoutCardSection *)v5 setTitle:v31];
    }

    footnote = [protobufCopy footnote];

    if (footnote)
    {
      v33 = [SFRichText alloc];
      footnote2 = [protobufCopy footnote];
      v35 = [(SFRichText *)v33 initWithProtobuf:footnote2];
      [(SFVerticalLayoutCardSection *)v5 setFootnote:v35];
    }

    if ([protobufCopy contentsLeading])
    {
      -[SFVerticalLayoutCardSection setContentsLeading:](v5, "setContentsLeading:", [protobufCopy contentsLeading]);
    }

    thumbnailOverlayText = [protobufCopy thumbnailOverlayText];

    if (thumbnailOverlayText)
    {
      v37 = [SFRichText alloc];
      thumbnailOverlayText2 = [protobufCopy thumbnailOverlayText];
      v39 = [(SFRichText *)v37 initWithProtobuf:thumbnailOverlayText2];
      [(SFVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v39];
    }

    if ([protobufCopy useAppIconMetrics])
    {
      -[SFVerticalLayoutCardSection setUseAppIconMetrics:](v5, "setUseAppIconMetrics:", [protobufCopy useAppIconMetrics]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v29.receiver = self;
  v29.super_class = SFVerticalLayoutCardSection;
  v3 = [(SFCardSection *)&v29 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v4 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [punchoutPickerDismissText hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFVerticalLayoutCardSection *)self type];
  v12 = hasBottomPadding ^ [type hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [backgroundColor hash];
  thumbnail = [(SFVerticalLayoutCardSection *)self thumbnail];
  v17 = v9 ^ v15 ^ [thumbnail hash];
  title = [(SFVerticalLayoutCardSection *)self title];
  v19 = [title hash];
  footnote = [(SFVerticalLayoutCardSection *)self footnote];
  v21 = v19 ^ [footnote hash];
  v22 = v21 ^ [(SFVerticalLayoutCardSection *)self contentsLeading];
  thumbnailOverlayText = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
  v24 = v22 ^ [thumbnailOverlayText hash];
  v25 = v24 ^ [(SFVerticalLayoutCardSection *)self useAppIconMetrics];

  return v17 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFVerticalLayoutCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v88.receiver = self;
      v88.super_class = SFVerticalLayoutCardSection;
      if ([(SFCardSection *)&v88 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          LOBYTE(v11) = 0;
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
            LOBYTE(v11) = 0;
            goto LABEL_36;
          }

          v87 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
        {
LABEL_35:

          LOBYTE(v11) = 0;
          punchoutOptions4 = v87;
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
          v81 = punchoutOptions2;
          v15 = punchoutOptions;
          v16 = punchoutOptions3;
          v17 = punchoutPickerTitle2;
          v18 = punchoutPickerTitle;
          v20 = v19 = punchoutOptions5;
          punchoutPickerTitle4 = [(SFCardSection *)v6 punchoutPickerTitle];
          v84 = v20;
          v21 = v20;
          punchoutOptions5 = v19;
          punchoutPickerTitle = v18;
          punchoutPickerTitle2 = v17;
          punchoutOptions3 = v16;
          punchoutOptions = v15;
          punchoutOptions2 = v81;
          if (![v21 isEqual:?])
          {
            goto LABEL_33;
          }
        }

        v85 = punchoutOptions5;
        v86 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          goto LABEL_32;
        }

        v78 = punchoutPickerDismissText;
        v79 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v77 = punchoutPickerDismissText4;
          v25 = punchoutPickerDismissText4;
          punchoutPickerTitle3 = v86;
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
              type = [(SFVerticalLayoutCardSection *)self type];
              type2 = [(SFVerticalLayoutCardSection *)v6 type];
              if ((type != 0) != (type2 == 0))
              {
                v74 = type2;
                v75 = type;
                type3 = [(SFVerticalLayoutCardSection *)self type];
                v26 = punchoutPickerDismissText3;
                if (type3)
                {
                  type4 = [(SFVerticalLayoutCardSection *)self type];
                  type5 = [(SFVerticalLayoutCardSection *)v6 type];
                  if (![type4 isEqual:?])
                  {
LABEL_54:

LABEL_55:
                    punchoutPickerTitle3 = v86;
                    if (!v26)
                    {
                      goto LABEL_31;
                    }

                    goto LABEL_30;
                  }
                }

                v72 = type3;
                separatorStyle = [(SFCardSection *)self separatorStyle];
                if (separatorStyle != [(SFCardSection *)v6 separatorStyle])
                {
LABEL_53:
                  v26 = punchoutPickerDismissText3;
                  type3 = v72;
                  if (!v72)
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

                v69 = backgroundColor2;
                v82 = punchoutOptions2;
                v66 = punchoutOptions;
                v67 = punchoutPickerTitle2;
                v68 = punchoutPickerTitle;
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

                thumbnail = [(SFVerticalLayoutCardSection *)self thumbnail];
                v70 = v6;
                thumbnail2 = [(SFVerticalLayoutCardSection *)v6 thumbnail];
                v41 = thumbnail2;
                if ((thumbnail != 0) == (thumbnail2 == 0))
                {

                  v6 = v70;
                  if (!backgroundColor3)
                  {
LABEL_52:

                    punchoutPickerTitle2 = v67;
                    punchoutPickerTitle = v68;
                    punchoutOptions = v66;
                    punchoutOptions2 = v82;
                    goto LABEL_53;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                thumbnail3 = [(SFVerticalLayoutCardSection *)self thumbnail];
                if (thumbnail3)
                {
                  thumbnail4 = [(SFVerticalLayoutCardSection *)self thumbnail];
                  thumbnail5 = [(SFVerticalLayoutCardSection *)v70 thumbnail];
                  v62 = thumbnail4;
                  if (![thumbnail4 isEqual:?])
                  {
                    goto LABEL_62;
                  }
                }

                title = [(SFVerticalLayoutCardSection *)self title];
                title2 = [(SFVerticalLayoutCardSection *)v70 title];
                if ((title != 0) == (title2 == 0))
                {

                  if (!thumbnail3)
                  {
LABEL_63:

                    if (backgroundColor3)
                    {
                    }

                    if (v72)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (!v86)
                    {
LABEL_89:

                      LOBYTE(v11) = 0;
                      if (punchoutOptions3)
                      {
LABEL_90:
                        punchoutOptions4 = v87;
                        punchoutOptions5 = v85;
                        punchoutOptions = v66;
                        punchoutOptions2 = v82;
                        v6 = v70;
                        goto LABEL_36;
                      }

LABEL_116:
                      punchoutOptions = v66;
                      punchoutOptions2 = v82;
                      v6 = v70;
                      goto LABEL_37;
                    }

LABEL_87:

LABEL_88:
                    goto LABEL_89;
                  }

LABEL_62:

                  goto LABEL_63;
                }

                title3 = [(SFVerticalLayoutCardSection *)self title];
                if (title3)
                {
                  title4 = [(SFVerticalLayoutCardSection *)self title];
                  title5 = [(SFVerticalLayoutCardSection *)v70 title];
                  v57 = title4;
                  if (![title4 isEqual:?])
                  {
LABEL_77:

LABEL_78:
                    if (thumbnail3)
                    {
                    }

                    if (backgroundColor3)
                    {
                    }

                    if (v72)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (!v86)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_87;
                  }
                }

                footnote = [(SFVerticalLayoutCardSection *)self footnote];
                footnote2 = [(SFVerticalLayoutCardSection *)v70 footnote];
                if ((footnote != 0) == (footnote2 == 0))
                {

                  if (!title3)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_77;
                }

                footnote3 = [(SFVerticalLayoutCardSection *)self footnote];
                if (footnote3)
                {
                  footnote4 = [(SFVerticalLayoutCardSection *)self footnote];
                  footnote5 = [(SFVerticalLayoutCardSection *)v70 footnote];
                  v54 = footnote4;
                  if (![footnote4 isEqual:?])
                  {
                    LOBYTE(v11) = 0;
LABEL_102:

LABEL_103:
                    if (title3)
                    {
                    }

                    if (thumbnail3)
                    {
                    }

                    if (backgroundColor3)
                    {
                    }

                    if (v72)
                    {
                    }

                    if (punchoutPickerDismissText3)
                    {
                    }

                    if (v86)
                    {
                    }

                    if (punchoutOptions3)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_116;
                  }
                }

                contentsLeading = [(SFVerticalLayoutCardSection *)self contentsLeading];
                if (contentsLeading == [(SFVerticalLayoutCardSection *)v70 contentsLeading])
                {
                  thumbnailOverlayText = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
                  thumbnailOverlayText2 = [(SFVerticalLayoutCardSection *)v70 thumbnailOverlayText];
                  if ((thumbnailOverlayText != 0) != (thumbnailOverlayText2 == 0))
                  {
                    thumbnailOverlayText3 = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
                    if (!thumbnailOverlayText3 || (-[SFVerticalLayoutCardSection thumbnailOverlayText](self, "thumbnailOverlayText"), v46 = objc_claimAutoreleasedReturnValue(), -[SFVerticalLayoutCardSection thumbnailOverlayText](v70, "thumbnailOverlayText"), v48 = objc_claimAutoreleasedReturnValue(), v49 = v46, [v46 isEqual:?]))
                    {
                      useAppIconMetrics = [(SFVerticalLayoutCardSection *)self useAppIconMetrics];
                      v11 = useAppIconMetrics ^ [(SFVerticalLayoutCardSection *)v70 useAppIconMetrics]^ 1;
                      if (!thumbnailOverlayText3)
                      {
LABEL_100:

LABEL_101:
                        if (!footnote3)
                        {
                          goto LABEL_103;
                        }

                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      LOBYTE(v11) = 0;
                    }

                    goto LABEL_100;
                  }
                }

                LOBYTE(v11) = 0;
                goto LABEL_101;
              }
            }
          }
        }

        punchoutPickerTitle3 = v86;
        v26 = punchoutPickerDismissText3;
        if (!punchoutPickerDismissText3)
        {
LABEL_31:

LABEL_32:
          punchoutOptions5 = v85;
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

    LOBYTE(v11) = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = SFVerticalLayoutCardSection;
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
  type = [(SFVerticalLayoutCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  thumbnail = [(SFVerticalLayoutCardSection *)self thumbnail];
  v16 = [thumbnail copy];
  [v4 setThumbnail:v16];

  title = [(SFVerticalLayoutCardSection *)self title];
  v18 = [title copy];
  [v4 setTitle:v18];

  footnote = [(SFVerticalLayoutCardSection *)self footnote];
  v20 = [footnote copy];
  [v4 setFootnote:v20];

  [v4 setContentsLeading:{-[SFVerticalLayoutCardSection contentsLeading](self, "contentsLeading")}];
  thumbnailOverlayText = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
  v22 = [thumbnailOverlayText copy];
  [v4 setThumbnailOverlayText:v22];

  [v4 setUseAppIconMetrics:{-[SFVerticalLayoutCardSection useAppIconMetrics](self, "useAppIconMetrics")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBVerticalLayoutCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBVerticalLayoutCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFVerticalLayoutCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFVerticalLayoutCardSection)initWithCoder:(id)coder
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
    [(SFVerticalLayoutCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(SFVerticalLayoutCardSection *)v5 setThumbnail:thumbnail];

    title = [(SFCardSection *)v8 title];
    [(SFVerticalLayoutCardSection *)v5 setTitle:title];

    footnote = [(SFCardSection *)v8 footnote];
    [(SFVerticalLayoutCardSection *)v5 setFootnote:footnote];

    [(SFVerticalLayoutCardSection *)v5 setContentsLeading:[(SFCardSection *)v8 contentsLeading]];
    thumbnailOverlayText = [(SFCardSection *)v8 thumbnailOverlayText];
    [(SFVerticalLayoutCardSection *)v5 setThumbnailOverlayText:thumbnailOverlayText];

    [(SFVerticalLayoutCardSection *)v5 setUseAppIconMetrics:[(SFCardSection *)v8 useAppIconMetrics]];
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