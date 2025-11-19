@interface PKFDICTableViewFooterView
- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKFDICTableViewFooterView)initWithReuseIdentifier:(id)a3 feature:(unint64_t)a4 displayingBankName:(BOOL)a5 footerText:(id)a6;
- (void)layoutSubviews;
@end

@implementation PKFDICTableViewFooterView

- (PKFDICTableViewFooterView)initWithReuseIdentifier:(id)a3 feature:(unint64_t)a4 displayingBankName:(BOOL)a5 footerText:(id)a6
{
  v6 = a5;
  v10 = a6;
  v21.receiver = self;
  v21.super_class = PKFDICTableViewFooterView;
  v11 = [(PKFDICTableViewFooterView *)&v21 initWithReuseIdentifier:a3];
  if (v11)
  {
    v12 = [[PKFDICSignageView alloc] initWithFeature:a4 displayingBankName:v6];
    fdicView = v11->_fdicView;
    v11->_fdicView = v12;

    v14 = [(PKFDICTableViewFooterView *)v11 contentView];
    [v14 addSubview:v11->_fdicView];

    if ([v10 length])
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      footerLabel = v11->_footerLabel;
      v11->_footerLabel = v15;

      [(UILabel *)v11->_footerLabel setText:v10];
      [(UILabel *)v11->_footerLabel setNumberOfLines:0];
      v17 = [objc_opt_class() _defaultFontForTableViewStyle:1 isSectionHeader:0];
      [(UILabel *)v11->_footerLabel setFont:v17];
      v18 = [objc_opt_class() _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
      [(UILabel *)v11->_footerLabel setTextColor:v18];
      v19 = [(PKFDICTableViewFooterView *)v11 contentView];
      [v19 addSubview:v11->_footerLabel];
    }
  }

  return v11;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKFDICTableViewFooterView;
  [(PKFDICTableViewFooterView *)&v4 layoutSubviews];
  v3 = [(PKFDICTableViewFooterView *)self contentView];
  [v3 bounds];
  [(PKFDICTableViewFooterView *)self _layoutSubviewsInBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(PKFDICTableViewFooterView *)self contentView:a3.width];
  [v4 bounds];
  [(PKFDICTableViewFooterView *)self _layoutSubviewsInBounds:1 isTemplateLayout:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(PKFDICTableViewFooterView *)self contentView];
  [v10 layoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = x + v14;
  v20 = v14 + v18;
  v21 = width;
  v22 = v16;
  v23 = y + v12;
  v24 = v21 - v20;
  v25 = height - (v12 + v22);
  remainder.origin.x = v19;
  remainder.origin.y = v23;
  remainder.size.width = v21 - v20;
  remainder.size.height = v25;
  memset(&v36, 0, sizeof(v36));
  v26 = [(PKFDICTableViewFooterView *)self contentView];
  [v26 _shouldReverseLayoutDirection];

  footerLabel = self->_footerLabel;
  if (footerLabel)
  {
    [(UILabel *)footerLabel sizeThatFits:v24, 1.79769313e308];
    v29 = v28;
    v39.origin.x = v19;
    v39.origin.y = v23;
    v39.size.width = v24;
    v39.size.height = v25;
    CGRectDivide(v39, &v36, &remainder, v29, CGRectMinYEdge);
    v30 = v12 + v29;
    if (!a4)
    {
      [(UILabel *)self->_footerLabel setFrame:*&v36.origin, *&v36.size];
    }

    CGRectDivide(remainder, &v36, &remainder, 16.0, CGRectMinYEdge);
    v12 = v30 + 16.0;
    v24 = remainder.size.width;
  }

  [(PKFDICSignageView *)self->_fdicView sizeThatFits:v24, 1.79769313e308];
  v32 = v31;
  CGRectDivide(remainder, &v36, &remainder, v31, CGRectMinYEdge);
  if (!a4)
  {
    fdicView = self->_fdicView;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(PKFDICSignageView *)fdicView setFrame:?];
  }

  v34 = v22 + v12 + v32;
  v35 = v21;
  result.height = v34;
  result.width = v35;
  return result;
}

@end