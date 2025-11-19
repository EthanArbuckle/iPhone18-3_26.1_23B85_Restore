@interface PXProactiveSuggester
+ (id)_clientIDForTimelineSize:(unint64_t)a3;
+ (id)_proactiveSuggestionsFromTimelineEntries:(id)a3 withClient:(id)a4 forTimelineSize:(unint64_t)a5;
+ (id)proactiveCriterionForFeaturedPhoto:(id)a3;
+ (id)proactiveCriterionForMemory:(id)a3;
+ (unint64_t)_applicableLayoutForTimelineSize:(unint64_t)a3;
+ (void)updateProactiveSuggestionsFromTimelineEntries:(id)a3 forTimelineSize:(unint64_t)a4;
@end

@implementation PXProactiveSuggester

+ (unint64_t)_applicableLayoutForTimelineSize:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A53817D0[a3];
  }
}

+ (id)_clientIDForTimelineSize:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7730978[a3];
  }
}

+ (id)_proactiveSuggestionsFromTimelineEntries:(id)a3 withClient:(id)a4 forTimelineSize:(unint64_t)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v34 = a4;
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = @"com.apple.mobileslideshow.PhotosReliveWidget";
    v33 = [a1 _applicableLayoutForTimelineSize:a5];
    v31 = v8;
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        v15 = 0;
        v35 = v13;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * v15);
          v17 = [v16 proactiveCriterion];
          if ([v17 length])
          {
            v18 = [v16 assetLocalIdentifier];
            v19 = [v16 startTime];
            v20 = [v16 endTime];
            if ([v18 length])
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21 || v20 == 0)
            {
              v25 = PLMemoriesGetLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v42 = v16;
                _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_ERROR, "ProactiveSuggester - invalid timeline entry: %@", buf, 0xCu);
              }
            }

            else
            {
              v23 = MEMORY[0x1E696AEC0];
              [v20 timeIntervalSinceReferenceDate];
              v25 = [v23 stringWithFormat:@"%@_%.f", v18, v24];
              v26 = [v34 createSuggestionWithAppBundleIdentifier:@"com.apple.mobileslideshow" widgetBundleIdentifier:@"com.apple.mobileslideshow.PhotosReliveWidget" widgetKind:@"com.apple.mobileslideshow.PhotosReliveWidget" criterion:v17 applicableLayouts:v33 suggestionIdentifier:v25 startDate:v19 endDate:v20 intent:0 metadata:0];
              v27 = v26;
              if (v26)
              {
                [v32 addObject:v26];
              }

              else
              {
                v28 = PLMemoriesGetLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v42 = v16;
                  _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "ProactiveSuggester - failed to create suggestion for entry: %@", buf, 0xCu);
                }
              }

              v13 = v35;
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    v29 = @"com.apple.mobileslideshow.PhotosReliveWidget";
    v8 = v31;
  }

  else
  {
    v29 = PLMemoriesGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEBUG, "ProactiveSuggester: no timeline entries", buf, 2u);
    }

    v32 = MEMORY[0x1E695E0F0];
  }

  return v32;
}

