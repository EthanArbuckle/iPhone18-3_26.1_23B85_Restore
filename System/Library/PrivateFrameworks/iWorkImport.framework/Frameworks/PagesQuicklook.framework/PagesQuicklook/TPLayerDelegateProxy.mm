@interface TPLayerDelegateProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (TPLayerDelegateProxy)initWithDelegate:(id)delegate;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)displayLayer:(id)layer;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation TPLayerDelegateProxy

- (TPLayerDelegateProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = TPLayerDelegateProxy;
  v5 = [(TPLayerDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = TPLayerDelegateProxy;
  v5 = [(TPLayerDelegateProxy *)&v9 respondsToSelector:?];
  if (sel_displayLayer_ == selector || sel_drawLayer_inContext_ == selector || sel_layoutSublayersOfLayer_ == selector || (v6 = v5, sel_actionForLayer_forKey_ == selector))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_proxy_displayLayer_(WeakRetained, v5, v6, v7, v8, v9, layerCopy);
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_proxy_drawLayer_inContext_(WeakRetained, v7, v8, v9, v10, v11, layerCopy, context);
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_proxy_layoutSublayersOfLayer_(WeakRetained, v5, v6, v7, v8, v9, layerCopy);
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  keyCopy = key;
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_msgSend_proxy_actionForLayer_forKey_(WeakRetained, v9, v10, v11, v12, v13, layerCopy, keyCopy);

  return v14;
}

@end