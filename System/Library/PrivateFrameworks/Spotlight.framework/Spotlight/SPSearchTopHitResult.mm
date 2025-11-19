@interface SPSearchTopHitResult
+ (BOOL)attrHasPhotosAlbumMemoryResult:(id)a3 isSearchToolClient:(BOOL)a4;
+ (id)titleStringFromAttrs:(id)a3;
- (BOOL)_contentType:(id)a3 orContentTypeTree:(id)a4 representsType:(id)a5;
- (BOOL)audioIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4;
- (BOOL)audioOrVideoIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4;
- (BOOL)contactIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4;
- (BOOL)documentIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4;
- (BOOL)doesQueryMatchContentForLowEngagementBundle:(id)a3 queryContext:(id)a4;
- (BOOL)messageIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4;
- (BOOL)playlistOrAlbumIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4;
- (SPSearchTopHitResult)initWithRankingItem:(id)a3 attributeSet:(id)a4 score:interestingDate:dataclass:bundleID:;
- (SPSearchTopHitResult)resultWithTime:(double)a3 searchString:(id)a4 isCorrectedQuery:(BOOL)a5 withQueryContext:(id)a6;
- (id)descriptionFromEntityType:(id)a3 displayName:(id)a4;
- (id)makeApplicationResult:(id)a3 dataclass:(id)a4 score:;
- (id)makeMailResult:(SPSearchTopHitResult *)self dataclass:(SEL)a2 score:(id)a3 searchString:(id)a4;
- (id)makeMessagesResult:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:;
- (id)makePersonResult:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:;
- (id)makePhotosAlbumMemoryResultForAppEntity:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:;
- (id)makePhotosResult:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:;
- (id)matchContentForPerson:(id)a3 queryContext:(id)a4 spotlightQueryTerms:(id)a5;
- (id)secondaryTitleStringFromAttrsForMemories:(id)a3;
- (id)titleStringFromAttrsForAlbumMemory:(id)a3;
- (void)makeContactResult:(id)a3 identifier:(id)a4 queryContext:(id)a5 result:(id)a6;
- (void)populateAttributesForResult:(id)a3 withAttrs:(id)a4;
- (void)populateCoreSpotlightResult:(id)a3 attrs:(id)a4 bundleID:(id)a5 queryContext:(id)a6;
- (void)setupGenericItem:(id)a3 attrs:(id)a4 utiType:(id)a5 bundleID:(id)a6;
- (void)updateDataOwnerTypeForResult:(id)a3 accountID:(id)a4;
- (void)updateToDoItemResult:(id)a3 withAttrs:(id)a4;
@end

@implementation SPSearchTopHitResult

+ (BOOL)attrHasPhotosAlbumMemoryResult:(id)a3 isSearchToolClient:(BOOL)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277CC2430]];
  if ([v4 isEqualToString:@"MemoryEntity"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"AlbumEntity"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"SharedAlbumEntity"];
  }

  return v5;
}

+ (id)titleStringFromAttrs:(id)a3
{
  v3 = a3;
  if (titleStringFromAttrs__onceToken != -1)
  {
    +[SPSearchTopHitResult titleStringFromAttrs:];
  }

  v4 = 0;
  if (![0 length])
  {
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
  }

  if (![v4 length])
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC31F0]];

    v4 = v5;
  }

  if (![v4 length])
  {
    v6 = authorStringFromAttrs(v3);

    v4 = v6;
  }

  if (![v4 length])
  {
    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3140]];

    v4 = v7;
  }

  v8 = [v4 stringByTrimmingCharactersInSet:titleStringFromAttrs__sTrimSet];

  return v8;
}

uint64_t __45__SPSearchTopHitResult_titleStringFromAttrs___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = titleStringFromAttrs__sTrimSet;
  titleStringFromAttrs__sTrimSet = v0;

  v2 = titleStringFromAttrs__sTrimSet;

  return [v2 addCharactersInRange:{65532, 0xFFFFLL}];
}

- (SPSearchTopHitResult)initWithRankingItem:(id)a3 attributeSet:(id)a4 score:interestingDate:dataclass:bundleID:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v15 = a4;
  v16 = v9;
  v17 = v8;
  v18 = v23;
  v22.receiver = self;
  v22.super_class = SPSearchTopHitResult;
  v19 = [(SPTopHitResult *)&v22 initWithRankingItem:a3];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_attributeSet, a4);
    [(SPTopHitResult *)v20 setScore:v11, v10];
    [(SPTopHitResult *)v20 setInterestingDate:v16];
    [(SPTopHitResult *)v20 setDataclass:v17];
    [(SPTopHitResult *)v20 setBundleID:v18];
  }

  return v20;
}

- (SPSearchTopHitResult)resultWithTime:(double)a3 searchString:(id)a4 isCorrectedQuery:(BOOL)a5 withQueryContext:(id)a6
{
  v7 = a5;
  v124 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = [v11 disabledApps];
  if ([v12 count])
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
  }

  else
  {
    v13 = 0;
  }

  attributeSet = self->_attributeSet;
  if (!attributeSet)
  {
    v26 = 0;
    goto LABEL_96;
  }

  v113 = v7;
  v117 = v13;
  v15 = [(CSSearchableItemAttributeSet *)attributeSet attributeDictionary];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  v118 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC3038]];
  v112 = *MEMORY[0x277CC2678];
  v119 = [v15 objectForKeyedSubscript:?];
  v116 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2ED8]];
  v111 = *MEMORY[0x277CC2640];
  v17 = [v15 objectForKeyedSubscript:?];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;
  v20 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2660]];
  [v20 timeIntervalSinceReferenceDate];
  if ((v19 >= a3 || a3 - v19 >= 300.0) && (v21 >= a3 || a3 - v21 >= 300.0))
  {

    if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D4BEF0]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D4BEE8]]& 1) != 0 || ([(__CFString *)v16 isEqualToString:@"com.apple.MobileAddressBook"]& 1) != 0)
    {
      v25 = 0;
    }

    else
    {
      v100 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2D20]];
      v101 = v100;
      if (v10 && [v100 hasPrefix:v10])
      {
        if ([v101 isEqualToString:v10])
        {
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v22 = SPLogForSPLogCategoryQuery();
    v23 = v22;
    if (*MEMORY[0x277D4BF48])
    {
      v24 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v24 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v22, v24))
    {
      *buf = 138412290;
      v121 = @"Very recently created/modified";
      _os_log_impl(&dword_26B71B000, v23, v24, "%@", buf, 0xCu);
    }

    v25 = 1;
  }

  if ([v119 isEqualToString:*MEMORY[0x277D4BF38]] && ((-[__CFString isEqualToString:](v16, "isEqualToString:", *MEMORY[0x277D4BEF0]) & 1) != 0 || -[__CFString isEqualToString:](v16, "isEqualToString:", *MEMORY[0x277D4BEE8])))
  {
    v27 = [(SPTopHitResult *)self dataclass];
    v28 = [(SPTopHitResult *)self score];
    v30 = [(SPSearchTopHitResult *)self makeApplicationResult:v15 dataclass:v27 score:v28, v29];

    if (v30)
    {
      v31 = [v30 applicationBundleIdentifier];
      v32 = [v117 containsObject:v31];

      if (v32)
      {
        v33 = SPLogForSPLogCategoryDefault();
        v34 = v33;
        if (*MEMORY[0x277D4BF48])
        {
          v35 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v35 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v33, v35))
        {
          v36 = [v30 applicationBundleIdentifier];
          *buf = 138412290;
          v121 = v36;
          _os_log_impl(&dword_26B71B000, v34, v35, "disabledAppSet contains  %@", buf, 0xCu);
        }

        v26 = 0;
        goto LABEL_94;
      }

      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65BF8]])
  {
    v37 = [(SPTopHitResult *)self dataclass];
    v38 = [(SPTopHitResult *)self score];
    v40 = [(SPSearchTopHitResult *)self makeMailResult:v15 dataclass:v37 score:v38 searchString:v39, v10];
LABEL_35:
    v30 = v40;

LABEL_36:
    [v30 setResultBundleId:v16];
    goto LABEL_37;
  }

  if ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65C00]])
  {
    v37 = [(SPTopHitResult *)self dataclass];
    v41 = [(SPTopHitResult *)self score];
    v40 = [(SPSearchTopHitResult *)self makeMessagesResult:v15 dataclass:v37 queryContext:v11 score:v41, v42];
    goto LABEL_35;
  }

  if ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65C18]])
  {
    v76 = +[SPSearchTopHitResult attrHasPhotosAlbumMemoryResult:isSearchToolClient:](SPSearchTopHitResult, "attrHasPhotosAlbumMemoryResult:isSearchToolClient:", v15, [v11 isSearchToolClient]);
    v77 = [(SPTopHitResult *)self dataclass];
    v79 = [(SPTopHitResult *)self score];
    if (v76)
    {
      [(SPSearchTopHitResult *)self makePhotosAlbumMemoryResultForAppEntity:v15 dataclass:v77 queryContext:v11 score:v79, v78];
    }

    else
    {
      [(SPSearchTopHitResult *)self makePhotosResult:v15 dataclass:v77 queryContext:v11 score:v79, v78];
    }
    v30 = ;

    goto LABEL_36;
  }

  if ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65C10]])
  {
    v37 = [(SPTopHitResult *)self dataclass];
    v80 = [(SPTopHitResult *)self score];
    v40 = [(SPSearchTopHitResult *)self makePersonResult:v15 dataclass:v37 queryContext:v11 score:v80, v81];
    goto LABEL_35;
  }

  v90 = objc_opt_new();
  v91 = [(SPTopHitResult *)self score];
  [v90 setScore:{v91, v92}];
  v93 = [(SPTopHitResult *)self dataclass];
  [v90 setProtectionClass:v93];

  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v90 attrs:v15 bundleID:v16 queryContext:v11];
  v30 = v90;
  v94 = [v30 fileProviderIdentifier];
  objc_opt_class();
  LOBYTE(v93) = objc_opt_isKindOfClass();

  if ((v93 & 1) == 0)
  {
    goto LABEL_124;
  }

  v95 = [v30 fileProviderIdentifier];
  if (![v95 length])
  {

LABEL_124:
    goto LABEL_125;
  }

  v96 = [v30 userActivityRequiredString];

  if (v96)
  {
LABEL_125:
    v102 = [v30 userActivityRequiredString];
    v103 = [v102 length];

    if (v103)
    {
      v104 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC25D0]];
      v105 = [v104 isEqualToString:@"com.apple.DocumentManager"];

      if (v105)
      {
        v26 = 0;
        goto LABEL_95;
      }
    }

    goto LABEL_128;
  }

  if ([v116 unsignedIntValue])
  {
    [v30 setSectionBundleIdentifier:*MEMORY[0x277D65CA0]];
  }

  v97 = SPLogForSPLogCategoryDefault();
  v98 = v97;
  if (*MEMORY[0x277D4BF48])
  {
    v99 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v99 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v97, v99))
  {
    *buf = 138412546;
    v121 = @"com.apple.DocumentsApp";
    v122 = 2112;
    v123 = @"com.apple.DocumentsApp";
    _os_log_impl(&dword_26B71B000, v98, v99, "remap %@ to %@", buf, 0x16u);
  }

  v16 = @"com.apple.DocumentsApp";
LABEL_128:
  [v30 setBundleID:v16];
  v106 = [v30 sectionBundleIdentifier];
  v107 = v106;
  if (v106)
  {
    v108 = v106;
  }

  else
  {
    v108 = v16;
  }

  [v30 setSectionBundleIdentifier:v108];

  [v30 setApplicationBundleIdentifier:v16];
  if ([(__CFString *)v16 isEqualToString:@"com.apple.shortcuts"]&& v118)
  {
    [v30 setApplicationBundleIdentifier:v118];
  }

  if ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65B60]])
  {
    v109 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2750]];
    [v30 setStringForDedupe:v109];
    v110 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2770]];
    [v30 setDomainIdentifier:v110];
  }

LABEL_37:
  if (v30)
  {
LABEL_38:
    v115 = v12;
    v43 = SPLogForSPLogCategoryDefault();
    v44 = v43;
    if (*MEMORY[0x277D4BF48])
    {
      v45 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v45 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v43, v45))
    {
      v46 = v10;
      v47 = [v30 score];
      [v30 score];
      *buf = 134218240;
      v121 = v47;
      v10 = v46;
      v122 = 2048;
      v123 = v48;
      _os_log_impl(&dword_26B71B000, v44, v45, "Result score: 0x%08llx 0x%08llx", buf, 0x16u);
    }

    v49 = 0;
    goto LABEL_47;
  }

LABEL_44:
  v115 = v12;
  v44 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v44, OS_LOG_TYPE_DEFAULT, "*warn* Couldn't determine score for nil result", buf, 2u);
  }

  v30 = 0;
  v49 = 1;
LABEL_47:

  if (v25 > [v30 topHit])
  {
    [v30 setTopHit:SSSetTopHitWithReasonString()];
  }

  if ([v119 isEqualToString:@"public.calendar-event"])
  {
    v50 = [v30 title];
    v51 = [v50 text];
    [v30 setCompletedQuery:v51];
  }

  if (v49)
  {
    v34 = SPLogForSPLogCategoryDefault();
    v52 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v34, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      v53 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC3208]];
      *buf = 138412546;
      v121 = v53;
      v122 = 2112;
      v123 = v16;
      _os_log_impl(&dword_26B71B000, v34, ((v52 & 1) == 0), "No result object for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
    }

    v30 = 0;
    v26 = 0;
    goto LABEL_93;
  }

  v114 = v10;
  v54 = [v30 compatibilityTitle];
  if (v54)
  {
    goto LABEL_59;
  }

  v54 = [v30 bundleID];
  if ([v54 isEqualToString:*MEMORY[0x277D65C18]])
  {
    goto LABEL_59;
  }

  v55 = [v30 sectionBundleIdentifier];
  if (SSSectionIsSyndicatedPhotos())
  {

LABEL_59:
    goto LABEL_60;
  }

  v86 = [v11 isSearchToolClient];

  if ((v86 & 1) == 0)
  {
    v34 = SPLogForSPLogCategoryDefault();
    v87 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v34, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      v88 = [v30 identifier];
      v89 = [v30 bundleID];
      *buf = 138412546;
      v121 = v88;
      v122 = 2112;
      v123 = v89;
      _os_log_impl(&dword_26B71B000, v34, ((v87 & 1) == 0), "No title for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
    }

    v26 = 0;
    v10 = v114;
    goto LABEL_93;
  }

