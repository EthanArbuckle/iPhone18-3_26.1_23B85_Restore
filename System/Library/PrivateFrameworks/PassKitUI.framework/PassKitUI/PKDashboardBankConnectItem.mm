@interface PKDashboardBankConnectItem
+ (BOOL)_isPersonalizedInsightsEnabledForInstitution:(id)institution;
+ (id)_formatAvailableBalanceWithCalculation:(id)calculation forAccountType:(unint64_t)type;
+ (id)_formatBookedBalanceWithCalculation:(id)calculation forAccountType:(unint64_t)type;
+ (id)_payActionFor:(id)for;
+ (id)itemForType:(unint64_t)type institution:(id)institution account:(id)account dataProvider:(id)provider;
- (NSString)balanceSubtitle;
- (NSString)balanceTitle;
- (NSString)displayedBalance;
@end

@implementation PKDashboardBankConnectItem

+ (id)itemForType:(unint64_t)type institution:(id)institution account:(id)account dataProvider:(id)provider
{
  institutionCopy = institution;
  accountCopy = account;
  providerCopy = provider;
  v13 = objc_alloc_init(PKDashboardBankConnectItem);
  v14 = v13;
  if (type == 1)
  {
    [(PKDashboardBankConnectItem *)v13 setType:1];
    [(PKDashboardBankConnectItem *)v14 setDataProvider:providerCopy];
  }

  else if (!type)
  {
    [(PKDashboardBankConnectItem *)v13 setType:0];
  }

  -[PKDashboardBankConnectItem setIsPersonalizedInsightsEnabled:](v14, "setIsPersonalizedInsightsEnabled:", [self _isPersonalizedInsightsEnabledForInstitution:institutionCopy]);
  balance = [accountCopy balance];
  [(PKDashboardBankConnectItem *)v14 setHasAccountBalance:balance != 0];

  identifier = [accountCopy identifier];
  [(PKDashboardBankConnectItem *)v14 setAccountIdentifier:identifier];

  -[PKDashboardBankConnectItem setAccountType:](v14, "setAccountType:", [accountCopy accountType]);
  -[PKDashboardBankConnectItem setIsAccountEnabled:](v14, "setIsAccountEnabled:", [accountCopy isAccountEnabled]);
  -[PKDashboardBankConnectItem setIsAccountMismatched:](v14, "setIsAccountMismatched:", [accountCopy isAccountMismatched]);
  v17 = [self _payActionFor:accountCopy];
  [(PKDashboardBankConnectItem *)v14 setPayAction:v17];

  balance2 = [accountCopy balance];

  if (balance2)
  {
    balance3 = [accountCopy balance];
    -[PKDashboardBankConnectItem setHasMultipleBalances:](v14, "setHasMultipleBalances:", [balance3 hasMultipleBalances]);

    balance4 = [accountCopy balance];
    availableBalance = [balance4 availableBalance];
    v22 = [self _formatAvailableBalanceWithCalculation:availableBalance forAccountType:{objc_msgSend(accountCopy, "accountType")}];
    [(PKDashboardBankConnectItem *)v14 setAvailableBalance:v22];

    balance5 = [accountCopy balance];
    bookedBalance = [balance5 bookedBalance];
    v25 = [self _formatBookedBalanceWithCalculation:bookedBalance forAccountType:{objc_msgSend(accountCopy, "accountType")}];
    [(PKDashboardBankConnectItem *)v14 setBookedBalance:v25];

    balance6 = [accountCopy balance];
    lastUpdatedAt = [balance6 lastUpdatedAt];
    [(PKDashboardBankConnectItem *)v14 setAsOfDate:lastUpdatedAt];
  }

  else
  {
    [(PKDashboardBankConnectItem *)v14 setHasMultipleBalances:0];
  }

  if ([accountCopy accountType] == 1)
  {
    creditLimit = [accountCopy creditLimit];

    if (creditLimit)
    {
      creditLimit2 = [accountCopy creditLimit];
      formatted = [creditLimit2 formatted];
      [(PKDashboardBankConnectItem *)v14 setCreditLimit:formatted];
    }

    minimumPaymentAmount = [accountCopy minimumPaymentAmount];
    if (minimumPaymentAmount)
    {
      v32 = minimumPaymentAmount;
      minimumPaymentAmount2 = [accountCopy minimumPaymentAmount];

      if (minimumPaymentAmount2)
      {
        minimumPaymentAmount3 = [accountCopy minimumPaymentAmount];
        formatted2 = [minimumPaymentAmount3 formatted];
        [(PKDashboardBankConnectItem *)v14 setMinimumCreditPayment:formatted2];
      }
    }

    nextPaymentDate = [accountCopy nextPaymentDate];

    if (nextPaymentDate)
    {
      v37 = objc_alloc_init(MEMORY[0x1E696AB78]);
      autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
      [v37 setLocale:autoupdatingCurrentLocale];

      autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      [v37 setCalendar:autoupdatingCurrentCalendar];

      [v37 setDateFormat:@"MMM d"];
      nextPaymentDate2 = [accountCopy nextPaymentDate];
      v41 = [v37 stringFromDate:nextPaymentDate2];
      [(PKDashboardBankConnectItem *)v14 setPaymentDueDate:v41];
    }

    overduePaymentAmount = [accountCopy overduePaymentAmount];
    if (overduePaymentAmount)
    {
      v43 = overduePaymentAmount;
      overduePaymentAmount2 = [accountCopy overduePaymentAmount];

      if (overduePaymentAmount2)
      {
        [(PKDashboardBankConnectItem *)v14 setIsPaymentOverdue:1];
      }
    }
  }

  return v14;
}

