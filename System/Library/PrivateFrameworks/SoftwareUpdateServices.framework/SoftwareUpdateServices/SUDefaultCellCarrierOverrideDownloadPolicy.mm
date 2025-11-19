@interface SUDefaultCellCarrierOverrideDownloadPolicy
- (id)description;
@end

@implementation SUDefaultCellCarrierOverrideDownloadPolicy

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SUDefaultCellCarrierOverrideDownloadPolicy *)self isDownloadAllowableForCellular])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUDefaultDownloadPolicy *)self hasEnoughDiskSpace])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUDefaultDownloadPolicy *)self isDownloadable])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUDefaultDownloadPolicy *)self isDownloadFreeForCellular])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular2G])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellularRoaming])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(SUDefaultDownloadPolicy *)self isDownloadAllowableForWiFi])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  return [v3 stringWithFormat:@"\n            isDownloadAllowableForCellular: %@\n            hasEnoughDiskSpace: %@\n            isDownloadable: %@\n            isDownloadFreeForCellular: %@\n            isDownloadAllowableForCellular2G: %@\n            isDownloadAllowableForCellularRoaming: %@\n            isDownloadAllowableForWiFi: %@\n", v4, v5, v6, v7, v8, v9, v10];
}

@end