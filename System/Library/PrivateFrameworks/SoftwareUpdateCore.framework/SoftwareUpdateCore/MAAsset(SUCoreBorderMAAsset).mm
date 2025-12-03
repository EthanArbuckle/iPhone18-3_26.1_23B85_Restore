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
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v11 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"startCatalogDownload"];

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
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v8 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"cancelCatalogDownload"];

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
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v9 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"startDownload"];

  if (v9)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MADownloadResultAtBegin:v9 withCompletion:v7];
  }

  else
  {
    sessionId = [v6 sessionId];
    [self _prepAndSendDownloadStartedSplunkEvent:sessionId];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_startDownload_completionWithError___block_invoke;
    v11[3] = &unk_27892C998;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [self startDownload:v12 completionWithError:v11];
  }
}

- (void)SUCoreBorder_purgeWithError:()SUCoreBorderMAAsset
{
  v4 = a3;
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"purgeWithError"];

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
    [self purgeWithError:v7];
  }
}

- (void)SUCoreBorder_cancelDownload:()SUCoreBorderMAAsset
{
  v4 = a3;
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"cancelDownload"];

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
    [self cancelDownload:v7];
  }
}

- (void)SUCoreBorder_configDownload:()SUCoreBorderMAAsset completion:
{
  v6 = a3;
  v7 = a4;
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v9 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"configDownload"];

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
    [self configDownload:v6 completion:v10];
  }
}

- (uint64_t)SUCoreBorder_refreshState
{
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"refreshState"];

  if (v3)
  {
    refreshState = [MEMORY[0x277D289C0] _SUCoreBorder_MABoolResultAtBegin:v3];
  }

  else
  {
    refreshState = [self refreshState];
    mEMORY[0x277D644A0]2 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [mEMORY[0x277D644A0]2 end:@"ma" atFunction:@"refreshState"];

    if (v6)
    {
      refreshState = [MEMORY[0x277D289C0] _SUCoreBorder_MABoolResultAtEnd:v6 withResult:refreshState];
    }
  }

  return refreshState;
}

- (uint64_t)SUCoreBorder_state
{
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"state"];

  if (v3)
  {
    state = [MEMORY[0x277D289C0] _SUCoreBorder_MAAssetState:v3];
  }

  else
  {
    state = [self state];
    mEMORY[0x277D644A0]2 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [mEMORY[0x277D644A0]2 end:@"ma" atFunction:@"state"];

    if (v6)
    {
      state = [MEMORY[0x277D289C0] _SUCoreBorder_MAAssetState:v6];
    }
  }

  return state;
}

- (id)SUCoreBorder_attributes
{
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v3 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"attributes"];

  if (v3)
  {
    attributes = [MEMORY[0x277D289C0] _SUCoreBorder_MAAttributesAtBegin:v3];
  }

  else
  {
    attributes = [self attributes];
    mEMORY[0x277D644A0]2 = [MEMORY[0x277D644A0] sharedSimulator];
    v6 = [mEMORY[0x277D644A0]2 end:@"ma" atFunction:@"attributes"];

    if (v6)
    {
      v7 = [MEMORY[0x277D289C0] _SUCoreBorder_MAAttributesAtEnd:v6 withBaseAttributes:attributes];

      attributes = v7;
    }
  }

  return attributes;
}

+ (id)SUCoreBorder_loadSync:()SUCoreBorderMAAsset allowingDifferences:withPurpose:error:simulateForDescriptor:simulateForType:
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v18 = [mEMORY[0x277D644A0] begin:@"ma" atFunction:@"loadSync"];

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
    mEMORY[0x277D644A0]2 = [MEMORY[0x277D644A0] sharedSimulator];
    v24 = [mEMORY[0x277D644A0]2 end:@"ma" atFunction:@"loadSync"];

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
      v10 = [mEMORY[0x277D644A0] generateError:@"_SUCoreBorder_MADownloadResultAtBegin" ofDomain:@"com.apple.MobileAssetError.Download" withCode:3];
    }

    else
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D64428] sharedDiag];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [mEMORY[0x277D644A0] trackAnomaly:@"_SUCoreBorder_MADownloadResultAtBegin" forReason:v11 withResult:8113 withError:0];

      v10 = 0;
      v9 = 35;
    }
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  completionQueue = [mEMORY[0x277D643F8] completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MADownloadResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9C0;
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v14 = v10;
  v15 = v6;
  dispatch_async(completionQueue, block);
}