+ (id)_payActionFor:(id)for
{
  actions = [for actions];
  payNowURL = [actions payNowURL];

  if (payNowURL)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PKDashboardBankConnectItem__payActionFor___block_invoke;
    aBlock[3] = &unk_1E8010970;
    v8 = payNowURL;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __44__PKDashboardBankConnectItem__payActionFor___block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69B8540];
  v1 = *MEMORY[0x1E69BB6F8];
  v2 = *MEMORY[0x1E69BA6F0];
  v3 = *MEMORY[0x1E69BA440];
  v7[0] = *MEMORY[0x1E69BA680];
  v7[1] = v3;
  v4 = *MEMORY[0x1E69BACB8];
  v8[0] = v2;
  v8[1] = v4;
  v7[2] = *MEMORY[0x1E69BABE8];
  v8[2] = *MEMORY[0x1E69BA3C8];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v0 subject:v1 sendEvent:v5];

  return PKOpenURL();
}

void __44__PKDashboardBankConnectItem__payActionFor___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_1BD026000, v2, OS_LOG_TYPE_ERROR, "Failed to perform a pay bill action", v3, 2u);
    }
  }
}

+ (id)_formatAvailableBalanceWithCalculation:(id)calculation forAccountType:(unint64_t)type
{
  calculationCopy = calculation;
  v5 = calculationCopy;
  if (calculationCopy)
  {
    amount = [calculationCopy amount];
    decimal = [amount decimal];
    if (decimal && (v8 = decimal, v9 = [v5 creditDebitIndicator], v8, v9 == 1))
    {
      negate = [amount negate];
      formatted = [negate formatted];
    }

    else
    {
      formatted = [amount formatted];
    }
  }

  else
  {
    formatted = 0;
  }

  return formatted;
}

+ (id)_formatBookedBalanceWithCalculation:(id)calculation forAccountType:(unint64_t)type
{
  calculationCopy = calculation;
  v6 = calculationCopy;
  if (calculationCopy)
  {
    amount = [calculationCopy amount];
    decimal = [amount decimal];

    if (decimal)
    {
      if (type)
      {
        if (type != 1 || [v6 creditDebitIndicator])
        {
          goto LABEL_6;
        }

LABEL_13:
        negate = [amount negate];
        formatted = [negate formatted];

        goto LABEL_7;
      }

      if ([v6 creditDebitIndicator] == 1)
      {
        goto LABEL_13;
      }
    }

LABEL_6:
    formatted = [amount formatted];
LABEL_7:

    goto LABEL_9;
  }

  formatted = 0;
LABEL_9:

  return formatted;
}

+ (BOOL)_isPersonalizedInsightsEnabledForInstitution:(id)institution
{
  institutionCopy = institution;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1 || !PKBankConnectSpendingSummariesAndHighlightsEnabled())
  {
    personalizedInsightsEnabled = 0;
  }

  else
  {
    personalizedInsightsEnabled = [institutionCopy personalizedInsightsEnabled];
  }

  return personalizedInsightsEnabled;
}

- (NSString)balanceTitle
{
  accountType = [(PKDashboardBankConnectItem *)self accountType];
  if (accountType != 1)
  {
    if (accountType)
    {
      goto LABEL_11;
    }

    availableBalance = [(PKDashboardBankConnectItem *)self availableBalance];

    if (availableBalance)
    {
      v5 = @"BANK_CONNECT_DASHBOARD_ASSET_ACCOUNT_AVAILABLE_BALANCE_TITLE";
      goto LABEL_12;
    }

    bookedBalance = [(PKDashboardBankConnectItem *)self bookedBalance];

    if (bookedBalance)
    {
      v5 = @"BANK_CONNECT_DASHBOARD_ASSET_ACCOUNT_BOOKED_BALANCE_TITLE";
      goto LABEL_12;
    }
  }

  bookedBalance2 = [(PKDashboardBankConnectItem *)self bookedBalance];

  if (bookedBalance2)
  {
    v5 = @"BANK_CONNECT_DASHBOARD_LIABILITY_ACCOUNT_BOOKED_BALANCE_TITLE";
    goto LABEL_12;
  }

  availableBalance2 = [(PKDashboardBankConnectItem *)self availableBalance];

  if (availableBalance2)
  {
    v5 = @"BANK_CONNECT_DASHBOARD_LIABILITY_ACCOUNT_AVAILABLE_CREDIT_TITLE";
    goto LABEL_12;
  }

LABEL_11:
  v5 = @"BANK_CONNECT_DASHBOARD_UNAVAILABLE_BALANCE_TITLE";
LABEL_12:
  v9 = PKLocalizedBankConnectString(&v5->isa);

  return v9;
}

- (NSString)displayedBalance
{
  accountType = [(PKDashboardBankConnectItem *)self accountType];
  if (accountType == 1)
  {
    bookedBalance = [(PKDashboardBankConnectItem *)self bookedBalance];
    if (!bookedBalance)
    {
      availableBalance = [(PKDashboardBankConnectItem *)self availableBalance];
LABEL_8:
      v6 = availableBalance;
      if (availableBalance)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_6:
    v6 = bookedBalance;

    goto LABEL_10;
  }

  if (!accountType)
  {
    bookedBalance = [(PKDashboardBankConnectItem *)self availableBalance];
    if (!bookedBalance)
    {
      availableBalance = [(PKDashboardBankConnectItem *)self bookedBalance];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_9:
  v6 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_9.isa);
LABEL_10:

  return v6;
}

- (NSString)balanceSubtitle
{
  if ([(PKDashboardBankConnectItem *)self accountType]&& ([(PKDashboardBankConnectItem *)self bookedBalance], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, [(PKDashboardBankConnectItem *)self availableBalance], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    availableBalance = [(PKDashboardBankConnectItem *)self availableBalance];
    v7 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_10.isa, &stru_1F3BD5BF0.isa, availableBalance);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end