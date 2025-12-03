@interface PKBusinessChatPassDetailsContext
- (PKBusinessChatPassDetailsContext)initWithPass:(id)pass;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatPassDetailsContext

- (PKBusinessChatPassDetailsContext)initWithPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKBusinessChatPassDetailsContext;
  v6 = [(PKBusinessChatPassDetailsContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"wallet_pass_message" forKeyedSubscript:@"targetDialog"];
  uniqueID = [(PKPass *)self->_pass uniqueID];
  [v3 setObject:uniqueID forKeyedSubscript:@"passUniqueId"];

  paymentPass = [(PKPass *)self->_pass paymentPass];
  associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];
  [v3 setObject:associatedAccountServiceAccountIdentifier forKeyedSubscript:@"accountID"];

  v7 = [v3 copy];

  return v7;
}

- (id)groupParameters
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"domain";
  v4[1] = @"origin";
  v5[0] = @"apple_pay";
  v5[1] = @"Wallet";
  v4[2] = @"page";
  v5[2] = @"wallet::pass::message";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end