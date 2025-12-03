@interface PXMemoriesRelatedTapToRadarService
+ (BOOL)isServiceAvailableForProviders:(id)providers;
- (BOOL)canProvideContextualViewController;
- (id)_libraryStatDictionary;
- (id)_providerItemsSummary;
- (id)collectProviderItemsSummaryAndLibraryStat;
- (id)consoleDescription;
- (id)contextualViewController;
- (id)diagnosticFilesForPeopleContactSuggestionWithError:(id *)error;
- (id)parseProviderItemsSummary:(id)summary error:(id *)error;
- (id)snapshotMemoriesRelatedResults:(id)results error:(id *)error;
- (id)tapToRadarURLWithTitle:(id)title descriptionString:(id)string;
- (id)writeGraphData:(id)data errorsList:(id)list;
- (id)writeGraphStatistics:(id)statistics errorsList:(id)list;
- (id)writeLibraryStatistics:(id)statistics analysisClient:(id)client errorsList:(id)list;
- (id)writeMemoriesSummary:(id)summary analysisClient:(id)client errorsList:(id)list;
- (id)writePeopleContactSuggestionsGraphStatistics:(id)statistics errorsList:(id)list;
- (void)writeErrorsToErrorLog:(id)log;
@end

@implementation PXMemoriesRelatedTapToRadarService

+ (BOOL)isServiceAvailableForProviders:(id)providers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  providersCopy = providers;
  v4 = [providersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(providersCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierMemory", v10}])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [providersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)contextualViewController
{
  if ([(PXMemoriesRelatedTapToRadarService *)self canProvideConsoleDescription])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PXMemoriesRelatedTapToRadarService_contextualViewController__block_invoke;
    v6[3] = &unk_1E774BB70;
    v6[4] = self;
    v3 = [MEMORY[0x1E69DD258] px_viewControllerWithOutput:v6];
    title = [(PXMemoriesRelatedTapToRadarService *)self title];
    [v3 setTitle:title];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canProvideContextualViewController
{
  v2 = +[PXDiagnosticsSettings sharedInstance];
  enableGraphService = [v2 enableGraphService];

  return enableGraphService;
}

- (id)snapshotMemoriesRelatedResults:(id)results error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  photoAnalysisClient = [px_deprecated_appPhotoLibrary photoAnalysisClient];
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0;
  v35 = [(PXMemoriesRelatedTapToRadarService *)self parseProviderItemsSummary:resultsCopy error:&v38];
  v10 = v38;
  v11 = v10;
  if (error && v10)
  {
    v12 = v10;
    *error = v11;
    v13 = [v11 description];
    [array addObject:v13];
  }

  v14 = MEMORY[0x1E69BE3F0];
  pathManager = [px_deprecated_appPhotoLibrary pathManager];
  v16 = [v14 createOrEmptyMemoriesRelatedSnapshotOutputFolderWithPathManager:pathManager];

  v17 = [v35 mutableCopy];
  v18 = [(PXMemoriesRelatedTapToRadarService *)self writeGraphData:photoAnalysisClient errorsList:array];
  v19 = [(PXMemoriesRelatedTapToRadarService *)self writeGraphStatistics:photoAnalysisClient errorsList:array];
  v20 = [(PXMemoriesRelatedTapToRadarService *)self writeMemoriesSummary:v17 analysisClient:photoAnalysisClient errorsList:array];
  v21 = [(PXMemoriesRelatedTapToRadarService *)self writeLibraryStatistics:resultsCopy analysisClient:photoAnalysisClient errorsList:array];
  if (v11)
  {
    if ([array count])
    {
      [(PXMemoriesRelatedTapToRadarService *)self writeErrorsToErrorLog:array];
    }

    v22 = 0;
  }

  else
  {
    v32 = [v17 objectForKey:@"identifiers"];
    v34 = [v32 objectForKey:@"referenceObjectIdentifier"];
    allValues = [v34 allValues];
    firstObject = [allValues firstObject];

    v33 = [firstObject objectForKey:@"referenceOrigin"];
    if (v33)
    {
      [v17 setObject:v33 forKey:@"referenceObjectType"];
      v24 = PLUIGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v33;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEBUG, "Snapshotting Memories has started with reference object type %@.", &buf, 0xCu);
      }

      v25 = [v17 objectForKey:@"listOfSummaries"];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__209800;
      v42 = __Block_byref_object_dispose__209801;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __75__PXMemoriesRelatedTapToRadarService_snapshotMemoriesRelatedResults_error___block_invoke;
      v37[3] = &unk_1E77453D8;
      v37[4] = &buf;
      [v25 enumerateKeysAndObjectsUsingBlock:v37];
      if ([array count])
      {
        [(PXMemoriesRelatedTapToRadarService *)self writeErrorsToErrorLog:array];
        if (error)
        {
          *error = [array firstObject];
        }
      }

      v26 = PLUIGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *v36 = 0;
        _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEBUG, "Snapshotting Memories and Related results has completed.", v36, 2u);
      }

      if ([array count])
      {
        v27 = 0;
      }

      else
      {
        v27 = v17;
      }

      v22 = v27;
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v28 = [MEMORY[0x1E696AD60] stringWithFormat:@"== Unknown Reference Object Type Error ==\n"];
      v25 = v28;
      if (v34)
      {
        [v28 appendFormat:@"Reference Object Info:\n(%@)\n", v34];
      }

      else
      {
        [v28 appendFormat:@"Reference Object is nil\n"];
      }

      v29 = PLUIGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_ERROR, "%@\n", &buf, 0xCu);
      }

      [array addObject:v25];
      [(PXMemoriesRelatedTapToRadarService *)self writeErrorsToErrorLog:array];
      v22 = 0;
    }
  }

  return v22;
}

