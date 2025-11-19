id _SFPBTimeZoneHandwrittenTranslator(void *a1)
{
  v1 = MEMORY[0x1E695DFE8];
  v2 = [a1 identifier];
  v3 = [v1 timeZoneWithName:v2];

  return v3;
}

uint64_t _SFPBDateHandwrittenTranslator(void *a1)
{
  v1 = MEMORY[0x1E695DF00];
  [a1 secondsSince1970];

  return [v1 dateWithTimeIntervalSince1970:?];
}

id _SFPBURLHandwrittenTranslator(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFF8];
    v2 = [a1 address];
    v3 = [v1 URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double _SFPBPointSizeHandwrittenTranslator(void *a1)
{
  v1 = a1;
  v2 = [v1 width];
  [v2 doubleValue];
  v4 = v3;
  v5 = [v1 height];

  [v5 doubleValue];
  return v4;
}

id _SFPBStringDictionaryHandwrittenTranslator(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 keyValuesCount])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "keyValuesCount")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [v2 keyValues];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 key];
          if (v10)
          {
            v11 = v10;
            v12 = [v9 value];

            if (v12)
            {
              v13 = [v9 value];
              v14 = [v9 key];
              [v3 setObject:v13 forKeyedSubscript:v14];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

SFCardSection *_SFPBCardSectionHandwrittenTranslator(void *a1)
{
  v1 = a1;
  v2 = [[SFCardSection alloc] initWithProtobuf:v1];

  return v2;
}

SFWeatherTopic *_SFPBTopicHandwrittenTranslator(void *a1)
{
  v1 = a1;
  v2 = [v1 query];
  v3 = [v1 type];
  switch(v3)
  {
    case 1:
      v14 = [SFFlightTopic alloc];
      v15 = MEMORY[0x1E695DF00];
      v7 = [v1 flight];
      v9 = [v15 dateWithTimeIntervalSince1970:{-[SFLatLng timestamp](v7, "timestamp")}];
      v12 = [v1 identifier];
      v13 = [(SFFlightTopic *)v14 initWithQuery:v2 date:v9 identifier:v12];
      goto LABEL_7;
    case 8:
      v11 = [SFSportsTopic alloc];
      v7 = [v1 sports];
      v9 = [(SFLatLng *)v7 requested_entity_type];
      v12 = [v1 identifier];
      v13 = [(SFSportsTopic *)v11 initWithQuery:v2 requestedEntityType:v9 identifier:v12];
LABEL_7:
      v10 = v13;

      goto LABEL_8;
    case 3:
      v4 = [SFLatLng alloc];
      v5 = [v1 weather];
      v6 = [v5 location];
      v7 = [(SFLatLng *)v4 initWithProtobuf:v6];

      v8 = [SFWeatherTopic alloc];
      v9 = [v1 identifier];
      v10 = [(SFWeatherTopic *)v8 initWithQuery:v2 location:v7 identifier:v9];
LABEL_8:

      goto LABEL_10;
  }

  v16 = [v1 type];
  v17 = [SFQueryTopic alloc];
  v7 = [v1 identifier];
  v10 = [(SFQueryTopic *)v17 initWithType:v16 query:v2 identifier:v7];
LABEL_10:

  return v10;
}

void sub_1B1201048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __PARLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0;
  PARLogHandleForCategory_logHandles_0 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1;
  PARLogHandleForCategory_logHandles_1 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2;
  PARLogHandleForCategory_logHandles_2 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3;
  PARLogHandleForCategory_logHandles_3 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4;
  PARLogHandleForCategory_logHandles_4 = v8;

  PARLogHandleForCategory_logHandles_5 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PARLogHandleForCategory_block_invoke_34899()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_34901;
  PARLogHandleForCategory_logHandles_0_34901 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_34895;
  PARLogHandleForCategory_logHandles_1_34895 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_34903;
  PARLogHandleForCategory_logHandles_2_34903 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_34904;
  PARLogHandleForCategory_logHandles_3_34904 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_34905;
  PARLogHandleForCategory_logHandles_4_34905 = v8;

  PARLogHandleForCategory_logHandles_5_34906 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

void __checkValidParsecHost_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskGetCodeSignStatus(v0) & 0x4000001;
    checkValidParsecHost_isValidHost = v2 == 67108865;
    if (v2 != 67108865)
    {
      if (MGGetBoolAnswer())
      {
        v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.parsec.default-client", 0);
        if (v3)
        {
          v4 = v3;
          v5 = CFGetTypeID(v3);
          if (v5 == CFStringGetTypeID())
          {
            v6 = [v4 length];
            CFRelease(v4);
            if (v6)
            {
              checkValidParsecHost_isValidHost = 1;
            }
          }

          else
          {
            CFRelease(v4);
          }
        }
      }
    }

    CFRelease(v1);
  }
}

void SFFeedbackListenerRegister(void *a1)
{
  v1 = a1;
  v2 = getDispatchQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFFeedbackListenerRegister_block_invoke;
  block[3] = &unk_1E7ACDC78;
  block[4] = v1;
  dispatch_async(v2, block);
}

id getDispatchQueue()
{
  if (getDispatchQueue_onceToken != -1)
  {
    dispatch_once(&getDispatchQueue_onceToken, &__block_literal_global_37404);
  }

  v1 = getDispatchQueue_queue;

  return v1;
}

void __SFFeedbackListenerRegister_block_invoke(uint64_t a1)
{
  v3 = getWeakListeners();
  v2 = [[WeakListener alloc] initWithListener:*(a1 + 32)];
  [v3 addObject:v2];
}

id getWeakListeners()
{
  v0 = getWeakListeners_listeners;
  if (!getWeakListeners_listeners)
  {
    v1 = [MEMORY[0x1E695DF70] array];
    v2 = getWeakListeners_listeners;
    getWeakListeners_listeners = v1;

    v0 = getWeakListeners_listeners;
  }

  return v0;
}

void __getDispatchQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("SFFeedbackQueue", v2);
  v1 = getDispatchQueue_queue;
  getDispatchQueue_queue = v0;
}

void SFFeedbackListenerUnregister(uint64_t a1)
{
  v2 = getDispatchQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFFeedbackListenerUnregister_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = a1;
  dispatch_sync(v2, block);
}

