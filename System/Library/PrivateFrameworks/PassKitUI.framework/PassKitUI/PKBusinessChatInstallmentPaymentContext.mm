@interface PKBusinessChatInstallmentPaymentContext
- (PKBusinessChatInstallmentPaymentContext)initWithAccount:(id)account paymentPass:(id)pass;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatInstallmentPaymentContext

- (PKBusinessChatInstallmentPaymentContext)initWithAccount:(id)account paymentPass:(id)pass
{
  accountCopy = account;
  passCopy = pass;
  v12.receiver = self;
  v12.super_class = PKBusinessChatInstallmentPaymentContext;
  v9 = [(PKBusinessChatInstallmentPaymentContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_paymentPass, pass);
  }

  return v10;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"wallet_installments_payment" forKeyedSubscript:@"targetDialog"];
  uniqueID = [(PKPaymentPass *)self->_paymentPass uniqueID];
  [v3 setObject:uniqueID forKeyedSubscript:@"passUniqueId"];

  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_paymentPass associatedAccountServiceAccountIdentifier];
  [v3 setObject:associatedAccountServiceAccountIdentifier forKeyedSubscript:@"accountID"];

  v6 = [v3 copy];

  return v6;
}

- (id)groupParameters
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"domain";
  v4[1] = @"origin";
  v5[0] = @"apple_pay";
  v5[1] = @"Wallet";
  v4[2] = @"page";
  v5[2] = @"wallet::installments::payment";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end