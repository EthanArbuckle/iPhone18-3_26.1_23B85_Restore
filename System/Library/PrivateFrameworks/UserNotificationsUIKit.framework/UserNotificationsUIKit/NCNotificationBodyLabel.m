@interface NCNotificationBodyLabel
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationBodyLabelDelegate)delegate;
- (id)_newLabel;
- (id)_newTextElement;
- (id)_newTextView;
- (void)_attributedTextForTextElement:(id *)a3 forUnderlay:(id *)a4 font:(id)a5;
- (void)_formatTextSupporting:(id)a3;
- (void)_resetForNewLayout;
- (void)_setupViewsIfNecessary;
- (void)_updateTextAttributes;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)layoutSubviews;
- (void)nc_setMenuEnabled:(BOOL)a3;
- (void)nc_setNumberOfLines:(unint64_t)a3;
- (void)setAttributedText:(id)a3;
- (void)setPreferredFontWeight:(double)a3;
- (void)setPreferredTextStyle:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setURLInteractionEnabled:(BOOL)a3;
@end

@implementation NCNotificationBodyLabel

- (void)_resetForNewLayout
{
  [(NCTextSupporting *)self->_textElement removeFromSuperview];
  textElement = self->_textElement;
  self->_textElement = 0;

  [(NCTextSupporting *)self->_backgroundUnderlayElement removeFromSuperview];
  backgroundUnderlayElement = self->_backgroundUnderlayElement;
  self->_backgroundUnderlayElement = 0;
}

- (void)_setupViewsIfNecessary
{
  if ([(NSAttributedString *)self->_attributedText length]&& !self->_textElement)
  {
    v3 = 0x8000;
    if (self->_isAppleIntelligenceSummary)
    {
      v4 = [(NSAttributedString *)self->_attributedText string];
      if ([v4 _shouldItalicize])
      {
        v3 = 32769;
      }

      else
      {
        v3 = 0x8000;
      }
    }

    v5 = [(NCNotificationListBaseContentView *)self _preferredFont:1 textStyle:self->_preferredTextStyle weight:v3 additionalTraits:self->_preferredFontWeight];
    v16 = 0;
    v17 = 0;
    [(NCNotificationBodyLabel *)self _attributedTextForTextElement:&v17 forUnderlay:&v16 font:v5];
    v6 = v17;
    v7 = v16;
    if (v7)
    {
      v8 = [(NCNotificationBodyLabel *)self _newTextElement];
      backgroundUnderlayElement = self->_backgroundUnderlayElement;
      self->_backgroundUnderlayElement = v8;

      [(NCNotificationBodyLabel *)self addSubview:self->_backgroundUnderlayElement];
    }

    v10 = [(NCNotificationBodyLabel *)self _newTextElement];
    textElement = self->_textElement;
    self->_textElement = v10;

    [(NCNotificationBodyLabel *)self addSubview:self->_textElement];
    [(NCTextSupporting *)self->_backgroundUnderlayElement setAttributedText:v7];
    [(NCTextSupporting *)self->_textElement setAttributedText:v6];
    [(NCTextSupporting *)self->_backgroundUnderlayElement setAccessibilityIdentifier:@"TextContent.Underlay"];
    [(NCTextSupporting *)self->_textElement setAccessibilityIdentifier:@"TextContent.Primary"];
    [(NCTextSupporting *)self->_backgroundUnderlayElement setFont:v5];
    [(NCTextSupporting *)self->_textElement setFont:v5];
    v12 = self->_backgroundUnderlayElement;
    v13 = [(NCNotificationBodyLabel *)self _strokeVisualStylingProvider];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v12 style:1 visualStylingProvider:v13 outgoingProvider:0];

    v14 = self->_textElement;
    v15 = [(NCNotificationBodyLabel *)self _strokeVisualStylingProvider];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v14 style:0 visualStylingProvider:v15 outgoingProvider:0];
  }
}

- (id)_newTextElement
{
  if (self->_URLInteractionEnabled && !self->_isAppleIntelligenceSummary)
  {
    return [(NCNotificationBodyLabel *)self _newTextView];
  }

  else
  {
    return [(NCNotificationBodyLabel *)self _newLabel];
  }
}

- (id)_newTextView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setEditable:0];
  [v3 setSelectable:1];
  [v3 setDataDetectorTypes:3];
  [v3 _setInteractiveTextSelectionDisabled:1];
  [v3 setScrollEnabled:0];
  [v3 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v4 = [v3 textContainer];
  [v4 setLineFragmentPadding:0.0];

  v5 = [v3 textContainer];
  [v5 setLineBreakMode:4];

  v6 = [v3 textLayoutManager];
  [v6 setLimitsLayoutForSuspiciousContents:1];

  [v3 setDelegate:self];
  [(NCNotificationBodyLabel *)self _formatTextSupporting:v3];
  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NCNotificationBodyLabel;
  [(NCNotificationBodyLabel *)&v4 layoutSubviews];
  [(NCNotificationBodyLabel *)self _setupViewsIfNecessary];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__NCNotificationBodyLabel_layoutSubviews__block_invoke;
  v3[3] = &unk_27836F6A8;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __41__NCNotificationBodyLabel_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[55];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *(a1 + 32);
  v5 = v4[56];
  [v4 bounds];

  return [v5 setFrame:?];
}

