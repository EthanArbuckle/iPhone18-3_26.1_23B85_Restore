@interface NSURL(WFFileProviderOperations)
- (id)wf_fileProviderItem;
@end

@implementation NSURL(WFFileProviderOperations)

- (id)wf_fileProviderItem
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69673B0] defaultManager];
  v10 = 0;
  v3 = [v2 itemForURL:a1 error:&v10];
  v4 = v10;

  if (v3 && ([v3 fileURL], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = v3;
  }

  else
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[NSURL(WFFileProviderOperations) wf_fileProviderItem]";
      v13 = 2112;
      v14 = a1;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s URL: %@ does not require file provider options due no item", buf, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end