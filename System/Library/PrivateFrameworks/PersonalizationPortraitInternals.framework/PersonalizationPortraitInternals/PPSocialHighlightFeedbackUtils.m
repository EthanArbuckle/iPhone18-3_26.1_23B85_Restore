@interface PPSocialHighlightFeedbackUtils
+ (id)biomeEventFromFeedback:(id)a3;
+ (id)feedbackFromBiomeEvent:(id)a3;
+ (id)stringifyBiomeFeedbackType:(unint64_t)a3;
@end

@implementation PPSocialHighlightFeedbackUtils

+ (id)feedbackFromBiomeEvent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 clientIdentifier];
  [v4 setClientIdentifier:v5];

  v6 = [v3 feedbackType];
  objc_opt_self();
  if (v6 >= 0xB)
  {
    v7 = 11;
  }

  else
  {
    v7 = v6;
  }

  [v4 setFeedbackType:v7];
  v8 = [v3 feedbackCreationDate];
  [v8 timeIntervalSinceReferenceDate];
  [v4 setFeedbackCreationSecondsSinceReferenceDate:?];

  v9 = [v3 highlight];
  objc_opt_self();
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v9 applicationIdentifiers];
    v12 = [v11 mutableCopy];
    [v10 setApplicationIdentifiers:v12];

    v13 = [v9 attributionIdentifier];
    [v10 setAttributionIdentifier:v13];

    v14 = [v9 batchIdentifier];
    [v10 setBatchIdentifier:v14];

    v15 = [v9 calculatedFeatures];

    if (v15)
    {
      v16 = [v9 calculatedFeatures];
      [v10 setCalculatedFeaturesFromDictionary:v16];
    }

    v17 = [v9 clientIdentifier];
    [v10 setClientIdentifier:v17];

    v18 = [v9 clientVariant];
    [v10 setVariant:v18];

    v19 = [v9 contentCreationDate];

    if (v19)
    {
      v20 = [v9 contentCreationDate];
      [v20 timeIntervalSinceReferenceDate];
      [v10 setContentCreationSecondsSinceReferenceDate:?];
    }

    v21 = [v9 displayName];
    [v10 setDisplayName:v21];

    v22 = [v9 domainIdentifier];
    [v10 setDomainIdentifier:v22];

    v23 = [v9 groupPhotoPathDigest];
    [v10 setGroupPhotoPathDigest:v23];

    v24 = [v9 highlightIdentifier];
    [v10 setHighlightIdentifier:v24];

    v25 = [v9 highlightType];
    objc_opt_self();
    if (v25 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    [v10 setHighlightType:v27];
    v28 = [v9 isConversationAutoDonating];

    if (v28)
    {
      v29 = [v9 isConversationAutoDonating];
      [v10 setIsConversationAutoDonating:{objc_msgSend(v29, "BOOLValue")}];
    }

    v30 = [v9 isPrimary];

    if (v30)
    {
      v31 = [v9 isPrimary];
      [v10 setIsPrimary:{objc_msgSend(v31, "BOOLValue")}];
    }

    v32 = [v9 originatingDeviceId];
    [v10 setOriginatingDeviceId:v32];

    v33 = [v9 rank];

    if (v33)
    {
      v34 = [v9 rank];
      [v10 setRank:{objc_msgSend(v34, "unsignedIntValue")}];
    }

    v35 = [v9 rankingDate];

    if (v35)
    {
      v36 = [v9 rankingDate];
      [v36 timeIntervalSinceReferenceDate];
      [v10 setRankingSecondsSinceReferenceDate:?];
    }

    v37 = [v9 resolvedUrl];
    [v10 setResolvedUrl:v37];

    v38 = [v9 resourceUrl];
    v39 = [v38 absoluteString];
    [v10 setResourceUrl:v39];

    v40 = [v9 score];

    if (v40)
    {
      v41 = [v9 score];
      [v41 doubleValue];
      [v10 setScore:?];
    }

    v42 = [v9 sender];
    objc_opt_self();
    if (v42)
    {
      v43 = objc_opt_new();
      v44 = [v42 handle];
      [v43 setHandle:v44];

      [v43 setIsMe:{objc_msgSend(v42, "isMe")}];
      [v43 setIsSignificant:{objc_msgSend(v42, "isSignificant")}];
    }

    else
    {
      v43 = 0;
    }

    [v10 setSender:v43];
    v45 = [v9 sourceBundleId];
    [v10 setSourceBundleId:v45];

    v46 = [v9 syndicationDate];

    if (v46)
    {
      v47 = [v9 syndicationDate];
      [v47 timeIntervalSinceReferenceDate];
      [v10 setSyndicationSecondsSinceReferenceDate:?];
    }
  }

  else
  {
    v10 = 0;
  }

  [v4 setHighlight:v10];
  v48 = [v3 clientVariant];

  [v4 setVariant:v48];

  return v4;
}

