@interface SBDisplayPortalManager
- (SBDisplayPortalManager)initWithWindowSceneManager:(id)a3;
- (id)_createPortalForSourceView:(id)a3 sourceWindowScene:(id)a4 targetWindowScene:(id)a5 traitsRole:(id)a6;
- (void)createPortalsForSourceView:(id)a3 usingTraitsRole:(id)a4 onWindowScenesPassingTest:(id)a5;
- (void)destroyPortalsForSourceView:(id)a3;
@end

@implementation SBDisplayPortalManager

- (SBDisplayPortalManager)initWithWindowSceneManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBDisplayPortalManager;
  v6 = [(SBDisplayPortalManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowSceneManager, a3);
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sourceViewToPortalWindowsMap = v7->_sourceViewToPortalWindowsMap;
    v7->_sourceViewToPortalWindowsMap = v8;
  }

  return v7;
}

- (void)createPortalsForSourceView:(id)a3 usingTraitsRole:(id)a4 onWindowScenesPassingTest:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(NSMapTable *)self->_sourceViewToPortalWindowsMap objectForKey:v9];

  if (!v12)
  {
    v13 = [v9 _sbWindowScene];
    if (!v13)
    {
      [SBDisplayPortalManager createPortalsForSourceView:a2 usingTraitsRole:self onWindowScenesPassingTest:?];
    }

    v14 = [(SBWindowSceneManager *)self->_windowSceneManager connectedWindowScenes];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __95__SBDisplayPortalManager_createPortalsForSourceView_usingTraitsRole_onWindowScenesPassingTest___block_invoke;
    v18[3] = &unk_2783B7650;
    v19 = v13;
    v23 = v11;
    v20 = self;
    v15 = v9;
    v21 = v15;
    v22 = v10;
    v16 = v13;
    v17 = [v14 bs_compactMap:v18];

    [(NSMapTable *)self->_sourceViewToPortalWindowsMap setObject:v17 forKey:v15];
  }
}

id __95__SBDisplayPortalManager_createPortalsForSourceView_usingTraitsRole_onWindowScenesPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == v3 || !(*(*(a1 + 64) + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) _createPortalForSourceView:*(a1 + 48) sourceWindowScene:*(a1 + 32) targetWindowScene:v3 traitsRole:*(a1 + 56)];
  }

  return v4;
}

- (id)_createPortalForSourceView:(id)a3 sourceWindowScene:(id)a4 targetWindowScene:(id)a5 traitsRole:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [v12 bounds];
  [v11 convertRect:v10 toNeighboringDisplayWindowScene:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:v12];
  v22 = [v21 portalLayer];
  [v22 setCrossDisplay:1];

  [v21 setFrame:{v14, v16, v18, v20}];
  [v21 setUserInteractionEnabled:0];
  v23 = objc_alloc_init(MEMORY[0x277D75D28]);
  v24 = [v23 view];
  [v24 addSubview:v21];

  v25 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v10];
  [v25 _setRoleHint:v9];

  [v25 setOpaque:0];
  [v25 setRootViewController:v23];
  [v25 setHidden:0];
  v26 = [v12 window];

  [v26 windowLevel];
  [v25 setWindowLevel:?];

  return v25;
}

- (void)destroyPortalsForSourceView:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_sourceViewToPortalWindowsMap objectForKey:v4];
  [(NSMapTable *)self->_sourceViewToPortalWindowsMap removeObjectForKey:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setHidden:{1, v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)createPortalsForSourceView:(uint64_t)a1 usingTraitsRole:(uint64_t)a2 onWindowScenesPassingTest:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayPortalManager.m" lineNumber:46 description:@"Cannot create portals for a view that is not being displayed"];
}

@end