@interface PPSocialHighlightFeedbackUtils
+ (id)biomeEventFromFeedback:(id)feedback;
+ (id)feedbackFromBiomeEvent:(id)event;
+ (id)stringifyBiomeFeedbackType:(unint64_t)type;
@end

@implementation PPSocialHighlightFeedbackUtils

+ (id)feedbackFromBiomeEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  clientIdentifier = [eventCopy clientIdentifier];
  [v4 setClientIdentifier:clientIdentifier];

  feedbackType = [eventCopy feedbackType];
  objc_opt_self();
  if (feedbackType >= 0xB)
  {
    v7 = 11;
  }

  else
  {
    v7 = feedbackType;
  }

  [v4 setFeedbackType:v7];
  feedbackCreationDate = [eventCopy feedbackCreationDate];
  [feedbackCreationDate timeIntervalSinceReferenceDate];
  [v4 setFeedbackCreationSecondsSinceReferenceDate:?];

  highlight = [eventCopy highlight];
  objc_opt_self();
  if (highlight)
  {
    v10 = objc_opt_new();
    applicationIdentifiers = [highlight applicationIdentifiers];
    v12 = [applicationIdentifiers mutableCopy];
    [v10 setApplicationIdentifiers:v12];

    attributionIdentifier = [highlight attributionIdentifier];
    [v10 setAttributionIdentifier:attributionIdentifier];

    batchIdentifier = [highlight batchIdentifier];
    [v10 setBatchIdentifier:batchIdentifier];

    calculatedFeatures = [highlight calculatedFeatures];

    if (calculatedFeatures)
    {
      calculatedFeatures2 = [highlight calculatedFeatures];
      [v10 setCalculatedFeaturesFromDictionary:calculatedFeatures2];
    }

    clientIdentifier2 = [highlight clientIdentifier];
    [v10 setClientIdentifier:clientIdentifier2];

    clientVariant = [highlight clientVariant];
    [v10 setVariant:clientVariant];

    contentCreationDate = [highlight contentCreationDate];

    if (contentCreationDate)
    {
      contentCreationDate2 = [highlight contentCreationDate];
      [contentCreationDate2 timeIntervalSinceReferenceDate];
      [v10 setContentCreationSecondsSinceReferenceDate:?];
    }

    displayName = [highlight displayName];
    [v10 setDisplayName:displayName];

    domainIdentifier = [highlight domainIdentifier];
    [v10 setDomainIdentifier:domainIdentifier];

    groupPhotoPathDigest = [highlight groupPhotoPathDigest];
    [v10 setGroupPhotoPathDigest:groupPhotoPathDigest];

    highlightIdentifier = [highlight highlightIdentifier];
    [v10 setHighlightIdentifier:highlightIdentifier];

    highlightType = [highlight highlightType];
    objc_opt_self();
    if (highlightType == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (highlightType)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    [v10 setHighlightType:v27];
    isConversationAutoDonating = [highlight isConversationAutoDonating];

    if (isConversationAutoDonating)
    {
      isConversationAutoDonating2 = [highlight isConversationAutoDonating];
      [v10 setIsConversationAutoDonating:{objc_msgSend(isConversationAutoDonating2, "BOOLValue")}];
    }

    isPrimary = [highlight isPrimary];

    if (isPrimary)
    {
      isPrimary2 = [highlight isPrimary];
      [v10 setIsPrimary:{objc_msgSend(isPrimary2, "BOOLValue")}];
    }

    originatingDeviceId = [highlight originatingDeviceId];
    [v10 setOriginatingDeviceId:originatingDeviceId];

    rank = [highlight rank];

    if (rank)
    {
      rank2 = [highlight rank];
      [v10 setRank:{objc_msgSend(rank2, "unsignedIntValue")}];
    }

    rankingDate = [highlight rankingDate];

    if (rankingDate)
    {
      rankingDate2 = [highlight rankingDate];
      [rankingDate2 timeIntervalSinceReferenceDate];
      [v10 setRankingSecondsSinceReferenceDate:?];
    }

    resolvedUrl = [highlight resolvedUrl];
    [v10 setResolvedUrl:resolvedUrl];

    resourceUrl = [highlight resourceUrl];
    absoluteString = [resourceUrl absoluteString];
    [v10 setResourceUrl:absoluteString];

    score = [highlight score];

    if (score)
    {
      score2 = [highlight score];
      [score2 doubleValue];
      [v10 setScore:?];
    }

    sender = [highlight sender];
    objc_opt_self();
    if (sender)
    {
      v43 = objc_opt_new();
      handle = [sender handle];
      [v43 setHandle:handle];

      [v43 setIsMe:{objc_msgSend(sender, "isMe")}];
      [v43 setIsSignificant:{objc_msgSend(sender, "isSignificant")}];
    }

    else
    {
      v43 = 0;
    }

    [v10 setSender:v43];
    sourceBundleId = [highlight sourceBundleId];
    [v10 setSourceBundleId:sourceBundleId];

    syndicationDate = [highlight syndicationDate];

    if (syndicationDate)
    {
      syndicationDate2 = [highlight syndicationDate];
      [syndicationDate2 timeIntervalSinceReferenceDate];
      [v10 setSyndicationSecondsSinceReferenceDate:?];
    }
  }

  else
  {
    v10 = 0;
  }

  [v4 setHighlight:v10];
  clientVariant2 = [eventCopy clientVariant];

  [v4 setVariant:clientVariant2];

  return v4;
}

