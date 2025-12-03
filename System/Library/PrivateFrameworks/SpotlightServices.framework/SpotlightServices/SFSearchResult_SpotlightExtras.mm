@interface SFSearchResult_SpotlightExtras
+ (void)initialize;
- (BOOL)isSafariTopHitForQuery:(id)query;
- (SFSearchResult_SpotlightExtras)init;
- (SFSearchResult_SpotlightExtras)initWithCoder:(id)coder;
- (SFSearchResult_SpotlightExtras)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributeKeys:(id)keys attributeValues:(id)values type:(int)type completion:(id)completion;
- (SFSearchResult_SpotlightExtras)initWithResult:(id)result;
- (SFSearchResult_SpotlightExtras)initWithResult:(id)result groupId:(id)id;
- (UTType)uniformContentType;
- (id)debugDescription;
- (id)fullAttributeSet;
- (id)getStableServerResultIdentifier;
- (id)punchout;
- (id)ttrDescription;
- (id)urlValueForAttribute:(id)attribute;
- (id)valueForAttribute:(id)attribute withType:(Class)type;
- (uint64_t)score;
- (void)clearBackendData;
- (void)encodeWithCoder:(id)coder;
- (void)setContentType:(id)type;
- (void)setFeedbackPropertiesOnResultCopy:(id)copy;
- (void)setUniformContentType:(id)type;
- (void)setUrl:(id)url;
@end

@implementation SFSearchResult_SpotlightExtras

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    userDefaults_0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)clearBackendData
{
  [(SFSearchResult_SpotlightExtras *)self setBackendData:0];

  [(SFSearchResult_SpotlightExtras *)self setAttributeData:0];
}

