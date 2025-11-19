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
  v8 = [v6 objectForKey:WFHandoffSourceKey];
  v9 = v8;
  v10 = WFWorkflowRunSourceHandoff;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v6 objectForKey:WFHandoffWorkflowControllerStateKey];
  v13 = [v6 objectForKey:WFHandoffWorkflowControllerStateDataKey];
  v14 = v13;
  if (v12)
  {
    v7[2](v7, v12, v11);
  }

  else if (v13)
  {
    v15 = [NSSet setWithObject:objc_opt_class()];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001924;
    v21[3] = &unk_100008388;
    v23 = v7;
    v22 = v11;
    v16 = [NSKeyedUnarchiver wf_securelyUnarchiveObjectWithData:v14 allowedClasses:v15 completionHandler:v21];
  }

  else
  {
    v17 = [v6 objectForKey:@"userInfoURL"];
    v18 = [NSURL URLWithString:v17];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001938;
    v19[3] = &unk_1000083B0;
    v20 = v7;
    [a1 deserializeUserInfoAtURL:v18 completionHandler:v19];
  }
}

+ (id)userActivityForContinuingWorkflowWithState:(id)a3 fromSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = WFHandoffWorkflowControllerStateKey;
  v17[1] = WFHandoffSourceKey;
  v18[0] = v6;
  v18[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [a1 temporaryFileURLBySerializingUserInfo:v8];
  if (v9)
  {
    v10 = [NSUserActivity alloc];
    v11 = [v10 initWithActivityType:WFHandoffContinueWorkflowActivityType];
    v15 = @"userInfoURL";
    v12 = [v9 absoluteString];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v11 setUserInfo:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)deserializeUserInfoAtURL:(id)a3 completionHandler:(id)a4
{
  v19 = a3;
  v5 = a4;
  if ([v19 isFileURL] && (+[WFTemporaryFileManager sharedAppGroupDirectoryURL](WFTemporaryFileManager, "sharedAppGroupDirectoryURL"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v19, "wf_isContainedByDirectoryAtURL:", v6), v6, (v7 & 1) != 0))
  {
    v8 = [WFFileType typeWithUTType:UTTypePropertyList];
    v9 = [WFFileRepresentation fileWithURL:v19 options:1 ofType:v8];

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v10, v11, v12, v13, v14, objc_opt_class(), 0];
    v16 = [v15 mutableCopy];

    [v16 addObject:objc_opt_class()];
    [v16 addObject:objc_opt_class()];
    v17 = [v9 mappedData];
    v18 = [NSKeyedUnarchiver wf_securelyUnarchiveObjectWithData:v17 allowedClasses:v16 completionHandler:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

+ (id)temporaryFileURLBySerializingUserInfo:(id)a3
{
  v3 = [NSKeyedArchiver wf_securelyArchivedDataWithRootObject:a3 deletionResponsibility:1];
  v4 = [WFTemporaryFileManager proposedSharedTemporaryFileURLForFilename:@"URLHandoffUserInfo.plist"];
  v5 = [v4 URLByDeletingLastPathComponent];
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = +[NSFileManager defaultManager];
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
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WFHandoffSimulator.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"state && handoffSource"}];
  }

  v14[0] = WFHandoffWorkflowControllerStateKey;
  v14[1] = WFHandoffSourceKey;
  v15[0] = v7;
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [a1 URLForSimulatingHandoffWithActivityType:WFHandoffContinueWorkflowActivityType userInfo:v10 webpageURL:0 fromSource:v9];

  return v11;
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
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"WFHandoffSimulator.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"userInfo && handoffSource"}];
  }

  v16 = [v11 isEqualToString:NSUserActivityTypeBrowsingWeb];
  if (v13 && v16)
  {
    v17 = v13;
    goto LABEL_13;
  }

  v18 = objc_opt_new();
  v19 = [NSURLQueryItem queryItemWithName:@"type" value:v11];
  [v18 addObject:v19];

  if (!v12)
  {
    goto LABEL_9;
  }

  v20 = [a1 temporaryFileURLBySerializingUserInfo:v12];
  v17 = v20;
  if (v20)
  {
    v21 = [v20 absoluteString];
    v22 = [NSURLQueryItem queryItemWithName:@"userInfoURL" value:v21];
    [v18 addObject:v22];

LABEL_9:
    if (v13)
    {
      v23 = [v13 absoluteString];
      v24 = [NSURLQueryItem queryItemWithName:@"webpageURL" value:v23];
      [v18 addObject:v24];
    }

    v25 = objc_opt_new();
    [v25 setScheme:WFWorkflowActiveURLScheme];
    [v25 setHost:@"continue-user-activity"];
    [v25 setQueryItems:v18];
    v17 = [v25 URL];
  }

LABEL_13:

  return v17;
}

+ (void)registerHandoffURLRequestHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFHandoffSimulator.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = +[WFInterchangeManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002388;
  v9[3] = &unk_100008360;
  v10 = v5;
  v11 = a1;
  v7 = v5;
  [v6 registerHandler:v9 forIncomingRequestsWithAction:@"continue-user-activity" scheme:0];
}

@end