@interface MADPowerLogData
- (MADPowerLogData)initWithType:(id)type withAssetSpecifier:(id)specifier versionNumber:(id)number clientName:(id)name startingAt:(id)at endingAt:(id)endingAt withTotalBytes:(unint64_t)bytes andResult:(BOOL)self0;
- (id)convertPayloadToDict;
- (id)description;
@end

@implementation MADPowerLogData

- (MADPowerLogData)initWithType:(id)type withAssetSpecifier:(id)specifier versionNumber:(id)number clientName:(id)name startingAt:(id)at endingAt:(id)endingAt withTotalBytes:(unint64_t)bytes andResult:(BOOL)self0
{
  typeCopy = type;
  specifierCopy = specifier;
  numberCopy = number;
  nameCopy = name;
  atCopy = at;
  endingAtCopy = endingAt;
  v26.receiver = self;
  v26.super_class = MADPowerLogData;
  v20 = [(MADPowerLogData *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_assetType, type);
    objc_storeStrong(&v21->_assetSpecifier, specifier);
    objc_storeStrong(&v21->_assetVersion, number);
    objc_storeStrong(&v21->_clientName, name);
    objc_storeStrong(&v21->_timeStart, at);
    objc_storeStrong(&v21->_timeEnd, endingAt);
    v21->_totalBytes = bytes;
    v21->_result = result;
  }

  return v21;
}

- (id)convertPayloadToDict
{
  v23[0] = @"assetType";
  assetType = [(MADPowerLogData *)self assetType];
  if (assetType)
  {
    v4 = assetType;
  }

  else
  {
    v4 = &stru_4BD3F0;
  }

  v24[0] = v4;
  v23[1] = @"assetVersion";
  assetVersion = [(MADPowerLogData *)self assetVersion];
  v6 = assetVersion;
  if (assetVersion)
  {
    v7 = assetVersion;
  }

  else
  {
    v7 = &stru_4BD3F0;
  }

  v24[1] = v7;
  v23[2] = @"assetSpecifier";
  assetSpecifier = [(MADPowerLogData *)self assetSpecifier];
  v9 = assetSpecifier;
  if (assetSpecifier)
  {
    v10 = assetSpecifier;
  }

  else
  {
    v10 = &stru_4BD3F0;
  }

  v24[2] = v10;
  v23[3] = @"clientName";
  clientName = [(MADPowerLogData *)self clientName];
  v12 = clientName;
  if (clientName)
  {
    v13 = clientName;
  }

  else
  {
    v13 = &stru_4BD3F0;
  }

  v24[3] = v13;
  v23[4] = @"timestampStart";
  timeStart = [(MADPowerLogData *)self timeStart];
  v15 = timeStart;
  if (!timeStart)
  {
    v15 = +[NSDate now];
  }

  v24[4] = v15;
  v23[5] = @"timestampEnd";
  timeEnd = [(MADPowerLogData *)self timeEnd];
  v17 = timeEnd;
  if (!timeEnd)
  {
    v17 = +[NSDate now];
  }

  v24[5] = v17;
  v23[6] = @"bytesDownloaded";
  v18 = [NSNumber numberWithLongLong:[(MADPowerLogData *)self totalBytes]];
  v24[6] = v18;
  v23[7] = @"Result";
  v19 = [NSNumber numberWithBool:[(MADPowerLogData *)self result]];
  v24[7] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:8];

  if (!timeEnd)
  {
  }

  if (!timeStart)
  {
  }

  return v20;
}

- (id)description
{
  assetType = [(MADPowerLogData *)self assetType];
  assetVersion = [(MADPowerLogData *)self assetVersion];
  assetSpecifier = [(MADPowerLogData *)self assetSpecifier];
  clientName = [(MADPowerLogData *)self clientName];
  timeStart = [(MADPowerLogData *)self timeStart];
  timeEnd = [(MADPowerLogData *)self timeEnd];
  totalBytes = [(MADPowerLogData *)self totalBytes];
  result = [(MADPowerLogData *)self result];
  v11 = @"N";
  if (result)
  {
    v11 = @"Y";
  }

  v12 = [NSString stringWithFormat:@"assetType:%@ | assetVersion:%@ | assetSpecifier:%@ | clientName:%@ | timeStart:%@ | timeEnd:%@ | totalBytes:%lld | result:%@", assetType, assetVersion, assetSpecifier, clientName, timeStart, timeEnd, totalBytes, v11];

  return v12;
}

@end