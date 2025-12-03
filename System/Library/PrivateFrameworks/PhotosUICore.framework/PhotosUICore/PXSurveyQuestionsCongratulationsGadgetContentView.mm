@interface PXSurveyQuestionsCongratulationsGadgetContentView
- (CGSize)sizeThatFits:(CGSize)result;
- (PXSurveyQuestionCongratulationsGadgetContentViewDelegate)delegate;
- (PXSurveyQuestionsCongratulationsGadgetContentView)initWithDetailMessage:(id)message buttonTitle:(id)title;
- (void)_didSelectActionButton;
- (void)layoutSubviews;
- (void)startConfettiAnimation;
@end

@implementation PXSurveyQuestionsCongratulationsGadgetContentView

- (PXSurveyQuestionCongratulationsGadgetContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startConfettiAnimation
{
  [(UIImpactFeedbackGenerator *)self->_impactFeedbackGenerator impactOccurredWithIntensity:1.0];
  if (objc_opt_respondsToSelector())
  {
    v3 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PXSurveyQuestionsCongratulationsGadgetContentView_startConfettiAnimation__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PXSurveyQuestionsCongratulationsGadgetContentView;
  [(PXSurveyQuestionsCongratulationsGadgetContentView *)&v25 layoutSubviews];
  [(PXSurveyQuestionsCongratulationsGadgetContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_messageLabel sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v23 = CGRectGetMidX(v26) - v12 * 0.5;
  v24 = v12;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v15 = CGRectGetMidY(v27) - v14 * 0.5;
  [(UILabel *)self->_messageLabel setFrame:v23, v15, v12, v14];
  [(UILabel *)self->_congratulationsLabel sizeThatFits:v8, v10];
  v17 = v16;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  [(UILabel *)self->_congratulationsLabel setFrame:CGRectGetMidX(v28) - v17 * 0.5, v15 - v14 + -12.0, v17, v14];
  [(UIButton *)self->_actionButton sizeThatFits:v8, v10];
  v19 = v18;
  v22 = v20;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v21 = CGRectGetMidX(v29) - v19 * 0.5;
  v30.origin.x = v23;
  v30.size.width = v24;
  v30.origin.y = v15;
  v30.size.height = v14;
  [(UIButton *)self->_actionButton setFrame:v21, CGRectGetMaxY(v30) + 24.0, v19, v22];
  [(_PXCKFullscreenEffectView *)self->_effectView setFrame:v4, v6, v8, v10];
  [(PXRoundedCornerOverlayView *)self->_roundedOverlayView setFrame:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  width = result.width;
  result.height = width;
  return result;
}

- (void)_didSelectActionButton
{
  selectionFeedbackGenerator = [(PXSurveyQuestionsCongratulationsGadgetContentView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator selectionChanged];

  delegate = [(PXSurveyQuestionsCongratulationsGadgetContentView *)self delegate];
  [delegate congratulationsGadgetContentViewDidSelectActionButton:self];
}

- (PXSurveyQuestionsCongratulationsGadgetContentView)initWithDetailMessage:(id)message buttonTitle:(id)title
{
  messageCopy = message;
  titleCopy = title;
  v48.receiver = self;
  v48.super_class = PXSurveyQuestionsCongratulationsGadgetContentView;
  v8 = [(PXSurveyQuestionsCongratulationsGadgetContentView *)&v48 init];
  if (v8)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSurveyQuestionsCongratulationsGadgetContentView *)v8 setBackgroundColor:secondarySystemBackgroundColor];

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    congratulationsLabel = v8->_congratulationsLabel;
    v8->_congratulationsLabel = v15;

    [(UILabel *)v8->_congratulationsLabel setTextAlignment:1];
    [(UILabel *)v8->_congratulationsLabel setAdjustsFontSizeToFitWidth:1];
    v17 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeCongratulationsTitle", @"PhotosUICore");
    [(UILabel *)v8->_congratulationsLabel setText:v17];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8->_congratulationsLabel setBackgroundColor:clearColor];

    v19 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDDB8] withSymbolicTraits:2 options:1];
    [(UILabel *)v8->_congratulationsLabel setFont:v19];

    [(PXSurveyQuestionsCongratulationsGadgetContentView *)v8 addSubview:v8->_congratulationsLabel];
    v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    messageLabel = v8->_messageLabel;
    v8->_messageLabel = v20;

    [(UILabel *)v8->_messageLabel setTextAlignment:1];
    [(UILabel *)v8->_messageLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v8->_messageLabel setText:messageCopy];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v8->_messageLabel setBackgroundColor:clearColor2];

    [(UILabel *)v8->_messageLabel setNumberOfLines:2];
    v23 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0 options:1];
    [(UILabel *)v8->_messageLabel setFont:v23];

    [(PXSurveyQuestionsCongratulationsGadgetContentView *)v8 addSubview:v8->_messageLabel];
    if (titleCopy)
    {
      filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [filledButtonConfiguration setButtonSize:1];
      [filledButtonConfiguration setCornerStyle:4];
      tintColor = [(PXSurveyQuestionsCongratulationsGadgetContentView *)v8 tintColor];
      [filledButtonConfiguration setBaseForegroundColor:tintColor];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [filledButtonConfiguration setBaseBackgroundColor:whiteColor];

      [filledButtonConfiguration setTitle:titleCopy];
      [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_22610];
      v27 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
      [v27 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
      [v27 addTarget:v8 action:sel__didSelectActionButton forControlEvents:64];
      [(PXSurveyQuestionsCongratulationsGadgetContentView *)v8 addSubview:v27];
    }

    v28 = [[PXRoundedCornerOverlayView alloc] initWithFrame:v11, v12, v13, v14];
    roundedOverlayView = v8->_roundedOverlayView;
    v8->_roundedOverlayView = v28;

    [(PXSurveyQuestionsCongratulationsGadgetContentView *)v8 addSubview:v8->_roundedOverlayView];
    v30 = v8->_roundedOverlayView;
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __87__PXSurveyQuestionsCongratulationsGadgetContentView_initWithDetailMessage_buttonTitle___block_invoke_2;
    v46 = &unk_1E7736BA0;
    v31 = v8;
    v47 = v31;
    [(PXRoundedCornerOverlayView *)v30 performChanges:&v43];
    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v32 = getCKFullScreenEffectManagerClass_softClass;
    v53 = getCKFullScreenEffectManagerClass_softClass;
    if (!getCKFullScreenEffectManagerClass_softClass)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __getCKFullScreenEffectManagerClass_block_invoke;
      v49[3] = &unk_1E774BD00;
      v49[4] = &v50;
      __getCKFullScreenEffectManagerClass_block_invoke(v49);
      v32 = v51[3];
    }

    v33 = v32;
    _Block_object_dispose(&v50, 8);
    v34 = objc_alloc_init(v32);
    v35 = [v34 effectForIdentifier:{@"com.apple.messages.effect.CKConfettiEffect", v43, v44, v45, v46}];
    if (objc_opt_respondsToSelector())
    {
      v36 = objc_alloc_init([v35 effectViewClass]);
      effectView = v31->_effectView;
      v31->_effectView = v36;

      [(_PXCKFullscreenEffectView *)v31->_effectView setUserInteractionEnabled:0];
      [(PXSurveyQuestionsCongratulationsGadgetContentView *)v31 addSubview:v31->_effectView];
    }

    v38 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionFeedbackGenerator = v31->_selectionFeedbackGenerator;
    v31->_selectionFeedbackGenerator = v38;

    v40 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:2];
    impactFeedbackGenerator = v31->_impactFeedbackGenerator;
    v31->_impactFeedbackGenerator = v40;
  }

  return v8;
}

void __87__PXSurveyQuestionsCongratulationsGadgetContentView_initWithDetailMessage_buttonTitle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCornerRadius:4.0];
  v4 = [*(a1 + 32) traitCollection];
  [v4 displayScale];
  [v3 setDisplayScale:?];

  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setOverlayColor:v5];
}

id __87__PXSurveyQuestionsCongratulationsGadgetContentView_initWithDetailMessage_buttonTitle___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

@end