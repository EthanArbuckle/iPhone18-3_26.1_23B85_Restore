@interface RFTableHeaderCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableHeaderCardSection)initWithCoder:(id)coder;
- (RFTableHeaderCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTableHeaderCardSection

- (RFTableHeaderCardSection)initWithProtobuf:(id)protobuf
{
  v50 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v46.receiver = self;
  v46.super_class = RFTableHeaderCardSection;
  v5 = [(SFCardSection *)&v46 init];
  if (v5)
  {
    columns = [protobufCopy columns];
    if (columns)
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
    columns2 = [protobufCopy columns];
    v9 = [columns2 countByEnumeratingWithState:&v42 objects:v49 count:16];
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
            objc_enumerationMutation(columns2);
          }

          v13 = [[RFTableColumnDefinition alloc] initWithProtobuf:*(*(&v42 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [columns2 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v10);
    }

    [(RFTableHeaderCardSection *)v5 setColumns:v7];
    cells = [protobufCopy cells];
    if (cells)
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
    cells2 = [protobufCopy cells];
    v17 = [cells2 countByEnumeratingWithState:&v38 objects:v48 count:16];
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
            objc_enumerationMutation(cells2);
          }

          v21 = [[RFTableCell alloc] initWithProtobuf:*(*(&v38 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [cells2 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v18);
    }

    [(RFTableHeaderCardSection *)v5 setCells:v15];
    compact_cells = [protobufCopy compact_cells];
    v33 = v5;
    if (compact_cells)
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
    compact_cells2 = [protobufCopy compact_cells];
    v25 = [compact_cells2 countByEnumeratingWithState:&v34 objects:v47 count:16];
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
            objc_enumerationMutation(compact_cells2);
          }

          v29 = [[RFTableCell alloc] initWithProtobuf:*(*(&v34 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [compact_cells2 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v26);
    }

    v5 = v33;
    [(RFTableHeaderCardSection *)v33 setCompact_cells:v23];
    if ([protobufCopy should_repeat_header_in_flow_layout])
    {
      -[RFTableHeaderCardSection setShould_repeat_header_in_flow_layout:](v33, "setShould_repeat_header_in_flow_layout:", [protobufCopy should_repeat_header_in_flow_layout]);
    }

    if ([protobufCopy vertical_alignment])
    {
      -[RFTableHeaderCardSection setVertical_alignment:](v33, "setVertical_alignment:", [protobufCopy vertical_alignment]);
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
  columns = [(RFTableHeaderCardSection *)self columns];
  v5 = [columns hash];
  cells = [(RFTableHeaderCardSection *)self cells];
  v7 = v5 ^ [cells hash];
  compact_cells = [(RFTableHeaderCardSection *)self compact_cells];
  v9 = v7 ^ [compact_cells hash];
  v10 = v9 ^ [(RFTableHeaderCardSection *)self should_repeat_header_in_flow_layout];
  v11 = v10 ^ [(RFTableHeaderCardSection *)self vertical_alignment];

  return v11 ^ v3;
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
    if ([(RFTableHeaderCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v37.receiver = self;
      v37.super_class = RFTableHeaderCardSection;
      if ([(SFCardSection *)&v37 isEqual:equalCopy])
      {
        v6 = equalCopy;
        columns = [(RFTableHeaderCardSection *)self columns];
        columns2 = [(RFTableHeaderCardSection *)v6 columns];
        if ((columns != 0) == (columns2 == 0))
        {
          v11 = 0;
LABEL_37:

          goto LABEL_38;
        }

        columns3 = [(RFTableHeaderCardSection *)self columns];
        if (columns3)
        {
          columns4 = [(RFTableHeaderCardSection *)self columns];
          columns5 = [(RFTableHeaderCardSection *)v6 columns];
          if (![columns4 isEqual:columns5])
          {
            v11 = 0;
            goto LABEL_35;
          }

          v36 = columns4;
        }

        cells = [(RFTableHeaderCardSection *)self cells];
        cells2 = [(RFTableHeaderCardSection *)v6 cells];
        v14 = cells2;
        if ((cells != 0) == (cells2 == 0))
        {

          v11 = 0;
          goto LABEL_34;
        }

        cells3 = [(RFTableHeaderCardSection *)self cells];
        if (cells3)
        {
          v29 = v14;
          v16 = cells;
          cells4 = [(RFTableHeaderCardSection *)self cells];
          cells5 = [(RFTableHeaderCardSection *)v6 cells];
          v32 = cells4;
          if (![cells4 isEqual:?])
          {
            v11 = 0;
            cells = v16;
            v14 = v29;
            goto LABEL_32;
          }

          v33 = cells3;
          v34 = columns5;
          cells = v16;
          v14 = v29;
        }

        else
        {
          v33 = 0;
          v34 = columns5;
        }

        compact_cells = [(RFTableHeaderCardSection *)self compact_cells];
        compact_cells2 = [(RFTableHeaderCardSection *)v6 compact_cells];
        if ((compact_cells != 0) == (compact_cells2 == 0))
        {

          v11 = 0;
          cells3 = v33;
          columns5 = v34;
          if (!v33)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v27 = compact_cells2;
        v28 = compact_cells;
        [(RFTableHeaderCardSection *)self compact_cells];
        v30 = cells3 = v33;
        if (v30)
        {
          compact_cells3 = [(RFTableHeaderCardSection *)self compact_cells];
          [(RFTableHeaderCardSection *)v6 compact_cells];
          v26 = v25 = compact_cells3;
          v21 = [compact_cells3 isEqual:?];
          columns5 = v34;
          if (!v21)
          {
            v11 = 0;
            v22 = v26;
            goto LABEL_30;
          }
        }

        else
        {
          columns5 = v34;
        }

        should_repeat_header_in_flow_layout = [(RFTableHeaderCardSection *)self should_repeat_header_in_flow_layout];
        if (should_repeat_header_in_flow_layout == [(RFTableHeaderCardSection *)v6 should_repeat_header_in_flow_layout])
        {
          vertical_alignment = [(RFTableHeaderCardSection *)self vertical_alignment];
          v11 = vertical_alignment == [(RFTableHeaderCardSection *)v6 vertical_alignment];
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
            columns4 = v36;
            if (!columns3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RFTableHeaderCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  columns = [(RFTableHeaderCardSection *)self columns];
  v6 = [columns copy];
  [v4 setColumns:v6];

  cells = [(RFTableHeaderCardSection *)self cells];
  v8 = [cells copy];
  [v4 setCells:v8];

  compact_cells = [(RFTableHeaderCardSection *)self compact_cells];
  v10 = [compact_cells copy];
  [v4 setCompact_cells:v10];

  [v4 setShould_repeat_header_in_flow_layout:{-[RFTableHeaderCardSection should_repeat_header_in_flow_layout](self, "should_repeat_header_in_flow_layout")}];
  [v4 setVertical_alignment:{-[RFTableHeaderCardSection vertical_alignment](self, "vertical_alignment")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTableHeaderCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableHeaderCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTableHeaderCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFTableHeaderCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFTableHeaderCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    columns = [(SFCardSection *)v8 columns];
    [(RFTableHeaderCardSection *)v5 setColumns:columns];

    cells = [(SFCardSection *)v8 cells];
    [(RFTableHeaderCardSection *)v5 setCells:cells];

    compact_cells = [(SFCardSection *)v8 compact_cells];
    [(RFTableHeaderCardSection *)v5 setCompact_cells:compact_cells];

    [(RFTableHeaderCardSection *)v5 setShould_repeat_header_in_flow_layout:[(SFCardSection *)v8 should_repeat_header_in_flow_layout]];
    [(RFTableHeaderCardSection *)v5 setVertical_alignment:[(SFCardSection *)v8 vertical_alignment]];
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