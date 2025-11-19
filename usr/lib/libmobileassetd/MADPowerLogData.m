@interface MADPowerLogData
- (MADPowerLogData)initWithType:(id)a3 withAssetSpecifier:(id)a4 versionNumber:(id)a5 clientName:(id)a6 startingAt:(id)a7 endingAt:(id)a8 withTotalBytes:(unint64_t)a9 andResult:(BOOL)a10;
- (id)convertPayloadToDict;
- (id)description;
@end

@implementation MADPowerLogData

- (MADPowerLogData)initWithType:(id)a3 withAssetSpecifier:(id)a4 versionNumber:(id)a5 clientName:(id)a6 startingAt:(id)a7 endingAt:(id)a8 withTotalBytes:(unint64_t)a9 andResult:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v19 = a8;
  v26.receiver = self;
  v26.super_class = MADPowerLogData;
  v20 = [(MADPowerLogData *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_assetType, a3);
    objc_storeStrong(&v21->_assetSpecifier, a4);
    objc_storeStrong(&v21->_assetVersion, a5);
    objc_storeStrong(&v21->_clientName, a6);
    objc_storeStrong(&v21->_timeStart, a7);
    objc_storeStrong(&v21->_timeEnd, a8);
    v21->_totalBytes = a9;
    v21->_result = a10;
  }

  return v21;
}

- (id)convertPayloadToDict
{
  v23[0] = @"assetType";
  v3 = [(MADPowerLogData *)self assetType];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_4BD3F0;
  }

  v24[0] = v4;
  v23[1] = @"assetVersion";
  v5 = [(MADPowerLogData *)self assetVersion];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_4BD3F0;
  }

  v24[1] = v7;
  v23[2] = @"assetSpecifier";
  v8 = [(MADPowerLogData *)self assetSpecifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_4BD3F0;
  }

  v24[2] = v10;
  v23[3] = @"clientName";
  v11 = [(MADPowerLogData *)self clientName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_4BD3F0;
  }

  v24[3] = v13;
  v23[4] = @"timestampStart";
  v14 = [(MADPowerLogData *)self timeStart];
  v15 = v14;
  if (!v14)
  {
    v15 = +[NSDate now];
  }

  v24[4] = v15;
  v23[5] = @"timestampEnd";
  v16 = [(MADPowerLogData *)self timeEnd];
  v17 = v16;
  if (!v16)
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

  if (!v16)
  {
  }

  if (!v14)
  {
  }

  return v20;
}

- (id)description
{
  v3 = [(MADPowerLogData *)self assetType];
  v4 = [(MADPowerLogData *)self assetVersion];
  v5 = [(MADPowerLogData *)self assetSpecifier];
  v6 = [(MADPowerLogData *)self clientName];
  v7 = [(MADPowerLogData *)self timeStart];
  v8 = [(MADPowerLogData *)self timeEnd];
  v9 = [(MADPowerLogData *)self totalBytes];
  v10 = [(MADPowerLogData *)self result];
  v11 = @"N";
  if (v10)
  {
    v11 = @"Y";
  }

  v12 = [NSString stringWithFormat:@"assetType:%@ | assetVersion:%@ | assetSpecifier:%@ | clientName:%@ | timeStart:%@ | timeEnd:%@ | totalBytes:%lld | result:%@", v3, v4, v5, v6, v7, v8, v9, v11];

  return v12;
}

@end