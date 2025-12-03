@interface SFResponseWrapperCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFResponseWrapperCardSection)initWithCoder:(id)coder;
- (SFResponseWrapperCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResponseWrapperCardSection

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFResponseWrapperCardSection;
  v3 = [(SFCardSection *)&v13 hash];
  catModel = [(SFResponseWrapperCardSection *)self catModel];
  v5 = [catModel hash];
  visualCATOutput = [(SFResponseWrapperCardSection *)self visualCATOutput];
  v7 = v5 ^ [visualCATOutput hash];
  pattern_model = [(SFResponseWrapperCardSection *)self pattern_model];
  v9 = v7 ^ [pattern_model hash];
  pattern_models = [(SFResponseWrapperCardSection *)self pattern_models];
  v11 = v9 ^ [pattern_models hash];

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
    if ([(SFResponseWrapperCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = SFResponseWrapperCardSection;
      if ([(SFCardSection *)&v42 isEqual:equalCopy])
      {
        v6 = equalCopy;
        catModel = [(SFResponseWrapperCardSection *)self catModel];
        catModel2 = [(SFResponseWrapperCardSection *)v6 catModel];
        if ((catModel != 0) == (catModel2 == 0))
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }

        catModel3 = [(SFResponseWrapperCardSection *)self catModel];
        if (catModel3)
        {
          catModel4 = [(SFResponseWrapperCardSection *)self catModel];
          catModel5 = [(SFResponseWrapperCardSection *)v6 catModel];
          if (![catModel4 isEqual:catModel5])
          {
            v11 = 0;
            goto LABEL_36;
          }

          v41 = catModel4;
        }

        visualCATOutput = [(SFResponseWrapperCardSection *)self visualCATOutput];
        visualCATOutput2 = [(SFResponseWrapperCardSection *)v6 visualCATOutput];
        v14 = visualCATOutput2;
        if ((visualCATOutput != 0) == (visualCATOutput2 == 0))
        {

          v11 = 0;
          goto LABEL_35;
        }

        visualCATOutput3 = [(SFResponseWrapperCardSection *)self visualCATOutput];
        v40 = visualCATOutput3;
        if (visualCATOutput3)
        {
          v16 = visualCATOutput3;
          v35 = v14;
          v17 = visualCATOutput;
          visualCATOutput4 = [(SFResponseWrapperCardSection *)self visualCATOutput];
          visualCATOutput5 = [(SFResponseWrapperCardSection *)v6 visualCATOutput];
          v38 = visualCATOutput4;
          if (![visualCATOutput4 isEqual:?])
          {
            v11 = 0;
            visualCATOutput = v17;
            v14 = v35;
            goto LABEL_33;
          }

          v39 = catModel5;
          visualCATOutput = v17;
          v14 = v35;
        }

        else
        {
          v39 = catModel5;
        }

        pattern_model = [(SFResponseWrapperCardSection *)self pattern_model];
        pattern_model2 = [(SFResponseWrapperCardSection *)v6 pattern_model];
        if ((pattern_model != 0) == (pattern_model2 == 0))
        {

          v11 = 0;
          catModel5 = v39;
          v16 = v40;
          if (!v40)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v33 = pattern_model2;
        v34 = pattern_model;
        [(SFResponseWrapperCardSection *)self pattern_model];
        v36 = v16 = v40;
        if (!v36 || (-[SFResponseWrapperCardSection pattern_model](self, "pattern_model"), v21 = objc_claimAutoreleasedReturnValue(), -[SFResponseWrapperCardSection pattern_model](v6, "pattern_model"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
        {
          pattern_models = [(SFResponseWrapperCardSection *)self pattern_models];
          pattern_models2 = [(SFResponseWrapperCardSection *)v6 pattern_models];
          if ((pattern_models != 0) == (pattern_models2 == 0))
          {

            v11 = 0;
            v16 = v40;
          }

          else
          {
            v29 = pattern_models;
            v30 = pattern_models2;
            pattern_models3 = [(SFResponseWrapperCardSection *)self pattern_models];
            v16 = v40;
            if (pattern_models3)
            {
              v28 = pattern_models3;
              pattern_models4 = [(SFResponseWrapperCardSection *)self pattern_models];
              pattern_models5 = [(SFResponseWrapperCardSection *)v6 pattern_models];
              v11 = [pattern_models4 isEqual:?];
            }

            else
            {

              v11 = 1;
            }
          }

          catModel5 = v39;
          if (!v36)
          {
LABEL_32:

            if (!v16)
            {
LABEL_34:

LABEL_35:
              catModel4 = v41;
              if (!catModel3)
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
          catModel5 = v39;
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = SFResponseWrapperCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:zone];
  catModel = [(SFResponseWrapperCardSection *)self catModel];
  v6 = [catModel copy];
  [v4 setCatModel:v6];

  visualCATOutput = [(SFResponseWrapperCardSection *)self visualCATOutput];
  v8 = [visualCATOutput copy];
  [v4 setVisualCATOutput:v8];

  pattern_model = [(SFResponseWrapperCardSection *)self pattern_model];
  v10 = [pattern_model copy];
  [v4 setPattern_model:v10];

  pattern_models = [(SFResponseWrapperCardSection *)self pattern_models];
  v12 = [pattern_models copy];
  [v4 setPattern_models:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBResponseWrapperCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBResponseWrapperCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBResponseWrapperCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFResponseWrapperCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFResponseWrapperCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    catModel = [(SFCardSection *)v8 catModel];
    [(SFResponseWrapperCardSection *)v5 setCatModel:catModel];

    visualCATOutput = [(SFCardSection *)v8 visualCATOutput];
    [(SFResponseWrapperCardSection *)v5 setVisualCATOutput:visualCATOutput];

    pattern_model = [(SFCardSection *)v8 pattern_model];
    [(SFResponseWrapperCardSection *)v5 setPattern_model:pattern_model];

    pattern_models = [(SFCardSection *)v8 pattern_models];
    [(SFResponseWrapperCardSection *)v5 setPattern_models:pattern_models];

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

- (SFResponseWrapperCardSection)initWithProtobuf:(id)protobuf
{
  v33 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v31.receiver = self;
  v31.super_class = SFResponseWrapperCardSection;
  v5 = [(SFCardSection *)&v31 init];
  if (v5)
  {
    catModel = [protobufCopy catModel];

    if (catModel)
    {
      v7 = [SFCATModel alloc];
      catModel2 = [protobufCopy catModel];
      v9 = [(SFCATModel *)v7 initWithProtobuf:catModel2];
      [(SFResponseWrapperCardSection *)v5 setCatModel:v9];
    }

    visualCATOutput = [protobufCopy visualCATOutput];

    if (visualCATOutput)
    {
      visualCATOutput2 = [protobufCopy visualCATOutput];
      [(SFResponseWrapperCardSection *)v5 setVisualCATOutput:visualCATOutput2];
    }

    pattern_model = [protobufCopy pattern_model];

    if (pattern_model)
    {
      v13 = [SFPatternModel alloc];
      pattern_model2 = [protobufCopy pattern_model];
      v15 = [(SFPatternModel *)v13 initWithProtobuf:pattern_model2];
      [(SFResponseWrapperCardSection *)v5 setPattern_model:v15];
    }

    pattern_models = [protobufCopy pattern_models];
    if (pattern_models)
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
    pattern_models2 = [protobufCopy pattern_models];
    v19 = [pattern_models2 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(pattern_models2);
          }

          v23 = [[SFPatternModel alloc] initWithProtobuf:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [pattern_models2 countByEnumeratingWithState:&v27 objects:v32 count:16];
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