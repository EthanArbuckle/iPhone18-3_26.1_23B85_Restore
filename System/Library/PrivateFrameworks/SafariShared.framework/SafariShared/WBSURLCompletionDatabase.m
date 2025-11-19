@interface WBSURLCompletionDatabase
+ (BOOL)_isMatchURLString:(id)a3 equivalentToBaseURLString:(id)a4;
+ (BOOL)_matchIsNotURLMatchAndTitleLooksLikeURLForBookmarkAndHistoryCompletionMatch:(const void *)a3;
+ (BOOL)_matchMistookErrorTitleForPageTitleForBookmarkAndHistoryCompletionMatch:(const void *)a3;
+ (BOOL)_redirectionChainsOfCompletionMatchData:(id)a3 containURLString:(id)a4;
+ (BOOL)_shouldPreloadTopHit:(void *)a3 forTypedString:(id)a4 withSearchParameters:(id)a5;
+ (BOOL)_topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)a4 :(id)a5 DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>)a3 :RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch isOneOfManyUnremarkableMatchesInLocalHistoryMatches:inDomain:;
+ (BOOL)doesStringLookLikeURLHost:(id)a3;
+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_synthesizeURLMatchWithURLString:(id)a3 title:(id)a4 topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)a6 :(void *)a7 DefaultRefDerefTraits<SafariShared:(id)a8 :(double)a9 BookmarkAndHistoryCompletionMatch>>)a5 :(id)a10 RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch historyMatches:bookmarkMatches:typedString:timeNow:completionDataSource:;
+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_topHitFromBaseURLMatchForTopHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(BOOL *)a4 :(void *)a5 DefaultRefDerefTraits<SafariShared:(void *)a6 :(id)a7 BookmarkAndHistoryCompletionMatch>>)a3 :(id)a8 RawPtrTraits<SafariShared:(double)a9 :(id)a10 BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:;
+ (void)initializeURLCompletionOnMainThread;
- (WBSURLCompletionDataSource)dataSource;
- (WBSURLCompletionDatabase)init;
- (id).cxx_construct;
- (void)_getSortedMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 topHits:(void *)a5 historyMatches:(void *)a6 historyLimit:(unint64_t)a7 bookmarkMatches:(void *)a8 bookmarkLimit:(unint64_t)a9 searchParameters:(id)a10 prefixMatchesOnly:(BOOL)a11;
- (void)_getUnsortedFullTextMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 historyMatches:(void *)a5 bookmarkMatches:(void *)a6 dataTypes:(unsigned int)a7;
- (void)_getUnsortedPrefixMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 historyMatches:(void *)a5 bookmarkMatches:(void *)a6;
- (void)_removeMatchesThatMistookErrorTitleForPageTitleFromMatches:(void *)a3;
- (void)_removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:(void *)a3;
- (void)clearBookmarkMatchesCachesKeepingEmptyValues:(BOOL)a3;
- (void)clearHistoryMatchesCache;
- (void)clearMatchesCaches;
- (void)getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 topHits:(id *)a5 matches:(id *)a6 limit:(unint64_t)a7 forQueryID:(int64_t)a8 withSearchParameters:(id)a9;
@end

@implementation WBSURLCompletionDatabase

- (WBSURLCompletionDatabase)init
{
  v5.receiver = self;
  v5.super_class = WBSURLCompletionDatabase;
  v2 = [(WBSURLCompletionDatabase *)&v5 init];
  if (v2)
  {
    [objc_opt_class() initializeURLCompletionOnMainThread];
    v3 = v2;
  }

  return v2;
}

+ (void)initializeURLCompletionOnMainThread
{
  if (+[WBSURLCompletionDatabase initializeURLCompletionOnMainThread]::onceToken != -1)
  {
    +[WBSURLCompletionDatabase initializeURLCompletionOnMainThread];
  }
}

- (void)getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 topHits:(id *)a5 matches:(id *)a6 limit:(unint64_t)a7 forQueryID:(int64_t)a8 withSearchParameters:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v39 = v16;
  v18 = [[WBSURLCompletionUserTypedString alloc] initWithString:v15];
  v41 = 0;
  v42 = 0;
  if (a5)
  {
    v19 = &v45;
  }

  else
  {
    v19 = 0;
  }

  v40 = v18;
  [(WBSURLCompletionDatabase *)self _getSortedPrefixMatchesForTypedString:v18 filterResultsUsingProfileIdentifier:v16 topHits:v19 historyMatches:&v43 historyLimit:a7 bookmarkMatches:&v41 bookmarkLimit:a7 searchParameters:v17];
  v20 = HIDWORD(v42);
  if (HIDWORD(v42) + HIDWORD(v44) < a7)
  {
    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v43, 0);
    if (HIDWORD(v42) < a7)
    {
      WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v41, 0);
    }

    [(WBSURLCompletionDatabase *)self _getSortedFullTextMatchesForTypedString:v40 filterResultsUsingProfileIdentifier:v16 topHits:v19 historyMatches:&v43 historyLimit:a7 bookmarkMatches:&v41 bookmarkLimit:a7 searchParameters:v17];
    v20 = HIDWORD(v42);
  }

  if (v20)
  {
    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendRange<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(&v43, v41, &v41[v20]);
    v47 = compareCompletionMatches;
    v21 = 126 - 2 * __clz(HIDWORD(v44));
    v22 = HIDWORD(v44) ? v21 : 0;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,false>(v43, &v43[HIDWORD(v44)], &v47, v22, 1);
    if (HIDWORD(v44) > a7)
    {
      WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&v43, a7);
    }
  }

  v23 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    if (HIDWORD(v44))
    {
      v24 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:];
      }

      logMatches(&v43);
    }

    else
    {
      v25 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:];
      }
    }
  }

  if (a5)
  {
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:HIDWORD(v46)];
    *a5 = v26;
    if (HIDWORD(v46))
    {
      v27 = v45;
      v28 = 8 * HIDWORD(v46);
      do
      {
        v29 = [WBSURLCompletionDatabase _shouldPreloadTopHit:*v27 forTypedString:v15 withSearchParameters:v17];
        v30 = [WBSTopHitCompletionMatch alloc];
        v47 = *v27;
        *v27 = 0;
        v31 = [(WBSTopHitCompletionMatch *)v30 initWithBookmarkAndHistoryCompletionMatch:&v47 userInput:v15 forQueryID:a8 shouldPreload:v29];
        [v26 addObject:v31];

        v32 = v47;
        v47 = 0;
        if (v32)
        {
          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v32);
        }

        ++v27;
        v28 -= 8;
      }

      while (v28);
    }
  }

  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:HIDWORD(v44)];
  *a6 = v33;
  if (HIDWORD(v44))
  {
    v34 = v43;
    v35 = 8 * HIDWORD(v44);
    do
    {
      v36 = [WBSBookmarkAndHistoryCompletionMatch alloc];
      v47 = *v34;
      *v34 = 0;
      v37 = [(WBSBookmarkAndHistoryCompletionMatch *)v36 initWithBookmarkAndHistoryCompletionMatch:&v47 userInput:v15 forQueryID:a8];
      [v33 addObject:v37];

      v38 = v47;
      v47 = 0;
      if (v38)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v38);
      }

      ++v34;
      v35 -= 8;
    }

    while (v35);
  }

  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45);
}

