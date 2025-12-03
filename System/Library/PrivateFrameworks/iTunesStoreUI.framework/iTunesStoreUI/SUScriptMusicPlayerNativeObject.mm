@interface SUScriptMusicPlayerNativeObject
- (void)_nowPlayingChangeNotification:(id)notification;
- (void)_playbackStateChangeNotification:(id)notification;
- (void)_volumeChangeNotification:(id)notification;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptMusicPlayerNativeObject

- (void)destroyNativeObject
{
  object = [(SUScriptNativeObject *)self object];
  [object endGeneratingPlaybackNotifications];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6970260] object:object];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6970268] object:object];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6970270] object:object];
  v5.receiver = self;
  v5.super_class = SUScriptMusicPlayerNativeObject;
  [(SUScriptNativeObject *)&v5 destroyNativeObject];
}

- (void)setupNativeObject
{
  object = [(SUScriptNativeObject *)self object];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E6970260];
  [defaultCenter addObserver:self selector:sel__nowPlayingChangeNotification_ name:*MEMORY[0x1E6970260] object:object];
  [defaultCenter addObserver:self selector:sel__playbackStateChangeNotification_ name:*MEMORY[0x1E6970268] object:object];
  [defaultCenter addObserver:self selector:sel__volumeChangeNotification_ name:v5 object:object];
  [object beginGeneratingPlaybackNotifications];
  v6.receiver = self;
  v6.super_class = SUScriptMusicPlayerNativeObject;
  [(SUScriptNativeObject *)&v6 setupNativeObject];
}

- (void)_nowPlayingChangeNotification:(id)notification
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"nowplayingitemchange"];
}

- (void)_playbackStateChangeNotification:(id)notification
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"playbackstatechange"];
}

- (void)_volumeChangeNotification:(id)notification
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"volumechange"];
}

@end