@interface _TVVisualEffectView
+ (id)hostViewDisablements;
+ (void)addHostView:(id)view;
+ (void)disableForHostView:(id)view;
+ (void)enableForHostView:(id)view;
+ (void)removeHostView:(id)view;
- (UIView)hostView;
- (void)_disablement:(id)_disablement;
- (void)dealloc;
- (void)didMoveToWindow;
@end

@implementation _TVVisualEffectView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"_TVVisualEffectsViewDisablementNotification" object:0];

  v4.receiver = self;
  v4.super_class = _TVVisualEffectView;
  [(_TVVisualEffectView *)&v4 dealloc];
}

- (void)_disablement:(id)_disablement
{
  hostViewDisablements = [objc_opt_class() hostViewDisablements];
  hostView = [(_TVVisualEffectView *)self hostView];
  v6 = [hostViewDisablements objectForKey:hostView];
  bOOLValue = [v6 BOOLValue];

  [(_TVVisualEffectView *)self _setDisabled:bOOLValue];
}

- (void)didMoveToWindow
{
  v13.receiver = self;
  v13.super_class = _TVVisualEffectView;
  [(_TVVisualEffectView *)&v13 didMoveToWindow];
  window = [(_TVVisualEffectView *)self window];

  if (window)
  {
    superview = [(_TVVisualEffectView *)self superview];
    if (superview)
    {
      v5 = superview;
      while (1)
      {
        hostViewDisablements = [objc_opt_class() hostViewDisablements];
        v7 = [hostViewDisablements objectForKey:v5];

        if (v7)
        {
          break;
        }

        superview2 = [v5 superview];

        v5 = superview2;
        if (!superview2)
        {
          return;
        }
      }

      [(_TVVisualEffectView *)self setHostView:v5];
      -[_TVVisualEffectView _setDisabled:](self, "_setDisabled:", [v7 BOOLValue]);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__disablement_ name:@"_TVVisualEffectsViewDisablementNotification" object:v5];
    }
  }

  else
  {
    hostView = [(_TVVisualEffectView *)self hostView];

    if (hostView)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      hostView2 = [(_TVVisualEffectView *)self hostView];
      [defaultCenter2 removeObserver:self name:@"_TVVisualEffectsViewDisablementNotification" object:hostView2];

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

+ (void)addHostView:(id)view
{
  viewCopy = view;
  hostViewDisablements = [self hostViewDisablements];
  [hostViewDisablements setObject:MEMORY[0x277CBEC28] forKey:viewCopy];
}

+ (void)removeHostView:(id)view
{
  viewCopy = view;
  hostViewDisablements = [self hostViewDisablements];
  [hostViewDisablements removeObjectForKey:viewCopy];
}

+ (void)enableForHostView:(id)view
{
  viewCopy = view;
  hostViewDisablements = [self hostViewDisablements];
  v5 = [hostViewDisablements objectForKey:viewCopy];

  if (v5)
  {
    hostViewDisablements2 = [self hostViewDisablements];
    [hostViewDisablements2 setObject:MEMORY[0x277CBEC28] forKey:viewCopy];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"_TVVisualEffectsViewDisablementNotification" object:viewCopy];
  }
}

+ (void)disableForHostView:(id)view
{
  viewCopy = view;
  hostViewDisablements = [self hostViewDisablements];
  v5 = [hostViewDisablements objectForKey:viewCopy];

  if (v5)
  {
    hostViewDisablements2 = [self hostViewDisablements];
    [hostViewDisablements2 setObject:MEMORY[0x277CBEC38] forKey:viewCopy];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"_TVVisualEffectsViewDisablementNotification" object:viewCopy];
  }
}

- (UIView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

@end