+ (BOOL)doesStringLookLikeURLHost:(id)a3
{
  v3 = a3;
  if (([v3 safari_containsInteriorWhitespace] & 1) != 0 || (v4 = objc_msgSend(v3, "safari_firstLocationOfPeriodOrHomoglyphForPeriod"), v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4];
    v5 = ![v6 length] || (objc_msgSend(v6, "containsString:", @"/") & 1) == 0;
  }

  return v5;
}

+ (BOOL)_shouldPreloadTopHit:(void *)a3 forTypedString:(id)a4 withSearchParameters:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = SafariShared::BookmarkAndHistoryCompletionMatch::data(a3);
    v10 = [v9 shouldPreload];

    if (v10)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __85__WBSURLCompletionDatabase__shouldPreloadTopHit_forTypedString_withSearchParameters___block_invoke;
      v19[3] = &unk_1E7FCB1E0;
      v22 = a3;
      v11 = v7;
      v20 = v11;
      v21 = v8;
      v12 = MEMORY[0x1BFB13CE0](v19);
      v13 = *(a3 + 1);
      if (v13 <= 8 && ((1 << v13) & 0x1D8) != 0 || (SafariShared::BookmarkAndHistoryCompletionMatch::originalURLString(a3), v15 = objc_claimAutoreleasedReturnValue(), v16 = [[WBSURLCompletionUserTypedString alloc] initWithString:v11], v18 = SafariShared::computeURLMatchLocation(v15, &v16->super.isa, v17), v16, v15, v13 != v18))
      {
        LOBYTE(a3) = v12[2](v12);
      }

      else
      {
        LOBYTE(a3) = 1;
      }
    }

    else
    {
      LOBYTE(a3) = 0;
    }
  }

  return a3;
}

BOOL __85__WBSURLCompletionDatabase__shouldPreloadTopHit_forTypedString_withSearchParameters___block_invoke(uint64_t a1)
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(a1 + 48));
  if ([v2 matchesAutocompleteTrigger:*(a1 + 32) isStrengthened:{objc_msgSend(*(a1 + 40), "strengthenAutocompleteTriggerExtensionMatching")}])
  {
    v3 = *(*(a1 + 48) + 64) >= 1.0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)clearBookmarkMatchesCachesKeepingEmptyValues:(BOOL)a3
{
  v3 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    fullTextBookmarkMatchesCacheString = self->_fullTextBookmarkMatchesCacheString;
    self->_fullTextBookmarkMatchesCacheString = 0;

    WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_fullTextBookmarkMatchesCache, 0);
LABEL_9:
    prefixBookmarkMatchesCacheString = self->_prefixBookmarkMatchesCacheString;
    self->_prefixBookmarkMatchesCacheString = 0;

    goto LABEL_10;
  }

  [WBSURLCompletionDatabase clearBookmarkMatchesCachesKeepingEmptyValues:];
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (self->_fullTextBookmarkMatchesCache.m_size)
  {
    v6 = self->_fullTextBookmarkMatchesCacheString;
    self->_fullTextBookmarkMatchesCacheString = 0;
  }

  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_fullTextBookmarkMatchesCache, 0);
  if (self->_prefixBookmarkMatchesCache.m_size)
  {
    goto LABEL_9;
  }

LABEL_10:
  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_prefixBookmarkMatchesCache, 0);
}

- (void)clearHistoryMatchesCache
{
  v3 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [WBSURLCompletionDatabase clearHistoryMatchesCache];
  }

  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_fullTextHistoryMatchesCache, 0);
  fullTextHistoryMatchesCacheString = self->_fullTextHistoryMatchesCacheString;
  self->_fullTextHistoryMatchesCacheString = 0;

  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_prefixHistoryMatchesCache, 0);
  prefixHistoryMatchesCacheString = self->_prefixHistoryMatchesCacheString;
  self->_prefixHistoryMatchesCacheString = 0;

  prefixHistoryMatchesCacheProfileIdentifier = self->_prefixHistoryMatchesCacheProfileIdentifier;
  self->_prefixHistoryMatchesCacheProfileIdentifier = 0;

  fullTextHistoryMatchesCacheStringProfileIdentifier = self->_fullTextHistoryMatchesCacheStringProfileIdentifier;
  self->_fullTextHistoryMatchesCacheStringProfileIdentifier = 0;
}

- (void)clearMatchesCaches
{
  [(WBSURLCompletionDatabase *)self clearBookmarkMatchesCaches];

  [(WBSURLCompletionDatabase *)self clearHistoryMatchesCache];
}

+ (BOOL)_matchIsNotURLMatchAndTitleLooksLikeURLForBookmarkAndHistoryCompletionMatch:(const void *)a3
{
  v3 = *(a3 + 1);
  v4 = v3 > 8;
  v5 = (1 << v3) & 0x1C8;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v8 = SafariShared::BookmarkAndHistoryCompletionMatch::title(a3);
  v9 = [WBSURLCompletionDatabase doesStringLookLikeURLHost:v8]&& *(a3 + 2) == 0;

  return v9;
}

+ (BOOL)_matchMistookErrorTitleForPageTitleForBookmarkAndHistoryCompletionMatch:(const void *)a3
{
  v3 = *(a3 + 1);
  if (v3 != 4)
  {
    v5 = SafariShared::BookmarkAndHistoryCompletionMatch::data(a3);
    if ([v5 lastVisitWasFailure])
    {
      if (v3 <= 0xA)
      {
LABEL_5:
        v4 = 0x1C8u >> v3;
LABEL_11:

        return v4 & 1;
      }
    }

    else
    {
      v6 = [v5 visitWasClientError];
      if (v3 < 0xB)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        goto LABEL_5;
      }
    }

    LOBYTE(v4) = 0;
    goto LABEL_11;
  }

  LOBYTE(v4) = 0;
  return v4 & 1;
}

