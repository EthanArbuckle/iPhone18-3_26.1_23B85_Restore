@interface SiriSharedUICompactServerUtteranceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriSharedUICompactServerUtteranceView)initWithContentInsets:(UIEdgeInsets)insets delegate:(id)delegate;
- (SiriSharedUICompactServerUtteranceViewDelegate)delegate;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)contentInsets;
- (double)_scaledSpacingBetweenLabels;
- (id)_createEmojiLabelForString:(id)string containingEmojisAtRanges:(id)ranges;
- (id)_createLabel;
- (id)_createLabelForUtterance:(id)utterance;
- (id)_fontForUtteranceLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInAmbientInteractivity:(BOOL)interactivity;
- (void)setUtterances:(id)utterances;
@end

@implementation SiriSharedUICompactServerUtteranceView

- (SiriSharedUICompactServerUtteranceView)initWithContentInsets:(UIEdgeInsets)insets delegate:(id)delegate
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = SiriSharedUICompactServerUtteranceView;
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [(SiriSharedUICompactServerUtteranceView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], v11, v12, v13];
  v15 = v14;
  if (v14)
  {
    v14->_contentInsets.top = top;
    v14->_contentInsets.left = left;
    v14->_contentInsets.bottom = bottom;
    v14->_contentInsets.right = right;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v16 = [[SiriSharedUIStandardView alloc] initWithFrame:v10, v11, v12, v13];
    labelsContainerView = v15->_labelsContainerView;
    v15->_labelsContainerView = &v16->super;

    [(SiriSharedUICompactServerUtteranceView *)v15 addSubview:v15->_labelsContainerView];
    v18 = objc_alloc_init(SiriSharedUIDeviceMotionEffectView);
    deviceMotionEffectView = v15->_deviceMotionEffectView;
    v15->_deviceMotionEffectView = v18;

    [(SiriSharedUICompactServerUtteranceView *)v15 addSubview:v15->_deviceMotionEffectView];
  }

  return v15;
}

- (UIEdgeInsets)alignmentRectInsets
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

- (void)setUtterances:(id)utterances
{
  v55 = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  subviews = [(UIView *)self->_labelsContainerView subviews];
  v6 = [subviews copy];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        [v12 removeFromSuperview];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          assistantUtteranceView = [v12 assistantUtteranceView];
          [WeakRetained serverUtteranceView:self utteranceViewDidDisappear:assistantUtteranceView];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v9);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  objectEnumerator = [(NSMapTable *)self->_emojiLabels objectEnumerator];
  v16 = [objectEnumerator countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v44 + 1) + 8 * j) removeFromSuperview];
      }

      v17 = [objectEnumerator countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v17);
  }

  v39 = v7;

  [(NSMapTable *)self->_emojiLabels removeAllObjects];
  array = [MEMORY[0x277CBEB18] array];
  serverLabels = self->_serverLabels;
  self->_serverLabels = array;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = utterancesCopy;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * k);
        text = [v27 text];
        if (text)
        {
          v29 = text;
          text2 = [v27 text];
          v31 = [text2 isEqualToString:&stru_282F84AA8];

          if ((v31 & 1) == 0)
          {
            v32 = [(SiriSharedUICompactServerUtteranceView *)self _createLabelForUtterance:v27];
            [(UIView *)self->_labelsContainerView addSubview:v32];
            [(NSMutableArray *)self->_serverLabels addObject:v32];
            v33 = objc_loadWeakRetained(&self->_delegate);
            [v33 serverUtteranceView:self utteranceViewDidAppear:v27];

            v34 = [(SiriSharedUICompactServerUtteranceView *)self _textForLabel:v32];
            v35 = [SiriSharedUIUtilities substringRangesContainingEmojiInString:v34];
            if ([v35 count])
            {
              if (!self->_emojiLabels)
              {
                weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
                emojiLabels = self->_emojiLabels;
                self->_emojiLabels = weakToStrongObjectsMapTable;
              }

              v38 = [(SiriSharedUICompactServerUtteranceView *)self _createEmojiLabelForString:v34 containingEmojisAtRanges:v35];
              [(SiriSharedUICompactServerUtteranceView *)self addSubview:v38];
              [(NSMapTable *)self->_emojiLabels setObject:v38 forKey:v32];
            }
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v24);
  }

  [(SiriSharedUIDeviceMotionEffectView *)self->_deviceMotionEffectView viewWillBeUpdated];
  [(SiriSharedUICompactServerUtteranceView *)self setNeedsLayout];
}

