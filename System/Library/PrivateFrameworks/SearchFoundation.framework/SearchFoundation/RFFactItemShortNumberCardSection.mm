@interface RFFactItemShortNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemShortNumberCardSection)initWithCoder:(id)a3;
- (RFFactItemShortNumberCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFFactItemShortNumberCardSection

- (RFFactItemShortNumberCardSection)initWithProtobuf:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = RFFactItemShortNumberCardSection;
  v5 = [(SFCardSection *)&v53 init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFFactItemShortNumberCardSection *)v5 setNumber:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFFactItemShortNumberCardSection *)v5 setText_1:v13];
    }

    v14 = [v4 text_2s];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = [v4 text_2s];
    v17 = [v16 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v18);
    }

    [(RFFactItemShortNumberCardSection *)v5 setText_2:v15];
    v22 = [v4 text_3s];
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = [v4 text_3s];
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v46;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v26);
    }

    [(RFFactItemShortNumberCardSection *)v5 setText_3:v23];
    v30 = [v4 unit];

    if (v30)
    {
      v31 = [RFTextProperty alloc];
      v32 = [v4 unit];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:v32];
      [(RFFactItemShortNumberCardSection *)v5 setUnit:v33];
    }

    v34 = [v4 text];

    if (v34)
    {
      v35 = [RFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:v36];
      [(RFFactItemShortNumberCardSection *)v5 setText_4:v37];
    }

    v38 = [v4 thumbnail];

    if (v38)
    {
      v39 = [RFVisualProperty alloc];
      v40 = [v4 thumbnail];
      v41 = [(RFVisualProperty *)v39 initWithProtobuf:v40];
      [(RFFactItemShortNumberCardSection *)v5 setThumbnail:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = RFFactItemShortNumberCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  v4 = [(RFFactItemShortNumberCardSection *)self number];
  v5 = [v4 hash];
  v6 = [(RFFactItemShortNumberCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFFactItemShortNumberCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFFactItemShortNumberCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFFactItemShortNumberCardSection *)self unit];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(RFFactItemShortNumberCardSection *)self text];
  v15 = [v14 hash];
  v16 = [(RFFactItemShortNumberCardSection *)self thumbnail];
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
    if ([(RFFactItemShortNumberCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = RFFactItemShortNumberCardSection;
      if ([(SFCardSection *)&v73 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFFactItemShortNumberCardSection *)self number];
        v8 = [(RFFactItemShortNumberCardSection *)v6 number];
        if ((v7 != 0) == (v8 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v9 = [(RFFactItemShortNumberCardSection *)self number];
        if (v9)
        {
          v10 = [(RFFactItemShortNumberCardSection *)self number];
          v11 = [(RFFactItemShortNumberCardSection *)v6 number];
          if (![v10 isEqual:v11])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = v11;
          v72 = v10;
        }

        v13 = [(RFFactItemShortNumberCardSection *)self text];
        v14 = [(RFFactItemShortNumberCardSection *)v6 text];
        if ((v13 != 0) != (v14 == 0))
        {
          v70 = v14;
          v15 = [(RFFactItemShortNumberCardSection *)self text];
          if (v15)
          {
            v16 = [(RFFactItemShortNumberCardSection *)self text];
            v17 = [(RFFactItemShortNumberCardSection *)v6 text];
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

          v19 = [(RFFactItemShortNumberCardSection *)self text];
          v20 = [(RFFactItemShortNumberCardSection *)v6 text];
          v21 = v18;
          v22 = v3;
          if ((v19 != 0) != (v20 == 0))
          {
            v66 = v19;
            v67 = v20;
            v65 = [(RFFactItemShortNumberCardSection *)self text];
            if (v65)
            {
              v23 = [(RFFactItemShortNumberCardSection *)self text];
              v24 = [(RFFactItemShortNumberCardSection *)v6 text];
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

            v26 = [(RFFactItemShortNumberCardSection *)self text];
            v27 = [(RFFactItemShortNumberCardSection *)v6 text];
            v21 = v25;
            v22 = v3;
            if ((v26 != 0) != (v27 == 0))
            {
              v62 = v27;
              v61 = [(RFFactItemShortNumberCardSection *)self text];
              if (v61)
              {
                v28 = [(RFFactItemShortNumberCardSection *)self text];
                [(RFFactItemShortNumberCardSection *)v6 text];
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

              v29 = [(RFFactItemShortNumberCardSection *)self unit];
              v30 = [(RFFactItemShortNumberCardSection *)v6 unit];
              if ((v29 != 0) != (v30 == 0))
              {
                v57 = v30;
                v31 = [(RFFactItemShortNumberCardSection *)self unit];
                v56 = v29;
                if (v31)
                {
                  v32 = [(RFFactItemShortNumberCardSection *)self unit];
                  v53 = [(RFFactItemShortNumberCardSection *)v6 unit];
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

                v35 = [(RFFactItemShortNumberCardSection *)self text];
                v36 = [(RFFactItemShortNumberCardSection *)v6 text];
                if ((v35 != 0) == (v36 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = v36;
                [(RFFactItemShortNumberCardSection *)self text];
                v51 = v50 = v35;
                if (!v51 || (-[RFFactItemShortNumberCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFFactItemShortNumberCardSection text](v6, "text"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  v40 = [(RFFactItemShortNumberCardSection *)self thumbnail];
                  v41 = [(RFFactItemShortNumberCardSection *)v6 thumbnail];
                  if ((v40 != 0) == (v41 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = v41;
                    v49 = v40;
                    v42 = [(RFFactItemShortNumberCardSection *)self thumbnail];
                    v21 = v59;
                    if (v42)
                    {
                      v43 = v42;
                      v45 = [(RFFactItemShortNumberCardSection *)self thumbnail];
                      v44 = [(RFFactItemShortNumberCardSection *)v6 thumbnail];
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
  v20.super_class = RFFactItemShortNumberCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:a3];
  v5 = [(RFFactItemShortNumberCardSection *)self number];
  v6 = [v5 copy];
  [v4 setNumber:v6];

  v7 = [(RFFactItemShortNumberCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_1:v8];

  v9 = [(RFFactItemShortNumberCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_2:v10];

  v11 = [(RFFactItemShortNumberCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_3:v12];

  v13 = [(RFFactItemShortNumberCardSection *)self unit];
  v14 = [v13 copy];
  [v4 setUnit:v14];

  v15 = [(RFFactItemShortNumberCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_4:v16];

  v17 = [(RFFactItemShortNumberCardSection *)self thumbnail];
  v18 = [v17 copy];
  [v4 setThumbnail:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemShortNumberCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemShortNumberCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFFactItemShortNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFFactItemShortNumberCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 number];
    [(RFFactItemShortNumberCardSection *)v5 setNumber:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFFactItemShortNumberCardSection *)v5 setText_1:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFFactItemShortNumberCardSection *)v5 setText_2:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFFactItemShortNumberCardSection *)v5 setText_3:v12];

    v13 = [(SFCardSection *)v8 unit];
    [(RFFactItemShortNumberCardSection *)v5 setUnit:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFFactItemShortNumberCardSection *)v5 setText_4:v14];

    v15 = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemShortNumberCardSection *)v5 setThumbnail:v15];

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