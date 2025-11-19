@interface SiriUIVideoPlayerViewController
- (BOOL)shouldPlayHighResolutionContent;
- (SiriUIVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SiriUIVideoPlayerViewControllerDelegate)videoPlayerControllerDelegate;
- (void)_playbackDidFinish:(id)a3;
- (void)_registerObservers;
- (void)_removeObservers;
- (void)_restoreAudioPlaybackCategoryAndOptions;
- (void)_updateAudioSessionCategory;
- (void)dealloc;
- (void)doneButtonTapped:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setPlayer:(id)a3;
- (void)shouldPlayHighResolutionContent;
@end

@implementation SiriUIVideoPlayerViewController

- (SiriUIVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SiriUIVideoPlayerViewController;
  v4 = [(SiriUIVideoPlayerViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_observingPlayerStatus = 0;
    v4->_observingItemStatus = 0;
    v4->_observingPlayback = 0;
    v4->_observingViewController = 0;
    v4->_playerStatusObserverContext = &v4->_observingPlayerStatus;
    v4->_itemStatusObserverContext = &v4->_observingItemStatus;
    v6 = [(SiriUIVideoPlayerViewController *)v4 player];

    if (v6)
    {
      [(SiriUIVideoPlayerViewController *)v5 _registerObservers];
    }
  }

  return v5;
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIVideoPlayerViewController *)self player];

  if (v5 != v4)
  {
    v6 = [(SiriUIVideoPlayerViewController *)self player];

    if (v6)
    {
      [(SiriUIVideoPlayerViewController *)self _removeObservers];
      [(SiriUIVideoPlayerViewController *)self _restoreAudioPlaybackCategoryAndOptions];
    }

    v7.receiver = self;
    v7.super_class = SiriUIVideoPlayerViewController;
    [(SiriUIVideoPlayerViewController *)&v7 setPlayer:v4];
    [(SiriUIVideoPlayerViewController *)self _registerObservers];
  }
}

- (void)dealloc
{
  [(SiriUIVideoPlayerViewController *)self _removeObservers];
  v3.receiver = self;
  v3.super_class = SiriUIVideoPlayerViewController;
  [(SiriUIVideoPlayerViewController *)&v3 dealloc];
}

- (void)doneButtonTapped:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [MEMORY[0x277CCAB88] notificationWithName:@"AVPlayerViewControllerUserDidTapDoneButtonNotification" object:self];
  [v6 postNotification:v7];

  v8.receiver = self;
  v8.super_class = SiriUIVideoPlayerViewController;
  [(SiriUIVideoPlayerViewController *)&v8 doneButtonTapped:v5];
}

- (BOOL)shouldPlayHighResolutionContent
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  Width = CGRectGetWidth(v18);
  [v2 scale];
  if (Width * v4 <= 320.0)
  {
    v12 = 0;
  }

  else
  {
    address = xmmword_2694DDAD0;
    v5 = SCNetworkReachabilityCreateWithAddress(0, &address);
    flags = 0;
    SCNetworkReachabilityGetFlags(v5, &flags);
    CFRelease(v5);
    if ((~flags & 0x40002) != 0)
    {
      v12 = 1;
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
      v14 = 0;
      v7 = [v6 getDataStatus:0 error:&v14];
      v8 = v14;
      if (v7)
      {
        v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287A0D3E8];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "indicator")}];
        v11 = [v9 containsObject:v10];

        v12 = v11 ^ 1;
      }

      else
      {
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          [SiriUIVideoPlayerViewController shouldPlayHighResolutionContent];
        }

        v12 = 1;
      }
    }
  }

  return v12;
}

- (void)_playbackDidFinish:(id)a3
{
  v4 = [(SiriUIVideoPlayerViewController *)self videoPlayerControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SiriUIVideoPlayerViewController *)self videoPlayerControllerDelegate];
    [v6 playbackDidFinishForVideoPlayerViewController:self];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SiriUIVideoPlaybackDidFinishNotification" object:self];
  }
}

