@interface SFSearchResult(SPFeedback)
- (id)objectForFeedback;
- (void)copyBasePropertiesOverToResult:()SPFeedback;
- (void)setFeedbackPropertiesOnResultCopy:()SPFeedback;
@end

@implementation SFSearchResult(SPFeedback)

- (void)setFeedbackPropertiesOnResultCopy:()SPFeedback
{
  v14 = a3;
  [a1 copyBasePropertiesOverToResult:v14];
  v4 = [a1 compactCard];
  v5 = [v4 copyForFeedback];
  [v14 setCompactCard:v5];

  v6 = [a1 inlineCard];
  v7 = [v6 copyForFeedback];
  [v14 setInlineCard:v7];

  v8 = [a1 tophitCard];
  v9 = [v8 copyForFeedback];
  [v14 setTophitCard:v9];

  v10 = [a1 mapsData];
  v11 = GEOUsageSearchFoundationFeedbackDataForMapsData();
  [v14 setMapsData:v11];

  v12 = [a1 sectionBundleIdentifier];
  LOBYTE(v11) = [v12 isEqualToString:@"com.apple.DocumentsApp"];

  if ((v11 & 1) == 0)
  {
    v13 = [a1 punchout];
    [v14 setPunchout:v13];
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
  v4 = [a1 action];
  [v29 setAction:v4];

  v5 = [a1 applicationBundleIdentifier];
  [v29 setApplicationBundleIdentifier:v5];

  [v29 setBlockId:{objc_msgSend(a1, "blockId")}];
  v6 = [a1 calendarIdentifier];
  [v29 setCalendarIdentifier:v6];

  v7 = [a1 completedQuery];
  [v29 setCompletedQuery:v7];

  v8 = [a1 completion];
  [v29 setCompletion:v8];

  v9 = [a1 contactIdentifier];
  [v29 setContactIdentifier:v9];

  v10 = [a1 contentType];
  [v29 setContentType:v10];

  v11 = [a1 correctedQuery];
  [v29 setCorrectedQuery:v11];

  v12 = [a1 descriptions];
  [v29 setDescriptions:v12];

  v13 = [a1 fbr];
  [v29 setFbr:v13];

  v14 = [a1 footnote];
  [v29 setFootnote:v14];

  v15 = [a1 identifier];
  [v29 setIdentifier:v15];

  v16 = [a1 intendedQuery];
  [v29 setIntendedQuery:v16];

  [v29 setIsFuzzyMatch:{objc_msgSend(a1, "isFuzzyMatch")}];
  [v29 setIsLocalApplicationResult:{objc_msgSend(a1, "isLocalApplicationResult")}];
  [v29 setIsStaticCorrection:{objc_msgSend(a1, "isStaticCorrection")}];
  v17 = [a1 localFeatures];
  [v29 setLocalFeatures:v17];

  [v29 setNoGoTakeover:{objc_msgSend(a1, "noGoTakeover")}];
  [v29 setPreferTopPlatter:{objc_msgSend(a1, "preferTopPlatter")}];
  [v29 setPubliclyIndexable:{objc_msgSend(a1, "publiclyIndexable")}];
  [v29 setQueryId:{objc_msgSend(a1, "queryId")}];
  [a1 rankingScore];
  [v29 setRankingScore:?];
  v18 = [a1 resultBundleId];
  [v29 setResultBundleId:v18];

  v19 = [a1 resultType];
  [v29 setResultType:v19];

  v20 = [a1 secondaryTitle];
  [v29 setSecondaryTitle:v20];

  v21 = [a1 sectionBundleIdentifier];
  [v29 setSectionBundleIdentifier:v21];

  [v29 setShouldUseCompactDisplay:{objc_msgSend(a1, "shouldUseCompactDisplay")}];
  v22 = [a1 title];
  [v29 setTitle:v22];

  [v29 setTopHit:{objc_msgSend(a1, "topHit")}];
  [v29 setType:{objc_msgSend(a1, "type")}];
  v23 = [a1 userInput];
  [v29 setUserInput:v23];

  [v29 setUsesCompactDisplay:{objc_msgSend(a1, "usesCompactDisplay")}];
  [v29 setUsesTopHitDisplay:{objc_msgSend(a1, "usesTopHitDisplay")}];
  [v29 setRenderHorizontallyWithOtherResultsInCategory:{objc_msgSend(a1, "renderHorizontallyWithOtherResultsInCategory")}];
  [v29 setContainsPersonalResult:{objc_msgSend(a1, "containsPersonalResult")}];
  [v29 setDidRerankPersonalResult:{objc_msgSend(a1, "didRerankPersonalResult")}];
  v24 = [a1 itemProviderDataTypes];
  [v29 setItemProviderDataTypes:v24];

  v25 = [a1 itemProviderFileTypes];
  [v29 setItemProviderFileTypes:v25];

  [v29 setCoreSpotlightIndexUsed:{objc_msgSend(a1, "coreSpotlightIndexUsed")}];
  [v29 setCoreSpotlightIndexUsedReason:{objc_msgSend(a1, "coreSpotlightIndexUsedReason")}];
  v26 = [a1 coreSpotlightRankingSignals];
  [v29 setCoreSpotlightRankingSignals:v26];

  v27 = [a1 indexOfSectionWhenRanked];
  [v29 setIndexOfSectionWhenRanked:v27];

  v28 = [a1 indexOfResultInSectionWhenRanked];
  [v29 setIndexOfResultInSectionWhenRanked:v28];

  [v29 setHasAppTopHitShortcut:{objc_msgSend(a1, "hasAppTopHitShortcut")}];
  if ([objc_opt_class() instancesRespondToSelector:sel_serverFeatures] && objc_msgSend(objc_opt_class(), "instancesRespondToSelector:", sel_setServerFeatures_))
  {
    [v29 performSelector:sel_setServerFeatures_ withObject:{objc_msgSend(a1, "performSelector:", sel_serverFeatures)}];
  }
}

@end