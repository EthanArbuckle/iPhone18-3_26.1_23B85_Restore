@interface SKGTextQueryManager
+ (id)queryForAttributesAbsent:(id)absent;
+ (id)queryForAttributesExist:(id)exist;
+ (id)queryForBundlesExcluded:(id)excluded;
+ (id)queryForBundlesIncluded:(id)included;
+ (id)queryForDocUnderstandingUpdatesIncludeBundles:(id)bundles;
+ (id)queryForEligibleItemsWithTaskQueries:(id)queries excludeBundles:(id)bundles;
+ (id)queryForEmbeddingsUpdatesExcludeBundles:(id)bundles;
+ (id)queryForEmbeddingsUpdatesIncludeBundles:(id)bundles;
+ (id)queryForInvalidItems;
+ (id)queryForKeyphrasesUpdatesExcludeBundles:(id)bundles;
+ (id)queryForKeyphrasesUpdatesIncludeBundles:(id)bundles;
+ (id)queryForPipelineReport;
+ (id)queryForPipelineUpdatesWithTaskQueries:(id)queries excludeBundles:(id)bundles throttleHorizonDate:(int64_t)date;
+ (id)queryForSuggestedEventsUpdatesIncludeBundles:(id)bundles;
+ (id)queryForTask:(id)task event:(int64_t)event;
+ (id)queryForUpdaterVersionsWithThrottleHorizonDate:(int64_t)date;
@end

@implementation SKGTextQueryManager

+ (id)queryForInvalidItems
{
  v19 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v19 beginGroup];
  withAttribute = [beginGroup withAttribute];
  v16 = (withAttribute)[2](withAttribute, @"*", @"=", @"*");
  v15 = [v16 and];
  withAttribute2 = [v15 withAttribute];
  v14 = (withAttribute2)[2](withAttribute2, @"_kMDItemUserActivityType", @"!=", @"*");
  v3 = [v14 and];
  beginGroup2 = [v3 beginGroup];
  withAttribute3 = [beginGroup2 withAttribute];
  v6 = (withAttribute3)[2](withAttribute3, @"_kMDItemIsZombie", @"!=", @"*");
  v7 = [v6 or];
  withAttribute4 = [v7 withAttribute];
  v9 = (withAttribute4)[2](withAttribute4, @"_kMDItemIsZombie", @"!=", &unk_2846E7CB0);
  endGroup = [v9 endGroup];
  v10EndGroup = [endGroup endGroup];
  build = [v10EndGroup build];

  return build;
}

+ (id)queryForUpdaterVersionsWithThrottleHorizonDate:(int64_t)date
{
  v57 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v57 beginGroup];
  v56BeginGroup = [beginGroup beginGroup];
  withAttribute = [v56BeginGroup withAttribute];
  v53 = (withAttribute)[2](withAttribute, @"_kMDItemUpdaterVersion", @"!=", @"*");
  v52 = [v53 or];
  beginGroup2 = [v52 beginGroup];
  withAttribute2 = [beginGroup2 withAttribute];
  v49 = (withAttribute2)[2](withAttribute2, @"_kMDItemUpdaterVersion", @"=", @"*");
  v48 = [v49 and];
  withAttribute3 = [v48 withAttribute];
  v5 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v45 = [v5 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "textVersion")}];
  v46 = withAttribute3;
  v44 = (*(withAttribute3 + 16))(withAttribute3, @"_kMDItemUpdaterVersion", @"!=", v45);
  endGroup = [v44 endGroup];
  v43EndGroup = [endGroup endGroup];
  v41 = [v43EndGroup or];
  beginGroup3 = [v41 beginGroup];
  v40BeginGroup = [beginGroup3 beginGroup];
  withAttribute4 = [v40BeginGroup withAttribute];
  v37 = (withAttribute4)[2](withAttribute4, @"_kMDItemUpdaterLastRequested", @"!=", @"*");
  v36 = [v37 or];
  beginGroup4 = [v36 beginGroup];
  withAttribute5 = [beginGroup4 withAttribute];
  v33 = (withAttribute5)[2](withAttribute5, @"_kMDItemUpdaterLastRequested", @"=", @"*");
  v32 = [v33 and];
  withAttribute6 = [v32 withAttribute];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:date];
  v31 = withAttribute6;
  v29 = (*(withAttribute6 + 16))(withAttribute6, @"_kMDItemUpdaterLastRequested");
  endGroup2 = [v29 endGroup];
  v27EndGroup = [endGroup2 endGroup];
  v25 = [v27EndGroup and];
  beginGroup5 = [v25 beginGroup];
  withAttribute7 = [beginGroup5 withAttribute];
  v22 = (withAttribute7)[2](withAttribute7, @"_kMDItemUpdaterRequestedCount", @"!=", @"*");
  v21 = [v22 or];
  beginGroup6 = [v21 beginGroup];
  withAttribute8 = [beginGroup6 withAttribute];
  v19 = (withAttribute8)[2](withAttribute8, @"_kMDItemUpdaterRequestedCount", @"=", @"*");
  v8 = [v19 and];
  withAttribute9 = [v8 withAttribute];
  v10 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v10 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "redonationRepeatCap")}];
  v13 = (withAttribute9)[2](withAttribute9, @"_kMDItemUpdaterRequestedCount", @"<", v12);
  endGroup3 = [v13 endGroup];
  v14EndGroup = [endGroup3 endGroup];
  v15EndGroup = [v14EndGroup endGroup];
  v16EndGroup = [v15EndGroup endGroup];
  build = [v16EndGroup build];

  return build;
}

