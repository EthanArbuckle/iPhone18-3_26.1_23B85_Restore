@interface WFRunWorkflowToolbar
- (BOOL)isNotRunningAndIsEditing;
- (NSArray)items;
- (NSArray)undoRedoItems;
- (NSUndoManager)workflowUndoManager;
- (UIToolbar)toolbar;
- (WFRunWorkflowToolbar)initWithWorkflow:(id)a3;
- (WFRunWorkflowToolbarDelegate)delegate;
- (WFWorkflow)workflow;
- (double)runButtonPointSizeToWidthRatio;
- (void)layoutSubviews;
- (void)playTapped;
- (void)redoTapped;
- (void)setWorkflowUndoManager:(id)a3;
- (void)settingsTapped;
- (void)shareTapped;
- (void)stopTapped;
- (void)undoTapped;
- (void)updatePlayButtonVisibility;
- (void)updateRunningButtonWidthIfNeeded;
- (void)updateShareButtonVisibility;
- (void)updateUndoItems;
@end

@implementation WFRunWorkflowToolbar

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (UIToolbar)toolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_toolbar);

  return WeakRetained;
}

- (WFRunWorkflowToolbarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSUndoManager)workflowUndoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_workflowUndoManager);

  return WeakRetained;
}

- (void)redoTapped
{
  v3 = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFRunWorkflowToolbar *)self delegate];
    [v5 runToolbarRedoTapped:self];
  }
}

- (void)undoTapped
{
  v3 = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFRunWorkflowToolbar *)self delegate];
    [v5 runToolbarUndoTapped:self];
  }
}

- (void)updateUndoItems
{
  v4 = [(WFRunWorkflowToolbar *)self isNotRunningAndIsEditing];
  if (v4)
  {
    v2 = [(WFRunWorkflowToolbar *)self workflowUndoManager];
    v5 = [v2 canUndo];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WFRunWorkflowToolbar *)self undoItem];
  [v6 setEnabled:v5];

  if (v4)
  {
  }

  v7 = [(WFRunWorkflowToolbar *)self isNotRunningAndIsEditing];
  if (v7)
  {
    v2 = [(WFRunWorkflowToolbar *)self workflowUndoManager];
    v8 = [v2 canRedo];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(WFRunWorkflowToolbar *)self redoItem];
  [v9 setEnabled:v8];

  if (v7)
  {
  }

  v10 = [(WFRunWorkflowToolbar *)self delegate];
  [v10 runToolbarUndoRedoStateChanged:self];
}

- (void)updatePlayButtonVisibility
{
  v3 = [(WFRunWorkflowToolbar *)self playEnabled];
  v4 = [(WFRunWorkflowToolbar *)self runItem];
  [v4 setEnabled:v3];
}

- (void)updateShareButtonVisibility
{
  v3 = [(WFRunWorkflowToolbar *)self shareEnabled]&& ![(WFRunWorkflowToolbar *)self shareHidden]&& [(WFRunWorkflowToolbar *)self isNotRunningAndIsEditing];
  v4 = [(WFRunWorkflowToolbar *)self shareItem];
  [v4 setEnabled:v3];

  if ([(WFRunWorkflowToolbar *)self shareHidden])
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(WFRunWorkflowToolbar *)self tintColor];
  }
  v6 = ;
  v5 = [(WFRunWorkflowToolbar *)self shareItem];
  [v5 setTintColor:v6];
}

- (void)setWorkflowUndoManager:(id)a3
{
  obj = a3;
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277CCA7F8];
  WeakRetained = objc_loadWeakRetained(&self->_workflowUndoManager);
  [v4 removeObserver:self name:v5 object:WeakRetained];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277CCA810];
  v9 = objc_loadWeakRetained(&self->_workflowUndoManager);
  [v7 removeObserver:self name:v8 object:v9];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = *MEMORY[0x277CCA808];
  v12 = objc_loadWeakRetained(&self->_workflowUndoManager);
  [v10 removeObserver:self name:v11 object:v12];

  objc_storeWeak(&self->_workflowUndoManager, obj);
  if (obj)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:self selector:sel_updateUndoItems name:v5 object:obj];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:self selector:sel_updateUndoItems name:v8 object:obj];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:self selector:sel_updateUndoItems name:v11 object:obj];
  }
}

