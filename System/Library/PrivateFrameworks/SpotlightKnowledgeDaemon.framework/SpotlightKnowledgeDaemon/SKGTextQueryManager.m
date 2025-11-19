@interface SKGTextQueryManager
+ (id)queryForAttributesAbsent:(id)a3;
+ (id)queryForAttributesExist:(id)a3;
+ (id)queryForBundlesExcluded:(id)a3;
+ (id)queryForBundlesIncluded:(id)a3;
+ (id)queryForDocUnderstandingUpdatesIncludeBundles:(id)a3;
+ (id)queryForEligibleItemsWithTaskQueries:(id)a3 excludeBundles:(id)a4;
+ (id)queryForEmbeddingsUpdatesExcludeBundles:(id)a3;
+ (id)queryForEmbeddingsUpdatesIncludeBundles:(id)a3;
+ (id)queryForInvalidItems;
+ (id)queryForKeyphrasesUpdatesExcludeBundles:(id)a3;
+ (id)queryForKeyphrasesUpdatesIncludeBundles:(id)a3;
+ (id)queryForPipelineReport;
+ (id)queryForPipelineUpdatesWithTaskQueries:(id)a3 excludeBundles:(id)a4 throttleHorizonDate:(int64_t)a5;
+ (id)queryForSuggestedEventsUpdatesIncludeBundles:(id)a3;
+ (id)queryForTask:(id)a3 event:(int64_t)a4;
+ (id)queryForUpdaterVersionsWithThrottleHorizonDate:(int64_t)a3;
@end

@implementation SKGTextQueryManager

+ (id)queryForInvalidItems
{
  v19 = objc_alloc_init(SKGQueryStringBuilder);
  v18 = [(SKGQueryStringBuilder *)v19 beginGroup];
  v17 = [v18 withAttribute];
  v16 = (v17)[2](v17, @"*", @"=", @"*");
  v15 = [v16 and];
  v2 = [v15 withAttribute];
  v14 = (v2)[2](v2, @"_kMDItemUserActivityType", @"!=", @"*");
  v3 = [v14 and];
  v4 = [v3 beginGroup];
  v5 = [v4 withAttribute];
  v6 = (v5)[2](v5, @"_kMDItemIsZombie", @"!=", @"*");
  v7 = [v6 or];
  v8 = [v7 withAttribute];
  v9 = (v8)[2](v8, @"_kMDItemIsZombie", @"!=", &unk_2846E7CB0);
  v10 = [v9 endGroup];
  v11 = [v10 endGroup];
  v13 = [v11 build];

  return v13;
}

