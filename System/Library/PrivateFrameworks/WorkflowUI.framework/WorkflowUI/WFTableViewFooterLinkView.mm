@interface WFTableViewFooterLinkView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (WFTableViewFooterLinkView)initWithReuseIdentifier:(id)identifier;
- (WFTableViewFooterLinkViewDelegate)delegate;
- (_NSRange)linkRange;
- (void)setText:(id)text URL:(id)l;
- (void)setText:(id)text URL:(id)l linkRange:(_NSRange)range;
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  delegate = [(WFTableViewFooterLinkView *)self delegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    [delegate footerLinkView:self didTapURL:lCopy];
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
  tintColor = [(WFTableViewFooterLinkView *)self tintColor];
  v7[0] = tintColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  textView = [(WFTableViewFooterLinkView *)self textView];
  [textView setLinkTextAttributes:v4];
}

- (void)setText:(id)text URL:(id)l linkRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  lCopy = l;
  v11 = [textCopy copy];
  text = self->_text;
  self->_text = v11;

  objc_storeStrong(&self->_URL, l);
  self->_linkRange.location = location;
  self->_linkRange.length = length;
  v13 = lCopy;
  v14 = MEMORY[0x277CCAB48];
  v22 = textCopy;
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

  textView = [(WFTableViewFooterLinkView *)self textView];
  [textView setAttributedText:v15];
}

- (void)setText:(id)text URL:(id)l
{
  lCopy = l;
  textCopy = text;
  -[WFTableViewFooterLinkView setText:URL:linkRange:](self, "setText:URL:linkRange:", textCopy, lCopy, 0, [textCopy length]);
}

- (WFTableViewFooterLinkView)initWithReuseIdentifier:(id)identifier
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFTableViewFooterLinkView;
  v3 = [(WFTableViewFooterLinkView *)&v28 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75C40]);
    [(UITextView *)v4 setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4 setBackgroundColor:clearColor];

    [(UITextView *)v4 setShowsVerticalScrollIndicator:0];
    [(UITextView *)v4 setEditable:0];
    [(UITextView *)v4 setSelectable:1];
    [(UITextView *)v4 setScrollEnabled:0];
    textContainer = [(UITextView *)v4 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v4 setDelegate:v3];
    textView = v3->_textView;
    v3->_textView = v4;
    v8 = v4;

    [(WFTableViewFooterLinkView *)v3 updateLinkColor];
    contentView = [(WFTableViewFooterLinkView *)v3 contentView];
    [contentView addSubview:v8];
    v21 = MEMORY[0x277CCAAD0];
    topAnchor = [(UITextView *)v8 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v29[0] = v25;
    leadingAnchor = [(UITextView *)v8 leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v29[1] = v20;
    trailingAnchor = [(UITextView *)v8 trailingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v29[2] = v12;
    bottomAnchor = [(UITextView *)v8 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v29[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end