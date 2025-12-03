@interface PKStandaloneTransactionBannerHandleRequest(PKBannerViewController)
- (id)createBannerViewController;
@end

@implementation PKStandaloneTransactionBannerHandleRequest(PKBannerViewController)

- (id)createBannerViewController
{
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  passUniqueIdentifier = [self passUniqueIdentifier];
  v4 = [mEMORY[0x1E69B8A58] passWithUniqueID:passUniqueIdentifier];

  transactionType = [self transactionType];
  if (transactionType == 1)
  {
    v6 = @"lock.fill";
    v7 = @"TRANSACTION_LOCKED";
  }

  else
  {
    if (transactionType != 2)
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

  secureElementPass = [v4 secureElementPass];
  displayableName = [self displayableName];
  if (SBSIsSystemApertureAvailable())
  {
    if (displayableName)
    {
      localizedDescription = displayableName;
    }

    else
    {
      isCarKeyPass = [secureElementPass isCarKeyPass];
      localizedDescription = [v4 localizedDescription];
      if (isCarKeyPass)
      {
        organizationName = [v4 organizationName];
        v18 = organizationName;
        if (localizedDescription)
        {
          v19 = [localizedDescription length];
          v20 = [v18 length];
          if (v19 > v20 + 1)
          {
            v21 = v20;
            v29 = v20 + 1;
            if ([localizedDescription hasPrefix:v18])
            {
              whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v23 = [whitespaceCharacterSet characterIsMember:{objc_msgSend(localizedDescription, "characterAtIndex:", v21)}];

              if (v23)
              {
                v24 = [localizedDescription substringFromIndex:v29];

                localizedDescription = v24;
              }
            }
          }
        }

        else
        {
          localizedDescription = organizationName;
        }
      }
    }

    v25 = v9;
    systemWhiteColor = 0;
  }

  else
  {
    localizedDescription = v9;
    if (displayableName)
    {
      localizedDescription2 = displayableName;
    }

    else
    {
      localizedDescription2 = [v4 localizedDescription];
    }

    v25 = localizedDescription2;
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  v27 = [PKPassBannerTrailingViewConfiguration createWithSymbolName:v6 overrideColor:systemWhiteColor];
  v14 = +[PKPassBannerViewController createForTransactionWithPass:primaryText:secondaryText:trailingViewConfiguration:walletForeground:](PKPassBannerViewController, "createForTransactionWithPass:primaryText:secondaryText:trailingViewConfiguration:walletForeground:", v4, localizedDescription, v25, v27, [self isWalletForeground]);

LABEL_28:
  return v14;
}

@end