@interface SMReceiverContact
- (SMReceiverContact)initWithIdentifier:(id)a3 syncDate:(id)a4 phoneCache:(id)a5 watchCache:(id)a6 sessionStatus:(id)a7 allowReadToken:(id)a8 safetyCacheKey:(id)a9 shareURL:(id)a10 participantID:(id)a11 sharingInvitationData:(id)a12 numCacheDownloads:(int64_t)a13 numSuccessfulCacheDownloads:(int64_t)a14 maxPhoneCacheSize:(int64_t)a15 maxWatchCacheSize:(int64_t)a16 maxLocationsInPhoneCacheTrace:(int64_t)a17 maxLocationsInWatchCacheTrace:(int64_t)a18 timeTillCacheRelease:(double)a19 timeTillFirstSuccessfulCacheDownload:(double)a20 sessionID:(id)a21 firstDetailViewSessionState:(int64_t)a22 lastDetailViewSessionState:(int64_t)a23 phoneMaxWorkoutEvents:(int64_t)a24 watchMaxWorkoutEvents:(int64_t)a25;
- (id)description;
@end

@implementation SMReceiverContact

- (SMReceiverContact)initWithIdentifier:(id)a3 syncDate:(id)a4 phoneCache:(id)a5 watchCache:(id)a6 sessionStatus:(id)a7 allowReadToken:(id)a8 safetyCacheKey:(id)a9 shareURL:(id)a10 participantID:(id)a11 sharingInvitationData:(id)a12 numCacheDownloads:(int64_t)a13 numSuccessfulCacheDownloads:(int64_t)a14 maxPhoneCacheSize:(int64_t)a15 maxWatchCacheSize:(int64_t)a16 maxLocationsInPhoneCacheTrace:(int64_t)a17 maxLocationsInWatchCacheTrace:(int64_t)a18 timeTillCacheRelease:(double)a19 timeTillFirstSuccessfulCacheDownload:(double)a20 sessionID:(id)a21 firstDetailViewSessionState:(int64_t)a22 lastDetailViewSessionState:(int64_t)a23 phoneMaxWorkoutEvents:(int64_t)a24 watchMaxWorkoutEvents:(int64_t)a25
{
  v32 = a3;
  v52 = a4;
  v49 = a5;
  v48 = a6;
  v33 = a7;
  v51 = a8;
  v34 = a9;
  v35 = a10;
  v50 = a11;
  v36 = a12;
  v37 = a21;
  v47 = v35;
  if (v32)
  {
    if (v33)
    {
      v53.receiver = self;
      v53.super_class = SMReceiverContact;
      v46 = v34;
      v38 = [(SMContact *)&v53 initWithIdentifier:v32 sessionID:v37 allowReadToken:v51 safetyCacheKey:v34 syncDate:v52 sharingInvitationData:v36 shareURL:v35 participantID:v50];
      v39 = v38;
      if (v38)
      {
        objc_storeStrong(&v38->_phoneCache, a5);
        objc_storeStrong(&v39->_watchCache, a6);
        objc_storeStrong(&v39->_sessionStatus, a7);
        v39->_numCacheDownloads = a13;
        v39->_numSuccessfulCacheDownloads = a14;
        v39->_maxPhoneCacheSize = a15;
        v39->_maxWatchCacheSize = a16;
        v39->_maxLocationsInPhoneCacheTrace = a17;
        v39->_maxLocationsInWatchCacheTrace = a18;
        v39->_timeTillCacheRelease = a19;
        v39->_timeTillFirstSuccessfulCacheDownload = a20;
        v39->_firstDetailViewSessionState = a22;
        v39->_lastDetailViewSessionState = a23;
        v39->_phoneMaxWorkoutEvents = a24;
        v39->_watchMaxWorkoutEvents = a25;
      }

      v40 = v39;
      v41 = v40;
      v34 = v46;
    }

    else
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v40 = self;
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
    v40 = self;
  }

  return v41;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMContact *)self sessionUUID];
  v5 = [(SMContact *)self identifier];
  v6 = [(SMReceiverContact *)self sessionStatus];
  v7 = [v6 initiatorHandle];
  v8 = [v7 primaryHandle];
  v9 = [(SMContact *)self syncDate];
  v10 = [v9 stringFromDate];
  v11 = [(SMContact *)self allowReadToken];
  v12 = [(SMContact *)self safetyCacheKey];
  v13 = [v3 stringWithFormat:@"sessionID, %@, identifier, %@, initiatorHandle, %@, syncDate, %@, allowReadToken, %@, safetyCacheKey, %@", v4, v5, v8, v10, v11, v12];

  return v13;
}

@end