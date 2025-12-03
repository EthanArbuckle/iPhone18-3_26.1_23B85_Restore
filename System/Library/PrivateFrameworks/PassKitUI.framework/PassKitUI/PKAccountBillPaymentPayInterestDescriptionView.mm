@interface PKAccountBillPaymentPayInterestDescriptionView
- (BOOL)_showInterest;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountBillPaymentPayInterestDescriptionView)initWithAccount:(id)account;
- (PKAccountBillPaymentPayInterestDescriptionViewDelegate)delegate;
- (id)_learnMoreAttributedStringWithText:(id)text;
- (void)_updateLabels;
- (void)layoutSubviews;
- (void)setInterest:(id)interest;
- (void)setInterestChargeDate:(id)date;
- (void)setSelectedPaymentDate:(id)date;
@end

@implementation PKAccountBillPaymentPayInterestDescriptionView

- (PKAccountBillPaymentPayInterestDescriptionView)initWithAccount:(id)account
{
  accountCopy = account;
  v45.receiver = self;
  v45.super_class = PKAccountBillPaymentPayInterestDescriptionView;
  v6 = [(PKAccountBillPaymentPayInterestDescriptionView *)&v45 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    creditDetails = [accountCopy creditDetails];
    currencyCode = [creditDetails currencyCode];
    v10 = PKMutableNumberFormatterForCurrencyCode();
    amountFormatter = v7->_amountFormatter;
    v7->_amountFormatter = v10;

    [accountCopy feature];
    v12 = PKLocalizedFeatureString();
    learnMoreString = v7->_learnMoreString;
    v7->_learnMoreString = v12;

    v14 = PKOBKTextAlignment();
    v15 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    cancellationView = v7->_cancellationView;
    v7->_cancellationView = v15;

    [(UITextView *)v7->_cancellationView setDelegate:v7];
    [(UITextView *)v7->_cancellationView setSelectable:1];
    [(UITextView *)v7->_cancellationView setUserInteractionEnabled:1];
    [(UITextView *)v7->_cancellationView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v7->_cancellationView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)v7->_cancellationView setTextAlignment:v14];
    [(UITextView *)v7->_cancellationView setAccessibilityIdentifier:*MEMORY[0x1E69B95A8]];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    estimatedChargeLabel = v7->_estimatedChargeLabel;
    v7->_estimatedChargeLabel = v17;

    [(UILabel *)v7->_estimatedChargeLabel setTextAlignment:v14];
    v19 = v7->_estimatedChargeLabel;
    v20 = *MEMORY[0x1E69DDC38];
    v21 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38], 0x8000, 0);
    [(UILabel *)v19 setFont:v21];

    v22 = v7->_estimatedChargeLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v22 setTextColor:secondaryLabelColor];

    [(UILabel *)v7->_estimatedChargeLabel setNumberOfLines:0];
    [(UILabel *)v7->_estimatedChargeLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9780]];
    v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    interestLabel = v7->_interestLabel;
    v7->_interestLabel = v24;

    v44 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDC0], v20, 0x8000, 32);
    [(UILabel *)v7->_interestLabel setFont:v44];
    [(UILabel *)v7->_interestLabel setBaselineAdjustment:1];
    [(UILabel *)v7->_interestLabel setTextAlignment:v14];
    [(UILabel *)v7->_interestLabel setNumberOfLines:1];
    v26 = v7->_interestLabel;
    v27 = [MEMORY[0x1E69DC888] colorWithRed:0.992 green:0.71 blue:0.227 alpha:1.0];
    [(UILabel *)v26 setTextColor:v27];

    [(UILabel *)v7->_interestLabel setAccessibilityIdentifier:*MEMORY[0x1E69B98A8]];
    v28 = objc_alloc_init(MEMORY[0x1E696AB78]);
    productDateFormatter = v7->_productDateFormatter;
    v7->_productDateFormatter = v28;

    v30 = v7->_productDateFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v30 setLocale:autoupdatingCurrentLocale];

    v32 = v7->_productDateFormatter;
    creditDetails2 = [(PKAccount *)v7->_account creditDetails];
    productTimeZone = [creditDetails2 productTimeZone];
    [(NSDateFormatter *)v32 setTimeZone:productTimeZone];

    [(NSDateFormatter *)v7->_productDateFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
    v35 = objc_alloc_init(MEMORY[0x1E696AB78]);
    localDateFormatter = v7->_localDateFormatter;
    v7->_localDateFormatter = v35;

    v37 = v7->_localDateFormatter;
    autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v37 setLocale:autoupdatingCurrentLocale2];

    [(NSDateFormatter *)v7->_localDateFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
    v39 = objc_alloc_init(MEMORY[0x1E696AB78]);
    localTimeFormatter = v7->_localTimeFormatter;
    v7->_localTimeFormatter = v39;

    v41 = v7->_localTimeFormatter;
    autoupdatingCurrentLocale3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v41 setLocale:autoupdatingCurrentLocale3];

    [(NSDateFormatter *)v7->_localTimeFormatter setLocalizedDateFormatFromTemplate:@"j:mm a z"];
    [(PKAccountBillPaymentPayInterestDescriptionView *)v7 addSubview:v7->_cancellationView];
    [(PKAccountBillPaymentPayInterestDescriptionView *)v7 addSubview:v7->_estimatedChargeLabel];
    [(PKAccountBillPaymentPayInterestDescriptionView *)v7 addSubview:v7->_interestLabel];
    [(PKAccountBillPaymentPayInterestDescriptionView *)v7 _updateLabels];
  }

  return v7;
}

