@interface SSVMutablePlayActivityEvent
- (void)setBuildVersion:(id)a3;
- (void)setContainerID:(id)a3;
- (void)setContainerIDs:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setEndReasonType:(unint64_t)a3;
- (void)setEnqueuerProperties:(id)a3;
- (void)setEventDate:(id)a3;
- (void)setEventTimeZone:(id)a3;
- (void)setExternalID:(id)a3;
- (void)setFeatureName:(id)a3;
- (void)setHouseholdID:(id)a3;
- (void)setInternalBuild:(BOOL)a3;
- (void)setItemIDs:(id)a3;
- (void)setLyricsLanguage:(id)a3;
- (void)setPersonalizedContainerID:(id)a3;
- (void)setPrivateListeningEnabled:(id)a3;
- (void)setReasonHintType:(unint64_t)a3;
- (void)setRecommendationData:(id)a3;
- (void)setRequestingBundleIdentifier:(id)a3;
- (void)setRequestingBundleVersion:(id)a3;
- (void)setSiriInitiated:(id)a3;
- (void)setStoreFrontID:(id)a3;
- (void)setStoreID:(id)a3;
- (void)setTimedMetadata:(id)a3;
- (void)setTrackInfo:(id)a3;
@end

@implementation SSVMutablePlayActivityEvent

- (void)setBuildVersion:(id)a3
{
  if (self->super._buildVersion != a3)
  {
    v5 = [a3 copy];
    buildVersion = self->super._buildVersion;
    self->super._buildVersion = v5;
  }
}

- (void)setContainerID:(id)a3
{
  if (self->super._containerID != a3)
  {
    v5 = [a3 copy];
    containerID = self->super._containerID;
    self->super._containerID = v5;
  }
}

- (void)setContainerIDs:(id)a3
{
  if (self->super._containerIDs != a3)
  {
    v4 = [a3 copy];
    containerIDs = self->super._containerIDs;
    self->super._containerIDs = v4;
  }

  version = self->super._version;
  if (version <= 2)
  {
    version = 2;
  }

  self->super._version = version;
}

- (void)setDeviceName:(id)a3
{
  if (self->super._deviceName != a3)
  {
    v5 = [a3 copy];
    deviceName = self->super._deviceName;
    self->super._deviceName = v5;
  }
}

- (void)setEndReasonType:(unint64_t)a3
{
  self->super._endReasonType = a3;
  version = self->super._version;
  if (version <= 2)
  {
    version = 2;
  }

  self->super._version = version;
}

- (void)setEnqueuerProperties:(id)a3
{
  if (self->super._enqueuerProperties != a3)
  {
    v5 = [a3 copy];
    enqueuerProperties = self->super._enqueuerProperties;
    self->super._enqueuerProperties = v5;
  }
}

- (void)setEventDate:(id)a3
{
  if (self->super._eventDate != a3)
  {
    v5 = [a3 copy];
    eventDate = self->super._eventDate;
    self->super._eventDate = v5;
  }
}

- (void)setEventTimeZone:(id)a3
{
  if (self->super._eventTimeZone != a3)
  {
    v5 = [a3 copy];
    eventTimeZone = self->super._eventTimeZone;
    self->super._eventTimeZone = v5;
  }
}

- (void)setExternalID:(id)a3
{
  if (self->super._externalID != a3)
  {
    v5 = [a3 copy];
    externalID = self->super._externalID;
    self->super._externalID = v5;
  }
}

- (void)setFeatureName:(id)a3
{
  if (self->super._featureName != a3)
  {
    v5 = [a3 copy];
    featureName = self->super._featureName;
    self->super._featureName = v5;
  }
}

- (void)setHouseholdID:(id)a3
{
  if (self->super._householdID != a3)
  {
    v5 = [a3 copy];
    householdID = self->super._householdID;
    self->super._householdID = v5;
  }
}

- (void)setInternalBuild:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->super._systemReleaseType = v3;
}

- (void)setItemIDs:(id)a3
{
  if (self->super._itemIDs != a3)
  {
    v4 = [a3 copy];
    itemIDs = self->super._itemIDs;
    self->super._itemIDs = v4;
  }

  version = self->super._version;
  if (version <= 2)
  {
    version = 2;
  }

  self->super._version = version;
}

- (void)setLyricsLanguage:(id)a3
{
  if (self->super._lyricsLanguage != a3)
  {
    v5 = [a3 copy];
    lyricsLanguage = self->super._lyricsLanguage;
    self->super._lyricsLanguage = v5;
  }
}

- (void)setPersonalizedContainerID:(id)a3
{
  if (self->super._personalizedContainerID != a3)
  {
    v5 = [a3 copy];
    personalizedContainerID = self->super._personalizedContainerID;
    self->super._personalizedContainerID = v5;
  }
}

- (void)setPrivateListeningEnabled:(id)a3
{
  if (self->super._privateListeningEnabled != a3)
  {
    v5 = [a3 copy];
    privateListeningEnabled = self->super._privateListeningEnabled;
    self->super._privateListeningEnabled = v5;
  }
}

- (void)setReasonHintType:(unint64_t)a3
{
  self->super._reasonHintType = a3;
  version = self->super._version;
  if (version <= 2)
  {
    version = 2;
  }

  self->super._version = version;
}

- (void)setRecommendationData:(id)a3
{
  if (self->super._recommendationData != a3)
  {
    v5 = [a3 copy];
    recommendationData = self->super._recommendationData;
    self->super._recommendationData = v5;
  }
}

- (void)setRequestingBundleIdentifier:(id)a3
{
  if (self->super._requestingBundleIdentifier != a3)
  {
    v5 = [a3 copy];
    requestingBundleIdentifier = self->super._requestingBundleIdentifier;
    self->super._requestingBundleIdentifier = v5;
  }
}

- (void)setRequestingBundleVersion:(id)a3
{
  if (self->super._requestingBundleVersion != a3)
  {
    v5 = [a3 copy];
    requestingBundleVersion = self->super._requestingBundleVersion;
    self->super._requestingBundleVersion = v5;
  }
}

- (void)setSiriInitiated:(id)a3
{
  if (self->super._siriInitiated != a3)
  {
    v5 = [a3 copy];
    siriInitiated = self->super._siriInitiated;
    self->super._siriInitiated = v5;
  }
}

- (void)setStoreFrontID:(id)a3
{
  if (self->super._storeFrontID != a3)
  {
    v5 = [a3 copy];
    storeFrontID = self->super._storeFrontID;
    self->super._storeFrontID = v5;
  }
}

- (void)setStoreID:(id)a3
{
  if (self->super._storeID != a3)
  {
    v5 = [a3 copy];
    storeID = self->super._storeID;
    self->super._storeID = v5;
  }
}

- (void)setTimedMetadata:(id)a3
{
  if (self->super._timedMetadata != a3)
  {
    v5 = [a3 copy];
    timedMetadata = self->super._timedMetadata;
    self->super._timedMetadata = v5;
  }
}

- (void)setTrackInfo:(id)a3
{
  if (self->super._trackInfo != a3)
  {
    v5 = [a3 copy];
    trackInfo = self->super._trackInfo;
    self->super._trackInfo = v5;
  }
}

@end