LABEL_60:
  v10 = v114;
  [v30 setUserInput:v114];
  if (![v30 type])
  {
    v56 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC3230]];
    if (v56)
    {
      v57 = 4;
    }

    else
    {
      v57 = 2;
    }

    [v30 setType:v57];
  }

  v58 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2D20]];
  [v30 setLaunchString:v58];

  [v30 setRelatedBundleID:v118];
  [v30 setRelatedAppIdentifier:v118];
  v59 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2FF8]];
  [v30 setLaunchDates:v59];

  v60 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2FD8]];
  [v30 setItemProviderDataTypes:v60];

  v61 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2FE0]];
  [v30 setItemProviderFileTypes:v61];

  if (-[__CFString isEqualToString:](v16, "isEqualToString:", *MEMORY[0x277D65D08]) || (-[__CFString hasPrefix:](v16, "hasPrefix:", @"com.apple") & 1) == 0 && [MEMORY[0x277D65938] isLowEngagementBundle:v16])
  {
    [v30 setHasTextContentMatch:{-[SPSearchTopHitResult doesQueryMatchContentForLowEngagementBundle:queryContext:](self, "doesQueryMatchContentForLowEngagementBundle:queryContext:", v15, v11)}];
  }

  else if (([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65C10]]& 1) == 0 && ([(__CFString *)v16 isEqualToString:*MEMORY[0x277D65BE0]]& 1) == 0)
  {
    v62 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC3370]];
    [v30 setHasTextContentMatch:BOOLValueForAttr(v62)];
  }

  v63 = [v30 contentType];
  if (!v63 || (v64 = v63, [v30 contentTypeTree], v65 = objc_claimAutoreleasedReturnValue(), v65, v64, !v65))
  {
    v66 = [v15 objectForKeyedSubscript:v112];
    [v30 setContentType:v66];

    v67 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC2680]];
    [v30 setContentTypeTree:v67];
  }

  v34 = [v15 objectForKeyedSubscript:*MEMORY[0x277CC26E0]];
  [v30 setDataOwnerType:{-[NSObject integerValue](v34, "integerValue")}];
  v68 = [v30 contentCreationDate];

  if (!v68)
  {
    v69 = [v15 objectForKeyedSubscript:v111];
    [v30 setContentCreationDate:v69];
  }

  if (v113)
  {
    v70 = [v11 searchString];
    [v30 setCorrectedQuery:v70];
  }

  v71 = [(SPTopHitResult *)self rankingItem];
  [v30 setQueryId:{objc_msgSend(v11, "queryIdent")}];
  v72 = [v30 sectionBundleIdentifier];
  if ([v72 isEqualToString:*MEMORY[0x277D65A00]])
  {

    goto LABEL_82;
  }

  v73 = [v30 sectionBundleIdentifier];
  v74 = [v73 isEqualToString:*MEMORY[0x277D659F0]];

  v10 = v114;
  if (v74)
  {
LABEL_82:
    if ([v71 didMatchRankingDescriptor:*MEMORY[0x277D65A88]] & 1) != 0 || (objc_msgSend(v71, "didMatchRankingDescriptor:", *MEMORY[0x277D65BB0]))
    {
      v75 = 0;
    }

    else
    {
      v75 = [v71 didMatchRankingDescriptor:*MEMORY[0x277D65A68]];
    }

    [v30 setIsStaticCorrection:v75];
  }

  [v30 setRankingItem:v71];
  [v71 score];
  [v30 setL2score:?];
  v82 = [v11 answerAttributes];
  v83 = [v82 copy];
  [v30 setAnswerAttributes:v83];

  [(SPSearchTopHitResult *)self populateAttributesForResult:v30 withAttrs:v15];
  v30 = v30;

  v26 = v30;
LABEL_93:
  v12 = v115;
LABEL_94:

LABEL_95:
  v13 = v117;
LABEL_96:

  v84 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)makeApplicationResult:(id)a3 dataclass:(id)a4 score:
{
  v6 = v5;
  v7 = v4;
  v78[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = SPFastApplicationsGetNoBuild();
  v12 = *MEMORY[0x277CC3208];
  v74 = v9;
  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC3208]];
  v14 = [v11 objectForKeyedSubscript:v13];
  if (!v14)
  {
    if ((-[NSObject isEqualToString:](v13, "isEqualToString:", @"com.apple.TVRemoteUIService") & 1) != 0 || !v11 && (SPCopyVisibleApps(), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 containsObject:v13], v47, v48))
    {
      v70 = v7;
      v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
      v34 = objc_alloc_init(MEMORY[0x277D4BEA0]);
      v35 = *MEMORY[0x277D4BEE8];
      [v34 setIsAppClip:[v15 isEqualToString:*MEMORY[0x277D4BEE8]]];
      v69 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC2CC0]];
      -[NSObject setIsWebClip:](v34, "setIsWebClip:", [v69 BOOLValue]);
      v36 = [v34 isAppClip];
      v37 = *MEMORY[0x277D4BEF0];
      if (v36)
      {
        v38 = v35;
      }

      else
      {
        v38 = *MEMORY[0x277D4BEF0];
      }

      [v34 setSectionBundleIdentifier:v38];
      if (([v34 isAppClip]& 1) != 0)
      {
        v39 = objc_alloc(MEMORY[0x277CCACA8]);
        v40 = [v39 initWithFormat:@"%@%@", *MEMORY[0x277CFA650], v13];
        [v34 setIdentifier:v40];
      }

      else
      {
        [v34 setIdentifier:v13];
      }

      v49 = [v74 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
      v50 = objc_alloc_init(MEMORY[0x277D4C690]);
      v51 = v50;
      v73 = v50;
      if (v49)
      {
        [v50 setText:v49];
        v51 = v73;
      }

      [v34 setTitle:v51];
      v52 = [v74 objectForKeyedSubscript:*MEMORY[0x277CC3148]];
      v68 = v52;
      v72 = v49;
      if (v52)
      {
        v53 = [MEMORY[0x277D4C598] textWithString:v52];
        v75 = v53;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
        v54 = v13;
        v55 = v11;
        v56 = v10;
        v58 = v57 = v6;
        [v34 setDescriptions:v58];

        v6 = v57;
        v10 = v56;
        v11 = v55;
        v13 = v54;

        v49 = v72;
      }

      [v34 setSectionBundleIdentifier:v15];
      if ([v34 isAppClip])
      {
        [v34 setBundleID:v37];
        [v34 setType:22];
        v59 = objc_alloc(MEMORY[0x277D4C1D0]);
        v60 = [v34 identifier];
        [v59 setBundleIdentifier:v60];

        [v34 setThumbnail:v59];
        v61 = [v74 objectForKeyedSubscript:*MEMORY[0x277CC3038]];
        [v34 setApplicationBundleIdentifier:v61];

        v49 = v72;
      }

      else
      {
        v62 = [v34 isWebClip];
        v63 = v13;
        if (v62)
        {
          [v34 setType:24];
          v63 = v15;
        }

        [v34 setApplicationBundleIdentifier:v63];
        [v34 setExternalIdentifier:v13];
        v64 = [v34 applicationBundleIdentifier];
        [v34 setBundleID:v64];

        [v34 setResultBundleId:v13];
      }

      [v34 setScore:v70, v6];
      [v34 setProtectionClass:v10];
      [v34 setIsLocalApplicationResult:1];
      v65 = [v34 applicationBundleIdentifier];

      if (!v65)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = v34;
          _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No applicationBundleIdentifier for %@", buf, 0xCu);
        }

        v34 = 0;
      }

      goto LABEL_45;
    }

    v15 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SPSearchTopHitResult makeApplicationResult:v13 dataclass:v15 score:?];
    }

LABEL_29:
    v34 = 0;
LABEL_45:

    v15 = v34;
    goto LABEL_46;
  }

  v15 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  [v14 copyToSearchFoundationResult:v15];
  v16 = [v15 compatibilityTitle];

  if (!v16)
  {
    v17 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
    [v15 title];
    v18 = v7;
    v19 = v13;
    v20 = v11;
    v21 = v10;
    v23 = v22 = v6;
    [v23 setText:v17];

    v6 = v22;
    v10 = v21;
    v11 = v20;
    v13 = v19;
    v7 = v18;
  }

  v24 = [v14 subtitle];

  if (!v24)
  {
    v25 = [v74 objectForKeyedSubscript:*MEMORY[0x277CC3148]];
    if (v25)
    {
      [MEMORY[0x277D4C598] textWithString:v25];
      v71 = v11;
      v26 = v10;
      v28 = v27 = v6;
      v78[0] = v28;
      [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
      v30 = v29 = v7;
      [v15 setDescriptions:v30];

      v7 = v29;
      v6 = v27;
      v10 = v26;
      v11 = v71;
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
    v31 = objc_alloc(MEMORY[0x277D4C1D0]);
    [v15 identifier];
    v33 = v32 = v7;
    [v31 setBundleIdentifier:v33];

    v7 = v32;
    [v15 setThumbnail:v31];
  }

  else
  {
    [v15 setSectionBundleIdentifier:*MEMORY[0x277D65A00]];
    v41 = [v14 isWebClip];
    v42 = *MEMORY[0x277CC2500];
    if (v41)
    {
      v43 = *MEMORY[0x277CC2500];
    }

    else
    {
      v43 = v12;
    }

    v44 = [v74 objectForKeyedSubscript:v43];
    [v15 setApplicationBundleIdentifier:v44];

    v45 = [v74 objectForKeyedSubscript:v12];
    [v15 setExternalIdentifier:v45];

    v31 = [v15 applicationBundleIdentifier];
    [v15 setBundleID:v31];
  }

  [v15 setScore:v7, v6];
  [v15 setProtectionClass:v10];
  [v15 setIsLocalApplicationResult:1];
  v46 = [v15 applicationBundleIdentifier];

  if (!v46)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = v15;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No applicationBundleIdentifier for %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_46:

  v66 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)makeMailResult:(SPSearchTopHitResult *)self dataclass:(SEL)a2 score:(id)a3 searchString:(id)a4
{
  v6 = v5;
  v7 = v4;
  v9 = *MEMORY[0x277CC3208];
  v10 = a4;
  v11 = a3;
  v12 = [v11 objectForKeyedSubscript:v9];
  v13 = authorStringFromAttrs(v11);
  v14 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  v15 = [MEMORY[0x277D4C690] textWithString:v13];
  [v14 setTitle:v15];

  [v14 setCompatibilityTitle:v13];
  [v14 setIdentifier:v12];
  v16 = *MEMORY[0x277CC2500];
  v17 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  [v14 setSectionBundleIdentifier:v17];

  v18 = [v14 sectionBundleIdentifier];
  [v14 setApplicationBundleIdentifier:v18];

  v19 = [v14 applicationBundleIdentifier];
  [v14 setSectionBundleIdentifier:v19];

  v20 = [v14 sectionBundleIdentifier];
  [v14 setBundleID:v20];

  [v14 setScore:{v7, v6}];
  v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2BD8]];
  [v14 setItemIdentifier:v21];

  [v14 setUserActivityType:*MEMORY[0x277CC2388]];
  [v14 setExternalIdentifier:v12];
  v22 = [v11 objectForKeyedSubscript:v16];
  [v14 setBundleID:v22];

  [v14 setProtectionClass:v10];
  v23 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2640]];
  [v14 setInterestingDate:v23];

  v24 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC32C0]];

  [v14 setMailConversationIdentifier:v24];

  return v14;
}

- (id)secondaryTitleStringFromAttrsForMemories:(id)a3
{
  v3 = secondaryTitleStringFromAttrsForMemories__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [SPSearchTopHitResult secondaryTitleStringFromAttrsForMemories:];
  }

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC2420]];

  v6 = [v5 stringByTrimmingCharactersInSet:secondaryTitleStringFromAttrsForMemories__sTrimSet];

  return v6;
}

uint64_t __65__SPSearchTopHitResult_secondaryTitleStringFromAttrsForMemories___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = secondaryTitleStringFromAttrsForMemories__sTrimSet;
  secondaryTitleStringFromAttrsForMemories__sTrimSet = v0;

  v2 = secondaryTitleStringFromAttrsForMemories__sTrimSet;

  return [v2 addCharactersInRange:{65532, 0xFFFFLL}];
}

- (id)titleStringFromAttrsForAlbumMemory:(id)a3
{
  v3 = a3;
  if (titleStringFromAttrsForAlbumMemory__onceToken != -1)
  {
    [SPSearchTopHitResult titleStringFromAttrsForAlbumMemory:];
  }

  v4 = [objc_opt_class() titleStringFromAttrs:v3];
  if (![v4 length])
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC2F90]];

    v4 = v5;
  }

  if (![v4 length])
  {
    v6 = [v3 objectForKeyedSubscript:@"kMDItemAppEntityTitle"];

    v4 = v6;
  }

  v7 = [v4 stringByTrimmingCharactersInSet:titleStringFromAttrsForAlbumMemory__sTrimSet];

  return v7;
}

uint64_t __59__SPSearchTopHitResult_titleStringFromAttrsForAlbumMemory___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = titleStringFromAttrsForAlbumMemory__sTrimSet;
  titleStringFromAttrsForAlbumMemory__sTrimSet = v0;

  v2 = titleStringFromAttrsForAlbumMemory__sTrimSet;

  return [v2 addCharactersInRange:{65532, 0xFFFFLL}];
}

- (BOOL)_contentType:(id)a3 orContentTypeTree:(id)a4 representsType:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([a3 isEqualToString:v8])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 containsObject:v8];
  }

  return v9;
}

- (BOOL)audioOrVideoIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4
{
  v6 = *MEMORY[0x277CE1D08];
  v7 = a4;
  v8 = a3;
  v9 = [v6 identifier];
  LOBYTE(self) = [(SPSearchTopHitResult *)self _contentType:v8 orContentTypeTree:v7 representsType:v9];

  return self;
}

