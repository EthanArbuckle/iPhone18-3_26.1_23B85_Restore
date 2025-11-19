@interface SPSearchCSResult
- (BOOL)doesQueryMatchContentForLowEngagementBundle:(id)a3 queryContext:(id)a4;
- (SPSearchCSResult)resultWithTime:(double)a3 searchString:(id)a4 isCorrectedQuery:(BOOL)a5 withQueryContext:(id)a6;
- (id)makeApplicationResult:(id)a3 dataclass:(id)a4 score:;
- (void)clearClientData;
- (void)dealloc;
- (void)populateAttributesForResult:(id)a3 withValues:(id)a4;
@end

@implementation SPSearchCSResult

- (void)clearClientData
{
  clientData = self->_clientData;
  if (clientData)
  {
    sprvreleaseCallback(self, clientData);
    self->_clientData = 0;
  }
}

- (void)dealloc
{
  clientData = self->_clientData;
  if (clientData)
  {
    sprvreleaseCallback(self, clientData);
  }

  v4.receiver = self;
  v4.super_class = SPSearchCSResult;
  [(SPSearchCSResult *)&v4 dealloc];
}

- (id)makeApplicationResult:(id)a3 dataclass:(id)a4 score:
{
  v68 = v5;
  v6 = v4;
  v72[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = SPFastApplicationsGetNoBuild();
  v11 = [v9 attributeSet];

  v12 = [v11 attributeDictionary];
  v67 = *MEMORY[0x277CC3208];
  v13 = [v12 objectForKey:?];
  v14 = [v10 objectForKeyedSubscript:v13];
  if (!v14)
  {
    if (([v13 isEqualToString:@"com.apple.TVRemoteUIService"] & 1) == 0)
    {
      if (v10 || (SPCopyVisibleApps(), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v51 containsObject:v13], v51, !v52))
      {
        v15 = 0;
        goto LABEL_39;
      }
    }

    v65 = v6;
    v61 = *MEMORY[0x277CC2500];
    v15 = [v12 objectForKey:?];
    v29 = objc_alloc_init(MEMORY[0x277D4BEA0]);
    [v29 setIdentifier:v13];
    v30 = [v12 objectForKey:*MEMORY[0x277CC2760]];
    v31 = objc_alloc_init(MEMORY[0x277D4C690]);
    v32 = v31;
    if (v30)
    {
      [v31 setText:v30];
    }

    v63 = v32;
    [v29 setTitle:v32];
    v33 = [v12 objectForKey:*MEMORY[0x277CC3148]];
    v62 = v33;
    if (v33)
    {
      v34 = [MEMORY[0x277D4C598] textWithString:v33];
      v69 = v34;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      v35 = v30;
      v36 = v12;
      v37 = v13;
      v38 = v10;
      v39 = v11;
      v41 = v40 = v8;
      [v29 setDescriptions:v41];

      v8 = v40;
      v11 = v39;
      v10 = v38;
      v13 = v37;
      v12 = v36;
      v30 = v35;
      v14 = 0;
    }

    [v29 setSectionBundleIdentifier:v15];
    v66 = v8;
    if ([v15 isEqualToString:*MEMORY[0x277D659F0]])
    {
      [v29 setBundleID:*MEMORY[0x277D4BEF0]];
      [v29 setType:22];
      v42 = objc_alloc(MEMORY[0x277D4C1D0]);
      v43 = [v29 identifier];
      [v42 setBundleIdentifier:v43];

      [v29 setThumbnail:v42];
      v44 = [v12 objectForKey:*MEMORY[0x277CC3038]];
      [v29 setApplicationBundleIdentifier:v44];
    }

    else
    {
      v53 = [v12 objectForKey:*MEMORY[0x277CC2CC0]];

      v54 = v67;
      if (v53)
      {
        [v29 setType:24];
        v54 = v61;
      }

      v55 = [v12 objectForKey:v54];
      [v29 setApplicationBundleIdentifier:v55];

      v56 = [v12 objectForKey:v67];
      [v29 setExternalIdentifier:v56];

      v57 = [v29 applicationBundleIdentifier];
      [v29 setBundleID:v57];

      v42 = [v29 externalIdentifier];
      [v29 setResultBundleId:v42];
    }

    [v29 setScore:{v65, v68}];
    v8 = v66;
    [v29 setProtectionClass:v66];
    [v29 setIsLocalApplicationResult:1];
    v58 = [v29 applicationBundleIdentifier];

    if (!v58)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v29;
        _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No applicationBundleIdentifier for %@", buf, 0xCu);
      }

      v29 = 0;
    }

    goto LABEL_38;
  }

  v15 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  [v14 copyToSearchFoundationResult:v15];
  v16 = [v15 compatibilityTitle];

  if (!v16)
  {
    v17 = [v12 objectForKey:*MEMORY[0x277CC2760]];
    [v15 title];
    v19 = v18 = v8;
    [v19 setText:v17];

    v8 = v18;
  }

  v20 = [v14 subtitle];

  if (!v20)
  {
    v21 = [v12 objectForKey:*MEMORY[0x277CC3148]];
    if (v21)
    {
      [MEMORY[0x277D4C598] textWithString:v21];
      v64 = v13;
      v22 = v10;
      v23 = v11;
      v25 = v24 = v8;
      v72[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
      [v15 setDescriptions:v26];

      v8 = v24;
      v11 = v23;
      v10 = v22;
      v13 = v64;
    }
  }

  if ([v14 isWebClip])
  {
    [v15 setType:24];
  }

  if ([v14 isAppClip])
  {
    [v15 setSectionBundleIdentifier:*MEMORY[0x277D659F0]];
    [v15 setBundleID:*MEMORY[0x277D4BEF0]];
    [v15 setType:22];
    v27 = objc_alloc(MEMORY[0x277D4C1D0]);
    v28 = [v15 identifier];
    [v27 setBundleIdentifier:v28];

    [v15 setThumbnail:v27];
  }

  else
  {
    [v15 setSectionBundleIdentifier:*MEMORY[0x277D65A00]];
    v45 = [v14 isWebClip];
    v46 = *MEMORY[0x277CC2500];
    if (v45)
    {
      v47 = *MEMORY[0x277CC2500];
    }

    else
    {
      v47 = v67;
    }

    v48 = [v12 objectForKey:v47];
    [v15 setApplicationBundleIdentifier:v48];

    v49 = [v12 objectForKey:v67];
    [v15 setExternalIdentifier:v49];

    v27 = [v15 applicationBundleIdentifier];
    [v15 setBundleID:v27];
  }

  [v15 setScore:{v6, v68}];
  [v15 setProtectionClass:v8];
  [v15 setIsLocalApplicationResult:1];
  v50 = [v15 applicationBundleIdentifier];

  if (!v50)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v15;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No applicationBundleIdentifier for %@", buf, 0xCu);
    }

    v29 = 0;
