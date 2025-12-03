@interface SKUICollectionDOMFeature
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppContext)appContext;
- (SKUICollectionDOMFeature)initWithDOMNode:(id)node featureName:(id)name;
- (SKUICollectionDOMFeatureTargetting)collectionTarget;
- (void)setEditing:(BOOL)editing options:(id)options;
@end

@implementation SKUICollectionDOMFeature

- (SKUICollectionDOMFeature)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICollectionDOMFeature initWithDOMNode:featureName:];
  }

  v13.receiver = self;
  v13.super_class = SKUICollectionDOMFeature;
  v8 = [(SKUICollectionDOMFeature *)&v13 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);

    v10 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [SKUIJSDOMFeatureCollection alloc];
  appContext = [featureCopy appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:appContext];

  [(SKUIJSDOMFeatureCollection *)v6 setAppBridge:featureCopy];

  return v6;
}

- (void)setEditing:(BOOL)editing options:(id)options
{
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUICollectionDOMFeature_setEditing_options___block_invoke;
  v9[3] = &unk_2781FB6C8;
  editingCopy = editing;
  v9[4] = self;
  v10 = optionsCopy;
  v8 = optionsCopy;
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