@interface PKPaymentNotificationAppURLHelper
+ (BOOL)applicationExistsToHandleNotificationsForPaymentPass:(id)a3;
+ (id)_appURLForNotificationOfType:(id)a3 paymentPass:(id)a4 serviceIdentifier:(id)a5 appLaunchToken:(id)a6 pathSuffix:(id)a7 usingDeviceAccountNumber:(BOOL)a8;
+ (id)appURLForMessageNotification:(id)a3 pass:(id)a4 appLaunchToken:(id)a5;
+ (id)appURLForTransactionNotification:(id)a3 excludeTransactionIdentifier:(BOOL)a4 pass:(id)a5 pathSuffix:(id)a6 appLaunchToken:(id)a7;
+ (id)appURLForTransactionNotification:(id)a3 pass:(id)a4 appLaunchToken:(id)a5;
@end

@implementation PKPaymentNotificationAppURLHelper

+ (id)appURLForMessageNotification:(id)a3 pass:(id)a4 appLaunchToken:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 serviceIdentifier];
  v12 = [v10 hasAssociatedPaymentApplication];

  v13 = [a1 _appURLForNotificationOfType:@"messages" paymentPass:v9 serviceIdentifier:v11 appLaunchToken:v8 pathSuffix:0 usingDeviceAccountNumber:v12];

  return v13;
}

+ (id)appURLForTransactionNotification:(id)a3 pass:(id)a4 appLaunchToken:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 serviceIdentifier];
  v12 = [v10 hasAssociatedPaymentApplication];

  v13 = [a1 _appURLForNotificationOfType:@"transactions" paymentPass:v9 serviceIdentifier:v11 appLaunchToken:v8 pathSuffix:0 usingDeviceAccountNumber:v12];

  return v13;
}

+ (id)appURLForTransactionNotification:(id)a3 excludeTransactionIdentifier:(BOOL)a4 pass:(id)a5 pathSuffix:(id)a6 appLaunchToken:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v12 serviceIdentifier];
  }

  v17 = [a1 _appURLForNotificationOfType:@"transactions" paymentPass:v13 serviceIdentifier:v16 appLaunchToken:v15 pathSuffix:v14 usingDeviceAccountNumber:{objc_msgSend(v12, "hasAssociatedPaymentApplication")}];

  return v17;
}

+ (BOOL)applicationExistsToHandleNotificationsForPaymentPass:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 appURLScheme];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", v4];
  v7 = [v5 URLWithString:v6];

  v8 = [v3 associatedApplicationIdentifiers];
  v9 = [MEMORY[0x1E6963608] defaultWorkspace];
  v10 = [v9 applicationsAvailableForOpeningURL:v7];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v23 = v7;
    v24 = v4;
    v25 = v3;
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v16 teamID];
        v19 = [v16 bundleIdentifier];
        v20 = [v17 stringWithFormat:@"%@.%@", v18, v19];

        LOBYTE(v19) = [v8 containsObject:v20];
        if (v19)
        {
          v21 = 1;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_11:
    v4 = v24;
    v3 = v25;
    v7 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_appURLForNotificationOfType:(id)a3 paymentPass:(id)a4 serviceIdentifier:(id)a5 appLaunchToken:(id)a6 pathSuffix:(id)a7 usingDeviceAccountNumber:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([a1 applicationExistsToHandleNotificationsForPaymentPass:v15])
  {
    v19 = [v15 appURLScheme];
    if (v19)
    {
      if (a8)
      {
        v20 = [v15 deviceAccountIdentifier];
        v21 = @"dpan";
      }

      else
      {
        v20 = [v15 primaryAccountIdentifier];
        v21 = @"fpan";
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@/%@/%@", v19, v21, v20, v14];
      v24 = v23;
      if (v16)
      {
        v25 = [v23 stringByAppendingFormat:@"/%@", v16];

        v24 = v25;
      }

      if (v18)
      {
        v26 = [v24 stringByAppendingString:v18];

        v24 = v26;
      }

      if (v17)
      {
        v27 = [v24 stringByAppendingFormat:@"?token=%@", v17];

        v24 = v27;
      }

      v22 = [MEMORY[0x1E695DFF8] URLWithString:v24];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end