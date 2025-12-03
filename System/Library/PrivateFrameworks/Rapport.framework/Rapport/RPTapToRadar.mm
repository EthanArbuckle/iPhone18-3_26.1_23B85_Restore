@interface RPTapToRadar
+ (void)launchWithRequest:(id)request context:(id)context;
@end

@implementation RPTapToRadar

+ (void)launchWithRequest:(id)request context:(id)context
{
  requestCopy = request;
  contextCopy = context;
  if ([objc_opt_class() _isSupported])
  {
    if (launchWithRequest_context__onceToken != -1)
    {
      +[RPTapToRadar launchWithRequest:context:];
    }

    title = [requestCopy title];
    v8 = title;
    v9 = @"Internal Rapport Error Detected";
    if (title)
    {
      v9 = title;
    }

    v10 = v9;

    message = [requestCopy message];
    v12 = message;
    v13 = @"An internal Rapport error has been detected";
    if (message)
    {
      v13 = message;
    }

    v14 = v13;

    v15 = getIMUserNotificationClass[0]();
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v17 = [(objc_class *)v15 userNotificationWithIdentifier:stringGUID title:v10 message:v14 defaultButton:@"File Radar" alternateButton:@"Dismiss" otherButton:0];

    if (v17)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy_;
      v20[4] = __Block_byref_object_dispose_;
      v21 = contextCopy;
      sharedInstance = [getIMUserNotificationCenterClass[0]() sharedInstance];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __42__RPTapToRadar_launchWithRequest_context___block_invoke_144;
      v19[3] = &unk_1E7C93448;
      v19[4] = v20;
      [sharedInstance addUserNotification:v17 listener:0 completionHandler:v19];

      _Block_object_dispose(v20, 8);
    }
  }
}

uint64_t __42__RPTapToRadar_launchWithRequest_context___block_invoke()
{
  result = getLSApplicationWorkspaceClass[0]();
  launchWithRequest_context__RPLSApplicationWorkspace = result;
  return result;
}

void __42__RPTapToRadar_launchWithRequest_context___block_invoke_144(uint64_t a1, void *a2)
{
  if (![a2 response])
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) getTapToRadarURL];
    v3 = [launchWithRequest_context__RPLSApplicationWorkspace defaultWorkspace];
    [v3 openURL:v4 configuration:0 completionHandler:0];
  }
}

@end