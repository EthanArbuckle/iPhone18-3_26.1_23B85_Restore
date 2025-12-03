@interface VUINowPlayingObserver
- (VUINowPlayingObservation)latestObservation;
- (VUINowPlayingObserver)init;
- (VUINowPlayingObserverDelegate)delegate;
- (void)_handleNowPlayingAppDidChangeNotification:(id)notification;
- (void)_handleNowPlayingAppIsPlayingDidChangeNotification:(id)notification;
- (void)_notifyDelegateLatestObservationDidChange:(id)change;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_updateLatestObservation;
- (void)_updateLatestObservationWithBundleIdentifier:(id)identifier playbackState:(unsigned int)state;
- (void)dealloc;
- (void)setLatestObservation:(id)observation;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation VUINowPlayingObserver

- (VUINowPlayingObserver)init
{
  v6.receiver = self;
  v6.super_class = VUINowPlayingObserver;
  v2 = [(VUINowPlayingObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.videosui.VUINowPlayingObserver.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v2->_serialProcessingDispatchQueue;
    v2->_serialProcessingDispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(VUINowPlayingObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = VUINowPlayingObserver;
  [(VUINowPlayingObserver *)&v3 dealloc];
}

- (void)startObserving
{
  objc_initWeak(&location, self);
  serialProcessingDispatchQueue = [(VUINowPlayingObserver *)self serialProcessingDispatchQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__VUINowPlayingObserver_startObserving__block_invoke;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialProcessingDispatchQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__VUINowPlayingObserver_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained isObserving];
    v2 = v4;
    if ((v3 & 1) == 0)
    {
      [v4 setObserving:1];
      [v4 _startObserving];
      v2 = v4;
    }
  }
}

- (void)stopObserving
{
  objc_initWeak(&location, self);
  serialProcessingDispatchQueue = [(VUINowPlayingObserver *)self serialProcessingDispatchQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__VUINowPlayingObserver_stopObserving__block_invoke;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialProcessingDispatchQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__VUINowPlayingObserver_stopObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained isObserving];
    v2 = v4;
    if (v3)
    {
      [v4 setObserving:0];
      [v4 _stopObserving];
      v2 = v4;
    }
  }
}

- (VUINowPlayingObservation)latestObservation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  serialProcessingDispatchQueue = [(VUINowPlayingObserver *)self serialProcessingDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__VUINowPlayingObserver_latestObservation__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialProcessingDispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_handleNowPlayingAppDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  serialProcessingDispatchQueue = [(VUINowPlayingObserver *)self serialProcessingDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__VUINowPlayingObserver__handleNowPlayingAppDidChangeNotification___block_invoke;
  v6[3] = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  dispatch_async(serialProcessingDispatchQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__VUINowPlayingObserver__handleNowPlayingAppDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLatestObservation];
}

- (void)_handleNowPlayingAppIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  serialProcessingDispatchQueue = [(VUINowPlayingObserver *)self serialProcessingDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__VUINowPlayingObserver__handleNowPlayingAppIsPlayingDidChangeNotification___block_invoke;
  v6[3] = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  dispatch_async(serialProcessingDispatchQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __76__VUINowPlayingObserver__handleNowPlayingAppIsPlayingDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLatestObservation];
}

- (void)setLatestObservation:(id)observation
{
  observationCopy = observation;
  v6 = self->_latestObservation;
  v7 = observationCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(VUINowPlayingObservation *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_latestObservation, observation);
    [(VUINowPlayingObserver *)self _notifyDelegateLatestObservationDidChange:v9];
  }

LABEL_9:
}

- (void)_startObserving
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleNowPlayingAppDidChangeNotification_ name:*MEMORY[0x1E69B0E00] object:0];
  [defaultCenter addObserver:self selector:sel__handleNowPlayingAppIsPlayingDidChangeNotification_ name:*MEMORY[0x1E69B0E08] object:0];
  MRMediaRemoteSetWantsNowPlayingNotifications();
  [(VUINowPlayingObserver *)self _updateLatestObservation];
}

- (void)_stopObserving
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  MRMediaRemoteSetWantsNowPlayingNotifications();

  [(VUINowPlayingObserver *)self setLatestObservation:0];
}

- (void)_updateLatestObservation
{
  v3 = ([(VUINowPlayingObserver *)self updateObservationContext]+ 1);
  [(VUINowPlayingObserver *)self setUpdateObservationContext:v3];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__VUINowPlayingObserver__updateLatestObservation__block_invoke;
  aBlock[3] = &unk_1E8734D58;
  objc_copyWeak(v8, &location);
  v8[1] = v3;
  v4 = _Block_copy(aBlock);
  serialProcessingDispatchQueue = [(VUINowPlayingObserver *)self serialProcessingDispatchQueue];
  v6 = v4;
  MRMediaRemoteGetNowPlayingClient();

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __49__VUINowPlayingObserver__updateLatestObservation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    if (v7 == [WeakRetained updateObservationContext])
    {
      [v6 _updateLatestObservationWithBundleIdentifier:v8 playbackState:a3];
    }
  }
}

void __49__VUINowPlayingObserver__updateLatestObservation__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MRNowPlayingClientGetBundleIdentifier();
    v6 = *(a1 + 40);
    v4 = v3;
    MRMediaRemoteGetPlaybackStateForClient();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)_updateLatestObservationWithBundleIdentifier:(id)identifier playbackState:(unsigned int)state
{
  if (identifier)
  {
    v5 = state < 6;
    v6 = 0x26u >> state;
    identifierCopy = identifier;
    v8 = [[VUINowPlayingObservation alloc] initWithBundleIdentifier:identifierCopy isPlaying:v5 & v6];
  }

  else
  {
    v8 = 0;
  }

  [(VUINowPlayingObserver *)self setLatestObservation:v8];
}

- (void)_notifyDelegateLatestObservationDidChange:(id)change
{
  changeCopy = change;
  delegate = [(VUINowPlayingObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__VUINowPlayingObserver__notifyDelegateLatestObservationDidChange___block_invoke;
    v7[3] = &unk_1E8730198;
    v8 = delegate;
    objc_copyWeak(&v10, &location);
    v9 = changeCopy;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __67__VUINowPlayingObserver__notifyDelegateLatestObservationDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 nowPlayingObserver:WeakRetained latestObservationDidChange:*(a1 + 40)];
}

- (VUINowPlayingObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end