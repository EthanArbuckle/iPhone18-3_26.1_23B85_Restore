@interface WFHandoffSimulator
+ (id)URLForContinuingWorkflowWithState:(id)state fromSource:(id)source;
+ (id)URLForSimulatingHandoffWithActivityType:(id)type userInfo:(id)info webpageURL:(id)l fromSource:(id)source;
+ (id)temporaryFileURLBySerializingUserInfo:(id)info;
+ (id)userActivityForContinuingWorkflowWithState:(id)state fromSource:(id)source;
+ (void)deserializeUserInfoAtURL:(id)l completionHandler:(id)handler;
+ (void)getStateForContinuingWorkflowFromUserActivityUserInfo:(id)info completionHandler:(id)handler;
+ (void)registerHandoffURLRequestHandler:(id)handler;
@end

@implementation WFHandoffSimulator

+ (void)getStateForContinuingWorkflowFromUserActivityUserInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v8 = [infoCopy objectForKey:*MEMORY[0x1E69970A8]];
  v9 = v8;
  v10 = *MEMORY[0x1E69E1388];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [infoCopy objectForKey:*MEMORY[0x1E69970B8]];
  v13 = [infoCopy objectForKey:*MEMORY[0x1E69970B0]];
  v14 = v13;
  if (v12)
  {
    handlerCopy[2](handlerCopy, v12, v11);
  }

  else if (v13)
  {
    v15 = MEMORY[0x1E696ACD0];
    v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__WFHandoffSimulator_getStateForContinuingWorkflowFromUserActivityUserInfo_completionHandler___block_invoke;
    v23[3] = &unk_1E8374D60;
    v25 = handlerCopy;
    v24 = v11;
    v17 = [v15 wf_securelyUnarchiveObjectWithData:v14 allowedClasses:v16 completionHandler:v23];
  }

  else
  {
    v18 = MEMORY[0x1E695DFF8];
    v19 = [infoCopy objectForKey:@"userInfoURL"];
    v20 = [v18 URLWithString:v19];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__WFHandoffSimulator_getStateForContinuingWorkflowFromUserActivityUserInfo_completionHandler___block_invoke_2;
    v21[3] = &unk_1E8374D88;
    v22 = handlerCopy;
    [self deserializeUserInfoAtURL:v20 completionHandler:v21];
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

+ (id)userActivityForContinuingWorkflowWithState:(id)state fromSource:(id)source
{
  v20[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  sourceCopy = source;
  v8 = *MEMORY[0x1E69970A8];
  v19[0] = *MEMORY[0x1E69970B8];
  v19[1] = v8;
  v20[0] = stateCopy;
  v20[1] = sourceCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = [self temporaryFileURLBySerializingUserInfo:v9];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69636A8]);
    v12 = [v11 initWithActivityType:*MEMORY[0x1E69970A0]];
    v17 = @"userInfoURL";
    absoluteString = [v10 absoluteString];
    v18 = absoluteString;
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

+ (void)deserializeUserInfoAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([lCopy isFileURL] && (objc_msgSend(MEMORY[0x1E6996F68], "sharedAppGroupDirectoryURL"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(lCopy, "wf_isContainedByDirectoryAtURL:", v6), v6, (v7 & 1) != 0))
  {
    v8 = MEMORY[0x1E6996E20];
    v9 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982F68]];
    v10 = [v8 fileWithURL:lCopy options:1 ofType:v9];

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
    mappedData = [v10 mappedData];
    v21 = [v19 wf_securelyUnarchiveObjectWithData:mappedData allowedClasses:v18 completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

+ (id)temporaryFileURLBySerializingUserInfo:(id)info
{
  v3 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:info deletionResponsibility:1];
  v4 = [MEMORY[0x1E6996F68] proposedSharedTemporaryFileURLForFilename:@"URLHandoffUserInfo.plist"];
  uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [uRLByDeletingLastPathComponent path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = 0;
    [defaultManager2 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
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

+ (id)URLForContinuingWorkflowWithState:(id)state fromSource:(id)source
{
  v17[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  sourceCopy = source;
  v9 = sourceCopy;
  if (!stateCopy || !sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHandoffSimulator.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"state && handoffSource"}];
  }

  v10 = *MEMORY[0x1E69970A8];
  v16[0] = *MEMORY[0x1E69970B8];
  v16[1] = v10;
  v17[0] = stateCopy;
  v17[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [self URLForSimulatingHandoffWithActivityType:*MEMORY[0x1E69970A0] userInfo:v11 webpageURL:0 fromSource:v9];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)URLForSimulatingHandoffWithActivityType:(id)type userInfo:(id)info webpageURL:(id)l fromSource:(id)source
{
  typeCopy = type;
  infoCopy = info;
  lCopy = l;
  sourceCopy = source;
  v15 = sourceCopy;
  if (!infoCopy || !sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHandoffSimulator.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"userInfo && handoffSource"}];
  }

  v16 = [typeCopy isEqualToString:*MEMORY[0x1E696AA68]];
  if (lCopy && v16)
  {
    v17 = lCopy;
    goto LABEL_13;
  }

  v18 = objc_opt_new();
  v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"type" value:typeCopy];
  [v18 addObject:v19];

  if (!infoCopy)
  {
    goto LABEL_9;
  }

  v20 = [self temporaryFileURLBySerializingUserInfo:infoCopy];
  v17 = v20;
  if (v20)
  {
    v21 = MEMORY[0x1E696AF60];
    absoluteString = [v20 absoluteString];
    v23 = [v21 queryItemWithName:@"userInfoURL" value:absoluteString];
    [v18 addObject:v23];

LABEL_9:
    if (lCopy)
    {
      v24 = MEMORY[0x1E696AF60];
      absoluteString2 = [lCopy absoluteString];
      v26 = [v24 queryItemWithName:@"webpageURL" value:absoluteString2];
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

+ (void)registerHandoffURLRequestHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHandoffSimulator.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = +[WFInterchangeManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFHandoffSimulator_registerHandoffURLRequestHandler___block_invoke;
  v9[3] = &unk_1E837D228;
  v10 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
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