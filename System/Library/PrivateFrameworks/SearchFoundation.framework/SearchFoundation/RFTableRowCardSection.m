@interface RFTableRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableRowCardSection)initWithCoder:(id)a3;
- (RFTableRowCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTableRowCardSection

- (RFTableRowCardSection)initWithProtobuf:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = RFTableRowCardSection;
  v5 = [(SFCardSection *)&v33 init];
  if (v5)
  {
    v6 = [v4 cells];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v4 cells];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFTableCell alloc] initWithProtobuf:*(*(&v29 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v10);
    }

    [(RFTableRowCardSection *)v5 setCells:v7];
    if ([v4 vertical_alignment])
    {
      -[RFTableRowCardSection setVertical_alignment:](v5, "setVertical_alignment:", [v4 vertical_alignment]);
    }

    if ([v4 scale_to_fit])
    {
      -[RFTableRowCardSection setScale_to_fit:](v5, "setScale_to_fit:", [v4 scale_to_fit]);
    }

    v14 = [v4 compact_cells];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v4 compact_cells];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[RFTableCell alloc] initWithProtobuf:*(*(&v25 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v18);
    }

    [(RFTableRowCardSection *)v5 setCompact_cells:v15];
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = RFTableRowCardSection;
  v3 = [(SFCardSection *)&v11 hash];
  v4 = [(RFTableRowCardSection *)self cells];
  v5 = [v4 hash];
  v6 = v5 ^ [(RFTableRowCardSection *)self vertical_alignment];
  v7 = v6 ^ [(RFTableRowCardSection *)self scale_to_fit];
  v8 = [(RFTableRowCardSection *)self compact_cells];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFTableRowCardSection *)v6 isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = RFTableRowCardSection;
      if ([(SFCardSection *)&v23 isEqual:v6])
      {
        v7 = v6;
        v8 = [(RFTableRowCardSection *)self cells];
        v9 = [(RFTableRowCardSection *)v7 cells];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        v10 = [(RFTableRowCardSection *)self cells];
        if (!v10 || (-[RFTableRowCardSection cells](self, "cells"), v3 = objc_claimAutoreleasedReturnValue(), -[RFTableRowCardSection cells](v7, "cells"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(RFTableRowCardSection *)self vertical_alignment];
          if (v12 == [(RFTableRowCardSection *)v7 vertical_alignment])
          {
            v13 = [(RFTableRowCardSection *)self scale_to_fit];
            if (v13 == [(RFTableRowCardSection *)v7 scale_to_fit])
            {
              v14 = [(RFTableRowCardSection *)self compact_cells];
              v15 = [(RFTableRowCardSection *)v7 compact_cells];
              if ((v14 != 0) != (v15 == 0))
              {
                v21 = v14;
                v22 = v15;
                v16 = [(RFTableRowCardSection *)self compact_cells];
                if (v16)
                {
                  v20 = v16;
                  v17 = [(RFTableRowCardSection *)self compact_cells];
                  v18 = [(RFTableRowCardSection *)v7 compact_cells];
                  v11 = [v17 isEqual:v18];

                  if (!v10)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {

                  v11 = 1;
                  if (!v10)
                  {
                    goto LABEL_20;
                  }
                }

                goto LABEL_19;
              }
            }
          }

          v11 = 0;
          if (!v10)
          {
LABEL_20:

            goto LABEL_21;
          }
        }

        else
        {
          v11 = 0;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RFTableRowCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:a3];
  v5 = [(RFTableRowCardSection *)self cells];
  v6 = [v5 copy];
  [v4 setCells:v6];

  [v4 setVertical_alignment:{-[RFTableRowCardSection vertical_alignment](self, "vertical_alignment")}];
  [v4 setScale_to_fit:{-[RFTableRowCardSection scale_to_fit](self, "scale_to_fit")}];
  v7 = [(RFTableRowCardSection *)self compact_cells];
  v8 = [v7 copy];
  [v4 setCompact_cells:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableRowCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableRowCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFTableRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFTableRowCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 cells];
    [(RFTableRowCardSection *)v5 setCells:v9];

    [(RFTableRowCardSection *)v5 setVertical_alignment:[(SFCardSection *)v8 vertical_alignment]];
    [(RFTableRowCardSection *)v5 setScale_to_fit:[(SFCardSection *)v8 scale_to_fit]];
    v10 = [(SFCardSection *)v8 compact_cells];
    [(RFTableRowCardSection *)v5 setCompact_cells:v10];

    v11 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v11];

    v12 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v12];

    v13 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v13];

    v14 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v14];

    v15 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v15];

    v16 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v16];

    v17 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v17];

    v18 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v18];

    v19 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v19];

    v20 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v20];

    v21 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v21];

    v22 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v22];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v23 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v23];

    v24 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v24];

    v25 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v25];

    v26 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v26];

    v27 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v27];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v28 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v28];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v29 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v29];

    v30 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v30];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v31 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v31];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v32 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v32];

    v33 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v33];

    v34 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v34];

    v35 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v35];
  }

  return v5;
}

@end