+ (BOOL)_redirectionChainsOfCompletionMatchData:(id)a3 containURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 entries];
    v9 = [v8 count];
    do
    {
      v10 = --v9 > 0;
      if (v9 <= 0)
      {
        break;
      }

      v11 = [v8 objectAtIndexedSubscript:v9 & 0x7FFFFFFF];
      v12 = [v11 url];
      v13 = [a1 _isMatchURLString:v12 equivalentToBaseURLString:v7];
    }

    while ((v13 & 1) == 0);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_topHitFromBaseURLMatchForTopHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(BOOL *)a4 :(void *)a5 DefaultRefDerefTraits<SafariShared:(void *)a6 :(id)a7 BookmarkAndHistoryCompletionMatch>>)a3 :(id)a8 RawPtrTraits<SafariShared:(double)a9 :(id)a10 BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:
{
  v16 = v10;
  v109 = *MEMORY[0x1E69E9840];
  v17 = a7;
  v18 = a8;
  v19 = a10;
  if (!*a3.m_ptr || !(*(a5 + 3) | *(a6 + 3)))
  {
    *v16 = 0;
    goto LABEL_14;
  }

  v101 = [v17[1] safari_bestURLForUserTypedString];
  if (!v101 || ([v101 safari_userVisibleString], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "localizedCaseInsensitiveContainsString:", v17[1]), v20, (v21 & 1) == 0))
  {
    *v16 = 0;
    goto LABEL_13;
  }

  v100 = [v101 path];
  if ([v100 length] && !objc_msgSend(v100, "isEqualToString:", @"/") || (objc_msgSend(v101, "safari_hasCharactersBeyondPath") & 1) != 0 || objc_msgSend(v17[1], "hasSuffix:", @"?"))
  {
    *v16 = 0;
    goto LABEL_11;
  }

  v23 = MEMORY[0x1E695DFF8];
  v24 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(*a3.m_ptr);
  v25 = [v23 safari_URLWithUserTypedString:v24];

  v99 = v25;
  if (!v25)
  {
    v38 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(*a3.m_ptr);
      [WBSURLCompletionDatabase _topHitFromBaseURLMatchForTopHitFromMatches:v39 shouldReplaceTopHitFromMatches:buf historyMatches:v38 bookmarkMatches:? typedString:? searchParameters:? timeNow:? completionDataSource:?];
    }

    *v16 = 0;
    goto LABEL_43;
  }

  v98 = [v25 path];
  if (*(*a3.m_ptr + 8) != 9 || ![v98 length] || objc_msgSend(v98, "isEqualToString:", @"/") && !objc_msgSend(v25, "safari_hasCharactersBeyondPath"))
  {
    goto LABEL_41;
  }

  v26 = [v25 host];
  if (![v26 length])
  {

    goto LABEL_41;
  }

  v27 = [v99 isFileURL];

  if (v27)
  {
LABEL_41:
    *v16 = 0;
    goto LABEL_42;
  }

  v28 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:@"/" relativeToURL:v99];
  v29 = [v28 safari_originalDataAsString];

  v97 = v29;
  if ([v29 safari_hasCaseInsensitivePrefix:@"feed:"] && (objc_msgSend(v17[1], "safari_hasCaseInsensitivePrefix:", @"feed:") & 1) == 0)
  {
    v30 = [v29 stringByReplacingCharactersInRange:0 withString:{5, @"https:"}];

    v97 = v30;
  }

  v31 = objc_opt_class();
  v32 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a3.m_ptr);
  v33 = [v31 _redirectionChainsOfCompletionMatchData:v32 containURLString:v97];

  if (v33)
  {
    v34 = SafariShared::BookmarkAndHistoryCompletionMatch::title(*a3.m_ptr);
    v35 = v34;
    if (!v34)
    {
      v35 = [v99 safari_userVisibleHost];
    }

    v36 = *a3.m_ptr;
    if (*a3.m_ptr)
    {
      ++*v36;
    }

    v107 = v36;
    [a1 _synthesizeURLMatchWithURLString:v97 title:v35 topHitFromMatches:&v107 historyMatches:a5 bookmarkMatches:a6 typedString:v17 timeNow:a9 completionDataSource:v19];
    v37 = v107;
    v107 = 0;
    if (v37)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v37);
    }

    if (!v34)
    {
    }

    if (*v16)
    {
      logCompletionMatchToDebugChannel(&cfstr_WillReplaceTop.isa, *a3.m_ptr);
      goto LABEL_36;
    }
  }

  LODWORD(v40) = *(a5 + 3);
  if (!v40)
  {
LABEL_57:
    if (!*(a6 + 3))
    {
LABEL_66:
      if (v40)
      {
        v54 = 0;
        do
        {
          v55 = *(*a5 + 8 * v54);
          if (v55)
          {
            ++*v55;
          }

          v96 = v55;
          if (*a3.m_ptr == v55)
          {
            v63 = 12;
          }

          else
          {
            v56 = objc_opt_class();
            v57 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v96);
            LODWORD(v56) = [v56 _redirectionChainsOfCompletionMatchData:v57 containURLString:v97];

            if (v56)
            {
              v58 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
              {
                [WBSURLCompletionDatabase _topHitFromBaseURLMatchForTopHitFromMatches:buf shouldReplaceTopHitFromMatches:&buf[1] historyMatches:v58 bookmarkMatches:? typedString:? searchParameters:? timeNow:? completionDataSource:?];
              }

              v59 = SafariShared::BookmarkAndHistoryCompletionMatch::title(v96);
              v60 = v59;
              if (!v59)
              {
                v93 = [v99 safari_userVisibleHost];
                v60 = v93;
              }

              v61 = *a3.m_ptr;
              if (*a3.m_ptr)
              {
                ++*v61;
              }

              v106 = v61;
              [a1 _synthesizeURLMatchWithURLString:v97 title:v60 topHitFromMatches:&v106 historyMatches:a5 bookmarkMatches:a6 typedString:v17 timeNow:a9 completionDataSource:v19];
              v62 = v106;
              v106 = 0;
              if (v62)
              {
                WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v62);
              }

              if (!v59)
              {
              }

              v63 = 1;
            }

            else
            {
              v63 = 0;
            }
          }

          if (v96)
          {
            WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v96);
          }

          if (v63 != 12 && v63)
          {
            goto LABEL_123;
          }
        }

        while (++v54 < *(a5 + 3));
      }

      v64 = objc_opt_class();
      v65 = *a3.m_ptr;
      if (*a3.m_ptr)
      {
        ++*v65;
      }

      v105 = v65;
      v66 = [v99 host];
      v67 = [v64 _topHitFromMatches:&v105 isOneOfManyUnremarkableMatchesInLocalHistoryMatches:a5 inDomain:v66];

      v68 = v105;
      v105 = 0;
      if (v68)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v68);
      }

      if (!v67)
      {
        goto LABEL_102;
      }

      v69 = [v99 safari_userVisibleHost];
      v70 = *a3.m_ptr;
      if (*a3.m_ptr)
      {
        ++*v70;
      }

      v104 = v70;
      [a1 _synthesizeURLMatchWithURLString:v97 title:v69 topHitFromMatches:&v104 historyMatches:a5 bookmarkMatches:a6 typedString:v17 timeNow:a9 completionDataSource:v19];
      v71 = v104;
      v104 = 0;
      if (v71)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v71);
      }

      if (!*v16)
      {
LABEL_102:
        *v16 = 0;
        goto LABEL_123;
      }

      v72 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        +[WBSURLCompletionDatabase _topHitFromBaseURLMatchForTopHitFromMatches:shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:];
      }

