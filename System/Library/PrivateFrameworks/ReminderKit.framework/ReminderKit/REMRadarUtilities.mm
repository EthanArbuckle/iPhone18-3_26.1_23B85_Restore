@interface REMRadarUtilities
+ (void)createRadarWithTitle:(id)title description:(id)description;
+ (void)promptUserToFileBugWithAlertMessage:(id)message bugTitle:(id)title bugDescription:(id)description;
@end

@implementation REMRadarUtilities

+ (void)promptUserToFileBugWithAlertMessage:(id)message bugTitle:(id)title bugDescription:(id)description
{
  v25[5] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  titleCopy = title;
  descriptionCopy = description;
  if (+[REMSystemUtilities isInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [standardUserDefaults BOOLForKey:@"DisableAssertAlert"];

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
      if (messageCopy)
      {
        v15 = messageCopy;
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
      selfCopy = self;
      v21 = titleCopy;
      v22 = descriptionCopy;
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

+ (void)createRadarWithTitle:(id)title description:(id)description
{
  titleCopy = title;
  v5 = MEMORY[0x1E696AF20];
  descriptionCopy = description;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"tap-to-radar"];
  [v7 setHost:@"new"];
  array = [MEMORY[0x1E695DF70] array];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Reminders"];
  [array addObject:v9];

  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"iOS"];
  [array addObject:v10];

  v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"964249"];
  [array addObject:v11];

  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"AutoDiagnostics" value:@"phone"];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v13];

  v14 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [array addObject:v14];

  if ([titleCopy length])
  {
    v15 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:titleCopy];
    [array addObject:v15];
  }

  v16 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Description" value:descriptionCopy];

  [array addObject:v16];
  [v7 setQueryItems:array];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v18 = [v7 URL];
  [defaultWorkspace openURL:v18 configuration:0 completionHandler:0];
}

@end