+ (id)queryForUpdaterVersionsWithThrottleHorizonDate:(int64_t)a3
{
  v57 = objc_alloc_init(SKGQueryStringBuilder);
  v56 = [(SKGQueryStringBuilder *)v57 beginGroup];
  v55 = [v56 beginGroup];
  v54 = [v55 withAttribute];
  v53 = (v54)[2](v54, @"_kMDItemUpdaterVersion", @"!=", @"*");
  v52 = [v53 or];
  v51 = [v52 beginGroup];
  v50 = [v51 withAttribute];
  v49 = (v50)[2](v50, @"_kMDItemUpdaterVersion", @"=", @"*");
  v48 = [v49 and];
  v4 = [v48 withAttribute];
  v5 = MEMORY[0x277CCABB0];
  v47 = [MEMORY[0x277D657A0] sharedContext];
  v45 = [v5 numberWithInteger:{objc_msgSend(v47, "textVersion")}];
  v46 = v4;
  v44 = (*(v4 + 16))(v4, @"_kMDItemUpdaterVersion", @"!=", v45);
  v43 = [v44 endGroup];
  v42 = [v43 endGroup];
  v41 = [v42 or];
  v40 = [v41 beginGroup];
  v39 = [v40 beginGroup];
  v38 = [v39 withAttribute];
  v37 = (v38)[2](v38, @"_kMDItemUpdaterLastRequested", @"!=", @"*");
  v36 = [v37 or];
  v35 = [v36 beginGroup];
  v34 = [v35 withAttribute];
  v33 = (v34)[2](v34, @"_kMDItemUpdaterLastRequested", @"=", @"*");
  v32 = [v33 and];
  v6 = [v32 withAttribute];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v31 = v6;
  v29 = (*(v6 + 16))(v6, @"_kMDItemUpdaterLastRequested");
  v27 = [v29 endGroup];
  v26 = [v27 endGroup];
  v25 = [v26 and];
  v24 = [v25 beginGroup];
  v23 = [v24 withAttribute];
  v22 = (v23)[2](v23, @"_kMDItemUpdaterRequestedCount", @"!=", @"*");
  v21 = [v22 or];
  v20 = [v21 beginGroup];
  v7 = [v20 withAttribute];
  v19 = (v7)[2](v7, @"_kMDItemUpdaterRequestedCount", @"=", @"*");
  v8 = [v19 and];
  v9 = [v8 withAttribute];
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "redonationRepeatCap")}];
  v13 = (v9)[2](v9, @"_kMDItemUpdaterRequestedCount", @"<", v12);
  v14 = [v13 endGroup];
  v15 = [v14 endGroup];
  v16 = [v15 endGroup];
  v17 = [v16 endGroup];
  v28 = [v17 build];

  return v28;
}

+ (id)queryForBundlesExcluded:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  v5 = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([v3 count])
  {
    v6 = [v5 not];
    v7 = [v6 withFieldMatch];
    v8 = (*(v7 + 16))(v7, @"_kMDItemBundleID", v3);

    v5 = v7;
  }

  else
  {
    v6 = [v5 withQuery];
    v8 = (v6)[2](v6, @"true");
  }

  v9 = [v8 endGroup];

  v10 = [v9 build];

  return v10;
}

+ (id)queryForAttributesExist:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  v5 = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([v3 count])
  {
    if ([v3 count])
    {
      v6 = 0;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = [v5 withAttribute];
        v9 = (v8)[2](v8, v7, @"=", @"*");

        if (v6 != [v3 count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        v5 = v9;
      }

      while (v6 < [v3 count]);
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v11 = [v5 withQuery];
    v9 = (v11)[2](v11, @"true");
  }

  v12 = [v9 endGroup];

  v13 = [v12 build];

  return v13;
}

+ (id)queryForAttributesAbsent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  v5 = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([v3 count])
  {
    if ([v3 count])
    {
      v6 = 0;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = [v5 withAttribute];
        v9 = (v8)[2](v8, v7, @"!=", @"*");

        if (v6 != [v3 count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        v5 = v9;
      }

      while (v6 < [v3 count]);
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v11 = [v5 withQuery];
    v9 = (v11)[2](v11, @"true");
  }

  v12 = [v9 endGroup];

  v13 = [v12 build];

  return v13;
}

+ (id)queryForBundlesIncluded:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SKGQueryStringBuilder);
  v5 = [(SKGQueryStringBuilder *)v4 beginGroup];

  if ([v3 count])
  {
    if ([v3 count])
    {
      v6 = 0;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = [v5 withAttribute];
        v9 = (v8)[2](v8, @"_kMDItemBundleID", @"=", v7);

        if (v6 != [v3 count] - 1)
        {
          v10 = [v9 or];

          v9 = v10;
        }

        ++v6;
        v5 = v9;
      }

      while (v6 < [v3 count]);
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v11 = [v5 withQuery];
    v9 = (v11)[2](v11, @"true");
  }

  v12 = [v9 endGroup];

  v13 = [v12 build];

  return v13;
}

