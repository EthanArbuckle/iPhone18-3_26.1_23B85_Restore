@interface SiriSharedUIReplayUtilityWrapper
+ (BOOL)shouldSkipAutoDismissal;
+ (id)sharedInstance;
+ (void)registerReplayCallback:(id)a3;
+ (void)replayAll:(unint64_t)a3 from:(id)a4 completion:(id)a5;
+ (void)replayAt:(unint64_t)a3 from:(id)a4;
+ (void)setReplayEnabled:(BOOL)a3;
+ (void)setReplayOverridePath:(id)a3;
- (BOOL)hasContentAtPoint:(CGPoint)a3;
- (BOOL)isReplayTestEnv;
- (BOOL)isReplaying;
- (BOOL)isSiriDetached;
- (void)addReplayControlTo:(id)a3;
- (void)receivedReplayCommand:(id)a3;
- (void)replayWithTestEnviormentData;
- (void)setIsSiriDetached;
@end

@implementation SiriSharedUIReplayUtilityWrapper

+ (BOOL)shouldSkipAutoDismissal
{
  v2 = AFIsInternalInstall();
  if (v2)
  {
    v3 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    v4 = [v3 shouldSkipAutoDismissal];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SiriSharedUIReplayUtilityWrapper_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance;

  return v2;
}

uint64_t __50__SiriSharedUIReplayUtilityWrapper_sharedInstance__block_invoke(uint64_t a1)
{
  if (AFIsInternalInstall())
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 objectForKey:@"Replay Enabled"];
    v4 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    v5 = [v4 isReplayTestEnv];

    if (v3)
    {
      if (([v3 BOOLValue] | v5))
      {
LABEL_4:

        v6 = objc_alloc_init(*(a1 + 32));
        goto LABEL_8;
      }
    }

    else if (v5)
    {
      goto LABEL_4;
    }
  }

  v6 = 0;
LABEL_8:
  sharedInstance = v6;

  return MEMORY[0x2821F96F8]();
}

+ (void)replayAll:(unint64_t)a3 from:(id)a4 completion:(id)a5
{
  v9 = a4;
  v7 = a5;
  if (AFIsInternalInstall())
  {
    v8 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v8 replayAllWithIntervalSeconds:a3 recordingUrl:v9 completion:v7];
  }
}

+ (void)replayAt:(unint64_t)a3 from:(id)a4
{
  v6 = a4;
  if (AFIsInternalInstall())
  {
    v5 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v5 replayAtIndex:a3 recordingUrl:v6];
  }
}

+ (void)setReplayEnabled:(BOOL)a3
{
  v3 = a3;
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setBool:v3 forKey:@"Replay Enabled"];
  v5 = sharedInstance;
  if (!v3 || sharedInstance)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    sharedInstance = 0;

    v7 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v7 removeReplayControl];
  }

  else
  {
    v6 = objc_alloc_init(a1);
    v7 = sharedInstance;
    sharedInstance = v6;
  }

LABEL_7:
}

+ (void)setReplayOverridePath:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v6 = [v3 standardUserDefaults];
  v5 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility replayOverridePathKey];
  [v6 setObject:v4 forKey:v5];
}

+ (void)registerReplayCallback:(id)a3
{
  v4 = a3;
  if (AFIsInternalInstall())
  {
    v3 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v3 registerWithReplayCallback:v4];
  }
}

- (void)receivedReplayCommand:(id)a3
{
  v3 = a3;
  v4 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v4 received:v3];
}

- (void)addReplayControlTo:(id)a3
{
  v3 = a3;
  v4 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v4 addReplayControlTo:v3];
}

- (BOOL)hasContentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  v6 = [v5 hasContentAt:{x, y}];

  return v6;
}

- (BOOL)isReplaying
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  v3 = [v2 isReplaying];

  return v3;
}

- (BOOL)isSiriDetached
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  v3 = [v2 isSiriDetached];

  return v3;
}

- (void)setIsSiriDetached
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v2 setIsSiriDetached];
}

- (BOOL)isReplayTestEnv
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  v3 = [v2 isReplayTestEnv];

  return v3;
}

- (void)replayWithTestEnviormentData
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v2 replayWithTestEnviormentData];
}

@end