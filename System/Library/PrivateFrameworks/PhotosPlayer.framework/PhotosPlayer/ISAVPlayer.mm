@interface ISAVPlayer
+ (BOOL)isAppleInternal;
+ (BOOL)isSpringBoard;
- (ISAVPlayer)init;
- (ISAVPlayer)initWithDispatchQueue:(id)a3;
- (void)_cancelRateCurveRequest;
- (void)_setRate:(float)a3;
- (void)dealloc;
- (void)playToTime:(id *)a3 withInitialRate:(float)a4 overDuration:(double)a5 progressHandler:(id)a6;
- (void)setAllowsPixelBufferPoolSharing:(BOOL)a3;
- (void)setRate:(float)a3;
- (void)setUsesDedicatedNotificationQueueForMediaServices:(BOOL)a3;
@end

@implementation ISAVPlayer

- (void)_cancelRateCurveRequest
{
  [(ISRateCurveRequest *)self->_currentRequest cancel];
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

- (void)playToTime:(id *)a3 withInitialRate:(float)a4 overDuration:(double)a5 progressHandler:(id)a6
{
  v10 = a6;
  [(ISAVPlayer *)self _cancelRateCurveRequest];
  v11 = [ISRateCurveRequest alloc];
  v15 = *a3;
  *&v12 = a4;
  v13 = [(ISRateCurveRequest *)v11 initWithTargetTime:&v15 duration:self initialRate:v10 avPlayer:a5 progressHandler:v12];

  currentRequest = self->_currentRequest;
  self->_currentRequest = v13;

  [(ISRateCurveRequest *)self->_currentRequest start];
}

- (void)_setRate:(float)a3
{
  v3.receiver = self;
  v3.super_class = ISAVPlayer;
  [(ISAVPlayer *)&v3 setRate:?];
}

- (void)setRate:(float)a3
{
  [(ISAVPlayer *)self _cancelRateCurveRequest];
  *&v5 = a3;

  [(ISAVPlayer *)self _setRate:v5];
}

- (void)setAllowsPixelBufferPoolSharing:(BOOL)a3
{
  v3 = objc_opt_class();

  [v3 isAppleInternal];
}

- (void)setUsesDedicatedNotificationQueueForMediaServices:(BOOL)a3
{
  v3 = objc_opt_class();

  [v3 isAppleInternal];
}

- (ISAVPlayer)initWithDispatchQueue:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() isSpringBoard];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PhotosPlayer.disablePrivatePlayerQueue", @"com.apple.mobileslideshow", 0);
  if ((v6 & 1) != 0 || (v8 = AppBooleanValue, [objc_opt_class() isAppleInternal]) && v8)
  {
    v21.receiver = self;
    v21.super_class = ISAVPlayer;
    v9 = [(ISAVPlayer *)&v21 init];
    v10 = 1;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ISAVPlayer;
    v9 = [(ISAVPlayer *)&v20 initWithDispatchQueue:v5];
    v10 = 0;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  objc_storeStrong(&v9->_initializedDispatchQueue, a3);
  if (v10)
  {
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    actualDispatchQueue = v9->_actualDispatchQueue;
    v9->_actualDispatchQueue = v11;
  }

  else
  {
    v14 = v5;
    actualDispatchQueue = v9->_actualDispatchQueue;
    v9->_actualDispatchQueue = v14;
  }

  v15 = +[ISPlayerSettings sharedInstance];
  v19.receiver = v9;
  v19.super_class = ISAVPlayer;
  -[ISAVPlayer setUsesDedicatedNotificationQueueForMediaServices:](&v19, sel_setUsesDedicatedNotificationQueueForMediaServices_, [v15 useDedicatedQueues]);

  if (CFPreferencesGetAppBooleanValue(@"PhotosPlayer.enablePixelBufferPoolSharing", @"com.apple.mobileslideshow", 0))
  {
    v16 = 1;
  }

  else
  {
    v16 = v6;
  }

  if (v16 == 1)
  {
    v18.receiver = v9;
    v18.super_class = ISAVPlayer;
    [(ISAVPlayer *)&v18 setAllowsPixelBufferPoolSharing:1];
  }

  [(ISAVPlayer *)v9 setClosedCaptionDisplayEnabled:0];
LABEL_16:

  return v9;
}

- (ISAVPlayer)init
{
  v5.receiver = self;
  v5.super_class = ISAVPlayer;
  v2 = [(ISAVPlayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_initializedDispatchQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v3->_actualDispatchQueue, v3->_initializedDispatchQueue);
  }

  return v3;
}

- (void)dealloc
{
  [(ISAVPlayer *)self _cancelRateCurveRequest];
  v3.receiver = self;
  v3.super_class = ISAVPlayer;
  [(ISAVPlayer *)&v3 dealloc];
}

+ (BOOL)isSpringBoard
{
  if (isSpringBoard_onceToken != -1)
  {
    dispatch_once(&isSpringBoard_onceToken, &__block_literal_global_3);
  }

  return isSpringBoard_isSpringBoard;
}

void __27__ISAVPlayer_isSpringBoard__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  isSpringBoard_isSpringBoard = [v0 isEqualToString:@"SpringBoard"];
}

+ (BOOL)isAppleInternal
{
  if (isAppleInternal_onceToken != -1)
  {
    dispatch_once(&isAppleInternal_onceToken, &__block_literal_global);
  }

  return isAppleInternal_isAppleInternal;
}

uint64_t __29__ISAVPlayer_isAppleInternal__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isAppleInternal_isAppleInternal = result;
  return result;
}

@end