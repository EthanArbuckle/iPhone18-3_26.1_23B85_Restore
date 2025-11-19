@interface PKPeerPaymentSetupFlowHeroView
- (BOOL)_shouldShowBubbleView;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentSetupFlowHeroView)initWithPeerPaymentPassSnapShot:(id)a3 peerPaymentCredential:(id)a4;
- (id)_defaultCurrencyAmount;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateImageViewDynamicColors;
- (void)layoutSubviews;
- (void)startAnimationWithCompletion:(id)a3;
@end

@implementation PKPeerPaymentSetupFlowHeroView

- (PKPeerPaymentSetupFlowHeroView)initWithPeerPaymentPassSnapShot:(id)a3 peerPaymentCredential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentSetupFlowHeroView;
  v8 = [(PKPeerPaymentSetupFlowHeroView *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_credential, a4);
    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    passSnapshotView = v9->_passSnapshotView;
    v9->_passSnapshotView = v10;

    [(UIImageView *)v9->_passSnapshotView setContentMode:1];
    [(UIImageView *)v9->_passSnapshotView setAccessibilityIgnoresInvertColors:1];
    [(PKPeerPaymentSetupFlowHeroView *)v9 addSubview:v9->_passSnapshotView];
    v12 = [(UIImageView *)v9->_passSnapshotView layer];
    [v12 setShouldRasterize:1];
    [v12 setRasterizationScale:PKUIScreenScale()];
    v13 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.25 alpha:1.0];
    [v12 setShadowColor:{objc_msgSend(v13, "CGColor")}];

    LODWORD(v14) = 1041865114;
    [v12 setShadowOpacity:v14];
    [v12 setShadowOffset:{0.0, 4.0}];
    [v12 setShadowRadius:4.0];
    [(PKPeerPaymentSetupFlowHeroView *)v9 _updateImageViewDynamicColors];
    if ([(PKPeerPaymentSetupFlowHeroView *)v9 _shouldShowBubbleView])
    {
      v15 = [(PKPeerPaymentCredential *)v9->_credential amount];
      if (!v15)
      {
        v15 = [(PKPeerPaymentSetupFlowHeroView *)v9 _defaultCurrencyAmount];
      }

      v16 = [[PKPeerPaymentHeroBubbleView alloc] initWithCurrencyAmount:v15 regitrationFlowState:[(PKPeerPaymentCredential *)v9->_credential flowState]];
      bubbleView = v9->_bubbleView;
      v9->_bubbleView = v16;

      [(PKPeerPaymentHeroBubbleView *)v9->_bubbleView sizeToFit];
      [(PKPeerPaymentSetupFlowHeroView *)v9 addSubview:v9->_bubbleView];
    }

    v9->_animationState = [(PKPeerPaymentCredential *)v9->_credential flowState]== 2;
    v18 = [(PKPeerPaymentHeroBubbleView *)v9->_bubbleView layer];
    [v18 setAnchorPoint:{0.0, 0.0}];

    v19 = [(UIImageView *)v9->_passSnapshotView layer];
    [v19 setAnchorPoint:{0.0, 0.0}];
  }

  return v9;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = PKPeerPaymentSetupFlowHeroView;
  [(PKPeerPaymentSetupFlowHeroView *)&v34 layoutSubviews];
  [(PKPeerPaymentSetupFlowHeroView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_passSnapshotView frame];
  [(PKPeerPaymentHeroBubbleView *)self->_bubbleView frame];
  rect = v11;
  rect_16 = v12;
  rect_24 = v13;
  v32 = v14;
  UIRectCenteredYInRect();
  v17 = v16;
  rect_8 = v15;
  v33 = v18;
  if (self->_bubbleView)
  {
    if ([(PKPeerPaymentSetupFlowHeroView *)self _bubbleIsOnLeftSide])
    {
      v19 = 0.0;
      v20 = 15.0;
      v22 = rect_24;
      v21 = v32;
      v23 = rect_16;
    }

    else
    {
      v35.origin.x = v4;
      v35.origin.y = v6;
      v35.size.width = v8;
      v35.size.height = v10;
      MaxX = CGRectGetMaxX(v35);
      v36.origin.x = rect;
      v23 = rect_16;
      v22 = rect_24;
      v36.origin.y = rect_16;
      v21 = v32;
      v36.size.width = v32;
      v36.size.height = rect_24;
      v19 = MaxX - CGRectGetWidth(v36);
      v20 = 0.0;
    }

    v37.origin.x = 0.0;
    v37.origin.y = v17;
    v25 = rect_8;
    v37.size.width = rect_8;
    v37.size.height = v33;
    MaxY = CGRectGetMaxY(v37);
    v38.origin.x = v19;
    v38.origin.y = v23;
    v38.size.width = v21;
    v38.size.height = v22;
    v24 = MaxY - CGRectGetHeight(v38);
    v17 = v17 + -2.0;
  }

  else
  {
    v20 = 0.0;
    v22 = rect_24;
    v21 = v32;
    v25 = v15;
    v24 = rect_16;
    v19 = rect;
  }

  if (self->_animationState != 2)
  {
    [(PKPeerPaymentHeroBubbleView *)self->_bubbleView setFrame:v19, v24, v21, v22];
    [(UIImageView *)self->_passSnapshotView setFrame:v20, v17, v25, v33];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImageView *)self->_passSnapshotView frame:a3.width];
  v6 = v4 + 15.0;
  if (!self->_bubbleView)
  {
    v6 = v4;
  }

  v7 = v5 + 2.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentSetupFlowHeroView;
  [(PKPeerPaymentSetupFlowHeroView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKPeerPaymentSetupFlowHeroView *)self _updateImageViewDynamicColors];
}

