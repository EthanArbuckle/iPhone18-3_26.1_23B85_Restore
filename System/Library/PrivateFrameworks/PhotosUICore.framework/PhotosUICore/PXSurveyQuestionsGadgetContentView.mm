@interface PXSurveyQuestionsGadgetContentView
+ (CGSize)sizeThatFits:(CGSize)a3;
- (BOOL)isMultipleSelectionAnswerPresentation;
- (BOOL)isSelectionResponse;
- (CGRect)_contentFrameInBounds:(CGRect)a3;
- (CGRect)contentBoundsInCoordinateSpace:(id)a3;
- (CGRect)contentRect;
- (CGSize)_calculateLayoutWithInputSize:(CGSize)a3 apply:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXSurveyQuestionsGadgetContentView)initWithFrame:(CGRect)a3;
- (PXSurveyQuestionsGadgetContentViewDelegate)delegate;
- (UIButton)noButton;
- (UIButton)skipButton;
- (UIButton)yesButton;
- (UILabel)titleLabel;
- (id)_actionButtonWithTitle:(id)a3 action:(SEL)a4 buttonColor:(id)a5 titleColor:(id)a6;
- (id)focusEffect;
- (id)keyCommands;
- (void)_askForAdditionalReasonForAnswer:(unint64_t)a3 completionBlock:(id)a4;
- (void)_didAnswer:(unint64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setConfiguration:(id)a3;
- (void)setContentHidden:(BOOL)a3;
- (void)updateButtonsWithAnswerState:(unint64_t)a3 reason:(id)a4;
@end

@implementation PXSurveyQuestionsGadgetContentView

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXSurveyQuestionsGadgetContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_askForAdditionalReasonForAnswer:(unint64_t)a3 completionBlock:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
    v10 = [v9 gadgetContentView:self additionalReasonsForAnswer:a3];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  if ([v10 count])
  {
    v11 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
      v14 = [v13 gadgetContentView:self additionalReasonTitleForAnswer:a3];
    }

    else
    {
      v14 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonTitle", @"PhotosUICore");
    }

    v15 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
      v18 = [v17 gadgetContentView:self additionalReasonMessageForAnswer:a3];
    }

    else
    {
      v18 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonMessage", @"PhotosUICore");
    }

    if ([(PXSurveyQuestionsGadgetContentView *)self isMultipleSelectionAnswerPresentation])
    {
      v19 = [[PXSurveyQuestionsMultipleAnswerSelectionController alloc] initWithTitle:v14 message:v18 reasons:v10 currentlySelectedReasons:self->_currentReason completion:v6];
    }

    else
    {
      v42 = v14;
      v41 = v18;
      v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v18 preferredStyle:0];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v43 = v10;
      obj = v10;
      v21 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v54;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v53 + 1) + 8 * i);
            v26 = MEMORY[0x1E69DC648];
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke;
            v49[3] = &unk_1E774A2A0;
            v27 = v20;
            v50 = v27;
            v28 = v6;
            v51 = v25;
            v52 = v28;
            v29 = [v26 actionWithTitle:v25 style:0 handler:v49];
            [v27 addAction:v29];
          }

          v22 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v22);
      }

      v30 = MEMORY[0x1E69DC648];
      v31 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke_2;
      v46[3] = &unk_1E7741C90;
      v32 = v20;
      v47 = v32;
      v48 = v6;
      v33 = [v30 actionWithTitle:v31 style:1 handler:v46];

      [v32 addAction:v33];
      v19 = v32;

      v10 = v43;
      v18 = v41;
      v14 = v42;
    }

    v34 = [(PXSurveyQuestionsGadgetContentView *)self configuration];
    v35 = [v34 handlers];
    v36 = [v35 presentViewControllerHandler];

    if (v36)
    {
      v37 = [(PXSurveyQuestionsGadgetContentView *)self configuration];
      v38 = [v37 handlers];
      v39 = [v38 presentViewControllerHandler];
      (v39)[2](v39, v19);
    }

    else
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke_3;
      v45[3] = &unk_1E7741CB8;
      v45[4] = self;
      v40 = [off_1E7721438 show:v45];
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0, 1);
  }
}

