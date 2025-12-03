@interface SiriSharedUIReplayUtilityWrapper
+ (BOOL)shouldSkipAutoDismissal;
+ (id)sharedInstance;
+ (void)registerReplayCallback:(id)callback;
+ (void)replayAll:(unint64_t)all from:(id)from completion:(id)completion;
+ (void)replayAt:(unint64_t)at from:(id)from;
+ (void)setReplayEnabled:(BOOL)enabled;
+ (void)setReplayOverridePath:(id)path;
- (BOOL)hasContentAtPoint:(CGPoint)point;
- (BOOL)isReplayTestEnv;
- (BOOL)isReplaying;
- (BOOL)isSiriDetached;
- (void)addReplayControlTo:(id)to;
- (void)receivedReplayCommand:(id)command;
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
    shouldSkipAutoDismissal = [v3 shouldSkipAutoDismissal];

    LOBYTE(v2) = shouldSkipAutoDismissal;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SiriSharedUIReplayUtilityWrapper_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (void)replayAll:(unint64_t)all from:(id)from completion:(id)completion
{
  fromCopy = from;
  completionCopy = completion;
  if (AFIsInternalInstall())
  {
    v8 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v8 replayAllWithIntervalSeconds:all recordingUrl:fromCopy completion:completionCopy];
  }
}

+ (void)replayAt:(unint64_t)at from:(id)from
{
  fromCopy = from;
  if (AFIsInternalInstall())
  {
    v5 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v5 replayAtIndex:at recordingUrl:fromCopy];
  }
}

+ (void)setReplayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:enabledCopy forKey:@"Replay Enabled"];
  v5 = sharedInstance;
  if (!enabledCopy || sharedInstance)
  {
    if (enabledCopy)
    {
      goto LABEL_7;
    }

    sharedInstance = 0;

    v7 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v7 removeReplayControl];
  }

  else
  {
    v6 = objc_alloc_init(self);
    v7 = sharedInstance;
    sharedInstance = v6;
  }

LABEL_7:
}

+ (void)setReplayOverridePath:(id)path
{
  v3 = MEMORY[0x277CBEBD0];
  pathCopy = path;
  standardUserDefaults = [v3 standardUserDefaults];
  v5 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility replayOverridePathKey];
  [standardUserDefaults setObject:pathCopy forKey:v5];
}

+ (void)registerReplayCallback:(id)callback
{
  callbackCopy = callback;
  if (AFIsInternalInstall())
  {
    v3 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
    [v3 registerWithReplayCallback:callbackCopy];
  }
}

- (void)receivedReplayCommand:(id)command
{
  commandCopy = command;
  v4 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v4 received:commandCopy];
}

- (void)addReplayControlTo:(id)to
{
  toCopy = to;
  v4 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v4 addReplayControlTo:toCopy];
}

- (BOOL)hasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  v6 = [v5 hasContentAt:{x, y}];

  return v6;
}

- (BOOL)isReplaying
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  isReplaying = [v2 isReplaying];

  return isReplaying;
}

- (BOOL)isSiriDetached
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  isSiriDetached = [v2 isSiriDetached];

  return isSiriDetached;
}

- (void)setIsSiriDetached
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v2 setIsSiriDetached];
}

- (BOOL)isReplayTestEnv
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  isReplayTestEnv = [v2 isReplayTestEnv];

  return isReplayTestEnv;
}

- (void)replayWithTestEnviormentData
{
  v2 = +[_TtC12SiriSharedUI25SiriSharedUIReplayUtility shared];
  [v2 replayWithTestEnviormentData];
}

@end