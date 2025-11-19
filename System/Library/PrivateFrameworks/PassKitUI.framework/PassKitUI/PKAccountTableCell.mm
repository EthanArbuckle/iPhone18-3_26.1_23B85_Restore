@interface PKAccountTableCell
+ (BOOL)isShowingBalanceForAccount:(id)a3;
+ (id)subtitleColorForAccount:(id)a3;
+ (id)subtitleForAccount:(id)a3;
- (id)_accessoryForAccount:(id)a3;
- (id)_titleForAccount:(id)a3;
- (void)_configureCellForAccount:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PKAccountTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKAccountTableCell;
  v4 = a3;
  [(PSSubtitleDisclosureTableCell *)&v6 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{@"pkAccount", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(PKAccountTableCell *)self _configureCellForAccount:v5];
  }
}

- (void)_configureCellForAccount:(id)a3
{
  v4 = a3;
  v5 = [(PKAccountTableCell *)self textLabel];
  v6 = [(PKAccountTableCell *)self _titleForAccount:v4];
  [v5 setText:v6];

  v14 = [(PKAccountTableCell *)self detailTextLabel];
  v7 = [objc_opt_class() subtitleForAccount:v4];
  [v14 setText:v7];

  v8 = [objc_opt_class() subtitleColorForAccount:v4];
  [v14 setTextColor:v8];

  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD38], *MEMORY[0x1E69DDC20]);
  [v14 setFont:v9];

  v10 = [(PKAccountTableCell *)self imageView];
  [v10 setContentMode:2];
  v11 = [v10 layer];
  [v11 setCornerRadius:6.0];

  v12 = [v10 layer];
  [v12 setMasksToBounds:1];

  v13 = [(PKAccountTableCell *)self _accessoryForAccount:v4];

  if (v13)
  {
    [(PKAccountTableCell *)self setAccessoryView:v13];
  }

  else
  {
    [(PKAccountTableCell *)self setAccessoryView:0];
    [(PKAccountTableCell *)self setAccessoryType:1];
  }
}

- (id)_titleForAccount:(id)a3
{
  if ([a3 feature] == 5)
  {
    v3 = PKLocalizedFeatureString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessoryForAccount:(id)a3
{
  v3 = a3;
  if ([v3 feature] == 5 && PKSavingsAccountIsThresholdExceededActive())
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v4];
    v6 = [v5 imageWithRenderingMode:1];

    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)subtitleColorForAccount:(id)a3
{
  if (([a3 state] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

+ (id)subtitleForAccount:(id)a3
{
  v4 = a3;
  [v4 feature];
  v5 = [v4 state];
  if (v5 == 3 || v5 == 2)
  {
    goto LABEL_14;
  }

  if (v5 != 1 || ![a1 isShowingBalanceForAccount:v4])
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ([v4 type] == 4)
  {
    v6 = [v4 savingsDetails];
    v7 = [v6 accountSummary];
    v8 = [v6 currencyCode];
    v9 = [v7 currentBalance];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (![v8 length] || !v9 || objc_msgSend(v9, "pk_isNotANumber"))
  {

LABEL_14:
    v10 = PKLocalizedFeatureString();
    goto LABEL_15;
  }

  v12 = PKCurrencyAmountMake();
  v13 = [v12 formattedStringValue];
  v10 = PKLocalizedFeatureString();

LABEL_15:

  return v10;
}

+ (BOOL)isShowingBalanceForAccount:(id)a3
{
  v3 = a3;
  if ([v3 state] == 1)
  {
    if (PKSavingsFDICSignageEnabled())
    {
      v4 = [v3 FDICBehaviorShowSettingsBalance];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end