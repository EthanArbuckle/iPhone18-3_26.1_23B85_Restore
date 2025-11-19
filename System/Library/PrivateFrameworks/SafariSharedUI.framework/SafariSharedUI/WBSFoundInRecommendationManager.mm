@interface WBSFoundInRecommendationManager
+ (BOOL)isBundleIdentifierFromCalendar:(id)a3;
+ (BOOL)isBundleIdentifierFromMessages:(id)a3;
+ (id)_linkRecommendationsFromSGSuggestions:(id)a3 contactStoreProvider:(id)a4;
+ (unint64_t)foundInSourceFromBundleIdentifier:(id)a3;
- (void)_createInternalQueueIfNecessary;
- (void)_recentURLRecommendationsWithCompletionHandler:(id)a3;
- (void)beginListeningForURLSuggestionChanges;
- (void)recentRecommendationsWithCompletionHandler:(id)a3;
- (void)stopListeningForURLSuggestionChanges;
@end

@implementation WBSFoundInRecommendationManager

- (void)beginListeningForURLSuggestionChanges
{
  p_changeNotificationToken = &self->_changeNotificationToken;
  if (!self->_changeNotificationToken)
  {
    objc_initWeak(&location, self);
    [(WBSFoundInRecommendationManager *)self _createInternalQueueIfNecessary];
    v4 = *MEMORY[0x1E6999328];
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke;
    v7[3] = &unk_1E8285568;
    objc_copyWeak(&v8, &location);
    if (notify_register_dispatch(v4, p_changeNotificationToken, internalQueue, v7))
    {
      v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(WBSFoundInRecommendationManager *)v6 beginListeningForURLSuggestionChanges];
      }
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke_2;
  block[3] = &unk_1E8283A38;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"WBSFoundInRecommendationManagerDidUpdateSuggestionsNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)stopListeningForURLSuggestionChanges
{
  changeNotificationToken = self->_changeNotificationToken;
  if (changeNotificationToken)
  {
    notify_cancel(changeNotificationToken);
    self->_changeNotificationToken = 0;
  }
}

- (void)recentRecommendationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(WBSFoundInRecommendationManager *)self _createInternalQueueIfNecessary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__WBSFoundInRecommendationManager_recentRecommendationsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8285590;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(WBSFoundInRecommendationManager *)self _recentURLRecommendationsWithCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __78__WBSFoundInRecommendationManager_recentRecommendationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__WBSFoundInRecommendationManager_recentRecommendationsWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E8284B78;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_recentURLRecommendationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8284830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [MEMORY[0x1E69992A0] serviceForURLs];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E82855D8;
  v14 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v6 dateByAddingUnit:16 value:1 toDate:v7 options:0];

    v9 = [v6 startOfDayForDate:v8];
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mail", @"com.apple.mobilemail", 0}];
    v11 = *(*(a1 + 32) + 8);
    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*MEMORY[0x1E69C9300]];
    [v11 urlsFoundBetweenStartDate:v12 endDate:v9 excludingBundleIdentifiers:v10 limit:64 withCompletion:v5];
  }

  else
  {
    [*(*(a1 + 32) + 8) recentURLsWithLimit:64 withCompletion:v5];
  }
}