- (BOOL)isNotRunningAndIsEditing
{
  if ([(WFRunWorkflowToolbar *)self isRunning])
  {
    return 0;
  }

  return [(WFRunWorkflowToolbar *)self isEditing];
}

- (void)settingsTapped
{
  v3 = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFRunWorkflowToolbar *)self delegate];
    [v5 runToolbarSettingsTapped:self];
  }
}

- (void)shareTapped
{
  v3 = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(WFRunWorkflowToolbar *)self delegate];
    v5 = [(WFRunWorkflowToolbar *)self shareItem];
    [v6 runToolbarShareTapped:self sender:v5];
  }
}

- (void)stopTapped
{
  v3 = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFRunWorkflowToolbar *)self delegate];
    [v5 runToolbarStopTapped:self];
  }
}

- (void)playTapped
{
  v3 = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFRunWorkflowToolbar *)self delegate];
    [v5 runToolbarPlayTapped:self];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = WFRunWorkflowToolbar;
  [(WFRunWorkflowToolbar *)&v11 layoutSubviews];
  v3 = [(WFRunWorkflowToolbar *)self toolbar];
  v4 = [v3 layer];
  [v4 shadowRadius];
  v6 = v5;

  [v3 frame];
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, v7 - v6}];
  v9 = [v8 CGPath];
  v10 = [v3 layer];
  [v10 setShadowPath:v9];
}

- (NSArray)undoRedoItems
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(WFRunWorkflowToolbar *)self undoItem];
  v7[0] = v3;
  v4 = [(WFRunWorkflowToolbar *)self redoItem];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSArray)items
{
  v2 = [(WFRunWorkflowToolbar *)self toolbar];
  v3 = [v2 items];

  return v3;
}

- (void)updateRunningButtonWidthIfNeeded
{
  [(WFRunWorkflowToolbar *)self runButtonPointSizeToWidthRatio];
  v4 = v3;
  v5 = [(WFRunWorkflowToolbar *)self runItem];
  v6 = [v5 customView];
  [v6 pointSizeToWidthRatio];
  v8 = v7;

  if (v4 != v8)
  {
    v9 = [(WFRunWorkflowToolbar *)self runItem];
    v10 = [v9 customView];
    [(WFRunWorkflowToolbar *)self runButtonPointSizeToWidthRatio];
    [v10 setSymbolName:@"play.fill" pointSizeToWidthRatio:?];

    v12 = [(WFRunWorkflowToolbar *)self stopItem];
    v11 = [v12 customView];
    [(WFRunWorkflowToolbar *)self runButtonPointSizeToWidthRatio];
    [v11 setSymbolName:@"square.fill" pointSizeToWidthRatio:?];
  }
}

- (double)runButtonPointSizeToWidthRatio
{
  v2 = [(WFRunWorkflowToolbar *)self traitCollection];
  if ([v2 horizontalSizeClass] == 1)
  {
    v3 = 1.7;
  }

  else
  {
    v3 = 2.5;
  }

  return v3;
}

