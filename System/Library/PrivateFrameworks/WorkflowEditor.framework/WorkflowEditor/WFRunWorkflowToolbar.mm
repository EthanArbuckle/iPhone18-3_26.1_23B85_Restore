@interface WFRunWorkflowToolbar
- (BOOL)isNotRunningAndIsEditing;
- (NSArray)items;
- (NSArray)undoRedoItems;
- (NSUndoManager)workflowUndoManager;
- (UIToolbar)toolbar;
- (WFRunWorkflowToolbar)initWithWorkflow:(id)workflow;
- (WFRunWorkflowToolbarDelegate)delegate;
- (WFWorkflow)workflow;
- (double)runButtonPointSizeToWidthRatio;
- (void)layoutSubviews;
- (void)playTapped;
- (void)redoTapped;
- (void)setWorkflowUndoManager:(id)manager;
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
  delegate = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRunWorkflowToolbar *)self delegate];
    [delegate2 runToolbarRedoTapped:self];
  }
}

- (void)undoTapped
{
  delegate = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRunWorkflowToolbar *)self delegate];
    [delegate2 runToolbarUndoTapped:self];
  }
}

- (void)updateUndoItems
{
  isNotRunningAndIsEditing = [(WFRunWorkflowToolbar *)self isNotRunningAndIsEditing];
  if (isNotRunningAndIsEditing)
  {
    workflowUndoManager = [(WFRunWorkflowToolbar *)self workflowUndoManager];
    canUndo = [workflowUndoManager canUndo];
  }

  else
  {
    canUndo = 0;
  }

  undoItem = [(WFRunWorkflowToolbar *)self undoItem];
  [undoItem setEnabled:canUndo];

  if (isNotRunningAndIsEditing)
  {
  }

  isNotRunningAndIsEditing2 = [(WFRunWorkflowToolbar *)self isNotRunningAndIsEditing];
  if (isNotRunningAndIsEditing2)
  {
    workflowUndoManager = [(WFRunWorkflowToolbar *)self workflowUndoManager];
    canRedo = [workflowUndoManager canRedo];
  }

  else
  {
    canRedo = 0;
  }

  redoItem = [(WFRunWorkflowToolbar *)self redoItem];
  [redoItem setEnabled:canRedo];

  if (isNotRunningAndIsEditing2)
  {
  }

  delegate = [(WFRunWorkflowToolbar *)self delegate];
  [delegate runToolbarUndoRedoStateChanged:self];
}

- (void)updatePlayButtonVisibility
{
  playEnabled = [(WFRunWorkflowToolbar *)self playEnabled];
  runItem = [(WFRunWorkflowToolbar *)self runItem];
  [runItem setEnabled:playEnabled];
}

- (void)updateShareButtonVisibility
{
  isNotRunningAndIsEditing = [(WFRunWorkflowToolbar *)self shareEnabled]&& ![(WFRunWorkflowToolbar *)self shareHidden]&& [(WFRunWorkflowToolbar *)self isNotRunningAndIsEditing];
  shareItem = [(WFRunWorkflowToolbar *)self shareItem];
  [shareItem setEnabled:isNotRunningAndIsEditing];

  if ([(WFRunWorkflowToolbar *)self shareHidden])
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(WFRunWorkflowToolbar *)self tintColor];
  }
  v6 = ;
  shareItem2 = [(WFRunWorkflowToolbar *)self shareItem];
  [shareItem2 setTintColor:v6];
}

- (void)setWorkflowUndoManager:(id)manager
{
  obj = manager;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277CCA7F8];
  WeakRetained = objc_loadWeakRetained(&self->_workflowUndoManager);
  [defaultCenter removeObserver:self name:v5 object:WeakRetained];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277CCA810];
  v9 = objc_loadWeakRetained(&self->_workflowUndoManager);
  [defaultCenter2 removeObserver:self name:v8 object:v9];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = *MEMORY[0x277CCA808];
  v12 = objc_loadWeakRetained(&self->_workflowUndoManager);
  [defaultCenter3 removeObserver:self name:v11 object:v12];

  objc_storeWeak(&self->_workflowUndoManager, obj);
  if (obj)
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_updateUndoItems name:v5 object:obj];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_updateUndoItems name:v8 object:obj];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel_updateUndoItems name:v11 object:obj];
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
  delegate = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRunWorkflowToolbar *)self delegate];
    [delegate2 runToolbarSettingsTapped:self];
  }
}

- (void)shareTapped
{
  delegate = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRunWorkflowToolbar *)self delegate];
    shareItem = [(WFRunWorkflowToolbar *)self shareItem];
    [delegate2 runToolbarShareTapped:self sender:shareItem];
  }
}

- (void)stopTapped
{
  delegate = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRunWorkflowToolbar *)self delegate];
    [delegate2 runToolbarStopTapped:self];
  }
}

