@interface MADAutoSetPolicy
- (BOOL)isEqual:(id)a3;
- (MADAutoSetPolicy)init;
- (MADAutoSetPolicy)initWithCoder:(id)a3;
- (id)copy;
- (id)initFromAutoAssetSetPolicy:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetPolicy

- (MADAutoSetPolicy)init
{
  v3.receiver = self;
  v3.super_class = MADAutoSetPolicy;
  result = [(MADAutoSetPolicy *)&v3 init];
  if (result)
  {
    *&result->_userInitiated = 0;
  }

  return result;
}

- (id)initFromAutoAssetSetPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADAutoSetPolicy;
  v5 = [(MADAutoSetPolicy *)&v7 init];
  if (v5)
  {
    v5->_userInitiated = [v4 userInitiated];
    v5->_lockInhibitsEmergencyRemoval = [v4 lockInhibitsEmergencyRemoval];
    v5->_allowCheckDownloadOnBattery = [v4 allowCheckDownloadOnBattery];
    v5->_allowCheckDownloadWhenBatteryLow = [v4 allowCheckDownloadWhenBatteryLow];
    v5->_allowCheckDownloadWhenCPUHigh = [v4 allowCheckDownloadWhenCPUHigh];
    v5->_allowCheckDownloadOverExpensive = [v4 allowCheckDownloadOverExpensive];
    v5->_allowCheckDownloadOverCellular = [v4 allowCheckDownloadOverCellular];
    v5->_blockCheckDownload = [v4 blockCheckDownload];
  }

  return v5;
}

