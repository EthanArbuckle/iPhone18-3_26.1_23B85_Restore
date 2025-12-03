@interface RFLongItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFLongItemStandardCardSection)initWithCoder:(id)coder;
- (RFLongItemStandardCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFLongItemStandardCardSection

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = RFLongItemStandardCardSection;
  v3 = [(SFCardSection *)&v10 hash];
  text = [(RFLongItemStandardCardSection *)self text];
  v5 = [text hash];
  v6 = v5 ^ [(RFLongItemStandardCardSection *)self is_quote];
  v7 = v6 ^ [(RFLongItemStandardCardSection *)self has_background_platter];
  v8 = v7 ^ [(RFLongItemStandardCardSection *)self is_fresh];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(RFLongItemStandardCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v17.receiver = self;
      v17.super_class = RFLongItemStandardCardSection;
      if ([(SFCardSection *)&v17 isEqual:equalCopy])
      {
        v7 = equalCopy;
        text = [(RFLongItemStandardCardSection *)self text];
        text2 = [(RFLongItemStandardCardSection *)v7 text];
        if ((text != 0) == (text2 == 0))
        {
          v12 = 0;
LABEL_16:

          goto LABEL_17;
        }

        text3 = [(RFLongItemStandardCardSection *)self text];
        if (!text3 || (-[RFLongItemStandardCardSection text](self, "text"), v3 = objc_claimAutoreleasedReturnValue(), -[RFLongItemStandardCardSection text](v7, "text"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          is_quote = [(RFLongItemStandardCardSection *)self is_quote];
          if (is_quote == [(RFLongItemStandardCardSection *)v7 is_quote]&& (v14 = [(RFLongItemStandardCardSection *)self has_background_platter], v14 == [(RFLongItemStandardCardSection *)v7 has_background_platter]))
          {
            is_fresh = [(RFLongItemStandardCardSection *)self is_fresh];
            v11 = is_fresh ^ [(RFLongItemStandardCardSection *)v7 is_fresh]^ 1;
            v12 = v11;
            if (!text3)
            {
              goto LABEL_15;
            }
          }

          else
          {
            LOBYTE(v11) = 0;
            v12 = 0;
            if (!text3)
            {
LABEL_15:

              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        v12 = v11;
        goto LABEL_15;
      }
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RFLongItemStandardCardSection;
  v4 = [(SFCardSection *)&v8 copyWithZone:zone];
  text = [(RFLongItemStandardCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  [v4 setIs_quote:{-[RFLongItemStandardCardSection is_quote](self, "is_quote")}];
  [v4 setHas_background_platter:{-[RFLongItemStandardCardSection has_background_platter](self, "has_background_platter")}];
  [v4 setIs_fresh:{-[RFLongItemStandardCardSection is_fresh](self, "is_fresh")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFLongItemStandardCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFLongItemStandardCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFLongItemStandardCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFLongItemStandardCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFLongItemStandardCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFLongItemStandardCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [(SFCardSection *)v8 text];
    [(RFLongItemStandardCardSection *)v5 setText_1:text];

    [(RFLongItemStandardCardSection *)v5 setIs_quote:[(SFCardSection *)v8 is_quote]];
    [(RFLongItemStandardCardSection *)v5 setHas_background_platter:[(SFCardSection *)v8 has_background_platter]];
    [(RFLongItemStandardCardSection *)v5 setIs_fresh:[(SFCardSection *)v8 is_fresh]];
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

- (RFLongItemStandardCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = RFLongItemStandardCardSection;
  v5 = [(SFCardSection *)&v12 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFLongItemStandardCardSection *)v5 setText_1:v9];
    }

    if ([protobufCopy is_quote])
    {
      -[RFLongItemStandardCardSection setIs_quote:](v5, "setIs_quote:", [protobufCopy is_quote]);
    }

    if ([protobufCopy has_background_platter])
    {
      -[RFLongItemStandardCardSection setHas_background_platter:](v5, "setHas_background_platter:", [protobufCopy has_background_platter]);
    }

    if ([protobufCopy is_fresh])
    {
      -[RFLongItemStandardCardSection setIs_fresh:](v5, "setIs_fresh:", [protobufCopy is_fresh]);
    }

    v10 = v5;
  }

  return v5;
}

@end