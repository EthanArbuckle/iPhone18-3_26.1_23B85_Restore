@interface ISLivePhotoSettleBehavior
- (void)_didFinish;
- (void)settle:(BOOL)a3;
@end

@implementation ISLivePhotoSettleBehavior

- (void)_didFinish
{
  v3 = [(ISBehavior *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 livePhotoSettleBehaviorDidFinish:self];
  }
}

- (void)settle:(BOOL)a3
{
  v3 = a3;
  [(ISBehavior *)self setVideoPlayRate:0.0];
  v5 = [ISPlayerState outputInfoWithPhotoBlurRadius:@"SETTLE" videoAlpha:0.0 videoBlurRadius:0.0 label:0.0];
  if (v3)
  {
    v6 = objc_alloc_init(ISPlayerOutputTransitionOptions);
    [(ISPlayerOutputTransitionOptions *)v6 setTransitionDuration:0.3];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ISLivePhotoSettleBehavior_settle___block_invoke;
  v7[3] = &unk_279A29C30;
  objc_copyWeak(&v8, &location);
  [(ISBehavior *)self setOutputInfo:v5 withTransitionOptions:v6 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __36__ISLivePhotoSettleBehavior_settle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinish];
}

@end