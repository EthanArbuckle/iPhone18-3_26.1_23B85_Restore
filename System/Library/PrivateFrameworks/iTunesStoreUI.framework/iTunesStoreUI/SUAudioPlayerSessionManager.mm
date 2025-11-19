@interface SUAudioPlayerSessionManager
+ (id)sessionManager;
- (SUAudioPlayerSessionManager)init;
- (id)audioPlayerForURL:(id)a3;
- (id)endSessionForURL:(id)a3;
- (id)startSessionWithURL:(id)a3;
- (id)stopAllAudioPlayerSessions;
- (void)_audioPlayerStatusChangeNotification:(id)a3;
- (void)dealloc;
@end

@implementation SUAudioPlayerSessionManager

- (SUAudioPlayerSessionManager)init
{
  v4.receiver = self;
  v4.super_class = SUAudioPlayerSessionManager;
  v2 = [(SUAudioPlayerSessionManager *)&v4 init];
  if (v2)
  {
    v2->_sessions = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = SUAudioPlayerSessionManager;
  [(SUAudioPlayerSessionManager *)&v3 dealloc];
}

+ (id)sessionManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SUAudioPlayerSessionManager_sessionManager__block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = a1;
  if (sessionManager_sOnce != -1)
  {
    dispatch_once(&sessionManager_sOnce, block);
  }

  return sessionManager_sManager;
}

id __45__SUAudioPlayerSessionManager_sessionManager__block_invoke()
{
  result = objc_alloc_init(objc_opt_class());
  sessionManager_sManager = result;
  return result;
}

- (id)audioPlayerForURL:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sessions objectForKey:a3];

  return v3;
}

- (id)endSessionForURL:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_sessions objectForKey:?];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"SUAudioPlayerStatusChangeNotification" object:v5];
    [(NSMutableDictionary *)self->_sessions removeObjectForKey:a3];
    [v6 postNotificationName:@"SUAudioPlayerSessionsChangedNotification" object:self];
    if (![(NSMutableDictionary *)self->_sessions count])
    {
      [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    }
  }

  return v5;
}

- (id)startSessionWithURL:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_sessions objectForKey:?];
  if (!v5)
  {
    v5 = [[SUAudioPlayer alloc] initWithURL:a3];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__audioPlayerStatusChangeNotification_ name:@"SUAudioPlayerStatusChangeNotification" object:v5];
    if (![(NSMutableDictionary *)self->_sessions count])
    {
      [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    }

    [(NSMutableDictionary *)self->_sessions setObject:v5 forKey:a3];
    [v6 postNotificationName:@"SUAudioPlayerSessionsChangedNotification" object:self];
  }

  return v5;
}

- (id)stopAllAudioPlayerSessions
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSMutableDictionary *)self->_sessions count])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    sessions = self->_sessions;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__SUAudioPlayerSessionManager_stopAllAudioPlayerSessions__block_invoke;
    v7[3] = &unk_1E8167028;
    v7[4] = v4;
    v7[5] = self;
    v7[6] = v3;
    [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v7];
    [(NSMutableDictionary *)self->_sessions removeAllObjects];
    [v4 postNotificationName:@"SUAudioPlayerSessionsChangedNotification" object:self];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  }

  return v3;
}

uint64_t __57__SUAudioPlayerSessionManager_stopAllAudioPlayerSessions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) removeObserver:*(a1 + 40) name:@"SUAudioPlayerStatusChangeNotification" object:a3];
  [*(a1 + 48) addObject:a3];

  return [a3 stop];
}

- (void)_audioPlayerStatusChangeNotification:(id)a3
{
  v4 = [a3 object];
  if (([objc_msgSend(v4 "playerStatus")] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v5 = [v4 URL];

    [(SUAudioPlayerSessionManager *)self endSessionForURL:v5];
  }
}

@end