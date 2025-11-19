@interface SMInitiatorContact
- (SMInitiatorContact)init;
- (SMInitiatorContact)initWithIdentifier:(id)a3 shouldBeCleanedUpDate:(id)a4 cloudkitShareZoneCleanedUpSuccessfully:(BOOL)a5 syncDate:(id)a6 keyReleaseMessageSendDate:(id)a7 scheduledSendExpiryDate:(id)a8 phoneCache:(id)a9 watchCache:(id)a10 sessionID:(id)a11 safetyCacheKey:(id)a12 allowReadToken:(id)a13 scheduleSendMessageGUID:(id)a14 unlockLocation:(id)a15 lockLocation:(id)a16 startingLocation:(id)a17 offWristLocation:(id)a18 parkedCarLocation:(id)a19 destinationMapItem:(id)a20 timeCacheUploadCompletion:(id)a21 maxCacheSize:(double)a22 maxLocationsInTrace:(int64_t)a23 maxTimeBetweenCacheUpdates:(double)a24 numCacheUpdates:(int64_t)a25 timeTilCacheRelease:(double)a26 numberOfSuccessfulCacheUpdates:(int64_t)a27 numberOfMessageCancelling:(int64_t)a28 numberOfSuccessfulMessageCancelling:(int64_t)a29 numberOfMessageScheduling:(int64_t)a30 numberOfSuccessfulMessageScheduling:(int64_t)a31 wasCacheReleased:(BOOL)a32 wasScheduledSendTriggered:(BOOL)a33 locationOfTrigger:(id)a34 triggerDate:(id)a35 lockState:(BOOL)a36 cacheUpdateBackstopExpiryDate:(id)a37 workoutEvents:(id)a38 numberOfHandoffBecomingActive:(int64_t)a39 numberOfHandoffBecomingNonActive:(int64_t)a40 earliestActiveDeviceIdentifier:(id)a41 latestActiveDeviceIdentifier:(id)a42;
- (id)description;
@end

@implementation SMInitiatorContact

- (SMInitiatorContact)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  LOBYTE(v10) = 1;
  LOWORD(v9) = 0;
  v7 = [(SMInitiatorContact *)self initWithIdentifier:v3 shouldBeCleanedUpDate:0 cloudkitShareZoneCleanedUpSuccessfully:0 syncDate:0 keyReleaseMessageSendDate:0 scheduledSendExpiryDate:0 phoneCache:-1.0 watchCache:-1.0 sessionID:-1.0 safetyCacheKey:v4 allowReadToken:v5 scheduleSendMessageGUID:0 unlockLocation:0 lockLocation:0 startingLocation:0 offWristLocation:0 parkedCarLocation:0 destinationMapItem:0 timeCacheUploadCompletion:0 maxCacheSize:0 maxLocationsInTrace:0 maxTimeBetweenCacheUpdates:0 numCacheUpdates:-1 timeTilCacheRelease:-1 numberOfSuccessfulCacheUpdates:-1 numberOfMessageCancelling:-1 numberOfSuccessfulMessageCancelling:-1 numberOfMessageScheduling:-1 numberOfSuccessfulMessageScheduling:-1 wasCacheReleased:v9 wasScheduledSendTriggered:0 locationOfTrigger:0 triggerDate:v10 lockState:0 cacheUpdateBackstopExpiryDate:v6 workoutEvents:0 numberOfHandoffBecomingActive:0 numberOfHandoffBecomingNonActive:0 earliestActiveDeviceIdentifier:0 latestActiveDeviceIdentifier:?];

  return v7;
}

