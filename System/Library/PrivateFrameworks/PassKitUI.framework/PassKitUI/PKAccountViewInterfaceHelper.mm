@interface PKAccountViewInterfaceHelper
+ (id)initialAccountViewControllerWithConfiguration:(id)a3;
@end

@implementation PKAccountViewInterfaceHelper

+ (id)initialAccountViewControllerWithConfiguration:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 account];
  v5 = [v4 accountIdentifier];

  if (v5)
  {
    v6 = PKSavingsLastInterstitialAuthDate();
    v7 = [v3 account];
    if ([v7 FDICBehaviorHideAuthenticationInterstitial])
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
        v8 = [v3 isNewAccount] ^ 1;
      }
    }

    else
    {
      v8 = [v3 isNewAccount] ^ 1;
    }

    v11 = [v3 viewStyle];
    if (!v11)
    {
      v12 = PKSavingsAccountViewController;
      goto LABEL_16;
    }

    if (v11 == 1)
    {
      v12 = PKSavingsAccountDetailsViewController;
LABEL_16:
      v13 = [[v12 alloc] initWithConfiguration:v3 showInterstitial:v8];
      goto LABEL_21;
    }

    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = [v3 viewStyle];
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