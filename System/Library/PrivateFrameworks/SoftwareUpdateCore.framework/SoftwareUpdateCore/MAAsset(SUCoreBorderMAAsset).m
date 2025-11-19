@interface MAAsset(SUCoreBorderMAAsset)
+ (id)SUCoreBorder_loadSync:()SUCoreBorderMAAsset allowingDifferences:withPurpose:error:simulateForDescriptor:simulateForType:;
+ (id)_SUCoreBorder_MAAssetResultAtBegin:()SUCoreBorderMAAsset withDescriptor:type:error:;
+ (id)_SUCoreBorder_MAAssetResultAtEnd:()SUCoreBorderMAAsset withDescriptor:type:withResult:error:;
+ (id)_SUCoreBorder_MAAttributesAtBegin:()SUCoreBorderMAAsset;
+ (id)_SUCoreBorder_MAAttributesAtEnd:()SUCoreBorderMAAsset withBaseAttributes:;
+ (id)_getSimulatedAssetForDescriptor:()SUCoreBorderMAAsset type:;
+ (uint64_t)_SUCoreBorder_MAAssetState:()SUCoreBorderMAAsset;
+ (uint64_t)_SUCoreBorder_MABoolResultAtBegin:()SUCoreBorderMAAsset;
+ (uint64_t)_SUCoreBorder_MABoolResultAtEnd:()SUCoreBorderMAAsset withResult:;
+ (void)SUCoreBorder_cancelCatalogDownload:()SUCoreBorderMAAsset completionWithCancelResult:;
+ (void)SUCoreBorder_startCatalogDownload:()SUCoreBorderMAAsset options:completionWithError:;
+ (void)_SUCoreBorder_MACancelDownloadResultAtBegin:()SUCoreBorderMAAsset withCompletion:;
+ (void)_SUCoreBorder_MACancelDownloadResultAtEnd:()SUCoreBorderMAAsset withResult:withCompletion:;
+ (void)_SUCoreBorder_MADownloadResultAtBegin:()SUCoreBorderMAAsset withCompletion:;
+ (void)_SUCoreBorder_MADownloadResultAtEnd:()SUCoreBorderMAAsset withResult:withError:withCompletion:;
+ (void)_SUCoreBorder_MAOperationResultAtBegin:()SUCoreBorderMAAsset withCompletion:;
+ (void)_SUCoreBorder_MAOperationResultAtEnd:()SUCoreBorderMAAsset withResult:withCompletion:;
+ (void)_SUCoreBorder_MAPurgeResultAtBegin:()SUCoreBorderMAAsset withCompletion:;
+ (void)_SUCoreBorder_MAPurgeResultAtEnd:()SUCoreBorderMAAsset withResult:withError:withCompletion:;
- (id)SUCoreBorder_attributes;
- (uint64_t)SUCoreBorder_refreshState;
- (uint64_t)SUCoreBorder_state;
- (void)SUCoreBorder_cancelDownload:()SUCoreBorderMAAsset;
- (void)SUCoreBorder_configDownload:()SUCoreBorderMAAsset completion:;
- (void)SUCoreBorder_purgeWithError:()SUCoreBorderMAAsset;
- (void)SUCoreBorder_startDownload:()SUCoreBorderMAAsset completionWithError:;
- (void)_prepAndSendDownloadFinishedSplunkEvent:()SUCoreBorderMAAsset withError:withSessionId:;
- (void)_prepAndSendDownloadStartedSplunkEvent:()SUCoreBorderMAAsset;
- (void)_setCommonSplunkFields:()SUCoreBorderMAAsset withSessionId:;
@end

@implementation MAAsset(SUCoreBorderMAAsset)

+ (void)SUCoreBorder_startCatalogDownload:()SUCoreBorderMAAsset options:completionWithError:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D644A0] sharedSimulator];
  v11 = [v10 begin:@"ma" atFunction:@"startCatalogDownload"];

  v12 = MEMORY[0x277D289C0];
  if (v11)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MADownloadResultAtBegin:v11 withCompletion:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __94__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_startCatalogDownload_options_completionWithError___block_invoke;
    v13[3] = &unk_27892C948;
    v14 = v9;
    [v12 startCatalogDownload:v7 options:v8 completionWithError:v13];
  }
}

