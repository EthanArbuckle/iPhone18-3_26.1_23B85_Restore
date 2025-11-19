@interface RFReferenceRichCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFReferenceRichCardSection)initWithCoder:(id)a3;
- (RFReferenceRichCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFReferenceRichCardSection

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = RFReferenceRichCardSection;
  v3 = [(SFCardSection *)&v12 hash];
  v4 = [(RFReferenceRichCardSection *)self text];
  v5 = [v4 hash];
  v6 = [(RFReferenceRichCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFReferenceRichCardSection *)self thumbnail];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(RFReferenceRichCardSection *)self addTint];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFReferenceRichCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = RFReferenceRichCardSection;
      if ([(SFCardSection *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFReferenceRichCardSection *)self text];
        v8 = [(RFReferenceRichCardSection *)v6 text];
        if ((v7 != 0) == (v8 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(RFReferenceRichCardSection *)self text];
        if (v9)
        {
          v10 = [(RFReferenceRichCardSection *)self text];
          v3 = [(RFReferenceRichCardSection *)v6 text];
          if (![v10 isEqual:v3])
          {
            LOBYTE(v11) = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(RFReferenceRichCardSection *)self text];
        v13 = [(RFReferenceRichCardSection *)v6 text];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_31;
        }

        v15 = [(RFReferenceRichCardSection *)self text];
        if (v15)
        {
          v27 = v12;
          v16 = [(RFReferenceRichCardSection *)self text];
          v29 = [(RFReferenceRichCardSection *)v6 text];
          v30 = v16;
          if (![v16 isEqual:?])
          {
            LOBYTE(v11) = 0;
            v12 = v27;
            goto LABEL_29;
          }

          v31 = v15;
          v32 = v3;
          v12 = v27;
        }

        else
        {
          v31 = 0;
          v32 = v3;
        }

        v17 = [(RFReferenceRichCardSection *)self thumbnail];
        v18 = [(RFReferenceRichCardSection *)v6 thumbnail];
        if ((v17 != 0) == (v18 == 0))
        {

          LOBYTE(v11) = 0;
          v15 = v31;
          v3 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = v18;
        v26 = v17;
        [(RFReferenceRichCardSection *)self thumbnail];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(RFReferenceRichCardSection *)self thumbnail];
          v23 = [(RFReferenceRichCardSection *)v6 thumbnail];
          v24 = v19;
          v20 = [v19 isEqual:?];
          v3 = v32;
          if (!v20)
          {
            LOBYTE(v11) = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              v10 = v33;
              if (!v9)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          v3 = v32;
        }

        v21 = [(RFReferenceRichCardSection *)self addTint];
        v11 = v21 ^ [(RFReferenceRichCardSection *)v6 addTint]^ 1;
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RFReferenceRichCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:a3];
  v5 = [(RFReferenceRichCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFReferenceRichCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFReferenceRichCardSection *)self thumbnail];
  v10 = [v9 copy];
  [v4 setThumbnail:v10];

  [v4 setAddTint:{-[RFReferenceRichCardSection addTint](self, "addTint")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFReferenceRichCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFReferenceRichCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFReferenceRichCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFReferenceRichCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFReferenceRichCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFReferenceRichCardSection)initWithCoder:(id)a3
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
    [(RFReferenceRichCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFReferenceRichCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 thumbnail];
    [(RFReferenceRichCardSection *)v5 setThumbnail:v11];

    [(RFReferenceRichCardSection *)v5 setAddTint:[(SFCardSection *)v8 addTint]];
    v12 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v12];

    v13 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v13];

    v14 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v14];

    v15 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v15];

    v16 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v16];

    v17 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v17];

    v18 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v18];

    v19 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v19];

    v20 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v20];

    v21 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v21];

    v22 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v22];

    v23 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v23];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v24 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v24];

    v25 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v25];

    v26 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v26];

    v27 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v27];

    v28 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v28];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v29 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v29];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v30 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v30];

    v31 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v31];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v32 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v32];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v33 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v33];

    v34 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v34];

    v35 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v35];

    v36 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v36];
  }

  return v5;
}

- (RFReferenceRichCardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RFReferenceRichCardSection;
  v5 = [(SFCardSection *)&v20 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFReferenceRichCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFReferenceRichCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 thumbnail];

    if (v14)
    {
      v15 = [RFVisualProperty alloc];
      v16 = [v4 thumbnail];
      v17 = [(RFVisualProperty *)v15 initWithProtobuf:v16];
      [(RFReferenceRichCardSection *)v5 setThumbnail:v17];
    }

    if ([v4 addTint])
    {
      -[RFReferenceRichCardSection setAddTint:](v5, "setAddTint:", [v4 addTint]);
    }

    v18 = v5;
  }

  return v5;
}

@end