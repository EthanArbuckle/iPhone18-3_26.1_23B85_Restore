@interface STSVideoDetailViewController
- (void)setContentURL:(id)a3;
- (void)viewDidLoad;
- (void)youTubePlayer:(id)a3 didChangeToState:(int64_t)a4;
@end

@implementation STSVideoDetailViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STSVideoDetailViewController;
  [(STSVideoDetailViewController *)&v3 viewDidLoad];
  [(STSResultDetailViewController *)self setAllowCustomContentViewInteraction:1];
}

- (void)setContentURL:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STSVideoDetailViewController;
  v5 = [(STSResultDetailViewController *)&v14 contentURL];

  if (v5 != v4)
  {
    v13.receiver = self;
    v13.super_class = STSVideoDetailViewController;
    [(STSResultDetailViewController *)&v13 setContentURL:v4];
    v6 = objc_alloc(MEMORY[0x277CD4708]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    playerView = self->_playerView;
    self->_playerView = v7;

    [(LPYouTubePlayerView *)self->_playerView setDelegate:self];
    v9 = self->_playerView;
    v10 = [MEMORY[0x277D75348] blackColor];
    [(LPYouTubePlayerView *)v9 setBackgroundColor:v10];

    [(STSResultDetailViewController *)self updateCustomContentWithView:self->_playerView];
    v11 = self->_playerView;
    v12 = [(STSResultDetailViewController *)self contentURL];
    [(LPYouTubePlayerView *)v11 loadVideoWithURL:v12];
  }
}

- (void)youTubePlayer:(id)a3 didChangeToState:(int64_t)a4
{
  if ((a4 - 1) <= 4)
  {
    [(STSResultDetailViewController *)self updateWithThumbnail:0 orThumbnailInfo:0];
  }
}

@end