void __75__PXMemoriesRelatedTapToRadarService_snapshotMemoriesRelatedResults_error___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  [v2 removeObjectForKey:@"referenceOrigin"];
  v3 = [v2 objectForKey:@"momentLocalIdentifiers"];
  if (![v3 count])
  {
    v4 = [v2 objectForKey:@"localIdentifier"];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

    v3 = v5;
  }

  if ([v3 count])
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v3 componentsJoinedByString:{@", "}];
    [v6 setObject:v2 forKey:v7];
  }
}

- (id)diagnosticFilesForPeopleContactSuggestionWithError:(id *)error
{
  v4 = [MEMORY[0x1E69789A8] px:error deprecated:?appPhotoLibrary];
  photoAnalysisClient = [v4 photoAnalysisClient];
  array = [MEMORY[0x1E695DF70] array];
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v8 = [MEMORY[0x1E69BE3F0] createOrEmptyMemoriesRelatedSnapshotOutputFolderWithPathManager:systemLibraryPathManager];
  v9 = [(PXMemoriesRelatedTapToRadarService *)self writeGraphData:photoAnalysisClient errorsList:array];
  v10 = [(PXMemoriesRelatedTapToRadarService *)self writePeopleContactSuggestionsGraphStatistics:photoAnalysisClient errorsList:array];
  v11 = [(PXMemoriesRelatedTapToRadarService *)self writeGraphStatistics:photoAnalysisClient errorsList:array];
  array2 = [MEMORY[0x1E695DF70] array];
  v13 = array2;
  if (v9)
  {
    [array2 addObject:v9];
  }

  if (v10)
  {
    [v13 addObject:v10];
  }

  if (v11)
  {
    [v13 addObject:v11];
  }

  return v13;
}

- (void)writeErrorsToErrorLog:(id)log
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  logCopy = log;
  v5 = [v3 stringWithFormat:@"ErrorsSnapshotMemoriesAndRelated.log"];
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v7 = [MEMORY[0x1E69BE3F0] memoriesAndRelatedDiagnosticsOutputURLWithPathManager:systemLibraryPathManager];
  v8 = [v7 URLByAppendingPathComponent:v5];

  v15 = 0;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:logCopy format:100 options:0 error:&v15];

  v10 = v15;
  if (![v9 length] || (v14 = v10, v11 = objc_msgSend(v9, "writeToURL:options:error:", v8, 1073741825, &v14), v12 = v14, v10, v10 = v12, (v11 & 1) == 0))
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed writing an error log due to an error - %@\n", buf, 0xCu);
    }
  }
}

