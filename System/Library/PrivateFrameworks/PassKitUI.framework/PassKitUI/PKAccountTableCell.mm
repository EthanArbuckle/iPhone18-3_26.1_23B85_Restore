@interface PKAccountTableCell
+ (BOOL)isShowingBalanceForAccount:(id)account;
+ (id)subtitleColorForAccount:(id)account;
+ (id)subtitleForAccount:(id)account;
- (id)_accessoryForAccount:(id)account;
- (id)_titleForAccount:(id)account;
- (void)_configureCellForAccount:(id)account;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PKAccountTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PKAccountTableCell;
  specifierCopy = specifier;
  [(PSSubtitleDisclosureTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{@"pkAccount", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(PKAccountTableCell *)self _configureCellForAccount:v5];
  }
}

- (void)_configureCellForAccount:(id)account
{
  accountCopy = account;
  textLabel = [(PKAccountTableCell *)self textLabel];
  v6 = [(PKAccountTableCell *)self _titleForAccount:accountCopy];
  [textLabel setText:v6];

  detailTextLabel = [(PKAccountTableCell *)self detailTextLabel];
  v7 = [objc_opt_class() subtitleForAccount:accountCopy];
  [detailTextLabel setText:v7];

  v8 = [objc_opt_class() subtitleColorForAccount:accountCopy];
  [detailTextLabel setTextColor:v8];

  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD38], *MEMORY[0x1E69DDC20]);
  [detailTextLabel setFont:v9];

  imageView = [(PKAccountTableCell *)self imageView];
  [imageView setContentMode:2];
  layer = [imageView layer];
  [layer setCornerRadius:6.0];

  layer2 = [imageView layer];
  [layer2 setMasksToBounds:1];

  v13 = [(PKAccountTableCell *)self _accessoryForAccount:accountCopy];

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

- (id)_titleForAccount:(id)account
{
  if ([account feature] == 5)
  {
    v3 = PKLocalizedFeatureString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessoryForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy feature] == 5 && PKSavingsAccountIsThresholdExceededActive())
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

+ (id)subtitleColorForAccount:(id)account
{
  if (([account state] & 0xFFFFFFFFFFFFFFFELL) == 2)
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

+ (id)subtitleForAccount:(id)account
{
  accountCopy = account;
  [accountCopy feature];
  state = [accountCopy state];
  if (state == 3 || state == 2)
  {
    goto LABEL_14;
  }

  if (state != 1 || ![self isShowingBalanceForAccount:accountCopy])
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ([accountCopy type] == 4)
  {
    savingsDetails = [accountCopy savingsDetails];
    accountSummary = [savingsDetails accountSummary];
    currencyCode = [savingsDetails currencyCode];
    currentBalance = [accountSummary currentBalance];
  }

  else
  {
    currentBalance = 0;
    currencyCode = 0;
  }

  if (![currencyCode length] || !currentBalance || objc_msgSend(currentBalance, "pk_isNotANumber"))
  {

LABEL_14:
    v10 = PKLocalizedFeatureString();
    goto LABEL_15;
  }

  v12 = PKCurrencyAmountMake();
  formattedStringValue = [v12 formattedStringValue];
  v10 = PKLocalizedFeatureString();

LABEL_15:

  return v10;
}

+ (BOOL)isShowingBalanceForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy state] == 1)
  {
    if (PKSavingsFDICSignageEnabled())
    {
      fDICBehaviorShowSettingsBalance = [accountCopy FDICBehaviorShowSettingsBalance];
    }

    else
    {
      fDICBehaviorShowSettingsBalance = 1;
    }
  }

  else
  {
    fDICBehaviorShowSettingsBalance = 0;
  }

  return fDICBehaviorShowSettingsBalance;
}

@end