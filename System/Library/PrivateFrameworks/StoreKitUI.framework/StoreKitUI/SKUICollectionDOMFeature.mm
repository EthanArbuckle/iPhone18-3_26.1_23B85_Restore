@interface SKUICollectionDOMFeature
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppContext)appContext;
- (SKUICollectionDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4;
- (SKUICollectionDOMFeatureTargetting)collectionTarget;
- (void)setEditing:(BOOL)a3 options:(id)a4;
@end

@implementation SKUICollectionDOMFeature

- (SKUICollectionDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICollectionDOMFeature initWithDOMNode:featureName:];
  }

  v13.receiver = self;
  v13.super_class = SKUICollectionDOMFeature;
  v8 = [(SKUICollectionDOMFeature *)&v13 init];
  if (v8)
  {
    v9 = [v6 appContext];
    objc_storeWeak(&v8->_appContext, v9);

    v10 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  v4 = [SKUIJSDOMFeatureCollection alloc];
  v5 = [v3 appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:v5];

  [(SKUIJSDOMFeatureCollection *)v6 setAppBridge:v3];

  return v6;
}

- (void)setEditing:(BOOL)a3 options:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUICollectionDOMFeature_setEditing_options___block_invoke;
  v9[3] = &unk_2781FB6C8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [WeakRetained evaluateDelegateBlockSync:v9];
}

void __47__SKUICollectionDOMFeature_setEditing_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) objectForKey:@"animated"];
  [WeakRetained setEditing:v2 animated:{objc_msgSend(v3, "BOOLValue")}];
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (SKUICollectionDOMFeatureTargetting)collectionTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionTarget);

  return WeakRetained;
}

- (void)initWithDOMNode:featureName:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICollectionDOMFeature initWithDOMNode:featureName:]";
}

@end