+ (void)SUCoreBorder_cancelCatalogDownload:()SUCoreBorderMAAsset completionWithCancelResult:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D644A0] sharedSimulator];
  v8 = [v7 begin:@"ma" atFunction:@"cancelCatalogDownload"];

  v9 = MEMORY[0x277D289C0];
  if (v8)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MACancelDownloadResultAtBegin:v8 withCompletion:v6];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_cancelCatalogDownload_completionWithCancelResult___block_invoke;
    v10[3] = &unk_27892C970;
    v11 = v6;
    [v9 cancelCatalogDownload:v5 then:v10];
  }
}

- (void)SUCoreBorder_startDownload:()SUCoreBorderMAAsset completionWithError:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D644A0] sharedSimulator];
  v9 = [v8 begin:@"ma" atFunction:@"startDownload"];

  if (v9)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MADownloadResultAtBegin:v9 withCompletion:v7];
  }

  else
  {
    v10 = [v6 sessionId];
    [a1 _prepAndSendDownloadStartedSplunkEvent:v10];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_startDownload_completionWithError___block_invoke;
    v11[3] = &unk_27892C998;
    v11[4] = a1;
    v12 = v6;
    v13 = v7;
    [a1 startDownload:v12 completionWithError:v11];
  }
}

- (void)SUCoreBorder_purgeWithError:()SUCoreBorderMAAsset
{
  v4 = a3;
  v5 = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [v5 begin:@"ma" atFunction:@"purgeWithError"];

  if (v6)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MAPurgeResultAtBegin:v6 withCompletion:v4];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_purgeWithError___block_invoke;
    v7[3] = &unk_27892C948;
    v8 = v4;
    [a1 purgeWithError:v7];
  }
}

- (void)SUCoreBorder_cancelDownload:()SUCoreBorderMAAsset
{
  v4 = a3;
  v5 = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [v5 begin:@"ma" atFunction:@"cancelDownload"];

  if (v6)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MACancelDownloadResultAtBegin:v6 withCompletion:v4];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_cancelDownload___block_invoke;
    v7[3] = &unk_27892C970;
    v8 = v4;
    [a1 cancelDownload:v7];
  }
}

- (void)SUCoreBorder_configDownload:()SUCoreBorderMAAsset completion:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D644A0] sharedSimulator];
  v9 = [v8 begin:@"ma" atFunction:@"configDownload"];

  if (v9)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MAOperationResultAtBegin:v9 withCompletion:v7];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_configDownload_completion___block_invoke;
    v10[3] = &unk_27892C970;
    v11 = v7;
    [a1 configDownload:v6 completion:v10];
  }
}

- (uint64_t)SUCoreBorder_refreshState
{
  v2 = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [v2 begin:@"ma" atFunction:@"refreshState"];

  if (v3)
  {
    v4 = [MEMORY[0x277D289C0] _SUCoreBorder_MABoolResultAtBegin:v3];
  }

  else
  {
    v4 = [a1 refreshState];
    v5 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [v5 end:@"ma" atFunction:@"refreshState"];

    if (v6)
    {
      v4 = [MEMORY[0x277D289C0] _SUCoreBorder_MABoolResultAtEnd:v6 withResult:v4];
    }
  }

  return v4;
}

- (uint64_t)SUCoreBorder_state
{
  v2 = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [v2 begin:@"ma" atFunction:@"state"];

  if (v3)
  {
    v4 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAssetState:v3];
  }

  else
  {
    v4 = [a1 state];
    v5 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [v5 end:@"ma" atFunction:@"state"];

    if (v6)
    {
      v4 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAssetState:v6];
    }
  }

  return v4;
}

- (id)SUCoreBorder_attributes
{
  v2 = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [v2 begin:@"ma" atFunction:@"attributes"];

  if (v3)
  {
    v4 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAttributesAtBegin:v3];
  }

  else
  {
    v4 = [a1 attributes];
    v5 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [v5 end:@"ma" atFunction:@"attributes"];

    if (v6)
    {
      v7 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAttributesAtEnd:v6 withBaseAttributes:v4];

      v4 = v7;
    }
  }

  return v4;
}