void __SFFeedbackListenerUnregister_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = getWeakListeners();
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 strongListener];
        v11 = v10;
        if (v10)
        {
          if (v10 == *(a1 + 32))
          {
            [v3 addObject:v9];

            goto LABEL_12;
          }
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  [v4 removeObjectsInArray:v3];
  v12 = *MEMORY[0x1E69E9840];
}

void SFFeedbackNotify(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = getDispatchQueue();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __SFFeedbackNotify_block_invoke;
    v5[3] = &unk_1E7ACDB68;
    v5[4] = v3;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }
}

void __SFFeedbackNotify_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = getWeakListeners();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v15 + 1) + 8 * v6) strongListener];
        v8 = v7;
        if (v7)
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = v7;
          v12 = v10;
          if (objc_opt_respondsToSelector())
          {
            [v11 reportFeedback:v12 queryId:v9];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
            {
              [v11 searchViewDidAppear:v12];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
              {
                [v11 searchViewDidDisappear:v12];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                {
                  [v11 cardViewDidAppear:v12];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                  {
                    [v11 cardViewDidDisappear:v12];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                    {
                      [v11 didStartSearch:v12];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                      {
                        [v11 didEndSearch:v12];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                        {
                          [v11 didRankSections:v12];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                          {
                            [v11 didEngageResult:v12];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                            {
                              [v11 didGradeResultRelevancy:v12];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                              {
                                [v11 didEngageSuggestion:v12];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                {
                                  [v11 didEngageCardSection:v12];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                  {
                                    [v11 didErrorOccur:v12];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                    {
                                      [v11 sendCustomFeedback:v12];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                      {
                                        [v11 resultsDidBecomeVisible:v12];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                        {
                                          [v11 suggestionsDidBecomeVisible:v12];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                          {
                                            [v11 didReceiveResultsAfterTimeout:v12];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                            {
                                              [v11 didAppendLateSections:v12];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                              {
                                                [v11 didClearInput:v12];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                                {
                                                  [v11 didEngageSection:v12];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                                  {
                                                    [v11 sectionHeaderDidBecomeVisible:v12];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                                    {
                                                      [v11 didGoToSite:v12];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                                      {
                                                        [v11 didGoToSearch:v12];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                                                        {
                                                          [v11 didGradeLookupHintRelevancy:v12];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            if (objc_opt_respondsToSelector())
                                                            {
                                                              [v11 didSubmitUserReportFeedback:v12];
                                                            }

                                                            else if (objc_opt_respondsToSelector())
                                                            {
                                                              [v11 didReportUserResponseFeedback:v12];
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v13 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __PARLogHandleForCategory_block_invoke_70634()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_70635;
  PARLogHandleForCategory_logHandles_0_70635 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_70632;
  PARLogHandleForCategory_logHandles_1_70632 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_70637;
  PARLogHandleForCategory_logHandles_2_70637 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_70638;
  PARLogHandleForCategory_logHandles_3_70638 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_70640;
  PARLogHandleForCategory_logHandles_4_70640 = v8;

  PARLogHandleForCategory_logHandles_5_70641 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

void SFResourceLoaderRegister(void *a1)
{
  v1 = a1;
  v2 = getDispatchQueue_70645();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFResourceLoaderRegister_block_invoke;
  block[3] = &unk_1E7ACDC78;
  block[4] = v1;
  dispatch_async(v2, block);
}

id getDispatchQueue_70645()
{
  if (getDispatchQueue_onceToken_70646 != -1)
  {
    dispatch_once(&getDispatchQueue_onceToken_70646, &__block_literal_global_70647);
  }

  v1 = getDispatchQueue_queue_70648;

  return v1;
}

void _SFResourceLoaderRegisterInternal(void *a1)
{
  v1 = a1;
  v3 = getWeakLoaders();
  v2 = [[WeakLoader alloc] initWithLoader:v1];

  [v3 addObject:v2];
}

id getWeakLoaders()
{
  v0 = getWeakLoaders_loaders;
  if (!getWeakLoaders_loaders)
  {
    v1 = [MEMORY[0x1E695DF70] array];
    v2 = getWeakLoaders_loaders;
    getWeakLoaders_loaders = v1;

    v0 = getWeakLoaders_loaders;
  }

  return v0;
}

void __getDispatchQueue_block_invoke_70651()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("SFResourceLoaderQueue", v0);
  v2 = getDispatchQueue_queue_70648;
  getDispatchQueue_queue_70648 = v1;

  v3 = getDispatchQueue_queue_70648;

  dispatch_async(v3, &__block_literal_global_106);
}

void __getDispatchQueue_block_invoke_2()
{
  if (checkValidParsecHost_once != -1)
  {
    dispatch_once(&checkValidParsecHost_once, &__block_literal_global_35675);
  }

  if (checkValidParsecHost_isValidHost)
  {
    if (CoreParsecLibraryCore())
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2050000000;
      v0 = getPARSessionClass_softClass;
      v10 = getPARSessionClass_softClass;
      if (!getPARSessionClass_softClass)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __getPARSessionClass_block_invoke;
        v6[3] = &unk_1E7ACDD80;
        v6[4] = &v7;
        __getPARSessionClass_block_invoke(v6);
        v0 = v8[3];
      }

      v1 = v0;
      _Block_object_dispose(&v7, 8);
      v2 = [v0 sharedSession];
      _SFResourceLoaderRegisterInternal(v2);
    }
  }

  else
  {
    if (PARLogHandleForCategory_onceToken_70631 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
    }

    v3 = PARLogHandleForCategory_logHandles_1_70632;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_1B116E000, v3, OS_LOG_TYPE_ERROR, "Loaders skipped on host check", v6, 2u);
    }
  }

  v4 = objc_alloc_init(ImageFileLoader);
  v5 = initLoaders_imageFileLoader;
  initLoaders_imageFileLoader = v4;

  _SFResourceLoaderRegisterInternal(initLoaders_imageFileLoader);
}

void sub_1B1327918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreParsecLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!CoreParsecLibraryCore_frameworkLibrary)
  {
    CoreParsecLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreParsecLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPARSessionClass_block_invoke(uint64_t a1)
{
  if (!CoreParsecLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("PARSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPARSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return __CoreParsecLibraryCore_block_invoke(v4);
  }

  return result;
}

uint64_t __CoreParsecLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreParsecLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void SFResourceLoaderUnregister(uint64_t a1)
{
  v2 = getDispatchQueue_70645();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFResourceLoaderUnregister_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = a1;
  dispatch_async(v2, block);
}

void __SFResourceLoaderUnregister_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = getWeakLoaders();
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 strongloader];
        v11 = v10;
        if (v10)
        {
          if (v10 == *(a1 + 32))
          {
            [v3 addObject:v9];

            goto LABEL_12;
          }
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  [v4 removeObjectsInArray:v3];
  v12 = *MEMORY[0x1E69E9840];
}

void SFResourceLoaderLoadImageWithContext(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = getDispatchQueue_70645();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFResourceLoaderLoadImageWithContext_block_invoke;
  block[3] = &unk_1E7ACDD00;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __SFResourceLoaderLoadImageWithContext_block_invoke(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  getWeakLoaders();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = v25 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = &selRef_hasMonogram;
    v7 = &selRef_hasMonogram;
    while (2)
    {
      v8 = 0;
      v9 = v6[356];
      v10 = v7[355];
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v11 = [*(*(&v22 + 1) + 8 * v8) strongloader];
        if ([v11 conformsToProtocol:&unk_1F2875FF8])
        {
          v12 = [v11 imageLoader];
          if ([v12 canLoadImage:a1[4] context:a1[5]])
          {
            [v12 loadImage:a1[4] context:a1[5] completionHandler:a1[6]];
            if (PARLogHandleForCategory_onceToken_70631 != -1)
            {
              dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
            }

            v19 = PARLogHandleForCategory_logHandles_1_70632;
            if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_DEBUG))
            {
              v21 = a1[4];
              *buf = 138412546;
              v29 = v21;
              v30 = 2112;
              v31 = v12;
              _os_log_debug_impl(&dword_1B116E000, v19, OS_LOG_TYPE_DEBUG, "image %@ loaded by %@", buf, 0x16u);
            }

LABEL_25:
            v16 = v2;
            goto LABEL_26;
          }
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v11 loadImage:a1[4] withContext:a1[5] completionHandler:a1[6]] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v11, "loadImage:withCompletionHandler:", a1[4], a1[6]))
        {
          goto LABEL_25;
        }

        ++v8;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
      v6 = &selRef_hasMonogram;
      v7 = &selRef_hasMonogram;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v13 = MEMORY[0x1E696ABC0];
  v26[0] = *MEMORY[0x1E696A278];
  v26[1] = @"SFResourceLoaderFailedResourceKey";
  v14 = a1[4];
  v27[0] = @"SFResourceLoaders are not available.";
  v27[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v16 = [v13 errorWithDomain:@"SFResourceLoaderErrorDomain" code:1000 userInfo:v15];

  if (PARLogHandleForCategory_onceToken_70631 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
  }

  v17 = PARLogHandleForCategory_logHandles_1_70632;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v16;
    _os_log_error_impl(&dword_1B116E000, v17, OS_LOG_TYPE_ERROR, "SFResourceLoaderLoadImage error: %@", buf, 0xCu);
  }

  v18 = a1[4];
  (*(a1[6] + 16))();
LABEL_26:

  v20 = *MEMORY[0x1E69E9840];
}

void SFResourceLoaderLoadCard(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 cardSections];
  if ([v5 count] && (objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
  {
    v4[2](v4, v3, 0);
  }

  else
  {
    v8 = getDispatchQueue_70645();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SFResourceLoaderLoadCard_block_invoke;
    v9[3] = &unk_1E7ACDCD8;
    v10 = v3;
    v11 = v4;
    dispatch_async(v8, v9);
  }
}

void __SFResourceLoaderLoadCard_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  getWeakLoaders();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = v21 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v18 + 1) + 8 * i) strongloader];
        if ([v7 conformsToProtocol:&unk_1F2875FF8])
        {
          v8 = [v7 cardLoader];
          if ([v8 canLoadCard:*(a1 + 32)])
          {
            [v8 loadCard:*(a1 + 32) completionHandler:*(a1 + 40)];
            if (PARLogHandleForCategory_onceToken_70631 != -1)
            {
              dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
            }

            v15 = PARLogHandleForCategory_logHandles_1_70632;
            if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_DEBUG))
            {
              v17 = *(a1 + 32);
              *buf = 138412546;
              v25 = v17;
              v26 = 2112;
              v27 = v8;
              _os_log_debug_impl(&dword_1B116E000, v15, OS_LOG_TYPE_DEBUG, "card %@ loaded by %@", buf, 0x16u);
            }

LABEL_23:
            v12 = v2;
            goto LABEL_24;
          }
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 loadCard:*(a1 + 32) withCompletionHandler:*(a1 + 40)])
        {
          goto LABEL_23;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = MEMORY[0x1E696ABC0];
  v22[0] = *MEMORY[0x1E696A278];
  v22[1] = @"SFResourceLoaderFailedResourceKey";
  v10 = *(a1 + 32);
  v23[0] = @"SFResourceLoaders are not available.";
  v23[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v12 = [v9 errorWithDomain:@"SFResourceLoaderErrorDomain" code:1000 userInfo:v11];

  if (PARLogHandleForCategory_onceToken_70631 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
  }

  v13 = PARLogHandleForCategory_logHandles_1_70632;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v12;
    _os_log_error_impl(&dword_1B116E000, v13, OS_LOG_TYPE_ERROR, "SFResourceLoaderLoadCard error: %@", buf, 0xCu);
  }

  v14 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
LABEL_24:

  v16 = *MEMORY[0x1E69E9840];
}

void SFResourceLoaderLoadMoreResults(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = getDispatchQueue_70645();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SFResourceLoaderLoadMoreResults_block_invoke;
  v8[3] = &unk_1E7ACDCD8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, v8);
}

void __SFResourceLoaderLoadMoreResults_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  getWeakLoaders();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v17 + 1) + 8 * i) strongloader];
        if ([v7 conformsToProtocol:&unk_1F2875FF8])
        {
          v8 = [v7 moreResultsLoader];
          if ([v8 canLoadMoreResults:*(a1 + 32)])
          {
            [v8 loadMoreResults:*(a1 + 32) completionHandler:*(a1 + 40)];
            if (PARLogHandleForCategory_onceToken_70631 != -1)
            {
              dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
            }

            v14 = PARLogHandleForCategory_logHandles_1_70632;
            if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 32);
              *buf = 138412546;
              v24 = v16;
              v25 = 2112;
              v26 = v8;
              _os_log_debug_impl(&dword_1B116E000, v14, OS_LOG_TYPE_DEBUG, "more results %@ loaded by %@", buf, 0x16u);
            }

LABEL_23:
            v12 = v2;
            goto LABEL_24;
          }
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 loadMoreResults:*(a1 + 32) withCompletionHandler:*(a1 + 40)])
        {
          goto LABEL_23;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = MEMORY[0x1E696ABC0];
  v21[0] = *MEMORY[0x1E696A278];
  v21[1] = @"SFResourceLoaderFailedResourceKey";
  v10 = *(a1 + 32);
  v22[0] = @"SFResourceLoaders are not available.";
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v12 = [v9 errorWithDomain:@"SFResourceLoaderErrorDomain" code:1000 userInfo:v11];

  if (PARLogHandleForCategory_onceToken_70631 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
  }

  v13 = PARLogHandleForCategory_logHandles_1_70632;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_error_impl(&dword_1B116E000, v13, OS_LOG_TYPE_ERROR, "SFResourceLoaderLoadMoreResults error: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_24:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t _SFPBReferentialCommandReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setReferenceIdentifier:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCommandValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBReferentialCommand);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBReferentialCommandReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setReferentialCommand:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAbstractCommandReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_SFPBCommandValue);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBCommandValueReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValue:v20];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setType:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBUserActivityInfoReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setStringValue:v14];
          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBURL);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setUrlValue:v14];
          goto LABEL_38;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_42:
          [a1 setValueType:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setKey:v14];
LABEL_38:

          goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBURLReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setAddress:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBUserActivityDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        [a1 setActivityType:v13];
LABEL_24:

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_SFPBUserActivityInfo);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_SFPBUserActivityInfoReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addUserInfo:v13];
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPunchoutReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            [a1 setLabel:v21];
            goto LABEL_58;
          }

          if (v13 == 4)
          {
            v21 = objc_alloc_init(_SFPBURL);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v21, a2))
            {
LABEL_80:

              return 0;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addUrls:v21];
            }

            goto LABEL_58;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = PBReaderReadString();
            [a1 setName:v21];
            goto LABEL_58;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadString();
            [a1 setBundleIdentifier:v21];
LABEL_58:

            goto LABEL_59;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = objc_alloc_init(_SFPBUserActivityData);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_SFPBUserActivityDataReadFrom(v21, a2))
          {
            goto LABEL_80;
          }

          PBReaderRecallMark();
          [a1 setUserActivityData:v21];
          goto LABEL_58;
        }

        if (v13 == 6)
        {
          v21 = PBReaderReadString();
          [a1 setActionTarget:v21];
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38 & 0x7F) << v22;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_73;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_73:
            [a1 setIsRunnableInBackground:v28];
            goto LABEL_59;
          case 8:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v38 & 0x7F) << v30;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_77;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_77:
            [a1 setHasClip:v36];
            goto LABEL_59;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_75;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_75:
            [a1 setForceOpenInBrowser:v20];
            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBGraphicalFloatReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v19 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v19 & 0x7F) << v6;
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v18 = 0.0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v17 = [a2 data];
        [v17 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setDoubleValue:v18];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPhotosMemoryImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setApplicationBundleIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setMemoryIdentifier:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _SFPBPhotosAlbumImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setApplicationBundleIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setAlbumIdentifier:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _SFPBDefaultPunchoutAppIconImageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        [a1 setCoreSpotlightIdentifier:v14];
