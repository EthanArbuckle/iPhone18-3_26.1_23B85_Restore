@interface SPUISWalletTransactionResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (BOOL)buildSecondaryTitleIsDetached;
- (SPUISWalletTransactionResultBuilder)initWithResult:(id)a3;
- (id)buildDescriptions;
- (id)buildSecondaryTitle;
- (id)buildTitle;
- (id)buildTrailingTopText;
@end

@implementation SPUISWalletTransactionResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SPUISWalletTransactionResultBuilder;
  if (objc_msgSendSuper2(&v10, sel_supportsResult_, v4))
  {
    v11[0] = @"com.apple.finance.transaction";
    v11[1] = @"com.apple.pktransaction";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v6 = [v4 contentType];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SPUISWalletTransactionResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SPUISWalletTransactionResultBuilder;
  v5 = [(SPUISResultBuilder *)&v15 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setBusinessName:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2E70] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setTransactionAmount:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC2E78] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setCurrencyCode:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2C58] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setDate:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC25D8] withType:objc_opt_class()];
    [(SPUISWalletTransactionResultBuilder *)v5 setCashBackPercentage:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    v12 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v13 = [v11 componentsSeparatedByCharactersInSet:v12];
    [(SPUISWalletTransactionResultBuilder *)v5 setDescriptions:v13];
  }

  return v5;
}

- (id)buildTitle
{
  v3 = [(SPUISWalletTransactionResultBuilder *)self businessName];
  if ([v3 length])
  {
    v4 = MEMORY[0x277D4C598];
    v5 = [(SPUISWalletTransactionResultBuilder *)self businessName];
    v6 = [v4 textWithString:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISWalletTransactionResultBuilder;
    v6 = [(SPUISResultBuilder *)&v8 buildTitle];
  }

  return v6;
}

- (id)buildDescriptions
{
  v3 = [(SPUISWalletTransactionResultBuilder *)self descriptions];
  if ([v3 count] > 1)
  {
    v5 = objc_opt_class();
    v6 = [(SPUISWalletTransactionResultBuilder *)self descriptions];
    v4 = [v5 richTextsFromStrings:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISWalletTransactionResultBuilder;
    v4 = [(SPUISResultBuilder *)&v8 buildDescriptions];
  }

  return v4;
}

- (id)buildSecondaryTitle
{
  v3 = [(SPUISWalletTransactionResultBuilder *)self descriptions];
  if ([v3 count] <= 2 && (-[SPUISWalletTransactionResultBuilder transactionAmount](self, "transactionAmount"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(SPUISWalletTransactionResultBuilder *)self currencyCode];

    if (v6)
    {
      v7 = MEMORY[0x277D4C3A0];
      v8 = [(SPUISWalletTransactionResultBuilder *)self transactionAmount];
      v9 = [(SPUISWalletTransactionResultBuilder *)self currencyCode];
      v10 = [SPUISNumberFormatManager currencyStringWithAmount:v8 currencyCode:v9];
      v11 = [v7 textWithString:v10];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SPUISWalletTransactionResultBuilder;
  v11 = [(SPUISResultBuilder *)&v13 buildSecondaryTitle];
LABEL_7:

  return v11;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  v2 = [(SPUISWalletTransactionResultBuilder *)self buildSecondaryTitle];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)buildTrailingTopText
{
  v3 = [(SPUISWalletTransactionResultBuilder *)self cashBackPercentage];
  if (v3)
  {
    v4 = MEMORY[0x277D4C3A0];
    v5 = [(SPUISWalletTransactionResultBuilder *)self cashBackPercentage];
    v6 = [v4 textWithString:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISWalletTransactionResultBuilder;
    v6 = [(SPUISResultBuilder *)&v8 buildTrailingTopText];
  }

  [v6 setEncapsulationStyle:2];

  return v6;
}

@end