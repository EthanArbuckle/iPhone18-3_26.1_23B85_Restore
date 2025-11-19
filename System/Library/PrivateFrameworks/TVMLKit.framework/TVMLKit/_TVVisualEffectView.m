@interface _TVVisualEffectView
+ (id)hostViewDisablements;
+ (void)addHostView:(id)a3;
+ (void)disableForHostView:(id)a3;
+ (void)enableForHostView:(id)a3;
+ (void)removeHostView:(id)a3;
- (UIView)hostView;
- (void)_disablement:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
@end

@implementation _TVVisualEffectView

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"_TVVisualEffectsViewDisablementNotification" object:0];

  v4.receiver = self;
  v4.super_class = _TVVisualEffectView;
  [(_TVVisualEffectView *)&v4 dealloc];
}

- (void)_disablement:(id)a3
{
  v4 = [objc_opt_class() hostViewDisablements];
  v5 = [(_TVVisualEffectView *)self hostView];
  v6 = [v4 objectForKey:v5];
  v7 = [v6 BOOLValue];

  [(_TVVisualEffectView *)self _setDisabled:v7];
}

- (void)didMoveToWindow
{
  v13.receiver = self;
  v13.super_class = _TVVisualEffectView;
  [(_TVVisualEffectView *)&v13 didMoveToWindow];
  v3 = [(_TVVisualEffectView *)self window];

  if (v3)
  {
    v4 = [(_TVVisualEffectView *)self superview];
    if (v4)
    {
      v5 = v4;
      while (1)
      {
        v6 = [objc_opt_class() hostViewDisablements];
        v7 = [v6 objectForKey:v5];

        if (v7)
        {
          break;
        }

        v8 = [v5 superview];

        v5 = v8;
        if (!v8)
        {
          return;
        }
      }

      [(_TVVisualEffectView *)self setHostView:v5];
      -[_TVVisualEffectView _setDisabled:](self, "_setDisabled:", [v7 BOOLValue]);
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 addObserver:self selector:sel__disablement_ name:@"_TVVisualEffectsViewDisablementNotification" object:v5];
    }
  }

  else
  {
    v9 = [(_TVVisualEffectView *)self hostView];

    if (v9)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [(_TVVisualEffectView *)self hostView];
      [v10 removeObserver:self name:@"_TVVisualEffectsViewDisablementNotification" object:v11];

      [(_TVVisualEffectView *)self setHostView:0];
    }
  }
}

+ (id)hostViewDisablements
{
  if (hostViewDisablements_onceToken != -1)
  {
    +[_TVVisualEffectView hostViewDisablements];
  }

  v3 = hostViewDisablements_hostViewDisablements;

  return v3;
}

+ (void)addHostView:(id)a3
{
  v4 = a3;
  v5 = [a1 hostViewDisablements];
  [v5 setObject:MEMORY[0x277CBEC28] forKey:v4];
}

+ (void)removeHostView:(id)a3
{
  v4 = a3;
  v5 = [a1 hostViewDisablements];
  [v5 removeObjectForKey:v4];
}

+ (void)enableForHostView:(id)a3
{
  v8 = a3;
  v4 = [a1 hostViewDisablements];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = [a1 hostViewDisablements];
    [v6 setObject:MEMORY[0x277CBEC28] forKey:v8];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"_TVVisualEffectsViewDisablementNotification" object:v8];
  }
}

+ (void)disableForHostView:(id)a3
{
  v8 = a3;
  v4 = [a1 hostViewDisablements];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = [a1 hostViewDisablements];
    [v6 setObject:MEMORY[0x277CBEC38] forKey:v8];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"_TVVisualEffectsViewDisablementNotification" object:v8];
  }
}

- (UIView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

@end