+ (id)queryForBundlesExcluded:(id)excluded
{
  excludedCopy = excluded;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([excludedCopy count])
  {
    withQuery = [beginGroup not];
    withFieldMatch = [withQuery withFieldMatch];
    v8 = (*(withFieldMatch + 16))(withFieldMatch, @"_kMDItemBundleID", excludedCopy);

    beginGroup = withFieldMatch;
  }

  else
  {
    withQuery = [beginGroup withQuery];
    v8 = (withQuery)[2](withQuery, @"true");
  }

  endGroup = [v8 endGroup];

  build = [endGroup build];

  return build;
}

+ (id)queryForAttributesExist:(id)exist
{
  existCopy = exist;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([existCopy count])
  {
    if ([existCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [existCopy objectAtIndexedSubscript:v6];
        withAttribute = [beginGroup withAttribute];
        v9 = (withAttribute)[2](withAttribute, v7, @"=", @"*");

        if (v6 != [existCopy count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        beginGroup = v9;
      }

      while (v6 < [existCopy count]);
    }

    else
    {
      v9 = beginGroup;
    }
  }

  else
  {
    withQuery = [beginGroup withQuery];
    v9 = (withQuery)[2](withQuery, @"true");
  }

  endGroup = [v9 endGroup];

  build = [endGroup build];

  return build;
}

+ (id)queryForAttributesAbsent:(id)absent
{
  absentCopy = absent;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([absentCopy count])
  {
    if ([absentCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [absentCopy objectAtIndexedSubscript:v6];
        withAttribute = [beginGroup withAttribute];
        v9 = (withAttribute)[2](withAttribute, v7, @"!=", @"*");

        if (v6 != [absentCopy count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        beginGroup = v9;
      }

      while (v6 < [absentCopy count]);
    }

    else
    {
      v9 = beginGroup;
    }
  }

  else
  {
    withQuery = [beginGroup withQuery];
    v9 = (withQuery)[2](withQuery, @"true");
  }

  endGroup = [v9 endGroup];

  build = [endGroup build];

  return build;
}

+ (id)queryForBundlesIncluded:(id)included
{
  includedCopy = included;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([includedCopy count])
  {
    if ([includedCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [includedCopy objectAtIndexedSubscript:v6];
        withAttribute = [beginGroup withAttribute];
        v9 = (withAttribute)[2](withAttribute, @"_kMDItemBundleID", @"=", v7);

        if (v6 != [includedCopy count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        beginGroup = v9;
      }

      while (v6 < [includedCopy count]);
    }

    else
    {
      v9 = beginGroup;
    }
  }

  else
  {
    withQuery = [beginGroup withQuery];
    v9 = (withQuery)[2](withQuery, @"true");
  }

  endGroup = [v9 endGroup];

  build = [endGroup build];

  return build;
}

+ (id)queryForEmbeddingsUpdatesExcludeBundles:(id)bundles
{
  bundlesCopy = bundles;
  v59 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v59 beginGroup];
  withQuery = [beginGroup withQuery];
  v56 = [SKGTextQueryManager queryForBundlesExcluded:bundlesCopy];

  v57 = withQuery;
  v55 = (*(withQuery + 16))(withQuery, v56);
  v54 = [v55 and];
  beginGroup2 = [v54 beginGroup];
  v53BeginGroup = [beginGroup2 beginGroup];
  withAttribute = [v53BeginGroup withAttribute];
  v50 = (withAttribute)[2](withAttribute, @"_kMDItemNeedsEmbeddings", @"!=", @"*");
  v49 = [v50 and];
  withAttribute2 = [v49 withAttribute];
  v47 = (withAttribute2)[2](withAttribute2, @"kMDItemEmbeddingVersion", @"!=", @"*");
  v46 = [v47 and];
  withAttribute3 = [v46 withAttribute];
  v44 = (withAttribute3)[2](withAttribute3, @"_kMDItemMediaEmbeddingVersion", @"!=", @"*");
  endGroup = [v44 endGroup];
  v42 = [endGroup or];
  beginGroup3 = [v42 beginGroup];
  v41BeginGroup = [beginGroup3 beginGroup];
  withAttribute4 = [v41BeginGroup withAttribute];
  v38 = (withAttribute4)[2](withAttribute4, @"kMDItemEmbeddingVersion", @"=", @"*");
  v37 = [v38 and];
  withAttribute5 = [v37 withAttribute];
  v6 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v34 = [v6 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "embeddingVersion")}];
  v35 = withAttribute5;
  v33 = (*(withAttribute5 + 16))(withAttribute5, @"kMDItemEmbeddingVersion", @"!=", v34);
  endGroup2 = [v33 endGroup];
  v31 = [endGroup2 or];
  beginGroup4 = [v31 beginGroup];
  withAttribute6 = [beginGroup4 withAttribute];
  v27 = (withAttribute6)[2](withAttribute6, @"_kMDItemMediaEmbeddingVersion", @"=", @"*");
  v26 = [v27 and];
  withAttribute7 = [v26 withAttribute];
  v8 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v23 = [v8 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "embeddingModelVersion")}];
  v24 = withAttribute7;
  v22 = (*(withAttribute7 + 16))(withAttribute7, @"_kMDItemMediaEmbeddingVersion", @"!=", v23);
  endGroup3 = [v22 endGroup];
  v21EndGroup = [endGroup3 endGroup];
  v9 = [v21EndGroup or];
  beginGroup5 = [v9 beginGroup];
  withAttribute8 = [beginGroup5 withAttribute];
  v12 = (withAttribute8)[2](withAttribute8, @"_kMDItemEmbeddingsError", @"=", @"*");
  v13 = [v12 and];
  withAttribute9 = [v13 withAttribute];
  v15 = (withAttribute9)[2](withAttribute9, @"_kMDItemEmbeddingsError", @"<", &unk_2846E7CC8);
  endGroup4 = [v15 endGroup];
  v16EndGroup = [endGroup4 endGroup];
  v17EndGroup = [v16EndGroup endGroup];
  build = [v17EndGroup build];

  return build;
}

+ (id)queryForKeyphrasesUpdatesExcludeBundles:(id)bundles
{
  bundlesCopy = bundles;
  v65 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v65 beginGroup];
  v64BeginGroup = [beginGroup beginGroup];
  withQuery = [v64BeginGroup withQuery];
  v61 = [SKGTextQueryManager queryForBundlesExcluded:bundlesCopy];

  v62 = withQuery;
  v60 = (*(withQuery + 16))(withQuery, v61);
  v59 = [v60 and];
  beginGroup2 = [v59 beginGroup];
  withAttribute = [beginGroup2 withAttribute];
  v56 = (withAttribute)[2](withAttribute, @"_kMDItemBundleID", @"!=", @"com.apple*");
  v55 = [v56 or];
  withQuery2 = [v55 withQuery];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  keyphraseIncludeBundles = [mEMORY[0x277D657A0] keyphraseIncludeBundles];
  v51 = [SKGTextQueryManager queryForBundlesIncluded:keyphraseIncludeBundles];
  v53 = withQuery2;
  v50 = (*(withQuery2 + 16))(withQuery2, v51);
  endGroup = [v50 endGroup];
  v49EndGroup = [endGroup endGroup];
  v47 = [v49EndGroup and];
  beginGroup3 = [v47 beginGroup];
  withQuery3 = [beginGroup3 withQuery];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  keyphraseExtractionAttributes = [mEMORY[0x277D657A0]2 keyphraseExtractionAttributes];
  v42 = [SKGTextQueryManager queryForAttributesExist:keyphraseExtractionAttributes];
  v44 = withQuery3;
  v41 = (*(withQuery3 + 16))(withQuery3, v42);
  endGroup2 = [v41 endGroup];
  v39 = [endGroup2 and];
  beginGroup4 = [v39 beginGroup];
  v38BeginGroup = [beginGroup4 beginGroup];
  withAttribute2 = [v38BeginGroup withAttribute];
  v35 = (withAttribute2)[2](withAttribute2, @"_kMDItemNeedsKeyphrases", @"!=", @"*");
  v34 = [v35 and];
  withAttribute3 = [v34 withAttribute];
  v32 = (withAttribute3)[2](withAttribute3, @"kMDItemKeyphraseVersion", @"!=", @"*");
  endGroup3 = [v32 endGroup];
  v29 = [endGroup3 or];
  beginGroup5 = [v29 beginGroup];
  withAttribute4 = [beginGroup5 withAttribute];
  v26 = (withAttribute4)[2](withAttribute4, @"kMDItemKeyphraseVersion", @"=", @"*");
  v25 = [v26 and];
  withAttribute5 = [v25 withAttribute];
  v8 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  v22 = [v8 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]3, "keyphraseVersion")}];
  v23 = withAttribute5;
  v21 = (*(withAttribute5 + 16))(withAttribute5, @"kMDItemKeyphraseVersion", @"!=", v22);
  endGroup4 = [v21 endGroup];
  v9 = [endGroup4 or];
  beginGroup6 = [v9 beginGroup];
  withAttribute6 = [beginGroup6 withAttribute];
  v12 = (withAttribute6)[2](withAttribute6, @"_kMDItemKeyphrasesError", @"=", @"*");
  v13 = [v12 and];
  withAttribute7 = [v13 withAttribute];
  v15 = (withAttribute7)[2](withAttribute7, @"_kMDItemKeyphrasesError", @"<", &unk_2846E7CC8);
  endGroup5 = [v15 endGroup];
  v16EndGroup = [endGroup5 endGroup];
  v17EndGroup = [v16EndGroup endGroup];
  build = [v17EndGroup build];

  return build;
}

