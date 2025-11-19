@interface WFSmartPromptDialogRequest
- (WFSmartPromptDialogRequest)initWithCoder:(id)a3;
- (WFSmartPromptDialogRequest)initWithConfiguration:(id)a3 attribution:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)getContentCollectionWithCompletionHandler:(id)a3;
@end

@implementation WFSmartPromptDialogRequest

- (void)getContentCollectionWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFSmartPromptDialogRequest.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__WFSmartPromptDialogRequest_getContentCollectionWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E837BEF8;
  v6 = v5;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(WFSmartPromptDialogRequest *)self cachedSourceContentCollection];

  if (v8)
  {
    v9 = [(WFSmartPromptDialogRequest *)self cachedSourceContentCollection];
    v7[2](v7, v9);
  }

  else
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = [(WFSmartPromptDialogRequest *)self archivedSourceContentCollection];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__WFSmartPromptDialogRequest_getContentCollectionWithCompletionHandler___block_invoke_3;
    v15[3] = &unk_1E837BF20;
    v15[4] = self;
    v15[5] = v7;
    v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v12 completionHandler:v15];
  }
}

void __72__WFSmartPromptDialogRequest_getContentCollectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  label = dispatch_queue_get_label(MEMORY[0x1E69E96A0]);
  if (label == dispatch_queue_get_label(0))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__WFSmartPromptDialogRequest_getContentCollectionWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_1E837E1F8;
    v8 = *(a1 + 32);
    v7 = v3;
    v5 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __72__WFSmartPromptDialogRequest_getContentCollectionWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[WFSmartPromptDialogRequest getContentCollectionWithCompletionHandler:]_block_invoke_3";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Unable to unarchive smart prompt content collection.", &v6, 0xCu);
    }
  }

  [*(a1 + 32) setCachedSourceContentCollection:v3];
  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = WFSmartPromptDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v12 encodeWithCoder:v4];
  v5 = [(WFSmartPromptDialogRequest *)self configuration:v12.receiver];
  [v4 encodeObject:v5 forKey:@"configuration"];

  v6 = [(WFSmartPromptDialogRequest *)self secondaryText];
  [v4 encodeObject:v6 forKey:@"secondaryText"];

  v7 = [(WFSmartPromptDialogRequest *)self archivedSourceContentCollection];
  [v4 encodeObject:v7 forKey:@"archivedSourceContentCollection"];

  v8 = [(WFSmartPromptDialogRequest *)self previewButton];
  [v4 encodeObject:v8 forKey:@"previewButton"];

  v9 = [(WFSmartPromptDialogRequest *)self allowOnceButton];
  [v4 encodeObject:v9 forKey:@"allowOnceButton"];

  v10 = [(WFSmartPromptDialogRequest *)self allowAlwaysButton];
  [v4 encodeObject:v10 forKey:@"allowAlwaysButton"];

  v11 = [(WFSmartPromptDialogRequest *)self denyButton];
  [v4 encodeObject:v11 forKey:@"denyButton"];
}

- (WFSmartPromptDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = WFSmartPromptDialogRequest;
  v5 = [(WFDialogRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryText"];
    secondaryText = v5->_secondaryText;
    v5->_secondaryText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedSourceContentCollection"];
    archivedSourceContentCollection = v5->_archivedSourceContentCollection;
    v5->_archivedSourceContentCollection = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewButton"];
    previewButton = v5->_previewButton;
    v5->_previewButton = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowOnceButton"];
    allowOnceButton = v5->_allowOnceButton;
    v5->_allowOnceButton = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowAlwaysButton"];
    allowAlwaysButton = v5->_allowAlwaysButton;
    v5->_allowAlwaysButton = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"denyButton"];
    denyButton = v5->_denyButton;
    v5->_denyButton = v18;

    v20 = v5;
  }

  return v5;
}

