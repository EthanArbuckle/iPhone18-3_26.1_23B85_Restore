@interface SSVMutablePlayActivityEvent
- (void)setBuildVersion:(id)version;
- (void)setContainerID:(id)d;
- (void)setContainerIDs:(id)ds;
- (void)setDeviceName:(id)name;
- (void)setEndReasonType:(unint64_t)type;
- (void)setEnqueuerProperties:(id)properties;
- (void)setEventDate:(id)date;
- (void)setEventTimeZone:(id)zone;
- (void)setExternalID:(id)d;
- (void)setFeatureName:(id)name;
- (void)setHouseholdID:(id)d;
- (void)setInternalBuild:(BOOL)build;
- (void)setItemIDs:(id)ds;
- (void)setLyricsLanguage:(id)language;
- (void)setPersonalizedContainerID:(id)d;
- (void)setPrivateListeningEnabled:(id)enabled;
- (void)setReasonHintType:(unint64_t)type;
- (void)setRecommendationData:(id)data;
- (void)setRequestingBundleIdentifier:(id)identifier;
- (void)setRequestingBundleVersion:(id)version;
- (void)setSiriInitiated:(id)initiated;
- (void)setStoreFrontID:(id)d;
- (void)setStoreID:(id)d;
- (void)setTimedMetadata:(id)metadata;
- (void)setTrackInfo:(id)info;
@end

@implementation SSVMutablePlayActivityEvent

- (void)setBuildVersion:(id)version
{
  if (self->super._buildVersion != version)
  {
    v5 = [version copy];
    buildVersion = self->super._buildVersion;
    self->super._buildVersion = v5;
  }
}

- (void)setContainerID:(id)d
{
  if (self->super._containerID != d)
  {
    v5 = [d copy];
    containerID = self->super._containerID;
    self->super._containerID = v5;
  }
}

- (void)setContainerIDs:(id)ds
{
  if (self->super._containerIDs != ds)
  {
    v4 = [ds copy];
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

- (void)setDeviceName:(id)name
{
  if (self->super._deviceName != name)
  {
    v5 = [name copy];
    deviceName = self->super._deviceName;
    self->super._deviceName = v5;
  }
}

- (void)setEndReasonType:(unint64_t)type
{
  self->super._endReasonType = type;
  version = self->super._version;
  if (version <= 2)
  {
    version = 2;
  }

  self->super._version = version;
}

- (void)setEnqueuerProperties:(id)properties
{
  if (self->super._enqueuerProperties != properties)
  {
    v5 = [properties copy];
    enqueuerProperties = self->super._enqueuerProperties;
    self->super._enqueuerProperties = v5;
  }
}

- (void)setEventDate:(id)date
{
  if (self->super._eventDate != date)
  {
    v5 = [date copy];
    eventDate = self->super._eventDate;
    self->super._eventDate = v5;
  }
}

- (void)setEventTimeZone:(id)zone
{
  if (self->super._eventTimeZone != zone)
  {
    v5 = [zone copy];
    eventTimeZone = self->super._eventTimeZone;
    self->super._eventTimeZone = v5;
  }
}

- (void)setExternalID:(id)d
{
  if (self->super._externalID != d)
  {
    v5 = [d copy];
    externalID = self->super._externalID;
    self->super._externalID = v5;
  }
}

- (void)setFeatureName:(id)name
{
  if (self->super._featureName != name)
  {
    v5 = [name copy];
    featureName = self->super._featureName;
    self->super._featureName = v5;
  }
}

- (void)setHouseholdID:(id)d
{
  if (self->super._householdID != d)
  {
    v5 = [d copy];
    householdID = self->super._householdID;
    self->super._householdID = v5;
  }
}

- (void)setInternalBuild:(BOOL)build
{
  v3 = 4;
  if (!build)
  {
    v3 = 0;
  }

  self->super._systemReleaseType = v3;
}

- (void)setItemIDs:(id)ds
{
  if (self->super._itemIDs != ds)
  {
    v4 = [ds copy];
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

- (void)setLyricsLanguage:(id)language
{
  if (self->super._lyricsLanguage != language)
  {
    v5 = [language copy];
    lyricsLanguage = self->super._lyricsLanguage;
    self->super._lyricsLanguage = v5;
  }
}

- (void)setPersonalizedContainerID:(id)d
{
  if (self->super._personalizedContainerID != d)
  {
    v5 = [d copy];
    personalizedContainerID = self->super._personalizedContainerID;
    self->super._personalizedContainerID = v5;
  }
}

- (void)setPrivateListeningEnabled:(id)enabled
{
  if (self->super._privateListeningEnabled != enabled)
  {
    v5 = [enabled copy];
    privateListeningEnabled = self->super._privateListeningEnabled;
    self->super._privateListeningEnabled = v5;
  }
}

- (void)setReasonHintType:(unint64_t)type
{
  self->super._reasonHintType = type;
  version = self->super._version;
  if (version <= 2)
  {
    version = 2;
  }

  self->super._version = version;
}

- (void)setRecommendationData:(id)data
{
  if (self->super._recommendationData != data)
  {
    v5 = [data copy];
    recommendationData = self->super._recommendationData;
    self->super._recommendationData = v5;
  }
}

- (void)setRequestingBundleIdentifier:(id)identifier
{
  if (self->super._requestingBundleIdentifier != identifier)
  {
    v5 = [identifier copy];
    requestingBundleIdentifier = self->super._requestingBundleIdentifier;
    self->super._requestingBundleIdentifier = v5;
  }
}

- (void)setRequestingBundleVersion:(id)version
{
  if (self->super._requestingBundleVersion != version)
  {
    v5 = [version copy];
    requestingBundleVersion = self->super._requestingBundleVersion;
    self->super._requestingBundleVersion = v5;
  }
}

- (void)setSiriInitiated:(id)initiated
{
  if (self->super._siriInitiated != initiated)
  {
    v5 = [initiated copy];
    siriInitiated = self->super._siriInitiated;
    self->super._siriInitiated = v5;
  }
}

- (void)setStoreFrontID:(id)d
{
  if (self->super._storeFrontID != d)
  {
    v5 = [d copy];
    storeFrontID = self->super._storeFrontID;
    self->super._storeFrontID = v5;
  }
}

- (void)setStoreID:(id)d
{
  if (self->super._storeID != d)
  {
    v5 = [d copy];
    storeID = self->super._storeID;
    self->super._storeID = v5;
  }
}

- (void)setTimedMetadata:(id)metadata
{
  if (self->super._timedMetadata != metadata)
  {
    v5 = [metadata copy];
    timedMetadata = self->super._timedMetadata;
    self->super._timedMetadata = v5;
  }
}

- (void)setTrackInfo:(id)info
{
  if (self->super._trackInfo != info)
  {
    v5 = [info copy];
    trackInfo = self->super._trackInfo;
    self->super._trackInfo = v5;
  }
}

@end