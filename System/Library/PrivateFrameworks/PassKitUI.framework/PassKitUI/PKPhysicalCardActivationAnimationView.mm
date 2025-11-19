@interface PKPhysicalCardActivationAnimationView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPhysicalCardActivationAnimationView)initWithFrame:(CGRect)a3;
- (void)_didFinishPlaying;
- (void)_invalidate;
- (void)_removePlayerItem;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setNameOnCard:(id)a3;
- (void)startAnimation;
@end

@implementation PKPhysicalCardActivationAnimationView

- (PKPhysicalCardActivationAnimationView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = PKPhysicalCardActivationAnimationView;
  v3 = [(PKPhysicalCardActivationAnimationView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!v3)
  {
    return v3;
  }

  IsAvailable = PKPearlIsAvailable();
  v5 = PKPassKitUIBundle();
  v6 = v5;
  if (IsAvailable)
  {
    v7 = @"PhysicalCardActivationFaceID";
  }

  else
  {
    v7 = @"PhysicalCardActivationTouchID";
  }

  v8 = [v5 URLForResource:v7 withExtension:@"mov"];

  if (!v8)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E6988168] assetWithURL:v8];
  if (!v9)
  {
LABEL_9:
    v10 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E69880B0] playerItemWithAsset:v9];
  v11 = 0;
LABEL_10:
  objc_storeStrong(&v3->_playerItem, v10);
  if ((v11 & 1) == 0)
  {
  }

  playerItem = v3->_playerItem;
  if (playerItem)
  {
    v13 = [MEMORY[0x1E6988098] playerWithPlayerItem:v3->_playerItem];
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v3->_player, v13);
  if (playerItem)
  {
  }

  [(AVPlayer *)v3->_player setVolume:0.0];
  [(AVPlayer *)v3->_player setMuted:1];
  [(AVPlayer *)v3->_player setAllowsExternalPlayback:0];
  if (v3->_player)
  {
    v14 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:?];
    playerLayer = v3->_playerLayer;
    v3->_playerLayer = v14;

    v16 = [(PKPhysicalCardActivationAnimationView *)v3 layer];
    [v16 addSublayer:v3->_playerLayer];
  }

  v17 = objc_alloc(MEMORY[0x1E69DCC10]);
  v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameOnCardLabel = v3->_nameOnCardLabel;
  v3->_nameOnCardLabel = v18;

  v20 = v3->_nameOnCardLabel;
  v21 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)v20 setTextColor:v21];

  v22 = v3->_nameOnCardLabel;
  v23 = PKRoundedSystemFontOfSizeAndWeight(10.0, *MEMORY[0x1E69DB958]);
  [(UILabel *)v22 setFont:v23];

  [(UILabel *)v3->_nameOnCardLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)v3->_nameOnCardLabel setMinimumScaleFactor:0.2];

  return v3;
}

- (void)dealloc
{
  [(PKPhysicalCardActivationAnimationView *)self _invalidate];
  v3.receiver = self;
  v3.super_class = PKPhysicalCardActivationAnimationView;
  [(PKPhysicalCardActivationAnimationView *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = result.width / 1.02272;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PKPhysicalCardActivationAnimationView;
  [(PKPhysicalCardActivationAnimationView *)&v20 layoutSubviews];
  [(PKPhysicalCardActivationAnimationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVPlayerLayer *)self->_playerLayer setFrame:v4, v6, v8, v10];
  [MEMORY[0x1E6979518] commit];
  v11 = [(UILabel *)self->_nameOnCardLabel superview];

  if (v11)
  {
    v12 = [(UILabel *)self->_nameOnCardLabel font];
    [v12 lineHeight];
    v14 = v13;

    PKFloatRoundToPixel();
    v16 = v15;
    PKFloatRoundToPixel();
    v18 = v17 - v14;
    PKFloatRoundToPixel();
    [(UILabel *)self->_nameOnCardLabel setFrame:v16, v18, v19 - v16, v14];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &PlayerKVOContext)
  {
    if (!self->_invalidated && [(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusReadyToPlay)
    {
      [(AVPlayer *)self->_player play];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKPhysicalCardActivationAnimationView;
    [(PKPhysicalCardActivationAnimationView *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)startAnimation
{
  if (!self->_invalidated && !self->_playerStarted)
  {
    if (self->_playerItem)
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      [v3 addObserver:self selector:sel__didFinishPlaying name:*MEMORY[0x1E6987A10] object:self->_playerItem];

      self->_playerStarted = 1;
      [(AVPlayerItem *)self->_playerItem addObserver:self forKeyPath:@"status" options:0 context:&PlayerKVOContext];
      if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusReadyToPlay)
      {
        player = self->_player;

        [(AVPlayer *)player play];
      }
    }
  }
}

- (void)setNameOnCard:(id)a3
{
  v4 = a3;
  v5 = self->_nameOnCard;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

LABEL_14:
    v8 = v13;
    goto LABEL_15;
  }

  if (!v6 || !v5)
  {

    v8 = v13;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  v8 = v13;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    nameOnCard = self->_nameOnCard;
    self->_nameOnCard = v9;

    nameOnCardLabel = self->_nameOnCardLabel;
    if (self->_nameOnCard)
    {
      v12 = [(UILabel *)nameOnCardLabel superview];

      if (!v12)
      {
        [(PKPhysicalCardActivationAnimationView *)self addSubview:self->_nameOnCardLabel];
      }

      [(UILabel *)self->_nameOnCardLabel setText:self->_nameOnCard];
    }

    else
    {
      [(UILabel *)nameOnCardLabel setText:0];
      [(UILabel *)self->_nameOnCardLabel removeFromSuperview];
    }

    [(PKPhysicalCardActivationAnimationView *)self setNeedsLayout];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKPhysicalCardActivationAnimationView *)self _removePlayerItem];
    player = self->_player;
    self->_player = 0;

    [(AVPlayerLayer *)self->_playerLayer setPlayer:0];
    [(AVPlayerLayer *)self->_playerLayer removeFromSuperlayer];
    playerLayer = self->_playerLayer;
    self->_playerLayer = 0;
  }
}

- (void)_didFinishPlaying
{
  if (self->_playerItem)
  {
    v3 = [(AVPlayer *)self->_player currentItem];
    playerItem = self->_playerItem;

    if (v3 == playerItem)
    {
      player = self->_player;
      CMTimeMake(&v6, 0, 1);
      [(AVPlayer *)player seekToTime:&v6];
      [(AVPlayer *)self->_player play];
    }
  }
}

- (void)_removePlayerItem
{
  if (self->_playerItem)
  {
    if (self->_playerStarted)
    {
      [(AVPlayer *)self->_player pause];
      [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:@"status" context:&PlayerKVOContext];
    }

    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:0];
    playerItem = self->_playerItem;
    self->_playerItem = 0;
  }
}

@end