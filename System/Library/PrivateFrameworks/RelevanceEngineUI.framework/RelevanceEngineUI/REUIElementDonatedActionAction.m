@interface REUIElementDonatedActionAction
- (BOOL)siriActionsPerformer:(id)a3 wantsToPresentViewController:(id)a4;
- (REUIElementDonatedActionAction)initWithProperties:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)siriActionsPerformerWantsAlertBackgroundImage:(id)a3;
- (id)siriActionsPerformerWantsBackgroundViewToBlur:(id)a3;
- (void)dealloc;
- (void)siriActionsPerformer:(id)a3 didFailWithError:(id)a4;
- (void)siriActionsPerformerDidSucceed:(id)a3;
@end

@implementation REUIElementDonatedActionAction

- (REUIElementDonatedActionAction)initWithProperties:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REUIElementDonatedActionAction;
  v6 = [(REUIElementDonatedActionAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_properties, a3);
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

- (id)siriActionsPerformerWantsAlertBackgroundImage:(id)a3
{
  v4 = [(REElementAction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(REElementAction *)self delegate];
    v6 = [v5 intentActionWantsBackgroundImageForAlert:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)siriActionsPerformerWantsBackgroundViewToBlur:(id)a3
{
  v4 = [(REElementAction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(REElementAction *)self delegate];
    v6 = [v5 intentActionWantsBackgroundToBlurForAlert:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)siriActionsPerformerDidSucceed:(id)a3
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

- (void)siriActionsPerformer:(id)a3 didFailWithError:(id)a4
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

- (BOOL)siriActionsPerformer:(id)a3 wantsToPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(REElementAction *)self delegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v8 = [(REElementAction *)self delegate];
    [v8 elementAction:self wantsViewControllerDisplayed:v5];
  }

  return v7 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(REUIDonatedElementProperties *)self->_properties copyWithZone:a3];
  v7 = [v5 initWithProperties:v6];

  return v7;
}

@end