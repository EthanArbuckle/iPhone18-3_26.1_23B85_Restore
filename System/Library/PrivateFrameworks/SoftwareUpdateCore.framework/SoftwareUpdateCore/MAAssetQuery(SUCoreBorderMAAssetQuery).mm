@interface MAAssetQuery(SUCoreBorderMAAssetQuery)
+ (__CFString)_translateBuildVersionToRestoreVersionTuple:()SUCoreBorderMAAssetQuery;
+ (id)_getFirstNSStringEntryFromArray:()SUCoreBorderMAAssetQuery;
+ (uint64_t)_arrayContainsNSNull:()SUCoreBorderMAAssetQuery;
+ (void)_SUCoreBorder_MAQueryResultAtBegin:()SUCoreBorderMAAssetQuery withCompletion:;
+ (void)_SUCoreBorder_MAQueryResultAtEnd:()SUCoreBorderMAAssetQuery withResult:withError:withCompletion:;
- (id)SUCoreBorder_results;
- (id)_SUCoreBorder_results:()SUCoreBorderMAAssetQuery;
- (id)_getQueryParamsForKey:()SUCoreBorderMAAssetQuery;
- (id)_getQueryResultsForEvent:()SUCoreBorderMAAssetQuery;
- (void)SUCoreBorder_queryMetaDataWithError:()SUCoreBorderMAAssetQuery;
@end

@implementation MAAssetQuery(SUCoreBorderMAAssetQuery)

- (void)SUCoreBorder_queryMetaDataWithError:()SUCoreBorderMAAssetQuery
{
  v4 = a3;
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"queryMetaDataWithError"];

  if (v6)
  {
    [MEMORY[0x277D289D8] _SUCoreBorder_MAQueryResultAtBegin:v6 withCompletion:v4];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__MAAssetQuery_SUCoreBorderMAAssetQuery__SUCoreBorder_queryMetaDataWithError___block_invoke;
    v7[3] = &unk_27892C948;
    v8 = v4;
    [self queryMetaDataWithError:v7];
  }
}

- (id)SUCoreBorder_results
{
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"results"];

  if (v3)
  {
    v4 = [self _SUCoreBorder_results:v3];
  }

  else
  {
    mEMORY[0x277D644A0]2 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [mEMORY[0x277D644A0]2 end:@"ma" atFunction:@"results"];

    if (v6)
    {
      [self _SUCoreBorder_results:v6];
    }

    else
    {
      [self results];
    }
    v4 = ;
  }

  return v4;
}

+ (void)_SUCoreBorder_MAQueryResultAtBegin:()SUCoreBorderMAAssetQuery withCompletion:
{
  v5 = a3;
  v6 = a4;
  simAction = [v5 simAction];
  if (simAction == 3)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    if (simAction == 1)
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
      v9 = 3;
      v10 = [mEMORY[0x277D644A0] generateError:@"_SUCoreBorder_MAQueryResultAtBegin" ofDomain:@"com.apple.MobileAssetError.Query" withCode:3];
    }

    else
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D64428] sharedDiag];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [mEMORY[0x277D644A0] trackAnomaly:@"_SUCoreBorder_MAQueryResultAtBegin" forReason:v11 withResult:8113 withError:0];

      v10 = 0;
      v9 = 12;
    }
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  completionQueue = [mEMORY[0x277D643F8] completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__MAAssetQuery_SUCoreBorderMAAssetQuery___SUCoreBorder_MAQueryResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9C0;
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v14 = v10;
  v15 = v6;
  dispatch_async(completionQueue, block);
}

+ (void)_SUCoreBorder_MAQueryResultAtEnd:()SUCoreBorderMAAssetQuery withResult:withError:withCompletion:
{
  v15 = a3;
  v9 = a5;
  v10 = a6;
  simAction = [v15 simAction];
  if (simAction == 3)
  {
    a4 = 0;
    v13 = 0;
    mEMORY[0x277D644A0] = v9;
  }

  else
  {
    if (simAction == 1)
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
      a4 = 3;
      v13 = [mEMORY[0x277D644A0] generateError:@"_SUCoreBorder_MAQueryResultAtEnd" ofDomain:@"com.apple.MobileAssetError.Query" withCode:3];
      v14 = v9;
    }

    else
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v15];
      [mEMORY[0x277D644A0] trackAnomaly:@"_SUCoreBorder_MAQueryResultAtEnd" forReason:v14 withResult:8113 withError:0];
      v13 = v9;
    }
  }

  v10[2](v10, a4, v13);
}

