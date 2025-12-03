@interface REUIElementDonatedActionAction
- (BOOL)siriActionsPerformer:(id)performer wantsToPresentViewController:(id)controller;
- (REUIElementDonatedActionAction)initWithProperties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)siriActionsPerformerWantsAlertBackgroundImage:(id)image;
- (id)siriActionsPerformerWantsBackgroundViewToBlur:(id)blur;
- (void)dealloc;
- (void)siriActionsPerformer:(id)performer didFailWithError:(id)error;
- (void)siriActionsPerformerDidSucceed:(id)succeed;
@end

@implementation REUIElementDonatedActionAction

- (REUIElementDonatedActionAction)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = REUIElementDonatedActionAction;
  v6 = [(REUIElementDonatedActionAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_properties, properties);
  }

  return v7;
}

- (void)dealloc
{
  [(REUISiriActionsPerformer *)self->_performer setDelegate:0];
  v3.receiver = self;
  v3.super_class = REUIElementDonatedActionAction;
  [(REUIElementDonatedActionAction *)&v3 dealloc];
}

- (id)siriActionsPerformerWantsAlertBackgroundImage:(id)image
{
  delegate = [(REElementAction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(REElementAction *)self delegate];
    v6 = [delegate2 intentActionWantsBackgroundImageForAlert:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)siriActionsPerformerWantsBackgroundViewToBlur:(id)blur
{
  delegate = [(REElementAction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(REElementAction *)self delegate];
    v6 = [delegate2 intentActionWantsBackgroundToBlurForAlert:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)siriActionsPerformerDidSucceed:(id)succeed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__REUIElementDonatedActionAction_siriActionsPerformerDidSucceed___block_invoke;
  block[3] = &unk_279AF63C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__REUIElementDonatedActionAction_siriActionsPerformerDidSucceed___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    [v2 elementAction:*(a1 + 32) didFinishTask:1];
  }

  v3 = [*(a1 + 32) performer];
  [v3 setStrongDelegate:0];

  [*(a1 + 32) setPerformer:0];
}

- (void)siriActionsPerformer:(id)performer didFailWithError:(id)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__REUIElementDonatedActionAction_siriActionsPerformer_didFailWithError___block_invoke;
  block[3] = &unk_279AF63C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__REUIElementDonatedActionAction_siriActionsPerformer_didFailWithError___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    [v2 elementAction:*(a1 + 32) didFinishTask:0];
  }

  v3 = [*(a1 + 32) performer];
  [v3 setStrongDelegate:0];

  [*(a1 + 32) setPerformer:0];
}

- (BOOL)siriActionsPerformer:(id)performer wantsToPresentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(REElementAction *)self delegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    delegate2 = [(REElementAction *)self delegate];
    [delegate2 elementAction:self wantsViewControllerDisplayed:controllerCopy];
  }

  return v7 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(REUIDonatedElementProperties *)self->_properties copyWithZone:zone];
  v7 = [v5 initWithProperties:v6];

  return v7;
}

@end