- (BOOL)audioIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4
{
  v6 = *MEMORY[0x277CE1D00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 identifier];
  LOBYTE(self) = [(SPSearchTopHitResult *)self _contentType:v8 orContentTypeTree:v7 representsType:v9];

  return self;
}

- (BOOL)playlistOrAlbumIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4
{
  v6 = *MEMORY[0x277CE1E28];
  v7 = a4;
  v8 = a3;
  v9 = [v6 identifier];
  LOBYTE(self) = [(SPSearchTopHitResult *)self _contentType:v8 orContentTypeTree:v7 representsType:v9];

  return self;
}

- (BOOL)messageIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4
{
  v6 = *MEMORY[0x277CE1DF8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 identifier];
  LOBYTE(self) = [(SPSearchTopHitResult *)self _contentType:v8 orContentTypeTree:v7 representsType:v9];

  return self;
}

- (BOOL)contactIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4
{
  v6 = *MEMORY[0x277CE1D38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 identifier];
  LOBYTE(self) = [(SPSearchTopHitResult *)self _contentType:v8 orContentTypeTree:v7 representsType:v9];

  return self;
}

- (BOOL)documentIsRepresentedByContentType:(id)a3 orContentTypeTree:(id)a4
{
  v6 = *MEMORY[0x277CE1D40];
  v7 = a4;
  v8 = a3;
  v9 = [v6 identifier];
  LOBYTE(self) = [(SPSearchTopHitResult *)self _contentType:v8 orContentTypeTree:v7 representsType:v9];

  return self;
}

- (void)setupGenericItem:(id)a3 attrs:(id)a4 utiType:(id)a5 bundleID:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2680]];
  v43 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC23C0]];
  v45 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2B38]];
  v44 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2B28]];
  v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3048]];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC32A0]];
  }

  v18 = v17;

  v19 = *MEMORY[0x277CC23A8];
  v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC23A8]];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [v11 objectForKeyedSubscript:v19];
  }

  v23 = v22;

  if (v18)
  {
    [v10 setRelatedUniqueIdentifier:v18];
  }

  else
  {
    v24 = [v10 relatedUniqueIdentifier];
    [v10 setRelatedUniqueIdentifier:v24];
  }

  if (v23)
  {
    [v10 setAccountIdentifier:v23];
  }

  else
  {
    v25 = [v10 accountIdentifier];
    [v10 setAccountIdentifier:v25];
  }

  [v10 setFileProviderIdentifier:v45];
  [v10 setFileProviderDomainIdentifier:v44];
  v26 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC25D0]];
  [v10 setRelatedBundleID:v26];

  v27 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC30A0]];
  [v10 setDisplayOrder:v27];

  if ((-[SPSearchTopHitResult audioOrVideoIsRepresentedByContentType:orContentTypeTree:](self, "audioOrVideoIsRepresentedByContentType:orContentTypeTree:", v12, v14) || -[SPSearchTopHitResult audioIsRepresentedByContentType:orContentTypeTree:](self, "audioIsRepresentedByContentType:orContentTypeTree:", v12, v14) || -[SPSearchTopHitResult playlistOrAlbumIsRepresentedByContentType:orContentTypeTree:](self, "playlistOrAlbumIsRepresentedByContentType:orContentTypeTree:", v12, v14) || -[SPSearchTopHitResult bookIsRepresentedByContentType:orContentTypeTree:](self, "bookIsRepresentedByContentType:orContentTypeTree:", v12, v14)) && ([v13 isEqualToString:@"com.apple.podcasts"] & 1) == 0)
  {
    [v10 setStoreIdentifier:v43];
  }

  else
  {
    v28 = [v10 compatibilityTitle];
    if (v28)
    {
    }

    else if ([(SPSearchTopHitResult *)self messageIsRepresentedByContentType:v12 orContentTypeTree:v14]|| [(SPSearchTopHitResult *)self contactIsRepresentedByContentType:v12 orContentTypeTree:v14])
    {
      v29 = authorStringFromAttrs(v11);
      [v10 setCompatibilityTitle:v29];
    }
  }

  v30 = SPLogForSPLogCategoryDefault();
  v31 = v30;
  if (*MEMORY[0x277D4BF48])
  {
    v32 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v32 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v30, v32))
  {
    v41 = v14;
    v33 = v13;
    v34 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
    v35 = v34;
    v42 = v12;
    if (v34)
    {
      v36 = 0;
      v37 = v34;
    }

    else
    {
      v38 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC31F0]];
      if (v38)
      {
        v36 = 0;
        v40 = v38;
        v37 = v38;
      }

      else
      {
        v37 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3140]];
        v40 = 0;
        v36 = 1;
      }
    }

    *buf = 138412802;
    v47 = v33;
    v48 = 2112;
    v49 = v45;
    v50 = 2112;
    v51 = v37;
    _os_log_impl(&dword_26B71B000, v31, v32, "Bundle id: %@ FPId: %@ Title:%@", buf, 0x20u);
    if (v36)
    {
    }

    if (!v35)
    {
    }

    v13 = v33;
    v14 = v41;
    v12 = v42;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)makeMessagesResult:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:
{
  v32 = v5;
  v33 = v6;
  v10 = a3;
  v38 = a5;
  v11 = *MEMORY[0x277CC3208];
  v35 = a4;
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2ED8]];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2DB8]];
  v16 = *MEMORY[0x277CC2678];
  v39 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2678]];
  v17 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2680]];
  v18 = [v10 objectForKeyedSubscript:v16];
  v19 = [objc_opt_class() titleStringFromAttrs:v10];
  v20 = v14;
  v36 = v15;
  v37 = v13;
  v34 = v18;
  if ([v15 isEqualToString:@"lnk"])
  {

    v21 = *MEMORY[0x277D65C98];
    v22 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC31F8]];
    v23 = getURLString(v22);

    v24 = [MEMORY[0x277CBEBC0] URLWithString:v23];
    v17 = &unk_287C3B8F0;
  }

  else
  {
    if (!isMessagesAttachmentCoreSpotlightId())
    {
      v24 = 0;
      v21 = v20;
      goto LABEL_13;
    }

    if ([v13 unsignedIntValue])
    {
      v25 = MEMORY[0x277D65CA0];
    }

    else if ([v38 isSearchToolClient] && isSupportedMessageAttachmentFiles())
    {
      v25 = MEMORY[0x277D65C90];
    }

    else
    {
      v25 = MEMORY[0x277D65CD0];
    }

    v21 = *v25;
    v24 = 0;
    v23 = v20;
  }

LABEL_13:
  v26 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  [(SPSearchTopHitResult *)self setupGenericItem:v26 attrs:v10 utiType:v39 bundleID:v20];
  v27 = [v26 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v26 attrs:v10 bundleID:v27 queryContext:v38];

  v28 = [MEMORY[0x277D4C690] textWithString:v19];
  [v26 setTitle:v28];

  [v26 setCompatibilityTitle:v19];
  [v26 setBundleID:v20];
  [v26 setApplicationBundleIdentifier:v20];
  [v26 setSectionBundleIdentifier:v21];
  [v26 setExternalIdentifier:v12];
  [v26 setIdentifier:v12];
  [v26 setScore:{v32, v33}];
  [v26 setUserActivityType:*MEMORY[0x277CC2388]];
  v29 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2640]];
  [v26 setInterestingDate:v29];

  [v26 setProtectionClass:v35];
  v30 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2770]];
  [v26 setDomainIdentifier:v30];

  [v26 setContentType:v39];
  [v26 setContentTypeTree:v17];
  if (v24)
  {
    [v26 setUrl:v24];
  }

  return v26;
}

- (void)updateToDoItemResult:(id)a3 withAttrs:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC2528]];
  [v18 setCalendarIdentifier:v6];

  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC2770]];
  [v18 setDomainIdentifier:v7];

  v8 = v5;
  v9 = *MEMORY[0x277CC3128];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC3128]];

  v11 = *MEMORY[0x277CC25E0];
  if (v10)
  {
    goto LABEL_6;
  }

  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC25E0]];

  v9 = v11;
  if (v12)
  {
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277CC2778];
  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC2778]];

  if (v13)
  {
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277CC2660];
  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC2660]];

  if (v14 || (v9 = *MEMORY[0x277CC2640], [v8 objectForKeyedSubscript:*MEMORY[0x277CC2640]], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
LABEL_6:
    v16 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v16 = 0;
  }

  [v18 setInterestingDate:v16];
  v17 = [v8 objectForKeyedSubscript:v11];

  if (v17)
  {
    [v18 setCompleted:1];
  }
}

- (void)updateDataOwnerTypeForResult:(id)a3 accountID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && ![v5 dataOwnerType])
  {
    if (updateDataOwnerTypeForResult_accountID__onceToken != -1)
    {
      [SPSearchTopHitResult updateDataOwnerTypeForResult:accountID:];
    }

    v7 = [updateDataOwnerTypeForResult_accountID__sAccountsDictionary objectForKey:v6];
    if (v7)
    {
      goto LABEL_20;
    }

    v8 = [MEMORY[0x277CB8F48] defaultStore];
    v15 = 0;
    v9 = [v8 accountWithIdentifier:v6 error:&v15];
    v10 = v15;

    if (v9)
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = [v9 MCIsManaged];
      v13 = v11;
    }

    else
    {
      if (!v10 || [v10 code] == 10002)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = MEMORY[0x277CCABB0];
      v12 = 1;
    }

    v7 = [v13 numberWithBool:v12];
    [updateDataOwnerTypeForResult_accountID__sAccountsDictionary setObject:v7 forKey:v6];

    if (v7)
    {
LABEL_20:
      if ([v7 BOOLValue])
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      [v5 setDataOwnerType:v14];
      v10 = v7;
      goto LABEL_13;
    }
  }

LABEL_14:
}

uint64_t __63__SPSearchTopHitResult_updateDataOwnerTypeForResult_accountID___block_invoke()
{
  updateDataOwnerTypeForResult_accountID__sAccountsDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (id)matchContentForPerson:(id)a3 queryContext:(id)a4 spotlightQueryTerms:(id)a5
{
  v152 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v84 = a4;
  v98 = a5;
  v92 = v7;
  v85 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
  v91 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC25F8]];
  v86 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC2408]];
  v90 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC2788]];
  v89 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC2400]];
  v88 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC2EB8]];
  v87 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC2410]];
  v8 = [MEMORY[0x277CBEB18] array];
  if ([v91 count])
  {
    [v8 addObjectsFromArray:v91];
  }

  if ([v86 count])
  {
    [v8 addObjectsFromArray:v86];
  }

  if ([v90 count])
  {
    [v8 addObjectsFromArray:v90];
  }

  if ([v89 count])
  {
    [v8 addObjectsFromArray:v89];
  }

  if ([v88 count])
  {
    [v8 addObjectsFromArray:v88];
  }

  if ([v87 count])
  {
    [v8 addObjectsFromArray:v87];
  }

  v97 = [v84 normalizedSearchString];
  v94 = [v97 componentsSeparatedByString:@" "];
  v93 = [v94 count];
  if (v85)
  {
    v9 = [v85 lowercaseString];
    v10 = SSNormalizedQueryString();

    if (v97)
    {
      v11 = [v10 localizedStandardRangeOfString:?];
      v141 = 0;
      v142 = &v141;
      v143 = 0x2020000000;
      v144 = v11 == 0;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v141 = 0;
      v142 = &v141;
      v143 = 0x2020000000;
      v144 = 0;
    }

    v137 = 0;
    v138 = &v137;
    v139 = 0x2020000000;
    v140 = 0;
    v13 = [v10 length];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __79__SPSearchTopHitResult_matchContentForPerson_queryContext_spotlightQueryTerms___block_invoke;
    v132[3] = &unk_279CFEB10;
    v133 = v94;
    v134 = &v137;
    v136 = v93;
    v135 = &v141;
    [v10 enumerateSubstringsInRange:0 options:v13 usingBlock:{3, v132}];

    _Block_object_dispose(&v137, 8);
    if ((v142[3] & 1) == 0)
    {
      if (v98)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v16 = [v85 stringByTrimmingCharactersInSet:v15];
        v17 = [v14 stringWithFormat:@"name=%@", v16];
        [v98 addObject:v17];
      }

      v12 = 0;
      v96 = 0;
      goto LABEL_24;
    }

LABEL_20:
    v96 = v85;
    v12 = 1;
LABEL_24:
    _Block_object_dispose(&v141, 8);

    goto LABEL_25;
  }

  v12 = 0;
  v96 = 0;
LABEL_25:
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v8;
  v18 = [obj countByEnumeratingWithState:&v128 objects:v151 count:16];
  if (!v18)
  {
    goto LABEL_42;
  }

  v19 = *v129;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v129 != v19)
      {
        objc_enumerationMutation(obj);
      }

      if (v12)
      {
        v12 = 1;
        continue;
      }

      v21 = *(*(&v128 + 1) + 8 * i);
      v22 = [v21 lowercaseString];
      v23 = SSNormalizedQueryString();

      if (v97)
      {
        v24 = [v23 localizedStandardRangeOfString:v97];
        v141 = 0;
        v142 = &v141;
        v143 = 0x2020000000;
        v144 = v24 == 0;
        if (!v24)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v141 = 0;
        v142 = &v141;
        v143 = 0x2020000000;
        v144 = 0;
      }

      v137 = 0;
      v138 = &v137;
      v139 = 0x2020000000;
      v140 = 0;
      v25 = [v23 length];
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __79__SPSearchTopHitResult_matchContentForPerson_queryContext_spotlightQueryTerms___block_invoke_2;
      v123[3] = &unk_279CFEB10;
      v124 = v94;
      v125 = &v137;
      v127 = v93;
      v126 = &v141;
      [v23 enumerateSubstringsInRange:0 options:v25 usingBlock:{3, v123}];

      _Block_object_dispose(&v137, 8);
      if ((v142[3] & 1) == 0)
      {
        v12 = 0;
        goto LABEL_39;
      }

LABEL_37:
      v26 = v21;

      v12 = 1;
      v96 = v26;
LABEL_39:
      _Block_object_dispose(&v141, 8);
    }

    v18 = [obj countByEnumeratingWithState:&v128 objects:v151 count:16];
  }

  while (v18);