+ (void)updateProactiveSuggestionsFromTimelineEntries:(id)a3 forTimelineSize:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLTimelineGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, a1);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Proactive - UpdateProactiveSuggestionsForTimeline", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v10 = [a1 _clientIDForTimelineSize:a4];
  if (!v10)
  {
    goto LABEL_12;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v11 = getATXProactiveCardSuggestionClientClass_softClass;
  v29 = getATXProactiveCardSuggestionClientClass_softClass;
  if (!getATXProactiveCardSuggestionClientClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getATXProactiveCardSuggestionClientClass_block_invoke;
    v31 = &unk_1E774BD00;
    v32 = &v26;
    __getATXProactiveCardSuggestionClientClass_block_invoke(buf);
    v11 = v27[3];
  }

  v12 = v11;
  _Block_object_dispose(&v26, 8);
  v13 = [[v11 alloc] initWithSourceId:v10];
  if (v13)
  {
    v14 = [a1 _proactiveSuggestionsFromTimelineEntries:v6 withClient:v13 forTimelineSize:a4];
    v15 = PLMemoriesGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      *buf = 134218242;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "ProactiveSuggester: %lu suggestions for %@", buf, 0x16u);
    }

    if ([v14 count])
    {
      v17 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __86__PXProactiveSuggester_updateProactiveSuggestionsFromTimelineEntries_forTimelineSize___block_invoke_54;
      v24[3] = &unk_1E774C5C0;
      v24[4] = v10;
      [v13 updateSuggestions:v14 completionHandler:v24];
    }

    else
    {
      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __86__PXProactiveSuggester_updateProactiveSuggestionsFromTimelineEntries_forTimelineSize___block_invoke;
      v25[3] = &unk_1E774C5C0;
      v25[4] = v10;
      [v13 clearSuggestionsWithCompletionHandler:v25];
    }

    v21 = PLTimelineGetLog();
    v22 = os_signpost_id_make_with_pointer(v21, a1);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, OS_SIGNPOST_INTERVAL_END, v23, "Proactive - UpdateProactiveSuggestionsForTimeline", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  else
  {
LABEL_12:
    v18 = PLMemoriesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "ProactiveSuggester: client is nil for %tu", buf, 0xCu);
    }

    v14 = PLTimelineGetLog();
    v19 = os_signpost_id_make_with_pointer(v14, a1);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v20, "Proactive - UpdateProactiveSuggestionsForTimeline", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v13 = v14;
  }
}

void __86__PXProactiveSuggester_updateProactiveSuggestionsFromTimelineEntries_forTimelineSize___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLMemoriesGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "ProactiveSuggester: cleared suggestions for %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "ProactiveSuggester - clearSuggestions for %@ error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

void __86__PXProactiveSuggester_updateProactiveSuggestionsFromTimelineEntries_forTimelineSize___block_invoke_54(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLMemoriesGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "ProactiveSuggester: updated suggestions for %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "ProactiveSuggester - updateSuggestions for %@ error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

+ (id)proactiveCriterionForFeaturedPhoto:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 subtype];

  v6 = @"PhotosContentFallback";
  if (v4 == 5)
  {
    v6 = @"PhotosFeaturedPhotoOutstander";
  }

  if (v4 == 3)
  {
    v6 = @"PhotosFeaturedPhotoRecentInterest";
  }

  if (v5 == 401)
  {
    return @"PhotosFeaturedPhotoOnThisDay";
  }

  else
  {
    return v6;
  }
}

+ (id)proactiveCriterionForMemory:(id)a3
{
  v3 = a3;
  v4 = [v3 category];
  v5 = [v3 subcategory];
  v6 = MEMORY[0x1E6978918];
  v7 = [MEMORY[0x1E695DF00] date];
  LODWORD(v6) = [v6 isMemory:v3 proactiveWorthyAtDate:v7];

  if (v6)
  {
    if (v5 == 210)
    {
      v8 = @"PhotosMemoryBirthday";
    }

    else
    {
      if (v4 <= 201)
      {
        if (v4 == 23)
        {
          v8 = @"PhotosMemoryDayInHistoryAggregation";
          goto LABEL_5;
        }

        if (v4 == 24)
        {
          v8 = @"PhotosMemoryRecentHighlights";
          goto LABEL_5;
        }
      }

      else
      {
        switch(v4)
        {
          case 213:
            v8 = @"PhotosMemoryHolidayInHistory";
            goto LABEL_5;
          case 212:
            v8 = @"PhotosMemoryCelebratedHolidayInHistory";
            goto LABEL_5;
          case 202:
            v8 = @"PhotosMemoryDayInHistory";
            goto LABEL_5;
        }
      }

      if ([v3 isMustSee])
      {
        v8 = @"PhotosMemoryFeaturedMustSee";
      }

      else if ([v3 isStellar])
      {
        v8 = @"PhotosMemoryFeaturedStellar";
      }

      else if ([v3 isGreat])
      {
        v8 = @"PhotosMemoryFeaturedGreat";
      }

      else
      {
        v8 = @"PhotosMemoryFeatured";
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_5:

  return v8;
}

@end