LABEL_36:
      *a4 = 1;
      goto LABEL_123;
    }

    v48 = 0;
    v49 = -8;
    while (1)
    {
      v93 = v49;
      v50 = *(*a6 + 8 * v48);
      if (v50)
      {
        ++*v50;
      }

      *v16 = v50;
      v51 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v50);
      v52 = [v51 originalURLString];
      v95 = [a1 _isMatchURLString:v52 equivalentToBaseURLString:v97];

      if (v95)
      {
        break;
      }

      v53 = *v16;
      *v16 = 0;
      if (v53)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v53);
      }

      ++v48;
      v49 = v93 - 8;
      if (v48 >= *(a6 + 3))
      {
        LODWORD(v40) = *(a5 + 3);
        goto LABEL_66;
      }
    }

    if (!v48)
    {
      goto LABEL_123;
    }

    v73 = *(a6 + 3);
    if (v48 < v73)
    {
      v74 = *a6;
      v75 = (*a6 + 8 * v48);
      v76 = *v75;
      *v75 = 0;
      if (v76)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v76);
        v73 = *(a6 + 3);
      }

      memmove(v75, v75 + 1, v93 + *a6 + 8 * v73 - v74);
      v77 = *(a6 + 2);
      v78 = (*(a6 + 3) - 1);
      *(a6 + 3) = v78;
      if (v78 == v77)
      {
        v79 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a6, v78 + 1, v16);
        LODWORD(v78) = *(a6 + 3);
        v16 = v79;
      }

      v80 = *a6;
      memmove((*a6 + 8), *a6, 8 * v78);
      v81 = *v16;
      if (*v16)
      {
        ++*v81;
      }

      *v80 = v81;
      ++*(a6 + 3);
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  v41 = 0;
  v42 = -8;
  while (1)
  {
    v92 = v42;
    v43 = *(*a5 + 8 * v41);
    if (v43)
    {
      ++*v43;
    }

    *buf = v43;
    v93 = v43;
    v44 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v43);
    v45 = [v44 originalURLString];
    v94 = [a1 _isMatchURLString:v45 equivalentToBaseURLString:v97];

    if (v94)
    {
      break;
    }

LABEL_53:
    if (v93)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v93);
    }

    if (v94)
    {
      goto LABEL_123;
    }

    ++v41;
    v40 = *(a5 + 3);
    v42 = v92 - 8;
    if (v41 >= v40)
    {
      goto LABEL_57;
    }
  }

  v91 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v93);
  if ([v91 lastVisitWasFailure])
  {

LABEL_52:
    *v16 = 0;
    goto LABEL_53;
  }

  v46 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v93);
  v47 = [v46 visitWasClientError];

  if (v47)
  {
    goto LABEL_52;
  }

  if (!v41)
  {
    goto LABEL_122;
  }

  v82 = *(a5 + 3);
  if (v41 >= v82)
  {
LABEL_124:
    __break(1u);
    return v22;
  }

  v83 = *a5;
  v84 = (*a5 + 8 * v41);
  v85 = *v84;
  *v84 = 0;
  if (v85)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v85);
    v82 = *(a5 + 3);
  }

  memmove(v84, v84 + 1, *a5 + 8 * v82 - v83 + v92);
  v86 = *(a5 + 2);
  v87 = (*(a5 + 3) - 1);
  *(a5 + 3) = v87;
  if (v87 == v86)
  {
    v88 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a5, v87 + 1, buf);
    LODWORD(v87) = *(a5 + 3);
  }

  else
  {
    v88 = buf;
  }

  v89 = *a5;
  memmove((*a5 + 8), *a5, 8 * v87);
  v90 = *v88;
  if (*v88)
  {
    ++*v90;
  }

  *v89 = v90;
  ++*(a5 + 3);
  v93 = *buf;
LABEL_122:
  *v16 = v93;
LABEL_123:

LABEL_42:
LABEL_43:

LABEL_11:
LABEL_13:

LABEL_14:
  return v22;
}

+ (BOOL)_isMatchURLString:(id)a3 equivalentToBaseURLString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v7 == [v6 length] - 1)
  {
    v8 = [v6 hasPrefix:v5];
  }

  else
  {
    v8 = [v6 isEqualToString:v5];
  }

  v9 = v8;

  return v9;
}

+ (BOOL)_topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)a4 :(id)a5 DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>)a3 :RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch isOneOfManyUnremarkableMatchesInLocalHistoryMatches:inDomain:
{
  v7 = a5;
  v8 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a3.m_ptr);
  v9 = [v8 containsBookmark];

  if ((v9 & 1) == 0 && *(a4 + 3))
  {
    v10 = 0;
    v11 = *(*a3.m_ptr + 48);
    while (1)
    {
      v12 = *(*a4 + 8 * v10);
      if (!v12)
      {
        break;
      }

      ++*v12;
      if (*a3.m_ptr != v12)
      {
        goto LABEL_6;
      }

LABEL_9:
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v12);
LABEL_10:
      if (++v10 >= *(a4 + 3))
      {
        goto LABEL_14;
      }
    }

    if (!*a3.m_ptr)
    {
      goto LABEL_10;
    }

