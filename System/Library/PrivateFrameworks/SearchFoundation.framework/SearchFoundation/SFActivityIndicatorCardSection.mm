@interface SFActivityIndicatorCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFActivityIndicatorCardSection)initWithCoder:(id)a3;
- (SFActivityIndicatorCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFActivityIndicatorCardSection

- (unint64_t)hash
{
  v21.receiver = self;
  v21.super_class = SFActivityIndicatorCardSection;
  v3 = [(SFCardSection *)&v21 hash];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFActivityIndicatorCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFActivityIndicatorCardSection *)self text];
  v19 = v17 ^ [v18 hash];

  return v11 ^ v19;
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
    if ([(SFActivityIndicatorCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v70.receiver = self;
      v70.super_class = SFActivityIndicatorCardSection;
      if ([(SFCardSection *)&v70 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFCardSection *)self punchoutOptions];
        v8 = [(SFCardSection *)v6 punchoutOptions];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v9 = [(SFCardSection *)self punchoutOptions];
        if (v9)
        {
          v10 = [(SFCardSection *)self punchoutOptions];
          v3 = [(SFCardSection *)v6 punchoutOptions];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_47;
          }

          v69 = v10;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((v12 != 0) != (v13 == 0))
        {
          v14 = [(SFCardSection *)self punchoutPickerTitle];
          if (v14)
          {
            v62 = v9;
            v64 = v3;
            v15 = v13;
            v16 = [(SFCardSection *)self punchoutPickerTitle];
            v17 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([v16 isEqual:v17] & 1) == 0)
            {

              v11 = 0;
              v10 = v69;
              v9 = v62;
              v3 = v64;
              if (!v62)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

            v60 = v17;
            v61 = v16;
            v67 = v7;
            v68 = v8;
            v18 = v62;
            v3 = v64;
            v19 = v14;
          }

          else
          {
            v67 = v7;
            v68 = v8;
            v18 = v9;
            v15 = v13;
            v19 = 0;
          }

          v66 = v12;
          v20 = [(SFCardSection *)self punchoutPickerDismissText];
          v21 = [(SFCardSection *)v6 punchoutPickerDismissText];
          v22 = v19;
          v13 = v15;
          v9 = v18;
          v7 = v67;
          v8 = v68;
          if ((v20 != 0) != (v21 == 0))
          {
            v58 = v20;
            v59 = v21;
            v57 = [(SFCardSection *)self punchoutPickerDismissText];
            if (v57)
            {
              v23 = [(SFCardSection *)self punchoutPickerDismissText];
              v54 = [(SFCardSection *)v6 punchoutPickerDismissText];
              v55 = v23;
              if (![v23 isEqual:?])
              {
                v11 = 0;
                v27 = v57;
LABEL_31:

LABEL_32:
                if (v22)
                {
                }

LABEL_46:
                v10 = v69;
                if (!v9)
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

            v24 = [(SFCardSection *)self canBeHidden];
            if (v24 != [(SFCardSection *)v6 canBeHidden]|| (v25 = [(SFCardSection *)self hasTopPadding], v25 != [(SFCardSection *)v6 hasTopPadding]) || (v26 = [(SFCardSection *)self hasBottomPadding], v26 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v11 = 0;
              v22 = v56;
              goto LABEL_28;
            }

            v28 = [(SFActivityIndicatorCardSection *)self type];
            v29 = [(SFActivityIndicatorCardSection *)v6 type];
            if ((v28 != 0) != (v29 == 0))
            {
              v53 = v29;
              [(SFActivityIndicatorCardSection *)self type];
              v52 = v51 = v28;
              if (v52)
              {
                v30 = [(SFActivityIndicatorCardSection *)self type];
                v49 = [(SFActivityIndicatorCardSection *)v6 type];
                v50 = v30;
                if (![v30 isEqual:?])
                {
                  v11 = 0;
                  v31 = v52;
                  v22 = v56;
                  goto LABEL_66;
                }
              }

              v33 = [(SFCardSection *)self separatorStyle];
              if (v33 == [(SFCardSection *)v6 separatorStyle])
              {
                v34 = [(SFCardSection *)self backgroundColor];
                v35 = [(SFCardSection *)v6 backgroundColor];
                if ((v34 != 0) != (v35 == 0))
                {
                  v48 = v35;
                  v63 = v9;
                  v65 = v3;
                  v47 = v13;
                  v36 = [(SFCardSection *)self backgroundColor];
                  if (!v36 || (-[SFCardSection backgroundColor](self, "backgroundColor"), v37 = objc_claimAutoreleasedReturnValue(), -[SFCardSection backgroundColor](v6, "backgroundColor"), v45 = objc_claimAutoreleasedReturnValue(), v46 = v37, [v37 isEqual:?]))
                  {
                    v38 = [(SFActivityIndicatorCardSection *)self text];
                    v39 = [(SFActivityIndicatorCardSection *)v6 text];
                    v40 = v39;
                    if ((v38 != 0) == (v39 == 0))
                    {

                      v11 = 0;
                      if (!v36)
                      {
LABEL_64:

                        v22 = v56;
                        v9 = v63;
                        v3 = v65;
                        v13 = v47;
                        v7 = v67;
                        v8 = v68;
LABEL_65:
                        v31 = v52;
                        if (!v52)
                        {
LABEL_67:

LABEL_28:
                          v27 = v57;
                          if (!v57)
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
                      v41 = [(SFActivityIndicatorCardSection *)self text];
                      if (v41)
                      {
                        v42 = v41;
                        v43 = [(SFActivityIndicatorCardSection *)self text];
                        v44 = [(SFActivityIndicatorCardSection *)v6 text];
                        v11 = [v43 isEqual:v44];

                        if (!v36)
                        {
                          goto LABEL_64;
                        }
                      }

                      else
                      {

                        v11 = 1;
                        if (!v36)
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
            if (v57)
            {
            }

            v20 = v58;
            v21 = v59;
          }

          if (v22)
          {
          }

          v12 = v66;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = SFActivityIndicatorCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:a3];
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
  v11 = [(SFActivityIndicatorCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFActivityIndicatorCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBActivityIndicatorCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBActivityIndicatorCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBActivityIndicatorCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBActivityIndicatorCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFActivityIndicatorCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFActivityIndicatorCardSection)initWithCoder:(id)a3
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
    [(SFActivityIndicatorCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 text];
    [(SFActivityIndicatorCardSection *)v5 setText:v14];

    v15 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v15];

    v16 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v16];

    v17 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v17];

    v18 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v18];

    v19 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v19];

    v20 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v20];

    v21 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v21];

    v22 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v22];

    v23 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v23];

    v24 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v24];

    v25 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v25];

    v26 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v26];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v27 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v27];

    v28 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v28];

    v29 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v29];

    v30 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v30];

    v31 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v31];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v32 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v32];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v33 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v33];

    v34 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v34];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v35 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v35];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v36 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v36];

    v37 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v37];

    v38 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v38];

    v39 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v39];
  }

  return v5;
}

- (SFActivityIndicatorCardSection)initWithProtobuf:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SFActivityIndicatorCardSection;
  v5 = [(SFCardSection *)&v33 init];
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

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v29 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
      [(SFActivityIndicatorCardSection *)v5 setType:v19];
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

    v24 = [v4 text];

    if (v24)
    {
      v25 = [v4 text];
      [(SFActivityIndicatorCardSection *)v5 setText:v25];
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

@end