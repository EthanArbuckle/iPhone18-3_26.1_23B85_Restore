@interface _PXAppleMusicPlayerController
+ (BOOL)canApplyWorkaroundFor80278485;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fetchCurrentTime;
- (NSString)currentClientIdentifier;
- (NSString)windowSceneID;
- (_PXAppleMusicPlayerController)init;
- (double)volume;
- (id)_init;
- (void)_handleDidPrepareToPlayWithExpectation:(id)expectation error:(id)error;
- (void)_handleItemPlaybackDidEnd;
- (void)_handlePlaybackStateDidChange;
- (void)_queue_callPreparationCompletionHandler:(BOOL)handler error:(id)error;
- (void)_queue_handleDidPrepareToPlayWithError:(id)error;
- (void)_queue_handlePreparationExpectationFulfilled:(id)fulfilled success:(BOOL)success error:(id)error;
- (void)_queue_setCurrentClientIdentifier:(id)identifier;
- (void)_queue_setWindowSceneID:(id)d;
- (void)clientIdentifier:(id)identifier becomeCurrentClientIfNeeded:(BOOL)needed performAsyncPlayerTransaction:(id)transaction;
- (void)dealloc;
- (void)pause;
- (void)play;
- (void)prepareToPlayWithCompletionHandler:(id)handler;
- (void)setCurrentClientIdentifier:(id)identifier;
- (void)setIsAtEnd:(BOOL)end;
- (void)setItemWithStoreID:(id)d startTime:(id *)time;
- (void)setPlaybackState:(int64_t)state;
- (void)setVolume:(double)volume;
- (void)setWindowSceneID:(id)d;
@end

@implementation _PXAppleMusicPlayerController

- (void)_handleItemPlaybackDidEnd
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___PXAppleMusicPlayerController__handleItemPlaybackDidEnd__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_handlePlaybackStateDidChange
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___PXAppleMusicPlayerController__handlePlaybackStateDidChange__block_invoke;
  block[3] = &unk_1E774B248;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setIsAtEnd:(BOOL)end
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_isAtEnd != end)
  {
    endCopy = end;
    v5 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"No";
      if (endCopy)
      {
        v6 = @"Yes";
      }

      *buf = 138543618;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Did change IsAtEnd: %@", buf, 0x16u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44___PXAppleMusicPlayerController_setIsAtEnd___block_invoke;
    v7[3] = &unk_1E774C670;
    v7[4] = self;
    v8 = endCopy;
    [(_PXAppleMusicPlayerController *)self performChanges:v7];
  }
}

- (void)setPlaybackState:(int64_t)state
{
  if (self->_playbackState != state)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50___PXAppleMusicPlayerController_setPlaybackState___block_invoke;
    v5[3] = &unk_1E7749D78;
    v5[4] = self;
    v5[5] = state;
    [(_PXAppleMusicPlayerController *)self performChanges:v5];
  }
}

- (void)_queue_callPreparationCompletionHandler:(BOOL)handler error:(id)error
{
  handlerCopy = handler;
  v22[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = MEMORY[0x1E6991F28];
  preparationSignpostID = self->_preparationSignpostID;
  v9 = *MEMORY[0x1E6991C98];
  v21 = *MEMORY[0x1E6991E40];
  v22[0] = @"com.apple.photos.CPAnalytics.appleMusicPreparedToPlay";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v7 endSignpost:preparationSignpostID forEventName:v9 withPayload:v10];

  v11 = MEMORY[0x1E6991F28];
  if (handlerCopy)
  {
    v12 = @"com.apple.photos.CPAnalytics.appleMusicPreparationSucceeded";
  }

  else
  {
    v12 = @"com.apple.photos.CPAnalytics.appleMusicPreparationFailed";
  }

  v19 = *MEMORY[0x1E6991E20];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v20 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v16 = [v15 px_dictionaryBySettingObject:errorCopy forKey:*MEMORY[0x1E6991E28]];
  [v11 sendEvent:v12 withPayload:v16];

  queue_preparationCompletionHandler = self->_queue_preparationCompletionHandler;
  if (queue_preparationCompletionHandler)
  {
    queue_preparationCompletionHandler[2](queue_preparationCompletionHandler, handlerCopy, errorCopy);
    v18 = self->_queue_preparationCompletionHandler;
    self->_queue_preparationCompletionHandler = 0;
  }
}

- (void)_queue_setWindowSceneID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = dCopy;
  if (self->_queue_windowSceneID != dCopy && ![(NSString *)dCopy isEqualToString:?])
  {
    v6 = self->_queue_currentClientIdentifier;
    v7 = [(NSString *)v5 copy];
    queue_windowSceneID = self->_queue_windowSceneID;
    self->_queue_windowSceneID = v7;

    v9 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_queue_windowSceneID;
      v11 = 138543874;
      selfCopy = self;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Did change audio scene ID %{public}@ => %{public}@", &v11, 0x20u);
    }
  }
}