+ (id)queryForEmbeddingsUpdatesExcludeBundles:(id)a3
{
  v3 = a3;
  v59 = objc_alloc_init(SKGQueryStringBuilder);
  v58 = [(SKGQueryStringBuilder *)v59 beginGroup];
  v4 = [v58 withQuery];
  v56 = [SKGTextQueryManager queryForBundlesExcluded:v3];

  v57 = v4;
  v55 = (*(v4 + 16))(v4, v56);
  v54 = [v55 and];
  v53 = [v54 beginGroup];
  v52 = [v53 beginGroup];
  v51 = [v52 withAttribute];
  v50 = (v51)[2](v51, @"_kMDItemNeedsEmbeddings", @"!=", @"*");
  v49 = [v50 and];
  v48 = [v49 withAttribute];
  v47 = (v48)[2](v48, @"kMDItemEmbeddingVersion", @"!=", @"*");
  v46 = [v47 and];
  v45 = [v46 withAttribute];
  v44 = (v45)[2](v45, @"_kMDItemMediaEmbeddingVersion", @"!=", @"*");
  v43 = [v44 endGroup];
  v42 = [v43 or];
  v41 = [v42 beginGroup];
  v40 = [v41 beginGroup];
  v39 = [v40 withAttribute];
  v38 = (v39)[2](v39, @"kMDItemEmbeddingVersion", @"=", @"*");
  v37 = [v38 and];
  v5 = [v37 withAttribute];
  v6 = MEMORY[0x277CCABB0];
  v36 = [MEMORY[0x277D657A0] sharedContext];
  v34 = [v6 numberWithInteger:{objc_msgSend(v36, "embeddingVersion")}];
  v35 = v5;
  v33 = (*(v5 + 16))(v5, @"kMDItemEmbeddingVersion", @"!=", v34);
  v32 = [v33 endGroup];
  v31 = [v32 or];
  v30 = [v31 beginGroup];
  v28 = [v30 withAttribute];
  v27 = (v28)[2](v28, @"_kMDItemMediaEmbeddingVersion", @"=", @"*");
  v26 = [v27 and];
  v7 = [v26 withAttribute];
  v8 = MEMORY[0x277CCABB0];
  v25 = [MEMORY[0x277D657A0] sharedContext];
  v23 = [v8 numberWithInteger:{objc_msgSend(v25, "embeddingModelVersion")}];
  v24 = v7;
  v22 = (*(v7 + 16))(v7, @"_kMDItemMediaEmbeddingVersion", @"!=", v23);
  v21 = [v22 endGroup];
  v20 = [v21 endGroup];
  v9 = [v20 or];
  v10 = [v9 beginGroup];
  v11 = [v10 withAttribute];
  v12 = (v11)[2](v11, @"_kMDItemEmbeddingsError", @"=", @"*");
  v13 = [v12 and];
  v14 = [v13 withAttribute];
  v15 = (v14)[2](v14, @"_kMDItemEmbeddingsError", @"<", &unk_2846E7CC8);
  v16 = [v15 endGroup];
  v17 = [v16 endGroup];
  v18 = [v17 endGroup];
  v29 = [v18 build];

  return v29;
}

