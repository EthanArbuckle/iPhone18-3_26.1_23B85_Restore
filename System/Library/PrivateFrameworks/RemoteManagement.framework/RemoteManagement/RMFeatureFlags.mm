@interface RMFeatureFlags
+ (BOOL)isAllowedDeclarationType:(id)type;
+ (BOOL)isAllowedStatusItem:(id)item;
+ (BOOL)isAllowedXPCServiceName:(id)name;
@end

@implementation RMFeatureFlags

+ (BOOL)isAllowedXPCServiceName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"DiskManagementSubscriber"])
  {
    v4 = +[RMFeatureFlags isDiskManagementSubscriberEnabled];
  }

  else if ([nameCopy isEqualToString:@"ManagedAppsSubscriber"])
  {
    v4 = +[RMFeatureFlags isManagedAppsEnabled];
  }

  else if ([nameCopy isEqualToString:@"NetworkEAPSubscriber"])
  {
    v4 = +[RMFeatureFlags isNetworkEAPConfigurationEnabled];
  }

  else
  {
    if (![nameCopy isEqualToString:@"NetworkWiFiSubscriber"])
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

+ (BOOL)isAllowedDeclarationType:(id)type
{
  typeCopy = type;
  v4 = +[RMModelAppManagedDeclaration registeredIdentifier];
  v5 = [typeCopy isEqualToString:v4];

  if (v5)
  {
    v6 = +[RMFeatureFlags isManagedAppsEnabled];
  }

  else
  {
    v7 = +[RMModelAppMarketplaceDeclaration registeredIdentifier];
    v8 = [typeCopy isEqualToString:v7];

    if (v8)
    {
      v6 = +[RMFeatureFlags isAppDistributionPVEnabled];
    }

    else
    {
      v9 = +[RMModelNetworkEAPDeclaration registeredIdentifier];
      v10 = [typeCopy isEqualToString:v9];

      if (v10)
      {
        v6 = +[RMFeatureFlags isNetworkEAPConfigurationEnabled];
      }

      else
      {
        v11 = +[RMModelNetworkWiFiDeclaration registeredIdentifier];
        v12 = [typeCopy isEqualToString:v11];

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

+ (BOOL)isAllowedStatusItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isEqualToString:RMModelStatusItemAppManagedList])
  {
    v4 = +[RMFeatureFlags isManagedAppsEnabled];
  }

  else
  {
    if (![itemCopy isEqualToString:RMModelStatusItemDiskManagementFileVaultEnabled])
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