+ (void)_SUCoreBorder_MADownloadResultAtEnd:()SUCoreBorderMAAsset withResult:withError:withCompletion:
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
      v13 = [mEMORY[0x277D644A0] generateError:@"_SUCoreBorder_MADownloadResultAtEnd" ofDomain:@"com.apple.MobileAssetError.Download" withCode:3];
      v14 = v9;
    }

    else
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v15];
      [mEMORY[0x277D644A0] trackAnomaly:@"_SUCoreBorder_MADownloadResultAtEnd" forReason:v14 withResult:8113 withError:0];
      v13 = v9;
    }
  }

  v10[2](v10, a4, v13);
}

+ (void)_SUCoreBorder_MAPurgeResultAtBegin:()SUCoreBorderMAAsset withCompletion:
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
      v9 = 5;
      v10 = [mEMORY[0x277D644A0] generateError:@"_SUCoreBorder_MAPurgeResultAtBegin" ofDomain:@"com.apple.MobileAssetError.Purge" withCode:5];
    }

    else
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D64428] sharedDiag];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [mEMORY[0x277D644A0] trackAnomaly:@"_SUCoreBorder_MAPurgeResultAtBegin" forReason:v11 withResult:8113 withError:0];

      v10 = 0;
      v9 = 6;
    }
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  completionQueue = [mEMORY[0x277D643F8] completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MAPurgeResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9C0;
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v14 = v10;
  v15 = v6;
  dispatch_async(completionQueue, block);
}

+ (void)_SUCoreBorder_MAPurgeResultAtEnd:()SUCoreBorderMAAsset withResult:withError:withCompletion:
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
      a4 = 5;
      v13 = [mEMORY[0x277D644A0] generateError:@"_SUCoreBorder_MAPurgeResultAtEnd" ofDomain:@"com.apple.MobileAssetError.Purge" withCode:5];
      v14 = v9;
    }

    else
    {
      mEMORY[0x277D644A0] = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v15];
      [mEMORY[0x277D644A0] trackAnomaly:@"_SUCoreBorder_MAPurgeResultAtEnd" forReason:v14 withResult:8113 withError:0];
      v13 = v9;
    }
  }

  v10[2](v10, a4, v13);
}

+ (void)_SUCoreBorder_MACancelDownloadResultAtBegin:()SUCoreBorderMAAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  simAction = [v5 simAction];
  if (simAction == 1)
  {
    v8 = 4;
  }

  else if (simAction == 3)
  {
    v8 = 0;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MACancelDownloadResultAtBegin" forReason:v10 withResult:8113 withError:0];

    v8 = 5;
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  completionQueue = [mEMORY[0x277D643F8] completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MACancelDownloadResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9E8;
  v15 = v6;
  v16 = v8;
  v13 = v6;
  dispatch_async(completionQueue, block);
}

+ (void)_SUCoreBorder_MACancelDownloadResultAtEnd:()SUCoreBorderMAAsset withResult:withCompletion:
{
  v11 = a3;
  v7 = a5;
  simAction = [v11 simAction];
  if (simAction == 1)
  {
    a4 = 4;
  }

  else if (simAction == 3)
  {
    a4 = 0;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v11];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MACancelDownloadResultAtEnd" forReason:v10 withResult:8113 withError:0];
  }

  v7[2](v7, a4);
}

+ (void)_SUCoreBorder_MAOperationResultAtBegin:()SUCoreBorderMAAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  simAction = [v5 simAction];
  if (simAction == 1)
  {
    v8 = 2;
  }

  else if (simAction == 3)
  {
    v8 = 0;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MAOperationResultAtBegin" forReason:v10 withResult:8113 withError:0];

    v8 = 4;
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  completionQueue = [mEMORY[0x277D643F8] completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MAAsset_SUCoreBorderMAAsset___SUCoreBorder_MAOperationResultAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892C9E8;
  v15 = v6;
  v16 = v8;
  v13 = v6;
  dispatch_async(completionQueue, block);
}

+ (void)_SUCoreBorder_MAOperationResultAtEnd:()SUCoreBorderMAAsset withResult:withCompletion:
{
  v11 = a3;
  v7 = a5;
  simAction = [v11 simAction];
  if (simAction == 1)
  {
    a4 = 2;
  }

  else if (simAction == 3)
  {
    a4 = 0;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v11];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MAOperationResultAtEnd" forReason:v10 withResult:8113 withError:0];
  }

  v7[2](v7, a4);
}