+ (id)queryForKeyphrasesUpdatesExcludeBundles:(id)a3
{
  v3 = a3;
  v65 = objc_alloc_init(SKGQueryStringBuilder);
  v64 = [(SKGQueryStringBuilder *)v65 beginGroup];
  v63 = [v64 beginGroup];
  v4 = [v63 withQuery];
  v61 = [SKGTextQueryManager queryForBundlesExcluded:v3];

  v62 = v4;
  v60 = (*(v4 + 16))(v4, v61);
  v59 = [v60 and];
  v58 = [v59 beginGroup];
  v57 = [v58 withAttribute];
  v56 = (v57)[2](v57, @"_kMDItemBundleID", @"!=", @"com.apple*");
  v55 = [v56 or];
  v5 = [v55 withQuery];
  v54 = [MEMORY[0x277D657A0] sharedContext];
  v52 = [v54 keyphraseIncludeBundles];
  v51 = [SKGTextQueryManager queryForBundlesIncluded:v52];
  v53 = v5;
  v50 = (*(v5 + 16))(v5, v51);
  v49 = [v50 endGroup];
  v48 = [v49 endGroup];
  v47 = [v48 and];
  v46 = [v47 beginGroup];
  v6 = [v46 withQuery];
  v45 = [MEMORY[0x277D657A0] sharedContext];
  v43 = [v45 keyphraseExtractionAttributes];
  v42 = [SKGTextQueryManager queryForAttributesExist:v43];
  v44 = v6;
  v41 = (*(v6 + 16))(v6, v42);
  v40 = [v41 endGroup];
  v39 = [v40 and];
  v38 = [v39 beginGroup];
  v37 = [v38 beginGroup];
  v36 = [v37 withAttribute];
  v35 = (v36)[2](v36, @"_kMDItemNeedsKeyphrases", @"!=", @"*");
  v34 = [v35 and];
  v33 = [v34 withAttribute];
  v32 = (v33)[2](v33, @"kMDItemKeyphraseVersion", @"!=", @"*");
  v30 = [v32 endGroup];
  v29 = [v30 or];
  v28 = [v29 beginGroup];
  v27 = [v28 withAttribute];
  v26 = (v27)[2](v27, @"kMDItemKeyphraseVersion", @"=", @"*");
  v25 = [v26 and];
  v7 = [v25 withAttribute];
  v8 = MEMORY[0x277CCABB0];
  v24 = [MEMORY[0x277D657A0] sharedContext];
  v22 = [v8 numberWithInteger:{objc_msgSend(v24, "keyphraseVersion")}];
  v23 = v7;
  v21 = (*(v7 + 16))(v7, @"kMDItemKeyphraseVersion", @"!=", v22);
  v20 = [v21 endGroup];
  v9 = [v20 or];
  v10 = [v9 beginGroup];
  v11 = [v10 withAttribute];
  v12 = (v11)[2](v11, @"_kMDItemKeyphrasesError", @"=", @"*");
  v13 = [v12 and];
  v14 = [v13 withAttribute];
  v15 = (v14)[2](v14, @"_kMDItemKeyphrasesError", @"<", &unk_2846E7CC8);
  v16 = [v15 endGroup];
  v17 = [v16 endGroup];
  v18 = [v17 endGroup];
  v31 = [v18 build];

  return v31;
}

