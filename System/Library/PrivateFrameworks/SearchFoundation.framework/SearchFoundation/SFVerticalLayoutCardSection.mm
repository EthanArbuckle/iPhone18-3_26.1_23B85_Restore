@interface SFVerticalLayoutCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFVerticalLayoutCardSection)initWithCoder:(id)a3;
- (SFVerticalLayoutCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFVerticalLayoutCardSection

- (SFVerticalLayoutCardSection)initWithProtobuf:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = SFVerticalLayoutCardSection;
  v5 = [(SFCardSection *)&v47 init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
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
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(SFVerticalLayoutCardSection *)v5 setType:v19];
    }

    if ([v4 separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [SFColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:v22];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 thumbnail];

    if (v24)
    {
      v25 = [SFImage alloc];
      v26 = [v4 thumbnail];
      v27 = [(SFImage *)v25 initWithProtobuf:v26];
      [(SFVerticalLayoutCardSection *)v5 setThumbnail:v27];
    }

    v28 = [v4 title];

    if (v28)
    {
      v29 = [SFRichText alloc];
      v30 = [v4 title];
      v31 = [(SFRichText *)v29 initWithProtobuf:v30];
      [(SFVerticalLayoutCardSection *)v5 setTitle:v31];
    }

    v32 = [v4 footnote];

    if (v32)
    {
      v33 = [SFRichText alloc];
      v34 = [v4 footnote];
      v35 = [(SFRichText *)v33 initWithProtobuf:v34];
      [(SFVerticalLayoutCardSection *)v5 setFootnote:v35];
    }

    if ([v4 contentsLeading])
    {
      -[SFVerticalLayoutCardSection setContentsLeading:](v5, "setContentsLeading:", [v4 contentsLeading]);
    }

    v36 = [v4 thumbnailOverlayText];

    if (v36)
    {
      v37 = [SFRichText alloc];
      v38 = [v4 thumbnailOverlayText];
      v39 = [(SFRichText *)v37 initWithProtobuf:v38];
      [(SFVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v39];
    }

    if ([v4 useAppIconMetrics])
    {
      -[SFVerticalLayoutCardSection setUseAppIconMetrics:](v5, "setUseAppIconMetrics:", [v4 useAppIconMetrics]);
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
  v28 = [(SFCardSection *)self punchoutOptions];
  v4 = [v28 hash];
  v27 = [(SFCardSection *)self punchoutPickerTitle];
  v5 = v4 ^ [v27 hash];
  v6 = [(SFCardSection *)self punchoutPickerDismissText];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFCardSection *)self canBeHidden];
  v9 = v8 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v10 = [(SFCardSection *)self hasBottomPadding];
  v11 = [(SFVerticalLayoutCardSection *)self type];
  v12 = v10 ^ [v11 hash];
  v13 = v12 ^ [(SFCardSection *)self separatorStyle];
  v14 = [(SFCardSection *)self backgroundColor];
  v15 = v13 ^ [v14 hash];
  v16 = [(SFVerticalLayoutCardSection *)self thumbnail];
  v17 = v9 ^ v15 ^ [v16 hash];
  v18 = [(SFVerticalLayoutCardSection *)self title];
  v19 = [v18 hash];
  v20 = [(SFVerticalLayoutCardSection *)self footnote];
  v21 = v19 ^ [v20 hash];
  v22 = v21 ^ [(SFVerticalLayoutCardSection *)self contentsLeading];
  v23 = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
  v24 = v22 ^ [v23 hash];
  v25 = v24 ^ [(SFVerticalLayoutCardSection *)self useAppIconMetrics];

  return v17 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFVerticalLayoutCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v88.receiver = self;
      v88.super_class = SFVerticalLayoutCardSection;
      if ([(SFCardSection *)&v88 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCardSection *)self punchoutOptions];
        v8 = [(SFCardSection *)v6 punchoutOptions];
        if ((v7 != 0) == (v8 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_38:

          goto LABEL_39;
        }

        v9 = [(SFCardSection *)self punchoutOptions];
        if (v9)
        {
          v10 = [(SFCardSection *)self punchoutOptions];
          v3 = [(SFCardSection *)v6 punchoutOptions];
          if (![v10 isEqual:v3])
          {
            LOBYTE(v11) = 0;
            goto LABEL_36;
          }

          v87 = v10;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((v12 != 0) == (v13 == 0))
        {
LABEL_35:

          LOBYTE(v11) = 0;
          v10 = v87;
          if (!v9)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }

        v14 = [(SFCardSection *)self punchoutPickerTitle];
        if (v14)
        {
          [(SFCardSection *)self punchoutPickerTitle];
          v81 = v8;
          v15 = v7;
          v16 = v9;
          v17 = v13;
          v18 = v12;
          v20 = v19 = v3;
          v83 = [(SFCardSection *)v6 punchoutPickerTitle];
          v84 = v20;
          v21 = v20;
          v3 = v19;
          v12 = v18;
          v13 = v17;
          v9 = v16;
          v7 = v15;
          v8 = v81;
          if (![v21 isEqual:?])
          {
            goto LABEL_33;
          }
        }

        v85 = v3;
        v86 = v14;
        v22 = [(SFCardSection *)self punchoutPickerDismissText];
        v23 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((v22 != 0) == (v23 == 0))
        {

          goto LABEL_32;
        }

        v78 = v22;
        v79 = v23;
        v80 = [(SFCardSection *)self punchoutPickerDismissText];
        if (v80)
        {
          v24 = [(SFCardSection *)self punchoutPickerDismissText];
          v76 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v77 = v24;
          v25 = v24;
          v14 = v86;
          v26 = v80;
          if (![v25 isEqual:?])
          {
            goto LABEL_30;
          }
        }

        v27 = [(SFCardSection *)self canBeHidden];
        if (v27 == [(SFCardSection *)v6 canBeHidden])
        {
          v28 = [(SFCardSection *)self hasTopPadding];
          if (v28 == [(SFCardSection *)v6 hasTopPadding])
          {
            v29 = [(SFCardSection *)self hasBottomPadding];
            if (v29 == [(SFCardSection *)v6 hasBottomPadding])
            {
              v30 = [(SFVerticalLayoutCardSection *)self type];
              v31 = [(SFVerticalLayoutCardSection *)v6 type];
              if ((v30 != 0) != (v31 == 0))
              {
                v74 = v31;
                v75 = v30;
                v32 = [(SFVerticalLayoutCardSection *)self type];
                v26 = v80;
                if (v32)
                {
                  v73 = [(SFVerticalLayoutCardSection *)self type];
                  v71 = [(SFVerticalLayoutCardSection *)v6 type];
                  if (![v73 isEqual:?])
                  {
LABEL_54:

LABEL_55:
                    v14 = v86;
                    if (!v26)
                    {
                      goto LABEL_31;
                    }

                    goto LABEL_30;
                  }
                }

                v72 = v32;
                v34 = [(SFCardSection *)self separatorStyle];
                if (v34 != [(SFCardSection *)v6 separatorStyle])
                {
LABEL_53:
                  v26 = v80;
                  v32 = v72;
                  if (!v72)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_54;
                }

                v35 = [(SFCardSection *)self backgroundColor];
                v36 = [(SFCardSection *)v6 backgroundColor];
                if ((v35 != 0) == (v36 == 0))
                {

                  goto LABEL_53;
                }

                v69 = v36;
                v82 = v8;
                v66 = v7;
                v67 = v13;
                v68 = v12;
                v37 = [(SFCardSection *)self backgroundColor];
                if (v37)
                {
                  v38 = [(SFCardSection *)self backgroundColor];
                  [(SFCardSection *)v6 backgroundColor];
                  v12 = v8 = v38;
                  if (![v38 isEqual:?])
                  {
                    goto LABEL_51;
                  }
                }

                v39 = [(SFVerticalLayoutCardSection *)self thumbnail];
                v70 = v6;
                v40 = [(SFVerticalLayoutCardSection *)v6 thumbnail];
                v41 = v40;
                if ((v39 != 0) == (v40 == 0))
                {

                  v6 = v70;
                  if (!v37)
                  {
LABEL_52:

                    v13 = v67;
                    v12 = v68;
                    v7 = v66;
                    v8 = v82;
                    goto LABEL_53;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                v65 = [(SFVerticalLayoutCardSection *)self thumbnail];
                if (v65)
                {
                  v42 = [(SFVerticalLayoutCardSection *)self thumbnail];
                  v61 = [(SFVerticalLayoutCardSection *)v70 thumbnail];
                  v62 = v42;
                  if (![v42 isEqual:?])
                  {
                    goto LABEL_62;
                  }
                }

                v64 = [(SFVerticalLayoutCardSection *)self title];
                v63 = [(SFVerticalLayoutCardSection *)v70 title];
                if ((v64 != 0) == (v63 == 0))
                {

                  if (!v65)
                  {
LABEL_63:

                    if (v37)
                    {
                    }

                    if (v72)
                    {
                    }

                    if (v80)
                    {
                    }

                    if (!v86)
                    {
LABEL_89:

                      LOBYTE(v11) = 0;
                      if (v9)
                      {
LABEL_90:
                        v10 = v87;
                        v3 = v85;
                        v7 = v66;
                        v8 = v82;
                        v6 = v70;
                        goto LABEL_36;
                      }

LABEL_116:
                      v7 = v66;
                      v8 = v82;
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

                v60 = [(SFVerticalLayoutCardSection *)self title];
                if (v60)
                {
                  v43 = [(SFVerticalLayoutCardSection *)self title];
                  v56 = [(SFVerticalLayoutCardSection *)v70 title];
                  v57 = v43;
                  if (![v43 isEqual:?])
                  {
LABEL_77:

LABEL_78:
                    if (v65)
                    {
                    }

                    if (v37)
                    {
                    }

                    if (v72)
                    {
                    }

                    if (v80)
                    {
                    }

                    if (!v86)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_87;
                  }
                }

                v59 = [(SFVerticalLayoutCardSection *)self footnote];
                v58 = [(SFVerticalLayoutCardSection *)v70 footnote];
                if ((v59 != 0) == (v58 == 0))
                {

                  if (!v60)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_77;
                }

                v55 = [(SFVerticalLayoutCardSection *)self footnote];
                if (v55)
                {
                  v44 = [(SFVerticalLayoutCardSection *)self footnote];
                  v53 = [(SFVerticalLayoutCardSection *)v70 footnote];
                  v54 = v44;
                  if (![v44 isEqual:?])
                  {
                    LOBYTE(v11) = 0;
LABEL_102:

LABEL_103:
                    if (v60)
                    {
                    }

                    if (v65)
                    {
                    }

                    if (v37)
                    {
                    }

                    if (v72)
                    {
                    }

                    if (v80)
                    {
                    }

                    if (v86)
                    {
                    }

                    if (v9)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_116;
                  }
                }

                v45 = [(SFVerticalLayoutCardSection *)self contentsLeading];
                if (v45 == [(SFVerticalLayoutCardSection *)v70 contentsLeading])
                {
                  v52 = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
                  v51 = [(SFVerticalLayoutCardSection *)v70 thumbnailOverlayText];
                  if ((v52 != 0) != (v51 == 0))
                  {
                    v50 = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
                    if (!v50 || (-[SFVerticalLayoutCardSection thumbnailOverlayText](self, "thumbnailOverlayText"), v46 = objc_claimAutoreleasedReturnValue(), -[SFVerticalLayoutCardSection thumbnailOverlayText](v70, "thumbnailOverlayText"), v48 = objc_claimAutoreleasedReturnValue(), v49 = v46, [v46 isEqual:?]))
                    {
                      v47 = [(SFVerticalLayoutCardSection *)self useAppIconMetrics];
                      v11 = v47 ^ [(SFVerticalLayoutCardSection *)v70 useAppIconMetrics]^ 1;
                      if (!v50)
                      {
LABEL_100:

LABEL_101:
                        if (!v55)
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

        v14 = v86;
        v26 = v80;
        if (!v80)
        {
LABEL_31:

LABEL_32:
          v3 = v85;
          if (!v14)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = SFVerticalLayoutCardSection;
  v4 = [(SFCardSection *)&v24 copyWithZone:a3];
  v5 = [(SFCardSection *)self punchoutOptions];
  v6 = [v5 copy];
  [v4 setPunchoutOptions:v6];

  v7 = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [v7 copy];
  [v4 setPunchoutPickerTitle:v8];

  v9 = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [v9 copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  v11 = [(SFVerticalLayoutCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFVerticalLayoutCardSection *)self thumbnail];
  v16 = [v15 copy];
  [v4 setThumbnail:v16];

  v17 = [(SFVerticalLayoutCardSection *)self title];
  v18 = [v17 copy];
  [v4 setTitle:v18];

  v19 = [(SFVerticalLayoutCardSection *)self footnote];
  v20 = [v19 copy];
  [v4 setFootnote:v20];

  [v4 setContentsLeading:{-[SFVerticalLayoutCardSection contentsLeading](self, "contentsLeading")}];
  v21 = [(SFVerticalLayoutCardSection *)self thumbnailOverlayText];
  v22 = [v21 copy];
  [v4 setThumbnailOverlayText:v22];

  [v4 setUseAppIconMetrics:{-[SFVerticalLayoutCardSection useAppIconMetrics](self, "useAppIconMetrics")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBVerticalLayoutCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBVerticalLayoutCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBVerticalLayoutCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFVerticalLayoutCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFVerticalLayoutCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v9];

    v10 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v10];

    v11 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v11];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v12 = [(SFCardSection *)v8 type];
    [(SFVerticalLayoutCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 thumbnail];
    [(SFVerticalLayoutCardSection *)v5 setThumbnail:v14];

    v15 = [(SFCardSection *)v8 title];
    [(SFVerticalLayoutCardSection *)v5 setTitle:v15];

    v16 = [(SFCardSection *)v8 footnote];
    [(SFVerticalLayoutCardSection *)v5 setFootnote:v16];

    [(SFVerticalLayoutCardSection *)v5 setContentsLeading:[(SFCardSection *)v8 contentsLeading]];
    v17 = [(SFCardSection *)v8 thumbnailOverlayText];
    [(SFVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v17];

    [(SFVerticalLayoutCardSection *)v5 setUseAppIconMetrics:[(SFCardSection *)v8 useAppIconMetrics]];
    v18 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v18];

    v19 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v19];

    v20 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v20];

    v21 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v21];

    v22 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v22];

    v23 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v23];

    v24 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v24];

    v25 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v25];

    v26 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v26];

    v27 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v27];

    v28 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v28];

    v29 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v29];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v30 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v30];

    v31 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v31];

    v32 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v32];

    v33 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v33];

    v34 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v34];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v35 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v35];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v36 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v36];

    v37 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v37];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v38 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v38];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v39 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v39];

    v40 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v40];

    v41 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v41];

    v42 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v42];
  }

  return v5;
}

@end