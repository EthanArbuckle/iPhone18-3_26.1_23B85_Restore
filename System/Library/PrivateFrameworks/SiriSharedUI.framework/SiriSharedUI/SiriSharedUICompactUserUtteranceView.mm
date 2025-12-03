@interface SiriSharedUICompactUserUtteranceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriSharedUICompactUserUtteranceView)initWithContentInsets:(UIEdgeInsets)insets cornerRadius:(double)radius;
- (SiriSharedUICompactUserUtteranceViewDelegate)delegate;
- (UIEdgeInsets)contentInsets;
- (id)_createStreamingTextViewForEmojisOnly:(BOOL)only;
- (id)_fontForStreamingTextView;
- (void)_handleTap:(id)tap;
- (void)_setStreamingText:(id)text carousel:(BOOL)carousel showEditImage:(BOOL)image;
- (void)_updateAmbientAppearance;
- (void)layoutSubviews;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInAmbientInteractivity:(BOOL)interactivity;
- (void)setLatencySummary:(id)summary;
- (void)setSpeechRecognitionHypothesis:(id)hypothesis;
@end

@implementation SiriSharedUICompactUserUtteranceView

- (SiriSharedUICompactUserUtteranceView)initWithContentInsets:(UIEdgeInsets)insets cornerRadius:(double)radius
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v32.receiver = self;
  v32.super_class = SiriSharedUICompactUserUtteranceView;
  v9 = [(SiriSharedUICompactUserUtteranceView *)&v32 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = v9;
  if (v9)
  {
    v9->_contentInsets.top = top;
    v9->_contentInsets.left = left;
    v9->_contentInsets.bottom = bottom;
    v9->_contentInsets.right = right;
    v11 = MEMORY[0x277D75D00];
    v12 = [MEMORY[0x277D75210] effectWithStyle:8];
    v13 = [v11 effectForBlurEffect:v12 style:1];

    v14 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v13];
    [(SiriSharedUICompactUserUtteranceView *)v10 _setBackgroundView:v14];

    backgroundView = v10->_backgroundView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIVisualEffectView *)backgroundView setBackgroundColor:clearColor];

    _backgroundView = [(SiriSharedUICompactUserUtteranceView *)v10 _backgroundView];
    layer = [_backgroundView layer];
    [layer setCornerRadius:radius];

    _backgroundView2 = [(SiriSharedUICompactUserUtteranceView *)v10 _backgroundView];
    layer2 = [_backgroundView2 layer];
    [layer2 setMaskedCorners:3];

    v21 = [(SiriSharedUICompactUserUtteranceView *)v10 _createStreamingTextViewForEmojisOnly:0];
    [(SiriSharedUICompactUserUtteranceView *)v10 _setStreamingTextView:v21];

    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      [(SUICStreamingTextView *)v10->_streamingTextView setEditTextSymbol:@"pencil"];
    }

    else
    {
      [(SiriSharedUICompactUserUtteranceView *)v10 addSubview:v10->_backgroundView];
    }

    v22 = [(SiriSharedUICompactUserUtteranceView *)v10 _createStreamingTextViewForEmojisOnly:1];
    [(SiriSharedUICompactUserUtteranceView *)v10 _setEmojiMaskStreamingTextView:v22];

    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      traitCollection = [(SiriSharedUICompactUserUtteranceView *)v10 traitCollection];
      if ([traitCollection userInterfaceStyle] == 1)
      {
        [MEMORY[0x277D75348] systemDarkGrayColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemLightGrayColor];
      }
      contentView = ;

      [(SUICStreamingTextView *)v10->_streamingTextView setStartTextColor:contentView];
      [(SUICStreamingTextView *)v10->_streamingTextView setEndTextColor:contentView];
      streamingTextView = v10->_streamingTextView;
      v28 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74410]];
      [(SUICStreamingTextView *)streamingTextView setFont:v28];

      _streamingTextView = [(SiriSharedUICompactUserUtteranceView *)v10 _streamingTextView];
      v26 = v10;
    }

    else
    {
      contentView = [(UIVisualEffectView *)v10->_backgroundView contentView];
      _streamingTextView = [(SiriSharedUICompactUserUtteranceView *)v10 _streamingTextView];
      v26 = contentView;
    }

    [(SiriSharedUICompactUserUtteranceView *)v26 addSubview:_streamingTextView];

    _emojiMaskStreamingTextView = [(SiriSharedUICompactUserUtteranceView *)v10 _emojiMaskStreamingTextView];
    [(SiriSharedUICompactUserUtteranceView *)v10 addSubview:_emojiMaskStreamingTextView];

    v30 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v10 action:sel__handleTap_];
    [(SiriSharedUICompactUserUtteranceView *)v10 addGestureRecognizer:v30];
  }

  return v10;
}