- (SFSearchResult_SpotlightExtras)initWithResult:(id)result groupId:(id)id
{
  resultCopy = result;
  v6 = [(SFSearchResult_SpotlightExtras *)self init];
  if (v6)
  {
    contentType = [resultCopy contentType];
    [(SFSearchResult_SpotlightExtras *)v6 setContentType:contentType];

    [resultCopy setFeedbackPropertiesOnResultCopy:v6];
    thumbnail = [resultCopy thumbnail];
    [(SFSearchResult_SpotlightExtras *)v6 setThumbnail:thumbnail];

    -[SFSearchResult_SpotlightExtras setPreventThumbnailImageScaling:](v6, "setPreventThumbnailImageScaling:", [resultCopy preventThumbnailImageScaling]);
    secondaryTitleImage = [resultCopy secondaryTitleImage];
    [(SFSearchResult_SpotlightExtras *)v6 setSecondaryTitleImage:secondaryTitleImage];

    -[SFSearchResult_SpotlightExtras setIsSecondaryTitleDetached:](v6, "setIsSecondaryTitleDetached:", [resultCopy isSecondaryTitleDetached]);
    -[SFSearchResult_SpotlightExtras setIsCentered:](v6, "setIsCentered:", [resultCopy isCentered]);
    publishDate = [resultCopy publishDate];
    [(SFSearchResult_SpotlightExtras *)v6 setPublishDate:publishDate];

    sourceName = [resultCopy sourceName];
    [(SFSearchResult_SpotlightExtras *)v6 setSourceName:sourceName];

    completion = [resultCopy completion];
    [(SFSearchResult_SpotlightExtras *)v6 setCompletion:completion];

    completionImage = [resultCopy completionImage];
    [(SFSearchResult_SpotlightExtras *)v6 setCompletionImage:completionImage];

    v14 = [resultCopy url];
    [(SFSearchResult_SpotlightExtras *)v6 setUrl:v14];

    auxiliaryTopText = [resultCopy auxiliaryTopText];
    [(SFSearchResult_SpotlightExtras *)v6 setAuxiliaryTopText:auxiliaryTopText];

    auxiliaryMiddleText = [resultCopy auxiliaryMiddleText];
    [(SFSearchResult_SpotlightExtras *)v6 setAuxiliaryMiddleText:auxiliaryMiddleText];

    auxiliaryBottomText = [resultCopy auxiliaryBottomText];
    [(SFSearchResult_SpotlightExtras *)v6 setAuxiliaryBottomText:auxiliaryBottomText];

    -[SFSearchResult_SpotlightExtras setAuxiliaryBottomTextColor:](v6, "setAuxiliaryBottomTextColor:", [resultCopy auxiliaryBottomTextColor]);
    punchout = [resultCopy punchout];
    [(SFSearchResult_SpotlightExtras *)v6 setPunchout:punchout];

    storeIdentifier = [resultCopy storeIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setStoreIdentifier:storeIdentifier];

    calendarIdentifier = [resultCopy calendarIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setCalendarIdentifier:calendarIdentifier];

    mapsData = [resultCopy mapsData];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsData:mapsData];

    mapsResultType = [resultCopy mapsResultType];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsResultType:mapsResultType];

    mapsMoreURL = [resultCopy mapsMoreURL];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsMoreURL:mapsMoreURL];

    mapsMoreString = [resultCopy mapsMoreString];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsMoreString:mapsMoreString];

    mapsMoreIcon = [resultCopy mapsMoreIcon];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsMoreIcon:mapsMoreIcon];

    nearbyBusinessesString = [resultCopy nearbyBusinessesString];
    [(SFSearchResult_SpotlightExtras *)v6 setNearbyBusinessesString:nearbyBusinessesString];

    appleReferrer = [resultCopy appleReferrer];
    [(SFSearchResult_SpotlightExtras *)v6 setAppleReferrer:appleReferrer];

    card = [resultCopy card];
    [(SFSearchResult_SpotlightExtras *)v6 setCard:card];

    moreResults = [resultCopy moreResults];
    [(SFSearchResult_SpotlightExtras *)v6 setMoreResults:moreResults];

    moreResultsPunchout = [resultCopy moreResultsPunchout];
    [(SFSearchResult_SpotlightExtras *)v6 setMoreResultsPunchout:moreResultsPunchout];

    userActivityRequiredString = [resultCopy userActivityRequiredString];
    [(SFSearchResult_SpotlightExtras *)v6 setUserActivityRequiredString:userActivityRequiredString];

    sectionHeader = [resultCopy sectionHeader];
    [(SFSearchResult_SpotlightExtras *)v6 setSectionHeader:sectionHeader];

    sectionHeaderMore = [resultCopy sectionHeaderMore];
    [(SFSearchResult_SpotlightExtras *)v6 setSectionHeaderMore:sectionHeaderMore];

    sectionHeaderMoreURL = [resultCopy sectionHeaderMoreURL];
    [(SFSearchResult_SpotlightExtras *)v6 setSectionHeaderMoreURL:sectionHeaderMoreURL];

    -[SFSearchResult_SpotlightExtras setRenderHorizontallyWithOtherResultsInCategory:](v6, "setRenderHorizontallyWithOtherResultsInCategory:", [resultCopy renderHorizontallyWithOtherResultsInCategory]);
    -[SFSearchResult_SpotlightExtras setPlacement:](v6, "setPlacement:", [resultCopy placement]);
    -[SFSearchResult_SpotlightExtras setMinimumRankOfTopHitToSuppressResult:](v6, "setMinimumRankOfTopHitToSuppressResult:", [resultCopy minimumRankOfTopHitToSuppressResult]);
    resultTemplate = [resultCopy resultTemplate];
    [(SFSearchResult_SpotlightExtras *)v6 setResultTemplate:resultTemplate];

    -[SFSearchResult_SpotlightExtras setIsQuickGlance:](v6, "setIsQuickGlance:", [resultCopy isQuickGlance]);
    -[SFSearchResult_SpotlightExtras setIsStreaming:](v6, "setIsStreaming:", [resultCopy isStreaming]);
    engagementScore = [resultCopy engagementScore];
    [(SFSearchResult_SpotlightExtras *)v6 setEngagementScore:engagementScore];

    queryIndependentScore = [resultCopy queryIndependentScore];
    [(SFSearchResult_SpotlightExtras *)v6 setQueryIndependentScore:queryIndependentScore];

    maxAge = [resultCopy maxAge];
    [(SFSearchResult_SpotlightExtras *)v6 setMaxAge:maxAge];

    titleNote = [resultCopy titleNote];
    [(SFSearchResult_SpotlightExtras *)v6 setTitleNote:titleNote];

    titleNoteSize = [resultCopy titleNoteSize];
    [(SFSearchResult_SpotlightExtras *)v6 setTitleNoteSize:titleNoteSize];

    icon = [resultCopy icon];
    [(SFSearchResult_SpotlightExtras *)v6 setIcon:icon];

    itemProviderDataTypes = [resultCopy itemProviderDataTypes];
    [(SFSearchResult_SpotlightExtras *)v6 setItemProviderDataTypes:itemProviderDataTypes];

    itemProviderFileTypes = [resultCopy itemProviderFileTypes];
    [(SFSearchResult_SpotlightExtras *)v6 setItemProviderFileTypes:itemProviderFileTypes];

    contentTypeTree = [resultCopy contentTypeTree];
    [(SFSearchResult_SpotlightExtras *)v6 setContentTypeTree:contentTypeTree];

    -[SFSearchResult_SpotlightExtras setDataOwnerType:](v6, "setDataOwnerType:", [resultCopy dataOwnerType]);
    fileProviderIdentifier = [resultCopy fileProviderIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setFileProviderIdentifier:fileProviderIdentifier];

    fileProviderDomainIdentifier = [resultCopy fileProviderDomainIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setFileProviderDomainIdentifier:fileProviderDomainIdentifier];

    v47 = [resultCopy srf];
    [(SFSearchResult_SpotlightExtras *)v6 setSrf:v47];

    -[SFSearchResult_SpotlightExtras setDoNotFold:](v6, "setDoNotFold:", [resultCopy doNotFold]);
    localFeatures = [resultCopy localFeatures];
    [(SFSearchResult_SpotlightExtras *)v6 setLocalFeatures:localFeatures];

    entityData = [resultCopy entityData];
    [(SFSearchResult_SpotlightExtras *)v6 setEntityData:entityData];

    entityIdentifier = [resultCopy entityIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setEntityIdentifier:entityIdentifier];

    mapsData2 = [resultCopy mapsData];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsData:mapsData2];

    normalizedTopic = [resultCopy normalizedTopic];
    [(SFSearchResult_SpotlightExtras *)v6 setNormalizedTopic:normalizedTopic];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = resultCopy;
      -[SFSearchResult_SpotlightExtras setHasTextContentMatch:](v6, "setHasTextContentMatch:", [v53 hasTextContentMatch]);
      mapsPersonalizationResult = [v53 mapsPersonalizationResult];
      [(SFSearchResult_SpotlightExtras *)v6 setMapsPersonalizationResult:mapsPersonalizationResult];

      backendData = [v53 backendData];
      v56 = [backendData mutableCopy];
      [(SFSearchResult_SpotlightExtras *)v6 setBackendData:v56];

      rankingItem = [v53 rankingItem];
      [(SFSearchResult_SpotlightExtras *)v6 setRankingItem:rankingItem];

      answerAttributes = [v53 answerAttributes];
      v59 = [answerAttributes copy];
      [(SFSearchResult_SpotlightExtras *)v6 setAnswerAttributes:v59];

      textMatches = [v53 textMatches];
      v61 = [textMatches copy];
      [(SFSearchResult_SpotlightExtras *)v6 setTextMatches:v61];

      objc_storeStrong(&v6->_uniformContentType, *(v53 + 99));
      v6->_uniformContentTypeUnavailable = *(v53 + 800);
      contentURL = [v53 contentURL];

      [(SFSearchResult_SpotlightExtras *)v6 setContentURL:contentURL];
    }
  }

  return v6;
}