- (id)writeLibraryStatistics:(id)statistics analysisClient:(id)client errorsList:(id)list
{
  v23 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v7 = [statistics objectForKey:@"libraryStatSummary"];
  if ([v7 count])
  {
    systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v9 = [MEMORY[0x1E69BE3F0] memoriesAndRelatedDiagnosticsOutputURLWithPathManager:systemLibraryPathManager];
    v10 = [v9 URLByAppendingPathComponent:@"LibraryStatistics.plist"];

    path = [v10 path];
    v20 = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v20];
    v19 = v20;
    v13 = v20;
    v14 = [v12 writeToURL:v10 options:0 error:&v19];
    v15 = v19;

    if ((v14 & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AD60] stringWithFormat:@"== writing library statistics summary ==\n"];
      [v16 appendFormat:@"Failed writing Library Statistics List - ERROR(%@)\n", v15];
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "== writing library statistics summary ==\nFailed writing Library Statistics List - ERROR(%@)\n", buf, 0xCu);
      }

      [listCopy addObject:v16];
    }
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)writeMemoriesSummary:(id)summary analysisClient:(id)client errorsList:(id)list
{
  v41 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  clientCopy = client;
  listCopy = list;
  v10 = [summaryCopy objectForKey:@"listOfMemoriesSummaries"];
  array = [MEMORY[0x1E695DF70] array];
  if (v10)
  {
    systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v13 = [MEMORY[0x1E69BE3F0] memoriesAndRelatedDiagnosticsOutputURLWithPathManager:systemLibraryPathManager];
    v14 = [v13 URLByAppendingPathComponent:@"Memories"];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__209800;
    v37 = __Block_byref_object_dispose__209801;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v16 = (v34 + 5);
    obj = v34[5];
    v17 = [defaultManager createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&obj];
    objc_storeStrong(v16, obj);

    v32 = v17;
    if (v30[3])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__PXMemoriesRelatedTapToRadarService_writeMemoriesSummary_analysisClient_errorsList___block_invoke;
      v22[3] = &unk_1E77453B0;
      v26 = &v33;
      v23 = v14;
      v27 = &v29;
      v24 = array;
      v25 = listCopy;
      [v10 enumerateKeysAndObjectsUsingBlock:v22];

      v18 = v23;
    }

    else
    {
      v18 = [MEMORY[0x1E696AD60] stringWithFormat:@"== writing summary list ==\n"];
      [v18 appendFormat:@"Failed writing Memories/Related summary list - ERROR(%@)\n", v34[5]];
      v19 = PLUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v34[5];
        *buf = 138412290;
        v40 = v20;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "== writing summary list ==\nFailed writing Memories/Related summary list - ERROR(%@)\n", buf, 0xCu);
      }

      [listCopy addObject:v18];
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  return array;
}

void __85__PXMemoriesRelatedTapToRadarService_writeMemoriesSummary_analysisClient_errorsList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE40];
  v6 = *(*(a1 + 56) + 8);
  obj = 0;
  v7 = a3;
  v8 = a2;
  v9 = [v5 dataWithPropertyList:v7 format:200 options:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v10 = [v7 objectForKeyedSubscript:@"title"];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v8 pathComponents];

  v14 = [v13 firstObject];
  v15 = [v12 stringWithFormat:@"%@-%@", v11, v14];

  v16 = [*(a1 + 32) URLByAppendingPathComponent:v15];
  v17 = [v16 URLByAppendingPathExtension:@"plist"];

  v18 = *(*(a1 + 56) + 8);
  v24 = *(v18 + 40);
  LOBYTE(v14) = [v9 writeToURL:v17 options:0 error:&v24];
  objc_storeStrong((v18 + 40), v24);
  *(*(*(a1 + 64) + 8) + 24) = v14;
  v19 = *(a1 + 40);
  v20 = [v17 path];
  [v19 addObject:v20];

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AD60] stringWithFormat:@"== writing summary list ==\n"];
    [v21 appendFormat:@"Failed writing Memories/Related summary list - ERROR(%@)\n", *(*(*(a1 + 56) + 8) + 40)];
    v22 = PLUIGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v27 = v23;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "== writing summary list ==\nFailed writing Memories/Related summary list - ERROR(%@)\n", buf, 0xCu);
    }

    [*(a1 + 48) addObject:v21];
  }
}

