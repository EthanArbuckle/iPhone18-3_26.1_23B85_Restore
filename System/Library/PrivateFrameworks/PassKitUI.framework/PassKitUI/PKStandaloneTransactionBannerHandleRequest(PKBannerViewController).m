@interface PKStandaloneTransactionBannerHandleRequest(PKBannerViewController)
- (id)createBannerViewController;
@end

@implementation PKStandaloneTransactionBannerHandleRequest(PKBannerViewController)

- (id)createBannerViewController
{
  v2 = [MEMORY[0x1E69B8A58] sharedInstance];
  v3 = [a1 passUniqueIdentifier];
  v4 = [v2 passWithUniqueID:v3];

  v5 = [a1 transactionType];
  if (v5 == 1)
  {
    v6 = @"lock.fill";
    v7 = @"TRANSACTION_LOCKED";
  }

  else
  {
    if (v5 != 2)
    {
      v9 = 0;
LABEL_13:
      v14 = 0;
      goto LABEL_28;
    }

    v6 = @"lock.open.fill";
    v7 = @"TRANSACTION_UNLOCKED";
  }

  v8 = PKLocalizedCredentialString(&v7->isa);
  v9 = v8;
  if (v4)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_13;
  }

  v11 = [v4 secureElementPass];
  v12 = [a1 displayableName];
  if (SBSIsSystemApertureAvailable())
  {
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v16 = [v11 isCarKeyPass];
      v13 = [v4 localizedDescription];
      if (v16)
      {
        v17 = [v4 organizationName];
        v18 = v17;
        if (v13)
        {
          v19 = [v13 length];
          v20 = [v18 length];
          if (v19 > v20 + 1)
          {
            v21 = v20;
            v29 = v20 + 1;
            if ([v13 hasPrefix:v18])
            {
              v22 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v23 = [v22 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", v21)}];

              if (v23)
              {
                v24 = [v13 substringFromIndex:v29];

                v13 = v24;
              }
            }
          }
        }

        else
        {
          v13 = v17;
        }
      }
    }

    v25 = v9;
    v26 = 0;
  }

  else
  {
    v13 = v9;
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = [v4 localizedDescription];
    }

    v25 = v15;
    v26 = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  v27 = [PKPassBannerTrailingViewConfiguration createWithSymbolName:v6 overrideColor:v26];
  v14 = +[PKPassBannerViewController createForTransactionWithPass:primaryText:secondaryText:trailingViewConfiguration:walletForeground:](PKPassBannerViewController, "createForTransactionWithPass:primaryText:secondaryText:trailingViewConfiguration:walletForeground:", v4, v13, v25, v27, [a1 isWalletForeground]);

LABEL_28:
  return v14;
}

@end