+ (id)queryForEmbeddingsUpdatesIncludeBundles:(id)a3
{
  v3 = a3;
  v59 = objc_alloc_init(SKGQueryStringBuilder);
  v58 = [(SKGQueryStringBuilder *)v59 beginGroup];
  v4 = [v58 withQuery];
  v56 = [SKGTextQueryManager queryForBundlesIncluded:v3];

  v57 = v4;
  v55 = (*(v4 + 16))(v4, v56);
  v54 = [v55 and];
  v53 = [v54 beginGroup];
  v52 = [v53 beginGroup];
  v51 = [v52 withAttribute];
  v50 = (v51)[2](v51, @"_kMDItemNeedsEmbeddings", @"!=", @"*");
  v49 = [v50 and];
  v48 = [v49 withAttribute];
  v47 = (v48)[2](v48, @"kMDItemEmbeddingVersion", @"!=", @"*");
  v46 = [v47 and];
  v45 = [v46 withAttribute];
  v44 = (v45)[2](v45, @"_kMDItemMediaEmbeddingVersion", @"!=", @"*");
  v43 = [v44 endGroup];
  v42 = [v43 or];
  v41 = [v42 beginGroup];
  v40 = [v41 beginGroup];
  v39 = [v40 withAttribute];
  v38 = (v39)[2](v39, @"kMDItemEmbeddingVersion", @"=", @"*");
  v37 = [v38 and];
  v5 = [v37 withAttribute];
  v6 = MEMORY[0x277CCABB0];
  v36 = [MEMORY[0x277D657A0] sharedContext];
  v34 = [v6 numberWithInteger:{objc_msgSend(v36, "embeddingVersion")}];
  v35 = v5;
  v33 = (*(v5 + 16))(v5, @"kMDItemEmbeddingVersion", @"!=", v34);
  v32 = [v33 endGroup];
  v31 = [v32 or];
  v30 = [v31 beginGroup];
  v28 = [v30 withAttribute];
  v27 = (v28)[2](v28, @"_kMDItemMediaEmbeddingVersion", @"=", @"*");
  v26 = [v27 and];
  v7 = [v26 withAttribute];
  v8 = MEMORY[0x277CCABB0];
  v25 = [MEMORY[0x277D657A0] sharedContext];
  v23 = [v8 numberWithInteger:{objc_msgSend(v25, "embeddingModelVersion")}];
  v24 = v7;
  v22 = (*(v7 + 16))(v7, @"_kMDItemMediaEmbeddingVersion", @"!=", v23);
  v21 = [v22 endGroup];
  v20 = [v21 endGroup];
  v9 = [v20 or];
  v10 = [v9 beginGroup];
  v11 = [v10 withAttribute];
  v12 = (v11)[2](v11, @"_kMDItemEmbeddingsError", @"=", @"*");
  v13 = [v12 and];
  v14 = [v13 withAttribute];
  v15 = (v14)[2](v14, @"_kMDItemEmbeddingsError", @"<", &unk_2846E7CC8);
  v16 = [v15 endGroup];
  v17 = [v16 endGroup];
  v18 = [v17 endGroup];
  v29 = [v18 build];

  return v29;
}

+ (id)queryForKeyphrasesUpdatesIncludeBundles:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277D657A0] sharedContext];
  v6 = [v5 excludeBundles];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = v3;
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
        if (([v6 containsObject:v12] & 1) == 0)
        {
          v13 = [MEMORY[0x277D657A0] sharedContext];
          v14 = [v13 keyphrasesSupportsBundle:v12 domainID:0];

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
    v61 = [(SKGQueryStringBuilder *)v62 beginGroup];
    v15 = [v61 withQuery];
    v59 = [SKGTextQueryManager queryForBundlesIncluded:v7];
    v60 = v15;
    v58 = (*(v15 + 16))(v15, v59);
    v57 = [v58 and];
    v56 = [v57 beginGroup];
    v16 = [v56 withQuery];
    v55 = [MEMORY[0x277D657A0] sharedContext];
    v53 = [v55 keyphraseExtractionAttributes];
    v52 = [SKGTextQueryManager queryForAttributesExist:v53];
    v54 = v16;
    v51 = (*(v16 + 16))(v16, v52);
    v50 = [v51 endGroup];
    v49 = [v50 and];
    v48 = [v49 beginGroup];
    v47 = [v48 beginGroup];
    v46 = [v47 withAttribute];
    v45 = (v46)[2](v46, @"_kMDItemNeedsKeyphrases", @"!=", @"*");
    v44 = [v45 and];
    v43 = [v44 withAttribute];
    v42 = (v43)[2](v43, @"kMDItemKeyphraseVersion", @"!=", @"*");
    v41 = [v42 endGroup];
    v40 = [v41 or];
    v39 = [v40 beginGroup];
    v38 = [v39 withAttribute];
    v37 = (v38)[2](v38, @"kMDItemKeyphraseVersion", @"=", @"*");
    v36 = [v37 and];
    v17 = [v36 withAttribute];
    v18 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277D657A0] sharedContext];
    v33 = [v18 numberWithInteger:{objc_msgSend(v35, "keyphraseVersion")}];
    v34 = v17;
    v32 = (*(v17 + 16))(v17, @"kMDItemKeyphraseVersion", @"!=", v33);
    v31 = [v32 endGroup];
    v30 = [v31 or];
    v29 = [v30 beginGroup];
    v19 = [v29 withAttribute];
    v28 = (v19)[2](v19, @"_kMDItemKeyphrasesError", @"=", @"*");
    v20 = [v28 and];
    v21 = [v20 withAttribute];
    v22 = (v21)[2](v21, @"_kMDItemKeyphrasesError", @"<", &unk_2846E7CC8);
    v23 = [v22 endGroup];
    v24 = [v23 endGroup];
    v25 = [v24 endGroup];
    v63 = [v25 build];
  }

  else
  {
    v63 = @"false";
  }

  v26 = *MEMORY[0x277D85DE8];

  return v63;
}