- (WFRunWorkflowToolbar)initWithWorkflow:(id)a3
{
  v56[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54.receiver = self;
  v54.super_class = WFRunWorkflowToolbar;
  v5 = [(WFRunWorkflowToolbar *)&v54 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workflow, v4);
    v7 = objc_alloc(MEMORY[0x277D75C58]);
    [(WFRunWorkflowToolbar *)v6 bounds];
    v8 = [v7 initWithFrame:?];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setDelegate:v6];
    [(WFRunWorkflowToolbar *)v6 addSubview:v8];
    [(WFRunWorkflowToolbar *)v6 setToolbar:v8];
    v46 = MEMORY[0x277CCAAD0];
    v51 = [v8 topAnchor];
    v50 = [(WFRunWorkflowToolbar *)v6 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v56[0] = v49;
    v48 = [v8 leadingAnchor];
    v47 = [(WFRunWorkflowToolbar *)v6 leadingAnchor];
    v9 = [v48 constraintEqualToAnchor:v47];
    v56[1] = v9;
    v52 = v8;
    v10 = [v8 bottomAnchor];
    [(WFRunWorkflowToolbar *)v6 safeAreaLayoutGuide];
    v11 = v53 = v4;
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v56[2] = v13;
    v14 = [v8 trailingAnchor];
    v15 = [(WFRunWorkflowToolbar *)v6 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v56[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v46 activateConstraints:v17];

    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.backward"];
    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v18 style:0 target:v6 action:sel_undoTapped];
    v20 = WFLocalizedString(@"Undo");
    [v19 setTitle:v20];
    [v19 setAccessibilityLabel:v20];
    [v19 setWidth:44.0];

    [(WFRunWorkflowToolbar *)v6 setUndoItem:v19];
    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.forward"];
    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v21 style:0 target:v6 action:sel_redoTapped];
    v23 = WFLocalizedString(@"Redo");
    [v22 setTitle:v23];
    [v22 setAccessibilityLabel:v23];
    [v22 setWidth:44.0];

    [(WFRunWorkflowToolbar *)v6 setRedoItem:v22];
    v24 = [MEMORY[0x277D7D518] buttonWithType:1];
    [(WFRunWorkflowToolbar *)v6 runButtonPointSizeToWidthRatio];
    [v24 setSymbolName:@"play.fill" pointSizeToWidthRatio:?];
    [v24 addTarget:v6 action:sel_playTapped forControlEvents:64];
    v25 = WFLocalizedString(@"Run Shortcut");
    [v24 setAccessibilityLabel:v25];

    v26 = [MEMORY[0x277D75348] labelColor];
    [v24 setTintColor:v26];

    v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v24];
    [(WFRunWorkflowToolbar *)v6 setRunItem:v27];

    v28 = [MEMORY[0x277D7D518] buttonWithType:1];
    [(WFRunWorkflowToolbar *)v6 runButtonPointSizeToWidthRatio];
    [v28 setSymbolName:@"square.fill" pointSizeToWidthRatio:?];
    [v28 addTarget:v6 action:sel_stopTapped forControlEvents:64];
    v29 = WFLocalizedString(@"Stop Shortcut");
    [v28 setAccessibilityLabel:v29];

    v30 = [MEMORY[0x277D75348] labelColor];
    [v28 setTintColor:v30];

    v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v28];
    [(WFRunWorkflowToolbar *)v6 setStopItem:v31];

    v32 = MEMORY[0x277D755B8];
    v33 = MEMORY[0x277D755D0];
    v34 = [MEMORY[0x277D75348] labelColor];
    v55[0] = v34;
    v35 = [MEMORY[0x277D75348] labelColor];
    v55[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v37 = [v33 configurationWithPaletteColors:v36];
    v38 = [v32 systemImageNamed:@"square.and.arrow.up" withConfiguration:v37];

    v39 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v38 style:0 target:v6 action:sel_shareTapped];
    v40 = WFLocalizedString(@"Share");
    [v39 setTitle:v40];

    v41 = WFLocalizedString(@"Share Shortcut");
    [v39 setAccessibilityLabel:v41];

    [v39 setWidth:44.0];
    [(WFRunWorkflowToolbar *)v6 setShareItem:v39];

    v4 = v53;
    v42 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    [(WFRunWorkflowToolbar *)v6 setFlexibleSpaceItem:v42];

    v43 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global];
    [(WFRunWorkflowToolbar *)v6 setBackgroundColor:v43];

    [(WFRunWorkflowToolbar *)v6 updateUndoItems];
    v44 = v6;
  }

  return v6;
}

id __41__WFRunWorkflowToolbar_initWithWorkflow___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v2 = ;

  return v2;
}

@end