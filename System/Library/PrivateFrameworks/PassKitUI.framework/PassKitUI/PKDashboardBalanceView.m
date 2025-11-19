@interface PKDashboardBalanceView
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardBalanceView)initWithFrame:(CGRect)a3;
- (void)_buttonPressed:(id)a3;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)resetFonts;
- (void)setAvailableCredit:(id)a3;
- (void)setBalance:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleColor:(id)a3;
- (void)setTopUpAction:(id)a3;
- (void)setTopUpEnabled:(BOOL)a3;
- (void)setTopUpTitle:(id)a3;
@end

@implementation PKDashboardBalanceView

- (PKDashboardBalanceView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardBalanceView;
  v3 = [(PKDashboardCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardBalanceView *)v3 createSubviews];
    [(PKDashboardCollectionViewCell *)v4 setMaskType:3];
    [(PKDashboardCollectionViewCell *)v4 setWantsCustomAppearance:0];
    v4->_topUpEnabled = 1;
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(PKDashboardBalanceView *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_195];
  }

  return v4;
}

- (void)createSubviews
{
  v3 = [(PKDashboardBalanceView *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = self->_titleLabel;
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v6 setTextColor:v7];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v3 addSubview:self->_titleLabel];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  detailLabel = self->_detailLabel;
  self->_detailLabel = v8;

  v10 = self->_detailLabel;
  v11 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v10 setTextColor:v11];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(UILabel *)self->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  [v3 addSubview:self->_detailLabel];
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  availableCreditLabel = self->_availableCreditLabel;
  self->_availableCreditLabel = v12;

  [(UILabel *)self->_availableCreditLabel setNumberOfLines:2];
  v14 = self->_availableCreditLabel;
  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v14 setTextColor:v15];

  [(UILabel *)self->_availableCreditLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [v3 addSubview:self->_availableCreditLabel];
  v30 = 0x4034000000000000;
  v31 = xmmword_1BE0B69E0;
  v32 = vdupq_n_s64(2uLL);
  v16 = [[PKContinuousButton alloc] initWithConfiguration:&v30];
  actionButton = self->_actionButton;
  self->_actionButton = v16;

  v18 = self->_actionButton;
  v19 = [MEMORY[0x1E69DC888] labelColor];
  [(PKContinuousButton *)v18 setTintColor:v19];

  v20 = self->_actionButton;
  v21 = [objc_opt_class() defaultBackgroundColor];
  [(PKContinuousButton *)v20 updateTitleColorWithColor:v21];

  [(PKContinuousButton *)self->_actionButton setContentEdgeInsets:10.0, 16.0, 10.0, 16.0];
  [(PKContinuousButton *)self->_actionButton addTarget:self action:sel__buttonPressed_ forControlEvents:64];
  [(PKContinuousButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  [v3 addSubview:self->_actionButton];
  v22 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v23 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v24 = [v22 configurationByApplyingConfiguration:v23];

  v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v24];
  v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v26;

  v28 = self->_disclosureView;
  v29 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v28 setTintColor:v29];

  [v3 addSubview:self->_disclosureView];
  [(PKDashboardBalanceView *)self resetFonts];
  [(PKDashboardBalanceView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9500]];
}

- (void)resetFonts
{
  titleLabel = self->_titleLabel;
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = *MEMORY[0x1E69DDC38];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 0x8000, 0);
  [(UILabel *)titleLabel setFont:v6];

  detailLabel = self->_detailLabel;
  v8 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], v5, 32770, 0, *MEMORY[0x1E69DB958]);
  [(UILabel *)detailLabel setFont:v8];

  availableCreditLabel = self->_availableCreditLabel;
  v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v5, 0x8000, 0);
  [(UILabel *)availableCreditLabel setFont:v10];

  v12 = [(PKContinuousButton *)self->_actionButton titleLabel];
  v11 = PKFontForDefaultDesign(v4, *MEMORY[0x1E69DDC50], 2, 0);
  [v12 setFont:v11];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  title = self->_title;
  v10 = v4;
  v6 = title;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_title;
    self->_title = v8;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTitleColor:(id)a3
{
  v7 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, a3);
    titleLabel = self->_titleLabel;
    if (self->_titleColor)
    {
      [(UILabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)titleLabel setTextColor:v6];
    }

    [(PKDashboardBalanceView *)self setNeedsLayout];
  }
}