- (void)setLatencySummary:(id)summary
{
  self->_currentDisplayType = 2;
  [(SiriSharedUICompactUserUtteranceView *)self _setStreamingText:summary carousel:1 showEditImage:0];

  [(SiriSharedUICompactUserUtteranceView *)self setNeedsLayout];
}

- (void)setSpeechRecognitionHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  if (self->_speechRecognitionHypothesis)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained userUtteranceView:self speechRecognitionHypothesisDidDisappear:self->_speechRecognitionHypothesis];
  }

  currentDisplayType = self->_currentDisplayType;
  self->_currentDisplayType = hypothesisCopy != 0;
  v6 = [hypothesisCopy copy];
  speechRecognitionHypothesis = self->_speechRecognitionHypothesis;
  self->_speechRecognitionHypothesis = v6;

  if ([hypothesisCopy isFinal])
  {
    v8 = !self->_isInAmbient;
  }

  else
  {
    v8 = 0;
  }

  v9 = currentDisplayType == 2;
  userUtterance = [hypothesisCopy userUtterance];
  bestTextInterpretation = [userUtterance bestTextInterpretation];
  v12 = bestTextInterpretation;
  if (bestTextInterpretation)
  {
    v13 = bestTextInterpretation;
  }

  else
  {
    v13 = &stru_282F84AA8;
  }

  [(SiriSharedUICompactUserUtteranceView *)self _setStreamingText:v13 carousel:v9 showEditImage:v8];

  v14 = objc_loadWeakRetained(&self->_delegate);
  [v14 userUtteranceView:self speechRecognitionHypothesisDidAppear:self->_speechRecognitionHypothesis];

  [(SiriSharedUICompactUserUtteranceView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _streamingTextView = [(SiriSharedUICompactUserUtteranceView *)self _streamingTextView];
  text = [_streamingTextView text];
  v8 = [text length];

  if (v8)
  {
    p_contentInsets = &self->_contentInsets;
    v10 = width - self->_contentInsets.left - self->_contentInsets.right;
    v11 = height - self->_contentInsets.top - self->_contentInsets.bottom;
    _streamingTextView2 = [(SiriSharedUICompactUserUtteranceView *)self _streamingTextView];
    [_streamingTextView2 sizeThatFits:{v10, v11}];
    v14 = v13;
    v16 = v15;

    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      width = fmax(v14 + p_contentInsets->left + p_contentInsets->right, 50.0);
    }

    v17 = v16 + p_contentInsets->top + p_contentInsets->bottom + 0.0;
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SiriSharedUICompactUserUtteranceView;
  [(SiriSharedUICompactUserUtteranceView *)&v19 layoutSubviews];
  [(SiriSharedUICompactUserUtteranceView *)self bounds];
  v4 = v3;
  v6 = v5;
  backgroundView = self->_backgroundView;
  [(SiriSharedUICompactUserUtteranceView *)self bounds];
  [(UIVisualEffectView *)backgroundView setFrame:?];
  text = [(SUICStreamingTextView *)self->_streamingTextView text];
  v9 = [text length];

  if (v9)
  {
    left = self->_contentInsets.left;
    right = self->_contentInsets.right;
    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      v12 = self->_maxWidth - self->_contentInsets.left - self->_contentInsets.right;
    }

    else
    {
      v12 = v4 - left - right;
    }

    [(SUICStreamingTextView *)self->_streamingTextView sizeThatFits:v12, v6];
    v14 = v13;
    top = self->_contentInsets.top;
    v15 = self->_contentInsets.left;
    _streamingTextView = [(SiriSharedUICompactUserUtteranceView *)self _streamingTextView];
    [_streamingTextView setFrame:{v15, top, v12, v14}];

    _emojiMaskStreamingTextView = [(SiriSharedUICompactUserUtteranceView *)self _emojiMaskStreamingTextView];
    [_emojiMaskStreamingTextView setFrame:{v15, top, v12, v14}];
  }
}

- (id)_createStreamingTextViewForEmojisOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = objc_alloc_init(MEMORY[0x277D61A80]);
  _fontForStreamingTextView = [(SiriSharedUICompactUserUtteranceView *)self _fontForStreamingTextView];
  [v5 setFont:_fontForStreamingTextView];
  [v5 setAnimationDuration:0.3];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v10 = 0.0;
  if (IsAccessibilityCategory)
  {
    v10 = 0.5;
  }

  [v5 setHyphenationFactor:v10];
  if (onlyCopy)
  {
    [v5 setRenderEmojisOnly:1];
  }

  else
  {
    [v5 setRenderEmojis:0];
  }

  return v5;
}

