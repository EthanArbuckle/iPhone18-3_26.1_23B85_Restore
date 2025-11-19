@interface __PRUISPosterWorkspaceInstance
- (BOOL)updatePoster:(id)a3 userInfo:(id)a4;
- (__PRUISPosterWorkspaceInstance)initWithScene:(id)a3 poster:(id)a4 userInfo:(id)a5;
- (void)snapshotWithTimeout:(double)a3 completion:(id)a4;
@end

@implementation __PRUISPosterWorkspaceInstance

- (__PRUISPosterWorkspaceInstance)initWithScene:(id)a3 poster:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = __PRUISPosterWorkspaceInstance;
  v12 = [(__PRUISPosterWorkspaceInstance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scene, a3);
    [(__PRUISPosterWorkspaceInstance *)v13 updatePoster:v10 userInfo:v11];
  }

  return v13;
}

- (BOOL)updatePoster:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(PFPosterContents *)v9->_poster isEqual:v7];
  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&v9->_poster, a3);
  }

  if (BSEqualDictionaries())
  {
    v11 = v10 ^ 1;
  }

  else
  {
    v12 = [v8 copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v9->_userInfo, v14);

    v11 = 1;
  }

  objc_sync_exit(v9);

  return v11;
}

- (void)snapshotWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E618]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65____PRUISPosterWorkspaceInstance_snapshotWithTimeout_completion___block_invoke;
  aBlock[3] = &unk_1E83A8BB0;
  v25 = v7;
  v26 = v6;
  v8 = v6;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  v11 = self->_scene;
  v12 = [objc_alloc(MEMORY[0x1E69C55F8]) initWithFBScene:self->_scene];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65____PRUISPosterWorkspaceInstance_snapshotWithTimeout_completion___block_invoke_2;
  v21[3] = &unk_1E83A8BD8;
  v22 = v11;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  [v12 addSnapshotReadinessObserver:v21];
  v15 = dispatch_time(0, (a3 * 1000000000.0));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65____PRUISPosterWorkspaceInstance_snapshotWithTimeout_completion___block_invoke_3;
  v18[3] = &unk_1E83A7890;
  v19 = v12;
  v20 = v13;
  v16 = v13;
  v17 = v12;
  dispatch_after(v15, MEMORY[0x1E69E96A0], v18);
}

@end