- (SFSearchResult_SpotlightExtras)initWithResult:(id)result
{
  resultCopy = result;
  v5 = [(SFSearchResult_SpotlightExtras *)self initWithResult:resultCopy groupId:0];
  if (v5)
  {
    lastUsedDate = [resultCopy lastUsedDate];
    lastUsedDate = v5->_lastUsedDate;
    v5->_lastUsedDate = lastUsedDate;

    contentCreationDate = [resultCopy contentCreationDate];
    contentCreationDate = v5->_contentCreationDate;
    v5->_contentCreationDate = contentCreationDate;

    [resultCopy l2score];
    v5->_l2score = v10;
    v5->_feedbackBlockId = [resultCopy feedbackBlockId];
    objc_storeStrong(&v5->_uniformContentType, *(resultCopy + 99));
    v5->_uniformContentTypeUnavailable = *(resultCopy + 800);
  }

  return v5;
}

- (SFSearchResult_SpotlightExtras)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class attributeKeys:(id)keys attributeValues:(id)values type:(int)type completion:(id)completion
{
  selfCopy = self;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  classCopy = class;
  keysCopy = keys;
  valuesCopy = values;
  completionCopy = completion;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = [keysCopy count];
  if (v18 == [valuesCopy count] && v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = [keysCopy objectAtIndexedSubscript:{i, selfCopy}];
      v21 = [valuesCopy objectAtIndexedSubscript:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v17 setObject:v21 forKey:v20];
      }
    }
  }

  selfCopy = [(SFSearchResult_SpotlightExtras *)selfCopy initWithIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy attributes:v17 type:type completion:completionCopy, selfCopy];

  return selfCopy;
}

- (id)debugDescription
{
  title = [(SFSearchResult_SpotlightExtras *)self title];
  text = [title text];

  if (!text)
  {
    compactCard = [(SFSearchResult_SpotlightExtras *)self compactCard];
    v6 = compactCard;
    if (compactCard)
    {
      inlineCard = compactCard;
    }

    else
    {
      inlineCard = [(SFSearchResult_SpotlightExtras *)self inlineCard];
    }

    v8 = inlineCard;

    cardSections = [v8 cardSections];
    firstObject = [cardSections firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title2 = [firstObject title];
      text = [title2 text];
    }

    else
    {
      text = 0;
    }
  }

  v12 = MEMORY[0x1E696AD60];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  sectionBundleIdentifier = [(SFSearchResult_SpotlightExtras *)self sectionBundleIdentifier];
  v16 = [v12 stringWithFormat:@"<%@ %p> %@ (%@)", v14, self, text, sectionBundleIdentifier];

  sectionBundleIdentifier2 = [(SFSearchResult_SpotlightExtras *)self sectionBundleIdentifier];
  LODWORD(sectionBundleIdentifier) = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier2);

  if (sectionBundleIdentifier)
  {
    inlineCard2 = [(SFSearchResult_SpotlightExtras *)self inlineCard];
    cardSections2 = [inlineCard2 cardSections];
    firstObject2 = [cardSections2 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cardSections3 = [firstObject2 cardSections];
      firstObject3 = [cardSections3 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        thumbnail = [firstObject3 thumbnail];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          photoIdentifier = [thumbnail photoIdentifier];
          v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(thumbnail, "isSyndicated")}];
          [v16 appendFormat:@" PhotoId: %@ isSyndicated: %@", photoIdentifier, v25];
        }
      }
    }
  }

  return v16;
}

