@interface SKJSUIAnimatorDOMFeature
- (SKJSUIAnimatorDOMFeature)initWithAppContext:(id)a3 DOMFeature:(id)a4;
- (void)animate:(id)a3 :(id)a4;
@end

@implementation SKJSUIAnimatorDOMFeature

- (SKJSUIAnimatorDOMFeature)initWithAppContext:(id)a3 DOMFeature:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKJSUIAnimatorDOMFeature *)v8 initWithAppContext:v9 DOMFeature:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKJSUIAnimatorDOMFeature;
  v16 = [(IKJSObject *)&v19 initWithAppContext:v6];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_feature, v7);
  }

  return v17;
}

- (void)animate:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKJSUIAnimatorDOMFeature_animate::__block_invoke;
  block[3] = &unk_2781F8680;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__SKJSUIAnimatorDOMFeature_animate::__block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v4 = [WeakRetained delegate];

  if (v4)
  {
    v3 = objc_loadWeakRetained((a1[4] + 24));
    [v4 animatorFeature:v3 performAnimationWithName:a1[5] options:a1[6]];
  }
}

@end