- (MADAutoSetPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADAutoSetPolicy;
  v5 = [(MADAutoSetPolicy *)&v7 init];
  if (v5)
  {
    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
    v5->_lockInhibitsEmergencyRemoval = [v4 decodeBoolForKey:@"lockInhibitsEmergencyRemoval"];
    v5->_allowCheckDownloadOnBattery = [v4 decodeBoolForKey:@"allowCheckDownloadOnBattery"];
    v5->_allowCheckDownloadWhenBatteryLow = [v4 decodeBoolForKey:@"allowCheckDownloadWhenBatteryLow"];
    v5->_allowCheckDownloadWhenCPUHigh = [v4 decodeBoolForKey:@"allowCheckDownloadWhenCPUHigh"];
    v5->_allowCheckDownloadOverExpensive = [v4 decodeBoolForKey:@"allowCheckDownloadOverExpensive"];
    v5->_allowCheckDownloadOverCellular = [v4 decodeBoolForKey:@"allowCheckDownloadOverCellular"];
    v5->_blockCheckDownload = [v4 decodeBoolForKey:@"blockCheckDownload"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[MADAutoSetPolicy userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [v4 encodeBool:-[MADAutoSetPolicy lockInhibitsEmergencyRemoval](self forKey:{"lockInhibitsEmergencyRemoval"), @"lockInhibitsEmergencyRemoval"}];
  [v4 encodeBool:-[MADAutoSetPolicy allowCheckDownloadOnBattery](self forKey:{"allowCheckDownloadOnBattery"), @"allowCheckDownloadOnBattery"}];
  [v4 encodeBool:-[MADAutoSetPolicy allowCheckDownloadWhenBatteryLow](self forKey:{"allowCheckDownloadWhenBatteryLow"), @"allowCheckDownloadWhenBatteryLow"}];
  [v4 encodeBool:-[MADAutoSetPolicy allowCheckDownloadWhenCPUHigh](self forKey:{"allowCheckDownloadWhenCPUHigh"), @"allowCheckDownloadWhenCPUHigh"}];
  [v4 encodeBool:-[MADAutoSetPolicy allowCheckDownloadOverExpensive](self forKey:{"allowCheckDownloadOverExpensive"), @"allowCheckDownloadOverExpensive"}];
  [v4 encodeBool:-[MADAutoSetPolicy allowCheckDownloadOverCellular](self forKey:{"allowCheckDownloadOverCellular"), @"allowCheckDownloadOverCellular"}];
  [v4 encodeBool:-[MADAutoSetPolicy blockCheckDownload](self forKey:{"blockCheckDownload"), @"blockCheckDownload"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MADAutoSetPolicy);
  [(MADAutoSetPolicy *)v3 setUserInitiated:[(MADAutoSetPolicy *)self userInitiated]];
  [(MADAutoSetPolicy *)v3 setLockInhibitsEmergencyRemoval:[(MADAutoSetPolicy *)self lockInhibitsEmergencyRemoval]];
  [(MADAutoSetPolicy *)v3 setAllowCheckDownloadOnBattery:[(MADAutoSetPolicy *)self allowCheckDownloadOnBattery]];
  [(MADAutoSetPolicy *)v3 setAllowCheckDownloadWhenBatteryLow:[(MADAutoSetPolicy *)self allowCheckDownloadWhenBatteryLow]];
  [(MADAutoSetPolicy *)v3 setAllowCheckDownloadWhenCPUHigh:[(MADAutoSetPolicy *)self allowCheckDownloadWhenCPUHigh]];
  [(MADAutoSetPolicy *)v3 setAllowCheckDownloadOverExpensive:[(MADAutoSetPolicy *)self allowCheckDownloadOverExpensive]];
  [(MADAutoSetPolicy *)v3 setAllowCheckDownloadOverCellular:[(MADAutoSetPolicy *)self allowCheckDownloadOverCellular]];
  [(MADAutoSetPolicy *)v3 setBlockCheckDownload:[(MADAutoSetPolicy *)self blockCheckDownload]];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MADAutoSetPolicy *)v5 userInitiated];
      if (v6 == [(MADAutoSetPolicy *)self userInitiated]&& (v7 = [(MADAutoSetPolicy *)v5 lockInhibitsEmergencyRemoval], v7 == [(MADAutoSetPolicy *)self lockInhibitsEmergencyRemoval]) && (v8 = [(MADAutoSetPolicy *)v5 allowCheckDownloadOnBattery], v8 == [(MADAutoSetPolicy *)self allowCheckDownloadOnBattery]) && (v9 = [(MADAutoSetPolicy *)v5 allowCheckDownloadWhenBatteryLow], v9 == [(MADAutoSetPolicy *)self allowCheckDownloadWhenBatteryLow]) && (v10 = [(MADAutoSetPolicy *)v5 allowCheckDownloadWhenCPUHigh], v10 == [(MADAutoSetPolicy *)self allowCheckDownloadWhenCPUHigh]) && (v11 = [(MADAutoSetPolicy *)v5 allowCheckDownloadOverExpensive], v11 == [(MADAutoSetPolicy *)self allowCheckDownloadOverExpensive]) && (v12 = [(MADAutoSetPolicy *)v5 allowCheckDownloadOverCellular], v12 == [(MADAutoSetPolicy *)self allowCheckDownloadOverCellular]))
      {
        v15 = [(MADAutoSetPolicy *)v5 blockCheckDownload];
        v13 = v15 ^ [(MADAutoSetPolicy *)self blockCheckDownload]^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)summary
{
  if ([(MADAutoSetPolicy *)self lockInhibitsEmergencyRemoval]&& [(MADAutoSetPolicy *)self allowCheckDownloadOnBattery]&& [(MADAutoSetPolicy *)self allowCheckDownloadWhenBatteryLow]&& [(MADAutoSetPolicy *)self allowCheckDownloadWhenCPUHigh]&& [(MADAutoSetPolicy *)self allowCheckDownloadOverExpensive]&& [(MADAutoSetPolicy *)self allowCheckDownloadOverCellular]&& [(MADAutoSetPolicy *)self blockCheckDownload])
  {
    v3 = @"allOtherBool:Y";
  }

  else if ([(MADAutoSetPolicy *)self lockInhibitsEmergencyRemoval]|| [(MADAutoSetPolicy *)self allowCheckDownloadOnBattery]|| [(MADAutoSetPolicy *)self allowCheckDownloadWhenBatteryLow]|| [(MADAutoSetPolicy *)self allowCheckDownloadWhenCPUHigh]|| [(MADAutoSetPolicy *)self allowCheckDownloadOverExpensive]|| [(MADAutoSetPolicy *)self allowCheckDownloadOverCellular]|| [(MADAutoSetPolicy *)self blockCheckDownload])
  {
    v14 = [NSString alloc];
    if ([(MADAutoSetPolicy *)self lockInhibitsEmergencyRemoval])
    {
      v4 = @"Y";
    }

    else
    {
      v4 = @"N";
    }

    if ([(MADAutoSetPolicy *)self allowCheckDownloadOnBattery])
    {
      v5 = @"Y";
    }

    else
    {
      v5 = @"N";
    }

    if ([(MADAutoSetPolicy *)self allowCheckDownloadWhenBatteryLow])
    {
      v6 = @"Y";
    }

    else
    {
      v6 = @"N";
    }

    if ([(MADAutoSetPolicy *)self allowCheckDownloadWhenCPUHigh])
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    if ([(MADAutoSetPolicy *)self allowCheckDownloadOverExpensive])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    if ([(MADAutoSetPolicy *)self allowCheckDownloadOverCellular])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    if ([(MADAutoSetPolicy *)self blockCheckDownload])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    v3 = [v14 initWithFormat:@"|lockInhibitsRemoval:%@|allowCheckDownload(OnBattery:%@, WhenBatteryLow:%@, WhenCPUHigh:%@, OverExpensive:%@, OverCellular:%@)|blockCheckDownload:%@", v4, v5, v6, v7, v8, v9, v10];
  }

  else
  {
    v3 = @"allOtherBool:N";
  }

  if ([(MADAutoSetPolicy *)self userInitiated])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [NSString stringWithFormat:@"user:%@|%@", v11, v3];

  return v12;
}

@end