@interface ISAnimatedImageView
- (BOOL)animatedImagePlayerIsReadyToDisplay:(id)display;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ISAnimatedImageView)initWithAnimatedImage:(id)image;
- (ISAnimatedImageView)initWithAnimatedImagePlayer:(id)player;
- (void)animatedImagePlayerDidBeginAnimating:(id)animating;
- (void)animatedImagePlayerFrameDidChange:(id)change;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)displayLayer:(id)layer;
- (void)setAlpha:(double)alpha;
- (void)setImage:(id)image;
- (void)setPlaceholderImageView:(id)view;
- (void)setPlayer:(id)player;
@end

@implementation ISAnimatedImageView

- (void)displayLayer:(id)layer
{
  player = self->_player;
  layerCopy = layer;
  [layerCopy setContents:{-[ISAnimatedImagePlayer currentImage](player, "currentImage")}];
}

- (void)setPlaceholderImageView:(id)view
{
  placeholderImageView = self->_placeholderImageView;
  if (placeholderImageView != view)
  {
    viewCopy = view;
    [(UIImageView *)placeholderImageView removeFromSuperview];
    self->_placeholderImageView = viewCopy;
    [(ISAnimatedImageView *)self addSubview:?];
    v5 = self->_placeholderImageView;
    [(ISAnimatedImageView *)self bounds];
    [(UIImageView *)v5 setFrame:?];
    [(UIImageView *)viewCopy setAutoresizingMask:18];
    [(ISAnimatedImagePlayer *)self->_player updateAnimation];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  animatedImage = [(ISAnimatedImagePlayer *)self->_player animatedImage];

  v5 = imageCopy;
  if (animatedImage != imageCopy)
  {
    if (imageCopy)
    {
      v6 = [[ISAnimatedImagePlayer alloc] initWithAnimatedImage:imageCopy];
    }

    else
    {
      v6 = 0;
    }

    [(ISAnimatedImageView *)self setPlayer:v6];

    v5 = imageCopy;
  }
}

- (void)animatedImagePlayerDidBeginAnimating:(id)animating
{
  placeholderImageView = self->_placeholderImageView;
  if (placeholderImageView)
  {
    [(UIImageView *)placeholderImageView setHidden:1];
  }
}

- (BOOL)animatedImagePlayerIsReadyToDisplay:(id)display
{
  window = [(ISAnimatedImageView *)self window];
  if (window)
  {
    superview = [(ISAnimatedImageView *)self superview];
    if (superview && ([(ISAnimatedImageView *)self isHidden]& 1) == 0)
    {
      [(ISAnimatedImageView *)self alpha];
      v6 = v7 > 0.0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)animatedImagePlayerFrameDidChange:(id)change
{
  layer = [(ISAnimatedImageView *)self layer];
  [layer setNeedsDisplay];
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = ISAnimatedImageView;
  [(ISAnimatedImageView *)&v4 setAlpha:alpha];
  [(ISAnimatedImagePlayer *)self->_player updateAnimation];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = ISAnimatedImageView;
  [(ISAnimatedImageView *)&v3 didMoveToSuperview];
  [(ISAnimatedImagePlayer *)self->_player updateAnimation];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = ISAnimatedImageView;
  [(ISAnimatedImageView *)&v3 didMoveToWindow];
  [(ISAnimatedImagePlayer *)self->_player updateAnimation];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  animatedImage = [(ISAnimatedImagePlayer *)self->_player animatedImage];
  [animatedImage pixelSize];
  if (v7 == 0.0)
  {
    v8 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    if (height != 0.0 && width != 0.0)
    {
      v12 = v6 / v7;
      if (width / height <= v8 / v7)
      {
        v8 = width;
        v9 = width / v12;
      }

      else
      {
        v8 = height * v12;
        v9 = height;
      }
    }
  }

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)dealloc
{
  [(ISAnimatedImagePlayer *)self->_player unregisterDestination:self];
  v3.receiver = self;
  v3.super_class = ISAnimatedImageView;
  [(ISAnimatedImageView *)&v3 dealloc];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  if (player != playerCopy)
  {
    v8 = playerCopy;
    [player unregisterDestination:self];
    objc_storeStrong(&self->_player, player);
    if (v8)
    {
      player = [(ISAnimatedImagePlayer *)self->_player registerDestination:self];
    }

    else
    {
      layer = [(ISAnimatedImageView *)self layer];
      [layer setNeedsDisplay];

      player = self->_placeholderImageView;
      playerCopy = 0;
      if (!player)
      {
        goto LABEL_7;
      }

      player = [player setHidden:0];
    }

    playerCopy = v8;
  }

LABEL_7:

  MEMORY[0x2821F96F8](player, playerCopy);
}

- (ISAnimatedImageView)initWithAnimatedImagePlayer:(id)player
{
  playerCopy = player;
  v6 = [(ISAnimatedImageView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    [(ISAnimatedImagePlayer *)v7->_player registerDestination:v7];
  }

  return v7;
}

- (ISAnimatedImageView)initWithAnimatedImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    v5 = [[ISAnimatedImagePlayer alloc] initWithAnimatedImage:imageCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ISAnimatedImageView *)self initWithAnimatedImagePlayer:v5];

  return v6;
}

@end