@interface SFSplitCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSplitCardSection)initWithCoder:(id)a3;
- (SFSplitCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSplitCardSection

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = SFSplitCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  v4 = [(SFSplitCardSection *)self topTitle];
  v5 = [v4 hash];
  v6 = [(SFSplitCardSection *)self secondaryTopTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFSplitCardSection *)self listPrefix];
  v9 = v7 ^ [v8 hash];
  v10 = [(SFSplitCardSection *)self listItems];
  v11 = v9 ^ [v10 hash];
  v12 = [(SFSplitCardSection *)self listMoreString];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(SFSplitCardSection *)self bottomTitle];
  v15 = [v14 hash];
  v16 = [(SFSplitCardSection *)self body];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFSplitCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = SFSplitCardSection;
      if ([(SFCardSection *)&v73 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFSplitCardSection *)self topTitle];
        v8 = [(SFSplitCardSection *)v6 topTitle];
        if ((v7 != 0) == (v8 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v9 = [(SFSplitCardSection *)self topTitle];
        if (v9)
        {
          v10 = [(SFSplitCardSection *)self topTitle];
          v11 = [(SFSplitCardSection *)v6 topTitle];
          if (![v10 isEqual:v11])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = v11;
          v72 = v10;
        }

        v13 = [(SFSplitCardSection *)self secondaryTopTitle];
        v14 = [(SFSplitCardSection *)v6 secondaryTopTitle];
        if ((v13 != 0) != (v14 == 0))
        {
          v70 = v14;
          v15 = [(SFSplitCardSection *)self secondaryTopTitle];
          if (v15)
          {
            v16 = [(SFSplitCardSection *)self secondaryTopTitle];
            v17 = [(SFSplitCardSection *)v6 secondaryTopTitle];
            if (([v16 isEqual:v17] & 1) == 0)
            {

LABEL_45:
LABEL_46:
              v12 = 0;
              goto LABEL_47;
            }

            v68 = v17;
            v69 = v13;
            v3 = v16;
            v18 = v15;
          }

          else
          {
            v69 = v13;
            v18 = 0;
          }

          v19 = [(SFSplitCardSection *)self listPrefix];
          v20 = [(SFSplitCardSection *)v6 listPrefix];
          v21 = v18;
          v22 = v3;
          if ((v19 != 0) != (v20 == 0))
          {
            v66 = v19;
            v67 = v20;
            v65 = [(SFSplitCardSection *)self listPrefix];
            if (v65)
            {
              v23 = [(SFSplitCardSection *)self listPrefix];
              v24 = [(SFSplitCardSection *)v6 listPrefix];
              if (([v23 isEqual:v24] & 1) == 0)
              {

                if (v21)
                {
                }

                goto LABEL_46;
              }

              v63 = v24;
              v64 = v23;
              v25 = v21;
            }

            else
            {
              v25 = v21;
            }

            v26 = [(SFSplitCardSection *)self listItems];
            v27 = [(SFSplitCardSection *)v6 listItems];
            v21 = v25;
            v22 = v3;
            if ((v26 != 0) != (v27 == 0))
            {
              v62 = v27;
              v61 = [(SFSplitCardSection *)self listItems];
              if (v61)
              {
                v28 = [(SFSplitCardSection *)self listItems];
                [(SFSplitCardSection *)v6 listItems];
                v58 = v60 = v28;
                if (![v28 isEqual:?])
                {
                  v12 = 0;
                  v34 = v61;
                  goto LABEL_71;
                }

                v59 = v21;
              }

              else
              {
                v59 = v21;
              }

              v29 = [(SFSplitCardSection *)self listMoreString];
              v30 = [(SFSplitCardSection *)v6 listMoreString];
              if ((v29 != 0) != (v30 == 0))
              {
                v57 = v30;
                v31 = [(SFSplitCardSection *)self listMoreString];
                v56 = v29;
                if (v31)
                {
                  v32 = [(SFSplitCardSection *)self listMoreString];
                  v53 = [(SFSplitCardSection *)v6 listMoreString];
                  v54 = v32;
                  if (![v32 isEqual:?])
                  {
                    v12 = 0;
                    v39 = v31;
                    v21 = v59;
LABEL_69:

LABEL_70:
                    v34 = v61;
                    if (!v61)
                    {
LABEL_72:

                      if (v65)
                      {
                      }

                      if (v21)
                      {
                      }

LABEL_47:
                      v11 = v71;
                      v10 = v72;
                      if (!v9)
                      {
LABEL_49:

                        goto LABEL_50;
                      }

LABEL_48:

                      goto LABEL_49;
                    }

LABEL_71:

                    goto LABEL_72;
                  }

                  v55 = v31;
                }

                else
                {
                  v55 = 0;
                }

                v35 = [(SFSplitCardSection *)self bottomTitle];
                v36 = [(SFSplitCardSection *)v6 bottomTitle];
                if ((v35 != 0) == (v36 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = v36;
                [(SFSplitCardSection *)self bottomTitle];
                v51 = v50 = v35;
                if (!v51 || (-[SFSplitCardSection bottomTitle](self, "bottomTitle"), v37 = objc_claimAutoreleasedReturnValue(), -[SFSplitCardSection bottomTitle](v6, "bottomTitle"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  v40 = [(SFSplitCardSection *)self body];
                  v41 = [(SFSplitCardSection *)v6 body];
                  if ((v40 != 0) == (v41 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = v41;
                    v49 = v40;
                    v42 = [(SFSplitCardSection *)self body];
                    v21 = v59;
                    if (v42)
                    {
                      v43 = v42;
                      v45 = [(SFSplitCardSection *)self body];
                      v44 = [(SFSplitCardSection *)v6 body];
                      v12 = [v45 isEqual:v44];
                    }

                    else
                    {

                      v12 = 1;
                    }
                  }

                  v38 = v51;
                  if (!v51)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v12 = 0;
                  v21 = v59;
                  v38 = v51;
                }

LABEL_67:
LABEL_68:
                v39 = v55;
                if (!v55)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              if (v61)
              {
              }

              v21 = v59;
              v27 = v62;
            }

            if (v65)
            {
            }

            v19 = v66;
            v20 = v67;
          }

          if (v21)
          {
          }

          v13 = v69;
          v14 = v70;
        }

        goto LABEL_45;
      }
    }

    v12 = 0;
  }

LABEL_51:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = SFSplitCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:a3];
  v5 = [(SFSplitCardSection *)self topTitle];
  v6 = [v5 copy];
  [v4 setTopTitle:v6];

  v7 = [(SFSplitCardSection *)self secondaryTopTitle];
  v8 = [v7 copy];
  [v4 setSecondaryTopTitle:v8];

  v9 = [(SFSplitCardSection *)self listPrefix];
  v10 = [v9 copy];
  [v4 setListPrefix:v10];

  v11 = [(SFSplitCardSection *)self listItems];
  v12 = [v11 copy];
  [v4 setListItems:v12];

  v13 = [(SFSplitCardSection *)self listMoreString];
  v14 = [v13 copy];
  [v4 setListMoreString:v14];

  v15 = [(SFSplitCardSection *)self bottomTitle];
  v16 = [v15 copy];
  [v4 setBottomTitle:v16];

  v17 = [(SFSplitCardSection *)self body];
  v18 = [v17 copy];
  [v4 setBody:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSplitCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSplitCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSplitCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSplitCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSplitCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFSplitCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 topTitle];
    [(SFSplitCardSection *)v5 setTopTitle:v9];

    v10 = [(SFCardSection *)v8 secondaryTopTitle];
    [(SFSplitCardSection *)v5 setSecondaryTopTitle:v10];

    v11 = [(SFCardSection *)v8 listPrefix];
    [(SFSplitCardSection *)v5 setListPrefix:v11];

    v12 = [(SFCardSection *)v8 listItems];
    [(SFSplitCardSection *)v5 setListItems:v12];

    v13 = [(SFCardSection *)v8 listMoreString];
    [(SFSplitCardSection *)v5 setListMoreString:v13];

    v14 = [(SFCardSection *)v8 bottomTitle];
    [(SFSplitCardSection *)v5 setBottomTitle:v14];

    v15 = [(SFCardSection *)v8 body];
    [(SFSplitCardSection *)v5 setBody:v15];

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

- (SFSplitCardSection)initWithProtobuf:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SFSplitCardSection;
  v5 = [(SFCardSection *)&v40 init];
  if (v5)
  {
    v6 = [v4 topTitle];

    if (v6)
    {
      v7 = [SFRichText alloc];
      v8 = [v4 topTitle];
      v9 = [(SFRichText *)v7 initWithProtobuf:v8];
      [(SFSplitCardSection *)v5 setTopTitle:v9];
    }

    v10 = [v4 secondaryTopTitle];

    if (v10)
    {
      v11 = [SFRichText alloc];
      v12 = [v4 secondaryTopTitle];
      v13 = [(SFRichText *)v11 initWithProtobuf:v12];
      [(SFSplitCardSection *)v5 setSecondaryTopTitle:v13];
    }

    v14 = [v4 listPrefix];

    if (v14)
    {
      v15 = [v4 listPrefix];
      [(SFSplitCardSection *)v5 setListPrefix:v15];
    }

    v16 = [v4 listItems];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = [v4 listItems];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if (*(*(&v36 + 1) + 8 * i))
          {
            [v17 addObject:?];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v20);
    }

    [(SFSplitCardSection *)v5 setListItems:v17];
    v23 = [v4 listMoreString];

    if (v23)
    {
      v24 = [v4 listMoreString];
      [(SFSplitCardSection *)v5 setListMoreString:v24];
    }

    v25 = [v4 bottomTitle];

    if (v25)
    {
      v26 = [SFRichText alloc];
      v27 = [v4 bottomTitle];
      v28 = [(SFRichText *)v26 initWithProtobuf:v27];
      [(SFSplitCardSection *)v5 setBottomTitle:v28];
    }

    v29 = [v4 body];

    if (v29)
    {
      v30 = [SFRichText alloc];
      v31 = [v4 body];
      v32 = [(SFRichText *)v30 initWithProtobuf:v31];
      [(SFSplitCardSection *)v5 setBody:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

@end