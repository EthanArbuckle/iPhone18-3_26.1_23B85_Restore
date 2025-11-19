@interface PKDashboardBankConnectItem
+ (BOOL)_isPersonalizedInsightsEnabledForInstitution:(id)a3;
+ (id)_formatAvailableBalanceWithCalculation:(id)a3 forAccountType:(unint64_t)a4;
+ (id)_formatBookedBalanceWithCalculation:(id)a3 forAccountType:(unint64_t)a4;
+ (id)_payActionFor:(id)a3;
+ (id)itemForType:(unint64_t)a3 institution:(id)a4 account:(id)a5 dataProvider:(id)a6;
- (NSString)balanceSubtitle;
- (NSString)balanceTitle;
- (NSString)displayedBalance;
@end

@implementation PKDashboardBankConnectItem

+ (id)itemForType:(unint64_t)a3 institution:(id)a4 account:(id)a5 dataProvider:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(PKDashboardBankConnectItem);
  v14 = v13;
  if (a3 == 1)
  {
    [(PKDashboardBankConnectItem *)v13 setType:1];
    [(PKDashboardBankConnectItem *)v14 setDataProvider:v12];
  }

  else if (!a3)
  {
    [(PKDashboardBankConnectItem *)v13 setType:0];
  }

  -[PKDashboardBankConnectItem setIsPersonalizedInsightsEnabled:](v14, "setIsPersonalizedInsightsEnabled:", [a1 _isPersonalizedInsightsEnabledForInstitution:v10]);
  v15 = [v11 balance];
  [(PKDashboardBankConnectItem *)v14 setHasAccountBalance:v15 != 0];

  v16 = [v11 identifier];
  [(PKDashboardBankConnectItem *)v14 setAccountIdentifier:v16];

  -[PKDashboardBankConnectItem setAccountType:](v14, "setAccountType:", [v11 accountType]);
  -[PKDashboardBankConnectItem setIsAccountEnabled:](v14, "setIsAccountEnabled:", [v11 isAccountEnabled]);
  -[PKDashboardBankConnectItem setIsAccountMismatched:](v14, "setIsAccountMismatched:", [v11 isAccountMismatched]);
  v17 = [a1 _payActionFor:v11];
  [(PKDashboardBankConnectItem *)v14 setPayAction:v17];

  v18 = [v11 balance];

  if (v18)
  {
    v19 = [v11 balance];
    -[PKDashboardBankConnectItem setHasMultipleBalances:](v14, "setHasMultipleBalances:", [v19 hasMultipleBalances]);

    v20 = [v11 balance];
    v21 = [v20 availableBalance];
    v22 = [a1 _formatAvailableBalanceWithCalculation:v21 forAccountType:{objc_msgSend(v11, "accountType")}];
    [(PKDashboardBankConnectItem *)v14 setAvailableBalance:v22];

    v23 = [v11 balance];
    v24 = [v23 bookedBalance];
    v25 = [a1 _formatBookedBalanceWithCalculation:v24 forAccountType:{objc_msgSend(v11, "accountType")}];
    [(PKDashboardBankConnectItem *)v14 setBookedBalance:v25];

    v26 = [v11 balance];
    v27 = [v26 lastUpdatedAt];
    [(PKDashboardBankConnectItem *)v14 setAsOfDate:v27];
  }

  else
  {
    [(PKDashboardBankConnectItem *)v14 setHasMultipleBalances:0];
  }

  if ([v11 accountType] == 1)
  {
    v28 = [v11 creditLimit];

    if (v28)
    {
      v29 = [v11 creditLimit];
      v30 = [v29 formatted];
      [(PKDashboardBankConnectItem *)v14 setCreditLimit:v30];
    }

    v31 = [v11 minimumPaymentAmount];
    if (v31)
    {
      v32 = v31;
      v33 = [v11 minimumPaymentAmount];

      if (v33)
      {
        v34 = [v11 minimumPaymentAmount];
        v35 = [v34 formatted];
        [(PKDashboardBankConnectItem *)v14 setMinimumCreditPayment:v35];
      }
    }

    v36 = [v11 nextPaymentDate];

    if (v36)
    {
      v37 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v38 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
      [v37 setLocale:v38];

      v39 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      [v37 setCalendar:v39];

      [v37 setDateFormat:@"MMM d"];
      v40 = [v11 nextPaymentDate];
      v41 = [v37 stringFromDate:v40];
      [(PKDashboardBankConnectItem *)v14 setPaymentDueDate:v41];
    }

    v42 = [v11 overduePaymentAmount];
    if (v42)
    {
      v43 = v42;
      v44 = [v11 overduePaymentAmount];

      if (v44)
      {
        [(PKDashboardBankConnectItem *)v14 setIsPaymentOverdue:1];
      }
    }
  }

  return v14;
}