LABEL_42:

  if (v98)
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v27 = v91;
    v28 = [v27 countByEnumeratingWithState:&v119 objects:v150 count:16];
    if (v28)
    {
      v29 = *v120;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v120 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v119 + 1) + 8 * j);
          v32 = MEMORY[0x277CCACA8];
          v33 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v34 = [v31 stringByTrimmingCharactersInSet:v33];
          v35 = [v32 stringWithFormat:@"name=%@", v34];
          [v98 addObject:v35];
        }

        v28 = [v27 countByEnumeratingWithState:&v119 objects:v150 count:16];
      }

      while (v28);
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v36 = v90;
    v37 = [v36 countByEnumeratingWithState:&v115 objects:v149 count:16];
    if (v37)
    {
      v38 = *v116;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v116 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v115 + 1) + 8 * k);
          v41 = MEMORY[0x277CCACA8];
          v42 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v43 = [v40 stringByTrimmingCharactersInSet:v42];
          v44 = [v41 stringWithFormat:@"email=%@", v43];
          [v98 addObject:v44];
        }

        v37 = [v36 countByEnumeratingWithState:&v115 objects:v149 count:16];
      }

      while (v37);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v45 = v89;
    v46 = [v45 countByEnumeratingWithState:&v111 objects:v148 count:16];
    if (v46)
    {
      v47 = *v112;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v112 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v111 + 1) + 8 * m);
          v50 = MEMORY[0x277CCACA8];
          v51 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v52 = [v49 stringByTrimmingCharactersInSet:v51];
          v53 = [v50 stringWithFormat:@"sharedEmail=%@", v52];
          [v98 addObject:v53];
        }

        v46 = [v45 countByEnumeratingWithState:&v111 objects:v148 count:16];
      }

      while (v46);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v54 = v88;
    v55 = [v54 countByEnumeratingWithState:&v107 objects:v147 count:16];
    if (v55)
    {
      v56 = *v108;
      do
      {
        for (n = 0; n != v55; ++n)
        {
          if (*v108 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v58 = *(*(&v107 + 1) + 8 * n);
          v59 = MEMORY[0x277CCACA8];
          v60 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v61 = [v58 stringByTrimmingCharactersInSet:v60];
          v62 = [v59 stringWithFormat:@"phone=%@", v61];
          [v98 addObject:v62];
        }

        v55 = [v54 countByEnumeratingWithState:&v107 objects:v147 count:16];
      }

      while (v55);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v63 = v87;
    v64 = [v63 countByEnumeratingWithState:&v103 objects:v146 count:16];
    if (v64)
    {
      v65 = *v104;
      do
      {
        for (ii = 0; ii != v64; ++ii)
        {
          if (*v104 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v67 = *(*(&v103 + 1) + 8 * ii);
          v68 = MEMORY[0x277CCACA8];
          v69 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v70 = [v67 stringByTrimmingCharactersInSet:v69];
          v71 = [v68 stringWithFormat:@"sharedPhone=%@", v70];
          [v98 addObject:v71];
        }

        v64 = [v63 countByEnumeratingWithState:&v103 objects:v146 count:16];
      }

      while (v64);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v72 = v86;
    v73 = [v72 countByEnumeratingWithState:&v99 objects:v145 count:16];
    if (v73)
    {
      v74 = *v100;
      do
      {
        for (jj = 0; jj != v73; ++jj)
        {
          if (*v100 != v74)
          {
            objc_enumerationMutation(v72);
          }

          v76 = *(*(&v99 + 1) + 8 * jj);
          v77 = MEMORY[0x277CCACA8];
          v78 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v79 = [v76 stringByTrimmingCharactersInSet:v78];
          v80 = [v77 stringWithFormat:@"rawName=%@", v79];
          [v98 addObject:v80];
        }

        v73 = [v72 countByEnumeratingWithState:&v99 objects:v145 count:16];
      }

      while (v73);
    }
  }

  v81 = v96;

  v82 = *MEMORY[0x277D85DE8];
  return v96;
}

void __79__SPSearchTopHitResult_matchContentForPerson_queryContext_spotlightQueryTerms___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((([v9 hasPrefix:{v15, v17}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v15)) && *(a1 + 56) == ++*(*(*(a1 + 40) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a7 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

void __79__SPSearchTopHitResult_matchContentForPerson_queryContext_spotlightQueryTerms___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((([v9 hasPrefix:{v15, v17}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v15)) && *(a1 + 56) == ++*(*(*(a1 + 40) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a7 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)makeContactResult:(id)a3 identifier:(id)a4 queryContext:(id)a5 result:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(SPSearchTopHitResult *)self matchContentForPerson:v25 queryContext:a5 spotlightQueryTerms:0];
  [v11 setContactIdentifier:v10];
  if (v12)
  {
    [v11 setCompletion:v12];
    [v11 setIdentifier:v10];
    [v11 setType:36];
    if (makeContactResult_identifier_queryContext_result__onceToken != -1)
    {
      [SPSearchTopHitResult makeContactResult:identifier:queryContext:result:];
    }

    v13 = 1;
  }

  else
  {
    v14 = [v25 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
    [v11 setCompletion:v14];

    [v11 setIdentifier:v10];
    [v11 setType:36];
    if (makeContactResult_identifier_queryContext_result__onceToken != -1)
    {
      [SPSearchTopHitResult makeContactResult:identifier:queryContext:result:];
    }

    v15 = [(SPTopHitResult *)self score];
    v13 = (makeContactResult_identifier_queryContext_result__mask & v15 | *algn_281229F28 & v16) != 0;
  }

  [v11 setHasTextContentMatch:v13];
  v17 = [v25 objectForKeyedSubscript:*MEMORY[0x277CC2C18]];
  if ([v17 count])
  {
    v18 = 0;
    while (1)
    {
      v19 = [v17 objectAtIndexedSubscript:v18];
      v20 = [v19 longLongValue];

      if (v20 >= 1)
      {
        break;
      }

      if (++v18 >= [v17 count])
      {
        goto LABEL_14;
      }
    }

    [v11 setHasCommunicationContent:1];
  }

LABEL_14:
  if (([v11 hasCommunicationContent] & 1) == 0)
  {
    v21 = [v25 objectForKeyedSubscript:*MEMORY[0x277CC2E20]];
    if ([v21 count])
    {
      v22 = 0;
      while (1)
      {
        v23 = [v21 objectAtIndexedSubscript:v22];
        v24 = [v23 longLongValue];

        if (v24 >= 1)
        {
          break;
        }

        if (++v22 >= [v21 count])
        {
          goto LABEL_21;
        }
      }

      [v11 setHasCommunicationContent:1];
    }

LABEL_21:
  }
}

void __73__SPSearchTopHitResult_makeContactResult_identifier_queryContext_result___block_invoke()
{
  v4 = PRSRankingQueryIndexDictionary();
  v0 = [v4 objectForKeyedSubscript:*MEMORY[0x277D65A78]];
  v1 = [v0 integerValue];
  v2 = 1 << v1;
  if ((v1 & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v1;
  }

  if ((v1 & 0x40) == 0)
  {
    v2 = 0;
  }

  makeContactResult_identifier_queryContext_result__mask |= v3;
  *algn_281229F28 |= v2;
}

- (id)descriptionFromEntityType:(id)a3 displayName:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 isEqualToString:@"AlbumEntity"])
  {
    v8 = @"rectangle.stack.fill";
  }

  else if ([v5 isEqualToString:@"MemoryEntity"])
  {
    v8 = @"memories";
  }

  else
  {
    v8 = @"photo";
  }

  v9 = objc_opt_new();
  [v9 setSymbolName:v8];
  [v9 setIsTemplate:1];
  v10 = objc_opt_new();
  [v10 setGlyph:v9];
  v11 = MEMORY[0x277D4C3A0];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v6];

  v13 = [v11 textWithString:v12];

  v19[0] = v10;
  v19[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v7 setFormattedTextPieces:v14];

  [v7 setMaxLines:1];
  v18 = v7;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)makePhotosAlbumMemoryResultForAppEntity:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:
{
  v35 = v5;
  v36 = v6;
  v40[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CC3208];
  v11 = a5;
  v37 = a4;
  v12 = a3;
  v33 = [v12 objectForKeyedSubscript:v10];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  v14 = *MEMORY[0x277CC2430];
  v34 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC2430]];
  v40[0] = &stru_287C35638;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v15 = [(SPSearchTopHitResult *)self titleStringFromAttrsForAlbumMemory:v12];
  v32 = *MEMORY[0x277D65CA0];
  v16 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  [(SPSearchTopHitResult *)self setupGenericItem:v16 attrs:v12 utiType:&stru_287C35638 bundleID:v13];
  v17 = [v16 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v16 attrs:v12 bundleID:v17 queryContext:v11];

  [v16 setEntityType:v34];
  v18 = [MEMORY[0x277D4C690] textWithString:v15];
  [v16 setTitle:v18];

  v19 = [(SPSearchTopHitResult *)self secondaryTitleStringFromAttrsForMemories:v12];
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277D4C3A0] textWithString:v19];
  v39 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v20 setFormattedTextPieces:v22];

  [v20 setMaxLines:1];
  v23 = objc_opt_new();
  [v23 addObject:v20];
  v24 = [v12 objectForKeyedSubscript:v14];
  v25 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC2438]];
  v26 = [(SPSearchTopHitResult *)self descriptionFromEntityType:v24 displayName:v25];
  [v23 addObjectsFromArray:v26];

  [v16 setDescriptions:v23];
  [v16 setCompatibilityTitle:v15];
  [v16 setBundleID:v13];
  [v16 setApplicationBundleIdentifier:v13];
  [v16 setSectionBundleIdentifier:v32];
  [v16 setExternalIdentifier:v33];
  [v16 setIdentifier:v33];
  [v16 setScore:{v35, v36}];
  [v16 setUserActivityType:*MEMORY[0x277CC2388]];
  v27 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC2640]];
  [v16 setInterestingDate:v27];

  [v16 setProtectionClass:v37];
  v28 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC2770]];
  [v16 setDomainIdentifier:v28];

  v29 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC2638]];

  [v16 setContainerIdentifier:v29];
  [v16 setContentType:&stru_287C35638];
  [v16 setContentTypeTree:v38];

  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)makePhotosResult:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:
{
  v30 = v5;
  v31 = v6;
  v34[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = *MEMORY[0x277CC3208];
  v12 = a5;
  v32 = a4;
  v29 = [v10 objectForKeyedSubscript:v11];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2678]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2680]];
  v16 = [objc_opt_class() titleStringFromAttrs:v10];
  v33 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2ED8]];
  v17 = [v33 unsignedIntValue];
  v18 = MEMORY[0x277D65CD0];
  if (v17)
  {
    v18 = MEMORY[0x277D65CA0];
  }

  v19 = *v18;
  v20 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  [(SPSearchTopHitResult *)self setupGenericItem:v20 attrs:v10 utiType:v14 bundleID:v13];
  v21 = [v20 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v20 attrs:v10 bundleID:v21 queryContext:v12];

  v22 = [MEMORY[0x277D4C690] textWithString:v16];
  [v20 setTitle:v22];

  [v20 setCompatibilityTitle:v16];
  [v20 setBundleID:v13];
  [v20 setApplicationBundleIdentifier:v13];
  [v20 setSectionBundleIdentifier:v19];
  [v20 setExternalIdentifier:v29];
  [v20 setIdentifier:v29];
  [v20 setScore:{v30, v31}];
  [v20 setUserActivityType:*MEMORY[0x277CC2388]];
  v23 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2640]];
  [v20 setInterestingDate:v23];

  [v20 setProtectionClass:v32];
  v24 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2770]];
  [v20 setDomainIdentifier:v24];

  v25 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC2638]];
  [v20 setContainerIdentifier:v25];

  [v20 setContentType:v14];
  if (v15 && [v15 count])
  {
    [v20 setContentTypeTree:v15];
  }

  else
  {
    v34[0] = v14;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v20 setContentTypeTree:v26];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)makePersonResult:(id)a3 dataclass:(id)a4 queryContext:(id)a5 score:
{
  v7 = v6;
  v37 = v5;
  v47 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v41 = a4;
  v44 = a5;
  if (makePersonResult_dataclass_queryContext_score__onceToken != -1)
  {
    [SPSearchTopHitResult makePersonResult:dataclass:queryContext:score:];
  }

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3208]];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC25F0]];
  v43 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  v36 = *MEMORY[0x277CC2770];
  v42 = [v11 objectForKeyedSubscript:?];
  v40 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2E90]];
  [v11 objectForKeyedSubscript:*MEMORY[0x277CC2678]];
  v46 = v45 = @"public.contact";
  v39 = v46;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:2];
  v14 = objc_opt_new();
  v15 = [(SPSearchTopHitResult *)self matchContentForPerson:v11 queryContext:v44 spotlightQueryTerms:v14];
  if (v13)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"contactIdentifier=%@", v13];
    [v14 addObject:v16];
  }

  if (v12)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"personIdentifier=%@", v12];
    [v14 addObject:v17];
  }

  if (v15)
  {
    v18 = 1;
  }

  else
  {
    v19 = [(SPTopHitResult *)self score];
    v18 = (makePersonResult_dataclass_queryContext_score__mask & v19 | *algn_281229F48 & v20) != 0;
  }

  v21 = objc_alloc_init(MEMORY[0x277D4BEA0]);
  [(SPSearchTopHitResult *)self setupGenericItem:v21 attrs:v11 utiType:@"com.apple.spotlight.contact" bundleID:v43];
  v22 = [v21 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v21 attrs:v11 bundleID:v22 queryContext:v44];

  [v21 setPersonIdentifier:v12];
  v23 = [v14 componentsJoinedByString:@"\t"];
  [v21 setPersonQueryIdentifier:v23];

  [v21 setContactIdentifier:v13];
  [v21 setCompletion:v15];
  v24 = MEMORY[0x277D4C690];
  v25 = [v21 completion];
  v26 = [v24 textWithString:v25];
  [v21 setTitle:v26];

  v27 = [v21 completion];
  [v21 setCompatibilityTitle:v27];

  [v21 setBundleID:v42];
  v28 = MEMORY[0x277D65C50];
  if (!v18)
  {
    v28 = MEMORY[0x277D65C10];
  }

  [v21 setSectionBundleIdentifier:*v28];
  [v21 setExternalIdentifier:v12];
  [v21 setIdentifier:v12];
  [v21 setScore:{v37, v7}];
  [v21 setType:37];
  if (v40)
  {
    [v40 doubleValue];
  }

  else
  {
    v29 = 0.0;
  }

  [v21 setRankingScore:v29];
  [v21 setUserActivityType:*MEMORY[0x277CC2388]];
  v30 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2640]];
  [v21 setInterestingDate:v30];

  [v21 setProtectionClass:v41];
  v31 = [v11 objectForKeyedSubscript:v36];
  [v21 setDomainIdentifier:v31];

  v32 = [v21 domainIdentifier];
  [v21 setApplicationBundleIdentifier:v32];

  [v21 setContentType:v39];
  [v21 setContentTypeTree:v38];
  [v21 setHasTextContentMatch:v18];
  v33 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2E98]];
  [v21 setPersonType:v33];

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

