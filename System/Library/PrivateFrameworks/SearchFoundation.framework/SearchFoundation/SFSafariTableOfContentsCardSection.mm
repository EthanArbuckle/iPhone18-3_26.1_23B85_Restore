@interface SFSafariTableOfContentsCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSafariTableOfContentsCardSection)initWithCoder:(id)a3;
- (SFSafariTableOfContentsCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSafariTableOfContentsCardSection

- (SFSafariTableOfContentsCardSection)initWithProtobuf:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SFSafariTableOfContentsCardSection;
  v5 = [(SFCardSection *)&v23 init];
  if (v5)
  {
    if ([v4 tableOfContentsType])
    {
      -[SFSafariTableOfContentsCardSection setTableOfContentsType:](v5, "setTableOfContentsType:", [v4 tableOfContentsType]);
    }

    if ([v4 tableOfContentsSource])
    {
      -[SFSafariTableOfContentsCardSection setTableOfContentsSource:](v5, "setTableOfContentsSource:", [v4 tableOfContentsSource]);
    }

    v6 = [v4 tableOfContentsItems];
    if (v6)
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
    v8 = [v4 tableOfContentsItems];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFSafariTableOfContentsItem alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsItems:v7];
    v14 = [v4 algorithmVersion];

    if (v14)
    {
      v15 = [v4 algorithmVersion];
      [(SFSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:v15];
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
  v4 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsType];
  v5 = v4 ^ [(SFSafariTableOfContentsCardSection *)self tableOfContentsSource];
  v6 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
  v9 = v7 ^ [v8 hash];

  return v3 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    if ([(SFSafariTableOfContentsCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v24.receiver = self;
      v24.super_class = SFSafariTableOfContentsCardSection;
      if ([(SFCardSection *)&v24 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsType];
        if (v7 != [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsType]|| (v8 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsSource], v8 != [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsSource]))
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v9 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
        v10 = [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsItems];
        if ((v9 != 0) == (v10 == 0))
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
        if (v11)
        {
          v3 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
          v12 = [(SFSafariTableOfContentsCardSection *)v6 tableOfContentsItems];
          if (![v3 isEqual:v12])
          {
            v13 = 0;
LABEL_21:

LABEL_22:
            goto LABEL_23;
          }

          v23 = v12;
        }

        v14 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
        v15 = [(SFSafariTableOfContentsCardSection *)v6 algorithmVersion];
        v16 = v15;
        if ((v14 != 0) == (v15 == 0))
        {

          v13 = 0;
        }

        else
        {
          v17 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
          if (v17)
          {
            v18 = v17;
            v21 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
            [(SFSafariTableOfContentsCardSection *)v6 algorithmVersion];
            v19 = v22 = v3;
            v13 = [v21 isEqual:v19];

            v3 = v22;
          }

          else
          {

            v13 = 1;
          }
        }

        v12 = v23;
        if (!v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFSafariTableOfContentsCardSection;
  v4 = [(SFCardSection *)&v10 copyWithZone:a3];
  [v4 setTableOfContentsType:{-[SFSafariTableOfContentsCardSection tableOfContentsType](self, "tableOfContentsType")}];
  [v4 setTableOfContentsSource:{-[SFSafariTableOfContentsCardSection tableOfContentsSource](self, "tableOfContentsSource")}];
  v5 = [(SFSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v6 = [v5 copy];
  [v4 setTableOfContentsItems:v6];

  v7 = [(SFSafariTableOfContentsCardSection *)self algorithmVersion];
  v8 = [v7 copy];
  [v4 setAlgorithmVersion:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSafariTableOfContentsCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBSafariTableOfContentsCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSafariTableOfContentsCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFSafariTableOfContentsCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsType:[(SFCardSection *)v8 tableOfContentsType]];
    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsSource:[(SFCardSection *)v8 tableOfContentsSource]];
    v9 = [(SFCardSection *)v8 tableOfContentsItems];
    [(SFSafariTableOfContentsCardSection *)v5 setTableOfContentsItems:v9];

    v10 = [(SFCardSection *)v8 algorithmVersion];
    [(SFSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:v10];

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