+ (id)SUCoreBorder_loadSync:()SUCoreBorderMAAsset allowingDifferences:withPurpose:error:simulateForDescriptor:simulateForType:
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [MEMORY[0x277D644A0] sharedSimulator];
  v18 = [v17 begin:@"ma" atFunction:@"loadSync"];

  if (v18)
  {
    v19 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAssetResultAtBegin:v18 withDescriptor:v16 type:a8 error:a6];
  }

  else
  {
    v27 = v14;
    v28 = v13;
    v20 = v13;
    v21 = a6;
    v22 = [MEMORY[0x277D289C0] loadSync:v20 allowingDifferences:v14 withPurpose:v15 error:a6];
    v23 = [MEMORY[0x277D644A0] sharedSimulator];
    v24 = [v23 end:@"ma" atFunction:@"loadSync"];

    if (v24)
    {
      v25 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAssetResultAtEnd:v24 withDescriptor:v16 type:a8 withResult:v22 error:v21];
    }

    else
    {
      v25 = v22;
    }

    v19 = v25;

    v14 = v27;
    v13 = v28;
  }

  return v19;
}

+ (void)_SUCoreBorder_MADownloadResultAtBegin:()SUCoreBorderMAAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 3)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    if (v7 == 1)
    {
      v8 = [MEMORY[0x277D644A0] sharedSimulator];
      v9 = 3;
      v10 = [v8 generateError:@"_SUCoreBorder_MADownloadResultAtBegin" ofDomain:@"com.apple.MobileAssetError.Download" withCode:3];
    }

    else
    {
      v8 = [MEMORY[0x277D64428] sharedDiag];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [v8 trackAnomaly:@"_SUCoreBorder_MADownloadResultAtBegin" forReason:v11 withResult:8113 withError:0];

      v10 = 0;
      v9 = 35;
    }
  }

  v12 = [MEMORY[0x277D643F8] sharedCore];
  v13 = [v12 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MADownloadResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9C0;
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v14 = v10;
  v15 = v6;
  dispatch_async(v13, block);
}

+ (void)_SUCoreBorder_MADownloadResultAtEnd:()SUCoreBorderMAAsset withResult:withError:withCompletion:
{
  v15 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v15 simAction];
  if (v11 == 3)
  {
    a4 = 0;
    v13 = 0;
    v12 = v9;
  }

  else
  {
    if (v11 == 1)
    {
      v12 = [MEMORY[0x277D644A0] sharedSimulator];
      a4 = 3;
      v13 = [v12 generateError:@"_SUCoreBorder_MADownloadResultAtEnd" ofDomain:@"com.apple.MobileAssetError.Download" withCode:3];
      v14 = v9;
    }

    else
    {
      v12 = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v15];
      [v12 trackAnomaly:@"_SUCoreBorder_MADownloadResultAtEnd" forReason:v14 withResult:8113 withError:0];
      v13 = v9;
    }
  }

  v10[2](v10, a4, v13);
}

+ (void)_SUCoreBorder_MAPurgeResultAtBegin:()SUCoreBorderMAAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 3)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    if (v7 == 1)
    {
      v8 = [MEMORY[0x277D644A0] sharedSimulator];
      v9 = 5;
      v10 = [v8 generateError:@"_SUCoreBorder_MAPurgeResultAtBegin" ofDomain:@"com.apple.MobileAssetError.Purge" withCode:5];
    }

    else
    {
      v8 = [MEMORY[0x277D64428] sharedDiag];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [v8 trackAnomaly:@"_SUCoreBorder_MAPurgeResultAtBegin" forReason:v11 withResult:8113 withError:0];

      v10 = 0;
      v9 = 6;
    }
  }

  v12 = [MEMORY[0x277D643F8] sharedCore];
  v13 = [v12 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MAPurgeResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9C0;
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v14 = v10;
  v15 = v6;
  dispatch_async(v13, block);
}

+ (void)_SUCoreBorder_MAPurgeResultAtEnd:()SUCoreBorderMAAsset withResult:withError:withCompletion:
{
  v15 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v15 simAction];
  if (v11 == 3)
  {
    a4 = 0;
    v13 = 0;
    v12 = v9;
  }

  else
  {
    if (v11 == 1)
    {
      v12 = [MEMORY[0x277D644A0] sharedSimulator];
      a4 = 5;
      v13 = [v12 generateError:@"_SUCoreBorder_MAPurgeResultAtEnd" ofDomain:@"com.apple.MobileAssetError.Purge" withCode:5];
      v14 = v9;
    }

    else
    {
      v12 = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v15];
      [v12 trackAnomaly:@"_SUCoreBorder_MAPurgeResultAtEnd" forReason:v14 withResult:8113 withError:0];
      v13 = v9;
    }
  }

  v10[2](v10, a4, v13);
}

