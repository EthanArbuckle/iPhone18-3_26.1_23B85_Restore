@interface MANAutoAssetSetPolicy
- (MANAutoAssetSetPolicy)init;
- (MANAutoAssetSetPolicy)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
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

- (MANAutoAssetSetPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetPolicy;
  v5 = [(MANAutoAssetSetPolicy *)&v11 init];
  if (v5)
  {
    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
    v5->_lockInhibitsEmergencyRemoval = [v4 decodeBoolForKey:@"lockInhibitsEmergencyRemoval"];
    v5->_supportingShortTermLocks = [v4 decodeBoolForKey:@"supportingShortTermLocks"];
    v5->_allowCheckDownloadOnBattery = [v4 decodeBoolForKey:@"allowCheckDownloadOnBattery"];
    v5->_allowCheckDownloadWhenBatteryLow = [v4 decodeBoolForKey:@"allowCheckDownloadWhenBatteryLow"];
    v5->_allowCheckDownloadWhenCPUHigh = [v4 decodeBoolForKey:@"allowCheckDownloadWhenCPUHigh"];
    v5->_allowCheckDownloadOverExpensive = [v4 decodeBoolForKey:@"allowCheckDownloadOverExpensive"];
    v5->_allowCheckDownloadOverCellular = [v4 decodeBoolForKey:@"allowCheckDownloadOverCellular"];
    v5->_blockCheckDownload = [v4 decodeBoolForKey:@"blockCheckDownload"];
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

    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"additionalPolicyControl"];
    additionalPolicyControl = v5->_additionalPolicyControl;
    v5->_additionalPolicyControl = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[MANAutoAssetSetPolicy userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy lockInhibitsEmergencyRemoval](self forKey:{"lockInhibitsEmergencyRemoval"), @"lockInhibitsEmergencyRemoval"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy supportingShortTermLocks](self forKey:{"supportingShortTermLocks"), @"supportingShortTermLocks"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadOnBattery](self forKey:{"allowCheckDownloadOnBattery"), @"allowCheckDownloadOnBattery"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadWhenBatteryLow](self forKey:{"allowCheckDownloadWhenBatteryLow"), @"allowCheckDownloadWhenBatteryLow"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadWhenCPUHigh](self forKey:{"allowCheckDownloadWhenCPUHigh"), @"allowCheckDownloadWhenCPUHigh"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadOverExpensive](self forKey:{"allowCheckDownloadOverExpensive"), @"allowCheckDownloadOverExpensive"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy allowCheckDownloadOverCellular](self forKey:{"allowCheckDownloadOverCellular"), @"allowCheckDownloadOverCellular"}];
  [v4 encodeBool:-[MANAutoAssetSetPolicy blockCheckDownload](self forKey:{"blockCheckDownload"), @"blockCheckDownload"}];
  v5 = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
  [v4 encodeObject:v5 forKey:@"additionalPolicyControl"];
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
  v4 = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
  v5 = [v4 copy];
  [(MANAutoAssetSetPolicy *)v3 setAdditionalPolicyControl:v5];

  return v3;
}

- (id)description
{
  v3 = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];

  [(MANAutoAssetSetPolicy *)self summary];
  if (v3)
    v4 = {;
    v5 = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
    v6 = [v5 description];
    v7 = [NSString stringWithFormat:@"%@|additional:\n%@", v4, v6];
  }

  else
    v7 = {;
  }

  return v7;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetPolicy *)self additionalPolicyControl];
  v4 = @"(w/additional)";
  if (!v3)
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