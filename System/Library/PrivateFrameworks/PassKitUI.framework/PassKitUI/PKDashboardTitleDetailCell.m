@interface PKDashboardTitleDetailCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardTitleDetailCell)initWithFrame:(CGRect)a3;
- (void)_updateDefaultValues;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)setAccessory:(unint64_t)a3;
- (void)setDetailTextColor:(id)a3;
- (void)setTitleText:(id)a3 detail:(id)a4;
- (void)setTitleTextColor:(id)a3;
@end

@implementation PKDashboardTitleDetailCell

- (PKDashboardTitleDetailCell)initWithFrame:(CGRect)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PKDashboardTitleDetailCell;
  v3 = [(PKDashboardCollectionViewCell *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKDashboardTitleDetailCell *)v3 contentView];
    v6 = [MEMORY[0x1E69DC888] labelColor];
    defaultTitleTextColor = v4->_defaultTitleTextColor;
    v4->_defaultTitleTextColor = v6;

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x1E695F058], v10, v11, v12}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v13;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [v5 addSubview:v4->_titleLabel];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v10, v11, v12}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v15;

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [v5 addSubview:v4->_subtitleLabel];
    v17 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    numberFormatter = v4->_numberFormatter;
    v4->_numberFormatter = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinnerView = v4->_spinnerView;
    v4->_spinnerView = v19;

    [(UIActivityIndicatorView *)v4->_spinnerView startAnimating];
    [(UIActivityIndicatorView *)v4->_spinnerView setHidden:1];
    [v5 addSubview:v4->_spinnerView];
    v21 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v22 = ;
    v23 = [v21 initWithImage:v22];
    disclosureView = v4->_disclosureView;
    v4->_disclosureView = v23;

    v25 = v4->_disclosureView;
    v26 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v25 setTintColor:v26];

    [(UIImageView *)v4->_disclosureView setHidden:1];
    [v5 addSubview:v4->_disclosureView];
    [(PKDashboardTitleDetailCell *)v4 resetFonts];
    [(PKDashboardTitleDetailCell *)v4 _updateDefaultValues];
    v31[0] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v28 = [(PKDashboardTitleDetailCell *)v4 registerForTraitChanges:v27 withHandler:&__block_literal_global_15];
  }

  return v4;
}

- (void)resetFonts
{
  titleLabel = self->_titleLabel;
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = *MEMORY[0x1E69DDC38];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  [(UILabel *)titleLabel setFont:v6];

  subtitleLabel = self->_subtitleLabel;
  v8 = PKFontForDefaultDesign(v4, v5);
  [(UILabel *)subtitleLabel setFont:v8];
}

- (void)setTitleText:(id)a3 detail:(id)a4
{
  v7 = a3;
  v8 = a4;
  titleText = self->_titleText;
  v16 = v7;
  v10 = titleText;
  if (v10 == v16)
  {
  }

  else
  {
    if (!v16 || !v10)
    {
      v13 = v16;
LABEL_13:

      goto LABEL_14;
    }

    v11 = [(NSString *)v16 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  detailText = self->_detailText;
  v13 = v8;
  v14 = detailText;
  v10 = v14;
  if (v14 == v13)
  {

    goto LABEL_16;
  }

  if (!v13 || !v14)
  {
    goto LABEL_13;
  }

  v15 = [(NSString *)v13 isEqualToString:v14];

  if (!v15)
  {
LABEL_14:
    objc_storeStrong(&self->_titleText, a3);
    objc_storeStrong(&self->_detailText, a4);
    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(UILabel *)self->_subtitleLabel setText:self->_detailText];
    [(PKDashboardTitleDetailCell *)self setNeedsLayout];
  }

LABEL_16:
}

- (void)setTitleTextColor:(id)a3
{
  v7 = a3;
  v4 = PKEqualObjects();
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    defaultTitleTextColor = v7;
    if (!v7)
    {
      defaultTitleTextColor = self->_defaultTitleTextColor;
    }

    objc_storeStrong(&self->_titleTextColor, defaultTitleTextColor);
    [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
    v5 = v7;
  }
}

- (void)setDetailTextColor:(id)a3
{
  v7 = a3;
  v4 = PKEqualObjects();
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    defaultTitleTextColor = v7;
    if (!v7)
    {
      defaultTitleTextColor = self->_defaultTitleTextColor;
    }

    objc_storeStrong(&self->_detailTextColor, defaultTitleTextColor);
    [(UILabel *)self->_subtitleLabel setTextColor:self->_detailTextColor];
    v5 = v7;
  }
}

