@interface NCAudioPlayerControlsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCAudioPlayerControlsDelegate)delegate;
- (NCAudioPlayerControlsView)initWithCoder:(id)coder;
- (NCAudioPlayerControlsView)initWithFrame:(CGRect)frame;
- (void)loadContentView;
- (void)loadContentViewLayoutConstraints;
- (void)pauseButtonTapped:(id)tapped withEvent:(id)event;
- (void)playButtonTapped:(id)tapped withEvent:(id)event;
- (void)setState:(int64_t)state animated:(BOOL)animated;
- (void)stopButtonTapped:(id)tapped withEvent:(id)event;
- (void)transitionToState:(int64_t)state animated:(BOOL)animated;
@end

@implementation NCAudioPlayerControlsView

- (NCAudioPlayerControlsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NCAudioPlayerControlsView;
  v3 = [(NCAudioPlayerControlsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_contentViewLayoutConstraintsLoaded = 0;
    v3->_contentViewLoaded = 0;
    v3->_enabled = 1;
    [(NCAudioPlayerControlsView *)v3 loadContentView];
  }

  return v4;
}

- (NCAudioPlayerControlsView)initWithCoder:(id)coder
{
  [(NCAudioPlayerControlsView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIButton *)self->_playButton sizeToFit:fits.width];
  [(NCAudioPlayerTimelineSlider *)self->_timelineSlider sizeToFit];
  [(UIButton *)self->_playButton bounds];
  Height = CGRectGetHeight(v10);
  [(NCAudioPlayerTimelineSlider *)self->_timelineSlider bounds];
  v6 = CGRectGetHeight(v11);
  if (Height >= v6)
  {
    v7 = Height;
  }

  else
  {
    v7 = v6;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setState:(int64_t)state animated:(BOOL)animated
{
  if (self->_state != state)
  {
    self->_state = state;
    [NCAudioPlayerControlsView transitionToState:"transitionToState:animated:" animated:?];
  }
}

- (void)loadContentView
{
  if (!self->_contentViewLoaded)
  {
    v3 = [UIButton alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    pauseButton = self->_pauseButton;
    self->_pauseButton = v7;

    [(UIButton *)self->_pauseButton setAlpha:0.0];
    v9 = +[UIColor clearColor];
    [(UIButton *)self->_pauseButton setBackgroundColor:v9];

    [(UIButton *)self->_pauseButton setHidden:1];
    v10 = +[UIColor systemBlueColor];
    [(UIButton *)self->_pauseButton setTintColor:v10];

    [(UIButton *)self->_pauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_pauseButton addTarget:self action:"pauseButtonTapped:withEvent:" forControlEvents:64];
    LODWORD(v11) = 1148846080;
    [(UIButton *)self->_pauseButton setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIButton *)self->_pauseButton setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UIButton *)self->_pauseButton setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UIButton *)self->_pauseButton setContentHuggingPriority:1 forAxis:v14];
    v15 = self->_pauseButton;
    v16 = [UIImage _systemImageNamed:@"pause.fill"];
    [(UIButton *)v15 setImage:v16 forState:0];

    v17 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    playButton = self->_playButton;
    self->_playButton = v17;

    v19 = +[UIColor clearColor];
    [(UIButton *)self->_playButton setBackgroundColor:v19];

    v20 = +[UIColor systemBlueColor];
    [(UIButton *)self->_playButton setTintColor:v20];

    [(UIButton *)self->_playButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_playButton addTarget:self action:"playButtonTapped:withEvent:" forControlEvents:64];
    LODWORD(v21) = 1148846080;
    [(UIButton *)self->_playButton setContentCompressionResistancePriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIButton *)self->_playButton setContentCompressionResistancePriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIButton *)self->_playButton setContentHuggingPriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIButton *)self->_playButton setContentHuggingPriority:1 forAxis:v24];
    v25 = self->_playButton;
    v26 = [UIImage _systemImageNamed:@"play.fill"];
    [(UIButton *)v25 setImage:v26 forState:0];

    height = [[NCAudioPlayerTimelineSlider alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    timelineSlider = self->_timelineSlider;
    self->_timelineSlider = height;

    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setAllowsDetailScrubbing:0];
    v29 = +[UIColor clearColor];
    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setBackgroundColor:v29];

    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v30) = 1144750080;
    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setContentCompressionResistancePriority:0 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setContentCompressionResistancePriority:1 forAxis:v31];
    LODWORD(v32) = 1144750080;
    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setContentHuggingPriority:0 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(NCAudioPlayerTimelineSlider *)self->_timelineSlider setContentHuggingPriority:1 forAxis:v33];
    v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    contentView = self->_contentView;
    self->_contentView = v34;

    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v36) = 1148846080;
    [(UIView *)self->_contentView setContentCompressionResistancePriority:0 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(UIView *)self->_contentView setContentCompressionResistancePriority:1 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(UIView *)self->_contentView setContentHuggingPriority:0 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [(UIView *)self->_contentView setContentHuggingPriority:1 forAxis:v39];
    [(UIView *)self->_contentView addSubview:self->_timelineSlider];
    [(UIView *)self->_contentView addSubview:self->_pauseButton];
    [(UIView *)self->_contentView addSubview:self->_playButton];
    [(NCAudioPlayerControlsView *)self addSubview:self->_contentView];
    [(NCAudioPlayerControlsView *)self loadContentViewLayoutConstraints];
    self->_contentViewLoaded = 1;
  }
}

