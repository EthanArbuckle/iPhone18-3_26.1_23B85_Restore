@interface PKPeerPaymentMessageMemoBalloonView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentMessageMemoBalloonView)initWithMemo:(id)a3;
- (double)_balloonMaxWidthForBoundsWidth:(double)a3;
- (id)_memoBalloonViewWithText:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentMessageMemoBalloonView

- (PKPeerPaymentMessageMemoBalloonView)initWithMemo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentMessageMemoBalloonView;
  v5 = [(PKPeerPaymentMessageMemoBalloonView *)&v9 init];
  if (v5 && [v4 length])
  {
    v6 = [(PKPeerPaymentMessageMemoBalloonView *)v5 _memoBalloonViewWithText:v4];
    memoBalloonView = v5->_memoBalloonView;
    v5->_memoBalloonView = v6;

    [(PKPeerPaymentMessageMemoBalloonView *)v5 addSubview:v5->_memoBalloonView];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPeerPaymentMessageMemoBalloonView *)self _balloonMaxWidthForBoundsWidth:a3.width];
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

- (id)_memoBalloonViewWithText:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6993C90] sharedBehaviors];
  objc_opt_class();
  v5 = CKBalloonViewForClass();
  [v5 setHasTail:1];
  [v5 setBalloonCorners:-1];
  v6 = [MEMORY[0x1E6993C90] sharedBehaviors];
  [v6 balloonCornerRadius];
  [v5 setCornerRadius:?];

  [v5 setColor:5];
  [v5 setCanUseOpaqueMask:0];
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3];
  if ([v4 hyphenatesTextContent])
  {
    v8 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v9 = [v8 mutableCopy];

    LODWORD(v10) = 1.0;
    [v9 setHyphenationFactor:v10];
    [v7 addAttribute:*MEMORY[0x1E69DB688] value:v9 range:{0, objc_msgSend(v7, "length")}];
  }

  v11 = [v7 length];
  if ([v3 __ck_shouldUseBigEmoji])
  {
    [v4 bigEmojiFont];
  }

  else
  {
    [v4 balloonTextFont];
  }
  v12 = ;
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:v12 range:{0, v11}];
  v13 = *MEMORY[0x1E69DB650];
  v14 = [MEMORY[0x1E6993C90] sharedBehaviors];
  v15 = [v14 theme];
  v16 = [v15 balloonTextColorForColorType:{objc_msgSend(v5, "color")}];
  [v7 addAttribute:v13 value:v16 range:{0, v11}];

  [v5 setAttributedText:v7];
  [v5 prepareForDisplay];

  return v5;
}

- (double)_balloonMaxWidthForBoundsWidth:(double)a3
{
  v4 = [MEMORY[0x1E6993C90] sharedBehaviors];
  [v4 balloonMaxWidthForTranscriptWidth:0 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:a3 shouldCoverSendButton:{0.0, 10.0, 0.0, 10.0}];
  v6 = v5;

  result = a3 + -20.0;
  if (v6 < a3 + -20.0)
  {
    return v6;
  }

  return result;
}

@end