- (void)setInterest:(id)interest
{
  interestCopy = interest;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_interest, interest);
    interest = self->_interest;
    roundingHandler = [MEMORY[0x1E69B86D0] roundingHandler];
    v7 = [(NSDecimalNumber *)interest decimalNumberByRoundingAccordingToBehavior:roundingHandler];
    v8 = self->_interest;
    self->_interest = v7;

    [(PKAccountBillPaymentPayInterestDescriptionView *)self setNeedsLayout];
  }
}

- (void)setSelectedPaymentDate:(id)date
{
  objc_storeStrong(&self->_selectedPaymentDate, date);

  [(PKAccountBillPaymentPayInterestDescriptionView *)self setNeedsLayout];
}

- (void)setInterestChargeDate:(id)date
{
  dateCopy = date;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_interestChargeDate, date);
    [(PKAccountBillPaymentPayInterestDescriptionView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKAccountBillPaymentPayInterestDescriptionView;
  [(PKAccountBillPaymentPayInterestDescriptionView *)&v18 layoutSubviews];
  [(PKAccountBillPaymentPayInterestDescriptionView *)self _updateLabels];
  _showInterest = [(PKAccountBillPaymentPayInterestDescriptionView *)self _showInterest];
  [(PKAccountBillPaymentPayInterestDescriptionView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  remainder.origin.x = v4;
  remainder.origin.y = v6;
  remainder.size.width = v8;
  remainder.size.height = v10;
  [(PKAccountBillPaymentPayInterestDescriptionView *)self _shouldReverseLayoutDirection:0];
  _UISolariumFeatureFlagEnabled();
  PKContentAlignmentMake();
  [(UITextView *)self->_cancellationView sizeThatFits:v9, 3.40282347e38];
  v13 = v12;
  PKSizeAlignedInRect();
  [(UITextView *)self->_cancellationView setFrame:?];
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  CGRectDivide(v19, &v16, &remainder, v13, CGRectMaxYEdge);
  if (_showInterest)
  {
    CGRectDivide(remainder, &v16, &remainder, 20.0, CGRectMaxYEdge);
    [(UILabel *)self->_estimatedChargeLabel sizeThatFits:v9, 3.40282347e38];
    v15 = v14;
    PKSizeAlignedInRect();
    [(UILabel *)self->_estimatedChargeLabel setFrame:?];
    CGRectDivide(remainder, &v16, &remainder, v15, CGRectMaxYEdge);
    CGRectDivide(remainder, &v16, &remainder, 6.0, CGRectMaxYEdge);
    [(UILabel *)self->_interestLabel sizeThatFits:v9, 3.40282347e38];
    PKSizeAlignedInRect();
    [(UILabel *)self->_interestLabel setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 0.0;
  if ([(PKAccountBillPaymentPayInterestDescriptionView *)self _showInterest])
  {
    [(UILabel *)self->_interestLabel sizeThatFits:width, height];
    v8 = v7 + 0.0 + 6.0;
    [(UILabel *)self->_estimatedChargeLabel sizeThatFits:width, height];
    v6 = v8 + v9 + 20.0;
  }

  [(UITextView *)self->_cancellationView sizeThatFits:width, height];
  v11 = v6 + v10;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained billPaymentPayInterestDescriptionViewHasTappedLearnMore:self];

  return 0;
}

- (BOOL)_showInterest
{
  interest = self->_interest;
  if (interest)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    LOBYTE(interest) = [(NSDecimalNumber *)interest compare:zero]== NSOrderedDescending;
  }

  return interest;
}

- (void)_updateLabels
{
  [(PKAccount *)self->_account feature];
  interest = self->_interest;
  if (!interest)
  {
    goto LABEL_6;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  v5 = [interest compare:zero];

  if (v5 != 1)
  {
    interest = 0;
LABEL_6:
    pk_uppercaseStringForPreferredLocale = 0;
    goto LABEL_9;
  }

  v6 = [(NSDateFormatter *)self->_productDateFormatter stringFromDate:self->_interestChargeDate];
  if (v6)
  {
    v25 = v6;
    PKLocalizedFeatureString();
  }

  else
  {
    PKLocalizedFeatureString();
  }
  v7 = ;
  pk_uppercaseStringForPreferredLocale = [v7 pk_uppercaseStringForPreferredLocale];

  interest = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:self->_interest];

LABEL_9:
  creditDetails = [(PKAccount *)self->_account creditDetails];
  productTimeZone = [creditDetails productTimeZone];

  if (self->_selectedPaymentDate)
  {
    v10 = productTimeZone == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEE8]);
    v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [v12 setTimeZone:productTimeZone];
    v13 = [v12 components:28 fromDate:self->_selectedPaymentDate];
    v14 = [v12 dateFromComponents:v13];
    cancellationDate = self->_cancellationDate;
    self->_cancellationDate = v14;

    v16 = [(NSDate *)self->_cancellationDate dateByAddingTimeInterval:-60.0];
    v17 = self->_cancellationDate;
    self->_cancellationDate = v16;
  }

  if (self->_cancellationDate)
  {
    v18 = [(NSDateFormatter *)self->_localTimeFormatter stringFromDate:?];
    v19 = [(NSDateFormatter *)self->_localDateFormatter stringFromDate:self->_cancellationDate];
    v20 = PKLocalizedFeatureString();

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v20, self->_learnMoreString];
    cancellationView = self->_cancellationView;
    v23 = [(PKAccountBillPaymentPayInterestDescriptionView *)self _learnMoreAttributedStringWithText:v21];
    [(UITextView *)cancellationView setAttributedText:v23];
  }

  [(UILabel *)self->_estimatedChargeLabel setText:pk_uppercaseStringForPreferredLocale];
  [(UILabel *)self->_estimatedChargeLabel sizeToFit];
  [(UILabel *)self->_interestLabel setText:interest];
  [(UILabel *)self->_interestLabel sizeToFit];
  _showInterest = [(PKAccountBillPaymentPayInterestDescriptionView *)self _showInterest];
  [(UILabel *)self->_interestLabel setHidden:!_showInterest];
  [(UILabel *)self->_estimatedChargeLabel setHidden:!_showInterest];
}

