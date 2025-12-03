@interface PKPaymentNotificationAppURLHelper
+ (BOOL)applicationExistsToHandleNotificationsForPaymentPass:(id)pass;
+ (id)_appURLForNotificationOfType:(id)type paymentPass:(id)pass serviceIdentifier:(id)identifier appLaunchToken:(id)token pathSuffix:(id)suffix usingDeviceAccountNumber:(BOOL)number;
+ (id)appURLForMessageNotification:(id)notification pass:(id)pass appLaunchToken:(id)token;
+ (id)appURLForTransactionNotification:(id)notification excludeTransactionIdentifier:(BOOL)identifier pass:(id)pass pathSuffix:(id)suffix appLaunchToken:(id)token;
+ (id)appURLForTransactionNotification:(id)notification pass:(id)pass appLaunchToken:(id)token;
@end

@implementation PKPaymentNotificationAppURLHelper

+ (id)appURLForMessageNotification:(id)notification pass:(id)pass appLaunchToken:(id)token
{
  tokenCopy = token;
  passCopy = pass;
  notificationCopy = notification;
  serviceIdentifier = [notificationCopy serviceIdentifier];
  hasAssociatedPaymentApplication = [notificationCopy hasAssociatedPaymentApplication];

  v13 = [self _appURLForNotificationOfType:@"messages" paymentPass:passCopy serviceIdentifier:serviceIdentifier appLaunchToken:tokenCopy pathSuffix:0 usingDeviceAccountNumber:hasAssociatedPaymentApplication];

  return v13;
}

+ (id)appURLForTransactionNotification:(id)notification pass:(id)pass appLaunchToken:(id)token
{
  tokenCopy = token;
  passCopy = pass;
  notificationCopy = notification;
  serviceIdentifier = [notificationCopy serviceIdentifier];
  hasAssociatedPaymentApplication = [notificationCopy hasAssociatedPaymentApplication];

  v13 = [self _appURLForNotificationOfType:@"transactions" paymentPass:passCopy serviceIdentifier:serviceIdentifier appLaunchToken:tokenCopy pathSuffix:0 usingDeviceAccountNumber:hasAssociatedPaymentApplication];

  return v13;
}

+ (id)appURLForTransactionNotification:(id)notification excludeTransactionIdentifier:(BOOL)identifier pass:(id)pass pathSuffix:(id)suffix appLaunchToken:(id)token
{
  notificationCopy = notification;
  passCopy = pass;
  suffixCopy = suffix;
  tokenCopy = token;
  if (identifier)
  {
    serviceIdentifier = 0;
  }

  else
  {
    serviceIdentifier = [notificationCopy serviceIdentifier];
  }

  v17 = [self _appURLForNotificationOfType:@"transactions" paymentPass:passCopy serviceIdentifier:serviceIdentifier appLaunchToken:tokenCopy pathSuffix:suffixCopy usingDeviceAccountNumber:{objc_msgSend(notificationCopy, "hasAssociatedPaymentApplication")}];

  return v17;
}

+ (BOOL)applicationExistsToHandleNotificationsForPaymentPass:(id)pass
{
  v31 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  appURLScheme = [passCopy appURLScheme];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", appURLScheme];
  v7 = [v5 URLWithString:v6];

  associatedApplicationIdentifiers = [passCopy associatedApplicationIdentifiers];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v10 = [defaultWorkspace applicationsAvailableForOpeningURL:v7];

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
    v24 = appURLScheme;
    v25 = passCopy;
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
        teamID = [v16 teamID];
        bundleIdentifier = [v16 bundleIdentifier];
        v20 = [v17 stringWithFormat:@"%@.%@", teamID, bundleIdentifier];

        LOBYTE(bundleIdentifier) = [associatedApplicationIdentifiers containsObject:v20];
        if (bundleIdentifier)
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
    appURLScheme = v24;
    passCopy = v25;
    v7 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_appURLForNotificationOfType:(id)type paymentPass:(id)pass serviceIdentifier:(id)identifier appLaunchToken:(id)token pathSuffix:(id)suffix usingDeviceAccountNumber:(BOOL)number
{
  typeCopy = type;
  passCopy = pass;
  identifierCopy = identifier;
  tokenCopy = token;
  suffixCopy = suffix;
  if ([self applicationExistsToHandleNotificationsForPaymentPass:passCopy])
  {
    appURLScheme = [passCopy appURLScheme];
    if (appURLScheme)
    {
      if (number)
      {
        deviceAccountIdentifier = [passCopy deviceAccountIdentifier];
        v21 = @"dpan";
      }

      else
      {
        deviceAccountIdentifier = [passCopy primaryAccountIdentifier];
        v21 = @"fpan";
      }

      typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@/%@/%@", appURLScheme, v21, deviceAccountIdentifier, typeCopy];
      v24 = typeCopy;
      if (identifierCopy)
      {
        identifierCopy = [typeCopy stringByAppendingFormat:@"/%@", identifierCopy];

        v24 = identifierCopy;
      }

      if (suffixCopy)
      {
        v26 = [v24 stringByAppendingString:suffixCopy];

        v24 = v26;
      }

      if (tokenCopy)
      {
        tokenCopy = [v24 stringByAppendingFormat:@"?token=%@", tokenCopy];

        v24 = tokenCopy;
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