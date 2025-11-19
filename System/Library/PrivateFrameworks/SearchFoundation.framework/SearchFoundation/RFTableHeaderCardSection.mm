@interface RFTableHeaderCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableHeaderCardSection)initWithCoder:(id)a3;
- (RFTableHeaderCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTableHeaderCardSection

- (RFTableHeaderCardSection)initWithProtobuf:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = RFTableHeaderCardSection;
  v5 = [(SFCardSection *)&v46 init];
  if (v5)
  {
    v6 = [v4 columns];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = [v4 columns];
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFTableColumnDefinition alloc] initWithProtobuf:*(*(&v42 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v10);
    }

    [(RFTableHeaderCardSection *)v5 setColumns:v7];
    v14 = [v4 cells];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [v4 cells];
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[RFTableCell alloc] initWithProtobuf:*(*(&v38 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v18);
    }

    [(RFTableHeaderCardSection *)v5 setCells:v15];
    v22 = [v4 compact_cells];
    v33 = v5;
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = [v4 compact_cells];
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[RFTableCell alloc] initWithProtobuf:*(*(&v34 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v26);
    }

    v5 = v33;
    [(RFTableHeaderCardSection *)v33 setCompact_cells:v23];
    if ([v4 should_repeat_header_in_flow_layout])
    {
      -[RFTableHeaderCardSection setShould_repeat_header_in_flow_layout:](v33, "setShould_repeat_header_in_flow_layout:", [v4 should_repeat_header_in_flow_layout]);
    }

    if ([v4 vertical_alignment])
    {
      -[RFTableHeaderCardSection setVertical_alignment:](v33, "setVertical_alignment:", [v4 vertical_alignment]);
    }

    v30 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = RFTableHeaderCardSection;
  v3 = [(SFCardSection *)&v13 hash];
  v4 = [(RFTableHeaderCardSection *)self columns];
  v5 = [v4 hash];
  v6 = [(RFTableHeaderCardSection *)self cells];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFTableHeaderCardSection *)self compact_cells];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(RFTableHeaderCardSection *)self should_repeat_header_in_flow_layout];
  v11 = v10 ^ [(RFTableHeaderCardSection *)self vertical_alignment];

  return v11 ^ v3;
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
    if ([(RFTableHeaderCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v37.receiver = self;
      v37.super_class = RFTableHeaderCardSection;
      if ([(SFCardSection *)&v37 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFTableHeaderCardSection *)self columns];
        v8 = [(RFTableHeaderCardSection *)v6 columns];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        v9 = [(RFTableHeaderCardSection *)self columns];
        if (v9)
        {
          v10 = [(RFTableHeaderCardSection *)self columns];
          v3 = [(RFTableHeaderCardSection *)v6 columns];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v36 = v10;
        }

        v12 = [(RFTableHeaderCardSection *)self cells];
        v13 = [(RFTableHeaderCardSection *)v6 cells];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_34;
        }

        v15 = [(RFTableHeaderCardSection *)self cells];
        if (v15)
        {
          v29 = v14;
          v16 = v12;
          v17 = [(RFTableHeaderCardSection *)self cells];
          v31 = [(RFTableHeaderCardSection *)v6 cells];
          v32 = v17;
          if (![v17 isEqual:?])
          {
            v11 = 0;
            v12 = v16;
            v14 = v29;
            goto LABEL_32;
          }

          v33 = v15;
          v34 = v3;
          v12 = v16;
          v14 = v29;
        }

        else
        {
          v33 = 0;
          v34 = v3;
        }

        v18 = [(RFTableHeaderCardSection *)self compact_cells];
        v19 = [(RFTableHeaderCardSection *)v6 compact_cells];
        if ((v18 != 0) == (v19 == 0))
        {

          v11 = 0;
          v15 = v33;
          v3 = v34;
          if (!v33)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v27 = v19;
        v28 = v18;
        [(RFTableHeaderCardSection *)self compact_cells];
        v30 = v15 = v33;
        if (v30)
        {
          v20 = [(RFTableHeaderCardSection *)self compact_cells];
          [(RFTableHeaderCardSection *)v6 compact_cells];
          v26 = v25 = v20;
          v21 = [v20 isEqual:?];
          v3 = v34;
          if (!v21)
          {
            v11 = 0;
            v22 = v26;
            goto LABEL_30;
          }
        }

        else
        {
          v3 = v34;
        }

        v35 = [(RFTableHeaderCardSection *)self should_repeat_header_in_flow_layout];
        if (v35 == [(RFTableHeaderCardSection *)v6 should_repeat_header_in_flow_layout])
        {
          v23 = [(RFTableHeaderCardSection *)self vertical_alignment];
          v11 = v23 == [(RFTableHeaderCardSection *)v6 vertical_alignment];
        }

        else
        {
          v11 = 0;
        }

        v22 = v26;
        if (!v30)
        {
LABEL_31:

          if (!v33)
          {
LABEL_33:

LABEL_34:
            v10 = v36;
            if (!v9)
            {
LABEL_36:

              goto LABEL_37;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_32:

          goto LABEL_33;
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RFTableHeaderCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:a3];
  v5 = [(RFTableHeaderCardSection *)self columns];
  v6 = [v5 copy];
  [v4 setColumns:v6];

  v7 = [(RFTableHeaderCardSection *)self cells];
  v8 = [v7 copy];
  [v4 setCells:v8];

  v9 = [(RFTableHeaderCardSection *)self compact_cells];
  v10 = [v9 copy];
  [v4 setCompact_cells:v10];

  [v4 setShould_repeat_header_in_flow_layout:{-[RFTableHeaderCardSection should_repeat_header_in_flow_layout](self, "should_repeat_header_in_flow_layout")}];
  [v4 setVertical_alignment:{-[RFTableHeaderCardSection vertical_alignment](self, "vertical_alignment")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableHeaderCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableHeaderCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFTableHeaderCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFTableHeaderCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 columns];
    [(RFTableHeaderCardSection *)v5 setColumns:v9];

    v10 = [(SFCardSection *)v8 cells];
    [(RFTableHeaderCardSection *)v5 setCells:v10];

    v11 = [(SFCardSection *)v8 compact_cells];
    [(RFTableHeaderCardSection *)v5 setCompact_cells:v11];

    [(RFTableHeaderCardSection *)v5 setShould_repeat_header_in_flow_layout:[(SFCardSection *)v8 should_repeat_header_in_flow_layout]];
    [(RFTableHeaderCardSection *)v5 setVertical_alignment:[(SFCardSection *)v8 vertical_alignment]];
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

@end