+ (void)_SUCoreBorder_MACancelDownloadResultAtBegin:()SUCoreBorderMAAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 1)
  {
    v8 = 4;
  }

  else if (v7 == 3)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [v9 trackAnomaly:@"_SUCoreBorder_MACancelDownloadResultAtBegin" forReason:v10 withResult:8113 withError:0];

    v8 = 5;
  }

  v11 = [MEMORY[0x277D643F8] sharedCore];
  v12 = [v11 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MACancelDownloadResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9E8;
  v15 = v6;
  v16 = v8;
  v13 = v6;
  dispatch_async(v12, block);
}

+ (void)_SUCoreBorder_MACancelDownloadResultAtEnd:()SUCoreBorderMAAsset withResult:withCompletion:
{
  v11 = a3;
  v7 = a5;
  v8 = [v11 simAction];
  if (v8 == 1)
  {
    a4 = 4;
  }

  else if (v8 == 3)
  {
    a4 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v11];
    [v9 trackAnomaly:@"_SUCoreBorder_MACancelDownloadResultAtEnd" forReason:v10 withResult:8113 withError:0];
  }

  v7[2](v7, a4);
}

+ (void)_SUCoreBorder_MAOperationResultAtBegin:()SUCoreBorderMAAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 1)
  {
    v8 = 2;
  }

  else if (v7 == 3)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [v9 trackAnomaly:@"_SUCoreBorder_MAOperationResultAtBegin" forReason:v10 withResult:8113 withError:0];

    v8 = 4;
  }

  v11 = [MEMORY[0x277D643F8] sharedCore];
  v12 = [v11 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MAOperationResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9E8;
  v15 = v6;
  v16 = v8;
  v13 = v6;
  dispatch_async(v12, block);
}

+ (void)_SUCoreBorder_MAOperationResultAtEnd:()SUCoreBorderMAAsset withResult:withCompletion:
{
  v11 = a3;
  v7 = a5;
  v8 = [v11 simAction];
  if (v8 == 1)
  {
    a4 = 2;
  }

  else if (v8 == 3)
  {
    a4 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v11];
    [v9 trackAnomaly:@"_SUCoreBorder_MAOperationResultAtEnd" forReason:v10 withResult:8113 withError:0];
  }

  v7[2](v7, a4);
}

+ (uint64_t)_SUCoreBorder_MABoolResultAtBegin:()SUCoreBorderMAAsset
{
  v3 = a3;
  v4 = [v3 simAction];
  if (v4 == 1)
  {
    goto LABEL_5;
  }

  if (v4 != 3)
  {
    v6 = [MEMORY[0x277D64428] sharedDiag];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v3];
    [v6 trackAnomaly:@"_SUCoreBorder_MABoolResultAtBegin" forReason:v7 withResult:8113 withError:0];

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = 1;
LABEL_6:

  return v5;
}

+ (uint64_t)_SUCoreBorder_MABoolResultAtEnd:()SUCoreBorderMAAsset withResult:
{
  v5 = a3;
  v6 = [v5 simAction];
  if (v6 == 1)
  {
    a4 = 0;
  }

  else if (v6 == 3)
  {
    a4 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [v7 trackAnomaly:@"_SUCoreBorder_MABoolResultAtEnd" forReason:v8 withResult:8113 withError:0];
  }

  return a4;
}

+ (id)_SUCoreBorder_MAAssetResultAtBegin:()SUCoreBorderMAAsset withDescriptor:type:error:
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 simAction];
  if (v12 == 3)
  {
    v14 = [a1 _getSimulatedAssetForDescriptor:v11 type:a5];
    goto LABEL_7;
  }

  if (v12 != 1)
  {
    v15 = [MEMORY[0x277D64428] sharedDiag];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v10];
    [v15 trackAnomaly:@"_SUCoreBorder_MAAssetResultAtBegin" forReason:v16 withResult:8113 withError:0];

    v14 = 0;
LABEL_7:
    v13 = 0;
    if (!a6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = [v10 buildErrorWithDescription:@"SUCoreError created by _SUCoreBorder_MAAssetResultAtBegin"];
  v14 = 0;
  if (a6)
  {
LABEL_8:
    v13 = v13;
    *a6 = v13;
  }

LABEL_9:

  return v14;
}