uint64_t __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"⚠️ Please File a Radar"];
  [v3 setMessage:@"We are trying to track down a hard to reproduce bug. Please file a radar. Thanks!"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke_4;
  v4[3] = &unk_1E774C648;
  v4[4] = *(a1 + 32);
  [v3 addActionWithTitle:@"File Radar" style:0 action:v4];
  [v3 addActionWithTitle:@"Cancel" style:1 action:&__block_literal_global_289];
}

void __87__PXSurveyQuestionsGadgetContentView__askForAdditionalReasonForAnswer_completionBlock___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  v2 = @"Yes";
  if (!v1)
  {
    v2 = @"No";
  }

  v3 = v2;

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLEASE DO NOT MODIFY\n\nDoes delegate exist: %@", v3];

  LOWORD(v4) = 1;
  [PXFeedbackTapToRadarUtilities fileRadarWithTitle:@"Photos Challenge Multi Select Menu Presentation Error" description:v5 classification:@"Other Bug" componentID:@"1064134" componentName:@"Photos Personalization" componentVersion:@"all" keyword:0 screenshotURLs:0 attachmentURLs:0 includeSysDiagnose:v4 includeInternalRelease:0 additionalExtensionIdentifiers:0 completionHandler:?];
}

- (void)_didAnswer:(unint64_t)a3
{
  [(PXSurveyQuestionsGadgetContentView *)self updateButtonsWithAnswerState:a3 reason:self->_currentReason];
  v5 = [(PXSurveyQuestionsGadgetContentView *)self selectionFeedbackGenerator];
  [v5 selectionChanged];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PXSurveyQuestionsGadgetContentView__didAnswer___block_invoke;
  v6[3] = &unk_1E7741C68;
  v6[4] = self;
  v6[5] = a3;
  [(PXSurveyQuestionsGadgetContentView *)self _askForAdditionalReasonForAnswer:a3 completionBlock:v6];
}

void __49__PXSurveyQuestionsGadgetContentView__didAnswer___block_invoke(uint64_t a1, void *a2, char a3)
{
  v9 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    objc_storeStrong((v6 + 648), a2);
    v7 = [*(a1 + 32) delegate];
    [v7 gadgetContentView:*(a1 + 32) didAnswer:*(a1 + 40) withReason:v9];
  }

  else
  {
    v8 = *(v6 + 648);
    *(v6 + 648) = 0;

    [*(a1 + 32) updateButtonsWithAnswerState:0 reason:0];
  }
}

- (id)_actionButtonWithTitle:(id)a3 action:(SEL)a4 buttonColor:(id)a5 titleColor:(id)a6
{
  v10 = MEMORY[0x1E69DC740];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 filledButtonConfiguration];
  [v14 setButtonSize:1];
  [v14 setCornerStyle:4];
  [v14 setBaseForegroundColor:v11];

  [v14 setBaseBackgroundColor:v12];
  [v14 setTitle:v13];

  [v14 setTitleTextAttributesTransformer:&__block_literal_global_227];
  v15 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v14 primaryAction:0];
  [v15 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
  [v15 addTarget:self action:a4 forControlEvents:8193];

  return v15;
}

id __91__PXSurveyQuestionsGadgetContentView__actionButtonWithTitle_action_buttonColor_titleColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (id)focusEffect
{
  v3 = [PXFocusInfo focusInfoWithView:self];
  v4 = [v3 makeHaloEffectForSourceView:self];

  return v4;
}

- (void)setContentHidden:(BOOL)a3
{
  if (self->_contentHidden != a3)
  {
    v4 = a3;
    self->_contentHidden = a3;
    v6 = [(PXSurveyQuestionsGadgetContentView *)self configuration];
    v5 = [v6 contentView];
    [v5 setHidden:v4];
  }
}