- (id)writePeopleContactSuggestionsGraphStatistics:(id)statistics errorsList:(id)list
{
  v27 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v22 = 0;
  v6 = [statistics requestGraphStatisticsWithOptions:&unk_1F190F760 error:&v22];
  v7 = v22;
  if (!v7)
  {
    systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v11 = [MEMORY[0x1E69BE3F0] memoriesAndRelatedDiagnosticsOutputURLWithPathManager:systemLibraryPathManager];
    v12 = [v11 URLByAppendingPathComponent:@"PeopleContactSuggestions.txt"];

    path = [v12 path];
    v13 = [v6 dataUsingEncoding:4];
    if ([v13 length])
    {
      v21 = 0;
      v14 = [v13 writeToURL:v12 options:1073741825 error:&v21];
      v15 = v21;
      if (v14)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"Graph Statistics is not available";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = [v16 errorWithDomain:@"com.apple.Photos.TTR.metadataSnapshot" code:3 userInfo:v17];
    }

    v18 = [MEMORY[0x1E696AD60] stringWithFormat:@"== writing Graph statistics ==\n"];
    [v18 appendFormat:@"Failed writing Graph Statistics - ERROR(%@)\n", v15];
    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "== writing Graph statistics ==\nFailed writing Graph Statistics - ERROR(%@)\n", buf, 0xCu);
    }

    [listCopy addObject:v18];
    goto LABEL_12;
  }

  systemLibraryPathManager = [MEMORY[0x1E696AD60] stringWithFormat:@"== requestGraphStatistic ==\n"];
  [systemLibraryPathManager appendFormat:@"Failed obtaining People Contact Suggestions Graph Statistics - ERROR(%@)\n", v7];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "== requestGraphStatistic ==\nFailed obtaining Graph Statistics - ERROR(%@)\n", buf, 0xCu);
  }

  [listCopy addObject:systemLibraryPathManager];
  path = 0;
LABEL_13:

  return path;
}

- (id)writeGraphStatistics:(id)statistics errorsList:(id)list
{
  v27 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v22 = 0;
  v6 = [statistics requestGraphStatisticsWithOptions:MEMORY[0x1E695E0F8] error:&v22];
  v7 = v22;
  if (!v7)
  {
    systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v11 = [MEMORY[0x1E69BE3F0] memoriesAndRelatedDiagnosticsOutputURLWithPathManager:systemLibraryPathManager];
    v12 = [v11 URLByAppendingPathComponent:@"GraphStatistics.txt"];

    path = [v12 path];
    v13 = [v6 dataUsingEncoding:4];
    if ([v13 length])
    {
      v21 = 0;
      v14 = [v13 writeToURL:v12 options:1073741825 error:&v21];
      v15 = v21;
      if (v14)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"Graph Statistics is not available";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = [v16 errorWithDomain:@"com.apple.Photos.TTR.metadataSnapshot" code:3 userInfo:v17];
    }

    v18 = [MEMORY[0x1E696AD60] stringWithFormat:@"== writing Graph statistics ==\n"];
    [v18 appendFormat:@"Failed writing Graph Statistics - ERROR(%@)\n", v15];
    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "== writing Graph statistics ==\nFailed writing Graph Statistics - ERROR(%@)\n", buf, 0xCu);
    }

    [listCopy addObject:v18];
    goto LABEL_12;
  }

  systemLibraryPathManager = [MEMORY[0x1E696AD60] stringWithFormat:@"== requestGraphStatistic ==\n"];
  [systemLibraryPathManager appendFormat:@"Failed obtaining Graph Statistics - ERROR(%@)\n", v7];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "== requestGraphStatistic ==\nFailed obtaining Graph Statistics - ERROR(%@)\n", buf, 0xCu);
  }

  [listCopy addObject:systemLibraryPathManager];
  path = 0;