- (void)setAccessory:(unint64_t)a3
{
  if (self->_accessory != a3)
  {
    self->_accessory = a3;
    if (a3 <= 2)
    {
      v4 = 3u >> (a3 & 7);
      [(UIImageView *)self->_disclosureView setHidden:(a3 & 1) == 0];
      spinnerView = self->_spinnerView;

      [(UIActivityIndicatorView *)spinnerView setHidden:v4 & 1];
    }
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDashboardTitleDetailCell;
  [(PKDashboardCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(PKDashboardTitleDetailCell *)self contentView];
  [v3 bounds];
  [(PKDashboardTitleDetailCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDashboardTitleDetailCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v75.receiver = self;
  v75.super_class = PKDashboardTitleDetailCell;
  [(PKDashboardCollectionViewCell *)&v75 layoutSubviews];
  v10 = x + 12.0;
  v11 = y + 12.0;
  v69 = width;
  v12 = width + -24.0;
  memset(&v74, 0, sizeof(v74));
  remainder.origin.x = v10;
  remainder.origin.y = y + 12.0;
  v13 = height + -24.0;
  remainder.size.width = v12;
  remainder.size.height = height + -24.0;
  v14 = [(PKDashboardTitleDetailCell *)self _shouldReverseLayoutDirection];
  if (v14)
  {
    v15 = CGRectMaxXEdge;
  }

  else
  {
    v15 = CGRectMinXEdge;
  }

  if (v14)
  {
    v16 = CGRectMinXEdge;
  }

  else
  {
    v16 = CGRectMaxXEdge;
  }

  [(UIImageView *)self->_disclosureView sizeThatFits:v12, 3.40282347e38];
  v18 = v17;
  v20 = v19;
  [(UIActivityIndicatorView *)self->_spinnerView sizeThatFits:v12, 3.40282347e38];
  v22 = fmax(v18, v21);
  v24 = fmax(v20, v23);
  v25 = MEMORY[0x1E695F058];
  v26 = *(MEMORY[0x1E695F058] + 8);
  v70 = *MEMORY[0x1E695F058];
  if (v22 <= 0.0)
  {
    v43 = *(MEMORY[0x1E695F058] + 16);
    v45 = *(MEMORY[0x1E695F058] + 24);
    v62 = v43;
    v64 = v45;
    v58 = *MEMORY[0x1E695F058];
    v60 = *(MEMORY[0x1E695F058] + 8);
    v31 = v24;
  }

  else
  {
    v67 = v24;
    v27 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v27;
    v28 = v10;
    v27.width = v11;
    v29 = v12;
    v30 = v13;
    CGRectDivide(*(&v27 - 8), &slice, &remainder, v22, v16);
    CGRectDivide(remainder, &v74, &remainder, 11.0, v16);
    PKContentAlignmentMake();
    v31 = v67;
    PKSizeAlignedInRect();
    slice.origin.x = v32;
    slice.origin.y = v33;
    slice.size.width = v34;
    slice.size.height = v35;
    PKRectCenteredIntegralRect();
    v58 = v36;
    v60 = v37;
    v62 = v38;
    v64 = v39;
    PKRectCenteredIntegralRect();
    v70 = v40;
    v26 = v41;
    v43 = v42;
    v45 = v44;
    v12 = remainder.size.width;
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:v12 * 0.5, 3.40282347e38, v58, v60, *&v62, *&v64];
  v66 = *(v25 + 16);
  v68 = *v25;
  slice.origin = *v25;
  slice.size = v66;
  if (v46 > 0.0)
  {
    CGRectDivide(remainder, &slice, &remainder, v46, v16);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    slice.origin.x = v47;
    slice.origin.y = v48;
    slice.size.width = v49;
    slice.size.height = v50;
  }

  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, 3.40282347e38];
  v71.origin = v68;
  v71.size = v66;
  if (v51 > 0.0)
  {
    CGRectDivide(remainder, &v71, &remainder, v51, v15);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v71.origin.x = v52;
    v71.origin.y = v53;
    v71.size.width = v54;
    v71.size.height = v55;
  }

  if (!a4)
  {
    [(UILabel *)self->_titleLabel setFrame:v71.origin.x, v71.origin.y, v71.size.width, v71.size.height];
    [(UILabel *)self->_subtitleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    [(UIActivityIndicatorView *)self->_spinnerView setFrame:v70, v26, v43, v45];
    [(UIImageView *)self->_disclosureView setFrame:v59, v61, v63, v65];
  }

  v56 = fmax(v71.size.height, fmax(slice.size.height, v31)) + 24.0;
  v57 = v69;
  result.height = v56;
  result.width = v57;
  return result;
}

- (void)_updateDefaultValues
{
  [(UILabel *)self->_titleLabel setTextColor:self->_defaultTitleTextColor];
  subtitleLabel = self->_subtitleLabel;
  defaultTitleTextColor = self->_defaultTitleTextColor;

  [(UILabel *)subtitleLabel setTextColor:defaultTitleTextColor];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PKDashboardTitleDetailCell;
  [(PKDashboardCollectionViewCell *)&v7 prepareForReuse];
  titleText = self->_titleText;
  self->_titleText = 0;

  detailText = self->_detailText;
  self->_detailText = 0;

  titleTextColor = self->_titleTextColor;
  self->_titleTextColor = 0;

  detailTextColor = self->_detailTextColor;
  self->_detailTextColor = 0;

  self->_accessory = 0;
  [(UIImageView *)self->_disclosureView setHidden:1];
  [(UIActivityIndicatorView *)self->_spinnerView setHidden:1];
  [(PKDashboardTitleDetailCell *)self _updateDefaultValues];
}

@end