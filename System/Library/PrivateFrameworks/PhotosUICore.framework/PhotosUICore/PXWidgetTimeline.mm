@interface PXWidgetTimeline
+ (BOOL)_requestWidgetTimelineReloadForWidgetKind:(id)a3 withError:(id *)a4;
+ (BOOL)requestAlbumWidgetTimelineReloadWithError:(id *)a3;
+ (BOOL)requestForYouWidgetTimelineReloadWithError:(id *)a3;
+ (id)timelineFromLibrary:(id)a3;
+ (id)timelineFromLibrary:(id)a3 albumIdentifier:(id)a4 widgetIdentifier:(id)a5 widgetSize:(CGSize)a6;
+ (id)timelineFromLibrary:(id)a3 albumIdentifier:(id)a4 widgetIdentifier:(id)a5 widgetSize:(CGSize)a6 withOptions:(id)a7;
+ (id)timelineFromLibrary:(id)a3 assetLocalIdentifiers:(id)a4 widgetIdentifier:(id)a5 widgetSize:(CGSize)a6 withOptions:(id)a7;
+ (id)timelineFromLibrary:(id)a3 forWidgetSize:(CGSize)a4 timelineSize:(unint64_t)a5;
+ (id)timelineFromLibrary:(id)a3 timelineSize:(unint64_t)a4 withOptions:(id)a5;
+ (void)requestReloadForAllWidgetTimelines;
@end

@implementation PXWidgetTimeline

+ (BOOL)_requestWidgetTimelineReloadForWidgetKind:(id)a3 withError:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLMemoriesGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Calling reloadTimeline on CHSTimelineController for widget kind %@", &v13, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x1E6994360]) initWithExtensionBundleIdentifier:@"com.apple.mobileslideshow.PhotosReliveWidget" kind:v5];
  v8 = [v7 reloadTimelineWithReason:@"RequestedByPhotosUI"];
  v9 = PLMemoriesGetLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "CHSTimelineController reloadTimeline error: %@ for widget kind %@", &v13, 0x16u);
    }

    if (a4)
    {
      v11 = v8;
      *a4 = v8;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "CHSTimelineController reloadTimeline completed for widget kind %@", &v13, 0xCu);
    }
  }

  return v8 == 0;
}

+ (void)requestReloadForAllWidgetTimelines
{
  [a1 requestForYouWidgetTimelineReloadWithError:0];

  [a1 requestAlbumWidgetTimelineReloadWithError:0];
}

+ (BOOL)requestAlbumWidgetTimelineReloadWithError:(id *)a3
{
  v5 = PLTimelineGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, a1);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RequestAlbumWidgetTimelineReload", " enableTelemetry=YES ", v9, 2u);
    }
  }

  return [a1 _requestWidgetTimelineReloadForWidgetKind:@"com.apple.mobileslideshow.PhotosReliveWidget.collections" withError:a3];
}

+ (BOOL)requestForYouWidgetTimelineReloadWithError:(id *)a3
{
  v5 = PLTimelineGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, a1);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RequestYouWidgetTimelineReload", " enableTelemetry=YES ", v9, 2u);
    }
  }

  return [a1 _requestWidgetTimelineReloadForWidgetKind:@"com.apple.mobileslideshow.PhotosReliveWidget" withError:a3];
}

+ (id)timelineFromLibrary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[PXTimelineDataSourceOptions alloc] initWithMemoriesOnly];
  v5 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:v3 options:v4];
  v6 = [[PXTimelineScheduler alloc] initWithTimelineDataSource:v5];
  v7 = objc_alloc_init(PXTimelineSchedulerOptions);
  v21 = v4;
  v22 = v3;
  if (PFOSVariantHasInternalUI())
  {
    v8 = +[PXMemoriesRelatedSettings sharedInstance];
    v9 = [v8 timelineSchedulerMode];

    v10 = [PXMemoriesRelatedSettings schedulerOptionsFromTimelineSchedulerMode:v9];

    v11 = PLMemoriesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = v9;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Timeline scheduler mode: %lu", buf, 0xCu);
    }

    v7 = v10;
  }

  v12 = [(PXTimelineScheduler *)v6 scheduledTimelineEntriesWithOptions:v7, v6];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = PLMemoriesGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29 = v17;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEBUG, "Timeline Entry: %@", buf, 0xCu);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  return v12;
}

