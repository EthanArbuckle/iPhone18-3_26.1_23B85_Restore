@interface PKWatchHeroImageView
+ (CGSize)heroWatchImageSize;
+ (CGSize)recommendedCardImageSize;
- (CGPoint)watchScreenCenter;
- (CGRect)cardFrame;
- (CGRect)spaceBelowCardFrame;
- (CGRect)watchScreenFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKWatchHeroImageView)initWithFrame:(CGRect)frame;
- (void)_layoutIfNeededForSizingCalculations;
- (void)_updatedAccessibilityLabel;
- (void)layoutSubviews;
- (void)setCardImage:(id)image;
- (void)setHideDoneLabel:(BOOL)label;
- (void)setSize:(unint64_t)size;
- (void)setWallpaperImage:(id)image contentMode:(int64_t)mode;
@end

@implementation PKWatchHeroImageView

- (PKWatchHeroImageView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = PKWatchHeroImageView;
  v3 = [(PKWatchHeroImageView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_size = 0;
    v5 = objc_alloc(MEMORY[0x1E698F568]);
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    +[PKWatchHeroImageView heroWatchImageSize];
    v10 = [v5 initWithFrame:{v6, v7, v8, v9}];
    watchView = v4->_watchView;
    v4->_watchView = v10;

    [(BPSIllustratedWatchView *)v4->_watchView setAllowScaling:1];
    [(PKWatchHeroImageView *)v4 addSubview:v4->_watchView];
    v12 = objc_alloc(MEMORY[0x1E69DCC10]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    [(UILabel *)v13 setTextColor:systemWhiteColor];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC58]);
    [(UILabel *)v13 setFont:v15];
    v16 = objc_alloc(MEMORY[0x1E696AD40]);
    v17 = PKLocalizedPaymentString(&cfstr_WatchPaymentCo.isa);
    v18 = [v16 initWithString:v17];

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v18 insertAttributedString:v19 atIndex:0];

    v20 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
    v21 = [MEMORY[0x1E69DCAD8] configurationWithFont:v15 scale:1];
    v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v21];
    v23 = [v22 imageWithTintColor:systemWhiteColor];
    [v20 setImage:v23];

    v24 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v20];
    [v18 insertAttributedString:v24 atIndex:0];

    v25 = [v18 length];
    [v18 addAttribute:*MEMORY[0x1E69DB648] value:v15 range:{0, v25}];
    [(UILabel *)v13 setAttributedText:v18];
    doneLabel = v4->_doneLabel;
    v4->_doneLabel = v13;
    v27 = v13;

    [(PKWatchHeroImageView *)v4 addSubview:v4->_doneLabel];
    [(PKWatchHeroImageView *)v4 setClipsToBounds:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];

    [(PKWatchHeroImageView *)v4 setBackgroundColor:clearColor];
    [(PKWatchHeroImageView *)v4 setAccessibilityTraits:*MEMORY[0x1E69DDA18]];
    [(PKWatchHeroImageView *)v4 setIsAccessibilityElement:1];
    [(PKWatchHeroImageView *)v4 _updatedAccessibilityLabel];
  }

  return v4;
}

- (void)_updatedAccessibilityLabel
{
  if (self->_cardArtImageView)
  {
    v3 = @"WATCH_DEVICE_ACCESSIBILITY_LABEL_PASS";
  }

  else
  {
    v3 = @"WATCH_DEVICE_ACCESSIBILITY_LABEL";
  }

  v4 = PKLocalizedPaymentString(&v3->isa);
  [(PKWatchHeroImageView *)self setAccessibilityLabel:v4];
}

- (CGPoint)watchScreenCenter
{
  [(PKWatchHeroImageView *)self watchScreenFrame];
  PKFloatRoundToPixel();
  v3 = v2;
  PKFloatRoundToPixel();
  v5 = v4;
  v6 = v3;
  result.y = v5;
  result.x = v6;
  return result;
}

- (CGRect)watchScreenFrame
{
  [(PKWatchHeroImageView *)self _layoutIfNeededForSizingCalculations];
  [(BPSIllustratedWatchView *)self->_watchView watchScreenInsetGuide];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BPSIllustratedWatchView *)self->_watchView frame];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v15 = v8;
  v16 = v10;

  return CGRectInset(*&v12, 3.0, 0.0);
}