LABEL_25:

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBPunchout);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPunchout:v14];
        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setFileProviderIdentifier:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBShortcutsImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setLnPropertyIdentifier:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBClockImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v40 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_57:
      [a1 setHour:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v39 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v39 & 0x7F) << v22;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_53:
      [a1 setMinute:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38 & 0x7F) << v15;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_61:
      [a1 setSecond:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBQuickLookThumbnailImageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        [a1 setCoreSpotlightIdentifier:v14];
LABEL_25:

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBURL);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFilePath:v14];
        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setFileProviderIdentifier:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPersonReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v15 = PBReaderReadString();
          if (v15)
          {
            [a1 addPhoneNumbers:v15];
          }

          goto LABEL_35;
        case 5:
          v15 = PBReaderReadString();
          if (v15)
          {
            [a1 addEmailAddresses:v15];
          }

          goto LABEL_35;
        case 6:
          v15 = PBReaderReadString();
          [a1 setPhotosIdentifier:v15];
          goto LABEL_35;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v15 = PBReaderReadString();
          [a1 setPersonIdentifier:v15];
          goto LABEL_35;
        case 2:
          v15 = PBReaderReadString();
          [a1 setContactIdentifier:v15];
          goto LABEL_35;
        case 3:
          v15 = PBReaderReadString();
          [a1 setDisplayName:v15];
