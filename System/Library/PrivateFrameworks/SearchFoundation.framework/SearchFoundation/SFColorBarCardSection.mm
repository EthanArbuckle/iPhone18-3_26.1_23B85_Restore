@interface SFColorBarCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFColorBarCardSection)initWithCoder:(id)coder;
- (SFColorBarCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFColorBarCardSection

- (SFColorBarCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFColorBarCardSection;
  v5 = [(SFCardSection *)&v24 init];
  if (v5)
  {
    barColor = [protobufCopy barColor];

    if (barColor)
    {
      v7 = [SFColor alloc];
      barColor2 = [protobufCopy barColor];
      v9 = [(SFColor *)v7 initWithProtobuf:barColor2];
      [(SFColorBarCardSection *)v5 setBarColor:v9];
    }

    topText = [protobufCopy topText];

    if (topText)
    {
      v11 = [SFRichText alloc];
      topText2 = [protobufCopy topText];
      v13 = [(SFRichText *)v11 initWithProtobuf:topText2];
      [(SFColorBarCardSection *)v5 setTopText:v13];
    }

    title = [protobufCopy title];

    if (title)
    {
      v15 = [SFRichText alloc];
      title2 = [protobufCopy title];
      v17 = [(SFRichText *)v15 initWithProtobuf:title2];
      [(SFColorBarCardSection *)v5 setTitle:v17];
    }

    subtitle = [protobufCopy subtitle];

    if (subtitle)
    {
      v19 = [SFRichText alloc];
      subtitle2 = [protobufCopy subtitle];
      v21 = [(SFRichText *)v19 initWithProtobuf:subtitle2];
      [(SFColorBarCardSection *)v5 setSubtitle:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFColorBarCardSection;
  v3 = [(SFCardSection *)&v13 hash];
  barColor = [(SFColorBarCardSection *)self barColor];
  v5 = [barColor hash];
  topText = [(SFColorBarCardSection *)self topText];
  v7 = v5 ^ [topText hash];
  title = [(SFColorBarCardSection *)self title];
  v9 = v7 ^ [title hash];
  subtitle = [(SFColorBarCardSection *)self subtitle];
  v11 = v9 ^ [subtitle hash];

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
    if ([(SFColorBarCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = SFColorBarCardSection;
      if ([(SFCardSection *)&v42 isEqual:equalCopy])
      {
        v6 = equalCopy;
        barColor = [(SFColorBarCardSection *)self barColor];
        barColor2 = [(SFColorBarCardSection *)v6 barColor];
        if ((barColor != 0) == (barColor2 == 0))
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }

        barColor3 = [(SFColorBarCardSection *)self barColor];
        if (barColor3)
        {
          barColor4 = [(SFColorBarCardSection *)self barColor];
          barColor5 = [(SFColorBarCardSection *)v6 barColor];
          if (![barColor4 isEqual:barColor5])
          {
            v11 = 0;
            goto LABEL_36;
          }

          v41 = barColor4;
        }

        topText = [(SFColorBarCardSection *)self topText];
        topText2 = [(SFColorBarCardSection *)v6 topText];
        v14 = topText2;
        if ((topText != 0) == (topText2 == 0))
        {

          v11 = 0;
          goto LABEL_35;
        }

        topText3 = [(SFColorBarCardSection *)self topText];
        v40 = topText3;
        if (topText3)
        {
          v16 = topText3;
          v35 = v14;
          v17 = topText;
          topText4 = [(SFColorBarCardSection *)self topText];
          topText5 = [(SFColorBarCardSection *)v6 topText];
          v38 = topText4;
          if (![topText4 isEqual:?])
          {
            v11 = 0;
            topText = v17;
            v14 = v35;
            goto LABEL_33;
          }

          v39 = barColor5;
          topText = v17;
          v14 = v35;
        }

        else
        {
          v39 = barColor5;
        }

        title = [(SFColorBarCardSection *)self title];
        title2 = [(SFColorBarCardSection *)v6 title];
        if ((title != 0) == (title2 == 0))
        {

          v11 = 0;
          barColor5 = v39;
          v16 = v40;
          if (!v40)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v33 = title2;
        v34 = title;
        [(SFColorBarCardSection *)self title];
        v36 = v16 = v40;
        if (!v36 || (-[SFColorBarCardSection title](self, "title"), v21 = objc_claimAutoreleasedReturnValue(), -[SFColorBarCardSection title](v6, "title"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
        {
          subtitle = [(SFColorBarCardSection *)self subtitle];
          subtitle2 = [(SFColorBarCardSection *)v6 subtitle];
          if ((subtitle != 0) == (subtitle2 == 0))
          {

            v11 = 0;
            v16 = v40;
          }

          else
          {
            v29 = subtitle;
            v30 = subtitle2;
            subtitle3 = [(SFColorBarCardSection *)self subtitle];
            v16 = v40;
            if (subtitle3)
            {
              v28 = subtitle3;
              subtitle4 = [(SFColorBarCardSection *)self subtitle];
              subtitle5 = [(SFColorBarCardSection *)v6 subtitle];
              v11 = [subtitle4 isEqual:?];
            }

            else
            {

              v11 = 1;
            }
          }

          barColor5 = v39;
          if (!v36)
          {
LABEL_32:

            if (!v16)
            {
LABEL_34:

LABEL_35:
              barColor4 = v41;
              if (!barColor3)
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
          barColor5 = v39;
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
  v14.super_class = SFColorBarCardSection;
  v4 = [(SFCardSection *)&v14 copyWithZone:zone];
  barColor = [(SFColorBarCardSection *)self barColor];
  v6 = [barColor copy];
  [v4 setBarColor:v6];

  topText = [(SFColorBarCardSection *)self topText];
  v8 = [topText copy];
  [v4 setTopText:v8];

  title = [(SFColorBarCardSection *)self title];
  v10 = [title copy];
  [v4 setTitle:v10];

  subtitle = [(SFColorBarCardSection *)self subtitle];
  v12 = [subtitle copy];
  [v4 setSubtitle:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBColorBarCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBColorBarCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBColorBarCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBColorBarCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFColorBarCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFColorBarCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    barColor = [(SFCardSection *)v8 barColor];
    [(SFColorBarCardSection *)v5 setBarColor:barColor];

    topText = [(SFCardSection *)v8 topText];
    [(SFColorBarCardSection *)v5 setTopText:topText];

    title = [(SFCardSection *)v8 title];
    [(SFColorBarCardSection *)v5 setTitle:title];

    subtitle = [(SFCardSection *)v8 subtitle];
    [(SFColorBarCardSection *)v5 setSubtitle:subtitle];

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