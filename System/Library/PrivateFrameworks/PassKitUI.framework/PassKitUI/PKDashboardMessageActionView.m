@interface PKDashboardMessageActionView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardMessageActionView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_configureView;
- (void)_updateFonts;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessory:(unint64_t)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleTextColor:(id)a3;
- (void)updateWithMessage:(id)a3;
@end

@implementation PKDashboardMessageActionView

- (PKDashboardMessageActionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKDashboardMessageActionView;
  v3 = [(PKDashboardMessageActionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardMessageActionView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  self->_smallDevice = PKUIGetMinScreenWidthType() == 0;
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v3;

  [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  [(UIActivityIndicatorView *)self->_spinnerView setHidden:1];
  [(PKDashboardMessageActionView *)self addSubview:self->_spinnerView];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v6 = PKUIChevronImage();
  v7 = [v5 initWithImage:v6];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v7;

  v9 = self->_disclosureView;
  v10 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v9 setTintColor:v10];

  [(UIImageView *)self->_disclosureView setHidden:1];
  [(PKDashboardMessageActionView *)self addSubview:self->_disclosureView];
  v11 = *MEMORY[0x1E69B93D0];

  [(PKDashboardMessageActionView *)self setAccessibilityIdentifier:v11];
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  titleText = self->_titleText;
  v9 = v5;
  v7 = titleText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_titleText, a3);
    [(PKDashboardMessageActionView *)self _configureView];
  }

LABEL_9:
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, a3);
    [(PKDashboardMessageActionView *)self _configureView];
  }
}

- (void)setTitleTextColor:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextColor, a3);
    [(PKDashboardMessageActionView *)self _configureView];
  }
}

- (void)setAccessory:(unint64_t)a3
{
  if (self->_accessory != a3)
  {
    self->_accessory = a3;
    if (a3 == 2)
    {
      [(UIImageView *)self->_disclosureView setHidden:1];
      [(UIActivityIndicatorView *)self->_spinnerView setHidden:0];
      spinnerView = self->_spinnerView;

      [(UIActivityIndicatorView *)spinnerView startAnimating];
    }

    else
    {
      if (a3 == 1)
      {
        disclosureView = self->_disclosureView;
        v5 = 0;
      }

      else
      {
        if (a3)
        {
          return;
        }

        disclosureView = self->_disclosureView;
        v5 = 1;
      }

      [(UIImageView *)disclosureView setHidden:v5];
      v6 = self->_spinnerView;

      [(UIActivityIndicatorView *)v6 setHidden:1];
    }
  }
}