void __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {
    if (v6)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2_cold_1(v8, v7);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = [WBSFoundInRecommendationManager _linkRecommendationsFromSGSuggestions:v5 contactStoreProvider:&__block_literal_global_16];
      v10 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = 134218240;
        v13 = [v9 count];
        v14 = 2048;
        v15 = [v5 count];
        _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Got %ld recommendations out of %ld Found In links retrieved from suggestions service.", &v12, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_createInternalQueueIfNecessary
{
  if (!self->_internalQueue)
  {
    v4 = dispatch_queue_create("com.apple.Safari.FoundInRecommendationManager.internalQueue", 0);
    internalQueue = self->_internalQueue;
    self->_internalQueue = v4;
  }
}

+ (id)_linkRecommendationsFromSGSuggestions:(id)a3 contactStoreProvider:(id)a4
{
  v132 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v111 = [MEMORY[0x1E695DF90] dictionary];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v119 objects:v131 count:16];
  v96 = v6;
  if (!v8)
  {
    v109 = 0;
    v101 = 0;
    goto LABEL_108;
  }

  v9 = v8;
  v99 = 0;
  v109 = 0;
  v101 = 0;
  v10 = *v120;
  v11 = 0x1E8281000uLL;
  v114 = v7;
  do
  {
    v12 = 0;
    do
    {
      if (*v120 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v119 + 1) + 8 * v12);
      v14 = *(v11 + 2400);
      v15 = [v13 bundleIdentifier];
      v16 = [v14 foundInSourceFromBundleIdentifier:v15];

      if (v16 < 2)
      {
        goto LABEL_45;
      }

      v17 = [v13 url];
      v18 = [v17 scheme];
      if ([v18 length])
      {
        v19 = [v17 safari_isHTTPFamilyURL];

        if ((v19 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v20 = [v17 safari_canonicalURLForStartPage];
      v21 = [v20 host];
      if (![v21 length] || (objc_msgSend(v21, "safari_looksLikeIPAddress") & 1) != 0)
      {
        goto LABEL_43;
      }

      v22 = bestDateForSuggestion(v13);
      if (!v22)
      {
        goto LABEL_41;
      }

      if (v16 == 2)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 documentTitle], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "length"), v29, !v30))
        {
LABEL_41:

          goto LABEL_42;
        }

        v23 = [v13 documentDate];
        if (v23)
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v32 = v31;
          [v23 timeIntervalSinceReferenceDate];
          v34 = v33;
          if (v32 >= v33 + -600.0)
          {
            [v13 documentTimeInterval];
            LOBYTE(v7) = v32 <= v34 + v51;
            goto LABEL_29;
          }
        }
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_30;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_41;
        }

        v23 = [v13 documentDate];
        if (v23)
        {
          v24 = [MEMORY[0x1E695DEE8] currentCalendar];
          [v24 components:96 fromDate:v23];
          v25 = v105 = v23;

          v112 = v25;
          if ([v25 hour] || objc_msgSend(v25, "minute"))
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v27 = v26;
            v23 = v105;
            [v105 timeIntervalSinceReferenceDate];
            LOBYTE(v7) = v27 <= v28 + 3600.0 && v27 >= v28 + -3600.0;
          }

          else
          {
            LOBYTE(v7) = 0;
            v23 = v105;
          }

          goto LABEL_29;
        }
      }

      LOBYTE(v7) = 0;
LABEL_29:

