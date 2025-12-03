@interface RFExpandableStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFExpandableStandardCardSection)initWithCoder:(id)coder;
- (RFExpandableStandardCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFExpandableStandardCardSection

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = RFExpandableStandardCardSection;
  v3 = [(SFCardSection *)&v9 hash];
  summary_item_standard_card_section = [(RFExpandableStandardCardSection *)self summary_item_standard_card_section];
  v5 = [summary_item_standard_card_section hash];
  expanding_component_content = [(RFExpandableStandardCardSection *)self expanding_component_content];
  v7 = v5 ^ [expanding_component_content hash];

  return v7 ^ v3;
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
    if ([(RFExpandableStandardCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = RFExpandableStandardCardSection;
      if ([(SFCardSection *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        summary_item_standard_card_section = [(RFExpandableStandardCardSection *)self summary_item_standard_card_section];
        summary_item_standard_card_section2 = [(RFExpandableStandardCardSection *)v6 summary_item_standard_card_section];
        if ((summary_item_standard_card_section != 0) == (summary_item_standard_card_section2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        summary_item_standard_card_section3 = [(RFExpandableStandardCardSection *)self summary_item_standard_card_section];
        if (summary_item_standard_card_section3)
        {
          summary_item_standard_card_section4 = [(RFExpandableStandardCardSection *)self summary_item_standard_card_section];
          summary_item_standard_card_section5 = [(RFExpandableStandardCardSection *)v6 summary_item_standard_card_section];
          if (![summary_item_standard_card_section4 isEqual:summary_item_standard_card_section5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = summary_item_standard_card_section5;
        }

        expanding_component_content = [(RFExpandableStandardCardSection *)self expanding_component_content];
        expanding_component_content2 = [(RFExpandableStandardCardSection *)v6 expanding_component_content];
        v14 = expanding_component_content2;
        if ((expanding_component_content != 0) == (expanding_component_content2 == 0))
        {

          v11 = 0;
        }

        else
        {
          expanding_component_content3 = [(RFExpandableStandardCardSection *)self expanding_component_content];
          if (expanding_component_content3)
          {
            v16 = expanding_component_content3;
            expanding_component_content4 = [(RFExpandableStandardCardSection *)self expanding_component_content];
            [(RFExpandableStandardCardSection *)v6 expanding_component_content];
            v17 = v20 = summary_item_standard_card_section4;
            v11 = [expanding_component_content4 isEqual:v17];

            summary_item_standard_card_section4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        summary_item_standard_card_section5 = v21;
        if (!summary_item_standard_card_section3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RFExpandableStandardCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:zone];
  if ([(RFExpandableStandardCardSection *)self hasSummary_item_standard_card_section])
  {
    summary_item_standard_card_section = [(RFExpandableStandardCardSection *)self summary_item_standard_card_section];
    v6 = [summary_item_standard_card_section copy];
    [v4 setSummary_item_standard_card_section:v6];
  }

  expanding_component_content = [(RFExpandableStandardCardSection *)self expanding_component_content];
  v8 = [expanding_component_content copy];
  [v4 setExpanding_component_content:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFExpandableStandardCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFExpandableStandardCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFExpandableStandardCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFExpandableStandardCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFExpandableStandardCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFExpandableStandardCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    summary_item_standard_card_section = [(SFCardSection *)v8 summary_item_standard_card_section];
    [(RFExpandableStandardCardSection *)v5 setSummary_item_standard_card_section:summary_item_standard_card_section];

    expanding_component_content = [(SFCardSection *)v8 expanding_component_content];
    [(RFExpandableStandardCardSection *)v5 setExpanding_component_content:expanding_component_content];

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

- (RFExpandableStandardCardSection)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = RFExpandableStandardCardSection;
  v5 = [(SFCardSection *)&v25 init];
  if (v5)
  {
    summary_item_standard_card_section = [protobufCopy summary_item_standard_card_section];

    if (summary_item_standard_card_section)
    {
      v7 = [RFSummaryItemStandardCardSection alloc];
      summary_item_standard_card_section2 = [protobufCopy summary_item_standard_card_section];
      v9 = [(RFSummaryItemStandardCardSection *)v7 initWithProtobuf:summary_item_standard_card_section2];
      [(RFExpandableStandardCardSection *)v5 setSummary_item_standard_card_section:v9];
    }

    expanding_component_contents = [protobufCopy expanding_component_contents];
    if (expanding_component_contents)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [protobufCopy expanding:0 component:?contents];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[RFExpandingComponentContent alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(RFExpandableStandardCardSection *)v5 setExpanding_component_content:v11];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end