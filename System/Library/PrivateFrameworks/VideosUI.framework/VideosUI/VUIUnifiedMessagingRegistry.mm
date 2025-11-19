@interface VUIUnifiedMessagingRegistry
+ (id)sharedInstance;
- (BOOL)_hasActiveButtonsNoLock;
- (BOOL)hasActiveButtons;
- (VUIUnifiedMessagingRegistry)init;
- (void)_notifyButtonsChanged;
- (void)_notifyButtonsChangedAction;
- (void)postNotificationFavoriteTeamsDidChange;
- (void)register:(int64_t)a3 newTeamsAdded:(BOOL)a4 teamsRemoved:(BOOL)a5;
- (void)registerDownloadButton:(id)a3;
- (void)unRegisterDownloadButton:(id)a3;
@end

@implementation VUIUnifiedMessagingRegistry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[VUIUnifiedMessagingRegistry sharedInstance];
  }

  v3 = sharedInstance__registry;

  return v3;
}

void __45__VUIUnifiedMessagingRegistry_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIUnifiedMessagingRegistry);
  v1 = sharedInstance__registry;
  sharedInstance__registry = v0;
}

- (VUIUnifiedMessagingRegistry)init
{
  v6.receiver = self;
  v6.super_class = VUIUnifiedMessagingRegistry;
  v2 = [(VUIUnifiedMessagingRegistry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    buttonViews = v2->_buttonViews;
    v2->_buttonViews = v3;
  }

  return v2;
}

- (BOOL)hasActiveButtons
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VUIUnifiedMessagingRegistry *)v2 _hasActiveButtonsNoLock];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_hasActiveButtonsNoLock
{
  v3 = [(VUIUnifiedMessagingRegistry *)self buttonViews];
  [v3 compact];

  v4 = [(VUIUnifiedMessagingRegistry *)self buttonViews];
  LOBYTE(v3) = [v4 count] != 0;

  return v3;
}

- (void)registerDownloadButton:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(VUIUnifiedMessagingRegistry *)v4 _hasActiveButtonsNoLock];
  v6 = [(VUIUnifiedMessagingRegistry *)v4 buttonViews];
  [v6 addPointer:v7];

  objc_sync_exit(v4);
  if (!v5)
  {
    [(VUIUnifiedMessagingRegistry *)v4 _notifyButtonsChanged];
  }
}

- (void)unRegisterDownloadButton:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  for (i = 0; i < [(NSPointerArray *)v4->_buttonViews count]; ++i)
  {
    v6 = [(NSPointerArray *)v4->_buttonViews pointerAtIndex:i];

    if (v6 == v8)
    {
      if (i != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSPointerArray *)v4->_buttonViews removePointerAtIndex:i];
      }

      break;
    }
  }

  v7 = [(VUIUnifiedMessagingRegistry *)v4 _hasActiveButtonsNoLock];
  objc_sync_exit(v4);

  if (!v7)
  {
    [(VUIUnifiedMessagingRegistry *)v4 _notifyButtonsChanged];
  }
}

- (void)_notifyButtonsChanged
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifyButtonsChangedAction object:self];

  [(VUIUnifiedMessagingRegistry *)self performSelector:sel__notifyButtonsChangedAction withObject:self afterDelay:0.5];
}

- (void)_notifyButtonsChangedAction
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"VUIUnifiedMessagingRegistryActiveButtonsDidChange" object:self];
}

- (void)register:(int64_t)a3 newTeamsAdded:(BOOL)a4 teamsRemoved:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  obj = self;
  objc_sync_enter(obj);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  hasFavoriteTeams = obj->_hasFavoriteTeams;
  obj->_hasFavoriteTeams = v8;

  if (v6)
  {
    obj->_newTeamsAdded = 1;
  }

  if (v5)
  {
    obj->_teamsRemoved = 1;
  }

  objc_sync_exit(obj);
}

- (void)postNotificationFavoriteTeamsDidChange
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v7[0] = @"VUIUnifiedMessagingRegistryFavoriteTeamsAdded";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:v2->_newTeamsAdded];
  v7[1] = @"VUIUnifiedMessagingRegistryFavoriteTeamsRemoved";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v2->_teamsRemoved];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VUIUnifiedMessagingRegistryHasFavoriteTeamsDidChange" object:v5];

  *&v2->_newTeamsAdded = 0;
  objc_sync_exit(v2);
}

@end