@interface UIPickerTableViewTitledCell
- (UIPickerTableViewTitledCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier textColor:(id)color forceTextAlignmentCentered:(BOOL)centered;
- (void)_setIsCenterCell:(BOOL)cell shouldModifyAlphaOfView:(BOOL)view;
- (void)prepareForReuse;
@end

@implementation UIPickerTableViewTitledCell

- (UIPickerTableViewTitledCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier textColor:(id)color forceTextAlignmentCentered:(BOOL)centered
{
  colorCopy = color;
  v31.receiver = self;
  v31.super_class = UIPickerTableViewTitledCell;
  v11 = [(UIPickerTableViewCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  if (v11)
  {
    v12 = [UILabel alloc];
    [(UIView *)v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    style = [(UIPickerTableViewCell *)v11 style];
    [style labelSideOffset];
    v23 = v22;
    style2 = [(UIPickerTableViewCell *)v11 style];
    [style2 labelSideOffset];
    v26 = [(UILabel *)v12 initWithFrame:v14 + v25, v16 + 0.0, v18 - (v23 + v25), v20];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v26;

    [(UILabel *)v11->_titleLabel setTextAlignment:1];
    [(UIView *)v11->_titleLabel setAutoresizingMask:18];
    v28 = [off_1E70ECC18 boldSystemFontOfSize:20.0];
    [(UILabel *)v11->_titleLabel setFont:v28];

    v29 = +[UIColor clearColor];
    [(UIView *)v11->_titleLabel setBackgroundColor:v29];

    [(UIView *)v11 addSubview:v11->_titleLabel];
    [(UITableViewCell *)v11 setSelectionStyle:0];
    objc_storeStrong(&v11->_textColor, color);
    [(UILabel *)v11->_titleLabel setTextColor:v11->_textColor];
  }

  return v11;
}

- (void)_setIsCenterCell:(BOOL)cell shouldModifyAlphaOfView:(BOOL)view
{
  cellCopy = cell;
  if (view)
  {
    titleLabel = self->_titleLabel;
    v7 = 0.447;
    if (cell)
    {
      v7 = 1.0;
    }

    [(UIView *)titleLabel setAlpha:v7];
  }

  v8 = self->_titleLabel;
  style = [(UIPickerTableViewCell *)self style];
  traitCollection = [(UIView *)self traitCollection];
  if (cellCopy)
  {
    [style centerCellFontWithTraitCollection:traitCollection];
  }

  else
  {
    [style nonCenterCellFontWithTraitCollection:traitCollection];
  }
  v10 = ;
  [(UILabel *)v8 setFont:v10];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPickerTableViewTitledCell;
  [(UITableViewCell *)&v3 prepareForReuse];
  if (!self->_isAttributed)
  {
    [(UILabel *)self->_titleLabel setTextColor:self->_textColor];
  }
}

@end