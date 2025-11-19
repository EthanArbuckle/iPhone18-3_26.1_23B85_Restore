@interface SKUIJSPhysicalCirclesTemplate
- (SKUIJSPhysicalCirclesTemplate)initWithAppContext:(id)a3 DOMFeature:(id)a4;
- (void)_performAnimationWithType:(int64_t)a3 callback:(id)a4;
- (void)afterDOMUpdate:(id)a3;
@end

@implementation SKUIJSPhysicalCirclesTemplate

- (SKUIJSPhysicalCirclesTemplate)initWithAppContext:(id)a3 DOMFeature:(id)a4
{
  v6 = a3;
  objc_initWeak(&location, a4);
  v10.receiver = self;
  v10.super_class = SKUIJSPhysicalCirclesTemplate;
  v7 = [(IKJSObject *)&v10 initWithAppContext:v6];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_feature, v8);
  }

  objc_destroyWeak(&location);

  return v7;
}

- (void)afterDOMUpdate:(id)a3
{
  v4 = MEMORY[0x277CD4650];
  v5 = a3;
  v6 = [v4 managedValueWithValue:v5];
  v7 = [v5 context];

  v8 = [v7 virtualMachine];

  [v8 addManagedReference:v6 withOwner:self];
  v9 = [(IKJSObject *)self appContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SKUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke;
  v12[3] = &unk_2781FCA48;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  [v9 evaluateDelegateBlockSync:v12];
}

void __48__SKUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SKUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_2;
  v8[3] = &unk_2781F96E8;
  v9 = v3;
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [WeakRetained _addDOMUpdateBlock:v8];
}

void __48__SKUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SKUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_3;
  v5[3] = &unk_2781F9E78;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 evaluate:v5 completionBlock:0];
}

uint64_t __48__SKUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) value];
  v3 = [v2 callWithArguments:0];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 removeManagedReference:v5 withOwner:v6];
}

- (void)_performAnimationWithType:(int64_t)a3 callback:(id)a4
{
  v6 = a4;
  v7 = [(IKJSObject *)self appContext];
  v8 = objc_alloc_init(SKUIPhysicalCirclesAnimationRequest);
  [(SKUIPhysicalCirclesAnimationRequest *)v8 setAnimationType:a3];
  if (v6)
  {
    v9 = [MEMORY[0x277CD4650] managedValueWithValue:v6];
    v10 = [v6 context];
    v11 = [v10 virtualMachine];

    [v11 addManagedReference:v9 withOwner:self];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__SKUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke;
    v17[3] = &unk_2781F96E8;
    v18 = v7;
    v19 = v9;
    v20 = v11;
    v21 = self;
    v12 = v11;
    v13 = v9;
    [(SKUIPhysicalCirclesAnimationRequest *)v8 _setCompletionBlock:v17];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SKUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_3;
  v15[3] = &unk_2781FAD00;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v7 evaluateDelegateBlockSync:v15];
}

void __68__SKUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SKUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_2;
  v5[3] = &unk_2781F9E78;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 evaluate:v5 completionBlock:0];
}

void *__68__SKUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_2(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = [result value];
    v4 = [v3 callWithArguments:0];

    v6 = a1[4];
    v5 = a1[5];
    v7 = a1[6];

    return [v5 removeManagedReference:v6 withOwner:v7];
  }

  return result;
}

void __68__SKUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained _requestAnimation:*(a1 + 40)];
}

@end