- (id)_SUCoreBorder_results:()SUCoreBorderMAAssetQuery
{
  v4 = a3;
  simAction = [v4 simAction];
  if (simAction != 1)
  {
    if (simAction == 3)
    {
      v6 = [self _getQueryResultsForEvent:v4];
      goto LABEL_6;
    }

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v4];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_results" forReason:v8 withResult:8113 withError:0];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)_getQueryResultsForEvent:()SUCoreBorderMAAssetQuery
{
  v4 = a3;
  assetBuildVersions = [v4 assetBuildVersions];
  v6 = [assetBuildVersions count];
  assetProductVersions = [v4 assetProductVersions];
  v8 = [assetProductVersions count];

  if (v6 != v8)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"_getQueryResultsForEvent" forReason:@"asset BuildVersions/ProductVersions must have the same count (please file a radar; the event should not have been created)" withResult:8113 withError:0];
    v15 = 0;
    goto LABEL_44;
  }

  mEMORY[0x277D64428] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [self _getQueryParamsForKey:@"SUDocumentationID"];
  v11 = [self _getQueryParamsForKey:@"PrerequisiteBuild"];
  v12 = [self _getQueryParamsForKey:@"PrerequisiteOSVersion"];
  v60 = [self _getQueryParamsForKey:@"ReleaseType"];
  v13 = [v11 count];
  v59 = v10;
  if (v13 == [v12 count])
  {
    v58 = v12;
    v67 = [v10 count];
    v14 = v11;
    if (v67)
    {
      v63 = [MEMORY[0x277D289D8] _getFirstNSStringEntryFromArray:v10];
    }

    else
    {
      v63 = 0;
    }

    assetType = [self assetType];
    isUpdateBrainAssetType = _isUpdateBrainAssetType(assetType);

    v11 = v14;
    if ([v14 count] == 1)
    {
      if ([MEMORY[0x277D289D8] _arrayContainsNSNull:v14] && (objc_msgSend(MEMORY[0x277D289D8], "_arrayContainsNSNull:", v12) & 1) != 0)
      {
        v61 = 0;
        v62 = 0;
        HIDWORD(v64) = 0;
LABEL_16:
        LODWORD(v64) = 1;
        goto LABEL_23;
      }

      v22 = [MEMORY[0x277D289D8] _getFirstNSStringEntryFromArray:v14];
      v23 = [MEMORY[0x277D289D8] _getFirstNSStringEntryFromArray:v12];
      v61 = v22;
      v62 = v23;
      if (v22 && v23)
      {
        v64 = 0x100000000;
LABEL_23:
        v57 = v11;
        if (v60 && [v60 count])
        {
          v65 = [v60 objectAtIndexedSubscript:0];
        }

        else
        {
          v65 = 0;
        }

        assetBuildVersions2 = [v4 assetBuildVersions];
        v26 = [assetBuildVersions2 count];

        if (v26)
        {
          v27 = 0;
          v18 = 0;
          v68 = mEMORY[0x277D64428];
          do
          {
            if (v64)
            {
              assetType2 = [self assetType];
              assetBuildVersions3 = [v4 assetBuildVersions];
              v30 = [assetBuildVersions3 objectAtIndexedSubscript:v27];
              assetProductVersions2 = [v4 assetProductVersions];
              v32 = [assetProductVersions2 objectAtIndexedSubscript:v27];
              v33 = _getNewSoftwareUpdateMAAssetAttributesDictionary(assetType2, v30, v32, v65, 0, 0, 0);

              mEMORY[0x277D64428] = v68;
              v34 = [objc_alloc(MEMORY[0x277D289C0]) initWithAttributes:v33];
              [v68 addObject:v34];

              v18 = v33;
            }

            if (HIDWORD(v64))
            {
              assetType3 = [self assetType];
              assetBuildVersions4 = [v4 assetBuildVersions];
              v37 = [assetBuildVersions4 objectAtIndexedSubscript:v27];
              assetProductVersions3 = [v4 assetProductVersions];
              v39 = [assetProductVersions3 objectAtIndexedSubscript:v27];
              v40 = _getNewSoftwareUpdateMAAssetAttributesDictionary(assetType3, v37, v39, v65, v61, v62, 0);

              mEMORY[0x277D64428] = v68;
              v41 = [objc_alloc(MEMORY[0x277D289C0]) initWithAttributes:v40];
              [v68 addObject:v41];

              v18 = v40;
            }

            if (v67)
            {
              assetType4 = [self assetType];
              assetBuildVersions5 = [v4 assetBuildVersions];
              v44 = [assetBuildVersions5 objectAtIndexedSubscript:v27];
              assetProductVersions4 = [v4 assetProductVersions];
              v46 = [assetProductVersions4 objectAtIndexedSubscript:v27];
              v47 = _getNewDocumentationMAAssetAttributesDictionary(assetType4, v44, v46, v63, 0);

              mEMORY[0x277D64428] = v68;
              v48 = [objc_alloc(MEMORY[0x277D289C0]) initWithAttributes:v47];
              [v68 addObject:v48];

              v18 = v47;
            }

            if (isUpdateBrainAssetType)
            {
              assetType5 = [self assetType];
              assetBuildVersions6 = [v4 assetBuildVersions];
              v51 = [assetBuildVersions6 objectAtIndexedSubscript:v27];
              v52 = _getNewUpdateBrainMAAssetAttributesDictionary(assetType5, v51, 0);

              v53 = [objc_alloc(MEMORY[0x277D289C0]) initWithAttributes:v52];
              [mEMORY[0x277D64428] addObject:v53];

              v18 = v52;
            }

            ++v27;
            assetBuildVersions7 = [v4 assetBuildVersions];
            v55 = [assetBuildVersions7 count];
          }

          while (v27 < v55);
        }

        else
        {
          v18 = 0;
        }

        v15 = mEMORY[0x277D64428];

        v11 = v57;
        goto LABEL_41;
      }
    }

    else
    {
      if ([v14 count] != 2)
      {
        if (!((v67 != 0) | isUpdateBrainAssetType & 1))
        {
          mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
          v62 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No indication as to which simulated assets should be created"];
          [mEMORY[0x277D64428]2 trackAnomaly:@"_getQueryResultsForEvent" forReason:? withResult:? withError:?];
          v18 = 0;
          v15 = 0;
          goto LABEL_42;
        }

        v61 = 0;
        v62 = 0;
        v64 = 0;
        goto LABEL_23;
      }

      v20 = [MEMORY[0x277D289D8] _getFirstNSStringEntryFromArray:v14];
      v21 = [MEMORY[0x277D289D8] _getFirstNSStringEntryFromArray:v12];
      v61 = v20;
      v62 = v21;
      if (v20 && v21)
      {
        HIDWORD(v64) = 1;
        goto LABEL_16;
      }
    }

    mEMORY[0x277D64428]3 = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428]3 trackAnomaly:@"_getQueryResultsForEvent" forReason:@"prerequisite build/product version array contains invalid values" withResult:8113 withError:0];

    v18 = 0;
    v15 = 0;
