@interface SFSearchResult
- (NSData)jsonData;
- (NSData)mapsData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchResult)initWithCoder:(id)coder;
- (SFSearchResult)initWithQueryTopic:(id)topic;
- (SFSearchResult)initWithSearchResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updatePunchout;
@end

@implementation SFSearchResult

- (NSData)mapsData
{
  cardSections = [(SFCard *)self->_inlineCard cardSections];
  firstObject = [cardSections firstObject];

  mapsData = self->_mapsData;
  if (!mapsData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mapsData = [firstObject mapsData];
      goto LABEL_6;
    }

    mapsData = self->_mapsData;
  }

  mapsData = mapsData;
LABEL_6:
  v7 = mapsData;

  return v7;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SFSearchResult *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v95 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  action = [(SFSearchResult *)self action];
  dictionaryRepresentation = [action dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"action"];

  applicationBundleIdentifier = [(SFSearchResult *)self applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    applicationBundleIdentifier2 = [(SFSearchResult *)self applicationBundleIdentifier];
    v8 = [applicationBundleIdentifier2 copy];
    [dictionary setObject:v8 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  completedQuery = [(SFSearchResult *)self completedQuery];

  if (completedQuery)
  {
    completedQuery2 = [(SFSearchResult *)self completedQuery];
    v11 = [completedQuery2 copy];
    [dictionary setObject:v11 forKeyedSubscript:@"completedQuery"];
  }

  correctedQuery = [(SFSearchResult *)self correctedQuery];

  if (correctedQuery)
  {
    correctedQuery2 = [(SFSearchResult *)self correctedQuery];
    v14 = [correctedQuery2 copy];
    [dictionary setObject:v14 forKeyedSubscript:@"correctedQuery"];
  }

  descriptions = [(SFSearchResult *)self descriptions];
  v16 = [descriptions count];

  if (v16)
  {
    array = [MEMORY[0x1E695DF70] array];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    descriptions2 = [(SFSearchResult *)self descriptions];
    v19 = [descriptions2 countByEnumeratingWithState:&v89 objects:v94 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v90;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v90 != v21)
          {
            objc_enumerationMutation(descriptions2);
          }

          dictionaryRepresentation2 = [*(*(&v89 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v20 = [descriptions2 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array forKeyedSubscript:@"descriptions"];
  }

  identifier = [(SFSearchResult *)self identifier];

  if (identifier)
  {
    identifier2 = [(SFSearchResult *)self identifier];
    v26 = [identifier2 copy];
    [dictionary setObject:v26 forKeyedSubscript:@"identifier"];
  }

  intendedQuery = [(SFSearchResult *)self intendedQuery];

  if (intendedQuery)
  {
    intendedQuery2 = [(SFSearchResult *)self intendedQuery];
    v29 = [intendedQuery2 copy];
    [dictionary setObject:v29 forKeyedSubscript:@"intendedQuery"];
  }

  v30 = [(SFSearchResult *)self fbr];

  if (v30)
  {
    v31 = [(SFSearchResult *)self fbr];
    v32 = [v31 copy];
    [dictionary setObject:v32 forKeyedSubscript:@"fbr"];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult isLocalApplicationResult](self, "isLocalApplicationResult")}];
  [dictionary setObject:v33 forKeyedSubscript:@"isLocalApplicationResult"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult isStaticCorrection](self, "isStaticCorrection")}];
  [dictionary setObject:v34 forKeyedSubscript:@"isStaticCorrection"];

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult isFuzzyMatch](self, "isFuzzyMatch")}];
  [dictionary setObject:v35 forKeyedSubscript:@"isFuzzyMatch"];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  localFeatures = [(SFSearchResult *)self localFeatures];
  v38 = [localFeatures countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v86;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v86 != v40)
        {
          objc_enumerationMutation(localFeatures);
        }

        v42 = *(*(&v85 + 1) + 8 * j);
        localFeatures2 = [(SFSearchResult *)self localFeatures];
        v44 = [localFeatures2 objectForKeyedSubscript:v42];
        [dictionary2 setObject:v44 forKeyedSubscript:v42];
      }

      v39 = [localFeatures countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v39);
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"localFeatures"];
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult publiclyIndexable](self, "publiclyIndexable")}];
  [dictionary setObject:v45 forKeyedSubscript:@"publiclyIndexable"];

  punchout = [(SFSearchResult *)self punchout];
  dictionaryRepresentation3 = [punchout dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"punchout"];

  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SFSearchResult queryId](self, "queryId")}];
  [dictionary setObject:v48 forKeyedSubscript:@"queryId"];

  v49 = MEMORY[0x1E696AD98];
  [(SFSearchResult *)self rankingScore];
  v50 = [v49 numberWithDouble:?];
  [dictionary setObject:v50 forKeyedSubscript:@"rankingScore"];

  resultBundleId = [(SFSearchResult *)self resultBundleId];

  if (resultBundleId)
  {
    resultBundleId2 = [(SFSearchResult *)self resultBundleId];
    v53 = [resultBundleId2 copy];
    [dictionary setObject:v53 forKeyedSubscript:@"resultBundleId"];
  }

  resultType = [(SFSearchResult *)self resultType];

  if (resultType)
  {
    resultType2 = [(SFSearchResult *)self resultType];
    v56 = [resultType2 copy];
    [dictionary setObject:v56 forKeyedSubscript:@"resultType"];
  }

  sectionBundleIdentifier = [(SFSearchResult *)self sectionBundleIdentifier];

  if (sectionBundleIdentifier)
  {
    sectionBundleIdentifier2 = [(SFSearchResult *)self sectionBundleIdentifier];
    v59 = [sectionBundleIdentifier2 copy];
    [dictionary setObject:v59 forKeyedSubscript:@"sectionBundleIdentifier"];
  }

  title = [(SFSearchResult *)self title];
  dictionaryRepresentation4 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"title"];

  v62 = [MEMORY[0x1E696AD98] numberWithInt:{-[SFSearchResult topHit](self, "topHit")}];
  [dictionary setObject:v62 forKeyedSubscript:@"topHit"];

  v63 = [MEMORY[0x1E696AD98] numberWithInt:{-[SFSearchResult type](self, "type")}];
  [dictionary setObject:v63 forKeyedSubscript:@"type"];

  v64 = [(SFSearchResult *)self url];
  dictionaryRepresentation5 = [v64 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"url"];

  inlineCard = [(SFSearchResult *)self inlineCard];

  if (inlineCard)
  {
    inlineCard2 = [(SFSearchResult *)self inlineCard];
    dictionaryRepresentation6 = [inlineCard2 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"inlineCard"];
  }

  card = [(SFSearchResult *)self card];

  if (card)
  {
    card2 = [(SFSearchResult *)self card];
    dictionaryRepresentation7 = [card2 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"card"];
  }

  thumbnail = [(SFSearchResult *)self thumbnail];

  if (thumbnail)
  {
    thumbnail2 = [(SFSearchResult *)self thumbnail];
    dictionaryRepresentation8 = [thumbnail2 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"thumbnail"];
  }

  secondaryTitle = [(SFSearchResult *)self secondaryTitle];

  if (secondaryTitle)
  {
    secondaryTitle2 = [(SFSearchResult *)self secondaryTitle];
    v77 = [secondaryTitle2 copy];
    [dictionary setObject:v77 forKeyedSubscript:@"secondaryTitle"];
  }

  footnote = [(SFSearchResult *)self footnote];

  if (footnote)
  {
    footnote2 = [(SFSearchResult *)self footnote];
    v80 = [footnote2 copy];
    [dictionary setObject:v80 forKeyedSubscript:@"footnote"];
  }

  if ([(SFSearchResult *)self doNotFold])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult doNotFold](self, "doNotFold")}];
    [dictionary setObject:v81 forKeyedSubscript:@"doNotFold"];
  }

  if ([(SFSearchResult *)self blockId])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SFSearchResult blockId](self, "blockId")}];
    [dictionary setObject:v82 forKeyedSubscript:@"blockId"];
  }

  v83 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)updatePunchout
{
  inlineCard = [(SFSearchResult *)self inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];
  punchoutOptions = [firstObject punchoutOptions];
  firstObject2 = [punchoutOptions firstObject];
  [(SFSearchResult *)self setPunchout:firstObject2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithSearchResult:self];
}