- (CGRect)contentBoundsInCoordinateSpace:(id)a3
{
  v4 = a3;
  [(PXSurveyQuestionsGadgetContentView *)self bounds];
  [(PXSurveyQuestionsGadgetContentView *)self _contentFrameInBounds:?];
  [(PXSurveyQuestionsGadgetContentView *)self convertRect:v4 toCoordinateSpace:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PXSurveyQuestionsGadgetContentView;
  [(PXSurveyQuestionsGadgetContentView *)&v4 prepareForReuse];
  v3 = objc_alloc_init(PXSurveyQuestionDefaultConfiguration);
  [(PXSurveyQuestionsGadgetContentView *)self setConfiguration:v3];

  [(PXSurveyQuestionsGadgetContentView *)self updateButtonsWithAnswerState:0 reason:0];
}

- (CGRect)_contentFrameInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = round(a3.size.width * 0.666666667);
  MinX = CGRectGetMinX(a3);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MinY = CGRectGetMinY(v13);
  v10 = MinX;
  v11 = width;
  v12 = v7;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = MinY;
  result.origin.x = v10;
  return result;
}

- (CGSize)_calculateLayoutWithInputSize:(CGSize)a3 apply:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = [(PXSurveyQuestionsGadgetContentView *)self traitCollection];
  [v9 displayScale];

  [(PXSurveyQuestionsGadgetContentView *)self _contentFrameInBounds:v8, v7, width, height];
  CGRectGetMaxY(v11);
  v12.origin.x = v8;
  v12.origin.y = v7;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxX(v12);
  PXScaledValueForTextStyleWithSymbolicTraits();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXSurveyQuestionsGadgetContentView;
  [(PXSurveyQuestionsGadgetContentView *)&v5 layoutSubviews];
  [(PXSurveyQuestionsGadgetContentView *)self bounds];
  [(PXSurveyQuestionsGadgetContentView *)self _calculateLayoutWithInputSize:1 apply:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXSurveyQuestionsGadgetContentView *)self _calculateLayoutWithInputSize:0 apply:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)keyCommands
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(PXSurveyQuestionsGadgetContentView *)self yesButton];
  v5 = [(PXSurveyQuestionsGadgetContentView *)self noButton];
  v6 = [(PXSurveyQuestionsGadgetContentView *)self skipButton];
  v7 = [v3 arrayWithObjects:{v4, v5, v6, 0}];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 titleForState:0];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __49__PXSurveyQuestionsGadgetContentView_keyCommands__block_invoke;
        v18[3] = &unk_1E7741C20;
        v19 = v15;
        v20 = v8;
        v16 = v15;
        [v14 enumerateEventHandlers:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v8;
}

