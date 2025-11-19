@interface UIDragMonitorSession
@end

@implementation UIDragMonitorSession

void __32___UIDragMonitorSession_connect__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setConnectedToDruid:1];
    [v5 setItemProviders:v9];
    v6 = [v5 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v5 delegate];
      [v8 dragMonitorSession:v5 didConnectWithItems:v9];
    }
  }
}

void __32___UIDragMonitorSession_connect__block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v13 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained druidDestinationConnection];
  [v10 enableKeyboardIfNeeded];

  [WeakRetained setItemProviders:v13];
  [WeakRetained setItemCollection:v8];

  v11 = [WeakRetained delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v12 = [WeakRetained delegate];
    [v12 dragMonitorSession:WeakRetained didAcceptDropRequestWithItems:v13];
  }

  if (a5)
  {
    *a5 = 0;
  }
}

void __32___UIDragMonitorSession_connect__block_invoke_4(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v3 items];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v3 items];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[UIItemProvider alloc] initWithPBItem:*(*(&v17 + 1) + 8 * v12)];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [WeakRetained setItemProviders:v7];
  v14 = [WeakRetained delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [WeakRetained delegate];
    [v16 dragMonitorSession:WeakRetained didUpdateRegisteredItems:v7];
  }
}

void __32___UIDragMonitorSession_connect__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [WeakRetained delegate];
    [v5 dragMonitorSession:WeakRetained didConcludeDragNormally:a2];
  }
}

void __32___UIDragMonitorSession_connect__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [[_UIDragMonitorSessionPresentationUpdate alloc] initWithDragPresentationUpdate:v3];

  v5 = [(_UIDragMonitorSessionPresentationUpdate *)v4 previewUpdates];
  [WeakRetained _updateModelWithPreviewUpdates:v5];

  v6 = [WeakRetained delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WeakRetained delegate];
    [v8 dragMonitorSession:WeakRetained didUpdateDragPresentation:v4];
  }
}

void __40___UIDragMonitorSession_requestPreviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40___UIDragMonitorSession_requestPreviews__block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_sync(MEMORY[0x1E69E96A0], v6);
}

void __40___UIDragMonitorSession_requestPreviews__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = objc_alloc_init(_DUIPreviewAndImageComponentUpdate);
        -[_DUIPreviewAndImageComponent setIndex:](v9, "setIndex:", [v8 itemIndex]);
        v10 = [v8 preview];
        [(_DUIPreviewAndImageComponent *)v9 setPreview:v10];

        v11 = [v8 imageComponent];
        [(_DUIPreviewAndImageComponent *)v9 setImageComponent:v11];

        v12 = [[_UIDragMonitorSessionPreviewUpdate alloc] initWithPreviewAndImageComponentUpdate:v9];
        [v2 addObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  [*(v17 + 40) _updateModelWithPreviewUpdates:v2];
  v13 = [*(v17 + 40) delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [[_UIDragMonitorSessionPresentationUpdate alloc] initWithPreviewUpdates:v2 badgeUpdate:0];
    v16 = [*(v17 + 40) delegate];
    [v16 dragMonitorSession:*(v17 + 40) didUpdateDragPresentation:v15];
  }
}

@end