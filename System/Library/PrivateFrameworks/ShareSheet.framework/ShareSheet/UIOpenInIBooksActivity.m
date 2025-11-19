@interface UIOpenInIBooksActivity
+ (id)bestJobNameForActivityItems:(id)a3;
+ (id)defaultJobName;
+ (id)jobNameFormatForFile;
+ (unint64_t)_xpcAttributes;
- (BOOL)_appIsDocumentTypeOwner;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (UIOpenInIBooksActivity)init;
- (UIPrintInteractionController)printInteractionController;
- (id)_loadedApplicationProxy;
- (id)activityTitle;
- (void)_finishedCopyingResource:(BOOL)a3;
- (void)_handleSaveToPDFWithCompleted:(BOOL)a3 error:(id)a4;
- (void)_openDocumentWithApplication;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
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

          v14 = [*(*(&v18 + 1) + 8 * i) bundleIdentifier];
          v15 = [v14 isEqualToString:@"com.apple.iBooks"];

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

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [(objc_class *)getMCProfileConnectionClass_3() sharedConnection];
  v5 = [(UIOpenInIBooksActivity *)self sourceApplicationBundleID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v8 bundleIdentifier];
  }

  v9 = [v4 allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:&unk_1EFEC8F68 originatingAppBundleID:v7 originatingAccountIsManaged:{-[UIOpenInIBooksActivity isContentManaged](self, "isContentManaged")}];
  v10 = [v9 containsObject:@"com.apple.iBooks"];

  if (v10 && ([(UIOpenInIBooksActivity *)self _loadedApplicationProxy], v11 = objc_claimAutoreleasedReturnValue(), CanDisplayActivityForApplicationProxy = _UIActivityCanDisplayActivityForApplicationProxy(v11), v11, CanDisplayActivityForApplicationProxy))
  {
    v13 = _UIActivityItemTypes();
    v14 = [(UIOpenInIBooksActivity *)self operation];
    if (v14)
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
  v3 = [(UIOpenInIBooksActivity *)self applicationProxy];

  if (!v3)
  {
    v4 = MEMORY[0x1E69635E0];
    v5 = [(UIOpenInIBooksActivity *)self applicationIdentifier];
    v6 = [v4 applicationProxyForIdentifier:v5];
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
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = [(UIOpenInIBooksActivity *)self applicationIdentifier];
  v7 = [v5 operationToOpenResource:v3 usingApplication:v6 uniqueDocumentIdentifier:0 isContentManaged:-[UIOpenInIBooksActivity isContentManaged](self sourceAuditToken:"isContentManaged") userInfo:v9 options:0 delegate:{v4, self}];
  [(UIOpenInIBooksActivity *)self setOperation:v7];

  v8 = [(UIOpenInIBooksActivity *)self operation];
  [v8 start];
}

- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__UIOpenInIBooksActivity_openResourceOperation_didFinishCopyingResource___block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__UIOpenInIBooksActivity_openResourceOperation_didFailWithError___block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)openResourceOperationDidComplete:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UIOpenInIBooksActivity_openResourceOperationDidComplete___block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_finishedCopyingResource:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v5 = [(UIOpenInIBooksActivity *)self operation];

  if (v5)
  {
    if ([(UIOpenInIBooksActivity *)self shouldUnlinkFile])
    {
      bzero(v8, 0x400uLL);
      v6 = [(UIOpenInIBooksActivity *)self url];
      v7 = [v6 path];
      [v7 getCString:v8 maxLength:1024 encoding:4];

      unlink(v8);
      [(UIOpenInIBooksActivity *)self setShouldUnlinkFile:0];
    }

    [(UIOpenInIBooksActivity *)self setUrl:0];
    [(UIOpenInIBooksActivity *)self setOperation:0];
    [(UIActivity *)self activityDidFinish:v3];
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
    v4 = [(UIOpenInIBooksActivity *)self printInteractionController];
    v5 = [v4 printInfo];
    v6 = [v5 jobName];
    v7 = [v6 stringByStandardizingPath];

    if (!v7 || ![v7 length])
    {
      v8 = [UIOpenInIBooksActivity bestJobNameForActivityItems:0];

      v7 = v8;
    }

    v9 = tempURLForJobName(v7);
    [(UIOpenInIBooksActivity *)self setUrl:v9];

    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__UIOpenInIBooksActivity_performActivity__block_invoke;
    v15 = &unk_1E71FB220;
    objc_copyWeak(&v16, &location);
    v10 = MEMORY[0x18CFF58E0](&v12);
    v11 = [(UIOpenInIBooksActivity *)self url:v12];
    [v4 savePDFToURL:v11 completionHandler:v10];

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

- (void)_handleSaveToPDFWithCompleted:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6 || !v4)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UIOpenInIBooksActivity *)self _handleSaveToPDFWithCompleted:v6 error:v8];
    }

    [(UIOpenInIBooksActivity *)self setUrl:0];
    [(UIOpenInIBooksActivity *)self setShouldUnlinkFile:0];
    [(UIActivity *)self activityDidFinish:0 items:0 error:v6];
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

- (void)prepareWithActivityItems:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_UIActivityItemTypes() & 0x20) != 0)
  {
    v5 = [(UIOpenInIBooksActivity *)self printInteractionController];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v4;
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
            [v5 setPrintPageRenderer:v41];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v5 setPrintFormatter:v41];
              goto LABEL_35;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v5 setPrintInfo:v41];
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
    v5 = [UIOpenInIBooksActivity bestJobNameForActivityItems:v4];
    v6 = _UIActivityItemsGetImages(v4, 0, 1);
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = tempURLForJobName(v5);
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
      v11 = v5;
      v12 = MEMORY[0x1E696AAE8];
      v13 = v8;
      v14 = [v12 mainBundle];
      v15 = [v14 localizedInfoDictionary];
      v16 = [v15 objectForKey:@"CFBundleDisplayName"];

      if (!v16)
      {
        v17 = [MEMORY[0x1E696AAE8] mainBundle];
        v18 = [v17 infoDictionary];
        v16 = [v18 objectForKey:@"CFBundleDisplayName"];

        if (!v16)
        {
          v19 = [MEMORY[0x1E696AAE8] mainBundle];
          v20 = [v19 infoDictionary];
          v21 = [v20 objectForKey:@"CFBundleName"];

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

+ (id)bestJobNameForActivityItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    v12 = [a1 jobNameFormatForFile];
    v13 = [v11 lastPathComponent];

    v14 = [v10 stringWithFormat:v12, v13];

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = [a1 defaultJobName];
LABEL_12:

  return v14;
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