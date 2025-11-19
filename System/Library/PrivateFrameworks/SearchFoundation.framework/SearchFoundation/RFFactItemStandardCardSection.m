@interface RFFactItemStandardCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemStandardCardSection)initWithCoder:(id)a3;
- (RFFactItemStandardCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFFactItemStandardCardSection

- (RFFactItemStandardCardSection)initWithProtobuf:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = RFFactItemStandardCardSection;
  v5 = [(SFCardSection *)&v53 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFFactItemStandardCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFFactItemStandardCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFFactItemStandardCardSection *)v5 setText_3:v17];
    }

    v18 = [v4 text_4s];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = [v4 text_4s];
    v21 = [v20 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v22);
    }

    [(RFFactItemStandardCardSection *)v5 setText_4:v19];
    v26 = [v4 text_5s];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = [v4 text_5s];
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v30);
    }

    [(RFFactItemStandardCardSection *)v5 setText_5:v27];
    v34 = [v4 thumbnail];

    if (v34)
    {
      v35 = [RFVisualProperty alloc];
      v36 = [v4 thumbnail];
      v37 = [(RFVisualProperty *)v35 initWithProtobuf:v36];
      [(RFFactItemStandardCardSection *)v5 setThumbnail:v37];
    }

    v38 = [v4 thumbnail2];

    if (v38)
    {
      v39 = [RFVisualProperty alloc];
      v40 = [v4 thumbnail2];
      v41 = [(RFVisualProperty *)v39 initWithProtobuf:v40];
      [(RFFactItemStandardCardSection *)v5 setThumbnail2:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = RFFactItemStandardCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  v4 = [(RFFactItemStandardCardSection *)self text];
  v5 = [v4 hash];
  v6 = [(RFFactItemStandardCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFFactItemStandardCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFFactItemStandardCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFFactItemStandardCardSection *)self text];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(RFFactItemStandardCardSection *)self thumbnail];
  v15 = [v14 hash];
  v16 = [(RFFactItemStandardCardSection *)self thumbnail2];
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
    if ([(RFFactItemStandardCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = RFFactItemStandardCardSection;
      if ([(SFCardSection *)&v73 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFFactItemStandardCardSection *)self text];
        v8 = [(RFFactItemStandardCardSection *)v6 text];
        if ((v7 != 0) == (v8 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v9 = [(RFFactItemStandardCardSection *)self text];
        if (v9)
        {
          v10 = [(RFFactItemStandardCardSection *)self text];
          v11 = [(RFFactItemStandardCardSection *)v6 text];
          if (![v10 isEqual:v11])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = v11;
          v72 = v10;
        }

        v13 = [(RFFactItemStandardCardSection *)self text];
        v14 = [(RFFactItemStandardCardSection *)v6 text];
        if ((v13 != 0) != (v14 == 0))
        {
          v70 = v14;
          v15 = [(RFFactItemStandardCardSection *)self text];
          if (v15)
          {
            v16 = [(RFFactItemStandardCardSection *)self text];
            v17 = [(RFFactItemStandardCardSection *)v6 text];
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

          v19 = [(RFFactItemStandardCardSection *)self text];
          v20 = [(RFFactItemStandardCardSection *)v6 text];
          v21 = v18;
          v22 = v3;
          if ((v19 != 0) != (v20 == 0))
          {
            v66 = v19;
            v67 = v20;
            v65 = [(RFFactItemStandardCardSection *)self text];
            if (v65)
            {
              v23 = [(RFFactItemStandardCardSection *)self text];
              v24 = [(RFFactItemStandardCardSection *)v6 text];
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

            v26 = [(RFFactItemStandardCardSection *)self text];
            v27 = [(RFFactItemStandardCardSection *)v6 text];
            v21 = v25;
            v22 = v3;
            if ((v26 != 0) != (v27 == 0))
            {
              v62 = v27;
              v61 = [(RFFactItemStandardCardSection *)self text];
              if (v61)
              {
                v28 = [(RFFactItemStandardCardSection *)self text];
                [(RFFactItemStandardCardSection *)v6 text];
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

              v29 = [(RFFactItemStandardCardSection *)self text];
              v30 = [(RFFactItemStandardCardSection *)v6 text];
              if ((v29 != 0) != (v30 == 0))
              {
                v57 = v30;
                v31 = [(RFFactItemStandardCardSection *)self text];
                v56 = v29;
                if (v31)
                {
                  v32 = [(RFFactItemStandardCardSection *)self text];
                  v53 = [(RFFactItemStandardCardSection *)v6 text];
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

                v35 = [(RFFactItemStandardCardSection *)self thumbnail];
                v36 = [(RFFactItemStandardCardSection *)v6 thumbnail];
                if ((v35 != 0) == (v36 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = v36;
                [(RFFactItemStandardCardSection *)self thumbnail];
                v51 = v50 = v35;
                if (!v51 || (-[RFFactItemStandardCardSection thumbnail](self, "thumbnail"), v37 = objc_claimAutoreleasedReturnValue(), -[RFFactItemStandardCardSection thumbnail](v6, "thumbnail"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  v40 = [(RFFactItemStandardCardSection *)self thumbnail2];
                  v41 = [(RFFactItemStandardCardSection *)v6 thumbnail2];
                  if ((v40 != 0) == (v41 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = v41;
                    v49 = v40;
                    v42 = [(RFFactItemStandardCardSection *)self thumbnail2];
                    v21 = v59;
                    if (v42)
                    {
                      v43 = v42;
                      v45 = [(RFFactItemStandardCardSection *)self thumbnail2];
                      v44 = [(RFFactItemStandardCardSection *)v6 thumbnail2];
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
  v20.super_class = RFFactItemStandardCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:a3];
  v5 = [(RFFactItemStandardCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFFactItemStandardCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFFactItemStandardCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_3:v10];

  v11 = [(RFFactItemStandardCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_4:v12];

  v13 = [(RFFactItemStandardCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_5:v14];

  v15 = [(RFFactItemStandardCardSection *)self thumbnail];
  v16 = [v15 copy];
  [v4 setThumbnail:v16];

  v17 = [(RFFactItemStandardCardSection *)self thumbnail2];
  v18 = [v17 copy];
  [v4 setThumbnail2:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemStandardCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemStandardCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemStandardCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFFactItemStandardCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFFactItemStandardCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_3:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_4:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFFactItemStandardCardSection *)v5 setText_5:v13];

    v14 = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemStandardCardSection *)v5 setThumbnail:v14];

    v15 = [(SFCardSection *)v8 thumbnail2];
    [(RFFactItemStandardCardSection *)v5 setThumbnail2:v15];

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