LABEL_38:

    v15 = v29;
  }

LABEL_39:

  v59 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)doesQueryMatchContentForLowEngagementBundle:(id)a3 queryContext:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 attributeSet];
  v7 = [v6 attributeDictionary];
  v8 = [v7 objectForKey:*MEMORY[0x277CC2760]];
  if (!v8)
  {
    v8 = [v7 objectForKey:*MEMORY[0x277CC31F0]];
  }

  v9 = [v5 normalizedSearchString];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v41 = v8;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    if ([v9 length] >= 4)
    {
      v13 = [v8 lowercaseString];
      v14 = SSNormalizedQueryString();

      v37 = v12;
      v15 = [v12 componentsSeparatedByString:@" "];
      v36 = v14;
      v46 = [v14 componentsSeparatedByString:@" "];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v16 = v15;
      v45 = [v16 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v45)
      {
        v17 = 0;
        v18 = 0;
        v42 = 0;
        v43 = v16;
        v44 = *v56;
        v39 = v6;
        v40 = v5;
        v38 = v7;
        while (2)
        {
          v19 = 0;
          do
          {
            v49 = v17;
            if (*v56 != v44)
            {
              objc_enumerationMutation(v16);
            }

            v50 = v18;
            v48 = v19;
            v20 = *(*(&v55 + 1) + 8 * v19);
            v47 = [v20 length];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v21 = v46;
            v22 = [v21 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = 0;
              v25 = *v52;
              v26 = 0x7FFFFFFFLL;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v52 != v25)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v28 = *(*(&v51 + 1) + 8 * i);
                  if ([v28 localizedStandardRangeOfString:v20] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v30 = v29;
                    v31 = [v28 length];
                    v32 = [v28 length];
                    v33 = v32;
                    if (v30 == v31)
                    {

                      v26 = v33;
                      goto LABEL_36;
                    }

                    if (v32 < v26)
                    {
                      v26 = [v28 length];
                    }

                    v24 = 1;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v51 objects:v59 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v24 = 0;
              v26 = 0x7FFFFFFFLL;
            }

            if ((v24 & 1) == 0 || v42 > 0 || [v20 length] <= 3 && 3 * v26 > 4 * objc_msgSend(v20, "length"))
            {
              v16 = v43;

              v11 = 0;
              v6 = v39;
              v5 = v40;
              v7 = v38;
              goto LABEL_43;
            }

            v42 = 1;
LABEL_36:
            v18 = v47 + v50;
            v17 = v26 + v49;
            v19 = v48 + 1;
            v16 = v43;
          }

          while (v48 + 1 != v45);
          v6 = v39;
          v5 = v40;
          v7 = v38;
          v45 = [v43 countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }

        if (v18 > 3)
        {
          v11 = 1;
          goto LABEL_43;
        }
      }

      else
      {

        v18 = 0;
        v17 = 0;
      }

      v11 = 3 * v17 <= 4 * v18;
LABEL_43:

      v9 = v37;
    }

    else
    {
      v11 = 0;
      v9 = v12;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v11;
}

- (SPSearchCSResult)resultWithTime:(double)a3 searchString:(id)a4 isCorrectedQuery:(BOOL)a5 withQueryContext:(id)a6
{
  v7 = a5;
  v97 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = [v11 disabledApps];
  v13 = [v12 count];
  if (v13)
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
  }

  clientData = self->_clientData;
  if (!clientData)
  {
    v37 = 0;
    goto LABEL_82;
  }

  v84 = v7;
  v87 = v13;
  v90 = *&clientData[16].var0;
  v86 = [v90 attributeSet];
  v15 = [v86 attributeDictionary];
  v91 = [v15 objectForKey:*MEMORY[0x277CC2500]];
  v88 = [v15 objectForKey:*MEMORY[0x277CC3038]];
  v83 = *MEMORY[0x277CC2678];
  v92 = [v15 objectForKey:?];
  v85 = [v15 objectForKey:*MEMORY[0x277CC2ED8]];
  v82 = *MEMORY[0x277CC2640];
  v16 = [v15 objectForKey:?];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = [v15 objectForKey:*MEMORY[0x277CC2660]];
  [v19 timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [v15 objectForKey:*MEMORY[0x277CC2440]];
  [v22 timeIntervalSinceReferenceDate];
  v89 = v10;
  if ((v18 >= a3 || a3 - v18 >= 18000.0) && (v21 >= a3 || a3 - v21 >= 18000.0) && (v23 >= a3 || a3 - v23 >= 18000.0))
  {

    if ([v91 isEqualToString:*MEMORY[0x277D4BEF0]] & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", *MEMORY[0x277D4BEE8]) & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", @"com.apple.MobileAddressBook"))
    {
      v27 = 0;
    }

    else
    {
      v80 = [v15 objectForKey:*MEMORY[0x277CC2D20]];
      v81 = v80;
      if (v10 && [v80 hasPrefix:v10])
      {
        if ([v81 isEqualToString:v10])
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v24 = SPLogForSPLogCategoryQuery();
    v25 = v24;
    if (*MEMORY[0x277D4BF48])
    {
      v26 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v26 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v24, v26))
    {
      *buf = 138412290;
      v94 = @"Very recently created/modified";
      _os_log_impl(&dword_26B71B000, v25, v26, "%@", buf, 0xCu);
    }

    v27 = 1;
  }

  if (![v92 isEqualToString:*MEMORY[0x277D4BF38]] || (objc_msgSend(v91, "isEqualToString:", *MEMORY[0x277D4BEF0]) & 1) == 0 && !objc_msgSend(v91, "isEqualToString:", *MEMORY[0x277D4BEE8]) || (-[SPSearchCSResult makeApplicationResult:dataclass:score:](self, "makeApplicationResult:dataclass:score:", v90, *&self->_clientData[8].var0, *&self->_clientData[4].var0, *&self->_clientData[6].var0), (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v33 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v33, OS_LOG_TYPE_DEFAULT, "*warn* Couldn't determine score for nil result", buf, 2u);
    }

    v29 = 0;
    v39 = 1;
LABEL_31:
    v40 = v91;

    if (v27 > [v29 topHit])
    {
      [v29 setTopHit:SSSetTopHitWithReasonString()];
    }

    v10 = v89;
    if ([v92 isEqualToString:@"public.calendar-event"])
    {
      v41 = [v29 title];
      v42 = [v41 text];
      [v29 setCompletedQuery:v42];
    }

    if (v39)
    {
      v29 = SPLogForSPLogCategoryDefault();
      v43 = *MEMORY[0x277D4BF50];
      if (os_log_type_enabled(v29, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        v44 = [v15 objectForKey:*MEMORY[0x277CC3208]];
        *buf = 138412546;
        v94 = v44;
        v95 = 2112;
        v96 = v91;
        _os_log_impl(&dword_26B71B000, v29, ((v43 & 1) == 0), "No result object for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
      }

      v37 = 0;
      v38 = v90;
      goto LABEL_81;
    }

    v45 = [v29 compatibilityTitle];
    if (!v45)
    {
      v45 = [v29 bundleID];
      if (([v45 isEqualToString:*MEMORY[0x277D65C18]] & 1) == 0)
      {
        v46 = [v29 sectionBundleIdentifier];
        if (!SSSectionIsSyndicatedPhotos())
        {
          v75 = [v11 isSearchToolClient];

          if ((v75 & 1) == 0)
          {
            v76 = SPLogForSPLogCategoryDefault();
            v77 = *MEMORY[0x277D4BF50];
            if (os_log_type_enabled(v76, ((*MEMORY[0x277D4BF50] & 1) == 0)))
            {
              v78 = [v29 identifier];
              v79 = [v29 bundleID];
              *buf = 138412546;
              v94 = v78;
              v95 = 2112;
              v96 = v79;
              _os_log_impl(&dword_26B71B000, v76, ((v77 & 1) == 0), "No title for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
            }

            v37 = 0;
            goto LABEL_27;
          }

LABEL_45:
          [v29 setUserInput:v89];
          if (![v29 type])
          {
            v47 = [v15 objectForKey:*MEMORY[0x277CC3230]];
            if (v47)
            {
              v48 = 4;
            }

            else
            {
              v48 = 2;
            }

            [v29 setType:v48];
          }

          v49 = [v15 objectForKey:*MEMORY[0x277CC2D20]];
          [v29 setLaunchString:v49];

          [v29 setRelatedBundleID:v88];
          [v29 setRelatedAppIdentifier:v88];
          v50 = [v15 objectForKey:*MEMORY[0x277CC2FF8]];
          [v29 setLaunchDates:v50];

          v51 = [v15 objectForKey:*MEMORY[0x277CC2FD8]];
          [v29 setItemProviderDataTypes:v51];

          v52 = [v15 objectForKey:*MEMORY[0x277CC2FE0]];
          [v29 setItemProviderFileTypes:v52];

          if ([v91 isEqualToString:*MEMORY[0x277D65D08]] || (objc_msgSend(v91, "hasPrefix:", @"com.apple") & 1) == 0 && objc_msgSend(MEMORY[0x277D65938], "isLowEngagementBundle:", v91))
          {
            [v29 setHasTextContentMatch:[(SPSearchCSResult *)self doesQueryMatchContentForLowEngagementBundle:v90 queryContext:v11]];
          }

          else if (([v91 isEqualToString:*MEMORY[0x277D65C10]] & 1) == 0 && (objc_msgSend(v91, "isEqualToString:", *MEMORY[0x277D65BE0]) & 1) == 0)
          {
            v53 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC3370]];
            [v29 setHasTextContentMatch:BOOLValueForAttr(v53)];
          }

          v54 = [v29 contentType];
          if (!v54 || (v55 = v54, [v29 contentTypeTree], v56 = objc_claimAutoreleasedReturnValue(), v56, v55, !v56))
          {
            v57 = [v15 objectForKey:v83];
            [v29 setContentType:v57];

            v58 = [v15 objectForKey:*MEMORY[0x277CC2680]];
            [v29 setContentTypeTree:v58];
          }

          v59 = [v15 objectForKey:*MEMORY[0x277CC26E0]];
          -[NSObject setDataOwnerType:](v29, "setDataOwnerType:", [v59 integerValue]);
          v60 = [v29 contentCreationDate];

          if (!v60)
          {
            v61 = [v15 objectForKey:v82];
            [v29 setContentCreationDate:v61];
          }

          if (v84)
          {
            v62 = [v11 searchString];
            [v29 setCorrectedQuery:v62];
          }

          v63 = [(SPSearchResult *)self rankingItem];
          -[NSObject setQueryId:](v29, "setQueryId:", [v11 queryIdent]);
          v64 = [v29 sectionBundleIdentifier];
          if ([v64 isEqualToString:*MEMORY[0x277D65A00]])
          {
          }

          else
          {
            v65 = [v29 sectionBundleIdentifier];
            v66 = [v65 isEqualToString:*MEMORY[0x277D659F0]];

            if (!v66)
            {
LABEL_79:
              [v29 setRankingItem:v63];
              [v63 score];
              [v29 setL2score:?];
              v70 = [v11 answerAttributes];
              v71 = [v70 copy];
              [v29 setAnswerAttributes:v71];

              v72 = [v15 objectForKey:*MEMORY[0x277CC2BA0]];
              [v29 setHasAppTopHitShortcut:BOOLValueForAttr(v72)];

              v38 = v90;
              [(SPSearchCSResult *)self populateAttributesForResult:v29 withValues:v90];
              v29 = v29;

              v37 = v29;
              v10 = v89;
              goto LABEL_80;
            }
          }

          if ([v63 didMatchRankingDescriptor:*MEMORY[0x277D65A88]] & 1) != 0 || (objc_msgSend(v63, "didMatchRankingDescriptor:", *MEMORY[0x277D65BB0]))
          {
            v67 = 0;
          }

          else
          {
            v67 = [v63 didMatchRankingDescriptor:*MEMORY[0x277D65A68]];
          }

          [v29 setIsStaticCorrection:v67];
          goto LABEL_79;
        }
      }
    }

    goto LABEL_45;
  }

  v29 = v28;
  v30 = [v28 applicationBundleIdentifier];
  v31 = [v87 containsObject:v30];

  v32 = SPLogForSPLogCategoryDefault();
  v33 = v32;
  if (*MEMORY[0x277D4BF48])
  {
    v34 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v34 = OS_LOG_TYPE_DEBUG;
  }

  v35 = os_log_type_enabled(v32, v34);
  if (!v31)
  {
    if (v35)
    {
      v68 = [v29 score];
      [v29 score];
      *buf = 134218240;
      v94 = v68;
      v95 = 2048;
      v96 = v69;
      _os_log_impl(&dword_26B71B000, v33, v34, "Result score: 0x%08llx 0x%08llx", buf, 0x16u);
    }

    v39 = 0;
    goto LABEL_31;
  }

  if (v35)
  {
    v36 = [v29 applicationBundleIdentifier];
    *buf = 138412290;
    v94 = v36;
    _os_log_impl(&dword_26B71B000, v33, v34, "disabledAppSet contains  %@", buf, 0xCu);
  }

  v37 = 0;
  v10 = v89;
LABEL_27:
  v38 = v90;
LABEL_80:
  v40 = v91;
LABEL_81:

  v13 = v87;
LABEL_82:

  v73 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)populateAttributesForResult:(id)a3 withValues:(id)a4
{
  v289[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v184 = [v6 attributeSet];
  v7 = [v184 attributeDictionary];
  v182 = *MEMORY[0x277CC2C60];
  v8 = [v7 objectForKeyedSubscript:?];
  v161 = BOOLValueForAttr(v8);

  v163 = *MEMORY[0x277CC24F0];
  v9 = [v7 objectForKeyedSubscript:?];
  v160 = BOOLValueForAttr(v9);

  v162 = *MEMORY[0x277CC2B48];
  v10 = [v7 objectForKey:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x277CCABB0];
    [v10 doubleValue];
    v288 = [v12 numberWithDouble:v13 * 1000000.0];
  }

  else
  {
    v288 = 0;
  }

  v150 = *MEMORY[0x277CC23B8];
  v14 = [v7 objectForKey:?];
  v147 = *MEMORY[0x277CC23D0];
  v286 = [v7 objectForKey:?];
  v152 = *MEMORY[0x277CC2408];
  v15 = [v7 objectForKey:?];
  v157 = *MEMORY[0x277CC2460];
  v284 = [v7 objectForKey:?];
  v155 = *MEMORY[0x277CC2478];
  v283 = [v7 objectForKey:?];
  v159 = *MEMORY[0x277CC2490];
  v16 = [v7 objectForKey:?];
  v156 = *MEMORY[0x277CC2498];
  v281 = [v7 objectForKey:?];
  v154 = *MEMORY[0x277CC24A0];
  v280 = [v7 objectForKey:?];
  v158 = *MEMORY[0x277CC24C0];
  v279 = [v7 objectForKey:?];
  v149 = *MEMORY[0x277CC24B0];
  v278 = [v7 objectForKey:?];
  v153 = *MEMORY[0x277CC24B8];
  v277 = [v7 objectForKey:?];
  v151 = *MEMORY[0x277CC24C8];
  v276 = [v7 objectForKey:?];
  v148 = *MEMORY[0x277CC24E0];
  v275 = [v7 objectForKey:?];
  v179 = *MEMORY[0x277CC2EB8];
  v274 = [v7 objectForKey:?];
  v180 = *MEMORY[0x277CC3180];
  v17 = [v7 objectForKeyedSubscript:?];
  v171 = BOOLValueForAttr(v17);

  v178 = *MEMORY[0x277CC2F28];
  v273 = [v7 objectForKey:?];
  v177 = *MEMORY[0x277CC2F38];
  v272 = [v7 objectForKey:?];
  v176 = *MEMORY[0x277CC2F40];
  v271 = [v7 objectForKey:?];
  v185 = *MEMORY[0x277CC2F50];
  v270 = [v7 objectForKey:?];
  v181 = *MEMORY[0x277CC2F80];
  v269 = [v7 objectForKey:?];
  v172 = *MEMORY[0x277CC2F78];
  v268 = [v7 objectForKey:?];
  v170 = *MEMORY[0x277CC2F68];
  v267 = [v7 objectForKey:?];
  v167 = *MEMORY[0x277CC2F70];
  v266 = [v7 objectForKey:?];
  v166 = *MEMORY[0x277CC2F60];
  v265 = [v7 objectForKey:?];
  v168 = *MEMORY[0x277CC2788];
  v264 = [v7 objectForKey:?];
  v169 = *MEMORY[0x277CC2FA8];
  v263 = [v7 objectForKey:?];
  v175 = *MEMORY[0x277CC3028];
  v262 = [v7 objectForKey:?];
  v174 = *MEMORY[0x277CC3018];
  v261 = [v7 objectForKey:?];
  v173 = *MEMORY[0x277CC3040];
  v260 = [v7 objectForKey:?];
  v18 = [v6 attributeSet];

  v19 = [v18 attributeDictionary];
  v20 = [v19 objectForKey:*MEMORY[0x277CC3378]];
  v21 = v20;
  v287 = v14;
  v285 = v15;
  v282 = v16;
  if (!v20)
  {
    v259 = 0;
    goto LABEL_19;
  }

  if ([v20 count])
  {
    v22 = [v21 objectAtIndex:0];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([v22 isEqualToString:@"kMDItemTextContent"] & 1) != 0 || objc_msgSend(v21, "count") <= 1)
        {
          goto LABEL_17;
        }
      }

      else if ([v21 count] < 2)
      {
        goto LABEL_17;
      }

      v23 = [v21 objectAtIndex:1];
      if (v23)
      {
        v24 = v23;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v259 = 0;
            goto LABEL_38;
          }

          v289[0] = v24;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v289 count:1];
        }

        v259 = v25;