- (WFSmartPromptDialogRequest)initWithConfiguration:(id)a3 attribution:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 localizedPrompt];
  v56.receiver = self;
  v56.super_class = WFSmartPromptDialogRequest;
  v10 = [(WFDialogRequest *)&v56 initWithAttribution:v8 prompt:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_configuration, a3);
    v11 = [v7 localizedSubtitle];
    secondaryText = v10->_secondaryText;
    v10->_secondaryText = v11;

    v13 = [v7 archivedSourceContentCollection];
    archivedSourceContentCollection = v10->_archivedSourceContentCollection;
    v10->_archivedSourceContentCollection = v13;

    if (v10->_archivedSourceContentCollection)
    {
      v15 = [v7 cachedSourceContentCollection];
      v16 = [v15 copy];
      cachedSourceContentCollection = v10->_cachedSourceContentCollection;
      v10->_cachedSourceContentCollection = v16;

      v18 = [(WFContentCollection *)v10->_cachedSourceContentCollection numberOfItems];
      v19 = v18;
      if (v18 > 1 || v18 == 1 && ([v7 requestSource], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", @"Siri"), v27, v28))
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = WFLocalizedString(@"Show All %d");
        v22 = [v20 localizedStringWithFormat:v21, v19];

        v23 = [objc_alloc(MEMORY[0x1E69E0AA0]) initWithIdentifier:@"Handoff" title:v22 style:0];
        previewButton = v10->_previewButton;
        v10->_previewButton = v23;
      }

      else
      {
        v22 = v10->_previewButton;
        v10->_previewButton = 0;
      }

      v29 = [v7 requestType];

      if (v29 == @"SmartPrompt")
      {
        if ([v7 isSpecialRequest])
        {
          allowOnceButton = v10->_allowOnceButton;
          v10->_allowOnceButton = 0;
        }

        else
        {
          v40 = objc_alloc(MEMORY[0x1E69E0AA0]);
          allowOnceButton = WFLocalizedString(@"Allow Once");
          v41 = [v40 initWithIdentifier:@"AllowOnce" title:allowOnceButton style:0];
          v42 = v10->_allowOnceButton;
          v10->_allowOnceButton = v41;
        }

        v43 = [v7 isSpecialRequest];
        v44 = objc_alloc(MEMORY[0x1E69E0AA0]);
        if (v43)
        {
          v45 = @"Allow";
        }

        else
        {
          v45 = @"Always Allow";
        }

        v36 = WFLocalizedString(v45);
        v46 = [v44 initWithIdentifier:@"AllowAlways" title:v36 style:0];
        allowAlwaysButton = v10->_allowAlwaysButton;
        v10->_allowAlwaysButton = v46;

        v48 = @"Deny";
        v49 = @"Don’t Allow";
      }

      else
      {
        v30 = [v7 requestType];

        if (v30 != @"DeletionAuthorization")
        {
LABEL_26:
          v26 = v10;
          goto LABEL_27;
        }

        v31 = objc_alloc(MEMORY[0x1E69E0AA0]);
        v32 = WFLocalizedString(@"Delete");
        v33 = [v31 initWithIdentifier:@"AllowOnce" title:v32 style:2];
        v34 = v10->_allowOnceButton;
        v10->_allowOnceButton = v33;

        if (+[WFShortcutsSecuritySettings allowsDeletingWithoutConfirmation])
        {
          v35 = objc_alloc(MEMORY[0x1E69E0AA0]);
          v36 = WFLocalizedString(@"Delete Always");
          v37 = [v35 initWithIdentifier:@"AllowAlways" title:v36 style:2];
          v38 = v10->_allowAlwaysButton;
          v10->_allowAlwaysButton = v37;
        }

        else
        {
          v36 = v10->_allowAlwaysButton;
          v10->_allowAlwaysButton = 0;
        }

        v48 = @"DontDelete";
        v49 = @"Cancel";
      }

      v50 = objc_alloc(MEMORY[0x1E69E0AA0]);
      v51 = WFLocalizedString(v49);
      v52 = [v50 initWithIdentifier:v48 title:v51 style:1];
      denyButton = v10->_denyButton;
      v10->_denyButton = v52;

      goto LABEL_26;
    }

    v25 = getWFGeneralLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v58 = "[WFSmartPromptDialogRequest initWithConfiguration:attribution:]";
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Unable to archive smart prompt source content collection", buf, 0xCu);
    }
  }

  v26 = 0;
LABEL_27:

  v54 = *MEMORY[0x1E69E9840];
  return v26;
}

@end