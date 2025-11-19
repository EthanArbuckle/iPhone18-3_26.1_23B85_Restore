@interface ISAnimatedImageView
- (BOOL)animatedImagePlayerIsReadyToDisplay:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ISAnimatedImageView)initWithAnimatedImage:(id)a3;
- (ISAnimatedImageView)initWithAnimatedImagePlayer:(id)a3;
- (void)animatedImagePlayerDidBeginAnimating:(id)a3;
- (void)animatedImagePlayerFrameDidChange:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)displayLayer:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setImage:(id)a3;
- (void)setPlaceholderImageView:(id)a3;
- (void)setPlayer:(id)a3;
@end

@implementation ISAnimatedImageView

- (void)displayLayer:(id)a3
{
  player = self->_player;
  v4 = a3;
  [v4 setContents:{-[ISAnimatedImagePlayer currentImage](player, "currentImage")}];
}

- (void)setPlaceholderImageView:(id)a3
{
  placeholderImageView = self->_placeholderImageView;
  if (placeholderImageView != a3)
  {
    v6 = a3;
    [(UIImageView *)placeholderImageView removeFromSuperview];
    self->_placeholderImageView = v6;
    [(ISAnimatedImageView *)self addSubview:?];
    v5 = self->_placeholderImageView;
    [(ISAnimatedImageView *)self bounds];
    [(UIImageView *)v5 setFrame:?];
    [(UIImageView *)v6 setAutoresizingMask:18];
    [(ISAnimatedImagePlayer *)self->_player updateAnimation];
  }
}

- (void)setImage:(id)a3
{
  v7 = a3;
  v4 = [(ISAnimatedImagePlayer *)self->_player animatedImage];

  v5 = v7;
  if (v4 != v7)
  {
    if (v7)
    {
      v6 = [[ISAnimatedImagePlayer alloc] initWithAnimatedImage:v7];
    }

    else
    {
      v6 = 0;
    }

    [(ISAnimatedImageView *)self setPlayer:v6];

    v5 = v7;
  }
}

- (void)animatedImagePlayerDidBeginAnimating:(id)a3
{
  placeholderImageView = self->_placeholderImageView;
  if (placeholderImageView)
  {
    [(UIImageView *)placeholderImageView setHidden:1];
  }
}

- (BOOL)animatedImagePlayerIsReadyToDisplay:(id)a3
{
  v4 = [(ISAnimatedImageView *)self window];
  if (v4)
  {
    v5 = [(ISAnimatedImageView *)self superview];
    if (v5 && ([(ISAnimatedImageView *)self isHidden]& 1) == 0)
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

- (void)animatedImagePlayerFrameDidChange:(id)a3
{
  v3 = [(ISAnimatedImageView *)self layer];
  [v3 setNeedsDisplay];
}

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = ISAnimatedImageView;
  [(ISAnimatedImageView *)&v4 setAlpha:a3];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(ISAnimatedImagePlayer *)self->_player animatedImage];
  [v5 pixelSize];
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

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  if (player != v5)
  {
    v8 = v5;
    [player unregisterDestination:self];
    objc_storeStrong(&self->_player, a3);
    if (v8)
    {
      player = [(ISAnimatedImagePlayer *)self->_player registerDestination:self];
    }

    else
    {
      v7 = [(ISAnimatedImageView *)self layer];
      [v7 setNeedsDisplay];

      player = self->_placeholderImageView;
      v5 = 0;
      if (!player)
      {
        goto LABEL_7;
      }

      player = [player setHidden:0];
    }

    v5 = v8;
  }

LABEL_7:

  MEMORY[0x2821F96F8](player, v5);
}

- (ISAnimatedImageView)initWithAnimatedImagePlayer:(id)a3
{
  v5 = a3;
  v6 = [(ISAnimatedImageView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    [(ISAnimatedImagePlayer *)v7->_player registerDestination:v7];
  }

  return v7;
}

- (ISAnimatedImageView)initWithAnimatedImage:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ISAnimatedImagePlayer alloc] initWithAnimatedImage:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ISAnimatedImageView *)self initWithAnimatedImagePlayer:v5];

  return v6;
}

@end