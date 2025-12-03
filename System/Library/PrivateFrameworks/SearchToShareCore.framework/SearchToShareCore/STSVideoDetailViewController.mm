@interface STSVideoDetailViewController
- (void)setContentURL:(id)l;
- (void)viewDidLoad;
- (void)youTubePlayer:(id)player didChangeToState:(int64_t)state;
@end

@implementation STSVideoDetailViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STSVideoDetailViewController;
  [(STSVideoDetailViewController *)&v3 viewDidLoad];
  [(STSResultDetailViewController *)self setAllowCustomContentViewInteraction:1];
}

- (void)setContentURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = STSVideoDetailViewController;
  contentURL = [(STSResultDetailViewController *)&v14 contentURL];

  if (contentURL != lCopy)
  {
    v13.receiver = self;
    v13.super_class = STSVideoDetailViewController;
    [(STSResultDetailViewController *)&v13 setContentURL:lCopy];
    v6 = objc_alloc(MEMORY[0x277CD4708]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    playerView = self->_playerView;
    self->_playerView = v7;

    [(LPYouTubePlayerView *)self->_playerView setDelegate:self];
    v9 = self->_playerView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(LPYouTubePlayerView *)v9 setBackgroundColor:blackColor];

    [(STSResultDetailViewController *)self updateCustomContentWithView:self->_playerView];
    v11 = self->_playerView;
    contentURL2 = [(STSResultDetailViewController *)self contentURL];
    [(LPYouTubePlayerView *)v11 loadVideoWithURL:contentURL2];
  }
}

- (void)youTubePlayer:(id)player didChangeToState:(int64_t)state
{
  if ((state - 1) <= 4)
  {
    [(STSResultDetailViewController *)self updateWithThumbnail:0 orThumbnailInfo:0];
  }
}

@end