@interface NCAudioPlayerControlsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCAudioPlayerControlsDelegate)delegate;
- (NCAudioPlayerControlsView)initWithCoder:(id)a3;
- (NCAudioPlayerControlsView)initWithFrame:(CGRect)a3;
- (void)loadContentView;
- (void)loadContentViewLayoutConstraints;
- (void)pauseButtonTapped:(id)a3 withEvent:(id)a4;
- (void)playButtonTapped:(id)a3 withEvent:(id)a4;
- (void)setState:(int64_t)a3 animated:(BOOL)a4;
- (void)stopButtonTapped:(id)a3 withEvent:(id)a4;
- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation NCAudioPlayerControlsView

- (NCAudioPlayerControlsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NCAudioPlayerControlsView;
  v3 = [(NCAudioPlayerControlsView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (NCAudioPlayerControlsView)initWithCoder:(id)a3
{
  [(NCAudioPlayerControlsView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIButton *)self->_playButton sizeToFit:a3.width];
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

- (void)setState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_state != a3)
  {
    self->_state = a3;
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

    v27 = [[NCAudioPlayerTimelineSlider alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    timelineSlider = self->_timelineSlider;
    self->_timelineSlider = v27;

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
    v3 = [(UIView *)self->_contentView bottomAnchor];
    v4 = [(NCAudioPlayerControlsView *)self bottomAnchor];
    v5 = [v3 constraintEqualToAnchor:v4];
    [v5 setActive:1];

    v6 = [(UIView *)self->_contentView leadingAnchor];
    v7 = [(NCAudioPlayerControlsView *)self leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [(UIView *)self->_contentView topAnchor];
    v10 = [(NCAudioPlayerControlsView *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(UIView *)self->_contentView trailingAnchor];
    v13 = [(NCAudioPlayerControlsView *)self trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(UIButton *)self->_pauseButton bottomAnchor];
    v16 = [(UIView *)self->_contentView bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(UIButton *)self->_pauseButton leadingAnchor];
    v19 = [(UIView *)self->_contentView leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(UIButton *)self->_pauseButton topAnchor];
    v22 = [(UIView *)self->_contentView topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = [(UIButton *)self->_pauseButton trailingAnchor];
    v25 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [(UIButton *)self->_pauseButton heightAnchor];
    v28 = [v27 constraintEqualToConstant:38.0];
    [v28 setActive:1];

    v29 = [(UIButton *)self->_playButton bottomAnchor];
    v30 = [(UIView *)self->_contentView bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UIButton *)self->_playButton leadingAnchor];
    v33 = [(UIView *)self->_contentView leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(UIButton *)self->_playButton topAnchor];
    v36 = [(UIView *)self->_contentView topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(UIButton *)self->_playButton trailingAnchor];
    v39 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(UIButton *)self->_playButton heightAnchor];
    v42 = [v41 constraintEqualToConstant:38.0];
    [v42 setActive:1];

    v43 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider centerYAnchor];
    v44 = [(UIView *)self->_contentView centerYAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    v46 = [(NCAudioPlayerTimelineSlider *)self->_timelineSlider trailingAnchor];
    v47 = [(UIView *)self->_contentView trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    self->_contentViewLayoutConstraintsLoaded = 1;
  }
}

- (void)pauseButtonTapped:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v8 = [(NCAudioPlayerControlsView *)self delegate];
  v6 = [(NCAudioPlayerControlsView *)self pauseButton];

  if (v6 == v5)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [v8 playbackControls:self didRequestState:2];
    }
  }

  else
  {
  }
}

- (void)playButtonTapped:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v8 = [(NCAudioPlayerControlsView *)self delegate];
  v6 = [(NCAudioPlayerControlsView *)self playButton];

  if (v6 == v5)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [v8 playbackControls:self didRequestState:1];
    }
  }

  else
  {
  }
}

- (void)stopButtonTapped:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v8 = [(NCAudioPlayerControlsView *)self delegate];
  v6 = [(NCAudioPlayerControlsView *)self playButton];

  if (v6 == v5)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [v8 playbackControls:self didRequestState:0];
    }
  }

  else
  {
  }
}

- (void)transitionToState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(&location, self);
  if (!a3 || a3 == 2)
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
    if (a3 != 1)
    {
      v11 = 0;
      v9 = 0;
      if (v4)
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
  if (!v4)
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