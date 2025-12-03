@interface SVAudioSession
+ (id)sharedSession;
+ (id)sharedSessionForMode:(int)mode;
+ (id)sharedSilentSession;
- (BOOL)canDeactivateAudioSession;
- (BOOL)needsToSetupAudioSessionCategory;
- (BOOL)shouldActivateAudioSession;
- (SVAudioSession)initWithAudioSession:(id)session;
- (id)desiredAudioSessionConfiguration;
- (void)activateAudioSessionCategory;
- (void)deactivateAudioSessionCategory;
- (void)registerPlaybackControlForPlayer:(id)player withMode:(int)mode;
- (void)removeInterestForPlayer:(id)player;
- (void)setupAudioSessionCategory;
@end

@implementation SVAudioSession

+ (id)sharedSessionForMode:(int)mode
{
  if (mode == 2)
  {
    [self sharedSilentSession];
  }

  else
  {
    [self sharedSession];
  }
  v3 = ;

  return v3;
}

+ (id)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    +[SVAudioSession sharedSession];
  }

  v3 = sharedSession___sharedSession;

  return v3;
}

void __31__SVAudioSession_sharedSession__block_invoke()
{
  v0 = [SVAudioSession alloc];
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  v1 = [(SVAudioSession *)v0 initWithAudioSession:v3];
  v2 = sharedSession___sharedSession;
  sharedSession___sharedSession = v1;
}

+ (id)sharedSilentSession
{
  if (sharedSilentSession_onceToken != -1)
  {
    +[SVAudioSession sharedSilentSession];
  }

  v3 = sharedSilentSession___sharedSilentSession;

  return v3;
}

void __37__SVAudioSession_sharedSilentSession__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CB83F8]) initAuxiliarySession];
  v1 = *MEMORY[0x277CB8020];
  v2 = *MEMORY[0x277CB80A8];
  v13 = 0;
  v3 = [v0 setCategory:v1 mode:v2 routeSharingPolicy:0 options:0 error:&v13];
  v4 = v13;
  v12 = v4;
  [v0 setParticipatesInNowPlayingAppPolicy:0 error:&v12];
  v5 = v12;

  v6 = [SVAudioSession alloc];
  v7 = v6;
  if (v3)
  {
    v8 = [(SVAudioSession *)v6 initWithAudioSession:v0];
    v9 = sharedSilentSession___sharedSilentSession;
    sharedSilentSession___sharedSilentSession = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CB83F8] sharedInstance];
    v10 = [(SVAudioSession *)v7 initWithAudioSession:v9];
    v11 = sharedSilentSession___sharedSilentSession;
    sharedSilentSession___sharedSilentSession = v10;
  }
}

- (SVAudioSession)initWithAudioSession:(id)session
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = SVAudioSession;
  v6 = [(SVAudioSession *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioSession, session);
    v8 = dispatch_semaphore_create(1);
    semaphore = v7->_semaphore;
    v7->_semaphore = v8;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    players = v7->_players;
    v7->_players = weakToStrongObjectsMapTable;

    v12 = objc_alloc_init(SVMediaPlaybackController);
    playbackController = v7->_playbackController;
    v7->_playbackController = v12;
  }

  return v7;
}

- (void)registerPlaybackControlForPlayer:(id)player withMode:(int)mode
{
  if (mode != 2)
  {
    playerCopy = player;
    playbackController = [(SVAudioSession *)self playbackController];
    [playbackController registerPlayer:playerCopy];
  }
}

