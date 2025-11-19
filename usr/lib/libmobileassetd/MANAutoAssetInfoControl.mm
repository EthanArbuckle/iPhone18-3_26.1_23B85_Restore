@interface MANAutoAssetInfoControl
+ (id)nameOfSimulateEnd:(int64_t)a3;
+ (id)nameOfSimulateOperation:(int64_t)a3;
- (MANAutoAssetInfoControl)initWithCoder:(id)a3;
- (id)initClearingAfter:(BOOL)a3 forcingUnlock:(BOOL)a4 limitedToAssetTypes:(id)a5 withVolumeToReclaim:(id)a6 withUrgency:(int)a7 targetingPurgeAmount:(int64_t)a8 simulateOperation:(int64_t)a9 simulateEnd:(int64_t)a10;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetInfoControl

- (id)initClearingAfter:(BOOL)a3 forcingUnlock:(BOOL)a4 limitedToAssetTypes:(id)a5 withVolumeToReclaim:(id)a6 withUrgency:(int)a7 targetingPurgeAmount:(int64_t)a8 simulateOperation:(int64_t)a9 simulateEnd:(int64_t)a10
{
  v17 = a5;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = MANAutoAssetInfoControl;
  v19 = [(MANAutoAssetInfoControl *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_clearingAfter = a3;
    v19->_forceUnlock = a4;
    objc_storeStrong(&v19->_limitedToAssetTypes, a5);
    objc_storeStrong(&v20->_volumeToReclaim, a6);
    v20->_cacheDeleteUrgency = a7;
    v20->_targetingPurgeAmount = a8;
    v20->_simulateOperation = a9;
    v20->_simulateEnd = a10;
  }

  return v20;
}

- (MANAutoAssetInfoControl)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MANAutoAssetInfoControl;
  v5 = [(MANAutoAssetInfoControl *)&v14 init];
  if (v5)
  {
    v5->_clearingAfter = [v4 decodeBoolForKey:@"clearingAfter"];
    v5->_forceUnlock = [v4 decodeBoolForKey:@"forceUnlock"];
    v6 = [NSSet alloc];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v15 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"limitedToAssetTypes"];
    limitedToAssetTypes = v5->_limitedToAssetTypes;
    v5->_limitedToAssetTypes = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volumeToReclaim"];
    volumeToReclaim = v5->_volumeToReclaim;
    v5->_volumeToReclaim = v11;

    v5->_cacheDeleteUrgency = [v4 decodeIntegerForKey:@"cacheDeleteUrgency"];
    v5->_targetingPurgeAmount = [v4 decodeInt64ForKey:@"targetingPurgeAmount"];
    v5->_simulateOperation = [v4 decodeIntegerForKey:@"simulateOperation"];
    v5->_simulateEnd = [v4 decodeIntegerForKey:@"simulateEnd"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[MANAutoAssetInfoControl clearingAfter](self forKey:{"clearingAfter"), @"clearingAfter"}];
  [v6 encodeBool:-[MANAutoAssetInfoControl forceUnlock](self forKey:{"forceUnlock"), @"forceUnlock"}];
  v4 = [(MANAutoAssetInfoControl *)self limitedToAssetTypes];
  [v6 encodeObject:v4 forKey:@"limitedToAssetTypes"];

  v5 = [(MANAutoAssetInfoControl *)self volumeToReclaim];
  [v6 encodeObject:v5 forKey:@"volumeToReclaim"];

  [v6 encodeInteger:-[MANAutoAssetInfoControl cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
  [v6 encodeInt64:-[MANAutoAssetInfoControl targetingPurgeAmount](self forKey:{"targetingPurgeAmount"), @"targetingPurgeAmount"}];
  [v6 encodeInteger:-[MANAutoAssetInfoControl simulateOperation](self forKey:{"simulateOperation"), @"simulateOperation"}];
  [v6 encodeInteger:-[MANAutoAssetInfoControl simulateEnd](self forKey:{"simulateEnd"), @"simulateEnd"}];
}

- (id)summary
{
  v3 = [(MANAutoAssetInfoControl *)self limitedToAssetTypes];

  if (v3)
  {
    v4 = [[NSMutableString alloc] initWithCapacity:0];
    [v4 appendString:@"["];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(MANAutoAssetInfoControl *)self limitedToAssetTypes];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      v9 = &stru_4BD3F0;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 appendFormat:@"%@%@", v9, *(*(&v21 + 1) + 8 * i)];
          v9 = @",";
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v9 = @",";
      }

      while (v7);
    }

    [v4 appendString:@"]"];
  }

  if ([(MANAutoAssetInfoControl *)self clearingAfter])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  if ([(MANAutoAssetInfoControl *)self forceUnlock])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v13 = [(MANAutoAssetInfoControl *)self volumeToReclaim];
  if (v13)
  {
    v14 = [(MANAutoAssetInfoControl *)self volumeToReclaim];
  }

  else
  {
    v14 = @"N";
  }

  v15 = [(MANAutoAssetInfoControl *)self cacheDeleteUrgency];
  v16 = [(MANAutoAssetInfoControl *)self targetingPurgeAmount];
  v17 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MANAutoAssetInfoControl *)self simulateOperation]];
  v18 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MANAutoAssetInfoControl *)self simulateEnd]];
  v19 = [NSString stringWithFormat:@"clearingAfter:%@, forceUnlock:%@, limitedToAssetTypes:%@, volumeToReclaim:%@, cacheDeleteUrgency:%d, targetingPurgeAmount:%lld, simulateOperation:%@, simulateEnd:%@", v11, v12, @"N", v14, v15, v16, v17, v18];

  if (v13)
  {
  }

  return v19;
}

+ (id)nameOfSimulateOperation:(int64_t)a3
{
  if (a3 > 0xB)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_4B4B50[a3];
  }
}

+ (id)nameOfSimulateEnd:(int64_t)a3
{
  v3 = @"UNKNOWN";
  if (a3 == 1)
  {
    v3 = @"CLIENT_REQUEST";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"NONE";
  }
}

@end