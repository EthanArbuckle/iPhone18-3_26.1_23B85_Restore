@interface SFLinkPresentationCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLinkPresentationCardSection)initWithCoder:(id)coder;
- (SFLinkPresentationCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLinkPresentationCardSection

- (SFLinkPresentationCardSection)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = SFLinkPresentationCardSection;
  v5 = [(SFCardSection *)&v25 init];
  if (v5)
  {
    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    v8 = [protobufCopy url];

    if (v8)
    {
      v9 = [protobufCopy url];
      [(SFLinkPresentationCardSection *)v5 setUrl:v9];
    }

    peopleToBadges = [protobufCopy peopleToBadges];
    if (peopleToBadges)
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
    peopleToBadges2 = [protobufCopy peopleToBadges];
    v13 = [peopleToBadges2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(peopleToBadges2);
          }

          v17 = [[SFPerson alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [peopleToBadges2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(SFLinkPresentationCardSection *)v5 setPeopleToBadge:v11];
    if ([protobufCopy isHighlighted])
    {
      -[SFLinkPresentationCardSection setIsHighlighted:](v5, "setIsHighlighted:", [protobufCopy isHighlighted]);
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
  coreSpotlightIdentifier = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
  v5 = [coreSpotlightIdentifier hash];
  v6 = [(SFLinkPresentationCardSection *)self url];
  v7 = v5 ^ [v6 hash];
  peopleToBadge = [(SFLinkPresentationCardSection *)self peopleToBadge];
  v9 = v7 ^ [peopleToBadge hash];
  v10 = v9 ^ [(SFLinkPresentationCardSection *)self isHighlighted];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFLinkPresentationCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFLinkPresentationCardSection;
      if ([(SFCardSection *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        coreSpotlightIdentifier = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFLinkPresentationCardSection *)v6 coreSpotlightIdentifier];
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_34:

          goto LABEL_35;
        }

        coreSpotlightIdentifier3 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
        if (coreSpotlightIdentifier3)
        {
          coreSpotlightIdentifier4 = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier5 = [(SFLinkPresentationCardSection *)v6 coreSpotlightIdentifier];
          if (![coreSpotlightIdentifier4 isEqual:coreSpotlightIdentifier5])
          {
            LOBYTE(v11) = 0;
            goto LABEL_32;
          }

          v33 = coreSpotlightIdentifier4;
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
          v32 = coreSpotlightIdentifier5;
          v12 = v27;
        }

        else
        {
          v31 = 0;
          v32 = coreSpotlightIdentifier5;
        }

        peopleToBadge = [(SFLinkPresentationCardSection *)self peopleToBadge];
        peopleToBadge2 = [(SFLinkPresentationCardSection *)v6 peopleToBadge];
        if ((peopleToBadge != 0) == (peopleToBadge2 == 0))
        {

          LOBYTE(v11) = 0;
          v15 = v31;
          coreSpotlightIdentifier5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = peopleToBadge2;
        v26 = peopleToBadge;
        [(SFLinkPresentationCardSection *)self peopleToBadge];
        v28 = v15 = v31;
        if (v28)
        {
          peopleToBadge3 = [(SFLinkPresentationCardSection *)self peopleToBadge];
          peopleToBadge4 = [(SFLinkPresentationCardSection *)v6 peopleToBadge];
          v24 = peopleToBadge3;
          v20 = [peopleToBadge3 isEqual:?];
          coreSpotlightIdentifier5 = v32;
          if (!v20)
          {
            LOBYTE(v11) = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              coreSpotlightIdentifier4 = v33;
              if (!coreSpotlightIdentifier3)
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
          coreSpotlightIdentifier5 = v32;
        }

        isHighlighted = [(SFLinkPresentationCardSection *)self isHighlighted];
        v11 = isHighlighted ^ [(SFLinkPresentationCardSection *)v6 isHighlighted]^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFLinkPresentationCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  coreSpotlightIdentifier = [(SFLinkPresentationCardSection *)self coreSpotlightIdentifier];
  v6 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v6];

  v7 = [(SFLinkPresentationCardSection *)self url];
  v8 = [v7 copy];
  [v4 setUrl:v8];

  peopleToBadge = [(SFLinkPresentationCardSection *)self peopleToBadge];
  v10 = [peopleToBadge copy];
  [v4 setPeopleToBadge:v10];

  [v4 setIsHighlighted:{-[SFLinkPresentationCardSection isHighlighted](self, "isHighlighted")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBLinkPresentationCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLinkPresentationCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBLinkPresentationCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFLinkPresentationCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFLinkPresentationCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    coreSpotlightIdentifier = [(SFCardSection *)v8 coreSpotlightIdentifier];
    [(SFLinkPresentationCardSection *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier];

    v10 = [(SFCardSection *)v8 url];
    [(SFLinkPresentationCardSection *)v5 setUrl:v10];

    peopleToBadge = [(SFCardSection *)v8 peopleToBadge];
    [(SFLinkPresentationCardSection *)v5 setPeopleToBadge:peopleToBadge];

    [(SFLinkPresentationCardSection *)v5 setIsHighlighted:[(SFCardSection *)v8 isHighlighted]];
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