void __49__PXSurveyQuestionsGadgetContentView_keyCommands__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, __int16 a5)
{
  v14 = a2;
  v9 = a3;
  if ((a5 & 0x2000) != 0 && [*(a1 + 32) length])
  {
    v10 = MEMORY[0x1E69DCBA0];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) substringToIndex:1];
    v13 = [v10 keyCommandWithInput:v12 modifierFlags:0 action:a4];
    [v11 addObject:v13];
  }
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  configuration = self->_configuration;
  if (configuration != v5)
  {
    v19 = v5;
    v7 = [(PXSurveyQuestionConfiguration *)configuration contentView];
    [v7 removeFromSuperview];

    objc_storeStrong(&self->_configuration, a3);
    v8 = [(PXSurveyQuestionConfiguration *)self->_configuration title];
    v9 = [(PXSurveyQuestionsGadgetContentView *)self titleLabel];
    [v9 setText:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v19;
      v11 = [(PXSurveyQuestionsGadgetContentView *)self traitCollection];
      [v11 displayScale];
      v12 = [(PXSurveyQuestionConfiguration *)v10 contentViewForDisplayScale:?];
    }

    else
    {
      v12 = [(PXSurveyQuestionConfiguration *)self->_configuration contentView];
    }

    v13 = [v12 layer];
    [v13 setCornerRadius:4.0];

    [v12 setClipsToBounds:1];
    [(PXSurveyQuestionsGadgetContentView *)self addSubview:v12];
    if ([(PXSurveyQuestionsGadgetContentView *)self isSelectionResponse])
    {
      [(UIButton *)self->_noButton removeFromSuperview];
    }

    else
    {
      v14 = [(PXSurveyQuestionsGadgetContentView *)self noButton];
      v15 = [v14 superview];

      if (!v15)
      {
        v16 = [(PXSurveyQuestionsGadgetContentView *)self noButton];
        [(PXSurveyQuestionsGadgetContentView *)self addSubview:v16];
      }
    }

    if ([(PXSurveyQuestionsGadgetContentView *)self isSelectionResponse])
    {
      v17 = @"PXInternalPhotosChallengeSelect";
    }

    else
    {
      v17 = @"PXInternalPhotosChallengeYes";
    }

    v18 = PXLocalizedStringFromTable(v17, @"PhotosUICore");
    [(UIButton *)self->_yesButton setTitle:v18 forState:0];

    v5 = v19;
  }
}

- (UIButton)yesButton
{
  yesButton = self->_yesButton;
  if (!yesButton)
  {
    v4 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeYes", @"PhotosUICore");
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    v6 = [(PXSurveyQuestionsGadgetContentView *)self tintColor];
    v7 = [(PXSurveyQuestionsGadgetContentView *)self _actionButtonWithTitle:v4 action:sel__didAnswerYes buttonColor:v5 titleColor:v6];
    v8 = self->_yesButton;
    self->_yesButton = v7;

    yesButton = self->_yesButton;
  }

  return yesButton;
}

- (UIButton)skipButton
{
  skipButton = self->_skipButton;
  if (!skipButton)
  {
    v4 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSkip", @"PhotosUICore");
    v5 = [MEMORY[0x1E69DC888] clearColor];
    v6 = [(PXSurveyQuestionsGadgetContentView *)self tintColor];
    v7 = [(PXSurveyQuestionsGadgetContentView *)self _actionButtonWithTitle:v4 action:sel__didAnswerSkip buttonColor:v5 titleColor:v6];
    v8 = self->_skipButton;
    self->_skipButton = v7;

    skipButton = self->_skipButton;
  }

  return skipButton;
}

- (UIButton)noButton
{
  noButton = self->_noButton;
  if (!noButton)
  {
    v4 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeNo", @"PhotosUICore");
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    v6 = [(PXSurveyQuestionsGadgetContentView *)self tintColor];
    v7 = [(PXSurveyQuestionsGadgetContentView *)self _actionButtonWithTitle:v4 action:sel__didAnswerNo buttonColor:v5 titleColor:v6];
    v8 = self->_noButton;
    self->_noButton = v7;

    noButton = self->_noButton;
  }

  return noButton;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_titleLabel;
    self->_titleLabel = v5;

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_titleLabel setTextColor:v7];

    [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:v8];

    v9 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:2 options:1];
    [(UILabel *)self->_titleLabel setFont:v9];

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)updateButtonsWithAnswerState:(unint64_t)a3 reason:(id)a4
{
  v15 = a4;
  objc_storeStrong(&self->_currentReason, a4);
  v7 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__skipButton;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v9 = 0;
      v8 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__noButton;
      v10 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__yesButton;
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      [(UIButton *)self->_yesButton setSelected:1];
      [(UIButton *)self->_noButton setSelected:0];
      [(UIButton *)self->_skipButton setSelected:0];
      if (![(PXSurveyQuestionsGadgetContentView *)self isSelectionResponse])
      {
        goto LABEL_18;
      }

      v11 = @"PXInternalPhotosChallengeSelected";
      goto LABEL_17;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v12 = 1;
LABEL_14:
        [*(&self->super.super.super.super.super.isa + *v7) setSelected:v12];
        break;
      case 3uLL:
        v7 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__noButton;
        v8 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__yesButton;
        v9 = 1;
        v10 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__skipButton;
        goto LABEL_13;
      case 2uLL:
        v8 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__yesButton;
        v9 = 1;
        v10 = &OBJC_IVAR___PXSurveyQuestionsGadgetContentView__noButton;
LABEL_13:
        [*(&self->super.super.super.super.super.isa + *v10) setSelected:v9];
        [*(&self->super.super.super.super.super.isa + *v8) setSelected:0];
        v12 = 0;
        goto LABEL_14;
    }
  }

  if (![(PXSurveyQuestionsGadgetContentView *)self isSelectionResponse])
  {
    goto LABEL_18;
  }

  v11 = @"PXInternalPhotosChallengeSelect";