LABEL_6:
    v13 = v11 - *(v12 + 48);
    if (v13 >= 0.0)
    {
      v14 = v13 <= 0.5;
      if (v13 > 0.5 || (SafariShared::BookmarkAndHistoryCompletionMatch::originalURLString(v12), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 containsString:v7], v15, (v16 & 1) != 0))
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v12);
        goto LABEL_15;
      }
    }

    goto LABEL_9;
  }

LABEL_14:
  v14 = 0;
LABEL_15:

  return v14;
}

+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_synthesizeURLMatchWithURLString:(id)a3 title:(id)a4 topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)a6 :(void *)a7 DefaultRefDerefTraits<SafariShared:(id)a8 :(double)a9 BookmarkAndHistoryCompletionMatch>>)a5 :(id)a10 RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch historyMatches:bookmarkMatches:typedString:timeNow:completionDataSource:
{
  v17 = v10;
  v18 = a3;
  v19 = a4;
  v20 = a8;
  v21 = a10;
  v22 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a5.m_ptr);
  v23 = [v21 fakeBookmarkMatchDataWithURLString:v18 title:v19 shouldPreload:{objc_msgSend(v22, "shouldPreload")}];

  if (v23 && (v33 = 0, v34 = 0, (matched = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(v23, v20, &v34, &v33)) != 0))
  {
    SafariShared::BookmarkAndHistoryCompletionMatch::create(v23, 0, matched, v33, v34, &v32, a9);
    v25 = v32;
    *v17 = v32;
    v26 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v25);
    if (![v26 containsBookmark])
    {
      a7 = a6;
    }

    v27 = *(a7 + 3);
    if (v27 == *(a7 + 2))
    {
      v28 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a7, v27 + 1, v17);
      LODWORD(v27) = *(a7 + 3);
      v17 = v28;
    }

    v29 = *a7;
    memmove((*a7 + 8), *a7, 8 * v27);
    v30 = *v17;
    if (*v17)
    {
      ++*v30;
    }

    *v29 = v30;
    ++*(a7 + 3);
  }

  else
  {
    *v17 = 0;
  }

  return v31;
}

- (void)_removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:(void *)a3
{
  *&v18[5] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v4 = *a3;
  v5 = *(a3 + 3);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      if ([objc_opt_class() _matchIsNotURLMatchAndTitleLooksLikeURLForBookmarkAndHistoryCompletionMatch:*v4])
      {
        v7 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = SafariShared::BookmarkAndHistoryCompletionMatch::title(*v4);
          [(WBSURLCompletionDatabase *)v8 _removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:buf, v18, v7];
        }
      }

      else
      {
        v9 = HIDWORD(v16);
        if (HIDWORD(v16) == v16)
        {
          WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v15, v4);
        }

        else
        {
          v10 = v15;
          v11 = *v4;
          if (*v4)
          {
            ++*v11;
          }

          v10[v9] = v11;
          HIDWORD(v16) = v9 + 1;
        }
      }

      ++v4;
      v6 -= 8;
    }

    while (v6);
    v4 = *a3;
    v12 = v15;
    LODWORD(v5) = *(a3 + 3);
    v13 = v16;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a3 = v12;
  v15 = v4;
  v14 = *(a3 + 2);
  *(a3 + 1) = v13;
  v16 = __PAIR64__(v5, v14);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15);
}

- (void)_removeMatchesThatMistookErrorTitleForPageTitleFromMatches:(void *)a3
{
  v13 = 0;
  v14 = 0;
  v4 = *a3;
  v5 = *(a3 + 3);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      if (([objc_opt_class() _matchMistookErrorTitleForPageTitleForBookmarkAndHistoryCompletionMatch:*v4] & 1) == 0)
      {
        v7 = HIDWORD(v14);
        if (HIDWORD(v14) == v14)
        {
          WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v13, v4);
        }

        else
        {
          v8 = v13;
          v9 = *v4;
          if (*v4)
          {
            ++*v9;
          }

          v8[v7] = v9;
          HIDWORD(v14) = v7 + 1;
        }
      }

      ++v4;
      v6 -= 8;
    }

    while (v6);
    v4 = *a3;
    v10 = v13;
    LODWORD(v5) = *(a3 + 3);
    v11 = v14;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *a3 = v10;
  v13 = v4;
  v12 = *(a3 + 2);
  *(a3 + 1) = v11;
  v14 = __PAIR64__(v5, v12);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13);
}

