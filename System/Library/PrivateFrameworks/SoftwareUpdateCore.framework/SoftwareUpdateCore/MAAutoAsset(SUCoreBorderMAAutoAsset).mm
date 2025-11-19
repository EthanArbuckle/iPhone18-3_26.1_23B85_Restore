@interface MAAutoAsset(SUCoreBorderMAAutoAsset)
+ (id)SUCoreBorder_stageDetermineGroupsAvailableForUpdate:()SUCoreBorderMAAutoAsset timeoutSecs:completion:;
+ (id)SUCoreBorder_stageDownloadGroups:()SUCoreBorderMAAutoAsset awaitingAllGroups:withStagingTimeout:reportingProgress:completion:;
+ (void)SUCoreBorder_stageCancelOperation:()SUCoreBorderMAAutoAsset;
+ (void)SUCoreBorder_stagePurgeAll:()SUCoreBorderMAAutoAsset;
+ (void)_SUCoreBorder_stageCancelAtBegin:()SUCoreBorderMAAutoAsset withCompletion:;
+ (void)_SUCoreBorder_stageCancelAtEnd:()SUCoreBorderMAAutoAsset operationError:withCompletion:;
+ (void)_SUCoreBorder_stageDetermineResultAtBegin:()SUCoreBorderMAAutoAsset withCompletion:;
+ (void)_SUCoreBorder_stageDetermineResultAtEnd:()SUCoreBorderMAAutoAsset assets:bytes:error:withCompletion:;
+ (void)_SUCoreBorder_stageDownloadAtBegin:()SUCoreBorderMAAutoAsset withCompletion:;
+ (void)_SUCoreBorder_stageDownloadAtEnd:()SUCoreBorderMAAutoAsset assets:bytes:error:withCompletion:;
+ (void)_SUCoreBorder_stagePurgeAllAtBegin:()SUCoreBorderMAAutoAsset withCompletion:;
+ (void)_SUCoreBorder_stagePurgeAllAtEnd:()SUCoreBorderMAAutoAsset operationError:withCompletion:;
+ (void)_generateSimulatedResults:()SUCoreBorderMAAutoAsset bytes:huge:;
@end

@implementation MAAutoAsset(SUCoreBorderMAAutoAsset)

+ (void)_generateSimulatedResults:()SUCoreBorderMAAutoAsset bytes:huge:
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = &unk_2846B9C90;
  }

  if (a4)
  {
    if (a5)
    {
      v6 = 100000000000;
    }

    else
    {
      v6 = 5000000000;
    }

    v10[0] = @"STAGE_GROUP_REQUIRED";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v10[1] = @"STAGE_GROUP_OPTIONAL";
    v11[0] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v11[1] = v8;
    *a4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_SUCoreBorder_stageDetermineResultAtBegin:()SUCoreBorderMAAutoAsset withCompletion:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 simAction];
  if (v8 == 3)
  {
    v10 = [v7 errorUserInfo];
    v11 = [v10 safeBooleanForKey:@"huge" defaultValue:0];

    v26 = 0;
    v27 = 0;
    [a1 _generateSimulatedResults:&v27 bytes:&v26 huge:v11];
    v12 = v27;
    v13 = v26;
    v9 = 0;
  }

  else
  {
    if (v8 == 1)
    {
      v9 = [v7 buildErrorWithDescription:@"Created by _SUCoreBorder_stageDetermineResultAtBegin"];
    }

    else
    {
      v14 = [MEMORY[0x277D64428] sharedDiag];
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v7];
      [v14 trackAnomaly:@"_SUCoreBorder_stageDetermineResultAtBegin" forReason:v15 withResult:8113 withError:0];

      v16 = [MEMORY[0x277D644A0] sharedSimulator];
      v9 = [v16 generateError:@"_SUCoreBorder_stageDetermineResultAtBegin" ofDomain:*MEMORY[0x277D646E8] withCode:8113];
    }

    v13 = 0;
    v12 = 0;
  }

  v17 = [v7 errorUserInfo];

  v18 = [v17 safeBooleanForKey:@"hang" defaultValue:0];
  if ((v18 & 1) == 0)
  {
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v20 = [v19 completionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stageDetermineResultAtBegin_withCompletion___block_invoke;
    block[3] = &unk_27892CA10;
    v25 = v6;
    v22 = v12;
    v23 = v13;
    v24 = v9;
    dispatch_async(v20, block);
  }
}

