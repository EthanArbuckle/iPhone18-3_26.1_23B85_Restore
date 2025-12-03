@interface WFFileArbiter
- (void)extendDocumentURL:(id)l workflowID:(id)d completion:(id)completion;
- (void)extendDocumentURLs:(id)ls workflowID:(id)d completion:(id)completion;
@end

@implementation WFFileArbiter

- (void)extendDocumentURL:(id)l workflowID:(id)d completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  completionCopy = completion;
  v10 = objc_opt_new();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20844;
  v22 = __Block_byref_object_dispose__20845;
  v23 = 0;
  v16[4] = &v18;
  v17 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__WFFileArbiter_extendDocumentURL_workflowID_completion___block_invoke;
  v16[3] = &unk_1E8378BD0;
  [v10 coordinateReadingItemAtURL:lCopy options:0 error:&v17 byAccessor:v16];
  v11 = v17;
  v12 = v19[5];
  v13 = *MEMORY[0x1E69E0E60];
  v15 = completionCopy;
  v14 = dCopy;
  FPExtendBookmarkForDocumentURL();

  _Block_object_dispose(&v18, 8);
}

void __57__WFFileArbiter_extendDocumentURL_workflowID_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = [MEMORY[0x1E69E0938] standardClient];
    v6 = [*(*(a1[6] + 8) + 40) path];
    v7 = a1[4];
    v18 = 0;
    v8 = [v5 createBookmarkWithBookmarkableString:a2 path:v6 workflowID:v7 error:&v18];
    v9 = v18;

    v10 = getWFFilesLogObject();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[WFFileArbiter extendDocumentURL:workflowID:completion:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Successfully created bookmark", buf, 0xCu);
      }

      (*(a1[5] + 16))();
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[WFFileArbiter extendDocumentURL:workflowID:completion:]_block_invoke";
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Could not create bookmark with error: %@ ", buf, 0x16u);
      }

      v14 = a1[5];
      if ([*(*(a1[6] + 8) + 40) wf_fileExists])
      {
        v15 = 257;
      }

      else
      {
        v15 = 4;
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v15 userInfo:0];
      (*(v14 + 16))(v14, 0, v16);
    }
  }

  else
  {
    v13 = getWFFilesLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFFileArbiter extendDocumentURL:workflowID:completion:]_block_invoke_2";
      v21 = 2112;
      v22 = a3;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Could not extend bookmark with error: %@", buf, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)extendDocumentURLs:(id)ls workflowID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = completionCopy;
  if (ls)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__WFFileArbiter_extendDocumentURLs_workflowID_completion___block_invoke;
    v13[3] = &unk_1E83766C0;
    v13[4] = self;
    v14 = dCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__WFFileArbiter_extendDocumentURLs_workflowID_completion___block_invoke_3;
    v11[3] = &unk_1E83766E8;
    v12 = v10;
    [ls if_enumerateAsynchronously:v13 completionHandler:v11];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __58__WFFileArbiter_extendDocumentURLs_workflowID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__WFFileArbiter_extendDocumentURLs_workflowID_completion___block_invoke_2;
  v10[3] = &unk_1E837F0F0;
  v11 = v6;
  v9 = v6;
  [v8 extendDocumentURL:a2 workflowID:v7 completion:v10];
}

uint64_t __58__WFFileArbiter_extendDocumentURLs_workflowID_completion___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  return (*(v3 + 16))(v3, v4);
}

@end