LABEL_41:
    mEMORY[0x277D64428]2 = v61;
LABEL_42:

    v12 = v58;
    mEMORY[0x277D64428]4 = v63;
    goto LABEL_43;
  }

  mEMORY[0x277D64428]4 = [MEMORY[0x277D64428] sharedDiag];
  mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"prerequisite Build/ProductVersion counts do not match (found build:%lu and product:%lu)", objc_msgSend(v11, "count"), objc_msgSend(v12, "count")];
  [mEMORY[0x277D64428]4 trackAnomaly:@"_getQueryResultsForEvent" forReason:mEMORY[0x277D64428]2 withResult:8113 withError:0];
  v18 = 0;
  v15 = 0;
LABEL_43:

LABEL_44:

  return v15;
}

- (id)_getQueryParamsForKey:()SUCoreBorderMAAssetQuery
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  queryParams = [self queryParams];
  v6 = [queryParams countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(queryParams);
        }

        if (v4)
        {
          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 safeStringForKey:@"queryKey"];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = [v9 safeObjectForKey:@"queryValue" ofClass:objc_opt_class()];
            goto LABEL_12;
          }
        }
      }

      v6 = [queryParams countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (uint64_t)_arrayContainsNSNull:()SUCoreBorderMAAssetQuery
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)_getFirstNSStringEntryFromArray:()SUCoreBorderMAAssetQuery
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (__CFString)_translateBuildVersionToRestoreVersionTuple:()SUCoreBorderMAAssetQuery
{
  v3 = a3;
  v4 = [v3 length];
  v27 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([0-9]+)([A-Z]{1})([0-9]+)([a-z]?)" options:0 error:&v27];
  v6 = v27;
  v7 = [v5 matchesInString:v3 options:0 range:{0, v4}];
  v8 = [v7 objectAtIndex:0];
  v9 = v8;
  v10 = &stru_28469CC48;
  if (!v6 && v8)
  {
    v11 = [v8 rangeAtIndex:1];
    v13 = [v3 substringWithRange:{v11, v12}];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v9 rangeAtIndex:2];
    v17 = [v3 substringWithRange:{v15, v16}];
    v18 = [v14 stringWithFormat:@"%i", objc_msgSend(v17, "characterAtIndex:", 0) - 64];

    v19 = [v9 rangeAtIndex:3];
    v21 = [v3 substringWithRange:{v19, v20}];
    v22 = [v9 rangeAtIndex:4];
    v24 = [v3 substringWithRange:{v22, v23}];
    if ([v24 isEqualToString:&stru_28469CC48])
    {
      v25 = @"0";
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", objc_msgSend(v24, "characterAtIndex:", 0) - 96];
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.0.%@, 0", v13, v18, v21, v25];
  }

  return v10;
}

@end