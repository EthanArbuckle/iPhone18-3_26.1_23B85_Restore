@interface SMUSystemDisplayLayoutMonitor
+ (id)externalDisplayLayoutMonitorWithIdentity:(id)identity;
+ (id)mainDisplayLayoutMonitor;
- (NSArray)currentLayout;
- (SMUSystemDisplayLayoutMonitor)init;
- (SMUSystemDisplayLayoutMonitor)initWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)handleUpdatedLayout:(id)layout transitionContext:(id)context;
@end

@implementation SMUSystemDisplayLayoutMonitor

+ (id)mainDisplayLayoutMonitor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (SMUSystemDisplayLayoutMonitor)init
{
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v4 = [(SMUSystemDisplayLayoutMonitor *)self initWithConfiguration:configurationForDefaultMainDisplayMonitor];

  return v4;
}

- (void)dealloc
{
  layoutMonitor = [(SMUSystemDisplayLayoutMonitor *)self layoutMonitor];
  [layoutMonitor invalidate];

  v4.receiver = self;
  v4.super_class = SMUSystemDisplayLayoutMonitor;
  [(SMUSystemDisplayLayoutMonitor *)&v4 dealloc];
}

+ (id)externalDisplayLayoutMonitorWithIdentity:(id)identity
{
  identityCopy = identity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = SBSCreateLayoutServiceEndpointForExternalDisplay();
    v5 = [MEMORY[0x277D0AD20] configurationWithEndpoint:v4];
    v6 = [objc_alloc(objc_opt_class()) initWithConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SMUSystemDisplayLayoutMonitor)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = SMUSystemDisplayLayoutMonitor;
  v5 = [(SMUSystemDisplayLayoutMonitor *)&v15 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __55__SMUSystemDisplayLayoutMonitor_initWithConfiguration___block_invoke;
    v12 = &unk_277D97DF0;
    objc_copyWeak(&v13, &location);
    [configurationCopy setTransitionHandler:&v9];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{configurationCopy, v9, v10, v11, v12}];
    layoutMonitor = v5->_layoutMonitor;
    v5->_layoutMonitor = v6;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __55__SMUSystemDisplayLayoutMonitor_initWithConfiguration___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedLayout:v7 transitionContext:v6];
}

- (NSArray)currentLayout
{
  layoutMonitor = [(SMUSystemDisplayLayoutMonitor *)self layoutMonitor];
  currentLayout = [layoutMonitor currentLayout];
  elements = [currentLayout elements];

  return elements;
}

- (void)handleUpdatedLayout:(id)layout transitionContext:(id)context
{
  layoutCopy = layout;
  transitionHandler = [(SMUSystemDisplayLayoutMonitor *)self transitionHandler];
  if (transitionHandler)
  {
    v6 = transitionHandler;
    elements = [layoutCopy elements];
    v8 = [elements count];

    if (v8)
    {
      transitionHandler2 = [(SMUSystemDisplayLayoutMonitor *)self transitionHandler];
      displayConfiguration = [layoutCopy displayConfiguration];
      elements2 = [layoutCopy elements];
      (transitionHandler2)[2](transitionHandler2, displayConfiguration, elements2);
    }
  }
}

@end