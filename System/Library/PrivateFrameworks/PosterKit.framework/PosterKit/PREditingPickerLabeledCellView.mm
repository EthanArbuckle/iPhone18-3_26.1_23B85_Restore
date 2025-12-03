@interface PREditingPickerLabeledCellView
- (CGSize)intrinsicContentSize;
- (PREditingPickerLabeledCellView)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation PREditingPickerLabeledCellView

- (PREditingPickerLabeledCellView)initWithFrame:(CGRect)frame
{
  v58[12] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = PREditingPickerLabeledCellView;
  v3 = [(PREditingPickerLabeledCellView *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PREditingPickerLabeledCellView *)v3 layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    layer2 = [(PREditingPickerLabeledCellView *)v4 layer];
    [layer2 setCornerRadius:14.0];

    layer3 = [(PREditingPickerLabeledCellView *)v4 layer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer3 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentLabel = v4->_contentLabel;
    v4->_contentLabel = v9;

    [(UILabel *)v4->_contentLabel setTextAlignment:1];
    [(UILabel *)v4->_contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingPickerLabeledCellView *)v4 addSubview:v4->_contentLabel];
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
    [(PREditingPickerLabeledCellView *)v4 addSubview:v4->_nameLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(PREditingPickerLabeledCellView *)v4 addLayoutGuide:v17];
    v41 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v17 leadingAnchor];
    leadingAnchor2 = [(PREditingPickerLabeledCellView *)v4 leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[0] = v54;
    trailingAnchor = [v17 trailingAnchor];
    trailingAnchor2 = [(PREditingPickerLabeledCellView *)v4 trailingAnchor];
    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v58[1] = v51;
    centerYAnchor = [v17 centerYAnchor];
    centerYAnchor2 = [(PREditingPickerLabeledCellView *)v4 centerYAnchor];
    v48 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v58[2] = v48;
    topAnchor = [(UILabel *)v4->_contentLabel topAnchor];
    topAnchor2 = [v17 topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v58[3] = v45;
    centerXAnchor = [(UILabel *)v4->_contentLabel centerXAnchor];
    centerXAnchor2 = [v17 centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[4] = v42;
    leadingAnchor3 = [(UILabel *)v4->_contentLabel leadingAnchor];
    leadingAnchor4 = [v17 leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v58[5] = v38;
    trailingAnchor3 = [(UILabel *)v4->_contentLabel trailingAnchor];
    trailingAnchor4 = [v17 trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v58[6] = v35;
    topAnchor3 = [(UILabel *)v4->_nameLabel topAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_contentLabel lastBaselineAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:4.0];
    v58[7] = v32;
    centerXAnchor3 = [(UILabel *)v4->_nameLabel centerXAnchor];
    centerXAnchor4 = [v17 centerXAnchor];
    v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v58[8] = v29;
    leadingAnchor5 = [(UILabel *)v4->_nameLabel leadingAnchor];
    leadingAnchor6 = [v17 leadingAnchor];
    v18 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:2.0];
    v58[9] = v18;
    trailingAnchor5 = [(UILabel *)v4->_nameLabel trailingAnchor];
    trailingAnchor6 = [v17 trailingAnchor];
    v21 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-2.0];
    v58[10] = v21;
    bottomAnchor = [(UILabel *)v4->_nameLabel bottomAnchor];
    bottomAnchor2 = [v17 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v58[11] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:12];
    [v41 activateConstraints:v25];
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
  v8.super_class = PREditingPickerLabeledCellView;
  [(PREditingPickerLabeledCellView *)&v8 setSelected:?];
  layer = [(PREditingPickerLabeledCellView *)self layer];
  v6 = layer;
  v7 = 0.0;
  if (selectedCopy)
  {
    v7 = 2.0;
  }

  [layer setBorderWidth:v7];
}

@end