- (id)ttrDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(SFSearchResult_SpotlightExtras *)self debugDescription];
  v5 = [v3 stringWithString:v4];

  rankingItem = [(SFSearchResult_SpotlightExtras *)self rankingItem];
  hasShortCut = [rankingItem hasShortCut];
  l2FeatureVector = [rankingItem L2FeatureVector];
  applicationBundleIdentifier = [(SFSearchResult_SpotlightExtras *)self applicationBundleIdentifier];
  v10 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    [v5 appendFormat:@"\n\t\tselfBundle:%@", applicationBundleIdentifier];
  }

  else
  {
    resultBundleId = [(SFSearchResult_SpotlightExtras *)self resultBundleId];
    [v5 appendFormat:@"\n\t\tselfBundle:%@", resultBundleId];
  }

  [l2FeatureVector originalL2Score];
  [v5 appendFormat:@"\toriginalL2:%.3f", v12];
  [l2FeatureVector experimentalScore];
  [v5 appendFormat:@"\texperimentalScore:%.3f", v13];
  [rankingItem rawScore];
  [v5 appendFormat:@"\n\t\trawScore:%.3f", v14];
  [rankingItem score];
  [v5 appendFormat:@"\tscore:%.3f", v15];
  [(SFSearchResult_SpotlightExtras *)self l2score];
  [v5 appendFormat:@"\tL2Score:%.3f", v16];
  [l2FeatureVector scoreForFeature:386];
  [v5 appendFormat:@"\n\t\tparsecEnumScore:%.3f", v17];
  [l2FeatureVector withinBundleScore];
  [v5 appendFormat:@"\tL2VectorWithinBundleScore:%.3f", v18];
  [rankingItem withinBundleScore];
  [v5 appendFormat:@"\twithinBundleScore:%.3f", v19];
  [l2FeatureVector scoreForFeature:366];
  [v5 appendFormat:@"\n\t\tcep:%.6f", v20];
  [v5 appendFormat:@"\ttopHit:%d", -[SFSearchResult_SpotlightExtras topHit](self, "topHit")];
  [v5 appendFormat:@"\tblockId:%llu", -[SFSearchResult_SpotlightExtras blockId](self, "blockId")];
  [v5 appendFormat:@"\n\t\tsafariTophit:%d", -[SFSearchResult_SpotlightExtras isSafariTopHit](self, "isSafariTopHit")];
  [v5 appendFormat:@"\thasShortcut:%d", hasShortCut];
  [v5 appendFormat:@"\tisFuzzyMatch:%d", -[SFSearchResult_SpotlightExtras isFuzzyMatch](self, "isFuzzyMatch")];
  [v5 appendFormat:@"\n\t\tshouldUseCompactDisplay:%d", -[SFSearchResult_SpotlightExtras shouldUseCompactDisplay](self, "shouldUseCompactDisplay")];
  [v5 appendFormat:@"\tusesCompactDisplay:%d", -[SFSearchResult_SpotlightExtras usesCompactDisplay](self, "usesCompactDisplay")];
  [v5 appendFormat:@"\tusesTopHitDisplay:%d", -[SFSearchResult_SpotlightExtras usesTopHitDisplay](self, "usesTopHitDisplay")];
  [v5 appendFormat:@"\tshouldHideUnderShowMore:%d", objc_msgSend(rankingItem, "shouldHideUnderShowMore")];
  [v5 appendFormat:@"\n\t\tphotosMatch:%d", objc_msgSend(rankingItem, "photosMatch")];
  if (SSResultTypeIsLocalSuggestion([(SFSearchResult_SpotlightExtras *)self type]))
  {
    [v5 appendFormat:@"\ttype:%d", -[SFSearchResult_SpotlightExtras type](self, "type")];
    [(SFSearchResult_SpotlightExtras *)self rankingScore];
    [v5 appendFormat:@"\trankingScore:%f", v21];
  }

  return v5;
}

