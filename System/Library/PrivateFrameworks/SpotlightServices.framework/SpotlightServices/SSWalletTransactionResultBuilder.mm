@interface SSWalletTransactionResultBuilder
+ (BOOL)supportsResult:(id)result;
- (BOOL)buildSecondaryTitleIsDetached;
- (SSWalletTransactionResultBuilder)initWithResult:(id)result;
- (id)buildDescriptions;
- (id)buildSecondaryTitle;
- (id)buildTitle;
- (id)buildTrailingTopText;
@end

@implementation SSWalletTransactionResultBuilder

+ (BOOL)supportsResult:(id)result
{
  v11[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___SSWalletTransactionResultBuilder;
  if (objc_msgSendSuper2(&v10, sel_supportsResult_, resultCopy))
  {
    v11[0] = @"com.apple.finance.transaction";
    v11[1] = @"com.apple.pktransaction";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    contentType = [resultCopy contentType];
    v7 = [v5 containsObject:contentType];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (SSWalletTransactionResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = SSWalletTransactionResultBuilder;
  v5 = [(SSResultBuilder *)&v15 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setBusinessName:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E69646C0] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setTransactionAmount:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E69646C8] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setCurrencyCode:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E69644A8] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setDate:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E28] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setCashBackPercentage:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [v11 componentsSeparatedByCharactersInSet:newlineCharacterSet];
    [(SSWalletTransactionResultBuilder *)v5 setDescriptions:v13];
  }

  return v5;
}

- (id)buildTitle
{
  businessName = [(SSWalletTransactionResultBuilder *)self businessName];
  if ([businessName length])
  {
    v4 = MEMORY[0x1E69CA3A0];
    businessName2 = [(SSWalletTransactionResultBuilder *)self businessName];
    buildTitle = [v4 textWithString:businessName2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSWalletTransactionResultBuilder;
    buildTitle = [(SSResultBuilder *)&v8 buildTitle];
  }

  return buildTitle;
}

- (id)buildDescriptions
{
  descriptions = [(SSWalletTransactionResultBuilder *)self descriptions];
  if ([descriptions count] > 1)
  {
    v5 = objc_opt_class();
    descriptions2 = [(SSWalletTransactionResultBuilder *)self descriptions];
    buildDescriptions = [v5 richTextsFromStrings:descriptions2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSWalletTransactionResultBuilder;
    buildDescriptions = [(SSResultBuilder *)&v8 buildDescriptions];
  }

  return buildDescriptions;
}

- (id)buildSecondaryTitle
{
  descriptions = [(SSWalletTransactionResultBuilder *)self descriptions];
  if ([descriptions count] <= 2 && (-[SSWalletTransactionResultBuilder transactionAmount](self, "transactionAmount"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    currencyCode = [(SSWalletTransactionResultBuilder *)self currencyCode];

    if (currencyCode)
    {
      v7 = MEMORY[0x1E69CA0F0];
      transactionAmount = [(SSWalletTransactionResultBuilder *)self transactionAmount];
      currencyCode2 = [(SSWalletTransactionResultBuilder *)self currencyCode];
      v10 = [SSNumberFormatManager currencyStringWithAmount:transactionAmount currencyCode:currencyCode2];
      buildSecondaryTitle = [v7 textWithString:v10];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SSWalletTransactionResultBuilder;
  buildSecondaryTitle = [(SSResultBuilder *)&v13 buildSecondaryTitle];
LABEL_7:

  return buildSecondaryTitle;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  buildSecondaryTitle = [(SSWalletTransactionResultBuilder *)self buildSecondaryTitle];
  text = [buildSecondaryTitle text];
  v4 = [text length] != 0;

  return v4;
}

- (id)buildTrailingTopText
{
  cashBackPercentage = [(SSWalletTransactionResultBuilder *)self cashBackPercentage];
  if (cashBackPercentage)
  {
    v4 = MEMORY[0x1E69CA0F0];
    cashBackPercentage2 = [(SSWalletTransactionResultBuilder *)self cashBackPercentage];
    buildTrailingTopText = [v4 textWithString:cashBackPercentage2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSWalletTransactionResultBuilder;
    buildTrailingTopText = [(SSResultBuilder *)&v8 buildTrailingTopText];
  }

  [buildTrailingTopText setEncapsulationStyle:2];

  return buildTrailingTopText;
}

@end