+ (id)_payActionFor:(id)a3
{
  v3 = [a3 actions];
  v4 = [v3 payNowURL];

  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PKDashboardBankConnectItem__payActionFor___block_invoke;
    aBlock[3] = &unk_1E8010970;
    v8 = v4;
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

+ (id)_formatAvailableBalanceWithCalculation:(id)a3 forAccountType:(unint64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 amount];
    v7 = [v6 decimal];
    if (v7 && (v8 = v7, v9 = [v5 creditDebitIndicator], v8, v9 == 1))
    {
      v10 = [v6 negate];
      v11 = [v10 formatted];
    }

    else
    {
      v11 = [v6 formatted];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_formatBookedBalanceWithCalculation:(id)a3 forAccountType:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 amount];
    v8 = [v7 decimal];

    if (v8)
    {
      if (a4)
      {
        if (a4 != 1 || [v6 creditDebitIndicator])
        {
          goto LABEL_6;
        }

LABEL_13:
        v11 = [v7 negate];
        v9 = [v11 formatted];

        goto LABEL_7;
      }

      if ([v6 creditDebitIndicator] == 1)
      {
        goto LABEL_13;
      }
    }

LABEL_6:
    v9 = [v7 formatted];
LABEL_7:

    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (BOOL)_isPersonalizedInsightsEnabledForInstitution:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection];

  if (v5 == 1 || !PKBankConnectSpendingSummariesAndHighlightsEnabled())
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 personalizedInsightsEnabled];
  }

  return v6;
}

- (NSString)balanceTitle
{
  v3 = [(PKDashboardBankConnectItem *)self accountType];
  if (v3 != 1)
  {
    if (v3)
    {
      goto LABEL_11;
    }

    v4 = [(PKDashboardBankConnectItem *)self availableBalance];

    if (v4)
    {
      v5 = @"BANK_CONNECT_DASHBOARD_ASSET_ACCOUNT_AVAILABLE_BALANCE_TITLE";
      goto LABEL_12;
    }

    v6 = [(PKDashboardBankConnectItem *)self bookedBalance];

    if (v6)
    {
      v5 = @"BANK_CONNECT_DASHBOARD_ASSET_ACCOUNT_BOOKED_BALANCE_TITLE";
      goto LABEL_12;
    }
  }

  v7 = [(PKDashboardBankConnectItem *)self bookedBalance];

  if (v7)
  {
    v5 = @"BANK_CONNECT_DASHBOARD_LIABILITY_ACCOUNT_BOOKED_BALANCE_TITLE";
    goto LABEL_12;
  }

  v8 = [(PKDashboardBankConnectItem *)self availableBalance];

  if (v8)
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
  v3 = [(PKDashboardBankConnectItem *)self accountType];
  if (v3 == 1)
  {
    v4 = [(PKDashboardBankConnectItem *)self bookedBalance];
    if (!v4)
    {
      v5 = [(PKDashboardBankConnectItem *)self availableBalance];
LABEL_8:
      v6 = v5;
      if (v5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_6:
    v6 = v4;

    goto LABEL_10;
  }

  if (!v3)
  {
    v4 = [(PKDashboardBankConnectItem *)self availableBalance];
    if (!v4)
    {
      v5 = [(PKDashboardBankConnectItem *)self bookedBalance];
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
    v6 = [(PKDashboardBankConnectItem *)self availableBalance];
    v7 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_10.isa, &stru_1F3BD5BF0.isa, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end