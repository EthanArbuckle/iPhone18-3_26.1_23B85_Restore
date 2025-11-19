@interface ShareSheetCanAccessPeopleSuggestions
@end

@implementation ShareSheetCanAccessPeopleSuggestions

void ___ShareSheetCanAccessPeopleSuggestions_block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.sharesheet.allow-suggestions", 0);
    CFRelease(v2);
    _ShareSheetCanAccessPeopleSuggestions_hostHasEntitlement = [v3 BOOLValue];
  }
}

void ___ShareSheetCanAccessPeopleSuggestions_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ShareSheetCanAccessPeopleSuggestions_block_invoke_2_cold_1(a3, v7);
    }
  }

  else
  {
    v8 = v5;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v9 = gettcc_authorization_record_get_authorization_rightSymbolLoc_ptr;
    v21 = gettcc_authorization_record_get_authorization_rightSymbolLoc_ptr;
    if (!gettcc_authorization_record_get_authorization_rightSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __gettcc_authorization_record_get_authorization_rightSymbolLoc_block_invoke;
      v23 = &unk_1E71F91F0;
      v24 = &v18;
      v10 = TCCLibrary();
      v11 = dlsym(v10, "tcc_authorization_record_get_authorization_right");
      *(v24[1] + 24) = v11;
      gettcc_authorization_record_get_authorization_rightSymbolLoc_ptr = *(v24[1] + 24);
      v9 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v9)
    {
      [SHSheetRemoteSceneViewController reloadMetadata:];
      __break(1u);
    }

    v12 = v9(v8);

    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFELL) == 2;
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = "no";
      v17 = *(a1 + 40);
      if (v13 == 2)
      {
        v16 = "yes";
      }

      *buf = 138412802;
      *&buf[4] = v17;
      *&buf[12] = 2082;
      *&buf[14] = "_ShareSheetCanAccessPeopleSuggestions_block_invoke";
      *&buf[22] = 2082;
      v23 = v16;
      _os_log_impl(&dword_18B359000, v15, OS_LOG_TYPE_INFO, "TCC authorization request for service name:%@ (%{public}s) was granted: %{public}s", buf, 0x20u);
    }

    *(*(*(a1 + 32) + 8) + 24) = v14;
  }
}

void ___ShareSheetCanAccessPeopleSuggestions_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "_ShareSheetCanAccessPeopleSuggestions_block_invoke_2";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "TCC authorization request (%{public}s) failed: %{public}@", &v2, 0x16u);
}

@end