@interface RFSimpleItemVisualElementCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSimpleItemVisualElementCardSection)initWithCoder:(id)a3;
- (RFSimpleItemVisualElementCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSimpleItemVisualElementCardSection

- (RFSimpleItemVisualElementCardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RFSimpleItemVisualElementCardSection;
  v5 = [(SFCardSection *)&v24 init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [RFVisualProperty alloc];
      v8 = [v4 image];
      v9 = [(RFVisualProperty *)v7 initWithProtobuf:v8];
      [(RFSimpleItemVisualElementCardSection *)v5 setImage:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSimpleItemVisualElementCardSection *)v5 setText_1:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFSimpleItemVisualElementCardSection *)v5 setText_2:v17];
    }

    v18 = [v4 footnote];

    if (v18)
    {
      v19 = [RFTextProperty alloc];
      v20 = [v4 footnote];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:v20];
      [(RFSimpleItemVisualElementCardSection *)v5 setFootnote:v21];
    }

    if ([v4 horizontal_alignment])
    {
      -[RFSimpleItemVisualElementCardSection setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v4 horizontal_alignment]);
    }

    if ([v4 attribution_style])
    {
      -[RFSimpleItemVisualElementCardSection setAttribution_style:](v5, "setAttribution_style:", [v4 attribution_style]);
    }

    v22 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = RFSimpleItemVisualElementCardSection;
  v3 = [(SFCardSection *)&v15 hash];
  v4 = [(RFSimpleItemVisualElementCardSection *)self image];
  v5 = [v4 hash];
  v6 = [(RFSimpleItemVisualElementCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFSimpleItemVisualElementCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFSimpleItemVisualElementCardSection *)self footnote];
  v11 = v9 ^ [v10 hash];
  v12 = v11 ^ [(RFSimpleItemVisualElementCardSection *)self horizontal_alignment]^ v3;
  v13 = [(RFSimpleItemVisualElementCardSection *)self attribution_style];

  return v12 ^ v13;
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
    if ([(RFSimpleItemVisualElementCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v43.receiver = self;
      v43.super_class = RFSimpleItemVisualElementCardSection;
      if ([(SFCardSection *)&v43 isEqual:v4])
      {
        v5 = v4;
        v6 = [(RFSimpleItemVisualElementCardSection *)self image];
        v7 = [(RFSimpleItemVisualElementCardSection *)v5 image];
        if ((v6 != 0) == (v7 == 0))
        {
          v10 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v8 = [(RFSimpleItemVisualElementCardSection *)self image];
        if (v8)
        {
          v9 = [(RFSimpleItemVisualElementCardSection *)self image];
          v41 = [(RFSimpleItemVisualElementCardSection *)v5 image];
          if (![v9 isEqual:?])
          {
            v10 = 0;
            goto LABEL_36;
          }

          v40 = v9;
        }

        v42 = [(RFSimpleItemVisualElementCardSection *)self text];
        v11 = [(RFSimpleItemVisualElementCardSection *)v5 text];
        if ((v42 != 0) != (v11 == 0))
        {
          v12 = [(RFSimpleItemVisualElementCardSection *)self text];
          if (v12)
          {
            v13 = v12;
            v14 = [(RFSimpleItemVisualElementCardSection *)self text];
            [(RFSimpleItemVisualElementCardSection *)v5 text];
            v39 = v37 = v14;
            if (![v14 isEqual:?])
            {
              v10 = 0;
              v19 = v39;
              goto LABEL_33;
            }

            v38 = v13;
          }

          else
          {
            v38 = 0;
          }

          v15 = [(RFSimpleItemVisualElementCardSection *)self text];
          v16 = [(RFSimpleItemVisualElementCardSection *)v5 text];
          if ((v15 != 0) != (v16 == 0))
          {
            v35 = v15;
            v36 = v16;
            v17 = [(RFSimpleItemVisualElementCardSection *)self text];
            if (v17)
            {
              v18 = [(RFSimpleItemVisualElementCardSection *)self text];
              v33 = [(RFSimpleItemVisualElementCardSection *)v5 text];
              v34 = v18;
              if (![v18 isEqual:?])
              {
                v10 = 0;
                v13 = v38;
                v19 = v39;
                goto LABEL_31;
              }
            }

            v20 = [(RFSimpleItemVisualElementCardSection *)self footnote];
            v21 = [(RFSimpleItemVisualElementCardSection *)v5 footnote];
            if ((v20 != 0) == (v21 == 0))
            {

              v10 = 0;
              v13 = v38;
              v19 = v39;
              if (!v17)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }

            v31 = v21;
            v32 = v20;
            [(RFSimpleItemVisualElementCardSection *)self footnote];
            v22 = v19 = v39;
            if (v22)
            {
              v28 = v17;
              v23 = [(RFSimpleItemVisualElementCardSection *)self footnote];
              [(RFSimpleItemVisualElementCardSection *)v5 footnote];
              v30 = v27 = v23;
              if (![v23 isEqual:?])
              {
                v10 = 0;
                v17 = v28;
                v26 = v30;
                goto LABEL_46;
              }

              v17 = v28;
            }

            v29 = [(RFSimpleItemVisualElementCardSection *)self horizontal_alignment];
            if (v29 == [(RFSimpleItemVisualElementCardSection *)v5 horizontal_alignment])
            {
              v25 = [(RFSimpleItemVisualElementCardSection *)self attribution_style];
              v10 = v25 == [(RFSimpleItemVisualElementCardSection *)v5 attribution_style];
            }

            else
            {
              v10 = 0;
            }

            v26 = v30;
            if (!v22)
            {
LABEL_47:

              v13 = v38;
              if (!v17)
              {
LABEL_32:

                if (!v13)
                {
LABEL_34:

LABEL_35:
                  v9 = v40;
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

LABEL_46:

            goto LABEL_47;
          }

          if (v38)
          {
          }
        }

        v10 = 0;
        goto LABEL_35;
      }
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RFSimpleItemVisualElementCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:a3];
  v5 = [(RFSimpleItemVisualElementCardSection *)self image];
  v6 = [v5 copy];
  [v4 setImage:v6];

  v7 = [(RFSimpleItemVisualElementCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_1:v8];

  v9 = [(RFSimpleItemVisualElementCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_2:v10];

  v11 = [(RFSimpleItemVisualElementCardSection *)self footnote];
  v12 = [v11 copy];
  [v4 setFootnote:v12];

  [v4 setHorizontal_alignment:{-[RFSimpleItemVisualElementCardSection horizontal_alignment](self, "horizontal_alignment")}];
  [v4 setAttribution_style:{-[RFSimpleItemVisualElementCardSection attribution_style](self, "attribution_style")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSimpleItemVisualElementCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSimpleItemVisualElementCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSimpleItemVisualElementCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSimpleItemVisualElementCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 image];
    [(RFSimpleItemVisualElementCardSection *)v5 setImage:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSimpleItemVisualElementCardSection *)v5 setText_1:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSimpleItemVisualElementCardSection *)v5 setText_2:v11];

    v12 = [(SFCardSection *)v8 footnote];
    [(RFSimpleItemVisualElementCardSection *)v5 setFootnote:v12];

    [(RFSimpleItemVisualElementCardSection *)v5 setHorizontal_alignment:[(SFCardSection *)v8 horizontal_alignment]];
    [(RFSimpleItemVisualElementCardSection *)v5 setAttribution_style:[(SFCardSection *)v8 attribution_style]];
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

@end