void __70__SPSearchTopHitResult_makePersonResult_dataclass_queryContext_score___block_invoke()
{
  v16 = PRSRankingQueryIndexDictionary();
  v0 = [v16 objectForKeyedSubscript:*MEMORY[0x277D65A78]];
  v1 = [v0 integerValue];
  v2 = 1 << v1;
  if ((v1 & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v1;
  }

  if ((v1 & 0x40) == 0)
  {
    v2 = 0;
  }

  makePersonResult_dataclass_queryContext_score__mask |= v3;
  *algn_281229F48 |= v2;

  v4 = [v16 objectForKeyedSubscript:*MEMORY[0x277D659E8]];
  v5 = [v4 integerValue];
  v6 = 1 << v5;
  if ((v5 & 0x40) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1 << v5;
  }

  if ((v5 & 0x40) == 0)
  {
    v6 = 0;
  }

  makePersonResult_dataclass_queryContext_score__mask |= v7;
  *algn_281229F48 |= v6;

  v8 = [v16 objectForKeyedSubscript:*MEMORY[0x277D659E0]];
  v9 = [v8 integerValue];
  v10 = 1 << v9;
  if ((v9 & 0x40) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1 << v9;
  }

  if ((v9 & 0x40) == 0)
  {
    v10 = 0;
  }

  makePersonResult_dataclass_queryContext_score__mask |= v11;
  *algn_281229F48 |= v10;

  v12 = [v16 objectForKeyedSubscript:*MEMORY[0x277D659D8]];
  v13 = [v12 integerValue];
  v14 = 1 << v13;
  if ((v13 & 0x40) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1 << v13;
  }

  if ((v13 & 0x40) == 0)
  {
    v14 = 0;
  }

  makePersonResult_dataclass_queryContext_score__mask |= v15;
  *algn_281229F48 |= v14;
}

- (BOOL)doesQueryMatchContentForLowEngagementBundle:(id)a3 queryContext:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC2760]];
  if (!v7)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC31F0]];
  }

  v8 = [v6 normalizedSearchString];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v39 = v7;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    if ([v8 length] >= 4)
    {
      v12 = [v7 lowercaseString];
      v13 = SSNormalizedQueryString();

      v36 = v11;
      v14 = [v11 componentsSeparatedByString:@" "];
      v35 = v13;
      v44 = [v13 componentsSeparatedByString:@" "];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v15 = v14;
      v43 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v43)
      {
        v16 = 0;
        v17 = 0;
        v40 = 0;
        v41 = v15;
        v42 = *v54;
        v37 = v6;
        v38 = v5;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v54 != v42)
            {
              objc_enumerationMutation(v15);
            }

            v47 = v16;
            v48 = v17;
            v46 = v18;
            v19 = *(*(&v53 + 1) + 8 * v18);
            v45 = [v19 length];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v20 = v44;
            v21 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = 0;
              v24 = *v50;
              v25 = 0x7FFFFFFFLL;
              while (2)
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v50 != v24)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v27 = *(*(&v49 + 1) + 8 * i);
                  if ([v27 localizedStandardRangeOfString:v19] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v29 = v28;
                    v30 = [v27 length];
                    v31 = [v27 length];
                    v32 = v31;
                    if (v29 == v30)
                    {

                      v25 = v32;
                      goto LABEL_36;
                    }

                    if (v31 < v25)
                    {
                      v25 = [v27 length];
                    }

                    v23 = 1;
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v23 = 0;
              v25 = 0x7FFFFFFFLL;
            }

            if ((v23 & 1) == 0 || v40 > 0 || [v19 length] <= 3 && 3 * v25 > 4 * objc_msgSend(v19, "length"))
            {
              v15 = v41;

              v10 = 0;
              v6 = v37;
              v5 = v38;
              goto LABEL_43;
            }

            v40 = 1;
LABEL_36:
            v17 = v45 + v48;
            v16 = v25 + v47;
            v18 = v46 + 1;
            v15 = v41;
          }

          while (v46 + 1 != v43);
          v6 = v37;
          v5 = v38;
          v43 = [v41 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }

        if (v17 > 3)
        {
          v10 = 1;
          goto LABEL_43;
        }
      }

      else
      {

        v17 = 0;
        v16 = 0;
      }

      v10 = 3 * v16 <= 4 * v17;
LABEL_43:

      v8 = v36;
    }

    else
    {
      v10 = 0;
      v8 = v11;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)populateCoreSpotlightResult:(id)a3 attrs:(id)a4 bundleID:(id)a5 queryContext:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v55 = a6;
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2678]];
  v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3238]];
  v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3208]];
  v53 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2BD8]];
  v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2688]];
  v17 = getURLString(v16);

  v18 = v15;
  v19 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3230]];
  v54 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2ED8]];
  v57 = self;
  v56 = [objc_opt_class() titleStringFromAttrs:v11];
  [v10 setCompatibilityTitle:?];
  [v10 setIdentifier:v15];
  v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  [v10 setResultBundleId:v20];

  [v10 setContentURL:v17];
  v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2B18]];
  [v10 setFileIdentifier:v21];

  v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2E58]];
  [v10 setParentFileIdentifier:v22];

  v23 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2B58]];
  [v10 setFilename:v23];

  v24 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2768]];
  [v10 setDocumentIdentifier:v24];

  [v10 setUserActivityType:v14];
  v58 = v19;
  [v10 setUserActivityRequiredString:v19];
  v25 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3038]];
  [v10 setRelatedBundleID:v25];

  v26 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2BA0]];
  [v10 setHasAppTopHitShortcut:BOOLValueForAttr(v26)];

  v27 = [v12 isEqualToString:@"com.apple.shortcuts"];
  v28 = [v13 hasPrefix:*MEMORY[0x277CD3868]];
  if (v14 || (v27 & 1) != 0 || v28)
  {
    v31 = v53;
    v33 = SPLogForSPLogCategoryQuery();
    v34 = v33;
    if (*MEMORY[0x277D4BF48])
    {
      v35 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v35 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v33, v35))
    {
      *buf = 138412290;
      v60 = v12;
      _os_log_impl(&dword_26B71B000, v34, v35, "Found #apphistory item for %@", buf, 0xCu);
    }

    if (v53)
    {
      v36 = v53;
    }

    else
    {
      v36 = v58;
    }

    [v10 setUserActivityRequiredString:v36];
    v37 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3228]];
    v38 = v37;
    if (v37)
    {
      [v10 setPubliclyIndexable:{objc_msgSend(v37, "BOOLValue")}];
    }

    [(SPSearchTopHitResult *)v57 setupGenericItem:v10 attrs:v11 utiType:v13 bundleID:v12];

    v30 = v55;
    goto LABEL_20;
  }

  if (([v13 isEqualToString:@"com.apple.mobilenotes.spotlightrecord"]& 1) != 0 || ([v13 isEqualToString:@"com.apple.notes.spotlightrecord"]& 1) != 0 || [v12 isEqualToString:@"com.apple.mobilenotes"])
  {
    [(SPSearchTopHitResult *)self setupGenericItem:v10 attrs:v11 utiType:v13 bundleID:v12];
    v29 = v54;
    v30 = v55;
    v31 = v53;
    if ([v54 unsignedIntValue])
    {
      v32 = MEMORY[0x277D65CA0];
    }

    else
    {
      if (!isImageOrVideoContentType())
      {
LABEL_24:
        [v10 setUserActivityType:*MEMORY[0x277CC2388]];
        goto LABEL_25;
      }

      v32 = MEMORY[0x277D65CD0];
    }

    [v10 setSectionBundleIdentifier:*v32];
    goto LABEL_24;
  }

  v30 = v55;
  v31 = v53;
  if (([v12 isEqualToString:@"com.apple.reminders"]& 1) != 0 || [v12 isEqualToString:@"com.apple.mobilecal"])
  {
    if ([v13 isEqualToString:@"public.to-do-item"])
    {
      [(SPSearchTopHitResult *)v57 updateToDoItemResult:v10 withAttrs:v11];
    }

    v40 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC23A8]];
    [(SPSearchTopHitResult *)v57 updateDataOwnerTypeForResult:v10 accountID:v40];

    goto LABEL_20;
  }

  if (![v12 isEqualToString:@"com.apple.VoiceMemos"])
  {
    if ([v12 isEqualToString:@"com.apple.MobileAddressBook"])
    {
      loga = v13;
      v44 = v12;
      v45 = v17;
      [(SPSearchTopHitResult *)v57 makeContactResult:v11 identifier:v18 queryContext:v55 result:v10];
      v46 = SPLogForSPLogCategoryQuery();
      v47 = v46;
      if (*MEMORY[0x277D4BF48])
      {
        v48 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v48 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v46, v48))
      {
        goto LABEL_52;
      }

      *buf = 138412290;
      v60 = v56;
    }

    else
    {
      if (![v12 isEqualToString:@"com.apple.CoreSuggestions"])
      {
        [v10 setUserActivityType:*MEMORY[0x277CC2388]];
        v50 = SPLogForSPLogCategoryQuery();
        if (*MEMORY[0x277D4BF48])
        {
          v42 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v42 = OS_LOG_TYPE_DEBUG;
        }

        log = v50;
        if (!os_log_type_enabled(v50, v42))
        {
          goto LABEL_38;
        }

        *buf = 138412290;
        v60 = v13;
        v43 = "Adding app search UTI: %@";
        goto LABEL_37;
      }

      loga = v13;
      v44 = v12;
      v45 = v17;
      [(SPSearchTopHitResult *)v57 makeContactResult:v11 identifier:v18 queryContext:v55 result:v10];
      v49 = SPLogForSPLogCategoryQuery();
      v47 = v49;
      if (*MEMORY[0x277D4BF48])
      {
        v48 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v48 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v49, v48))
      {
LABEL_52:

        v17 = v45;
        v14 = 0;
        v12 = v44;
        v13 = loga;
        goto LABEL_20;
      }

      *buf = 138412290;
      v60 = v56;
    }

    _os_log_impl(&dword_26B71B000, v47, v48, "Adding contact: %@", buf, 0xCu);
    goto LABEL_52;
  }

  v41 = SPLogForSPLogCategoryQuery();
  if (*MEMORY[0x277D4BF48])
  {
    v42 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v42 = OS_LOG_TYPE_DEBUG;
  }

  log = v41;
  if (!os_log_type_enabled(v41, v42))
  {
    goto LABEL_38;
  }

  *buf = 138412290;
  v60 = v56;
  v43 = "Adding voice memo: %@";
LABEL_37:
  _os_log_impl(&dword_26B71B000, log, v42, v43, buf, 0xCu);
LABEL_38:

  [(SPSearchTopHitResult *)v57 setupGenericItem:v10 attrs:v11 utiType:v13 bundleID:v12];
LABEL_20:
  v29 = v54;
LABEL_25:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)populateAttributesForResult:(id)a3 withAttrs:(id)a4
{
  v568[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v312 = *MEMORY[0x277CC2C60];
  v7 = [v6 objectForKeyedSubscript:?];
  v309 = BOOLValueForAttr(v7);

  v311 = *MEMORY[0x277CC24F0];
  v8 = [v6 objectForKeyedSubscript:?];
  v308 = BOOLValueForAttr(v8);

  v310 = *MEMORY[0x277CC2B48];
  v9 = [v6 objectForKeyedSubscript:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x277CCABB0];
    [v9 doubleValue];
    v565 = [v11 numberWithDouble:v12 * 1000000.0];
  }

  else
  {
    v565 = 0;
  }

  v298 = *MEMORY[0x277CC23B8];
  v564 = [v6 objectForKeyedSubscript:?];
  v295 = *MEMORY[0x277CC23D0];
  v563 = [v6 objectForKeyedSubscript:?];
  v300 = *MEMORY[0x277CC2408];
  v562 = [v6 objectForKeyedSubscript:?];
  v305 = *MEMORY[0x277CC2460];
  v561 = [v6 objectForKeyedSubscript:?];
  v303 = *MEMORY[0x277CC2478];
  v560 = [v6 objectForKeyedSubscript:?];
  v307 = *MEMORY[0x277CC2490];
  v559 = [v6 objectForKeyedSubscript:?];
  v304 = *MEMORY[0x277CC2498];
  v558 = [v6 objectForKeyedSubscript:?];
  v302 = *MEMORY[0x277CC24A0];
  v557 = [v6 objectForKeyedSubscript:?];
  v306 = *MEMORY[0x277CC24C0];
  v556 = [v6 objectForKeyedSubscript:?];
  v297 = *MEMORY[0x277CC24B0];
  v555 = [v6 objectForKeyedSubscript:?];
  v301 = *MEMORY[0x277CC24B8];
  v554 = [v6 objectForKeyedSubscript:?];
  v299 = *MEMORY[0x277CC24C8];
  v553 = [v6 objectForKeyedSubscript:?];
  v296 = *MEMORY[0x277CC24E0];
  v552 = [v6 objectForKeyedSubscript:?];
  v330 = *MEMORY[0x277CC2EB8];
  v551 = [v6 objectForKeyedSubscript:?];
  v13 = *MEMORY[0x277CC3180];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC3180]];
  v320 = BOOLValueForAttr(v14);

  v327 = *MEMORY[0x277CC2F28];
  v550 = [v6 objectForKeyedSubscript:?];
  v326 = *MEMORY[0x277CC2F38];
  v549 = [v6 objectForKeyedSubscript:?];
  v325 = *MEMORY[0x277CC2F40];
  v548 = [v6 objectForKeyedSubscript:?];
  v15 = *MEMORY[0x277CC2F50];
  v547 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2F50]];
  v16 = *MEMORY[0x277CC2F80];
  v546 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2F80]];
  v321 = *MEMORY[0x277CC2F78];
  v545 = [v6 objectForKeyedSubscript:?];
  v319 = *MEMORY[0x277CC2F68];
  v544 = [v6 objectForKeyedSubscript:?];
  v316 = *MEMORY[0x277CC2F70];
  v543 = [v6 objectForKeyedSubscript:?];
  v315 = *MEMORY[0x277CC2F60];
  v542 = [v6 objectForKeyedSubscript:?];
  v317 = *MEMORY[0x277CC2788];
  v541 = [v6 objectForKeyedSubscript:?];
  v318 = *MEMORY[0x277CC2FA8];
  v540 = [v6 objectForKeyedSubscript:?];
  v324 = *MEMORY[0x277CC3028];
  v539 = [v6 objectForKeyedSubscript:?];
  v323 = *MEMORY[0x277CC3018];
  v538 = [v6 objectForKeyedSubscript:?];
  v322 = *MEMORY[0x277CC3040];
  v537 = [v6 objectForKeyedSubscript:?];
  v17 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC3378]];
  v313 = v15;
  v281 = v16;
  if ([v17 count] != 2)
  {
    goto LABEL_9;
  }

  v18 = [v17 objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    v21 = 0;
    goto LABEL_13;
  }

  v19 = [v17 objectAtIndexedSubscript:0];
  v20 = [v19 isEqualToString:@"kMDItemTextContent"];

  if (v20)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_13;
  }

  v22 = [v17 objectAtIndexedSubscript:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v21 = [v17 objectAtIndexedSubscript:1];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    if ((v24 & 1) == 0)
    {
      goto LABEL_7;
    }

    v25 = [v17 objectAtIndexedSubscript:1];
    v568[0] = v25;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v568 count:1];
  }

