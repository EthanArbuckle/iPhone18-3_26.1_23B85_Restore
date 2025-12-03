@interface SFSearchResult(SPFeedback)
- (id)objectForFeedback;
- (void)copyBasePropertiesOverToResult:()SPFeedback;
- (void)setFeedbackPropertiesOnResultCopy:()SPFeedback;
@end

@implementation SFSearchResult(SPFeedback)

- (void)setFeedbackPropertiesOnResultCopy:()SPFeedback
{
  v14 = a3;
  [self copyBasePropertiesOverToResult:v14];
  compactCard = [self compactCard];
  copyForFeedback = [compactCard copyForFeedback];
  [v14 setCompactCard:copyForFeedback];

  inlineCard = [self inlineCard];
  copyForFeedback2 = [inlineCard copyForFeedback];
  [v14 setInlineCard:copyForFeedback2];

  tophitCard = [self tophitCard];
  copyForFeedback3 = [tophitCard copyForFeedback];
  [v14 setTophitCard:copyForFeedback3];

  mapsData = [self mapsData];
  v11 = GEOUsageSearchFoundationFeedbackDataForMapsData();
  [v14 setMapsData:v11];

  sectionBundleIdentifier = [self sectionBundleIdentifier];
  LOBYTE(v11) = [sectionBundleIdentifier isEqualToString:@"com.apple.DocumentsApp"];

  if ((v11 & 1) == 0)
  {
    punchout = [self punchout];
    [v14 setPunchout:punchout];
  }
}

- (id)objectForFeedback
{
  if (objectForFeedback_onceToken != -1)
  {
    [SFSearchResult(SPFeedback) objectForFeedback];
  }

  if (objectForFeedback_atxAppClass && ([object isMemberOfClass:?] & 1) != 0 || objectForFeedback_atxResultClass && (objc_msgSend(object, "isMemberOfClass:") & 1) != 0 || objectForFeedback_atxSuggestionResultClass && objc_msgSend(object, "isMemberOfClass:"))
  {
    v2 = object;
  }

  else
  {
    v4 = objc_getAssociatedObject(object, "_feedbackobject");
    if (v4)
    {
      v2 = v4;
      if (v4 == *MEMORY[0x1E695E738])
      {
        v5 = object;

        v2 = v5;
      }
    }

    else
    {
      v2 = objc_alloc_init(objc_opt_class());
      [object setFeedbackPropertiesOnResultCopy:v2];
      objc_setAssociatedObject(object, "_feedbackobject", v2, 1);
      objc_setAssociatedObject(v2, "_feedbackobject", *MEMORY[0x1E695E738], 1);
    }
  }

  return v2;
}

