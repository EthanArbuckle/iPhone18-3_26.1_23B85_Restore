@interface PXMemoriesInlineProblemReporter
- (PXMemoriesInlineProblemReporter)initWithMemory:(id)memory features:(id)features;
- (id)_headerText;
- (id)_reportStringForFeatures;
- (id)feedbackMailViewController;
@end

@implementation PXMemoriesInlineProblemReporter

- (id)_headerText
{
  memory = [(PXMemoriesInlineProblemReporter *)self memory];
  localizedTitle = [memory localizedTitle];
  v4 = [localizedTitle stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  localizedSubtitle = [memory localizedSubtitle];
  v6 = [localizedSubtitle stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  if (v6)
  {
    v7 = [v4 stringByAppendingFormat:@" – %@", v6];

    v4 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please identify which of the values you think are incorrect for the Memory %@.\n\t\t\tWhat meaning or mood would you have picked?\n\n", v4];

  return v8;
}

- (id)_reportStringForFeatures
{
  v18 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  features = [(PXMemoriesInlineProblemReporter *)self features];
  v5 = [features countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(features);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        localizedTypeStringValue = [v9 localizedTypeStringValue];
        localizedTitle = [v9 localizedTitle];
        [string appendFormat:@"- %@: %@\n", localizedTypeStringValue, localizedTitle];
      }

      v6 = [features countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return string;
}

- (id)feedbackMailViewController
{
  v38 = *MEMORY[0x1E69E9840];
  if ([getMFMailComposeViewControllerClass_237954() canSendMail])
  {
    v3 = objc_alloc_init(getMFMailComposeViewControllerClass_237954());
    [v3 setSubject:@"Memories living-on feedback"];
    [v3 setToRecipients:&unk_1F1911968];
    string = [MEMORY[0x1E696AD60] string];
    _headerText = [(PXMemoriesInlineProblemReporter *)self _headerText];
    [string appendString:_headerText];

    _reportStringForFeatures = [(PXMemoriesInlineProblemReporter *)self _reportStringForFeatures];
    [string appendString:_reportStringForFeatures];

    _infoText = [(PXMemoriesInlineProblemReporter *)self _infoText];
    [string appendFormat:@"\n\n%@\n", _infoText];

    memory = [(PXMemoriesInlineProblemReporter *)self memory];
    v9 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:memory];

    if (v9)
    {
      v35 = 0;
      v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v9 format:200 options:0 error:&v35];
      v11 = v35;
      if (v10)
      {
        [v3 addAttachmentData:v10 mimeType:@"application/x-plist" fileName:@"results.plist"];
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = MEMORY[0x1E696AEC0];
    localizedDescription = [v11 localizedDescription];
    v10 = [v12 stringWithFormat:@"Cannot attach results.plist: %@.", localizedDescription];

    [string appendFormat:@"%@\n\n", v10];
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v10;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "ERROR: %@", buf, 0xCu);
    }

LABEL_12:
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v16 = [px_deprecated_appPhotoLibrary urlForApplicationDataFolderIdentifier:1 error:0];

    v17 = [v16 URLByAppendingPathComponent:@"Graph.plist"];
    if (!v17)
    {
LABEL_27:
      _disclaimerText = [(PXMemoriesInlineProblemReporter *)self _disclaimerText];
      [string appendFormat:@"\n\n%@\n", _disclaimerText];

      [v3 setMessageBody:string isHTML:0];
      goto LABEL_28;
    }

    v31 = v9;
    v34 = v11;
    v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17 options:0 error:&v34];
    v19 = v34;

    if (v18 && !v19)
    {
      lastPathComponent = [v17 lastPathComponent];
      [v3 addAttachmentData:v18 mimeType:@"application/octet-stream" fileName:lastPathComponent];
      v11 = 0;
LABEL_26:

      v9 = v31;
      goto LABEL_27;
    }

    px_deprecated_appPhotoLibrary2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v33 = 0;
    lastPathComponent = [px_deprecated_appPhotoLibrary2 exportGraphForPurpose:@"default" error:&v33];
    v11 = v33;

    if (lastPathComponent && !v11)
    {
      v32 = 0;
      v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:lastPathComponent options:0 error:&v32];
      v11 = v32;

      if (v22 && !v11)
      {
        lastPathComponent2 = [v17 lastPathComponent];
        [v3 addAttachmentData:v22 mimeType:@"application/octet-stream" fileName:lastPathComponent2];

        [v22 writeToURL:v17 atomically:1];
        v11 = 0;
        v18 = v22;
        goto LABEL_26;
      }

      v18 = v22;
    }

    if (v11)
    {
      v24 = MEMORY[0x1E696AEC0];
      localizedDescription2 = [v11 localizedDescription];
      v26 = [v24 stringWithFormat:@"Cannot attach graph: %@", localizedDescription2];

      v27 = v26;
      [string appendFormat:@"%@\n\n", v26];
      v28 = PLUIGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v27;
        _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "ERROR: %@", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  string = PLUIGetLog();
  if (os_log_type_enabled(string, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, string, OS_LOG_TYPE_DEFAULT, "Looks like email is not setup on this system.", buf, 2u);
  }

  v3 = 0;
LABEL_28:

  return v3;
}

- (PXMemoriesInlineProblemReporter)initWithMemory:(id)memory features:(id)features
{
  memoryCopy = memory;
  featuresCopy = features;
  v12.receiver = self;
  v12.super_class = PXMemoriesInlineProblemReporter;
  v9 = [(PXMemoriesInlineProblemReporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memory, memory);
    objc_storeStrong(&v10->_features, features);
  }

  return v10;
}

@end