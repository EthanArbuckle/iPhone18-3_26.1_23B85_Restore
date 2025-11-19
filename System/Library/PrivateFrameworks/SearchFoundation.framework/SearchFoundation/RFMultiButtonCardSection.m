@interface RFMultiButtonCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMultiButtonCardSection)initWithCoder:(id)a3;
- (RFMultiButtonCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMultiButtonCardSection

- (RFMultiButtonCardSection)initWithProtobuf:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RFMultiButtonCardSection;
  v5 = [(SFCardSection *)&v21 init];
  if (v5)
  {
    v6 = [v4 buttons];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 buttons];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(RFMultiButtonCardSection *)v5 setButtons:v7];
    if ([v4 layoutType])
    {
      -[RFMultiButtonCardSection setLayoutType:](v5, "setLayoutType:", [v4 layoutType]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = RFMultiButtonCardSection;
  v3 = [(SFCardSection *)&v8 hash];
  v4 = [(RFMultiButtonCardSection *)self buttons];
  v5 = [v4 hash];
  v6 = v5 ^ [(RFMultiButtonCardSection *)self layoutType];

  return v6 ^ v3;
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
    if ([(RFMultiButtonCardSection *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = RFMultiButtonCardSection;
      if ([(SFCardSection *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(RFMultiButtonCardSection *)self buttons];
        v9 = [(RFMultiButtonCardSection *)v7 buttons];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(RFMultiButtonCardSection *)self buttons];
        if (!v10 || (-[RFMultiButtonCardSection buttons](self, "buttons"), v3 = objc_claimAutoreleasedReturnValue(), -[RFMultiButtonCardSection buttons](v7, "buttons"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(RFMultiButtonCardSection *)self layoutType];
          v11 = v12 == [(RFMultiButtonCardSection *)v7 layoutType];
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RFMultiButtonCardSection;
  v4 = [(SFCardSection *)&v8 copyWithZone:a3];
  v5 = [(RFMultiButtonCardSection *)self buttons];
  v6 = [v5 copy];
  [v4 setButtons:v6];

  [v4 setLayoutType:{-[RFMultiButtonCardSection layoutType](self, "layoutType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMultiButtonCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFMultiButtonCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMultiButtonCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFMultiButtonCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFMultiButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFMultiButtonCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 buttons];
    [(RFMultiButtonCardSection *)v5 setButtons:v9];

    [(RFMultiButtonCardSection *)v5 setLayoutType:[(SFCardSection *)v8 layoutType]];
    v10 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v10];

    v11 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v11];

    v12 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v12];

    v13 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v13];

    v14 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v14];

    v15 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v15];

    v16 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v16];

    v17 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v17];

    v18 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v18];

    v19 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v19];

    v20 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v20];

    v21 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v21];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v22 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v22];

    v23 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v23];

    v24 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v24];

    v25 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v25];

    v26 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v26];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v27 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v27];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v28 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v28];

    v29 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v29];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v30 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v30];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v31 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v31];

    v32 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v32];

    v33 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v33];

    v34 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v34];
  }

  return v5;
}

@end