LABEL_13:

  v294 = *MEMORY[0x277CC3078];
  v535 = [v6 objectForKeyedSubscript:?];
  v293 = *MEMORY[0x277CC30A0];
  v534 = [v6 objectForKeyedSubscript:?];
  v291 = *MEMORY[0x277CC3098];
  v533 = [v6 objectForKeyedSubscript:?];
  v314 = *MEMORY[0x277CC3220];
  v532 = [v6 objectForKeyedSubscript:?];
  v292 = *MEMORY[0x277CC30B0];
  v531 = [v6 objectForKeyedSubscript:?];
  v290 = *MEMORY[0x277CC3088];
  v530 = [v6 objectForKeyedSubscript:?];
  v289 = *MEMORY[0x277CC30A8];
  v529 = [v6 objectForKeyedSubscript:?];
  v288 = *MEMORY[0x277CC3080];
  v528 = [v6 objectForKeyedSubscript:?];
  v287 = *MEMORY[0x277CC30B8];
  v527 = [v6 objectForKeyedSubscript:?];
  v286 = *MEMORY[0x277CC30D0];
  v526 = [v6 objectForKeyedSubscript:?];
  v285 = *MEMORY[0x277CC30C0];
  v525 = [v6 objectForKeyedSubscript:?];
  v284 = *MEMORY[0x277CC3090];
  v524 = [v6 objectForKeyedSubscript:?];
  v283 = *MEMORY[0x277CC30F8];
  v523 = [v6 objectForKeyedSubscript:?];
  v258 = *MEMORY[0x277CC25E0];
  v522 = [v6 objectForKeyedSubscript:?];
  v262 = *MEMORY[0x277CC2640];
  v521 = [v6 objectForKeyedSubscript:?];
  v266 = *MEMORY[0x277CC2778];
  v520 = [v6 objectForKeyedSubscript:?];
  v257 = *MEMORY[0x277CC27A0];
  v519 = [v6 objectForKeyedSubscript:?];
  v256 = *MEMORY[0x277CC2A70];
  v518 = [v6 objectForKeyedSubscript:?];
  v26 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2D10]];
  v279 = *MEMORY[0x277CC2660];
  v517 = [v6 objectForKeyedSubscript:?];
  v27 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC30F0]];
  v282 = *MEMORY[0x277CC3128];
  v516 = [v6 objectForKeyedSubscript:?];
  v239 = *MEMORY[0x277CC2458];
  v515 = [v6 objectForKeyedSubscript:?];
  v235 = *MEMORY[0x277CC2450];
  v514 = [v6 objectForKeyedSubscript:?];
  v247 = *MEMORY[0x277CC24E8];
  v513 = [v6 objectForKeyedSubscript:?];
  v251 = *MEMORY[0x277CC2780];
  v512 = [v6 objectForKeyedSubscript:?];
  v253 = *MEMORY[0x277CC2D18];
  v511 = [v6 objectForKeyedSubscript:?];
  v252 = *MEMORY[0x277CC2D50];
  v510 = [v6 objectForKeyedSubscript:?];
  v254 = *MEMORY[0x277CC3178];
  v28 = [v6 objectForKeyedSubscript:?];
  v249 = BOOLValueForAttr(v28);

  v280 = *MEMORY[0x277CC3120];
  v509 = [v6 objectForKeyedSubscript:?];
  v214 = *MEMORY[0x277CC23F8];
  v508 = [v6 objectForKeyedSubscript:?];
  v222 = *MEMORY[0x277CC2480];
  v507 = [v6 objectForKeyedSubscript:?];
  v236 = *MEMORY[0x277CC2520];
  v506 = [v6 objectForKeyedSubscript:?];
  v243 = *MEMORY[0x277CC25F0];
  v505 = [v6 objectForKeyedSubscript:?];
  v242 = *MEMORY[0x277CC2630];
  v504 = [v6 objectForKeyedSubscript:?];
  v234 = *MEMORY[0x277CC2688];
  v29 = [v6 objectForKeyedSubscript:?];
  v503 = getURLString(v29);

  v238 = *MEMORY[0x277CC2750];
  v502 = [v6 objectForKeyedSubscript:?];
  v237 = *MEMORY[0x277CC2760];
  v566 = [v6 objectForKeyedSubscript:?];
  v241 = *MEMORY[0x277CC2BD8];
  v501 = [v6 objectForKeyedSubscript:?];
  v240 = *MEMORY[0x277CC2CF0];
  v500 = [v6 objectForKeyedSubscript:?];
  v246 = *MEMORY[0x277CC2DB8];
  v499 = [v6 objectForKeyedSubscript:?];
  v245 = *MEMORY[0x277CC2DD0];
  v498 = [v6 objectForKeyedSubscript:?];
  v244 = *MEMORY[0x277CC2E88];
  v497 = [v6 objectForKeyedSubscript:?];
  v248 = *MEMORY[0x277CC2FE8];
  v496 = [v6 objectForKeyedSubscript:?];
  v250 = *MEMORY[0x277CC3008];
  v495 = [v6 objectForKeyedSubscript:?];
  v255 = *MEMORY[0x277CC3038];
  v494 = [v6 objectForKeyedSubscript:?];
  v493 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2670]];
  v268 = *MEMORY[0x277CC30E8];
  v492 = [v6 objectForKeyedSubscript:?];
  v278 = *MEMORY[0x277CC3140];
  v491 = [v6 objectForKeyedSubscript:?];
  v277 = *MEMORY[0x277CC31B8];
  v490 = [v6 objectForKeyedSubscript:?];
  v276 = *MEMORY[0x277CC31C0];
  v489 = [v6 objectForKeyedSubscript:?];
  v274 = *MEMORY[0x277CC31D0];
  v488 = [v6 objectForKeyedSubscript:?];
  v272 = *MEMORY[0x277CC31C8];
  v487 = [v6 objectForKeyedSubscript:?];
  v270 = *MEMORY[0x277CC31D8];
  v486 = [v6 objectForKeyedSubscript:?];
  v267 = *MEMORY[0x277CC31E0];
  v485 = [v6 objectForKeyedSubscript:?];
  v271 = *MEMORY[0x277CC26D8];
  v484 = [v6 objectForKeyedSubscript:?];
  v269 = *MEMORY[0x277CC31F0];
  v483 = [v6 objectForKeyedSubscript:?];
  v275 = *MEMORY[0x277CC3208];
  v482 = [v6 objectForKeyedSubscript:?];
  v273 = *MEMORY[0x277CC31F8];
  v30 = [v6 objectForKeyedSubscript:?];
  v481 = getURLString(v30);

  v265 = *MEMORY[0x277CC3230];
  v480 = [v6 objectForKeyedSubscript:?];
  v264 = *MEMORY[0x277CC3238];
  v479 = [v6 objectForKeyedSubscript:?];
  v263 = *MEMORY[0x277CC2678];
  v31 = [v6 objectForKeyedSubscript:?];
  v136 = *MEMORY[0x277CC2E08];
  v478 = [v6 objectForKeyedSubscript:?];
  v261 = *MEMORY[0x277CC2B98];
  v477 = [v6 objectForKeyedSubscript:?];
  v260 = *MEMORY[0x277CC2CF8];
  v476 = [v6 objectForKeyedSubscript:?];
  v259 = *MEMORY[0x277CC2B78];
  v567 = [v6 objectForKeyedSubscript:?];
  if (!v567)
  {
    v567 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC3308]];
  }

  v232 = *MEMORY[0x277CC3190];
  v475 = [v6 objectForKeyedSubscript:?];
  v231 = *MEMORY[0x277CC3188];
  v474 = [v6 objectForKeyedSubscript:?];
  v230 = *MEMORY[0x277CC2518];
  v473 = [v6 objectForKeyedSubscript:?];
  v229 = *MEMORY[0x277CC2EF0];
  v472 = [v6 objectForKeyedSubscript:?];
  v228 = *MEMORY[0x277CC2F08];
  v471 = [v6 objectForKeyedSubscript:?];
  v226 = *MEMORY[0x277CC2F00];
  v470 = [v6 objectForKeyedSubscript:?];
  v225 = *MEMORY[0x277CC2770];
  v469 = [v6 objectForKeyedSubscript:?];
  v233 = *MEMORY[0x277CC2668];
  v32 = [v6 objectForKeyedSubscript:?];
  v227 = BOOLValueForAttr(v32);

  v220 = *MEMORY[0x277CC25D8];
  v468 = [v6 objectForKeyedSubscript:?];
  v218 = *MEMORY[0x277CC2BA8];
  v467 = [v6 objectForKeyedSubscript:?];
  v217 = *MEMORY[0x277CC3058];
  v466 = [v6 objectForKeyedSubscript:?];
  v215 = *MEMORY[0x277CC3060];
  v465 = [v6 objectForKeyedSubscript:?];
  v224 = *MEMORY[0x277CC2DF0];
  v33 = [v6 objectForKeyedSubscript:?];
  v221 = BOOLValueForAttr(v33);

  v223 = *MEMORY[0x277CC2DE8];
  v34 = [v6 objectForKeyedSubscript:?];
  v219 = BOOLValueForAttr(v34);

  v211 = *MEMORY[0x277CC2DE0];
  v464 = [v6 objectForKeyedSubscript:?];
  v210 = *MEMORY[0x277CC2DD8];
  v463 = [v6 objectForKeyedSubscript:?];
  v216 = *MEMORY[0x277CC2EA8];
  v462 = [v6 objectForKeyedSubscript:?];
  v213 = *MEMORY[0x277CC2EA0];
  v461 = [v6 objectForKeyedSubscript:?];
  v212 = *MEMORY[0x277CC2EB0];
  v460 = [v6 objectForKeyedSubscript:?];
  v536 = v21;
  v329 = v26;
  v328 = v27;
  if (_os_feature_enabled_impl())
  {
    v35 = [v5 resultBundleId];
    if (v35)
    {
      v36 = v35;
      v37 = [v5 resultBundleId];
      v38 = [v37 isEqualToString:*MEMORY[0x277D65BF0]];

      if (v38)
      {
        v39 = [v5 personalAnswerString];

        v566 = v39;
      }
    }
  }

  v40 = *MEMORY[0x277CC23E8];
  v459 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC23E8]];
  v209 = *MEMORY[0x277CC25C8];
  v458 = [v6 objectForKeyedSubscript:?];
  v208 = *MEMORY[0x277CC26A8];
  v457 = [v6 objectForKeyedSubscript:?];
  v207 = *MEMORY[0x277CC26C0];
  v456 = [v6 objectForKeyedSubscript:?];
  v206 = *MEMORY[0x277CC2B60];
  v455 = [v6 objectForKeyedSubscript:?];
  v205 = *MEMORY[0x277CC2B88];
  v454 = [v6 objectForKeyedSubscript:?];
  v204 = *MEMORY[0x277CC2C50];
  v453 = [v6 objectForKeyedSubscript:?];
  v203 = *MEMORY[0x277CC2F20];
  v452 = [v6 objectForKeyedSubscript:?];
  v202 = *MEMORY[0x277CC2FC0];
  v451 = [v6 objectForKeyedSubscript:?];
  v201 = *MEMORY[0x277CC3010];
  v450 = [v6 objectForKeyedSubscript:?];
  v200 = *MEMORY[0x277CC3020];
  v449 = [v6 objectForKeyedSubscript:?];
  v199 = *MEMORY[0x277CC3138];
  v448 = [v6 objectForKeyedSubscript:?];
  v198 = *MEMORY[0x277CC31A0];
  v447 = [v6 objectForKeyedSubscript:?];
  v197 = *MEMORY[0x277CC2DC0];
  v446 = [v6 objectForKeyedSubscript:?];
  v196 = *MEMORY[0x277CC2C58];
  v445 = [v6 objectForKeyedSubscript:?];
  v194 = *MEMORY[0x277CC2E70];
  v444 = [v6 objectForKeyedSubscript:?];
  v193 = *MEMORY[0x277CC2E78];
  v443 = [v6 objectForKeyedSubscript:?];
  v195 = *MEMORY[0x277CC2E68];
  v41 = [v6 objectForKeyedSubscript:?];
  v189 = BOOLValueForAttr(v41);

  v192 = *MEMORY[0x277CC32E8];
  v400 = [v6 objectForKeyedSubscript:?];
  v191 = *MEMORY[0x277CC32E0];
  v442 = [v6 objectForKeyedSubscript:?];
  v190 = *MEMORY[0x277CC2A58];
  v441 = [v6 objectForKeyedSubscript:?];
  v188 = *MEMORY[0x277CC3340];
  v440 = [v6 objectForKeyedSubscript:?];
  v187 = *MEMORY[0x277CC28F0];
  v439 = [v6 objectForKeyedSubscript:?];
  v186 = *MEMORY[0x277CC28F8];
  v438 = [v6 objectForKeyedSubscript:?];
  v185 = *MEMORY[0x277CC2890];
  v437 = [v6 objectForKeyedSubscript:?];
  v184 = *MEMORY[0x277CC2878];
  v436 = [v6 objectForKeyedSubscript:?];
  v183 = *MEMORY[0x277CC2880];
  v435 = [v6 objectForKeyedSubscript:?];
  v182 = *MEMORY[0x277CC2888];
  v434 = [v6 objectForKeyedSubscript:?];
  v181 = *MEMORY[0x277CC2868];
  v433 = [v6 objectForKeyedSubscript:?];
  v180 = *MEMORY[0x277CC28E8];
  v432 = [v6 objectForKeyedSubscript:?];
  v179 = *MEMORY[0x277CC2830];
  v431 = [v6 objectForKeyedSubscript:?];
  v177 = *MEMORY[0x277CC2848];
  v430 = [v6 objectForKeyedSubscript:?];
  v176 = *MEMORY[0x277CC28A8];
  v429 = [v6 objectForKeyedSubscript:?];
  v175 = *MEMORY[0x277CC28C0];
  v428 = [v6 objectForKeyedSubscript:?];
  v174 = *MEMORY[0x277CC2898];
  v427 = [v6 objectForKeyedSubscript:?];
  v173 = *MEMORY[0x277CC2860];
  v426 = [v6 objectForKeyedSubscript:?];
  v172 = *MEMORY[0x277CC28E0];
  v425 = [v6 objectForKeyedSubscript:?];
  v171 = *MEMORY[0x277CC2828];
  v424 = [v6 objectForKeyedSubscript:?];
  v170 = *MEMORY[0x277CC2840];
  v423 = [v6 objectForKeyedSubscript:?];
  v169 = *MEMORY[0x277CC2850];
  v422 = [v6 objectForKeyedSubscript:?];
  v168 = *MEMORY[0x277CC2838];
  v421 = [v6 objectForKeyedSubscript:?];
  v167 = *MEMORY[0x277CC28A0];
  v420 = [v6 objectForKeyedSubscript:?];
  v166 = *MEMORY[0x277CC28B8];
  v419 = [v6 objectForKeyedSubscript:?];
  v165 = *MEMORY[0x277CC28C8];
  v418 = [v6 objectForKeyedSubscript:?];
  v164 = *MEMORY[0x277CC28B0];
  v417 = [v6 objectForKeyedSubscript:?];
  v163 = *MEMORY[0x277CC2950];
  v416 = [v6 objectForKeyedSubscript:?];
  v162 = *MEMORY[0x277CC2960];
  v415 = [v6 objectForKeyedSubscript:?];
  v42 = *MEMORY[0x277CC2958];
  v414 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2958]];
  v161 = *MEMORY[0x277CC2930];
  v413 = [v6 objectForKeyedSubscript:?];
  v160 = *MEMORY[0x277CC2940];
  v412 = [v6 objectForKeyedSubscript:?];
  v159 = *MEMORY[0x277CC2938];
  v411 = [v6 objectForKeyedSubscript:?];
  v158 = *MEMORY[0x277CC2948];
  v410 = [v6 objectForKeyedSubscript:?];
  v157 = *MEMORY[0x277CC29B8];
  v409 = [v6 objectForKeyedSubscript:?];
  v156 = *MEMORY[0x277CC2418];
  v408 = [v6 objectForKeyedSubscript:?];
  v155 = *MEMORY[0x277CC2430];
  v407 = [v6 objectForKeyedSubscript:?];
  v154 = *MEMORY[0x277CC2428];
  v406 = [v6 objectForKeyedSubscript:?];
  v153 = *MEMORY[0x277CC2420];
  v405 = [v6 objectForKeyedSubscript:?];
  v152 = *MEMORY[0x277CC30D8];
  v404 = [v6 objectForKeyedSubscript:?];
  v151 = *MEMORY[0x277CC2EC0];
  v403 = [v6 objectForKeyedSubscript:?];
  v150 = *MEMORY[0x277CC2ED0];
  v402 = [v6 objectForKeyedSubscript:?];
  v149 = *MEMORY[0x277CC2F58];
  v401 = [v6 objectForKeyedSubscript:?];
  v148 = *MEMORY[0x277CC2F88];
  v399 = [v6 objectForKeyedSubscript:?];
  v147 = *MEMORY[0x277CC2EE8];
  v398 = [v6 objectForKeyedSubscript:?];
  v145 = *MEMORY[0x277CC2978];
  v397 = [v6 objectForKeyedSubscript:?];
  v146 = *MEMORY[0x277CC2A00];
  v396 = [v6 objectForKeyedSubscript:?];
  v143 = *MEMORY[0x277CC2A88];
  v43 = [v6 objectForKeyedSubscript:?];
  v144 = *MEMORY[0x277CC27D8];
  v395 = [v6 objectForKeyedSubscript:?];
  v142 = *MEMORY[0x277CC29F8];
  v394 = [v6 objectForKeyedSubscript:?];
  v141 = *MEMORY[0x277CC29A8];
  v393 = [v6 objectForKeyedSubscript:?];
  v140 = *MEMORY[0x277CC2980];
  v392 = [v6 objectForKeyedSubscript:?];
  v139 = *MEMORY[0x277CC2A18];
  v391 = [v6 objectForKeyedSubscript:?];
  v138 = *MEMORY[0x277CC2A10];
  v390 = [v6 objectForKeyedSubscript:?];
  v137 = *MEMORY[0x277CC27F8];
  v389 = [v6 objectForKeyedSubscript:?];
  v135 = *MEMORY[0x277CC27F0];
  v388 = [v6 objectForKeyedSubscript:?];
  v134 = *MEMORY[0x277CC2A30];
  v387 = [v6 objectForKeyedSubscript:?];
  v133 = *MEMORY[0x277CC2A38];
  v386 = [v6 objectForKeyedSubscript:?];
  v132 = *MEMORY[0x277CC2A68];
  v385 = [v6 objectForKeyedSubscript:?];
  v131 = *MEMORY[0x277CC25A8];
  v384 = [v6 objectForKeyedSubscript:?];
  v130 = *MEMORY[0x277CC25B0];
  v383 = [v6 objectForKeyedSubscript:?];
  v129 = *MEMORY[0x277CC2628];
  v382 = [v6 objectForKeyedSubscript:?];
  v128 = *MEMORY[0x277CC2D38];
  v381 = [v6 objectForKeyedSubscript:?];
  v127 = *MEMORY[0x277CC2D30];
  v380 = [v6 objectForKeyedSubscript:?];
  v126 = *MEMORY[0x277CC2D28];
  v379 = [v6 objectForKeyedSubscript:?];
  v125 = *MEMORY[0x277CC3130];
  v378 = [v6 objectForKeyedSubscript:?];
  v124 = *MEMORY[0x277CC27A8];
  v377 = [v6 objectForKeyedSubscript:?];
  v123 = *MEMORY[0x277CC31E8];
  v376 = [v6 objectForKeyedSubscript:?];
  v178 = *MEMORY[0x277CC2758];
  v358 = [v6 objectForKeyedSubscript:?];
  v122 = *MEMORY[0x277CC29F0];
  v375 = [v6 objectForKeyedSubscript:?];
  v121 = *MEMORY[0x277CC2988];
  v374 = [v6 objectForKeyedSubscript:?];
  v120 = *MEMORY[0x277CC29A0];
  v373 = [v6 objectForKeyedSubscript:?];
  v119 = *MEMORY[0x277CC2A40];
  v372 = [v6 objectForKeyedSubscript:?];
  v118 = *MEMORY[0x277CC2A20];
  v371 = [v6 objectForKeyedSubscript:?];
  v117 = *MEMORY[0x277CC2800];
  v370 = [v6 objectForKeyedSubscript:?];
  v116 = *MEMORY[0x277CC2D40];
  v369 = [v6 objectForKeyedSubscript:?];
  v115 = *MEMORY[0x277CC24F8];
  v368 = [v6 objectForKeyedSubscript:?];
  v114 = *MEMORY[0x277CC23F0];
  v367 = [v6 objectForKeyedSubscript:?];
  v113 = *MEMORY[0x277CC2510];
  v366 = [v6 objectForKeyedSubscript:?];
  v112 = *MEMORY[0x277CC2588];
  v365 = [v6 objectForKeyedSubscript:?];
  v111 = *MEMORY[0x277CC25B8];
  v364 = [v6 objectForKeyedSubscript:?];
  v110 = *MEMORY[0x277CC2578];
  v363 = [v6 objectForKeyedSubscript:?];
  v109 = *MEMORY[0x277CC2558];
  v362 = [v6 objectForKeyedSubscript:?];
  v108 = *MEMORY[0x277CC2568];
  v361 = [v6 objectForKeyedSubscript:?];
  v107 = *MEMORY[0x277CC2548];
  v360 = [v6 objectForKeyedSubscript:?];
  v106 = *MEMORY[0x277CC2570];
  v359 = [v6 objectForKeyedSubscript:?];
  v105 = *MEMORY[0x277CC2590];
  v357 = [v6 objectForKeyedSubscript:?];
  v104 = *MEMORY[0x277CC2540];
  v356 = [v6 objectForKeyedSubscript:?];
  v103 = *MEMORY[0x277CC2538];
  v355 = [v6 objectForKeyedSubscript:?];
  v102 = *MEMORY[0x277CC2530];
  v354 = [v6 objectForKeyedSubscript:?];
  v101 = *MEMORY[0x277CC26A0];
  v353 = [v6 objectForKeyedSubscript:?];
  v100 = *MEMORY[0x277CC2698];
  v352 = [v6 objectForKeyedSubscript:?];
  v99 = *MEMORY[0x277CC26D0];
  v351 = [v6 objectForKeyedSubscript:?];
  v98 = *MEMORY[0x277CC27B8];
  v350 = [v6 objectForKeyedSubscript:?];
  v97 = *MEMORY[0x277CC2F98];
  v349 = [v6 objectForKeyedSubscript:?];
  v96 = *MEMORY[0x277CC3200];
  v348 = [v6 objectForKeyedSubscript:?];
  v94 = *MEMORY[0x277CC3030];
  v347 = [v6 objectForKeyedSubscript:?];
  v95 = *MEMORY[0x277CC2870];
  v346 = [v6 objectForKeyedSubscript:?];
  v93 = *MEMORY[0x277CC2998];
  v345 = [v6 objectForKeyedSubscript:?];
  v92 = *MEMORY[0x277CC27E8];
  v344 = [v6 objectForKeyedSubscript:?];
  v91 = *MEMORY[0x277CC2A60];
  v343 = [v6 objectForKeyedSubscript:?];
  v90 = *MEMORY[0x277CC29B0];
  v342 = [v6 objectForKeyedSubscript:?];
  v89 = *MEMORY[0x277CC2AB0];
  v341 = [v6 objectForKeyedSubscript:?];
  v88 = *MEMORY[0x277CC2AF0];
  v340 = [v6 objectForKeyedSubscript:?];
  v87 = *MEMORY[0x277CC2AC0];
  v339 = [v6 objectForKeyedSubscript:?];
  v86 = *MEMORY[0x277CC2B08];
  v338 = [v6 objectForKeyedSubscript:?];
  v85 = *MEMORY[0x277CC2B00];
  v337 = [v6 objectForKeyedSubscript:?];
  v84 = *MEMORY[0x277CC2A98];
  v336 = [v6 objectForKeyedSubscript:?];
  v83 = *MEMORY[0x277CC2AD0];
  v335 = [v6 objectForKeyedSubscript:?];
  v81 = *MEMORY[0x277CC2AE0];
  v334 = [v6 objectForKeyedSubscript:?];
  v82 = *MEMORY[0x277CC2AA0];
  v332 = [v6 objectForKeyedSubscript:?];
  v79 = *MEMORY[0x277CC2B10];
  v333 = [v6 objectForKeyedSubscript:?];
  v80 = *MEMORY[0x277CC2B38];
  v331 = [v6 objectForKeyedSubscript:?];
  v78 = *MEMORY[0x277CC2B58];
  v76 = [v6 objectForKeyedSubscript:?];
  v77 = *MEMORY[0x277CC2B30];
  v74 = [v6 objectForKeyedSubscript:?];
  v75 = *MEMORY[0x277CC2C70];
  v72 = [v6 objectForKeyedSubscript:?];
  v73 = *MEMORY[0x277CC3328];
  v70 = [v6 objectForKeyedSubscript:?];
  v71 = *MEMORY[0x277CC3320];
  v69 = [v6 objectForKeyedSubscript:?];
  v44 = [v5 contentType];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v31;
  }

  v47 = v46;
  v48 = v31;
  v49 = v47;

  v50 = objc_opt_new();
  [v50 beginDictionary];
  [MEMORY[0x277CCABB0] numberWithBool:v309];
  v52 = v51 = v5;
  [v50 encodeObject:v52 withKey:v312];

  v53 = [MEMORY[0x277CCABB0] numberWithBool:v308];
  [v50 encodeObject:v53 withKey:v311];

  [v50 encodeObject:v565 withKey:v310];
  [v50 encodeObject:v478 withKey:v136];
  [v50 encodeObject:v564 withKey:v298];
  [v50 encodeObject:v563 withKey:v295];
  [v50 encodeObject:v508 withKey:v214];
  [v50 encodeObject:v562 withKey:v300];
  [v50 encodeObject:v514 withKey:v235];
  [v50 encodeObject:v515 withKey:v239];
  [v50 encodeObject:v561 withKey:v305];
  [v50 encodeObject:v560 withKey:v303];
  [v50 encodeObject:v507 withKey:v222];
  [v50 encodeObject:v559 withKey:v307];
  [v50 encodeObject:v558 withKey:v304];
  [v50 encodeObject:v557 withKey:v302];
  [v50 encodeObject:v555 withKey:v297];
  [v50 encodeObject:v556 withKey:v306];
  [v50 encodeObject:v554 withKey:v301];
  [v50 encodeObject:v553 withKey:v299];
  [v50 encodeObject:v552 withKey:v296];
  [v50 encodeObject:v513 withKey:v247];
  [v50 encodeObject:v506 withKey:v236];
  [v50 encodeObject:v522 withKey:v258];
  [v50 encodeObject:v503 withKey:v234];
  [v50 encodeObject:v519 withKey:v257];
  [v50 encodeObject:v518 withKey:v256];
  [v50 encodeObject:v505 withKey:v243];
  [v50 encodeObject:v504 withKey:v242];
  [v50 encodeObject:v521 withKey:v262];
  [v50 encodeObject:v502 withKey:v238];
  [v50 encodeObject:v566 withKey:v237];
  [v50 encodeObject:v520 withKey:v266];
  [v50 encodeObject:v512 withKey:v251];
  [v50 encodeObject:v501 withKey:v241];
  [v50 encodeObject:v500 withKey:v240];
  [v50 encodeObject:v511 withKey:v253];
  [v50 encodeObject:v510 withKey:v252];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:v249];
  [v50 encodeObject:v54 withKey:v254];

  [v50 encodeObject:v517 withKey:v279];
  [v50 encodeObject:v499 withKey:v246];
  [v50 encodeObject:v498 withKey:v245];
  [v50 encodeObject:v497 withKey:v244];
  [v50 encodeObject:v551 withKey:v330];
  v55 = [MEMORY[0x277CCABB0] numberWithBool:v320];
  [v50 encodeObject:v55 withKey:v13];

  v56 = v51;
  [v50 encodeObject:v550 withKey:v327];
  [v50 encodeObject:v549 withKey:v326];
  [v50 encodeObject:v548 withKey:v325];
  [v50 encodeObject:v542 withKey:v315];
  [v50 encodeObject:v543 withKey:v316];
  [v50 encodeObject:v545 withKey:v321];
  [v50 encodeObject:v544 withKey:v319];
  [v50 encodeObject:v547 withKey:v313];
  [v50 encodeObject:v546 withKey:v281];
  [v50 encodeObject:v541 withKey:v317];
  [v50 encodeObject:v496 withKey:v248];
  [v50 encodeObject:v540 withKey:v318];
  [v50 encodeObject:v495 withKey:v250];
  [v50 encodeObject:v509 withKey:v280];
  [v50 encodeObject:v539 withKey:v324];
  [v50 encodeObject:v538 withKey:v323];
  [v50 encodeObject:v537 withKey:v322];
  [v50 encodeObject:v494 withKey:v255];
  [v50 encodeObject:v533 withKey:v291];
  [v50 encodeObject:v535 withKey:v294];
  [v50 encodeObject:v534 withKey:v293];
  [v50 encodeObject:v531 withKey:v292];
  [v50 encodeObject:v530 withKey:v290];
  [v50 encodeObject:v529 withKey:v289];
  [v50 encodeObject:v528 withKey:v288];
  [v50 encodeObject:v527 withKey:v287];
  [v50 encodeObject:v526 withKey:v286];
  [v50 encodeObject:v525 withKey:v285];
  [v50 encodeObject:v524 withKey:v284];
  [v50 encodeObject:v523 withKey:v283];
  [v50 encodeObject:v492 withKey:v268];
  [v50 encodeObject:v493 withKey:*MEMORY[0x277CC3118]];
  [v50 encodeObject:v516 withKey:v282];
  [v50 encodeObject:v491 withKey:v278];
  [v50 encodeObject:v490 withKey:v277];
  [v50 encodeObject:v489 withKey:v276];
  [v50 encodeObject:v488 withKey:v274];
  [v50 encodeObject:v487 withKey:v272];
  [v50 encodeObject:v486 withKey:v270];
  [v50 encodeObject:v485 withKey:v267];
  [v50 encodeObject:v532 withKey:v314];
  [v50 encodeObject:v484 withKey:v271];
  [v50 encodeObject:v483 withKey:v269];
  [v50 encodeObject:v536 withKey:@"SSAttributeTopMatchedStrings"];
  [v50 encodeObject:v482 withKey:v275];
  [v50 encodeObject:v481 withKey:v273];
  [v50 encodeObject:v480 withKey:v265];
  [v50 encodeObject:v479 withKey:v264];
  [v50 encodeObject:v49 withKey:v263];

  [v50 encodeObject:v477 withKey:v261];
  [v50 encodeObject:v476 withKey:v260];
  [v50 encodeObject:v567 withKey:v259];
  [v50 encodeObject:v475 withKey:v232];
  [v50 encodeObject:v474 withKey:v231];
  [v50 encodeObject:v473 withKey:v230];
  [v50 encodeObject:v472 withKey:v229];
  [v50 encodeObject:v471 withKey:v228];
  [v50 encodeObject:v470 withKey:v226];
  [v50 encodeObject:v469 withKey:v225];
  [v50 encodeObject:v468 withKey:v220];
  [v50 encodeObject:v467 withKey:v218];
  [v50 encodeObject:v466 withKey:v217];
  [v50 encodeObject:v465 withKey:v215];
  v57 = [MEMORY[0x277CCABB0] numberWithBool:v227];
  [v50 encodeObject:v57 withKey:v233];

  [v50 encodeObject:v464 withKey:v211];
  [v50 encodeObject:v463 withKey:v210];
  v58 = [MEMORY[0x277CCABB0] numberWithBool:v221];
  [v50 encodeObject:v58 withKey:v224];

  v59 = [MEMORY[0x277CCABB0] numberWithBool:v219];
  [v50 encodeObject:v59 withKey:v223];

  [v50 encodeObject:v462 withKey:v216];
  [v50 encodeObject:v461 withKey:v213];
  [v50 encodeObject:v460 withKey:v212];
  [v50 encodeObject:v459 withKey:v40];
  [v50 encodeObject:v458 withKey:v209];
  [v50 encodeObject:v457 withKey:v208];
  [v50 encodeObject:v456 withKey:v207];
  [v50 encodeObject:v455 withKey:v206];
  [v50 encodeObject:v454 withKey:v205];
  [v50 encodeObject:v453 withKey:v204];
  [v50 encodeObject:v452 withKey:v203];
  [v50 encodeObject:v451 withKey:v202];
  [v50 encodeObject:v450 withKey:v201];
  [v50 encodeObject:v449 withKey:v200];
  [v50 encodeObject:v448 withKey:v199];
  [v50 encodeObject:v447 withKey:v198];
  [v50 encodeObject:v446 withKey:v197];
  [v50 encodeObject:v445 withKey:v196];
  [v50 encodeObject:v444 withKey:v194];
  [v50 encodeObject:v443 withKey:v193];
  v60 = [MEMORY[0x277CCABB0] numberWithBool:v189];
  [v50 encodeObject:v60 withKey:v195];

  [v50 encodeObject:v400 withKey:v192];
  [v50 encodeObject:v442 withKey:v191];
  [v50 encodeObject:v441 withKey:v190];
  [v50 encodeObject:v440 withKey:v188];
  [v50 encodeObject:v439 withKey:v187];
  [v50 encodeObject:v438 withKey:v186];
  [v50 encodeObject:v437 withKey:v185];
  [v50 encodeObject:v436 withKey:v184];
  [v50 encodeObject:v435 withKey:v183];
  [v50 encodeObject:v434 withKey:v182];
  [v50 encodeObject:v433 withKey:v181];
  [v50 encodeObject:v432 withKey:v180];
  [v50 encodeObject:v431 withKey:v179];
  [v50 encodeObject:v430 withKey:v177];
  [v50 encodeObject:v429 withKey:v176];
  [v50 encodeObject:v428 withKey:v175];
  [v50 encodeObject:v427 withKey:v174];
  [v50 encodeObject:v426 withKey:v173];
  [v50 encodeObject:v425 withKey:v172];
  [v50 encodeObject:v424 withKey:v171];
  [v50 encodeObject:v423 withKey:v170];
  [v50 encodeObject:v422 withKey:v169];
  [v50 encodeObject:v421 withKey:v168];
  [v50 encodeObject:v420 withKey:v167];
  [v50 encodeObject:v419 withKey:v166];
  [v50 encodeObject:v418 withKey:v165];
  [v50 encodeObject:v417 withKey:v164];
  [v50 encodeObject:v416 withKey:v163];
  [v50 encodeObject:v415 withKey:v162];
  [v50 encodeObject:v414 withKey:v42];
  [v50 encodeObject:v413 withKey:v161];
  [v50 encodeObject:v412 withKey:v160];
  [v50 encodeObject:v411 withKey:v159];
  [v50 encodeObject:v410 withKey:v158];
  [v50 encodeObject:v409 withKey:v157];
  [v50 encodeObject:v408 withKey:v156];
  [v50 encodeObject:v407 withKey:v155];
  [v50 encodeObject:v406 withKey:v154];
  [v50 encodeObject:v405 withKey:v153];
  [v50 encodeObject:v404 withKey:v152];
  [v50 encodeObject:v403 withKey:v151];
  [v50 encodeObject:v402 withKey:v150];
  [v50 encodeObject:v401 withKey:v149];
  [v50 encodeObject:v399 withKey:v148];
  [v50 encodeObject:v398 withKey:v147];
  [v50 encodeObject:v397 withKey:v145];
  [v50 encodeObject:v43 withKey:v143];
  [v50 encodeObject:v396 withKey:v146];
  [v50 encodeObject:v395 withKey:v144];
  [v50 encodeObject:v394 withKey:v142];
  [v50 encodeObject:v393 withKey:v141];
  [v50 encodeObject:v392 withKey:v140];
  [v50 encodeObject:v391 withKey:v139];
  [v50 encodeObject:v390 withKey:v138];
  [v50 encodeObject:v389 withKey:v137];
  [v50 encodeObject:v388 withKey:v135];
  [v50 encodeObject:v387 withKey:v134];
  [v50 encodeObject:v386 withKey:v133];
  [v50 encodeObject:v385 withKey:v132];
  [v50 encodeObject:v384 withKey:v131];
  [v50 encodeObject:v383 withKey:v130];
  [v50 encodeObject:v382 withKey:v129];
  [v50 encodeObject:v381 withKey:v128];
  [v50 encodeObject:v380 withKey:v127];
  [v50 encodeObject:v379 withKey:v126];
  [v50 encodeObject:v378 withKey:v125];
  [v50 encodeObject:v377 withKey:v124];
  [v50 encodeObject:v376 withKey:v123];
  [v50 encodeObject:v375 withKey:v122];
  [v50 encodeObject:v374 withKey:v121];
  [v50 encodeObject:v373 withKey:v120];
  [v50 encodeObject:v372 withKey:v119];
  [v50 encodeObject:v371 withKey:v118];
  [v50 encodeObject:v370 withKey:v117];
  [v50 encodeObject:v369 withKey:v116];
  [v50 encodeObject:v368 withKey:v115];
  [v50 encodeObject:v367 withKey:v114];
  [v50 encodeObject:v366 withKey:v113];
  [v50 encodeObject:v365 withKey:v112];
  [v50 encodeObject:v364 withKey:v111];
  [v50 encodeObject:v363 withKey:v110];
  [v50 encodeObject:v362 withKey:v109];
  [v50 encodeObject:v361 withKey:v108];
  [v50 encodeObject:v360 withKey:v107];
  [v50 encodeObject:v359 withKey:v106];
  [v50 encodeObject:v357 withKey:v105];
  [v50 encodeObject:v356 withKey:v104];
  [v50 encodeObject:v355 withKey:v103];
  [v50 encodeObject:v354 withKey:v102];
  [v50 encodeObject:v353 withKey:v101];
  [v50 encodeObject:v352 withKey:v100];
  [v50 encodeObject:v351 withKey:v99];
  [v50 encodeObject:v350 withKey:v98];
  [v50 encodeObject:v349 withKey:v97];
  [v50 encodeObject:v348 withKey:v96];
  [v50 encodeObject:v347 withKey:v94];
  [v50 encodeObject:v358 withKey:v178];
  [v50 encodeObject:v346 withKey:v95];
  [v50 encodeObject:v345 withKey:v93];
  [v50 encodeObject:v344 withKey:v92];
  [v50 encodeObject:v343 withKey:v91];
  [v50 encodeObject:v342 withKey:v90];
  [v50 encodeObject:v341 withKey:v89];
  [v50 encodeObject:v340 withKey:v88];
  [v50 encodeObject:v339 withKey:v87];
  [v50 encodeObject:v338 withKey:v86];
  [v50 encodeObject:v337 withKey:v85];
  [v50 encodeObject:v336 withKey:v84];
  [v50 encodeObject:v335 withKey:v83];
  [v50 encodeObject:v334 withKey:v81];
  [v50 encodeObject:v333 withKey:v79];
  [v50 encodeObject:v332 withKey:v82];
  [v50 encodeObject:v331 withKey:v80];
  [v50 encodeObject:? withKey:?];
  [v50 encodeObject:? withKey:?];
  [v50 encodeObject:? withKey:?];
  [v50 encodeObject:? withKey:?];
  [v50 encodeObject:? withKey:?];
  [v50 endDictionary];
  v61 = [v50 data];
  v62 = [v61 copy];
  [v56 setAttributeData:v62];

  v63 = [v56 lastUsedDate];
  v64 = v63;
  if (v328)
  {
    v65 = v328;
  }

  else
  {
    v65 = v329;
  }

  if (v63)
  {
    v66 = v63;
  }

  else
  {
    v66 = v65;
  }

  [v56 setLastUsedDate:v66];

  if (v328 && v329)
  {
    v67 = [v328 laterDate:v329];
    [v56 setLastUsedDate:v67];
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (void)makeApplicationResult:(uint64_t)a1 dataclass:(NSObject *)a2 score:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B71B000, a2, OS_LOG_TYPE_ERROR, "Not processing app %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end