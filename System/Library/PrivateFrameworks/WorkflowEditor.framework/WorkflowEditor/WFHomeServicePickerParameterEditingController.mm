@interface WFHomeServicePickerParameterEditingController
- (void)createViewControllerWithInitialState:(id)state completionHandler:(id)handler;
- (void)servicePickerDidCancel:(id)cancel;
- (void)servicePickerDidFinish:(id)finish selectedServices:(id)services;
@end

@implementation WFHomeServicePickerParameterEditingController

- (void)servicePickerDidCancel:(id)cancel
{
  delegate = [(WFUIKitParameterEditingController *)self delegate];
  [delegate cancelEditing];
}

- (void)servicePickerDidFinish:(id)finish selectedServices:(id)services
{
  servicesCopy = services;
  home = [(WFHomeServicePickerParameterEditingController *)self home];

  if (home)
  {
    v6 = objc_alloc(MEMORY[0x277D7C4C0]);
    anyObject = [servicesCopy anyObject];
    home2 = [(WFHomeServicePickerParameterEditingController *)self home];
    v9 = WFSerializableHomeIdentifier();
    delegate2 = [v6 initWithService:anyObject homeIdentifier:v9];

    delegate = [(WFUIKitParameterEditingController *)self delegate];
    [delegate finishEditingWithParameterState:delegate2];
  }

  else
  {
    delegate2 = [(WFUIKitParameterEditingController *)self delegate];
    [delegate2 cancelEditing];
  }
}

- (void)createViewControllerWithInitialState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__WFHomeServicePickerParameterEditingController_createViewControllerWithInitialState_completionHandler___block_invoke;
  v12[3] = &unk_279EDBEF8;
  v13 = stateCopy;
  v14 = mEMORY[0x277D7C4F0];
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = mEMORY[0x277D7C4F0];
  v11 = stateCopy;
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