LABEL_35:

          continue;
      }
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPhotosLibraryImageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v21 = objc_alloc_init(_SFPBPerson);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_SFPBPersonReadFrom(v21, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addPeopleInPhoto:v21];
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v21 = PBReaderReadString();
          [a1 setApplicationBundleIdentifier:v21];
LABEL_39:

          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          [a1 setPhotoIdentifier:v21];
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v24[0] & 0x7F) << v14;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_41;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
          [a1 setIsSyndicated:v20];
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBSymbolImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v52 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v52 & 0x7F) << v6;
      if ((v52 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v55 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v55 & 0x7F) << v30;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v12 = v31++ >= 9;
            if (v12)
            {
              v36 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_76:
          [a1 setPrimaryColor:v36];
          continue;
        case 5:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          while (1)
          {
            v54 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v54 & 0x7F) << v45;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v12 = v46++ >= 9;
            if (v12)
            {
              v51 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v51 = 0;
          }

          else
          {
            v51 = v47;
          }

LABEL_90:
          [a1 setSecondaryColor:v51];
          continue;
        case 6:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v53 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v53 & 0x7F) << v22;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_84;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_84:
          [a1 setFillStyle:v28];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v29 = PBReaderReadString();
          [a1 setSymbolName:v29];

          continue;
        case 2:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v57 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v57 & 0x7F) << v38;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v12 = v39++ >= 9;
            if (v12)
            {
              v44 = 0;
              goto LABEL_86;
            }
          }

          v44 = (v40 != 0) & ~[a2 hasError];