+ (uint64_t)_SUCoreBorder_MABoolResultAtBegin:()SUCoreBorderMAAsset
{
  v3 = a3;
  simAction = [v3 simAction];
  if (simAction == 1)
  {
    goto LABEL_5;
  }

  if (simAction != 3)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v3];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MABoolResultAtBegin" forReason:v7 withResult:8113 withError:0];

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
  simAction = [v5 simAction];
  if (simAction == 1)
  {
    a4 = 0;
  }

  else if (simAction == 3)
  {
    a4 = 1;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MABoolResultAtEnd" forReason:v8 withResult:8113 withError:0];
  }

  return a4;
}

+ (id)_SUCoreBorder_MAAssetResultAtBegin:()SUCoreBorderMAAsset withDescriptor:type:error:
{
  v10 = a3;
  v11 = a4;
  simAction = [v10 simAction];
  if (simAction == 3)
  {
    v14 = [self _getSimulatedAssetForDescriptor:v11 type:a5];
    goto LABEL_7;
  }

  if (simAction != 1)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v10];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MAAssetResultAtBegin" forReason:v16 withResult:8113 withError:0];

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
  simAction = [v12 simAction];
  if (simAction == 3)
  {
    v18 = [self _getSimulatedAssetForDescriptor:v13 type:a5];

    mEMORY[0x277D64428] = v16;
    v16 = 0;
  }

  else if (simAction == 1)
  {

    [v12 buildErrorWithDescription:@"SUCoreError created by _SUCoreBorder_MAAssetResultAtEnd"];
    v18 = 0;
    v16 = mEMORY[0x277D64428] = v16;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v12];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MAAssetResultAtEnd" forReason:v20 withResult:8113 withError:0];

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
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v3];
    [mEMORY[0x277D64428] trackAnomaly:@"_SUCoreBorder_MAAssetState" forReason:v8 withResult:8113 withError:0];

    v6 = 0;
    goto LABEL_20;
  }

  assetState = [v3 assetState];
  v5 = [assetState isEqualToString:@"MAUnknown"];

  if ((v5 & 1) == 0)
  {
    assetState2 = [v3 assetState];
    v10 = [assetState2 isEqualToString:@"MANotPresent"];

    if (v10)
    {
      v6 = 1;
      goto LABEL_17;
    }

    assetState3 = [v3 assetState];
    v12 = [assetState3 isEqualToString:@"MAInstalled"];

    if (v12)
    {
      v6 = 2;
      goto LABEL_17;
    }

    assetState4 = [v3 assetState];
    v14 = [assetState4 isEqualToString:@"MAInstalledNotInCatalog"];

    if (v14)
    {
      v6 = 3;
      goto LABEL_17;
    }

    assetState5 = [v3 assetState];
    v16 = [assetState5 isEqualToString:@"MADownloading"];

    if (v16)
    {
      v6 = 4;
      goto LABEL_17;
    }

    assetState6 = [v3 assetState];
    v18 = [assetState6 isEqualToString:@"MARequiredByOs"];

    if (v18)
    {
      v6 = 5;
      goto LABEL_17;
    }

    assetState7 = [v3 assetState];
    v20 = [assetState7 isEqualToString:@"MAInstalledWithOs"];

    if (v20)
    {
      v6 = 6;
      goto LABEL_17;
    }

    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event asset state, event: %@", v3];
    [mEMORY[0x277D64428]2 trackAnomaly:@"_SUCoreBorder_MAAssetState" forReason:v27 withResult:8113 withError:0];
  }

  v6 = 0;
