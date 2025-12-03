@interface PKAccountViewInterfaceHelper
+ (id)initialAccountViewControllerWithConfiguration:(id)configuration;
@end

@implementation PKAccountViewInterfaceHelper

+ (id)initialAccountViewControllerWithConfiguration:(id)configuration
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  account = [configurationCopy account];
  accountIdentifier = [account accountIdentifier];

  if (accountIdentifier)
  {
    v6 = PKSavingsLastInterstitialAuthDate();
    account2 = [configurationCopy account];
    if ([account2 FDICBehaviorHideAuthenticationInterstitial])
    {
      v8 = 0;
    }

    else if (v6)
    {
      v9 = [MEMORY[0x1E695DF00] now];
      [v9 timeIntervalSinceDate:v6];
      if (v10 <= 600.0)
      {
        v8 = 0;
      }

      else
      {
        v8 = [configurationCopy isNewAccount] ^ 1;
      }
    }

    else
    {
      v8 = [configurationCopy isNewAccount] ^ 1;
    }

    viewStyle = [configurationCopy viewStyle];
    if (!viewStyle)
    {
      v12 = PKSavingsAccountViewController;
      goto LABEL_16;
    }

    if (viewStyle == 1)
    {
      v12 = PKSavingsAccountDetailsViewController;
LABEL_16:
      v13 = [[v12 alloc] initWithConfiguration:configurationCopy showInterstitial:v8];
      goto LABEL_21;
    }

    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      viewStyle2 = [configurationCopy viewStyle];
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKAccountViewInterfaceHelper: Unhandled viewStyle (%ld)", &v16, 0xCu);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Could not return an initial account view controller because no account was provided on the configuration object", &v16, 2u);
    }
  }

  v13 = 0;
LABEL_21:

  return v13;
}

@end