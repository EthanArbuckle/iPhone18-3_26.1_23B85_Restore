@interface PKBusinessChatPassDetailsContext
- (PKBusinessChatPassDetailsContext)initWithPass:(id)a3;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatPassDetailsContext

- (PKBusinessChatPassDetailsContext)initWithPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKBusinessChatPassDetailsContext;
  v6 = [(PKBusinessChatPassDetailsContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
  }

  return v7;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"wallet_pass_message" forKeyedSubscript:@"targetDialog"];
  v4 = [(PKPass *)self->_pass uniqueID];
  [v3 setObject:v4 forKeyedSubscript:@"passUniqueId"];

  v5 = [(PKPass *)self->_pass paymentPass];
  v6 = [v5 associatedAccountServiceAccountIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"accountID"];

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