@interface TUIReportToAppleAdditionalDetailsTextViewTableCell
- (BOOL)resignFirstResponder;
- (BOOL)textContentViewShouldBeginEditing:(id)a3;
- (TUIReportToAppleAdditionalDetailsTextViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_updateInterfaceColorForTextView;
- (void)layoutSubviews;
- (void)setPlaceholderDisplayed:(BOOL)a3;
- (void)textContentViewDidChange:(id)a3;
@end

@implementation TUIReportToAppleAdditionalDetailsTextViewTableCell

- (TUIReportToAppleAdditionalDetailsTextViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v20.receiver = self;
  v20.super_class = TUIReportToAppleAdditionalDetailsTextViewTableCell;
  v9 = [(PSTextViewTableCell *)&v20 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v9->_scrollView;
    v9->_scrollView = v10;

    [(UIScrollView *)v9->_scrollView setAlwaysBounceVertical:1];
    [(TUIReportToAppleAdditionalDetailsTextViewTableCell *)v9 addSubview:v9->_scrollView];
    v12 = *MEMORY[0x277D3FCF8];
    [*(&v9->super.super.super.super.super.super.isa + v12) removeFromSuperview];
    [*(&v9->super.super.super.super.super.super.isa + v12) setHidden:1];
    v13 = objc_opt_new();
    v14 = *(&v9->super.super.super.super.super.super.isa + v12);
    *(&v9->super.super.super.super.super.super.isa + v12) = v13;

    [*(&v9->super.super.super.super.super.super.isa + v12) setCell:v9];
    [*(&v9->super.super.super.super.super.super.isa + v12) setDelegate:v9];
    v15 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v16 = [v15 systemFontOfSize:?];
    [*(&v9->super.super.super.super.super.super.isa + v12) setFont:v16];

    [(UIScrollView *)v9->_scrollView addSubview:*(&v9->super.super.super.super.super.super.isa + v12)];
    v17 = [v8 propertyForKey:*MEMORY[0x277D40170]];
    placeholderText = v9->_placeholderText;
    v9->_placeholderText = v17;

    [*(&v9->super.super.super.super.super.super.isa + v12) setText:v9->_placeholderText];
    [(TUIReportToAppleAdditionalDetailsTextViewTableCell *)v9 setPlaceholderDisplayed:1];
  }

  return v9;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = TUIReportToAppleAdditionalDetailsTextViewTableCell;
  [(PSTextViewTableCell *)&v6 layoutSubviews];
  v3 = *MEMORY[0x277D3FCF8];
  [*(&self->super.super.super.super.super.super.isa + v3) frame];
  [(UIScrollView *)self->_scrollView setFrame:?];
  [*(&self->super.super.super.super.super.super.isa + v3) frame];
  [(UIScrollView *)self->_scrollView setContentSize:v4, v5];
  [(TUIReportToAppleAdditionalDetailsTextViewTableCell *)self _updateInterfaceColorForTextView];
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = TUIReportToAppleAdditionalDetailsTextViewTableCell;
  [(PSTextViewTableCell *)&v4 resignFirstResponder];
  return [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCF8]) resignFirstResponder];
}

- (void)setPlaceholderDisplayed:(BOOL)a3
{
  self->_placeholderDisplayed = a3;
  if (a3)
  {
    [MEMORY[0x277D75348] placeholderTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v4 = ;
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCF8]) setTextColor:v4];
}

- (void)textContentViewDidChange:(id)a3
{
  v8 = a3;
  [v8 rectForScrollToVisible];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (!CGRectIsEmpty(v10))
  {
    [v8 convertRect:self->_scrollView toView:{x, y, width, height}];
    [(UIScrollView *)self->_scrollView scrollRectToVisible:1 animated:?];
  }
}

- (BOOL)textContentViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = v4;
  placeholderDisplayed = self->_placeholderDisplayed;
  if (placeholderDisplayed)
  {
    v7 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCF8]);
    placeholderText = &stru_287F92480;
LABEL_5:
    [v7 setText:placeholderText];
    [(TUIReportToAppleAdditionalDetailsTextViewTableCell *)self setPlaceholderDisplayed:!placeholderDisplayed];
    goto LABEL_6;
  }

  v9 = [v4 text];
  v10 = [v9 length];

  if (!v10)
  {
    placeholderText = self->_placeholderText;
    v7 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCF8]);
    goto LABEL_5;
  }

LABEL_6:

  return 1;
}

- (void)_updateInterfaceColorForTextView
{
  v3 = [(TUIReportToAppleAdditionalDetailsTextViewTableCell *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCF8]) setBackgroundColor:v5];

    [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FCF8]) setBackgroundColor:v6];

    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v7 = ;
  [(UIScrollView *)self->_scrollView setBackgroundColor:v7];
}

@end