LABEL_17:
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    assetState8 = [v3 assetState];
    *buf = 138412546;
    v29 = assetState8;
    v30 = 2048;
    v31 = v6;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_STATE] using simulated state:%@ (enum:%ld)", buf, 0x16u);
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_SUCoreBorder_MAAttributesAtBegin:()SUCoreBorderMAAsset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  simAction = [v3 simAction];
  if (simAction == 3)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    assetAttributesPlist = [v3 assetAttributesPlist];
    v9 = [v7 initWithContentsOfFile:assetAttributesPlist];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] using simulated attributes:%@", buf, 0xCu);
    }
  }

  else
  {
    if (simAction == 1)
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] simulating missing attributes", buf, 2u);
      }
    }

    else
    {
      oslog2 = [MEMORY[0x277D64428] sharedDiag];
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v3];
      [oslog2 trackAnomaly:@"_SUCoreBorder_MAAttributesAtBegin" forReason:v12 withResult:8113 withError:0];
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
  simAction = [v5 simAction];
  if (simAction == 3)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    assetAttributesPlist = [v5 assetAttributesPlist];
    v13 = [v11 initWithContentsOfFile:assetAttributesPlist];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] simulating additional/replaced attributes:%@", buf, 0xCu);
    }

    [v10 addEntriesFromDictionary:v13];
  }

  else
  {
    if (simAction == 1)
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[BORDER_MA_ATTRIBUTES] simulating missing attributes", buf, 2u);
      }
    }

    else
    {
      oslog2 = [MEMORY[0x277D64428] sharedDiag];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
      [oslog2 trackAnomaly:@"_SUCoreBorder_MAAttributesAtEnd" forReason:v16 withResult:8113 withError:0];
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
    documentationAssetType = [v5 documentationAssetType];
    productBuildVersion = [v6 productBuildVersion];
    productVersion = [v6 productVersion];
    documentationID = [v6 documentationID];
    documentationAssetPurpose = [v6 documentationAssetPurpose];
    mEMORY[0x277D64428] = _getNewDocumentationMAAssetAttributesDictionary(documentationAssetType, productBuildVersion, productVersion, documentationID, documentationAssetPurpose);
  }

  else
  {
    if (a4 != 1)
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      [mEMORY[0x277D64428] trackAnomaly:@"_getSimulatedAssetForDescriptor" forReason:@"unsupported SUCoreBorderMobileAssetType" withResult:8113 withError:0];
      v15 = 0;
LABEL_11:

      goto LABEL_13;
    }

    softwareUpdateAssetType = [v5 softwareUpdateAssetType];
    isUpdateBrainAssetType = _isUpdateBrainAssetType(softwareUpdateAssetType);

    documentationAssetType = [v6 softwareUpdateAssetType];
    productBuildVersion = [v6 productBuildVersion];
    if (isUpdateBrainAssetType)
    {
      productVersion = [v6 softwareUpdateAssetPurpose];
      mEMORY[0x277D64428] = _getNewUpdateBrainMAAssetAttributesDictionary(documentationAssetType, productBuildVersion, productVersion);
      goto LABEL_9;
    }

    productVersion = [v6 productVersion];
    documentationID = [v6 releaseType];
    documentationAssetPurpose = [v6 prerequisiteBuild];
    prerequisiteOSVersion = [v6 prerequisiteOSVersion];
    softwareUpdateAssetPurpose = [v6 softwareUpdateAssetPurpose];
    mEMORY[0x277D64428] = _getNewSoftwareUpdateMAAssetAttributesDictionary(documentationAssetType, productBuildVersion, productVersion, documentationID, documentationAssetPurpose, prerequisiteOSVersion, softwareUpdateAssetPurpose);
  }

LABEL_9:
  if (mEMORY[0x277D64428])
  {
    v15 = [objc_alloc(MEMORY[0x277D289C0]) initWithAttributes:mEMORY[0x277D64428]];
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
  attributes = [self attributes];
  v17 = [attributes objectForKey:@"_DownloadSize"];

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
  attributes2 = [self attributes];
  v12 = [attributes2 objectForKey:@"AssetType"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  [v7 setSafeObject:v13 forKey:*MEMORY[0x277D646F0]];
  attributes3 = [self attributes];
  v15 = [attributes3 objectForKey:@"Build"];

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
  [self _setCommonSplunkFields:v6 withSessionId:v4];

  mEMORY[0x277D64448] = [MEMORY[0x277D64448] sharedReporter];
  [mEMORY[0x277D64448] sendEvent:v6];
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
    checkedNameForCode = [v13 checkedNameForCode];
    [v9 setSafeObject:checkedNameForCode forKey:*MEMORY[0x277D64708]];
  }

  [self _setCommonSplunkFields:v9 withSessionId:v8];
  mEMORY[0x277D64448] = [MEMORY[0x277D64448] sharedReporter];
  [mEMORY[0x277D64448] sendEvent:v9];
}

@end