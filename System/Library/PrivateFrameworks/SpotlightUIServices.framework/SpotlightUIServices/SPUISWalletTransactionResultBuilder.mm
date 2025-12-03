@interface SPUISWalletTransactionResultBuilder
+ (BOOL)supportsResult:(id)result;
- (BOOL)buildSecondaryTitleIsDetached;
- (SPUISWalletTransactionResultBuilder)initWithResult:(id)result;
- (id)buildDescriptions;
- (id)buildSecondaryTitle;
- (id)buildTitle;
- (id)buildTrailingTopText;
@end

@implementation SPUISWalletTransactionResultBuilder

+ (BOOL)supportsResult:(id)result
{
  v11[2] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___SPUISWalletTransactionResultBuilder;
  if (objc_msgSendSuper2(&v10, sel_supportsResult_, resultCopy))
  {
    v11[0] = @"com.apple.finance.transaction";
    v11[1] = @"com.apple.pktransaction";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    contentType = [resultCopy contentType];
    v7 = [v5 containsObject:contentType];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SPUISWalletTransactionResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = SPUISWalletTransactionResultBuilder;
  v5 = [(SPUISResultBuilder *)&v15 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setBusinessName:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2E70] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setTransactionAmount:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2E78] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setCurrencyCode:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2C58] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setDate:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC25D8] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setCashBackPercentage:v10];

    v11 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    v13 = [v11 componentsSeparatedByCharactersInSet:newlineCharacterSet];
    [(SPUISWalletTransactionResultBuilder *)v5 setDescriptions:v13];
  }

  return v5;
}

- (id)buildTitle
{
  businessName = [(SPUISWalletTransactionResultBuilder *)self businessName];
  if ([businessName length])
  {
    v4 = MEMORY[0x277D4C598];
    businessName2 = [(SPUISWalletTransactionResultBuilder *)self businessName];
    buildTitle = [v4 textWithString:businessName2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISWalletTransactionResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v8 buildTitle];
  }

  return buildTitle;
}

- (id)buildDescriptions
{
  descriptions = [(SPUISWalletTransactionResultBuilder *)self descriptions];
  if ([descriptions count] > 1)
  {
    v5 = objc_opt_class();
    descriptions2 = [(SPUISWalletTransactionResultBuilder *)self descriptions];
    buildDescriptions = [v5 richTextsFromStrings:descriptions2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISWalletTransactionResultBuilder;
    buildDescriptions = [(SPUISResultBuilder *)&v8 buildDescriptions];
  }

  return buildDescriptions;
}

- (id)buildSecondaryTitle
{
  descriptions = [(SPUISWalletTransactionResultBuilder *)self descriptions];
  if ([descriptions count] <= 2 && (-[SPUISWalletTransactionResultBuilder transactionAmount](self, "transactionAmount"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    currencyCode = [(SPUISWalletTransactionResultBuilder *)self currencyCode];

    if (currencyCode)
    {
      v7 = MEMORY[0x277D4C3A0];
      transactionAmount = [(SPUISWalletTransactionResultBuilder *)self transactionAmount];
      currencyCode2 = [(SPUISWalletTransactionResultBuilder *)self currencyCode];
      v10 = [SPUISNumberFormatManager currencyStringWithAmount:transactionAmount currencyCode:currencyCode2];
      buildSecondaryTitle = [v7 textWithString:v10];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SPUISWalletTransactionResultBuilder;
  buildSecondaryTitle = [(SPUISResultBuilder *)&v13 buildSecondaryTitle];
LABEL_7:

  return buildSecondaryTitle;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  buildSecondaryTitle = [(SPUISWalletTransactionResultBuilder *)self buildSecondaryTitle];
  text = [buildSecondaryTitle text];
  v4 = [text length] != 0;

  return v4;
}

- (id)buildTrailingTopText
{
  cashBackPercentage = [(SPUISWalletTransactionResultBuilder *)self cashBackPercentage];
  if (cashBackPercentage)
  {
    v4 = MEMORY[0x277D4C3A0];
    cashBackPercentage2 = [(SPUISWalletTransactionResultBuilder *)self cashBackPercentage];
    buildTrailingTopText = [v4 textWithString:cashBackPercentage2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISWalletTransactionResultBuilder;
    buildTrailingTopText = [(SPUISResultBuilder *)&v8 buildTrailingTopText];
  }

  [buildTrailingTopText setEncapsulationStyle:2];

  return buildTrailingTopText;
}

@end