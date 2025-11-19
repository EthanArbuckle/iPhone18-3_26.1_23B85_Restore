@interface WFTableViewFooterLinkView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (WFTableViewFooterLinkView)initWithReuseIdentifier:(id)a3;
- (WFTableViewFooterLinkViewDelegate)delegate;
- (_NSRange)linkRange;
- (void)setText:(id)a3 URL:(id)a4;
- (void)setText:(id)a3 URL:(id)a4 linkRange:(_NSRange)a5;
- (void)tintColorDidChange;
- (void)updateLinkColor;
@end

@implementation WFTableViewFooterLinkView

- (_NSRange)linkRange
{
  p_linkRange = &self->_linkRange;
  location = self->_linkRange.location;
  length = p_linkRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (WFTableViewFooterLinkViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = [(WFTableViewFooterLinkView *)self delegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    [v8 footerLinkView:self didTapURL:v7];
  }

  return (v9 & 1) == 0;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = WFTableViewFooterLinkView;
  [(WFTableViewFooterLinkView *)&v3 tintColorDidChange];
  [(WFTableViewFooterLinkView *)self updateLinkColor];
}

- (void)updateLinkColor
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D740C0];
  v3 = [(WFTableViewFooterLinkView *)self tintColor];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [(WFTableViewFooterLinkView *)self textView];
  [v5 setLinkTextAttributes:v4];
}

- (void)setText:(id)a3 URL:(id)a4 linkRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = a4;
  v11 = [v9 copy];
  text = self->_text;
  self->_text = v11;

  objc_storeStrong(&self->_URL, a4);
  self->_linkRange.location = location;
  self->_linkRange.length = length;
  v13 = v10;
  v14 = MEMORY[0x277CCAB48];
  v22 = v9;
  v15 = [[v14 alloc] initWithString:v22];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v17 = [MEMORY[0x277D75348] colorWithRed:0.42745098 green:0.42745098 blue:0.447058824 alpha:1.0];
  v18 = [v22 length];

  [v15 addAttribute:*MEMORY[0x277D740A8] value:v16 range:{0, v18}];
  [v15 addAttribute:*MEMORY[0x277D740C0] value:v17 range:{0, v18}];
  v19 = *MEMORY[0x277D740E8];
  if (v13)
  {
    [v15 addAttribute:*MEMORY[0x277D740E8] value:v13 range:{location, length}];
  }

  else
  {
    v20 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2883A0E78];
    [v15 addAttribute:v19 value:v20 range:{location, length}];
  }

  [v15 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC28] range:{location, length}];

  v21 = [(WFTableViewFooterLinkView *)self textView];
  [v21 setAttributedText:v15];
}

- (void)setText:(id)a3 URL:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[WFTableViewFooterLinkView setText:URL:linkRange:](self, "setText:URL:linkRange:", v7, v6, 0, [v7 length]);
}

- (WFTableViewFooterLinkView)initWithReuseIdentifier:(id)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFTableViewFooterLinkView;
  v3 = [(WFTableViewFooterLinkView *)&v28 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75C40]);
    [(UITextView *)v4 setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4 setBackgroundColor:v5];

    [(UITextView *)v4 setShowsVerticalScrollIndicator:0];
    [(UITextView *)v4 setEditable:0];
    [(UITextView *)v4 setSelectable:1];
    [(UITextView *)v4 setScrollEnabled:0];
    v6 = [(UITextView *)v4 textContainer];
    [v6 setLineFragmentPadding:0.0];

    [(UITextView *)v4 setDelegate:v3];
    textView = v3->_textView;
    v3->_textView = v4;
    v8 = v4;

    [(WFTableViewFooterLinkView *)v3 updateLinkColor];
    v9 = [(WFTableViewFooterLinkView *)v3 contentView];
    [v9 addSubview:v8];
    v21 = MEMORY[0x277CCAAD0];
    v27 = [(UITextView *)v8 topAnchor];
    v26 = [v9 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:0.0];
    v29[0] = v25;
    v23 = [(UITextView *)v8 leadingAnchor];
    v24 = [v9 layoutMarginsGuide];
    v22 = [v24 leadingAnchor];
    v20 = [v23 constraintEqualToAnchor:v22 constant:0.0];
    v29[1] = v20;
    v19 = [(UITextView *)v8 trailingAnchor];
    v10 = [v9 layoutMarginsGuide];
    v11 = [v10 trailingAnchor];
    v12 = [v19 constraintEqualToAnchor:v11 constant:0.0];
    v29[2] = v12;
    v13 = [(UITextView *)v8 bottomAnchor];
    v14 = [v9 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
    v29[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end