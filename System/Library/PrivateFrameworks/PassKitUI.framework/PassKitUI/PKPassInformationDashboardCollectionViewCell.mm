@interface PKPassInformationDashboardCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassInformationDashboardCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_createDisclosureViewIfNecessary;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshFonts;
- (void)setSecondaryText:(id)text;
- (void)setShowsDisclosureView:(BOOL)view;
- (void)setTertiaryText:(id)text;
- (void)setTitle:(id)title;
@end

@implementation PKPassInformationDashboardCollectionViewCell

- (PKPassInformationDashboardCollectionViewCell)initWithFrame:(CGRect)frame
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKPassInformationDashboardCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    v6 = v3->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v6 setTextColor:labelColor];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v8;

    v10 = v3->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v10 setTextColor:secondaryLabelColor];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = v3->_tertiaryLabel;
    v3->_tertiaryLabel = v12;

    v14 = v3->_tertiaryLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:secondaryLabelColor2];

    contentView = [(PKPassInformationDashboardCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];
    [contentView addSubview:v3->_secondaryLabel];
    [contentView addSubview:v3->_tertiaryLabel];
    [(PKPassInformationDashboardCollectionViewCell *)v3 refreshFonts];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v18 = [(PKPassInformationDashboardCollectionViewCell *)v3 registerForTraitChanges:v17 withHandler:&__block_literal_global_9];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPassInformationDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(PKPassInformationDashboardCollectionViewCell *)self setTitle:0];
  [(PKPassInformationDashboardCollectionViewCell *)self setSecondaryText:0];
  [(PKPassInformationDashboardCollectionViewCell *)self setTertiaryText:0];
  [(PKPassInformationDashboardCollectionViewCell *)self setShowsDisclosureView:0];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = PKPassInformationDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v37 layoutSubviews];
  if ([(PKPassInformationDashboardCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v3 = CGRectMinXEdge;
  }

  else
  {
    v3 = CGRectMaxXEdge;
  }

  [(PKPassInformationDashboardCollectionViewCell *)self bounds];
  memset(&v35, 0, sizeof(v35));
  v5 = v4 + 16.0;
  v7 = v6 + 16.0;
  v9 = v8 + -32.0;
  v11 = v10 + -28.0;
  remainder.origin.x = v4 + 16.0;
  remainder.origin.y = v6 + 16.0;
  remainder.size.width = v8 + -32.0;
  remainder.size.height = v10 + -28.0;
  v12 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v12;
  [(UIImageView *)self->_disclosureView sizeThatFits:v8 + -32.0, v10 + -28.0];
  v14 = v13;
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  CGRectDivide(v38, &slice, &remainder, v14, v3);
  CGRectDivide(remainder, &v35, &remainder, 8.0, v3);
  v33 = remainder;
  size = remainder.size;
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v17 = v16;
  [(UILabel *)self->_secondaryLabel sizeThatFits:size];
  v19 = v18;
  [(UILabel *)self->_tertiaryLabel sizeThatFits:size];
  v21 = v20;
  v22 = fmax(v17, 0.0);
  v23 = -0.0;
  if (v19 > 0.0)
  {
    v23 = v19;
  }

  v24 = v22 + v23;
  if (v21 <= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + v21;
  }

  v33.size.height = v25;
  if (self->_showsDisclosureView)
  {
    memset(&v32, 0, sizeof(v32));
    CGRectDivide(slice, &slice, &v32, v17, CGRectMinYEdge);
    disclosureView = self->_disclosureView;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIImageView *)disclosureView setFrame:?];
  }

  memset(&v32, 0, sizeof(v32));
  v39.origin.x = v33.origin.x;
  v39.origin.y = v33.origin.y;
  v39.size.width = size.width;
  v39.size.height = v25;
  CGRectDivide(v39, &v32, &v33, v17, CGRectMinYEdge);
  titleLabel = self->_titleLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)titleLabel setFrame:?];
  memset(&v31, 0, sizeof(v31));
  CGRectDivide(v33, &v31, &v33, v19, CGRectMinYEdge);
  secondaryLabel = self->_secondaryLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)secondaryLabel setFrame:?];
  memset(&v30, 0, sizeof(v30));
  CGRectDivide(v33, &v30, &v33, v21, CGRectMinYEdge);
  tertiaryLabel = self->_tertiaryLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)tertiaryLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(UILabel *)self->_titleLabel font:fits.width];
  [v5 lineHeight];
  font = [(UILabel *)self->_secondaryLabel font];
  [font lineHeight];
  font2 = [(UILabel *)self->_tertiaryLabel font];
  [font2 lineHeight];

  PKFloatRoundToPixel();
  v9 = v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setTitle:(id)title
{
  titleLabel = self->_titleLabel;
  v5 = [title copy];
  [(UILabel *)titleLabel setText:v5];

  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

- (void)setSecondaryText:(id)text
{
  secondaryLabel = self->_secondaryLabel;
  v5 = [text copy];
  [(UILabel *)secondaryLabel setText:v5];

  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

- (void)setTertiaryText:(id)text
{
  tertiaryLabel = self->_tertiaryLabel;
  v5 = [text copy];
  [(UILabel *)tertiaryLabel setText:v5];

  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

- (void)setShowsDisclosureView:(BOOL)view
{
  if (self->_showsDisclosureView == !view)
  {
    self->_showsDisclosureView = view;
    if (view)
    {
      [(PKPassInformationDashboardCollectionViewCell *)self _createDisclosureViewIfNecessary];
      superview = [(UIImageView *)self->_disclosureView superview];

      if (!superview)
      {
        contentView = [(PKPassInformationDashboardCollectionViewCell *)self contentView];
        [contentView addSubview:self->_disclosureView];
      }
    }

    else
    {
      [(UIImageView *)self->_disclosureView removeFromSuperview];
    }

    [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_createDisclosureViewIfNecessary
{
  if (!self->_disclosureView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = PKUISmallChevronImage();
    v5 = [v3 initWithImage:v4];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v5 setTintColor:tertiaryLabelColor];

    [(UIImageView *)v5 setContentMode:1];
    disclosureView = self->_disclosureView;
    self->_disclosureView = v5;
  }
}

- (void)refreshFonts
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_secondaryLabel setNumberOfLines:v5];
  [(UILabel *)self->_tertiaryLabel setNumberOfLines:v5];
  v6 = PKUIGetMinScreenWidthType();
  titleLabel = self->_titleLabel;
  v8 = v6 == 0;
  if (v6)
  {
    v9 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v9 = *MEMORY[0x1E69DDD80];
  }

  v10 = *MEMORY[0x1E69DDC90];
  if (v8)
  {
    v11 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v11 = *MEMORY[0x1E69DDD80];
  }

  v12 = PKFontForDefaultDesign(v9, *MEMORY[0x1E69DDC90], 32770, 0);
  [(UILabel *)titleLabel setFont:v12];

  v13 = PKFontForDefaultDesign(v11, v10, 0x8000, 0);
  [(UILabel *)self->_secondaryLabel setFont:v13];
  [(UILabel *)self->_tertiaryLabel setFont:v13];
  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

@end