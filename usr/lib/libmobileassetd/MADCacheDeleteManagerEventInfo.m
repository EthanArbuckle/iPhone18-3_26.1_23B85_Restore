@interface MADCacheDeleteManagerEventInfo
- (MADCacheDeleteManagerEventInfo)initWithCoder:(id)a3;
- (MADCacheDeleteManagerEventInfo)initWithError:(id)a3 spaceCheckedID:(id)a4 totalRequiredFreeSpace:(unint64_t)a5 cacheDeleteUrgency:(int)a6 completionQueue:(id)a7 completion:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADCacheDeleteManagerEventInfo

- (MADCacheDeleteManagerEventInfo)initWithError:(id)a3 spaceCheckedID:(id)a4 totalRequiredFreeSpace:(unint64_t)a5 cacheDeleteUrgency:(int)a6 completionQueue:(id)a7 completion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = MADCacheDeleteManagerEventInfo;
  v19 = [(MADCacheDeleteManagerEventInfo *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_spaceCheckedID, a4);
    v20->_totalRequiredFreeSpace = a5;
    *&v20->_totalRequiredSpaceForAllRequests = 0u;
    *&v20->_totalAvailableFromCD = 0u;
    v20->_totalCDSharedPath = 0;
    v20->_cacheDeleteUrgency = a6;
    objc_storeStrong(&v20->_completionQueue, a7);
    v21 = objc_retainBlock(v18);
    completion = v20->_completion;
    v20->_completion = v21;

    objc_storeStrong(&v20->_error, a3);
    v20->_spaceNoLongerNeeded = 0;
  }

  return v20;
}

- (MADCacheDeleteManagerEventInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADCacheDeleteManagerEventInfo;
  v5 = [(MADCacheDeleteManagerEventInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spaceCheckedID"];
    spaceCheckedID = v5->_spaceCheckedID;
    v5->_spaceCheckedID = v6;

    v5->_totalRequiredFreeSpace = [v4 decodeInt64ForKey:@"totalRequiredFreeSpace"];
    v5->_totalRequiredSpaceForAllRequests = [v4 decodeInt64ForKey:@"totalRequiredSpaceForAllRequests"];
    v5->_totalAvailableOnFS = [v4 decodeInt64ForKey:@"totalAvailableOnFS"];
    v5->_totalAvailableFromCD = [v4 decodeInt64ForKey:@"totalAvailableFromCD"];
    v5->_totalCDBasePath = [v4 decodeInt64ForKey:@"totalCDBasePath"];
    v5->_totalCDSharedPath = [v4 decodeInt64ForKey:@"totalCDSharedPath"];
    v5->_cacheDeleteUrgency = [v4 decodeIntForKey:@"cacheDeleteUrgency"];
    v5->_spaceNoLongerNeeded = [v4 decodeInt64ForKey:@"spaceNoLongerNeeded"];
    completionQueue = v5->_completionQueue;
    v5->_completionQueue = 0;

    completion = v5->_completion;
    v5->_completion = 0;

    error = v5->_error;
    v5->_error = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MADCacheDeleteManagerEventInfo *)self spaceCheckedID];
  [v5 encodeObject:v4 forKey:@"spaceCheckedID"];

  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo totalRequiredFreeSpace](self forKey:{"totalRequiredFreeSpace"), @"totalRequiredFreeSpace"}];
  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo totalRequiredSpaceForAllRequests](self forKey:{"totalRequiredSpaceForAllRequests"), @"totalRequiredSpaceForAllRequests"}];
  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo totalAvailableOnFS](self forKey:{"totalAvailableOnFS"), @"totalAvailableOnFS"}];
  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo totalAvailableFromCD](self forKey:{"totalAvailableFromCD"), @"totalAvailableFromCD"}];
  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo totalCDBasePath](self forKey:{"totalCDBasePath"), @"totalCDBasePath"}];
  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo totalCDSharedPath](self forKey:{"totalCDSharedPath"), @"totalCDSharedPath"}];
  [v5 encodeInt:-[MADCacheDeleteManagerEventInfo cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
  [v5 encodeInt64:-[MADCacheDeleteManagerEventInfo spaceNoLongerNeeded](self forKey:{"spaceNoLongerNeeded"), @"spaceNoLongerNeeded"}];
}

- (id)description
{
  [(MADCacheDeleteManagerEventInfo *)self spaceCheckedID];
  v20 = v4 = @"None";
  if (v20)
  {
    v19 = [(MADCacheDeleteManagerEventInfo *)self spaceCheckedID];
  }

  else
  {
    v19 = @"None";
  }

  v18 = [(MADCacheDeleteManagerEventInfo *)self totalRequiredFreeSpace];
  v17 = [(MADCacheDeleteManagerEventInfo *)self totalRequiredSpaceForAllRequests];
  v16 = [(MADCacheDeleteManagerEventInfo *)self totalAvailableOnFS];
  v15 = [(MADCacheDeleteManagerEventInfo *)self totalAvailableFromCD];
  v14 = [(MADCacheDeleteManagerEventInfo *)self totalCDBasePath];
  v5 = [(MADCacheDeleteManagerEventInfo *)self totalCDSharedPath];
  v6 = [(MADCacheDeleteManagerEventInfo *)self cacheDeleteUrgency];
  v7 = [(MADCacheDeleteManagerEventInfo *)self completionQueue];
  v8 = @"Provided";
  if (v7)
  {
    v9 = @"Provided";
  }

  else
  {
    v9 = @"None";
  }

  v10 = [(MADCacheDeleteManagerEventInfo *)self completion];
  if (!v10)
  {
    v8 = @"None";
  }

  v11 = [(MADCacheDeleteManagerEventInfo *)self error];
  if (v11)
  {
    v2 = [(MADCacheDeleteManagerEventInfo *)self error];
    v4 = [v2 checkedDescription];
  }

  v12 = [NSString stringWithFormat:@"spaceCheckedID:%@, totalRequiredFreeSpace:%llu, totalRequiredSpaceForAllRequests:%llu, totalAvailableOnFS:%llu, totalAvailableFromCD:%llu, totalCDBasePath:%llu, totalCDSharedPath:%llu, cacheDeleteUrgency:%d, completionQueue:%@, completion:%@ error:%@ spaceNoLongerNeeded:%llu", v19, v18, v17, v16, v15, v14, v5, v6, v9, v8, v4, [(MADCacheDeleteManagerEventInfo *)self spaceNoLongerNeeded]];
  if (v11)
  {
  }

  if (v20)
  {
  }

  return v12;
}

@end