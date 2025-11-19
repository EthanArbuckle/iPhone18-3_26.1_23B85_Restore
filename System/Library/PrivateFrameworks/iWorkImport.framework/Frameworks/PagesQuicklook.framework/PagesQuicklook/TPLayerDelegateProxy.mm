@interface TPLayerDelegateProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (TPLayerDelegateProxy)initWithDelegate:(id)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)displayLayer:(id)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation TPLayerDelegateProxy

- (TPLayerDelegateProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPLayerDelegateProxy;
  v5 = [(TPLayerDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = TPLayerDelegateProxy;
  v5 = [(TPLayerDelegateProxy *)&v9 respondsToSelector:?];
  if (sel_displayLayer_ == a3 || sel_drawLayer_inContext_ == a3 || sel_layoutSublayersOfLayer_ == a3 || (v6 = v5, sel_actionForLayer_forKey_ == a3))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (void)displayLayer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_proxy_displayLayer_(WeakRetained, v5, v6, v7, v8, v9, v4);
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_proxy_drawLayer_inContext_(WeakRetained, v7, v8, v9, v10, v11, v6, a4);
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_msgSend_proxy_layoutSublayersOfLayer_(WeakRetained, v5, v6, v7, v8, v9, v4);
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_msgSend_proxy_actionForLayer_forKey_(WeakRetained, v9, v10, v11, v12, v13, v7, v6);

  return v14;
}

@end