+ (id)queryForEmbeddingsUpdatesIncludeBundles:(id)bundles
{
  bundlesCopy = bundles;
  v59 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v59 beginGroup];
  withQuery = [beginGroup withQuery];
  v56 = [SKGTextQueryManager queryForBundlesIncluded:bundlesCopy];

  v57 = withQuery;
  v55 = (*(withQuery + 16))(withQuery, v56);
  v54 = [v55 and];
  beginGroup2 = [v54 beginGroup];
  v53BeginGroup = [beginGroup2 beginGroup];
  withAttribute = [v53BeginGroup withAttribute];
  v50 = (withAttribute)[2](withAttribute, @"_kMDItemNeedsEmbeddings", @"!=", @"*");
  v49 = [v50 and];
  withAttribute2 = [v49 withAttribute];
  v47 = (withAttribute2)[2](withAttribute2, @"kMDItemEmbeddingVersion", @"!=", @"*");
  v46 = [v47 and];
  withAttribute3 = [v46 withAttribute];
  v44 = (withAttribute3)[2](withAttribute3, @"_kMDItemMediaEmbeddingVersion", @"!=", @"*");
  endGroup = [v44 endGroup];
  v42 = [endGroup or];
  beginGroup3 = [v42 beginGroup];
  v41BeginGroup = [beginGroup3 beginGroup];
  withAttribute4 = [v41BeginGroup withAttribute];
  v38 = (withAttribute4)[2](withAttribute4, @"kMDItemEmbeddingVersion", @"=", @"*");
  v37 = [v38 and];
  withAttribute5 = [v37 withAttribute];
  v6 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v34 = [v6 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "embeddingVersion")}];
  v35 = withAttribute5;
  v33 = (*(withAttribute5 + 16))(withAttribute5, @"kMDItemEmbeddingVersion", @"!=", v34);
  endGroup2 = [v33 endGroup];
  v31 = [endGroup2 or];
  beginGroup4 = [v31 beginGroup];
  withAttribute6 = [beginGroup4 withAttribute];
  v27 = (withAttribute6)[2](withAttribute6, @"_kMDItemMediaEmbeddingVersion", @"=", @"*");
  v26 = [v27 and];
  withAttribute7 = [v26 withAttribute];
  v8 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v23 = [v8 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "embeddingModelVersion")}];
  v24 = withAttribute7;
  v22 = (*(withAttribute7 + 16))(withAttribute7, @"_kMDItemMediaEmbeddingVersion", @"!=", v23);
  endGroup3 = [v22 endGroup];
  v21EndGroup = [endGroup3 endGroup];
  v9 = [v21EndGroup or];
  beginGroup5 = [v9 beginGroup];
  withAttribute8 = [beginGroup5 withAttribute];
  v12 = (withAttribute8)[2](withAttribute8, @"_kMDItemEmbeddingsError", @"=", @"*");
  v13 = [v12 and];
  withAttribute9 = [v13 withAttribute];
  v15 = (withAttribute9)[2](withAttribute9, @"_kMDItemEmbeddingsError", @"<", &unk_2846E7CC8);
  endGroup4 = [v15 endGroup];
  v16EndGroup = [endGroup4 endGroup];
  v17EndGroup = [v16EndGroup endGroup];
  build = [v17EndGroup build];

  return build;
}

