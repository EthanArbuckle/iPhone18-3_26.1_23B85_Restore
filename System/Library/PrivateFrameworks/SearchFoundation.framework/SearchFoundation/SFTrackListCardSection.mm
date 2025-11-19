@interface SFTrackListCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTrackListCardSection)initWithCoder:(id)a3;
- (SFTrackListCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTrackListCardSection

- (unint64_t)hash
{
  v25.receiver = self;
  v25.super_class = SFTrackListCardSection;
  v3 = [(SFTitleCardSection *)&v25 hash];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFTitleCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFTitleCardSection *)self title];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(SFTitleCardSection *)self subtitle];
  v21 = [v20 hash];
  v22 = [(SFTrackListCardSection *)self tracks];
  v23 = v21 ^ [v22 hash];

  return v19 ^ v23;
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
    if ([(SFTrackListCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v67.receiver = self;
      v67.super_class = SFTrackListCardSection;
      if ([(SFTitleCardSection *)&v67 isEqual:v4])
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
              v25 = [(SFTitleCardSection *)self type];
              v26 = [(SFTitleCardSection *)v5 type];
              if ((v25 != 0) != (v26 == 0))
              {
                v55 = v26;
                v56 = v25;
                [(SFTitleCardSection *)self type];
                v57 = v14 = v64;
                if (v57)
                {
                  v54 = [(SFTitleCardSection *)self type];
                  v53 = [(SFTitleCardSection *)v5 type];
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

                    v49 = [(SFTitleCardSection *)self title];
                    v48 = [(SFTitleCardSection *)v5 title];
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

                    v45 = [(SFTitleCardSection *)self title];
                    if (v45)
                    {
                      v31 = [(SFTitleCardSection *)self title];
                      v41 = [(SFTitleCardSection *)v5 title];
                      v42 = v31;
                      if (![v31 isEqual:?])
                      {
                        v11 = 0;
LABEL_73:

LABEL_74:
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

                    v44 = [(SFTitleCardSection *)self subtitle];
                    v43 = [(SFTitleCardSection *)v5 subtitle];
                    if ((v44 != 0) == (v43 == 0))
                    {

                      v11 = 0;
                      goto LABEL_72;
                    }

                    v40 = [(SFTitleCardSection *)self subtitle];
                    if (!v40 || (-[SFTitleCardSection subtitle](self, "subtitle"), v32 = objc_claimAutoreleasedReturnValue(), -[SFTitleCardSection subtitle](v5, "subtitle"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v32, [v32 isEqual:?]))
                    {
                      v39 = [(SFTrackListCardSection *)self tracks];
                      v38 = [(SFTrackListCardSection *)v5 tracks];
                      if ((v39 != 0) == (v38 == 0))
                      {

                        v11 = 0;
                      }

                      else
                      {
                        v35 = [(SFTrackListCardSection *)self tracks];
                        if (v35)
                        {
                          v34 = [(SFTrackListCardSection *)self tracks];
                          v33 = [(SFTrackListCardSection *)v5 tracks];
                          v11 = [v34 isEqual:v33];
                        }

                        else
                        {

                          v11 = 1;
                        }
                      }

                      if (!v40)
                      {
                        goto LABEL_71;
                      }
                    }

                    else
                    {
                      v11 = 0;
                    }

LABEL_71:
LABEL_72:
                    if (!v45)
                    {
                      goto LABEL_74;
                    }

                    goto LABEL_73;
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
  v22.receiver = self;
  v22.super_class = SFTrackListCardSection;
  v4 = [(SFTitleCardSection *)&v22 copyWithZone:a3];
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
  v11 = [(SFTitleCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFTitleCardSection *)self title];
  v16 = [v15 copy];
  [v4 setTitle:v16];

  v17 = [(SFTitleCardSection *)self subtitle];
  v18 = [v17 copy];
  [v4 setSubtitle:v18];

  v19 = [(SFTrackListCardSection *)self tracks];
  v20 = [v19 copy];
  [v4 setTracks:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTrackListCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBTrackListCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTrackListCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBTrackListCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFTrackListCardSection;
  [(SFTitleCardSection *)&v3 encodeWithCoder:a3];
}

- (SFTrackListCardSection)initWithCoder:(id)a3
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
    [(SFTitleCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v14];

    v15 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v15];

    v16 = [(SFCardSection *)v8 tracks];
    [(SFTrackListCardSection *)v5 setTracks:v16];

    v17 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v17];

    v18 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v18];

    v19 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v19];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v20 = [(SFCardSection *)v8 type];
    [(SFTitleCardSection *)v5 setType:v20];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v21 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v21];

    v22 = [(SFCardSection *)v8 title];
    [(SFTitleCardSection *)v5 setTitle:v22];

    v23 = [(SFCardSection *)v8 subtitle];
    [(SFTitleCardSection *)v5 setSubtitle:v23];

    [(SFTitleCardSection *)v5 setIsCentered:[(SFCardSection *)v8 isCentered]];
    v24 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v24];

    v25 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v25];

    v26 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v26];

    v27 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v27];

    v28 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v28];

    v29 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v29];

    v30 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v30];

    v31 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v31];

    v32 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v32];

    v33 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v33];

    v34 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v34];

    v35 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v35];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v36 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v36];

    v37 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v37];

    v38 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v38];

    v39 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v39];

    v40 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v40];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v41 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v41];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v42 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v42];

    v43 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v43];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v44 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v44];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v45 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v45];

    v46 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v46];

    v47 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v47];

    v48 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v48];
  }

  return v5;
}

- (SFTrackListCardSection)initWithProtobuf:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = SFTrackListCardSection;
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
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
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

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
      [(SFTitleCardSection *)v5 setType:v19];
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
      [(SFTitleCardSection *)v5 setTitle:v25];
    }

    v26 = [v4 subtitle];

    if (v26)
    {
      v27 = [v4 subtitle];
      [(SFTitleCardSection *)v5 setSubtitle:v27];
    }

    v28 = [v4 tracks];
    if (v28)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v29 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = [v4 tracks];
    v31 = [v30 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v40;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [[SFTrack alloc] initWithProtobuf:*(*(&v39 + 1) + 8 * j)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v32);
    }

    [(SFTrackListCardSection *)v5 setTracks:v29];
    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

@end