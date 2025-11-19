@interface RFSummaryItemShortNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemShortNumberCardSection)initWithCoder:(id)a3;
- (RFSummaryItemShortNumberCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemShortNumberCardSection

- (RFSummaryItemShortNumberCardSection)initWithProtobuf:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = RFSummaryItemShortNumberCardSection;
  v5 = [(SFCardSection *)&v57 init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemShortNumberCardSection *)v5 setNumber:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_1:v17];
    }

    v18 = [v4 text_3s];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v20 = [v4 text_3s];
    v21 = [v20 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v22);
    }

    [(RFSummaryItemShortNumberCardSection *)v5 setText_3:v19];
    v26 = [v4 text_4s];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = [v4 text_4s];
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v30);
    }

    [(RFSummaryItemShortNumberCardSection *)v5 setText_4:v27];
    v34 = [v4 text];

    if (v34)
    {
      v35 = [RFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:v36];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_5:v37];
    }

    v38 = [v4 text];

    if (v38)
    {
      v39 = [RFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:v40];
      [(RFSummaryItemShortNumberCardSection *)v5 setText_6:v41];
    }

    v42 = [v4 thumbnail];

    if (v42)
    {
      v43 = [RFVisualProperty alloc];
      v44 = [v4 thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:v44];
      [(RFSummaryItemShortNumberCardSection *)v5 setThumbnail:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v21.receiver = self;
  v21.super_class = RFSummaryItemShortNumberCardSection;
  v3 = [(SFCardSection *)&v21 hash];
  v4 = [(RFSummaryItemShortNumberCardSection *)self number];
  v5 = [v4 hash];
  v6 = [(RFSummaryItemShortNumberCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFSummaryItemShortNumberCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFSummaryItemShortNumberCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFSummaryItemShortNumberCardSection *)self text];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(RFSummaryItemShortNumberCardSection *)self text];
  v15 = [v14 hash];
  v16 = [(RFSummaryItemShortNumberCardSection *)self text];
  v17 = v15 ^ [v16 hash];
  v18 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
  v19 = v17 ^ [v18 hash];

  return v13 ^ v19;
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
    if ([(RFSummaryItemShortNumberCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v74.receiver = self;
      v74.super_class = RFSummaryItemShortNumberCardSection;
      if ([(SFCardSection *)&v74 isEqual:v4])
      {
        v5 = v4;
        v6 = [(RFSummaryItemShortNumberCardSection *)self number];
        v7 = [(RFSummaryItemShortNumberCardSection *)v5 number];
        if ((v6 != 0) == (v7 == 0))
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v8 = [(RFSummaryItemShortNumberCardSection *)self number];
        if (v8)
        {
          v9 = [(RFSummaryItemShortNumberCardSection *)self number];
          v10 = [(RFSummaryItemShortNumberCardSection *)v5 number];
          if (![v9 isEqual:v10])
          {
            v11 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v72 = v10;
          v73 = v9;
        }

        v12 = [(RFSummaryItemShortNumberCardSection *)self text];
        v13 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((v12 != 0) == (v13 == 0))
        {
          goto LABEL_23;
        }

        v14 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (v14)
        {
          v15 = [(RFSummaryItemShortNumberCardSection *)self text];
          v69 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v70 = v15;
          if (![v15 isEqual:v69])
          {
            goto LABEL_21;
          }
        }

        v71 = v14;
        v16 = [(RFSummaryItemShortNumberCardSection *)self text];
        v17 = [(RFSummaryItemShortNumberCardSection *)v5 text];
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

        v66 = v16;
        v67 = v17;
        v68 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (v68)
        {
          v18 = [(RFSummaryItemShortNumberCardSection *)self text];
          [(RFSummaryItemShortNumberCardSection *)v5 text];
          v64 = v65 = v18;
          if (![v18 isEqual:v64])
          {
LABEL_49:

LABEL_50:
            if (!v14)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        v20 = [(RFSummaryItemShortNumberCardSection *)self text];
        v21 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((v20 != 0) == (v21 == 0))
        {

          goto LABEL_48;
        }

        v62 = v20;
        v63 = v21;
        v22 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (v22)
        {
          v23 = [(RFSummaryItemShortNumberCardSection *)self text];
          v59 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v60 = v23;
          if (![v23 isEqual:?])
          {
            goto LABEL_39;
          }
        }

        v61 = v22;
        v24 = [(RFSummaryItemShortNumberCardSection *)self text];
        v25 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((v24 != 0) == (v25 == 0))
        {

          v22 = v61;
          if (!v61)
          {
LABEL_47:

LABEL_48:
            v14 = v71;
            if (!v68)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

LABEL_39:

          goto LABEL_47;
        }

        v56 = v25;
        v57 = v24;
        [(RFSummaryItemShortNumberCardSection *)self text];
        v58 = v22 = v61;
        if (v58)
        {
          v26 = [(RFSummaryItemShortNumberCardSection *)self text];
          v54 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v55 = v26;
          v27 = v26;
          v28 = v58;
          if (![v27 isEqual:?])
          {
LABEL_45:

LABEL_46:
            if (!v22)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }
        }

        v29 = [(RFSummaryItemShortNumberCardSection *)self text];
        v30 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((v29 != 0) == (v30 == 0))
        {

          v22 = v61;
          v28 = v58;
          if (!v58)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v52 = v30;
        v53 = v29;
        v31 = [(RFSummaryItemShortNumberCardSection *)self text];
        if (v31)
        {
          v32 = [(RFSummaryItemShortNumberCardSection *)self text];
          v49 = [(RFSummaryItemShortNumberCardSection *)v5 text];
          v50 = v32;
          v33 = [v32 isEqual:?];
          v34 = v57;
          if (!v33)
          {
            v11 = 0;
            goto LABEL_68;
          }

          v51 = v31;
        }

        else
        {
          v51 = 0;
        }

        v35 = [(RFSummaryItemShortNumberCardSection *)self text];
        v36 = [(RFSummaryItemShortNumberCardSection *)v5 text];
        if ((v35 != 0) != (v36 == 0))
        {
          v46 = v35;
          v47 = v36;
          v48 = [(RFSummaryItemShortNumberCardSection *)self text];
          if (!v48 || (-[RFSummaryItemShortNumberCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemShortNumberCardSection text](v5, "text"), v43 = objc_claimAutoreleasedReturnValue(), v44 = v37, [v37 isEqual:?]))
          {
            v38 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
            v45 = [(RFSummaryItemShortNumberCardSection *)v5 thumbnail];
            if ((v38 != 0) == (v45 == 0))
            {

              v11 = 0;
            }

            else
            {
              v39 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
              if (v39)
              {
                v40 = v39;
                v42 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
                v41 = [(RFSummaryItemShortNumberCardSection *)v5 thumbnail];
                v11 = [v42 isEqual:v41];
              }

              else
              {

                v11 = 1;
              }
            }

            v34 = v57;
            v31 = v51;
            if (!v48)
            {
LABEL_67:

              if (!v31)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v11 = 0;
            v34 = v57;
            v31 = v51;
          }

          goto LABEL_67;
        }

        v11 = 0;
        v31 = v51;
        v34 = v57;
        if (!v51)
        {
LABEL_69:

          if (v58)
          {
          }

          if (v61)
          {
          }

          if (v68)
          {
          }

          if (v71)
          {
          }

          if (!v8)
          {
            goto LABEL_26;
          }

LABEL_24:
          v10 = v72;
          v9 = v73;
          goto LABEL_25;
        }

LABEL_68:

        goto LABEL_69;
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
  v22.super_class = RFSummaryItemShortNumberCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:a3];
  v5 = [(RFSummaryItemShortNumberCardSection *)self number];
  v6 = [v5 copy];
  [v4 setNumber:v6];

  v7 = [(RFSummaryItemShortNumberCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFSummaryItemShortNumberCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_1:v10];

  v11 = [(RFSummaryItemShortNumberCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_3:v12];

  v13 = [(RFSummaryItemShortNumberCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_4:v14];

  v15 = [(RFSummaryItemShortNumberCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_5:v16];

  v17 = [(RFSummaryItemShortNumberCardSection *)self text];
  v18 = [v17 copy];
  [v4 setText_6:v18];

  v19 = [(RFSummaryItemShortNumberCardSection *)self thumbnail];
  v20 = [v19 copy];
  [v4 setThumbnail:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemShortNumberCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemShortNumberCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemShortNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSummaryItemShortNumberCardSection)initWithCoder:(id)a3
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
    [(RFSummaryItemShortNumberCardSection *)v5 setNumber:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_1:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_3:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_4:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_5:v14];

    v15 = [(SFCardSection *)v8 text];
    [(RFSummaryItemShortNumberCardSection *)v5 setText_6:v15];

    v16 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemShortNumberCardSection *)v5 setThumbnail:v16];

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