+ (void)_SUCoreBorder_stageDetermineResultAtEnd:()SUCoreBorderMAAutoAsset assets:bytes:error:withCompletion:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v12;
  v16 = v13;
  v17 = [v11 simAction];
  if (v17 == 3)
  {
    v35 = v16;
    v36 = v15;
    [a1 _generateSimulatedResults:&v36 bytes:&v35];
    v19 = v36;

    v20 = v35;
    v18 = 0;
  }

  else if (v17 == 1)
  {

    v18 = [v11 buildErrorWithDescription:@"Created by _SUCoreBorder_stageDetermineResultAtEnd"];
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = [MEMORY[0x277D64428] sharedDiag];
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v11];
    [v21 trackAnomaly:@"_SUCoreBorder_stageDetermineResultAtEnd" forReason:v22 withResult:8113 withError:0];

    v23 = [MEMORY[0x277D644A0] sharedSimulator];
    v18 = [v23 generateError:@"_SUCoreBorder_stageDetermineResultAtEnd" ofDomain:*MEMORY[0x277D646E8] withCode:8113];

    v19 = v15;
    v20 = v16;
  }

  v24 = [MEMORY[0x277D643F8] sharedCore];
  v25 = [v24 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stageDetermineResultAtEnd_assets_bytes_error_withCompletion___block_invoke;
  block[3] = &unk_27892CA10;
  v31 = v19;
  v32 = v20;
  v33 = v18;
  v34 = v14;
  v26 = v14;
  v27 = v19;
  v28 = v20;
  v29 = v18;
  dispatch_async(v25, block);
}

+ (id)SUCoreBorder_stageDetermineGroupsAvailableForUpdate:()SUCoreBorderMAAutoAsset timeoutSecs:completion:
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D644A0] sharedSimulator];
  v11 = [v10 begin:@"ma" atFunction:@"stageDetermineGroupsAvailableForUpdate"];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  if (a2 <= 0.0)
  {
    v14 = MEMORY[0x2383746D0](v9);
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __115__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDetermineGroupsAvailableForUpdate_timeoutSecs_completion___block_invoke;
    v23[3] = &unk_27892CA38;
    v25 = v27;
    v26 = &v29;
    v24 = v9;
    v12 = MEMORY[0x2383746D0](v23);
    v13 = MEMORY[0x277CBEBB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __115__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDetermineGroupsAvailableForUpdate_timeoutSecs_completion___block_invoke_2;
    v20[3] = &unk_27892CA60;
    v22 = a2 + 1.0;
    v14 = v12;
    v21 = v14;
    v15 = [v13 timerWithTimeInterval:0 repeats:v20 block:a2 + 1.0];
    v16 = v30[5];
    v30[5] = v15;

    v17 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v17 addTimer:v30[5] forMode:*MEMORY[0x277CBE738]];

    _Block_object_dispose(v27, 8);
    if (!v11)
    {
LABEL_3:
      [MEMORY[0x277D289E0] stageDetermineGroupsAvailableForUpdate:v8 completion:v14];
      goto LABEL_6;
    }
  }

  [a1 _SUCoreBorder_stageDetermineResultAtBegin:v11 withCompletion:v14];
LABEL_6:
  v18 = v30[5];

  _Block_object_dispose(&v29, 8);

  return v18;
}

+ (void)_SUCoreBorder_stageDownloadAtBegin:()SUCoreBorderMAAutoAsset withCompletion:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 simAction];
  if (v8 == 3)
  {
    v24 = 0;
    v25 = 0;
    [a1 _generateSimulatedResults:&v25 bytes:&v24];
    v10 = v25;
    v11 = v24;
    v9 = 0;
  }

  else
  {
    if (v8 == 1)
    {
      v9 = [v7 buildErrorWithDescription:@"Created by _SUCoreBorder_stageDownloadAtBegin"];
    }

    else
    {
      v12 = [MEMORY[0x277D64428] sharedDiag];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v7];
      [v12 trackAnomaly:@"_SUCoreBorder_stageDownloadAtBegin" forReason:v13 withResult:8113 withError:0];

      v14 = [MEMORY[0x277D644A0] sharedSimulator];
      v9 = [v14 generateError:@"_SUCoreBorder_stageDownloadAtBegin" ofDomain:*MEMORY[0x277D646E8] withCode:8113];
    }

    v11 = 0;
    v10 = 0;
  }

  v15 = [v7 errorUserInfo];

  v16 = [v15 safeBooleanForKey:@"hang" defaultValue:0];
  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v17 completionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stageDownloadAtBegin_withCompletion___block_invoke;
    block[3] = &unk_27892CA10;
    v23 = v6;
    v20 = v11;
    v21 = v10;
    v22 = v9;
    dispatch_async(v18, block);
  }
}