- (void)_registerObservers
{
  if (!self->_observingPlayerStatus)
  {
    v3 = [(SiriUIVideoPlayerViewController *)self player];
    v4 = NSStringFromSelector(sel_status);
    [v3 addObserver:self forKeyPath:v4 options:1 context:self->_playerStatusObserverContext];

    self->_observingPlayerStatus = 1;
  }

  v5 = [(SiriUIVideoPlayerViewController *)self player];
  v10 = [v5 currentItem];

  if (!self->_observingItemStatus)
  {
    v6 = NSStringFromSelector(sel_status);
    [v10 addObserver:self forKeyPath:v6 options:1 context:self->_itemStatusObserverContext];

    self->_observingItemStatus = 1;
  }

  if (!self->_observingPlayback)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel__playbackDidFinish_ name:*MEMORY[0x277CE60C0] object:v10];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__playbackDidFinish_ name:*MEMORY[0x277CE60D0] object:v10];

    self->_observingPlayback = 1;
  }

  if (!self->_observingViewController)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__playbackDidFinish_ name:@"AVPlayerViewControllerUserDidTapDoneButtonNotification" object:self];

    self->_observingViewController = 1;
  }
}

- (void)_removeObservers
{
  if (self->_observingPlayerStatus)
  {
    v3 = [(SiriUIVideoPlayerViewController *)self player];
    v4 = [v3 currentItem];
    v5 = NSStringFromSelector(sel_status);
    [v4 removeObserver:self forKeyPath:v5 context:self->_itemStatusObserverContext];

    self->_observingPlayerStatus = 0;
  }

  if (self->_observingItemStatus)
  {
    v6 = [(SiriUIVideoPlayerViewController *)self player];
    v7 = NSStringFromSelector(sel_status);
    [v6 removeObserver:self forKeyPath:v7 context:self->_playerStatusObserverContext];

    self->_observingItemStatus = 0;
  }

  if (self->_observingPlayback)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277CE60C0];
    v10 = [(SiriUIVideoPlayerViewController *)self player];
    v11 = [v10 currentItem];
    [v8 removeObserver:self name:v9 object:v11];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277CE60D0];
    v14 = [(SiriUIVideoPlayerViewController *)self player];
    v15 = [v14 currentItem];
    [v12 removeObserver:self name:v13 object:v15];

    self->_observingPlayback = 0;
  }

  if (self->_observingViewController)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 removeObserver:self name:@"AVPlayerViewControllerUserDidTapDoneButtonNotification" object:self];

    self->_observingViewController = 0;
  }
}

- (void)_updateAudioSessionCategory
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26948D000, v0, v1, "%s Unable to set audio session category from %{public}@ to AVAudioSessionCategoryPlayback: %{public}@", v2);
}

- (void)_restoreAudioPlaybackCategoryAndOptions
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26948D000, v0, v1, "%s Unable to restore AVAudioSession category to %{public}@: %{public}@", v2);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_playerStatusObserverContext == a6)
  {
    if ([v11 status] == 1)
    {
      [(SiriUIVideoPlayerViewController *)self _updateAudioSessionCategory];
      [v11 play];
      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = v17;
      v19 = &SiriUIVideoPlaybackDidStartNotification;
      goto LABEL_10;
    }
  }

  else if (self->_itemStatusObserverContext == a6 && [v11 status] == 2)
  {
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriUIVideoPlayerViewController observeValueForKeyPath:v13 ofObject:? change:? context:?];
    }

    v14 = [(SiriUIVideoPlayerViewController *)self videoPlayerControllerDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(SiriUIVideoPlayerViewController *)self videoPlayerControllerDelegate];
      [v16 playbackDidFailForVideoPlayerViewController:self];

      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = v17;
      v19 = &SiriUIVideoPlaybackDidFinishNotification;
LABEL_10:
      [v17 postNotificationName:*v19 object:self];
    }
  }
}

- (SiriUIVideoPlayerViewControllerDelegate)videoPlayerControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoPlayerControllerDelegate);

  return WeakRetained;
}

- (void)shouldPlayHighResolutionContent
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_26948D000, v0, OS_LOG_TYPE_ERROR, "%s Unable to determine the current CTDataStatus: %{public}@", v1, 0x16u);
}

- (void)observeValueForKeyPath:(os_log_t)log ofObject:change:context:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriUIVideoPlayerViewController observeValueForKeyPath:ofObject:change:context:]";
  _os_log_error_impl(&dword_26948D000, log, OS_LOG_TYPE_ERROR, "%s Unable to play video: no media types are available", &v1, 0xCu);
}

@end