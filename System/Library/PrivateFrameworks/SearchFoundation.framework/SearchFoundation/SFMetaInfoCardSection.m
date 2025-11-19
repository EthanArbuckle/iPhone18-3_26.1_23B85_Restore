@interface SFMetaInfoCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMetaInfoCardSection)initWithCoder:(id)a3;
- (SFMetaInfoCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMetaInfoCardSection

- (SFMetaInfoCardSection)initWithProtobuf:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SFMetaInfoCardSection;
  v5 = [(SFCardSection *)&v41 init];
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

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
      [(SFMetaInfoCardSection *)v5 setType:v19];
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

    if ([v4 trending])
    {
      -[SFMetaInfoCardSection setTrending:](v5, "setTrending:", [v4 trending]);
    }

    v24 = [v4 contentURL];

    if (v24)
    {
      v25 = [v4 contentURL];
      v26 = _SFPBURLHandwrittenTranslator(v25);
      [(SFMetaInfoCardSection *)v5 setContentURL:v26];
    }

    v27 = [v4 hostPageURL];

    if (v27)
    {
      v28 = [v4 hostPageURL];
      v29 = _SFPBURLHandwrittenTranslator(v28);
      [(SFMetaInfoCardSection *)v5 setHostPageURL:v29];
    }

    v30 = [v4 badge];

    if (v30)
    {
      v31 = [SFImage alloc];
      v32 = [v4 badge];
      v33 = [(SFImage *)v31 initWithProtobuf:v32];
      [(SFMetaInfoCardSection *)v5 setBadge:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v26.receiver = self;
  v26.super_class = SFMetaInfoCardSection;
  v3 = [(SFCardSection *)&v26 hash];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFMetaInfoCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = v11 ^ v17 ^ [(SFMetaInfoCardSection *)self trending];
  v19 = [(SFMetaInfoCardSection *)self contentURL];
  v20 = [v19 hash];
  v21 = [(SFMetaInfoCardSection *)self hostPageURL];
  v22 = v20 ^ [v21 hash];
  v23 = [(SFMetaInfoCardSection *)self badge];
  v24 = v22 ^ [v23 hash];

  return v18 ^ v24;
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
    if ([(SFMetaInfoCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v68.receiver = self;
      v68.super_class = SFMetaInfoCardSection;
      if ([(SFCardSection *)&v68 isEqual:v4])
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

          v66 = v10;
          v67 = v9;
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
          v63 = [(SFCardSection *)v5 punchoutPickerTitle];
          v64 = v15;
          if (![v15 isEqual:v63])
          {
            goto LABEL_21;
          }
        }

        v65 = v14;
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

        v60 = v16;
        v61 = v17;
        v62 = [(SFCardSection *)self punchoutPickerDismissText];
        if (v62)
        {
          v18 = [(SFCardSection *)self punchoutPickerDismissText];
          v19 = [(SFCardSection *)v5 punchoutPickerDismissText];
          v59 = v18;
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
              v25 = [(SFMetaInfoCardSection *)self type];
              v26 = [(SFMetaInfoCardSection *)v5 type];
              if ((v25 != 0) != (v26 == 0))
              {
                v56 = v26;
                v57 = v25;
                [(SFMetaInfoCardSection *)self type];
                v58 = v14 = v65;
                if (v58)
                {
                  v55 = [(SFMetaInfoCardSection *)self type];
                  v54 = [(SFMetaInfoCardSection *)v5 type];
                  if (![v55 isEqual:?])
                  {
                    goto LABEL_59;
                  }
                }

                v27 = [(SFCardSection *)self separatorStyle];
                if (v27 == [(SFCardSection *)v5 separatorStyle])
                {
                  v53 = [(SFCardSection *)self backgroundColor];
                  v28 = [(SFCardSection *)v5 backgroundColor];
                  if ((v53 != 0) != (v28 == 0))
                  {
                    v51 = v16;
                    v52 = v28;
                    v29 = [(SFCardSection *)self backgroundColor];
                    if (v29)
                    {
                      v30 = [(SFCardSection *)self backgroundColor];
                      v49 = [(SFCardSection *)v5 backgroundColor];
                      v50 = v30;
                      if (![v30 isEqual:?])
                      {
                        goto LABEL_56;
                      }
                    }

                    v31 = [(SFMetaInfoCardSection *)self trending];
                    if (v31 == [(SFMetaInfoCardSection *)v5 trending])
                    {
                      v48 = [(SFMetaInfoCardSection *)self contentURL];
                      v47 = [(SFMetaInfoCardSection *)v5 contentURL];
                      if ((v48 != 0) != (v47 == 0))
                      {
                        v46 = [(SFMetaInfoCardSection *)self contentURL];
                        if (v46)
                        {
                          v32 = [(SFMetaInfoCardSection *)self contentURL];
                          v42 = [(SFMetaInfoCardSection *)v5 contentURL];
                          v43 = v32;
                          if (![v32 isEqual:?])
                          {
                            v11 = 0;
LABEL_75:

LABEL_76:
                            if (v29)
                            {
                            }

                            if (v58)
                            {
                            }

                            if (v62)
                            {
                            }

                            if (v65)
                            {
                            }

                            if (!v8)
                            {
                              goto LABEL_26;
                            }

LABEL_24:
                            v10 = v66;
                            v9 = v67;
                            goto LABEL_25;
                          }
                        }

                        v45 = [(SFMetaInfoCardSection *)self hostPageURL];
                        v44 = [(SFMetaInfoCardSection *)v5 hostPageURL];
                        if ((v45 != 0) == (v44 == 0))
                        {

                          v11 = 0;
                          goto LABEL_74;
                        }

                        v41 = [(SFMetaInfoCardSection *)self hostPageURL];
                        if (!v41 || (-[SFMetaInfoCardSection hostPageURL](self, "hostPageURL"), v33 = objc_claimAutoreleasedReturnValue(), -[SFMetaInfoCardSection hostPageURL](v5, "hostPageURL"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v33, [v33 isEqual:?]))
                        {
                          v40 = [(SFMetaInfoCardSection *)self badge];
                          v39 = [(SFMetaInfoCardSection *)v5 badge];
                          if ((v40 != 0) == (v39 == 0))
                          {

                            v11 = 0;
                          }

                          else
                          {
                            v36 = [(SFMetaInfoCardSection *)self badge];
                            if (v36)
                            {
                              v35 = [(SFMetaInfoCardSection *)self badge];
                              v34 = [(SFMetaInfoCardSection *)v5 badge];
                              v11 = [v35 isEqual:v34];
                            }

                            else
                            {

                              v11 = 1;
                            }
                          }

                          if (!v41)
                          {
                            goto LABEL_73;
                          }
                        }

                        else
                        {
                          v11 = 0;
                        }

LABEL_73:
LABEL_74:
                        if (!v46)
                        {
                          goto LABEL_76;
                        }

                        goto LABEL_75;
                      }
                    }

                    if (!v29)
                    {
LABEL_57:

                      v14 = v65;
                      v16 = v51;
LABEL_58:
                      if (!v58)
                      {
LABEL_60:

LABEL_38:
                        if (!v62)
                        {
                          goto LABEL_40;
                        }

                        goto LABEL_39;
                      }

LABEL_59:

                      goto LABEL_60;
                    }

LABEL_56:

                    goto LABEL_57;
                  }
                }

                v14 = v65;
                goto LABEL_58;
              }
            }
          }
        }

        v14 = v65;
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
  v22.super_class = SFMetaInfoCardSection;
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
  v11 = [(SFMetaInfoCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  [v4 setTrending:{-[SFMetaInfoCardSection trending](self, "trending")}];
  v15 = [(SFMetaInfoCardSection *)self contentURL];
  v16 = [v15 copy];
  [v4 setContentURL:v16];

  v17 = [(SFMetaInfoCardSection *)self hostPageURL];
  v18 = [v17 copy];
  [v4 setHostPageURL:v18];

  v19 = [(SFMetaInfoCardSection *)self badge];
  v20 = [v19 copy];
  [v4 setBadge:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMetaInfoCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMetaInfoCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMetaInfoCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMetaInfoCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFMetaInfoCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFMetaInfoCardSection)initWithCoder:(id)a3
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
    [(SFMetaInfoCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    [(SFMetaInfoCardSection *)v5 setTrending:[(SFCardSection *)v8 trending]];
    v14 = [(SFCardSection *)v8 contentURL];
    [(SFMetaInfoCardSection *)v5 setContentURL:v14];

    v15 = [(SFCardSection *)v8 hostPageURL];
    [(SFMetaInfoCardSection *)v5 setHostPageURL:v15];

    v16 = [(SFCardSection *)v8 badge];
    [(SFMetaInfoCardSection *)v5 setBadge:v16];

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

@end