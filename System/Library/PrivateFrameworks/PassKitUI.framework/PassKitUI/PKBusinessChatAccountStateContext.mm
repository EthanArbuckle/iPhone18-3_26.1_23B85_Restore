@interface PKBusinessChatAccountStateContext
- (PKBusinessChatAccountStateContext)initWithAccount:(id)account paymentPass:(id)pass eligibleForRecoveryPaymentPlan:(BOOL)plan;
- (id)bodyText;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatAccountStateContext

- (PKBusinessChatAccountStateContext)initWithAccount:(id)account paymentPass:(id)pass eligibleForRecoveryPaymentPlan:(BOOL)plan
{
  accountCopy = account;
  passCopy = pass;
  v14.receiver = self;
  v14.super_class = PKBusinessChatAccountStateContext;
  v11 = [(PKBusinessChatAccountStateContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_paymentPass, pass);
    v12->_eligibleForRecoveryPaymentPlan = plan;
  }

  return v12;
}

- (id)intentParameters
{
  state = [(PKAccount *)self->_account state];
  if (state <= 1)
  {
    v5 = @"wallet_account_active";
    if (state != 1)
    {
      v5 = 0;
    }

    if (state)
    {
      v4 = v5;
    }

    else
    {
      v4 = @"wallet_account_unknown";
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        if ([(PKAccount *)self->_account stateReason]== 1 && self->_eligibleForRecoveryPaymentPlan)
        {
          v4 = @"wallet_account_delinquent";
        }

        else
        {
          v4 = @"wallet_account_restricted";
        }

        break;
      case 3:
        v4 = @"wallet_account_locked";
        break;
      case 4:
        if ([(PKAccount *)self->_account stateReason]== 8 && self->_eligibleForRecoveryPaymentPlan)
        {
          v4 = @"wallet_account_chargedoff";
        }

        else
        {
          v4 = @"wallet_account_closed";
        }

        break;
      default:
        v4 = 0;
        break;
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:v4 forKeyedSubscript:@"targetDialog"];
  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_paymentPass associatedAccountServiceAccountIdentifier];
  [v6 setObject:associatedAccountServiceAccountIdentifier forKeyedSubscript:@"accountID"];

  v8 = [v6 copy];

  return v8;
}

- (id)groupParameters
{
  state = [(PKAccount *)self->_account state];
  if (state <= 1)
  {
    v5 = @"wallet::account::active";
    if (state != 1)
    {
      v5 = 0;
    }

    if (state)
    {
      v4 = v5;
    }

    else
    {
      v4 = @"wallet::account::unknown";
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        if ([(PKAccount *)self->_account stateReason]== 1 && self->_eligibleForRecoveryPaymentPlan)
        {
          v4 = @"wallet::account::delinquent";
        }

        else
        {
          v4 = @"wallet::account::restricted";
        }

        break;
      case 3:
        v4 = @"wallet::account::locked";
        break;
      case 4:
        if ([(PKAccount *)self->_account stateReason]== 8 && self->_eligibleForRecoveryPaymentPlan)
        {
          v4 = @"wallet::account::chargedoff";
        }

        else
        {
          v4 = @"wallet::account::closed";
        }

        break;
      default:
        v4 = 0;
        break;
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:@"apple_pay" forKeyedSubscript:@"domain"];
  [v6 setObject:@"Wallet" forKeyedSubscript:@"origin"];
  [v6 setObject:v4 forKeyedSubscript:@"page"];
  v7 = [v6 copy];

  return v7;
}

- (id)bodyText
{
  state = [(PKAccount *)self->_account state];
  if (state == 4)
  {
    if ([(PKAccount *)self->_account stateReason]== 8 && self->_eligibleForRecoveryPaymentPlan)
    {
      goto LABEL_8;
    }
  }

  else if (state == 2 && self->_eligibleForRecoveryPaymentPlan)
  {
LABEL_8:
    v4 = PKLocalizedFeatureString();
    goto LABEL_10;
  }

  v4 = PKLocalizedFeatureStringWithDefaultValue();
LABEL_10:

  return v4;
}

@end