@interface WeakListener
- (SFFeedbackListener)strongListener;
- (WeakListener)initWithListener:(id)listener;
@end

@implementation WeakListener

- (SFFeedbackListener)strongListener
{
  WeakRetained = objc_loadWeakRetained(&self->_weakListener);

  return WeakRetained;
}

- (WeakListener)initWithListener:(id)listener
{
  listenerCopy = listener;
  v8.receiver = self;
  v8.super_class = WeakListener;
  v5 = [(WeakListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakListener, listenerCopy);
  }

  return v6;
}

@end