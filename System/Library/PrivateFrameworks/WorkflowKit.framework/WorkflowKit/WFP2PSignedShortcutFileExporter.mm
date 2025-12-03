@interface WFP2PSignedShortcutFileExporter
- (void)exportWorkflowWithCompletion:(id)completion;
@end

@implementation WFP2PSignedShortcutFileExporter

- (void)exportWorkflowWithCompletion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  workflowRecord = [(WFShortcutExporter *)self workflowRecord];
  fileRepresentation = [workflowRecord fileRepresentation];

  workflowRecord2 = [(WFShortcutExporter *)self workflowRecord];
  name = [workflowRecord2 name];
  [fileRepresentation setName:name];

  v40 = 0;
  v9 = [fileRepresentation fileDataWithError:&v40];
  v10 = v40;
  if (v9)
  {
    v11 = [WFShortcutPackageFile alloc];
    workflowRecord3 = [(WFShortcutExporter *)self workflowRecord];
    name2 = [workflowRecord3 name];
    v14 = [(WFShortcutPackageFile *)v11 initWithShortcutData:v9 shortcutName:name2];

    v15 = objc_alloc_init(MEMORY[0x1E69CDE10]);
    v39 = v10;
    v16 = [v15 myAccountWithError:&v39];
    v17 = v39;

    v37 = v14;
    if (v16)
    {
      v38 = v17;
      v18 = [(WFShortcutPackageFile *)v14 generateSignedShortcutFileRepresentationWithAccount:v16 error:&v38];
      v19 = v38;

      if (v18)
      {
        [(WFP2PSignedShortcutFileExporter *)self setSignedShortcutFile:v18];
        fileURL = [v18 fileURL];
        completionCopy[2](completionCopy, fileURL, 0);
      }

      else
      {
        v34 = getWFGeneralLogObject();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v45 = "[WFP2PSignedShortcutFileExporter exportWorkflowWithCompletion:]";
          v46 = 2112;
          v47 = v19;
          _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Failed to generate a signed shortcut with user's Apple Account: %@", buf, 0x16u);
        }

        (completionCopy)[2](completionCopy, 0, v19);
        v18 = 0;
      }

      v17 = v19;
    }

    else
    {
      v36 = v15;
      v21 = getWFGeneralLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "[WFP2PSignedShortcutFileExporter exportWorkflowWithCompletion:]";
        v46 = 2112;
        v47 = v17;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Failed to retrieve the user's Apple Account for signing a shortcut: %@", buf, 0x16u);
      }

      v22 = WFLocalizedString(@"OK");
      v43[0] = v22;
      v23 = WFLocalizedString(@"Sign In");
      v43[1] = v23;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];

      v24 = [objc_alloc(MEMORY[0x1E6996CB8]) initWithHandlerBlock:&__block_literal_global_57597];
      v25 = MEMORY[0x1E696ABC0];
      v41[0] = *MEMORY[0x1E696A588];
      v26 = WFLocalizedString(@"Sign In to iCloud to Share Shortcuts");
      v42[0] = v26;
      v41[1] = *MEMORY[0x1E696A578];
      v27 = WFLocalizedString(@"Shortcuts are shared using iCloud. To share this shortcut, sign in to iCloud first.");
      v28 = *MEMORY[0x1E696A590];
      v42[1] = v27;
      v42[2] = v18;
      v29 = *MEMORY[0x1E696A8A8];
      v41[2] = v28;
      v41[3] = v29;
      v30 = *MEMORY[0x1E6997138];
      v42[3] = v24;
      v42[4] = v24;
      v31 = *MEMORY[0x1E6997118];
      v41[4] = v30;
      v41[5] = v31;
      v41[6] = *MEMORY[0x1E696AA08];
      v42[5] = &unk_1F4A9AD20;
      v42[6] = v17;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:7];
      v33 = [v25 errorWithDomain:@"WFWorkflowErrorDomain" code:4 userInfo:v32];

      (completionCopy)[2](completionCopy, 0, v33);
      v16 = 0;
      v15 = v36;
    }

    v10 = v17;
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v10);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __64__WFP2PSignedShortcutFileExporter_exportWorkflowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if (a3 == 1)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=ROOT"];
    v8 = [MEMORY[0x1E6996CA8] sharedContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__WFP2PSignedShortcutFileExporter_exportWorkflowWithCompletion___block_invoke_2;
    v9[3] = &unk_1E837F0F0;
    v10 = v6;
    [v8 openURL:v7 completionHandler:v9];
  }
}

@end