- (void)setIsInAmbient:(BOOL)ambient
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_isInAmbient != ambient)
  {
    self->_isInAmbient = ambient;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_serverLabels;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          _fontForUtteranceLabel = [(SiriSharedUICompactServerUtteranceView *)self _fontForUtteranceLabel];
          [v9 setFont:_fontForUtteranceLabel];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)interactivity
{
  v16 = *MEMORY[0x277D85DE8];
  self->_isInAmbientInteractivity = interactivity;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_serverLabels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        _fontForUtteranceLabel = [(SiriSharedUICompactServerUtteranceView *)self _fontForUtteranceLabel];
        [v9 setFont:_fontForUtteranceLabel];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  subviews = [(UIView *)self->_labelsContainerView subviews];
  v7 = [subviews count];

  if (v7)
  {
    v27 = 0x2020000000;
    v23 = 0x2020000000;
    top = self->_contentInsets.top;
    bottom = self->_contentInsets.bottom;
    v10 = width - self->_contentInsets.left - self->_contentInsets.right;
    v25 = 0;
    v26 = &v25;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v24 = 0;
    serverLabels = self->_serverLabels;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__SiriSharedUICompactServerUtteranceView_sizeThatFits___block_invoke;
    v20[3] = &unk_278354BC8;
    *&v20[7] = v10;
    *&v20[8] = height - top - bottom;
    v20[5] = &v25;
    v20[6] = &v21;
    v20[4] = self;
    [(NSMutableArray *)serverLabels enumerateObjectsUsingBlock:v20];
    v12 = v22[3];
    _fontForUtteranceLabel = [(SiriSharedUICompactServerUtteranceView *)self _fontForUtteranceLabel];
    [(SiriSharedUICompactServerUtteranceView *)self _lineHeightForFont:_fontForUtteranceLabel];
    v15 = vabdd_f64(v12, v14);

    if (v15 <= 1.0)
    {
      self->_isMultiLine = 0;
      v16 = v26;
      v10 = v26[3];
    }

    else
    {
      self->_isMultiLine = 1;
      v16 = v26;
      v26[3] = v10;
    }

    v16[3] = self->_contentInsets.left + self->_contentInsets.right + v10;
    v17 = self->_contentInsets.top + self->_contentInsets.bottom + v22[3];
    v22[3] = v17;
    if (v16[3] < width)
    {
      width = v16[3];
    }

    if (v17 < height)
    {
      height = v17;
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
  }

  v18 = width;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

double __55__SiriSharedUICompactServerUtteranceView_sizeThatFits___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  *&v7 = v7;
  *(v5 + 24) = fmaxf(v6, *&v7);
  v8 = *(*(a1 + 48) + 8);
  result = v9 + *(v8 + 24);
  *(v8 + 24) = result;
  if (a3)
  {
    [*(a1 + 32) _scaledSpacingBetweenLabels];
    v11 = *(*(a1 + 48) + 8);
    result = v12 + *(v11 + 24);
    *(v11 + 24) = result;
  }

  return result;
}

- (void)layoutSubviews
{
  v53 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = SiriSharedUICompactServerUtteranceView;
  [(SiriSharedUICompactServerUtteranceView *)&v51 layoutSubviews];
  [(SiriSharedUICompactServerUtteranceView *)self bounds];
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  if (CGRectIsEmpty(v54))
  {
    p_contentInsets = MEMORY[0x277D768C8];
  }

  else
  {
    p_contentInsets = &self->_contentInsets;
  }

  right = p_contentInsets->right;
  bottom = p_contentInsets->bottom;
  top = p_contentInsets->top;
  left = p_contentInsets->left;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v10 = left + CGRectGetMinX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v11 = top + CGRectGetMinY(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v12 = CGRectGetWidth(v57) - (right + left);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v41 = v11;
  v42 = v10;
  v46 = CGRectGetHeight(v58) - (bottom + top);
  [(UIView *)self->_labelsContainerView setFrame:v10, v11, v12];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = self->_serverLabels;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
    v18 = *v48;
    v44 = v12;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        [v20 sizeThatFits:{v12, v46}];
        v22 = v21;
        [v20 setFrame:{v16, v17, v12, v21}];
        [(SiriSharedUICompactServerUtteranceView *)self _scaledSpacingBetweenLabels];
        v24 = v23;
        v25 = [(NSMapTable *)self->_emojiLabels objectForKey:v20];
        if (v25)
        {
          superview = [(UIView *)self->_labelsContainerView superview];
          [superview convertRect:self->_labelsContainerView fromView:{v16, v17, v12, v22}];
          v27 = v16;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = v29;
          v16 = v27;
          v12 = v44;
          [v25 setFrame:{v36, v31, v33, v35}];
        }

        v17 = v17 + v22 + v24;
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v15);
  }

  [(SiriSharedUIDeviceMotionEffectView *)self->_deviceMotionEffectView setFrame:v42, v41, v12, v46];
  subviews = [(UIView *)self->_labelsContainerView subviews];
  if (![subviews count])
  {

    goto LABEL_17;
  }

  saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];

  if (saeAvailable)
  {
LABEL_17:
    deviceMotionEffectView = self->_deviceMotionEffectView;
    labelsContainerView = 0;
    goto LABEL_18;
  }

  deviceMotionEffectView = self->_deviceMotionEffectView;
  labelsContainerView = self->_labelsContainerView;
