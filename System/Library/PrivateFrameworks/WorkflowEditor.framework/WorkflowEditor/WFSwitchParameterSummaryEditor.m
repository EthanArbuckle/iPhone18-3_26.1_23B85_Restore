@interface WFSwitchParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
@end

@implementation WFSwitchParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v5 = objc_alloc(MEMORY[0x277D7C198]);
  v6 = MEMORY[0x277CCABB0];
  v7 = [(WFModuleSummaryEditor *)self initialState];
  v8 = [v7 number];
  v9 = [v6 numberWithInt:{objc_msgSend(v8, "BOOLValue") ^ 1}];
  v10 = [v5 initWithNumber:v9];

  [(WFModuleSummaryEditor *)self stageState:v10];
  v11 = dispatch_time(0, 50000000);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__WFSwitchParameterSummaryEditor_beginEditingSlotWithIdentifier_presentationAnchor___block_invoke;
  v13[3] = &unk_279EDBC70;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_after(v11, MEMORY[0x277D85CD0], v13);
}

uint64_t __84__WFSwitchParameterSummaryEditor_beginEditingSlotWithIdentifier_presentationAnchor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) commitState:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeEditing];
}

@end