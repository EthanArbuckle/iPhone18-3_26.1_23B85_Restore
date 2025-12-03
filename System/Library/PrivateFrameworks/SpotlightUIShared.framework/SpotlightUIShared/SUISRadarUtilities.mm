@interface SUISRadarUtilities
+ (id)filePathForCapturedPhotosIndexInfo;
+ (id)filePathForCapturedScreenshot;
+ (id)filePathForWrittenData:(id)data to:(id)to;
+ (id)pathToSpotlightFiles;
+ (id)rankingDiagnosticsFilePath;
+ (id)resultSectionsFilePath;
+ (id)searchResultCategoriesFilePath;
+ (void)fileRadarWithCommand:(id)command;
+ (void)logRankingDiagnosticsWithSections:(id)sections;
+ (void)logResultSectionsWithSections:(id)sections rankingManager:(id)manager;
@end

@implementation SUISRadarUtilities

+ (void)fileRadarWithCommand:(id)command
{
  v51[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD18];
  commandCopy = command;
  componentName = [commandCopy componentName];
  v48 = [v3 queryItemWithName:@"ComponentName" value:componentName];
  v51[0] = v48;
  v5 = MEMORY[0x277CCAD18];
  componentVersion = [commandCopy componentVersion];
  v46 = [v5 queryItemWithName:@"ComponentVersion" value:componentVersion];
  v51[1] = v46;
  v6 = MEMORY[0x277CCAD18];
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(commandCopy, "componentID")}];
  stringValue = [v45 stringValue];
  v43 = [v6 queryItemWithName:@"ComponentID" value:stringValue];
  v51[2] = v43;
  v7 = MEMORY[0x277CCAD18];
  classification = [commandCopy classification];
  v8 = [v7 queryItemWithName:@"Classification" value:classification];
  v51[3] = v8;
  v9 = MEMORY[0x277CCAD18];
  reproducibility = [commandCopy reproducibility];
  v11 = [v9 queryItemWithName:@"Reproducibility" value:reproducibility];
  v51[4] = v11;
  v12 = MEMORY[0x277CCAD18];
  title = [commandCopy title];
  v14 = [v12 queryItemWithName:@"Title" value:title];
  v51[5] = v14;
  v15 = MEMORY[0x277CCAD18];
  problemDescription = [commandCopy problemDescription];
  v17 = [v15 queryItemWithName:@"Description" value:problemDescription];
  v51[6] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:7];
  v19 = [v18 mutableCopy];

  extensionIdentifiers = [commandCopy extensionIdentifiers];
  v21 = [extensionIdentifiers componentsJoinedByString:{@", "}];

  v22 = [MEMORY[0x277CCAD18] queryItemWithName:@"ExtensionIdentifiers" value:v21];
  [v19 addObject:v22];

  sections = [commandCopy sections];
  rankingManager = [commandCopy rankingManager];
  [self logResultSectionsWithSections:sections rankingManager:rankingManager];

  sections2 = [commandCopy sections];

  [self logRankingDiagnosticsWithSections:sections2];
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  resultSectionsFilePath = [self resultSectionsFilePath];
  path = [resultSectionsFilePath path];
  [v26 addObject:path];

  rankingDiagnosticsFilePath = [self rankingDiagnosticsFilePath];
  path2 = [rankingDiagnosticsFilePath path];
  [v26 addObject:path2];

  searchResultCategoriesFilePath = [self searchResultCategoriesFilePath];
  path3 = [searchResultCategoriesFilePath path];
  [v26 addObject:path3];

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