+ (id)queryForDocUnderstandingUpdatesIncludeBundles:(id)a3
{
  v3 = a3;
  v40 = objc_alloc_init(SKGQueryStringBuilder);
  v39 = [(SKGQueryStringBuilder *)v40 beginGroup];
  v4 = [v39 withQuery];
  v37 = [SKGTextQueryManager queryForBundlesIncluded:v3];

  v38 = v4;
  v36 = (*(v4 + 16))(v4, v37);
  v35 = [v36 and];
  v5 = [v35 withQuery];
  v34 = [MEMORY[0x277D657A0] sharedContext];
  v32 = [v34 docUnderstandingExtractionAttributes];
  v31 = [SKGTextQueryManager queryForAttributesExist:v32];
  v33 = v5;
  v30 = (*(v5 + 16))(v5, v31);
  v29 = [v30 and];
  v28 = [v29 beginGroup];
  v27 = [v28 beginGroup];
  v26 = [v27 withAttribute];
  v25 = (v26)[2](v26, @"_kMDItemNeedsDocumentUnderstanding", @"!=", @"*");
  v24 = [v25 and];
  v23 = [v24 withAttribute];
  v22 = (v23)[2](v23, @"kMDItemDocumentUnderstandingVersion", @"!=", @"*");
  v21 = [v22 endGroup];
  v19 = [v21 or];
  v18 = [v19 beginGroup];
  v6 = [v18 withAttribute];
  v7 = (v6)[2](v6, @"kMDItemDocumentUnderstandingVersion", @"=", @"*");
  v8 = [v7 and];
  v9 = [v8 withAttribute];
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "documentUnderstandingVersion")}];
  v13 = (v9)[2](v9, @"kMDItemDocumentUnderstandingVersion", @"!=", v12);
  v14 = [v13 endGroup];
  v15 = [v14 endGroup];
  v16 = [v15 endGroup];
  v20 = [v16 build];

  return v20;
}

+ (id)queryForSuggestedEventsUpdatesIncludeBundles:(id)a3
{
  v3 = a3;
  v40 = objc_alloc_init(SKGQueryStringBuilder);
  v39 = [(SKGQueryStringBuilder *)v40 beginGroup];
  v4 = [v39 withQuery];
  v37 = [SKGTextQueryManager queryForBundlesIncluded:v3];

  v38 = v4;
  v36 = (*(v4 + 16))(v4, v37);
  v35 = [v36 and];
  v5 = [v35 withQuery];
  v34 = [MEMORY[0x277D657A0] sharedContext];
  v32 = [v34 suggestedEventsExtractionAttributes];
  v31 = [SKGTextQueryManager queryForAttributesExist:v32];
  v33 = v5;
  v30 = (*(v5 + 16))(v5, v31);
  v29 = [v30 and];
  v28 = [v29 beginGroup];
  v27 = [v28 beginGroup];
  v26 = [v27 withAttribute];
  v25 = (v26)[2](v26, @"_kMDItemNeedsSuggestedEvents", @"!=", @"*");
  v24 = [v25 and];
  v23 = [v24 withAttribute];
  v22 = (v23)[2](v23, @"kMDItemSuggestedEventsVersion", @"!=", @"*");
  v21 = [v22 endGroup];
  v19 = [v21 or];
  v18 = [v19 beginGroup];
  v6 = [v18 withAttribute];
  v7 = (v6)[2](v6, @"kMDItemSuggestedEventsVersion", @"=", @"*");
  v8 = [v7 and];
  v9 = [v8 withAttribute];
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277D657A0] sharedContext];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "suggestedEventsVersion")}];
  v13 = (v9)[2](v9, @"kMDItemSuggestedEventsVersion", @"!=", v12);
  v14 = [v13 endGroup];
  v15 = [v14 endGroup];
  v16 = [v15 endGroup];
  v20 = [v16 build];

  return v20;
}