LABEL_13:

  return path;
}

- (id)writeGraphData:(id)data errorsList:(id)list
{
  v14 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v11 = 0;
  v6 = [data requestExportGraphForPurpose:@"snapshot" error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"== requestExportGraphForPurpose:snapshot ==\n"];
    [v8 appendFormat:@"Failed writing Memories/Related Graph State - ERROR(%@)\n", v7];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "== requestExportGraphForPurpose:snapshot ==\nFailed writing Memories/Related Graph State - ERROR(%@)\n", buf, 0xCu);
    }

    [listCopy addObject:v8];
  }

  return v6;
}

- (id)tapToRadarURLWithTitle:(id)title descriptionString:(id)string
{
  v31 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  stringCopy = string;
  v9 = stringCopy;
  if (!titleCopy || !stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesRelatedTapToRadarService.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"title && descriptionString"}];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:titleCopy forKey:@"Title"];
  [dictionary setObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics" forKey:@"ExtensionIdentifiers"];
  [dictionary setObject:@"Serious Bug" forKey:@"Classification"];
  [dictionary setObject:@"Always" forKey:@"Reproducibility"];
  v25 = v9;
  [dictionary setObject:v9 forKey:@"Description"];
  [dictionary setObject:@"819256" forKey:@"ComponentID"];
  [dictionary setObject:@"all" forKey:@"ComponentVersion"];
  [dictionary setObject:@"Photos Media Mining (New Bugs)" forKey:@"ComponentName"];
  v11 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = dictionary;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = MEMORY[0x1E696AF60];
        v20 = [v13 objectForKeyedSubscript:v18];
        v21 = [v19 queryItemWithName:v18 value:v20];
        [array addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [v11 setQueryItems:array];
  v22 = [v11 URL];

  return v22;
}

- (id)collectProviderItemsSummaryAndLibraryStat
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _providerItemsSummary = [(PXMemoriesRelatedTapToRadarService *)self _providerItemsSummary];
  if ([_providerItemsSummary count])
  {
    [dictionary setObject:_providerItemsSummary forKey:@"providerItemSummary"];
  }

  _libraryStatDictionary = [(PXMemoriesRelatedTapToRadarService *)self _libraryStatDictionary];
  if ([_libraryStatDictionary count])
  {
    [dictionary setObject:_libraryStatDictionary forKey:@"libraryStatSummary"];
  }

  return dictionary;
}

