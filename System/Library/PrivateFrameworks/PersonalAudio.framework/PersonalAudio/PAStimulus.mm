@interface PAStimulus
+ (id)louderSinStimulus;
+ (id)musicStimulus;
+ (id)sinStimulus;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPlaying;
- (PAStimulus)initWithFile:(id)a3;
- (void)audioSessionWasInterrupted:(id)a3;
- (void)calculateFFTForBuffer:(id)a3;
- (void)play;
- (void)rampVolumeUp:(BOOL)a3;
- (void)registerListener:(id)a3 forBucketCount:(unint64_t)a4;
- (void)stop;
- (void)unregisterListener;
@end

@implementation PAStimulus

+ (id)sinStimulus
{
  if (sinStimulus_onceToken != -1)
  {
    +[PAStimulus sinStimulus];
  }

  v3 = sinStimulus_SIN;

  return v3;
}

void __25__PAStimulus_sinStimulus__block_invoke()
{
  v0 = paBundle();
  v5 = [v0 pathForResource:@"Enrollment_1" ofType:@"mp3"];

  v1 = [PAStimulus alloc];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v3 = [(PAStimulus *)v1 initWithFile:v2];
  v4 = sinStimulus_SIN;
  sinStimulus_SIN = v3;

  [sinStimulus_SIN setLevelMultiplier:10.0];
}

+ (id)louderSinStimulus
{
  if (louderSinStimulus_onceToken != -1)
  {
    +[PAStimulus louderSinStimulus];
  }

  v3 = louderSinStimulus_SIN;

  return v3;
}

void __31__PAStimulus_louderSinStimulus__block_invoke()
{
  v0 = paBundle();
  v5 = [v0 pathForResource:@"Enrollment_1+15dB" ofType:@"mp3"];

  v1 = [PAStimulus alloc];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v3 = [(PAStimulus *)v1 initWithFile:v2];
  v4 = louderSinStimulus_SIN;
  louderSinStimulus_SIN = v3;

  [louderSinStimulus_SIN setLevelMultiplier:10.0];
}

+ (id)musicStimulus
{
  if (musicStimulus_onceToken != -1)
  {
    +[PAStimulus musicStimulus];
  }

  v3 = musicStimulus_MUSIC;

  return v3;
}

void __27__PAStimulus_musicStimulus__block_invoke()
{
  v0 = paBundle();
  v5 = [v0 pathForResource:@"Enrollment_2" ofType:@"caf"];

  v1 = [PAStimulus alloc];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v3 = [(PAStimulus *)v1 initWithFile:v2];
  v4 = musicStimulus_MUSIC;
  musicStimulus_MUSIC = v3;

  [musicStimulus_MUSIC setRampStep:0.3];
}

- (PAStimulus)initWithFile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PAStimulus;
  v5 = [(PAStimulus *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(PAStimulus *)v5 setFilePath:v4];
    v7 = objc_alloc_init(MEMORY[0x277CE6950]);
    timer = v6->_timer;
    v6->_timer = v7;

    *&v6->_levelMultiplier = xmmword_25E45C5B0;
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel_audioSessionWasInterrupted_ name:*MEMORY[0x277CB8068] object:0];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 filePath];
    v6 = [(PAStimulus *)self filePath];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)audioSessionWasInterrupted:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:*MEMORY[0x277CB8080]];
  v6 = [v5 intValue];

  if (v6 == 1)
  {

    [(PAStimulus *)self stop];
  }
}

- (void)calculateFFTForBuffer:(id)a3
{
  v4 = a3;
  [(PAStimulus *)self levelMultiplier];
  v5 = [v4 magnitudesWithLevelMultiplier:self->_bucketCount count:?];

  v7 = [v5 mutableCopy];
  if ([v7 count] >= 3)
  {
    [v7 removeObjectsInRange:{0, 2}];
  }

  stimulusMagnitudesCallback = self->_stimulusMagnitudesCallback;
  if (stimulusMagnitudesCallback)
  {
    stimulusMagnitudesCallback[2](stimulusMagnitudesCallback, v7);
  }

  MEMORY[0x2821F96F8]();
}

- (void)play
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E445000, a2, OS_LOG_TYPE_ERROR, "Error starting PAStimulus: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPlaying
{
  v3 = [(PAStimulus *)self audioPlayerNode];
  if ([v3 isPlaying])
  {
    v4 = !self->_ramping;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)rampVolumeUp:(BOOL)a3
{
  timer = self->_timer;
  rampStep = self->_rampStep;
  v5[1] = 3221225472;
  v5[0] = MEMORY[0x277D85DD0];
  v5[2] = __27__PAStimulus_rampVolumeUp___block_invoke;
  v5[3] = &unk_279A1CFF0;
  if (!a3)
  {
    rampStep = rampStep * 0.5;
  }

  v5[4] = self;
  v6 = a3;
  [(AXDispatchTimer *)timer afterDelay:v5 processBlock:rampStep];
}

void __27__PAStimulus_rampVolumeUp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioPlayerNode];
  [v2 volume];
  v4 = v3;

  v5 = -0.1;
  if (*(a1 + 40))
  {
    v5 = 0.1;
  }

  v6 = v5 + v4;
  v7 = [*(a1 + 32) audioPlayerNode];
  *&v8 = v6;
  [v7 setVolume:v8];

  v9 = v6 >= 1.0;
  if (!*(a1 + 40))
  {
    v9 = v6 <= 0.0;
  }

  v10 = *(a1 + 32);
  if (v9)
  {
    if (*(a1 + 40))
    {
      v10[24] = 0;
    }

    else
    {
      [v10 unregisterListener];
      v11 = [*(a1 + 32) audioPlayerNode];
      [v11 stop];

      v12 = [*(a1 + 32) engine];
      [v12 stop];
    }
  }

  else
  {

    [v10 rampVolumeUp:?];
  }
}

- (void)stop
{
  [(AXDispatchTimer *)self->_timer cancel];

  [(PAStimulus *)self rampVolumeUp:0];
}

- (void)registerListener:(id)a3 forBucketCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 copy];
  stimulusMagnitudesCallback = self->_stimulusMagnitudesCallback;
  self->_stimulusMagnitudesCallback = v7;

  self->_bucketCount = a4 + 2;
  objc_initWeak(&location, self);
  v9 = [(PAStimulus *)self engine];
  v10 = [v9 mainMixerNode];
  [v10 removeTapOnBus:0];

  v11 = [(PAStimulus *)self engine];
  v12 = [v11 mainMixerNode];
  v13 = [(PAStimulus *)self engine];
  v14 = [v13 mainMixerNode];
  v15 = [v14 outputFormatForBus:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__PAStimulus_registerListener_forBucketCount___block_invoke;
  v16[3] = &unk_279A1D018;
  objc_copyWeak(&v17, &location);
  [v12 installTapOnBus:0 bufferSize:1024 format:v15 block:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __46__PAStimulus_registerListener_forBucketCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained calculateFFTForBuffer:v3];
}

- (void)unregisterListener
{
  v3 = [(PAStimulus *)self engine];
  v2 = [v3 mainMixerNode];
  [v2 removeTapOnBus:0];
}

@end