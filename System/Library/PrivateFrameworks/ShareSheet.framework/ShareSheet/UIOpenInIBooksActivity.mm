@interface UIOpenInIBooksActivity
+ (id)bestJobNameForActivityItems:(id)items;
+ (id)defaultJobName;
+ (id)jobNameFormatForFile;
+ (unint64_t)_xpcAttributes;
- (BOOL)_appIsDocumentTypeOwner;
- (BOOL)canPerformWithActivityItems:(id)items;
- (UIOpenInIBooksActivity)init;
- (UIPrintInteractionController)printInteractionController;
- (id)_loadedApplicationProxy;
- (id)activityTitle;
- (void)_finishedCopyingResource:(BOOL)resource;
- (void)_handleSaveToPDFWithCompleted:(BOOL)completed error:(id)error;
- (void)_openDocumentWithApplication;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperation:(id)operation didFinishCopyingResource:(id)resource;
- (void)openResourceOperationDidComplete:(id)complete;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UIOpenInIBooksActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (UIOpenInIBooksActivity)init
{
  v5.receiver = self;
  v5.super_class = UIOpenInIBooksActivity;
  v2 = [(UIActivity *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIOpenInIBooksActivity *)v2 setApplicationIdentifier:@"com.apple.iBooks"];
  }

  return v3;
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"OpenIniBooks[Activity]" value:@"Books" table:@"Localizable"];

  return v3;
}