+ (id)_SUCoreBorder_MAAssetResultAtEnd:()SUCoreBorderMAAsset withDescriptor:type:withResult:error:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v12 simAction];
  if (v17 == 3)
  {
    v18 = [a1 _getSimulatedAssetForDescriptor:v13 type:a5];

    v19 = v16;
    v16 = 0;
  }

  else if (v17 == 1)
  {

    [v12 buildErrorWithDescription:@"SUCoreError created by _SUCoreBorder_MAAssetResultAtEnd"];
    v18 = 0;
    v16 = v19 = v16;
  }

  else
  {
    v19 = [MEMORY[0x277D64428] sharedDiag];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v12];
    [v19 trackAnomaly:@"_SUCoreBorder_MAAssetResultAtEnd" forReason:v20 withResult:8113 withError:0];

    v18 = v14;
  }

  if (a7)
  {
    v21 = v16;
    *a7 = v16;
  }

  return v18;
}

+ (uint64_t)_SUCoreBorder_MAAssetState:()SUCoreBorderMAAsset
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 simAction] != 3)
  {
    v7 = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v3];
    [v7 trackAnomaly:@"_SUCoreBorder_MAAssetState" forReason:v8 withResult:8113 withError:0];

    v6 = 0;
    goto LABEL_20;
  }

  v4 = [v3 assetState];
  v5 = [v4 isEqualToString:@"MAUnknown"];

  if ((v5 & 1) == 0)
  {
    v9 = [v3 assetState];
    v10 = [v9 isEqualToString:@"MANotPresent"];

    if (v10)
    {
      v6 = 1;
      goto LABEL_17;
    }

    v11 = [v3 assetState];
    v12 = [v11 isEqualToString:@"MAInstalled"];

    if (v12)
    {
      v6 = 2;
      goto LABEL_17;
    }

    v13 = [v3 assetState];
    v14 = [v13 isEqualToString:@"MAInstalledNotInCatalog"];

    if (v14)
    {
      v6 = 3;
      goto LABEL_17;
    }

    v15 = [v3 assetState];
    v16 = [v15 isEqualToString:@"MADownloading"];

    if (v16)
    {
      v6 = 4;
      goto LABEL_17;
    }

    v17 = [v3 assetState];
    v18 = [v17 isEqualToString:@"MARequiredByOs"];

    if (v18)
    {
      v6 = 5;
      goto LABEL_17;
    }

    v19 = [v3 assetState];
    v20 = [v19 isEqualToString:@"MAInstalledWithOs"];

    if (v20)
    {
      v6 = 6;
      goto LABEL_17;
    }

    v26 = [MEMORY[0x277D64428] sharedDiag];
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event asset state, event: %@", v3];
    [v26 trackAnomaly:@"_SUCoreBorder_MAAssetState" forReason:v27 withResult:8113 withError:0];
  }

  v6 = 0;
