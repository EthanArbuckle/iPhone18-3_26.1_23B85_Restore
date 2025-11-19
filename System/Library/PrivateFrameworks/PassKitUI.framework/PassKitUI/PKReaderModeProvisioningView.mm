@interface PKReaderModeProvisioningView
+ (id)watchImage:(BOOL)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKReaderModeProvisioningView)initWithFrame:(CGRect)a3 context:(int64_t)a4 product:(id)a5 isWatch:(BOOL)a6;
- (void)_loadAnimation;
- (void)layoutSubviews;
- (void)setDigitalCardImage:(id)a3;
- (void)setPlasticCardImage:(id)a3;
- (void)setState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setTransferringProgress:(double)a3 duration:(double)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKReaderModeProvisioningView

- (PKReaderModeProvisioningView)initWithFrame:(CGRect)a3 context:(int64_t)a4 product:(id)a5 isWatch:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a5;
  v26.receiver = self;
  v26.super_class = PKReaderModeProvisioningView;
  v14 = [(PKReaderModeProvisioningView *)&v26 initWithFrame:x, y, width, height];
  if (v14)
  {
    v15 = [v13 provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
    v16 = [v15 readerModeResources];

    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69BC160]];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BC150]];
    cardPlacement = v14->_cardPlacement;
    v14->_cardPlacement = v18;

    if (PKPaymentSetupContextIsBridge())
    {
      LOBYTE(v20) = 1;
    }

    else
    {
      v20 = PKPaymentSetupForceBridgeAppearance() | v6;
    }

    v14->_isProvisioningToWatch = v20;
    [(PKReaderModeProvisioningView *)v14 _loadAnimation];
    v21 = [[PKReaderModeHeaderView alloc] initWithState:2 context:a4 product:v13];
    headerView = v14->_headerView;
    v14->_headerView = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
    progressView = v14->_progressView;
    v14->_progressView = v23;

    [(UIProgressView *)v14->_progressView setHidden:1];
    [(PKReaderModeProvisioningView *)v14 addSubview:v14->_headerView];
    [(PKReaderModeProvisioningView *)v14 addSubview:v14->_progressView];
  }

  return v14;
}

- (void)_loadAnimation
{
  v3 = [(PKReaderModeProvisioningView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = @"Reader_mode_Dark_ICE";
  }

  else
  {
    v5 = @"Reader_mode_Light_ICE";
  }

  v11 = v5;
  if (self->_isProvisioningToWatch)
  {
    v6 = [PKReaderModeProvisioningView watchImage:v4 == 2];
  }

  else
  {
    v6 = 0;
  }

  if ([(NSString *)self->_cardPlacement isEqualToString:*MEMORY[0x1E69BC158]])
  {
    v11 = [v11 stringByAppendingString:@"_Lower"];
  }

  animationView = self->_animationView;
  if (animationView)
  {
    v8 = [(PKReaderModeAnimationView *)animationView state];
    [(PKReaderModeAnimationView *)self->_animationView removeFromSuperview];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[PKReaderModeAnimationView alloc] initWithAssetName:v11 forPhoneTarget:!self->_isProvisioningToWatch];
  v10 = self->_animationView;
  self->_animationView = v9;

  [(PKReaderModeAnimationView *)self->_animationView setClipsToBounds:1];
  if (self->_digitalCardImage)
  {
    [(PKReaderModeAnimationView *)self->_animationView setDigitalCardImage:?];
  }

  if (self->_plasticCardImage)
  {
    [(PKReaderModeAnimationView *)self->_animationView setPlasticCardImage:?];
  }

  [(PKReaderModeAnimationView *)self->_animationView setWatchAssetImage:v6];
  [(PKReaderModeAnimationView *)self->_animationView setState:v8];
  [(PKReaderModeProvisioningView *)self addSubview:self->_animationView];
  [(PKReaderModeProvisioningView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKReaderModeProvisioningView;
  [(PKReaderModeProvisioningView *)&v16 layoutSubviews];
  [(PKReaderModeAnimationView *)self->_animationView frame];
  v4 = v3;
  v6 = v5;
  headerView = self->_headerView;
  [(PKReaderModeProvisioningView *)self bounds];
  [(PKTableHeaderView *)headerView sizeThatFits:v8, 1.79769313e308];
  v10 = v9;
  v11 = v4 + v6 + 10.0;
  [(PKReaderModeHeaderView *)self->_headerView setFrame:0.0, v11, v12, v9];
  [(PKReaderModeHeaderView *)self->_headerView setNeedsLayout];
  [(UIProgressView *)self->_progressView frame];
  v14 = v13;
  [(PKReaderModeProvisioningView *)self bounds];
  [(UIProgressView *)self->_progressView setFrame:80.0, v11 + v10, v15 + -160.0, v14];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PKReaderModeAnimationView *)self->_animationView sizeThatFits:?];
  v7 = v6;
  [(PKTableHeaderView *)self->_headerView sizeThatFits:width, height];
  v9 = v7 + 10.0 + v8;
  if (([(UIProgressView *)self->_progressView isHidden]& 1) == 0)
  {
    [(UIProgressView *)self->_progressView sizeThatFits:width, height];
    v9 = v9 + v10;
  }

  v11 = width;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setState:(unint64_t)a3 animated:(BOOL)a4
{
  [(PKReaderModeAnimationView *)self->_animationView setState:a3 animated:a4];
  [(PKReaderModeHeaderView *)self->_headerView setState:a3];
  [(UIProgressView *)self->_progressView setHidden:a3 != 3];
  if (!a3)
  {
    [(UIProgressView *)self->_progressView setProgress:0.0];
  }

  [(PKReaderModeProvisioningView *)self setNeedsLayout];
}

- (void)setTransferringProgress:(double)a3 duration:(double)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKReaderModeProvisioningView_setTransferringProgress_duration___block_invoke;
  block[3] = &unk_1E8012188;
  block[4] = self;
  *&block[5] = a3;
  *&block[6] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __65__PKReaderModeProvisioningView_setTransferringProgress_duration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 424) _setProgressAnimated:4 duration:v1 delay:*(a1 + 48) options:0.0];
}

