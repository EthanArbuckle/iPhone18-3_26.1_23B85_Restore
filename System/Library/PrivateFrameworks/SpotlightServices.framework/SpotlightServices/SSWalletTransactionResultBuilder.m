@interface SSWalletTransactionResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (BOOL)buildSecondaryTitleIsDetached;
- (SSWalletTransactionResultBuilder)initWithResult:(id)a3;
- (id)buildDescriptions;
- (id)buildSecondaryTitle;
- (id)buildTitle;
- (id)buildTrailingTopText;
@end

@implementation SSWalletTransactionResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SSWalletTransactionResultBuilder;
  if (objc_msgSendSuper2(&v10, sel_supportsResult_, v4))
  {
    v11[0] = @"com.apple.finance.transaction";
    v11[1] = @"com.apple.pktransaction";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v6 = [v4 contentType];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (SSWalletTransactionResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SSWalletTransactionResultBuilder;
  v5 = [(SSResultBuilder *)&v15 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setBusinessName:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E69646C0] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setTransactionAmount:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x1E69646C8] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setCurrencyCode:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E69644A8] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setDate:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6963E28] withType:objc_opt_class()];
    [(SSWalletTransactionResultBuilder *)v5 setCashBackPercentage:v10];

    v11 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    v12 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [v11 componentsSeparatedByCharactersInSet:v12];
    [(SSWalletTransactionResultBuilder *)v5 setDescriptions:v13];
  }

  return v5;
}

- (id)buildTitle
{
  v3 = [(SSWalletTransactionResultBuilder *)self businessName];
  if ([v3 length])
  {
    v4 = MEMORY[0x1E69CA3A0];
    v5 = [(SSWalletTransactionResultBuilder *)self businessName];
    v6 = [v4 textWithString:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSWalletTransactionResultBuilder;
    v6 = [(SSResultBuilder *)&v8 buildTitle];
  }

  return v6;
}

- (id)buildDescriptions
{
  v3 = [(SSWalletTransactionResultBuilder *)self descriptions];
  if ([v3 count] > 1)
  {
    v5 = objc_opt_class();
    v6 = [(SSWalletTransactionResultBuilder *)self descriptions];
    v4 = [v5 richTextsFromStrings:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSWalletTransactionResultBuilder;
    v4 = [(SSResultBuilder *)&v8 buildDescriptions];
  }

  return v4;
}

- (id)buildSecondaryTitle
{
  v3 = [(SSWalletTransactionResultBuilder *)self descriptions];
  if ([v3 count] <= 2 && (-[SSWalletTransactionResultBuilder transactionAmount](self, "transactionAmount"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(SSWalletTransactionResultBuilder *)self currencyCode];

    if (v6)
    {
      v7 = MEMORY[0x1E69CA0F0];
      v8 = [(SSWalletTransactionResultBuilder *)self transactionAmount];
      v9 = [(SSWalletTransactionResultBuilder *)self currencyCode];
      v10 = [SSNumberFormatManager currencyStringWithAmount:v8 currencyCode:v9];
      v11 = [v7 textWithString:v10];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SSWalletTransactionResultBuilder;
  v11 = [(SSResultBuilder *)&v13 buildSecondaryTitle];
LABEL_7:

  return v11;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  v2 = [(SSWalletTransactionResultBuilder *)self buildSecondaryTitle];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)buildTrailingTopText
{
  v3 = [(SSWalletTransactionResultBuilder *)self cashBackPercentage];
  if (v3)
  {
    v4 = MEMORY[0x1E69CA0F0];
    v5 = [(SSWalletTransactionResultBuilder *)self cashBackPercentage];
    v6 = [v4 textWithString:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSWalletTransactionResultBuilder;
    v6 = [(SSResultBuilder *)&v8 buildTrailingTopText];
  }

  [v6 setEncapsulationStyle:2];

  return v6;
}

@end