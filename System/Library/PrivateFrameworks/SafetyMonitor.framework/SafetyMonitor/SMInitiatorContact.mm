@interface SMInitiatorContact
- (SMInitiatorContact)init;
- (SMInitiatorContact)initWithIdentifier:(id)identifier shouldBeCleanedUpDate:(id)date cloudkitShareZoneCleanedUpSuccessfully:(BOOL)successfully syncDate:(id)syncDate keyReleaseMessageSendDate:(id)sendDate scheduledSendExpiryDate:(id)expiryDate phoneCache:(id)cache watchCache:(id)self0 sessionID:(id)self1 safetyCacheKey:(id)self2 allowReadToken:(id)self3 scheduleSendMessageGUID:(id)self4 unlockLocation:(id)self5 lockLocation:(id)self6 startingLocation:(id)self7 offWristLocation:(id)self8 parkedCarLocation:(id)self9 destinationMapItem:(id)item timeCacheUploadCompletion:(id)completion maxCacheSize:(double)size maxLocationsInTrace:(int64_t)trace maxTimeBetweenCacheUpdates:(double)updates numCacheUpdates:(int64_t)cacheUpdates timeTilCacheRelease:(double)release numberOfSuccessfulCacheUpdates:(int64_t)successfulCacheUpdates numberOfMessageCancelling:(int64_t)cancelling numberOfSuccessfulMessageCancelling:(int64_t)messageCancelling numberOfMessageScheduling:(int64_t)identifier0 numberOfSuccessfulMessageScheduling:(int64_t)identifier1 wasCacheReleased:(BOOL)identifier2 wasScheduledSendTriggered:(BOOL)identifier3 locationOfTrigger:(id)identifier4 triggerDate:(id)identifier5 lockState:(BOOL)identifier6 cacheUpdateBackstopExpiryDate:(id)identifier7 workoutEvents:(id)identifier8 numberOfHandoffBecomingActive:(int64_t)identifier9 numberOfHandoffBecomingNonActive:(int64_t)date0 earliestActiveDeviceIdentifier:(id)date1 latestActiveDeviceIdentifier:(id)date2;
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

