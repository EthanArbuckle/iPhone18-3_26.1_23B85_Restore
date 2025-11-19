@interface UIWeakCoreKeyboardTracking
- (UICoreKeyboardTrackingElement)base;
- (UIWeakCoreKeyboardTracking)initWithBase:(id)a3;
@end

@implementation UIWeakCoreKeyboardTracking

- (UICoreKeyboardTrackingElement)base
{
  WeakRetained = objc_loadWeakRetained(&self->_base);

  return WeakRetained;
}

- (UIWeakCoreKeyboardTracking)initWithBase:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIWeakCoreKeyboardTracking;
  v5 = [(UIWeakCoreKeyboardTracking *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_base, v4);
  }

  return v6;
}

@end