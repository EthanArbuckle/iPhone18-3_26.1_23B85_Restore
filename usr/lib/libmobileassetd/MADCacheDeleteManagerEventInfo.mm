@interface MADCacheDeleteManagerEventInfo
- (MADCacheDeleteManagerEventInfo)initWithCoder:(id)coder;
- (MADCacheDeleteManagerEventInfo)initWithError:(id)error spaceCheckedID:(id)d totalRequiredFreeSpace:(unint64_t)space cacheDeleteUrgency:(int)urgency completionQueue:(id)queue completion:(id)completion;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADCacheDeleteManagerEventInfo

- (MADCacheDeleteManagerEventInfo)initWithError:(id)error spaceCheckedID:(id)d totalRequiredFreeSpace:(unint64_t)space cacheDeleteUrgency:(int)urgency completionQueue:(id)queue completion:(id)completion
{
  errorCopy = error;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v24.receiver = self;
  v24.super_class = MADCacheDeleteManagerEventInfo;
  v19 = [(MADCacheDeleteManagerEventInfo *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_spaceCheckedID, d);
    v20->_totalRequiredFreeSpace = space;
    *&v20->_totalRequiredSpaceForAllRequests = 0u;
    *&v20->_totalAvailableFromCD = 0u;
    v20->_totalCDSharedPath = 0;
    v20->_cacheDeleteUrgency = urgency;
    objc_storeStrong(&v20->_completionQueue, queue);
    v21 = objc_retainBlock(completionCopy);
    completion = v20->_completion;
    v20->_completion = v21;

    objc_storeStrong(&v20->_error, error);
    v20->_spaceNoLongerNeeded = 0;
  }

  return v20;
}

- (MADCacheDeleteManagerEventInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADCacheDeleteManagerEventInfo;
  v5 = [(MADCacheDeleteManagerEventInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spaceCheckedID"];
    spaceCheckedID = v5->_spaceCheckedID;
    v5->_spaceCheckedID = v6;

    v5->_totalRequiredFreeSpace = [coderCopy decodeInt64ForKey:@"totalRequiredFreeSpace"];
    v5->_totalRequiredSpaceForAllRequests = [coderCopy decodeInt64ForKey:@"totalRequiredSpaceForAllRequests"];
    v5->_totalAvailableOnFS = [coderCopy decodeInt64ForKey:@"totalAvailableOnFS"];
    v5->_totalAvailableFromCD = [coderCopy decodeInt64ForKey:@"totalAvailableFromCD"];
    v5->_totalCDBasePath = [coderCopy decodeInt64ForKey:@"totalCDBasePath"];
    v5->_totalCDSharedPath = [coderCopy decodeInt64ForKey:@"totalCDSharedPath"];
    v5->_cacheDeleteUrgency = [coderCopy decodeIntForKey:@"cacheDeleteUrgency"];
    v5->_spaceNoLongerNeeded = [coderCopy decodeInt64ForKey:@"spaceNoLongerNeeded"];
    completionQueue = v5->_completionQueue;
    v5->_completionQueue = 0;

    completion = v5->_completion;
    v5->_completion = 0;

    error = v5->_error;
    v5->_error = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  spaceCheckedID = [(MADCacheDeleteManagerEventInfo *)self spaceCheckedID];
  [coderCopy encodeObject:spaceCheckedID forKey:@"spaceCheckedID"];

  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo totalRequiredFreeSpace](self forKey:{"totalRequiredFreeSpace"), @"totalRequiredFreeSpace"}];
  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo totalRequiredSpaceForAllRequests](self forKey:{"totalRequiredSpaceForAllRequests"), @"totalRequiredSpaceForAllRequests"}];
  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo totalAvailableOnFS](self forKey:{"totalAvailableOnFS"), @"totalAvailableOnFS"}];
  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo totalAvailableFromCD](self forKey:{"totalAvailableFromCD"), @"totalAvailableFromCD"}];
  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo totalCDBasePath](self forKey:{"totalCDBasePath"), @"totalCDBasePath"}];
  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo totalCDSharedPath](self forKey:{"totalCDSharedPath"), @"totalCDSharedPath"}];
  [coderCopy encodeInt:-[MADCacheDeleteManagerEventInfo cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
  [coderCopy encodeInt64:-[MADCacheDeleteManagerEventInfo spaceNoLongerNeeded](self forKey:{"spaceNoLongerNeeded"), @"spaceNoLongerNeeded"}];
}

- (id)description
{
  [(MADCacheDeleteManagerEventInfo *)self spaceCheckedID];
  v20 = checkedDescription = @"None";
  if (v20)
  {
    spaceCheckedID = [(MADCacheDeleteManagerEventInfo *)self spaceCheckedID];
  }

  else
  {
    spaceCheckedID = @"None";
  }

  totalRequiredFreeSpace = [(MADCacheDeleteManagerEventInfo *)self totalRequiredFreeSpace];
  totalRequiredSpaceForAllRequests = [(MADCacheDeleteManagerEventInfo *)self totalRequiredSpaceForAllRequests];
  totalAvailableOnFS = [(MADCacheDeleteManagerEventInfo *)self totalAvailableOnFS];
  totalAvailableFromCD = [(MADCacheDeleteManagerEventInfo *)self totalAvailableFromCD];
  totalCDBasePath = [(MADCacheDeleteManagerEventInfo *)self totalCDBasePath];
  totalCDSharedPath = [(MADCacheDeleteManagerEventInfo *)self totalCDSharedPath];
  cacheDeleteUrgency = [(MADCacheDeleteManagerEventInfo *)self cacheDeleteUrgency];
  completionQueue = [(MADCacheDeleteManagerEventInfo *)self completionQueue];
  v8 = @"Provided";
  if (completionQueue)
  {
    v9 = @"Provided";
  }

  else
  {
    v9 = @"None";
  }

  completion = [(MADCacheDeleteManagerEventInfo *)self completion];
  if (!completion)
  {
    v8 = @"None";
  }

  error = [(MADCacheDeleteManagerEventInfo *)self error];
  if (error)
  {
    error2 = [(MADCacheDeleteManagerEventInfo *)self error];
    checkedDescription = [error2 checkedDescription];
  }

  v12 = [NSString stringWithFormat:@"spaceCheckedID:%@, totalRequiredFreeSpace:%llu, totalRequiredSpaceForAllRequests:%llu, totalAvailableOnFS:%llu, totalAvailableFromCD:%llu, totalCDBasePath:%llu, totalCDSharedPath:%llu, cacheDeleteUrgency:%d, completionQueue:%@, completion:%@ error:%@ spaceNoLongerNeeded:%llu", spaceCheckedID, totalRequiredFreeSpace, totalRequiredSpaceForAllRequests, totalAvailableOnFS, totalAvailableFromCD, totalCDBasePath, totalCDSharedPath, cacheDeleteUrgency, v9, v8, checkedDescription, [(MADCacheDeleteManagerEventInfo *)self spaceNoLongerNeeded]];
  if (error)
  {
  }

  if (v20)
  {
  }

  return v12;
}

@end