- (SMInitiatorContact)initWithIdentifier:(id)identifier shouldBeCleanedUpDate:(id)date cloudkitShareZoneCleanedUpSuccessfully:(BOOL)successfully syncDate:(id)syncDate keyReleaseMessageSendDate:(id)sendDate scheduledSendExpiryDate:(id)expiryDate phoneCache:(id)cache watchCache:(id)self0 sessionID:(id)self1 safetyCacheKey:(id)self2 allowReadToken:(id)self3 scheduleSendMessageGUID:(id)self4 unlockLocation:(id)self5 lockLocation:(id)self6 startingLocation:(id)self7 offWristLocation:(id)self8 parkedCarLocation:(id)self9 destinationMapItem:(id)item timeCacheUploadCompletion:(id)completion maxCacheSize:(double)size maxLocationsInTrace:(int64_t)trace maxTimeBetweenCacheUpdates:(double)updates numCacheUpdates:(int64_t)cacheUpdates timeTilCacheRelease:(double)release numberOfSuccessfulCacheUpdates:(int64_t)successfulCacheUpdates numberOfMessageCancelling:(int64_t)cancelling numberOfSuccessfulMessageCancelling:(int64_t)messageCancelling numberOfMessageScheduling:(int64_t)identifier0 numberOfSuccessfulMessageScheduling:(int64_t)identifier1 wasCacheReleased:(BOOL)identifier2 wasScheduledSendTriggered:(BOOL)identifier3 locationOfTrigger:(id)identifier4 triggerDate:(id)identifier5 lockState:(BOOL)identifier6 cacheUpdateBackstopExpiryDate:(id)identifier7 workoutEvents:(id)identifier8 numberOfHandoffBecomingActive:(int64_t)identifier9 numberOfHandoffBecomingNonActive:(int64_t)date0 earliestActiveDeviceIdentifier:(id)date1 latestActiveDeviceIdentifier:(id)date2
{
  dateCopy = date;
  sendDateCopy = sendDate;
  expiryDateCopy = expiryDate;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  iDCopy = iD;
  locationCopy = location;
  lockLocationCopy = lockLocation;
  startingLocationCopy = startingLocation;
  wristLocationCopy = wristLocation;
  carLocationCopy = carLocation;
  itemCopy = item;
  completionCopy = completion;
  triggerCopy = trigger;
  triggerDateCopy = triggerDate;
  backstopExpiryDateCopy = backstopExpiryDate;
  eventsCopy = events;
  deviceIdentifierCopy = deviceIdentifier;
  activeDeviceIdentifierCopy = activeDeviceIdentifier;
  if (identifier)
  {
    v86 = eventsCopy;
    v52 = itemCopy;
    v103.receiver = self;
    v103.super_class = SMInitiatorContact;
    v53 = [(SMContact *)&v103 initWithIdentifier:identifier sessionID:d allowReadToken:token safetyCacheKey:key syncDate:syncDate sharingInvitationData:0 shareURL:0 participantID:0];
    v54 = dateCopy;
    v55 = iDCopy;
    v56 = expiryDateCopy;
    v57 = sendDateCopy;
    if (v53)
    {
      v58 = [dateCopy copy];
      shouldBeCleanedUpDate = v53->_shouldBeCleanedUpDate;
      v53->_shouldBeCleanedUpDate = v58;

      v53->_cloudkitShareZoneCleanedUpSuccessfully = successfully;
      v60 = [expiryDateCopy copy];
      scheduledSendExpiryDate = v53->_scheduledSendExpiryDate;
      v53->_scheduledSendExpiryDate = v60;

      v62 = [sendDateCopy copy];
      keyReleaseMessageSendDate = v53->_keyReleaseMessageSendDate;
      v53->_keyReleaseMessageSendDate = v62;

      objc_storeStrong(&v53->_unlockLocation, location);
      objc_storeStrong(&v53->_lockLocation, lockLocation);
      objc_storeStrong(&v53->_startingLocation, startingLocation);
      objc_storeStrong(&v53->_offWristLocation, wristLocation);
      objc_storeStrong(&v53->_parkedCarLocation, carLocation);
      v64 = [v52 copy];
      destinationMapItem = v53->_destinationMapItem;
      v53->_destinationMapItem = v64;

      objc_storeStrong(&v53->_phoneCache, cache);
      objc_storeStrong(&v53->_watchCache, watchCache);
      v66 = [v55 copy];
      scheduleSendMessageGUID = v53->_scheduleSendMessageGUID;
      v53->_scheduleSendMessageGUID = v66;

      v68 = [completionCopy copy];
      timeCacheUploadCompletion = v53->_timeCacheUploadCompletion;
      v53->_timeCacheUploadCompletion = v68;

      v53->_maxCacheSize = size;
      v53->_maxLocationsInTrace = trace;
      v53->_maxTimeBetweenCacheUpdates = updates;
      v53->_numCacheUpdates = cacheUpdates;
      v53->_timeTilCacheRelease = release;
      v53->_numberOfSuccessfulCacheUpdates = successfulCacheUpdates;
      v53->_numberOfMessageCancelling = cancelling;
      v53->_numberOfSuccessfulMessageCancelling = messageCancelling;
      v53->_numberOfMessageScheduling = scheduling;
      v53->_numberOfSuccessfulMessageScheduling = messageScheduling;
      v53->_wasCacheReleased = released;
      v53->_wasScheduledSendTriggered = triggered;
      objc_storeStrong(&v53->_locationOfTrigger, trigger);
      v70 = [triggerDateCopy copy];
      triggerDate = v53->_triggerDate;
      v53->_triggerDate = v70;

      v53->_lockState = state;
      v72 = [backstopExpiryDateCopy copy];
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

      v53->_numberOfHandoffBecomingActive = active;
      v53->_numberOfHandoffBecomingNonActive = nonActive;
      v79 = [deviceIdentifierCopy copy];
      earliestActiveDeviceIdentifier = v53->_earliestActiveDeviceIdentifier;
      v53->_earliestActiveDeviceIdentifier = v79;

      v81 = [activeDeviceIdentifierCopy copy];
      latestActiveDeviceIdentifier = v53->_latestActiveDeviceIdentifier;
      v53->_latestActiveDeviceIdentifier = v81;

      v57 = sendDateCopy;
      v56 = expiryDateCopy;
    }

    selfCopy = v53;
    v77 = selfCopy;
    itemCopy = v52;
    eventsCopy = v86;
  }

  else
  {
    selfCopy = self;
    v76 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v76, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v77 = 0;
    v54 = dateCopy;
    v55 = iDCopy;
    v56 = expiryDateCopy;
    v57 = sendDateCopy;
  }

  return v77;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  sessionUUID = [(SMContact *)self sessionUUID];
  identifier = [(SMContact *)self identifier];
  syncDate = [(SMContact *)self syncDate];
  stringFromDate = [syncDate stringFromDate];
  keyReleaseMessageSendDate = [(SMInitiatorContact *)self keyReleaseMessageSendDate];
  stringFromDate2 = [keyReleaseMessageSendDate stringFromDate];
  shouldBeCleanedUpDate = [(SMInitiatorContact *)self shouldBeCleanedUpDate];
  stringFromDate3 = [shouldBeCleanedUpDate stringFromDate];
  allowReadToken = [(SMContact *)self allowReadToken];
  safetyCacheKey = [(SMContact *)self safetyCacheKey];
  cloudkitShareZoneCleanedUpSuccessfully = [(SMInitiatorContact *)self cloudkitShareZoneCleanedUpSuccessfully];
  scheduledSendExpiryDate = [(SMInitiatorContact *)self scheduledSendExpiryDate];
  stringFromDate4 = [scheduledSendExpiryDate stringFromDate];
  scheduleSendMessageGUID = [(SMInitiatorContact *)self scheduleSendMessageGUID];
  startingLocation = [(SMInitiatorContact *)self startingLocation];
  unlockLocation = [(SMInitiatorContact *)self unlockLocation];
  lockLocation = [(SMInitiatorContact *)self lockLocation];
  parkedCarLocation = [(SMInitiatorContact *)self parkedCarLocation];
  offWristLocation = [(SMInitiatorContact *)self offWristLocation];
  workoutEvents = [(SMInitiatorContact *)self workoutEvents];
  v6 = [workoutEvents count];
  numberOfHandoffBecomingActive = [(SMInitiatorContact *)self numberOfHandoffBecomingActive];
  numberOfHandoffBecomingNonActive = [(SMInitiatorContact *)self numberOfHandoffBecomingNonActive];
  earliestActiveDeviceIdentifier = [(SMInitiatorContact *)self earliestActiveDeviceIdentifier];
  latestActiveDeviceIdentifier = [(SMInitiatorContact *)self latestActiveDeviceIdentifier];
  v22 = [v21 stringWithFormat:@"sessionID, %@, identifier, %@, syncDate, %@, keyReleaseMessageDate, %@, shouldBeCleanedUpDate, %@, allowReadToken, %@, safetyCacheKey, %@, cloudKitCleanedUp, %d, scheduledSendDate, %@, scheduledSendGUID, %@, startLocation, %@, unlockLocation, %@, lockLocation, %@, parkedCarLocation, %@, offWristLocation, %@, workoutEventsCount, %lu, numberOfHandoffBecomingActive, %ld, numberOfHandoffBecomingNonActive, %ld, earliestActiveDeviceIdentifier, %@, latestActiveDeviceIdentifier, %@", sessionUUID, identifier, stringFromDate, stringFromDate2, stringFromDate3, allowReadToken, safetyCacheKey, cloudkitShareZoneCleanedUpSuccessfully, stringFromDate4, scheduleSendMessageGUID, startingLocation, unlockLocation, lockLocation, parkedCarLocation, offWristLocation, v6, numberOfHandoffBecomingActive, numberOfHandoffBecomingNonActive, earliestActiveDeviceIdentifier, latestActiveDeviceIdentifier];

  return v22;
}

@end