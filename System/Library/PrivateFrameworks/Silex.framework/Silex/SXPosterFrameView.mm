@interface SXPosterFrameView
- (SXPosterFrameView)initWithFrame:(CGRect)frame;
- (void)setImage:(id)image animated:(BOOL)animated;
@end

@implementation SXPosterFrameView

- (SXPosterFrameView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = SXPosterFrameView;
  v3 = [(SXPosterFrameView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SXPosterFrameView *)v3 setContentMode:2];
    [(SXPosterFrameView *)v4 setUserInteractionEnabled:1];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(SXPosterFrameView *)v4 setBackgroundColor:blackColor];

    [(SXPosterFrameView *)v4 setClipsToBounds:1];
    v6 = objc_alloc(MEMORY[0x1E69CE128]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    playButton = v4->_playButton;
    v4->_playButton = v7;

    [(SVVideoPlayButton *)v4->_playButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SXPosterFrameView *)v4 addSubview:v4->_playButton];
    playButton = [(SXPosterFrameView *)v4 playButton];
    centerXAnchor = [playButton centerXAnchor];
    centerXAnchor2 = [(SXPosterFrameView *)v4 centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v12 setActive:1];

    playButton2 = [(SXPosterFrameView *)v4 playButton];
    centerYAnchor = [playButton2 centerYAnchor];
    centerYAnchor2 = [(SXPosterFrameView *)v4 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v16 setActive:1];

    playButton3 = [(SXPosterFrameView *)v4 playButton];
    widthAnchor = [playButton3 widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:80.0];
    [v19 setActive:1];

    playButton4 = [(SXPosterFrameView *)v4 playButton];
    heightAnchor = [playButton4 heightAnchor];
    v22 = [heightAnchor constraintEqualToConstant:80.0];
    [v22 setActive:1];
  }

  return v4;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  v7 = imageCopy;
  if (animatedCopy)
  {
    v8 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__SXPosterFrameView_setImage_animated___block_invoke;
    v9[3] = &unk_1E84FEC78;
    v9[4] = self;
    v10 = imageCopy;
    [v8 transitionWithView:self duration:5242880 options:v9 animations:0 completion:0.100000001];
  }

  else
  {
    [(SXPosterFrameView *)self setImage:imageCopy];
  }
}

@end