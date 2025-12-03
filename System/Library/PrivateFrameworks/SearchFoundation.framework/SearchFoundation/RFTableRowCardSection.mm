@interface RFTableRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableRowCardSection)initWithCoder:(id)coder;
- (RFTableRowCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTableRowCardSection

- (RFTableRowCardSection)initWithProtobuf:(id)protobuf
{
  v36 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v33.receiver = self;
  v33.super_class = RFTableRowCardSection;
  v5 = [(SFCardSection *)&v33 init];
  if (v5)
  {
    cells = [protobufCopy cells];
    if (cells)
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
    cells2 = [protobufCopy cells];
    v9 = [cells2 countByEnumeratingWithState:&v29 objects:v35 count:16];
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
            objc_enumerationMutation(cells2);
          }

          v13 = [[RFTableCell alloc] initWithProtobuf:*(*(&v29 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [cells2 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v10);
    }

    [(RFTableRowCardSection *)v5 setCells:v7];
    if ([protobufCopy vertical_alignment])
    {
      -[RFTableRowCardSection setVertical_alignment:](v5, "setVertical_alignment:", [protobufCopy vertical_alignment]);
    }

    if ([protobufCopy scale_to_fit])
    {
      -[RFTableRowCardSection setScale_to_fit:](v5, "setScale_to_fit:", [protobufCopy scale_to_fit]);
    }

    compact_cells = [protobufCopy compact_cells];
    if (compact_cells)
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
    compact_cells2 = [protobufCopy compact_cells];
    v17 = [compact_cells2 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
            objc_enumerationMutation(compact_cells2);
          }

          v21 = [[RFTableCell alloc] initWithProtobuf:*(*(&v25 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [compact_cells2 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
  cells = [(RFTableRowCardSection *)self cells];
  v5 = [cells hash];
  v6 = v5 ^ [(RFTableRowCardSection *)self vertical_alignment];
  v7 = v6 ^ [(RFTableRowCardSection *)self scale_to_fit];
  compact_cells = [(RFTableRowCardSection *)self compact_cells];
  v9 = v7 ^ [compact_cells hash];

  return v9 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFTableRowCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = RFTableRowCardSection;
      if ([(SFCardSection *)&v23 isEqual:equalCopy])
      {
        v7 = equalCopy;
        cells = [(RFTableRowCardSection *)self cells];
        cells2 = [(RFTableRowCardSection *)v7 cells];
        if ((cells != 0) == (cells2 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        cells3 = [(RFTableRowCardSection *)self cells];
        if (!cells3 || (-[RFTableRowCardSection cells](self, "cells"), v3 = objc_claimAutoreleasedReturnValue(), -[RFTableRowCardSection cells](v7, "cells"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          vertical_alignment = [(RFTableRowCardSection *)self vertical_alignment];
          if (vertical_alignment == [(RFTableRowCardSection *)v7 vertical_alignment])
          {
            scale_to_fit = [(RFTableRowCardSection *)self scale_to_fit];
            if (scale_to_fit == [(RFTableRowCardSection *)v7 scale_to_fit])
            {
              compact_cells = [(RFTableRowCardSection *)self compact_cells];
              compact_cells2 = [(RFTableRowCardSection *)v7 compact_cells];
              if ((compact_cells != 0) != (compact_cells2 == 0))
              {
                v21 = compact_cells;
                v22 = compact_cells2;
                compact_cells3 = [(RFTableRowCardSection *)self compact_cells];
                if (compact_cells3)
                {
                  v20 = compact_cells3;
                  compact_cells4 = [(RFTableRowCardSection *)self compact_cells];
                  compact_cells5 = [(RFTableRowCardSection *)v7 compact_cells];
                  v11 = [compact_cells4 isEqual:compact_cells5];

                  if (!cells3)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {

                  v11 = 1;
                  if (!cells3)
                  {
                    goto LABEL_20;
                  }
                }

                goto LABEL_19;
              }
            }
          }

          v11 = 0;
          if (!cells3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RFTableRowCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:zone];
  cells = [(RFTableRowCardSection *)self cells];
  v6 = [cells copy];
  [v4 setCells:v6];

  [v4 setVertical_alignment:{-[RFTableRowCardSection vertical_alignment](self, "vertical_alignment")}];
  [v4 setScale_to_fit:{-[RFTableRowCardSection scale_to_fit](self, "scale_to_fit")}];
  compact_cells = [(RFTableRowCardSection *)self compact_cells];
  v8 = [compact_cells copy];
  [v4 setCompact_cells:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTableRowCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableRowCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTableRowCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFTableRowCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFTableRowCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cells = [(SFCardSection *)v8 cells];
    [(RFTableRowCardSection *)v5 setCells:cells];

    [(RFTableRowCardSection *)v5 setVertical_alignment:[(SFCardSection *)v8 vertical_alignment]];
    [(RFTableRowCardSection *)v5 setScale_to_fit:[(SFCardSection *)v8 scale_to_fit]];
    compact_cells = [(SFCardSection *)v8 compact_cells];
    [(RFTableRowCardSection *)v5 setCompact_cells:compact_cells];

    nextCard = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:nextCard];

    commands = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:commands];

    parameterKeyPaths = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:parameterKeyPaths];

    cardSectionId = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:resultIdentifier];

    userReportRequest = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:userReportRequest];

    command = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:command];

    previewCommand = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:previewCommand];

    previewButtonItems = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:previewButtonItems];

    cardSectionDetail = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:cardSectionDetail];

    previewButtonItemsTitle = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle];

    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    referencedCommands = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:referencedCommands];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    appEntityAnnotation = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:appEntityAnnotation];

    emphasisSubjectId = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    secondaryCommand = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:secondaryCommand];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    racFeedbackSubfeatureId = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:racFeedbackLoggingContent];

    copyableItems = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:copyableItems];

    applicationBundleIdentifier = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  return v5;
}

@end