@interface SUTextViewCell
- (BOOL)textContentViewShouldBeginEditing:(id)a3;
- (BOOL)textContentViewShouldEndEditing:(id)a3;
- (SUTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)textContentViewDidChange:(id)a3;
@end

@implementation SUTextViewCell

- (SUTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUTextViewCell;
  v4 = [(SUTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    v4->_scrollView = v5;
    [(UIScrollView *)v5 setAlwaysBounceVertical:1];
    [(SUTextViewCell *)v4 addSubview:v4->_scrollView];
    v6 = objc_alloc_init(SUTextContentView);
    v4->_textContentView = v6;
    [(SUTextContentView *)v6 setBackgroundColor:[(SUTextViewCell *)v4 backgroundColor]];
    -[UITextContentView setFont:](v4->_textContentView, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:17.0]);
    [(UITextContentView *)v4->_textContentView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView addSubview:v4->_textContentView];
  }

  return v4;
}

- (void)dealloc
{
  self->_scrollView = 0;
  [(UITextContentView *)self->_textContentView setDelegate:0];

  self->_textContentView = 0;
  v3.receiver = self;
  v3.super_class = SUTextViewCell;
  [(SUTableCell *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUTextViewCell;
  [(SUTableCell *)&v9 layoutSubviews];
  scrollView = self->_scrollView;
  [-[SUTextViewCell contentView](self "contentView")];
  v11 = CGRectInset(v10, 10.0, 6.0);
  [(UIScrollView *)scrollView setFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
  [(UIScrollView *)self->_scrollView bounds];
  v5 = v4;
  v7 = v6;
  [(SUTextContentView *)self->_textContentView frame];
  if (v8 >= v7)
  {
    v7 = v8;
  }

  [(UITextContentView *)self->_textContentView setFrame:?];
  [(UIScrollView *)self->_scrollView setContentSize:v5, v7];
}

- (void)setBackgroundColor:(id)a3
{
  [(SUTextContentView *)self->_textContentView setBackgroundColor:?];
  v5.receiver = self;
  v5.super_class = SUTextViewCell;
  [(SUTextViewCell *)&v5 setBackgroundColor:a3];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = SUTextViewCell;
  [(SUTextViewCell *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SUTextViewCell;
  [(SUTableCell *)&v4 setHighlighted:0 animated:0];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SUTextViewCell;
  [(SUTableCell *)&v4 setSelected:0 animated:0];
}

- (void)textContentViewDidChange:(id)a3
{
  [a3 rectForScrollToVisible];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (!CGRectIsEmpty(v11))
  {
    [a3 convertRect:self->_scrollView toView:{x, y, width, height}];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView scrollRectToVisible:1 animated:?];
  }
}

- (BOOL)textContentViewShouldBeginEditing:(id)a3
{
  delegate = self->_delegate;
  if (delegate)
  {
    return [(SUTextViewCellDelegate *)delegate textViewCellShouldBeginEditing:self];
  }

  else
  {
    return 1;
  }
}

- (BOOL)textContentViewShouldEndEditing:(id)a3
{
  delegate = self->_delegate;
  if (delegate)
  {
    return [(SUTextViewCellDelegate *)delegate textViewCellShouldEndEditing:self];
  }

  else
  {
    return 1;
  }
}

@end