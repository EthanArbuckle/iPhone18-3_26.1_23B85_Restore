@interface SBModifierTimelineTextDetailViewController
- (void)_copyText;
- (void)prepareForReuse;
- (void)setAttributedText:(id)a3;
- (void)setText:(id)a3;
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
  v8 = [(SBModifierTimelineTextDetailViewController *)self view];
  [v8 addSubview:self->_textView];

  v9 = [(SBModifierTimelineTextDetailViewController *)self navigationItem];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Copy text" style:0 target:self action:sel__copyText];
  [v9 setRightBarButtonItem:v10];
}

- (void)_copyText
{
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  [v3 setString:self->_text];
}

- (void)setText:(id)a3
{
  objc_storeStrong(&self->_text, a3);
  v5 = a3;
  [(SBModifierTimelineTextDetailViewController *)self loadViewIfNeeded];
  [(UITextView *)self->_textView setText:v5];

  v6 = [(SBModifierTimelineTextDetailViewController *)self view];
  [v6 setNeedsLayout];
}

- (void)setAttributedText:(id)a3
{
  objc_storeStrong(&self->_attributedText, a3);
  v5 = a3;
  [(SBModifierTimelineTextDetailViewController *)self loadViewIfNeeded];
  [(UITextView *)self->_textView setAttributedText:v5];

  v6 = [(SBModifierTimelineTextDetailViewController *)self view];
  [v6 setNeedsLayout];
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
  v4 = [(SBModifierTimelineTextDetailViewController *)self view];
  [v4 bounds];
  [(UITextView *)textView setFrame:?];
}

@end