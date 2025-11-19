@interface SUISRadarUtilities
+ (id)filePathForCapturedPhotosIndexInfo;
+ (id)filePathForCapturedScreenshot;
+ (id)filePathForWrittenData:(id)a3 to:(id)a4;
+ (id)pathToSpotlightFiles;
+ (id)rankingDiagnosticsFilePath;
+ (id)resultSectionsFilePath;
+ (id)searchResultCategoriesFilePath;
+ (void)fileRadarWithCommand:(id)a3;
+ (void)logRankingDiagnosticsWithSections:(id)a3;
+ (void)logResultSectionsWithSections:(id)a3 rankingManager:(id)a4;
@end

@implementation SUISRadarUtilities

+ (void)fileRadarWithCommand:(id)a3
{
  v51[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD18];
  v4 = a3;
  v49 = [v4 componentName];
  v48 = [v3 queryItemWithName:@"ComponentName" value:v49];
  v51[0] = v48;
  v5 = MEMORY[0x277CCAD18];
  v47 = [v4 componentVersion];
  v46 = [v5 queryItemWithName:@"ComponentVersion" value:v47];
  v51[1] = v46;
  v6 = MEMORY[0x277CCAD18];
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "componentID")}];
  v44 = [v45 stringValue];
  v43 = [v6 queryItemWithName:@"ComponentID" value:v44];
  v51[2] = v43;
  v7 = MEMORY[0x277CCAD18];
  v42 = [v4 classification];
  v8 = [v7 queryItemWithName:@"Classification" value:v42];
  v51[3] = v8;
  v9 = MEMORY[0x277CCAD18];
  v10 = [v4 reproducibility];
  v11 = [v9 queryItemWithName:@"Reproducibility" value:v10];
  v51[4] = v11;
  v12 = MEMORY[0x277CCAD18];
  v13 = [v4 title];
  v14 = [v12 queryItemWithName:@"Title" value:v13];
  v51[5] = v14;
  v15 = MEMORY[0x277CCAD18];
  v16 = [v4 problemDescription];
  v17 = [v15 queryItemWithName:@"Description" value:v16];
  v51[6] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:7];
  v19 = [v18 mutableCopy];

  v20 = [v4 extensionIdentifiers];
  v21 = [v20 componentsJoinedByString:{@", "}];

  v22 = [MEMORY[0x277CCAD18] queryItemWithName:@"ExtensionIdentifiers" value:v21];
  [v19 addObject:v22];

  v23 = [v4 sections];
  v24 = [v4 rankingManager];
  [a1 logResultSectionsWithSections:v23 rankingManager:v24];

  v25 = [v4 sections];

  [a1 logRankingDiagnosticsWithSections:v25];
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v27 = [a1 resultSectionsFilePath];
  v28 = [v27 path];
  [v26 addObject:v28];

  v29 = [a1 rankingDiagnosticsFilePath];
  v30 = [v29 path];
  [v26 addObject:v30];

  v31 = [a1 searchResultCategoriesFilePath];
  v32 = [v31 path];
  [v26 addObject:v32];

  v33 = +[SUISRadarUtilities filePathForCapturedScreenshot];
  if (v33)
  {
    [v26 addObject:v33];
  }

  v34 = [v26 componentsJoinedByString:{@", "}];
  v35 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v34];
  [v19 addObject:v35];

  v36 = objc_opt_new();
  [v36 setScheme:@"tap-to-radar"];
  [v36 setHost:@"new"];
  [v36 setQueryItems:v19];
  v37 = MEMORY[0x277D4C898];
  v38 = MEMORY[0x277D4C550];
  v39 = [v36 URL];
  v40 = [v38 punchoutWithURL:v39];
  [v37 openPunchout:v40];

  v41 = *MEMORY[0x277D85DE8];
}

