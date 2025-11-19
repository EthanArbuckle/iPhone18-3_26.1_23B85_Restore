@interface RFButtonCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFButtonCardSection)initWithCoder:(id)a3;
- (RFButtonCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFButtonCardSection

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RFButtonCardSection;
  v3 = [(SFCardSection *)&v7 hash];
  v4 = [(RFButtonCardSection *)self button];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(RFButtonCardSection *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = RFButtonCardSection, [(SFCardSection *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(RFButtonCardSection *)self button];
    v7 = [(RFButtonCardSection *)v5 button];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(RFButtonCardSection *)self button];
      if (v8)
      {
        v9 = [(RFButtonCardSection *)self button];
        v10 = [(RFButtonCardSection *)v5 button];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RFButtonCardSection;
  v4 = [(SFCardSection *)&v8 copyWithZone:a3];
  v5 = [(RFButtonCardSection *)self button];
  v6 = [v5 copy];
  [v4 setButton:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFButtonCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFButtonCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFButtonCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFButtonCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFButtonCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 button];
    [(RFButtonCardSection *)v5 setButton:v9];

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

- (RFButtonCardSection)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RFButtonCardSection;
  v5 = [(SFCardSection *)&v12 init];
  if (v5)
  {
    v6 = [v4 button];

    if (v6)
    {
      v7 = [SFButtonItem alloc];
      v8 = [v4 button];
      v9 = [(SFButtonItem *)v7 initWithProtobuf:v8];
      [(RFButtonCardSection *)v5 setButton:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end