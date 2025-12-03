@interface SBModifierTimelineTextDetailViewController
- (void)_copyText;
- (void)prepareForReuse;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBModifierTimelineTextDetailViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = SBModifierTimelineTextDetailViewController;
  [(SBModifierTimelineTextDetailViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75C40]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  textView = self->_textView;
  self->_textView = v4;

  v6 = self->_textView;
  v7 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [(UITextView *)v6 setFont:v7];

  [(UITextView *)self->_textView setEditable:0];
  view = [(SBModifierTimelineTextDetailViewController *)self view];
  [view addSubview:self->_textView];

  navigationItem = [(SBModifierTimelineTextDetailViewController *)self navigationItem];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Copy text" style:0 target:self action:sel__copyText];
  [navigationItem setRightBarButtonItem:v10];
}

- (void)_copyText
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  [generalPasteboard setString:self->_text];
}

- (void)setText:(id)text
{
  objc_storeStrong(&self->_text, text);
  textCopy = text;
  [(SBModifierTimelineTextDetailViewController *)self loadViewIfNeeded];
  [(UITextView *)self->_textView setText:textCopy];

  view = [(SBModifierTimelineTextDetailViewController *)self view];
  [view setNeedsLayout];
}

- (void)setAttributedText:(id)text
{
  objc_storeStrong(&self->_attributedText, text);
  textCopy = text;
  [(SBModifierTimelineTextDetailViewController *)self loadViewIfNeeded];
  [(UITextView *)self->_textView setAttributedText:textCopy];

  view = [(SBModifierTimelineTextDetailViewController *)self view];
  [view setNeedsLayout];
}

- (void)prepareForReuse
{
  [(SBModifierTimelineTextDetailViewController *)self setText:0];

  [(SBModifierTimelineTextDetailViewController *)self setAttributedText:0];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBModifierTimelineTextDetailViewController;
  [(SBModifierTimelineTextDetailViewController *)&v5 viewWillLayoutSubviews];
  textView = self->_textView;
  view = [(SBModifierTimelineTextDetailViewController *)self view];
  [view bounds];
  [(UITextView *)textView setFrame:?];
}

@end