- (void)updateWithMessage:(id)a3
{
  v7 = a3;
  v4 = [v7 buttonTitle];
  [(PKDashboardMessageActionView *)self setTitleText:v4];

  if ([v7 isDestructiveAction])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v5 = ;
  [(PKDashboardMessageActionView *)self setTitleTextColor:v5];

  if ([v7 showSpinner])
  {
    v6 = 2;
  }

  else
  {
    v6 = [v7 showDisclosure];
  }

  [(PKDashboardMessageActionView *)self setAccessory:v6];
  [(PKDashboardMessageActionView *)self _updateFonts];
  [(PKDashboardMessageActionView *)self setNeedsLayout];
  [(PKDashboardMessageActionView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
}

- (void)_updateFonts
{
  if (self->_smallDevice)
  {
    v3 = MEMORY[0x1E69DDD00];
  }

  else
  {
    v3 = MEMORY[0x1E69DDCF8];
  }

  v4 = PKFontForDefaultDesign(*v3, *MEMORY[0x1E69DDC38], 0x8000, 0);
  [(PKDashboardMessageActionView *)self setTitleFont:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardMessageActionView;
  [(PKDashboardMessageActionView *)&v3 layoutSubviews];
  [(PKDashboardMessageActionView *)self bounds];
  [(PKDashboardMessageActionView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDashboardMessageActionView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  v6 = a3.origin.x + 16.0;
  v7 = a3.origin.y + 16.0;
  memset(&v59, 0, sizeof(v59));
  width = a3.size.width;
  v8 = a3.size.width + -32.0;
  remainder.origin.x = a3.origin.x + 16.0;
  remainder.origin.y = a3.origin.y + 16.0;
  v9 = a3.size.height + -32.0;
  remainder.size.width = a3.size.width + -32.0;
  remainder.size.height = a3.size.height + -32.0;
  v10 = [(PKDashboardMessageActionView *)self _shouldReverseLayoutDirection];
  if (v10)
  {
    v11 = CGRectMaxXEdge;
  }

  else
  {
    v11 = CGRectMinXEdge;
  }

  [(UIImageView *)self->_disclosureView sizeThatFits:v8, 3.40282347e38];
  v13 = v12;
  v15 = v14;
  [(UIActivityIndicatorView *)self->_spinnerView sizeThatFits:v8, 3.40282347e38];
  v17 = fmax(v13, v16);
  v19 = fmax(v15, v18);
  v20 = MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v56 = *MEMORY[0x1E695F058];
  if (v17 <= 0.0)
  {
    v39 = *(MEMORY[0x1E695F058] + 16);
    v41 = *(MEMORY[0x1E695F058] + 24);
    v53 = v39;
    v54 = v41;
    v51 = *MEMORY[0x1E695F058];
    v52 = *(MEMORY[0x1E695F058] + 8);
    v27 = v19;
  }

  else
  {
    if (v10)
    {
      v22 = CGRectMinXEdge;
    }

    else
    {
      v22 = CGRectMaxXEdge;
    }

    v50 = v19;
    v23 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v23;
    v24 = v6;
    v23.width = v7;
    v25 = v8;
    v26 = v9;
    CGRectDivide(*(&v23 - 8), &slice, &remainder, v17, v22);
    CGRectDivide(remainder, &v59, &remainder, 11.0, v22);
    PKContentAlignmentMake();
    v27 = v50;
    PKSizeAlignedInRect();
    slice.origin.x = v28;
    slice.origin.y = v29;
    slice.size.width = v30;
    slice.size.height = v31;
    PKRectCenteredIntegralRect();
    v51 = v32;
    v52 = v33;
    v53 = v34;
    v54 = v35;
    PKRectCenteredIntegralRect();
    v56 = v36;
    v21 = v37;
    v39 = v38;
    v41 = v40;
    v8 = remainder.size.width;
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v8, 3.40282347e38, *&v50];
  v43 = *(v20 + 16);
  slice.origin = *v20;
  slice.size = v43;
  if (v42 > 0.0)
  {
    CGRectDivide(remainder, &slice, &remainder, v42, v11);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    slice.origin.x = v44;
    slice.origin.y = v45;
    slice.size.width = v46;
    slice.size.height = v47;
  }

  if (!a4)
  {
    [(UILabel *)self->_titleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    [(UIActivityIndicatorView *)self->_spinnerView setFrame:v56, v21, v39, v41];
    [(UIImageView *)self->_disclosureView setFrame:v51, v52, v53, v54];
  }

  v48 = fmax(slice.size.height, v27) + 32.0;
  v49 = width;
  result.height = v48;
  result.width = v49;
  return result;
}

- (void)_configureView
{
  titleText = self->_titleText;
  titleLabel = self->_titleLabel;
  if (titleText)
  {
    if (!titleLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v6 = self->_titleLabel;
      self->_titleLabel = v5;

      [(UILabel *)self->_titleLabel setNumberOfLines:1];
      [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
      [(PKDashboardMessageActionView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setFont:self->_titleFont];
    [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
    [(UILabel *)self->_titleLabel setText:self->_titleText];
  }

  else
  {
    [(UILabel *)titleLabel removeFromSuperview];
    v7 = self->_titleLabel;
    self->_titleLabel = 0;
  }

  [(PKDashboardMessageActionView *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  [(UILabel *)self->_titleLabel removeFromSuperview];
  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  titleText = self->_titleText;
  self->_titleText = 0;

  titleFont = self->_titleFont;
  self->_titleFont = 0;

  titleTextColor = self->_titleTextColor;
  self->_titleTextColor = 0;

  [(PKDashboardMessageActionView *)self setAccessory:0];
}

@end