@interface PREditingPickerLabeledCellView
- (CGSize)intrinsicContentSize;
- (PREditingPickerLabeledCellView)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PREditingPickerLabeledCellView

- (PREditingPickerLabeledCellView)initWithFrame:(CGRect)a3
{
  v58[12] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = PREditingPickerLabeledCellView;
  v3 = [(PREditingPickerLabeledCellView *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PREditingPickerLabeledCellView *)v3 layer];
    [v5 setCornerCurve:*MEMORY[0x1E69796E8]];

    v6 = [(PREditingPickerLabeledCellView *)v4 layer];
    [v6 setCornerRadius:14.0];

    v7 = [(PREditingPickerLabeledCellView *)v4 layer];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];

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
    v16 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)v4->_nameLabel setUserInteractionEnabled:0];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingPickerLabeledCellView *)v4 addSubview:v4->_nameLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(PREditingPickerLabeledCellView *)v4 addLayoutGuide:v17];
    v41 = MEMORY[0x1E696ACD8];
    v56 = [v17 leadingAnchor];
    v55 = [(PREditingPickerLabeledCellView *)v4 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v58[0] = v54;
    v53 = [v17 trailingAnchor];
    v52 = [(PREditingPickerLabeledCellView *)v4 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v58[1] = v51;
    v50 = [v17 centerYAnchor];
    v49 = [(PREditingPickerLabeledCellView *)v4 centerYAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v58[2] = v48;
    v47 = [(UILabel *)v4->_contentLabel topAnchor];
    v46 = [v17 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v58[3] = v45;
    v44 = [(UILabel *)v4->_contentLabel centerXAnchor];
    v43 = [v17 centerXAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v58[4] = v42;
    v40 = [(UILabel *)v4->_contentLabel leadingAnchor];
    v39 = [v17 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v58[5] = v38;
    v37 = [(UILabel *)v4->_contentLabel trailingAnchor];
    v36 = [v17 trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v58[6] = v35;
    v34 = [(UILabel *)v4->_nameLabel topAnchor];
    v33 = [(UILabel *)v4->_contentLabel lastBaselineAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:4.0];
    v58[7] = v32;
    v31 = [(UILabel *)v4->_nameLabel centerXAnchor];
    v30 = [v17 centerXAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v58[8] = v29;
    v28 = [(UILabel *)v4->_nameLabel leadingAnchor];
    v27 = [v17 leadingAnchor];
    v18 = [v28 constraintEqualToAnchor:v27 constant:2.0];
    v58[9] = v18;
    v19 = [(UILabel *)v4->_nameLabel trailingAnchor];
    v20 = [v17 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-2.0];
    v58[10] = v21;
    v22 = [(UILabel *)v4->_nameLabel bottomAnchor];
    v23 = [v17 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PREditingPickerLabeledCellView;
  [(PREditingPickerLabeledCellView *)&v8 setSelected:?];
  v5 = [(PREditingPickerLabeledCellView *)self layer];
  v6 = v5;
  v7 = 0.0;
  if (v3)
  {
    v7 = 2.0;
  }

  [v5 setBorderWidth:v7];
}

@end