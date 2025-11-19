@interface TVREventHaptic
- (void)playImpactEventHaptic;
- (void)playSelectionEventHaptic;
- (void)playSuccessEventHaptic;
@end

@implementation TVREventHaptic

- (void)playSelectionEventHaptic
{
  if (!self->_selectionFeedbackGenerator)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A10]);
    selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
    self->_selectionFeedbackGenerator = v3;

    [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator prepare];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TVREventHaptic_playSelectionEventHaptic__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)playImpactEventHaptic
{
  if (!self->_impactFeedbackGenerator)
  {
    v3 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
    impactFeedbackGenerator = self->_impactFeedbackGenerator;
    self->_impactFeedbackGenerator = v3;

    [(UIImpactFeedbackGenerator *)self->_impactFeedbackGenerator prepare];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TVREventHaptic_playImpactEventHaptic__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)playSuccessEventHaptic
{
  if (!self->_notificationFeedbackGenerator)
  {
    v3 = objc_alloc_init(MEMORY[0x277D757B8]);
    notificationFeedbackGenerator = self->_notificationFeedbackGenerator;
    self->_notificationFeedbackGenerator = v3;

    [(UINotificationFeedbackGenerator *)self->_notificationFeedbackGenerator prepare];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TVREventHaptic_playSuccessEventHaptic__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end