LABEL_17:
  v21 = [MEMORY[0x277D64460] sharedLogger];
  v22 = [v21 oslog];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v3 assetState];
    *buf = 138412546;
    v29 = v23;
    v30 = 2048;
    v31 = v6;
    _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_STATE] using simulated state:%@ (enum:%ld)", buf, 0x16u);
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_SUCoreBorder_MAAttributesAtBegin:()SUCoreBorderMAAsset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 simAction];
  if (v4 == 3)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [v3 assetAttributesPlist];
    v9 = [v7 initWithContentsOfFile:v8];

    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] using simulated attributes:%@", buf, 0xCu);
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = [MEMORY[0x277D64460] sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] simulating missing attributes", buf, 2u);
      }
    }

    else
    {
      v6 = [MEMORY[0x277D64428] sharedDiag];
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v3];
      [v6 trackAnomaly:@"_SUCoreBorder_MAAttributesAtBegin" forReason:v12 withResult:8113 withError:0];
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_SUCoreBorder_MAAttributesAtEnd:()SUCoreBorderMAAsset withBaseAttributes:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 3)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = [v5 assetAttributesPlist];
    v13 = [v11 initWithContentsOfFile:v12];

    v14 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] simulating additional/replaced attributes:%@", buf, 0xCu);
    }

    [v10 addEntriesFromDictionary:v13];
  }

  else
  {
    if (v7 == 1)
    {
      v8 = [MEMORY[0x277D64460] sharedLogger];
      v9 = [v8 oslog];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] simulating missing attributes", buf, 2u);
      }
    }

    else
    {
      v9 = [MEMORY[0x277D64428] sharedDiag];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [v9 trackAnomaly:@"_SUCoreBorder_MAAttributesAtEnd" forReason:v16 withResult:8113 withError:0];
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_getSimulatedAssetForDescriptor:()SUCoreBorderMAAsset type:
{
  v5 = a3;
  v6 = v5;
  if (a4 == 2)
  {
    v9 = [v5 documentationAssetType];
    v10 = [v6 productBuildVersion];
    v11 = [v6 productVersion];
    v13 = [v6 documentationID];
    v14 = [v6 documentationAssetPurpose];
    v12 = _getNewDocumentationMAAssetAttributesDictionary(v9, v10, v11, v13, v14);
  }

  else
  {
    if (a4 != 1)
    {
      v12 = [MEMORY[0x277D64428] sharedDiag];
      [v12 trackAnomaly:@"_getSimulatedAssetForDescriptor" forReason:@"unsupported SUCoreBorderMobileAssetType" withResult:8113 withError:0];
      v15 = 0;
LABEL_11:

      goto LABEL_13;
    }

    v7 = [v5 softwareUpdateAssetType];
    isUpdateBrainAssetType = _isUpdateBrainAssetType(v7);

    v9 = [v6 softwareUpdateAssetType];
    v10 = [v6 productBuildVersion];
    if (isUpdateBrainAssetType)
    {
      v11 = [v6 softwareUpdateAssetPurpose];
      v12 = _getNewUpdateBrainMAAssetAttributesDictionary(v9, v10, v11);
      goto LABEL_9;
    }

    v11 = [v6 productVersion];
    v13 = [v6 releaseType];
    v14 = [v6 prerequisiteBuild];
    v16 = [v6 prerequisiteOSVersion];
    v17 = [v6 softwareUpdateAssetPurpose];
    v12 = _getNewSoftwareUpdateMAAssetAttributesDictionary(v9, v10, v11, v13, v14, v16, v17);
  }

LABEL_9:
  if (v12)
  {
    v15 = [objc_alloc(MEMORY[0x277D289C0]) initWithAttributes:v12];
    goto LABEL_11;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)_setCommonSplunkFields:()SUCoreBorderMAAsset withSessionId:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 attributes];
  v17 = [v8 objectForKey:@"_DownloadSize"];

  v9 = *MEMORY[0x277D647C8];
  if (v17)
  {
    v10 = v17;
  }

  else
  {
    v10 = *MEMORY[0x277D647C8];
  }

  [v7 setSafeObject:v10 forKey:*MEMORY[0x277D64718]];
  v11 = [a1 attributes];
  v12 = [v11 objectForKey:@"AssetType"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  [v7 setSafeObject:v13 forKey:*MEMORY[0x277D646F0]];
  v14 = [a1 attributes];
  v15 = [v14 objectForKey:@"Build"];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  [v7 setSafeObject:v16 forKey:*MEMORY[0x277D647A0]];
  [v7 setSafeObject:v6 forKey:*MEMORY[0x277D647B8]];
}

- (void)_prepAndSendDownloadStartedSplunkEvent:()SUCoreBorderMAAsset
{
  v4 = a3;
  v6 = objc_opt_new();
  [v6 setSafeObject:*MEMORY[0x277D64778] forKey:*MEMORY[0x277D64740]];
  [a1 _setCommonSplunkFields:v6 withSessionId:v4];

  v5 = [MEMORY[0x277D64448] sharedReporter];
  [v5 sendEvent:v6];
}

- (void)_prepAndSendDownloadFinishedSplunkEvent:()SUCoreBorderMAAsset withError:withSessionId:
{
  v13 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  [v9 setSafeObject:*MEMORY[0x277D64770] forKey:*MEMORY[0x277D64740]];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [v9 setSafeObject:v10 forKey:*MEMORY[0x277D64710]];

  if (a3)
  {
    v11 = [v13 checkedNameForCode];
    [v9 setSafeObject:v11 forKey:*MEMORY[0x277D64708]];
  }

  [a1 _setCommonSplunkFields:v9 withSessionId:v8];
  v12 = [MEMORY[0x277D64448] sharedReporter];
  [v12 sendEvent:v9];
}

@end