- (void)copyBasePropertiesOverToResult:()SPFeedback
{
  v29 = a3;
  action = [self action];
  [v29 setAction:action];

  applicationBundleIdentifier = [self applicationBundleIdentifier];
  [v29 setApplicationBundleIdentifier:applicationBundleIdentifier];

  [v29 setBlockId:{objc_msgSend(self, "blockId")}];
  calendarIdentifier = [self calendarIdentifier];
  [v29 setCalendarIdentifier:calendarIdentifier];

  completedQuery = [self completedQuery];
  [v29 setCompletedQuery:completedQuery];

  completion = [self completion];
  [v29 setCompletion:completion];

  contactIdentifier = [self contactIdentifier];
  [v29 setContactIdentifier:contactIdentifier];

  contentType = [self contentType];
  [v29 setContentType:contentType];

  correctedQuery = [self correctedQuery];
  [v29 setCorrectedQuery:correctedQuery];

  descriptions = [self descriptions];
  [v29 setDescriptions:descriptions];

  v13 = [self fbr];
  [v29 setFbr:v13];

  footnote = [self footnote];
  [v29 setFootnote:footnote];

  identifier = [self identifier];
  [v29 setIdentifier:identifier];

  intendedQuery = [self intendedQuery];
  [v29 setIntendedQuery:intendedQuery];

  [v29 setIsFuzzyMatch:{objc_msgSend(self, "isFuzzyMatch")}];
  [v29 setIsLocalApplicationResult:{objc_msgSend(self, "isLocalApplicationResult")}];
  [v29 setIsStaticCorrection:{objc_msgSend(self, "isStaticCorrection")}];
  localFeatures = [self localFeatures];
  [v29 setLocalFeatures:localFeatures];

  [v29 setNoGoTakeover:{objc_msgSend(self, "noGoTakeover")}];
  [v29 setPreferTopPlatter:{objc_msgSend(self, "preferTopPlatter")}];
  [v29 setPubliclyIndexable:{objc_msgSend(self, "publiclyIndexable")}];
  [v29 setQueryId:{objc_msgSend(self, "queryId")}];
  [self rankingScore];
  [v29 setRankingScore:?];
  resultBundleId = [self resultBundleId];
  [v29 setResultBundleId:resultBundleId];

  resultType = [self resultType];
  [v29 setResultType:resultType];

  secondaryTitle = [self secondaryTitle];
  [v29 setSecondaryTitle:secondaryTitle];

  sectionBundleIdentifier = [self sectionBundleIdentifier];
  [v29 setSectionBundleIdentifier:sectionBundleIdentifier];

  [v29 setShouldUseCompactDisplay:{objc_msgSend(self, "shouldUseCompactDisplay")}];
  title = [self title];
  [v29 setTitle:title];

  [v29 setTopHit:{objc_msgSend(self, "topHit")}];
  [v29 setType:{objc_msgSend(self, "type")}];
  userInput = [self userInput];
  [v29 setUserInput:userInput];

  [v29 setUsesCompactDisplay:{objc_msgSend(self, "usesCompactDisplay")}];
  [v29 setUsesTopHitDisplay:{objc_msgSend(self, "usesTopHitDisplay")}];
  [v29 setRenderHorizontallyWithOtherResultsInCategory:{objc_msgSend(self, "renderHorizontallyWithOtherResultsInCategory")}];
  [v29 setContainsPersonalResult:{objc_msgSend(self, "containsPersonalResult")}];
  [v29 setDidRerankPersonalResult:{objc_msgSend(self, "didRerankPersonalResult")}];
  itemProviderDataTypes = [self itemProviderDataTypes];
  [v29 setItemProviderDataTypes:itemProviderDataTypes];

  itemProviderFileTypes = [self itemProviderFileTypes];
  [v29 setItemProviderFileTypes:itemProviderFileTypes];

  [v29 setCoreSpotlightIndexUsed:{objc_msgSend(self, "coreSpotlightIndexUsed")}];
  [v29 setCoreSpotlightIndexUsedReason:{objc_msgSend(self, "coreSpotlightIndexUsedReason")}];
  coreSpotlightRankingSignals = [self coreSpotlightRankingSignals];
  [v29 setCoreSpotlightRankingSignals:coreSpotlightRankingSignals];

  indexOfSectionWhenRanked = [self indexOfSectionWhenRanked];
  [v29 setIndexOfSectionWhenRanked:indexOfSectionWhenRanked];

  indexOfResultInSectionWhenRanked = [self indexOfResultInSectionWhenRanked];
  [v29 setIndexOfResultInSectionWhenRanked:indexOfResultInSectionWhenRanked];

  [v29 setHasAppTopHitShortcut:{objc_msgSend(self, "hasAppTopHitShortcut")}];
  if ([objc_opt_class() instancesRespondToSelector:sel_serverFeatures] && objc_msgSend(objc_opt_class(), "instancesRespondToSelector:", sel_setServerFeatures_))
  {
    [v29 performSelector:sel_setServerFeatures_ withObject:{objc_msgSend(self, "performSelector:", sel_serverFeatures)}];
  }
}

@end