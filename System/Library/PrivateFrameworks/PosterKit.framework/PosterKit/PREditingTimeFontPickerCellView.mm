@interface PREditingTimeFontPickerCellView
- (PREditingTimeFontPickerCellView)initWithFrame:(CGRect)frame;
- (void)configureWithFont:(id)font text:(id)text;
@end

@implementation PREditingTimeFontPickerCellView

- (PREditingTimeFontPickerCellView)initWithFrame:(CGRect)frame
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PREditingTimeFontPickerCellView;
  v3 = [(PREditingPickerCellView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentLabel = v3->_contentLabel;
    v3->_contentLabel = v4;

    [(UILabel *)v3->_contentLabel setTextAlignment:1];
    [(UILabel *)v3->_contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingTimeFontPickerCellView *)v3 addSubview:v3->_contentLabel];
    v16 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v3->_contentLabel topAnchor];
    topAnchor2 = [(PREditingTimeFontPickerCellView *)v3 topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v19[0] = v7;
    centerXAnchor = [(UILabel *)v3->_contentLabel centerXAnchor];
    centerXAnchor2 = [(PREditingTimeFontPickerCellView *)v3 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v19[1] = v10;
    bottomAnchor = [(UILabel *)v3->_contentLabel bottomAnchor];
    bottomAnchor2 = [(PREditingTimeFontPickerCellView *)v3 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19[2] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    [v16 activateConstraints:v14];
  }

  return v3;
}

- (void)configureWithFont:(id)font text:(id)text
{
  v9.receiver = self;
  v9.super_class = PREditingTimeFontPickerCellView;
  [(PREditingFontPickerCellView *)&v9 configureWithFont:font text:text];
  contentLabel = [(PREditingTimeFontPickerCellView *)self contentLabel];
  contentFont = [(PREditingFontPickerCellView *)self contentFont];
  [contentLabel setFont:contentFont];

  contentLabel2 = [(PREditingTimeFontPickerCellView *)self contentLabel];
  contentText = [(PREditingFontPickerCellView *)self contentText];
  [contentLabel2 setText:contentText];
}

@end