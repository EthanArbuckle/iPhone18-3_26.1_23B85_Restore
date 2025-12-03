@interface TPStatusBarManager
+ (id)sharedInstance;
- (TPStatusBarManager)init;
- (void)dealloc;
- (void)updateCurrentAbbreviatedStatusBarString;
- (void)updateCurrentAbbreviatedStatusBarStringAndSendNotification;
@end

@implementation TPStatusBarManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TPStatusBarManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __36__TPStatusBarManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TPStatusBarManager)init
{
  v6.receiver = self;
  v6.super_class = TPStatusBarManager;
  v2 = [(TPStatusBarManager *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateCurrentAbbreviatedStatusBarStringAndSendNotification name:*MEMORY[0x1E69D8E08] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_updateCurrentAbbreviatedStatusBarStringAndSendNotification name:*MEMORY[0x1E69D8E58] object:0];

    [(TPStatusBarManager *)v2 updateCurrentAbbreviatedStatusBarString];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  callDurationTimer = [(TPStatusBarManager *)self callDurationTimer];
  [callDurationTimer invalidate];

  v5.receiver = self;
  v5.super_class = TPStatusBarManager;
  [(TPStatusBarManager *)&v5 dealloc];
}

- (void)updateCurrentAbbreviatedStatusBarString
{
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  activeVideoCall = [mEMORY[0x1E69D8A58] activeVideoCall];
  if (activeVideoCall)
  {
    incomingVideoCall = activeVideoCall;
  }

  else
  {
    mEMORY[0x1E69D8A58]2 = [MEMORY[0x1E69D8A58] sharedInstance];
    displayedCall = [mEMORY[0x1E69D8A58]2 displayedCall];
    v8 = displayedCall;
    if (displayedCall)
    {
      incomingVideoCall = displayedCall;
    }

    else
    {
      mEMORY[0x1E69D8A58]3 = [MEMORY[0x1E69D8A58] sharedInstance];
      incomingVideoCall = [mEMORY[0x1E69D8A58]3 incomingVideoCall];
    }

    if (!incomingVideoCall)
    {
      v19 = 0;
      goto LABEL_11;
    }
  }

  callDurationString = [incomingVideoCall callDurationString];
  v11 = callDurationString;
  if (callDurationString)
  {
    v12 = callDurationString;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%02d:%02d", 0, 0];
  }

  v19 = v12;

LABEL_11:
  currentAbbreviatedStatusBarString = [(TPStatusBarManager *)self currentAbbreviatedStatusBarString];
  v14 = TUStringsAreEqualOrNil();

  if ((v14 & 1) == 0)
  {
    [(TPStatusBarManager *)self setCurrentAbbreviatedStatusBarString:v19];
    currentAbbreviatedStatusBarString2 = [(TPStatusBarManager *)self currentAbbreviatedStatusBarString];

    callDurationTimer = [(TPStatusBarManager *)self callDurationTimer];
    v17 = callDurationTimer;
    if (currentAbbreviatedStatusBarString2)
    {

      if (!v17)
      {
        v18 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_updateCurrentAbbreviatedStatusBarStringAndSendNotification selector:0 userInfo:1 repeats:1.0];
        [(TPStatusBarManager *)self setCallDurationTimer:v18];
      }
    }

    else
    {
      [callDurationTimer invalidate];

      [(TPStatusBarManager *)self setCallDurationTimer:0];
    }
  }
}

- (void)updateCurrentAbbreviatedStatusBarStringAndSendNotification
{
  [(TPStatusBarManager *)self updateCurrentAbbreviatedStatusBarString];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"TPStatusBarManagerStringChangedNotification" object:self];
}

@end