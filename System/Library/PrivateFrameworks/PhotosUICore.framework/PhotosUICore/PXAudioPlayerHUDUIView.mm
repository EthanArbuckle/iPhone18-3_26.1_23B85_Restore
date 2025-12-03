@interface PXAudioPlayerHUDUIView
- (PXAudioPlayerHUDUIView)initWithFrame:(CGRect)frame audioPlayer:(id)player;
- (void)_updateDisplayLink;
- (void)_updateInfoText;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation PXAudioPlayerHUDUIView

- (void)_updateDisplayLink
{
  window = [(PXAudioPlayerHUDUIView *)self window];

  displayLink = self->_displayLink;
  if (window)
  {
    if (displayLink)
    {
      return;
    }

    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink_];
    v6 = self->_displayLink;
    self->_displayLink = v5;

    v7 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v7 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
    v8 = mainRunLoop;
  }

  else
  {
    if (!displayLink)
    {
      return;
    }

    [(CADisplayLink *)displayLink invalidate];
    v8 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_updateInfoText
{
  audioPlayer = self->_audioPlayer;
  [(UILabel *)self->_trackLabel bounds];
  v6 = [(PXAudioPlayer *)audioPlayer lcdStringForSize:v4, v5];
  [(UILabel *)self->_trackLabel setText:v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXAudioPlayerHUDUIView;
  [(PXAudioPlayerHUDUIView *)&v3 layoutSubviews];
  [(PXAudioPlayerHUDUIView *)self bounds];
  v5 = CGRectInset(v4, 30.0, 30.0);
  [(UILabel *)self->_trackLabel setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXAudioPlayerHUDUIView;
  [(PXAudioPlayerHUDUIView *)&v3 didMoveToWindow];
  [(PXAudioPlayerHUDUIView *)self _updateDisplayLink];
}

- (PXAudioPlayerHUDUIView)initWithFrame:(CGRect)frame audioPlayer:(id)player
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  playerCopy = player;
  v17.receiver = self;
  v17.super_class = PXAudioPlayerHUDUIView;
  height = [(PXAudioPlayerHUDUIView *)&v17 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_audioPlayer, player);
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    trackLabel = v12->_trackLabel;
    v12->_trackLabel = v13;

    [(UILabel *)v12->_trackLabel setNumberOfLines:0];
    [(UILabel *)v12->_trackLabel setTextAlignment:0];
    [(PXAudioPlayerHUDUIView *)v12 addSubview:v12->_trackLabel];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXAudioPlayerHUDUIView *)v12 setBackgroundColor:systemBackgroundColor];

    [(PXAudioPlayerHUDUIView *)v12 _updateInfoText];
  }

  return v12;
}

@end