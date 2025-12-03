@interface PUIStylePickerLabeledButton
- (CGSize)intrinsicContentSize;
- (PUIStylePickerLabeledButton)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation PUIStylePickerLabeledButton

- (PUIStylePickerLabeledButton)initWithFrame:(CGRect)frame
{
  v52[10] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = PUIStylePickerLabeledButton;
  v3 = [(PUIStylePickerLabeledButton *)&v51 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PUIStylePickerLabeledButton *)v3 layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    layer2 = [(PUIStylePickerLabeledButton *)v4 layer];
    [layer2 setCornerRadius:14.0];

    layer3 = [(PUIStylePickerLabeledButton *)v4 layer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer3 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentLabel = v4->_contentLabel;
    v4->_contentLabel = v9;

    [(UILabel *)v4->_contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerLabeledButton *)v4 addSubview:v4->_contentLabel];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v11;

    [(UILabel *)v4->_nameLabel setNumberOfLines:2];
    v13 = v4->_nameLabel;
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v4->_nameLabel setTextAlignment:1];
    v15 = v4->_nameLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

    [(UILabel *)v4->_nameLabel setUserInteractionEnabled:0];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerLabeledButton *)v4 addSubview:v4->_nameLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(PUIStylePickerLabeledButton *)v4 addLayoutGuide:v17];
    v38 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v17 leadingAnchor];
    leadingAnchor2 = [(PUIStylePickerLabeledButton *)v4 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[0] = v48;
    trailingAnchor = [v17 trailingAnchor];
    trailingAnchor2 = [(PUIStylePickerLabeledButton *)v4 trailingAnchor];
    v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[1] = v45;
    centerYAnchor = [v17 centerYAnchor];
    centerYAnchor2 = [(PUIStylePickerLabeledButton *)v4 centerYAnchor];
    v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v52[2] = v42;
    topAnchor = [(UILabel *)v4->_contentLabel topAnchor];
    topAnchor2 = [v17 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[3] = v39;
    centerXAnchor = [(UILabel *)v4->_contentLabel centerXAnchor];
    centerXAnchor2 = [v17 centerXAnchor];
    v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v52[4] = v35;
    topAnchor3 = [(UILabel *)v4->_nameLabel topAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_contentLabel lastBaselineAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:4.0];
    v52[5] = v32;
    centerXAnchor3 = [(UILabel *)v4->_nameLabel centerXAnchor];
    centerXAnchor4 = [v17 centerXAnchor];
    v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v52[6] = v29;
    leadingAnchor3 = [(UILabel *)v4->_nameLabel leadingAnchor];
    leadingAnchor4 = [v17 leadingAnchor];
    v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:2.0];
    v52[7] = v18;
    trailingAnchor3 = [(UILabel *)v4->_nameLabel trailingAnchor];
    trailingAnchor4 = [v17 trailingAnchor];
    v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-2.0];
    v52[8] = v21;
    bottomAnchor = [(UILabel *)v4->_nameLabel bottomAnchor];
    bottomAnchor2 = [v17 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[9] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:10];
    [v38 activateConstraints:v25];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_contentLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_nameLabel intrinsicContentSize];
  v9 = v8 + 8.0 + 8.0;
  if (v4 >= v9)
  {
    v9 = v4;
  }

  v10 = v6 + 2.0 + v7 + 2.0;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = PUIStylePickerLabeledButton;
  [(PUIStylePickerLabeledButton *)&v8 setSelected:?];
  layer = [(PUIStylePickerLabeledButton *)self layer];
  v6 = layer;
  v7 = 0.0;
  if (selectedCopy)
  {
    v7 = 2.0;
  }

  [layer setBorderWidth:v7];
}

@end