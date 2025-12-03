@interface MANAutoAssetSetPolicy
- (MANAutoAssetSetPolicy)init;
- (MANAutoAssetSetPolicy)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetPolicy

- (MANAutoAssetSetPolicy)init
{
  v6.receiver = self;
  v6.super_class = MANAutoAssetSetPolicy;
  v2 = [(MANAutoAssetSetPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_blockCheckDownload = 0;
    *&v2->_userInitiated = 0;
    additionalPolicyControl = v2->_additionalPolicyControl;
    v2->_additionalPolicyControl = 0;
  }

  return v3;
}

- (MANAutoAssetSetPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetPolicy;
  v5 = [(MANAutoAssetSetPolicy *)&v11 init];
  if (v5)
  {
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_lockInhibitsEmergencyRemoval = [coderCopy decodeBoolForKey:@"lockInhibitsEmergencyRemoval"];
    v5->_supportingShortTermLocks = [coderCopy decodeBoolForKey:@"supportingShortTermLocks"];
    v5->_allowCheckDownloadOnBattery = [coderCopy decodeBoolForKey:@"allowCheckDownloadOnBattery"];
    v5->_allowCheckDownloadWhenBatteryLow = [coderCopy decodeBoolForKey:@"allowCheckDownloadWhenBatteryLow"];
    v5->_allowCheckDownloadWhenCPUHigh = [coderCopy decodeBoolForKey:@"allowCheckDownloadWhenCPUHigh"];
    v5->_allowCheckDownloadOverExpensive = [coderCopy decodeBoolForKey:@"allowCheckDownloadOverExpensive"];
    v5->_allowCheckDownloadOverCellular = [coderCopy decodeBoolForKey:@"allowCheckDownloadOverCellular"];
    v5->_blockCheckDownload = [coderCopy decodeBoolForKey:@"blockCheckDownload"];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v12[3] = objc_opt_class();
    v12[4] = objc_opt_class();
    v12[5] = objc_opt_class();
    v12[6] = objc_opt_class();
    v12[7] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v12 count:8];
    v7 = [NSSet setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"additionalPolicyControl"];
    additionalPolicyControl = v5->_additionalPolicyControl;
    v5->_additionalPolicyControl = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy lockInhibitsEmergencyRemoval](self forKey:{"lockInhibitsEmergencyRemoval"), @"lockInhibitsEmergencyRemoval"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy supportingShortTermLocks](self forKey:{"supportingShortTermLocks"), @"supportingShortTermLocks"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadOnBattery](self forKey:{"allowCheckDownloadOnBattery"), @"allowCheckDownloadOnBattery"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadWhenBatteryLow](self forKey:{"allowCheckDownloadWhenBatteryLow"), @"allowCheckDownloadWhenBatteryLow"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadWhenCPUHigh](self forKey:{"allowCheckDownloadWhenCPUHigh"), @"allowCheckDownloadWhenCPUHigh"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadOverExpensive](self forKey:{"allowCheckDownloadOverExpensive"), @"allowCheckDownloadOverExpensive"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadOverCellular](self forKey:{"allowCheckDownloadOverCellular"), @"allowCheckDownloadOverCellular"}];
  [coderCopy encodeBool:-[MANAutoAssetSetPolicy blockCheckDownload](self forKey:{"blockCheckDownload"), @"blockCheckDownload"}];
  additionalPolicyControl = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
  [coderCopy encodeObject:additionalPolicyControl forKey:@"additionalPolicyControl"];
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetSetPolicy);
  [(MANAutoAssetSetPolicy *)v3 setUserInitiated:[(MANAutoAssetSetPolicy *)self userInitiated]];
  [(MANAutoAssetSetPolicy *)v3 setLockInhibitsEmergencyRemoval:[(MANAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval]];
  [(MANAutoAssetSetPolicy *)v3 setSupportingShortTermLocks:[(MANAutoAssetSetPolicy *)self supportingShortTermLocks]];
  [(MANAutoAssetSetPolicy *)v3 setAllowCheckDownloadOnBattery:[(MANAutoAssetSetPolicy *)self allowCheckDownloadOnBattery]];
  [(MANAutoAssetSetPolicy *)v3 setAllowCheckDownloadWhenBatteryLow:[(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow]];
  [(MANAutoAssetSetPolicy *)v3 setAllowCheckDownloadWhenCPUHigh:[(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh]];
  [(MANAutoAssetSetPolicy *)v3 setAllowCheckDownloadOverExpensive:[(MANAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive]];
  [(MANAutoAssetSetPolicy *)v3 setAllowCheckDownloadOverCellular:[(MANAutoAssetSetPolicy *)self allowCheckDownloadOverCellular]];
  [(MANAutoAssetSetPolicy *)v3 setBlockCheckDownload:[(MANAutoAssetSetPolicy *)self blockCheckDownload]];
  additionalPolicyControl = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
  v5 = [additionalPolicyControl copy];
  [(MANAutoAssetSetPolicy *)v3 setAdditionalPolicyControl:v5];

  return v3;
}

- (id)description
{
  additionalPolicyControl = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];

  [(MANAutoAssetSetPolicy *)self summary];
  if (additionalPolicyControl)
    v4 = {;
    additionalPolicyControl2 = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
    v6 = [additionalPolicyControl2 description];
    v7 = [NSString stringWithFormat:@"%@|additional:\n%@", v4, v6];
  }

  else
    v7 = {;
  }

  return v7;
}

- (id)summary
{
  additionalPolicyControl = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
  v4 = @"(w/additional)";
  if (!additionalPolicyControl)
  {
    v4 = &stru_4BD3F0;
  }

  v5 = v4;

  v6 = @"N";
  if ([(MANAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval]&& [(MANAutoAssetSetPolicy *)self supportingShortTermLocks]&& [(MANAutoAssetSetPolicy *)self allowCheckDownloadOnBattery]&& [(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow]&& [(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh]&& [(MANAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive]&& [(MANAutoAssetSetPolicy *)self allowCheckDownloadOverCellular]&& [(MANAutoAssetSetPolicy *)self blockCheckDownload])
  {
    v7 = @"allOtherBool:Y";
  }

  else if ([(MANAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval]|| [(MANAutoAssetSetPolicy *)self supportingShortTermLocks]|| [(MANAutoAssetSetPolicy *)self allowCheckDownloadOnBattery]|| [(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow]|| [(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh]|| [(MANAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive]|| [(MANAutoAssetSetPolicy *)self allowCheckDownloadOverCellular]|| [(MANAutoAssetSetPolicy *)self blockCheckDownload])
  {
    v19 = [NSString alloc];
    if ([(MANAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    v18 = v8;
    if ([(MANAutoAssetSetPolicy *)self supportingShortTermLocks])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    if ([(MANAutoAssetSetPolicy *)self allowCheckDownloadOnBattery])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    if ([(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    if ([(MANAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh])
    {
      v12 = @"Y";
    }

    else
    {
      v12 = @"N";
    }

    if ([(MANAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive])
    {
      v13 = @"Y";
    }

    else
    {
      v13 = @"N";
    }

    if ([(MANAutoAssetSetPolicy *)self allowCheckDownloadOverCellular])
    {
      v6 = @"Y";
    }

    if ([(MANAutoAssetSetPolicy *)self blockCheckDownload])
    {
      v14 = @"Y";
    }

    else
    {
      v14 = @"N";
    }

    v7 = [v19 initWithFormat:@"|lockInhibitsRemoval:%@|supportingShortTermLocks:%@|allowCheckDownload(OnBattery:%@, WhenBatteryLow:%@, WhenCPUHigh:%@, OverExpensive:%@, OverCellular:%@)|blockCheckDownload:%@|", v18, v9, v10, v11, v12, v13, v6, v14];
  }

  else
  {
    v7 = @"allOtherBool:N";
  }

  if ([(MANAutoAssetSetPolicy *)self userInitiated])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v16 = [NSString stringWithFormat:@"user:%@|%@%@", v15, v7, v5];

  return v16;
}

@end