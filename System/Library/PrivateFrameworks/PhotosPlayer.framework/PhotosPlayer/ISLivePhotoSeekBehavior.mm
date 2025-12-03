@interface ISLivePhotoSeekBehavior
- (ISLivePhotoSeekBehavior)initWithInitialLayoutInfo:(id)info seekTime:(id *)time;
- (void)_handleDidSeekToSeekTime:(BOOL)time;
- (void)_seekIfNeeded;
- (void)activeDidChange;
- (void)setSeekTime:(id *)time;
@end

@implementation ISLivePhotoSeekBehavior

- (void)_handleDidSeekToSeekTime:(BOOL)time
{
  timeCopy = time;
  [(ISLivePhotoSeekBehavior *)self _callSeekCompletionHandler:?];
  if (timeCopy && self->_needsTransitionToVideo)
  {
    self->_needsTransitionToVideo = 0;
    v5 = objc_alloc_init(ISPlayerOutputTransitionOptions);
    [(ISPlayerOutputTransitionOptions *)v5 setTransitionDuration:0.3];
    v6 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"SEEK" videoAlpha:0.0 videoBlurRadius:1.0 label:0.0];
    [(ISBehavior *)self setOutputInfo:v6 withTransitionOptions:v5 completion:0];
  }

  self->_isSeeking = 0;

  [(ISLivePhotoSeekBehavior *)self _seekIfNeeded];
}

- (void)_seekIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_isSeeking && self->_needsSeek)
  {
    v3 = MEMORY[0x277D86220];
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      value = self->_seekTime.value;
      timescale = self->_seekTime.timescale;
      *buf = 134218240;
      v11 = value;
      v12 = 1024;
      v13 = timescale;
      _os_signpost_emit_with_name_impl(&dword_25E667000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "com.apple.photos.LivePhotoSeekBehavior", "Seeking to  (%lld/%d)", buf, 0x12u);
    }

    self->_isSeeking = 1;
    self->_needsSeek = 0;
    objc_initWeak(buf, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ISLivePhotoSeekBehavior__seekIfNeeded__block_invoke;
    v8[3] = &unk_279A2A1A8;
    objc_copyWeak(&v9, buf);
    v8[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__ISLivePhotoSeekBehavior__seekIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = v3 + 56;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ISLivePhotoSeekBehavior__seekIfNeeded__block_invoke_2;
  v8[3] = &unk_279A2A3E8;
  v8[4] = v3;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = *v4;
  v7 = *(v4 + 16);
  v6 = v5;
  LOBYTE(v4) = [WeakRetained seekVideoPlayerToTime:&v6 completionHandler:v8];

  if ((v4 & 1) == 0)
  {
    *(*(a1 + 32) + 32) = 0;
  }

  objc_destroyWeak(&v9);
}

void __40__ISLivePhotoSeekBehavior__seekIfNeeded__block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ISLivePhotoSeekBehavior__seekIfNeeded__block_invoke_3;
  block[3] = &unk_279A29BA0;
  block[4] = *(a1 + 32);
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v3);
}

void __40__ISLivePhotoSeekBehavior__seekIfNeeded__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    v7 = *(a1 + 48);
    v10 = 134218496;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_signpost_emit_with_name_impl(&dword_25E667000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v4, "com.apple.photos.LivePhotoSeekBehavior", "Finished seeking (%lld/%d) [%d]", &v10, 0x18u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDidSeekToSeekTime:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setSeekTime:(id *)time
{
  p_seekTime = &self->_seekTime;
  time1 = *time;
  seekTime = self->_seekTime;
  if (CMTimeCompare(&time1, &seekTime))
  {
    v6 = *&time->var0;
    p_seekTime->epoch = time->var3;
    *&p_seekTime->value = v6;
    self->_needsSeek = 1;
    [(ISLivePhotoSeekBehavior *)self _seekIfNeeded];
  }

  else
  {
    [(ISLivePhotoSeekBehavior *)self _callSeekCompletionHandler:1];
  }
}

- (void)activeDidChange
{
  if ([(ISBehavior *)self isActive])
  {
    [(ISBehavior *)self setVideoPlayRate:0.0];

    [(ISLivePhotoSeekBehavior *)self _seekIfNeeded];
  }

  else
  {

    [(ISLivePhotoSeekBehavior *)self _callSeekCompletionHandler:0];
  }
}

- (ISLivePhotoSeekBehavior)initWithInitialLayoutInfo:(id)info seekTime:(id *)time
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = ISLivePhotoSeekBehavior;
  v7 = [(ISBehavior *)&v12 initWithInitialLayoutInfo:infoCopy];
  v8 = v7;
  if (v7)
  {
    var3 = time->var3;
    *(v7 + 56) = *&time->var0;
    *(v7 + 9) = var3;
    [infoCopy videoAlpha];
    v8->_needsTransitionToVideo = v10 == 0.0;
    v8->_needsSeek = 1;
    v8->_signpostID = os_signpost_id_make_with_pointer(MEMORY[0x277D86220], v8);
  }

  return v8;
}

@end