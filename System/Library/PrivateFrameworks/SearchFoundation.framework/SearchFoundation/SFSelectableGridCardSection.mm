@interface SFSelectableGridCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSelectableGridCardSection)initWithCoder:(id)a3;
- (SFSelectableGridCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSelectableGridCardSection

- (unint64_t)hash
{
  v23.receiver = self;
  v23.super_class = SFSelectableGridCardSection;
  v3 = [(SFCardSection *)&v23 hash];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFSelectableGridCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFSelectableGridCardSection *)self entries];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(SFSelectableGridCardSection *)self initialSelectedIndex];
  v21 = [v20 hash];

  return v19 ^ v21;
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
    if ([(SFSelectableGridCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v78.receiver = self;
      v78.super_class = SFSelectableGridCardSection;
      if ([(SFCardSection *)&v78 isEqual:v5])
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

          v77 = v10;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((v12 != 0) != (v13 == 0))
        {
          v14 = [(SFCardSection *)self punchoutPickerTitle];
          v74 = v3;
          if (v14)
          {
            v71 = v12;
            v15 = [(SFCardSection *)self punchoutPickerTitle];
            v16 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([v15 isEqual:v16] & 1) == 0)
            {

LABEL_31:
              v11 = 0;
              goto LABEL_32;
            }

            v69 = v16;
            v70 = v15;
            v75 = v6;
            v73 = v8;
            v17 = v7;
            v18 = v9;
            v19 = v13;
            v20 = v71;
            v3 = v74;
            v21 = v14;
          }

          else
          {
            v75 = v6;
            v73 = v8;
            v17 = v7;
            v18 = v9;
            v19 = v13;
            v20 = v12;
            v21 = 0;
          }

          v22 = [(SFCardSection *)self punchoutPickerDismissText];
          v23 = [(SFCardSection *)v75 punchoutPickerDismissText];
          v24 = v21;
          v12 = v20;
          v13 = v19;
          v9 = v18;
          v7 = v17;
          v8 = v73;
          if ((v22 != 0) != (v23 == 0))
          {
            v67 = v23;
            v68 = v22;
            v72 = [(SFCardSection *)self punchoutPickerDismissText];
            if (v72)
            {
              v25 = [(SFCardSection *)self punchoutPickerDismissText];
              v6 = v75;
              v64 = [(SFCardSection *)v75 punchoutPickerDismissText];
              v65 = v25;
              v26 = [v25 isEqual:?];
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
            v28 = [(SFCardSection *)self canBeHidden];
            if (v28 != [(SFCardSection *)v6 canBeHidden]|| (v29 = [(SFCardSection *)self hasTopPadding], v29 != [(SFCardSection *)v6 hasTopPadding]) || (v30 = [(SFCardSection *)self hasBottomPadding], v30 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v24 = v66;
              if (!v72)
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

            v31 = [(SFSelectableGridCardSection *)self type];
            v32 = [(SFSelectableGridCardSection *)v6 type];
            if ((v31 != 0) != (v32 == 0))
            {
              v63 = v32;
              v76 = v31;
              v33 = [(SFSelectableGridCardSection *)self type];
              if (v33)
              {
                v62 = [(SFSelectableGridCardSection *)self type];
                v60 = [(SFSelectableGridCardSection *)v6 type];
                if (![v62 isEqual:?])
                {
                  v11 = 0;
                  goto LABEL_68;
                }

                v61 = v33;
              }

              else
              {
                v61 = 0;
              }

              v34 = [(SFCardSection *)self separatorStyle];
              if (v34 != [(SFCardSection *)v6 separatorStyle])
              {
                v11 = 0;
                goto LABEL_67;
              }

              v35 = [(SFCardSection *)self backgroundColor];
              v36 = [(SFCardSection *)v6 backgroundColor];
              if ((v35 != 0) != (v36 == 0))
              {
                v59 = v36;
                v57 = v9;
                v58 = v7;
                v56 = v13;
                v37 = v12;
                v38 = [(SFCardSection *)self backgroundColor];
                if (v38)
                {
                  v39 = [(SFCardSection *)self backgroundColor];
                  v54 = [(SFCardSection *)v6 backgroundColor];
                  v55 = v39;
                  if (![v39 isEqual:?])
                  {
                    v11 = 0;
                    goto LABEL_65;
                  }
                }

                v41 = [(SFSelectableGridCardSection *)self entries];
                v42 = [(SFSelectableGridCardSection *)v6 entries];
                v43 = v42;
                if ((v41 != 0) == (v42 == 0))
                {

                  v11 = 0;
                  if (!v38)
                  {
LABEL_66:

                    v12 = v37;
                    v13 = v56;
                    v9 = v57;
                    v7 = v58;
                    v8 = v73;
                    v27 = v68;
LABEL_67:
                    v33 = v61;
                    if (!v61)
                    {
LABEL_69:

                      if (v72)
                      {
                      }

                      if (v66)
                      {
                      }

LABEL_32:
                      v10 = v77;
                      v3 = v74;
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

                v53 = [(SFSelectableGridCardSection *)self entries];
                if (!v53 || (-[SFSelectableGridCardSection entries](self, "entries"), v44 = objc_claimAutoreleasedReturnValue(), -[SFSelectableGridCardSection entries](v6, "entries"), v50 = objc_claimAutoreleasedReturnValue(), v51 = v44, [v44 isEqual:?]))
                {
                  v52 = [(SFSelectableGridCardSection *)self initialSelectedIndex];
                  v45 = [(SFSelectableGridCardSection *)v6 initialSelectedIndex];
                  v46 = v45;
                  if ((v52 != 0) == (v45 == 0))
                  {

                    v11 = 0;
                  }

                  else
                  {
                    v49 = [(SFSelectableGridCardSection *)self initialSelectedIndex];
                    if (v49)
                    {
                      v48 = [(SFSelectableGridCardSection *)self initialSelectedIndex];
                      v47 = [(SFSelectableGridCardSection *)v6 initialSelectedIndex];
                      v11 = [v48 isEqual:v47];
                    }

                    else
                    {

                      v11 = 1;
                    }
                  }

                  if (!v53)
                  {
LABEL_81:

                    if (!v38)
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

              v31 = v76;
              v32 = v63;
            }

            v75 = v6;

            v24 = v66;
            if (v72)
            {
            }

            v23 = v67;
            v22 = v68;
            v3 = v74;
          }

          if (v24)
          {
          }

          v6 = v75;
        }

        v11 = 0;
        v10 = v77;
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
  v20.super_class = SFSelectableGridCardSection;
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
  v11 = [(SFSelectableGridCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFSelectableGridCardSection *)self entries];
  v16 = [v15 copy];
  [v4 setEntries:v16];

  v17 = [(SFSelectableGridCardSection *)self initialSelectedIndex];
  v18 = [v17 copy];
  [v4 setInitialSelectedIndex:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSelectableGridCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSelectableGridCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSelectableGridCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSelectableGridCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSelectableGridCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFSelectableGridCardSection)initWithCoder:(id)a3
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
    [(SFSelectableGridCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 entries];
    [(SFSelectableGridCardSection *)v5 setEntries:v14];

    v15 = [(SFCardSection *)v8 initialSelectedIndex];
    [(SFSelectableGridCardSection *)v5 setInitialSelectedIndex:v15];

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

- (SFSelectableGridCardSection)initWithProtobuf:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = SFSelectableGridCardSection;
  v5 = [(SFCardSection *)&v44 init];
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

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v40 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
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
      [(SFSelectableGridCardSection *)v5 setType:v19];
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

    v24 = [v4 entries];
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = [v4 entries];
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[SFTitleSubtitleTuple alloc] initWithProtobuf:*(*(&v36 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v28);
    }

    [(SFSelectableGridCardSection *)v5 setEntries:v25];
    if ([v4 initialSelectedIndex])
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "initialSelectedIndex")}];
      [(SFSelectableGridCardSection *)v5 setInitialSelectedIndex:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

@end