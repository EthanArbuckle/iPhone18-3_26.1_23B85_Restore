@interface WFiCloudShortcutFileExporter
- (void)exportWorkflowWithCompletion:(id)completion;
@end

@implementation WFiCloudShortcutFileExporter

- (void)exportWorkflowWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[WFGallerySessionManager sharedManager];
  workflowRecord = [(WFShortcutExporter *)self workflowRecord];
  workflowRecord2 = [(WFShortcutExporter *)self workflowRecord];
  name = [workflowRecord2 name];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__WFiCloudShortcutFileExporter_exportWorkflowWithCompletion___block_invoke;
  v11[3] = &unk_1E8377F28;
  selfCopy = self;
  v14 = completionCopy;
  v12 = v5;
  v9 = v5;
  v10 = completionCopy;
  [v9 uploadWorkflow:workflowRecord withName:name shortDescription:0 longDescription:0 private:1 completionHandler:v11];
}

void __61__WFiCloudShortcutFileExporter_exportWorkflowWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [a2 pathComponents];
    v5 = [v3 arrayWithArray:v4];

    [v5 removeObject:@"/"];
    v6 = *(a1 + 32);
    v7 = [v5 objectAtIndexedSubscript:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__WFiCloudShortcutFileExporter_exportWorkflowWithCompletion___block_invoke_2;
    v12[3] = &unk_1E8377F00;
    v8 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v8;
    v9 = [v6 getWorkflowForIdentifier:v7 completionHandler:v12];
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 48) + 16);

    v11();
  }
}

void __61__WFiCloudShortcutFileExporter_exportWorkflowWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  if (!v19)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v19;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 signedShortcutFile];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v6 = [v9 signedShortcutFile];

    if (!v6)
    {
      v18 = *(a1 + 40);
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      (*(v18 + 16))(v18, 0, v6);
      goto LABEL_13;
    }
  }

  [*(a1 + 32) setSignedShortcutFile:v6];
  v10 = [MEMORY[0x1E6996F68] temporaryDirectoryURL];
  v11 = [*(a1 + 32) workflowRecord];
  v12 = [v11 name];
  v13 = [v12 wf_sanitizedFilename];
  v14 = [v10 URLByAppendingPathComponent:v13];
  v15 = [v14 URLByAppendingPathExtension:@"shortcut"];

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v6 fileURL];
  [v16 copyItemAtURL:v17 toURL:v15 error:0];

  (*(*(a1 + 40) + 16))();
LABEL_13:

LABEL_14:
}

@end