+ (id)queryForKeyphrasesUpdatesIncludeBundles:(id)bundles
{
  v69 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  excludeBundles = [mEMORY[0x277D657A0] excludeBundles];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = bundlesCopy;
  v8 = [v7 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v65;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v65 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v64 + 1) + 8 * i);
        if (([excludeBundles containsObject:v12] & 1) == 0)
        {
          mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
          v14 = [mEMORY[0x277D657A0]2 keyphrasesSupportsBundle:v12 domainID:0];

          if (v14)
          {
            [v4 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    v62 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v62 beginGroup];
    withQuery = [beginGroup withQuery];
    v59 = [SKGTextQueryManager queryForBundlesIncluded:v7];
    v60 = withQuery;
    v58 = (*(withQuery + 16))(withQuery, v59);
    v57 = [v58 and];
    beginGroup2 = [v57 beginGroup];
    withQuery2 = [beginGroup2 withQuery];
    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseExtractionAttributes = [mEMORY[0x277D657A0]3 keyphraseExtractionAttributes];
    v52 = [SKGTextQueryManager queryForAttributesExist:keyphraseExtractionAttributes];
    v54 = withQuery2;
    v51 = (*(withQuery2 + 16))(withQuery2, v52);
    endGroup = [v51 endGroup];
    v49 = [endGroup and];
    beginGroup3 = [v49 beginGroup];
    v48BeginGroup = [beginGroup3 beginGroup];
    withAttribute = [v48BeginGroup withAttribute];
    v45 = (withAttribute)[2](withAttribute, @"_kMDItemNeedsKeyphrases", @"!=", @"*");
    v44 = [v45 and];
    withAttribute2 = [v44 withAttribute];
    v42 = (withAttribute2)[2](withAttribute2, @"kMDItemKeyphraseVersion", @"!=", @"*");
    endGroup2 = [v42 endGroup];
    v40 = [endGroup2 or];
    beginGroup4 = [v40 beginGroup];
    withAttribute3 = [beginGroup4 withAttribute];
    v37 = (withAttribute3)[2](withAttribute3, @"kMDItemKeyphraseVersion", @"=", @"*");
    v36 = [v37 and];
    withAttribute4 = [v36 withAttribute];
    v18 = MEMORY[0x277CCABB0];
    mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
    v33 = [v18 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]4, "keyphraseVersion")}];
    v34 = withAttribute4;
    v32 = (*(withAttribute4 + 16))(withAttribute4, @"kMDItemKeyphraseVersion", @"!=", v33);
    endGroup3 = [v32 endGroup];
    v30 = [endGroup3 or];
    beginGroup5 = [v30 beginGroup];
    withAttribute5 = [beginGroup5 withAttribute];
    v28 = (withAttribute5)[2](withAttribute5, @"_kMDItemKeyphrasesError", @"=", @"*");
    v20 = [v28 and];
    withAttribute6 = [v20 withAttribute];
    v22 = (withAttribute6)[2](withAttribute6, @"_kMDItemKeyphrasesError", @"<", &unk_2846E7CC8);
    endGroup4 = [v22 endGroup];
    v23EndGroup = [endGroup4 endGroup];
    v24EndGroup = [v23EndGroup endGroup];
    build = [v24EndGroup build];
  }

  else
  {
    build = @"false";
  }

  v26 = *MEMORY[0x277D85DE8];

  return build;
}

