@interface SFLinkPresentationCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLinkPresentationCardSection)initWithCoder:(id)a3;
- (SFLinkPresentationCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLinkPresentationCardSection

- (SFLinkPresentationCardSection)initWithProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SFLinkPresentationCardSection;
  v5 = [(SFCardSection *)&v25 init];
  if (v5)
  {
    v6 = [v4 coreSpotlightIdentifier];

    if (v6)
    {
      v7 = [v4 coreSpotlightIdentifier];
      [(SFLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:v7];
    }

    v8 = [v4 url];

    if (v8)
    {
      v9 = [v4 url];
      [(SFLinkPresentationCardSection *)v5 setUrl:v9];
    }

    v10 = [v4 peopleToBadges];
    if (v10)
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
    v12 = [v4 peopleToBadges];
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

          v17 = [[SFPerson alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(SFLinkPresentationCardSection *)v5 setPeopleToBadge:v11];
    if ([v4 isHighlighted])
    {
      -[SFLinkPresentationCardSection setIsHighlighted:](v5, "setIsHighlighted:", [v4 isHighlighted]);
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFLinkPresentationCardSection;
  v3 = [(SFCardSection *)&v12 hash];
  v4 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
  v5 = [v4 hash];
  v6 = [(SFLinkPresentationCardSection *)self url];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFLinkPresentationCardSection *)self peopleToBadge];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFLinkPresentationCardSection *)self isHighlighted];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFLinkPresentationCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFLinkPresentationCardSection;
      if ([(SFCardSection *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
        v8 = [(SFLinkPresentationCardSection *)v6 coreSpotlightIdentifier];
        if ((v7 != 0) == (v8 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
        if (v9)
        {
          v10 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
          v3 = [(SFLinkPresentationCardSection *)v6 coreSpotlightIdentifier];
          if (![v10 isEqual:v3])
          {
            LOBYTE(v11) = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(SFLinkPresentationCardSection *)self url];
        v13 = [(SFLinkPresentationCardSection *)v6 url];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_31;
        }

        v15 = [(SFLinkPresentationCardSection *)self url];
        if (v15)
        {
          v27 = v12;
          v16 = [(SFLinkPresentationCardSection *)self url];
          v29 = [(SFLinkPresentationCardSection *)v6 url];
          v30 = v16;
          if (![v16 isEqual:?])
          {
            LOBYTE(v11) = 0;
            v12 = v27;
            goto LABEL_29;
          }

          v31 = v15;
          v32 = v3;
          v12 = v27;
        }

        else
        {
          v31 = 0;
          v32 = v3;
        }

        v17 = [(SFLinkPresentationCardSection *)self peopleToBadge];
        v18 = [(SFLinkPresentationCardSection *)v6 peopleToBadge];
        if ((v17 != 0) == (v18 == 0))
        {

          LOBYTE(v11) = 0;
          v15 = v31;
          v3 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = v18;
        v26 = v17;
        [(SFLinkPresentationCardSection *)self peopleToBadge];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(SFLinkPresentationCardSection *)self peopleToBadge];
          v23 = [(SFLinkPresentationCardSection *)v6 peopleToBadge];
          v24 = v19;
          v20 = [v19 isEqual:?];
          v3 = v32;
          if (!v20)
          {
            LOBYTE(v11) = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              v10 = v33;
              if (!v9)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          v3 = v32;
        }

        v21 = [(SFLinkPresentationCardSection *)self isHighlighted];
        v11 = v21 ^ [(SFLinkPresentationCardSection *)v6 isHighlighted]^ 1;
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFLinkPresentationCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:a3];
  v5 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
  v6 = [v5 copy];
  [v4 setCoreSpotlightIdentifier:v6];

  v7 = [(SFLinkPresentationCardSection *)self url];
  v8 = [v7 copy];
  [v4 setUrl:v8];

  v9 = [(SFLinkPresentationCardSection *)self peopleToBadge];
  v10 = [v9 copy];
  [v4 setPeopleToBadge:v10];

  [v4 setIsHighlighted:{-[SFLinkPresentationCardSection isHighlighted](self, "isHighlighted")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBLinkPresentationCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBLinkPresentationCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFLinkPresentationCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFLinkPresentationCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 coreSpotlightIdentifier];
    [(SFLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:v9];

    v10 = [(SFCardSection *)v8 url];
    [(SFLinkPresentationCardSection *)v5 setUrl:v10];

    v11 = [(SFCardSection *)v8 peopleToBadge];
    [(SFLinkPresentationCardSection *)v5 setPeopleToBadge:v11];

    [(SFLinkPresentationCardSection *)v5 setIsHighlighted:[(SFCardSection *)v8 isHighlighted]];
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