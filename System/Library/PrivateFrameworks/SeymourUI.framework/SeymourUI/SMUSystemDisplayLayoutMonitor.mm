@interface SMUSystemDisplayLayoutMonitor
+ (id)externalDisplayLayoutMonitorWithIdentity:(id)a3;
+ (id)mainDisplayLayoutMonitor;
- (NSArray)currentLayout;
- (SMUSystemDisplayLayoutMonitor)init;
- (SMUSystemDisplayLayoutMonitor)initWithConfiguration:(id)a3;
- (void)dealloc;
- (void)handleUpdatedLayout:(id)a3 transitionContext:(id)a4;
@end

@implementation SMUSystemDisplayLayoutMonitor

+ (id)mainDisplayLayoutMonitor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (SMUSystemDisplayLayoutMonitor)init
{
  v3 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v4 = [(SMUSystemDisplayLayoutMonitor *)self initWithConfiguration:v3];

  return v4;
}

- (void)dealloc
{
  v3 = [(SMUSystemDisplayLayoutMonitor *)self layoutMonitor];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SMUSystemDisplayLayoutMonitor;
  [(SMUSystemDisplayLayoutMonitor *)&v4 dealloc];
}

+ (id)externalDisplayLayoutMonitorWithIdentity:(id)a3
{
  v3 = a3;
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

- (SMUSystemDisplayLayoutMonitor)initWithConfiguration:(id)a3
{
  v4 = a3;
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
    [v4 setTransitionHandler:&v9];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{v4, v9, v10, v11, v12}];
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
  v2 = [(SMUSystemDisplayLayoutMonitor *)self layoutMonitor];
  v3 = [v2 currentLayout];
  v4 = [v3 elements];

  return v4;
}

- (void)handleUpdatedLayout:(id)a3 transitionContext:(id)a4
{
  v12 = a3;
  v5 = [(SMUSystemDisplayLayoutMonitor *)self transitionHandler];
  if (v5)
  {
    v6 = v5;
    v7 = [v12 elements];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(SMUSystemDisplayLayoutMonitor *)self transitionHandler];
      v10 = [v12 displayConfiguration];
      v11 = [v12 elements];
      (v9)[2](v9, v10, v11);
    }
  }
}

@end