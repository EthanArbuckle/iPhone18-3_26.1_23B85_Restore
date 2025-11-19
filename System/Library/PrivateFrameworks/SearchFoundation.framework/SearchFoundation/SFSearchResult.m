@interface SFSearchResult
- (NSData)jsonData;
- (NSData)mapsData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchResult)initWithCoder:(id)a3;
- (SFSearchResult)initWithQueryTopic:(id)a3;
- (SFSearchResult)initWithSearchResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updatePunchout;
@end

@implementation SFSearchResult

- (NSData)mapsData
{
  v3 = [(SFCard *)self->_inlineCard cardSections];
  v4 = [v3 firstObject];

  mapsData = self->_mapsData;
  if (!mapsData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 mapsData];
      goto LABEL_6;
    }

    mapsData = self->_mapsData;
  }

  v6 = mapsData;
LABEL_6:
  v7 = v6;

  return v7;
}

- (NSData)jsonData
{
  v2 = [(SFSearchResult *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(SFSearchResult *)self action];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"action"];

  v6 = [(SFSearchResult *)self applicationBundleIdentifier];

  if (v6)
  {
    v7 = [(SFSearchResult *)self applicationBundleIdentifier];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  v9 = [(SFSearchResult *)self completedQuery];

  if (v9)
  {
    v10 = [(SFSearchResult *)self completedQuery];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"completedQuery"];
  }

  v12 = [(SFSearchResult *)self correctedQuery];

  if (v12)
  {
    v13 = [(SFSearchResult *)self correctedQuery];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"correctedQuery"];
  }

  v15 = [(SFSearchResult *)self descriptions];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF70] array];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v18 = [(SFSearchResult *)self descriptions];
    v19 = [v18 countByEnumeratingWithState:&v89 objects:v94 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v89 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"descriptions"];
  }

  v24 = [(SFSearchResult *)self identifier];

  if (v24)
  {
    v25 = [(SFSearchResult *)self identifier];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"identifier"];
  }

  v27 = [(SFSearchResult *)self intendedQuery];

  if (v27)
  {
    v28 = [(SFSearchResult *)self intendedQuery];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"intendedQuery"];
  }

  v30 = [(SFSearchResult *)self fbr];

  if (v30)
  {
    v31 = [(SFSearchResult *)self fbr];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"fbr"];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult isLocalApplicationResult](self, "isLocalApplicationResult")}];
  [v3 setObject:v33 forKeyedSubscript:@"isLocalApplicationResult"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult isStaticCorrection](self, "isStaticCorrection")}];
  [v3 setObject:v34 forKeyedSubscript:@"isStaticCorrection"];

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult isFuzzyMatch](self, "isFuzzyMatch")}];
  [v3 setObject:v35 forKeyedSubscript:@"isFuzzyMatch"];

  v36 = [MEMORY[0x1E695DF90] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v37 = [(SFSearchResult *)self localFeatures];
  v38 = [v37 countByEnumeratingWithState:&v85 objects:v93 count:16];
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
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v85 + 1) + 8 * j);
        v43 = [(SFSearchResult *)self localFeatures];
        v44 = [v43 objectForKeyedSubscript:v42];
        [v36 setObject:v44 forKeyedSubscript:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v39);
  }

  [v3 setObject:v36 forKeyedSubscript:@"localFeatures"];
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult publiclyIndexable](self, "publiclyIndexable")}];
  [v3 setObject:v45 forKeyedSubscript:@"publiclyIndexable"];

  v46 = [(SFSearchResult *)self punchout];
  v47 = [v46 dictionaryRepresentation];
  [v3 setObject:v47 forKeyedSubscript:@"punchout"];

  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SFSearchResult queryId](self, "queryId")}];
  [v3 setObject:v48 forKeyedSubscript:@"queryId"];

  v49 = MEMORY[0x1E696AD98];
  [(SFSearchResult *)self rankingScore];
  v50 = [v49 numberWithDouble:?];
  [v3 setObject:v50 forKeyedSubscript:@"rankingScore"];

  v51 = [(SFSearchResult *)self resultBundleId];

  if (v51)
  {
    v52 = [(SFSearchResult *)self resultBundleId];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"resultBundleId"];
  }

  v54 = [(SFSearchResult *)self resultType];

  if (v54)
  {
    v55 = [(SFSearchResult *)self resultType];
    v56 = [v55 copy];
    [v3 setObject:v56 forKeyedSubscript:@"resultType"];
  }

  v57 = [(SFSearchResult *)self sectionBundleIdentifier];

  if (v57)
  {
    v58 = [(SFSearchResult *)self sectionBundleIdentifier];
    v59 = [v58 copy];
    [v3 setObject:v59 forKeyedSubscript:@"sectionBundleIdentifier"];
  }

  v60 = [(SFSearchResult *)self title];
  v61 = [v60 dictionaryRepresentation];
  [v3 setObject:v61 forKeyedSubscript:@"title"];

  v62 = [MEMORY[0x1E696AD98] numberWithInt:{-[SFSearchResult topHit](self, "topHit")}];
  [v3 setObject:v62 forKeyedSubscript:@"topHit"];

  v63 = [MEMORY[0x1E696AD98] numberWithInt:{-[SFSearchResult type](self, "type")}];
  [v3 setObject:v63 forKeyedSubscript:@"type"];

  v64 = [(SFSearchResult *)self url];
  v65 = [v64 dictionaryRepresentation];
  [v3 setObject:v65 forKeyedSubscript:@"url"];

  v66 = [(SFSearchResult *)self inlineCard];

  if (v66)
  {
    v67 = [(SFSearchResult *)self inlineCard];
    v68 = [v67 dictionaryRepresentation];
    [v3 setObject:v68 forKeyedSubscript:@"inlineCard"];
  }

  v69 = [(SFSearchResult *)self card];

  if (v69)
  {
    v70 = [(SFSearchResult *)self card];
    v71 = [v70 dictionaryRepresentation];
    [v3 setObject:v71 forKeyedSubscript:@"card"];
  }

  v72 = [(SFSearchResult *)self thumbnail];

  if (v72)
  {
    v73 = [(SFSearchResult *)self thumbnail];
    v74 = [v73 dictionaryRepresentation];
    [v3 setObject:v74 forKeyedSubscript:@"thumbnail"];
  }

  v75 = [(SFSearchResult *)self secondaryTitle];

  if (v75)
  {
    v76 = [(SFSearchResult *)self secondaryTitle];
    v77 = [v76 copy];
    [v3 setObject:v77 forKeyedSubscript:@"secondaryTitle"];
  }

  v78 = [(SFSearchResult *)self footnote];

  if (v78)
  {
    v79 = [(SFSearchResult *)self footnote];
    v80 = [v79 copy];
    [v3 setObject:v80 forKeyedSubscript:@"footnote"];
  }

  if ([(SFSearchResult *)self doNotFold])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFSearchResult doNotFold](self, "doNotFold")}];
    [v3 setObject:v81 forKeyedSubscript:@"doNotFold"];
  }

  if ([(SFSearchResult *)self blockId])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SFSearchResult blockId](self, "blockId")}];
    [v3 setObject:v82 forKeyedSubscript:@"blockId"];
  }

  v83 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)updatePunchout
{
  v7 = [(SFSearchResult *)self inlineCard];
  v3 = [v7 cardSections];
  v4 = [v3 firstObject];
  v5 = [v4 punchoutOptions];
  v6 = [v5 firstObject];
  [(SFSearchResult *)self setPunchout:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithSearchResult:self];
}