- (void)_queue_setCurrentClientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_queue_currentClientIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v6 = self->_queue_currentClientIdentifier;
    v7 = [(NSString *)v5 copy];
    queue_currentClientIdentifier = self->_queue_currentClientIdentifier;
    self->_queue_currentClientIdentifier = v7;

    v9 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_queue_currentClientIdentifier;
      v11 = 138543874;
      selfCopy = self;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Did change current client identifier %{public}@ => %{public}@", &v11, 0x20u);
    }
  }
}

- (void)_queue_handleDidPrepareToPlayWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([errorCopy px_isDomain:*MEMORY[0x1E6970248] code:2])
  {

LABEL_7:
    v6 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully finished preparing to play.", &v8, 0xCu);
    }

    errorCopy = 0;
    v5 = 0;
    v7 = 1;
    goto LABEL_10;
  }

  if (!errorCopy)
  {
    goto LABEL_7;
  }

  v5 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAppleMusicPlayerControllerErrorDomain" code:4 underlyingError:errorCopy debugDescription:@"Encountered a MediaPlayer error when preparing to play Apple Music."];
  v6 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    selfCopy2 = self;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "%{public}@ encountered an error while preparing to play: %{public}@", &v8, 0x16u);
  }

  v7 = 0;
LABEL_10:

  [(_PXAppleMusicPlayerController *)self _queue_callPreparationCompletionHandler:v7 error:v5];
}

- (void)_handleDidPrepareToPlayWithExpectation:(id)expectation error:(id)error
{
  expectationCopy = expectation;
  errorCopy = error;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___PXAppleMusicPlayerController__handleDidPrepareToPlayWithExpectation_error___block_invoke;
  v11[3] = &unk_1E774B708;
  v12 = expectationCopy;
  v9 = expectationCopy;
  objc_copyWeak(&v14, &location);
  v13 = errorCopy;
  v10 = errorCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_queue_handlePreparationExpectationFulfilled:(id)fulfilled success:(BOOL)success error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_queue_preparationExpectation == fulfilled && !success)
  {
    v9 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ timed out preparing to play. Error: %{public}@", buf, 0x16u);
    }

    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAppleMusicPlayerControllerErrorDomain" code:2 underlyingError:errorCopy debugDescription:{@"Apple Music playback preparation timed out after %fs.", 0x403E000000000000}];
    [(_PXAppleMusicPlayerController *)self _queue_callPreparationCompletionHandler:0 error:v10];
  }
}

- (void)setVolume:(double)volume
{
  dispatch_assert_queue_V2(self->_queue);
  volumeCopy = volume;
  self->_queue_volume = volumeCopy;
  if (self->_playerRespondsToRelativeVolume)
  {
    queue_player = self->_queue_player;

    [(MPMusicPlayerApplicationController *)queue_player setRelativeVolume:?];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43___PXAppleMusicPlayerController_setVolume___block_invoke;
    v8[3] = &unk_1E77498A0;
    v8[4] = self;
    v8[5] = a2;
    if (setVolume__onceToken != -1)
    {
      dispatch_once(&setVolume__onceToken, v8);
    }
  }
}

- (void)play
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2020000000;
  v3 = 0;
  px_dispatch_on_main_queue_sync();
}

- (void)pause
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    queue_player = self->_queue_player;
    v5 = 138543618;
    selfCopy = self;
    v7 = 2112;
    v8 = queue_player;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sending pause command to %@.", &v5, 0x16u);
  }

  [(MPMusicPlayerApplicationController *)self->_queue_player pause];
}

