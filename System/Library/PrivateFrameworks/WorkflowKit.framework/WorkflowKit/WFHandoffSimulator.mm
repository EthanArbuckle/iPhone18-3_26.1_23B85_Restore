@interface WFHandoffSimulator
+ (id)URLForContinuingWorkflowWithState:(id)a3 fromSource:(id)a4;
+ (id)URLForSimulatingHandoffWithActivityType:(id)a3 userInfo:(id)a4 webpageURL:(id)a5 fromSource:(id)a6;
+ (id)temporaryFileURLBySerializingUserInfo:(id)a3;
+ (id)userActivityForContinuingWorkflowWithState:(id)a3 fromSource:(id)a4;
+ (void)deserializeUserInfoAtURL:(id)a3 completionHandler:(id)a4;
+ (void)getStateForContinuingWorkflowFromUserActivityUserInfo:(id)a3 completionHandler:(id)a4;
+ (void)registerHandoffURLRequestHandler:(id)a3;
@end

@implementation WFHandoffSimulator

+ (void)getStateForContinuingWorkflowFromUserActivityUserInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:*MEMORY[0x1E69970A8]];
  v9 = v8;
  v10 = *MEMORY[0x1E69E1388];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v6 objectForKey:*MEMORY[0x1E69970B8]];
  v13 = [v6 objectForKey:*MEMORY[0x1E69970B0]];
  v14 = v13;
  if (v12)
  {
    v7[2](v7, v12, v11);
  }

  else if (v13)
  {
    v15 = MEMORY[0x1E696ACD0];
    v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__WFHandoffSimulator_getStateForContinuingWorkflowFromUserActivityUserInfo_completionHandler___block_invoke;
    v23[3] = &unk_1E8374D60;
    v25 = v7;
    v24 = v11;
    v17 = [v15 wf_securelyUnarchiveObjectWithData:v14 allowedClasses:v16 completionHandler:v23];
  }

  else
  {
    v18 = MEMORY[0x1E695DFF8];
    v19 = [v6 objectForKey:@"userInfoURL"];
    v20 = [v18 URLWithString:v19];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__WFHandoffSimulator_getStateForContinuingWorkflowFromUserActivityUserInfo_completionHandler___block_invoke_2;
    v21[3] = &unk_1E8374D88;
    v22 = v7;
    [a1 deserializeUserInfoAtURL:v20 completionHandler:v21];
  }
}

void __94__WFHandoffSimulator_getStateForContinuingWorkflowFromUserActivityUserInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69970A8];
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  v7 = *MEMORY[0x1E69E1388];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:*MEMORY[0x1E69970B8]];

  (*(*(a1 + 32) + 16))();
}

+ (id)userActivityForContinuingWorkflowWithState:(id)a3 fromSource:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69970A8];
  v19[0] = *MEMORY[0x1E69970B8];
  v19[1] = v8;
  v20[0] = v6;
  v20[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = [a1 temporaryFileURLBySerializingUserInfo:v9];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69636A8]);
    v12 = [v11 initWithActivityType:*MEMORY[0x1E69970A0]];
    v17 = @"userInfoURL";
    v13 = [v10 absoluteString];
    v18 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v12 setUserInfo:v14];
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)deserializeUserInfoAtURL:(id)a3 completionHandler:(id)a4
{
  v22 = a3;
  v5 = a4;
  if ([v22 isFileURL] && (objc_msgSend(MEMORY[0x1E6996F68], "sharedAppGroupDirectoryURL"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v22, "wf_isContainedByDirectoryAtURL:", v6), v6, (v7 & 1) != 0))
  {
    v8 = MEMORY[0x1E6996E20];
    v9 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982F68]];
    v10 = [v8 fileWithURL:v22 options:1 ofType:v9];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v17 mutableCopy];

    [v18 addObject:objc_opt_class()];
    [v18 addObject:objc_opt_class()];
    v19 = MEMORY[0x1E696ACD0];
    v20 = [v10 mappedData];
    v21 = [v19 wf_securelyUnarchiveObjectWithData:v20 allowedClasses:v18 completionHandler:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

+ (id)temporaryFileURLBySerializingUserInfo:(id)a3
{
  v3 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:a3 deletionResponsibility:1];
  v4 = [MEMORY[0x1E6996F68] proposedSharedTemporaryFileURLForFilename:@"URLHandoffUserInfo.plist"];
  v5 = [v4 URLByDeletingLastPathComponent];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = 0;
    [v10 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v16];
    v9 = v16;
  }

  v15 = v9;
  v11 = [v3 writeToURL:v4 options:0 error:&v15];
  v12 = v15;

  v13 = 0;
  if (v11)
  {
    v13 = v4;
  }

  return v13;
}

+ (id)URLForContinuingWorkflowWithState:(id)a3 fromSource:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFHandoffSimulator.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"state && handoffSource"}];
  }

  v10 = *MEMORY[0x1E69970A8];
  v16[0] = *MEMORY[0x1E69970B8];
  v16[1] = v10;
  v17[0] = v7;
  v17[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [a1 URLForSimulatingHandoffWithActivityType:*MEMORY[0x1E69970A0] userInfo:v11 webpageURL:0 fromSource:v9];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)URLForSimulatingHandoffWithActivityType:(id)a3 userInfo:(id)a4 webpageURL:(id)a5 fromSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v12 || !v14)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"WFHandoffSimulator.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"userInfo && handoffSource"}];
  }

  v16 = [v11 isEqualToString:*MEMORY[0x1E696AA68]];
  if (v13 && v16)
  {
    v17 = v13;
    goto LABEL_13;
  }

  v18 = objc_opt_new();
  v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"type" value:v11];
  [v18 addObject:v19];

  if (!v12)
  {
    goto LABEL_9;
  }

  v20 = [a1 temporaryFileURLBySerializingUserInfo:v12];
  v17 = v20;
  if (v20)
  {
    v21 = MEMORY[0x1E696AF60];
    v22 = [v20 absoluteString];
    v23 = [v21 queryItemWithName:@"userInfoURL" value:v22];
    [v18 addObject:v23];

LABEL_9:
    if (v13)
    {
      v24 = MEMORY[0x1E696AF60];
      v25 = [v13 absoluteString];
      v26 = [v24 queryItemWithName:@"webpageURL" value:v25];
      [v18 addObject:v26];
    }

    v27 = objc_opt_new();
    [v27 setScheme:*MEMORY[0x1E6997180]];
    [v27 setHost:@"continue-user-activity"];
    [v27 setQueryItems:v18];
    v17 = [v27 URL];
  }

LABEL_13:

  return v17;
}

+ (void)registerHandoffURLRequestHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFHandoffSimulator.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = +[WFInterchangeManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFHandoffSimulator_registerHandoffURLRequestHandler___block_invoke;
  v9[3] = &unk_1E837D228;
  v10 = v5;
  v11 = a1;
  v7 = v5;
  [v6 registerHandler:v9 forIncomingRequestsWithAction:@"continue-user-activity" scheme:0];
}

void __55__WFHandoffSimulator_registerHandoffURLRequestHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parameters];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v3 objectForKey:@"webpageURL"];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [v3 objectForKey:@"userInfoURL"];
  v8 = [v6 URLWithString:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__WFHandoffSimulator_registerHandoffURLRequestHandler___block_invoke_2;
  v13[3] = &unk_1E8374D38;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v15 = v5;
  v16 = v10;
  v14 = v4;
  v11 = v5;
  v12 = v4;
  [v9 deserializeUserInfoAtURL:v8 completionHandler:v13];
}

@end