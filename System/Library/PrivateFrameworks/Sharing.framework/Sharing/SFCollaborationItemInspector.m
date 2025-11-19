@interface SFCollaborationItemInspector
+ (id)_collaborationItemForFileURL:(id)a3 itemProvider:(id)a4 activityItem:(id)a5 service:(id)a6 managedFileURL:(id)a7;
@end

@implementation SFCollaborationItemInspector

void __135__SFCollaborationItemInspector_inspectActivityItemValue_activityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke(uint64_t a1, int a2, unsigned int a3)
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2 | a3];
  [*(a1 + 32) setCanAddPeople:v4];
}

+ (id)_collaborationItemForFileURL:(id)a3 itemProvider:(id)a4 activityItem:(id)a5 service:(id)a6 managedFileURL:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v11 isFileURL])
  {
    v16 = gelato_sharing_log();
    v17 = os_signpost_id_make_with_pointer(v16, v11);

    v18 = gelato_sharing_log();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CollaborationItemForFileURL", "", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x2020000000;
    v38 = 1;
    if (([v11 isiWorkDocument] & 1) == 0)
    {
      v20 = share_sheet_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 138412290;
        v33 = v11;
        _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "request default share mode for URL:%@", v32, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke;
        v29[3] = &unk_1E788CCD8;
        v30 = v11;
        p_buf = &buf;
        [v14 requestDefaultShareModeCollaborationForURL:v30 completionHandler:v29];
      }
    }

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(&buf + 1) + 24))
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *v32 = 138412546;
      v33 = v11;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "defaultShareModeCollaboration for fileURL:%@ = %@", v32, 0x16u);
    }

    v23 = [SFCollaborationItem collaborationItemForFileURL:v11 itemProvider:v12 activityItem:v13 defaultCollaboration:*(*(&buf + 1) + 24) managedFileURL:v15];
    v24 = gelato_sharing_log();
    v25 = v24;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v32 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v25, OS_SIGNPOST_INTERVAL_END, v17, "CollaborationItemForFileURL", "", v32, 2u);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v26 = share_sheet_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138739971;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1A9662000, v26, OS_LOG_TYPE_DEFAULT, "URL is not a fileURL: %{sensitive}@", &buf, 0xCu);
    }

    v23 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v23;
}

void __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke_cold_1(a1, v5, v6);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v11 = a2;
  if ([v11 isFileURL])
  {
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v10 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2()
{
  v0 = share_sheet_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2_cold_1(v0);
  }
}

+ (void)inspectActivityItemValue:(uint64_t)a1 activityItem:(NSObject *)a2 service:shouldInspectFiles:managedFileURL:isURLProviderSupported:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "activityItemURL:%{private}@ is not shareable by client.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Failed to request default share mode for fileURL:%@ error:%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = 0x4000000000000000;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Could not load URL from the item provider for collaboration even after waiting for %.1f seconds.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end