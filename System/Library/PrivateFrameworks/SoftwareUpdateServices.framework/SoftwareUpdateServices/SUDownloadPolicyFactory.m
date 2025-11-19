@interface SUDownloadPolicyFactory
+ (id)_userDownloadPolicyFromCurrentPolicy:(id)a3 descriptor:(id)a4 networkMonitor:(id)a5 allowCellularOverride:(BOOL)a6;
+ (id)downloadPolicyForType:(int)a3 forDescriptor:(id)a4;
+ (int)downloadPolicyTypeForClass:(id)a3;
@end

@implementation SUDownloadPolicyFactory

+ (id)_userDownloadPolicyFromCurrentPolicy:(id)a3 descriptor:(id)a4 networkMonitor:(id)a5 allowCellularOverride:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11)
  {
    v16 = 0;
    goto LABEL_23;
  }

  if (!v12)
  {
    v13 = +[SUNetworkMonitor sharedInstance];
  }

  v14 = [a1 downloadPolicyTypeForClass:v10];
  if (!a6)
  {
    v17 = v14;
    v18 = [v13 isCellularRoaming];
    v19 = [v13 isCellularDataRoamingEnabled];
    if (v18 && v19)
    {
      v20 = [v13 currentNetworkType];
      if (v10)
      {
        v21 = v17 == 0;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      v15 = off_279CA99B0;
      if (v20 != 1 || (v22 & 1) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (v10 && !v17)
    {
      v15 = off_279CA99B0;
      goto LABEL_22;
    }

    v15 = off_279CA99B8;
    goto LABEL_22;
  }

  v15 = off_279CA99A8;
LABEL_22:
  v16 = [objc_alloc(*v15) initWithDescriptor:v11];
LABEL_23:

  return v16;
}

+ (id)downloadPolicyForType:(int)a3 forDescriptor:(id)a4
{
  v5 = a4;
  if ((a3 - 1) > 3)
  {
    v6 = off_279CA99B0;
  }

  else
  {
    v6 = off_279CAD008[a3 - 1];
  }

  v7 = [objc_alloc(*v6) initWithDescriptor:v5];

  return v7;
}

+ (int)downloadPolicyTypeForClass:(id)a3
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