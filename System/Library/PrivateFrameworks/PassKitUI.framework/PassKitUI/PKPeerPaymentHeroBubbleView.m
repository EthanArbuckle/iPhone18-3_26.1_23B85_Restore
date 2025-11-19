@interface PKPeerPaymentHeroBubbleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentHeroBubbleView)initWithCurrencyAmount:(id)a3 regitrationFlowState:(unint64_t)a4;
- (id)_bubbleAmountLabelTextAttributes;
- (id)_bubbleAmountLabelTextWithAmount:(id)a3;
- (unint64_t)_bubbleStateForRegistrationState:(unint64_t)a3;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentHeroBubbleView

- (PKPeerPaymentHeroBubbleView)initWithCurrencyAmount:(id)a3 regitrationFlowState:(unint64_t)a4
{
  v6 = a3;
  v39.receiver = self;
  v39.super_class = PKPeerPaymentHeroBubbleView;
  v7 = [(PKPeerPaymentHeroBubbleView *)&v39 init];
  v8 = v7;
  if (v7)
  {
    v7->_bubbleState = [(PKPeerPaymentHeroBubbleView *)v7 _bubbleStateForRegistrationState:a4];
    v9 = [PKPeerPaymentBubbleView alloc];
    bubbleState = v8->_bubbleState;
    if (a4 == 2)
    {
      v11 = [(PKPeerPaymentBubbleView *)v9 initWithCurrencyAmount:0 state:bubbleState];
      peerPaymentBubbleView = v8->_peerPaymentBubbleView;
      v8->_peerPaymentBubbleView = v11;

      v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      bubbleAmountLabel = v8->_bubbleAmountLabel;
      v8->_bubbleAmountLabel = v13;

      v15 = v8->_bubbleAmountLabel;
      v16 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:69.0];
      [(UILabel *)v15 setFont:v16];

      v17 = v8->_bubbleAmountLabel;
      v18 = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v17 setTextColor:v18];

      [(UILabel *)v8->_bubbleAmountLabel setTextAlignment:1];
      [(UILabel *)v8->_bubbleAmountLabel setNumberOfLines:2];
      [(UILabel *)v8->_bubbleAmountLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)v8->_bubbleAmountLabel setMinimumScaleFactor:0.5];
      [(UILabel *)v8->_bubbleAmountLabel setBaselineAdjustment:1];
      v19 = [(PKPeerPaymentHeroBubbleView *)v8 _bubbleAmountLabelTextWithAmount:v6];
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = [(PKPeerPaymentHeroBubbleView *)v8 _bubbleAmountLabelTextAttributes];
      v22 = [v20 initWithString:v19 attributes:v21];

      [(UILabel *)v8->_bubbleAmountLabel setAttributedText:v22];
      [(UILabel *)v8->_bubbleAmountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
      [(PKPeerPaymentHeroBubbleView *)v8 addSubview:v8->_bubbleAmountLabel];
    }

    else
    {
      v23 = [(PKPeerPaymentBubbleView *)v9 initWithCurrencyAmount:v6 state:bubbleState];
      v19 = v8->_peerPaymentBubbleView;
      v8->_peerPaymentBubbleView = v23;
    }

    [(PKPeerPaymentBubbleView *)v8->_peerPaymentBubbleView setDisplaysCashLogo:1];
    [(PKPeerPaymentBubbleView *)v8->_peerPaymentBubbleView setLiveRenderingEnabled:0];
    [(PKPeerPaymentBubbleView *)v8->_peerPaymentBubbleView setOutOfTranscript:1];
    v24 = objc_alloc_init(_MergedGlobals_3_9[0]());
    [v24 setCanUseOpaqueMask:0];
    [v24 setOrientation:1];
    [v24 setHasTail:1];
    v25 = a4 - 3;
    [v24 setOrientation:a4 - 3 < 0xFFFFFFFFFFFFFFFELL];
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    [v24 setTextAlignmentInsets:{*MEMORY[0x1E69DDCE0], v27, v28, v29}];
    [v24 setPluginView:v8->_peerPaymentBubbleView];
    [v24 setBalloonCorners:-1];
    v30 = [MEMORY[0x1E6993C90] sharedBehaviors];
    [v30 balloonCornerRadius];
    [v24 setCornerRadius:?];

    [v24 sizeToFit];
    [v24 prepareForDisplay];
    objc_storeStrong(&v8->_pluginBalloonView, v24);
    [(PKPeerPaymentHeroBubbleView *)v8 addSubview:v8->_pluginBalloonView];
    v31 = [off_1EE9A1D10[0]() sharedBehaviors];
    v32 = v31;
    v33 = v8->_peerPaymentBubbleView;
    if (v31)
    {
      [v31 pluginBalloonInsetsForMessageFromMe:v25 < 0xFFFFFFFFFFFFFFFELL];
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
    }

    [(PKPeerPaymentBubbleView *)v33 setContentInset:v26, v27, v28, v29];
    if (v8->_bubbleAmountLabel)
    {
      [(PKPeerPaymentHeroBubbleView *)v8 bringSubviewToFront:?];
    }
  }

  return v8;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = PKPeerPaymentHeroBubbleView;
  [(PKPeerPaymentHeroBubbleView *)&v48 layoutSubviews];
  [(PKPeerPaymentHeroBubbleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pluginBalloonView = self->_pluginBalloonView;
  if (pluginBalloonView)
  {
    [(UIView *)pluginBalloonView frame];
    UIRectCenteredIntegralRect();
    [(UIView *)self->_pluginBalloonView setFrame:?];
  }

  if (self->_bubbleAmountLabel)
  {
    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView contentInset];
    v13 = v12;
    v15 = v14;
    v17 = v14 + v16;
    v18 = v8 - (v14 + v16);
    v20 = v12 + v19;
    v21 = v10 - (v12 + v19);
    v22 = v4 + v14 + 14.0;
    v23 = v6 + v12 + 12.0;
    v24 = v18 + -28.0;
    v25 = v21 + -24.0;
    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView referenceBounds];
    v45 = v13 + v27 + 12.0;
    v46 = v15 + v26 + 14.0;
    v30 = v28 - v17 + -28.0;
    v31 = v29 - v20 + -24.0;
    [(UILabel *)self->_bubbleAmountLabel pkui_sizeThatFits:v24, v25];
    v33 = v32;
    v47 = v34;
    v49.origin.x = v22;
    v49.origin.y = v23;
    v49.size.width = v24;
    v49.size.height = v25;
    MinX = CGRectGetMinX(v49);
    v50.origin.x = v22;
    v50.origin.y = v23;
    v50.size.width = v24;
    v50.size.height = v25;
    v36 = MinX + (CGRectGetWidth(v50) - v33) * 0.5 + -1.0;
    v51.origin.x = v46;
    v51.origin.y = v45;
    v51.size.width = v30;
    v51.size.height = v31;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v46;
    v52.origin.y = v45;
    v52.size.width = v30;
    v52.size.height = v31;
    Height = CGRectGetHeight(v52);
    v39.n128_f64[0] = v47;
    v40.n128_f64[0] = MinY + (Height - v47) * 0.5;
    bubbleAmountLabel = self->_bubbleAmountLabel;
    v42.n128_f64[0] = v36;
    v43.n128_f64[0] = v33;
    PKRectRoundToPixel(v42, v40, v43, v39, v44);
    [(UILabel *)bubbleAmountLabel setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 160.0;
  v4 = 115.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_bubbleAmountLabelTextWithAmount:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF58];
    v4 = a3;
    v5 = [[v3 alloc] initWithLocaleIdentifier:@"en_US"];
    v6 = [v4 minimalFormattedStringValueInLocale:v5];
  }

  else
  {
    v6 = &stru_1F3BD7330;
  }

  return v6;
}

- (id)_bubbleAmountLabelTextAttributes
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v4 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:69.0];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v5 = [v2 copy];

  return v5;
}

- (unint64_t)_bubbleStateForRegistrationState:(unint64_t)a3
{
  if (a3 == 5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end