+ (void)_SUCoreBorder_stageDownloadAtEnd:()SUCoreBorderMAAutoAsset assets:bytes:error:withCompletion:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v12;
  v16 = v13;
  v17 = [v11 simAction];
  if (v17 == 3)
  {
    v35 = v16;
    v36 = v15;
    [a1 _generateSimulatedResults:&v36 bytes:&v35];
    v19 = v36;

    v20 = v35;
    v18 = 0;
  }

  else if (v17 == 1)
  {

    v18 = [v11 buildErrorWithDescription:@"Created by _SUCoreBorder_stageDownloadAtEnd"];
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = [MEMORY[0x277D64428] sharedDiag];
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v11];
    [v21 trackAnomaly:@"_SUCoreBorder_stageDownloadAtEnd" forReason:v22 withResult:8113 withError:0];

    v23 = [MEMORY[0x277D644A0] sharedSimulator];
    v18 = [v23 generateError:@"_SUCoreBorder_stageDownloadAtEnd" ofDomain:*MEMORY[0x277D646E8] withCode:8113];

    v19 = v15;
    v20 = v16;
  }

  v24 = [MEMORY[0x277D643F8] sharedCore];
  v25 = [v24 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stageDownloadAtEnd_assets_bytes_error_withCompletion___block_invoke;
  block[3] = &unk_27892CA10;
  v31 = v20;
  v32 = v19;
  v33 = v18;
  v34 = v14;
  v26 = v14;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  dispatch_async(v25, block);
}

+ (id)SUCoreBorder_stageDownloadGroups:()SUCoreBorderMAAutoAsset awaitingAllGroups:withStagingTimeout:reportingProgress:completion:
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x277D644A0] sharedSimulator];
  v16 = [v15 begin:@"ma" atFunction:@"stageDownloadGroups"];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  if (a5 < 1)
  {
    v21 = MEMORY[0x2383746D0](v14);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = a5 + 1;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __139__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke;
    v30[3] = &unk_27892CA38;
    v32 = v34;
    v33 = &v36;
    v31 = v14;
    v18 = MEMORY[0x2383746D0](v30);
    v19 = MEMORY[0x277CBEBB8];
    v20 = v17;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __139__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_2;
    v27[3] = &unk_27892CA60;
    v29 = v17;
    v21 = v18;
    v28 = v21;
    v22 = [v19 timerWithTimeInterval:0 repeats:v27 block:v20];
    v23 = v37[5];
    v37[5] = v22;

    v24 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v24 addTimer:v37[5] forMode:*MEMORY[0x277CBE738]];

    _Block_object_dispose(v34, 8);
    if (v16)
    {
LABEL_3:
      [a1 _SUCoreBorder_stageDownloadAtBegin:v16 withCompletion:v21];
      goto LABEL_6;
    }
  }

  [MEMORY[0x277D289E0] stageDownloadGroups:v12 awaitingAllGroups:a4 withStagingTimeout:-1 reportingProgress:v13 completion:v21];
LABEL_6:
  v25 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v25;
}

+ (void)_SUCoreBorder_stageCancelAtBegin:()SUCoreBorderMAAutoAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 3)
  {
    v8 = 0;
  }

  else if (v7 == 1)
  {
    v8 = [v5 buildErrorWithDescription:@"Created by _SUCoreBorder_stageCancelAtBegin"];
  }

  else
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [v9 trackAnomaly:@"_SUCoreBorder_stageCancelAtBegin" forReason:v10 withResult:8113 withError:0];

    v11 = [MEMORY[0x277D644A0] sharedSimulator];
    v8 = [v11 generateError:@"_SUCoreBorder_stageCancelAtBegin" ofDomain:*MEMORY[0x277D646E8] withCode:8113];
  }

  v12 = [MEMORY[0x277D643F8] sharedCore];
  v13 = [v12 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stageCancelAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892CA88;
  v17 = v8;
  v18 = v6;
  v14 = v8;
  v15 = v6;
  dispatch_async(v13, block);
}

