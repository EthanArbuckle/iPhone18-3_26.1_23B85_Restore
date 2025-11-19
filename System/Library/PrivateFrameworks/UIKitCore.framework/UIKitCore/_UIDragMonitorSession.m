@interface _UIDragMonitorSession
- (BOOL)shouldHideLocalDragDisplay;
- (_UIDragMonitorSession)initWithSessionIdentifier:(unsigned int)a3 remoteControlProxy:(id)a4;
- (_UIDragMonitorSessionDelegate)delegate;
- (void)_updateModelWithPreviewUpdates:(id)a3;
- (void)connect;
- (void)performOffscreenDrop;
- (void)requestDrop;
- (void)requestPreviews;
- (void)sawDragEndEvent;
@end

@implementation _UIDragMonitorSession

- (_UIDragMonitorSession)initWithSessionIdentifier:(unsigned int)a3 remoteControlProxy:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UIDragMonitorSession;
  v8 = [(_UIDragMonitorSession *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionIdentifier = a3;
    objc_storeStrong(&v8->_remoteControlProxy, a4);
    v10 = [[_UIDruidDestinationConnection alloc] initWithSessionIdentifier:v9->_sessionIdentifier systemPolicy:0];
    druidDestinationConnection = v9->_druidDestinationConnection;
    v9->_druidDestinationConnection = v10;
  }

  return v9;
}

- (void)_updateModelWithPreviewUpdates:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDragMonitorSession *)self previewsByItemProviderIndex];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 preview];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "index")}];
        [v6 setObject:v13 forKey:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(_UIDragMonitorSession *)self setPreviewsByItemProviderIndex:v6];
}

- (void)connect
{
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __32___UIDragMonitorSession_connect__block_invoke;
  v18[3] = &unk_1E711EED0;
  objc_copyWeak(&v19, &location);
  v3 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v3 setConnectionBlock:v18];

  v4 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v4 setDragPreviewProviderBlock:&__block_literal_global_494];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __32___UIDragMonitorSession_connect__block_invoke_3;
  v16[3] = &unk_1E711EF18;
  objc_copyWeak(&v17, &location);
  v5 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v5 setDropPerformBlock:v16];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __32___UIDragMonitorSession_connect__block_invoke_4;
  v14[3] = &unk_1E71066C0;
  objc_copyWeak(&v15, &location);
  v6 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v6 setItemsAddedBlock:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32___UIDragMonitorSession_connect__block_invoke_5;
  v12[3] = &unk_1E70F3668;
  objc_copyWeak(&v13, &location);
  v7 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v7 setDragEndBlock:v12];

  v10 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v11, &location);
  v8 = [(_UIDragMonitorSession *)self druidDestinationConnection:v10];
  [v8 setUpdatedPresentationBlock:&v10];

  v9 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v9 connect];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)requestPreviews
{
  v3 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40___UIDragMonitorSession_requestPreviews__block_invoke;
  v4[3] = &unk_1E70F2FC8;
  v4[4] = self;
  [v3 requestVisibleItems:v4];
}

- (void)requestDrop
{
  v2 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v2 requestDropWithOperation:1 layerContext:0];
}

- (void)sawDragEndEvent
{
  v2 = [(_UIDragMonitorSession *)self druidDestinationConnection];
  [v2 sawDragEndEvent];
}

- (void)performOffscreenDrop
{
  v2 = [(_UIDragMonitorSession *)self remoteControlProxy];
  [v2 performOffscreenDrop];
}

- (BOOL)shouldHideLocalDragDisplay
{
  v3 = [(_UIDragMonitorSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(_UIDragMonitorSession *)self delegate];
  v6 = [v5 dragMonitorSessionShouldHideLocalDragDisplay:self];

  return v6;
}

- (_UIDragMonitorSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end