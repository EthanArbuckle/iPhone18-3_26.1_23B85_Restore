@interface VUIUnifiedMessagingRegistry
+ (id)sharedInstance;
- (BOOL)_hasActiveButtonsNoLock;
- (BOOL)hasActiveButtons;
- (VUIUnifiedMessagingRegistry)init;
- (void)_notifyButtonsChanged;
- (void)_notifyButtonsChangedAction;
- (void)postNotificationFavoriteTeamsDidChange;
- (void)register:(int64_t)register newTeamsAdded:(BOOL)added teamsRemoved:(BOOL)removed;
- (void)registerDownloadButton:(id)button;
- (void)unRegisterDownloadButton:(id)button;
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
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    buttonViews = v2->_buttonViews;
    v2->_buttonViews = weakObjectsPointerArray;
  }

  return v2;
}

- (BOOL)hasActiveButtons
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _hasActiveButtonsNoLock = [(VUIUnifiedMessagingRegistry *)selfCopy _hasActiveButtonsNoLock];
  objc_sync_exit(selfCopy);

  return _hasActiveButtonsNoLock;
}

- (BOOL)_hasActiveButtonsNoLock
{
  buttonViews = [(VUIUnifiedMessagingRegistry *)self buttonViews];
  [buttonViews compact];

  buttonViews2 = [(VUIUnifiedMessagingRegistry *)self buttonViews];
  LOBYTE(buttonViews) = [buttonViews2 count] != 0;

  return buttonViews;
}

- (void)registerDownloadButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _hasActiveButtonsNoLock = [(VUIUnifiedMessagingRegistry *)selfCopy _hasActiveButtonsNoLock];
  buttonViews = [(VUIUnifiedMessagingRegistry *)selfCopy buttonViews];
  [buttonViews addPointer:buttonCopy];

  objc_sync_exit(selfCopy);
  if (!_hasActiveButtonsNoLock)
  {
    [(VUIUnifiedMessagingRegistry *)selfCopy _notifyButtonsChanged];
  }
}

- (void)unRegisterDownloadButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  for (i = 0; i < [(NSPointerArray *)selfCopy->_buttonViews count]; ++i)
  {
    v6 = [(NSPointerArray *)selfCopy->_buttonViews pointerAtIndex:i];

    if (v6 == buttonCopy)
    {
      if (i != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSPointerArray *)selfCopy->_buttonViews removePointerAtIndex:i];
      }

      break;
    }
  }

  _hasActiveButtonsNoLock = [(VUIUnifiedMessagingRegistry *)selfCopy _hasActiveButtonsNoLock];
  objc_sync_exit(selfCopy);

  if (!_hasActiveButtonsNoLock)
  {
    [(VUIUnifiedMessagingRegistry *)selfCopy _notifyButtonsChanged];
  }
}

- (void)_notifyButtonsChanged
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifyButtonsChangedAction object:self];

  [(VUIUnifiedMessagingRegistry *)self performSelector:sel__notifyButtonsChangedAction withObject:self afterDelay:0.5];
}

- (void)_notifyButtonsChangedAction
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIUnifiedMessagingRegistryActiveButtonsDidChange" object:self];
}

- (void)register:(int64_t)register newTeamsAdded:(BOOL)added teamsRemoved:(BOOL)removed
{
  removedCopy = removed;
  addedCopy = added;
  obj = self;
  objc_sync_enter(obj);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:register];
  hasFavoriteTeams = obj->_hasFavoriteTeams;
  obj->_hasFavoriteTeams = v8;

  if (addedCopy)
  {
    obj->_newTeamsAdded = 1;
  }

  if (removedCopy)
  {
    obj->_teamsRemoved = 1;
  }

  objc_sync_exit(obj);
}

- (void)postNotificationFavoriteTeamsDidChange
{
  v8[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7[0] = @"VUIUnifiedMessagingRegistryFavoriteTeamsAdded";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_newTeamsAdded];
  v7[1] = @"VUIUnifiedMessagingRegistryFavoriteTeamsRemoved";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_teamsRemoved];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIUnifiedMessagingRegistryHasFavoriteTeamsDidChange" object:v5];

  *&selfCopy->_newTeamsAdded = 0;
  objc_sync_exit(selfCopy);
}

@end