+ (id)queryForDocUnderstandingUpdatesIncludeBundles:(id)bundles
{
  bundlesCopy = bundles;
  v40 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v40 beginGroup];
  withQuery = [beginGroup withQuery];
  v37 = [SKGTextQueryManager queryForBundlesIncluded:bundlesCopy];

  v38 = withQuery;
  v36 = (*(withQuery + 16))(withQuery, v37);
  v35 = [v36 and];
  withQuery2 = [v35 withQuery];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  docUnderstandingExtractionAttributes = [mEMORY[0x277D657A0] docUnderstandingExtractionAttributes];
  v31 = [SKGTextQueryManager queryForAttributesExist:docUnderstandingExtractionAttributes];
  v33 = withQuery2;
  v30 = (*(withQuery2 + 16))(withQuery2, v31);
  v29 = [v30 and];
  beginGroup2 = [v29 beginGroup];
  v28BeginGroup = [beginGroup2 beginGroup];
  withAttribute = [v28BeginGroup withAttribute];
  v25 = (withAttribute)[2](withAttribute, @"_kMDItemNeedsDocumentUnderstanding", @"!=", @"*");
  v24 = [v25 and];
  withAttribute2 = [v24 withAttribute];
  v22 = (withAttribute2)[2](withAttribute2, @"kMDItemDocumentUnderstandingVersion", @"!=", @"*");
  endGroup = [v22 endGroup];
  v19 = [endGroup or];
  beginGroup3 = [v19 beginGroup];
  withAttribute3 = [beginGroup3 withAttribute];
  v7 = (withAttribute3)[2](withAttribute3, @"kMDItemDocumentUnderstandingVersion", @"=", @"*");
  v8 = [v7 and];
  withAttribute4 = [v8 withAttribute];
  v10 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v10 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "documentUnderstandingVersion")}];
  v13 = (withAttribute4)[2](withAttribute4, @"kMDItemDocumentUnderstandingVersion", @"!=", v12);
  endGroup2 = [v13 endGroup];
  v14EndGroup = [endGroup2 endGroup];
  v15EndGroup = [v14EndGroup endGroup];
  build = [v15EndGroup build];

  return build;
}

