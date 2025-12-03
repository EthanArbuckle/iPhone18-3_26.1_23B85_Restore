@interface PKBusinessChatPhysicalCardContext
- (PKBusinessChatPhysicalCardContext)initWithPaymentPass:(id)pass intent:(int64_t)intent;
- (id)bodyText;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatPhysicalCardContext

- (PKBusinessChatPhysicalCardContext)initWithPaymentPass:(id)pass intent:(int64_t)intent
{
  passCopy = pass;
  v11.receiver = self;
  v11.super_class = PKBusinessChatPhysicalCardContext;
  v8 = [(PKBusinessChatPhysicalCardContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_paymentPass, pass);
    v9->_intent = intent;
  }

  return v9;
}

- (id)intentParameters
{
  intent = self->_intent;
  if (intent > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E8013458[intent];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:v4 forKeyedSubscript:@"targetDialog"];
  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_paymentPass associatedAccountServiceAccountIdentifier];
  [v5 setObject:associatedAccountServiceAccountIdentifier forKeyedSubscript:@"accountID"];

  v7 = [v5 copy];

  return v7;
}

- (id)groupParameters
{
  v7[3] = *MEMORY[0x1E69E9840];
  intent = self->_intent;
  if (intent > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8013498[intent];
  }

  v6[0] = @"domain";
  v6[1] = @"origin";
  v7[0] = @"apple_pay";
  v7[1] = @"Wallet";
  v6[2] = @"page";
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)bodyText
{
  v3 = 0;
  intent = self->_intent;
  if (intent > 4)
  {
    if ((intent - 6) < 2 || intent == 5)
    {
      goto LABEL_8;
    }
  }

  else if (!intent || intent == 3 || intent == 4)
  {
LABEL_8:
    v3 = PKLocalizedFeatureStringWithDefaultValue();
  }

  return v3;
}

@end