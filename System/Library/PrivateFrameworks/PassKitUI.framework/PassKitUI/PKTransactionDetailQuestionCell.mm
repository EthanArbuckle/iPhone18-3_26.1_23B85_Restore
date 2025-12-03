@interface PKTransactionDetailQuestionCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTransactionDetailQuestionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PKTransactionDetailQuestionCellDelegate)questionDelegate;
- (id)_createButton;
- (void)_enableButtons:(BOOL)buttons;
- (void)_leadingButtonTapped:(id)tapped;
- (void)_trailingButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setTransaction:(id)transaction accountUserContact:(id)contact submittingAnswer:(id)answer;
@end

@implementation PKTransactionDetailQuestionCell

- (PKTransactionDetailQuestionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30.receiver = self;
  v30.super_class = PKTransactionDetailQuestionCell;
  v4 = [(PKTransactionDetailQuestionCell *)&v30 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v4->_smallDevice = PKUIGetMinScreenWidthType() == 0;
    contentView = [(PKTransactionDetailQuestionCell *)v4 contentView];
    v6 = PKPassKitUIBundle();
    v29 = [v6 URLForResource:@"MessageAlert" withExtension:@"pdf"];

    v7 = PKUIScreenScale();
    v8 = PKUIImageFromPDF(v29, 45.0, 45.0, v7);
    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    [contentView addSubview:v4->_imageView];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v4->_title;
    v4->_title = v11;

    v13 = v4->_title;
    v14 = *MEMORY[0x1E69DDC38];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 2, 0);
    [(UILabel *)v13 setFont:v15];

    [(UILabel *)v4->_title setNumberOfLines:2];
    [(UILabel *)v4->_title setAdjustsFontSizeToFitWidth:1];
    v16 = v4->_title;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v16 setTextColor:labelColor];

    [(UILabel *)v4->_title setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v4->_title];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    message = v4->_message;
    v4->_message = v18;

    v20 = v4->_message;
    v21 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v14);
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v4->_message setNumberOfLines:0];
    [(UILabel *)v4->_message setAdjustsFontSizeToFitWidth:1];
    v22 = v4->_message;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v22 setTextColor:labelColor2];

    [(UILabel *)v4->_message setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(UILabel *)v4->_message setMinimumScaleFactor:0.8];
    [contentView addSubview:v4->_message];
    _createButton = [(PKTransactionDetailQuestionCell *)v4 _createButton];
    leadingButton = v4->_leadingButton;
    v4->_leadingButton = _createButton;

    [(PKLegacyButtonInterface *)v4->_leadingButton addTarget:v4 action:sel__leadingButtonTapped_ forControlEvents:64];
    [(PKLegacyButtonInterface *)v4->_leadingButton setAccessibilityIdentifier:*MEMORY[0x1E69B98E0]];
    [contentView addSubview:v4->_leadingButton];
    _createButton2 = [(PKTransactionDetailQuestionCell *)v4 _createButton];
    trailingButton = v4->_trailingButton;
    v4->_trailingButton = _createButton2;

    [(PKLegacyButtonInterface *)v4->_trailingButton addTarget:v4 action:sel__trailingButtonTapped_ forControlEvents:64];
    [(PKLegacyButtonInterface *)v4->_trailingButton setAccessibilityIdentifier:*MEMORY[0x1E69B9D30]];
    [contentView addSubview:v4->_trailingButton];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKTransactionDetailQuestionCell;
  [(PKTransactionDetailQuestionCell *)&v3 layoutSubviews];
  [(PKTransactionDetailQuestionCell *)self bounds];
  [(PKTransactionDetailQuestionCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  text = [(UILabel *)self->_title text];

  if (text)
  {
    self->_isTemplateLayout = 1;
    [(PKTransactionDetailQuestionCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    self->_isTemplateLayout = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  memset(&slice, 0, sizeof(slice));
  remainder = bounds;
  traitCollection = [(PKTransactionDetailQuestionCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  _shouldReverseLayoutDirection = [(PKTransactionDetailQuestionCell *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v12 = CGRectMaxXEdge;
  }

  else
  {
    v12 = CGRectMinXEdge;
  }

  if (_shouldReverseLayoutDirection)
  {
    v13 = CGRectMinXEdge;
  }

  else
  {
    v13 = CGRectMaxXEdge;
  }

  v14 = PKUIPixelLength() * 3.0;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  CGRectDivide(v38, &slice, &remainder, v14, CGRectMinYEdge);
  v15 = PKUIPixelLength() * 3.0 + 0.0;
  CGRectDivide(remainder, &slice, &remainder, 16.0, CGRectMinXEdge);
  CGRectDivide(remainder, &slice, &remainder, 16.0, CGRectMaxXEdge);
  CGRectDivide(remainder, &slice, &remainder, 16.0, CGRectMinYEdge);
  v16 = v15 + 16.0;
  if (self->_smallDevice)
  {
    v17 = 30.0;
  }

  else
  {
    v17 = 45.0;
  }

  memset(&v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  memset(&v32, 0, sizeof(v32));
  v18 = remainder.origin.x;
  v19 = remainder.origin.y;
  v20 = remainder.size.width;
  v21 = remainder.size.height;
  if (IsAccessibilityCategory)
  {
    CGRectDivide(*&v18, &v34, &remainder, v17, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
    CGRectDivide(v34, &v34, &v33, v17, v12);
    v16 = v16 + v17 + 10.0;
  }

  else
  {
    CGRectDivide(*&v18, &v32, &remainder, v17, v12);
    CGRectDivide(v32, &v34, &v33, 10.0, CGRectMinYEdge);
    CGRectDivide(v33, &v34, &v33, v17, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 12.0, v12);
  }

  if (!self->_isTemplateLayout)
  {
    [(UIImageView *)self->_imageView setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
  }

  [(UILabel *)self->_title sizeThatFits:remainder.size.width, remainder.size.height];
  v23 = v22;
  CGRectDivide(remainder, &slice, &remainder, v22, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_title setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  CGRectDivide(remainder, &slice, &remainder, 6.0, CGRectMinYEdge);
  [(UILabel *)self->_message sizeThatFits:remainder.size.width, remainder.size.height];
  v25 = v24;
  CGRectDivide(remainder, &slice, &remainder, v24, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_message setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  CGRectDivide(remainder, &slice, &remainder, 16.0, CGRectMinYEdge);
  remainder.origin.x = 16.0;
  remainder.size.width = width + -32.0;
  [(PKLegacyButtonInterface *)self->_leadingButton sizeThatFits:?];
  v27 = v26;
  if (!self->_isTemplateLayout)
  {
    memset(&v31, 0, sizeof(v31));
    CGRectDivide(remainder, &v31, &remainder, v26, CGRectMinYEdge);
    PKFloatRoundToPixel();
    CGRectDivide(v31, &slice, &v31, v28, v12);
    [(PKLegacyButtonInterface *)self->_leadingButton setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    CGRectDivide(v31, &slice, &v31, v31.size.width + -10.0, v13);
    [(PKLegacyButtonInterface *)self->_trailingButton setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v29 = v16 + v23 + 6.0 + v25 + 16.0 + v27 + 16.0;
  v30 = width;
  result.height = v29;
  result.width = v30;
  return result;
}

- (void)setTransaction:(id)transaction accountUserContact:(id)contact submittingAnswer:(id)answer
{
  transactionCopy = transaction;
  contactCopy = contact;
  answerCopy = answer;
  objc_storeStrong(&self->_transaction, transaction);
  objc_storeStrong(&self->_accountUserContact, contact);
  objc_storeStrong(&self->_submittingAnswer, answer);
  transaction = self->_transaction;
  if (transaction)
  {
    [(PKPaymentTransaction *)transaction effectiveTransactionSource];
    accountUserContact = self->_accountUserContact;
    if (accountUserContact)
    {
      givenName = [(CNContact *)accountUserContact givenName];
      title = self->_title;
      v15 = PKLocalizedFeatureString();
      [(UILabel *)title setText:v15, givenName];

      message = self->_message;
      v20 = PKLocalizedFeatureString();
      [(UILabel *)message setText:v20, givenName];
    }

    else
    {
      v17 = self->_title;
      v18 = PKLocalizedFeatureString();
      [(UILabel *)v17 setText:v18];

      v19 = self->_message;
      givenName = PKLocalizedFeatureString();
      [(UILabel *)v19 setText:givenName];
    }

    leadingButton = self->_leadingButton;
    v22 = PKLocalizedFeatureString();
    [(PKLegacyButtonInterface *)leadingButton setTitle:v22 forState:0];

    trailingButton = self->_trailingButton;
    v24 = PKLocalizedFeatureString();
    [(PKLegacyButtonInterface *)trailingButton setTitle:v24 forState:0];
  }

  else
  {
    [(UILabel *)self->_title setText:0];
    [(UILabel *)self->_message setText:0];
    [(PKLegacyButtonInterface *)self->_leadingButton setTitle:0 forState:0];
    [(PKLegacyButtonInterface *)self->_trailingButton setTitle:0 forState:0];
  }

  if (!self->_submittingAnswer)
  {
    [(PKTransactionDetailQuestionCell *)self _enableButtons:1];
    v29 = 0;
    v30 = 0;
    goto LABEL_18;
  }

  [(PKTransactionDetailQuestionCell *)self _enableButtons:0];
  v25 = *MEMORY[0x1E69BC2F0];
  v26 = self->_submittingAnswer;
  v27 = v26;
  if (v25 == v26)
  {

    goto LABEL_15;
  }

  if (v25 && v26)
  {
    v28 = [(NSString *)v25 isEqualToString:v26];

    if (!v28)
    {
      goto LABEL_17;
    }

LABEL_15:
    v30 = 0;
    v29 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v29 = 0;
  v30 = 1;
LABEL_18:
  [(PKLegacyButtonInterface *)self->_leadingButton setShowSpinner:v29];
  [(PKLegacyButtonInterface *)self->_trailingButton setShowSpinner:v30];
  [(PKTransactionDetailQuestionCell *)self setNeedsLayout];
}

- (void)_trailingButtonTapped:(id)tapped
{
  unansweredQuestions = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
  if ([unansweredQuestions count])
  {
    [(PKTransactionDetailQuestionCell *)self _enableButtons:0];
    [(PKLegacyButtonInterface *)self->_trailingButton setShowSpinner:1];
    WeakRetained = objc_loadWeakRetained(&self->_questionDelegate);
    [WeakRetained submitAnswer:*MEMORY[0x1E69BC2E8]];
  }
}

- (void)_leadingButtonTapped:(id)tapped
{
  unansweredQuestions = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
  if ([unansweredQuestions count])
  {
    [(PKTransactionDetailQuestionCell *)self _enableButtons:0];
    [(PKLegacyButtonInterface *)self->_leadingButton setShowSpinner:1];
    WeakRetained = objc_loadWeakRetained(&self->_questionDelegate);
    [WeakRetained submitAnswer:*MEMORY[0x1E69BC2F0]];
  }
}

- (void)_enableButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  [(PKLegacyButtonInterface *)self->_leadingButton setEnabled:?];
  trailingButton = self->_trailingButton;

  [(PKLegacyButtonInterface *)trailingButton setEnabled:buttonsCopy];
}

- (id)_createButton
{
  v2 = PKCreateLargeSolidButton();
  [v2 setContentEdgeInsets:{12.0, 16.0, 12.0, 16.0}];
  tertiarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  [v2 setTintColor:tertiarySystemGroupedBackgroundColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v2 updateTitleColorWithColor:labelColor];

  titleLabel = [v2 titleLabel];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  [titleLabel setFont:v6];

  titleLabel2 = [v2 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [v2 updateActivityIndicatorColorWithColor:labelColor2];

  return v2;
}

- (PKTransactionDetailQuestionCellDelegate)questionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_questionDelegate);

  return WeakRetained;
}

@end