LABEL_86:
          [a1 setPunchThroughBackground:v44];
          continue;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v56 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v56 & 0x7F) << v15;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_80;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_80:
          [a1 setBackgroundColor:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBDateReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v19 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v19 & 0x7F) << v6;
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v18 = 0.0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v17 = [a2 data];
        [v17 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setSecondsSince1970:v18];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCalendarImageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBDate);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setDate:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMediaArtworkImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [a1 setUniversalLibraryID:v15];
        goto LABEL_37;
      }

      if (v14 == 3)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v25 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_41;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_41:
        [a1 setMediaEntityType:v22];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setPersistentID:v15];
        goto LABEL_37;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setSpotlightIdentifier:v15];
LABEL_37:

        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppIconImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setBundleIdentifier:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [a1 setIconType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBLocalImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setLocalImageType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMonogramImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setMonogramLetters:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [a1 setMonogramStyle:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBContactImageReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 2)
    {
      v22 = PBReaderReadString();
      if (v22)
      {
        [a1 addContactIdentifiers:v22];
      }

      goto LABEL_33;
    }

    if (v14 == 4)
    {
      v22 = PBReaderReadString();
      [a1 setAppIconBadgeBundleIdentifier:v22];
LABEL_33:

      continue;
    }

    if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_37;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_37:
      [a1 setThreeDTouchEnabled:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBURLImageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBURL);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setUrlValue:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_SFPBURL);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setDarkUrlValue:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPointSizeReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBGraphicalFloat);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setWidth:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_SFPBGraphicalFloat);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setHeight:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBImageReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v51 & 0x7F) << v6;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadData();
        [a1 setImageData:v14];
        goto LABEL_128;
      case 2u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v51 & 0x7F) << v36;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_141;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_141:
        [a1 setIsTemplate:v42];
        goto LABEL_129;
      case 3u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v51 & 0x7F) << v29;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_139;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_139:
        [a1 setShouldCropToCircle:v35];
        goto LABEL_129;
      case 4u:
        v14 = objc_alloc_init(_SFPBGraphicalFloat);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setCornerRadius:v14];
        goto LABEL_128;
      case 5u:
        v14 = objc_alloc_init(_SFPBGraphicalFloat);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setScale:v14];
        goto LABEL_128;
      case 6u:
        v14 = objc_alloc_init(_SFPBPointSize);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPointSizeReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setSize:v14];
        goto LABEL_128;
      case 7u:
        v14 = PBReaderReadString();
        [a1 setContentType:v14];
        goto LABEL_128;
      case 8u:
        v14 = PBReaderReadString();
        [a1 setKeyColor:v14];
        goto LABEL_128;
      case 9u:
        v14 = PBReaderReadString();
        [a1 setIdentifier:v14];
        goto LABEL_128;
      case 0xAu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v51 & 0x7F) << v43;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_145:
        [a1 setSource:v49];
        goto LABEL_129;
      case 0xBu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v51 & 0x7F) << v22;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_137:
        [a1 setCornerRoundingStyle:v28];
        goto LABEL_129;
      case 0xCu:
        v14 = PBReaderReadString();
        [a1 setAccessibilityLabel:v14];
        goto LABEL_128;
      case 0xDu:
        v14 = objc_alloc_init(_SFPBImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setBadgingImage:v14];
        goto LABEL_128;
      case 0x33u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v51 & 0x7F) << v15;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_133:
        [a1 setType:v21];
        goto LABEL_129;
      case 0x34u:
        v14 = objc_alloc_init(_SFPBURLImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBURLImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setUrlImage:v14];
        goto LABEL_128;
      case 0x35u:
        v14 = objc_alloc_init(_SFPBContactImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBContactImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setContactImage:v14];
        goto LABEL_128;
      case 0x36u:
        v14 = objc_alloc_init(_SFPBMonogramImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBMonogramImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setMonogramImage:v14];
        goto LABEL_128;
      case 0x37u:
        v14 = objc_alloc_init(_SFPBLocalImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBLocalImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setLocalImage:v14];
        goto LABEL_128;
      case 0x38u:
        v14 = objc_alloc_init(_SFPBAppIconImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAppIconImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setAppIconImage:v14];
        goto LABEL_128;
      case 0x39u:
        v14 = objc_alloc_init(_SFPBMediaArtworkImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBMediaArtworkImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setMediaArtworkImage:v14];
        goto LABEL_128;
      case 0x3Au:
        v14 = objc_alloc_init(_SFPBCalendarImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCalendarImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setCalendarImage:v14];
        goto LABEL_128;
      case 0x3Bu:
        v14 = objc_alloc_init(_SFPBSymbolImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBSymbolImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setSymbolImage:v14];
        goto LABEL_128;
      case 0x3Cu:
        v14 = objc_alloc_init(_SFPBPhotosLibraryImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPhotosLibraryImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setPhotosLibraryImage:v14];
        goto LABEL_128;
      case 0x3Du:
        v14 = objc_alloc_init(_SFPBQuickLookThumbnailImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBQuickLookThumbnailImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setQuickLookThumbnailImage:v14];
        goto LABEL_128;
      case 0x3Eu:
        v14 = objc_alloc_init(_SFPBClockImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBClockImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setClockImage:v14];
        goto LABEL_128;
      case 0x3Fu:
        v14 = objc_alloc_init(_SFPBShortcutsImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShortcutsImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setShortcutsImage:v14];
        goto LABEL_128;
      case 0x40u:
        v14 = objc_alloc_init(_SFPBDefaultPunchoutAppIconImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDefaultPunchoutAppIconImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setDefaultPunchoutAppIconImage:v14];
        goto LABEL_128;
      case 0x41u:
        v14 = objc_alloc_init(_SFPBPhotosAlbumImage);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPhotosAlbumImageReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setPhotosAlbumImage:v14];
        goto LABEL_128;
      case 0x42u:
        v14 = objc_alloc_init(_SFPBPhotosMemoryImage);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && _SFPBPhotosMemoryImageReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setPhotosMemoryImage:v14];
LABEL_128:

LABEL_129:
          v4 = a2;
          continue;
        }

LABEL_148:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_129;
    }
  }
}