LABEL_38:

        goto LABEL_18;
      }
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_17:
  v259 = 0;
LABEL_18:

LABEL_19:
  v145 = *MEMORY[0x277CC3078];
  v258 = [v7 objectForKey:?];
  v144 = *MEMORY[0x277CC30A0];
  v256 = [v7 objectForKey:?];
  v143 = *MEMORY[0x277CC3098];
  v257 = [v7 objectForKey:?];
  v146 = *MEMORY[0x277CC3220];
  v219 = [v7 objectForKey:?];
  v142 = *MEMORY[0x277CC30B0];
  v255 = [v7 objectForKey:?];
  v141 = *MEMORY[0x277CC3088];
  v254 = [v7 objectForKey:?];
  v140 = *MEMORY[0x277CC30A8];
  v253 = [v7 objectForKey:?];
  v139 = *MEMORY[0x277CC3080];
  v252 = [v7 objectForKey:?];
  v138 = *MEMORY[0x277CC30B8];
  v251 = [v7 objectForKey:?];
  v137 = *MEMORY[0x277CC30D0];
  v250 = [v7 objectForKey:?];
  v136 = *MEMORY[0x277CC30C0];
  v249 = [v7 objectForKey:?];
  v135 = *MEMORY[0x277CC3090];
  v248 = [v7 objectForKey:?];
  v134 = *MEMORY[0x277CC30F8];
  v241 = [v7 objectForKey:?];
  v128 = *MEMORY[0x277CC25E0];
  v247 = [v7 objectForKey:?];
  v129 = *MEMORY[0x277CC2640];
  v246 = [v7 objectForKey:?];
  v130 = *MEMORY[0x277CC2778];
  v245 = [v7 objectForKey:?];
  v121 = *MEMORY[0x277CC27A0];
  v244 = [v7 objectForKey:?];
  v119 = *MEMORY[0x277CC2A70];
  v243 = [v7 objectForKey:?];
  v165 = [v7 objectForKey:*MEMORY[0x277CC2D10]];
  v131 = *MEMORY[0x277CC2660];
  v242 = [v7 objectForKey:?];
  v164 = [v7 objectForKey:*MEMORY[0x277CC30F0]];
  v133 = *MEMORY[0x277CC3128];
  v217 = [v7 objectForKey:?];
  v69 = *MEMORY[0x277CC2458];
  v240 = [v7 objectForKey:?];
  v65 = *MEMORY[0x277CC2450];
  v239 = [v7 objectForKey:?];
  v86 = *MEMORY[0x277CC24E8];
  v238 = [v7 objectForKey:?];
  v105 = *MEMORY[0x277CC2780];
  v237 = [v7 objectForKey:?];
  v110 = *MEMORY[0x277CC2D18];
  v236 = [v7 objectForKey:?];
  v107 = *MEMORY[0x277CC2D50];
  v235 = [v7 objectForKey:?];
  v109 = *MEMORY[0x277CC3178];
  v26 = [v7 objectForKeyedSubscript:?];
  v103 = BOOLValueForAttr(v26);

  v132 = *MEMORY[0x277CC3120];
  v234 = [v7 objectForKey:?];
  v27 = *MEMORY[0x277CC23F8];
  v28 = [v7 objectForKey:*MEMORY[0x277CC23F8]];
  v58 = *MEMORY[0x277CC2480];
  v233 = [v7 objectForKey:?];
  v60 = *MEMORY[0x277CC2520];
  v232 = [v7 objectForKey:?];
  v67 = *MEMORY[0x277CC25F0];
  v231 = [v7 objectForKey:?];
  v66 = *MEMORY[0x277CC2630];
  v230 = [v7 objectForKey:?];
  v59 = *MEMORY[0x277CC2688];
  v229 = [v7 objectForKey:?];
  v63 = *MEMORY[0x277CC2750];
  v228 = [v7 objectForKey:?];
  v61 = *MEMORY[0x277CC2760];
  v227 = [v7 objectForKey:?];
  v64 = *MEMORY[0x277CC2BD8];
  v226 = [v7 objectForKey:?];
  v62 = *MEMORY[0x277CC2CF0];
  v225 = [v7 objectForKey:?];
  v71 = *MEMORY[0x277CC2DB8];
  v224 = [v7 objectForKey:?];
  v70 = *MEMORY[0x277CC2DD0];
  v223 = [v7 objectForKey:?];
  v68 = *MEMORY[0x277CC2E88];
  v222 = [v7 objectForKey:?];
  v95 = *MEMORY[0x277CC2FE8];
  v221 = [v7 objectForKey:?];
  v96 = *MEMORY[0x277CC3008];
  v220 = [v7 objectForKey:?];
  v102 = *MEMORY[0x277CC3038];
  v218 = [v7 objectForKey:?];
  v215 = [v7 objectForKey:*MEMORY[0x277CC2670]];
  v124 = *MEMORY[0x277CC30E8];
  v216 = [v7 objectForKey:?];
  v127 = *MEMORY[0x277CC3140];
  v214 = [v7 objectForKey:?];
  v126 = *MEMORY[0x277CC31B8];
  v213 = [v7 objectForKey:?];
  v125 = *MEMORY[0x277CC31C0];
  v212 = [v7 objectForKey:?];
  v123 = *MEMORY[0x277CC31D0];
  v211 = [v7 objectForKey:?];
  v122 = *MEMORY[0x277CC31C8];
  v210 = [v7 objectForKey:?];
  v120 = *MEMORY[0x277CC31D8];
  v209 = [v7 objectForKey:?];
  v116 = *MEMORY[0x277CC31E0];
  v208 = [v7 objectForKey:?];
  v118 = *MEMORY[0x277CC26D8];
  v207 = [v7 objectForKey:?];
  v115 = *MEMORY[0x277CC31F0];
  v206 = [v7 objectForKey:?];
  v117 = *MEMORY[0x277CC3208];
  v205 = [v7 objectForKey:?];
  v114 = *MEMORY[0x277CC31F8];
  v204 = [v7 objectForKey:?];
  v113 = *MEMORY[0x277CC3230];
  v203 = [v7 objectForKey:?];
  v112 = *MEMORY[0x277CC3238];
  v202 = [v7 objectForKey:?];
  v111 = *MEMORY[0x277CC2678];
  v29 = [v7 objectForKey:?];
  v30 = *MEMORY[0x277CC2E08];
  v31 = [v7 objectForKey:*MEMORY[0x277CC2E08]];
  v108 = *MEMORY[0x277CC2B98];
  v201 = [v7 objectForKey:?];
  v106 = *MEMORY[0x277CC2CF8];
  v200 = [v7 objectForKey:?];
  v104 = *MEMORY[0x277CC2B78];
  v32 = [v7 objectForKey:?];
  if (!v32)
  {
    v32 = [v7 objectForKey:*MEMORY[0x277CC3308]];
  }

  v199 = v32;
  v100 = *MEMORY[0x277CC3190];
  v198 = [v7 objectForKey:?];
  v99 = *MEMORY[0x277CC3188];
  v197 = [v7 objectForKey:?];
  v97 = *MEMORY[0x277CC2518];
  v196 = [v7 objectForKey:?];
  v94 = *MEMORY[0x277CC2EF0];
  v195 = [v7 objectForKey:?];
  v93 = *MEMORY[0x277CC2F08];
  v194 = [v7 objectForKey:?];
  v90 = *MEMORY[0x277CC2F00];
  v193 = [v7 objectForKey:?];
  v89 = *MEMORY[0x277CC2770];
  v192 = [v7 objectForKey:?];
  v101 = *MEMORY[0x277CC2668];
  v33 = [v7 objectForKeyedSubscript:?];
  v98 = BOOLValueForAttr(v33);

  v85 = *MEMORY[0x277CC25D8];
  v191 = [v7 objectForKey:?];
  v83 = *MEMORY[0x277CC2BA8];
  v190 = [v7 objectForKey:?];
  v80 = *MEMORY[0x277CC3058];
  v189 = [v7 objectForKey:?];
  v77 = *MEMORY[0x277CC3060];
  v188 = [v7 objectForKey:?];
  v92 = *MEMORY[0x277CC2DF0];
  v34 = [v7 objectForKeyedSubscript:?];
  v88 = BOOLValueForAttr(v34);

  v91 = *MEMORY[0x277CC2DE8];
  v35 = [v7 objectForKeyedSubscript:?];
  v87 = BOOLValueForAttr(v35);

  v73 = *MEMORY[0x277CC2DE0];
  v187 = [v7 objectForKey:?];
  v72 = *MEMORY[0x277CC2DD8];
  v186 = [v7 objectForKey:?];
  v84 = *MEMORY[0x277CC2EA8];
  v81 = [v7 objectForKey:?];
  v82 = *MEMORY[0x277CC2EA0];
  v78 = [v7 objectForKey:?];
  v79 = *MEMORY[0x277CC2EB0];
  v75 = [v7 objectForKey:?];
  v76 = *MEMORY[0x277CC30D8];
  v74 = [v7 objectForKey:?];
  v36 = [v5 contentType];
  v37 = v5;
  v38 = v36;
  if (v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = v29;
  }

  v40 = v39;

  v41 = objc_opt_new();
  [v41 beginDictionary];
  v42 = [MEMORY[0x277CCABB0] numberWithBool:v161];
  [v41 encodeObject:v42 withKey:v182];

  v43 = [MEMORY[0x277CCABB0] numberWithBool:v160];
  [v41 encodeObject:v43 withKey:v163];

  v44 = v37;
  [v41 encodeObject:v288 withKey:v162];
  [v41 encodeObject:v31 withKey:v30];
  [v41 encodeObject:v287 withKey:v150];
  [v41 encodeObject:v286 withKey:v147];
  v183 = v28;
  [v41 encodeObject:v28 withKey:v27];
  [v41 encodeObject:v285 withKey:v152];
  [v41 encodeObject:v239 withKey:v65];
  [v41 encodeObject:v240 withKey:v69];
  [v41 encodeObject:v284 withKey:v157];
  [v41 encodeObject:v283 withKey:v155];
  [v41 encodeObject:v233 withKey:v58];
  [v41 encodeObject:v282 withKey:v159];
  [v41 encodeObject:v281 withKey:v156];
  [v41 encodeObject:v280 withKey:v154];
  [v41 encodeObject:v278 withKey:v149];
  [v41 encodeObject:v279 withKey:v158];
  [v41 encodeObject:v277 withKey:v153];
  [v41 encodeObject:v276 withKey:v151];
  [v41 encodeObject:v275 withKey:v148];
  [v41 encodeObject:v238 withKey:v86];
  [v41 encodeObject:v232 withKey:v60];
  [v41 encodeObject:v247 withKey:v128];
  [v41 encodeObject:v229 withKey:v59];
  [v41 encodeObject:v244 withKey:v121];
  [v41 encodeObject:v243 withKey:v119];
  [v41 encodeObject:v231 withKey:v67];
  [v41 encodeObject:v230 withKey:v66];
  [v41 encodeObject:v246 withKey:v129];
  [v41 encodeObject:v228 withKey:v63];
  [v41 encodeObject:v227 withKey:v61];
  [v41 encodeObject:v245 withKey:v130];
  [v41 encodeObject:v237 withKey:v105];
  [v41 encodeObject:v226 withKey:v64];
  [v41 encodeObject:v225 withKey:v62];
  [v41 encodeObject:v236 withKey:v110];
  [v41 encodeObject:v235 withKey:v107];
  v45 = [MEMORY[0x277CCABB0] numberWithBool:v103];
  [v41 encodeObject:v45 withKey:v109];

  [v41 encodeObject:v242 withKey:v131];
  [v41 encodeObject:v224 withKey:v71];
  [v41 encodeObject:v223 withKey:v70];
  [v41 encodeObject:v222 withKey:v68];
  [v41 encodeObject:v274 withKey:v179];
  v46 = [MEMORY[0x277CCABB0] numberWithBool:v171];
  [v41 encodeObject:v46 withKey:v180];

  [v41 encodeObject:v273 withKey:v178];
  [v41 encodeObject:v272 withKey:v177];
  [v41 encodeObject:v271 withKey:v176];
  [v41 encodeObject:v265 withKey:v166];
  [v41 encodeObject:v266 withKey:v167];
  [v41 encodeObject:v268 withKey:v172];
  [v41 encodeObject:v267 withKey:v170];
  [v41 encodeObject:v270 withKey:v185];
  [v41 encodeObject:v269 withKey:v181];
  [v41 encodeObject:v264 withKey:v168];
  [v41 encodeObject:v221 withKey:v95];
  [v41 encodeObject:v263 withKey:v169];
  [v41 encodeObject:v220 withKey:v96];
  [v41 encodeObject:v234 withKey:v132];
  [v41 encodeObject:v262 withKey:v175];
  [v41 encodeObject:v261 withKey:v174];
  [v41 encodeObject:v260 withKey:v173];
  [v41 encodeObject:v218 withKey:v102];
  [v41 encodeObject:v257 withKey:v143];
  [v41 encodeObject:v258 withKey:v145];
  [v41 encodeObject:v256 withKey:v144];
  [v41 encodeObject:v255 withKey:v142];
  [v41 encodeObject:v254 withKey:v141];
  [v41 encodeObject:v253 withKey:v140];
  [v41 encodeObject:v252 withKey:v139];
  [v41 encodeObject:v251 withKey:v138];
  [v41 encodeObject:v250 withKey:v137];
  [v41 encodeObject:v249 withKey:v136];
  [v41 encodeObject:v248 withKey:v135];
  [v41 encodeObject:v241 withKey:v134];
  [v41 encodeObject:v216 withKey:v124];
  [v41 encodeObject:v215 withKey:*MEMORY[0x277CC3118]];
  [v41 encodeObject:v217 withKey:v133];
  [v41 encodeObject:v214 withKey:v127];
  [v41 encodeObject:v213 withKey:v126];
  [v41 encodeObject:v212 withKey:v125];
  [v41 encodeObject:v211 withKey:v123];
  [v41 encodeObject:v210 withKey:v122];
  [v41 encodeObject:v209 withKey:v120];
  [v41 encodeObject:v208 withKey:v116];
  [v41 encodeObject:v219 withKey:v146];
  [v41 encodeObject:v207 withKey:v118];
  [v41 encodeObject:v206 withKey:v115];
  [v41 encodeObject:v259 withKey:@"SSAttributeTopMatchedStrings"];
  [v41 encodeObject:v205 withKey:v117];
  [v41 encodeObject:v204 withKey:v114];
  [v41 encodeObject:v203 withKey:v113];
  [v41 encodeObject:v202 withKey:v112];
  [v41 encodeObject:v40 withKey:v111];

  [v41 encodeObject:v201 withKey:v108];
  [v41 encodeObject:v200 withKey:v106];
  [v41 encodeObject:v199 withKey:v104];
  [v41 encodeObject:v198 withKey:v100];
  [v41 encodeObject:v197 withKey:v99];
  [v41 encodeObject:v196 withKey:v97];
  [v41 encodeObject:v195 withKey:v94];
  [v41 encodeObject:v194 withKey:v93];
  [v41 encodeObject:v193 withKey:v90];
  [v41 encodeObject:v192 withKey:v89];
  [v41 encodeObject:v191 withKey:v85];
  [v41 encodeObject:v190 withKey:v83];
  [v41 encodeObject:v189 withKey:v80];
  [v41 encodeObject:v188 withKey:v77];
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v98];
  [v41 encodeObject:v47 withKey:v101];

  [v41 encodeObject:v187 withKey:v73];
  [v41 encodeObject:v186 withKey:v72];
  v48 = [MEMORY[0x277CCABB0] numberWithBool:v88];
  [v41 encodeObject:v48 withKey:v92];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:v87];
  [v41 encodeObject:v49 withKey:v91];

  [v41 encodeObject:? withKey:?];
  [v41 encodeObject:? withKey:?];
  [v41 encodeObject:? withKey:?];
  [v41 encodeObject:? withKey:?];
  [v41 endDictionary];
  v50 = [v41 data];
  v51 = [v50 copy];
  [v44 setAttributeData:v51];

  v52 = [v44 lastUsedDate];
  v53 = v52;
  if (v164)
  {
    v54 = v164;
  }

  else
  {
    v54 = v165;
  }

  if (v52)
  {
    v55 = v52;
  }

  else
  {
    v55 = v54;
  }

  [v44 setLastUsedDate:v55];

  if (v164 && v165)
  {
    v56 = [v164 laterDate:v165];
    [v44 setLastUsedDate:v56];
  }

  v57 = *MEMORY[0x277D85DE8];
}

@end