- (void)_handleTap:(id)tap
{
  v10 = *MEMORY[0x277D85DE8];
  if ([tap state] == 3)
  {
    v4 = MEMORY[0x277CEF098];
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SiriSharedUICompactUserUtteranceView _handleTap:]";
      _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: tap to edit experience requested", &v8, 0xCu);
    }

    if (self->_isInAmbient)
    {
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SiriSharedUICompactUserUtteranceView _handleTap:]";
        _os_log_impl(&dword_21E3EB000, v6, OS_LOG_TYPE_DEFAULT, "%s #compact: tap to edit ignored due to ambient mode", &v8, 0xCu);
      }
    }

    else
    {
      delegate = [(SiriSharedUICompactUserUtteranceView *)self delegate];
      [delegate userUtteranceViewTapped:self];
    }
  }
}

- (id)_fontForStreamingTextView
{
  v3 = *MEMORY[0x277D76918];
  if (self->_isInAmbient && !self->_isInAmbientInteractivity)
  {
    v5 = *MEMORY[0x277D76A08];

    v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v5 variant:1280];
    v3 = v5;
  }

  else
  {
    v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v3 variant:256];
  }

  return v4;
}

- (void)_setStreamingText:(id)text carousel:(BOOL)carousel showEditImage:(BOOL)image
{
  imageCopy = image;
  carouselCopy = carousel;
  textCopy = text;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v10 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = v32[5];
    v32[5] = v11;

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v13 = [v10 length];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __81__SiriSharedUICompactUserUtteranceView__setStreamingText_carousel_showEditImage___block_invoke;
    v18 = &unk_278354748;
    v20 = v23;
    v21 = &v25;
    v14 = v10;
    v19 = v14;
    v22 = &v31;
    [v14 enumerateSubstringsInRange:0 options:v13 usingBlock:{1027, &v15}];
    if (v26[5])
    {
      [v32[5] addObject:{v15, v16, v17, v18}];
    }

    if (![v32[5] count] && objc_msgSend(v14, "length"))
    {
      [v32[5] addObject:v14];
    }

    [(SUICStreamingTextView *)self->_streamingTextView setWords:v32[5] showEditImage:imageCopy useCarouselAnimation:carouselCopy];
    [(SUICStreamingTextView *)self->_emojiMaskStreamingTextView setWords:v32[5] showEditImage:0 useCarouselAnimation:carouselCopy];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(&v25, 8);
  }

  _Block_object_dispose(&v31, 8);
}

void __81__SiriSharedUICompactUserUtteranceView__setStreamingText_carousel_showEditImage___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  *(*(*(a1 + 40) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) length] != 0;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v12 appendString:?];
  }

  v13 = a3 - a5;
  if (a3 != a5)
  {
    v14 = [*(a1 + 32) substringWithRange:{a5, a3 - a5}];
    [v12 appendString:v14];
  }

  [v12 appendString:v11];
  [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = a6 - (v13 + a4);
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(a1 + 32);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__SiriSharedUICompactUserUtteranceView__setStreamingText_carousel_showEditImage___block_invoke_2;
    v22[3] = &unk_278354720;
    v22[4] = *(a1 + 48);
    [v21 enumerateSubstringsInRange:a3 + a4 options:v17 usingBlock:{1026, v22}];
  }
}

- (void)setIsInAmbient:(BOOL)ambient
{
  if (self->_isInAmbient != ambient)
  {
    self->_isInAmbient = ambient;
    [(SiriSharedUICompactUserUtteranceView *)self _updateAmbientAppearance];
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)interactivity
{
  if (self->_isInAmbientInteractivity != interactivity)
  {
    self->_isInAmbientInteractivity = interactivity;
    [(SiriSharedUICompactUserUtteranceView *)self _updateAmbientAppearance];
  }
}

- (void)_updateAmbientAppearance
{
  if ([(SRUIFSpeechRecognitionHypothesis *)self->_speechRecognitionHypothesis isFinal])
  {
    v3 = !self->_isInAmbient;
  }

  else
  {
    v3 = 0;
  }

  [(SUICStreamingTextView *)self->_streamingTextView setShowEditTextImage:v3];
  streamingTextView = self->_streamingTextView;
  _fontForStreamingTextView = [(SiriSharedUICompactUserUtteranceView *)self _fontForStreamingTextView];
  [(SUICStreamingTextView *)streamingTextView setFont:_fontForStreamingTextView];

  emojiMaskStreamingTextView = self->_emojiMaskStreamingTextView;
  _fontForStreamingTextView2 = [(SiriSharedUICompactUserUtteranceView *)self _fontForStreamingTextView];
  [(SUICStreamingTextView *)emojiMaskStreamingTextView setFont:_fontForStreamingTextView2];

  v8 = self->_streamingTextView;
  words = [(SUICStreamingTextView *)v8 words];
  [(SUICStreamingTextView *)v8 setWords:words];

  v10 = self->_emojiMaskStreamingTextView;
  words2 = [(SUICStreamingTextView *)v10 words];
  [(SUICStreamingTextView *)v10 setWords:words2];
}

- (SiriSharedUICompactUserUtteranceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end