- (void)_getSortedMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 topHits:(void *)a5 historyMatches:(void *)a6 historyLimit:(unint64_t)a7 bookmarkMatches:(void *)a8 bookmarkLimit:(unint64_t)a9 searchParameters:(id)a10 prefixMatchesOnly:(BOOL)a11
{
  v118 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v103 = a4;
  v100 = v16;
  v101 = a10;
  Current = CFAbsoluteTimeGetCurrent();
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  if (a11)
  {
    [(WBSURLCompletionDatabase *)self _getUnsortedPrefixMatchesForTypedString:v16 filterResultsUsingProfileIdentifier:v103 historyMatches:&v110 bookmarkMatches:&v108];
    v18 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    v19 = v16[1];
    v20 = CFAbsoluteTimeGetCurrent();
    *buf = 138740739;
    *&buf[4] = v19;
    v113 = 2048;
    *v114 = (v20 - Current) * 1000.0;
    *&v114[8] = 1024;
    v115 = HIDWORD(v111);
    v116 = 1024;
    v117 = HIDWORD(v109);
    v21 = "Unsorted word prefix match for typed string %{sensitive}@ took %.3f milliseconds, found %d history matches, %d bookmark matches";
    goto LABEL_122;
  }

  v22 = *(a6 + 3);
  if (v22)
  {
    v110 = *a6;
    LODWORD(v111) = *(a6 + 2);
    HIDWORD(v111) = v22;
    *a6 = 0;
    *(a6 + 1) = 0;
    if (a5 && *(a5 + 3))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(*a5 + 8 * v24));
        v26 = [v25 containsBookmark];

        v27 = *(a5 + 3);
        if ((v26 & 1) == 0)
        {
          if (v24 >= v27)
          {
            __break(0xC471u);
            JUMPOUT(0x1BB870994);
          }

          v28 = *a5;
          v29 = HIDWORD(v111);
          if (HIDWORD(v111) == v111)
          {
            WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v110, v28 + v23);
            v27 = *(a5 + 3);
          }

          else
          {
            v30 = v110;
            v31 = *(v28 + 8 * v24);
            if (v31)
            {
              ++*v31;
            }

            v30[v29] = v31;
            HIDWORD(v111) = v29 + 1;
          }
        }

        ++v24;
        v23 += 8;
      }

      while (v24 < v27);
    }

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(a8 + 3);
  if (v33)
  {
    v34 = v108;
    v108 = *a8;
    *a8 = v34;
    v35 = v109;
    LODWORD(v109) = *(a8 + 2);
    HIDWORD(v109) = v33;
    *(a8 + 1) = v35;
    if (a5 && *(a5 + 3))
    {
      v36 = 0;
      for (i = 0; i < v40; ++i)
      {
        v38 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(*a5 + 8 * i));
        v39 = [v38 containsBookmark];

        v40 = *(a5 + 3);
        if (v39)
        {
          if (i >= v40)
          {
            __break(0xC471u);
            goto LABEL_126;
          }

          v41 = *a5;
          v42 = HIDWORD(v109);
          if (HIDWORD(v109) == v109)
          {
            WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v108, v41 + v36);
            v40 = *(a5 + 3);
          }

          else
          {
            v43 = v108;
            v44 = *(v41 + 8 * i);
            if (v44)
            {
              ++*v44;
            }

            v43[v42] = v44;
            HIDWORD(v109) = v42 + 1;
          }
        }

        v36 += 8;
      }
    }
  }

  else
  {
    v32 = v32 | 2;
  }

  [(WBSURLCompletionDatabase *)self _getUnsortedFullTextMatchesForTypedString:v16 filterResultsUsingProfileIdentifier:v103 historyMatches:&v110 bookmarkMatches:&v108 dataTypes:v32];
  v18 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v98 = v16[1];
    v99 = CFAbsoluteTimeGetCurrent();
    *buf = 138740739;
    *&buf[4] = v98;
    v113 = 2048;
    *v114 = (v99 - Current) * 1000.0;
    *&v114[8] = 1024;
    v115 = HIDWORD(v111);
    v116 = 1024;
    v117 = HIDWORD(v109);
    v21 = "Unsorted URL match for typed string %{sensitive}@ took %.3f milliseconds, found %d history matches, %d bookmark matches";
LABEL_122:
    _os_log_debug_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEBUG, v21, buf, 0x22u);
  }

LABEL_33:

  [(WBSURLCompletionDatabase *)self _removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:&v110];
  [(WBSURLCompletionDatabase *)self _removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:&v108];
  [(WBSURLCompletionDatabase *)self _removeMatchesThatMistookErrorTitleForPageTitleFromMatches:&v110];
  if (a7 + 1 < HIDWORD(v111))
  {
    v45 = a7 + 1;
  }

  else
  {
    v45 = HIDWORD(v111);
  }

  *buf = compareCompletionMatches;
  if (v45)
  {
    std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v110, &v110[v45], &v110[HIDWORD(v111)], buf);
  }

  v46 = a9;
  if (a9 + 1 < HIDWORD(v109))
  {
    v47 = a9 + 1;
  }

  else
  {
    v47 = HIDWORD(v109);
  }

  *buf = compareCompletionMatches;
  if (v47)
  {
    std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v108, &v108[v47], &v108[HIDWORD(v109)], buf);
  }

  v48 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    if (HIDWORD(v111))
    {
      v49 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase _getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:];
      }

      logMatches(&v110);
    }

    if (HIDWORD(v109))
    {
      v50 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase _getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:];
      }

      logMatches(&v108);
    }
  }

  if (a5)
  {
    v51 = v16;
    v52 = v101;
    if (v51[8])
    {
      firstTopHitCandidate(&v110, v51, v52);
      v54 = v53;
      firstTopHitCandidate(&v108, v51, v52);
      v56 = v55;
      v57 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        logCompletionMatchToDebugChannel(&cfstr_HistorymatchCa.isa, v54);
        logCompletionMatchToDebugChannel(&cfstr_BookmarkmatchC.isa, v56);
      }

      if (v54)
      {
        if (v56)
        {
          ++*v54;
          ++*v56;
          if (SafariShared::BookmarkAndHistoryCompletionMatch::compare(v54, v56) >= 0)
          {
            v58 = v56;
          }

          else
          {
            v58 = v54;
          }

          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v56);
          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v54);
          v56 = v58;
        }

        else
        {
          v56 = v54;
        }
      }
    }

    else
    {
      v56 = 0;
    }

    *buf = v56;
    v107 = 0;
    v59 = objc_opt_class();
    v60 = *buf;
    if (*buf)
    {
      ++**buf;
    }

    v105 = v60;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v62 = WeakRetained;
    if (v59)
    {
      [v59 _topHitFromBaseURLMatchForTopHitFromMatches:&v105 shouldReplaceTopHitFromMatches:&v107 historyMatches:&v110 bookmarkMatches:&v108 typedString:v51 searchParameters:v52 timeNow:Current completionDataSource:WeakRetained];
    }

    else
    {
      v106 = 0;
    }

    v63 = v105;
    v105 = 0;
    if (v63)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v63);
    }

    if (v106)
    {
      v104 = v106;
      logCompletionMatchToDebugChannel(&cfstr_BaseurlTophit.isa, v106);
      if (v107 == 1)
      {
        *buf = 0;
      }
    }

    else
    {
      v104 = 0;
    }

    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a5, 0);
    v64 = v104;
    if (v104)
    {
      v65 = *(a5 + 3);
      if (v65 == *(a5 + 2))
      {
        WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SafariShared::BookmarkAndHistoryCompletionMatch*&>(a5, &v104);
      }

      else
      {
        v66 = *a5;
        ++*v104;
        *(v66 + 8 * v65) = v64;
        *(a5 + 3) = v65 + 1;
      }
    }

    v67 = *buf;
    if (*buf)
    {
      v68 = *(a5 + 3);
      if (v68 == *(a5 + 2))
      {
        WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SafariShared::BookmarkAndHistoryCompletionMatch*&>(a5, buf);
      }

      else
      {
        v69 = *a5;
        ++**buf;
        *(v69 + 8 * v68) = v67;
        *(a5 + 3) = v68 + 1;
      }
    }

    if (*(a5 + 3))
    {
      v70 = 0;
      while (1)
      {
        v71 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(*a5 + 8 * v70));
        v72 = [v71 containsBookmark];

        v73 = *(a5 + 3);
        if (v70 >= v73)
        {
          break;
        }

        if (v72)
        {
          v74 = &v108;
        }

        else
        {
          v74 = &v110;
        }

        v75 = *(v74 + 3);
        if (v75)
        {
          v76 = *v74;
          v77 = *(*a5 + 8 * v70);
          v78 = **v74;
          if (v78 == v77)
          {
            v79 = 0;
LABEL_96:
            v80 = &v76[v79];
            *v80 = 0;
            if (v77)
            {
              WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v78);
              v75 = *(v74 + 3);
            }

            memmove(v80, v80 + 1, &(*v74)[v75] - (v80 + 1));
            --*(v74 + 3);
            v73 = *(a5 + 3);
          }

          else
          {
            v79 = 0;
            while (v75 - 1 != v79)
            {
              v78 = v76[++v79];
              if (v78 == v77)
              {
                goto LABEL_96;
              }
            }
          }
        }

        if (++v70 >= v73)
        {
          goto LABEL_100;
        }
      }

      __break(0xC471u);
