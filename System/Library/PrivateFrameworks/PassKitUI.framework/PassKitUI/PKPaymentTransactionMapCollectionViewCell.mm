@interface PKPaymentTransactionMapCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentTransactionMapCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_updateSpinnerAndDisclosureIndicator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)setShowDisclosureIndicator:(BOOL)a3;
- (void)setShowSpinner:(BOOL)a3;
@end

@implementation PKPaymentTransactionMapCollectionViewCell

- (PKPaymentTransactionMapCollectionViewCell)initWithFrame:(CGRect)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKPaymentTransactionMapCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKTransactionMapView);
    mapView = v3->_mapView;
    v3->_mapView = v4;

    [(PKTransactionMapView *)v3->_mapView setShowsMerchantName:1];
    v6 = [(PKPaymentTransactionMapCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_mapView];

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    v9 = [(PKPaymentTransactionMapCollectionViewCell *)v3 contentView];
    [v9 addSubview:v3->_titleLabel];

    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v11 = ;
    v12 = [v10 initWithImage:v11];

    v13 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v12 setTintColor:v13];

    disclosureView = v3->_disclosureView;
    v3->_disclosureView = v12;
    v15 = v12;

    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v16;

    [(UIActivityIndicatorView *)v3->_spinner sizeToFit];
    [(PKPaymentTransactionMapCollectionViewCell *)v3 resetFonts];
    v22[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    v19 = [(PKPaymentTransactionMapCollectionViewCell *)v3 registerForTraitChanges:v18 withHandler:&__block_literal_global_46];
    [(PKPaymentTransactionMapCollectionViewCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9D38]];
  }

  return v3;
}

- (void)resetFonts
{
  titleLabel = self->_titleLabel;
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
  [(UILabel *)titleLabel setFont:v3];
}

- (void)setShowDisclosureIndicator:(BOOL)a3
{
  if (self->_showDisclosureIndicator != a3)
  {
    self->_showDisclosureIndicator = a3;
    [(PKPaymentTransactionMapCollectionViewCell *)self _updateSpinnerAndDisclosureIndicator];
  }
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    spinner = self->_spinner;
    if (a3)
    {
      [(UIActivityIndicatorView *)spinner startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)spinner stopAnimating];
    }

    [(PKPaymentTransactionMapCollectionViewCell *)self _updateSpinnerAndDisclosureIndicator];
  }
}

- (void)_updateSpinnerAndDisclosureIndicator
{
  if (self->_showSpinner)
  {
    v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__disclosureView;
    v4 = [(UIActivityIndicatorView *)self->_spinner superview];

    if (!v4)
    {
      v5 = [(PKPaymentTransactionMapCollectionViewCell *)self contentView];
      [v5 addSubview:self->_spinner];
    }
  }

  else
  {
    v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__disclosureView;
    if (self->_showDisclosureIndicator)
    {
      v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__spinner;
      v6 = [(UIImageView *)self->_disclosureView superview];

      if (!v6)
      {
        v7 = [(PKPaymentTransactionMapCollectionViewCell *)self contentView];
        [v7 addSubview:self->_disclosureView];

        v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__spinner;
      }
    }

    else
    {
      [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    }
  }

  [*(&self->super.super.super.super.super.super.isa + *v3) removeFromSuperview];

  [(PKPaymentTransactionMapCollectionViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionMapCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v4 prepareForReuse];
  item = self->_item;
  self->_item = 0;

  [(UILabel *)self->_titleLabel setText:0];
  [(PKPaymentTransactionMapCollectionViewCell *)self setShowSpinner:0];
  [(PKPaymentTransactionMapCollectionViewCell *)self setShowDisclosureIndicator:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(UILabel *)self->_titleLabel text:a3.width];

  if (v5)
  {
    v6 = [(UILabel *)self->_titleLabel font];
    [v6 lineHeight];
    PKFloatRoundToPixel();
    v8 = v7 + 200.0;
  }

  else
  {
    v8 = 200.0;
  }

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKPaymentTransactionMapCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v23 layoutSubviews];
  v3 = [(PKPaymentTransactionMapCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  remainder.origin.x = v4;
  remainder.origin.y = v6;
  remainder.size.width = v8;
  remainder.size.height = v10;

  memset(&v21, 0, sizeof(v21));
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  CGRectDivide(v24, &v21, &remainder, 200.0, CGRectMinYEdge);
  [(PKTransactionMapView *)self->_mapView setFrame:*&v21.origin, *&v21.size];
  CGRectDivide(remainder, &v21, &remainder, 14.0, CGRectMinYEdge);
  CGRectDivide(remainder, &v21, &remainder, 14.0, CGRectMinXEdge);
  CGRectDivide(remainder, &v21, &remainder, 14.0, CGRectMaxXEdge);
  CGRectDivide(remainder, &v21, &remainder, 14.0, CGRectMaxYEdge);
  v12 = [(UIActivityIndicatorView *)self->_spinner superview];

  if (v12)
  {
    [(UIActivityIndicatorView *)self->_spinner frame];
    PKSizeAspectFit();
    v14 = v13;
    spinner = self->_spinner;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIActivityIndicatorView *)spinner setFrame:?];
    v16 = v14 + 14.0;
LABEL_5:
    CGRectDivide(remainder, &v21, &remainder, v16, CGRectMaxXEdge);
    goto LABEL_6;
  }

  v17 = [(UIImageView *)self->_disclosureView superview];

  if (v17)
  {
    [(UIImageView *)self->_disclosureView frame];
    CGRectDivide(remainder, &v21, &remainder, v18, CGRectMaxXEdge);
    disclosureView = self->_disclosureView;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIImageView *)disclosureView setFrame:?];
    v16 = 14.0;
    goto LABEL_5;
  }

LABEL_6:
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  titleLabel = self->_titleLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)titleLabel setFrame:?];
}

@end