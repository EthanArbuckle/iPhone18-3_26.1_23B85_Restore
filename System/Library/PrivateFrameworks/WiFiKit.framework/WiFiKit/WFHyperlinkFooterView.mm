@interface WFHyperlinkFooterView
- (BOOL)isLargeAccessibilityTextSize;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SEL)action;
- (UIEdgeInsets)textInsets;
- (WFHyperlinkFooterView)init;
- (_NSRange)linkRange;
- (id)target;
- (void)_linkify;
- (void)layoutSubviews;
- (void)setAction:(SEL)action;
- (void)setLinkRange:(_NSRange)range;
- (void)setText:(id)text;
- (void)setURL:(id)l;
@end

@implementation WFHyperlinkFooterView

- (WFHyperlinkFooterView)init
{
  v2 = [(WFHyperlinkFooterView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75C40]);
    textView = v2->_textView;
    v2->_textView = v3;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v2->_textView setBackgroundColor:clearColor];

    [(UITextView *)v2->_textView setShowsVerticalScrollIndicator:0];
    [(UITextView *)v2->_textView setEditable:0];
    [(UITextView *)v2->_textView setSelectable:1];
    [(UITextView *)v2->_textView setScrollEnabled:0];
    [(UITextView *)v2->_textView _setInteractiveTextSelectionDisabled:1];
    [(WFHyperlinkFooterView *)v2 addSubview:v2->_textView];
  }

  return v2;
}

- (void)_linkify
{
  v3 = [(NSString *)self->_text length];
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:self->_text];
  v4 = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v13 addAttribute:v4 value:v5 range:{0, v3}];

  v6 = *MEMORY[0x277D740C0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v13 addAttribute:v6 value:systemGrayColor range:{0, v3}];

  defaultHyperLinkColor = [MEMORY[0x277D75348] defaultHyperLinkColor];
  p_linkRange = &self->_linkRange;
  [v13 addAttribute:v6 value:defaultHyperLinkColor range:{self->_linkRange.location, self->_linkRange.length}];

  v10 = *MEMORY[0x277D740E8];
  URL = self->_URL;
  v12 = URL;
  if (!URL)
  {
    v12 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2882E4AD8];
  }

  [v13 addAttribute:v10 value:v12 range:{p_linkRange->location, self->_linkRange.length}];
  if (!URL)
  {
  }

  [v13 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC28] range:{p_linkRange->location, self->_linkRange.length}];
  [(UITextView *)self->_textView setAttributedText:v13];
  [(UITextView *)self->_textView setDelegate:self];
}

- (BOOL)isLargeAccessibilityTextSize
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (UIEdgeInsets)textInsets
{
  v2 = 0.0;
  if ([(WFHyperlinkFooterView *)self isLargeAccessibilityTextSize])
  {
    v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76968]];
    [v3 scaledValueForValue:24.0];
    v2 = v4;
  }

  v5 = 0.0;
  v6 = 12.0;
  v7 = 12.0;
  v8 = v2;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = WFHyperlinkFooterView;
  [(WFHyperlinkFooterView *)&v16 layoutSubviews];
  [(WFHyperlinkFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(WFHyperlinkFooterView *)self textInsets];
  v10 = v4 + v9;
  v12 = v6 + v11;
  v14 = v8 - (v9 + v13);
  [(UITextView *)self->_textView frame];
  [(UITextView *)self->_textView sizeThatFits:v14, 1.79769313e308];
  [(UITextView *)self->_textView setFrame:v10, v12, v14, v15];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (self->_text != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_text, text);
    [(UITextView *)self->_textView setText:v6];
    if (self->_linkRange.length)
    {
      [(WFHyperlinkFooterView *)self _linkify];
    }

    [(WFHyperlinkFooterView *)self setNeedsLayout];
    textCopy = v6;
  }
}

- (void)setLinkRange:(_NSRange)range
{
  self->_linkRange = range;
  if (self->_text)
  {
    [(WFHyperlinkFooterView *)self _linkify];
  }
}

- (_NSRange)linkRange
{
  p_linkRange = &self->_linkRange;
  location = self->_linkRange.location;
  length = p_linkRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (self->_URL != lCopy)
  {
    v6 = lCopy;
    objc_storeStrong(&self->_URL, l);
    [(WFHyperlinkFooterView *)self setNeedsLayout];
    [(WFHyperlinkFooterView *)self _linkify];
    lCopy = v6;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(WFHyperlinkFooterView *)self text:fits.width];
  v6 = [v5 length];

  if (v6)
  {
    [(WFHyperlinkFooterView *)self textInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = width - (v9 + v13);
    [(UITextView *)self->_textView sizeThatFits:v15, 1.79769313e308];
    v16 = v14 + v10 + v15;
    v18 = v12 + v8 + v17;
  }

  else
  {
    v16 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v18;
  result.width = v16;
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v7 = [(WFHyperlinkFooterView *)self target:view];
  if (v7)
  {
    action = [(WFHyperlinkFooterView *)self action];
    selfCopy = self;
    v10 = v7;
    v11 = [v10 methodForSelector:action];
    v12 = [v10 methodSignatureForSelector:action];
    methodReturnLength = [v12 methodReturnLength];

    if (selfCopy)
    {
      v11(v10, action, selfCopy);
    }

    else
    {
      (v11)(v10, action);
    }
    v14 = ;

    if (methodReturnLength)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  return v7 == 0;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end