- (void)setPlasticCardImage:(id)a3
{
  objc_storeStrong(&self->_plasticCardImage, a3);
  v5 = a3;
  [(PKReaderModeAnimationView *)self->_animationView setPlasticCardImage:self->_plasticCardImage];
}

- (void)setDigitalCardImage:(id)a3
{
  objc_storeStrong(&self->_digitalCardImage, a3);
  v5 = a3;
  [(PKReaderModeAnimationView *)self->_animationView setDigitalCardImage:self->_digitalCardImage];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKReaderModeProvisioningView;
  [(PKReaderModeProvisioningView *)&v8 traitCollectionDidChange:v4];
  if (!v4 || (v5 = [v4 userInterfaceStyle], -[PKReaderModeProvisioningView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
  {
    [(PKReaderModeProvisioningView *)self _loadAnimation];
  }
}

+ (id)watchImage:(BOOL)a3
{
  v4 = objc_alloc_init(PKWatchHeroImageView);
  [(PKWatchHeroImageView *)v4 setHideDoneLabel:1];
  [(PKWatchHeroImageView *)v4 sizeThatFits:1.79769313e308, 1.79769313e308];
  v6 = v5;
  PKSizeAlignedInRect();
  v23 = CGRectInset(v22, 23.0, 0.0);
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v10 = v23.origin.x + 1.5;
  [(PKWatchHeroImageView *)v4 setFrame:v23.origin.x + 1.5, v23.origin.y];
  [(PKWatchHeroImageView *)v4 setNeedsLayout];
  [(PKWatchHeroImageView *)v4 layoutIfNeeded];
  v11 = PKUIScreenScale();
  v20.width = width;
  v20.height = height;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v11);
  CurrentContext = UIGraphicsGetCurrentContext();
  v13 = [(PKWatchHeroImageView *)v4 layer];
  [v13 renderInContext:CurrentContext];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v21.width = v6;
  v21.height = v6;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v11);
  v15 = UIGraphicsGetCurrentContext();
  if (a3)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v16 = ;
  [v16 setFill];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v6;
  v24.size.height = v6;
  CGContextFillRect(v15, v24);
  [v14 drawInRect:{v10, y, width, height}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

@end