- (BOOL)_appIsDocumentTypeOwner
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(UIOpenInIBooksActivity *)self url];
  if (v3)
  {
    v4 = [MEMORY[0x1E6963658] documentProxyForURL:v3 isContentManaged:-[UIOpenInIBooksActivity isContentManaged](self sourceAuditToken:{"isContentManaged"), 0}];
    v5 = *MEMORY[0x1E69636D0];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69636D0]];
    v7 = [v4 applicationsAvailableForOpeningWithHandlerRanks:v6 error:0];
    v8 = [v7 objectForKey:v5];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          bundleIdentifier = [*(*(&v18 + 1) + 8 * i) bundleIdentifier];
          v15 = [bundleIdentifier isEqualToString:@"com.apple.iBooks"];

          if (v15)
          {
            v16 = 1;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  sharedConnection = [(objc_class *)getMCProfileConnectionClass_3() sharedConnection];
  sourceApplicationBundleID = [(UIOpenInIBooksActivity *)self sourceApplicationBundleID];
  v6 = sourceApplicationBundleID;
  if (sourceApplicationBundleID)
  {
    bundleIdentifier = sourceApplicationBundleID;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  v9 = [sharedConnection allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:&unk_1EFEC8F68 originatingAppBundleID:bundleIdentifier originatingAccountIsManaged:{-[UIOpenInIBooksActivity isContentManaged](self, "isContentManaged")}];
  v10 = [v9 containsObject:@"com.apple.iBooks"];

  if (v10 && ([(UIOpenInIBooksActivity *)self _loadedApplicationProxy], v11 = objc_claimAutoreleasedReturnValue(), CanDisplayActivityForApplicationProxy = _UIActivityCanDisplayActivityForApplicationProxy(v11), v11, CanDisplayActivityForApplicationProxy))
  {
    v13 = _UIActivityItemTypes();
    operation = [(UIOpenInIBooksActivity *)self operation];
    if (operation)
    {
      v15 = 0;
    }

    else
    {
      v16 = (_UIActivityItemTypes() & 0x22) != 0;
      v15 = (v13 & 0x80) == 0 && v16;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (UIPrintInteractionController)printInteractionController
{
  printInteractionController = self->_printInteractionController;
  if (!printInteractionController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C5A18]);
    v5 = self->_printInteractionController;
    self->_printInteractionController = v4;

    printInteractionController = self->_printInteractionController;
  }

  return printInteractionController;
}

- (id)_loadedApplicationProxy
{
  applicationProxy = [(UIOpenInIBooksActivity *)self applicationProxy];

  if (!applicationProxy)
  {
    v4 = MEMORY[0x1E69635E0];
    applicationIdentifier = [(UIOpenInIBooksActivity *)self applicationIdentifier];
    v6 = [v4 applicationProxyForIdentifier:applicationIdentifier];
    [(UIOpenInIBooksActivity *)self setApplicationProxy:v6];
  }

  return [(UIOpenInIBooksActivity *)self applicationProxy];
}

- (void)_openDocumentWithApplication
{
  v3 = [(UIOpenInIBooksActivity *)self url];
  v4 = _UIActivityDefaultOpenApplicationLaunchServiceOptions();
  memset(v9, 0, sizeof(v9));
  _SharingUIAuditTokenForCurrentProcess(v9);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  applicationIdentifier = [(UIOpenInIBooksActivity *)self applicationIdentifier];
  v7 = [defaultWorkspace operationToOpenResource:v3 usingApplication:applicationIdentifier uniqueDocumentIdentifier:0 isContentManaged:-[UIOpenInIBooksActivity isContentManaged](self sourceAuditToken:"isContentManaged") userInfo:v9 options:0 delegate:{v4, self}];
  [(UIOpenInIBooksActivity *)self setOperation:v7];

  operation = [(UIOpenInIBooksActivity *)self operation];
  [operation start];
}

- (void)openResourceOperation:(id)operation didFinishCopyingResource:(id)resource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__UIOpenInIBooksActivity_openResourceOperation_didFinishCopyingResource___block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__UIOpenInIBooksActivity_openResourceOperation_didFailWithError___block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)openResourceOperationDidComplete:(id)complete
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UIOpenInIBooksActivity_openResourceOperationDidComplete___block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_finishedCopyingResource:(BOOL)resource
{
  resourceCopy = resource;
  v9 = *MEMORY[0x1E69E9840];
  operation = [(UIOpenInIBooksActivity *)self operation];

  if (operation)
  {
    if ([(UIOpenInIBooksActivity *)self shouldUnlinkFile])
    {
      bzero(v8, 0x400uLL);
      v6 = [(UIOpenInIBooksActivity *)self url];
      path = [v6 path];
      [path getCString:v8 maxLength:1024 encoding:4];

      unlink(v8);
      [(UIOpenInIBooksActivity *)self setShouldUnlinkFile:0];
    }

    [(UIOpenInIBooksActivity *)self setUrl:0];
    [(UIOpenInIBooksActivity *)self setOperation:0];
    [(UIActivity *)self activityDidFinish:resourceCopy];
  }
}

- (void)performActivity
{
  v3 = [(UIOpenInIBooksActivity *)self url];

  if (v3)
  {

    [(UIOpenInIBooksActivity *)self _openDocumentWithApplication];
  }

  else
  {
    printInteractionController = [(UIOpenInIBooksActivity *)self printInteractionController];
    printInfo = [printInteractionController printInfo];
    jobName = [printInfo jobName];
    stringByStandardizingPath = [jobName stringByStandardizingPath];

    if (!stringByStandardizingPath || ![stringByStandardizingPath length])
    {
      v8 = [UIOpenInIBooksActivity bestJobNameForActivityItems:0];

      stringByStandardizingPath = v8;
    }

    v9 = tempURLForJobName(stringByStandardizingPath);
    [(UIOpenInIBooksActivity *)self setUrl:v9];

    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__UIOpenInIBooksActivity_performActivity__block_invoke;
    v15 = &unk_1E71FB220;
    objc_copyWeak(&v16, &location);
    v10 = MEMORY[0x18CFF58E0](&v12);
    v11 = [(UIOpenInIBooksActivity *)self url:v12];
    [printInteractionController savePDFToURL:v11 completionHandler:v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __41__UIOpenInIBooksActivity_performActivity__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSaveToPDFWithCompleted:a3 error:v6];
}

- (void)_handleSaveToPDFWithCompleted:(BOOL)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  if (errorCopy || !completedCopy)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UIOpenInIBooksActivity *)self _handleSaveToPDFWithCompleted:errorCopy error:v8];
    }

    [(UIOpenInIBooksActivity *)self setUrl:0];
    [(UIOpenInIBooksActivity *)self setShouldUnlinkFile:0];
    [(UIActivity *)self activityDidFinish:0 items:0 error:errorCopy];
  }

  else
  {
    [(UIOpenInIBooksActivity *)self setShouldUnlinkFile:1];
    v7 = [(UIOpenInIBooksActivity *)self url];

    if (v7)
    {
      [(UIOpenInIBooksActivity *)self _openDocumentWithApplication];
    }
  }
}