- (id)getStableServerResultIdentifier
{
  sectionBundleIdentifier = [(SFSearchResult_SpotlightExtras *)self sectionBundleIdentifier];
  if (![sectionBundleIdentifier isEqualToString:@"com.apple.parsec.stocks"])
  {
LABEL_5:

    goto LABEL_6;
  }

  identifier = [(SFSearchResult_SpotlightExtras *)self identifier];
  v5 = [identifier hasSuffix:@"high_low"];

  if (v5)
  {
    identifier2 = [(SFSearchResult_SpotlightExtras *)self identifier];
    sectionBundleIdentifier = [identifier2 componentsSeparatedByString:@"-"];

    if ([sectionBundleIdentifier count] == 3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [sectionBundleIdentifier objectAtIndexedSubscript:1];
      identifier3 = [v7 stringWithFormat:@"st:%@", v8];

      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  identifier3 = [(SFSearchResult_SpotlightExtras *)self identifier];
LABEL_7:

  return identifier3;
}

- (id)urlValueForAttribute:(id)attribute
{
  v12 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  v5 = [(SFSearchResult_SpotlightExtras *)self valueForAttribute:attributeCopy withType:objc_opt_class()];
  if (!v5)
  {
    v6 = [(SFSearchResult_SpotlightExtras *)self valueForAttribute:attributeCopy withType:objc_opt_class()];
    if ([v6 length])
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      v7 = SSGeneralLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = attributeCopy;
        _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_INFO, "%@ found to be NSString instead of NSURL. Converting to NSURL.", &v10, 0xCu);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fullAttributeSet
{
  v27 = *MEMORY[0x1E69E9840];
  backendData = [(SFSearchResult_SpotlightExtras *)self backendData];
  if (!backendData)
  {
    attributeData = [(SFSearchResult_SpotlightExtras *)self attributeData];

    if (!attributeData)
    {
      goto LABEL_5;
    }

    v5 = objc_alloc(MEMORY[0x1E6964E08]);
    backendData = [(SFSearchResult_SpotlightExtras *)self attributeData];
    v6 = [v5 initWithData:backendData];
    decode = [v6 decode];
    v8 = [decode mutableCopy];
    [(SFSearchResult_SpotlightExtras *)self setBackendData:v8];
  }

LABEL_5:
  backendData2 = [(SFSearchResult_SpotlightExtras *)self backendData];

  if (backendData2)
  {
    v10 = objc_opt_new();
    contentType = [(SFSearchResult_SpotlightExtras *)self contentType];
    backendData2 = [v10 initWithItemContentType:contentType];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    backendData3 = [(SFSearchResult_SpotlightExtras *)self backendData];
    v13 = [backendData3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(backendData3);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          backendData4 = [(SFSearchResult_SpotlightExtras *)self backendData];
          v19 = [backendData4 objectForKey:v17];

          [backendData2 setAttribute:v19 forKey:v17];
        }

        v14 = [backendData3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return backendData2;
}

- (void)setContentType:(id)type
{
  v5.receiver = self;
  v5.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v5 setContentType:type];
  uniformContentType = self->_uniformContentType;
  self->_uniformContentType = 0;

  self->_uniformContentTypeUnavailable = 0;
}

- (UTType)uniformContentType
{
  uniformContentType = self->_uniformContentType;
  if (!uniformContentType)
  {
    if (self->_uniformContentTypeUnavailable)
    {
      uniformContentType = 0;
      goto LABEL_9;
    }

    contentType = [(SFSearchResult_SpotlightExtras *)self contentType];
    if (contentType)
    {
      lastObject = contentType;
    }

    else
    {
      contentTypeTree = [(SFSearchResult_SpotlightExtras *)self contentTypeTree];
      lastObject = [contentTypeTree lastObject];

      if (!lastObject)
      {
LABEL_8:
        self->_uniformContentTypeUnavailable = self->_uniformContentType == 0;
        uniformContentType = self->_uniformContentType;
        goto LABEL_9;
      }
    }

    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:lastObject];
    v8 = self->_uniformContentType;
    self->_uniformContentType = v7;

    goto LABEL_8;
  }

LABEL_9:

  return uniformContentType;
}

- (void)setUniformContentType:(id)type
{
  typeCopy = type;
  identifier = [(UTType *)typeCopy identifier];
  [(SFSearchResult_SpotlightExtras *)self setContentType:identifier];

  uniformContentType = self->_uniformContentType;
  self->_uniformContentType = typeCopy;

  self->_uniformContentTypeUnavailable = 0;
}

- (SFSearchResult_SpotlightExtras)initWithCoder:(id)coder
{
  coderCopy = coder;
  v63.receiver = self;
  v63.super_class = SFSearchResult_SpotlightExtras;
  v5 = [(SFSearchResult_SpotlightExtras *)&v63 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [(SFSearchResult_SpotlightExtras *)v5 url];

    if (v7)
    {
      v8 = [(SFSearchResult_SpotlightExtras *)v6 url];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [SFSearchResult_SpotlightExtras initWithCoder:];
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_protectionClass"];
    protectionClass = v6->_protectionClass;
    v6->_protectionClass = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_launchString"];
    launchString = v6->_launchString;
    v6->_launchString = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
    filename = v6->_filename;
    v6->_filename = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fileIdentifier"];
    fileIdentifier = v6->_fileIdentifier;
    v6->_fileIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentFileIdentifier"];
    parentFileIdentifier = v6->_parentFileIdentifier;
    v6->_parentFileIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_documentIdentifier"];
    documentIdentifier = v6->_documentIdentifier;
    v6->_documentIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userActivityType"];
    userActivityType = v6->_userActivityType;
    v6->_userActivityType = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentURL"];
    contentURL = v6->_contentURL;
    v6->_contentURL = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personIdentifier"];
    personIdentifier = v6->_personIdentifier;
    v6->_personIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personQueryIdentifier"];
    personQueryIdentifier = v6->_personQueryIdentifier;
    v6->_personQueryIdentifier = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_relatedAppIdentifier"];
    relatedAppIdentifier = v6->_relatedAppIdentifier;
    v6->_relatedAppIdentifier = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formattedSnippet"];
    formattedSnippet = v6->_formattedSnippet;
    v6->_formattedSnippet = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayOrder"];
    displayOrder = v6->_displayOrder;
    v6->_displayOrder = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_suggestionsFeedbackData"];
    suggestionsFeedbackData = v6->_suggestionsFeedbackData;
    v6->_suggestionsFeedbackData = v35;

    v6->_hasCommunicationContent = [coderCopy decodeBoolForKey:@"_hasCommunicationContent"];
    v6->_hasTextContent = [coderCopy decodeBoolForKey:@"_hasTextContent"];
    v6->_hasTextContentMatch = [coderCopy decodeBoolForKey:@"_hasTextContentMatch"];
    v6->_predictionsFeedbackActionType = [coderCopy decodeIntegerForKey:@"_predictionsFeedbackActionType"];
    [coderCopy decodeFloatForKey:@"_l2score"];
    v6->_l2score = v37;
    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"_duplicatedItems"];
    duplicatedItems = v6->_duplicatedItems;
    v6->_duplicatedItems = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_attributeData"];
    attributeData = v6->_attributeData;
    v6->_attributeData = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastUsedDate"];
    lastUsedDate = v6->_lastUsedDate;
    v6->_lastUsedDate = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentCreationDate"];
    contentCreationDate = v6->_contentCreationDate;
    v6->_contentCreationDate = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_isAppClip"];
    v6->_isAppClip = [v49 BOOLValue];

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_isWebClip"];
    v6->_isWebClip = [v50 BOOLValue];

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniformContentType"];
    uniformContentType = v6->_uniformContentType;
    v6->_uniformContentType = v51;

    v6->_uniformContentTypeUnavailable = [coderCopy decodeBoolForKey:@"_uniformContentTypeUnavailable"];
    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_rankingItem"];
    rankingItem = v6->_rankingItem;
    v6->_rankingItem = v53;

    if (!v6->_rankingItem)
    {
      v55 = objc_alloc_init(PRSRankingItem);
      v56 = v6->_rankingItem;
      v6->_rankingItem = v55;
    }

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_l2Signals"];
    [(PRSRankingItem *)v6->_rankingItem setL2Signals:v57];

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsPersonalizationResult"];
    mapsPersonalizationResult = v6->_mapsPersonalizationResult;
    v6->_mapsPersonalizationResult = v58;

    v60 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_answerAttributes"];
    answerAttributes = v6->_answerAttributes;
    v6->_answerAttributes = v60;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v37 encodeWithCoder:coderCopy];
  v5 = [(SFSearchResult_SpotlightExtras *)self url];

  if (v5)
  {
    v6 = [(SFSearchResult_SpotlightExtras *)self url];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SFSearchResult_SpotlightExtras encodeWithCoder:];
    }
  }

  v36.receiver = self;
  v36.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v36 encodeWithCoder:coderCopy];
  protectionClass = self->_protectionClass;
  if (protectionClass)
  {
    [coderCopy encodeObject:protectionClass forKey:@"_protectionClass"];
  }

  launchString = self->_launchString;
  if (launchString)
  {
    [coderCopy encodeObject:launchString forKey:@"_launchString"];
  }

  filename = self->_filename;
  if (filename)
  {
    [coderCopy encodeObject:filename forKey:@"_filename"];
  }

  fileIdentifier = self->_fileIdentifier;
  if (fileIdentifier)
  {
    [coderCopy encodeObject:fileIdentifier forKey:@"_fileIdentifier"];
  }

  parentFileIdentifier = self->_parentFileIdentifier;
  if (parentFileIdentifier)
  {
    [coderCopy encodeObject:parentFileIdentifier forKey:@"_parentFileIdentifier"];
  }

  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    [coderCopy encodeObject:documentIdentifier forKey:@"_documentIdentifier"];
  }

  userActivityType = self->_userActivityType;
  if (userActivityType)
  {
    [coderCopy encodeObject:userActivityType forKey:@"_userActivityType"];
  }

  contentURL = self->_contentURL;
  if (contentURL)
  {
    [coderCopy encodeObject:contentURL forKey:@"_contentURL"];
  }

  personIdentifier = self->_personIdentifier;
  if (personIdentifier)
  {
    [coderCopy encodeObject:personIdentifier forKey:@"_personIdentifier"];
  }

  personQueryIdentifier = self->_personQueryIdentifier;
  if (personQueryIdentifier)
  {
    [coderCopy encodeObject:personQueryIdentifier forKey:@"_personQueryIdentifier"];
  }

  relatedAppIdentifier = self->_relatedAppIdentifier;
  if (relatedAppIdentifier)
  {
    [coderCopy encodeObject:relatedAppIdentifier forKey:@"_relatedAppIdentifier"];
  }

  formattedSnippet = self->_formattedSnippet;
  if (formattedSnippet)
  {
    [coderCopy encodeObject:formattedSnippet forKey:@"_formattedSnippet"];
  }

  displayOrder = self->_displayOrder;
  if (displayOrder)
  {
    [coderCopy encodeObject:displayOrder forKey:@"_displayOrder"];
  }

  suggestionsFeedbackData = self->_suggestionsFeedbackData;
  if (suggestionsFeedbackData)
  {
    [coderCopy encodeObject:suggestionsFeedbackData forKey:@"_suggestionsFeedbackData"];
  }

  if (self->_hasCommunicationContent)
  {
    [coderCopy encodeBool:1 forKey:@"_hasCommunicationContent"];
  }

  if (self->_hasTextContent)
  {
    [coderCopy encodeBool:1 forKey:@"_hasTextContent"];
  }

  if (self->_hasTextContentMatch)
  {
    [coderCopy encodeBool:1 forKey:@"_hasTextContentMatch"];
  }

  predictionsFeedbackActionType = self->_predictionsFeedbackActionType;
  if (predictionsFeedbackActionType)
  {
    [coderCopy encodeInteger:predictionsFeedbackActionType forKey:@"_predictionsFeedbackActionType"];
  }

  *&v7 = self->_l2score;
  [coderCopy encodeFloat:@"_l2score" forKey:v7];
  duplicatedItems = self->_duplicatedItems;
  if (duplicatedItems)
  {
    [coderCopy encodeObject:duplicatedItems forKey:@"_duplicatedItems"];
  }

  attributeData = self->_attributeData;
  if (attributeData)
  {
    [coderCopy encodeObject:attributeData forKey:@"_attributeData"];
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [coderCopy encodeObject:lastUsedDate forKey:@"_lastUsedDate"];
  }

  contentCreationDate = self->_contentCreationDate;
  if (contentCreationDate)
  {
    [coderCopy encodeObject:contentCreationDate forKey:@"_contentCreationDate"];
  }

  if (self->_isAppClip)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [coderCopy encodeObject:v27 forKey:@"_isAppClip"];
  }

  if (self->_isWebClip)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [coderCopy encodeObject:v28 forKey:@"_isWebClip"];
  }

  uniformContentType = self->_uniformContentType;
  if (uniformContentType)
  {
    [coderCopy encodeObject:uniformContentType forKey:@"_uniformContentType"];
  }

  [coderCopy encodeBool:self->_uniformContentTypeUnavailable forKey:@"_uniformContentTypeUnavailable"];
  rankingItem = self->_rankingItem;
  if (rankingItem)
  {
    [coderCopy encodeObject:rankingItem forKey:@"_rankingItem"];
    v31 = self->_rankingItem;
  }

  else
  {
    v31 = 0;
  }

  l2Signals = [(PRSRankingItem *)v31 l2Signals];

  if (l2Signals)
  {
    l2Signals2 = [(PRSRankingItem *)self->_rankingItem l2Signals];
    [coderCopy encodeObject:l2Signals2 forKey:@"_l2Signals"];
  }

  mapsPersonalizationResult = self->_mapsPersonalizationResult;
  if (mapsPersonalizationResult)
  {
    [coderCopy encodeObject:mapsPersonalizationResult forKey:@"_mapsPersonalizationResult"];
  }

  answerAttributes = self->_answerAttributes;
  if (answerAttributes)
  {
    [coderCopy encodeObject:answerAttributes forKey:@"_answerAttributes"];
  }
}

