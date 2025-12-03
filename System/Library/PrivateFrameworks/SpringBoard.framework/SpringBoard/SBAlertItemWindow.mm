@interface SBAlertItemWindow
- (SBAlertItemWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name alertLayoutPresentationVerifier:(id)verifier;
- (SBAlertLayoutPresentationVerifier)alertLayoutPresentationVerifier;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation SBAlertItemWindow

- (SBAlertItemWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name alertLayoutPresentationVerifier:(id)verifier
{
  verifierCopy = verifier;
  v15.receiver = self;
  v15.super_class = SBAlertItemWindow;
  v11 = [(SBWindow *)&v15 initWithWindowScene:scene role:role debugName:name];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_alertLayoutPresentationVerifier, verifierCopy);
    v13 = [[SBAlertItemRootViewController alloc] initWithNibName:0 bundle:0];
    [(SBAlertItemWindow *)v12 setRootViewController:v13];
  }

  return v12;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v11.receiver = self;
  v11.super_class = SBAlertItemWindow;
  v5 = *&transform->c;
  *&transform.a = *&transform->a;
  *&transform.c = v5;
  *&transform.tx = *&transform->tx;
  [(SBAlertItemWindow *)&v11 setTransform:&transform];
  v6 = *&transform->c;
  *&transform.a = *&transform->a;
  *&transform.c = v6;
  *&transform.tx = *&transform->tx;
  v7 = NSStringFromCGAffineTransform(&transform);
  WeakRetained = objc_loadWeakRetained(&self->_alertLayoutPresentationVerifier);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Alert window setTransform: %@.", v7];
  [WeakRetained scheduleDelayedAlertLayoutVerificationForReason:v9];
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  v15.receiver = self;
  v15.super_class = SBAlertItemWindow;
  keyCopy = key;
  v8 = [(SBAlertItemWindow *)&v15 actionForLayer:layerCopy forKey:keyCopy];
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