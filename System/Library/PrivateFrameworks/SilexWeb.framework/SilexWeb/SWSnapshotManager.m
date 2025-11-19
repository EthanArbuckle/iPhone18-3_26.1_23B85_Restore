@interface SWSnapshotManager
- (SWSnapshotManager)initWithWebView:(id)a3 configurationManager:(id)a4;
- (void)takeSnapshotWithCompletionHandler:(id)a3;
@end

@implementation SWSnapshotManager

- (SWSnapshotManager)initWithWebView:(id)a3 configurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWSnapshotManager;
  v9 = [(SWSnapshotManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webView, a3);
    objc_storeStrong(&v10->_configurationManager, a4);
  }

  return v10;
}

- (void)takeSnapshotWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SWSnapshotManager *)self configurationManager];
  v6 = [v5 configuration];

  if (v6)
  {
    v7 = MEMORY[0x1E6985348];
    v8 = v6;
    v9 = objc_alloc_init(v7);
    v10 = [v8 layoutGuide];

    [v10 bounds];
    [v9 setRect:?];

    [v9 setAfterScreenUpdates:0];
    v11 = [(SWSnapshotManager *)self webView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__SWSnapshotManager_takeSnapshotWithCompletionHandler___block_invoke_2;
    v14[3] = &unk_1E84DB430;
    v14[4] = self;
    v15 = v9;
    v16 = v4;
    v12 = v4;
    v13 = v9;
    [v11 _doAfterNextPresentationUpdate:v14];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__SWSnapshotManager_takeSnapshotWithCompletionHandler___block_invoke;
    v17[3] = &unk_1E84DB408;
    v18 = v4;
    v13 = v4;
    __55__SWSnapshotManager_takeSnapshotWithCompletionHandler___block_invoke(v17);
    v12 = v18;
  }
}

void __55__SWSnapshotManager_takeSnapshotWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:4 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __55__SWSnapshotManager_takeSnapshotWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  [v2 takeSnapshotWithConfiguration:*(a1 + 40) completionHandler:*(a1 + 48)];
}

@end