- (SMInitiatorContact)initWithIdentifier:(id)a3 shouldBeCleanedUpDate:(id)a4 cloudkitShareZoneCleanedUpSuccessfully:(BOOL)a5 syncDate:(id)a6 keyReleaseMessageSendDate:(id)a7 scheduledSendExpiryDate:(id)a8 phoneCache:(id)a9 watchCache:(id)a10 sessionID:(id)a11 safetyCacheKey:(id)a12 allowReadToken:(id)a13 scheduleSendMessageGUID:(id)a14 unlockLocation:(id)a15 lockLocation:(id)a16 startingLocation:(id)a17 offWristLocation:(id)a18 parkedCarLocation:(id)a19 destinationMapItem:(id)a20 timeCacheUploadCompletion:(id)a21 maxCacheSize:(double)a22 maxLocationsInTrace:(int64_t)a23 maxTimeBetweenCacheUpdates:(double)a24 numCacheUpdates:(int64_t)a25 timeTilCacheRelease:(double)a26 numberOfSuccessfulCacheUpdates:(int64_t)a27 numberOfMessageCancelling:(int64_t)a28 numberOfSuccessfulMessageCancelling:(int64_t)a29 numberOfMessageScheduling:(int64_t)a30 numberOfSuccessfulMessageScheduling:(int64_t)a31 wasCacheReleased:(BOOL)a32 wasScheduledSendTriggered:(BOOL)a33 locationOfTrigger:(id)a34 triggerDate:(id)a35 lockState:(BOOL)a36 cacheUpdateBackstopExpiryDate:(id)a37 workoutEvents:(id)a38 numberOfHandoffBecomingActive:(int64_t)a39 numberOfHandoffBecomingNonActive:(int64_t)a40 earliestActiveDeviceIdentifier:(id)a41 latestActiveDeviceIdentifier:(id)a42
{
  v98 = a4;
  v89 = a7;
  v102 = a8;
  v97 = a9;
  v96 = a10;
  v47 = a14;
  v95 = a15;
  v94 = a16;
  v93 = a17;
  v92 = a18;
  v91 = a19;
  v48 = a20;
  v101 = a21;
  v90 = a34;
  v49 = a35;
  v100 = a37;
  v50 = a38;
  v51 = a41;
  v99 = a42;
  if (a3)
  {
    v86 = v50;
    v52 = v48;
    v103.receiver = self;
    v103.super_class = SMInitiatorContact;
    v53 = [(SMContact *)&v103 initWithIdentifier:a3 sessionID:a11 allowReadToken:a13 safetyCacheKey:a12 syncDate:a6 sharingInvitationData:0 shareURL:0 participantID:0];
    v54 = v98;
    v55 = v47;
    v56 = v102;
    v57 = v89;
    if (v53)
    {
      v58 = [v98 copy];
      shouldBeCleanedUpDate = v53->_shouldBeCleanedUpDate;
      v53->_shouldBeCleanedUpDate = v58;

      v53->_cloudkitShareZoneCleanedUpSuccessfully = a5;
      v60 = [v102 copy];
      scheduledSendExpiryDate = v53->_scheduledSendExpiryDate;
      v53->_scheduledSendExpiryDate = v60;

      v62 = [v89 copy];
      keyReleaseMessageSendDate = v53->_keyReleaseMessageSendDate;
      v53->_keyReleaseMessageSendDate = v62;

      objc_storeStrong(&v53->_unlockLocation, a15);
      objc_storeStrong(&v53->_lockLocation, a16);
      objc_storeStrong(&v53->_startingLocation, a17);
      objc_storeStrong(&v53->_offWristLocation, a18);
      objc_storeStrong(&v53->_parkedCarLocation, a19);
      v64 = [v52 copy];
      destinationMapItem = v53->_destinationMapItem;
      v53->_destinationMapItem = v64;

      objc_storeStrong(&v53->_phoneCache, a9);
      objc_storeStrong(&v53->_watchCache, a10);
      v66 = [v55 copy];
      scheduleSendMessageGUID = v53->_scheduleSendMessageGUID;
      v53->_scheduleSendMessageGUID = v66;

      v68 = [v101 copy];
      timeCacheUploadCompletion = v53->_timeCacheUploadCompletion;
      v53->_timeCacheUploadCompletion = v68;

      v53->_maxCacheSize = a22;
      v53->_maxLocationsInTrace = a23;
      v53->_maxTimeBetweenCacheUpdates = a24;
      v53->_numCacheUpdates = a25;
      v53->_timeTilCacheRelease = a26;
      v53->_numberOfSuccessfulCacheUpdates = a27;
      v53->_numberOfMessageCancelling = a28;
      v53->_numberOfSuccessfulMessageCancelling = a29;
      v53->_numberOfMessageScheduling = a30;
      v53->_numberOfSuccessfulMessageScheduling = a31;
      v53->_wasCacheReleased = a32;
      v53->_wasScheduledSendTriggered = a33;
      objc_storeStrong(&v53->_locationOfTrigger, a34);
      v70 = [v49 copy];
      triggerDate = v53->_triggerDate;
      v53->_triggerDate = v70;

      v53->_lockState = a36;
      v72 = [v100 copy];
      cacheUpdateBackstopExpiryDate = v53->_cacheUpdateBackstopExpiryDate;
      v53->_cacheUpdateBackstopExpiryDate = v72;

      if (v86)
      {
        v74 = [v86 mutableCopy];
      }

      else
      {
        v74 = objc_opt_new();
      }

      v78 = v74;
      objc_storeStrong(&v53->_workoutEvents, v74);

      v53->_numberOfHandoffBecomingActive = a39;
      v53->_numberOfHandoffBecomingNonActive = a40;
      v79 = [v51 copy];
      earliestActiveDeviceIdentifier = v53->_earliestActiveDeviceIdentifier;
      v53->_earliestActiveDeviceIdentifier = v79;

      v81 = [v99 copy];
      latestActiveDeviceIdentifier = v53->_latestActiveDeviceIdentifier;
      v53->_latestActiveDeviceIdentifier = v81;

      v57 = v89;
      v56 = v102;
    }

    v75 = v53;
    v77 = v75;
    v48 = v52;
    v50 = v86;
  }

  else
  {
    v75 = self;
    v76 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v76, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v77 = 0;
    v54 = v98;
    v55 = v47;
    v56 = v102;
    v57 = v89;
  }

  return v77;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  v30 = [(SMContact *)self sessionUUID];
  v29 = [(SMContact *)self identifier];
  v25 = [(SMContact *)self syncDate];
  v28 = [v25 stringFromDate];
  v24 = [(SMInitiatorContact *)self keyReleaseMessageSendDate];
  v19 = [v24 stringFromDate];
  v23 = [(SMInitiatorContact *)self shouldBeCleanedUpDate];
  v27 = [v23 stringFromDate];
  v18 = [(SMContact *)self allowReadToken];
  v26 = [(SMContact *)self safetyCacheKey];
  v17 = [(SMInitiatorContact *)self cloudkitShareZoneCleanedUpSuccessfully];
  v20 = [(SMInitiatorContact *)self scheduledSendExpiryDate];
  v16 = [v20 stringFromDate];
  v15 = [(SMInitiatorContact *)self scheduleSendMessageGUID];
  v14 = [(SMInitiatorContact *)self startingLocation];
  v13 = [(SMInitiatorContact *)self unlockLocation];
  v12 = [(SMInitiatorContact *)self lockLocation];
  v3 = [(SMInitiatorContact *)self parkedCarLocation];
  v4 = [(SMInitiatorContact *)self offWristLocation];
  v5 = [(SMInitiatorContact *)self workoutEvents];
  v6 = [v5 count];
  v7 = [(SMInitiatorContact *)self numberOfHandoffBecomingActive];
  v8 = [(SMInitiatorContact *)self numberOfHandoffBecomingNonActive];
  v9 = [(SMInitiatorContact *)self earliestActiveDeviceIdentifier];
  v10 = [(SMInitiatorContact *)self latestActiveDeviceIdentifier];
  v22 = [v21 stringWithFormat:@"sessionID, %@, identifier, %@, syncDate, %@, keyReleaseMessageDate, %@, shouldBeCleanedUpDate, %@, allowReadToken, %@, safetyCacheKey, %@, cloudKitCleanedUp, %d, scheduledSendDate, %@, scheduledSendGUID, %@, startLocation, %@, unlockLocation, %@, lockLocation, %@, parkedCarLocation, %@, offWristLocation, %@, workoutEventsCount, %lu, numberOfHandoffBecomingActive, %ld, numberOfHandoffBecomingNonActive, %ld, earliestActiveDeviceIdentifier, %@, latestActiveDeviceIdentifier, %@", v30, v29, v28, v19, v27, v18, v26, v17, v16, v15, v14, v13, v12, v3, v4, v6, v7, v8, v9, v10];

  return v22;
}

@end