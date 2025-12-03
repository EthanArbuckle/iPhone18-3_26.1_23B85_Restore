@interface SUDownloadPolicyFactory
+ (id)_userDownloadPolicyFromCurrentPolicy:(id)policy descriptor:(id)descriptor networkMonitor:(id)monitor allowCellularOverride:(BOOL)override;
+ (id)downloadPolicyForType:(int)type forDescriptor:(id)descriptor;
+ (int)downloadPolicyTypeForClass:(id)class;
@end

@implementation SUDownloadPolicyFactory

+ (id)_userDownloadPolicyFromCurrentPolicy:(id)policy descriptor:(id)descriptor networkMonitor:(id)monitor allowCellularOverride:(BOOL)override
{
  policyCopy = policy;
  descriptorCopy = descriptor;
  monitorCopy = monitor;
  v13 = monitorCopy;
  if (!descriptorCopy)
  {
    v16 = 0;
    goto LABEL_23;
  }

  if (!monitorCopy)
  {
    v13 = +[SUNetworkMonitor sharedInstance];
  }

  v14 = [self downloadPolicyTypeForClass:policyCopy];
  if (!override)
  {
    v17 = v14;
    isCellularRoaming = [v13 isCellularRoaming];
    isCellularDataRoamingEnabled = [v13 isCellularDataRoamingEnabled];
    if (isCellularRoaming && isCellularDataRoamingEnabled)
    {
      currentNetworkType = [v13 currentNetworkType];
      if (policyCopy)
      {
        v21 = v17 == 0;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      v15 = off_279CA99B0;
      if (currentNetworkType != 1 || (v22 & 1) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (policyCopy && !v17)
    {
      v15 = off_279CA99B0;
      goto LABEL_22;
    }

    v15 = off_279CA99B8;
    goto LABEL_22;
  }

  v15 = off_279CA99A8;
LABEL_22:
  v16 = [objc_alloc(*v15) initWithDescriptor:descriptorCopy];
LABEL_23:

  return v16;
}

+ (id)downloadPolicyForType:(int)type forDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ((type - 1) > 3)
  {
    v6 = off_279CA99B0;
  }

  else
  {
    v6 = off_279CAD008[type - 1];
  }

  v7 = [objc_alloc(*v6) initWithDescriptor:descriptorCopy];

  return v7;
}

+ (int)downloadPolicyTypeForClass:(id)class
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    return 1;
  }

  if (v3 == objc_opt_class())
  {
    return 2;
  }

  if (v3 == objc_opt_class())
  {
    return 3;
  }

  return 4 * (v3 == objc_opt_class());
}

@end