- (SFSearchResult)initWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(SFSearchResult *)self init];
  if (v5)
  {
    v6 = [v4 identifier];
    [(SFSearchResult *)v5 setIdentifier:v6];

    v7 = [v4 thumbnail];
    [(SFSearchResult *)v5 setThumbnail:v7];

    -[SFSearchResult setPreventThumbnailImageScaling:](v5, "setPreventThumbnailImageScaling:", [v4 preventThumbnailImageScaling]);
    v8 = [v4 title];
    [(SFSearchResult *)v5 setTitle:v8];

    v9 = [v4 secondaryTitle];
    [(SFSearchResult *)v5 setSecondaryTitle:v9];

    v10 = [v4 secondaryTitleImage];
    [(SFSearchResult *)v5 setSecondaryTitleImage:v10];

    -[SFSearchResult setIsSecondaryTitleDetached:](v5, "setIsSecondaryTitleDetached:", [v4 isSecondaryTitleDetached]);
    -[SFSearchResult setIsCentered:](v5, "setIsCentered:", [v4 isCentered]);
    v11 = [v4 descriptions];
    [(SFSearchResult *)v5 setDescriptions:v11];

    v12 = [v4 footnote];
    [(SFSearchResult *)v5 setFootnote:v12];

    v13 = [v4 publishDate];
    [(SFSearchResult *)v5 setPublishDate:v13];

    v14 = [v4 sourceName];
    [(SFSearchResult *)v5 setSourceName:v14];

    v15 = [v4 completion];
    [(SFSearchResult *)v5 setCompletion:v15];

    v16 = [v4 completionImage];
    [(SFSearchResult *)v5 setCompletionImage:v16];

    v17 = [v4 url];
    [(SFSearchResult *)v5 setUrl:v17];

    v18 = [v4 auxiliaryTopText];
    [(SFSearchResult *)v5 setAuxiliaryTopText:v18];

    v19 = [v4 auxiliaryMiddleText];
    [(SFSearchResult *)v5 setAuxiliaryMiddleText:v19];

    v20 = [v4 auxiliaryBottomText];
    [(SFSearchResult *)v5 setAuxiliaryBottomText:v20];

    -[SFSearchResult setAuxiliaryBottomTextColor:](v5, "setAuxiliaryBottomTextColor:", [v4 auxiliaryBottomTextColor]);
    v21 = [v4 action];
    [(SFSearchResult *)v5 setAction:v21];

    v22 = [v4 punchout];
    [(SFSearchResult *)v5 setPunchout:v22];

    v23 = [v4 storeIdentifier];
    [(SFSearchResult *)v5 setStoreIdentifier:v23];

    v24 = [v4 contactIdentifier];
    [(SFSearchResult *)v5 setContactIdentifier:v24];

    v25 = [v4 calendarIdentifier];
    [(SFSearchResult *)v5 setCalendarIdentifier:v25];

    v26 = [v4 entityIdentifier];
    [(SFSearchResult *)v5 setEntityIdentifier:v26];

    v27 = [v4 mapsData];
    [(SFSearchResult *)v5 setMapsData:v27];

    v28 = [v4 mapsResultType];
    [(SFSearchResult *)v5 setMapsResultType:v28];

    v29 = [v4 mapsMoreURL];
    [(SFSearchResult *)v5 setMapsMoreURL:v29];

    v30 = [v4 mapsMoreString];
    [(SFSearchResult *)v5 setMapsMoreString:v30];

    v31 = [v4 mapsMoreIcon];
    [(SFSearchResult *)v5 setMapsMoreIcon:v31];

    v32 = [v4 nearbyBusinessesString];
    [(SFSearchResult *)v5 setNearbyBusinessesString:v32];

    v33 = [v4 appleReferrer];
    [(SFSearchResult *)v5 setAppleReferrer:v33];

    v34 = [v4 card];
    [(SFSearchResult *)v5 setCard:v34];

    v35 = [v4 inlineCard];
    [(SFSearchResult *)v5 setInlineCard:v35];

    -[SFSearchResult setUsesTopHitDisplay:](v5, "setUsesTopHitDisplay:", [v4 usesTopHitDisplay]);
    v36 = [v4 tophitCard];
    [(SFSearchResult *)v5 setTophitCard:v36];

    v37 = [v4 moreResults];
    [(SFSearchResult *)v5 setMoreResults:v37];

    v38 = [v4 moreResultsPunchout];
    [(SFSearchResult *)v5 setMoreResultsPunchout:v38];

    v39 = [v4 applicationBundleIdentifier];
    [(SFSearchResult *)v5 setApplicationBundleIdentifier:v39];

    v40 = [v4 sectionBundleIdentifier];
    [(SFSearchResult *)v5 setSectionBundleIdentifier:v40];

    -[SFSearchResult setIsLocalApplicationResult:](v5, "setIsLocalApplicationResult:", [v4 isLocalApplicationResult]);
    v41 = [v4 userActivityRequiredString];
    [(SFSearchResult *)v5 setUserActivityRequiredString:v41];

    -[SFSearchResult setTopHit:](v5, "setTopHit:", [v4 topHit]);
    v42 = [v4 sectionHeader];
    [(SFSearchResult *)v5 setSectionHeader:v42];

    v43 = [v4 sectionHeaderMore];
    [(SFSearchResult *)v5 setSectionHeaderMore:v43];

    v44 = [v4 sectionHeaderMoreURL];
    [(SFSearchResult *)v5 setSectionHeaderMoreURL:v44];

    -[SFSearchResult setRenderHorizontallyWithOtherResultsInCategory:](v5, "setRenderHorizontallyWithOtherResultsInCategory:", [v4 renderHorizontallyWithOtherResultsInCategory]);
    [v4 rankingScore];
    [(SFSearchResult *)v5 setRankingScore:?];
    -[SFSearchResult setPlacement:](v5, "setPlacement:", [v4 placement]);
    -[SFSearchResult setType:](v5, "setType:", [v4 type]);
    v45 = [v4 domainName];
    [(SFSearchResult *)v5 setDomainName:v45];

    -[SFSearchResult setMinimumRankOfTopHitToSuppressResult:](v5, "setMinimumRankOfTopHitToSuppressResult:", [v4 minimumRankOfTopHitToSuppressResult]);
    v46 = [v4 mediaType];
    [(SFSearchResult *)v5 setMediaType:v46];

    [v4 serverScore];
    [(SFSearchResult *)v5 setServerScore:?];
    [v4 personalizationScore];
    [(SFSearchResult *)v5 setPersonalizationScore:?];
    v47 = [v4 customProperties];
    [(SFSearchResult *)v5 setCustomProperties:v47];

    v48 = [v4 resultType];
    [(SFSearchResult *)v5 setResultType:v48];

    v49 = [v4 resultTemplate];
    [(SFSearchResult *)v5 setResultTemplate:v49];

    -[SFSearchResult setIsQuickGlance:](v5, "setIsQuickGlance:", [v4 isQuickGlance]);
    -[SFSearchResult setIsStreaming:](v5, "setIsStreaming:", [v4 isStreaming]);
    v50 = [v4 engagementScore];
    [(SFSearchResult *)v5 setEngagementScore:v50];

    v51 = [v4 queryIndependentScore];
    [(SFSearchResult *)v5 setQueryIndependentScore:v51];

    v52 = [v4 maxAge];
    [(SFSearchResult *)v5 setMaxAge:v52];

    v53 = [v4 titleNote];
    [(SFSearchResult *)v5 setTitleNote:v53];

    v54 = [v4 titleNoteSize];
    [(SFSearchResult *)v5 setTitleNoteSize:v54];

    v55 = [v4 resultBundleId];
    [(SFSearchResult *)v5 setResultBundleId:v55];

    v56 = [v4 icon];
    [(SFSearchResult *)v5 setIcon:v56];

    -[SFSearchResult setIsStaticCorrection:](v5, "setIsStaticCorrection:", [v4 isStaticCorrection]);
    v57 = [v4 localFeatures];
    [(SFSearchResult *)v5 setLocalFeatures:v57];

    v58 = [v4 serverFeatures];
    [(SFSearchResult *)v5 setServerFeatures:v58];

    v59 = [v4 intendedQuery];
    [(SFSearchResult *)v5 setIntendedQuery:v59];

    v60 = [v4 correctedQuery];
    [(SFSearchResult *)v5 setCorrectedQuery:v60];

    v61 = [v4 completedQuery];
    [(SFSearchResult *)v5 setCompletedQuery:v61];

    -[SFSearchResult setNoGoTakeover:](v5, "setNoGoTakeover:", [v4 noGoTakeover]);
    -[SFSearchResult setShouldUseCompactDisplay:](v5, "setShouldUseCompactDisplay:", [v4 shouldUseCompactDisplay]);
    -[SFSearchResult setPreferTopPlatter:](v5, "setPreferTopPlatter:", [v4 preferTopPlatter]);
    -[SFSearchResult setWasCompact:](v5, "setWasCompact:", [v4 wasCompact]);
    -[SFSearchResult setDidTakeoverGo:](v5, "setDidTakeoverGo:", [v4 didTakeoverGo]);
    -[SFSearchResult setUsesCompactDisplay:](v5, "setUsesCompactDisplay:", [v4 usesCompactDisplay]);
    v62 = [v4 compactCard];
    [(SFSearchResult *)v5 setCompactCard:v62];

    v63 = [v4 alternativeURLs];
    [(SFSearchResult *)v5 setAlternativeURLs:v63];

    -[SFSearchResult setQueryId:](v5, "setQueryId:", [v4 queryId]);
    -[SFSearchResult setPubliclyIndexable:](v5, "setPubliclyIndexable:", [v4 publiclyIndexable]);
    v64 = [v4 userInput];
    [(SFSearchResult *)v5 setUserInput:v64];

    v65 = [v4 itemProviderDataTypes];
    [(SFSearchResult *)v5 setItemProviderDataTypes:v65];

    v66 = [v4 itemProviderFileTypes];
    [(SFSearchResult *)v5 setItemProviderFileTypes:v66];

    v67 = [v4 contentType];
    [(SFSearchResult *)v5 setContentType:v67];

    v68 = [v4 contentTypeTree];
    [(SFSearchResult *)v5 setContentTypeTree:v68];

    -[SFSearchResult setDataOwnerType:](v5, "setDataOwnerType:", [v4 dataOwnerType]);
    v69 = [v4 fileProviderIdentifier];
    [(SFSearchResult *)v5 setFileProviderIdentifier:v69];

    v70 = [v4 fileProviderDomainIdentifier];
    [(SFSearchResult *)v5 setFileProviderDomainIdentifier:v70];

    v71 = [v4 fbr];
    [(SFSearchResult *)v5 setFbr:v71];

    v72 = [v4 srf];
    [(SFSearchResult *)v5 setSrf:v72];

    -[SFSearchResult setDoNotFold:](v5, "setDoNotFold:", [v4 doNotFold]);
    -[SFSearchResult setBlockId:](v5, "setBlockId:", [v4 blockId]);
    v73 = [v4 entityData];
    [(SFSearchResult *)v5 setEntityData:v73];

    -[SFSearchResult setIsInstantAnswer:](v5, "setIsInstantAnswer:", [v4 isInstantAnswer]);
    -[SFSearchResult setShouldAutoNavigate:](v5, "setShouldAutoNavigate:", [v4 shouldAutoNavigate]);
    v74 = [v4 normalizedTopic];
    [(SFSearchResult *)v5 setNormalizedTopic:v74];

    v75 = [v4 requestedTopic];
    [(SFSearchResult *)v5 setRequestedTopic:v75];

    -[SFSearchResult setContainsPersonalResult:](v5, "setContainsPersonalResult:", [v4 containsPersonalResult]);
    -[SFSearchResult setDidRerankPersonalResult:](v5, "setDidRerankPersonalResult:", [v4 didRerankPersonalResult]);
    -[SFSearchResult setCoreSpotlightIndexUsed:](v5, "setCoreSpotlightIndexUsed:", [v4 coreSpotlightIndexUsed]);
    -[SFSearchResult setCoreSpotlightIndexUsedReason:](v5, "setCoreSpotlightIndexUsedReason:", [v4 coreSpotlightIndexUsedReason]);
    v76 = [v4 coreSpotlightRankingSignals];
    [(SFSearchResult *)v5 setCoreSpotlightRankingSignals:v76];

    v77 = [v4 mailRankingSignals];
    [(SFSearchResult *)v5 setMailRankingSignals:v77];

    v78 = [v4 mailResultDetails];
    [(SFSearchResult *)v5 setMailResultDetails:v78];

    -[SFSearchResult setIsVideoAssetFromPhotos:](v5, "setIsVideoAssetFromPhotos:", [v4 isVideoAssetFromPhotos]);
    v79 = [v4 resultEntity];
    [(SFSearchResult *)v5 setResultEntity:v79];

    v80 = [v4 entityType];
    [(SFSearchResult *)v5 setEntityType:v80];

    -[SFSearchResult setIsMailInstantAnswerUpdated:](v5, "setIsMailInstantAnswerUpdated:", [v4 isMailInstantAnswerUpdated]);
    v81 = [v4 indexOfSectionWhenRanked];
    [(SFSearchResult *)v5 setIndexOfSectionWhenRanked:v81];

    v82 = [v4 indexOfResultInSectionWhenRanked];
    [(SFSearchResult *)v5 setIndexOfResultInSectionWhenRanked:v82];

    v83 = [v4 safariAttributes];
    [(SFSearchResult *)v5 setSafariAttributes:v83];

    -[SFSearchResult setHasAppTopHitShortcut:](v5, "setHasAppTopHitShortcut:", [v4 hasAppTopHitShortcut]);
    v84 = [v4 photosAttributes];
    [(SFSearchResult *)v5 setPhotosAttributes:v84];

    v85 = [v4 photosAggregatedInfo];
    [(SFSearchResult *)v5 setPhotosAggregatedInfo:v85];

    v86 = [v4 moreResultsButton];
    [(SFSearchResult *)v5 setMoreResultsButton:v86];

    v87 = [v4 serverCompletion];
    [(SFSearchResult *)v5 setServerCompletion:v87];

    v88 = [v4 thirdPartyNavigationIntentScore];
    [(SFSearchResult *)v5 setThirdPartyNavigationIntentScore:v88];

    -[SFSearchResult setThirdPartyQueryCompletionMatched:](v5, "setThirdPartyQueryCompletionMatched:", [v4 thirdPartyQueryCompletionMatched]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeObject:self->_identifier forKey:@"_identifier"];
  [v11 encodeDouble:@"_rankingScore" forKey:self->_rankingScore];
  [v11 encodeInteger:self->_topHit forKey:@"_topHit"];
  [v11 encodeObject:self->_thumbnail forKey:@"_thumbnail"];
  [v11 encodeBool:self->_preventThumbnailImageScaling forKey:@"_preventThumbnailImageScaling"];
  [v11 encodeObject:self->_title forKey:@"_title"];
  [v11 encodeObject:self->_secondaryTitle forKey:@"_secondaryTitle"];
  [v11 encodeObject:self->_secondaryTitleImage forKey:@"_secondaryTitleImage"];
  [v11 encodeBool:self->_isSecondaryTitleDetached forKey:@"_isSecondaryTitleDetached"];
  [v11 encodeBool:self->_isCentered forKey:@"_isCentered"];
  [v11 encodeObject:self->_descriptions forKey:@"_descriptions"];
  [v11 encodeObject:self->_footnote forKey:@"_footnote"];
  [v11 encodeObject:self->_publishDate forKey:@"_publishDate"];
  [v11 encodeObject:self->_sourceName forKey:@"_sourceName"];
  [v11 encodeObject:self->_completion forKey:@"_completion"];
  [v11 encodeObject:self->_completionImage forKey:@"_completionImage"];
  [v11 encodeObject:self->_url forKey:@"_url"];
  [v11 encodeObject:self->_auxiliaryTopText forKey:@"_auxiliaryTopText"];
  [v11 encodeObject:self->_auxiliaryMiddleText forKey:@"_auxiliaryMiddleText"];
  [v11 encodeObject:self->_auxiliaryBottomText forKey:@"_auxiliaryBottomText"];
  [v11 encodeInt:self->_auxiliaryBottomTextColor forKey:@"_auxiliaryBottomTextColor"];
  [v11 encodeObject:self->_action forKey:@"_action"];
  [v11 encodeObject:self->_punchout forKey:@"_punchout"];
  [v11 encodeObject:self->_storeIdentifier forKey:@"_storeIdentifier"];
  [v11 encodeObject:self->_contactIdentifier forKey:@"_contactIdentifier"];
  [v11 encodeObject:self->_calendarIdentifier forKey:@"_calendarIdentifier"];
  [v11 encodeObject:self->_entityIdentifier forKey:@"_entityIdentifier"];
  v4 = [(SFCard *)self->_inlineCard cardSections];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [(SFCard *)self->_inlineCard cardSections];
    v7 = [v6 firstObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 mapsData], v8 = objc_claimAutoreleasedReturnValue(), -[SFSearchResult mapsData](self, "mapsData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToData:", v9), v9, v8, (v10 & 1) == 0))
    {
      [v11 encodeObject:self->_mapsData forKey:@"_mapsData"];
    }
  }

  [v11 encodeObject:self->_mapsResultType forKey:@"_mapsResultType"];
  [v11 encodeObject:self->_mapsMoreURL forKey:@"_mapsMoreURL"];
  [v11 encodeObject:self->_mapsMoreString forKey:@"_mapsMoreString"];
  [v11 encodeObject:self->_mapsMoreIcon forKey:@"_mapsMoreIcon"];
  [v11 encodeObject:self->_nearbyBusinessesString forKey:@"_nearbyBusinessesString"];
  [v11 encodeObject:self->_appleReferrer forKey:@"_appleReferrer"];
  [v11 encodeObject:self->_card forKey:@"_card"];
  [v11 encodeObject:self->_inlineCard forKey:@"_inlineCard"];
  [v11 encodeObject:self->_moreResults forKey:@"_moreResults"];
  [v11 encodeObject:self->_moreResultsPunchout forKey:@"_moreResultsPunchout"];
  [v11 encodeObject:self->_normalizedTopic forKey:@"_normalizedTopic"];
  [v11 encodeObject:self->_requestedTopic forKey:@"_requestedTopic"];
  [v11 encodeObject:self->_applicationBundleIdentifier forKey:@"_applicationBundleIdentifier"];
  [v11 encodeObject:self->_sectionBundleIdentifier forKey:@"_sectionBundleIdentifier"];
  [v11 encodeBool:self->_isLocalApplicationResult forKey:@"_isLocalApplicationResult"];
  [v11 encodeObject:self->_userActivityRequiredString forKey:@"_userActivityRequiredString"];
  [v11 encodeInteger:self->_type forKey:@"_type"];
  [v11 encodeInteger:self->_minimumRankOfTopHitToSuppressResult forKey:@"_minimumRankOfTopHitToSuppressResult"];
  [v11 encodeObject:self->_sectionHeader forKey:@"_sectionHeader"];
  [v11 encodeObject:self->_sectionHeaderMore forKey:@"_sectionHeaderMore"];
  [v11 encodeObject:self->_sectionHeaderMoreURL forKey:@"_sectionHeaderMoreURL"];
  [v11 encodeObject:self->_customProperties forKey:@"_customProperties"];
  [v11 encodeBool:self->_renderHorizontallyWithOtherResultsInCategory forKey:@"_renderHorizontallyWithOtherResultsInCategory"];
  [v11 encodeInteger:self->_placement forKey:@"_placement"];
  [v11 encodeObject:self->_mediaType forKey:@"_mediaType"];
  [v11 encodeDouble:@"_serverScore" forKey:self->_serverScore];
  [v11 encodeDouble:@"_personalizationScore" forKey:self->_personalizationScore];
  [v11 encodeObject:self->_resultType forKey:@"_resultType"];
  [v11 encodeObject:self->_resultTemplate forKey:@"_resultTemplate"];
  [v11 encodeBool:self->_isQuickGlance forKey:@"_isQuickGlance"];
  [v11 encodeBool:self->_isStreaming forKey:@"_isStreaming"];
  [v11 encodeObject:self->_engagementScore forKey:@"_engagementScore"];
  [v11 encodeObject:self->_queryIndependentScore forKey:@"_queryIndependentScore"];
  [v11 encodeObject:self->_maxAge forKey:@"_maxAge"];
  [v11 encodeObject:self->_titleNote forKey:@"_titleNote"];
  [v11 encodeObject:self->_titleNoteSize forKey:@"_titleNoteSize"];
  [v11 encodeObject:self->_resultBundleId forKey:@"_resultBundleId"];
  [v11 encodeObject:self->_icon forKey:@"_icon"];
  [v11 encodeBool:self->_isStaticCorrection forKey:@"_isStaticCorrection"];
  [v11 encodeBool:self->_isFuzzyMatch forKey:@"_isFuzzyMatch"];
  [v11 encodeObject:self->_localFeatures forKey:@"_localFeatures"];
  [v11 encodeObject:self->_serverFeatures forKey:@"_serverFeatures"];
  [v11 encodeBool:self->_noGoTakeover forKey:@"_noGoTakeover"];
  [v11 encodeBool:self->_shouldUseCompactDisplay forKey:@"_shouldUseCompactDisplay"];
  [v11 encodeBool:self->_preferTopPlatter forKey:@"_preferTopPlatter"];
  [v11 encodeBool:self->_wasCompact forKey:@"_wasCompact"];
  [v11 encodeBool:self->_didTakeoverGo forKey:@"_didTakeoverGo"];
  [v11 encodeBool:self->_usesCompactDisplay forKey:@"_usesCompactDisplay"];
  [v11 encodeObject:self->_compactCard forKey:@"_compactCard"];
  [v11 encodeBool:self->_usesTopHitDisplay forKey:@"_usesTopHitDisplay"];
  [v11 encodeObject:self->_tophitCard forKey:@"_tophitCard"];
  [v11 encodeObject:self->_alternativeURLs forKey:@"_alternativeURLs"];
  [v11 encodeObject:self->_intendedQuery forKey:@"_intendedQuery"];
  [v11 encodeObject:self->_completedQuery forKey:@"_completedQuery"];
  [v11 encodeObject:self->_correctedQuery forKey:@"_correctedQuery"];
  [v11 encodeInt64:self->_queryId forKey:@"_queryId"];
  [v11 encodeBool:self->_publiclyIndexable forKey:@"_publiclyIndexable"];
  [v11 encodeObject:self->_userInput forKey:@"_userInput"];
  [v11 encodeObject:self->_itemProviderDataTypes forKey:@"_itemProviderDataTypes"];
  [v11 encodeObject:self->_itemProviderFileTypes forKey:@"_itemProviderFileTypes"];
  [v11 encodeObject:self->_contentType forKey:@"_contentType"];
  [v11 encodeObject:self->_contentTypeTree forKey:@"_contentTypeTree"];
  [v11 encodeInteger:self->_dataOwnerType forKey:@"_dataOwnerType"];
  [v11 encodeObject:self->_fileProviderIdentifier forKey:@"_fileProviderIdentifier"];
  [v11 encodeObject:self->_fileProviderDomainIdentifier forKey:@"_fileProviderDomainIdentifier"];
  [v11 encodeObject:self->_fbr forKey:@"_fbr"];
  [v11 encodeBool:self->_doNotFold forKey:@"_doNotFold"];
  [v11 encodeInt64:self->_blockId forKey:@"_blockId"];
  [v11 encodeObject:self->_entityData forKey:@"_entityData"];
  [v11 encodeBool:self->_isInstantAnswer forKey:@"_isInstantAnswer"];
  [v11 encodeBool:self->_shouldAutoNavigate forKey:@"_shouldAutoNavigate"];
  [v11 encodeBool:self->_containsPersonalResult forKey:@"_containsPersonalResult"];
  [v11 encodeBool:self->_didRerankPersonalResult forKey:@"_didRerankPersonalResult"];
  [v11 encodeInt32:self->_coreSpotlightIndexUsed forKey:@"_coreSpotlightIndexUsed"];
  [v11 encodeInt32:self->_coreSpotlightIndexUsedReason forKey:@"_coreSpotlightIndexUsedReason"];
  [v11 encodeObject:self->_coreSpotlightRankingSignals forKey:@"_coreSpotlightRankingSignals"];
  [v11 encodeObject:self->_mailRankingSignals forKey:@"_mailRankingSignals"];
  [v11 encodeObject:self->_mailResultDetails forKey:@"_mailResultDetails"];
  [v11 encodeBool:self->_isVideoAssetFromPhotos forKey:@"_isVideoAssetFromPhotos"];
  [v11 encodeObject:self->_resultEntity forKey:@"_resultEntity"];
  [v11 encodeBool:self->_isMailInstantAnswerUpdated forKey:@"_isMailInstantAnswerUpdated"];
  [v11 encodeObject:self->_indexOfSectionWhenRanked forKey:@"_indexOfSectionWhenRanked"];
  [v11 encodeObject:self->_indexOfResultInSectionWhenRanked forKey:@"_indexOfResultInSectionWhenRanked"];
  [v11 encodeObject:self->_safariAttributes forKey:@"_safariAttributes"];
  [v11 encodeObject:self->_entityType forKey:@"_entityType"];
  [v11 encodeBool:self->_hasAppTopHitShortcut forKey:@"_hasAppTopHitShortcut"];
  [v11 encodeObject:self->_photosAttributes forKey:@"_photosAttributes"];
  [v11 encodeObject:self->_photosAggregatedInfo forKey:@"_photosAggregatedInfo"];
  [v11 encodeObject:self->_moreResultsButton forKey:@"_moreResultsButton"];
  [v11 encodeObject:self->_serverCompletion forKey:@"_serverCompletion"];
  [v11 encodeObject:self->_thirdPartyNavigationIntentScore forKey:@"_thirdPartyNavigationIntentScore"];
  [v11 encodeInt32:self->_thirdPartyQueryCompletionMatched forKey:@"_thirdPartyQueryCompletionMatched"];
}