+ (void)_SUCoreBorder_stageCancelAtEnd:()SUCoreBorderMAAutoAsset operationError:withCompletion:
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 simAction];
  if (v8 == 3)
  {
    v9 = 0;
  }

  else if (v8 == 1)
  {
    v9 = [v6 buildErrorWithDescription:@"Created by _SUCoreBorder_stageCancelAtEnd"];
  }

  else
  {
    v10 = [MEMORY[0x277D64428] sharedDiag];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v6];
    [v10 trackAnomaly:@"_SUCoreBorder_stageCancelAtEnd" forReason:v11 withResult:8113 withError:0];

    v12 = [MEMORY[0x277D644A0] sharedSimulator];
    v9 = [v12 generateError:@"_SUCoreBorder_stageCancelAtEnd" ofDomain:*MEMORY[0x277D646E8] withCode:8113];
  }

  v13 = [MEMORY[0x277D643F8] sharedCore];
  v14 = [v13 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stageCancelAtEnd_operationError_withCompletion___block_invoke;
  block[3] = &unk_27892CA88;
  v18 = v9;
  v19 = v7;
  v15 = v7;
  v16 = v9;
  dispatch_async(v14, block);
}

+ (void)SUCoreBorder_stageCancelOperation:()SUCoreBorderMAAutoAsset
{
  v4 = MEMORY[0x277D644A0];
  v5 = a3;
  v6 = [v4 sharedSimulator];
  v7 = [v6 begin:@"ma" atFunction:@"stageCancelOperation"];

  if (v7)
  {
    [a1 _SUCoreBorder_stageCancelAtBegin:v7 withCompletion:v5];
  }

  else
  {
    [MEMORY[0x277D289E0] stageCancelOperation:v5];
  }
}

+ (void)_SUCoreBorder_stagePurgeAllAtBegin:()SUCoreBorderMAAutoAsset withCompletion:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 simAction];
  if (v7 == 3)
  {
    v8 = 0;
  }

  else if (v7 == 1)
  {
    v8 = [v5 buildErrorWithDescription:@"Created by _SUCoreBorder_stagePurgeAllAtBegin"];
  }

  else
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v5];
    [v9 trackAnomaly:@"_SUCoreBorder_stagePurgeAllAtBegin" forReason:v10 withResult:8113 withError:0];

    v11 = [MEMORY[0x277D644A0] sharedSimulator];
    v8 = [v11 generateError:@"_SUCoreBorder_stagePurgeAllAtBegin" ofDomain:*MEMORY[0x277D646E8] withCode:8113];
  }

  v12 = [MEMORY[0x277D643F8] sharedCore];
  v13 = [v12 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stagePurgeAllAtBegin_withCompletion___block_invoke;
  block[3] = &unk_27892CA88;
  v17 = v8;
  v18 = v6;
  v14 = v8;
  v15 = v6;
  dispatch_async(v13, block);
}

+ (void)_SUCoreBorder_stagePurgeAllAtEnd:()SUCoreBorderMAAutoAsset operationError:withCompletion:
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 simAction];
  if (v8 == 3)
  {
    v9 = 0;
  }

  else if (v8 == 1)
  {
    v9 = [v6 buildErrorWithDescription:@"Created by _SUCoreBorder_stagePurgeAllAtEnd"];
  }

  else
  {
    v10 = [MEMORY[0x277D64428] sharedDiag];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v6];
    [v10 trackAnomaly:@"_SUCoreBorder_stagePurgeAllAtEnd" forReason:v11 withResult:8113 withError:0];

    v12 = [MEMORY[0x277D644A0] sharedSimulator];
    v9 = [v12 generateError:@"_SUCoreBorder_stagePurgeAllAtEnd" ofDomain:*MEMORY[0x277D646E8] withCode:8113];
  }

  v13 = [MEMORY[0x277D643F8] sharedCore];
  v14 = [v13 completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__MAAutoAsset_SUCoreBorderMAAutoAsset___SUCoreBorder_stagePurgeAllAtEnd_operationError_withCompletion___block_invoke;
  block[3] = &unk_27892CA88;
  v18 = v9;
  v19 = v7;
  v15 = v7;
  v16 = v9;
  dispatch_async(v14, block);
}

+ (void)SUCoreBorder_stagePurgeAll:()SUCoreBorderMAAutoAsset
{
  v4 = a3;
  v5 = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [v5 begin:@"ma" atFunction:@"stagePurgeAll"];

  if (v6)
  {
    [a1 _SUCoreBorder_stageCancelAtBegin:v6 withCompletion:v4];
  }

  else
  {
    v7 = MEMORY[0x277D289E0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stagePurgeAll___block_invoke;
    v8[3] = &unk_27892CAB0;
    v9 = v4;
    v10 = a1;
    [v7 stagePurgeAll:v8];
  }
}

@end