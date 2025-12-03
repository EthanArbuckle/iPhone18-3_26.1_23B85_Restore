@interface MANAutoAssetInfoControl
+ (id)nameOfSimulateEnd:(int64_t)end;
+ (id)nameOfSimulateOperation:(int64_t)operation;
- (MANAutoAssetInfoControl)initWithCoder:(id)coder;
- (id)initClearingAfter:(BOOL)after forcingUnlock:(BOOL)unlock limitedToAssetTypes:(id)types withVolumeToReclaim:(id)reclaim withUrgency:(int)urgency targetingPurgeAmount:(int64_t)amount simulateOperation:(int64_t)operation simulateEnd:(int64_t)self0;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetInfoControl

- (id)initClearingAfter:(BOOL)after forcingUnlock:(BOOL)unlock limitedToAssetTypes:(id)types withVolumeToReclaim:(id)reclaim withUrgency:(int)urgency targetingPurgeAmount:(int64_t)amount simulateOperation:(int64_t)operation simulateEnd:(int64_t)self0
{
  typesCopy = types;
  reclaimCopy = reclaim;
  v22.receiver = self;
  v22.super_class = MANAutoAssetInfoControl;
  v19 = [(MANAutoAssetInfoControl *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_clearingAfter = after;
    v19->_forceUnlock = unlock;
    objc_storeStrong(&v19->_limitedToAssetTypes, types);
    objc_storeStrong(&v20->_volumeToReclaim, reclaim);
    v20->_cacheDeleteUrgency = urgency;
    v20->_targetingPurgeAmount = amount;
    v20->_simulateOperation = operation;
    v20->_simulateEnd = end;
  }

  return v20;
}

- (MANAutoAssetInfoControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MANAutoAssetInfoControl;
  v5 = [(MANAutoAssetInfoControl *)&v14 init];
  if (v5)
  {
    v5->_clearingAfter = [coderCopy decodeBoolForKey:@"clearingAfter"];
    v5->_forceUnlock = [coderCopy decodeBoolForKey:@"forceUnlock"];
    v6 = [NSSet alloc];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v15 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"limitedToAssetTypes"];
    limitedToAssetTypes = v5->_limitedToAssetTypes;
    v5->_limitedToAssetTypes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volumeToReclaim"];
    volumeToReclaim = v5->_volumeToReclaim;
    v5->_volumeToReclaim = v11;

    v5->_cacheDeleteUrgency = [coderCopy decodeIntegerForKey:@"cacheDeleteUrgency"];
    v5->_targetingPurgeAmount = [coderCopy decodeInt64ForKey:@"targetingPurgeAmount"];
    v5->_simulateOperation = [coderCopy decodeIntegerForKey:@"simulateOperation"];
    v5->_simulateEnd = [coderCopy decodeIntegerForKey:@"simulateEnd"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MANAutoAssetInfoControl clearingAfter](self forKey:{"clearingAfter"), @"clearingAfter"}];
  [coderCopy encodeBool:-[MANAutoAssetInfoControl forceUnlock](self forKey:{"forceUnlock"), @"forceUnlock"}];
  limitedToAssetTypes = [(MANAutoAssetInfoControl *)self limitedToAssetTypes];
  [coderCopy encodeObject:limitedToAssetTypes forKey:@"limitedToAssetTypes"];

  volumeToReclaim = [(MANAutoAssetInfoControl *)self volumeToReclaim];
  [coderCopy encodeObject:volumeToReclaim forKey:@"volumeToReclaim"];

  [coderCopy encodeInteger:-[MANAutoAssetInfoControl cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
  [coderCopy encodeInt64:-[MANAutoAssetInfoControl targetingPurgeAmount](self forKey:{"targetingPurgeAmount"), @"targetingPurgeAmount"}];
  [coderCopy encodeInteger:-[MANAutoAssetInfoControl simulateOperation](self forKey:{"simulateOperation"), @"simulateOperation"}];
  [coderCopy encodeInteger:-[MANAutoAssetInfoControl simulateEnd](self forKey:{"simulateEnd"), @"simulateEnd"}];
}

- (id)summary
{
  limitedToAssetTypes = [(MANAutoAssetInfoControl *)self limitedToAssetTypes];

  if (limitedToAssetTypes)
  {
    v4 = [[NSMutableString alloc] initWithCapacity:0];
    [v4 appendString:@"["];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    limitedToAssetTypes2 = [(MANAutoAssetInfoControl *)self limitedToAssetTypes];
    v6 = [limitedToAssetTypes2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(limitedToAssetTypes2);
          }

          [v4 appendFormat:@"%@%@", v9, *(*(&v21 + 1) + 8 * i)];
          v9 = @",";
        }

        v7 = [limitedToAssetTypes2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

  volumeToReclaim = [(MANAutoAssetInfoControl *)self volumeToReclaim];
  if (volumeToReclaim)
  {
    volumeToReclaim2 = [(MANAutoAssetInfoControl *)self volumeToReclaim];
  }

  else
  {
    volumeToReclaim2 = @"N";
  }

  cacheDeleteUrgency = [(MANAutoAssetInfoControl *)self cacheDeleteUrgency];
  targetingPurgeAmount = [(MANAutoAssetInfoControl *)self targetingPurgeAmount];
  v17 = [MANAutoAssetInfoControl nameOfSimulateOperation:[(MANAutoAssetInfoControl *)self simulateOperation]];
  v18 = [MANAutoAssetInfoControl nameOfSimulateEnd:[(MANAutoAssetInfoControl *)self simulateEnd]];
  v19 = [NSString stringWithFormat:@"clearingAfter:%@, forceUnlock:%@, limitedToAssetTypes:%@, volumeToReclaim:%@, cacheDeleteUrgency:%d, targetingPurgeAmount:%lld, simulateOperation:%@, simulateEnd:%@", v11, v12, @"N", volumeToReclaim2, cacheDeleteUrgency, targetingPurgeAmount, v17, v18];

  if (volumeToReclaim)
  {
  }

  return v19;
}

+ (id)nameOfSimulateOperation:(int64_t)operation
{
  if (operation > 0xB)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_4B4B50[operation];
  }
}

+ (id)nameOfSimulateEnd:(int64_t)end
{
  v3 = @"UNKNOWN";
  if (end == 1)
  {
    v3 = @"CLIENT_REQUEST";
  }

  if (end)
  {
    return v3;
  }

  else
  {
    return @"NONE";
  }
}

@end