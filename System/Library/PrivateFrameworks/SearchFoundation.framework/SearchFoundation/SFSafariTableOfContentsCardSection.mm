@interface SFSafariTableOfContentsCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSafariTableOfContentsCardSection)initWithCoder:(id)coder;
- (SFSafariTableOfContentsCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSafariTableOfContentsCardSection

- (SFSafariTableOfContentsCardSection)initWithProtobuf:(id)protobuf
{
  v25 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v23.receiver = self;
  v23.super_class = SFSafariTableOfContentsCardSection;
  v5 = [(SFCardSection *)&v23 init];
  if (v5)
  {
    if ([protobufCopy tableOfContentsType])
    {
      -[SFSafariTableOfContentsCardSection setTableOfContentsType:](v5, "setTableOfContentsType:", [protobufCopy tableOfContentsType]);
    }

    if ([protobufCopy tableOfContentsSource])
    {
      -[SFSafariTableOfContentsCardSection setTableOfContentsSource:](v5, "setTableOfContentsSource:", [protobufCopy tableOfContentsSource]);
    }

    tableOfContentsItems = [protobufCopy tableOfContentsItems];
    if (tableOfContentsItems)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    tableOfContentsItems2 = [protobufCopy tableOfContentsItems];
    v9 = [tableOfContentsItems2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(tableOfContentsItems2);
          }

          v13 = [[SFSafariTableOfContentsItem alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [tableOfContentsItems2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsItems:v7];
    algorithmVersion = [protobufCopy algorithmVersion];

    if (algorithmVersion)
    {
      algorithmVersion2 = [protobufCopy algorithmVersion];
      [(SFSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:algorithmVersion2];
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFSafariTableOfContentsCardSection;
  v3 = [(SFCardSection *)&v11 hash];
  tableOfContentsType = [(SFSafariTableOfContentsCardSection *)self tableOfContentsType];
  v5 = tableOfContentsType ^ [(SFSafariTableOfContentsCardSection *)self tableOfContentsSource];
  tableOfContentsItems = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v7 = v5 ^ [tableOfContentsItems hash];
  algorithmVersion = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
  v9 = v7 ^ [algorithmVersion hash];

  return v3 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    if ([(SFSafariTableOfContentsCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v24.receiver = self;
      v24.super_class = SFSafariTableOfContentsCardSection;
      if ([(SFCardSection *)&v24 isEqual:equalCopy])
      {
        v6 = equalCopy;
        tableOfContentsType = [(SFSafariTableOfContentsCardSection *)self tableOfContentsType];
        if (tableOfContentsType != [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsType]|| (v8 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsSource], v8 != [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsSource]))
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        tableOfContentsItems = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
        tableOfContentsItems2 = [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsItems];
        if ((tableOfContentsItems != 0) == (tableOfContentsItems2 == 0))
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        tableOfContentsItems3 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
        if (tableOfContentsItems3)
        {
          tableOfContentsItems4 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
          tableOfContentsItems5 = [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsItems];
          if (![tableOfContentsItems4 isEqual:tableOfContentsItems5])
          {
            v13 = 0;
LABEL_21:

LABEL_22:
            goto LABEL_23;
          }

          v23 = tableOfContentsItems5;
        }

        algorithmVersion = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
        algorithmVersion2 = [(SFSafariTableOfContentsCardSection *)v6 algorithmVersion];
        v16 = algorithmVersion2;
        if ((algorithmVersion != 0) == (algorithmVersion2 == 0))
        {

          v13 = 0;
        }

        else
        {
          algorithmVersion3 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
          if (algorithmVersion3)
          {
            v18 = algorithmVersion3;
            algorithmVersion4 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
            [(SFSafariTableOfContentsCardSection *)v6 algorithmVersion];
            v19 = v22 = tableOfContentsItems4;
            v13 = [algorithmVersion4 isEqual:v19];

            tableOfContentsItems4 = v22;
          }

          else
          {

            v13 = 1;
          }
        }

        tableOfContentsItems5 = v23;
        if (!tableOfContentsItems3)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFSafariTableOfContentsCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:zone];
  [v4 setTableOfContentsType:{-[SFSafariTableOfContentsCardSection tableOfContentsType](self, "tableOfContentsType")}];
  [v4 setTableOfContentsSource:{-[SFSafariTableOfContentsCardSection tableOfContentsSource](self, "tableOfContentsSource")}];
  tableOfContentsItems = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v6 = [tableOfContentsItems copy];
  [v4 setTableOfContentsItems:v6];

  algorithmVersion = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
  v8 = [algorithmVersion copy];
  [v4 setAlgorithmVersion:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBSafariTableOfContentsCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSafariTableOfContentsCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSafariTableOfContentsCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFSafariTableOfContentsCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsType:[(SFCardSection *)v8 tableOfContentsType]];
    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsSource:[(SFCardSection *)v8 tableOfContentsSource]];
    tableOfContentsItems = [(SFCardSection *)v8 tableOfContentsItems];
    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsItems:tableOfContentsItems];

    algorithmVersion = [(SFCardSection *)v8 algorithmVersion];
    [(SFSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:algorithmVersion];

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