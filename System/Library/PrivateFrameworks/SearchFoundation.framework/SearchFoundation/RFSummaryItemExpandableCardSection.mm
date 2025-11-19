@interface RFSummaryItemExpandableCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemExpandableCardSection)initWithCoder:(id)a3;
- (RFSummaryItemExpandableCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemExpandableCardSection

- (RFSummaryItemExpandableCardSection)initWithProtobuf:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = RFSummaryItemExpandableCardSection;
  v5 = [(SFCardSection *)&v41 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemExpandableCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemExpandableCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 attribution];

    if (v14)
    {
      v15 = [RFSummaryItemAttribution alloc];
      v16 = [v4 attribution];
      v17 = [(RFSummaryItemAttribution *)v15 initWithProtobuf:v16];
      [(RFSummaryItemExpandableCardSection *)v5 setAttribution:v17];
    }

    if ([v4 attribution_ignores_expansion])
    {
      -[RFSummaryItemExpandableCardSection setAttribution_ignores_expansion:](v5, "setAttribution_ignores_expansion:", [v4 attribution_ignores_expansion]);
    }

    v18 = [v4 expanding_component_contents];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = [v4 expanding:0 component:?contents];
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[RFSummaryItemExpandableContent alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v22);
    }

    [(RFSummaryItemExpandableCardSection *)v5 setExpanding_component_content:v19];
    v26 = [v4 thumbnail];

    if (v26)
    {
      v27 = [RFVisualProperty alloc];
      v28 = [v4 thumbnail];
      v29 = [(RFVisualProperty *)v27 initWithProtobuf:v28];
      [(RFSummaryItemExpandableCardSection *)v5 setThumbnail:v29];
    }

    v30 = [v4 attribution_caveat];

    if (v30)
    {
      v31 = [RFTextProperty alloc];
      v32 = [v4 attribution_caveat];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:v32];
      [(RFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v18.receiver = self;
  v18.super_class = RFSummaryItemExpandableCardSection;
  v3 = [(SFCardSection *)&v18 hash];
  v4 = [(RFSummaryItemExpandableCardSection *)self text];
  v5 = [v4 hash];
  v6 = [(RFSummaryItemExpandableCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFSummaryItemExpandableCardSection *)self attribution];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(RFSummaryItemExpandableCardSection *)self attribution_ignores_expansion];
  v11 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
  v12 = v10 ^ [v11 hash] ^ v3;
  v13 = [(RFSummaryItemExpandableCardSection *)self thumbnail];
  v14 = [v13 hash];
  v15 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
  v16 = v14 ^ [v15 hash];

  return v12 ^ v16;
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
    if ([(RFSummaryItemExpandableCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v63.receiver = self;
      v63.super_class = RFSummaryItemExpandableCardSection;
      if ([(SFCardSection *)&v63 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFSummaryItemExpandableCardSection *)self text];
        v8 = [(RFSummaryItemExpandableCardSection *)v6 text];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v9 = [(RFSummaryItemExpandableCardSection *)self text];
        if (v9)
        {
          v10 = [(RFSummaryItemExpandableCardSection *)self text];
          v62 = [(RFSummaryItemExpandableCardSection *)v6 text];
          if (![v10 isEqual:?])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v59 = v10;
        }

        v61 = [(RFSummaryItemExpandableCardSection *)self text];
        v60 = [(RFSummaryItemExpandableCardSection *)v6 text];
        if ((v61 != 0) == (v60 == 0))
        {
          goto LABEL_36;
        }

        v12 = [(RFSummaryItemExpandableCardSection *)self text];
        if (v12)
        {
          v13 = [(RFSummaryItemExpandableCardSection *)self text];
          v3 = [(RFSummaryItemExpandableCardSection *)v6 text];
          if (([v13 isEqual:v3] & 1) == 0)
          {

LABEL_35:
LABEL_36:

            v11 = 0;
            goto LABEL_37;
          }

          v56 = v13;
          v58 = v8;
          v14 = v62;
          v15 = v12;
        }

        else
        {
          v58 = v8;
          v14 = v62;
          v15 = 0;
        }

        v62 = v14;
        v16 = [(RFSummaryItemExpandableCardSection *)self attribution];
        v17 = [(RFSummaryItemExpandableCardSection *)v6 attribution];
        v12 = v15;
        v8 = v58;
        v18 = v3;
        if ((v16 != 0) != (v17 == 0))
        {
          v55 = v17;
          v57 = [(RFSummaryItemExpandableCardSection *)self attribution];
          if (v57)
          {
            v19 = [(RFSummaryItemExpandableCardSection *)self attribution];
            v52 = [(RFSummaryItemExpandableCardSection *)v6 attribution];
            v53 = v19;
            v20 = [v19 isEqual:?];
            v21 = v16;
            if (!v20)
            {
              v11 = 0;
              v28 = v57;
              v18 = v3;
              v22 = v21;
              goto LABEL_62;
            }

            v54 = v12;
            v18 = v3;
            v22 = v16;
          }

          else
          {
            v54 = v12;
            v22 = v16;
          }

          v23 = [(RFSummaryItemExpandableCardSection *)self attribution_ignores_expansion];
          if (v23 != [(RFSummaryItemExpandableCardSection *)v6 attribution_ignores_expansion])
          {
            v11 = 0;
            v12 = v54;
            goto LABEL_61;
          }

          v51 = v22;
          v24 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
          v25 = [(RFSummaryItemExpandableCardSection *)v6 expanding_component_content];
          if ((v24 != 0) != (v25 == 0))
          {
            v49 = v24;
            v50 = v25;
            v26 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
            if (v26)
            {
              v27 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
              v46 = [(RFSummaryItemExpandableCardSection *)v6 expanding_component_content];
              v47 = v27;
              if (![v27 isEqual:?])
              {
                v11 = 0;
                v34 = v26;
                v12 = v54;
                goto LABEL_59;
              }

              v48 = v26;
            }

            else
            {
              v48 = 0;
            }

            v30 = [(RFSummaryItemExpandableCardSection *)self thumbnail];
            v31 = [(RFSummaryItemExpandableCardSection *)v6 thumbnail];
            if ((v30 != 0) == (v31 == 0))
            {

              v11 = 0;
              v12 = v54;
              goto LABEL_58;
            }

            v44 = v30;
            v45 = v31;
            [(RFSummaryItemExpandableCardSection *)self thumbnail];
            v32 = v12 = v54;
            if (v32 && (-[RFSummaryItemExpandableCardSection thumbnail](self, "thumbnail"), v33 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemExpandableCardSection thumbnail](v6, "thumbnail"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v33, ![v33 isEqual:v42]))
            {
              v11 = 0;
            }

            else
            {
              v35 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
              v36 = [(RFSummaryItemExpandableCardSection *)v6 attribution_caveat];
              if ((v35 != 0) == (v36 == 0))
              {

                v11 = 0;
              }

              else
              {
                v40 = v35;
                v41 = v36;
                v39 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
                if (v39)
                {
                  v37 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
                  v38 = [(RFSummaryItemExpandableCardSection *)v6 attribution_caveat];
                  v11 = [v37 isEqual:v38];
                }

                else
                {

                  v11 = 1;
                }
              }

              v12 = v54;
              if (!v32)
              {
                goto LABEL_57;
              }
            }

LABEL_57:
LABEL_58:
            v34 = v48;
            if (!v48)
            {
LABEL_60:

              v22 = v51;
LABEL_61:
              v28 = v57;
              if (!v57)
              {
LABEL_63:

                if (v12)
                {
                }

LABEL_37:
                v10 = v59;
                if (!v9)
                {
LABEL_39:

                  goto LABEL_40;
                }

LABEL_38:

                goto LABEL_39;
              }

LABEL_62:

              goto LABEL_63;
            }

LABEL_59:

            goto LABEL_60;
          }

          v12 = v54;
          if (v57)
          {
          }

          v17 = v55;
        }

        if (v12)
        {
        }

        goto LABEL_35;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = RFSummaryItemExpandableCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:a3];
  v5 = [(RFSummaryItemExpandableCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFSummaryItemExpandableCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFSummaryItemExpandableCardSection *)self attribution];
  v10 = [v9 copy];
  [v4 setAttribution:v10];

  [v4 setAttribution_ignores_expansion:{-[RFSummaryItemExpandableCardSection attribution_ignores_expansion](self, "attribution_ignores_expansion")}];
  v11 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
  v12 = [v11 copy];
  [v4 setExpanding_component_content:v12];

  v13 = [(RFSummaryItemExpandableCardSection *)self thumbnail];
  v14 = [v13 copy];
  [v4 setThumbnail:v14];

  v15 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
  v16 = [v15 copy];
  [v4 setAttribution_caveat:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemExpandableCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemExpandableCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemExpandableCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSummaryItemExpandableCardSection)initWithCoder:(id)a3
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
    [(RFSummaryItemExpandableCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSummaryItemExpandableCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 attribution];
    [(RFSummaryItemExpandableCardSection *)v5 setAttribution:v11];

    [(RFSummaryItemExpandableCardSection *)v5 setAttribution_ignores_expansion:[(SFCardSection *)v8 attribution_ignores_expansion]];
    v12 = [(SFCardSection *)v8 expanding_component_content];
    [(RFSummaryItemExpandableCardSection *)v5 setExpanding_component_content:v12];

    v13 = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemExpandableCardSection *)v5 setThumbnail:v13];

    v14 = [(SFCardSection *)v8 attribution_caveat];
    [(RFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:v14];

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