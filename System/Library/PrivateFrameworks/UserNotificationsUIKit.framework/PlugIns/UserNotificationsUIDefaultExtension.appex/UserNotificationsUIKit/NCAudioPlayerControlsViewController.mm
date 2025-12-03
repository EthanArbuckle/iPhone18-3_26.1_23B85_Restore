@interface NCAudioPlayerControlsViewController
- (NCAudioPlayerControlsView)playerControlsView;
- (NCAudioPlayerControlsViewController)init;
- (NCAudioPlayerControlsViewController)initWithCoder:(id)coder;
- (NCAudioPlayerControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)detailSlider:(id)slider didChangeValue:(float)value;
- (void)detailSliderTrackingDidBegin:(id)begin;
- (void)detailSliderTrackingDidCancel:(id)cancel;
- (void)detailSliderTrackingDidEnd:(id)end;
- (void)playbackControls:(id)controls didRequestState:(int64_t)state;
- (void)playerController:(id)controller didChangeToCurrentTime:(float)time;
- (void)playerController:(id)controller didChangeToDuration:(double)duration;
- (void)playerController:(id)controller didChangeToPlaybackState:(int64_t)state;
- (void)playerController:(id)controller didChangeToStatus:(int64_t)status;
- (void)playerController:(id)controller didSeekToTime:(float)time;
- (void)setPlayerController:(id)controller;
- (void)setURL:(id)l;
@end

@implementation NCAudioPlayerControlsViewController

- (NCAudioPlayerControlsViewController)init
{
  v3.receiver = self;
  v3.super_class = NCAudioPlayerControlsViewController;
  return [(NCAudioPlayerControlsViewController *)&v3 initWithNibName:0 bundle:0];
}

