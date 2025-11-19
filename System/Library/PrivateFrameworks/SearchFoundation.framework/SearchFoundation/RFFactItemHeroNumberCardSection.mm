@interface RFFactItemHeroNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemHeroNumberCardSection)initWithCoder:(id)a3;
- (RFFactItemHeroNumberCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFFactItemHeroNumberCardSection

- (RFFactItemHeroNumberCardSection)initWithProtobuf:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = RFFactItemHeroNumberCardSection;
  v5 = [(SFCardSection *)&v49 init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFFactItemHeroNumberCardSection *)v5 setNumber:v9];
    }

    v10 = [v4 unit];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 unit];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFFactItemHeroNumberCardSection *)v5 setUnit:v13];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = [v4 text_2s];
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v45 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v18);
    }

    [(RFFactItemHeroNumberCardSection *)v5 setText_2:v15];
    v22 = [v4 text_3s];
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = [v4 text_3s];
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v26);
    }

    [(RFFactItemHeroNumberCardSection *)v5 setText_3:v23];
    v30 = [v4 text];

    if (v30)
    {
      v31 = [RFTextProperty alloc];
      v32 = [v4 text];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:v32];
      [(RFFactItemHeroNumberCardSection *)v5 setText_4:v33];
    }

    v34 = [v4 text];

    if (v34)
    {
      v35 = [RFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:v36];
      [(RFFactItemHeroNumberCardSection *)v5 setText_5:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = RFFactItemHeroNumberCardSection;
  v3 = [(SFCardSection *)&v17 hash];
  v4 = [(RFFactItemHeroNumberCardSection *)self number];
  v5 = [v4 hash];
  v6 = [(RFFactItemHeroNumberCardSection *)self unit];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFFactItemHeroNumberCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFFactItemHeroNumberCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFFactItemHeroNumberCardSection *)self text];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(RFFactItemHeroNumberCardSection *)self text];
  v15 = [v14 hash];

  return v13 ^ v15;
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
    if ([(RFFactItemHeroNumberCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v58.receiver = self;
      v58.super_class = RFFactItemHeroNumberCardSection;
      if ([(SFCardSection *)&v58 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFFactItemHeroNumberCardSection *)self number];
        v8 = [(RFFactItemHeroNumberCardSection *)v6 number];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        v9 = [(RFFactItemHeroNumberCardSection *)self number];
        if (v9)
        {
          v10 = [(RFFactItemHeroNumberCardSection *)self number];
          v57 = [(RFFactItemHeroNumberCardSection *)v6 number];
          if (![v10 isEqual:?])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v54 = v10;
        }

        v56 = [(RFFactItemHeroNumberCardSection *)self unit];
        v55 = [(RFFactItemHeroNumberCardSection *)v6 unit];
        if ((v56 != 0) == (v55 == 0))
        {
          goto LABEL_33;
        }

        v12 = [(RFFactItemHeroNumberCardSection *)self unit];
        if (v12)
        {
          v13 = [(RFFactItemHeroNumberCardSection *)self unit];
          v3 = [(RFFactItemHeroNumberCardSection *)v6 unit];
          if (([v13 isEqual:v3] & 1) == 0)
          {

LABEL_32:
LABEL_33:

            v11 = 0;
            goto LABEL_34;
          }

          v51 = v13;
          v53 = v8;
          v14 = v57;
          v15 = v12;
        }

        else
        {
          v53 = v8;
          v14 = v57;
          v15 = 0;
        }

        v52 = v3;
        v57 = v14;
        v16 = [(RFFactItemHeroNumberCardSection *)self text];
        v17 = [(RFFactItemHeroNumberCardSection *)v6 text];
        v12 = v15;
        v8 = v53;
        if ((v16 != 0) != (v17 == 0))
        {
          v50 = v17;
          v49 = [(RFFactItemHeroNumberCardSection *)self text];
          if (v49)
          {
            v18 = [(RFFactItemHeroNumberCardSection *)self text];
            v46 = [(RFFactItemHeroNumberCardSection *)v6 text];
            v47 = v18;
            if (![v18 isEqual:?])
            {
              v11 = 0;
              v24 = v49;
              goto LABEL_57;
            }

            v48 = v15;
          }

          else
          {
            v48 = v15;
          }

          v19 = [(RFFactItemHeroNumberCardSection *)self text];
          v20 = [(RFFactItemHeroNumberCardSection *)v6 text];
          if ((v19 != 0) != (v20 == 0))
          {
            v45 = v20;
            [(RFFactItemHeroNumberCardSection *)self text];
            v12 = v48;
            v44 = v43 = v19;
            if (v44)
            {
              v21 = [(RFFactItemHeroNumberCardSection *)self text];
              v41 = [(RFFactItemHeroNumberCardSection *)v6 text];
              v42 = v21;
              if (![v21 isEqual:?])
              {
                v11 = 0;
                v22 = v44;
LABEL_55:

LABEL_56:
                v24 = v49;
                if (!v49)
                {
LABEL_58:

                  if (v12)
                  {
                  }

LABEL_34:
                  v10 = v54;
                  if (!v9)
                  {
LABEL_36:

                    goto LABEL_37;
                  }

LABEL_35:

                  goto LABEL_36;
                }

LABEL_57:

                goto LABEL_58;
              }
            }

            v25 = [(RFFactItemHeroNumberCardSection *)self text];
            v26 = [(RFFactItemHeroNumberCardSection *)v6 text];
            if ((v25 != 0) == (v26 == 0))
            {

              v11 = 0;
              v12 = v48;
              goto LABEL_54;
            }

            v39 = v25;
            v40 = v26;
            [(RFFactItemHeroNumberCardSection *)self text];
            v38 = v12 = v48;
            if (v38 && (-[RFFactItemHeroNumberCardSection text](self, "text"), v27 = objc_claimAutoreleasedReturnValue(), -[RFFactItemHeroNumberCardSection text](v6, "text"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
            {
              v11 = 0;
              v32 = v38;
            }

            else
            {
              v28 = [(RFFactItemHeroNumberCardSection *)self text];
              v29 = [(RFFactItemHeroNumberCardSection *)v6 text];
              if ((v28 != 0) == (v29 == 0))
              {

                v11 = 0;
                v12 = v48;
              }

              else
              {
                v35 = v29;
                v30 = [(RFFactItemHeroNumberCardSection *)self text];
                v12 = v48;
                if (v30)
                {
                  v34 = v30;
                  v33 = [(RFFactItemHeroNumberCardSection *)self text];
                  v31 = [(RFFactItemHeroNumberCardSection *)v6 text];
                  v11 = [v33 isEqual:?];
                }

                else
                {

                  v11 = 1;
                }
              }

              v32 = v38;
              if (!v38)
              {
                goto LABEL_53;
              }
            }

LABEL_53:
LABEL_54:
            v22 = v44;
            if (!v44)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }

          v12 = v48;
          if (v49)
          {
          }

          v17 = v50;
        }

        if (v12)
        {
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = RFFactItemHeroNumberCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:a3];
  v5 = [(RFFactItemHeroNumberCardSection *)self number];
  v6 = [v5 copy];
  [v4 setNumber:v6];

  v7 = [(RFFactItemHeroNumberCardSection *)self unit];
  v8 = [v7 copy];
  [v4 setUnit:v8];

  v9 = [(RFFactItemHeroNumberCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_2:v10];

  v11 = [(RFFactItemHeroNumberCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_3:v12];

  v13 = [(RFFactItemHeroNumberCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_4:v14];

  v15 = [(RFFactItemHeroNumberCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_5:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemHeroNumberCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemHeroNumberCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFFactItemHeroNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFFactItemHeroNumberCardSection)initWithCoder:(id)a3
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
    [(RFFactItemHeroNumberCardSection *)v5 setNumber:v9];

    v10 = [(SFCardSection *)v8 unit];
    [(RFFactItemHeroNumberCardSection *)v5 setUnit:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_2:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_3:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_4:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFFactItemHeroNumberCardSection *)v5 setText_5:v14];

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

@end