- (SFSearchResult)initWithSearchResult:(id)result
{
  resultCopy = result;
  v5 = [(SFSearchResult *)self init];
  if (v5)
  {
    identifier = [resultCopy identifier];
    [(SFSearchResult *)v5 setIdentifier:identifier];

    thumbnail = [resultCopy thumbnail];
    [(SFSearchResult *)v5 setThumbnail:thumbnail];

    -[SFSearchResult setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [resultCopy preventThumbnailImageScaling]);
    title = [resultCopy title];
    [(SFSearchResult *)v5 setTitle:title];

    secondaryTitle = [resultCopy secondaryTitle];
    [(SFSearchResult *)v5 setSecondaryTitle:secondaryTitle];

    secondaryTitleImage = [resultCopy secondaryTitleImage];
    [(SFSearchResult *)v5 setSecondaryTitleImage:secondaryTitleImage];

    -[SFSearchResult setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [resultCopy isSecondaryTitleDetached]);
    -[SFSearchResult setIsCentered:](v5, "setIsCentered:", [resultCopy isCentered]);
    descriptions = [resultCopy descriptions];
    [(SFSearchResult *)v5 setDescriptions:descriptions];

    footnote = [resultCopy footnote];
    [(SFSearchResult *)v5 setFootnote:footnote];

    publishDate = [resultCopy publishDate];
    [(SFSearchResult *)v5 setPublishDate:publishDate];

    sourceName = [resultCopy sourceName];
    [(SFSearchResult *)v5 setSourceName:sourceName];

    completion = [resultCopy completion];
    [(SFSearchResult *)v5 setCompletion:completion];

    completionImage = [resultCopy completionImage];
    [(SFSearchResult *)v5 setCompletionImage:completionImage];

    v17 = [resultCopy url];
    [(SFSearchResult *)v5 setUrl:v17];

    auxiliaryTopText = [resultCopy auxiliaryTopText];
    [(SFSearchResult *)v5 setAuxiliaryTopText:auxiliaryTopText];

    auxiliaryMiddleText = [resultCopy auxiliaryMiddleText];
    [(SFSearchResult *)v5 setAuxiliaryMiddleText:auxiliaryMiddleText];

    auxiliaryBottomText = [resultCopy auxiliaryBottomText];
    [(SFSearchResult *)v5 setAuxiliaryBottomText:auxiliaryBottomText];

    -[SFSearchResult setAuxiliaryBottomTextColor:](v5, "setAuxiliaryBottomTextColor:", [resultCopy auxiliaryBottomTextColor]);
    action = [resultCopy action];
    [(SFSearchResult *)v5 setAction:action];

    punchout = [resultCopy punchout];
    [(SFSearchResult *)v5 setPunchout:punchout];

    storeIdentifier = [resultCopy storeIdentifier];
    [(SFSearchResult *)v5 setStoreIdentifier:storeIdentifier];

    contactIdentifier = [resultCopy contactIdentifier];
    [(SFSearchResult *)v5 setContactIdentifier:contactIdentifier];

    calendarIdentifier = [resultCopy calendarIdentifier];
    [(SFSearchResult *)v5 setCalendarIdentifier:calendarIdentifier];

    entityIdentifier = [resultCopy entityIdentifier];
    [(SFSearchResult *)v5 setEntityIdentifier:entityIdentifier];

    mapsData = [resultCopy mapsData];
    [(SFSearchResult *)v5 setMapsData:mapsData];

    mapsResultType = [resultCopy mapsResultType];
    [(SFSearchResult *)v5 setMapsResultType:mapsResultType];

    mapsMoreURL = [resultCopy mapsMoreURL];
    [(SFSearchResult *)v5 setMapsMoreURL:mapsMoreURL];

    mapsMoreString = [resultCopy mapsMoreString];
    [(SFSearchResult *)v5 setMapsMoreString:mapsMoreString];

    mapsMoreIcon = [resultCopy mapsMoreIcon];
    [(SFSearchResult *)v5 setMapsMoreIcon:mapsMoreIcon];

    nearbyBusinessesString = [resultCopy nearbyBusinessesString];
    [(SFSearchResult *)v5 setNearbyBusinessesString:nearbyBusinessesString];

    appleReferrer = [resultCopy appleReferrer];
    [(SFSearchResult *)v5 setAppleReferrer:appleReferrer];

    card = [resultCopy card];
    [(SFSearchResult *)v5 setCard:card];

    inlineCard = [resultCopy inlineCard];
    [(SFSearchResult *)v5 setInlineCard:inlineCard];

    -[SFSearchResult setUsesTopHitDisplay:](v5, "setUsesTopHitDisplay:", [resultCopy usesTopHitDisplay]);
    tophitCard = [resultCopy tophitCard];
    [(SFSearchResult *)v5 setTophitCard:tophitCard];

    moreResults = [resultCopy moreResults];
    [(SFSearchResult *)v5 setMoreResults:moreResults];

    moreResultsPunchout = [resultCopy moreResultsPunchout];
    [(SFSearchResult *)v5 setMoreResultsPunchout:moreResultsPunchout];

    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    [(SFSearchResult *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    [(SFSearchResult *)v5 setSectionBundleIdentifier:sectionBundleIdentifier];

    -[SFSearchResult setIsLocalApplicationResult:](v5, "setIsLocalApplicationResult:", [resultCopy isLocalApplicationResult]);
    userActivityRequiredString = [resultCopy userActivityRequiredString];
    [(SFSearchResult *)v5 setUserActivityRequiredString:userActivityRequiredString];

    -[SFSearchResult setTopHit:](v5, "setTopHit:", [resultCopy topHit]);
    sectionHeader = [resultCopy sectionHeader];
    [(SFSearchResult *)v5 setSectionHeader:sectionHeader];

    sectionHeaderMore = [resultCopy sectionHeaderMore];
    [(SFSearchResult *)v5 setSectionHeaderMore:sectionHeaderMore];

    sectionHeaderMoreURL = [resultCopy sectionHeaderMoreURL];
    [(SFSearchResult *)v5 setSectionHeaderMoreURL:sectionHeaderMoreURL];

    -[SFSearchResult setRenderHorizontallyWithOtherResultsInCategory:](v5, "setRenderHorizontallyWithOtherResultsInCategory:", [resultCopy renderHorizontallyWithOtherResultsInCategory]);
    [resultCopy rankingScore];
    [(SFSearchResult *)v5 setRankingScore:?];
    -[SFSearchResult setPlacement:](v5, "setPlacement:", [resultCopy placement]);
    -[SFSearchResult setType:](v5, "setType:", [resultCopy type]);
    domainName = [resultCopy domainName];
    [(SFSearchResult *)v5 setDomainName:domainName];

    -[SFSearchResult setMinimumRankOfTopHitToSuppressResult:](v5, "setMinimumRankOfTopHitToSuppressResult:", [resultCopy minimumRankOfTopHitToSuppressResult]);
    mediaType = [resultCopy mediaType];
    [(SFSearchResult *)v5 setMediaType:mediaType];

    [resultCopy serverScore];
    [(SFSearchResult *)v5 setServerScore:?];
    [resultCopy personalizationScore];
    [(SFSearchResult *)v5 setPersonalizationScore:?];
    customProperties = [resultCopy customProperties];
    [(SFSearchResult *)v5 setCustomProperties:customProperties];

    resultType = [resultCopy resultType];
    [(SFSearchResult *)v5 setResultType:resultType];

    resultTemplate = [resultCopy resultTemplate];
    [(SFSearchResult *)v5 setResultTemplate:resultTemplate];

    -[SFSearchResult setIsQuickGlance:](v5, "setIsQuickGlance:", [resultCopy isQuickGlance]);
    -[SFSearchResult setIsStreaming:](v5, "setIsStreaming:", [resultCopy isStreaming]);
    engagementScore = [resultCopy engagementScore];
    [(SFSearchResult *)v5 setEngagementScore:engagementScore];

    queryIndependentScore = [resultCopy queryIndependentScore];
    [(SFSearchResult *)v5 setQueryIndependentScore:queryIndependentScore];

    maxAge = [resultCopy maxAge];
    [(SFSearchResult *)v5 setMaxAge:maxAge];

    titleNote = [resultCopy titleNote];
    [(SFSearchResult *)v5 setTitleNote:titleNote];

    titleNoteSize = [resultCopy titleNoteSize];
    [(SFSearchResult *)v5 setTitleNoteSize:titleNoteSize];

    resultBundleId = [resultCopy resultBundleId];
    [(SFSearchResult *)v5 setResultBundleId:resultBundleId];

    icon = [resultCopy icon];
    [(SFSearchResult *)v5 setIcon:icon];

    -[SFSearchResult setIsStaticCorrection:](v5, "setIsStaticCorrection:", [resultCopy isStaticCorrection]);
    localFeatures = [resultCopy localFeatures];
    [(SFSearchResult *)v5 setLocalFeatures:localFeatures];

    serverFeatures = [resultCopy serverFeatures];
    [(SFSearchResult *)v5 setServerFeatures:serverFeatures];

    intendedQuery = [resultCopy intendedQuery];
    [(SFSearchResult *)v5 setIntendedQuery:intendedQuery];

    correctedQuery = [resultCopy correctedQuery];
    [(SFSearchResult *)v5 setCorrectedQuery:correctedQuery];

    completedQuery = [resultCopy completedQuery];
    [(SFSearchResult *)v5 setCompletedQuery:completedQuery];

    -[SFSearchResult setNoGoTakeover:](v5, "setNoGoTakeover:", [resultCopy noGoTakeover]);
    -[SFSearchResult setShouldUseCompactDisplay:](v5, "setShouldUseCompactDisplay:", [resultCopy shouldUseCompactDisplay]);
    -[SFSearchResult setPreferTopPlatter:](v5, "setPreferTopPlatter:", [resultCopy preferTopPlatter]);
    -[SFSearchResult setWasCompact:](v5, "setWasCompact:", [resultCopy wasCompact]);
    -[SFSearchResult setDidTakeoverGo:](v5, "setDidTakeoverGo:", [resultCopy didTakeoverGo]);
    -[SFSearchResult setUsesCompactDisplay:](v5, "setUsesCompactDisplay:", [resultCopy usesCompactDisplay]);
    compactCard = [resultCopy compactCard];
    [(SFSearchResult *)v5 setCompactCard:compactCard];

    alternativeURLs = [resultCopy alternativeURLs];
    [(SFSearchResult *)v5 setAlternativeURLs:alternativeURLs];

    -[SFSearchResult setQueryId:](v5, "setQueryId:", [resultCopy queryId]);
    -[SFSearchResult setPubliclyIndexable:](v5, "setPubliclyIndexable:", [resultCopy publiclyIndexable]);
    userInput = [resultCopy userInput];
    [(SFSearchResult *)v5 setUserInput:userInput];

    itemProviderDataTypes = [resultCopy itemProviderDataTypes];
    [(SFSearchResult *)v5 setItemProviderDataTypes:itemProviderDataTypes];

    itemProviderFileTypes = [resultCopy itemProviderFileTypes];
    [(SFSearchResult *)v5 setItemProviderFileTypes:itemProviderFileTypes];

    contentType = [resultCopy contentType];
    [(SFSearchResult *)v5 setContentType:contentType];

    contentTypeTree = [resultCopy contentTypeTree];
    [(SFSearchResult *)v5 setContentTypeTree:contentTypeTree];

    -[SFSearchResult setDataOwnerType:](v5, "setDataOwnerType:", [resultCopy dataOwnerType]);
    fileProviderIdentifier = [resultCopy fileProviderIdentifier];
    [(SFSearchResult *)v5 setFileProviderIdentifier:fileProviderIdentifier];

    fileProviderDomainIdentifier = [resultCopy fileProviderDomainIdentifier];
    [(SFSearchResult *)v5 setFileProviderDomainIdentifier:fileProviderDomainIdentifier];

    v71 = [resultCopy fbr];
    [(SFSearchResult *)v5 setFbr:v71];

    v72 = [resultCopy srf];
    [(SFSearchResult *)v5 setSrf:v72];

    -[SFSearchResult setDoNotFold:](v5, "setDoNotFold:", [resultCopy doNotFold]);
    -[SFSearchResult setBlockId:](v5, "setBlockId:", [resultCopy blockId]);
    entityData = [resultCopy entityData];
    [(SFSearchResult *)v5 setEntityData:entityData];

    -[SFSearchResult setIsInstantAnswer:](v5, "setIsInstantAnswer:", [resultCopy isInstantAnswer]);
    -[SFSearchResult setShouldAutoNavigate:](v5, "setShouldAutoNavigate:", [resultCopy shouldAutoNavigate]);
    normalizedTopic = [resultCopy normalizedTopic];
    [(SFSearchResult *)v5 setNormalizedTopic:normalizedTopic];

    requestedTopic = [resultCopy requestedTopic];
    [(SFSearchResult *)v5 setRequestedTopic:requestedTopic];

    -[SFSearchResult setContainsPersonalResult:](v5, "setContainsPersonalResult:", [resultCopy containsPersonalResult]);
    -[SFSearchResult setDidRerankPersonalResult:](v5, "setDidRerankPersonalResult:", [resultCopy didRerankPersonalResult]);
    -[SFSearchResult setCoreSpotlightIndexUsed:](v5, "setCoreSpotlightIndexUsed:", [resultCopy coreSpotlightIndexUsed]);
    -[SFSearchResult setCoreSpotlightIndexUsedReason:](v5, "setCoreSpotlightIndexUsedReason:", [resultCopy coreSpotlightIndexUsedReason]);
    coreSpotlightRankingSignals = [resultCopy coreSpotlightRankingSignals];
    [(SFSearchResult *)v5 setCoreSpotlightRankingSignals:coreSpotlightRankingSignals];

    mailRankingSignals = [resultCopy mailRankingSignals];
    [(SFSearchResult *)v5 setMailRankingSignals:mailRankingSignals];

    mailResultDetails = [resultCopy mailResultDetails];
    [(SFSearchResult *)v5 setMailResultDetails:mailResultDetails];

    -[SFSearchResult setIsVideoAssetFromPhotos:](v5, "setIsVideoAssetFromPhotos:", [resultCopy isVideoAssetFromPhotos]);
    resultEntity = [resultCopy resultEntity];
    [(SFSearchResult *)v5 setResultEntity:resultEntity];

    entityType = [resultCopy entityType];
    [(SFSearchResult *)v5 setEntityType:entityType];

    -[SFSearchResult setIsMailInstantAnswerUpdated:](v5, "setIsMailInstantAnswerUpdated:", [resultCopy isMailInstantAnswerUpdated]);
    indexOfSectionWhenRanked = [resultCopy indexOfSectionWhenRanked];
    [(SFSearchResult *)v5 setIndexOfSectionWhenRanked:indexOfSectionWhenRanked];

    indexOfResultInSectionWhenRanked = [resultCopy indexOfResultInSectionWhenRanked];
    [(SFSearchResult *)v5 setIndexOfResultInSectionWhenRanked:indexOfResultInSectionWhenRanked];

    safariAttributes = [resultCopy safariAttributes];
    [(SFSearchResult *)v5 setSafariAttributes:safariAttributes];

    -[SFSearchResult setHasAppTopHitShortcut:](v5, "setHasAppTopHitShortcut:", [resultCopy hasAppTopHitShortcut]);
    photosAttributes = [resultCopy photosAttributes];
    [(SFSearchResult *)v5 setPhotosAttributes:photosAttributes];

    photosAggregatedInfo = [resultCopy photosAggregatedInfo];
    [(SFSearchResult *)v5 setPhotosAggregatedInfo:photosAggregatedInfo];

    moreResultsButton = [resultCopy moreResultsButton];
    [(SFSearchResult *)v5 setMoreResultsButton:moreResultsButton];

    serverCompletion = [resultCopy serverCompletion];
    [(SFSearchResult *)v5 setServerCompletion:serverCompletion];

    thirdPartyNavigationIntentScore = [resultCopy thirdPartyNavigationIntentScore];
    [(SFSearchResult *)v5 setThirdPartyNavigationIntentScore:thirdPartyNavigationIntentScore];

    -[SFSearchResult setThirdPartyQueryCompletionMatched:](v5, "setThirdPartyQueryCompletionMatched:", [resultCopy thirdPartyQueryCompletionMatched]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeDouble:@"_rankingScore" forKey:self->_rankingScore];
  [coderCopy encodeInteger:self->_topHit forKey:@"_topHit"];
  [coderCopy encodeObject:self->_thumbnail forKey:@"_thumbnail"];
  [coderCopy encodeBool:self->_preventThumbnailImageScaling forKey:@"_preventThumbnailImageScaling"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_secondaryTitle forKey:@"_secondaryTitle"];
  [coderCopy encodeObject:self->_secondaryTitleImage forKey:@"_secondaryTitleImage"];
  [coderCopy encodeBool:self->_isSecondaryTitleDetached forKey:@"_isSecondaryTitleDetached"];
  [coderCopy encodeBool:self->_isCentered forKey:@"_isCentered"];
  [coderCopy encodeObject:self->_descriptions forKey:@"_descriptions"];
  [coderCopy encodeObject:self->_footnote forKey:@"_footnote"];
  [coderCopy encodeObject:self->_publishDate forKey:@"_publishDate"];
  [coderCopy encodeObject:self->_sourceName forKey:@"_sourceName"];
  [coderCopy encodeObject:self->_completion forKey:@"_completion"];
  [coderCopy encodeObject:self->_completionImage forKey:@"_completionImage"];
  [coderCopy encodeObject:self->_url forKey:@"_url"];
  [coderCopy encodeObject:self->_auxiliaryTopText forKey:@"_auxiliaryTopText"];
  [coderCopy encodeObject:self->_auxiliaryMiddleText forKey:@"_auxiliaryMiddleText"];
  [coderCopy encodeObject:self->_auxiliaryBottomText forKey:@"_auxiliaryBottomText"];
  [coderCopy encodeInt:self->_auxiliaryBottomTextColor forKey:@"_auxiliaryBottomTextColor"];
  [coderCopy encodeObject:self->_action forKey:@"_action"];
  [coderCopy encodeObject:self->_punchout forKey:@"_punchout"];
  [coderCopy encodeObject:self->_storeIdentifier forKey:@"_storeIdentifier"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeObject:self->_calendarIdentifier forKey:@"_calendarIdentifier"];
  [coderCopy encodeObject:self->_entityIdentifier forKey:@"_entityIdentifier"];
  cardSections = [(SFCard *)self->_inlineCard cardSections];
  firstObject = [cardSections firstObject];

  if (firstObject)
  {
    cardSections2 = [(SFCard *)self->_inlineCard cardSections];
    firstObject2 = [cardSections2 firstObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([firstObject2 mapsData], v8 = objc_claimAutoreleasedReturnValue(), -[SFSearchResult mapsData](self, "mapsData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToData:", v9), v9, v8, (v10 & 1) == 0))
    {
      [coderCopy encodeObject:self->_mapsData forKey:@"_mapsData"];
    }
  }

  [coderCopy encodeObject:self->_mapsResultType forKey:@"_mapsResultType"];
  [coderCopy encodeObject:self->_mapsMoreURL forKey:@"_mapsMoreURL"];
  [coderCopy encodeObject:self->_mapsMoreString forKey:@"_mapsMoreString"];
  [coderCopy encodeObject:self->_mapsMoreIcon forKey:@"_mapsMoreIcon"];
  [coderCopy encodeObject:self->_nearbyBusinessesString forKey:@"_nearbyBusinessesString"];
  [coderCopy encodeObject:self->_appleReferrer forKey:@"_appleReferrer"];
  [coderCopy encodeObject:self->_card forKey:@"_card"];
  [coderCopy encodeObject:self->_inlineCard forKey:@"_inlineCard"];
  [coderCopy encodeObject:self->_moreResults forKey:@"_moreResults"];
  [coderCopy encodeObject:self->_moreResultsPunchout forKey:@"_moreResultsPunchout"];
  [coderCopy encodeObject:self->_normalizedTopic forKey:@"_normalizedTopic"];
  [coderCopy encodeObject:self->_requestedTopic forKey:@"_requestedTopic"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"_applicationBundleIdentifier"];
  [coderCopy encodeObject:self->_sectionBundleIdentifier forKey:@"_sectionBundleIdentifier"];
  [coderCopy encodeBool:self->_isLocalApplicationResult forKey:@"_isLocalApplicationResult"];
  [coderCopy encodeObject:self->_userActivityRequiredString forKey:@"_userActivityRequiredString"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeInteger:self->_minimumRankOfTopHitToSuppressResult forKey:@"_minimumRankOfTopHitToSuppressResult"];
  [coderCopy encodeObject:self->_sectionHeader forKey:@"_sectionHeader"];
  [coderCopy encodeObject:self->_sectionHeaderMore forKey:@"_sectionHeaderMore"];
  [coderCopy encodeObject:self->_sectionHeaderMoreURL forKey:@"_sectionHeaderMoreURL"];
  [coderCopy encodeObject:self->_customProperties forKey:@"_customProperties"];
  [coderCopy encodeBool:self->_renderHorizontallyWithOtherResultsInCategory forKey:@"_renderHorizontallyWithOtherResultsInCategory"];
  [coderCopy encodeInteger:self->_placement forKey:@"_placement"];
  [coderCopy encodeObject:self->_mediaType forKey:@"_mediaType"];
  [coderCopy encodeDouble:@"_serverScore" forKey:self->_serverScore];
  [coderCopy encodeDouble:@"_personalizationScore" forKey:self->_personalizationScore];
  [coderCopy encodeObject:self->_resultType forKey:@"_resultType"];
  [coderCopy encodeObject:self->_resultTemplate forKey:@"_resultTemplate"];
  [coderCopy encodeBool:self->_isQuickGlance forKey:@"_isQuickGlance"];
  [coderCopy encodeBool:self->_isStreaming forKey:@"_isStreaming"];
  [coderCopy encodeObject:self->_engagementScore forKey:@"_engagementScore"];
  [coderCopy encodeObject:self->_queryIndependentScore forKey:@"_queryIndependentScore"];
  [coderCopy encodeObject:self->_maxAge forKey:@"_maxAge"];
  [coderCopy encodeObject:self->_titleNote forKey:@"_titleNote"];
  [coderCopy encodeObject:self->_titleNoteSize forKey:@"_titleNoteSize"];
  [coderCopy encodeObject:self->_resultBundleId forKey:@"_resultBundleId"];
  [coderCopy encodeObject:self->_icon forKey:@"_icon"];
  [coderCopy encodeBool:self->_isStaticCorrection forKey:@"_isStaticCorrection"];
  [coderCopy encodeBool:self->_isFuzzyMatch forKey:@"_isFuzzyMatch"];
  [coderCopy encodeObject:self->_localFeatures forKey:@"_localFeatures"];
  [coderCopy encodeObject:self->_serverFeatures forKey:@"_serverFeatures"];
  [coderCopy encodeBool:self->_noGoTakeover forKey:@"_noGoTakeover"];
  [coderCopy encodeBool:self->_shouldUseCompactDisplay forKey:@"_shouldUseCompactDisplay"];
  [coderCopy encodeBool:self->_preferTopPlatter forKey:@"_preferTopPlatter"];
  [coderCopy encodeBool:self->_wasCompact forKey:@"_wasCompact"];
  [coderCopy encodeBool:self->_didTakeoverGo forKey:@"_didTakeoverGo"];
  [coderCopy encodeBool:self->_usesCompactDisplay forKey:@"_usesCompactDisplay"];
  [coderCopy encodeObject:self->_compactCard forKey:@"_compactCard"];
  [coderCopy encodeBool:self->_usesTopHitDisplay forKey:@"_usesTopHitDisplay"];
  [coderCopy encodeObject:self->_tophitCard forKey:@"_tophitCard"];
  [coderCopy encodeObject:self->_alternativeURLs forKey:@"_alternativeURLs"];
  [coderCopy encodeObject:self->_intendedQuery forKey:@"_intendedQuery"];
  [coderCopy encodeObject:self->_completedQuery forKey:@"_completedQuery"];
  [coderCopy encodeObject:self->_correctedQuery forKey:@"_correctedQuery"];
  [coderCopy encodeInt64:self->_queryId forKey:@"_queryId"];
  [coderCopy encodeBool:self->_publiclyIndexable forKey:@"_publiclyIndexable"];
  [coderCopy encodeObject:self->_userInput forKey:@"_userInput"];
  [coderCopy encodeObject:self->_itemProviderDataTypes forKey:@"_itemProviderDataTypes"];
  [coderCopy encodeObject:self->_itemProviderFileTypes forKey:@"_itemProviderFileTypes"];
  [coderCopy encodeObject:self->_contentType forKey:@"_contentType"];
  [coderCopy encodeObject:self->_contentTypeTree forKey:@"_contentTypeTree"];
  [coderCopy encodeInteger:self->_dataOwnerType forKey:@"_dataOwnerType"];
  [coderCopy encodeObject:self->_fileProviderIdentifier forKey:@"_fileProviderIdentifier"];
  [coderCopy encodeObject:self->_fileProviderDomainIdentifier forKey:@"_fileProviderDomainIdentifier"];
  [coderCopy encodeObject:self->_fbr forKey:@"_fbr"];
  [coderCopy encodeBool:self->_doNotFold forKey:@"_doNotFold"];
  [coderCopy encodeInt64:self->_blockId forKey:@"_blockId"];
  [coderCopy encodeObject:self->_entityData forKey:@"_entityData"];
  [coderCopy encodeBool:self->_isInstantAnswer forKey:@"_isInstantAnswer"];
  [coderCopy encodeBool:self->_shouldAutoNavigate forKey:@"_shouldAutoNavigate"];
  [coderCopy encodeBool:self->_containsPersonalResult forKey:@"_containsPersonalResult"];
  [coderCopy encodeBool:self->_didRerankPersonalResult forKey:@"_didRerankPersonalResult"];
  [coderCopy encodeInt32:self->_coreSpotlightIndexUsed forKey:@"_coreSpotlightIndexUsed"];
  [coderCopy encodeInt32:self->_coreSpotlightIndexUsedReason forKey:@"_coreSpotlightIndexUsedReason"];
  [coderCopy encodeObject:self->_coreSpotlightRankingSignals forKey:@"_coreSpotlightRankingSignals"];
  [coderCopy encodeObject:self->_mailRankingSignals forKey:@"_mailRankingSignals"];
  [coderCopy encodeObject:self->_mailResultDetails forKey:@"_mailResultDetails"];
  [coderCopy encodeBool:self->_isVideoAssetFromPhotos forKey:@"_isVideoAssetFromPhotos"];
  [coderCopy encodeObject:self->_resultEntity forKey:@"_resultEntity"];
  [coderCopy encodeBool:self->_isMailInstantAnswerUpdated forKey:@"_isMailInstantAnswerUpdated"];
  [coderCopy encodeObject:self->_indexOfSectionWhenRanked forKey:@"_indexOfSectionWhenRanked"];
  [coderCopy encodeObject:self->_indexOfResultInSectionWhenRanked forKey:@"_indexOfResultInSectionWhenRanked"];
  [coderCopy encodeObject:self->_safariAttributes forKey:@"_safariAttributes"];
  [coderCopy encodeObject:self->_entityType forKey:@"_entityType"];
  [coderCopy encodeBool:self->_hasAppTopHitShortcut forKey:@"_hasAppTopHitShortcut"];
  [coderCopy encodeObject:self->_photosAttributes forKey:@"_photosAttributes"];
  [coderCopy encodeObject:self->_photosAggregatedInfo forKey:@"_photosAggregatedInfo"];
  [coderCopy encodeObject:self->_moreResultsButton forKey:@"_moreResultsButton"];
  [coderCopy encodeObject:self->_serverCompletion forKey:@"_serverCompletion"];
  [coderCopy encodeObject:self->_thirdPartyNavigationIntentScore forKey:@"_thirdPartyNavigationIntentScore"];
  [coderCopy encodeInt32:self->_thirdPartyQueryCompletionMatched forKey:@"_thirdPartyQueryCompletionMatched"];
}

- (SFSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v196.receiver = self;
  v196.super_class = SFSearchResult;
  v5 = [(SFSearchResult *)&v196 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    [coderCopy decodeDoubleForKey:@"_rankingScore"];
    v5->_rankingScore = v8;
    v5->_topHit = [coderCopy decodeIntegerForKey:@"_topHit"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v9;

    v5->_preventThumbnailImageScaling = [coderCopy decodeBoolForKey:@"_preventThumbnailImageScaling"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryTitle"];
    secondaryTitle = v5->_secondaryTitle;
    v5->_secondaryTitle = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryTitleImage"];
    secondaryTitleImage = v5->_secondaryTitleImage;
    v5->_secondaryTitleImage = v15;

    v5->_isSecondaryTitleDetached = [coderCopy decodeBoolForKey:@"_isSecondaryTitleDetached"];
    v5->_isCentered = [coderCopy decodeBoolForKey:@"_isCentered"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"_descriptions"];
    descriptions = v5->_descriptions;
    v5->_descriptions = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_footnote"];
    footnote = v5->_footnote;
    v5->_footnote = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_publishDate"];
    publishDate = v5->_publishDate;
    v5->_publishDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceName"];
    sourceName = v5->_sourceName;
    v5->_sourceName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_completion"];
    completion = v5->_completion;
    v5->_completion = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_completionImage"];
    completionImage = v5->_completionImage;
    v5->_completionImage = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = v5->_url;
    v5->_url = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auxiliaryTopText"];
    auxiliaryTopText = v5->_auxiliaryTopText;
    v5->_auxiliaryTopText = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auxiliaryMiddleText"];
    auxiliaryMiddleText = v5->_auxiliaryMiddleText;
    v5->_auxiliaryMiddleText = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auxiliaryBottomText"];
    auxiliaryBottomText = v5->_auxiliaryBottomText;
    v5->_auxiliaryBottomText = v38;

    v5->_auxiliaryBottomTextColor = [coderCopy decodeInt32ForKey:@"_auxiliaryBottomTextColor"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_action"];
    action = v5->_action;
    v5->_action = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_punchout"];
    punchout = v5->_punchout;
    v5->_punchout = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_storeIdentifier"];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_calendarIdentifier"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_entityIdentifier"];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsData"];
    mapsData = v5->_mapsData;
    v5->_mapsData = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsResultType"];
    mapsResultType = v5->_mapsResultType;
    v5->_mapsResultType = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsMoreURL"];
    mapsMoreURL = v5->_mapsMoreURL;
    v5->_mapsMoreURL = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsMoreString"];
    mapsMoreString = v5->_mapsMoreString;
    v5->_mapsMoreString = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsMoreIcon"];
    mapsMoreIcon = v5->_mapsMoreIcon;
    v5->_mapsMoreIcon = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nearbyBusinessesString"];
    nearbyBusinessesString = v5->_nearbyBusinessesString;
    v5->_nearbyBusinessesString = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appleReferrer"];
    appleReferrer = v5->_appleReferrer;
    v5->_appleReferrer = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_card"];
    card = v5->_card;
    v5->_card = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_inlineCard"];
    inlineCard = v5->_inlineCard;
    v5->_inlineCard = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tophitCard"];
    tophitCard = v5->_tophitCard;
    v5->_tophitCard = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_moreResults"];
    moreResults = v5->_moreResults;
    v5->_moreResults = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_moreResultsPunchout"];
    moreResultsPunchout = v5->_moreResultsPunchout;
    v5->_moreResultsPunchout = v74;

    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_normalizedTopic"];
    normalizedTopic = v5->_normalizedTopic;
    v5->_normalizedTopic = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requestedTopic"];
    requestedTopic = v5->_requestedTopic;
    v5->_requestedTopic = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sectionBundleIdentifier"];
    sectionBundleIdentifier = v5->_sectionBundleIdentifier;
    v5->_sectionBundleIdentifier = v82;

    v5->_isLocalApplicationResult = [coderCopy decodeBoolForKey:@"_isLocalApplicationResult"];
    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userActivityRequiredString"];
    userActivityRequiredString = v5->_userActivityRequiredString;
    v5->_userActivityRequiredString = v84;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_minimumRankOfTopHitToSuppressResult = [coderCopy decodeIntegerForKey:@"_minimumRankOfTopHitToSuppressResult"];
    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sectionHeader"];
    sectionHeader = v5->_sectionHeader;
    v5->_sectionHeader = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sectionHeaderMore"];
    sectionHeaderMore = v5->_sectionHeaderMore;
    v5->_sectionHeaderMore = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sectionHeaderMoreURL"];
    sectionHeaderMoreURL = v5->_sectionHeaderMoreURL;
    v5->_sectionHeaderMoreURL = v90;

    v5->_placement = [coderCopy decodeIntegerForKey:@"_placement"];
    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_customProperties"];
    customProperties = v5->_customProperties;
    v5->_customProperties = v92;

    v5->_renderHorizontallyWithOtherResultsInCategory = [coderCopy decodeBoolForKey:@"_renderHorizontallyWithOtherResultsInCategory"];
    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v94;

    [coderCopy decodeDoubleForKey:@"_serverScore"];
    v5->_serverScore = v96;
    [coderCopy decodeDoubleForKey:@"_personalizationScore"];
    v5->_personalizationScore = v97;
    v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resultType"];
    resultType = v5->_resultType;
    v5->_resultType = v98;

    v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resultTemplate"];
    resultTemplate = v5->_resultTemplate;
    v5->_resultTemplate = v100;

    v5->_isQuickGlance = [coderCopy decodeBoolForKey:@"_isQuickGlance"];
    v5->_isStreaming = [coderCopy decodeBoolForKey:@"_isStreaming"];
    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_engagementScore"];
    engagementScore = v5->_engagementScore;
    v5->_engagementScore = v102;

    v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_queryIndependentScore"];
    queryIndependentScore = v5->_queryIndependentScore;
    v5->_queryIndependentScore = v104;

    v106 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maxAge"];
    maxAge = v5->_maxAge;
    v5->_maxAge = v106;

    v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_titleNote"];
    titleNote = v5->_titleNote;
    v5->_titleNote = v108;

    v110 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_titleNoteSize"];
    titleNoteSize = v5->_titleNoteSize;
    v5->_titleNoteSize = v110;

    v112 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resultBundleId"];
    resultBundleId = v5->_resultBundleId;
    v5->_resultBundleId = v112;

    v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_icon"];
    icon = v5->_icon;
    v5->_icon = v114;

    v5->_isStaticCorrection = [coderCopy decodeBoolForKey:@"_isStaticCorrection"];
    v5->_isFuzzyMatch = [coderCopy decodeBoolForKey:@"_isFuzzyMatch"];
    v116 = MEMORY[0x1E695DFD8];
    v117 = objc_opt_class();
    v118 = objc_opt_class();
    v119 = objc_opt_class();
    v120 = [v116 setWithObjects:{v117, v118, v119, objc_opt_class(), 0}];
    v121 = [coderCopy decodeObjectOfClasses:v120 forKey:@"_localFeatures"];
    localFeatures = v5->_localFeatures;
    v5->_localFeatures = v121;

    v123 = MEMORY[0x1E695DFD8];
    v124 = objc_opt_class();
    v125 = objc_opt_class();
    v126 = [v123 setWithObjects:{v124, v125, objc_opt_class(), 0}];
    v127 = [coderCopy decodeObjectOfClasses:v126 forKey:@"_serverFeatures"];
    serverFeatures = v5->_serverFeatures;
    v5->_serverFeatures = v127;

    v5->_shouldUseCompactDisplay = [coderCopy decodeBoolForKey:@"_shouldUseCompactDisplay"];
    v5->_noGoTakeover = [coderCopy decodeBoolForKey:@"_noGoTakeover"];
    v5->_preferTopPlatter = [coderCopy decodeBoolForKey:@"_preferTopPlatter"];
    v5->_wasCompact = [coderCopy decodeBoolForKey:@"_wasCompact"];
    v5->_didTakeoverGo = [coderCopy decodeBoolForKey:@"_didTakeoverGo"];
    v5->_usesCompactDisplay = [coderCopy decodeBoolForKey:@"_usesCompactDisplay"];
    v5->_usesTopHitDisplay = [coderCopy decodeBoolForKey:@"_usesTopHitDisplay"];
    v129 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_compactCard"];
    compactCard = v5->_compactCard;
    v5->_compactCard = v129;

    v131 = MEMORY[0x1E695DFD8];
    v132 = objc_opt_class();
    v133 = [v131 setWithObjects:{v132, objc_opt_class(), 0}];
    v134 = [coderCopy decodeObjectOfClasses:v133 forKey:@"_alternativeURLs"];
    alternativeURLs = v5->_alternativeURLs;
    v5->_alternativeURLs = v134;

    v136 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intendedQuery"];
    intendedQuery = v5->_intendedQuery;
    v5->_intendedQuery = v136;

    v138 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_completedQuery"];
    completedQuery = v5->_completedQuery;
    v5->_completedQuery = v138;

    v140 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_correctedQuery"];
    correctedQuery = v5->_correctedQuery;
    v5->_correctedQuery = v140;

    v5->_queryId = [coderCopy decodeInt64ForKey:@"_queryId"];
    v5->_publiclyIndexable = [coderCopy decodeBoolForKey:@"_publiclyIndexable"];
    v142 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userInput"];
    userInput = v5->_userInput;
    v5->_userInput = v142;

    v144 = MEMORY[0x1E695DFD8];
    v145 = objc_opt_class();
    v146 = [v144 setWithObjects:{v145, objc_opt_class(), 0}];
    v147 = [coderCopy decodeObjectOfClasses:v146 forKey:@"_itemProviderDataTypes"];
    itemProviderDataTypes = v5->_itemProviderDataTypes;
    v5->_itemProviderDataTypes = v147;

    v149 = MEMORY[0x1E695DFD8];
    v150 = objc_opt_class();
    v151 = [v149 setWithObjects:{v150, objc_opt_class(), 0}];
    v152 = [coderCopy decodeObjectOfClasses:v151 forKey:@"_itemProviderFileTypes"];
    itemProviderFileTypes = v5->_itemProviderFileTypes;
    v5->_itemProviderFileTypes = v152;

    v154 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v154;

    v156 = MEMORY[0x1E695DFD8];
    v157 = objc_opt_class();
    v158 = [v156 setWithObjects:{v157, objc_opt_class(), 0}];
    v159 = [coderCopy decodeObjectOfClasses:v158 forKey:@"_contentTypeTree"];
    contentTypeTree = v5->_contentTypeTree;
    v5->_contentTypeTree = v159;

    v5->_dataOwnerType = [coderCopy decodeIntegerForKey:@"_dataOwnerType"];
    v161 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fileProviderIdentifier"];
    fileProviderIdentifier = v5->_fileProviderIdentifier;
    v5->_fileProviderIdentifier = v161;

    v163 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fileProviderDomainIdentifier"];
    fileProviderDomainIdentifier = v5->_fileProviderDomainIdentifier;
    v5->_fileProviderDomainIdentifier = v163;

    v165 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fbr"];
    fbr = v5->_fbr;
    v5->_fbr = v165;

    v5->_doNotFold = [coderCopy decodeBoolForKey:@"_doNotFold"];
    v5->_blockId = [coderCopy decodeInt64ForKey:@"_blockId"];
    v167 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_entityData"];
    entityData = v5->_entityData;
    v5->_entityData = v167;

    v5->_isInstantAnswer = [coderCopy decodeBoolForKey:@"_isInstantAnswer"];
    v5->_shouldAutoNavigate = [coderCopy decodeBoolForKey:@"_shouldAutoNavigate"];
    v5->_containsPersonalResult = [coderCopy decodeBoolForKey:@"_containsPersonalResult"];
    v5->_didRerankPersonalResult = [coderCopy decodeBoolForKey:@"_didRerankPersonalResult"];
    v5->_coreSpotlightIndexUsed = [coderCopy decodeInt32ForKey:@"_coreSpotlightIndexUsed"];
    v5->_coreSpotlightIndexUsedReason = [coderCopy decodeInt32ForKey:@"_coreSpotlightIndexUsedReason"];
    v169 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_coreSpotlightRankingSignals"];
    coreSpotlightRankingSignals = v5->_coreSpotlightRankingSignals;
    v5->_coreSpotlightRankingSignals = v169;

    v171 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mailRankingSignals"];
    mailRankingSignals = v5->_mailRankingSignals;
    v5->_mailRankingSignals = v171;

    v173 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mailResultDetails"];
    mailResultDetails = v5->_mailResultDetails;
    v5->_mailResultDetails = v173;

    v5->_isVideoAssetFromPhotos = [coderCopy decodeBoolForKey:@"_isVideoAssetFromPhotos"];
    v175 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resultEntity"];
    resultEntity = v5->_resultEntity;
    v5->_resultEntity = v175;

    v5->_isMailInstantAnswerUpdated = [coderCopy decodeBoolForKey:@"_isMailInstantAnswerUpdated"];
    v177 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_indexOfSectionWhenRanked"];
    indexOfSectionWhenRanked = v5->_indexOfSectionWhenRanked;
    v5->_indexOfSectionWhenRanked = v177;

    v179 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_indexOfResultInSectionWhenRanked"];
    indexOfResultInSectionWhenRanked = v5->_indexOfResultInSectionWhenRanked;
    v5->_indexOfResultInSectionWhenRanked = v179;

    v181 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_safariAttributes"];
    safariAttributes = v5->_safariAttributes;
    v5->_safariAttributes = v181;

    v183 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_entityType"];
    entityType = v5->_entityType;
    v5->_entityType = v183;

    v5->_hasAppTopHitShortcut = [coderCopy decodeBoolForKey:@"_hasAppTopHitShortcut"];
    v185 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_photosAttributes"];
    photosAttributes = v5->_photosAttributes;
    v5->_photosAttributes = v185;

    v187 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_photosAggregatedInfo"];
    photosAggregatedInfo = v5->_photosAggregatedInfo;
    v5->_photosAggregatedInfo = v187;

    v189 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_moreResultsButton"];
    moreResultsButton = v5->_moreResultsButton;
    v5->_moreResultsButton = v189;

    v191 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverCompletion"];
    serverCompletion = v5->_serverCompletion;
    v5->_serverCompletion = v191;

    v5->_thirdPartyQueryCompletionMatched = [coderCopy decodeInt32ForKey:@"_thirdPartyQueryCompletionMatched"];
    v193 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thirdPartyNavigationIntentScore"];
    thirdPartyNavigationIntentScore = v5->_thirdPartyNavigationIntentScore;
    v5->_thirdPartyNavigationIntentScore = v193;
  }

  return v5;
}

- (SFSearchResult)initWithQueryTopic:(id)topic
{
  v29[1] = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v27.receiver = self;
  v27.super_class = SFSearchResult;
  v5 = [(SFSearchResult *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFText);
    query = [topicCopy query];
    [(SFText *)v6 setText:query];

    [(SFSearchResult *)v5 setTitle:v6];
    query2 = [topicCopy query];
    [(SFSearchResult *)v5 setCompletion:query2];

    v9 = +[SFSearchResult fallbackBundleId];
    [(SFSearchResult *)v5 setResultBundleId:v9];

    v10 = +[SFSearchResult fallbackSectionBundleIdentifier];
    [(SFSearchResult *)v5 setSectionBundleIdentifier:v10];

    [(SFSearchResult *)v5 setType:17];
    v11 = objc_alloc_init(SFSymbolImage);
    v12 = +[SFSearchResult fallbackImageSymbolName];
    [(SFSymbolImage *)v11 setSymbolName:v12];

    [(SFImage *)v11 setIsTemplate:1];
    v13 = objc_alloc_init(SFPunchout);
    resultBundleId = [(SFSearchResult *)v5 resultBundleId];
    [(SFPunchout *)v13 setBundleIdentifier:resultBundleId];

    v15 = objc_alloc_init(SFSuggestionCardSection);
    query3 = [topicCopy query];
    v17 = [(SFText *)SFRichText textWithString:query3];
    [(SFSuggestionCardSection *)v15 setSuggestionText:v17];

    suggestionText = [(SFSuggestionCardSection *)v15 suggestionText];
    [suggestionText setMaxLines:1];

    [(SFSuggestionCardSection *)v15 setSuggestionType:0];
    v29[0] = v13;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [(SFCardSection *)v15 setPunchoutOptions:v19];

    [(SFSuggestionCardSection *)v15 setThumbnail:v11];
    v20 = objc_alloc_init(SFUpdateSearchQueryCommand);
    query4 = [topicCopy query];
    [(SFUpdateSearchQueryCommand *)v20 setSearchString:query4];

    [(SFUpdateSearchQueryCommand *)v20 setQuerySource:1];
    [(SFCardSection *)v15 setCommand:v20];
    v22 = objc_alloc_init(SFCard);
    v28 = v15;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [(SFCard *)v22 setCardSections:v23];

    [(SFSearchResult *)v5 setInlineCard:v22];
    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

@end