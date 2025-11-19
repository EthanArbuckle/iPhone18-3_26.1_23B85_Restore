@interface SKUIPhysicalCirclesTemplateDOMFeature
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppContext)appContext;
- (SKUIPhysicalCirclesTemplateDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4;
- (SKUIPhysicalCirclesTemplateDelegate)delegate;
- (id)popPendingAnimationRequests;
- (void)_addDOMUpdateBlock:(id)a3;
- (void)_requestAnimation:(id)a3;
- (void)finishDOMUpdates;
@end

@implementation SKUIPhysicalCirclesTemplateDOMFeature

- (SKUIPhysicalCirclesTemplateDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPhysicalCirclesTemplateDOMFeature initWithDOMNode:featureName:];
  }

  v13.receiver = self;
  v13.super_class = SKUIPhysicalCirclesTemplateDOMFeature;
  v8 = [(SKUIPhysicalCirclesTemplateDOMFeature *)&v13 init];
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

- (void)finishDOMUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_domUpdateBlocks copy];
  domUpdateBlocks = self->_domUpdateBlocks;
  self->_domUpdateBlocks = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)popPendingAnimationRequests
{
  v3 = [(NSMutableArray *)self->_pendingAnimationRequests copy];
  pendingAnimationRequests = self->_pendingAnimationRequests;
  self->_pendingAnimationRequests = 0;

  return v3;
}

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  v4 = [SKUIJSPhysicalCirclesTemplate alloc];
  v5 = [v3 appContext];
  v6 = [(SKUIJSPhysicalCirclesTemplate *)v4 initWithAppContext:v5 DOMFeature:v3];

  return v6;
}

- (void)_addDOMUpdateBlock:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!self->_domUpdateBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    domUpdateBlocks = self->_domUpdateBlocks;
    self->_domUpdateBlocks = v5;

    v4 = v10;
  }

  v7 = [v4 copy];
  v8 = self->_domUpdateBlocks;
  v9 = _Block_copy(v7);
  [(NSMutableArray *)v8 addObject:v9];
}

- (void)_requestAnimation:(id)a3
{
  v8 = a3;
  v4 = [(SKUIPhysicalCirclesTemplateDOMFeature *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 physicalCirclesDOMFeature:self didRequestAnimation:v8];
  }

  else
  {
    pendingAnimationRequests = self->_pendingAnimationRequests;
    if (!pendingAnimationRequests)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_pendingAnimationRequests;
      self->_pendingAnimationRequests = v6;

      pendingAnimationRequests = self->_pendingAnimationRequests;
    }

    [(NSMutableArray *)pendingAnimationRequests addObject:v8];
  }
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (SKUIPhysicalCirclesTemplateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDOMNode:featureName:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPhysicalCirclesTemplateDOMFeature initWithDOMNode:featureName:]";
}

@end