LABEL_18:
  [(SiriSharedUIDeviceMotionEffectView *)deviceMotionEffectView updateMaskingForView:labelsContainerView];
}

- (id)_createLabelForUtterance:(id)utterance
{
  utteranceCopy = utterance;
  _createLabel = [(SiriSharedUICompactServerUtteranceView *)self _createLabel];
  delegate = [(SiriSharedUICompactServerUtteranceView *)self delegate];
  v7 = [delegate parserSpeakableObjectProviderForServerUtterance:self];

  v8 = MEMORY[0x277D61B38];
  text = [utteranceCopy text];
  context = [utteranceCopy context];
  v11 = [v8 parsedUtteranceFromText:text context:context spekableObjectProviding:v7];

  [(SiriSharedUICompactServerUtteranceView *)self _setTextForLabel:_createLabel text:v11];
  dialogIdentifier = [utteranceCopy dialogIdentifier];
  [_createLabel setAccessibilityIdentifier:dialogIdentifier];

  [_createLabel setAssistantUtteranceView:utteranceCopy];

  return _createLabel;
}

- (id)_createEmojiLabelForString:(id)string containingEmojisAtRanges:(id)ranges
{
  v31[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  rangesCopy = ranges;
  _createLabel = [(SiriSharedUICompactServerUtteranceView *)self _createLabel];
  v9 = *MEMORY[0x277D740C0];
  v30[0] = *MEMORY[0x277D740C0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v31[0] = clearColor;
  v30[1] = *MEMORY[0x277D740A8];
  font = [_createLabel font];
  v31[1] = font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v24 = stringCopy;
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy attributes:v12];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = rangesCopy;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        textColor = [_createLabel textColor];
        rangeValue = [v19 rangeValue];
        [v13 addAttribute:v9 value:textColor range:{rangeValue, v22}];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  [_createLabel setAttributedText:v13];

  return _createLabel;
}

- (id)_createLabel
{
  v3 = objc_alloc_init(SiriSharedUICompactServerUtteranceLabel);
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(SiriSharedUICompactServerUtteranceLabel *)v3 setTextColor:labelColor];

  _fontForUtteranceLabel = [(SiriSharedUICompactServerUtteranceView *)self _fontForUtteranceLabel];
  [(SiriSharedUICompactServerUtteranceLabel *)v3 setFont:_fontForUtteranceLabel];

  [(SiriSharedUICompactServerUtteranceLabel *)v3 setNumberOfLines:0];
  SiriSharedUIRecursiveSetSemanticContentAttribute(v3, [(SiriSharedUICompactServerUtteranceView *)self semanticContentAttribute]);

  return v3;
}

- (double)_scaledSpacingBetweenLabels
{
  sirisharedui_serverUtteranceFont = [MEMORY[0x277D74300] sirisharedui_serverUtteranceFont];
  [(SiriSharedUICompactServerUtteranceView *)self _lineHeightForFont:sirisharedui_serverUtteranceFont];
  v5 = v4;

  return v5;
}

- (void)dealloc
{
  [(SiriSharedUIDeviceMotionEffectView *)self->_deviceMotionEffectView invalidate];
  v3.receiver = self;
  v3.super_class = SiriSharedUICompactServerUtteranceView;
  [(SiriSharedUICompactServerUtteranceView *)&v3 dealloc];
}

- (id)_fontForUtteranceLabel
{
  v3 = *MEMORY[0x277D76918];
  if (self->_isInAmbient && !self->_isInAmbientInteractivity)
  {
    v4 = *MEMORY[0x277D769A8];

    v3 = v4;
  }

  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v3 variant:1280];

  return v5;
}

- (SiriSharedUICompactServerUtteranceViewDelegate)delegate
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