LABEL_126:
      JUMPOUT(0x1BB87098CLL);
    }

LABEL_100:
    v81 = v106;
    v106 = 0;
    if (v81)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v81);
    }
  }

  if (HIDWORD(v111) >= a7)
  {
    v82 = a7;
  }

  else
  {
    v82 = HIDWORD(v111);
  }

  if (HIDWORD(v111) > a7)
  {
    v83 = &v110[v82];
    v84 = 8 * HIDWORD(v111) - 8 * v82;
    do
    {
      v85 = *v83;
      *v83 = 0;
      if (v85)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v85);
      }

      ++v83;
      v84 -= 8;
    }

    while (v84);
  }

  HIDWORD(v111) = v82;
  v86 = v108;
  if (HIDWORD(v109) < a9)
  {
    v46 = HIDWORD(v109);
  }

  if (HIDWORD(v109) > a9)
  {
    v87 = &v108[v46];
    v88 = 8 * HIDWORD(v109) - 8 * v46;
    do
    {
      v89 = *v87;
      *v87 = 0;
      if (v89)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v89);
      }

      ++v87;
      v88 -= 8;
    }

    while (v88);
    LODWORD(v82) = HIDWORD(v111);
    v86 = v108;
  }

  v90 = *a6;
  *a6 = v110;
  v110 = v90;
  v91 = *(a6 + 1);
  *(a6 + 2) = v111;
  *(a6 + 3) = v82;
  v111 = v91;
  v92 = *a8;
  *a8 = v86;
  v108 = v92;
  v93 = *(a8 + 1);
  *(a8 + 2) = v109;
  *(a8 + 3) = v46;
  v109 = v93;
  v94 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
  {
    v95 = CFAbsoluteTimeGetCurrent();
    v96 = *(a6 + 3);
    v97 = *(a8 + 3);
    *buf = 134218496;
    *&buf[4] = (v95 - Current) * 1000.0;
    v113 = 1024;
    *v114 = v96;
    *&v114[4] = 1024;
    *&v114[6] = v97;
    _os_log_debug_impl(&dword_1BB6F3000, v94, OS_LOG_TYPE_DEBUG, "Final sorted auto-complete query took %.3f milliseconds, found %d history matches, %d bookmark matches", buf, 0x18u);
  }

  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v108);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v110);
}

- (void)_getUnsortedFullTextMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 historyMatches:(void *)a5 bookmarkMatches:(void *)a6 dataTypes:(unsigned int)a7
{
  v12 = a3;
  v37 = a4;
  if ((a7 & 3) != 0)
  {
    v36 = self->_fullTextHistoryMatchesCacheString;
    m_buffer = 0;
    v51 = 0;
    if (a7)
    {
      m_buffer = self->_fullTextHistoryMatchesCache.m_buffer;
      v51 = *&self->_fullTextHistoryMatchesCache.var0;
      self->_fullTextHistoryMatchesCache.m_buffer = 0;
      *&self->_fullTextHistoryMatchesCache.var0 = 0;
      v13 = [v12[1] copy];
      fullTextHistoryMatchesCacheString = self->_fullTextHistoryMatchesCacheString;
      self->_fullTextHistoryMatchesCacheString = v13;
    }

    v15 = self->_fullTextBookmarkMatchesCacheString;
    v48 = 0;
    v49 = 0;
    v35 = v15;
    if ((a7 & 2) != 0)
    {
      v48 = self->_fullTextBookmarkMatchesCache.m_buffer;
      v49 = *&self->_fullTextBookmarkMatchesCache.var0;
      self->_fullTextBookmarkMatchesCache.m_buffer = 0;
      *&self->_fullTextBookmarkMatchesCache.var0 = 0;
      v16 = [v12[1] copy];
      fullTextBookmarkMatchesCacheString = self->_fullTextBookmarkMatchesCacheString;
      self->_fullTextBookmarkMatchesCacheString = v16;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v19 = [v12[1] safari_hasPrefix:v15];
    if ([(NSString *)self->_fullTextHistoryMatchesCacheStringProfileIdentifier isEqualToString:v37])
    {
      v21 = [v12[1] safari_hasPrefix:v36];
    }

    else
    {
      v21 = 0;
    }

    if ((v19 & ((a7 & 2) >> 1)) == 1)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
      }

      if (HIDWORD(v49))
      {
        v23 = 0;
        do
        {
          recordItemIfFullTextMatch(v48[v23++], v12, a6, &self->_fullTextBookmarkMatchesCache, Current);
        }

        while (v23 < HIDWORD(v49));
      }
    }

    if (a7 & v21)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
      }

      if (HIDWORD(v51))
      {
        v25 = 0;
        do
        {
          recordItemIfFullTextMatch(m_buffer[v25++], v12, a5, &self->_fullTextHistoryMatchesCache, Current);
        }

        while (v25 < HIDWORD(v51));
      }
    }

    v26 = (v19 ^ 1) & ((a7 & 2) >> 1);
    v27 = a7 & (v21 ^ 1);
    if (v26 & 1) != 0 || (v27)
    {
      if (v26)
      {
        v28 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
        }
      }

      v29 = v27 & 1;
      if (v27)
      {
        v30 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
        }
      }

      objc_storeStrong(&self->_fullTextHistoryMatchesCacheStringProfileIdentifier, a4);
      v31 = [MEMORY[0x1E695DF90] dictionary];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __147__WBSURLCompletionDatabase__getUnsortedFullTextMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches_dataTypes___block_invoke;
      v46[3] = &unk_1E7FCB208;
      v33 = v31;
      v47 = v33;
      [WeakRetained enumerateMatchDataForTypedStringHint:v12 filterResultsUsingProfileIdentifier:v37 options:2 withBlock:v46];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __147__WBSURLCompletionDatabase__getUnsortedFullTextMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches_dataTypes___block_invoke_2;
      v38[3] = &unk_1E7FCB230;
      v44 = v29;
      v40 = self;
      v41 = a5;
      v39 = v12;
      v42 = Current;
      v45 = v26;
      v43 = a6;
      [v33 enumerateKeysAndObjectsUsingBlock:v38];
    }

    WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v20);

    WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&m_buffer, v34);
  }
}

