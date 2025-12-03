@interface SXDebugComponentView
- (SXDebugComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory invalidator:(id)invalidator;
- (void)loadComponent:(id)component;
- (void)presentComponentWithChanges:(id)changes;
@end

@implementation SXDebugComponentView

- (SXDebugComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory invalidator:(id)invalidator
{
  invalidatorCopy = invalidator;
  v17.receiver = self;
  v17.super_class = SXDebugComponentView;
  v14 = [(SXComponentView *)&v17 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invalidator, invalidator);
  }

  return v15;
}

- (void)loadComponent:(id)component
{
  v9.receiver = self;
  v9.super_class = SXDebugComponentView;
  [(SXComponentView *)&v9 loadComponent:component];
  redColor = [MEMORY[0x1E69DC888] redColor];
  [(SXDebugComponentView *)self setBackgroundColor:redColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer = [(SXDebugComponentView *)self layer];
  [layer setBorderColor:cGColor];

  layer2 = [(SXDebugComponentView *)self layer];
  [layer2 setBorderWidth:1.0];
}

- (void)presentComponentWithChanges:(id)changes
{
  v7.receiver = self;
  v7.super_class = SXDebugComponentView;
  [(SXComponentView *)&v7 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  v4 = arc4random_uniform(0xAu);
  v5 = dispatch_time(0, 1000000000 * v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SXDebugComponentView_presentComponentWithChanges___block_invoke;
  block[3] = &unk_1E84FED18;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

void __52__SXDebugComponentView_presentComponentWithChanges___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) invalidator];
  v2 = [*(a1 + 32) component];
  v3 = [v4 invalidateComponent:v2 suggestedSize:{0.0, 300.0}];
}

@end