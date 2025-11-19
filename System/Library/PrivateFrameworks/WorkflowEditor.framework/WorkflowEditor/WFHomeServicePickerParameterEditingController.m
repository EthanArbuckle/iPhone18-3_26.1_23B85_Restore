@interface WFHomeServicePickerParameterEditingController
- (void)createViewControllerWithInitialState:(id)a3 completionHandler:(id)a4;
- (void)servicePickerDidCancel:(id)a3;
- (void)servicePickerDidFinish:(id)a3 selectedServices:(id)a4;
@end

@implementation WFHomeServicePickerParameterEditingController

- (void)servicePickerDidCancel:(id)a3
{
  v3 = [(WFUIKitParameterEditingController *)self delegate];
  [v3 cancelEditing];
}

- (void)servicePickerDidFinish:(id)a3 selectedServices:(id)a4
{
  v12 = a4;
  v5 = [(WFHomeServicePickerParameterEditingController *)self home];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D7C4C0]);
    v7 = [v12 anyObject];
    v8 = [(WFHomeServicePickerParameterEditingController *)self home];
    v9 = WFSerializableHomeIdentifier();
    v10 = [v6 initWithService:v7 homeIdentifier:v9];

    v11 = [(WFUIKitParameterEditingController *)self delegate];
    [v11 finishEditingWithParameterState:v10];
  }

  else
  {
    v10 = [(WFUIKitParameterEditingController *)self delegate];
    [v10 cancelEditing];
  }
}

- (void)createViewControllerWithInitialState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D7C4F0] sharedManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__WFHomeServicePickerParameterEditingController_createViewControllerWithInitialState_completionHandler___block_invoke;
  v12[3] = &unk_279EDBEF8;
  v13 = v6;
  v14 = v8;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  [v10 ensureHomesAreLoadedWithCompletionHandler:v12];
}

void __104__WFHomeServicePickerParameterEditingController_createViewControllerWithInitialState_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeIdentifier];
  v3 = [v2 length];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [*(a1 + 32) homeIdentifier];
    v11 = [v4 homeWithIdentifier:v5];

    v6 = v11;
  }

  else
  {
    v6 = [*(a1 + 40) primaryHome];
  }

  v12 = v6;
  if (v6)
  {
    [*(a1 + 48) setHome:?];
    v7 = [*(a1 + 32) service];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [[WFHUShortcutsTriggerViewAccessoryViewController alloc] initWithHome:v12 services:v8];
    [(WFHUShortcutsTriggerViewAccessoryViewController *)v9 setDelegate:*(a1 + 48)];
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

@end