uint64_t _SFPBLatLngReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v21) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v21) & 0x7F) << v6;
      if ((LOBYTE(v21) & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 2)
    {
      v21 = 0.0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setLng:v21];
    }

    else if ((v13 >> 3) == 1)
    {
      v21 = 0.0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setLat:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBActionItemReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v58) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v58 & 0x7F) << v6;
      if ((v58 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        [a1 setLabel:v14];
        goto LABEL_117;
      case 2u:
        v14 = PBReaderReadString();
        [a1 setLabelForLocalMedia:v14];
        goto LABEL_117;
      case 3u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v58 & 0x7F) << v29;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_126;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_126:
        [a1 setIsOverlay:v35];
        goto LABEL_118;
      case 4u:
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addStoreIdentifiers:v14];
        }

        goto LABEL_117;
      case 5u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v58 & 0x7F) << v15;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_120;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_120:
        [a1 setRequiresLocalMedia:v21];
        goto LABEL_118;
      case 6u:
        v14 = PBReaderReadString();
        [a1 setLocalMediaIdentifier:v14];
        goto LABEL_117;
      case 7u:
        v14 = objc_alloc_init(_SFPBPunchout);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setPunchout:v14];
        goto LABEL_117;
      case 8u:
        v14 = PBReaderReadString();
        [a1 setApplicationBundleIdentifier:v14];
        goto LABEL_117;
      case 9u:
        v14 = PBReaderReadString();
        [a1 setContactIdentifier:v14];
        goto LABEL_117;
      case 0xAu:
        v14 = PBReaderReadString();
        [a1 setPhoneNumber:v14];
        goto LABEL_117;
      case 0xBu:
        v14 = PBReaderReadString();
        [a1 setEmail:v14];
        goto LABEL_117;
      case 0xCu:
        v14 = PBReaderReadData();
        [a1 setMapsData:v14];
        goto LABEL_117;
      case 0xDu:
        v14 = objc_alloc_init(_SFPBGraphicalFloat);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setLatitude:v14];
        goto LABEL_117;
      case 0xEu:
        v14 = objc_alloc_init(_SFPBGraphicalFloat);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setLongitude:v14];
        goto LABEL_117;
      case 0xFu:
        v14 = PBReaderReadString();
        [a1 setProvider:v14];
        goto LABEL_117;
      case 0x10u:
        v14 = PBReaderReadString();
        [a1 setOfferType:v14];
        goto LABEL_117;
      case 0x11u:
        v14 = PBReaderReadString();
        [a1 setType:v14];
        goto LABEL_117;
      case 0x12u:
        v14 = PBReaderReadString();
        [a1 setLabelITunes:v14];
        goto LABEL_117;
      case 0x13u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v58 & 0x7F) << v36;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_128;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_128:
        [a1 setIsITunes:v42];
        goto LABEL_118;
      case 0x14u:
        v14 = objc_alloc_init(_SFPBImage);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setIcon:v14];
        goto LABEL_117;
      case 0x15u:
        v14 = objc_alloc_init(_SFPBImage);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setBaseIcon:v14];
        goto LABEL_117;
      case 0x16u:
        v14 = objc_alloc_init(_SFPBLatLng);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBLatLngReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setLocation:v14];
        goto LABEL_117;
      case 0x17u:
        v14 = PBReaderReadString();
        [a1 setMessageIdentifier:v14];
        goto LABEL_117;
      case 0x18u:
        v14 = objc_alloc_init(_SFPBURL);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v14, a2))
        {
          goto LABEL_137;
        }

        PBReaderRecallMark();
        [a1 setMessageURL:v14];
        goto LABEL_117;
      case 0x19u:
        v14 = PBReaderReadString();
        [a1 setPersistentID:v14];
        goto LABEL_117;
      case 0x1Au:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v58 & 0x7F) << v22;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_124;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_124:
        [a1 setMediaEntityType:v28];
        goto LABEL_118;
      case 0x1Bu:
        v14 = PBReaderReadString();
        [a1 setUniversalLibraryID:v14];
        goto LABEL_117;
      case 0x1Cu:
        v14 = PBReaderReadString();
        [a1 setInteractionContentType:v14];
        goto LABEL_117;
      case 0x1Du:
        v14 = objc_alloc_init(_SFPBPunchout);
        v58 = 0;
        v59 = 0;
        if (PBReaderPlaceMark() && _SFPBPunchoutReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setCustomDirectionsPunchout:v14];
LABEL_117:

LABEL_118:
          v4 = a2;
          continue;
        }

LABEL_137:

        return 0;
      case 0x1Eu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v58 & 0x7F) << v50;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_134;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_134:
        [a1 setShouldSearchDirectionsAlongCurrentRoute:v56];
        goto LABEL_118;
      case 0x1Fu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v58 & 0x7F) << v43;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_132:
        [a1 setDirectionsMode:v49];
        goto LABEL_118;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_118;
    }
  }
}

uint64_t _SFPBWeatherColorReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v29) & 0x7F) << v5;
        if ((LOBYTE(v29) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v16 = PBReaderReadString();
            [a1 setCondition:v16];
LABEL_47:

            goto LABEL_56;
          case 2:
            v16 = objc_alloc_init(_SFPBLatLng);
            v29 = 0.0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !_SFPBLatLngReadFrom(v16, a2))
            {
LABEL_59:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setLocation:v16];
            goto LABEL_47;
          case 3:
            v16 = objc_alloc_init(_SFPBDate);
            v29 = 0.0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v16, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setDate:v16];
            goto LABEL_47;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v29 = 0.0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setCloudCoverMidAltPct:v29];
          goto LABEL_56;
        }

        if (v13 == 7)
        {
          v29 = 0.0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setCloudCoverHighAltPct:v29];
          goto LABEL_56;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v29 = 0.0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setCloudCover:v29];
          goto LABEL_56;
        }

        if (v13 == 5)
        {
          v29 = 0.0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setCloudCoverLowAltPct:v29];
          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBGradientColorReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_SFPBColor);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addColors:v20];
        }
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_38:
        [a1 setGradientType:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBColorReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBGraphicalFloat);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
            {
LABEL_81:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setRedComponent:v14];
            goto LABEL_70;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_SFPBGraphicalFloat);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setGreenComponent:v14];
            goto LABEL_70;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(_SFPBGraphicalFloat);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setBlueComponent:v14];
              goto LABEL_70;
            case 4:
              v14 = objc_alloc_init(_SFPBGraphicalFloat);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setAlphaComponent:v14];
              goto LABEL_70;
            case 5:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v24) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v24 & 0x7F) << v15;
                if ((v24 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_78;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v17;
              }

LABEL_78:
              [a1 setColorTintStyle:v21];
              goto LABEL_71;
          }
        }
      }

      else if (v13 > 52)
      {
        switch(v13)
        {
          case '5':
            v14 = objc_alloc_init(_SFPBImageDerivedColor);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageDerivedColorReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setImageDerivedColor:v14];
            goto LABEL_70;
          case '6':
            v14 = objc_alloc_init(_SFPBGradientColor);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBGradientColorReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setGradientColor:v14];
            goto LABEL_70;
          case '7':
            v14 = objc_alloc_init(_SFPBWeatherColor);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBWeatherColorReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setWeatherColor:v14];
            goto LABEL_70;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(_SFPBColor);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setDarkModeColor:v14];
            goto LABEL_70;
          case 0x33:
            v14 = objc_alloc_init(_SFPBCalendarColor);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCalendarColorReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setCalendarColor:v14];
            goto LABEL_70;
          case 0x34:
            v14 = objc_alloc_init(_SFPBAppColor);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBAppColorReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setAppColor:v14];
