@interface PKPaymentTransactionLocationTableViewCell
- (BOOL)_shouldShowDisclosureIndicator;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentTransactionLocationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_disclosureView;
- (void)layoutSubviews;
- (void)setTransaction:(id)a3;
@end

@implementation PKPaymentTransactionLocationTableViewCell

- (PKPaymentTransactionLocationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionLocationTableViewCell;
  v4 = [(PKPaymentTransactionLocationTableViewCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PKPaymentTransactionLocationTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    v9 = objc_alloc_init(PKTransactionMapView);
    mapView = v5->_mapView;
    v5->_mapView = v9;

    [(PKTransactionMapView *)v5->_mapView setShowsMerchantName:1];
    v11 = v5->_titleLabel;
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v11 setFont:v12];

    v13 = v5->_titleLabel;
    v14 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v5->_titleLabel setNumberOfLines:1];
    [(UILabel *)v5->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v6 addSubview:v5->_titleLabel];
    [v6 addSubview:v5->_mapView];
    v15 = [(PKPaymentTransactionLocationTableViewCell *)v5 _disclosureView];
    [v6 addSubview:v15];

    [(PKPaymentTransactionLocationTableViewCell *)v5 setPreservesSuperviewLayoutMargins:1];
    [(PKPaymentTransactionLocationTableViewCell *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9908]];
  }

  return v5;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PKPaymentTransactionLocationTableViewCell;
  [(PKPaymentTransactionLocationTableViewCell *)&v26 layoutSubviews];
  v3 = [(PKPaymentTransactionLocationTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  if ([(PKPaymentTransactionLocationTableViewCell *)self _shouldReverseLayoutDirection:0])
  {
    v12 = CGRectMinXEdge;
  }

  else
  {
    v12 = CGRectMaxXEdge;
  }

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  CGRectGetWidth(v27);
  mapView = self->_mapView;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(PKTransactionMapView *)mapView setFrame:?];
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  CGRectDivide(v28, &v24, &remainder, 181.0, CGRectMinYEdge);
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v15 = v14;
  v18.f64[1] = v17;
  remainder.origin = vaddq_f64(remainder.origin, v18);
  remainder.size.width = remainder.size.width - (v18.f64[0] + v14);
  remainder.size.height = remainder.size.height - (v17 + v16);
  v19 = [(PKPaymentTransactionLocationTableViewCell *)self _disclosureView];
  [v19 bounds];
  v21 = v20;

  disclosureView = self->_disclosureView;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UIImageView *)disclosureView setFrame:?];
  CGRectDivide(remainder, &v24, &remainder, v15 + v21, v12);
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  titleLabel = self->_titleLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)titleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UITableViewCell *)self pkui_effectiveLayoutMargins:a3.width];
  v6 = v5;
  v8 = v7;
  v9 = [(UILabel *)self->_titleLabel text];

  if (v9)
  {
    v10 = [(UILabel *)self->_titleLabel font];
    [v10 lineHeight];
    v12 = v8 + v6 + v11 + 181.0;
  }

  else
  {
    v12 = 181.0;
  }

  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setTransaction:(id)a3
{
  v5 = a3;
  if (self->_transaction != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_transaction, a3);
    v6 = [(PKPaymentTransaction *)v15 merchant];
    v7 = [v6 displayName];

    if (v7)
    {
LABEL_18:
      [(UILabel *)self->_titleLabel setText:v7];
      [(PKTransactionMapView *)self->_mapView setTransaction:v15];
      [(UIImageView *)self->_disclosureView setHidden:[(PKPaymentTransactionLocationTableViewCell *)self _shouldShowDisclosureIndicator]^ 1];

      v5 = v15;
      goto LABEL_19;
    }

    v8 = [(PKPaymentTransaction *)self->_transaction displayLocation];
    if (v8)
    {
      v7 = v8;
      goto LABEL_18;
    }

    v9 = [(PKPaymentTransaction *)self->_transaction startStation];
    v10 = [(PKPaymentTransaction *)self->_transaction endStation];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (!(v9 | v10))
      {
        v7 = 0;
        goto LABEL_17;
      }

      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13;
    }

    else
    {
      v14 = PKLocalizedPaymentString(&cfstr_TransitTransac.isa, &cfstr_12.isa, v9, v10);
    }

    v7 = v14;
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)_shouldShowDisclosureIndicator
{
  v2 = [(PKPaymentTransaction *)self->_transaction merchant];
  if ([v2 shouldIgnoreMapsMatches])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 mapsMerchant];
    v3 = [v4 identifier] != 0;
  }

  return v3;
}

- (id)_disclosureView
{
  disclosureView = self->_disclosureView;
  if (!disclosureView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v5 = ;
    v6 = [v4 initWithImage:v5];

    v7 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v6 setTintColor:v7];

    v8 = self->_disclosureView;
    self->_disclosureView = v6;

    disclosureView = self->_disclosureView;
  }

  return disclosureView;
}

@end