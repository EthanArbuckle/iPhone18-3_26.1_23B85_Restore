@interface VUIPlayerValidationManager
+ (id)sharedInstance;
- (id)_init;
- (void)addReferenceForPlayer:(id)a3;
- (void)removeReferenceForPlayer:(id)a3 stoppingIfNeeded:(BOOL)a4;
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
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    playerCounts = v2->_playerCounts;
    v2->_playerCounts = v3;
  }

  return v2;
}

- (void)addReferenceForPlayer:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VUIPlayerValidationManager *)self playerCounts];
    v6 = [v5 objectForKey:v4];
    v7 = v6;
    v8 = &unk_1F5E5CF48;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = MEMORY[0x1E696AD98];
    v11 = [v9 intValue];

    v13 = [v10 numberWithInt:(v11 + 1)];
    v12 = [(VUIPlayerValidationManager *)self playerCounts];
    [v12 setObject:v13 forKey:v4];
  }
}

- (void)removeReferenceForPlayer:(id)a3 stoppingIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v20 = v6;
    v7 = [(VUIPlayerValidationManager *)self playerCounts];
    v8 = [v7 objectForKey:v20];
    v9 = v8;
    v10 = &unk_1F5E5CF48;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = MEMORY[0x1E696AD98];
    v13 = [v11 intValue];

    v14 = [v12 numberWithInt:(v13 - 1)];
    v15 = [v14 intValue];
    v16 = [(VUIPlayerValidationManager *)self playerCounts];
    v17 = v16;
    if (v15 <= 0)
    {
      [v16 removeObjectForKey:v20];

      if (v4)
      {
        v18 = [v20 state];
        v19 = [MEMORY[0x1E69D5A40] stopped];

        if (v18 != v19)
        {
          [v20 stop];
        }

        [v20 invalidate];
      }
    }

    else
    {
      [v16 setObject:v14 forKey:v20];
    }

    v6 = v20;
  }
}

@end