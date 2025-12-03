@interface PLMoviePlayerView
- (PLMoviePlayerView)initWithFrame:(CGRect)frame;
- (void)_installBackgroundView:(id)view;
- (void)dealloc;
- (void)reattachVideoView;
- (void)setDestinationPlaceholderHidden:(BOOL)hidden;
@end

@implementation PLMoviePlayerView

- (void)_installBackgroundView:(id)view
{
  [(PLMoviePlayerView *)self bounds];
  [view setFrame:?];
  [view setAutoresizingMask:18];
  [view setHidden:self->_destinationPlaceholderHidden];

  [(PLMoviePlayerView *)self addSubview:view];
}

- (void)setDestinationPlaceholderHidden:(BOOL)hidden
{
  if (self->_destinationPlaceholderHidden != hidden)
  {
    self->_destinationPlaceholderHidden = hidden;
  }
}

- (void)reattachVideoView
{
  [(PLAVPlayerView *)self->_avPlayerView removeFromSuperview];
  [(PLAVPlayerView *)self->_avPlayerView setAutoresizingMask:18];
  avPlayerView = self->_avPlayerView;
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(PLAVPlayerView *)avPlayerView setTransform:v6];
  v5 = self->_avPlayerView;
  [(PLMoviePlayerView *)self bounds];
  [(PLAVPlayerView *)v5 setFrame:?];
  [(PLMoviePlayerView *)self insertSubview:self->_avPlayerView atIndex:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLMoviePlayerView;
  [(PLMoviePlayerView *)&v3 dealloc];
}

- (PLMoviePlayerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PLMoviePlayerView;
  v3 = [(PLMoviePlayerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [PLAVPlayerView alloc];
    [(PLMoviePlayerView *)v3 bounds];
    v5 = [(PLAVPlayerView *)v4 initWithFrame:?];
    v3->_avPlayerView = v5;
    [(PLAVPlayerView *)v5 setUserInteractionEnabled:0];
    [(PLMoviePlayerView *)v3 reattachVideoView];
  }

  return v3;
}

@end