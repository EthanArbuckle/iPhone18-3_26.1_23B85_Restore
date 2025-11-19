@interface SFTextColumnsCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextColumnsCardSection)initWithCoder:(id)a3;
- (SFTextColumnsCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTextColumnsCardSection

- (unint64_t)hash
{
  v24.receiver = self;
  v24.super_class = SFTextColumnsCardSection;
  v3 = [(SFCardSection *)&v24 hash];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFTextColumnsCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFTextColumnsCardSection *)self title];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(SFTextColumnsCardSection *)self titleWeight];
  v21 = [(SFTextColumnsCardSection *)self columns];
  v22 = v20 ^ [v21 hash];

  return v19 ^ v22;
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
    if ([(SFTextColumnsCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v80.receiver = self;
      v80.super_class = SFTextColumnsCardSection;
      if ([(SFCardSection *)&v80 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCardSection *)self punchoutOptions];
        v8 = [(SFCardSection *)v6 punchoutOptions];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_58:

          goto LABEL_59;
        }

        v9 = [(SFCardSection *)self punchoutOptions];
        if (v9)
        {
          v10 = [(SFCardSection *)self punchoutOptions];
          v3 = [(SFCardSection *)v6 punchoutOptions];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_56;
          }

          v79 = v10;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((v12 != 0) != (v13 == 0))
        {
          v14 = [(SFCardSection *)self punchoutPickerTitle];
          v76 = v3;
          if (v14)
          {
            v73 = v12;
            v15 = [(SFCardSection *)self punchoutPickerTitle];
            v16 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([v15 isEqual:v16] & 1) == 0)
            {

LABEL_31:
              v11 = 0;
              goto LABEL_32;
            }

            v71 = v16;
            v72 = v15;
            v77 = v6;
            v75 = v8;
            v17 = v7;
            v18 = v9;
            v19 = v13;
            v20 = v73;
            v3 = v76;
            v21 = v14;
          }

          else
          {
            v77 = v6;
            v75 = v8;
            v17 = v7;
            v18 = v9;
            v19 = v13;
            v20 = v12;
            v21 = 0;
          }

          v22 = [(SFCardSection *)self punchoutPickerDismissText];
          v23 = [(SFCardSection *)v77 punchoutPickerDismissText];
          v24 = v21;
          v12 = v20;
          v13 = v19;
          v9 = v18;
          v7 = v17;
          v8 = v75;
          if ((v22 != 0) != (v23 == 0))
          {
            v69 = v23;
            v70 = v22;
            v74 = [(SFCardSection *)self punchoutPickerDismissText];
            if (v74)
            {
              v25 = [(SFCardSection *)self punchoutPickerDismissText];
              v6 = v77;
              v66 = [(SFCardSection *)v77 punchoutPickerDismissText];
              v67 = v25;
              v26 = [v25 isEqual:?];
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
            v28 = [(SFCardSection *)self canBeHidden];
            if (v28 != [(SFCardSection *)v6 canBeHidden]|| (v29 = [(SFCardSection *)self hasTopPadding], v29 != [(SFCardSection *)v6 hasTopPadding]) || (v30 = [(SFCardSection *)self hasBottomPadding], v30 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v24 = v68;
              if (!v74)
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

            v65 = v13;
            v31 = [(SFTextColumnsCardSection *)self type];
            v32 = [(SFTextColumnsCardSection *)v6 type];
            if ((v31 != 0) != (v32 == 0))
            {
              v78 = v31;
              v64 = v32;
              v33 = [(SFTextColumnsCardSection *)self type];
              if (v33)
              {
                v34 = [(SFTextColumnsCardSection *)self type];
                v35 = [(SFTextColumnsCardSection *)v6 type];
                v62 = v34;
                v36 = v34;
                v31 = v35;
                if (![v36 isEqual:v35])
                {
                  v11 = 0;
                  goto LABEL_68;
                }

                v63 = v33;
              }

              else
              {
                v63 = 0;
              }

              v37 = [(SFCardSection *)self separatorStyle];
              if (v37 != [(SFCardSection *)v6 separatorStyle])
              {
                v11 = 0;
                goto LABEL_67;
              }

              v38 = [(SFCardSection *)self backgroundColor];
              v39 = [(SFCardSection *)v6 backgroundColor];
              if ((v38 != 0) != (v39 == 0))
              {
                v60 = v31;
                v61 = v39;
                v59 = v7;
                v40 = v12;
                v41 = [(SFCardSection *)self backgroundColor];
                if (v41)
                {
                  v42 = [(SFCardSection *)self backgroundColor];
                  v57 = [(SFCardSection *)v6 backgroundColor];
                  v58 = v42;
                  if (![v42 isEqual:?])
                  {
                    v11 = 0;
                    goto LABEL_65;
                  }
                }

                v44 = [(SFTextColumnsCardSection *)self title];
                v45 = [(SFTextColumnsCardSection *)v6 title];
                v46 = v45;
                if ((v44 != 0) == (v45 == 0))
                {

                  v11 = 0;
                  if (!v41)
                  {
LABEL_66:

                    v12 = v40;
                    v7 = v59;
                    v31 = v60;
                    v8 = v75;
                    v27 = v70;
LABEL_67:
                    v33 = v63;
                    if (!v63)
                    {
LABEL_69:

                      if (v74)
                      {
                      }

                      if (v68)
                      {
                      }

LABEL_32:
                      v10 = v79;
                      v3 = v76;
                      if (!v9)
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

                v56 = [(SFTextColumnsCardSection *)self title];
                if (v56)
                {
                  v47 = [(SFTextColumnsCardSection *)self title];
                  v54 = [(SFTextColumnsCardSection *)v6 title];
                  v55 = v47;
                  if (![v47 isEqual:?])
                  {
                    v11 = 0;
LABEL_81:

LABEL_82:
                    if (!v41)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_65;
                  }
                }

                v48 = [(SFTextColumnsCardSection *)self titleWeight];
                if (v48 == [(SFTextColumnsCardSection *)v6 titleWeight])
                {
                  v53 = [(SFTextColumnsCardSection *)self columns];
                  v52 = [(SFTextColumnsCardSection *)v6 columns];
                  if ((v53 != 0) != (v52 == 0))
                  {
                    v51 = [(SFTextColumnsCardSection *)self columns];
                    if (v51)
                    {
                      v50 = [(SFTextColumnsCardSection *)self columns];
                      v49 = [(SFTextColumnsCardSection *)v6 columns];
                      v11 = [v50 isEqual:v49];
                    }

                    else
                    {

                      v11 = 1;
                    }

LABEL_80:
                    if (!v56)
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

              v32 = v64;
              v31 = v78;
            }

            v77 = v6;

            v24 = v68;
            if (v74)
            {
            }

            v23 = v69;
            v22 = v70;
            v3 = v76;
            v13 = v65;
          }

          if (v24)
          {
          }

          v6 = v77;
        }

        v11 = 0;
        v10 = v79;
        if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = SFTextColumnsCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:a3];
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
  v11 = [(SFTextColumnsCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFTextColumnsCardSection *)self title];
  v16 = [v15 copy];
  [v4 setTitle:v16];

  [v4 setTitleWeight:{-[SFTextColumnsCardSection titleWeight](self, "titleWeight")}];
  v17 = [(SFTextColumnsCardSection *)self columns];
  v18 = [v17 copy];
  [v4 setColumns:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBTextColumnsCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextColumnsCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBTextColumnsCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFTextColumnsCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFTextColumnsCardSection)initWithCoder:(id)a3
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
    [(SFTextColumnsCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 title];
    [(SFTextColumnsCardSection *)v5 setTitle:v14];

    [(SFTextColumnsCardSection *)v5 setTitleWeight:[(SFCardSection *)v8 titleWeight]];
    v15 = [(SFCardSection *)v8 columns];
    [(SFTextColumnsCardSection *)v5 setColumns:v15];

    v16 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v16];

    v17 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v17];

    v18 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v18];

    v19 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v19];

    v20 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v20];

    v21 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v21];

    v22 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v22];

    v23 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v23];

    v24 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v24];

    v25 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v25];

    v26 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v26];

    v27 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v27];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v28 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v28];

    v29 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v29];

    v30 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v30];

    v31 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v31];

    v32 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v32];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v33 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v33];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v34 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v34];

    v35 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v35];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v36 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v36];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v37 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v37];

    v38 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v38];

    v39 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v39];

    v40 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v40];
  }

  return v5;
}

- (SFTextColumnsCardSection)initWithProtobuf:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SFTextColumnsCardSection;
  v5 = [(SFCardSection *)&v45 init];
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

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
      [(SFTextColumnsCardSection *)v5 setType:v19];
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
      v25 = [v4 title];
      [(SFTextColumnsCardSection *)v5 setTitle:v25];
    }

    if ([v4 titleWeight])
    {
      -[SFTextColumnsCardSection setTitleWeight:](v5, "setTitleWeight:", [v4 titleWeight]);
    }

    v26 = [v4 columns];
    if (v26)
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
    v28 = [v4 columns];
    v29 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
            objc_enumerationMutation(v28);
          }

          v33 = [[SFTextColumn alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
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