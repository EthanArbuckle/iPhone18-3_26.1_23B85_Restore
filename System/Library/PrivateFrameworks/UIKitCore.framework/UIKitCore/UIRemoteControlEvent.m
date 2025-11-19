@interface UIRemoteControlEvent
- (id)_allWindows;
- (id)_init;
- (void)_simpleRemoteActionNotification:(id)a3;
- (void)dealloc;
@end

@implementation UIRemoteControlEvent

- (id)_init
{
  v5.receiver = self;
  v5.super_class = UIRemoteControlEvent;
  v2 = [(UIEvent *)&v5 _init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__simpleRemoteActionNotification_ name:@"UIApplicationSimpleRemoteActionNotification" object:UIApp];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationSimpleRemoteActionNotification" object:UIApp];

  v4.receiver = self;
  v4.super_class = UIRemoteControlEvent;
  [(UIEvent *)&v4 dealloc];
}

- (id)_allWindows
{
  v2 = [UIApp keyWindow];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_simpleRemoteActionNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"UIApplicationSimpleRemoteActionType"];
  v6 = [v5 integerValue];

  if (v6 <= 0x15 && ((0x3BC0E7u >> v6) & 1) != 0)
  {
    v7 = qword_18A67BD10[v6];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._eventEnvironment);
    }

    else
    {
      WeakRetained = 0;
    }

    v9 = WeakRetained;
    [(UIEventEnvironment *)WeakRetained _sendRemoteControlEvent:v7];
  }
}

@end