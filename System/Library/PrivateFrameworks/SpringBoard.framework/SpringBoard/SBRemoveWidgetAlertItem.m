@interface SBRemoveWidgetAlertItem
- (SBHIconManager)iconManager;
- (SBRemoveWidgetAlertItem)initWithWidget:(id)a3 inIcon:(id)a4 location:(id)a5 iconManager:(id)a6;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)didActivate;
@end

@implementation SBRemoveWidgetAlertItem

- (SBRemoveWidgetAlertItem)initWithWidget:(id)a3 inIcon:(id)a4 location:(id)a5 iconManager:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBRemoveWidgetAlertItem initWithWidget:a2 inIcon:self location:? iconManager:?];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [SBRemoveWidgetAlertItem initWithWidget:a2 inIcon:self location:? iconManager:?];
LABEL_3:
  if (([v13 isWidgetIcon] & 1) == 0)
  {
    [SBRemoveWidgetAlertItem initWithWidget:a2 inIcon:self location:v13 iconManager:?];
  }

  v20.receiver = self;
  v20.super_class = SBRemoveWidgetAlertItem;
  v17 = [(SBAlertItem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_widget, a3);
    objc_storeStrong(&v18->_icon, a4);
    objc_storeStrong(&v18->_iconLocation, a5);
    objc_storeWeak(&v18->_iconManager, v16);
  }

  return v18;
}

- (void)didActivate
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBRemoveWidgetAlertItem;
  [(SBAlertItem *)&v9 didActivate];
  v3 = *MEMORY[0x277D67460];
  v10[0] = *MEMORY[0x277D67468];
  v10[1] = v3;
  iconLocation = self->_iconLocation;
  v11[0] = &unk_283372038;
  v11[1] = iconLocation;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = MEMORY[0x277D65DD0];
  v7 = v5;
  v8 = [v6 sharedInstance];
  [v8 emitEvent:18 withPayload:v7];
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  widget = self->_widget;
  if (widget)
  {
    goto LABEL_2;
  }

  if ([(SBWidgetIcon *)self->_icon isWidgetStackIcon])
  {
    v21 = SBHBundle();
    v22 = [v21 localizedStringForKey:@"REMOVE_WIDGET_TITLE_REMOVE_STACK" value:&stru_283094718 table:@"SpringBoardHome"];
    [v5 setTitle:v22];

    v8 = SBHBundle();
    v13 = [v8 localizedStringForKey:@"REMOVE_WIDGET_BODY_REMOVE_STACK" value:&stru_283094718 table:@"SpringBoardHome"];
    [v5 setMessage:v13];
    goto LABEL_4;
  }

  widget = self->_widget;
  if (widget)
  {
LABEL_2:
    v7 = [(SBLeafIconDataSource *)widget icon:self->_icon displayNameForLocation:*MEMORY[0x277D666C8]];
  }

  else
  {
    v7 = [(SBWidgetIcon *)self->_icon displayName];
  }

  v8 = v7;
  v9 = MEMORY[0x277CCACA8];
  v10 = SBHBundle();
  v11 = [v10 localizedStringForKey:@"REMOVE_WIDGET_TITLE_REMOVE_WITH_NAME" value:&stru_283094718 table:@"SpringBoardHome"];
  v12 = [v9 stringWithFormat:v11, v8];
  [v5 setTitle:v12];

  v13 = SBHBundle();
  v14 = [v13 localizedStringForKey:@"REMOVE_WIDGET_BODY_REMOVE_DATA" value:&stru_283094718 table:@"SpringBoardHome"];
  [v5 setMessage:v14];

LABEL_4:
  v15 = SBHBundle();
  v16 = [v15 localizedStringForKey:@"REMOVE_WIDGET_BUTTON_REMOVE" value:&stru_283094718 table:@"SpringBoardHome"];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__SBRemoveWidgetAlertItem_configure_requirePasscodeForActions___block_invoke;
  v24[3] = &unk_2783A8A40;
  v24[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:2 handler:v24];
  [v5 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  v19 = [(SBWidgetIcon *)self->_icon uninstallAlertCancelTitle];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__SBRemoveWidgetAlertItem_configure_requirePasscodeForActions___block_invoke_46;
  v23[3] = &unk_2783A8A40;
  v23[4] = self;
  v20 = [v18 actionWithTitle:v19 style:1 handler:v23];
  [v5 addAction:v20];

  [v5 setPreferredAction:v17];
}

void __63__SBRemoveWidgetAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v10 = *MEMORY[0x277D67470];
  v11[0] = &unk_283372050;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = MEMORY[0x277D65DD0];
  v4 = v2;
  v5 = [v3 sharedInstance];
  [v5 emitEvent:19 withPayload:v4];

  v6 = [*(a1 + 32) iconManager];
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  if (v9)
  {
    [v6 removeWidget:v9 fromStack:*(v8 + 120)];
  }

  else
  {
    [v6 uninstallIcon:*(v8 + 120)];
  }
}

void __63__SBRemoveWidgetAlertItem_configure_requirePasscodeForActions___block_invoke_46(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v5 = *MEMORY[0x277D67470];
  v6[0] = &unk_283372068;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = MEMORY[0x277D65DD0];
  v3 = v1;
  v4 = [v2 sharedInstance];
  [v4 emitEvent:19 withPayload:v3];
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (void)initWithWidget:(uint64_t)a1 inIcon:(uint64_t)a2 location:iconManager:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRemoveWidgetAlertItem.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"icon"}];
}

- (void)initWithWidget:(uint64_t)a1 inIcon:(uint64_t)a2 location:iconManager:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRemoveWidgetAlertItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"iconManager"}];
}

- (void)initWithWidget:(uint64_t)a3 inIcon:location:iconManager:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBRemoveWidgetAlertItem.m" lineNumber:31 description:{@"icon must be a widgetIcon: icon = %@", a3}];
}

@end