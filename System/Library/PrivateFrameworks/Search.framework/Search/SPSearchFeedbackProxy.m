@interface SPSearchFeedbackProxy
+ (id)sharedProxy;
- (BOOL)clientID:(id)a3 supportsFeedbackListener:(id)a4;
- (SPSearchFeedbackProxy)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendCustomFeedback:(id)a3 clientID:(id)a4;
- (void)sendFeedbackType:(int64_t)a3 feedback:(id)a4 queryId:(unint64_t)a5 clientID:(id)a6;
- (void)updateParsecEnabled;
@end

@implementation SPSearchFeedbackProxy

void __36__SPSearchFeedbackProxy_sharedProxy__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedProxy_sSharedProxy;
  sharedProxy_sSharedProxy = v0;

  if (initFeedbackTables_onceToken != -1)
  {
    initFeedbackTables_cold_1();
  }
}

- (SPSearchFeedbackProxy)init
{
  v8.receiver = self;
  v8.super_class = SPSearchFeedbackProxy;
  v2 = [(SPSearchFeedbackProxy *)&v8 init];
  if (v2)
  {
    v3 = +[SPSearchFeedbackSender feedbackQueue];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
    [(NSUserDefaults *)v5 addObserver:v2 forKeyPath:@"SPUISearchFirstTimeShowCount" options:0 context:0];
    [(NSUserDefaults *)v5 addObserver:v2 forKeyPath:@"SBSearchDisabledDomains" options:0 context:0];
    defaultsCenter = v2->_defaultsCenter;
    v2->_defaultsCenter = v5;

    [(SPSearchFeedbackProxy *)v2 updateParsecEnabled];
  }

  return v2;
}

- (void)updateParsecEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = SPGetDisabledDomainSet();
  v4 = 0;
  if (([v3 containsObject:@"DOMAIN_PARSEC"] & 1) == 0)
  {
    v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v4 = [v5 isSpotlightInternetResultsAllowed];
  }

  v6 = [(NSUserDefaults *)self->_defaultsCenter integerForKey:@"SPUISearchFirstTimeShowCount"];
  _permitParsecFeedback = (v6 > 0) & v4;
  [(SPSearchFeedbackProxy *)self setIsParsecEnabled:v4];
  v7 = +[SPCoreParsecInterface getSharedInstance];
  [v7 setParsecFeedbackAllowed:_permitParsecFeedback];

  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v18 = 134217984;
    v19 = v6;
    _os_log_impl(&dword_1C81BF000, v9, v10, "[FEEDBACK-DEBUG] (_userPrefsChanged) firstTimeShowCount: %ld", &v18, 0xCu);
  }

  v11 = SPLogForSPLogCategoryDefault();
  v12 = v11;
  if (gSPLogDebugAsDefault)
  {
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v13))
  {
    v18 = 67109120;
    LODWORD(v19) = v4 ^ 1;
    _os_log_impl(&dword_1C81BF000, v12, v13, "[FEEDBACK-DEBUG] (_userPrefsChanged) DOMAIN_PARSEC disabled: %d", &v18, 8u);
  }

  v14 = SPLogForSPLogCategoryDefault();
  v15 = v14;
  if (gSPLogDebugAsDefault)
  {
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v16 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v14, v16))
  {
    v18 = 67109120;
    LODWORD(v19) = _permitParsecFeedback;
    _os_log_impl(&dword_1C81BF000, v15, v16, "[FEEDBACK-DEBUG] (_userPrefsChanged) _permitParsecFeedback: %d", &v18, 8u);
  }

  [SPSearchFeedbackSender synchronizedBlock:&__block_literal_global_257];
  v17 = *MEMORY[0x1E69E9840];
}

+ (id)sharedProxy
{
  if (sharedProxy_onceToken != -1)
  {
    +[SPSearchFeedbackProxy sharedProxy];
  }

  v3 = sharedProxy_sSharedProxy;

  return v3;
}

