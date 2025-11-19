@interface RFSummaryItemSwitchV2CardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemSwitchV2CardSection)initWithCoder:(id)a3;
- (RFSummaryItemSwitchV2CardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemSwitchV2CardSection

- (unint64_t)hash
{
  v16.receiver = self;
  v16.super_class = RFSummaryItemSwitchV2CardSection;
  v3 = [(SFCardSection *)&v16 hash];
  v4 = [(RFSummaryItemSwitchV2CardSection *)self is_on];
  v5 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v6 = v4 ^ [v5 hash];
  v7 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v8 = v6 ^ [v7 hash];
  v9 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v10 = v3 ^ v8 ^ [v9 hash];
  v11 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v12 = [v11 hash];
  v13 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    if ([(RFSummaryItemSwitchV2CardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v51.receiver = self;
      v51.super_class = RFSummaryItemSwitchV2CardSection;
      if ([(SFCardSection *)&v51 isEqual:v4])
      {
        v5 = v4;
        v6 = [(RFSummaryItemSwitchV2CardSection *)self is_on];
        if (v6 != [(RFSummaryItemSwitchV2CardSection *)v5 is_on])
        {
          v7 = 0;
LABEL_54:

          goto LABEL_55;
        }

        v8 = [(RFSummaryItemSwitchV2CardSection *)self text];
        v9 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
        if ((v8 != 0) == (v9 == 0))
        {
          v7 = 0;
LABEL_53:

          goto LABEL_54;
        }

        v10 = [(RFSummaryItemSwitchV2CardSection *)self text];
        if (v10)
        {
          v11 = [(RFSummaryItemSwitchV2CardSection *)self text];
          v49 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
          if (![v11 isEqual:?])
          {
            v7 = 0;
            goto LABEL_51;
          }

          v48 = v11;
        }

        v50 = [(RFSummaryItemSwitchV2CardSection *)self text];
        v12 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
        if ((v50 != 0) != (v12 == 0))
        {
          v13 = [(RFSummaryItemSwitchV2CardSection *)self text];
          if (v13)
          {
            v14 = v13;
            v15 = [(RFSummaryItemSwitchV2CardSection *)self text];
            [(RFSummaryItemSwitchV2CardSection *)v5 text];
            v46 = v45 = v15;
            if (![v15 isEqual:?])
            {
              v7 = 0;
              v20 = v14;
              v21 = v46;
              goto LABEL_48;
            }

            v47 = v14;
          }

          else
          {
            v47 = 0;
          }

          v16 = [(RFSummaryItemSwitchV2CardSection *)self text];
          v17 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
          if ((v16 != 0) != (v17 == 0))
          {
            v43 = v16;
            v44 = v17;
            v18 = [(RFSummaryItemSwitchV2CardSection *)self text];
            if (v18)
            {
              v19 = [(RFSummaryItemSwitchV2CardSection *)self text];
              v40 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
              v41 = v19;
              if (![v19 isEqual:?])
              {
                v7 = 0;
                v21 = v46;
                v20 = v47;
                goto LABEL_46;
              }

              v42 = v18;
            }

            else
            {
              v42 = 0;
            }

            v22 = [(RFSummaryItemSwitchV2CardSection *)self text];
            v23 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
            if ((v22 != 0) != (v23 == 0))
            {
              v39 = v23;
              [(RFSummaryItemSwitchV2CardSection *)self text];
              v38 = v21 = v46;
              if (v38)
              {
                v34 = v22;
                v24 = [(RFSummaryItemSwitchV2CardSection *)self text];
                v36 = [(RFSummaryItemSwitchV2CardSection *)v5 text];
                v37 = v24;
                if (![v24 isEqual:?])
                {
                  v7 = 0;
                  v28 = v38;
                  v22 = v34;
                  goto LABEL_44;
                }

                v22 = v34;
              }

              v25 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
              v26 = [(RFSummaryItemSwitchV2CardSection *)v5 thumbnail];
              if ((v25 != 0) == (v26 == 0))
              {

                v7 = 0;
                v21 = v46;
                v28 = v38;
                if (!v38)
                {
LABEL_45:

                  v18 = v42;
                  v20 = v47;
                  if (!v42)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_46;
                }
              }

              else
              {
                v33 = v26;
                v35 = v25;
                v27 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
                v21 = v46;
                v28 = v38;
                if (v27)
                {
                  v32 = v27;
                  v31 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
                  v30 = [(RFSummaryItemSwitchV2CardSection *)v5 thumbnail];
                  v7 = [v31 isEqual:v30];

                  if (!v38)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {

                  v7 = 1;
                  if (!v38)
                  {
                    goto LABEL_45;
                  }
                }
              }

LABEL_44:

              goto LABEL_45;
            }

            v7 = 0;
            v21 = v46;
            v20 = v47;
            v18 = v42;
            if (!v42)
            {
LABEL_47:

              if (!v20)
              {
LABEL_49:

LABEL_50:
                v11 = v48;
                if (!v10)
                {
LABEL_52:

                  goto LABEL_53;
                }

LABEL_51:

                goto LABEL_52;
              }

LABEL_48:

              goto LABEL_49;
            }

LABEL_46:

            goto LABEL_47;
          }

          if (v47)
          {
          }
        }

        v7 = 0;
        goto LABEL_50;
      }
    }

    v7 = 0;
  }

LABEL_55:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RFSummaryItemSwitchV2CardSection;
  v4 = [(SFCardSection *)&v16 copyWithZone:a3];
  [v4 setIs_on:{-[RFSummaryItemSwitchV2CardSection is_on](self, "is_on")}];
  v5 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_3:v10];

  v11 = [(RFSummaryItemSwitchV2CardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_4:v12];

  v13 = [(RFSummaryItemSwitchV2CardSection *)self thumbnail];
  v14 = [v13 copy];
  [v4 setThumbnail:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemSwitchV2CardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemSwitchV2CardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemSwitchV2CardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSummaryItemSwitchV2CardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RFSummaryItemSwitchV2CardSection *)v5 setIs_on:[(SFCardSection *)v8 is_on]];
    v9 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_3:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFSummaryItemSwitchV2CardSection *)v5 setText_4:v12];

    v13 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v13];

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

- (RFSummaryItemSwitchV2CardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = RFSummaryItemSwitchV2CardSection;
  v5 = [(SFCardSection *)&v28 init];
  if (v5)
  {
    if ([v4 is_on])
    {
      -[RFSummaryItemSwitchV2CardSection setIs_on:](v5, "setIs_on:", [v4 is_on]);
    }

    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_3:v17];
    }

    v18 = [v4 text];

    if (v18)
    {
      v19 = [RFTextProperty alloc];
      v20 = [v4 text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:v20];
      [(RFSummaryItemSwitchV2CardSection *)v5 setText_4:v21];
    }

    v22 = [v4 thumbnail];

    if (v22)
    {
      v23 = [RFVisualProperty alloc];
      v24 = [v4 thumbnail];
      v25 = [(RFVisualProperty *)v23 initWithProtobuf:v24];
      [(RFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v25];
    }

    v26 = v5;
  }

  return v5;
}

@end