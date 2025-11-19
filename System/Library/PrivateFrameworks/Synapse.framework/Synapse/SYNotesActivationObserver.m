@interface SYNotesActivationObserver
- (BOOL)isVisible;
- (CGRect)visibleFrame;
- (SYNotesActivationObserver)initWithHandler:(id)a3;
- (void)_notifyHandlerOfVisibility;
- (void)_startObservingNotes;
- (void)_updateNotesVisibilityFromLayout:(id)a3;
- (void)dealloc;
@end

@implementation SYNotesActivationObserver

void __49__SYNotesActivationObserver__startObservingNotes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5 && WeakRetained)
  {
    [WeakRetained _updateNotesVisibilityFromLayout:v5];
    [WeakRetained _notifyHandlerOfVisibility];
  }
}

- (void)_notifyHandlerOfVisibility
{
  v3 = [(SYNotesActivationObserver *)self handler];

  if (v3)
  {
    v4 = [(SYNotesActivationObserver *)self handler];
    v4[2](v4, [(SYNotesActivationObserver *)self isVisible]);
  }
}

- (BOOL)isVisible
{
  if (!self->_hasInitialVisibility)
  {
    v3 = [(SYNotesActivationObserver *)self _displayLayoutMonitor];
    v4 = [v3 currentLayout];
    [(SYNotesActivationObserver *)self _updateNotesVisibilityFromLayout:v4];
  }

  return self->_visible;
}

- (void)_startObservingNotes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SYNotesActivationObserver__startObservingNotes__block_invoke;
  block[3] = &unk_27856B880;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__SYNotesActivationObserver__startObservingNotes__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getFBSDisplayLayoutMonitorConfigurationClass_softClass_0;
  v19 = getFBSDisplayLayoutMonitorConfigurationClass_softClass_0;
  if (!getFBSDisplayLayoutMonitorConfigurationClass_softClass_0)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_0;
    v14 = &unk_27856B3C8;
    v15 = &v16;
    __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_0(&v11);
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  v4 = [v2 configurationForDefaultMainDisplayMonitor];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SYNotesActivationObserver__startObservingNotes__block_invoke_2;
  v8[3] = &unk_27856BA90;
  objc_copyWeak(&v9, &location);
  [v4 setTransitionHandler:v8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = getFBSDisplayLayoutMonitorClass_softClass_0;
  v19 = getFBSDisplayLayoutMonitorClass_softClass_0;
  if (!getFBSDisplayLayoutMonitorClass_softClass_0)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getFBSDisplayLayoutMonitorClass_block_invoke_0;
    v14 = &unk_27856B3C8;
    v15 = &v16;
    __getFBSDisplayLayoutMonitorClass_block_invoke_0(&v11);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  v7 = [v5 monitorWithConfiguration:v4];
  [*(a1 + 32) set_displayLayoutMonitor:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (SYNotesActivationObserver)initWithHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SYNotesActivationObserver;
  v5 = [(SYNotesActivationObserver *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    handler = v5->_handler;
    v5->_handler = v6;

    v8 = *(MEMORY[0x277CBF398] + 16);
    v5->_visibleFrame.origin = *MEMORY[0x277CBF398];
    v5->_visibleFrame.size = v8;
    [(SYNotesActivationObserver *)v5 startObservingNotes];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(SYNotesActivationObserver *)self _displayLayoutMonitor];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SYNotesActivationObserver;
  [(SYNotesActivationObserver *)&v4 dealloc];
}

- (void)_updateNotesVisibilityFromLayout:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_2259497A9;
  v5 = MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 16);
  v16 = *MEMORY[0x277CBF398];
  v17 = v6;
  v7 = [v4 elements];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SYNotesActivationObserver__updateNotesVisibilityFromLayout___block_invoke;
  v11[3] = &unk_27856C688;
  v11[4] = &v18;
  v11[5] = &v12;
  [v7 enumerateObjectsUsingBlock:v11];

  [(SYNotesActivationObserver *)self setVisible:*(v19 + 24)];
  if (*(v19 + 24) == 1)
  {
    v5 = v13 + 4;
    v8 = v13 + 5;
    v9 = v13 + 6;
    v10 = v13 + 7;
  }

  else
  {
    v10 = v5 + 3;
    v9 = v5 + 2;
    v8 = v5 + 1;
  }

  [(SYNotesActivationObserver *)self setVisibleFrame:*v5, *v8, *v9, *v10];
  [(SYNotesActivationObserver *)self setHasInitialVisibility:1];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __62__SYNotesActivationObserver__updateNotesVisibilityFromLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 bundleIdentifier];
  if ([v6 isEqualToString:@"com.apple.mobilenotes"])
  {
    v7 = [v16 layoutRole] == 5;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v16 bundleIdentifier];
  if ([v8 isEqualToString:@"com.apple.SystemPaperViewService"])
  {
  }

  else
  {
    v9 = [v16 identifier];
    v10 = [v9 isEqualToString:@"com.apple.SystemPaperViewService"];

    if (((v7 | v10) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  [v16 frame];
  v11 = *(*(a1 + 40) + 8);
  v11[4] = v12;
  v11[5] = v13;
  v11[6] = v14;
  v11[7] = v15;
  *a4 = 1;
LABEL_8:
}

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end