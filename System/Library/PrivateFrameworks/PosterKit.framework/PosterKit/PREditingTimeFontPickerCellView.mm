@interface PREditingTimeFontPickerCellView
- (PREditingTimeFontPickerCellView)initWithFrame:(CGRect)a3;
- (void)configureWithFont:(id)a3 text:(id)a4;
@end

@implementation PREditingTimeFontPickerCellView

- (PREditingTimeFontPickerCellView)initWithFrame:(CGRect)a3
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PREditingTimeFontPickerCellView;
  v3 = [(PREditingPickerCellView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentLabel = v3->_contentLabel;
    v3->_contentLabel = v4;

    [(UILabel *)v3->_contentLabel setTextAlignment:1];
    [(UILabel *)v3->_contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingTimeFontPickerCellView *)v3 addSubview:v3->_contentLabel];
    v16 = MEMORY[0x1E696ACD8];
    v17 = [(UILabel *)v3->_contentLabel topAnchor];
    v6 = [(PREditingTimeFontPickerCellView *)v3 topAnchor];
    v7 = [v17 constraintEqualToAnchor:v6];
    v19[0] = v7;
    v8 = [(UILabel *)v3->_contentLabel centerXAnchor];
    v9 = [(PREditingTimeFontPickerCellView *)v3 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v19[1] = v10;
    v11 = [(UILabel *)v3->_contentLabel bottomAnchor];
    v12 = [(PREditingTimeFontPickerCellView *)v3 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v19[2] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    [v16 activateConstraints:v14];
  }

  return v3;
}

- (void)configureWithFont:(id)a3 text:(id)a4
{
  v9.receiver = self;
  v9.super_class = PREditingTimeFontPickerCellView;
  [(PREditingFontPickerCellView *)&v9 configureWithFont:a3 text:a4];
  v5 = [(PREditingTimeFontPickerCellView *)self contentLabel];
  v6 = [(PREditingFontPickerCellView *)self contentFont];
  [v5 setFont:v6];

  v7 = [(PREditingTimeFontPickerCellView *)self contentLabel];
  v8 = [(PREditingFontPickerCellView *)self contentText];
  [v7 setText:v8];
}

@end