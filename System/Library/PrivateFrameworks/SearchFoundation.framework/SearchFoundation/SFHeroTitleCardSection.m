@interface SFHeroTitleCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHeroTitleCardSection)initWithCoder:(id)a3;
- (SFHeroTitleCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFHeroTitleCardSection

- (unint64_t)hash
{
  v26.receiver = self;
  v26.super_class = SFHeroTitleCardSection;
  v3 = [(SFCardSection *)&v26 hash];
  v25 = [(SFCardSection *)self punchoutOptions];
  v4 = [v25 hash];
  v5 = [(SFCardSection *)self punchoutPickerTitle];
  v6 = v4 ^ [v5 hash];
  v7 = [(SFCardSection *)self punchoutPickerDismissText];
  v8 = v6 ^ [v7 hash];
  v9 = v8 ^ [(SFCardSection *)self canBeHidden];
  v10 = v9 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v11 = [(SFCardSection *)self hasBottomPadding];
  v12 = [(SFHeroTitleCardSection *)self type];
  v13 = v11 ^ [v12 hash];
  v14 = v13 ^ [(SFCardSection *)self separatorStyle];
  v15 = [(SFCardSection *)self backgroundColor];
  v16 = v14 ^ [v15 hash];
  v17 = [(SFHeroTitleCardSection *)self title];
  v18 = v10 ^ v16 ^ [v17 hash];
  v19 = [(SFHeroTitleCardSection *)self subtitle];
  v20 = [v19 hash];
  v21 = [(SFHeroTitleCardSection *)self buttonItems];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(SFHeroTitleCardSection *)self maxVisibleButtonItems];

  return v18 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFHeroTitleCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = SFHeroTitleCardSection;
      if ([(SFCardSection *)&v73 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCardSection *)self punchoutOptions];
        v8 = [(SFCardSection *)v6 punchoutOptions];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v9 = [(SFCardSection *)self punchoutOptions];
        if (v9)
        {
          v10 = [(SFCardSection *)self punchoutOptions];
          v3 = [(SFCardSection *)v6 punchoutOptions];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
LABEL_38:

            goto LABEL_39;
          }

          v71 = v3;
          v72 = v10;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((v12 != 0) == (v13 == 0))
        {
          goto LABEL_35;
        }

        v14 = [(SFCardSection *)self punchoutPickerTitle];
        if (v14)
        {
          v15 = [(SFCardSection *)self punchoutPickerTitle];
          v16 = [(SFCardSection *)v6 punchoutPickerTitle];
          v68 = v15;
          v17 = v15;
          v3 = v16;
          if (![v17 isEqual:v16])
          {
            goto LABEL_34;
          }
        }

        v69 = v12;
        v70 = v14;
        v18 = [(SFCardSection *)self punchoutPickerDismissText];
        v19 = [(SFCardSection *)v6 punchoutPickerDismissText];
        if ((v18 != 0) == (v19 == 0))
        {

          goto LABEL_33;
        }

        v65 = v18;
        v66 = v19;
        v67 = [(SFCardSection *)self punchoutPickerDismissText];
        if (v67)
        {
          v20 = [(SFCardSection *)self punchoutPickerDismissText];
          v21 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v64 = v20;
          v22 = v20;
          v18 = v21;
          if (![v22 isEqual:v21])
          {
            goto LABEL_31;
          }
        }

        v23 = [(SFCardSection *)self canBeHidden];
        if (v23 == [(SFCardSection *)v6 canBeHidden])
        {
          v24 = [(SFCardSection *)self hasTopPadding];
          if (v24 == [(SFCardSection *)v6 hasTopPadding])
          {
            v25 = [(SFCardSection *)self hasBottomPadding];
            if (v25 == [(SFCardSection *)v6 hasBottomPadding])
            {
              v26 = [(SFHeroTitleCardSection *)self type];
              v27 = [(SFHeroTitleCardSection *)v6 type];
              if ((v26 != 0) != (v27 == 0))
              {
                v61 = v27;
                v62 = v26;
                [(SFHeroTitleCardSection *)self type];
                v63 = v14 = v70;
                if (v63)
                {
                  v60 = [(SFHeroTitleCardSection *)self type];
                  v59 = [(SFHeroTitleCardSection *)v6 type];
                  if (![v60 isEqual:?])
                  {
                    goto LABEL_50;
                  }
                }

                v29 = [(SFCardSection *)self separatorStyle];
                if (v29 == [(SFCardSection *)v6 separatorStyle])
                {
                  v58 = [(SFCardSection *)self backgroundColor];
                  v30 = [(SFCardSection *)v6 backgroundColor];
                  if ((v58 != 0) != (v30 == 0))
                  {
                    v56 = v3;
                    v57 = v30;
                    v55 = v18;
                    v31 = [(SFCardSection *)self backgroundColor];
                    if (v31)
                    {
                      v32 = [(SFCardSection *)self backgroundColor];
                      v52 = [(SFCardSection *)v6 backgroundColor];
                      v53 = v32;
                      if (![v32 isEqual:?])
                      {
LABEL_57:

LABEL_58:
                        v14 = v70;
                        v18 = v55;
                        v3 = v56;
LABEL_49:
                        if (!v63)
                        {
LABEL_51:

LABEL_30:
                          if (!v67)
                          {
LABEL_32:

LABEL_33:
                            v12 = v69;
                            if (!v14)
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

                    v54 = [(SFHeroTitleCardSection *)self title];
                    v33 = [(SFHeroTitleCardSection *)v6 title];
                    v34 = v33;
                    if ((v54 != 0) == (v33 == 0))
                    {

                      if (!v31)
                      {
                        goto LABEL_58;
                      }

                      goto LABEL_57;
                    }

                    v51 = [(SFHeroTitleCardSection *)self title];
                    if (v51)
                    {
                      v35 = [(SFHeroTitleCardSection *)self title];
                      v47 = [(SFHeroTitleCardSection *)v6 title];
                      v48 = v35;
                      if (![v35 isEqual:?])
                      {
                        goto LABEL_65;
                      }
                    }

                    v50 = [(SFHeroTitleCardSection *)self subtitle];
                    v49 = [(SFHeroTitleCardSection *)v6 subtitle];
                    if ((v50 != 0) == (v49 == 0))
                    {

                      if (!v51)
                      {
LABEL_66:

                        if (v31)
                        {
                        }

                        if (v63)
                        {
                        }

                        if (v67)
                        {
                        }

                        if (v70)
                        {
                        }

LABEL_36:
                        v11 = 0;
                        if (!v9)
                        {
LABEL_39:

                          goto LABEL_40;
                        }

                        goto LABEL_37;
                      }

LABEL_65:

                      goto LABEL_66;
                    }

                    v46 = [(SFHeroTitleCardSection *)self subtitle];
                    if (v46)
                    {
                      v36 = [(SFHeroTitleCardSection *)self subtitle];
                      v42 = [(SFHeroTitleCardSection *)v6 subtitle];
                      v43 = v36;
                      if (![v36 isEqual:?])
                      {
                        v11 = 0;
LABEL_84:

LABEL_85:
                        if (v51)
                        {
                        }

                        if (v31)
                        {
                        }

                        if (v63)
                        {
                        }

                        if (v67)
                        {
                        }

                        if (v70)
                        {
                        }

                        if (!v9)
                        {
                          goto LABEL_39;
                        }

LABEL_37:
                        v3 = v71;
                        v10 = v72;
                        goto LABEL_38;
                      }
                    }

                    v45 = [(SFHeroTitleCardSection *)self buttonItems];
                    v44 = [(SFHeroTitleCardSection *)v6 buttonItems];
                    if ((v45 != 0) == (v44 == 0))
                    {

                      v11 = 0;
                      goto LABEL_83;
                    }

                    v41 = [(SFHeroTitleCardSection *)self buttonItems];
                    if (!v41 || (-[SFHeroTitleCardSection buttonItems](self, "buttonItems"), v37 = objc_claimAutoreleasedReturnValue(), -[SFHeroTitleCardSection buttonItems](v6, "buttonItems"), v39 = objc_claimAutoreleasedReturnValue(), v40 = v37, [v37 isEqual:?]))
                    {
                      v38 = [(SFHeroTitleCardSection *)self maxVisibleButtonItems];
                      v11 = v38 == [(SFHeroTitleCardSection *)v6 maxVisibleButtonItems];
                      if (!v41)
                      {
LABEL_82:

LABEL_83:
                        if (!v46)
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

                v14 = v70;
                goto LABEL_49;
              }
            }
          }
        }

        v14 = v70;
        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22.receiver = self;
  v22.super_class = SFHeroTitleCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:a3];
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
  v11 = [(SFHeroTitleCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFHeroTitleCardSection *)self title];
  v16 = [v15 copy];
  [v4 setTitle:v16];

  v17 = [(SFHeroTitleCardSection *)self subtitle];
  v18 = [v17 copy];
  [v4 setSubtitle:v18];

  v19 = [(SFHeroTitleCardSection *)self buttonItems];
  v20 = [v19 copy];
  [v4 setButtonItems:v20];

  [v4 setMaxVisibleButtonItems:{-[SFHeroTitleCardSection maxVisibleButtonItems](self, "maxVisibleButtonItems")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBHeroTitleCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHeroTitleCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBHeroTitleCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFHeroTitleCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFHeroTitleCardSection)initWithCoder:(id)a3
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
    [(SFHeroTitleCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 title];
    [(SFHeroTitleCardSection *)v5 setTitle:v14];

    v15 = [(SFCardSection *)v8 subtitle];
    [(SFHeroTitleCardSection *)v5 setSubtitle:v15];

    v16 = [(SFCardSection *)v8 buttonItems];
    [(SFHeroTitleCardSection *)v5 setButtonItems:v16];

    [(SFHeroTitleCardSection *)v5 setMaxVisibleButtonItems:[(SFCardSection *)v8 maxVisibleButtonItems]];
    v17 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v17];

    v18 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v18];

    v19 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v19];

    v20 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v20];

    v21 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v21];

    v22 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v22];

    v23 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v23];

    v24 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v24];

    v25 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v25];

    v26 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v26];

    v27 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v27];

    v28 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v28];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v29 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v29];

    v30 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v30];

    v31 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v31];

    v32 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v32];

    v33 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v33];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v34 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v34];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v35 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v35];

    v36 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v36];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v37 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v37];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v38 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v38];

    v39 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v39];

    v40 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v40];

    v41 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v41];
  }

  return v5;
}

- (SFHeroTitleCardSection)initWithProtobuf:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SFHeroTitleCardSection;
  v5 = [(SFCardSection *)&v51 init];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
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
      [(SFHeroTitleCardSection *)v5 setType:v19];
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

    v24 = [v4 title];

    if (v24)
    {
      v25 = [SFRichText alloc];
      v26 = [v4 title];
      v27 = [(SFRichText *)v25 initWithProtobuf:v26];
      [(SFHeroTitleCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [SFRichText alloc];
      v30 = [v4 subtitle];
      v31 = [(SFRichText *)v29 initWithProtobuf:v30];
      [(SFHeroTitleCardSection *)v5 setSubtitle:v31];
    }

    v32 = [v4 buttonItems];
    if (v32)
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
    v34 = [v4 buttonItems];
    v35 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v36);
    }

    [(SFHeroTitleCardSection *)v5 setButtonItems:v33];
    if ([v4 maxVisibleButtonItems])
    {
      -[SFHeroTitleCardSection setMaxVisibleButtonItems:](v5, "setMaxVisibleButtonItems:", [v4 maxVisibleButtonItems]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

@end