@interface SMReceiverContact
- (SMReceiverContact)initWithIdentifier:(id)identifier syncDate:(id)date phoneCache:(id)cache watchCache:(id)watchCache sessionStatus:(id)status allowReadToken:(id)token safetyCacheKey:(id)key shareURL:(id)self0 participantID:(id)self1 sharingInvitationData:(id)self2 numCacheDownloads:(int64_t)self3 numSuccessfulCacheDownloads:(int64_t)self4 maxPhoneCacheSize:(int64_t)self5 maxWatchCacheSize:(int64_t)self6 maxLocationsInPhoneCacheTrace:(int64_t)self7 maxLocationsInWatchCacheTrace:(int64_t)self8 timeTillCacheRelease:(double)self9 timeTillFirstSuccessfulCacheDownload:(double)download sessionID:(id)iD firstDetailViewSessionState:(int64_t)state lastDetailViewSessionState:(int64_t)sessionState phoneMaxWorkoutEvents:(int64_t)events watchMaxWorkoutEvents:(int64_t)workoutEvents;
- (id)description;
@end

@implementation SMReceiverContact

- (SMReceiverContact)initWithIdentifier:(id)identifier syncDate:(id)date phoneCache:(id)cache watchCache:(id)watchCache sessionStatus:(id)status allowReadToken:(id)token safetyCacheKey:(id)key shareURL:(id)self0 participantID:(id)self1 sharingInvitationData:(id)self2 numCacheDownloads:(int64_t)self3 numSuccessfulCacheDownloads:(int64_t)self4 maxPhoneCacheSize:(int64_t)self5 maxWatchCacheSize:(int64_t)self6 maxLocationsInPhoneCacheTrace:(int64_t)self7 maxLocationsInWatchCacheTrace:(int64_t)self8 timeTillCacheRelease:(double)self9 timeTillFirstSuccessfulCacheDownload:(double)download sessionID:(id)iD firstDetailViewSessionState:(int64_t)state lastDetailViewSessionState:(int64_t)sessionState phoneMaxWorkoutEvents:(int64_t)events watchMaxWorkoutEvents:(int64_t)workoutEvents
{
  identifierCopy = identifier;
  dateCopy = date;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  statusCopy = status;
  tokenCopy = token;
  keyCopy = key;
  lCopy = l;
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  v47 = lCopy;
  if (identifierCopy)
  {
    if (statusCopy)
    {
      v53.receiver = self;
      v53.super_class = SMReceiverContact;
      v46 = keyCopy;
      v38 = [(SMContact *)&v53 initWithIdentifier:identifierCopy sessionID:iDCopy allowReadToken:tokenCopy safetyCacheKey:keyCopy syncDate:dateCopy sharingInvitationData:dataCopy shareURL:lCopy participantID:dCopy];
      v39 = v38;
      if (v38)
      {
        objc_storeStrong(&v38->_phoneCache, cache);
        objc_storeStrong(&v39->_watchCache, watchCache);
        objc_storeStrong(&v39->_sessionStatus, status);
        v39->_numCacheDownloads = downloads;
        v39->_numSuccessfulCacheDownloads = cacheDownloads;
        v39->_maxPhoneCacheSize = size;
        v39->_maxWatchCacheSize = cacheSize;
        v39->_maxLocationsInPhoneCacheTrace = trace;
        v39->_maxLocationsInWatchCacheTrace = cacheTrace;
        v39->_timeTillCacheRelease = release;
        v39->_timeTillFirstSuccessfulCacheDownload = download;
        v39->_firstDetailViewSessionState = state;
        v39->_lastDetailViewSessionState = sessionState;
        v39->_phoneMaxWorkoutEvents = events;
        v39->_watchMaxWorkoutEvents = workoutEvents;
      }

      selfCopy2 = v39;
      v41 = selfCopy2;
      keyCopy = v46;
    }

    else
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      selfCopy2 = self;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26455D000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionStatus", buf, 2u);
      }

      v41 = 0;
    }
  }

  else
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v41 = 0;
    selfCopy2 = self;
  }

  return v41;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionUUID = [(SMContact *)self sessionUUID];
  identifier = [(SMContact *)self identifier];
  sessionStatus = [(SMReceiverContact *)self sessionStatus];
  initiatorHandle = [sessionStatus initiatorHandle];
  primaryHandle = [initiatorHandle primaryHandle];
  syncDate = [(SMContact *)self syncDate];
  stringFromDate = [syncDate stringFromDate];
  allowReadToken = [(SMContact *)self allowReadToken];
  safetyCacheKey = [(SMContact *)self safetyCacheKey];
  v13 = [v3 stringWithFormat:@"sessionID, %@, identifier, %@, initiatorHandle, %@, syncDate, %@, allowReadToken, %@, safetyCacheKey, %@", sessionUUID, identifier, primaryHandle, stringFromDate, allowReadToken, safetyCacheKey];

  return v13;
}

@end