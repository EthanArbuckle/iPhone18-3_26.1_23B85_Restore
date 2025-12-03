@interface PKBusinessChatAccountContext
- (PKBusinessChatAccountContext)initWithAccount:(id)account topic:(id)topic;
- (id)businessIdentifier;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatAccountContext

- (PKBusinessChatAccountContext)initWithAccount:(id)account topic:(id)topic
{
  accountCopy = account;
  topicCopy = topic;
  v12.receiver = self;
  v12.super_class = PKBusinessChatAccountContext;
  v9 = [(PKBusinessChatAccountContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_topic, topic);
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
      businessChatIdentifier = v3;
    }

    else
    {
      savingsDetails = [(PKAccount *)self->_account savingsDetails];
      businessChatIdentifier = [savingsDetails businessChatIdentifier];
    }
  }

  else
  {
    businessChatIdentifier = 0;
  }

  return businessChatIdentifier;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  businessChatTargetDialog = [(PKAccountSupportTopic *)self->_topic businessChatTargetDialog];
  [v3 setObject:businessChatTargetDialog forKeyedSubscript:@"targetDialog"];

  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v3 setObject:accountIdentifier forKeyedSubscript:@"accountID"];

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
  businessChatPage = [(PKAccountSupportTopic *)self->_topic businessChatPage];
  v6[2] = businessChatPage;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

@end