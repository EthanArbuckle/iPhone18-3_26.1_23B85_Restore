@interface PKBusinessChatAccountContext
- (PKBusinessChatAccountContext)initWithAccount:(id)a3 topic:(id)a4;
- (id)businessIdentifier;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatAccountContext

- (PKBusinessChatAccountContext)initWithAccount:(id)a3 topic:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKBusinessChatAccountContext;
  v9 = [(PKBusinessChatAccountContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_topic, a4);
  }

  return v10;
}

- (id)businessIdentifier
{
  if ([(PKAccount *)self->_account type]== 4)
  {
    v3 = PKSavingsBusinessChatIdentifierOverride();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = [(PKAccount *)self->_account savingsDetails];
      v5 = [v6 businessChatIdentifier];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKAccountSupportTopic *)self->_topic businessChatTargetDialog];
  [v3 setObject:v4 forKeyedSubscript:@"targetDialog"];

  v5 = [(PKAccount *)self->_account accountIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"accountID"];

  v6 = [v3 copy];

  return v6;
}

- (id)groupParameters
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"domain";
  v5[1] = @"origin";
  v6[0] = @"apple_pay";
  v6[1] = @"Wallet";
  v5[2] = @"page";
  v2 = [(PKAccountSupportTopic *)self->_topic businessChatPage];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

@end