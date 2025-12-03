@interface VUIPlayerValidationManager
+ (id)sharedInstance;
- (id)_init;
- (void)addReferenceForPlayer:(id)player;
- (void)removeReferenceForPlayer:(id)player stoppingIfNeeded:(BOOL)needed;
@end

@implementation VUIPlayerValidationManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_6 != -1)
  {
    +[VUIPlayerValidationManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_2;

  return v3;
}

void __44__VUIPlayerValidationManager_sharedInstance__block_invoke()
{
  v0 = [[VUIPlayerValidationManager alloc] _init];
  v1 = sharedInstance___sharedInstance_2;
  sharedInstance___sharedInstance_2 = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = VUIPlayerValidationManager;
  v2 = [(VUIPlayerValidationManager *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    playerCounts = v2->_playerCounts;
    v2->_playerCounts = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (void)addReferenceForPlayer:(id)player
{
  if (player)
  {
    playerCopy = player;
    playerCounts = [(VUIPlayerValidationManager *)self playerCounts];
    v6 = [playerCounts objectForKey:playerCopy];
    v7 = v6;
    v8 = &unk_1F5E5CF48;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = MEMORY[0x1E696AD98];
    intValue = [v9 intValue];

    v13 = [v10 numberWithInt:(intValue + 1)];
    playerCounts2 = [(VUIPlayerValidationManager *)self playerCounts];
    [playerCounts2 setObject:v13 forKey:playerCopy];
  }
}

- (void)removeReferenceForPlayer:(id)player stoppingIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  playerCopy = player;
  if (playerCopy)
  {
    v20 = playerCopy;
    playerCounts = [(VUIPlayerValidationManager *)self playerCounts];
    v8 = [playerCounts objectForKey:v20];
    v9 = v8;
    v10 = &unk_1F5E5CF48;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = MEMORY[0x1E696AD98];
    intValue = [v11 intValue];

    v14 = [v12 numberWithInt:(intValue - 1)];
    intValue2 = [v14 intValue];
    playerCounts2 = [(VUIPlayerValidationManager *)self playerCounts];
    v17 = playerCounts2;
    if (intValue2 <= 0)
    {
      [playerCounts2 removeObjectForKey:v20];

      if (neededCopy)
      {
        state = [v20 state];
        stopped = [MEMORY[0x1E69D5A40] stopped];

        if (state != stopped)
        {
          [v20 stop];
        }

        [v20 invalidate];
      }
    }

    else
    {
      [playerCounts2 setObject:v14 forKey:v20];
    }

    playerCopy = v20;
  }
}

@end