- (void)setFeedbackPropertiesOnResultCopy:(id)copy
{
  copyCopy = copy;
  v25.receiver = self;
  v25.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult *)&v25 setFeedbackPropertiesOnResultCopy:copyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    duplicatedItems = [(SFSearchResult_SpotlightExtras *)self duplicatedItems];
    [copyCopy setDuplicatedItems:duplicatedItems];

    attributeData = [(SFSearchResult_SpotlightExtras *)self attributeData];
    [copyCopy setAttributeData:attributeData];

    personIdentifier = [(SFSearchResult_SpotlightExtras *)self personIdentifier];
    [copyCopy setPersonIdentifier:personIdentifier];

    personQueryIdentifier = [(SFSearchResult_SpotlightExtras *)self personQueryIdentifier];
    [copyCopy setPersonQueryIdentifier:personQueryIdentifier];

    relatedAppIdentifier = [(SFSearchResult_SpotlightExtras *)self relatedAppIdentifier];
    [copyCopy setRelatedAppIdentifier:relatedAppIdentifier];

    formattedSnippet = [(SFSearchResult_SpotlightExtras *)self formattedSnippet];
    [copyCopy setFormattedSnippet:formattedSnippet];

    displayOrder = [(SFSearchResult_SpotlightExtras *)self displayOrder];
    [copyCopy setDisplayOrder:displayOrder];

    [copyCopy setIsAppClip:{-[SFSearchResult_SpotlightExtras isAppClip](self, "isAppClip")}];
    [copyCopy setIsWebClip:{-[SFSearchResult_SpotlightExtras isWebClip](self, "isWebClip")}];
    userActivityType = [(SFSearchResult_SpotlightExtras *)self userActivityType];
    [copyCopy setUserActivityType:userActivityType];

    userActivityRequiredString = [(SFSearchResult_SpotlightExtras *)self userActivityRequiredString];
    [copyCopy setUserActivityRequiredString:userActivityRequiredString];

    userActivityType2 = [(SFSearchResult_SpotlightExtras *)self userActivityType];
    v15 = [userActivityType2 isEqualToString:@"/app/intents"];

    if (v15)
    {
      v16 = 3;
LABEL_9:
      [copyCopy setPredictionsFeedbackActionType:v16];
      protectionClass = [(SFSearchResult_SpotlightExtras *)self protectionClass];
      [copyCopy setProtectionClass:protectionClass];

      launchString = [(SFSearchResult_SpotlightExtras *)self launchString];
      [copyCopy setLaunchString:launchString];

      suggestionsFeedbackData = [(SFSearchResult_SpotlightExtras *)self suggestionsFeedbackData];
      [copyCopy setSuggestionsFeedbackData:suggestionsFeedbackData];

      mapsPersonalizationResult = [(SFSearchResult_SpotlightExtras *)self mapsPersonalizationResult];
      [copyCopy setMapsPersonalizationResult:mapsPersonalizationResult];

      answerAttributes = [(SFSearchResult_SpotlightExtras *)self answerAttributes];
      [copyCopy setAnswerAttributes:answerAttributes];

      goto LABEL_10;
    }

    userActivityRequiredString2 = [(SFSearchResult_SpotlightExtras *)self userActivityRequiredString];
    if ([userActivityRequiredString2 length])
    {
      userActivityType3 = [(SFSearchResult_SpotlightExtras *)self userActivityType];
      v19 = [userActivityType3 length];

      if (v19)
      {
        v16 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = 4;
    goto LABEL_9;
  }

LABEL_10:
}

