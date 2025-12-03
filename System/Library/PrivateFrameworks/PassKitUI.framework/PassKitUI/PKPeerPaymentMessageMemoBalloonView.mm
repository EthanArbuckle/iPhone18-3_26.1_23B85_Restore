@interface PKPeerPaymentMessageMemoBalloonView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPeerPaymentMessageMemoBalloonView)initWithMemo:(id)memo;
- (double)_balloonMaxWidthForBoundsWidth:(double)width;
- (id)_memoBalloonViewWithText:(id)text;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentMessageMemoBalloonView

- (PKPeerPaymentMessageMemoBalloonView)initWithMemo:(id)memo
{
  memoCopy = memo;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentMessageMemoBalloonView;
  v5 = [(PKPeerPaymentMessageMemoBalloonView *)&v9 init];
  if (v5 && [memoCopy length])
  {
    v6 = [(PKPeerPaymentMessageMemoBalloonView *)v5 _memoBalloonViewWithText:memoCopy];
    memoBalloonView = v5->_memoBalloonView;
    v5->_memoBalloonView = v6;

    [(PKPeerPaymentMessageMemoBalloonView *)v5 addSubview:v5->_memoBalloonView];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPeerPaymentMessageMemoBalloonView *)self _balloonMaxWidthForBoundsWidth:fits.width];
  memoBalloonView = self->_memoBalloonView;

  [(CKTextBalloonView *)memoBalloonView sizeThatFits:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessageMemoBalloonView;
  [(PKPeerPaymentMessageMemoBalloonView *)&v4 layoutSubviews];
  [(CKTextBalloonView *)self->_memoBalloonView setOrientation:1];
  [(CKTextBalloonView *)self->_memoBalloonView prepareForDisplayIfNeeded];
  memoBalloonView = self->_memoBalloonView;
  [(PKPeerPaymentMessageMemoBalloonView *)self bounds];
  [(CKTextBalloonView *)memoBalloonView setFrame:?];
}

- (id)_memoBalloonViewWithText:(id)text
{
  textCopy = text;
  mEMORY[0x1E6993C90] = [MEMORY[0x1E6993C90] sharedBehaviors];
  objc_opt_class();
  v5 = CKBalloonViewForClass();
  [v5 setHasTail:1];
  [v5 setBalloonCorners:-1];
  mEMORY[0x1E6993C90]2 = [MEMORY[0x1E6993C90] sharedBehaviors];
  [mEMORY[0x1E6993C90]2 balloonCornerRadius];
  [v5 setCornerRadius:?];

  [v5 setColor:5];
  [v5 setCanUseOpaqueMask:0];
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];
  if ([mEMORY[0x1E6993C90] hyphenatesTextContent])
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v9 = [defaultParagraphStyle mutableCopy];

    LODWORD(v10) = 1.0;
    [v9 setHyphenationFactor:v10];
    [v7 addAttribute:*MEMORY[0x1E69DB688] value:v9 range:{0, objc_msgSend(v7, "length")}];
  }

  v11 = [v7 length];
  if ([textCopy __ck_shouldUseBigEmoji])
  {
    [mEMORY[0x1E6993C90] bigEmojiFont];
  }

  else
  {
    [mEMORY[0x1E6993C90] balloonTextFont];
  }
  v12 = ;
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:v12 range:{0, v11}];
  v13 = *MEMORY[0x1E69DB650];
  mEMORY[0x1E6993C90]3 = [MEMORY[0x1E6993C90] sharedBehaviors];
  theme = [mEMORY[0x1E6993C90]3 theme];
  v16 = [theme balloonTextColorForColorType:{objc_msgSend(v5, "color")}];
  [v7 addAttribute:v13 value:v16 range:{0, v11}];

  [v5 setAttributedText:v7];
  [v5 prepareForDisplay];

  return v5;
}

- (double)_balloonMaxWidthForBoundsWidth:(double)width
{
  mEMORY[0x1E6993C90] = [MEMORY[0x1E6993C90] sharedBehaviors];
  [mEMORY[0x1E6993C90] balloonMaxWidthForTranscriptWidth:0 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:width shouldCoverSendButton:{0.0, 10.0, 0.0, 10.0}];
  v6 = v5;

  result = width + -20.0;
  if (v6 < width + -20.0)
  {
    return v6;
  }

  return result;
}

@end