@interface PKBusinessChatAccountStateContext
- (PKBusinessChatAccountStateContext)initWithAccount:(id)a3 paymentPass:(id)a4 eligibleForRecoveryPaymentPlan:(BOOL)a5;
- (id)bodyText;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatAccountStateContext

- (PKBusinessChatAccountStateContext)initWithAccount:(id)a3 paymentPass:(id)a4 eligibleForRecoveryPaymentPlan:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKBusinessChatAccountStateContext;
  v11 = [(PKBusinessChatAccountStateContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a3);
    objc_storeStrong(&v12->_paymentPass, a4);
    v12->_eligibleForRecoveryPaymentPlan = a5;
  }

  return v12;
}

- (id)intentParameters
{
  v3 = [(PKAccount *)self->_account state];
  if (v3 <= 1)
  {
    v5 = @"wallet_account_active";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3)
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
    switch(v3)
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
  v7 = [(PKPaymentPass *)self->_paymentPass associatedAccountServiceAccountIdentifier];
  [v6 setObject:v7 forKeyedSubscript:@"accountID"];

  v8 = [v6 copy];

  return v8;
}

- (id)groupParameters
{
  v3 = [(PKAccount *)self->_account state];
  if (v3 <= 1)
  {
    v5 = @"wallet::account::active";
    if (v3 != 1)
    {
      v5 = 0;
    }

    if (v3)
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
    switch(v3)
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
  v3 = [(PKAccount *)self->_account state];
  if (v3 == 4)
  {
    if ([(PKAccount *)self->_account stateReason]== 8 && self->_eligibleForRecoveryPaymentPlan)
    {
      goto LABEL_8;
    }
  }

  else if (v3 == 2 && self->_eligibleForRecoveryPaymentPlan)
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