+ (id)biomeEventFromFeedback:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 alloc];
  [v4 feedbackCreationSecondsSinceReferenceDate];
  v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
  v7 = objc_alloc(MEMORY[0x277CF1B10]);
  v8 = [v4 clientIdentifier];
  v9 = [v4 feedbackType];
  objc_opt_self();
  v10 = [v4 highlight];
  objc_opt_self();
  if (v10 && (([v10 hasHighlightIdentifier] & 1) != 0 || objc_msgSend(v10, "hasAttributionIdentifier")))
  {
    if ([v10 hasSyndicationSecondsSinceReferenceDate])
    {
      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v10 syndicationSecondsSinceReferenceDate];
      v68 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v68 = 0;
    }

    if ([v10 hasContentCreationSecondsSinceReferenceDate])
    {
      v13 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v10 contentCreationSecondsSinceReferenceDate];
      v67 = [v13 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v67 = 0;
    }

    if ([v10 hasRankingSecondsSinceReferenceDate])
    {
      v14 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v10 rankingSecondsSinceReferenceDate];
      v66 = [v14 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v66 = 0;
    }

    v15 = objc_alloc(MEMORY[0x277CF1A60]);
    v16 = [v10 highlightIdentifier];
    v17 = &stru_284759D38;
    v49 = v16;
    if (v16)
    {
      v17 = v16;
    }

    v46 = v17;
    v18 = [v10 highlightType];
    objc_opt_self();
    v19 = v18 == 1;
    if (v18 == 2)
    {
      v19 = 2;
    }

    v45 = v19;
    v65 = [v10 sourceBundleId];
    v64 = [v10 applicationIdentifiers];
    v48 = [v10 hasResourceUrl];
    if (v48)
    {
      v20 = objc_alloc(MEMORY[0x277CBEBC0]);
      v42 = [v10 resourceUrl];
      v56 = [v20 initWithString:?];
    }

    else
    {
      v56 = 0;
    }

    v21 = [v10 sender];
    objc_opt_self();
    v50 = v9;
    if (v21 && [v21 hasHandle])
    {
      v22 = objc_alloc(MEMORY[0x277CF1B08]);
      v23 = [v21 handle];
      if ([v21 hasIsSignificant])
      {
        v24 = [v21 isSignificant];
      }

      else
      {
        v24 = 0;
      }

      if ([v21 hasIsMe])
      {
        v25 = [v21 isMe];
      }

      else
      {
        v25 = 0;
      }

      v63 = [v22 initWithHandle:v23 isSignificant:v24 isMe:v25];
    }

    else
    {
      v63 = 0;
    }

    v47 = v21;

    v62 = [v10 domainIdentifier];
    v61 = [v10 batchIdentifier];
    v60 = [v10 clientIdentifier];
    v59 = [v10 groupPhotoPathDigest];
    v58 = [v10 displayName];
    v44 = [v10 hasIsPrimary];
    if (v44)
    {
      v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isPrimary")}];
    }

    else
    {
      v55 = 0;
    }

    v57 = [v10 attributionIdentifier];
    v43 = [v10 hasRank];
    if (v43)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "rank")}];
    }

    else
    {
      v54 = 0;
    }

    v26 = [v10 hasScore];
    if (v26)
    {
      v27 = MEMORY[0x277CCABB0];
      [v10 score];
      v53 = [v27 numberWithDouble:?];
    }

    else
    {
      v53 = 0;
    }

    v51 = v7;
    v28 = [v10 hasIsConversationAutoDonating];
    v52 = v8;
    v29 = v6;
    if (v28)
    {
      v30 = v15;
      v31 = MEMORY[0x277CCABB0];
      v32 = [v10 isConversationAutoDonating];
      v33 = v31;
      v15 = v30;
      v34 = [v33 numberWithBool:v32];
    }

    else
    {
      v34 = 0;
    }

    v35 = [v10 originatingDeviceId];
    v36 = [v10 resolvedUrl];
    v37 = [v10 variant];
    v12 = [v15 initWithHighlightIdentifier:v46 highlightType:v45 syndicationDate:v68 sourceBundleId:v65 applicationIdentifiers:v64 resourceUrl:v56 sender:v63 domainIdentifier:v62 batchIdentifier:v61 calculatedFeatures:0 clientIdentifier:v60 contentCreationDate:v67 groupPhotoPathDigest:v59 displayName:v58 isPrimary:v55 attributionIdentifier:v57 rank:v54 score:v53 isConversationAutoDonating:v34 originatingDeviceId:v35 rankingDate:v66 resolvedUrl:v36 clientVariant:v37];

    if (v28)
    {
    }

    v6 = v29;
    v8 = v52;
    if (v26)
    {
    }

    v7 = v51;
    v9 = v50;
    if (v43)
    {
    }

    if (v44)
    {
    }

    if (v48)
    {
    }
  }

  else
  {
    v12 = 0;
  }

  if (v9 >= 0xB)
  {
    v38 = 11;
  }

  else
  {
    v38 = v9;
  }

  v39 = [v4 variant];

  v40 = [v7 initWithClientIdentifier:v8 feedbackType:v38 feedbackCreationDate:v6 highlight:v12 clientVariant:v39];

  return v40;
}

+ (id)stringifyBiomeFeedbackType:(unint64_t)a3
{
  objc_opt_self();
  v4 = 11;
  if (a3 < 0xB)
  {
    v4 = a3;
  }

  return off_278972048[v4];
}

@end