+ (id)biomeEventFromFeedback:(id)feedback
{
  v3 = MEMORY[0x277CBEAA8];
  feedbackCopy = feedback;
  v5 = [v3 alloc];
  [feedbackCopy feedbackCreationSecondsSinceReferenceDate];
  v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
  v7 = objc_alloc(MEMORY[0x277CF1B10]);
  clientIdentifier = [feedbackCopy clientIdentifier];
  feedbackType = [feedbackCopy feedbackType];
  objc_opt_self();
  highlight = [feedbackCopy highlight];
  objc_opt_self();
  if (highlight && (([highlight hasHighlightIdentifier] & 1) != 0 || objc_msgSend(highlight, "hasAttributionIdentifier")))
  {
    if ([highlight hasSyndicationSecondsSinceReferenceDate])
    {
      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [highlight syndicationSecondsSinceReferenceDate];
      v68 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v68 = 0;
    }

    if ([highlight hasContentCreationSecondsSinceReferenceDate])
    {
      v13 = objc_alloc(MEMORY[0x277CBEAA8]);
      [highlight contentCreationSecondsSinceReferenceDate];
      v67 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v67 = 0;
    }

    if ([highlight hasRankingSecondsSinceReferenceDate])
    {
      v14 = objc_alloc(MEMORY[0x277CBEAA8]);
      [highlight rankingSecondsSinceReferenceDate];
      v66 = [v14 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v66 = 0;
    }

    v15 = objc_alloc(MEMORY[0x277CF1A60]);
    highlightIdentifier = [highlight highlightIdentifier];
    v17 = &stru_284759D38;
    v49 = highlightIdentifier;
    if (highlightIdentifier)
    {
      v17 = highlightIdentifier;
    }

    v46 = v17;
    highlightType = [highlight highlightType];
    objc_opt_self();
    v19 = highlightType == 1;
    if (highlightType == 2)
    {
      v19 = 2;
    }

    v45 = v19;
    sourceBundleId = [highlight sourceBundleId];
    applicationIdentifiers = [highlight applicationIdentifiers];
    hasResourceUrl = [highlight hasResourceUrl];
    if (hasResourceUrl)
    {
      v20 = objc_alloc(MEMORY[0x277CBEBC0]);
      resourceUrl = [highlight resourceUrl];
      v56 = [v20 initWithString:?];
    }

    else
    {
      v56 = 0;
    }

    sender = [highlight sender];
    objc_opt_self();
    v50 = feedbackType;
    if (sender && [sender hasHandle])
    {
      v22 = objc_alloc(MEMORY[0x277CF1B08]);
      handle = [sender handle];
      if ([sender hasIsSignificant])
      {
        isSignificant = [sender isSignificant];
      }

      else
      {
        isSignificant = 0;
      }

      if ([sender hasIsMe])
      {
        isMe = [sender isMe];
      }

      else
      {
        isMe = 0;
      }

      v63 = [v22 initWithHandle:handle isSignificant:isSignificant isMe:isMe];
    }

    else
    {
      v63 = 0;
    }

    v47 = sender;

    domainIdentifier = [highlight domainIdentifier];
    batchIdentifier = [highlight batchIdentifier];
    clientIdentifier2 = [highlight clientIdentifier];
    groupPhotoPathDigest = [highlight groupPhotoPathDigest];
    displayName = [highlight displayName];
    hasIsPrimary = [highlight hasIsPrimary];
    if (hasIsPrimary)
    {
      v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(highlight, "isPrimary")}];
    }

    else
    {
      v55 = 0;
    }

    attributionIdentifier = [highlight attributionIdentifier];
    hasRank = [highlight hasRank];
    if (hasRank)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(highlight, "rank")}];
    }

    else
    {
      v54 = 0;
    }

    hasScore = [highlight hasScore];
    if (hasScore)
    {
      v27 = MEMORY[0x277CCABB0];
      [highlight score];
      v53 = [v27 numberWithDouble:?];
    }

    else
    {
      v53 = 0;
    }

    v51 = v7;
    hasIsConversationAutoDonating = [highlight hasIsConversationAutoDonating];
    v52 = clientIdentifier;
    v29 = v6;
    if (hasIsConversationAutoDonating)
    {
      v30 = v15;
      v31 = MEMORY[0x277CCABB0];
      isConversationAutoDonating = [highlight isConversationAutoDonating];
      v33 = v31;
      v15 = v30;
      v34 = [v33 numberWithBool:isConversationAutoDonating];
    }

    else
    {
      v34 = 0;
    }

    originatingDeviceId = [highlight originatingDeviceId];
    resolvedUrl = [highlight resolvedUrl];
    variant = [highlight variant];
    v12 = [v15 initWithHighlightIdentifier:v46 highlightType:v45 syndicationDate:v68 sourceBundleId:sourceBundleId applicationIdentifiers:applicationIdentifiers resourceUrl:v56 sender:v63 domainIdentifier:domainIdentifier batchIdentifier:batchIdentifier calculatedFeatures:0 clientIdentifier:clientIdentifier2 contentCreationDate:v67 groupPhotoPathDigest:groupPhotoPathDigest displayName:displayName isPrimary:v55 attributionIdentifier:attributionIdentifier rank:v54 score:v53 isConversationAutoDonating:v34 originatingDeviceId:originatingDeviceId rankingDate:v66 resolvedUrl:resolvedUrl clientVariant:variant];

    if (hasIsConversationAutoDonating)
    {
    }

    v6 = v29;
    clientIdentifier = v52;
    if (hasScore)
    {
    }

    v7 = v51;
    feedbackType = v50;
    if (hasRank)
    {
    }

    if (hasIsPrimary)
    {
    }

    if (hasResourceUrl)
    {
    }
  }

  else
  {
    v12 = 0;
  }

  if (feedbackType >= 0xB)
  {
    v38 = 11;
  }

  else
  {
    v38 = feedbackType;
  }

  variant2 = [feedbackCopy variant];

  v40 = [v7 initWithClientIdentifier:clientIdentifier feedbackType:v38 feedbackCreationDate:v6 highlight:v12 clientVariant:variant2];

  return v40;
}

+ (id)stringifyBiomeFeedbackType:(unint64_t)type
{
  objc_opt_self();
  typeCopy = 11;
  if (type < 0xB)
  {
    typeCopy = type;
  }

  return off_278972048[typeCopy];
}

@end