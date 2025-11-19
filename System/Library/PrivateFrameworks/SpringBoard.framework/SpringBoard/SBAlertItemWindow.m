@interface SBAlertItemWindow
- (SBAlertItemWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5 alertLayoutPresentationVerifier:(id)a6;
- (SBAlertLayoutPresentationVerifier)alertLayoutPresentationVerifier;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation SBAlertItemWindow

- (SBAlertItemWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5 alertLayoutPresentationVerifier:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = SBAlertItemWindow;
  v11 = [(SBWindow *)&v15 initWithWindowScene:a3 role:a4 debugName:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_alertLayoutPresentationVerifier, v10);
    v13 = [[SBAlertItemRootViewController alloc] initWithNibName:0 bundle:0];
    [(SBAlertItemWindow *)v12 setRootViewController:v13];
  }

  return v12;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v11.receiver = self;
  v11.super_class = SBAlertItemWindow;
  v5 = *&a3->c;
  *&transform.a = *&a3->a;
  *&transform.c = v5;
  *&transform.tx = *&a3->tx;
  [(SBAlertItemWindow *)&v11 setTransform:&transform];
  v6 = *&a3->c;
  *&transform.a = *&a3->a;
  *&transform.c = v6;
  *&transform.tx = *&a3->tx;
  v7 = NSStringFromCGAffineTransform(&transform);
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window setTransform: %@.", v7];
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v9];
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = SBAlertItemWindow;
  [(SBAlertItemWindow *)&v9 setCenter:?];
  v10.x = x;
  v10.y = y;
  v6 = NSStringFromCGPoint(v10);
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window setCenter: %@.", v6];
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v8];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = SBAlertItemWindow;
  [(SBAlertItemWindow *)&v11 setFrame:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = NSStringFromCGRect(v12);
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window setFrame: %@.", v8];
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v10];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = SBAlertItemWindow;
  [(SBAlertItemWindow *)&v11 setBounds:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = NSStringFromCGRect(v12);
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window setBounds: %@", v8];
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v10];
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SBAlertItemWindow;
  v7 = a4;
  v8 = [(SBAlertItemWindow *)&v15 actionForLayer:v6 forKey:v7];
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window set actionForLayer position changed to %@", v10];
    [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v13];
  }

  return v8;
}

- (SBAlertLayoutPresentationVerifier)alertLayoutPresentationVerifier
{
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);

  return WeakRetained;
}

@end