- (SFSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v196.receiver = self;
  v196.super_class = SFSearchResult;
  v5 = [(SFSearchResult *)&v196 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    [v4 decodeDoubleForKey:@"_rankingScore"];
    v5->_rankingScore = v8;
    v5->_topHit = [v4 decodeIntegerForKey:@"_topHit"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v9;

    v5->_preventThumbnailImageScaling = [v4 decodeBoolForKey:@"_preventThumbnailImageScaling"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryTitle"];
    secondaryTitle = v5->_secondaryTitle;
    v5->_secondaryTitle = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryTitleImage"];
    secondaryTitleImage = v5->_secondaryTitleImage;
    v5->_secondaryTitleImage = v15;

    v5->_isSecondaryTitleDetached = [v4 decodeBoolForKey:@"_isSecondaryTitleDetached"];
    v5->_isCentered = [v4 decodeBoolForKey:@"_isCentered"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"_descriptions"];
    descriptions = v5->_descriptions;
    v5->_descriptions = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_footnote"];
    footnote = v5->_footnote;
    v5->_footnote = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_publishDate"];
    publishDate = v5->_publishDate;
    v5->_publishDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceName"];
    sourceName = v5->_sourceName;
    v5->_sourceName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_completion"];
    completion = v5->_completion;
    v5->_completion = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_completionImage"];
    completionImage = v5->_completionImage;
    v5->_completionImage = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = v5->_url;
    v5->_url = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_auxiliaryTopText"];
    auxiliaryTopText = v5->_auxiliaryTopText;
    v5->_auxiliaryTopText = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_auxiliaryMiddleText"];
    auxiliaryMiddleText = v5->_auxiliaryMiddleText;
    v5->_auxiliaryMiddleText = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_auxiliaryBottomText"];
    auxiliaryBottomText = v5->_auxiliaryBottomText;
    v5->_auxiliaryBottomText = v38;

    v5->_auxiliaryBottomTextColor = [v4 decodeInt32ForKey:@"_auxiliaryBottomTextColor"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_action"];
    action = v5->_action;
    v5->_action = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_punchout"];
    punchout = v5->_punchout;
    v5->_punchout = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_storeIdentifier"];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_calendarIdentifier"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_entityIdentifier"];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapsData"];
    mapsData = v5->_mapsData;
    v5->_mapsData = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapsResultType"];
    mapsResultType = v5->_mapsResultType;
    v5->_mapsResultType = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapsMoreURL"];
    mapsMoreURL = v5->_mapsMoreURL;
    v5->_mapsMoreURL = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapsMoreString"];
    mapsMoreString = v5->_mapsMoreString;
    v5->_mapsMoreString = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapsMoreIcon"];
    mapsMoreIcon = v5->_mapsMoreIcon;
    v5->_mapsMoreIcon = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nearbyBusinessesString"];
    nearbyBusinessesString = v5->_nearbyBusinessesString;
    v5->_nearbyBusinessesString = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appleReferrer"];
    appleReferrer = v5->_appleReferrer;
    v5->_appleReferrer = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_card"];
    card = v5->_card;
    v5->_card = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_inlineCard"];
    inlineCard = v5->_inlineCard;
    v5->_inlineCard = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tophitCard"];
    tophitCard = v5->_tophitCard;
    v5->_tophitCard = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_moreResults"];
    moreResults = v5->_moreResults;
    v5->_moreResults = v72;

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_moreResultsPunchout"];
    moreResultsPunchout = v5->_moreResultsPunchout;
    v5->_moreResultsPunchout = v74;

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_normalizedTopic"];
    normalizedTopic = v5->_normalizedTopic;
    v5->_normalizedTopic = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requestedTopic"];
    requestedTopic = v5->_requestedTopic;
    v5->_requestedTopic = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionBundleIdentifier"];
    sectionBundleIdentifier = v5->_sectionBundleIdentifier;
    v5->_sectionBundleIdentifier = v82;

    v5->_isLocalApplicationResult = [v4 decodeBoolForKey:@"_isLocalApplicationResult"];
    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userActivityRequiredString"];
    userActivityRequiredString = v5->_userActivityRequiredString;
    v5->_userActivityRequiredString = v84;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_minimumRankOfTopHitToSuppressResult = [v4 decodeIntegerForKey:@"_minimumRankOfTopHitToSuppressResult"];
    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionHeader"];
    sectionHeader = v5->_sectionHeader;
    v5->_sectionHeader = v86;

    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionHeaderMore"];
    sectionHeaderMore = v5->_sectionHeaderMore;
    v5->_sectionHeaderMore = v88;

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionHeaderMoreURL"];
    sectionHeaderMoreURL = v5->_sectionHeaderMoreURL;
    v5->_sectionHeaderMoreURL = v90;

    v5->_placement = [v4 decodeIntegerForKey:@"_placement"];
    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_customProperties"];
    customProperties = v5->_customProperties;
    v5->_customProperties = v92;

    v5->_renderHorizontallyWithOtherResultsInCategory = [v4 decodeBoolForKey:@"_renderHorizontallyWithOtherResultsInCategory"];
    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v94;

    [v4 decodeDoubleForKey:@"_serverScore"];
    v5->_serverScore = v96;
    [v4 decodeDoubleForKey:@"_personalizationScore"];
    v5->_personalizationScore = v97;
    v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resultType"];
    resultType = v5->_resultType;
    v5->_resultType = v98;

    v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resultTemplate"];
    resultTemplate = v5->_resultTemplate;
    v5->_resultTemplate = v100;

    v5->_isQuickGlance = [v4 decodeBoolForKey:@"_isQuickGlance"];
    v5->_isStreaming = [v4 decodeBoolForKey:@"_isStreaming"];
    v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_engagementScore"];
    engagementScore = v5->_engagementScore;
    v5->_engagementScore = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_queryIndependentScore"];
    queryIndependentScore = v5->_queryIndependentScore;
    v5->_queryIndependentScore = v104;

    v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxAge"];
    maxAge = v5->_maxAge;
    v5->_maxAge = v106;

    v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_titleNote"];
    titleNote = v5->_titleNote;
    v5->_titleNote = v108;

    v110 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_titleNoteSize"];
    titleNoteSize = v5->_titleNoteSize;
    v5->_titleNoteSize = v110;

    v112 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resultBundleId"];
    resultBundleId = v5->_resultBundleId;
    v5->_resultBundleId = v112;

    v114 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_icon"];
    icon = v5->_icon;
    v5->_icon = v114;

    v5->_isStaticCorrection = [v4 decodeBoolForKey:@"_isStaticCorrection"];
    v5->_isFuzzyMatch = [v4 decodeBoolForKey:@"_isFuzzyMatch"];
    v116 = MEMORY[0x1E695DFD8];
    v117 = objc_opt_class();
    v118 = objc_opt_class();
    v119 = objc_opt_class();
    v120 = [v116 setWithObjects:{v117, v118, v119, objc_opt_class(), 0}];
    v121 = [v4 decodeObjectOfClasses:v120 forKey:@"_localFeatures"];
    localFeatures = v5->_localFeatures;
    v5->_localFeatures = v121;

    v123 = MEMORY[0x1E695DFD8];
    v124 = objc_opt_class();
    v125 = objc_opt_class();
    v126 = [v123 setWithObjects:{v124, v125, objc_opt_class(), 0}];
    v127 = [v4 decodeObjectOfClasses:v126 forKey:@"_serverFeatures"];
    serverFeatures = v5->_serverFeatures;
    v5->_serverFeatures = v127;

    v5->_shouldUseCompactDisplay = [v4 decodeBoolForKey:@"_shouldUseCompactDisplay"];
    v5->_noGoTakeover = [v4 decodeBoolForKey:@"_noGoTakeover"];
    v5->_preferTopPlatter = [v4 decodeBoolForKey:@"_preferTopPlatter"];
    v5->_wasCompact = [v4 decodeBoolForKey:@"_wasCompact"];
    v5->_didTakeoverGo = [v4 decodeBoolForKey:@"_didTakeoverGo"];
    v5->_usesCompactDisplay = [v4 decodeBoolForKey:@"_usesCompactDisplay"];
    v5->_usesTopHitDisplay = [v4 decodeBoolForKey:@"_usesTopHitDisplay"];
    v129 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_compactCard"];
    compactCard = v5->_compactCard;
    v5->_compactCard = v129;

    v131 = MEMORY[0x1E695DFD8];
    v132 = objc_opt_class();
    v133 = [v131 setWithObjects:{v132, objc_opt_class(), 0}];
    v134 = [v4 decodeObjectOfClasses:v133 forKey:@"_alternativeURLs"];
    alternativeURLs = v5->_alternativeURLs;
    v5->_alternativeURLs = v134;

    v136 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intendedQuery"];
    intendedQuery = v5->_intendedQuery;
    v5->_intendedQuery = v136;

    v138 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_completedQuery"];
    completedQuery = v5->_completedQuery;
    v5->_completedQuery = v138;

    v140 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_correctedQuery"];
    correctedQuery = v5->_correctedQuery;
    v5->_correctedQuery = v140;

    v5->_queryId = [v4 decodeInt64ForKey:@"_queryId"];
    v5->_publiclyIndexable = [v4 decodeBoolForKey:@"_publiclyIndexable"];
    v142 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userInput"];
    userInput = v5->_userInput;
    v5->_userInput = v142;

    v144 = MEMORY[0x1E695DFD8];
    v145 = objc_opt_class();
    v146 = [v144 setWithObjects:{v145, objc_opt_class(), 0}];
    v147 = [v4 decodeObjectOfClasses:v146 forKey:@"_itemProviderDataTypes"];
    itemProviderDataTypes = v5->_itemProviderDataTypes;
    v5->_itemProviderDataTypes = v147;

    v149 = MEMORY[0x1E695DFD8];
    v150 = objc_opt_class();
    v151 = [v149 setWithObjects:{v150, objc_opt_class(), 0}];
    v152 = [v4 decodeObjectOfClasses:v151 forKey:@"_itemProviderFileTypes"];
    itemProviderFileTypes = v5->_itemProviderFileTypes;
    v5->_itemProviderFileTypes = v152;

    v154 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v154;

    v156 = MEMORY[0x1E695DFD8];
    v157 = objc_opt_class();
    v158 = [v156 setWithObjects:{v157, objc_opt_class(), 0}];
    v159 = [v4 decodeObjectOfClasses:v158 forKey:@"_contentTypeTree"];
    contentTypeTree = v5->_contentTypeTree;
    v5->_contentTypeTree = v159;

    v5->_dataOwnerType = [v4 decodeIntegerForKey:@"_dataOwnerType"];
    v161 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileProviderIdentifier"];
    fileProviderIdentifier = v5->_fileProviderIdentifier;
    v5->_fileProviderIdentifier = v161;

    v163 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileProviderDomainIdentifier"];
    fileProviderDomainIdentifier = v5->_fileProviderDomainIdentifier;
    v5->_fileProviderDomainIdentifier = v163;

    v165 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fbr"];
    fbr = v5->_fbr;
    v5->_fbr = v165;

    v5->_doNotFold = [v4 decodeBoolForKey:@"_doNotFold"];
    v5->_blockId = [v4 decodeInt64ForKey:@"_blockId"];
    v167 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_entityData"];
    entityData = v5->_entityData;
    v5->_entityData = v167;

    v5->_isInstantAnswer = [v4 decodeBoolForKey:@"_isInstantAnswer"];
    v5->_shouldAutoNavigate = [v4 decodeBoolForKey:@"_shouldAutoNavigate"];
    v5->_containsPersonalResult = [v4 decodeBoolForKey:@"_containsPersonalResult"];
    v5->_didRerankPersonalResult = [v4 decodeBoolForKey:@"_didRerankPersonalResult"];
    v5->_coreSpotlightIndexUsed = [v4 decodeInt32ForKey:@"_coreSpotlightIndexUsed"];
    v5->_coreSpotlightIndexUsedReason = [v4 decodeInt32ForKey:@"_coreSpotlightIndexUsedReason"];
    v169 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_coreSpotlightRankingSignals"];
    coreSpotlightRankingSignals = v5->_coreSpotlightRankingSignals;
    v5->_coreSpotlightRankingSignals = v169;

    v171 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mailRankingSignals"];
    mailRankingSignals = v5->_mailRankingSignals;
    v5->_mailRankingSignals = v171;

    v173 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mailResultDetails"];
    mailResultDetails = v5->_mailResultDetails;
    v5->_mailResultDetails = v173;

    v5->_isVideoAssetFromPhotos = [v4 decodeBoolForKey:@"_isVideoAssetFromPhotos"];
    v175 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resultEntity"];
    resultEntity = v5->_resultEntity;
    v5->_resultEntity = v175;

    v5->_isMailInstantAnswerUpdated = [v4 decodeBoolForKey:@"_isMailInstantAnswerUpdated"];
    v177 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_indexOfSectionWhenRanked"];
    indexOfSectionWhenRanked = v5->_indexOfSectionWhenRanked;
    v5->_indexOfSectionWhenRanked = v177;

    v179 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_indexOfResultInSectionWhenRanked"];
    indexOfResultInSectionWhenRanked = v5->_indexOfResultInSectionWhenRanked;
    v5->_indexOfResultInSectionWhenRanked = v179;

    v181 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_safariAttributes"];
    safariAttributes = v5->_safariAttributes;
    v5->_safariAttributes = v181;

    v183 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_entityType"];
    entityType = v5->_entityType;
    v5->_entityType = v183;

    v5->_hasAppTopHitShortcut = [v4 decodeBoolForKey:@"_hasAppTopHitShortcut"];
    v185 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_photosAttributes"];
    photosAttributes = v5->_photosAttributes;
    v5->_photosAttributes = v185;

    v187 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_photosAggregatedInfo"];
    photosAggregatedInfo = v5->_photosAggregatedInfo;
    v5->_photosAggregatedInfo = v187;

    v189 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_moreResultsButton"];
    moreResultsButton = v5->_moreResultsButton;
    v5->_moreResultsButton = v189;

    v191 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverCompletion"];
    serverCompletion = v5->_serverCompletion;
    v5->_serverCompletion = v191;

    v5->_thirdPartyQueryCompletionMatched = [v4 decodeInt32ForKey:@"_thirdPartyQueryCompletionMatched"];
    v193 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thirdPartyNavigationIntentScore"];
    thirdPartyNavigationIntentScore = v5->_thirdPartyNavigationIntentScore;
    v5->_thirdPartyNavigationIntentScore = v193;
  }

  return v5;
}

- (SFSearchResult)initWithQueryTopic:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SFSearchResult;
  v5 = [(SFSearchResult *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFText);
    v7 = [v4 query];
    [(SFText *)v6 setText:v7];

    [(SFSearchResult *)v5 setTitle:v6];
    v8 = [v4 query];
    [(SFSearchResult *)v5 setCompletion:v8];

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
    v14 = [(SFSearchResult *)v5 resultBundleId];
    [(SFPunchout *)v13 setBundleIdentifier:v14];

    v15 = objc_alloc_init(SFSuggestionCardSection);
    v16 = [v4 query];
    v17 = [(SFText *)SFRichText textWithString:v16];
    [(SFSuggestionCardSection *)v15 setSuggestionText:v17];

    v18 = [(SFSuggestionCardSection *)v15 suggestionText];
    [v18 setMaxLines:1];

    [(SFSuggestionCardSection *)v15 setSuggestionType:0];
    v29[0] = v13;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [(SFCardSection *)v15 setPunchoutOptions:v19];

    [(SFSuggestionCardSection *)v15 setThumbnail:v11];
    v20 = objc_alloc_init(SFUpdateSearchQueryCommand);
    v21 = [v4 query];
    [(SFUpdateSearchQueryCommand *)v20 setSearchString:v21];

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