LABEL_30:
      if (v7)
      {
        v113 = [v13 documentIdentifier];
        v35 = [v111 objectForKeyedSubscript:?];
        v17 = v35;
        if (!v35)
        {
LABEL_37:
          v44 = [v13 url];
          v20 = [v44 safari_canonicalURLForStartPage];

          v21 = bestDateForSuggestion(v13);
          v45 = [v13 bundleIdentifier];
          v46 = [WBSFoundInRecommendationManager foundInSourceFromBundleIdentifier:v45];

          v47 = 0;
          if (v46 > 1)
          {
            if (v46 == 2)
            {
              v47 = 6;
            }

            else if (v46 == 3)
            {
              v47 = 7;
            }

LABEL_58:
            v107 = v47;
            v102 = [WBSForYouLinkRecommendation alloc];
            v52 = v13;
            if ((objc_opt_respondsToSelector() & 1) != 0 && ([v52 documentTitle], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "length"), v53, v54))
            {
              v55 = [v52 documentTitle];
            }

            else
            {
              v56 = [v52 title];
              v57 = [v56 length];

              if (!v57)
              {
                v58 = &stru_1F4646D10;
                goto LABEL_65;
              }

              v55 = [v52 title];
            }

            v58 = v55;
LABEL_65:

            v59 = [(WBSForYouLinkRecommendation *)v102 initWithTitle:v58 url:v20 lastSeenDate:v21 source:v107 topicSource:0];
            v60 = [v52 bundleIdentifier];
            [(WBSForYouLinkRecommendation *)v59 setBundleIdentifier:v60];

            v13 = v113;
            [(WBSForYouLinkRecommendation *)v59 setSourceID:v113];
            if (v46 == 3 || v46 == 2)
            {
              v68 = MEMORY[0x1E696AEC0];
              v69 = _WBSLocalizedString();
              v70 = [(WBSForYouLinkRecommendation *)v59 title];
              v71 = [v68 localizedStringWithFormat:v69, v70];
              [(WBSForYouLinkRecommendation *)v59 setTitle:v71];

              v72 = _WBSLocalizedString();
              [(WBSForYouLinkRecommendation *)v59 setFootnote:v72];
              v73 = v109;
            }

            else
            {
              if (v46 != 1)
              {
                v73 = v109;
                v7 = v114;
                goto LABEL_77;
              }

              v98 = _WBSLocalizedString();
              v61 = [v52 receivedFromHandle];
              if ([v61 hasPrefix:@"e:"])
              {
                v62 = [v61 substringFromIndex:2];

                v61 = v62;
              }

              v63 = v101;
              v64 = v61;
              if (!v101)
              {
                v65 = v64;
                v66 = v96[2]();
                v64 = v65;
                v63 = v66;
              }

              v101 = v63;
              v97 = v59;
              if (v99)
              {
                v67 = v109;
              }

              else
              {
                v74 = v64;
                if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
                {
                  v118 = 0;
                  v103 = [v63 _ios_meContactWithKeysToFetch:MEMORY[0x1E695E0F0] error:&v118];
                  v75 = v118;

                  if (v75)
                  {
                    v76 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                    {
                      [(WBSFoundInRecommendationManager *)&v129 _linkRecommendationsFromSGSuggestions:v76 contactStoreProvider:v75, &v130];
                    }

                    v63 = v101;
                  }

                  v67 = v103;
                }

                else
                {
                  v67 = v109;
                }

                v64 = v74;
              }

              v117 = 0;
              v108 = v64;
              v77 = [v63 contactForHandle:v64 error:&v117];
              v110 = v117;
              v104 = v67;
              v78 = [v67 identifier];
              v79 = [v77 identifier];
              v80 = [v78 isEqualToString:v79];

              if (v80)
              {
                v81 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
                v7 = v114;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138478083;
                  v126 = v108;
                  v127 = 2113;
                  v128 = v113;
                  _os_log_debug_impl(&dword_1C6968000, v81, OS_LOG_TYPE_DEBUG, "Skipping suggestion from Me contact with handle: %{private}@ document identifier: %{private}@", buf, 0x16u);
                }

                v99 = 1;
                v13 = v113;
                v73 = v104;
LABEL_92:
                v59 = v97;
                goto LABEL_78;
              }

              v82 = [v77 safari_fullName];
              v83 = v77;
              v100 = v77;
              if ([v82 length])
              {
                v84 = v82;
              }

              else
              {
                v84 = v108;
                if (v101)
                {
                  v87 = v82;
                  v88 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
                  v89 = v88;
                  v7 = v114;
                  if (v110)
                  {
                    v73 = v104;
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      [(WBSFoundInRecommendationManager *)&v123 _linkRecommendationsFromSGSuggestions:v89 contactStoreProvider:v110, &v124];
                    }
                  }

                  else
                  {
                    v73 = v104;
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                    {
                      [(WBSFoundInRecommendationManager *)&v115 _linkRecommendationsFromSGSuggestions:v116 contactStoreProvider:v89];
                    }
                  }

                  v99 = 1;
                  v13 = v113;
                  goto LABEL_92;
                }
              }

              v59 = v97;
              [(WBSForYouLinkRecommendation *)v97 setContact:v83];
              v95 = v84;
              v93 = MEMORY[0x1E696AEC0];
              _WBSLocalizedString();
              v85 = v94 = v82;
              v72 = v98;
              v86 = [v93 localizedStringWithFormat:v85, v98, v84];
              [(WBSForYouLinkRecommendation *)v97 setFootnote:v86];

              v99 = 1;
              v73 = v104;
            }

            v7 = v114;
            v13 = v113;
