@interface PKTextViewTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTextViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKTextViewTableViewCell

- (PKTextViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = PKTextViewTableViewCell;
  v4 = [(PKTextViewTableViewCell *)&v11 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textView = v4->_textView;
    v4->_textView = v5;

    v7 = v4->_textView;
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextView *)v7 setFont:v8];

    contentView = [(PKTextViewTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKTextViewTableViewCell;
  [(PKTextViewTableViewCell *)&v16 layoutSubviews];
  [(PKTextViewTableViewCell *)self layoutMargins];
  v4 = v3;
  contentView = [(PKTextViewTableViewCell *)self contentView];
  [contentView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  textView = self->_textView;
  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  v15 = CGRectGetWidth(v17) + v4 * -2.0;
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  [(UITextView *)textView setFrame:v4, 0.0, v15, CGRectGetHeight(v18)];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKTextViewTableViewCell;
  [(PKTextViewTableViewCell *)&v3 prepareForReuse];
  [(UITextView *)self->_textView resignFirstResponder];
  [(UITextView *)self->_textView setDelegate:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(UITextView *)self->_textView font:fits.width];
  [v4 lineHeight];
  v6 = v5 * 12.0;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end