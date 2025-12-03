@interface UIRemoteControlEvent
- (id)_allWindows;
- (id)_init;
- (void)_simpleRemoteActionNotification:(id)notification;
- (void)dealloc;
@end

@implementation UIRemoteControlEvent

- (id)_init
{
  v5.receiver = self;
  v5.super_class = UIRemoteControlEvent;
  _init = [(UIEvent *)&v5 _init];
  if (_init)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:_init selector:sel__simpleRemoteActionNotification_ name:@"UIApplicationSimpleRemoteActionNotification" object:UIApp];
  }

  return _init;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationSimpleRemoteActionNotification" object:UIApp];

  v4.receiver = self;
  v4.super_class = UIRemoteControlEvent;
  [(UIEvent *)&v4 dealloc];
}

- (id)_allWindows
{
  keyWindow = [UIApp keyWindow];
  if (keyWindow)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:keyWindow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_simpleRemoteActionNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"UIApplicationSimpleRemoteActionType"];
  integerValue = [v5 integerValue];

  if (integerValue <= 0x15 && ((0x3BC0E7u >> integerValue) & 1) != 0)
  {
    v7 = qword_18A67BD10[integerValue];
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