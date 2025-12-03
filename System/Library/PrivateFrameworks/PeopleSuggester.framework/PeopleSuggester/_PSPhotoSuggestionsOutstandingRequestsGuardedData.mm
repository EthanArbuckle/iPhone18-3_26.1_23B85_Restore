@interface _PSPhotoSuggestionsOutstandingRequestsGuardedData
- (_PSPhotoSuggestionsOutstandingRequestsGuardedData)init;
- (uint64_t)outstandingRequests;
- (uint64_t)setWaitingForRequestIDForCurrentThread:(uint64_t)result;
- (uint64_t)waitingForRequestIDForCurrentThread;
@end

@implementation _PSPhotoSuggestionsOutstandingRequestsGuardedData

- (_PSPhotoSuggestionsOutstandingRequestsGuardedData)init
{
  v6.receiver = self;
  v6.super_class = _PSPhotoSuggestionsOutstandingRequestsGuardedData;
  v2 = [(_PSPhotoSuggestionsOutstandingRequestsGuardedData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    outstandingRequests = v2->_outstandingRequests;
    v2->_outstandingRequests = v3;

    v2->_waitingForRequestIDForCurrentThread = 0;
  }

  return v2;
}

- (uint64_t)outstandingRequests
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)waitingForRequestIDForCurrentThread
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setWaitingForRequestIDForCurrentThread:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end