- (NCAudioPlayerControlsViewController)initWithCoder:(id)coder
{
  [(NCAudioPlayerControlsViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NCAudioPlayerControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(NCAudioPlayerControlsViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (self->_URL != lCopy)
  {
    v9 = lCopy;
    objc_storeStrong(&self->_URL, l);
    URL = self->_URL;
    if (URL)
    {
      v7 = URL;
      v8 = [[NCAudioPlayerController alloc] initWithURL:v7];
    }

    else
    {
      v8 = 0;
    }

    [(NCAudioPlayerControlsViewController *)self setPlayerController:v8];

    lCopy = v9;
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  if (self->_playerController != controllerCopy)
  {
    objc_storeStrong(&self->_playerController, controller);
    playerController = self->_playerController;
    if (playerController)
    {
      [(NCAudioPlayerController *)playerController setDelegate:self];
      if ([(NCAudioPlayerController *)self->_playerController status]== 1)
      {
        playerController = [(NCAudioPlayerControlsViewController *)self playerController];
        [playerController duration];
        v8 = v7;
        playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
        timelineSlider = [playerControlsView timelineSlider];
        [timelineSlider setDuration:v8];

        playerControlsView2 = [(NCAudioPlayerControlsViewController *)self playerControlsView];
        [playerControlsView2 setEnabled:1];
      }
    }
  }
}

- (NCAudioPlayerControlsView)playerControlsView
{
  playerControlsView = self->_playerControlsView;
  if (!playerControlsView)
  {
    v4 = [[NCAudioPlayerControlsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_playerControlsView;
    self->_playerControlsView = v4;

    [(NCAudioPlayerControlsView *)self->_playerControlsView setDelegate:self];
    [(NCAudioPlayerControlsView *)self->_playerControlsView setEnabled:0];
    timelineSlider = [(NCAudioPlayerControlsView *)self->_playerControlsView timelineSlider];
    [timelineSlider setDelegate:self];

    [(NCAudioPlayerControlsView *)self->_playerControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(NCAudioPlayerControlsViewController *)self view];
    [view addSubview:self->_playerControlsView];
    leadingAnchor = [(NCAudioPlayerControlsView *)self->_playerControlsView leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v10 setActive:1];

    topAnchor = [(NCAudioPlayerControlsView *)self->_playerControlsView topAnchor];
    topAnchor2 = [view topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    trailingAnchor = [(NCAudioPlayerControlsView *)self->_playerControlsView trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v16 setActive:1];

    playerControlsView = self->_playerControlsView;
  }

  return playerControlsView;
}

- (void)detailSliderTrackingDidBegin:(id)begin
{
  playerController = [(NCAudioPlayerControlsViewController *)self playerController];
  [playerController pause];
}

- (void)detailSliderTrackingDidEnd:(id)end
{
  playerController = [(NCAudioPlayerControlsViewController *)self playerController];
  [playerController play];
}

- (void)detailSliderTrackingDidCancel:(id)cancel
{
  playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
  timelineSlider = [playerControlsView timelineSlider];
  playerController = [(NCAudioPlayerControlsViewController *)self playerController];
  [playerController currentTime];
  [timelineSlider setValue:0 animated:?];
}

- (void)detailSlider:(id)slider didChangeValue:(float)value
{
  playerController = [(NCAudioPlayerControlsViewController *)self playerController];
  *&v5 = value;
  [playerController seekToTime:v5];
}

- (void)playerController:(id)controller didChangeToCurrentTime:(float)time
{
  playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
  timelineSlider = [playerControlsView timelineSlider];
  *&v6 = time;
  [timelineSlider setValue:1 animated:v6];
}

- (void)playerController:(id)controller didChangeToDuration:(double)duration
{
  playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
  timelineSlider = [playerControlsView timelineSlider];
  [timelineSlider setDuration:duration];

  playerController = [(NCAudioPlayerControlsViewController *)self playerController];
  status = [playerController status];

  if (status == 1)
  {
    playerControlsView2 = [(NCAudioPlayerControlsViewController *)self playerControlsView];
    [playerControlsView2 setEnabled:1];
  }
}

- (void)playerController:(id)controller didChangeToPlaybackState:(int64_t)state
{
  controllerCopy = controller;
  if (state <= 2)
  {
    v7 = qword_100007750[state];
    v9 = controllerCopy;
    playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
    [playerControlsView setState:v7 animated:1];

    controllerCopy = v9;
  }
}

- (void)playerController:(id)controller didChangeToStatus:(int64_t)status
{
  controllerCopy = controller;
  if (status == 1)
  {
    v11 = controllerCopy;
    playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
    timelineSlider = [playerControlsView timelineSlider];

    playerController = [(NCAudioPlayerControlsViewController *)self playerController];
    [playerController duration];
    [timelineSlider setDuration:?];

    [timelineSlider setValue:0 animated:0.0];
    playerControlsView2 = [(NCAudioPlayerControlsViewController *)self playerControlsView];
    [playerControlsView2 setEnabled:1];
  }

  else
  {
    if (status)
    {
      goto LABEL_6;
    }

    v11 = controllerCopy;
    timelineSlider = [(NCAudioPlayerControlsViewController *)self playerControlsView];
    [timelineSlider setEnabled:0];
  }

  controllerCopy = v11;
LABEL_6:
}

- (void)playerController:(id)controller didSeekToTime:(float)time
{
  playerControlsView = [(NCAudioPlayerControlsViewController *)self playerControlsView];
  timelineSlider = [playerControlsView timelineSlider];
  *&v6 = time;
  [timelineSlider setValue:1 animated:v6];
}

- (void)playbackControls:(id)controls didRequestState:(int64_t)state
{
  controlsCopy = controls;
  if (state == 2)
  {
    playerController = [(NCAudioPlayerControlsViewController *)self playerController];
    [playerController pause];
  }

  else if (state == 1)
  {
    playerController = [(NCAudioPlayerControlsViewController *)self playerController];
    [playerController play];
  }

  else
  {
    if (state)
    {
      goto LABEL_8;
    }

    playerController = [(NCAudioPlayerControlsViewController *)self playerController];
    [playerController stop];
  }

LABEL_8:
  [controlsCopy setState:state];
}

@end