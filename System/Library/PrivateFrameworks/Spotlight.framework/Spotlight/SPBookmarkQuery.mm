@interface SPBookmarkQuery
- (void)start;
@end

@implementation SPBookmarkQuery

- (void)start
{
  v59 = *MEMORY[0x277D85DE8];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:2])
  {
    queryContext = [(SPKQuery *)self queryContext];
    getTrimmedSearchString = [queryContext getTrimmedSearchString];
    v5 = [getTrimmedSearchString mutableCopy];

    v6 = SSEnableSpotlightTopHitPersonalizedRanking();
    disabledBundles = [queryContext disabledBundles];
    v8 = *MEMORY[0x277D65B80];
    if ([disabledBundles containsObject:*MEMORY[0x277D65B80]])
    {
    }

    else
    {
      v9 = looksLikeURL();

      if (v9)
      {
        if ([v5 containsString:@"://"])
        {
          v10 = v5;
        }

        else
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@", v5];
        }

        v15 = v10;
        v16 = [MEMORY[0x277CBEBC0] URLWithString:v10];
        v17 = v16;
        if (v16 && ([v16 scheme], (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v19 = v18, objc_msgSend(v17, "host"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
        {
          v21 = objc_opt_new();
          responseHandler2 = objc_opt_new();
          v23 = objc_opt_new();
          [v23 setIconType:1];
          v50 = v23;
          [responseHandler2 setThumbnail:v23];
          [MEMORY[0x277D4C598] textWithString:v5];
          v24 = v51 = v15;
          [responseHandler2 setTitle:v24];

          v25 = [MEMORY[0x277D4C550] punchoutWithURL:v17];
          v56 = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
          [responseHandler2 setPunchoutOptions:v26];

          v27 = [MEMORY[0x277D4C598] textWithString:v5];
          v55 = v27;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
          [responseHandler2 setDescriptions:v28];

          v29 = objc_opt_new();
          [v21 setInlineCard:v29];

          v54 = responseHandler2;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
          inlineCard = [v21 inlineCard];
          [inlineCard setCardSections:v30];

          [v21 setContentURL:v51];
          [v21 setApplicationBundleIdentifier:v8];
          [v21 setSectionBundleIdentifier:v8];
          [v21 setResultBundleId:*MEMORY[0x277D65BC0]];
          [v21 setType:2];
          [v21 setQueryId:{objc_msgSend(queryContext, "queryIdent")}];
          v32 = [@"userTypedURL-" stringByAppendingString:v5];
          [v21 setIdentifier:v32];

          [v21 setProtectionClass:*MEMORY[0x277CCA1A0]];
          if ((v6 & 1) == 0)
          {
            [v21 setIsSafariTopHit:1];
            [v21 setTopHit:SSSetTopHitWithReasonString()];
          }

          [v21 setForceNoTopHit:0];
          host = [v17 host];
          [v21 setCompletion:host];

          v34 = SSCompactRankingAttrsAlloc();
          SSCompactRankingAttrsUpdateValue();
          SSCompactRankingAttrsUpdateValue();
          SSCompactRankingAttrsUpdateValue();
          v35 = [objc_alloc(MEMORY[0x277D65830]) initWithAttrs:v34];
          [v21 setRankingItem:v35];

          if (v6)
          {
            rankingItem = [v21 rankingItem];
            [rankingItem setBundleIDType:{objc_msgSend(rankingItem, "bundleIDType") | 0x80}];
          }

          v37 = objc_opt_new();
          [v37 setMaxInitiallyVisibleResults:1];
          [v37 setBundleIdentifier:v8];
          v38 = SSAppNameForBundleId();
          [v37 setTitle:v38];

          v53 = v21;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
          [v37 setResults:v39];

          if (v6)
          {
            [v37 setDomain:1];
          }

          v40 = objc_alloc(MEMORY[0x277D65860]);
          queryGroupId = [(SPKQuery *)self queryGroupId];
          v52 = v37;
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
          v43 = [v40 initWithQueryID:queryGroupId sourceKind:2 sections:v42];

          [v43 setTopHitIsIn:1];
          responseHandler = [(SPKQuery *)self responseHandler];
          (responseHandler)[2](responseHandler, v43);

          v15 = v51;
        }

        else
        {
          v45 = SPLogForSPLogCategoryDefault();
          v46 = *MEMORY[0x277D4BF50];
          if (os_log_type_enabled(v45, ((*MEMORY[0x277D4BF50] & 1) == 0)))
          {
            *buf = 138412290;
            v58 = v15;
            _os_log_impl(&dword_26B71B000, v45, ((v46 & 1) == 0), "Failed to create URL from query %@", buf, 0xCu);
          }

          v47 = objc_alloc(MEMORY[0x277D65860]);
          queryGroupId2 = [(SPKQuery *)self queryGroupId];
          v21 = [v47 initWithQueryID:queryGroupId2 sourceKind:2 sections:MEMORY[0x277CBEBF8]];
          responseHandler2 = [(SPKQuery *)self responseHandler];
          (responseHandler2)[2](responseHandler2, v21);
        }

        goto LABEL_23;
      }
    }

    v11 = objc_alloc(MEMORY[0x277D65860]);
    queryGroupId3 = [(SPKQuery *)self queryGroupId];
    v13 = [v11 initWithQueryID:queryGroupId3 sourceKind:2 sections:MEMORY[0x277CBEBF8]];
    responseHandler3 = [(SPKQuery *)self responseHandler];
    (responseHandler3)[2](responseHandler3, v13);

LABEL_23:
  }

  v49 = *MEMORY[0x277D85DE8];
}

@end