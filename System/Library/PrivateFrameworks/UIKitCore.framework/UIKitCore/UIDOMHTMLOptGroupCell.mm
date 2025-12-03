@interface UIDOMHTMLOptGroupCell
- (UIDOMHTMLOptGroupCell)initWithHTMLOptGroupNode:(id)node;
- (double)labelWidthForBounds:(CGRect)bounds;
- (void)layoutSubviews;
@end

@implementation UIDOMHTMLOptGroupCell

- (UIDOMHTMLOptGroupCell)initWithHTMLOptGroupNode:(id)node
{
  initCommon = [(UIDOMHTMLOptionPickerCell *)self initCommon];
  if (initCommon)
  {
    -[UILabel setText:](-[UIPickerContentView titleLabel](initCommon, "titleLabel"), "setText:", [node itemTitle]);
    [(UIPickerContentView *)initCommon setChecked:0];
    [(UILabel *)[(UIPickerContentView *)initCommon titleLabel] setTextColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
    [(UIDOMHTMLOptionPickerCell *)initCommon setDisabled:1];
  }

  return initCommon;
}

- (double)labelWidthForBounds:(CGRect)bounds
{
  Width = CGRectGetWidth(bounds);
  +[UIPickerContentView _checkmarkOffset];
  return Width - v4;
}

- (void)layoutSubviews
{
  if ([(UIPickerContentView *)self titleLabel])
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    +[UIPickerContentView _checkmarkOffset];
    v12 = v11;
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    MaxX = CGRectGetMaxX(v19);
    +[UIPickerContentView _checkmarkOffset];
    v15 = MaxX - v14;
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    Height = CGRectGetHeight(v20);
    titleLabel = [(UIPickerContentView *)self titleLabel];

    [(UILabel *)titleLabel setFrame:v12, 0.0, v15, Height];
  }
}

@end