- (id)parseProviderItemsSummary:(id)summary error:(id *)error
{
  v92[1] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v54 = [summaryCopy objectForKey:@"providerItemSummary"];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__209800;
  v85 = __Block_byref_object_dispose__209801;
  v86 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = __Block_byref_object_copy__209800;
  v79[4] = __Block_byref_object_dispose__209801;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__209800;
  v77 = __Block_byref_object_dispose__209801;
  v78 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__209800;
  v71[4] = __Block_byref_object_dispose__209801;
  v72 = 0;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke;
  v70[3] = &unk_1E7745360;
  v70[4] = &v81;
  v70[5] = v79;
  v70[6] = &v73;
  v70[7] = v71;
  [v54 enumerateKeysAndObjectsUsingBlock:v70];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v92[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  v53 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v53, "count")}];
  v10 = [v53 objectsAtIndexes:v9];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v66 objects:v91 count:16];
  if (v12)
  {
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:*(*(&v66 + 1) + 8 * i)];
        v16 = [v15 objectForKey:@"localIdentifier"];
        if (v16)
        {
          [dictionary2 setObject:v15 forKey:v16];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v66 objects:v91 count:16];
    }

    while (v12);
  }

  [dictionary setObject:dictionary2 forKey:@"listOfMemoriesSummaries"];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v18 = dictionary3;
  v19 = v74[5];
  if (v19)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_3;
    v64[3] = &unk_1E774BC88;
    v65 = dictionary3;
    [v19 enumerateKeysAndObjectsUsingBlock:v64];
  }

  [dictionary setObject:v18 forKey:@"listOfSummaries"];
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"More details can be found in the attachments, but here is the high level library stats:\n"];
  [string appendFormat:@"\n ======== Library Summary Stat =======\n"];
  v52 = [summaryCopy objectForKey:@"libraryStatSummary"];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_4;
  v62[3] = &unk_1E774BC88;
  v21 = string;
  v63 = v21;
  [v52 enumerateKeysAndObjectsUsingBlock:v62];
  [dictionary setObject:v21 forKey:@"summaryDescription"];
  v22 = [v82[5] objectForKey:@"summaryInfo"];
  if ((v82[5] || ([v74[5] allValues], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "firstObject"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v82[5], v82[5] = v24, v25, v23, objc_msgSend(v82[5], "objectForKey:", @"summaryInfo"), v26 = objc_claimAutoreleasedReturnValue(), v22, v22 = v26, v82[5])) && v22)
  {
    v49 = [v22 objectForKey:@"referenceOrigin"];
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    v47 = [v82[5] objectForKey:@"summaryInfo"];
    v44 = [v82[5] objectForKey:@"providerItem"];
    v27 = [v47 objectForKey:@"localIdentifier"];
    if (v27)
    {
      v51 = dictionary;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v49, @"referenceOrigin", v44, @"providerItem", 0}];
      [dictionary4 setObject:v28 forKey:v27];
      v29 = v18;
      dictionary5 = [MEMORY[0x1E695DF90] dictionary];
      v31 = v74[5];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_278;
      v57[3] = &unk_1E7745388;
      v60 = a2;
      v57[4] = self;
      v58 = v49;
      v32 = dictionary5;
      v59 = v32;
      [v31 enumerateKeysAndObjectsUsingBlock:v57];
      [MEMORY[0x1E695DF90] dictionary];
      v18 = v29;
      v33 = dictionary = v51;
      [v33 setObject:dictionary4 forKey:@"referenceObjectIdentifier"];
      [v33 setObject:v32 forKey:@"collectionIdentifiers"];
      [v51 setObject:v33 forKey:@"identifiers"];
      v34 = v51;
    }

    else
    {
      v39 = PLUIGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_ERROR, "Error - Local Identifier for a reference object wasn't set", buf, 2u);
      }

      if (error)
      {
        v40 = MEMORY[0x1E696ABC0];
        v87 = *MEMORY[0x1E696A578];
        v88 = @"Error - Local Identifier for a reference object wasn't set";
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        *error = [v40 errorWithDomain:@"com.apple.Photos.TTR.metadataSnapshot" code:2 userInfo:v41];
      }

      v42 = dictionary;
    }
  }

  else
  {
    v35 = PLUIGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v35, OS_LOG_TYPE_ERROR, "Error - the main reference object (Moment / Memory) was not found. Please try to capture the data once all results were fully loaded on the screen.", buf, 2u);
    }

    if (error)
    {
      v36 = MEMORY[0x1E696ABC0];
      v89 = *MEMORY[0x1E696A578];
      v90 = @"Error - the main reference object (Moment / Memory) was not found. Please try to capture the data once all results were fully loaded on the screen.";
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      *error = [v36 errorWithDomain:@"com.apple.Photos.TTR.metadataSnapshot" code:2 userInfo:v37];
    }

    v38 = dictionary;
  }

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(v79, 8);
  _Block_object_dispose(&v81, 8);

  return dictionary;
}

void __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = a3;
  if ([v8 isEqualToString:@"PXDiagnosticsItemIdentifierMemory"])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_2;
    v10[3] = &unk_1E7745338;
    v11 = *(a1 + 32);
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  if (*(*(*(a1 + 32) + 8) + 40) && *(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKey:@"summaryInfo"];
  v4 = [v5 objectForKey:@"localIdentifier"];
  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKey:v4];
  }
}