- (void)setBalance:(id)a3
{
  v5 = a3;
  balance = self->_balance;
  v9 = v5;
  v7 = balance;
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
    objc_storeStrong(&self->_balance, a3);
    [(UILabel *)self->_detailLabel setText:self->_balance];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setAvailableCredit:(id)a3
{
  v5 = a3;
  availableCredit = self->_availableCredit;
  v9 = v5;
  v7 = availableCredit;
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
    objc_storeStrong(&self->_availableCredit, a3);
    [(UILabel *)self->_availableCreditLabel setText:self->_availableCredit];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTopUpTitle:(id)a3
{
  v5 = a3;
  topUpTitle = self->_topUpTitle;
  v9 = v5;
  v7 = topUpTitle;
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
    objc_storeStrong(&self->_topUpTitle, a3);
    [(PKContinuousButton *)self->_actionButton setTitle:self->_topUpTitle forState:0];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTopUpAction:(id)a3
{
  v4 = _Block_copy(a3);
  topUpAction = self->_topUpAction;
  self->_topUpAction = v4;

  [(PKContinuousButton *)self->_actionButton setHidden:self->_topUpAction == 0];

  [(PKDashboardBalanceView *)self setNeedsLayout];
}

- (void)setTopUpEnabled:(BOOL)a3
{
  if (self->_topUpEnabled == !a3)
  {
    self->_topUpEnabled = a3;
    [(PKContinuousButton *)self->_actionButton setEnabled:?];
    actionButton = self->_actionButton;
    if (self->_topUpEnabled)
    {
      v5 = [MEMORY[0x1E69DC888] labelColor];
      [(PKContinuousButton *)actionButton setTintColor:v5];

      v6 = self->_actionButton;
      v7 = [objc_opt_class() defaultBackgroundColor];
      v8 = v6;
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] systemFillColor];
      [(PKContinuousButton *)actionButton setTintColor:v9];

      v10 = self->_actionButton;
      v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v8 = v10;
    }

    v11 = v7;
    [(PKContinuousButton *)v8 updateTitleColorWithColor:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardBalanceView;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKDashboardBalanceView *)self bounds];
  [(PKDashboardBalanceView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKDashboardBalanceView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = _UISolariumFeatureFlagEnabled();
  if (v8)
  {
    v10 = 15.0;
  }

  else
  {
    v10 = 13.0;
  }

  v11 = 26.0;
  if (v8)
  {
    v11 = 30.0;
  }

  v12 = 16.0;
  if (v9)
  {
    v12 = 11.0;
  }

  v59.origin.x = x;
  v59.origin.y = y;
  amount = v10;
  v13 = x + v10;
  v58 = v12;
  v14 = y + v12;
  v59.size.width = width;
  v59.size.height = height;
  v15 = width - v11;
  v16 = 32.0;
  if (v9)
  {
    v16 = 22.0;
  }

  v17 = height - v16;
  if ([(PKDashboardBalanceView *)self _shouldReverseLayoutDirection])
  {
    v18 = CGRectMinXEdge;
  }

  else
  {
    v18 = CGRectMaxXEdge;
  }

  remainder.origin.x = v13;
  remainder.origin.y = v14;
  remainder.size.width = v15;
  remainder.size.height = v17;
  v19 = [(UILabel *)self->_titleLabel font];
  [v19 pointSize];
  v21 = v20;

  [(UILabel *)self->_titleLabel sizeThatFits:v15, v17];
  v56 = v22;
  v57 = v23;
  [(UILabel *)self->_detailLabel sizeThatFits:v15, v17];
  v25 = v24;
  [(PKContinuousButton *)self->_actionButton sizeThatFits:v15, v17];
  v27 = v26;
  v54 = v28;
  if (self->_showDisclosure)
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:v15, v17];
    v30 = v29;
  }

  else
  {
    v30 = *MEMORY[0x1E695F060];
  }

  if (v21 < 30.0 && fmax(v56, v25) + v27 + v30 + amount * 2.0 <= v15)
  {
    v33 = 0;
    v32 = 1;
    v31 = 2;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 1;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v31];
  v34 = [(PKContinuousButton *)self->_actionButton titleLabel];
  [v34 setNumberOfLines:v32];

  memset(&slice, 0, sizeof(slice));
  if (v27 <= v15)
  {
    v35 = v27;
  }

  else
  {
    v35 = v15;
  }

  if (self->_showDisclosure)
  {
    v63.origin.x = v13;
    v63.origin.y = v14;
    v63.size.width = v15;
    v63.size.height = v17;
    CGRectDivide(v63, &slice, &remainder, v30, v18);
    if (!self->_isTemplateLayout)
    {
      disclosureView = self->_disclosureView;
      PKSizeAlignedInRect();
      [(UIImageView *)disclosureView setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, amount, v18);
  }

  else
  {
    [(UIImageView *)self->_disclosureView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  topUpAction = self->_topUpAction;
  if (topUpAction)
  {
    v38 = v33;
  }

  else
  {
    v38 = 1;
  }

  if ((v38 & 1) == 0)
  {
    CGRectDivide(remainder, &slice, &remainder, v35, v18);
    if (!self->_isTemplateLayout)
    {
      actionButton = self->_actionButton;
      PKSizeAlignedInRect();
      [(PKContinuousButton *)actionButton setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, 4.0, v18);
    topUpAction = self->_topUpAction;
  }

  v40 = topUpAction == 0;
  v41 = v33 ^ 1;
  if (v40)
  {
    v41 = 1;
  }

  if (v41)
  {
    PKContentAlignmentMake();
  }

  CGRectDivide(remainder, &slice, &remainder, v57, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    titleLabel = self->_titleLabel;
    PKSizeAlignedInRect();
    [(UILabel *)titleLabel setFrame:?];
  }

  [(UILabel *)self->_detailLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v44 = v43;
  CGRectDivide(remainder, &slice, &remainder, v43, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    detailLabel = self->_detailLabel;
    PKSizeAlignedInRect();
    [(UILabel *)detailLabel setFrame:?];
  }

  v46 = v58 + v57 + v44;
  if ([(NSString *)self->_availableCredit length])
  {
    [(UILabel *)self->_availableCreditLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v48 = v47;
    CGRectDivide(remainder, &slice, &remainder, v47, CGRectMinYEdge);
    v46 = v46 + v48;
    if (!self->_isTemplateLayout)
    {
      availableCreditLabel = self->_availableCreditLabel;
      PKSizeAlignedInRect();
      [(UILabel *)availableCreditLabel setFrame:?];
    }
  }

  v50 = v33 ^ 1;
  if (!self->_topUpAction)
  {
    v50 = 1;
  }

  if ((v50 & 1) == 0)
  {
    CGRectDivide(remainder, &slice, &remainder, v54, CGRectMinYEdge);
    v46 = v54 + v46;
    if (!self->_isTemplateLayout)
    {
      if (self->_topUpAction)
      {
        v51 = self->_actionButton;
        PKSizeAlignedInRect();
        [(PKContinuousButton *)v51 setFrame:?];
      }
    }
  }

  v52 = CGRectGetWidth(v59);
  v53 = v58 + v46;
  result.height = v53;
  result.width = v52;
  return result;
}

- (void)_buttonPressed:(id)a3
{
  topUpAction = self->_topUpAction;
  if (topUpAction)
  {
    topUpAction[2]();
  }
}

@end