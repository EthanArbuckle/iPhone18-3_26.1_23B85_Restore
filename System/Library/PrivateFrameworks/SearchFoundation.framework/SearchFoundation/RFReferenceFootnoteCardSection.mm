@interface RFReferenceFootnoteCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFReferenceFootnoteCardSection)initWithCoder:(id)a3;
- (RFReferenceFootnoteCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFReferenceFootnoteCardSection

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = RFReferenceFootnoteCardSection;
  v3 = [(SFCardSection *)&v14 hash];
  v4 = [(RFReferenceFootnoteCardSection *)self text];
  v5 = [v4 hash];
  v6 = [(RFReferenceFootnoteCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFReferenceFootnoteCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFReferenceFootnoteCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(RFReferenceFootnoteCardSection *)self addTint];

  return v12 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(RFReferenceFootnoteCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = RFReferenceFootnoteCardSection;
      if ([(SFCardSection *)&v42 isEqual:v4])
      {
        v5 = v4;
        v6 = [(RFReferenceFootnoteCardSection *)self text];
        v7 = [(RFReferenceFootnoteCardSection *)v5 text];
        if ((v6 != 0) == (v7 == 0))
        {
          LOBYTE(v10) = 0;
LABEL_38:

          goto LABEL_39;
        }

        v8 = [(RFReferenceFootnoteCardSection *)self text];
        if (v8)
        {
          v9 = [(RFReferenceFootnoteCardSection *)self text];
          v40 = [(RFReferenceFootnoteCardSection *)v5 text];
          if (![v9 isEqual:?])
          {
            LOBYTE(v10) = 0;
            goto LABEL_36;
          }

          v39 = v9;
        }

        v41 = [(RFReferenceFootnoteCardSection *)self text];
        v11 = [(RFReferenceFootnoteCardSection *)v5 text];
        if ((v41 != 0) != (v11 == 0))
        {
          v12 = [(RFReferenceFootnoteCardSection *)self text];
          if (v12)
          {
            v13 = v12;
            v14 = [(RFReferenceFootnoteCardSection *)self text];
            [(RFReferenceFootnoteCardSection *)v5 text];
            v38 = v36 = v14;
            if (![v14 isEqual:?])
            {
              LOBYTE(v10) = 0;
              v19 = v38;
              goto LABEL_33;
            }

            v37 = v13;
          }

          else
          {
            v37 = 0;
          }

          v15 = [(RFReferenceFootnoteCardSection *)self text];
          v16 = [(RFReferenceFootnoteCardSection *)v5 text];
          if ((v15 != 0) != (v16 == 0))
          {
            v34 = v15;
            v35 = v16;
            v17 = [(RFReferenceFootnoteCardSection *)self text];
            if (v17)
            {
              v18 = [(RFReferenceFootnoteCardSection *)self text];
              v32 = [(RFReferenceFootnoteCardSection *)v5 text];
              v33 = v18;
              if (![v18 isEqual:?])
              {
                LOBYTE(v10) = 0;
                v13 = v37;
                v19 = v38;
                goto LABEL_31;
              }
            }

            v20 = [(RFReferenceFootnoteCardSection *)self text];
            v21 = v20 != 0;
            v22 = [(RFReferenceFootnoteCardSection *)v5 text];
            if (v21 == (v22 == 0))
            {

              LOBYTE(v10) = 0;
              v13 = v37;
              v19 = v38;
              if (!v17)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            v29 = v22;
            v30 = v20;
            [(RFReferenceFootnoteCardSection *)self text];
            v31 = v19 = v38;
            if (!v31 || (-[RFReferenceFootnoteCardSection text](self, "text"), v23 = objc_claimAutoreleasedReturnValue(), -[RFReferenceFootnoteCardSection text](v5, "text"), v24 = objc_claimAutoreleasedReturnValue(), v28 = v23, v25 = v23, v21 = v24, [v25 isEqual:v24]))
            {
              v27 = [(RFReferenceFootnoteCardSection *)self addTint];
              v10 = v27 ^ [(RFReferenceFootnoteCardSection *)v5 addTint]^ 1;
              if (!v31)
              {
                goto LABEL_42;
              }
            }

            else
            {
              LOBYTE(v10) = 0;
            }

LABEL_42:
            v13 = v37;
            if (!v17)
            {
LABEL_32:

              if (!v13)
              {
LABEL_34:

LABEL_35:
                v9 = v39;
                if (!v8)
                {
LABEL_37:

                  goto LABEL_38;
                }

LABEL_36:

                goto LABEL_37;
              }

LABEL_33:

              goto LABEL_34;
            }

LABEL_31:

            goto LABEL_32;
          }

          if (v37)
          {
          }
        }

        LOBYTE(v10) = 0;
        goto LABEL_35;
      }
    }

    LOBYTE(v10) = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RFReferenceFootnoteCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:a3];
  v5 = [(RFReferenceFootnoteCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFReferenceFootnoteCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFReferenceFootnoteCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_3:v10];

  v11 = [(RFReferenceFootnoteCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_4:v12];

  [v4 setAddTint:{-[RFReferenceFootnoteCardSection addTint](self, "addTint")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFReferenceFootnoteCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFReferenceFootnoteCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFReferenceFootnoteCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFReferenceFootnoteCardSection)initWithCoder:(id)a3
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
    [(RFReferenceFootnoteCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFReferenceFootnoteCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFReferenceFootnoteCardSection *)v5 setText_3:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFReferenceFootnoteCardSection *)v5 setText_4:v12];

    [(RFReferenceFootnoteCardSection *)v5 setAddTint:[(SFCardSection *)v8 addTint]];
    v13 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v13];

    v14 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v14];

    v15 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v15];

    v16 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v16];

    v17 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v17];

    v18 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v18];

    v19 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v19];

    v20 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v20];

    v21 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v21];

    v22 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v22];

    v23 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v23];

    v24 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v24];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v25 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v25];

    v26 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v26];

    v27 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v27];

    v28 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v28];

    v29 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v29];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v30 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v30];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v31 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v31];

    v32 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v32];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v33 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v33];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v34 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v34];

    v35 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v35];

    v36 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v36];

    v37 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v37];
  }

  return v5;
}

- (RFReferenceFootnoteCardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RFReferenceFootnoteCardSection;
  v5 = [(SFCardSection *)&v24 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFReferenceFootnoteCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFReferenceFootnoteCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFReferenceFootnoteCardSection *)v5 setText_3:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [RFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:v20];
      [(RFReferenceFootnoteCardSection *)v5 setText_4:v21];
    }

    if ([v4 addTint])
    {
      -[RFReferenceFootnoteCardSection setAddTint:](v5, "setAddTint:", [v4 addTint]);
    }

    v22 = v5;
  }

  return v5;
}

@end