+ (id)queryForSuggestedEventsUpdatesIncludeBundles:(id)bundles
{
  bundlesCopy = bundles;
  v40 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v40 beginGroup];
  withQuery = [beginGroup withQuery];
  v37 = [SKGTextQueryManager queryForBundlesIncluded:bundlesCopy];

  v38 = withQuery;
  v36 = (*(withQuery + 16))(withQuery, v37);
  v35 = [v36 and];
  withQuery2 = [v35 withQuery];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  suggestedEventsExtractionAttributes = [mEMORY[0x277D657A0] suggestedEventsExtractionAttributes];
  v31 = [SKGTextQueryManager queryForAttributesExist:suggestedEventsExtractionAttributes];
  v33 = withQuery2;
  v30 = (*(withQuery2 + 16))(withQuery2, v31);
  v29 = [v30 and];
  beginGroup2 = [v29 beginGroup];
  v28BeginGroup = [beginGroup2 beginGroup];
  withAttribute = [v28BeginGroup withAttribute];
  v25 = (withAttribute)[2](withAttribute, @"_kMDItemNeedsSuggestedEvents", @"!=", @"*");
  v24 = [v25 and];
  withAttribute2 = [v24 withAttribute];
  v22 = (withAttribute2)[2](withAttribute2, @"kMDItemSuggestedEventsVersion", @"!=", @"*");
  endGroup = [v22 endGroup];
  v19 = [endGroup or];
  beginGroup3 = [v19 beginGroup];
  withAttribute3 = [beginGroup3 withAttribute];
  v7 = (withAttribute3)[2](withAttribute3, @"kMDItemSuggestedEventsVersion", @"=", @"*");
  v8 = [v7 and];
  withAttribute4 = [v8 withAttribute];
  v10 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v10 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "suggestedEventsVersion")}];
  v13 = (withAttribute4)[2](withAttribute4, @"kMDItemSuggestedEventsVersion", @"!=", v12);
  endGroup2 = [v13 endGroup];
  v14EndGroup = [endGroup2 endGroup];
  v15EndGroup = [v14EndGroup endGroup];
  build = [v15EndGroup build];

  return build;
}

