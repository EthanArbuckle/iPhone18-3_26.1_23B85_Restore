@interface SFResponseWrapperCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFResponseWrapperCardSection)initWithCoder:(id)a3;
- (SFResponseWrapperCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFResponseWrapperCardSection

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFResponseWrapperCardSection;
  v3 = [(SFCardSection *)&v13 hash];
  v4 = [(SFResponseWrapperCardSection *)self catModel];
  v5 = [v4 hash];
  v6 = [(SFResponseWrapperCardSection *)self visualCATOutput];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFResponseWrapperCardSection *)self pattern_model];
  v9 = v7 ^ [v8 hash];
  v10 = [(SFResponseWrapperCardSection *)self pattern_models];
  v11 = v9 ^ [v10 hash];

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
    if ([(SFResponseWrapperCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = SFResponseWrapperCardSection;
      if ([(SFCardSection *)&v42 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFResponseWrapperCardSection *)self catModel];
        v8 = [(SFResponseWrapperCardSection *)v6 catModel];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v9 = [(SFResponseWrapperCardSection *)self catModel];
        if (v9)
        {
          v10 = [(SFResponseWrapperCardSection *)self catModel];
          v3 = [(SFResponseWrapperCardSection *)v6 catModel];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_36;
          }

          v41 = v10;
        }

        v12 = [(SFResponseWrapperCardSection *)self visualCATOutput];
        v13 = [(SFResponseWrapperCardSection *)v6 visualCATOutput];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_35;
        }

        v15 = [(SFResponseWrapperCardSection *)self visualCATOutput];
        v40 = v15;
        if (v15)
        {
          v16 = v15;
          v35 = v14;
          v17 = v12;
          v18 = [(SFResponseWrapperCardSection *)self visualCATOutput];
          v37 = [(SFResponseWrapperCardSection *)v6 visualCATOutput];
          v38 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v12 = v17;
            v14 = v35;
            goto LABEL_33;
          }

          v39 = v3;
          v12 = v17;
          v14 = v35;
        }

        else
        {
          v39 = v3;
        }

        v19 = [(SFResponseWrapperCardSection *)self pattern_model];
        v20 = [(SFResponseWrapperCardSection *)v6 pattern_model];
        if ((v19 != 0) == (v20 == 0))
        {

          v11 = 0;
          v3 = v39;
          v16 = v40;
          if (!v40)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v33 = v20;
        v34 = v19;
        [(SFResponseWrapperCardSection *)self pattern_model];
        v36 = v16 = v40;
        if (!v36 || (-[SFResponseWrapperCardSection pattern_model](self, "pattern_model"), v21 = objc_claimAutoreleasedReturnValue(), -[SFResponseWrapperCardSection pattern_model](v6, "pattern_model"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
        {
          v22 = [(SFResponseWrapperCardSection *)self pattern_models];
          v23 = [(SFResponseWrapperCardSection *)v6 pattern_models];
          if ((v22 != 0) == (v23 == 0))
          {

            v11 = 0;
            v16 = v40;
          }

          else
          {
            v29 = v22;
            v30 = v23;
            v24 = [(SFResponseWrapperCardSection *)self pattern_models];
            v16 = v40;
            if (v24)
            {
              v28 = v24;
              v27 = [(SFResponseWrapperCardSection *)self pattern_models];
              v25 = [(SFResponseWrapperCardSection *)v6 pattern_models];
              v11 = [v27 isEqual:?];
            }

            else
            {

              v11 = 1;
            }
          }

          v3 = v39;
          if (!v36)
          {
LABEL_32:

            if (!v16)
            {
LABEL_34:

LABEL_35:
              v10 = v41;
              if (!v9)
              {
LABEL_37:

                goto LABEL_38;
              }

LABEL_36:

              goto LABEL_37;
            }

LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          v11 = 0;
          v3 = v39;
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = SFResponseWrapperCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:a3];
  v5 = [(SFResponseWrapperCardSection *)self catModel];
  v6 = [v5 copy];
  [v4 setCatModel:v6];

  v7 = [(SFResponseWrapperCardSection *)self visualCATOutput];
  v8 = [v7 copy];
  [v4 setVisualCATOutput:v8];

  v9 = [(SFResponseWrapperCardSection *)self pattern_model];
  v10 = [v9 copy];
  [v4 setPattern_model:v10];

  v11 = [(SFResponseWrapperCardSection *)self pattern_models];
  v12 = [v11 copy];
  [v4 setPattern_models:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBResponseWrapperCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBResponseWrapperCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFResponseWrapperCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFResponseWrapperCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 catModel];
    [(SFResponseWrapperCardSection *)v5 setCatModel:v9];

    v10 = [(SFCardSection *)v8 visualCATOutput];
    [(SFResponseWrapperCardSection *)v5 setVisualCATOutput:v10];

    v11 = [(SFCardSection *)v8 pattern_model];
    [(SFResponseWrapperCardSection *)v5 setPattern_model:v11];

    v12 = [(SFCardSection *)v8 pattern_models];
    [(SFResponseWrapperCardSection *)v5 setPattern_models:v12];

    v13 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v13];

    v14 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v14];

    v15 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v15];

    v16 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v16];

    v17 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v17];

    v18 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v18];

    v19 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v19];

    v20 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v20];

    v21 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v21];

    v22 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v22];

    v23 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v23];

    v24 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v24];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v25 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v25];

    v26 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v26];

    v27 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v27];

    v28 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v28];

    v29 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v29];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v30 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v30];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v31 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v31];

    v32 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v32];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v33 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v33];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v34 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v34];

    v35 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v35];

    v36 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v36];

    v37 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v37];
  }

  return v5;
}

- (SFResponseWrapperCardSection)initWithProtobuf:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SFResponseWrapperCardSection;
  v5 = [(SFCardSection *)&v31 init];
  if (v5)
  {
    v6 = [v4 catModel];

    if (v6)
    {
      v7 = [SFCATModel alloc];
      v8 = [v4 catModel];
      v9 = [(SFCATModel *)v7 initWithProtobuf:v8];
      [(SFResponseWrapperCardSection *)v5 setCatModel:v9];
    }

    v10 = [v4 visualCATOutput];

    if (v10)
    {
      v11 = [v4 visualCATOutput];
      [(SFResponseWrapperCardSection *)v5 setVisualCATOutput:v11];
    }

    v12 = [v4 pattern_model];

    if (v12)
    {
      v13 = [SFPatternModel alloc];
      v14 = [v4 pattern_model];
      v15 = [(SFPatternModel *)v13 initWithProtobuf:v14];
      [(SFResponseWrapperCardSection *)v5 setPattern_model:v15];
    }

    v16 = [v4 pattern_models];
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [v4 pattern_models];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[SFPatternModel alloc] initWithProtobuf:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }

    [(SFResponseWrapperCardSection *)v5 setPattern_models:v17];
    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

@end