- (void)loadContentViewLayoutConstraints
{
  if (!self->_contentViewLayoutConstraintsLoaded)
  {
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(NCAudioPlayerControlsView *)self bottomAnchor];
    v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v5 setActive:1];

    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(NCAudioPlayerControlsView *)self leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v8 setActive:1];

    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(NCAudioPlayerControlsView *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(NCAudioPlayerControlsView *)self trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v14 setActive:1];

    bottomAnchor3 = [(UIButton *)self->_pauseButton bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
    v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v17 setActive:1];

    leadingAnchor3 = [(UIButton *)self->_pauseButton leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v20 setActive:1];

    topAnchor3 = [(UIButton *)self->_pauseButton topAnchor];
    topAnchor4 = [(UIView *)self->_contentView topAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v23 setActive:1];

    trailingAnchor3 = [(UIButton *)self->_pauseButton trailingAnchor];
    leadingAnchor5 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider leadingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
    [v26 setActive:1];

    heightAnchor = [(UIButton *)self->_pauseButton heightAnchor];
    v28 = [heightAnchor constraintEqualToConstant:38.0];
    [v28 setActive:1];

    bottomAnchor5 = [(UIButton *)self->_playButton bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_contentView bottomAnchor];
    v31 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v31 setActive:1];

    leadingAnchor6 = [(UIButton *)self->_playButton leadingAnchor];
    leadingAnchor7 = [(UIView *)self->_contentView leadingAnchor];
    v34 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v34 setActive:1];

    topAnchor5 = [(UIButton *)self->_playButton topAnchor];
    topAnchor6 = [(UIView *)self->_contentView topAnchor];
    v37 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [v37 setActive:1];

    trailingAnchor4 = [(UIButton *)self->_playButton trailingAnchor];
    leadingAnchor8 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider leadingAnchor];
    v40 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor8];
    [v40 setActive:1];

    heightAnchor2 = [(UIButton *)self->_playButton heightAnchor];
    v42 = [heightAnchor2 constraintEqualToConstant:38.0];
    [v42 setActive:1];

    centerYAnchor = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_contentView centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v45 setActive:1];

    trailingAnchor5 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider trailingAnchor];
    trailingAnchor6 = [(UIView *)self->_contentView trailingAnchor];
    v48 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v48 setActive:1];

    self->_contentViewLayoutConstraintsLoaded = 1;
  }
}

- (void)pauseButtonTapped:(id)tapped withEvent:(id)event
{
  tappedCopy = tapped;
  delegate = [(NCAudioPlayerControlsView *)self delegate];
  pauseButton = [(NCAudioPlayerControlsView *)self pauseButton];

  if (pauseButton == tappedCopy)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [delegate playbackControls:self didRequestState:2];
    }
  }

  else
  {
  }
}

- (void)playButtonTapped:(id)tapped withEvent:(id)event
{
  tappedCopy = tapped;
  delegate = [(NCAudioPlayerControlsView *)self delegate];
  playButton = [(NCAudioPlayerControlsView *)self playButton];

  if (playButton == tappedCopy)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [delegate playbackControls:self didRequestState:1];
    }
  }

  else
  {
  }
}

- (void)stopButtonTapped:(id)tapped withEvent:(id)event
{
  tappedCopy = tapped;
  delegate = [(NCAudioPlayerControlsView *)self delegate];
  playButton = [(NCAudioPlayerControlsView *)self playButton];

  if (playButton == tappedCopy)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [delegate playbackControls:self didRequestState:0];
    }
  }

  else
  {
  }
}

- (void)transitionToState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_initWeak(&location, self);
  if (!state || state == 2)
  {
    v6 = v12;
    v7 = &v13;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003950;
    v14[3] = &unk_10000C428;
    v8 = &v15;
    objc_copyWeak(&v15, &location);
    v9 = objc_retainBlock(v14);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v10 = sub_1000039E8;
  }

  else
  {
    if (state != 1)
    {
      v11 = 0;
      v9 = 0;
      if (animatedCopy)
      {
        goto LABEL_7;
      }

LABEL_9:
      (v9[2])(v9);
      v11[2](v11, 1);
      goto LABEL_10;
    }

    v6 = v16;
    v7 = &v17;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100003858;
    v18[3] = &unk_10000C428;
    v8 = &v19;
    objc_copyWeak(&v19, &location);
    v9 = objc_retainBlock(v18);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v10 = sub_1000038F0;
  }

  v6[2] = v10;
  v6[3] = &unk_10000C450;
  objc_copyWeak(v7, &location);
  v11 = objc_retainBlock(v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(v8);
  if (!animatedCopy)
  {
    goto LABEL_9;
  }

LABEL_7:
  [UIView animateWithDuration:4 delay:v9 options:v11 animations:0.300000012 completion:0.0];
LABEL_10:
  objc_destroyWeak(&location);
}

- (NCAudioPlayerControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end