- (CGRect)cardFrame
{
  [(PKWatchHeroImageView *)self watchScreenFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  +[PKBridgeWatchAttributeController heroWatchSize];
  UIRoundToViewScale();
  v9 = v8;
  UIRoundToViewScale();
  v11 = v10;
  v12 = v5 + v9;
  v13 = v3;
  v14 = v7;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)spaceBelowCardFrame
{
  [(PKWatchHeroImageView *)self cardFrame];
  v4 = v3;
  rect = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKWatchHeroImageView *)self watchScreenFrame];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  rect_16 = CGRectGetMinX(v24);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  rect_8 = CGRectGetMaxY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  v28.origin.x = rect;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v17 = MaxY - CGRectGetMaxY(v28);
  v19 = rect_8;
  v18 = rect_16;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (CGSize)heroWatchImageSize
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = (&unk_1BE115B80 + 8 * v2);
  v4 = (&unk_1BE115BC8 + 8 * v2);
  if (v2 >= 9)
  {
    v4 = (MEMORY[0x1E695F060] + 8);
    v3 = MEMORY[0x1E695F060];
  }

  v5 = *v3;
  v6 = *v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PKWatchHeroImageView;
  [(PKWatchHeroImageView *)&v29 layoutSubviews];
  [(PKWatchHeroImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKWatchHeroImageView *)self bounds];
  self->_cachedLayoutBounds.origin.x = v13;
  self->_cachedLayoutBounds.origin.y = v14;
  self->_cachedLayoutBounds.size.width = v11;
  self->_cachedLayoutBounds.size.height = v12;
  watchView = self->_watchView;
  if (self->_size)
  {
    LODWORD(v11) = 1148846080;
    LODWORD(v12) = 1112014848;
    [(BPSIllustratedWatchView *)self->_watchView systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v10 verticalFittingPriority:v11, v12];
    watchView = self->_watchView;
    PKSizeAlignedInRect();
    v4 = v16;
    v6 = v17;
    v8 = v18;
    v10 = v19;
  }

  [(BPSIllustratedWatchView *)watchView setFrame:v4, v6, v8, v10];
  [(BPSIllustratedWatchView *)self->_watchView layoutIfNeeded];
  wallpaperImageView = self->_wallpaperImageView;
  if (wallpaperImageView)
  {
    [(PKWatchHeroImageView *)self watchScreenFrame];
    [(UIImageView *)wallpaperImageView setFrame:?];
  }

  cardArtImageView = self->_cardArtImageView;
  if (cardArtImageView)
  {
    [(PKWatchHeroImageView *)self cardFrame];
    [(UIImageView *)cardArtImageView setFrame:?];
  }

  if (!self->_hideDoneLabel)
  {
    [(PKWatchHeroImageView *)self spaceBelowCardFrame];
    [(UILabel *)self->_doneLabel sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v23 = v22;
    v25 = v24;
    UIRoundToViewScale();
    v27 = v26;
    UIRoundToViewScale();
    [(UILabel *)self->_doneLabel setFrame:v27, v28, v23, v25];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [PKWatchHeroImageView heroWatchImageSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)recommendedCardImageSize
{
  +[PKWatchHeroImageView heroWatchImageSize];

  PKSizeRoundToPixel();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(unint64_t)size
{
  if (self->_size != size)
  {
    self->_size = size;
    [(BPSIllustratedWatchView *)self->_watchView setAllowScaling:size == 0];

    [(PKWatchHeroImageView *)self setNeedsLayout];
  }
}

- (void)_layoutIfNeededForSizingCalculations
{
  [(PKWatchHeroImageView *)self bounds];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  if (!CGRectEqualToRect(v8, self->_cachedLayoutBounds))
  {
    self->_cachedLayoutBounds.origin.x = x;
    self->_cachedLayoutBounds.origin.y = y;
    self->_cachedLayoutBounds.size.width = width;
    self->_cachedLayoutBounds.size.height = height;

    [(PKWatchHeroImageView *)self layoutIfNeeded];
  }
}

- (void)setHideDoneLabel:(BOOL)label
{
  if (self->_hideDoneLabel != label)
  {
    self->_hideDoneLabel = label;
    if (label)
    {
      [(UILabel *)self->_doneLabel removeFromSuperview];
    }

    else
    {
      [(PKWatchHeroImageView *)self addSubview:self->_doneLabel];
    }

    [(PKWatchHeroImageView *)self setNeedsLayout];
  }
}

- (void)setWallpaperImage:(id)image contentMode:(int64_t)mode
{
  imageCopy = image;
  wallpaperImageView = self->_wallpaperImageView;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!wallpaperImageView)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
      v9 = self->_wallpaperImageView;
      self->_wallpaperImageView = v8;

      [(UIImageView *)self->_wallpaperImageView setContentMode:mode];
      [(UIImageView *)self->_wallpaperImageView setClipsToBounds:1];
      [(BPSIllustratedWatchView *)self->_watchView addSubview:self->_wallpaperImageView];
      imageCopy = v11;
      wallpaperImageView = self->_wallpaperImageView;
    }

    [(UIImageView *)wallpaperImageView setImage:imageCopy];
  }

  else
  {
    [(UIImageView *)wallpaperImageView removeFromSuperview];
    v10 = self->_wallpaperImageView;
    self->_wallpaperImageView = 0;
  }

  [(PKWatchHeroImageView *)self setNeedsLayout];
}

- (void)setCardImage:(id)image
{
  imageCopy = image;
  cardArtImageView = self->_cardArtImageView;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!cardArtImageView)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
      v7 = self->_cardArtImageView;
      self->_cardArtImageView = v6;

      [(UIImageView *)self->_cardArtImageView setContentMode:1];
      [(BPSIllustratedWatchView *)self->_watchView addSubview:self->_cardArtImageView];
      layer = [(UIImageView *)self->_cardArtImageView layer];
      [(PKWatchHeroImageView *)self cardFrame];
      +[PKTransactionDataOverlayCardFaceView borderWidth];
      v9 = +[PKTransactionDataOverlayCardFaceView borderColor];
      [v9 CGColor];
      PKPaymentStyleApplyCorners();

      imageCopy = v11;
      cardArtImageView = self->_cardArtImageView;
    }

    [(UIImageView *)cardArtImageView setImage:imageCopy];
  }

  else
  {
    [(UIImageView *)cardArtImageView removeFromSuperview];
    v10 = self->_cardArtImageView;
    self->_cardArtImageView = 0;
  }

  [(PKWatchHeroImageView *)self _updatedAccessibilityLabel];
  [(PKWatchHeroImageView *)self setNeedsLayout];
}

@end