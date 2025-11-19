@interface RFFactItemDetailedNumberCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFFactItemDetailedNumberCardSection)initWithCoder:(id)a3;
- (RFFactItemDetailedNumberCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFFactItemDetailedNumberCardSection

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = RFFactItemDetailedNumberCardSection;
  v3 = [(SFCardSection *)&v17 hash];
  v4 = [(RFFactItemDetailedNumberCardSection *)self number];
  v5 = [v4 hash];
  v6 = [(RFFactItemDetailedNumberCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFFactItemDetailedNumberCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFFactItemDetailedNumberCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFFactItemDetailedNumberCardSection *)self thumbnail];
  v13 = v11 ^ [v12 hash] ^ v3;
  v14 = [(RFFactItemDetailedNumberCardSection *)self text];
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
    if ([(RFFactItemDetailedNumberCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v58.receiver = self;
      v58.super_class = RFFactItemDetailedNumberCardSection;
      if ([(SFCardSection *)&v58 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFFactItemDetailedNumberCardSection *)self number];
        v8 = [(RFFactItemDetailedNumberCardSection *)v6 number];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        v9 = [(RFFactItemDetailedNumberCardSection *)self number];
        if (v9)
        {
          v10 = [(RFFactItemDetailedNumberCardSection *)self number];
          v57 = [(RFFactItemDetailedNumberCardSection *)v6 number];
          if (![v10 isEqual:?])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v54 = v10;
        }

        v56 = [(RFFactItemDetailedNumberCardSection *)self text];
        v55 = [(RFFactItemDetailedNumberCardSection *)v6 text];
        if ((v56 != 0) == (v55 == 0))
        {
          goto LABEL_33;
        }

        v12 = [(RFFactItemDetailedNumberCardSection *)self text];
        if (v12)
        {
          v13 = [(RFFactItemDetailedNumberCardSection *)self text];
          v3 = [(RFFactItemDetailedNumberCardSection *)v6 text];
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
        v16 = [(RFFactItemDetailedNumberCardSection *)self text];
        v17 = [(RFFactItemDetailedNumberCardSection *)v6 text];
        v12 = v15;
        v8 = v53;
        if ((v16 != 0) != (v17 == 0))
        {
          v50 = v17;
          v49 = [(RFFactItemDetailedNumberCardSection *)self text];
          if (v49)
          {
            v18 = [(RFFactItemDetailedNumberCardSection *)self text];
            v46 = [(RFFactItemDetailedNumberCardSection *)v6 text];
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

          v19 = [(RFFactItemDetailedNumberCardSection *)self text];
          v20 = [(RFFactItemDetailedNumberCardSection *)v6 text];
          if ((v19 != 0) != (v20 == 0))
          {
            v45 = v20;
            [(RFFactItemDetailedNumberCardSection *)self text];
            v12 = v48;
            v44 = v43 = v19;
            if (v44)
            {
              v21 = [(RFFactItemDetailedNumberCardSection *)self text];
              v41 = [(RFFactItemDetailedNumberCardSection *)v6 text];
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

            v25 = [(RFFactItemDetailedNumberCardSection *)self thumbnail];
            v26 = [(RFFactItemDetailedNumberCardSection *)v6 thumbnail];
            if ((v25 != 0) == (v26 == 0))
            {

              v11 = 0;
              v12 = v48;
              goto LABEL_54;
            }

            v39 = v25;
            v40 = v26;
            [(RFFactItemDetailedNumberCardSection *)self thumbnail];
            v38 = v12 = v48;
            if (v38 && (-[RFFactItemDetailedNumberCardSection thumbnail](self, "thumbnail"), v27 = objc_claimAutoreleasedReturnValue(), -[RFFactItemDetailedNumberCardSection thumbnail](v6, "thumbnail"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
            {
              v11 = 0;
              v32 = v38;
            }

            else
            {
              v28 = [(RFFactItemDetailedNumberCardSection *)self text];
              v29 = [(RFFactItemDetailedNumberCardSection *)v6 text];
              if ((v28 != 0) == (v29 == 0))
              {

                v11 = 0;
                v12 = v48;
              }

              else
              {
                v35 = v29;
                v30 = [(RFFactItemDetailedNumberCardSection *)self text];
                v12 = v48;
                if (v30)
                {
                  v34 = v30;
                  v33 = [(RFFactItemDetailedNumberCardSection *)self text];
                  v31 = [(RFFactItemDetailedNumberCardSection *)v6 text];
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
  v18.super_class = RFFactItemDetailedNumberCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:a3];
  v5 = [(RFFactItemDetailedNumberCardSection *)self number];
  v6 = [v5 copy];
  [v4 setNumber:v6];

  v7 = [(RFFactItemDetailedNumberCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_1:v8];

  v9 = [(RFFactItemDetailedNumberCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_2:v10];

  v11 = [(RFFactItemDetailedNumberCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_3:v12];

  v13 = [(RFFactItemDetailedNumberCardSection *)self thumbnail];
  v14 = [v13 copy];
  [v4 setThumbnail:v14];

  v15 = [(RFFactItemDetailedNumberCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_4:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemDetailedNumberCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFFactItemDetailedNumberCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFFactItemDetailedNumberCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFFactItemDetailedNumberCardSection)initWithCoder:(id)a3
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
    [(RFFactItemDetailedNumberCardSection *)v5 setNumber:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_1:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_2:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_3:v12];

    v13 = [(SFCardSection *)v8 thumbnail];
    [(RFFactItemDetailedNumberCardSection *)v5 setThumbnail:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFFactItemDetailedNumberCardSection *)v5 setText_4:v14];

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

- (RFFactItemDetailedNumberCardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = RFFactItemDetailedNumberCardSection;
  v5 = [(SFCardSection *)&v32 init];
  if (v5)
  {
    v6 = [v4 number];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 number];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFFactItemDetailedNumberCardSection *)v5 setNumber:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_1:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_2:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [RFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:v20];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_3:v21];
    }

    v22 = [v4 thumbnail];

    if (v22)
    {
      v23 = [RFVisualProperty alloc];
      v24 = [v4 thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:v24];
      [(RFFactItemDetailedNumberCardSection *)v5 setThumbnail:v25];
    }

    v26 = [v4 text];

    if (v26)
    {
      v27 = [RFTextProperty alloc];
      v28 = [v4 text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:v28];
      [(RFFactItemDetailedNumberCardSection *)v5 setText_4:v29];
    }

    v30 = v5;
  }

  return v5;
}

@end