+ (void)logResultSectionsWithSections:(id)sections rankingManager:(id)manager
{
  v40 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  managerCopy = manager;
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"Results:\n"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = sectionsCopy;
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
        [string appendString:@"\n"];
        title = [v10 title];
        bundleIdentifier = [v10 bundleIdentifier];
        [string appendFormat:@"%@ <%@> maxInitiallyVisibleResults: %lu, isInitiallyHidden; %d\n", title, bundleIdentifier, objc_msgSend(v10, "maxInitiallyVisibleResults"), objc_msgSend(v10, "isInitiallyHidden")];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        results = [v10 results];
        v14 = [results countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                objc_enumerationMutation(results);
              }

              ttrDescription = [*(*(&v30 + 1) + 8 * j) ttrDescription];
              [string appendFormat:@"\t%@", ttrDescription];

              [string appendString:@"\n"];
            }

            v15 = [results countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v15);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  cEPValuesForTTR = [managerCopy CEPValuesForTTR];
  [string appendString:cEPValuesForTTR];

  v20 = SSDefaultsGetResources();
  getTTRLogs = [v20 getTTRLogs];
  [string appendString:getTTRLogs];

  resultSectionsFilePath = [self resultSectionsFilePath];
  v29 = 0;
  [string writeToURL:resultSectionsFilePath atomically:1 encoding:10 error:&v29];
  v23 = v29;

  if (v23)
  {
    NSLog(&stru_287C62058.isa, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)logRankingDiagnosticsWithSections:(id)sections
{
  v71 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v4 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = sectionsCopy;
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
        results = [v8 results];
        v10 = [results countByEnumeratingWithState:&v59 objects:v69 count:16];
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
                objc_enumerationMutation(results);
              }

              v14 = *(*(&v59 + 1) + 8 * j);
              rankingItem = [v14 rankingItem];

              if (rankingItem)
              {
                rankingItem2 = [v14 rankingItem];
                [v4 addObject:rankingItem2];
              }

              else
              {
                NSLog(&cfstr_WarningUnableT.isa);
              }
            }

            v11 = [results countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v6);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathToSpotlightFiles = [self pathToSpotlightFiles];
  path = [pathToSpotlightFiles path];

  v45 = path;
  [defaultManager contentsOfDirectoryAtPath:path error:0];
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
        rankingDiagnosticsFilePath = [self rankingDiagnosticsFilePath];
        pathComponents = [rankingDiagnosticsFilePath pathComponents];
        lastObject = [pathComponents lastObject];
        v28 = [v24 isEqualToString:lastObject];

        if (v28)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v45, v24];
          [defaultManager removeItemAtPath:v29 error:0];
        }
      }

      v21 = [v48 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v21);
  }

  rankingDiagnosticsFilePath2 = [self rankingDiagnosticsFilePath];
  path2 = [rankingDiagnosticsFilePath2 path];

  if ([v4 count])
  {
    if ([path2 length])
    {
      [path2 UTF8String];
      v32 = json_writer_create_with_path();
      if (v32)
      {
        v33 = v32;
        v50 = path2;
        v34 = defaultManager;
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
              identifier = [v40 identifier];
              l2FeatureVector = [v40 L2FeatureVector];
              if ([identifier length])
              {
                v43 = l2FeatureVector == 0;
              }

              else
              {
                v43 = 1;
              }

              if (!v43)
              {
                json_writer_begin_dictionary();
                json_writer_add_key();
                [identifier UTF8String];
                json_writer_add_string();
                [l2FeatureVector serializeToJSON:v33 options:2];
                json_writer_end_dictionary();
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
          }

          while (v37);
        }

        json_writer_end_array();
        json_writer_dispose();
        defaultManager = v34;
        path2 = v50;
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
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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

+ (id)filePathForWrittenData:(id)data to:(id)to
{
  toCopy = to;
  dataCopy = data;
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:toCopy];

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v15 = 0;
  v10 = [dataCopy writeToURL:v9 options:1 error:&v15];

  v11 = v15;
  path = [v9 path];
  v13 = path;
  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_FailedToWriteD.isa, path, v11);

    v13 = 0;
  }

  return v13;
}

+ (id)filePathForCapturedScreenshot
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = [mainScreen snapshotViewAfterScreenUpdates:0];

  [v4 frame];
  v12.width = v5;
  v12.height = v6;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 0.0);
  [v4 bounds];
  [v4 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v8 = UIImagePNGRepresentation(v7);
  v9 = [self filePathForWrittenData:v8 to:@"Spotlight-Tap-To-Radar-Screenshot.png"];

  return v9;
}

+ (id)filePathForCapturedPhotosIndexInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v3 setLaunchPath:@"/bin/bash"];
  [v3 setArguments:&unk_287C64E78];
  pipe = [MEMORY[0x277CCAC10] pipe];
  [v3 setStandardOutput:pipe];
  [v3 launch];
  [v3 waitUntilExit];
  fileHandleForReading = [pipe fileHandleForReading];
  readDataToEndOfFile = [fileHandleForReading readDataToEndOfFile];

  v7 = [self filePathForWrittenData:readDataToEndOfFile to:@"search_photos_index_status.txt"];

  return v7;
}

@end