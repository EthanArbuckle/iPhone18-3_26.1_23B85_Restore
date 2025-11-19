@interface SBViewSnapshotProvider
- (SBViewSnapshotProvider)initWithWindowScene:(id)a3 view:(id)a4 orientation:(int64_t)a5;
- (SBWindowScene)windowScene;
- (id)_createSnapshotOfWallpaperAndWindow:(id)a3;
- (id)snapshot;
- (void)snapshotAsynchronously:(BOOL)a3 withImageBlock:(id)a4;
@end

@implementation SBViewSnapshotProvider

- (SBViewSnapshotProvider)initWithWindowScene:(id)a3 view:(id)a4 orientation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SBViewSnapshotProvider;
  v10 = [(SBViewSnapshotProvider *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_windowScene, v8);
    objc_storeStrong(&v11->_view, a4);
    v11->_orientation = a5;
    v12 = v11;
  }

  return v11;
}

- (id)snapshot
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__62;
  v9 = __Block_byref_object_dispose__62;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SBViewSnapshotProvider_snapshot__block_invoke;
  v4[3] = &unk_2783B70E0;
  v4[4] = &v5;
  [(SBViewSnapshotProvider *)self snapshotAsynchronously:0 withImageBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_createSnapshotOfWallpaperAndWindow:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [WeakRetained windows];

  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v11 = *MEMORY[0x277D772B0] + -3.0;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        [v13 windowLevel];
        if (v14 == v11)
        {
          [v5 addObject:v13];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v5 addObject:v4];
  v15 = &v32 - ((4 * [v5 count] + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v5 count])
  {
    v16 = 0;
    do
    {
      v17 = [v5 objectAtIndex:v16];
      *&v15[4 * v16] = [v17 _contextId];

      ++v16;
    }

    while (v16 < [v5 count]);
  }

  SBScreenBoundsRotatedRoundCenter(self->_orientation);
  v22 = [MEMORY[0x277D75DA0] createIOSurfaceWithContextIds:v15 count:objc_msgSend(v5 frame:{"count"), v18, v19, v20, v21}];
  if (v22)
  {
    v23 = v22;
    v24 = CFGetTypeID(v22);
    if (v24 == IOSurfaceGetTypeID())
    {
      v25 = [v4 screen];
      v26 = SBCreateUIImageFromIOSurfaceResizingIfNecessary(v23, v25, 1, 1, 0, 0.0, 1.0);
    }

    else
    {
      v26 = 0;
    }

    v27 = CFGetTypeID(v23);
    if (v27 == CGImageGetTypeID())
    {
      v28 = MEMORY[0x277D755B8];
      v29 = [v4 screen];
      [v29 scale];
      v30 = [v28 imageWithCGImage:v23 scale:0 orientation:?];

      v26 = v30;
    }

    CFRelease(v23);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)snapshotAsynchronously:(BOOL)a3 withImageBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6 && self->_view)
  {
    v7 = [(SBViewSnapshotProvider *)self windowScene];
    SBScreenBounds(self->_orientation);
    BSRectWithSize();
    v12 = [[SBSnapshotWindow alloc] initWithWindowScene:v7 frame:self->_orientation orientation:v8, v9, v10, v11];
    [(SBSnapshotWindow *)v12 setWindowLevel:*MEMORY[0x277D772B0] + -3.0 + -1.0];
    [(SBSnapshotWindow *)v12 setHidden:0];
    [(SBSnapshotWindow *)v12 addSubview:self->_view];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__SBViewSnapshotProvider_snapshotAsynchronously_withImageBlock___block_invoke;
    v19[3] = &unk_2783AA1E8;
    v19[4] = self;
    v13 = v12;
    v20 = v13;
    v21 = v6;
    v14 = MEMORY[0x223D6F7F0](v19);
    v15 = v14;
    if (v4)
    {
      v16 = *MEMORY[0x277D76620];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__SBViewSnapshotProvider_snapshotAsynchronously_withImageBlock___block_invoke_2;
      v17[3] = &unk_2783A98A0;
      v17[4] = self;
      v18 = v14;
      [v16 sb_performBlockAfterCATransactionSynchronizedCommit:v17];
    }

    else
    {
      [MEMORY[0x277CD9FF0] flush];
      [MEMORY[0x277CD9FF0] synchronize];
      v15[2](v15);
    }
  }
}

void __64__SBViewSnapshotProvider_snapshotAsynchronously_withImageBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    [v2 _createSnapshotOfWallpaperAndWindow:*(a1 + 40)];
  }

  else
  {
    [*(v2 + 8) sb_snapshotImage];
  }
  v5 = ;
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (v4)
  {
    (*(v4 + 16))();
    v3 = *(a1 + 32);
  }

  [*(v3 + 8) removeFromSuperview];
  [*(a1 + 40) setHidden:1];
}

void __64__SBViewSnapshotProvider_snapshotAsynchronously_withImageBlock___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, (*(*(a1 + 32) + 40) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBViewSnapshotProvider_snapshotAsynchronously_withImageBlock___block_invoke_3;
  block[3] = &unk_2783A9348;
  v4 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end