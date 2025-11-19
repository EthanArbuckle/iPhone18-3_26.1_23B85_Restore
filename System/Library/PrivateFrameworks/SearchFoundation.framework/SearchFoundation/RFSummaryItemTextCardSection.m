@interface RFSummaryItemTextCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemTextCardSection)initWithCoder:(id)a3;
- (RFSummaryItemTextCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemTextCardSection

- (RFSummaryItemTextCardSection)initWithProtobuf:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = RFSummaryItemTextCardSection;
  v5 = [(SFCardSection *)&v37 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemTextCardSection *)v5 setText_2:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemTextCardSection *)v5 setText_1:v13];
    }

    v14 = [v4 text_3s];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = [v4 text_3s];
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v33 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v18);
    }

    [(RFSummaryItemTextCardSection *)v5 setText_3:v15];
    v22 = [v4 text];

    if (v22)
    {
      v23 = [RFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:v24];
      [(RFSummaryItemTextCardSection *)v5 setText_4:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [RFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:v28];
      [(RFSummaryItemTextCardSection *)v5 setText_5:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = RFSummaryItemTextCardSection;
  v3 = [(SFCardSection *)&v15 hash];
  v4 = [(RFSummaryItemTextCardSection *)self text];
  v5 = [v4 hash];
  v6 = [(RFSummaryItemTextCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFSummaryItemTextCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFSummaryItemTextCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFSummaryItemTextCardSection *)self text];
  v13 = v11 ^ [v12 hash];

  return v13 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(RFSummaryItemTextCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v50.receiver = self;
      v50.super_class = RFSummaryItemTextCardSection;
      if ([(SFCardSection *)&v50 isEqual:v4])
      {
        v5 = v4;
        v6 = [(RFSummaryItemTextCardSection *)self text];
        v7 = [(RFSummaryItemTextCardSection *)v5 text];
        if ((v6 != 0) == (v7 == 0))
        {
          v10 = 0;
LABEL_51:

          goto LABEL_52;
        }

        v8 = [(RFSummaryItemTextCardSection *)self text];
        if (v8)
        {
          v9 = [(RFSummaryItemTextCardSection *)self text];
          v48 = [(RFSummaryItemTextCardSection *)v5 text];
          if (![v9 isEqual:?])
          {
            v10 = 0;
            goto LABEL_49;
          }

          v47 = v9;
        }

        v49 = [(RFSummaryItemTextCardSection *)self text];
        v11 = [(RFSummaryItemTextCardSection *)v5 text];
        if ((v49 != 0) != (v11 == 0))
        {
          v12 = [(RFSummaryItemTextCardSection *)self text];
          if (v12)
          {
            v13 = v12;
            v14 = [(RFSummaryItemTextCardSection *)self text];
            [(RFSummaryItemTextCardSection *)v5 text];
            v45 = v44 = v14;
            if (![v14 isEqual:?])
            {
              v10 = 0;
              v19 = v13;
              v20 = v45;
              goto LABEL_46;
            }

            v46 = v13;
          }

          else
          {
            v46 = 0;
          }

          v15 = [(RFSummaryItemTextCardSection *)self text];
          v16 = [(RFSummaryItemTextCardSection *)v5 text];
          if ((v15 != 0) != (v16 == 0))
          {
            v42 = v15;
            v43 = v16;
            v17 = [(RFSummaryItemTextCardSection *)self text];
            if (v17)
            {
              v18 = [(RFSummaryItemTextCardSection *)self text];
              v39 = [(RFSummaryItemTextCardSection *)v5 text];
              v40 = v18;
              if (![v18 isEqual:?])
              {
                v10 = 0;
                v20 = v45;
                v19 = v46;
                goto LABEL_44;
              }

              v41 = v17;
            }

            else
            {
              v41 = 0;
            }

            v21 = [(RFSummaryItemTextCardSection *)self text];
            v22 = [(RFSummaryItemTextCardSection *)v5 text];
            if ((v21 != 0) != (v22 == 0))
            {
              v38 = v22;
              [(RFSummaryItemTextCardSection *)self text];
              v37 = v20 = v45;
              if (v37)
              {
                v33 = v21;
                v23 = [(RFSummaryItemTextCardSection *)self text];
                v35 = [(RFSummaryItemTextCardSection *)v5 text];
                v36 = v23;
                if (![v23 isEqual:?])
                {
                  v10 = 0;
                  v27 = v37;
                  v21 = v33;
                  goto LABEL_42;
                }

                v21 = v33;
              }

              v24 = [(RFSummaryItemTextCardSection *)self text];
              v25 = [(RFSummaryItemTextCardSection *)v5 text];
              if ((v24 != 0) == (v25 == 0))
              {

                v10 = 0;
                v20 = v45;
                v27 = v37;
                if (!v37)
                {
LABEL_43:

                  v17 = v41;
                  v19 = v46;
                  if (!v41)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                v32 = v25;
                v34 = v24;
                v26 = [(RFSummaryItemTextCardSection *)self text];
                v20 = v45;
                v27 = v37;
                if (v26)
                {
                  v31 = v26;
                  v30 = [(RFSummaryItemTextCardSection *)self text];
                  v29 = [(RFSummaryItemTextCardSection *)v5 text];
                  v10 = [v30 isEqual:v29];

                  if (!v37)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {

                  v10 = 1;
                  if (!v37)
                  {
                    goto LABEL_43;
                  }
                }
              }

LABEL_42:

              goto LABEL_43;
            }

            v10 = 0;
            v20 = v45;
            v19 = v46;
            v17 = v41;
            if (!v41)
            {
LABEL_45:

              if (!v19)
              {
LABEL_47:

LABEL_48:
                v9 = v47;
                if (!v8)
                {
LABEL_50:

                  goto LABEL_51;
                }

LABEL_49:

                goto LABEL_50;
              }

LABEL_46:

              goto LABEL_47;
            }

LABEL_44:

            goto LABEL_45;
          }

          if (v46)
          {
          }
        }

        v10 = 0;
        goto LABEL_48;
      }
    }

    v10 = 0;
  }

LABEL_52:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RFSummaryItemTextCardSection;
  v4 = [(SFCardSection *)&v16 copyWithZone:a3];
  v5 = [(RFSummaryItemTextCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_2:v6];

  v7 = [(RFSummaryItemTextCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_1:v8];

  v9 = [(RFSummaryItemTextCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_3:v10];

  v11 = [(RFSummaryItemTextCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_4:v12];

  v13 = [(RFSummaryItemTextCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_5:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemTextCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemTextCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemTextCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSummaryItemTextCardSection)initWithCoder:(id)a3
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
    [(RFSummaryItemTextCardSection *)v5 setText_2:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSummaryItemTextCardSection *)v5 setText_1:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSummaryItemTextCardSection *)v5 setText_3:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFSummaryItemTextCardSection *)v5 setText_4:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFSummaryItemTextCardSection *)v5 setText_5:v13];

    v14 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v14];

    v15 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v15];

    v16 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v16];

    v17 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v17];

    v18 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v18];

    v19 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v19];

    v20 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v20];

    v21 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v21];

    v22 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v22];

    v23 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v23];

    v24 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v24];

    v25 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v25];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v26 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v26];

    v27 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v27];

    v28 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v28];

    v29 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v29];

    v30 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v30];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v31 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v31];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v32 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v32];

    v33 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v33];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v34 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v34];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v35 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v35];

    v36 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v36];

    v37 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v37];

    v38 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v38];
  }

  return v5;
}

@end