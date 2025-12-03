@interface PKLabelViewController
- (PKLabelViewController)initWithAttributedText:(id)text;
- (UIEdgeInsets)contentInsets;
- (void)loadView;
- (void)setAttributedText:(id)text;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)viewWillLayoutSubviews;
@end

@implementation PKLabelViewController

- (PKLabelViewController)initWithAttributedText:(id)text
{
  textCopy = text;
  v10.receiver = self;
  v10.super_class = PKLabelViewController;
  v5 = [(PKLabelViewController *)&v10 init];
  if (v5)
  {
    v6 = [textCopy copy];
    attributedText = v5->_attributedText;
    v5->_attributedText = v6;

    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v5->_contentInsets.top = *MEMORY[0x1E69DDCE0];
    *&v5->_contentInsets.bottom = v8;
  }

  return v5;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = PKLabelViewController;
  [(PKLabelViewController *)&v8 loadView];
  v3 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  textView = self->_textView;
  self->_textView = v3;

  [(UITextView *)self->_textView setAttributedText:self->_attributedText];
  [(UITextView *)self->_textView setTextAlignment:1];
  v5 = self->_textView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)v5 setBackgroundColor:clearColor];

  [(UITextView *)self->_textView setEditable:0];
  view = [(PKLabelViewController *)self view];
  [view addSubview:self->_textView];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKLabelViewController;
  [(PKLabelViewController *)&v9 viewWillLayoutSubviews];
  textView = self->_textView;
  view = [(PKLabelViewController *)self view];
  [view bounds];
  [(UITextView *)textView setFrame:v5 + self->_contentInsets.left, v6 + self->_contentInsets.top, v7 - (self->_contentInsets.left + self->_contentInsets.right), v8 - (self->_contentInsets.top + self->_contentInsets.bottom)];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToAttributedString:self->_attributedText] & 1) == 0)
  {
    v4 = [textCopy copy];
    attributedText = self->_attributedText;
    self->_attributedText = v4;

    viewIfLoaded = [(PKLabelViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    viewIfLoaded = [(PKLabelViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
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