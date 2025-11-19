@interface RMFeatureFlags
+ (BOOL)isAllowedDeclarationType:(id)a3;
+ (BOOL)isAllowedStatusItem:(id)a3;
+ (BOOL)isAllowedXPCServiceName:(id)a3;
@end

@implementation RMFeatureFlags

+ (BOOL)isAllowedXPCServiceName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DiskManagementSubscriber"])
  {
    v4 = +[RMFeatureFlags isDiskManagementSubscriberEnabled];
  }

  else if ([v3 isEqualToString:@"ManagedAppsSubscriber"])
  {
    v4 = +[RMFeatureFlags isManagedAppsEnabled];
  }

  else if ([v3 isEqualToString:@"NetworkEAPSubscriber"])
  {
    v4 = +[RMFeatureFlags isNetworkEAPConfigurationEnabled];
  }

  else
  {
    if (![v3 isEqualToString:@"NetworkWiFiSubscriber"])
    {
      v5 = 1;
      goto LABEL_10;
    }

    v4 = +[RMFeatureFlags isNetworkWiFiConfigurationEnabled];
  }

  v5 = v4;
LABEL_10:

  return v5;
}

+ (BOOL)isAllowedDeclarationType:(id)a3
{
  v3 = a3;
  v4 = +[RMModelAppManagedDeclaration registeredIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = +[RMFeatureFlags isManagedAppsEnabled];
  }

  else
  {
    v7 = +[RMModelAppMarketplaceDeclaration registeredIdentifier];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = +[RMFeatureFlags isAppDistributionPVEnabled];
    }

    else
    {
      v9 = +[RMModelNetworkEAPDeclaration registeredIdentifier];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v6 = +[RMFeatureFlags isNetworkEAPConfigurationEnabled];
      }

      else
      {
        v11 = +[RMModelNetworkWiFiDeclaration registeredIdentifier];
        v12 = [v3 isEqualToString:v11];

        if (!v12)
        {
          v13 = 1;
          goto LABEL_10;
        }

        v6 = +[RMFeatureFlags isNetworkWiFiConfigurationEnabled];
      }
    }
  }

  v13 = v6;
LABEL_10:

  return v13;
}

+ (BOOL)isAllowedStatusItem:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:RMModelStatusItemAppManagedList])
  {
    v4 = +[RMFeatureFlags isManagedAppsEnabled];
  }

  else
  {
    if (![v3 isEqualToString:RMModelStatusItemDiskManagementFileVaultEnabled])
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = +[RMFeatureFlags isDiskManagementSubscriberEnabled];
  }

  v5 = v4;
LABEL_7:

  return v5;
}

@end