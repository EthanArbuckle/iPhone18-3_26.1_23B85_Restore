@interface SXQuickLookComponentFileProvider
- (SXQuickLookComponentFileProvider)initWithDOMObjectProvider:(id)a3 resourceDataSourceProvider:(id)a4 shareURLProvider:(id)a5;
- (id)copyFileIfNeeded:(id)a3 to:(id)a4 error:(id *)a5;
- (void)fileForComponent:(id)a3 onCompletion:(id)a4 onError:(id)a5;
@end

@implementation SXQuickLookComponentFileProvider

- (SXQuickLookComponentFileProvider)initWithDOMObjectProvider:(id)a3 resourceDataSourceProvider:(id)a4 shareURLProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXQuickLookComponentFileProvider;
  v12 = [(SXQuickLookComponentFileProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_DOMObjectProvider, a3);
    objc_storeStrong(&v13->_resourceDataSourceProvider, a4);
    objc_storeStrong(&v13->_shareURLProvider, a5);
  }

  return v13;
}

- (void)fileForComponent:(id)a3 onCompletion:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SXQuickLookComponentFileProvider *)self DOMObjectProvider];
  v12 = [v8 resourceIdentifier];
  v13 = [v11 resourceForIdentifier:v12];

  v14 = [(SXQuickLookComponentFileProvider *)self resourceDataSourceProvider];
  v15 = [v14 resourceDataSource];
  v16 = [v13 URL];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__SXQuickLookComponentFileProvider_fileForComponent_onCompletion_onError___block_invoke;
  v22[3] = &unk_1E8500DC0;
  v23 = v8;
  v24 = self;
  v25 = v9;
  v26 = v10;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__SXQuickLookComponentFileProvider_fileForComponent_onCompletion_onError___block_invoke_3;
  v20[3] = &unk_1E8500DE8;
  v21 = v26;
  v17 = v26;
  v18 = v9;
  v19 = v8;
  [v15 fileURLForURL:v16 onCompletion:v22 onError:v20];
}

void __74__SXQuickLookComponentFileProvider_fileForComponent_onCompletion_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SXQuickLookComponentFileProvider_fileForComponent_onCompletion_onError___block_invoke_2;
  block[3] = &unk_1E8500D98;
  v8 = *(a1 + 32);
  v9 = v3;
  v5 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, block);
}

void __74__SXQuickLookComponentFileProvider_fileForComponent_onCompletion_onError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fileExtension];
  v3 = [*(a1 + 40) lastPathComponent];
  if (v2)
  {
    v4 = [*(a1 + 32) fileExtension];
    v5 = [v3 stringByAppendingPathExtension:v4];

    v3 = v5;
  }

  v6 = NSTemporaryDirectory();
  v7 = [v6 stringByAppendingString:v3];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v22 = 0;
  v11 = [v9 copyFileIfNeeded:v10 to:v8 error:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = [SXQuickLookFile alloc];
    v21 = [*(a1 + 32) caption];
    v14 = [v21 text];
    v15 = [*(a1 + 48) shareURLProvider];
    [v15 shareURL];
    v16 = v8;
    v17 = v12;
    v19 = v18 = v7;
    v20 = [(SXQuickLookFile *)v13 initWithFileURL:v11 title:v14 shareURL:v19];

    v7 = v18;
    v12 = v17;
    v8 = v16;

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (id)copyFileIfNeeded:(id)a3 to:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 pathExtension];
  v10 = [v8 pathExtension];
  v11 = [v9 isEqualToString:v10];

  v12 = v7;
  if (v11 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "fileExistsAtPath:", v14), v14, v13, v12 = v8, (v15) || (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "copyItemAtURL:toURL:error:", v7, v8, a5), v16, v12 = v8, v17))
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end