+ (id)timelineFromLibrary:(id)a3 assetLocalIdentifiers:(id)a4 widgetIdentifier:(id)a5 widgetSize:(CGSize)a6 withOptions:(id)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[PXTimelineDataSource alloc] initWithAssetIdentifiers:v14 widgetIdentifier:v13 widgetSize:v15 photoLibrary:width, height];

  v17 = [[PXTimelineScheduler alloc] initWithTimelineDataSource:v16];
  v18 = [(PXTimelineScheduler *)v17 scheduledTimelineEntriesWithOptions:v12];

  return v18;
}

+ (id)timelineFromLibrary:(id)a3 albumIdentifier:(id)a4 widgetIdentifier:(id)a5 widgetSize:(CGSize)a6 withOptions:(id)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[PXTimelineDataSource alloc] initWithAlbumLocalIdentifier:v14 widgetIdentifier:v13 widgetSize:v15 photoLibrary:width, height];

  v17 = [[PXTimelineScheduler alloc] initWithTimelineDataSource:v16];
  v18 = [(PXTimelineScheduler *)v17 scheduledTimelineEntriesWithOptions:v12];

  return v18;
}

+ (id)timelineFromLibrary:(id)a3 albumIdentifier:(id)a4 widgetIdentifier:(id)a5 widgetSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PXTimelineDataSource alloc] initWithAlbumLocalIdentifier:v11 widgetIdentifier:v10 widgetSize:v12 photoLibrary:width, height];

  v14 = [[PXTimelineScheduler alloc] initWithTimelineDataSource:v13];
  v15 = objc_alloc_init(PXTimelineSchedulerOptions);
  if (PFOSVariantHasInternalUI())
  {
    v16 = +[PXMemoriesRelatedSettings sharedInstance];
    v17 = [v16 timelineSchedulerMode];

    v18 = [PXMemoriesRelatedSettings schedulerOptionsFromTimelineSchedulerMode:v17];

    v19 = PLMemoriesGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134217984;
      v23 = v17;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "Timeline scheduler mode: %lu", &v22, 0xCu);
    }

    v15 = v18;
  }

  v20 = [(PXTimelineScheduler *)v14 scheduledTimelineEntriesWithOptions:v15];

  return v20;
}