- (id)_newLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 _setTextAlignmentFollowsWritingDirection:1];
  [v3 setLineBreakMode:4];
  [(NCNotificationBodyLabel *)self _formatTextSupporting:v3];
  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationBodyLabel *)self _setupViewsIfNecessary];
  textElement = self->_textElement;

  [(NCTextSupporting *)textElement sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v9 = a4;
  textElement = self->_textElement;
  v11 = a3;
  v12 = objc_opt_class();
  v13 = textElement;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!a6 && v15 == v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationLabel:self requestsInteractionWithURL:v9];
    }
  }

  return 0;
}

- (void)setURLInteractionEnabled:(BOOL)a3
{
  if (self->_URLInteractionEnabled != a3)
  {
    self->_URLInteractionEnabled = a3;
    [(NCNotificationBodyLabel *)self _resetForNewLayout];

    [(NCNotificationBodyLabel *)self setNeedsLayout];
  }
}

- (void)setPreferredFontWeight:(double)a3
{
  if (self->_preferredFontWeight != a3)
  {
    self->_preferredFontWeight = a3;
    [(NCNotificationBodyLabel *)self _resetForNewLayout];

    [(NCNotificationBodyLabel *)self setNeedsLayout];
  }
}

- (void)setPreferredTextStyle:(id)a3
{
  if (self->_preferredTextStyle != a3)
  {
    self->_preferredTextStyle = a3;
    [(NCNotificationBodyLabel *)self _resetForNewLayout];

    [(NCNotificationBodyLabel *)self setNeedsLayout];
  }
}

- (void)setAttributedText:(id)a3
{
  v7 = a3;
  v5 = [(NCNotificationBodyLabel *)self attributedText];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_attributedText, a3);
    self->_isAppleIntelligenceSummary = [(NSAttributedString *)self->_attributedText nc_isAppleIntelligenceSummary]!= 0;
    [(NCNotificationBodyLabel *)self _resetForNewLayout];
    [(NCNotificationBodyLabel *)self setNeedsLayout];
  }
}

- (void)nc_setNumberOfLines:(unint64_t)a3
{
  if (self->_nc_numberOfLines != a3)
  {
    self->_nc_numberOfLines = a3;
    [(NCTextSupporting *)self->_textElement nc_setNumberOfLines:?];
    [(NCTextSupporting *)self->_backgroundUnderlayElement nc_setNumberOfLines:a3];

    [(NCNotificationBodyLabel *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    [(NCTextSupporting *)self->_textElement setTextColor:v5];
  }
}

- (void)nc_setMenuEnabled:(BOOL)a3
{
  if (self->_nc_menuEnabled != a3)
  {
    v4 = a3;
    self->_nc_menuEnabled = a3;
    [(NCTextSupporting *)self->_textElement nc_setMenuEnabled:?];
    [(NCTextSupporting *)self->_backgroundUnderlayElement nc_setMenuEnabled:v4];

    [(NCNotificationBodyLabel *)self setNeedsLayout];
  }
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  textElement = self->_textElement;
  v7 = a5;
  v8 = [(NCNotificationBodyLabel *)self _strokeVisualStylingProvider];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:textElement style:0 visualStylingProvider:v8 outgoingProvider:v7];

  backgroundUnderlayElement = self->_backgroundUnderlayElement;
  v10 = [(NCNotificationBodyLabel *)self _strokeVisualStylingProvider];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:backgroundUnderlayElement style:1 visualStylingProvider:v10 outgoingProvider:v7];
}

- (void)_updateTextAttributes
{
  [(NCNotificationBodyLabel *)self _resetForNewLayout];

  [(NCNotificationBodyLabel *)self setNeedsLayout];
}

- (void)_attributedTextForTextElement:(id *)a3 forUnderlay:(id *)a4 font:(id)a5
{
  v8 = a5;
  v9 = [(NSAttributedString *)self->_attributedText nc_isAppleIntelligenceSummary];
  v10 = [(NCNotificationBodyLabel *)self attributedText];
  v11 = [v10 nc_styledTextWithGylphAddedIfNecessaryForFont:v8 glyphColor:0];

  if (v9)
  {
    v12 = [v11 mutableCopy];
    v13 = [v11 mutableCopy];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [v11 length];
    v15 = *MEMORY[0x277D74060];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__NCNotificationBodyLabel__attributedTextForTextElement_forUnderlay_font___block_invoke;
    v19[3] = &unk_278371808;
    v16 = v12;
    v20 = v16;
    v22 = v23;
    v17 = v13;
    v21 = v17;
    [v16 enumerateAttribute:v15 inRange:0 options:v14 usingBlock:{0, v19}];
    *a3 = [v16 copy];
    *a4 = [v17 copy];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v18 = v11;
    *a3 = v11;
    *a4 = 0;
  }
}

void __74__NCNotificationBodyLabel__attributedTextForTextElement_forUnderlay_font___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  if (v14)
  {
    v7 = objc_opt_new();
    v8 = [v14 image];
    v9 = [MEMORY[0x277D75348] clearColor];
    v10 = [v8 imageWithTintColor:v9];
    [v7 setImage:v10];

    v11 = *MEMORY[0x277D74060];
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D74060] range:{a3, a4}];
    [*(a1 + 32) addAttribute:v11 value:v7 range:{a3, a4}];
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *MEMORY[0x277D740C0];
    v7 = [MEMORY[0x277D75348] clearColor];
    [v12 addAttribute:v13 value:v7 range:{a3, a4}];
  }
}

- (void)_formatTextSupporting:(id)a3
{
  nc_menuEnabled = self->_nc_menuEnabled;
  v6 = a3;
  [v6 nc_setMenuEnabled:nc_menuEnabled];
  [v6 nc_setNumberOfLines:self->_nc_numberOfLines];
  v5 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v5];

  [v6 setContentMode:4];
}

- (NCNotificationBodyLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end