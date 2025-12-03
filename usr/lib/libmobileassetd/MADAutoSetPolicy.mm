@interface MADAutoSetPolicy
- (BOOL)isEqual:(id)equal;
- (MADAutoSetPolicy)init;
- (MADAutoSetPolicy)initWithCoder:(id)coder;
- (id)copy;
- (id)initFromAutoAssetSetPolicy:(id)policy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
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

- (id)initFromAutoAssetSetPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = MADAutoSetPolicy;
  v5 = [(MADAutoSetPolicy *)&v7 init];
  if (v5)
  {
    v5->_userInitiated = [policyCopy userInitiated];
    v5->_lockInhibitsEmergencyRemoval = [policyCopy lockInhibitsEmergencyRemoval];
    v5->_allowCheckDownloadOnBattery = [policyCopy allowCheckDownloadOnBattery];
    v5->_allowCheckDownloadWhenBatteryLow = [policyCopy allowCheckDownloadWhenBatteryLow];
    v5->_allowCheckDownloadWhenCPUHigh = [policyCopy allowCheckDownloadWhenCPUHigh];
    v5->_allowCheckDownloadOverExpensive = [policyCopy allowCheckDownloadOverExpensive];
    v5->_allowCheckDownloadOverCellular = [policyCopy allowCheckDownloadOverCellular];
    v5->_blockCheckDownload = [policyCopy blockCheckDownload];
  }

  return v5;
}

- (MADAutoSetPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADAutoSetPolicy;
  v5 = [(MADAutoSetPolicy *)&v7 init];
  if (v5)
  {
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_lockInhibitsEmergencyRemoval = [coderCopy decodeBoolForKey:@"lockInhibitsEmergencyRemoval"];
    v5->_allowCheckDownloadOnBattery = [coderCopy decodeBoolForKey:@"allowCheckDownloadOnBattery"];
    v5->_allowCheckDownloadWhenBatteryLow = [coderCopy decodeBoolForKey:@"allowCheckDownloadWhenBatteryLow"];
    v5->_allowCheckDownloadWhenCPUHigh = [coderCopy decodeBoolForKey:@"allowCheckDownloadWhenCPUHigh"];
    v5->_allowCheckDownloadOverExpensive = [coderCopy decodeBoolForKey:@"allowCheckDownloadOverExpensive"];
    v5->_allowCheckDownloadOverCellular = [coderCopy decodeBoolForKey:@"allowCheckDownloadOverCellular"];
    v5->_blockCheckDownload = [coderCopy decodeBoolForKey:@"blockCheckDownload"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MADAutoSetPolicy userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy lockInhibitsEmergencyRemoval](self forKey:{"lockInhibitsEmergencyRemoval"), @"lockInhibitsEmergencyRemoval"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy allowCheckDownloadOnBattery](self forKey:{"allowCheckDownloadOnBattery"), @"allowCheckDownloadOnBattery"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy allowCheckDownloadWhenBatteryLow](self forKey:{"allowCheckDownloadWhenBatteryLow"), @"allowCheckDownloadWhenBatteryLow"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy allowCheckDownloadWhenCPUHigh](self forKey:{"allowCheckDownloadWhenCPUHigh"), @"allowCheckDownloadWhenCPUHigh"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy allowCheckDownloadOverExpensive](self forKey:{"allowCheckDownloadOverExpensive"), @"allowCheckDownloadOverExpensive"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy allowCheckDownloadOverCellular](self forKey:{"allowCheckDownloadOverCellular"), @"allowCheckDownloadOverCellular"}];
  [coderCopy encodeBool:-[MADAutoSetPolicy blockCheckDownload](self forKey:{"blockCheckDownload"), @"blockCheckDownload"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userInitiated = [(MADAutoSetPolicy *)v5 userInitiated];
      if (userInitiated == [(MADAutoSetPolicy *)self userInitiated]&& (v7 = [(MADAutoSetPolicy *)v5 lockInhibitsEmergencyRemoval], v7 == [(MADAutoSetPolicy *)self lockInhibitsEmergencyRemoval]) && (v8 = [(MADAutoSetPolicy *)v5 allowCheckDownloadOnBattery], v8 == [(MADAutoSetPolicy *)self allowCheckDownloadOnBattery]) && (v9 = [(MADAutoSetPolicy *)v5 allowCheckDownloadWhenBatteryLow], v9 == [(MADAutoSetPolicy *)self allowCheckDownloadWhenBatteryLow]) && (v10 = [(MADAutoSetPolicy *)v5 allowCheckDownloadWhenCPUHigh], v10 == [(MADAutoSetPolicy *)self allowCheckDownloadWhenCPUHigh]) && (v11 = [(MADAutoSetPolicy *)v5 allowCheckDownloadOverExpensive], v11 == [(MADAutoSetPolicy *)self allowCheckDownloadOverExpensive]) && (v12 = [(MADAutoSetPolicy *)v5 allowCheckDownloadOverCellular], v12 == [(MADAutoSetPolicy *)self allowCheckDownloadOverCellular]))
      {
        blockCheckDownload = [(MADAutoSetPolicy *)v5 blockCheckDownload];
        v13 = blockCheckDownload ^ [(MADAutoSetPolicy *)self blockCheckDownload]^ 1;
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