- (void)prepareWithActivityItems:(id)items
{
  v57 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ((_UIActivityItemTypes() & 0x20) != 0)
  {
    printInteractionController = [(UIOpenInIBooksActivity *)self printInteractionController];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = itemsCopy;
    v37 = [v36 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v46;
      while (2)
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [printInteractionController setPrintPageRenderer:v41];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [printInteractionController setPrintFormatter:v41];
              goto LABEL_35;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [printInteractionController setPrintInfo:v41];
            }
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:
  }

  else
  {
    printInteractionController = [UIOpenInIBooksActivity bestJobNameForActivityItems:itemsCopy];
    v6 = _UIActivityItemsGetImages(itemsCopy, 0, 1);
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = tempURLForJobName(printInteractionController);
      v44 = [v7 objectAtIndex:0];
      [v44 size];
      v49.origin.x = 0.0;
      v49.origin.y = 0.0;
      v49.size.width = v9;
      v49.size.height = v10;
      mediaBox.origin.x = 0.0;
      mediaBox.origin.y = 0.0;
      mediaBox.size.width = v9;
      mediaBox.size.height = v10;
      v11 = printInteractionController;
      v12 = MEMORY[0x1E696AAE8];
      v13 = v8;
      mainBundle = [v12 mainBundle];
      localizedInfoDictionary = [mainBundle localizedInfoDictionary];
      v16 = [localizedInfoDictionary objectForKey:@"CFBundleDisplayName"];

      if (!v16)
      {
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        infoDictionary = [mainBundle2 infoDictionary];
        v16 = [infoDictionary objectForKey:@"CFBundleDisplayName"];

        if (!v16)
        {
          mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
          infoDictionary2 = [mainBundle3 infoDictionary];
          v21 = [infoDictionary2 objectForKey:@"CFBundleName"];

          if (v21)
          {
            v16 = v21;
          }

          else
          {
            v16 = @"Untitled";
          }
        }
      }

      v22 = *MEMORY[0x1E695F318];
      transform.a = *MEMORY[0x1E695F3C0];
      transform.b = v22;
      *&v53 = v11;
      *(&v53 + 1) = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&transform count:2];
      v24 = CGPDFContextCreateWithURL(v13, &mediaBox, v23);

      if (v24)
      {
        v42 = v13;
        UIGraphicsPushContext(v24);
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v43 = v7;
        v25 = v7;
        v26 = [v25 countByEnumeratingWithState:&v53 objects:&mediaBox count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v54;
          v29 = *MEMORY[0x1E695EFF8];
          v30 = *(MEMORY[0x1E695EFF8] + 8);
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v54 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v32 = *(*(&v53 + 1) + 8 * j);
              [v32 size];
              v34 = v33;
              v49.origin.x = 0.0;
              v49.origin.y = 0.0;
              v49.size.width = v35;
              v49.size.height = v33;
              CGContextBeginPage(v24, &v49);
              CGContextSaveGState(v24);
              transform.a = 1.0;
              transform.b = 0.0;
              transform.c = 0.0;
              *&transform.d = xmmword_18B4339B0;
              transform.ty = v34;
              CGContextConcatCTM(v24, &transform);
              [v32 drawAtPoint:{v29, v30}];
              CGContextRestoreGState(v24);
              CGContextEndPage(v24);
            }

            v27 = [v25 countByEnumeratingWithState:&v53 objects:&mediaBox count:16];
          }

          while (v27);
        }

        UIGraphicsPopContext();
        CGPDFContextClose(v24);
        CGContextRelease(v24);
        v7 = v43;
        v13 = v42;
      }
    }

    else
    {
      v13 = 0;
    }

    [(UIOpenInIBooksActivity *)self setUrl:v13];
    [(UIOpenInIBooksActivity *)self setShouldUnlinkFile:1];
  }
}

+ (id)defaultJobName
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"iBooksJobName[Activity]" value:@"Untitled" table:@"Localizable"];

  return v3;
}

+ (id)jobNameFormatForFile
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"iBooksJobNameForURL[Activity]" value:@"Untitled" table:@"Localizable"];

  return v3;
}

+ (id)bestJobNameForActivityItems:(id)items
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(itemsCopy);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    jobNameFormatForFile = [self jobNameFormatForFile];
    lastPathComponent = [v11 lastPathComponent];

    defaultJobName = [v10 stringWithFormat:jobNameFormatForFile, lastPathComponent];

    if (defaultJobName)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  defaultJobName = [self defaultJobName];
LABEL_12:

  return defaultJobName;
}

- (void)_handleSaveToPDFWithCompleted:(NSObject *)a3 error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 url];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "ERROR: opening %{public}@ in Books required saving to PDF first, but that failed with the error: %{public}@", &v6, 0x16u);
}

@end