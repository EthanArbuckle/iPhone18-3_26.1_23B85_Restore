@interface REMRadarUtilities
+ (void)createRadarWithTitle:(id)a3 description:(id)a4;
+ (void)promptUserToFileBugWithAlertMessage:(id)a3 bugTitle:(id)a4 bugDescription:(id)a5;
@end

@implementation REMRadarUtilities

+ (void)promptUserToFileBugWithAlertMessage:(id)a3 bugTitle:(id)a4 bugDescription:(id)a5
{
  v25[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[REMSystemUtilities isInternalInstall])
  {
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [v11 BOOLForKey:@"DisableAssertAlert"];

    if (v12)
    {
      v13 = +[REMLog utility];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [REMRadarUtilities promptUserToFileBugWithAlertMessage:v13 bugTitle:? bugDescription:?];
      }
    }

    else
    {
      v14 = *MEMORY[0x1E695EE60];
      v24[0] = *MEMORY[0x1E695EE58];
      v24[1] = v14;
      v15 = &stru_1F0D67F00;
      if (v8)
      {
        v15 = v8;
      }

      v25[0] = @"Internal Reminders Bug";
      v25[1] = v15;
      v16 = *MEMORY[0x1E695EE70];
      v24[2] = *MEMORY[0x1E695EE78];
      v24[3] = v16;
      v25[2] = @"File Radar";
      v25[3] = @"Stop Asking";
      v24[4] = *MEMORY[0x1E695EE98];
      v25[4] = @"Cancel";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__REMRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke;
      block[3] = &unk_1E7508FE0;
      v20 = v17;
      v23 = a1;
      v21 = v9;
      v22 = v10;
      v13 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __81__REMRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v2, 604800.0, &responseFlags);
    if ((responseFlags & 3) == 1)
    {
      v6 = +[REMLog utility];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __81__REMRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_cold_1(v6);
      }

      v7 = +[REMLog utility];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __81__REMRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_cold_2(v7);
      }

      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v8 setBool:1 forKey:@"DisableAssertAlert"];
    }

    else if ((responseFlags & 3) == 0)
    {
      [*(a1 + 56) createRadarWithTitle:*(a1 + 40) description:*(a1 + 48)];
    }

    CFRelease(v3);
  }

  else
  {
    v4 = +[REMLog utility];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      LODWORD(responseFlags) = 67109378;
      HIDWORD(responseFlags) = error;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_INFO, "Failed [%d] to create CFUserNotificationRef for alertOptions: %@", &responseFlags, 0x12u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)createRadarWithTitle:(id)a3 description:(id)a4
{
  v19 = a3;
  v5 = MEMORY[0x1E696AF20];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"tap-to-radar"];
  [v7 setHost:@"new"];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Reminders"];
  [v8 addObject:v9];

  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"iOS"];
  [v8 addObject:v10];

  v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"964249"];
  [v8 addObject:v11];

  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"AutoDiagnostics" value:@"phone"];
  [v8 addObject:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Serious Bug"];
  [v8 addObject:v13];

  v14 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [v8 addObject:v14];

  if ([v19 length])
  {
    v15 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:v19];
    [v8 addObject:v15];
  }

  v16 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Description" value:v6];

  [v8 addObject:v16];
  [v7 setQueryItems:v8];
  v17 = [MEMORY[0x1E6963608] defaultWorkspace];
  v18 = [v7 URL];
  [v17 openURL:v18 configuration:0 completionHandler:0];
}

@end