void __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_278(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 objectForKey:@"summaryInfo"];
  v5 = [v4 objectForKey:@"providerItem"];

  v6 = [v8 objectForKey:@"localIdentifier"];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 40), @"referenceOrigin", v5, @"providerItem", 0}];
  [*(a1 + 48) setObject:v7 forKey:v6];
}

void __70__PXMemoriesRelatedTapToRadarService_parseProviderItemsSummary_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:@"summaryInfo"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"category"];
    if ([v9 integerValue] == 201)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

- (id)_providerItemsSummary
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(PXDiagnosticsService *)self itemProviders];
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v26 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        registeredIdentifiers = [v4 registeredIdentifiers];
        v6 = [registeredIdentifiers countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v34;
          v30 = registeredIdentifiers;
          v31 = v4;
          v29 = *v34;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v34 != v8)
              {
                objc_enumerationMutation(registeredIdentifiers);
              }

              v10 = *(*(&v33 + 1) + 8 * i);
              if ([v10 containsString:@"com.apple.miro"])
              {
                v11 = [v4 itemForIdentifier:v10];
              }

              else
              {
                v12 = [v4 itemForIdentifier:v10];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v13 = [dictionary objectForKey:v10];
                  dictionary2 = [v13 mutableCopy];

                  if (!dictionary2)
                  {
                    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v15 = [dictionary2 count];
                  uuid = [v12 uuid];
                  v17 = [dictionary2 objectForKey:uuid];
                  dictionary3 = [v17 mutableCopy];

                  if (!dictionary3)
                  {
                    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v19 = [dictionary3 count];
                  v20 = [dictionary3 objectForKey:uuid];

                  if (!v20)
                  {
                    v21 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:v12];
                    [dictionary3 setObject:v21 forKey:uuid];
                  }

                  if ([dictionary3 count] > v19)
                  {
                    v22 = [dictionary3 valueForKey:uuid];
                    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v22, @"summaryInfo", v12, @"providerItem", 0}];
                    [dictionary2 setObject:v23 forKey:uuid];
                  }

                  v8 = v29;
                  if ([dictionary2 count] > v15)
                  {
                    [dictionary setObject:dictionary2 forKey:v10];
                  }

                  registeredIdentifiers = v30;
                  v4 = v31;
                }
              }
            }

            v7 = [registeredIdentifiers countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v7);
        }

        v3 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  return dictionary;
}

- (id)_libraryStatDictionary
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__209800;
  v13 = __Block_byref_object_dispose__209801;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systemPhotoLibrary = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PXMemoriesRelatedTapToRadarService__libraryStatDictionary__block_invoke;
  v6[3] = &unk_1E7749A28;
  v3 = systemPhotoLibrary;
  v7 = v3;
  v8 = &v9;
  [v3 performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __60__PXMemoriesRelatedTapToRadarService__libraryStatDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PXMemoriesRelatedTapToRadarService__libraryStatDictionary__block_invoke_2;
  v3[3] = &unk_1E7745310;
  v3[4] = *(a1 + 40);
  [MEMORY[0x1E69BE3F0] collectMomentsStatWithLibraryContext:v2 completionBlock:v3];
}

uint64_t __60__PXMemoriesRelatedTapToRadarService__libraryStatDictionary__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(*(*(result + 32) + 8) + 40) addEntriesFromDictionary:a2];
  }

  return result;
}

- (id)consoleDescription
{
  v28 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PXDiagnosticsService *)self itemProviders];
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v15 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v4;
        v5 = *(*(&v22 + 1) + 8 * v4);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        registeredIdentifiers = [v5 registeredIdentifiers];
        v7 = [registeredIdentifiers countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(registeredIdentifiers);
              }

              v11 = *(*(&v18 + 1) + 8 * i);
              v12 = [v5 itemForIdentifier:v11];
              if ([string length])
              {
                [string appendString:@"\n"];
              }

              [string appendFormat:@"%@: %@\n", v11, v12];
            }

            v8 = [registeredIdentifiers countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }

        v4 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  return string;
}

@end