+ (void)logResultSectionsWithSections:(id)a3 rankingManager:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = [MEMORY[0x277CCAB68] string];
  [v6 appendString:@"Results:\n"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        [v6 appendString:@"\n"];
        v11 = [v10 title];
        v12 = [v10 bundleIdentifier];
        [v6 appendFormat:@"%@ <%@> maxInitiallyVisibleResults: %lu, isInitiallyHidden; %d\n", v11, v12, objc_msgSend(v10, "maxInitiallyVisibleResults"), objc_msgSend(v10, "isInitiallyHidden")];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v10 results];
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v30 + 1) + 8 * j) ttrDescription];
              [v6 appendFormat:@"\t%@", v18];

              [v6 appendString:@"\n"];
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v15);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v19 = [v26 CEPValuesForTTR];
  [v6 appendString:v19];

  v20 = SSDefaultsGetResources();
  v21 = [v20 getTTRLogs];
  [v6 appendString:v21];

  v22 = [a1 resultSectionsFilePath];
  v29 = 0;
  [v6 writeToURL:v22 atomically:1 encoding:10 error:&v29];
  v23 = v29;

  if (v23)
  {
    NSLog(&stru_287C62058.isa, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)logRankingDiagnosticsWithSections:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v47 = *v64;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v63 + 1) + 8 * i);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v9 = [v8 results];
        v10 = [v9 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v60;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v60 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v59 + 1) + 8 * j);
              v15 = [v14 rankingItem];

              if (v15)
              {
                v16 = [v14 rankingItem];
                [v4 addObject:v16];
              }

              else
              {
                NSLog(&cfstr_WarningUnableT.isa);
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v6);
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [a1 pathToSpotlightFiles];
  v19 = [v18 path];

  v45 = v19;
  [v17 contentsOfDirectoryAtPath:v19 error:0];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = v58 = 0u;
  v20 = [v48 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v56;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v56 != v22)
        {
          objc_enumerationMutation(v48);
        }

        v24 = *(*(&v55 + 1) + 8 * k);
        v25 = [a1 rankingDiagnosticsFilePath];
        v26 = [v25 pathComponents];
        v27 = [v26 lastObject];
        v28 = [v24 isEqualToString:v27];

        if (v28)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v45, v24];
          [v17 removeItemAtPath:v29 error:0];
        }
      }

      v21 = [v48 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v21);
  }

  v30 = [a1 rankingDiagnosticsFilePath];
  v31 = [v30 path];

  if ([v4 count])
  {
    if ([v31 length])
    {
      [v31 UTF8String];
      v32 = json_writer_create_with_path();
      if (v32)
      {
        v33 = v32;
        v50 = v31;
        v34 = v17;
        json_writer_begin_array();
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v35 = v4;
        v36 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v52;
          do
          {
            for (m = 0; m != v37; ++m)
            {
              if (*v52 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v51 + 1) + 8 * m);
              v41 = [v40 identifier];
              v42 = [v40 L2FeatureVector];
              if ([v41 length])
              {
                v43 = v42 == 0;
              }

              else
              {
                v43 = 1;
              }

              if (!v43)
              {
                json_writer_begin_dictionary();
                json_writer_add_key();
                [v41 UTF8String];
                json_writer_add_string();
                [v42 serializeToJSON:v33 options:2];
                json_writer_end_dictionary();
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
          }

          while (v37);
        }

        json_writer_end_array();
        json_writer_dispose();
        v17 = v34;
        v31 = v50;
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

+ (id)pathToSpotlightFiles
{
  if (pathToSpotlightFiles_onceToken != -1)
  {
    +[SUISRadarUtilities pathToSpotlightFiles];
  }

  v3 = pathToSpotlightFiles_pathToSpotlightFiles;

  return v3;
}

void __42__SUISRadarUtilities_pathToSpotlightFiles__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v3 = [@"~/Library/Application Support/com.apple.spotlight/" stringByExpandingTildeInPath];
  v1 = [v0 fileURLWithPath:v3 isDirectory:1];
  v2 = pathToSpotlightFiles_pathToSpotlightFiles;
  pathToSpotlightFiles_pathToSpotlightFiles = v1;
}

+ (id)rankingDiagnosticsFilePath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUISRadarUtilities_rankingDiagnosticsFilePath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (rankingDiagnosticsFilePath_onceToken != -1)
  {
    dispatch_once(&rankingDiagnosticsFilePath_onceToken, block);
  }

  v2 = rankingDiagnosticsFilePath_rankingDiagnosticsFilePath;

  return v2;
}

void __48__SUISRadarUtilities_rankingDiagnosticsFilePath__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) pathToSpotlightFiles];
  v1 = [v3 URLByAppendingPathComponent:@"Spotlight_Ranking_Diagnostic_Log.txt"];
  v2 = rankingDiagnosticsFilePath_rankingDiagnosticsFilePath;
  rankingDiagnosticsFilePath_rankingDiagnosticsFilePath = v1;
}

+ (id)resultSectionsFilePath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUISRadarUtilities_resultSectionsFilePath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (resultSectionsFilePath_onceToken != -1)
  {
    dispatch_once(&resultSectionsFilePath_onceToken, block);
  }

  v2 = resultSectionsFilePath_resultSectionsFilePath;

  return v2;
}

void __44__SUISRadarUtilities_resultSectionsFilePath__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) pathToSpotlightFiles];
  v1 = [v3 URLByAppendingPathComponent:@"Spotlight_Result_Sections_Log.txt"];
  v2 = resultSectionsFilePath_resultSectionsFilePath;
  resultSectionsFilePath_resultSectionsFilePath = v1;
}

+ (id)searchResultCategoriesFilePath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUISRadarUtilities_searchResultCategoriesFilePath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (searchResultCategoriesFilePath_onceToken != -1)
  {
    dispatch_once(&searchResultCategoriesFilePath_onceToken, block);
  }

  v2 = searchResultCategoriesFilePath_searchResultCategoriesFilePath;

  return v2;
}

void __52__SUISRadarUtilities_searchResultCategoriesFilePath__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) pathToSpotlightFiles];
  v1 = [v3 URLByAppendingPathComponent:@"SearchResultCategories.log"];
  v2 = searchResultCategoriesFilePath_searchResultCategoriesFilePath;
  searchResultCategoriesFilePath_searchResultCategoriesFilePath = v1;
}

+ (id)filePathForWrittenData:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v5];

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v15 = 0;
  v10 = [v6 writeToURL:v9 options:1 error:&v15];

  v11 = v15;
  v12 = [v9 path];
  v13 = v12;
  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_FailedToWriteD.isa, v12, v11);

    v13 = 0;
  }

  return v13;
}

+ (id)filePathForCapturedScreenshot
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 snapshotViewAfterScreenUpdates:0];

  [v4 frame];
  v12.width = v5;
  v12.height = v6;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 0.0);
  [v4 bounds];
  [v4 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v8 = UIImagePNGRepresentation(v7);
  v9 = [a1 filePathForWrittenData:v8 to:@"Spotlight-Tap-To-Radar-Screenshot.png"];

  return v9;
}

+ (id)filePathForCapturedPhotosIndexInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v3 setLaunchPath:@"/bin/bash"];
  [v3 setArguments:&unk_287C64E78];
  v4 = [MEMORY[0x277CCAC10] pipe];
  [v3 setStandardOutput:v4];
  [v3 launch];
  [v3 waitUntilExit];
  v5 = [v4 fileHandleForReading];
  v6 = [v5 readDataToEndOfFile];

  v7 = [a1 filePathForWrittenData:v6 to:@"search_photos_index_status.txt"];

  return v7;
}

@end