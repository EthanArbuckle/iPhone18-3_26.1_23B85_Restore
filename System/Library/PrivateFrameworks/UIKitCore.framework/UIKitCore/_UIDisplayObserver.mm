@interface _UIDisplayObserver
+ (id)sharedObserver;
- (void)connectDisplayWithConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
@end

@implementation _UIDisplayObserver

+ (id)sharedObserver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36___UIDisplayObserver_sharedObserver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49E1B8 != -1)
  {
    dispatch_once(&qword_1ED49E1B8, block);
  }

  v2 = _MergedGlobals_1119;

  return v2;
}

- (void)connectDisplayWithConfiguration:(id)configuration
{
  v3 = UIApp;
  configurationCopy = configuration;
  +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", configurationCopy, [v3 _hasCalledRunWithMainScene]);
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  configurationCopy = configuration;
  if (([configurationCopy isCarDisplay] & 1) != 0 || objc_msgSend(configurationCopy, "isCarInstrumentsDisplay"))
  {
    pendingCarDisplays = [(_UIDisplayObserver *)self pendingCarDisplays];

    if (!pendingCarDisplays)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(_UIDisplayObserver *)self setPendingCarDisplays:v10];
    }

    pendingCarDisplays2 = [(_UIDisplayObserver *)self pendingCarDisplays];
    [pendingCarDisplays2 setObject:configurationCopy forKeyedSubscript:identityCopy];

    v12 = +[_UICarPlaySession sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74___UIDisplayObserver_displayMonitor_didConnectIdentity_withConfiguration___block_invoke;
    v13[3] = &unk_1E710ACB8;
    v13[4] = self;
    v14 = identityCopy;
    [(_UICarPlaySession *)v12 getCurrentSessionWithTimeout:v13 completion:2.0];
  }

  else
  {
    [(_UIDisplayObserver *)self connectDisplayWithConfiguration:configurationCopy];
  }
}

- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  configurationCopy = configuration;
  if ((([configurationCopy isCarDisplay] & 1) != 0 || objc_msgSend(configurationCopy, "isCarInstrumentsDisplay")) && (-[_UIDisplayObserver pendingCarDisplays](self, "pendingCarDisplays"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", identityCopy), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    pendingCarDisplays = [(_UIDisplayObserver *)self pendingCarDisplays];
    [pendingCarDisplays setObject:configurationCopy forKeyedSubscript:identityCopy];
  }

  else
  {
    pendingCarDisplays = [UIScreen _screenWithFBSDisplayIdentity:identityCopy];
    [pendingCarDisplays _updateDisplayConfiguration:configurationCopy];
  }
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  identityCopy = identity;
  pendingCarDisplays = [(_UIDisplayObserver *)self pendingCarDisplays];
  [pendingCarDisplays setObject:0 forKeyedSubscript:identityCopy];

  [UIScreen _FBSDisplayIdentityDisconnected:identityCopy];
}

@end