- (SFSearchResult_SpotlightExtras)init
{
  v3.receiver = self;
  v3.super_class = SFSearchResult_SpotlightExtras;
  return [(SFSearchResult_SpotlightExtras *)&v3 init];
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  if (urlCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SFSearchResult_SpotlightExtras setUrl:];
    }
  }

  v5.receiver = self;
  v5.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v5 setUrl:urlCopy];
}

- (id)punchout
{
  v19.receiver = self;
  v19.super_class = SFSearchResult_SpotlightExtras;
  punchout = [(SFSearchResult_SpotlightExtras *)&v19 punchout];
  v4 = punchout;
  if (punchout)
  {
    v5 = punchout;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  cachedPunchout = self->_cachedPunchout;
  if (cachedPunchout)
  {
    v5 = cachedPunchout;
    goto LABEL_5;
  }

  resultBundleId = [(SFSearchResult_SpotlightExtras *)self resultBundleId];
  if ([resultBundleId isEqualToString:@"com.apple.DocumentsApp"])
  {
    documentIdentifier = [(SFSearchResult_SpotlightExtras *)self documentIdentifier];

    if (documentIdentifier)
    {
      v11 = MEMORY[0x1E695DFF8];
      fileIdentifier = [(SFSearchResult_SpotlightExtras *)self fileIdentifier];
      filename = [(SFSearchResult_SpotlightExtras *)self filename];
      parentFileIdentifier = [(SFSearchResult_SpotlightExtras *)self parentFileIdentifier];
      documentIdentifier2 = [(SFSearchResult_SpotlightExtras *)self documentIdentifier];
      v16 = [v11 sp_URLFromFileID:fileIdentifier filename:filename parentFileID:parentFileIdentifier documentID:documentIdentifier2];

      if (v16)
      {
        v17 = [MEMORY[0x1E69CA320] punchoutWithURL:v16];
        v18 = self->_cachedPunchout;
        self->_cachedPunchout = v17;

        v7 = self->_cachedPunchout;
        goto LABEL_6;
      }
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (BOOL)isSafariTopHitForQuery:(id)query
{
  queryCopy = query;
  if (queryCopy)
  {
    contentURL = [(SFSearchResult_SpotlightExtras *)self contentURL];
    v6 = contentURL;
    if (!contentURL)
    {
      NSLog(&cfstr_DidnTFindMdite.isa, self);
      goto LABEL_13;
    }

    if ([contentURL hasPrefix:@"https://"])
    {
      v7 = 8;
    }

    else
    {
      if (![v6 hasPrefix:@"http://"])
      {
        goto LABEL_10;
      }

      v7 = 7;
    }

    v9 = [v6 substringFromIndex:v7];

    v6 = v9;
LABEL_10:
    if ([v6 hasPrefix:@"www."])
    {
      v10 = [v6 substringFromIndex:4];

      v6 = v10;
    }

    if ([v6 rangeOfString:queryCopy options:9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v8 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)valueForAttribute:(id)attribute withType:(Class)type
{
  attributeCopy = attribute;
  backendData = [(SFSearchResult_SpotlightExtras *)self backendData];
  if (!backendData)
  {
    attributeData = [(SFSearchResult_SpotlightExtras *)self attributeData];

    if (!attributeData)
    {
      goto LABEL_5;
    }

    v8 = objc_alloc(MEMORY[0x1E6964E08]);
    backendData = [(SFSearchResult_SpotlightExtras *)self attributeData];
    v9 = [v8 initWithData:backendData];
    decode = [v9 decode];
    v11 = [decode mutableCopy];
    [(SFSearchResult_SpotlightExtras *)self setBackendData:v11];
  }

LABEL_5:
  backendData2 = [(SFSearchResult_SpotlightExtras *)self backendData];
  v13 = [backendData2 objectForKey:attributeCopy];

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (uint64_t)score
{
  v1 = self + 1040;
  result = *(self + 1040);
  v3 = *(v1 + 8);
  return result;
}

@end