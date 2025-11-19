@interface SFLeadingTrailingCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLeadingTrailingCardSection)initWithCoder:(id)a3;
- (SFLeadingTrailingCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLeadingTrailingCardSection

- (SFLeadingTrailingCardSection)initWithProtobuf:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v58.receiver = self;
  v58.super_class = SFLeadingTrailingCardSection;
  v5 = [(SFCardSection *)&v58 init];
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

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v54 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v54 objects:v61 count:16];
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
      [(SFLeadingTrailingCardSection *)v5 setType:v19];
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

    v24 = [v4 leadingCardSections];
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v26 = [v4 leadingCardSections];
    v27 = [v26 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v51;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[SFCardSection alloc] initWithProtobuf:*(*(&v50 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v28);
    }

    [(SFLeadingTrailingCardSection *)v5 setLeadingCardSections:v25];
    v32 = [v4 trailingCardSections];
    v45 = v5;
    if (v32)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v34 = [v4 trailingCardSections];
    v35 = [v34 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [[SFCardSection alloc] initWithProtobuf:*(*(&v46 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v36);
    }

    v5 = v45;
    [(SFLeadingTrailingCardSection *)v45 setTrailingCardSections:v33];
    v40 = [v4 leadingToTrailingRatio];

    if (v40)
    {
      v41 = [v4 leadingToTrailingRatio];
      [v41 doubleValue];
      [(SFLeadingTrailingCardSection *)v45 setLeadingToTrailingRatio:?];
    }

    v42 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v28.receiver = self;
  v28.super_class = SFLeadingTrailingCardSection;
  v3 = [(SFCardSection *)&v28 hash];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFLeadingTrailingCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(SFLeadingTrailingCardSection *)self trailingCardSections];
  v21 = v19 ^ [v20 hash];
  [(SFLeadingTrailingCardSection *)self leadingToTrailingRatio];
  if (v22 < 0.0)
  {
    v22 = -v22;
  }

  *v23.i64 = round(v22);
  *v24.i64 = *v23.i64 - trunc(*v23.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v26 = (*vbslq_s8(vnegq_f64(v25), v24, v23).i64 * 2654435760.0) + vcvtd_n_u64_f64(v22 - *v23.i64, 0x40uLL);

  return v21 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFLeadingTrailingCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v67.receiver = self;
      v67.super_class = SFLeadingTrailingCardSection;
      if ([(SFCardSection *)&v67 isEqual:v4])
      {
        v5 = v4;
        v6 = [(SFCardSection *)self punchoutOptions];
        v7 = [(SFCardSection *)v5 punchoutOptions];
        if ((v6 != 0) == (v7 == 0))
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v8 = [(SFCardSection *)self punchoutOptions];
        if (v8)
        {
          v9 = [(SFCardSection *)self punchoutOptions];
          v10 = [(SFCardSection *)v5 punchoutOptions];
          if (![v9 isEqual:v10])
          {
            v11 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v65 = v10;
          v66 = v9;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v5 punchoutPickerTitle];
        if ((v12 != 0) == (v13 == 0))
        {
          goto LABEL_23;
        }

        v14 = [(SFCardSection *)self punchoutPickerTitle];
        if (v14)
        {
          v15 = [(SFCardSection *)self punchoutPickerTitle];
          v62 = [(SFCardSection *)v5 punchoutPickerTitle];
          v63 = v15;
          if (![v15 isEqual:v62])
          {
            goto LABEL_21;
          }
        }

        v64 = v14;
        v16 = [(SFCardSection *)self punchoutPickerDismissText];
        v17 = [(SFCardSection *)v5 punchoutPickerDismissText];
        if ((v16 != 0) == (v17 == 0))
        {

          if (!v14)
          {
LABEL_22:

LABEL_23:
            v11 = 0;
            if (!v8)
            {
LABEL_26:

              goto LABEL_27;
            }

            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        v59 = v16;
        v60 = v17;
        v61 = [(SFCardSection *)self punchoutPickerDismissText];
        if (v61)
        {
          v18 = [(SFCardSection *)self punchoutPickerDismissText];
          v19 = [(SFCardSection *)v5 punchoutPickerDismissText];
          v58 = v18;
          v20 = v18;
          v16 = v19;
          if (![v20 isEqual:v19])
          {
LABEL_39:

LABEL_40:
            if (!v14)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        v22 = [(SFCardSection *)self canBeHidden];
        if (v22 == [(SFCardSection *)v5 canBeHidden])
        {
          v23 = [(SFCardSection *)self hasTopPadding];
          if (v23 == [(SFCardSection *)v5 hasTopPadding])
          {
            v24 = [(SFCardSection *)self hasBottomPadding];
            if (v24 == [(SFCardSection *)v5 hasBottomPadding])
            {
              v25 = [(SFLeadingTrailingCardSection *)self type];
              v26 = [(SFLeadingTrailingCardSection *)v5 type];
              if ((v25 != 0) != (v26 == 0))
              {
                v55 = v26;
                v56 = v25;
                [(SFLeadingTrailingCardSection *)self type];
                v57 = v14 = v64;
                if (v57)
                {
                  v54 = [(SFLeadingTrailingCardSection *)self type];
                  v53 = [(SFLeadingTrailingCardSection *)v5 type];
                  if (![v54 isEqual:?])
                  {
                    goto LABEL_50;
                  }
                }

                v27 = [(SFCardSection *)self separatorStyle];
                if (v27 == [(SFCardSection *)v5 separatorStyle])
                {
                  v52 = [(SFCardSection *)self backgroundColor];
                  v28 = [(SFCardSection *)v5 backgroundColor];
                  if ((v52 != 0) != (v28 == 0))
                  {
                    v50 = v16;
                    v51 = v28;
                    v29 = [(SFCardSection *)self backgroundColor];
                    if (v29)
                    {
                      v30 = [(SFCardSection *)self backgroundColor];
                      v46 = [(SFCardSection *)v5 backgroundColor];
                      v47 = v30;
                      if (![v30 isEqual:?])
                      {
                        goto LABEL_57;
                      }
                    }

                    v49 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
                    v48 = [(SFLeadingTrailingCardSection *)v5 leadingCardSections];
                    if ((v49 != 0) == (v48 == 0))
                    {

                      if (!v29)
                      {
LABEL_58:

                        v14 = v64;
                        v16 = v50;
LABEL_49:
                        if (!v57)
                        {
LABEL_51:

LABEL_38:
                          if (!v61)
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

                    v45 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
                    if (v45)
                    {
                      v31 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
                      v41 = [(SFLeadingTrailingCardSection *)v5 leadingCardSections];
                      v42 = v31;
                      if (![v31 isEqual:?])
                      {
                        v11 = 0;
LABEL_68:

LABEL_69:
                        if (v29)
                        {
                        }

                        if (v57)
                        {
                        }

                        if (v61)
                        {
                        }

                        if (v64)
                        {
                        }

                        if (!v8)
                        {
                          goto LABEL_26;
                        }

LABEL_24:
                        v10 = v65;
                        v9 = v66;
                        goto LABEL_25;
                      }
                    }

                    v44 = [(SFLeadingTrailingCardSection *)self trailingCardSections];
                    v32 = v44 != 0;
                    v43 = [(SFLeadingTrailingCardSection *)v5 trailingCardSections];
                    if (v32 == (v43 == 0))
                    {

                      v11 = 0;
                      goto LABEL_67;
                    }

                    v40 = [(SFLeadingTrailingCardSection *)self trailingCardSections];
                    if (!v40 || (-[SFLeadingTrailingCardSection trailingCardSections](self, "trailingCardSections"), v33 = objc_claimAutoreleasedReturnValue(), -[SFLeadingTrailingCardSection trailingCardSections](v5, "trailingCardSections"), v34 = objc_claimAutoreleasedReturnValue(), v39 = v33, v35 = v33, v32 = v34, [v35 isEqual:?]))
                    {
                      [(SFLeadingTrailingCardSection *)self leadingToTrailingRatio];
                      v37 = v36;
                      [(SFLeadingTrailingCardSection *)v5 leadingToTrailingRatio];
                      v11 = vabdd_f64(v37, v38) < 2.22044605e-16;
                      if (!v40)
                      {
LABEL_66:

LABEL_67:
                        if (!v45)
                        {
                          goto LABEL_69;
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                      v11 = 0;
                    }

                    goto LABEL_66;
                  }
                }

                v14 = v64;
                goto LABEL_49;
              }
            }
          }
        }

        v14 = v64;
        goto LABEL_38;
      }
    }

    v11 = 0;
  }

LABEL_28:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = SFLeadingTrailingCardSection;
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
  v11 = [(SFLeadingTrailingCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
  v16 = [v15 copy];
  [v4 setLeadingCardSections:v16];

  v17 = [(SFLeadingTrailingCardSection *)self trailingCardSections];
  v18 = [v17 copy];
  [v4 setTrailingCardSections:v18];

  [(SFLeadingTrailingCardSection *)self leadingToTrailingRatio];
  [v4 setLeadingToTrailingRatio:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBLeadingTrailingCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBLeadingTrailingCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFLeadingTrailingCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFLeadingTrailingCardSection)initWithCoder:(id)a3
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
    [(SFLeadingTrailingCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 leadingCardSections];
    [(SFLeadingTrailingCardSection *)v5 setLeadingCardSections:v14];

    v15 = [(SFCardSection *)v8 trailingCardSections];
    [(SFLeadingTrailingCardSection *)v5 setTrailingCardSections:v15];

    [(SFCardSection *)v8 leadingToTrailingRatio];
    [(SFLeadingTrailingCardSection *)v5 setLeadingToTrailingRatio:?];
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

@end