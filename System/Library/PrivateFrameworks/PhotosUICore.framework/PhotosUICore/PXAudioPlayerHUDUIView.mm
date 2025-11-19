@interface PXAudioPlayerHUDUIView
- (PXAudioPlayerHUDUIView)initWithFrame:(CGRect)a3 audioPlayer:(id)a4;
- (void)_updateDisplayLink;
- (void)_updateInfoText;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation PXAudioPlayerHUDUIView

- (void)_updateDisplayLink
{
  v3 = [(PXAudioPlayerHUDUIView *)self window];

  displayLink = self->_displayLink;
  if (v3)
  {
    if (displayLink)
    {
      return;
    }

    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink_];
    v6 = self->_displayLink;
    self->_displayLink = v5;

    v7 = self->_displayLink;
    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v7 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];
    v8 = v9;
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

- (PXAudioPlayerHUDUIView)initWithFrame:(CGRect)a3 audioPlayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = PXAudioPlayerHUDUIView;
  v11 = [(PXAudioPlayerHUDUIView *)&v17 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_audioPlayer, a4);
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    trackLabel = v12->_trackLabel;
    v12->_trackLabel = v13;

    [(UILabel *)v12->_trackLabel setNumberOfLines:0];
    [(UILabel *)v12->_trackLabel setTextAlignment:0];
    [(PXAudioPlayerHUDUIView *)v12 addSubview:v12->_trackLabel];
    v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXAudioPlayerHUDUIView *)v12 setBackgroundColor:v15];

    [(PXAudioPlayerHUDUIView *)v12 _updateInfoText];
  }

  return v12;
}

@end