LABEL_70:

            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCalendarColorReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setEventIdentifier:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppColorReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setApplicationBundleIdentifier:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBImageDerivedColorReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBImage);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setImage:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBActivityIndicatorCardSectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v45 & 0x7F) << v29;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_83;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_83:
            [a1 setHasBottomPadding:v35];
            goto LABEL_78;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_77;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x33:
              v28 = PBReaderReadString();
              [a1 setText:v28];
              goto LABEL_77;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
LABEL_94:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_77;
            case 8:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v45 & 0x7F) << v21;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_89;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_89:
              [a1 setSeparatorStyle:v27];
              goto LABEL_78;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_94;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_77;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_77:

          goto LABEL_78;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_77;
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_91;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_91:
            [a1 setCanBeHidden:v42];
            goto LABEL_78;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_85:
            [a1 setHasTopPadding:v20];
            goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAddToPhotosLibraryCommandReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBImage);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setImage:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBTimeZoneReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setIdentifier:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAirportReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            [a1 setCode:v14];
            goto LABEL_46;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_SFPBTimeZone);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBTimeZoneReadFrom(v14, a2))
            {
LABEL_53:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTimezone:v14];
            goto LABEL_46;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(_SFPBLatLng);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_SFPBLatLngReadFrom(v14, a2))
              {
                goto LABEL_53;
              }

              PBReaderRecallMark();
              [a1 setLocation:v14];
              goto LABEL_46;
            case 4:
              v14 = PBReaderReadString();
              [a1 setCity:v14];
              goto LABEL_46;
            case 5:
              v14 = PBReaderReadString();
              [a1 setStreet:v14];
              goto LABEL_46;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            [a1 setCountryCode:v14];
            goto LABEL_46;
          case 0xA:
            v14 = PBReaderReadString();
            [a1 setCountry:v14];
            goto LABEL_46;
          case 0xB:
            v14 = PBReaderReadString();
            [a1 setName:v14];
            goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = PBReaderReadString();
            [a1 setDistrict:v14];
            goto LABEL_46;
          case 7:
            v14 = PBReaderReadString();
            [a1 setState:v14];
            goto LABEL_46;
          case 8:
            v14 = PBReaderReadString();
            [a1 setPostalCode:v14];
LABEL_46:

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBFlightDateDescriptorReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        LODWORD(v21) = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v21 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v17) = v21;
        [a1 setBufferMinutes:v17];
        goto LABEL_34;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBDate);
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v14, a2))
        {
          goto LABEL_37;
        }

        PBReaderRecallMark();
        [a1 setScheduled:v14];
LABEL_26:

        goto LABEL_34;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v19 = [a2 position];
      if (v19 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_SFPBDate);
    v21 = 0;
    v22 = 0;
    if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v14, a2))
    {
LABEL_37:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCurrent:v14];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPegasusDisplayFieldsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_SFPBDate);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setArrivalTime:v14];
        goto LABEL_27;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        [a1 setDisplayStatus:v14];
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_SFPBDate);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    PBReaderRecallMark();
    [a1 setDepartureTime:v14];
    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBFlightLegReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v30) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v30 & 0x7F) << v6;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v30) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_101:
            [a1 setStatus:v20];
            goto LABEL_95;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_101;
      case 2u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setDeparturePublishedTime:v21];
        goto LABEL_94;
      case 3u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setDepartureActualTime:v21];
        goto LABEL_94;
      case 4u:
        v21 = PBReaderReadString();
        [a1 setDepartureTerminal:v21];
        goto LABEL_94;
      case 5u:
        v21 = PBReaderReadString();
        [a1 setDepartureGate:v21];
        goto LABEL_94;
      case 6u:
        v21 = objc_alloc_init(_SFPBAirport);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAirportReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setDepartureAirport:v21];
        goto LABEL_94;
      case 7u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setArrivalPublishedTime:v21];
        goto LABEL_94;
      case 8u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setArrivalActualTime:v21];
        goto LABEL_94;
      case 9u:
        v21 = PBReaderReadString();
        [a1 setArrivalTerminal:v21];
        goto LABEL_94;
      case 0xAu:
        v21 = PBReaderReadString();
        [a1 setArrivalGate:v21];
        goto LABEL_94;
      case 0xBu:
        v21 = objc_alloc_init(_SFPBAirport);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAirportReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setArrivalAirport:v21];
        goto LABEL_94;
      case 0xCu:
        v21 = objc_alloc_init(_SFPBAirport);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAirportReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setDivertedAirport:v21];
        goto LABEL_94;
      case 0xDu:
        v21 = PBReaderReadString();
        [a1 setTitle:v21];
        goto LABEL_94;
      case 0xEu:
        v21 = PBReaderReadString();
        [a1 setBaggageClaim:v21];
        goto LABEL_94;
      case 0xFu:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setDepartureGateClosedTime:v21];
        goto LABEL_94;
      case 0x10u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setDepartureRunwayTime:v21];
        goto LABEL_94;
      case 0x11u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setArrivalRunwayTime:v21];
        goto LABEL_94;
      case 0x12u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setArrivalGateTime:v21];
        goto LABEL_94;
      case 0x13u:
        v21 = objc_alloc_init(_SFPBDate);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setLastUpdatedTime:v21];
        goto LABEL_94;
      case 0x14u:
        v21 = objc_alloc_init(_SFPBPegasusDisplayFields);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPegasusDisplayFieldsReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setPegasusDisplayFields:v21];
        goto LABEL_94;
      case 0x15u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v30) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v30 & 0x7F) << v22;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_105:
        [a1 setPegasusDefinedState:v28];
        goto LABEL_95;
      case 0x16u:
        v21 = objc_alloc_init(_SFPBFlightDateDescriptor);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFlightDateDescriptorReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setGateArrivalTimes:v21];
        goto LABEL_94;
      case 0x17u:
        v21 = objc_alloc_init(_SFPBFlightDateDescriptor);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFlightDateDescriptorReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setRunwayArrivalTimes:v21];
        goto LABEL_94;
      case 0x18u:
        v21 = objc_alloc_init(_SFPBFlightDateDescriptor);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFlightDateDescriptorReadFrom(v21, a2))
        {
          goto LABEL_108;
        }

        PBReaderRecallMark();
        [a1 setGateDepartureTimes:v21];
        goto LABEL_94;
      case 0x19u:
        v21 = objc_alloc_init(_SFPBFlightDateDescriptor);
        v30 = 0;
        v31 = 0;
        if (PBReaderPlaceMark() && _SFPBFlightDateDescriptorReadFrom(v21, a2))
        {
          PBReaderRecallMark();
          [a1 setRunwayDepartureTimes:v21];
LABEL_94:

LABEL_95:
          v4 = a2;
          continue;
        }