+ (id)queryForEligibleItemsWithTaskQueries:(id)a3 excludeBundles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = v5;
  if ([v5 count])
  {
    v7 = [v5 componentsJoinedByString:@"||"];
  }

  else
  {
    v7 = @"true";
  }

  v20 = v7;
  v25 = objc_alloc_init(SKGQueryStringBuilder);
  v24 = [(SKGQueryStringBuilder *)v25 beginGroup];
  v8 = [v24 withQuery];
  v23 = [SKGTextQueryManager queryForBundlesExcluded:v6];

  v22 = (v8)[2](v8, v23);
  v21 = [v22 and];
  v9 = [v21 withQuery];
  v10 = +[SKGTextQueryManager queryForInvalidItems];
  v11 = (v9)[2](v9, v10);
  v12 = [v11 and];
  v13 = [v12 beginGroup];
  v14 = [v13 withQuery];
  v15 = (v14)[2](v14, v7);
  v16 = [v15 endGroup];
  v17 = [v16 endGroup];
  v19 = [v17 build];

  return v19;
}

+ (id)queryForTask:(id)a3 event:(int64_t)a4
{
  v4 = [a3 queryForEvent:a4];
  if (v4)
  {
    v22 = objc_alloc_init(SKGQueryStringBuilder);
    v21 = [(SKGQueryStringBuilder *)v22 beginGroup];
    v5 = [v21 withQuery];
    v20 = [MEMORY[0x277D657A0] sharedContext];
    v18 = [v20 excludeBundles];
    v17 = [SKGTextQueryManager queryForBundlesExcluded:v18];
    v19 = v5;
    v16 = (*(v5 + 16))(v5, v17);
    v6 = [v16 and];
    v7 = [v6 withQuery];
    v8 = +[SKGTextQueryManager queryForInvalidItems];
    v9 = (v7)[2](v7, v8);
    v10 = [v9 and];
    v11 = [v10 withQuery];
    v12 = (v11)[2](v11, v4);
    v13 = [v12 endGroup];
    v14 = [v13 build];
  }

  else
  {
    v14 = @"false";
  }

  return v14;
}

+ (id)queryForPipelineUpdatesWithTaskQueries:(id)a3 excludeBundles:(id)a4 throttleHorizonDate:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v20 = objc_alloc_init(SKGQueryStringBuilder);
  v9 = [(SKGQueryStringBuilder *)v20 beginGroup];
  v10 = [v9 withQuery];
  v11 = [SKGTextQueryManager queryForEligibleItemsWithTaskQueries:v8 excludeBundles:v7];

  v12 = (v10)[2](v10, v11);
  v13 = [v12 and];
  v14 = [v13 withQuery];
  v15 = [SKGTextQueryManager queryForUpdaterVersionsWithThrottleHorizonDate:a5];
  v16 = (v14)[2](v14, v15);
  v17 = [v16 endGroup];
  v18 = [v17 build];

  return v18;
}

+ (id)queryForPipelineReport
{
  v2 = objc_alloc_init(SKGQueryStringBuilder);
  v3 = [(SKGQueryStringBuilder *)v2 beginGroup];
  v4 = [v3 withQuery];
  v5 = +[SKGTextQueryManager queryForInvalidItems];
  v6 = (v4)[2](v4, v5);
  v7 = [v6 endGroup];
  v8 = [v7 build];

  return v8;
}

@end