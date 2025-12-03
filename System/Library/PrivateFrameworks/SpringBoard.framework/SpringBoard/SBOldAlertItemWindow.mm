@interface SBOldAlertItemWindow
- (SBAlertLayoutPresentationVerifier)alertLayoutPresentationVerifier;
- (SBOldAlertItemWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name alertLayoutPresentationVerifier:(id)verifier;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation SBOldAlertItemWindow

- (SBOldAlertItemWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name alertLayoutPresentationVerifier:(id)verifier
{
  verifierCopy = verifier;
  v14.receiver = self;
  v14.super_class = SBOldAlertItemWindow;
  v11 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v14 initWithWindowScene:scene role:role debugName:name];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_alertLayoutPresentationVerifier, verifierCopy);
  }

  return v12;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v7.receiver = self;
  v7.super_class = SBOldAlertItemWindow;
  v4 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v4;
  v6[2] = *&transform->tx;
  [(SBOldAlertItemWindow *)&v7 setTransform:v6];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setTransform:"];
}

- (void)setCenter:(CGPoint)center
{
  v5.receiver = self;
  v5.super_class = SBOldAlertItemWindow;
  [(SBOldAlertItemWindow *)&v5 setCenter:center.x, center.y];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setCenter:"];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SBOldAlertItemWindow;
  [(SBOldAlertItemWindow *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setFrame:"];
}

- (void)setBounds:(CGRect)bounds
{
  v5.receiver = self;
  v5.super_class = SBOldAlertItemWindow;
  [(SBOldAlertItemWindow *)&v5 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setBounds:"];
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  v15.receiver = self;
  v15.super_class = SBOldAlertItemWindow;
  keyCopy = key;
  v8 = [(SBOldAlertItemWindow *)&v15 actionForLayer:layerCopy forKey:keyCopy];
  v9 = [keyCopy isEqualToString:@"position"];

  if (v9)
  {
    [layerCopy position];
    v10 = NSStringFromCGPoint(v17);
    v11 = SBLogAlertItems();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SBOldAlertItemWindow actionForLayer:v10 forKey:v11];
    }

    WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window actionForLayer position changed to %@", v10];
    [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v13];
  }

  return v8;
}

- (SBAlertLayoutPresentationVerifier)alertLayoutPresentationVerifier
{
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);

  return WeakRetained;
}

- (void)actionForLayer:(uint64_t)a1 forKey:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "Alert window actionForLayer position changed to %@", &v2, 0xCu);
}

@end