+ (id)queryForEligibleItemsWithTaskQueries:(id)queries excludeBundles:(id)bundles
{
  queriesCopy = queries;
  bundlesCopy = bundles;
  v26 = queriesCopy;
  if ([queriesCopy count])
  {
    v7 = [queriesCopy componentsJoinedByString:@"||"];
  }

  else
  {
    v7 = @"true";
  }

  v20 = v7;
  v25 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v25 beginGroup];
  withQuery = [beginGroup withQuery];
  v23 = [SKGTextQueryManager queryForBundlesExcluded:bundlesCopy];

  v22 = (withQuery)[2](withQuery, v23);
  v21 = [v22 and];
  withQuery2 = [v21 withQuery];
  v10 = +[SKGTextQueryManager queryForInvalidItems];
  v11 = (withQuery2)[2](withQuery2, v10);
  v12 = [v11 and];
  beginGroup2 = [v12 beginGroup];
  withQuery3 = [beginGroup2 withQuery];
  v15 = (withQuery3)[2](withQuery3, v7);
  endGroup = [v15 endGroup];
  v16EndGroup = [endGroup endGroup];
  build = [v16EndGroup build];

  return build;
}

+ (id)queryForTask:(id)task event:(int64_t)event
{
  v4 = [task queryForEvent:event];
  if (v4)
  {
    v22 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v22 beginGroup];
    withQuery = [beginGroup withQuery];
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    excludeBundles = [mEMORY[0x277D657A0] excludeBundles];
    v17 = [SKGTextQueryManager queryForBundlesExcluded:excludeBundles];
    v19 = withQuery;
    v16 = (*(withQuery + 16))(withQuery, v17);
    v6 = [v16 and];
    withQuery2 = [v6 withQuery];
    v8 = +[SKGTextQueryManager queryForInvalidItems];
    v9 = (withQuery2)[2](withQuery2, v8);
    v10 = [v9 and];
    withQuery3 = [v10 withQuery];
    v12 = (withQuery3)[2](withQuery3, v4);
    endGroup = [v12 endGroup];
    build = [endGroup build];
  }

  else
  {
    build = @"false";
  }

  return build;
}

+ (id)queryForPipelineUpdatesWithTaskQueries:(id)queries excludeBundles:(id)bundles throttleHorizonDate:(int64_t)date
{
  bundlesCopy = bundles;
  queriesCopy = queries;
  v20 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v20 beginGroup];
  withQuery = [beginGroup withQuery];
  v11 = [SKGTextQueryManager queryForEligibleItemsWithTaskQueries:queriesCopy excludeBundles:bundlesCopy];

  v12 = (withQuery)[2](withQuery, v11);
  v13 = [v12 and];
  withQuery2 = [v13 withQuery];
  v15 = [SKGTextQueryManager queryForUpdaterVersionsWithThrottleHorizonDate:date];
  v16 = (withQuery2)[2](withQuery2, v15);
  endGroup = [v16 endGroup];
  build = [endGroup build];

  return build;
}

+ (id)queryForPipelineReport
{
  v2 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v2 beginGroup];
  withQuery = [beginGroup withQuery];
  v5 = +[SKGTextQueryManager queryForInvalidItems];
  v6 = (withQuery)[2](withQuery, v5);
  endGroup = [v6 endGroup];
  build = [endGroup build];

  return build;
}

@end