- (void)playTapped
{
  delegate = [(WFRunWorkflowToolbar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRunWorkflowToolbar *)self delegate];
    [delegate2 runToolbarPlayTapped:self];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = WFRunWorkflowToolbar;
  [(WFRunWorkflowToolbar *)&v11 layoutSubviews];
  toolbar = [(WFRunWorkflowToolbar *)self toolbar];
  layer = [toolbar layer];
  [layer shadowRadius];
  v6 = v5;

  [toolbar frame];
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, v7 - v6}];
  cGPath = [v8 CGPath];
  layer2 = [toolbar layer];
  [layer2 setShadowPath:cGPath];
}

- (NSArray)undoRedoItems
{
  v7[2] = *MEMORY[0x277D85DE8];
  undoItem = [(WFRunWorkflowToolbar *)self undoItem];
  v7[0] = undoItem;
  redoItem = [(WFRunWorkflowToolbar *)self redoItem];
  v7[1] = redoItem;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSArray)items
{
  toolbar = [(WFRunWorkflowToolbar *)self toolbar];
  items = [toolbar items];

  return items;
}

- (void)updateRunningButtonWidthIfNeeded
{
  [(WFRunWorkflowToolbar *)self runButtonPointSizeToWidthRatio];
  v4 = v3;
  runItem = [(WFRunWorkflowToolbar *)self runItem];
  customView = [runItem customView];
  [customView pointSizeToWidthRatio];
  v8 = v7;

  if (v4 != v8)
  {
    runItem2 = [(WFRunWorkflowToolbar *)self runItem];
    customView2 = [runItem2 customView];
    [(WFRunWorkflowToolbar *)self runButtonPointSizeToWidthRatio];
    [customView2 setSymbolName:@"play.fill" pointSizeToWidthRatio:?];

    stopItem = [(WFRunWorkflowToolbar *)self stopItem];
    customView3 = [stopItem customView];
    [(WFRunWorkflowToolbar *)self runButtonPointSizeToWidthRatio];
    [customView3 setSymbolName:@"square.fill" pointSizeToWidthRatio:?];
  }
}

- (double)runButtonPointSizeToWidthRatio
{
  traitCollection = [(WFRunWorkflowToolbar *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v3 = 1.7;
  }

  else
  {
    v3 = 2.5;
  }

  return v3;
}

- (WFRunWorkflowToolbar)initWithWorkflow:(id)workflow
{
  v56[4] = *MEMORY[0x277D85DE8];
  workflowCopy = workflow;
  v54.receiver = self;
  v54.super_class = WFRunWorkflowToolbar;
  v5 = [(WFRunWorkflowToolbar *)&v54 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workflow, workflowCopy);
    v7 = objc_alloc(MEMORY[0x277D75C58]);
    [(WFRunWorkflowToolbar *)v6 bounds];
    v8 = [v7 initWithFrame:?];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setDelegate:v6];
    [(WFRunWorkflowToolbar *)v6 addSubview:v8];
    [(WFRunWorkflowToolbar *)v6 setToolbar:v8];
    v46 = MEMORY[0x277CCAAD0];
    topAnchor = [v8 topAnchor];
    topAnchor2 = [(WFRunWorkflowToolbar *)v6 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[0] = v49;
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [(WFRunWorkflowToolbar *)v6 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[1] = v9;
    v52 = v8;
    bottomAnchor = [v8 bottomAnchor];
    [(WFRunWorkflowToolbar *)v6 safeAreaLayoutGuide];
    v11 = v53 = workflowCopy;
    bottomAnchor2 = [v11 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[2] = v13;
    trailingAnchor = [v8 trailingAnchor];
    trailingAnchor2 = [(WFRunWorkflowToolbar *)v6 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

    labelColor = [MEMORY[0x277D75348] labelColor];
    [v24 setTintColor:labelColor];

    v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v24];
    [(WFRunWorkflowToolbar *)v6 setRunItem:v27];

    v28 = [MEMORY[0x277D7D518] buttonWithType:1];
    [(WFRunWorkflowToolbar *)v6 runButtonPointSizeToWidthRatio];
    [v28 setSymbolName:@"square.fill" pointSizeToWidthRatio:?];
    [v28 addTarget:v6 action:sel_stopTapped forControlEvents:64];
    v29 = WFLocalizedString(@"Stop Shortcut");
    [v28 setAccessibilityLabel:v29];

    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [v28 setTintColor:labelColor2];

    v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v28];
    [(WFRunWorkflowToolbar *)v6 setStopItem:v31];

    v32 = MEMORY[0x277D755B8];
    v33 = MEMORY[0x277D755D0];
    labelColor3 = [MEMORY[0x277D75348] labelColor];
    v55[0] = labelColor3;
    labelColor4 = [MEMORY[0x277D75348] labelColor];
    v55[1] = labelColor4;
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

    workflowCopy = v53;
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