LABEL_108:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_95;
    }
  }
}

uint64_t _SFPBFlightReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = PBReaderReadString();
            [a1 setCarrierName:v14];
            goto LABEL_41;
          }

          if (v13 == 4)
          {
            v14 = PBReaderReadString();
            [a1 setFlightNumber:v14];
            goto LABEL_41;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            [a1 setFlightID:v14];
            goto LABEL_41;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            [a1 setCarrierCode:v14];
            goto LABEL_41;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBFlightLeg);
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !_SFPBFlightLegReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addLegs:v14];
          }

          goto LABEL_41;
        }

        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          [a1 setOperatorCarrierCode:v14];
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setOperatorFlightNumber:v14];
            goto LABEL_41;
          case 8:
            v14 = PBReaderReadString();
            [a1 setCarrierPhoneNumber:v14];
            goto LABEL_41;
          case 9:
            v14 = PBReaderReadString();
            [a1 setCarrierWebsite:v14];
LABEL_41:

            goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBApiResultsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_48:
        [a1 setStatus:v28];
      }

      else if (v13 == 100)
      {
        v21 = objc_alloc_init(_SFPBFlight);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBFlightReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addFlights:v21];
        }
      }

      else if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_52:
        [a1 setResultType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppAutoShortcutsItemReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setBundleIdentifier:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppAutoShortcutsButtonItemReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_SFPBAppAutoShortcutsItem);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBAppAutoShortcutsItemReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setAppAutoShortcutsItem:v20];
      }

      else if ((v12 >> 3) == 100)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setUniqueId:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppEntityAnnotationReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setEntityIdentifer:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setTypeIdentifer:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _SFPBAppIconCardSectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v28 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
            {
LABEL_96:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_79;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
            goto LABEL_79;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_79;
            case 4:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v45 & 0x7F) << v29;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_85;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_85:
              [a1 setCanBeHidden:v35];
              goto LABEL_80;
            case 5:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v45 & 0x7F) << v21;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_87;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_87:
              [a1 setHasTopPadding:v27];
              goto LABEL_80;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v28 = objc_alloc_init(_SFPBColor);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_79;
          case 0x33:
            v28 = PBReaderReadString();
            [a1 setTitle:v28];
            goto LABEL_79;
          case 0x34:
            v28 = PBReaderReadString();
            [a1 setApplicationBundleIdentifier:v28];
LABEL_79:

            goto LABEL_80;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_93;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_93:
            [a1 setHasBottomPadding:v42];
            goto LABEL_80;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_79;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            [a1 setSeparatorStyle:v20];
            goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppLinkReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_SFPBImage);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setImage:v14];
          goto LABEL_40;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_44:
          [a1 setImageAlign:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setTitle:v14];
LABEL_40:

          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBPunchout);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setAppPunchout:v14];
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAppLinkCardSectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 50)
        {
          switch(v13)
          {
            case '3':
              v14 = PBReaderReadString();
              [a1 setTitle:v14];
              goto LABEL_84;
            case '4':
              v14 = PBReaderReadString();
              [a1 setSubtitle:v14];
              goto LABEL_84;
            case 'e':
              v14 = objc_alloc_init(_SFPBAppLink);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBAppLinkReadFrom(v14, a2))
              {
LABEL_101:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addAppLinks:v14];
              }

              goto LABEL_84;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_84;
            case 8:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v45 & 0x7F) << v29;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_96;
                }
              }

              if ([a2 hasError])
              {
                v35 = 0;
              }

              else
              {
                v35 = v31;
              }

LABEL_96:
              [a1 setSeparatorStyle:v35];
              goto LABEL_85;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_101;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_84;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v45 & 0x7F) << v22;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_92;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_92:
            [a1 setCanBeHidden:v28];
            goto LABEL_85;
          case 5:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_98;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_98:
            [a1 setHasTopPadding:v42];
            goto LABEL_85;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v45 & 0x7F) << v15;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_90;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_90:
            [a1 setHasBottomPadding:v21];
            goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_101;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_84;
          case 2:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_84;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
LABEL_84:

            goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBArchiveViewCardSectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v45 & 0x7F) << v29;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_83;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_83:
            [a1 setHasBottomPadding:v35];
            goto LABEL_78;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_77;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x33:
              v28 = PBReaderReadData();
              [a1 setArchive:v28];
              goto LABEL_77;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
LABEL_94:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_77;
            case 8:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v45 & 0x7F) << v21;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_89;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_89:
              [a1 setSeparatorStyle:v27];
              goto LABEL_78;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_94;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_77;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_77:

          goto LABEL_78;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_77;
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_91;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_91:
            [a1 setCanBeHidden:v42];
            goto LABEL_78;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_85:
            [a1 setHasTopPadding:v20];
            goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}