- (void)prepareToPlayWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  queue_preparationExpectation = self->_queue_preparationExpectation;
  if (queue_preparationExpectation)
  {
    self->_queue_preparationExpectation = 0;
  }

  if (self->_queue_preparationCompletionHandler)
  {
    v7 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ informing existing preparation completion handler that preparation is being interrupted.", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXAppleMusicPlayerControllerErrorDomain" code:5 debugDescription:@"Apple Music playback preparation was interrupted by another prepare command."];
    [(_PXAppleMusicPlayerController *)self _queue_callPreparationCompletionHandler:0 error:v8];
  }

  self->_preparationSignpostID = [MEMORY[0x1E6991F28] startSignpost];
  v9 = [PXExpectation alloc];
  queue = self->_queue;
  v11 = NSStringFromSelector(a2);
  v12 = [(PXExpectation *)v9 initWithQueue:queue labelFormat:@"%@; Client: %@", v11, self->_queue_currentClientIdentifier];

  objc_initWeak(&from, v12);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68___PXAppleMusicPlayerController_prepareToPlayWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E773EEC8;
  objc_copyWeak(&v23, &location);
  objc_copyWeak(&v24, &from);
  [(PXExpectation *)v12 performWhenFulfilled:v22 timeout:30.0];
  v13 = [handlerCopy copy];
  queue_preparationCompletionHandler = self->_queue_preparationCompletionHandler;
  self->_queue_preparationCompletionHandler = v13;

  objc_storeStrong(&self->_queue_preparationExpectation, v12);
  v15 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ will prepare to play", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___PXAppleMusicPlayerController_prepareToPlayWithCompletionHandler___block_invoke_40;
  aBlock[3] = &unk_1E773EEF0;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_respondsToSelector();
  queue_player = self->_queue_player;
  if (v17)
  {
    [(MPMusicPlayerApplicationController *)queue_player prepareToPlayWithCompletionHandler:v16 timeout:30.0];
  }

  else
  {
    [(MPMusicPlayerApplicationController *)queue_player prepareToPlayWithCompletionHandler:v16];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

- (void)setItemWithStoreID:(id)d startTime:(id *)time
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if ((time->var2 & 0x1D) != 1)
  {
    v7 = *MEMORY[0x1E6960CC0];
    time->var3 = *(MEMORY[0x1E6960CC0] + 16);
    *&time->var0 = v7;
  }

  self->_isAtEnd = 0;
  queue_itemStoreID = self->_queue_itemStoreID;
  v9 = dCopy;
  v10 = v9;
  if (queue_itemStoreID == v9)
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqualToString:queue_itemStoreID];

    if (!v11)
    {
      v12 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.var0) = 138543618;
        *(&buf.var0 + 4) = self;
        LOWORD(buf.var2) = 2114;
        *(&buf.var2 + 2) = v10;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ preparing item with store ID %{public}@.", &buf, 0x16u);
      }

      v13 = [(NSString *)v10 copy];
      v14 = self->_queue_itemStoreID;
      self->_queue_itemStoreID = v13;

      v15 = objc_alloc(MEMORY[0x1E6970810]);
      v20 = v10;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v17 = [v15 initWithStoreIDs:v16];

      [v17 setPrivate:1];
      buf = *time;
      [v17 setStartTime:v10 forItemWithStoreID:CMTimeGetSeconds(&buf)];
      [(MPMusicPlayerApplicationController *)self->_queue_player setQueueWithDescriptor:v17];

      goto LABEL_12;
    }
  }

  buf = *time;
  Seconds = CMTimeGetSeconds(&buf);
  v19 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.var0) = 138543618;
    *(&buf.var0 + 4) = self;
    LOWORD(buf.var2) = 2048;
    *(&buf.var2 + 2) = Seconds;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ seeking item in place to new time %.2f.", &buf, 0x16u);
  }

  [(MPMusicPlayerApplicationController *)self->_queue_player setCurrentPlaybackTime:Seconds];
LABEL_12:
}

- (double)volume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39___PXAppleMusicPlayerController_volume__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fetchCurrentTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A561E057;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___PXAppleMusicPlayerController_fetchCurrentTime__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

- (void)clientIdentifier:(id)identifier becomeCurrentClientIfNeeded:(BOOL)needed performAsyncPlayerTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108___PXAppleMusicPlayerController_clientIdentifier_becomeCurrentClientIfNeeded_performAsyncPlayerTransaction___block_invoke;
  v13[3] = &unk_1E7749350;
  neededCopy = needed;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = transactionCopy;
  v11 = transactionCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (NSString)windowSceneID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__162951;
  v10 = __Block_byref_object_dispose__162952;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46___PXAppleMusicPlayerController_windowSceneID__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setWindowSceneID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___PXAppleMusicPlayerController_setWindowSceneID___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (NSString)currentClientIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__162951;
  v10 = __Block_byref_object_dispose__162952;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56___PXAppleMusicPlayerController_currentClientIdentifier__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCurrentClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___PXAppleMusicPlayerController_setCurrentClientIdentifier___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_playbackStateChangeObserver];
  [defaultCenter removeObserver:self->_playbackDidEndObserver];

  v4.receiver = self;
  v4.super_class = _PXAppleMusicPlayerController;
  [(_PXAppleMusicPlayerController *)&v4 dealloc];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _PXAppleMusicPlayerController;
  if ([(_PXAppleMusicPlayerController *)&v3 init])
  {
    [MEMORY[0x1E69707E0] setShouldUseSystemMusicAppOnMacOS:0];
    px_dispatch_queue_create_serial();
  }

  return 0;
}

- (_PXAppleMusicPlayerController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicPlayerController.m" lineNumber:76 description:{@"%s is not available as initializer", "-[_PXAppleMusicPlayerController init]"}];

  abort();
}

+ (BOOL)canApplyWorkaroundFor80278485
{
  if (canApplyWorkaroundFor80278485_onceToken != -1)
  {
    dispatch_once(&canApplyWorkaroundFor80278485_onceToken, &__block_literal_global_162976);
  }

  return canApplyWorkaroundFor80278485_canApply;
}

@end