void __147__WBSURLCompletionDatabase__getUnsortedFullTextMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches_dataTypes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 containsBookmark])
  {
    if (*(a1 + 73) != 1)
    {
      goto LABEL_7;
    }

    v4 = 8;
    v5 = 64;
  }

  else
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_7;
    }

    v4 = 24;
    v5 = 48;
  }

  recordItemIfFullTextMatch(v6, *(a1 + 32), *(a1 + v5), *(a1 + 40) + v4, *(a1 + 56));
LABEL_7:
}

- (void)_getUnsortedPrefixMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 historyMatches:(void *)a5 bookmarkMatches:(void *)a6
{
  v10 = a3;
  v35 = a4;
  v34 = self->_prefixHistoryMatchesCacheString;
  prefixHistoryMatchesCache = self->_prefixHistoryMatchesCache;
  self->_prefixHistoryMatchesCache.m_buffer = 0;
  *&self->_prefixHistoryMatchesCache.var0 = 0;
  v11 = [v10[1] copy];
  prefixHistoryMatchesCacheString = self->_prefixHistoryMatchesCacheString;
  self->_prefixHistoryMatchesCacheString = v11;

  v13 = self->_prefixBookmarkMatchesCacheString;
  prefixBookmarkMatchesCache = self->_prefixBookmarkMatchesCache;
  self->_prefixBookmarkMatchesCache.m_buffer = 0;
  *&self->_prefixBookmarkMatchesCache.var0 = 0;
  v33 = v13;
  v14 = [v10[1] copy];
  prefixBookmarkMatchesCacheString = self->_prefixBookmarkMatchesCacheString;
  self->_prefixBookmarkMatchesCacheString = v14;

  Current = CFAbsoluteTimeGetCurrent();
  v17 = [v10[1] safari_hasPrefix:v13];
  if ([(NSString *)self->_prefixHistoryMatchesCacheProfileIdentifier isEqualToString:v35])
  {
    v18 = [v10[1] safari_hasPrefix:v34];
    v19 = v18;
    if ((v17 & 1) == 0)
    {
      if (v18)
      {
        goto LABEL_16;
      }

LABEL_14:
      v22 = 1;
      v23 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    v19 = 0;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v20 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
  }

  if (prefixBookmarkMatchesCache.m_size)
  {
    v21 = 0;
    do
    {
      recordItemIfPrefixMatch(prefixBookmarkMatchesCache.m_buffer[v21++], v10, a6, &self->_prefixBookmarkMatchesCache, Current);
    }

    while (v21 < prefixBookmarkMatchesCache.m_size);
    if ((v19 & 1) == 0)
    {
      v22 = v17 ^ 1;
      v23 = 1;
      if (v17)
      {
        goto LABEL_27;
      }

      v19 = 0;
      goto LABEL_23;
    }
  }

  else if ((v19 & 1) == 0)
  {
    v22 = 0;
    v23 = 1;
    goto LABEL_27;
  }

LABEL_16:
  v24 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
  }

  if (prefixHistoryMatchesCache.m_size)
  {
    v26 = 0;
    do
    {
      recordItemIfPrefixMatch(prefixHistoryMatchesCache.m_buffer[v26++], v10, a5, &self->_prefixHistoryMatchesCache, Current);
    }

    while (v26 < prefixHistoryMatchesCache.m_size);
  }

  if ((v17 & 1) == 0)
  {
    v23 = 0;
    v19 = 1;
    v22 = 1;
LABEL_23:
    v27 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
      if (v19)
      {
        goto LABEL_29;
      }
    }

    else if (v19)
    {
LABEL_29:
      objc_storeStrong(&self->_prefixHistoryMatchesCacheProfileIdentifier, a4);
      v29 = [MEMORY[0x1E695DF90] dictionary];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __135__WBSURLCompletionDatabase__getUnsortedPrefixMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches___block_invoke;
      v44[3] = &unk_1E7FCB208;
      v31 = v29;
      v45 = v31;
      [WeakRetained enumerateMatchDataForTypedStringHint:v10 filterResultsUsingProfileIdentifier:v35 options:1 withBlock:v44];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __135__WBSURLCompletionDatabase__getUnsortedPrefixMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches___block_invoke_2;
      v36[3] = &unk_1E7FCB230;
      v42 = v23;
      v38 = self;
      v39 = a5;
      v37 = v10;
      v40 = Current;
      v43 = v22;
      v41 = a6;
      [v31 enumerateKeysAndObjectsUsingBlock:v36];

      goto LABEL_30;
    }

LABEL_27:
    v28 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
    }

    goto LABEL_29;
  }

LABEL_30:
  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&prefixBookmarkMatchesCache, v25);

  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&prefixHistoryMatchesCache, v32);
}

void __135__WBSURLCompletionDatabase__getUnsortedPrefixMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 containsBookmark])
  {
    if (*(a1 + 73) != 1)
    {
      goto LABEL_7;
    }

    v4 = 40;
    v5 = 64;
  }

  else
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_7;
    }

    v4 = 56;
    v5 = 48;
  }

  recordItemIfPrefixMatch(v6, *(a1 + 32), *(a1 + v5), *(a1 + 40) + v4, *(a1 + 56));
LABEL_7:
}

- (WBSURLCompletionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:.cold.1()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:.cold.2()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_topHitFromBaseURLMatchForTopHitFromMatches:(os_log_t)log shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Found redirection result of baseURL in History matches.", buf, 2u);
}

+ (void)_topHitFromBaseURLMatchForTopHitFromMatches:(os_log_t)log shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 141558275;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2117;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Best match in URL autocomplete list is not a URL: %{sensitive, mask.hash}@", buf, 0x16u);
}

- (void)_removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138739971;
  *a3 = a1;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Excluding title match that looks like a URL: %{sensitive}@:", buf, 0xCu);
}

- (void)_getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:.cold.1()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:.cold.2()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end