+ (id)timelineFromLibrary:(id)a3 timelineSize:(unint64_t)a4 withOptions:(id)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = PLTimelineGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, a1);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GenerateTimeline", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v14 = [PXTimelineSize sizeDescriptionForSizeClass:a4];
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v15 addObject:v16];

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = objc_alloc_init(MEMORY[0x1E6994380]);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __65__PXWidgetTimeline_timelineFromLibrary_timelineSize_withOptions___block_invoke;
  v58[3] = &unk_1E772DCB0;
  v53 = v14;
  v59 = v53;
  v19 = v15;
  v60 = v19;
  v62 = a2;
  v63 = a1;
  v20 = v17;
  v61 = v20;
  v49 = v18;
  [v18 allConfiguredWidgetsWithCompletion:v58];
  v21 = v10;
  v46 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:v9 options:v10];
  v22 = [[PXTimelineScheduler alloc] initWithTimelineDataSource:v46];
  v23 = objc_alloc_init(PXTimelineSchedulerOptions);
  v51 = v9;
  v52 = v22;
  if (PFOSVariantHasInternalUI())
  {
    v24 = v20;
    v25 = v19;
    v26 = +[PXMemoriesRelatedSettings sharedInstance];
    v27 = [v26 timelineSchedulerMode];

    v28 = [PXMemoriesRelatedSettings schedulerOptionsFromTimelineSchedulerMode:v27];

    v29 = PLMemoriesGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v66 = v27;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEFAULT, "Timeline scheduler mode: %lu", buf, 0xCu);
    }

    v23 = v28;
    v19 = v25;
    v20 = v24;
    v22 = v52;
  }

  ptr = a1;
  v30 = dispatch_time(0, 1000000000);
  v47 = v20;
  if (dispatch_group_wait(v20, v30))
  {
    v31 = PLMemoriesGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v66 = v53;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "WidgetTimeline %@ - failed to get all CHS configurations due to timeout!", buf, 0xCu);
    }
  }

  v48 = v19;
  [(PXTimelineSchedulerOptions *)v23 updateOptionsForTimelineSize:a4 withTimelineSizes:v19];
  v32 = PLMemoriesGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(PXTimelineSchedulerOptions *)v23 timelineIndex];
    v34 = [(PXTimelineSchedulerOptions *)v23 numberOfTimelines];
    *buf = 138412802;
    v66 = v53;
    v67 = 2048;
    v68 = v33;
    v69 = 2048;
    v70 = v34;
    _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_DEFAULT, "WidgetTimeline %@ - index: %zd, timelines: %zd", buf, 0x20u);
  }

  v35 = [(PXTimelineScheduler *)v22 scheduledTimelineEntriesWithOptions:v23];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v55;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v54 + 1) + 8 * i);
        v41 = PLMemoriesGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v66 = v40;
          _os_log_impl(&dword_1A3C1C000, v41, OS_LOG_TYPE_DEBUG, "Timeline Entry: %@", buf, 0xCu);
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v37);
  }

  [PXProactiveSuggester updateProactiveSuggestionsFromTimelineEntries:v35 forTimelineSize:a4];
  v42 = PLTimelineGetLog();
  v43 = os_signpost_id_make_with_pointer(v42, ptr);
  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v44 = v43;
    if (os_signpost_enabled(v42))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v42, OS_SIGNPOST_INTERVAL_END, v44, "GenerateTimeline", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v35;
}

void __65__PXWidgetTimeline_timelineFromLibrary_timelineSize_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLMemoriesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "WidgetTimeline %@ - failed to get all CHS configuration: %@", buf, 0x16u);
    }
  }

  v22 = v6;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v9;
        v10 = [*(*(&v31 + 1) + 8 * v9) widgetConfigurationsForApplicationContainerBundleIdentifier:@"com.apple.mobileslideshow"];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 widget];
              v17 = PLMemoriesGetLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = [v15 uniqueIdentifier];
                *buf = 138412546;
                v38 = v18;
                v39 = 2112;
                v40 = v16;
                _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "Widget reference uniqueIdentifier: %@, widget: %@", buf, 0x16u);
              }

              v19 = [v16 family];
              if (v19 > 2)
              {
                if (v19 == 3)
                {
                  v20 = *(a1 + 40);
                  v21 = &unk_1F19099B8;
                }

                else
                {
                  if (v19 != 4)
                  {
LABEL_24:
                    PXAssertGetLog();
                  }

                  v20 = *(a1 + 40);
                  v21 = &unk_1F19099D0;
                }
              }

              else if (v19 == 1)
              {
                v20 = *(a1 + 40);
                v21 = &unk_1F1909988;
              }

              else
              {
                if (v19 != 2)
                {
                  goto LABEL_24;
                }

                v20 = *(a1 + 40);
                v21 = &unk_1F19099A0;
              }

              [v20 addObject:v21];
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v12);
        }

        v9 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  dispatch_group_leave(*(a1 + 48));
}

+ (id)timelineFromLibrary:(id)a3 forWidgetSize:(CGSize)a4 timelineSize:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
  v11 = [a1 timelineFromLibrary:v9 timelineSize:a5 withOptions:v10];

  return v11;
}

@end