LABEL_17:
  yesButton = self->_yesButton;
  v14 = PXLocalizedStringFromTable(v11, @"PhotosUICore");
  [(UIButton *)yesButton setTitle:v14 forState:0];

LABEL_18:
}

- (BOOL)isMultipleSelectionAnswerPresentation
{
  v2 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
  v3 = [v2 questionType] == 25;

  return v3;
}

- (BOOL)isSelectionResponse
{
  v2 = [(PXSurveyQuestionsGadgetContentView *)self delegate];
  v3 = [v2 questionType];

  return (v3 < 0x1F) & (0x2000100u >> v3);
}

- (PXSurveyQuestionsGadgetContentView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = PXSurveyQuestionsGadgetContentView;
  v3 = [(PXSurveyQuestionsGadgetContentView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PXSurveyQuestionDefaultConfiguration);
    configuration = v3->_configuration;
    v3->_configuration = v4;

    v6 = [(PXSurveyQuestionsGadgetContentView *)v3 contentView];
    v7 = [(PXSurveyQuestionsGadgetContentView *)v3 titleLabel];
    [v6 addSubview:v7];

    v8 = [(PXSurveyQuestionsGadgetContentView *)v3 contentView];
    v9 = [(PXSurveyQuestionsGadgetContentView *)v3 yesButton];
    [v8 addSubview:v9];

    v10 = [(PXSurveyQuestionsGadgetContentView *)v3 contentView];
    v11 = [(PXSurveyQuestionsGadgetContentView *)v3 skipButton];
    [v10 addSubview:v11];

    v12 = [(PXSurveyQuestionsGadgetContentView *)v3 contentView];
    v13 = [(PXSurveyQuestionsGadgetContentView *)v3 noButton];
    [v12 addSubview:v13];

    v14 = [(PXSurveyQuestionsGadgetContentView *)v3 layer];
    [v14 setCornerRadius:4.0];

    [(PXSurveyQuestionsGadgetContentView *)v3 setClipsToBounds:1];
    v15 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [(PXSurveyQuestionsGadgetContentView *)v3 setBackgroundColor:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionFeedbackGenerator = v3->_selectionFeedbackGenerator;
    v3->_selectionFeedbackGenerator = v16;
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (sizeThatFits__onceToken != -1)
  {
    dispatch_once(&sizeThatFits__onceToken, &__block_literal_global_191322);
  }

  v5 = sizeThatFits__view;

  [v5 sizeThatFits:{width, height}];
  result.height = v7;
  result.width = v6;
  return result;
}

void __51__PXSurveyQuestionsGadgetContentView_sizeThatFits___block_invoke()
{
  v0 = [PXSurveyQuestionsGadgetContentView alloc];
  v1 = [(PXSurveyQuestionsGadgetContentView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = sizeThatFits__view;
  sizeThatFits__view = v1;
}

@end