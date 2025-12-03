@interface SKUIPhysicalCirclesTemplateViewElement
+ (id)supportedFeatures;
- (NSArray)circleItemElements;
- (SKUILabelViewElement)subtitleElement;
- (SKUILabelViewElement)titleElement;
- (SKUIPhysicalCirclesTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (void)dispatchRemovedEventWithChildViewElement:(id)element;
@end

@implementation SKUIPhysicalCirclesTemplateViewElement

- (SKUIPhysicalCirclesTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPhysicalCirclesTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIPhysicalCirclesTemplateViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  v12 = v11;
  if (v11)
  {
    v13 = [(SKUIViewElement *)v11 featureWithName:0x282809528];
    scriptInterface = v12->_scriptInterface;
    v12->_scriptInterface = v13;
  }

  return v12;
}

- (NSArray)circleItemElements
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SKUIPhysicalCirclesTemplateViewElement_circleItemElements__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __60__SKUIPhysicalCirclesTemplateViewElement_circleItemElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 59)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)dispatchRemovedEventWithChildViewElement:(id)element
{
  elementCopy = element;
  appContext = [(SKUIPhysicalCirclesTemplateDOMFeature *)self->_scriptInterface appContext];
  appDocument = [(SKUIPhysicalCirclesTemplateViewElement *)self appDocument];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SKUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke;
  v10[3] = &unk_2781FC9D8;
  v7 = appDocument;
  v11 = v7;
  v8 = elementCopy;
  v12 = v8;
  v9 = appContext;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  [v9 evaluate:v10 completionBlock:0];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __83__SKUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) retrieveJSElementForViewElement:*(a1 + 40) jsContext:v3];
  if (v4)
  {
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__SKUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke_2;
    v6[3] = &unk_2781FC9B0;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = v4;
    [v5 evaluateDelegateBlockSync:v6];

    objc_destroyWeak(&v8);
  }
}

void __83__SKUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = @"removed";
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [WeakRetained dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v4 completionBlock:0];
}

- (SKUILabelViewElement)subtitleElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__36;
  v9 = __Block_byref_object_dispose__36;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SKUIPhysicalCirclesTemplateViewElement_subtitleElement__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__SKUIPhysicalCirclesTemplateViewElement_subtitleElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SKUILabelViewElement)titleElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__36;
  v9 = __Block_byref_object_dispose__36;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SKUIPhysicalCirclesTemplateViewElement_titleElement__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__SKUIPhysicalCirclesTemplateViewElement_titleElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)supportedFeatures
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x282809528;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPhysicalCirclesTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end