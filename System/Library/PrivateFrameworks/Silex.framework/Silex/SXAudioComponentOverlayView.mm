@interface SXAudioComponentOverlayView
- (SXAudioComponentOverlayView)initWithFrame:(CGRect)frame;
- (id)image;
- (void)setImage:(id)image;
- (void)startActivityIndicator;
- (void)stopActivityIndicator;
@end

@implementation SXAudioComponentOverlayView

- (SXAudioComponentOverlayView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = SXAudioComponentOverlayView;
  v3 = [(SXAudioComponentOverlayView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = SXBundle();
    v6 = [v4 imageNamed:@"SXAudioOnlyIndicator" inBundle:v5];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v8 = [v6 _flatImageWithColor:systemGrayColor];
    audioIndicatorImage = v3->_audioIndicatorImage;
    v3->_audioIndicatorImage = v8;

    [(SXAudioComponentOverlayView *)v3 setImage:v3->_audioIndicatorImage];
    [(SXAudioComponentOverlayView *)v3 setContentMode:4];
    v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:0];
    activityIndicator = v3->_activityIndicator;
    v3->_activityIndicator = v10;

    [(UIActivityIndicatorView *)v3->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v3->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SXAudioComponentOverlayView *)v3 addSubview:v3->_activityIndicator];
    centerXAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator centerXAnchor];
    centerXAnchor2 = [(SXAudioComponentOverlayView *)v3 centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v14 setActive:1];

    centerYAnchor = [(UIActivityIndicatorView *)v3->_activityIndicator centerYAnchor];
    centerYAnchor2 = [(SXAudioComponentOverlayView *)v3 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v17 setActive:1];

    v18 = objc_alloc(MEMORY[0x1E69CE128]);
    v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    playButton = v3->_playButton;
    v3->_playButton = v19;

    [(UIButton *)v3->_playButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SXAudioComponentOverlayView *)v3 addSubview:v3->_playButton];
    centerXAnchor3 = [(UIButton *)v3->_playButton centerXAnchor];
    centerXAnchor4 = [(SXAudioComponentOverlayView *)v3 centerXAnchor];
    v23 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v23 setActive:1];

    centerYAnchor3 = [(UIButton *)v3->_playButton centerYAnchor];
    centerYAnchor4 = [(SXAudioComponentOverlayView *)v3 centerYAnchor];
    v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v26 setActive:1];

    widthAnchor = [(UIButton *)v3->_playButton widthAnchor];
    v28 = [widthAnchor constraintEqualToConstant:80.0];
    [v28 setActive:1];

    heightAnchor = [(UIButton *)v3->_playButton heightAnchor];
    v30 = [heightAnchor constraintEqualToConstant:80.0];
    [v30 setActive:1];
  }

  return v3;
}

- (id)image
{
  v6.receiver = self;
  v6.super_class = SXAudioComponentOverlayView;
  image = [(SXAudioComponentOverlayView *)&v6 image];
  audioIndicatorImage = [(SXAudioComponentOverlayView *)self audioIndicatorImage];

  if (image == audioIndicatorImage)
  {

    image = 0;
  }

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  audioIndicatorImage = [(SXAudioComponentOverlayView *)self audioIndicatorImage];

  if (audioIndicatorImage != imageCopy)
  {
    [(SXAudioComponentOverlayView *)self setContentMode:1];
  }

  v6.receiver = self;
  v6.super_class = SXAudioComponentOverlayView;
  [(SXAudioComponentOverlayView *)&v6 setImage:imageCopy];
}

- (void)startActivityIndicator
{
  activityIndicator = [(SXAudioComponentOverlayView *)self activityIndicator];
  [activityIndicator setAlpha:0.0];

  activityIndicator2 = [(SXAudioComponentOverlayView *)self activityIndicator];
  [activityIndicator2 setHidden:0];

  activityIndicator3 = [(SXAudioComponentOverlayView *)self activityIndicator];
  [activityIndicator3 startAnimating];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke;
  v7[3] = &unk_1E84FED18;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke_2;
  v6[3] = &unk_1E84FFD40;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.2];
}

void __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 setAlpha:1.0];
}

void __53__SXAudioComponentOverlayView_startActivityIndicator__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) playButton];
  [v1 setHidden:1];
}

- (void)stopActivityIndicator
{
  playButton = [(SXAudioComponentOverlayView *)self playButton];
  [playButton setHidden:0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke;
  v5[3] = &unk_1E84FED18;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke_2;
  v4[3] = &unk_1E84FFD40;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:0.2];
}

void __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 setAlpha:0.0];
}

void __52__SXAudioComponentOverlayView_stopActivityIndicator__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activityIndicator];
  [v2 stopAnimating];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 setHidden:1];
}

@end