void __44__SPSearchFeedbackProxy_updateParsecEnabled__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = SPLogForSPLogCategoryDefault();
  v1 = v0;
  if (gSPLogDebugAsDefault)
  {
    v2 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v2 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v0, v2))
  {
    v5[0] = 67109120;
    v5[1] = _permitParsecFeedback;
    _os_log_impl(&dword_1C81BF000, v1, v2, "[FEEDBACK-DEBUG] (_userPrefsChanged) _permitParsecFeedback: %d", v5, 8u);
  }

  v3 = +[SPCoreParsecInterface getSharedInstance];
  [v3 setParsecFeedbackAllowed:_permitParsecFeedback];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"SPUISearchFirstTimeShowCount"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"SBSearchDisabledDomains"))
  {
    [(SPSearchFeedbackProxy *)self updateParsecEnabled];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SPSearchFeedbackProxy;
    if ([(SPSearchFeedbackProxy *)&v14 respondsToSelector:sel_observeValueForKeyPath_ofObject_change_context_])
    {
      v13.receiver = self;
      v13.super_class = SPSearchFeedbackProxy;
      [(SPSearchFeedbackProxy *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }
  }
}

- (void)sendFeedbackType:(int64_t)a3 feedback:(id)a4 queryId:(unint64_t)a5 clientID:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  if ((a3 - 1) > 0x1A || !v10)
  {
    v26 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SPSearchFeedbackProxy sendFeedbackType:a3 feedback:v10 queryId:v26 clientID:?];
    }

    goto LABEL_19;
  }

  v12 = sSPFeedbackTypeClassTable[a3];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = SPLogForSPLogCategoryFeedback();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SPSearchFeedbackProxy sendFeedbackType:a3 feedback:v10 queryId:? clientID:?];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (sendFeedbackType_feedback_queryId_clientID__onceToken != -1)
  {
    [SPSearchFeedbackProxy sendFeedbackType:feedback:queryId:clientID:];
  }

  if (a3 == 8 && (sendFeedbackType_feedback_queryId_clientID__isInternal & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v10;
      v14 = [v13 result];
      v15 = [v14 identifier];
      v16 = [v15 isEqualToString:@"com.apple.other:taptoradar"];

      if (v16)
      {
        v17 = +[SDFeedbackInterceptor sharedInstance];
        [v17 dumpTTRDebugFiles];
      }
    }
  }

  v18 = SPLogForSPLogCategoryDefault();
  v19 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v18, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v20 = sSPFeedbackTypeDescriptionTable[a3];
    *buf = 136315138;
    v35 = v20;
    _os_log_impl(&dword_1C81BF000, v18, ((v19 & 1) == 0), "send feedback (%s)", buf, 0xCu);
  }

  v21 = os_transaction_create();
  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266;
  block[3] = &unk_1E82F8D78;
  objc_copyWeak(v33, buf);
  v23 = v10;
  v33[1] = a3;
  v29 = v23;
  v30 = self;
  v24 = v11;
  v33[2] = a5;
  v31 = v24;
  v32 = v21;
  v25 = v21;
  dispatch_async(queue, block);

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);
LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  sendFeedbackType_feedback_queryId_clientID__isInternal = result;
  return result;
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = (a1 + 72);
      v5 = sSPFeedbackTypeClassTable[*(a1 + 72)];
      if (objc_opt_isKindOfClass())
      {
        if (*v4 == 7 && (+[SDFeedbackInterceptor sharedInstance], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_267;
          v28[3] = &unk_1E82F8D50;
          v7 = WeakRetained;
          v8 = *v4;
          v29 = v7;
          v31 = v8;
          v30 = v3;
          [v6 annotateRankingFeedback:v30 completion:v28];
        }

        else
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = +[SPSearchFeedbackSender feedbackListeners];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v12)
          {
            v13 = *v25;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v24 + 1) + 8 * i);
                v16 = [v15 feedbackListener];
                if ([*(a1 + 40) clientID:*(a1 + 48) supportsFeedbackListener:v16])
                {
                  v17 = [v15 supportsFeedbackType:21];
                  if (*v4 == 11)
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v18 = v17;
                  }

                  if (v18 == 1)
                  {
LABEL_23:
                    [v16 reportFeedback:v3 queryId:*(a1 + 80)];
                  }

                  else if ([v15 supportsFeedbackType:?])
                  {
                    switch(*v4)
                    {
                      case 1:
                        [v16 didErrorOccur:v3];
                        break;
                      case 2:
                        [v16 searchViewDidAppear:v3];
                        break;
                      case 3:
                        [v16 searchViewDidDisappear:v3];
                        break;
                      case 4:
                        [v16 cardViewDidDisappear:v3];
                        break;
                      case 5:
                        [v16 didStartSearch:v3];
                        break;
                      case 6:
                        [v16 didEndSearch:v3];
                        break;
                      case 7:
                        [v16 didRankSections:v3];
                        break;
                      case 8:
                        [v16 didEngageResult:v3];
                        break;
                      case 9:
                        [v16 didEngageSuggestion:v3];
                        break;
                      case 10:
                        [v16 didEngageCardSection:v3];
                        break;
                      case 11:
                        [v16 sendCustomFeedback:v3];
                        break;
                      case 12:
                        [v16 resultsDidBecomeVisible:v3];
                        break;
                      case 13:
                        [v16 suggestionsDidBecomeVisible:v3];
                        break;
                      case 14:
                        [v16 didReceiveResultsAfterTimeout:v3];
                        break;
                      case 15:
                        [v16 didAppendLateSections:v3];
                        break;
                      case 16:
                        [v16 didClearInput:v3];
                        break;
                      case 17:
                        [v16 didEngageSection:v3];
                        break;
                      case 18:
                        [v16 sectionHeaderDidBecomeVisible:v3];
                        break;
                      case 19:
                        [v16 didGradeResultRelevancy:v3];
                        break;
                      case 20:
                        [v16 cardViewDidAppear:v3];
                        break;
                      case 21:
                        goto LABEL_23;
                      case 22:
                        [v16 didGoToSite:v3];
                        break;
                      case 23:
                        [v16 didGoToSearch:v3];
                        break;
                      case 24:
                        [v16 didGradeLookupHintRelevancy:v3];
                        break;
                      case 25:
                        [v16 didReportUserResponseFeedback:v3];
                        break;
                      case 26:
                        [v16 didPerformCommand:v3];
                        break;
                      case 27:
                        [v16 sendResultSectionsDidLoadFeedback:v3];
                        break;
                      default:
                        v19 = SPLogForSPLogCategoryFeedback();
                        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                        {
                          v20 = *v4;
                          *buf = 67109120;
                          LODWORD(v33) = v20;
                          _os_log_error_impl(&dword_1C81BF000, v19, OS_LOG_TYPE_ERROR, "*** Error feedback type %d not handled", buf, 8u);
                        }

                        break;
                    }
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v12);
          }

          v21 = *(a1 + 56);
          v22 = objc_opt_self();
        }
      }

      else
      {
        v10 = SPLogForSPLogCategoryFeedback();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_1(v4, v3);
        }
      }
    }

    else
    {
      v9 = SPLogForSPLogCategoryFeedback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_2(a1, v9);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_267(void *a1)
{
  v1 = *(a1[4] + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_2;
  v3[3] = &unk_1E82F8D28;
  v2 = a1[5];
  v5 = a1[6];
  v4 = v2;
  dispatch_async(v1, v3);
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[SPSearchFeedbackSender feedbackListeners];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 supportsFeedbackType:*(a1 + 40)])
        {
          v8 = [v7 feedbackListener];
          [v8 didRankSections:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)clientID:(id)a3 supportsFeedbackListener:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  LOBYTE(v5) = [v6 isEqualToString:@"com.apple.PeopleViewService"];
  return v5 & 1 | ((isKindOfClass & 1) == 0);
}

- (void)sendCustomFeedback:(id)a3 clientID:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[SPSearchFeedbackProxy sendFeedbackType:feedback:queryId:clientID:](self, "sendFeedbackType:feedback:queryId:clientID:", 11, v7, [v7 queryId], v6);
}

- (void)sendFeedbackType:(os_log_t)log feedback:queryId:clientID:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1C81BF000, log, OS_LOG_TYPE_ERROR, "invalid information for type %d feedback %p", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)sendFeedbackType:(uint64_t)a1 feedback:(void *)a2 queryId:clientID:.cold.2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = sSPFeedbackTypeDescriptionTable[a1];
  v3 = [a2 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C81BF000, v4, v5, "*** invalid feedback class for (%s) %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = sSPFeedbackTypeDescriptionTable[*a1];
  v3 = [a2 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C81BF000, v4, v5, "*** invalid feedback class for (%s) %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __68__SPSearchFeedbackProxy_sendFeedbackType_feedback_queryId_clientID___block_invoke_266_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = sSPFeedbackTypeDescriptionTable[*(a1 + 72)];
  v4 = 136315138;
  v5 = v2;
  _os_log_error_impl(&dword_1C81BF000, a2, OS_LOG_TYPE_ERROR, "no feedback (%s)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end