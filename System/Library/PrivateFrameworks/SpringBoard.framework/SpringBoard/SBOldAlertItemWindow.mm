@interface SBOldAlertItemWindow
- (SBAlertLayoutPresentationVerifier)alertLayoutPresentationVerifier;
- (SBOldAlertItemWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5 alertLayoutPresentationVerifier:(id)a6;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation SBOldAlertItemWindow

- (SBOldAlertItemWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5 alertLayoutPresentationVerifier:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = SBOldAlertItemWindow;
  v11 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v14 initWithWindowScene:a3 role:a4 debugName:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_alertLayoutPresentationVerifier, v10);
  }

  return v12;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v7.receiver = self;
  v7.super_class = SBOldAlertItemWindow;
  v4 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v4;
  v6[2] = *&a3->tx;
  [(SBOldAlertItemWindow *)&v7 setTransform:v6];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setTransform:"];
}

- (void)setCenter:(CGPoint)a3
{
  v5.receiver = self;
  v5.super_class = SBOldAlertItemWindow;
  [(SBOldAlertItemWindow *)&v5 setCenter:a3.x, a3.y];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setCenter:"];
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SBOldAlertItemWindow;
  [(SBOldAlertItemWindow *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setFrame:"];
}

- (void)setBounds:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SBOldAlertItemWindow;
  [(SBOldAlertItemWindow *)&v5 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:@"Alert window setBounds:"];
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SBOldAlertItemWindow;
  v7 = a4;
  v8 = [(SBOldAlertItemWindow *)&v15 actionForLayer:v6 forKey:v7];
  v9 = [v7 isEqualToString:@"position"];

  if (v9)
  {
    [v6 position];
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