- (id)_learnMoreAttributedStringWithText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v5 = [textCopy length];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
    v7 = [textCopy rangeOfString:self->_learnMoreString];
    v9 = v8;
    v10 = _UISolariumFeatureFlagEnabled();
    v11 = *MEMORY[0x1E69DDC38];
    if (v10)
    {
      PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], v11);
    }

    else
    {
      PKFontForDefaultDesign(*MEMORY[0x1E69DDD78], v11, 0x8000, 0);
    }
    v13 = ;
    pk_fixedWidthFont = [v13 pk_fixedWidthFont];

    v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    [v12 pk_addLinkURL:v6 toRange:v7 withColor:v9 isUnderlined:{linkColor, 0}];

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v17 = [defaultParagraphStyle mutableCopy];

    [v17 setLineBreakMode:0];
    [v17 setAlignment:PKOBKTextAlignment()];
    [v12 addAttribute:*MEMORY[0x1E69DB688] value:v17 range:{0, v5}];
    v18 = *MEMORY[0x1E69DB650];
    v19 = PKOBKFooterCaptionTextColor();
    [v12 addAttribute:v18 value:v19 range:{0, v5}];

    [v12 addAttribute:*MEMORY[0x1E69DB648] value:pk_fixedWidthFont range:{0, v5}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PKAccountBillPaymentPayInterestDescriptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end