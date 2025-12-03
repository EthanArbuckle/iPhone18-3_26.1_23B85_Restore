@interface PKPhysicalCardActivationAnimationView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPhysicalCardActivationAnimationView)initWithFrame:(CGRect)frame;
- (void)_didFinishPlaying;
- (void)_invalidate;
- (void)_removePlayerItem;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setNameOnCard:(id)card;
- (void)startAnimation;
@end

@implementation PKPhysicalCardActivationAnimationView

- (PKPhysicalCardActivationAnimationView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = PKPhysicalCardActivationAnimationView;
  v3 = [(PKPhysicalCardActivationAnimationView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    layer = [(PKPhysicalCardActivationAnimationView *)v3 layer];
    [layer addSublayer:v3->_playerLayer];
  }

  v17 = objc_alloc(MEMORY[0x1E69DCC10]);
  v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameOnCardLabel = v3->_nameOnCardLabel;
  v3->_nameOnCardLabel = v18;

  v20 = v3->_nameOnCardLabel;
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)v20 setTextColor:systemGrayColor];

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
  superview = [(UILabel *)self->_nameOnCardLabel superview];

  if (superview)
  {
    font = [(UILabel *)self->_nameOnCardLabel font];
    [font lineHeight];
    v14 = v13;

    PKFloatRoundToPixel();
    v16 = v15;
    PKFloatRoundToPixel();
    v18 = v17 - v14;
    PKFloatRoundToPixel();
    [(UILabel *)self->_nameOnCardLabel setFrame:v16, v18, v19 - v16, v14];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &PlayerKVOContext)
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
    [(PKPhysicalCardActivationAnimationView *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)startAnimation
{
  if (!self->_invalidated && !self->_playerStarted)
  {
    if (self->_playerItem)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__didFinishPlaying name:*MEMORY[0x1E6987A10] object:self->_playerItem];

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

- (void)setNameOnCard:(id)card
{
  cardCopy = card;
  v5 = self->_nameOnCard;
  v6 = cardCopy;
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
      superview = [(UILabel *)nameOnCardLabel superview];

      if (!superview)
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
    currentItem = [(AVPlayer *)self->_player currentItem];
    playerItem = self->_playerItem;

    if (currentItem == playerItem)
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