- (void)removeInterestForPlayer:(id)player
{
  playerCopy = player;
  semaphore = [(SVAudioSession *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  playbackController = [(SVAudioSession *)self playbackController];
  [playbackController unregisterPlayer:playerCopy];

  players = [(SVAudioSession *)self players];
  [players removeObjectForKey:playerCopy];

  [(SVAudioSession *)self setupAudioSessionCategory];
  v8 = dispatch_time(0, 1000000000);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SVAudioSession_removeInterestForPlayer___block_invoke;
  block[3] = &unk_279BC5D18;
  block[4] = self;
  dispatch_after(v8, v9, block);

  semaphore2 = [(SVAudioSession *)self semaphore];
  dispatch_semaphore_signal(semaphore2);
}

- (BOOL)shouldActivateAudioSession
{
  players = [(SVAudioSession *)self players];
  v3 = [players count] != 0;

  return v3;
}

- (BOOL)canDeactivateAudioSession
{
  players = [(SVAudioSession *)self players];
  v3 = [players count] == 0;

  return v3;
}

- (BOOL)needsToSetupAudioSessionCategory
{
  desiredAudioSessionConfiguration = [(SVAudioSession *)self desiredAudioSessionConfiguration];
  v4 = [SVAudioSessionConfiguration alloc];
  audioSession = [(SVAudioSession *)self audioSession];
  category = [audioSession category];
  audioSession2 = [(SVAudioSession *)self audioSession];
  mode = [audioSession2 mode];
  audioSession3 = [(SVAudioSession *)self audioSession];
  v10 = -[SVAudioSessionConfiguration initWithCategory:mode:policy:](v4, "initWithCategory:mode:policy:", category, mode, [audioSession3 routeSharingPolicy]);

  LOBYTE(audioSession3) = [desiredAudioSessionConfiguration isEqualToConfiguration:v10];
  return audioSession3 ^ 1;
}

- (void)setupAudioSessionCategory
{
  if ([(SVAudioSession *)self needsToSetupAudioSessionCategory])
  {
    desiredAudioSessionConfiguration = [(SVAudioSession *)self desiredAudioSessionConfiguration];
    audioSession = [(SVAudioSession *)self audioSession];
    category = [desiredAudioSessionConfiguration category];
    mode = [desiredAudioSessionConfiguration mode];
    v7 = 0;
    [audioSession setCategory:category mode:mode routeSharingPolicy:objc_msgSend(desiredAudioSessionConfiguration options:"routeSharingPolicy") error:{0, &v7}];
  }
}

- (void)activateAudioSessionCategory
{
  if (![(SVAudioSession *)self isAudioSessionActive])
  {
    if ([(SVAudioSession *)self shouldActivateAudioSession])
    {
      audioSession = [(SVAudioSession *)self audioSession];
      v5 = 0;
      v4 = [audioSession setActive:1 error:&v5];

      [(SVAudioSession *)self setAudioSessionActive:v4];
    }
  }
}

- (void)deactivateAudioSessionCategory
{
  semaphore = [(SVAudioSession *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  if ([(SVAudioSession *)self isAudioSessionActive]&& [(SVAudioSession *)self canDeactivateAudioSession])
  {
    audioSession = [(SVAudioSession *)self audioSession];
    v7 = 0;
    v5 = [audioSession setActive:0 error:&v7];

    [(SVAudioSession *)self setAudioSessionActive:v5 ^ 1u];
  }

  semaphore2 = [(SVAudioSession *)self semaphore];
  dispatch_semaphore_signal(semaphore2);
}

- (id)desiredAudioSessionConfiguration
{
  v3 = *MEMORY[0x277CB8020];
  v4 = *MEMORY[0x277CB80A8];
  v5 = MEMORY[0x277CCA940];
  players = [(SVAudioSession *)self players];
  objectEnumerator = [players objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v9 = [v5 setWithArray:allObjects];

  if ([v9 countForObject:&unk_2877C6D30])
  {
    v10 = *MEMORY[0x277CB8030];

    v11 = *MEMORY[0x277CB80E0];
    v12 = 1;
    v3 = v4;
    v4 = *MEMORY[0x277CB80E0];
  }

  else
  {
    v12 = 0;
    if (![v9 countForObject:&unk_2877C6D48])
    {
      goto LABEL_6;
    }

    v11 = *MEMORY[0x277CB8030];
    v10 = *MEMORY[0x277CB8030];
  }

  v13 = v11;

  v3 = v10;
LABEL_6:
  v14 = [[SVAudioSessionConfiguration alloc] initWithCategory:v3 mode:v4 policy:v12];

  return v14;
}

@end