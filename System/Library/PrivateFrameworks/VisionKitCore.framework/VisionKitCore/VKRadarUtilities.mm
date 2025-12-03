@interface VKRadarUtilities
+ (void)createRadarWithTitle:(id)title description:(id)description componentName:(id)name componentVersion:(id)version componentID:(id)d keywordIDs:(id)ds attachmentURLs:(id)ls includeSysdiagnose:(BOOL)self0;
+ (void)promptUserToFileBugWithAlertMessage:(id)message bugTitle:(id)title bugDescription:(id)description;
@end

@implementation VKRadarUtilities

+ (void)promptUserToFileBugWithAlertMessage:(id)message bugTitle:(id)title bugDescription:(id)description
{
  v25[5] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  titleCopy = title;
  descriptionCopy = description;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [standardUserDefaults BOOLForKey:@"DisableAssertAlert"];

  if (v12)
  {
    v13 = os_log_create("com.apple.VisionKit", "Assert");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [VKRadarUtilities promptUserToFileBugWithAlertMessage:v13 bugTitle:? bugDescription:?];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [VKRadarUtilities promptUserToFileBugWithAlertMessage:messageCopy bugTitle:v14 bugDescription:?];
    }

    v15 = *MEMORY[0x1E695EE60];
    v24[0] = *MEMORY[0x1E695EE58];
    v24[1] = v15;
    v16 = &stru_1F2C04538;
    if (messageCopy)
    {
      v16 = messageCopy;
    }

    v25[0] = @"Internal Notes Bug";
    v25[1] = v16;
    v17 = *MEMORY[0x1E695EE70];
    v24[2] = *MEMORY[0x1E695EE78];
    v24[3] = v17;
    v25[2] = @"File Radar";
    v25[3] = @"Stop Asking";
    v24[4] = *MEMORY[0x1E695EE98];
    v25[4] = @"Cancel";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__VKRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke;
    block[3] = &unk_1E7BE5CD8;
    v20 = v18;
    selfCopy = self;
    v21 = titleCopy;
    v22 = descriptionCopy;
    v13 = v18;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __80__VKRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, *(a1 + 32));
  if (v3)
  {
    v4 = v3;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v3, 604800.0, &responseFlags);
    if ((responseFlags & 3) == 1)
    {
      v6 = os_log_create("com.apple.VisionKit", "Assert");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __80__VKRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_cold_1(v6);
      }

      v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __80__VKRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_cold_2(v7);
      }

      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v8 setBool:1 forKey:@"DisableAssertAlert"];
    }

    else if ((responseFlags & 3) == 0)
    {
      [*(a1 + 56) createRadarWithTitle:*(a1 + 40) description:*(a1 + 48) componentName:@"Notes" componentVersion:@"iOS" componentID:@"568784"];
    }

    CFRelease(v4);
  }

  else
  {
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__VKRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_cold_3(v2, v5);
    }
  }
}

+ (void)createRadarWithTitle:(id)title description:(id)description componentName:(id)name componentVersion:(id)version componentID:(id)d keywordIDs:(id)ds attachmentURLs:(id)ls includeSysdiagnose:(BOOL)self0
{
  v68 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  versionCopy = version;
  dCopy = d;
  dsCopy = ds;
  lsCopy = ls;
  v20 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v20 setScheme:@"tap-to-radar"];
  v58 = v20;
  [v20 setHost:@"new"];
  array = [MEMORY[0x1E695DF70] array];
  v22 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:nameCopy];
  [array addObject:v22];

  v23 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:versionCopy];
  [array addObject:v23];

  v61 = dCopy;
  v24 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:dCopy];
  [array addObject:v24];

  v25 = objc_alloc(MEMORY[0x1E696AF60]);
  if (sysdiagnose)
  {
    v26 = @"sysdiagnose-only";
  }

  else
  {
    v26 = @"-1";
  }

  v27 = [v25 initWithName:@"AutoDiagnostics" value:v26];
  [array addObject:v27];

  v28 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v28];

  v29 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [array addObject:v29];

  if ([titleCopy length])
  {
    v30 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:titleCopy];
    [array addObject:v30];
  }

  v31 = titleCopy;
  v32 = versionCopy;
  v33 = nameCopy;
  v34 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Description" value:descriptionCopy];
  [array addObject:v34];

  if ([dsCopy count])
  {
    v35 = objc_alloc(MEMORY[0x1E696AF60]);
    [dsCopy componentsJoinedByString:{@", "}];
    v37 = v36 = dsCopy;
    v38 = [v35 initWithName:@"Keywords" value:v37];
    [array addObject:v38];

    dsCopy = v36;
  }

  v39 = lsCopy;
  v41 = v61;
  v40 = descriptionCopy;
  v59 = v31;
  if ([lsCopy count])
  {
    v56 = dsCopy;
    v57 = v33;
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v43 = lsCopy;
    v44 = [v43 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v64;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v64 != v46)
          {
            objc_enumerationMutation(v43);
          }

          path = [*(*(&v63 + 1) + 8 * i) path];
          uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
          v50 = [path stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
          [v42 addObject:v50];
        }

        v45 = [v43 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v45);
    }

    v51 = [v42 componentsJoinedByString:{@", "}];
    v52 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Attachments" value:v51];
    [array addObject:v52];

    v53 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"DeleteOnAttach" value:@"1"];
    [array addObject:v53];

    v41 = v61;
    v40 = descriptionCopy;
    v33 = v57;
    dsCopy = v56;
    v39 = lsCopy;
  }

  [v58 setQueryItems:array];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v55 = [v58 URL];
  [defaultWorkspace openURL:v55 configuration:0 completionHandler:0];
}

+ (void)promptUserToFileBugWithAlertMessage:(uint64_t)a1 bugTitle:(NSObject *)a2 bugDescription:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B4335000, a2, OS_LOG_TYPE_DEBUG, "Showing alert to file a bug with message: %@", &v2, 0xCu);
}

void __80__VKRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_cold_3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Failed to create CFUserNotificationRef for alertOptions: %@", &v3, 0xCu);
}

@end