- (void)startAnimationWithCompletion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  animationState = self->_animationState;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (animationState == 1)
  {
    if (v7)
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Starting message bubble animation.", &buf, 2u);
    }

    [(UIImageView *)self->_passSnapshotView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PKPeerPaymentHeroBubbleView *)self->_bubbleView frame];
    CGRectGetWidth(v36);
    v37.origin.x = v9;
    v37.origin.y = v11;
    v37.size.width = v13;
    v37.size.height = v15;
    CGRectGetMaxX(v37);
    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.width = v13;
    v38.size.height = v15;
    CGRectGetMinY(v38);
    PKFloatRoundToPixel();
    v17 = v16;
    PKFloatRoundToPixel();
    v19 = v18;
    memset(&buf, 0, sizeof(buf));
    CGAffineTransformMakeScale(&buf, 0.25, 0.25);
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeTranslation(&v33, v17, v19);
    t1 = buf;
    t2 = v33;
    memset(&v32, 0, sizeof(v32));
    CGAffineTransformConcat(&v32, &t1, &t2);
    PKFloatRoundToPixel();
    v21 = v20;
    PKFloatRoundToPixel();
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeTranslation(&t1, v21, v22);
    self->_animationState = 2;
    v23 = MEMORY[0x1E69DD250];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v28 = v32;
    v27[2] = __63__PKPeerPaymentSetupFlowHeroView_startAnimationWithCompletion___block_invoke;
    v27[3] = &unk_1E8020120;
    v27[4] = self;
    v29 = t1;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __63__PKPeerPaymentSetupFlowHeroView_startAnimationWithCompletion___block_invoke_2;
    v25[3] = &unk_1E80158C0;
    v25[4] = self;
    v26 = v4;
    [v23 animateWithDuration:0x10000 delay:v27 usingSpringWithDamping:v25 initialSpringVelocity:0.7 options:0.0 animations:1.0 completion:1.0];
  }

  else
  {
    if (v7)
    {
      [(PKPeerPaymentCredential *)self->_credential flowState];
      v24 = PKPeerPaymentRegistrationFlowStateToString();
      LODWORD(buf.a) = 138412290;
      *(&buf.a + 4) = v24;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Cannot animate the message bubble when the registration flow state is %@", &buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4);
    }
  }
}

void __63__PKPeerPaymentSetupFlowHeroView_startAnimationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 416) layer];
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 72);
  [v2 setAffineTransform:&v7];

  v4 = [*(*(a1 + 32) + 408) layer];
  v5 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = v5;
  v9 = *(a1 + 120);
  [v4 setAffineTransform:&v7];

  v6 = [*(*(a1 + 32) + 416) pluginBalloonView];
  [v6 setAlpha:0.0];
}

uint64_t __63__PKPeerPaymentSetupFlowHeroView_startAnimationWithCompletion___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(result + 32) + 432) = 3;
    result = *(result + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_updateImageViewDynamicColors
{
  v3 = [(PKPeerPaymentSetupFlowHeroView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PKPeerPaymentSetupFlowHeroView__updateImageViewDynamicColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(v3, v4);
}

void __63__PKPeerPaymentSetupFlowHeroView__updateImageViewDynamicColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 408) layer];
  v1 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (id)_defaultCurrencyAmount
{
  v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"28"];
  v3 = PKCurrencyAmountCreate(v2, &cfstr_Usd.isa);

  return v3;
}

- (BOOL)_shouldShowBubbleView
{
  v3 = [(PKPeerPaymentCredential *)self->_credential flowState];
  if ((v3 - 3) < 3)
  {
    return 1;
  }

  if (v3 == 2)
  {
    return [(PKPeerPaymentCredential *)self->_credential paymentMode]!= 2;
  }

  return 0;
}

@end