LABEL_77:
            [v111 setObject:v59 forKeyedSubscript:v13];
LABEL_78:

            v109 = v73;
LABEL_43:

            v11 = 0x1E8281000;
LABEL_44:

LABEL_45:
            goto LABEL_46;
          }

          if (v46)
          {
            if (v46 == 1)
            {
              v47 = 5;
            }

            goto LABEL_58;
          }

          goto LABEL_55;
        }

        v20 = [v35 pageURL];
        v21 = [v13 url];
        v36 = [v20 host];
        v37 = [v21 host];
        v38 = [v36 isEqualToString:v37];

        if (v38)
        {
          v39 = [v21 pathComponents];
          v106 = [v39 count];
          v40 = [v20 pathComponents];
          v41 = [v40 count];

          v42 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
          if (v106 > v41)
          {
            if (v43)
            {
              *buf = 138543362;
              v126 = v113;
              _os_log_error_impl(&dword_1C6968000, v42, OS_LOG_TYPE_ERROR, "We have a Found In link with a duplicate GUID and host but more path components so we'll replace the existing one: %{public}@", buf, 0xCu);
            }

            goto LABEL_37;
          }

          if (!v43)
          {
LABEL_55:
            v13 = v113;
LABEL_42:
            v7 = v114;
            goto LABEL_43;
          }

          *buf = 138543362;
          v13 = v113;
          v126 = v113;
          v49 = v42;
          v50 = "Skipping Found In link with a duplicate GUID and host but less path components: %{public}@";
        }

        else
        {
          v48 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_55;
          }

          *buf = 138543362;
          v13 = v113;
          v126 = v113;
          v49 = v48;
          v50 = "Skipping Found In link with a duplicate GUID but different URL host: %{public}@";
        }

        _os_log_error_impl(&dword_1C6968000, v49, OS_LOG_TYPE_ERROR, v50, buf, 0xCu);
        goto LABEL_42;
      }

      v7 = v114;
      v11 = 0x1E8281000;
LABEL_46:
      ++v12;
    }

    while (v9 != v12);
    v90 = [v7 countByEnumeratingWithState:&v119 objects:v131 count:16];
    v9 = v90;
  }

  while (v90);
LABEL_108:

  v91 = [v111 allValues];

  return v91;
}

+ (unint64_t)foundInSourceFromBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([a1 isBundleIdentifierFromCalendar:v4])
  {
    v5 = 2;
  }

  else if ([a1 isBundleIdentifierFromMessages:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 lowercaseString];
    v7 = [v6 isEqualToString:@"com.apple.reminders"];

    if (v7)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)isBundleIdentifierFromCalendar:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.mobilecal"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.iCal"];
  }

  return v4;
}

+ (BOOL)isBundleIdentifierFromMessages:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.iChat"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.MobileSMS"];
  }

  return v4;
}

void __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Unable to get Found In suggestions: %{public}@", &v5, 0xCu);
}

+ (void)_linkRecommendationsFromSGSuggestions:(void *)a3 contactStoreProvider:(void *)a4 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v9, v10, "Could not fetch me card with error: %{public}@");
}

+ (void)_linkRecommendationsFromSGSuggestions:(void *)a3 contactStoreProvider:(void *)a4 .cold.2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v9, v10, "Unable to get full contact name for Messages link with error: %{public}@");
}

+ (void)_linkRecommendationsFromSGSuggestions:(os_log_t)log contactStoreProvider:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "Unable to get full contact name for Messages link", buf, 2u);
}

@end