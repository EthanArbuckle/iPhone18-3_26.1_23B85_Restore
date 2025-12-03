@interface SSVPlayActivityEvent
- (BOOL)isEqual:(id)equal;
- (NSData)dataRepresentation;
- (SSVPlayActivityEvent)init;
- (SSVPlayActivityEvent)initWithCoder:(id)coder;
- (SSVPlayActivityEvent)initWithDataRepresentation:(id)representation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)persistentID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSVPlayActivityEvent

- (SSVPlayActivityEvent)init
{
  v3.receiver = self;
  v3.super_class = SSVPlayActivityEvent;
  result = [(SSVPlayActivityEvent *)&v3 init];
  if (result)
  {
    result->_eventType = 0;
    result->_version = 1;
  }

  return result;
}

- (SSVPlayActivityEvent)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [[SSVPBPlayActivityEvent alloc] initWithData:representationCopy];
  if (!v5)
  {

    v6 = 0;
    goto LABEL_171;
  }

  v6 = [(SSVPlayActivityEvent *)self init];

  if (v6)
  {
    if ([(SSVPBPlayActivityEvent *)v5 hasContainerType])
    {
      v7 = [(SSVPBPlayActivityEvent *)v5 containerType]- 1;
      if (v7 > 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = qword_1D4B39058[v7];
      }

      v6->_containerType = v8;
    }

    if ([(SSVPBPlayActivityEvent *)v5 hasDeviceName])
    {
      deviceName = [(SSVPBPlayActivityEvent *)v5 deviceName];
      deviceName = v6->_deviceName;
      v6->_deviceName = deviceName;
    }

    if ([(SSVPBPlayActivityEvent *)v5 hasDisplayType])
    {
      v11 = [(SSVPBPlayActivityEvent *)v5 displayType]- 1;
      if (v11 < 3)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      v6->_displayType = v12;
    }

    if ([(SSVPBPlayActivityEvent *)v5 hasEndReasonType])
    {
      v13 = [(SSVPBPlayActivityEvent *)v5 endReasonType]- 1;
      if (v13 > 0xD)
      {
        v14 = 0;
      }

      else
      {
        v14 = qword_1D4B39078[v13];
      }

      v6->_endReasonType = v14;
    }

    if ([(SSVPBPlayActivityEvent *)v5 hasEventDateTimestamp])
    {
      [(SSVPBPlayActivityEvent *)v5 eventDateTimestamp];
      if (fabs(v15) > 2.22044605e-16)
      {
        v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
        eventDate = v6->_eventDate;
        v6->_eventDate = v16;
      }
    }

    if ([(SSVPBPlayActivityEvent *)v5 hasEventTimeZoneName])
    {
      eventTimeZoneName = [(SSVPBPlayActivityEvent *)v5 eventTimeZoneName];
      if (eventTimeZoneName)
      {
        v19 = [MEMORY[0x1E695DFE8] timeZoneWithName:eventTimeZoneName];
        eventTimeZone = v6->_eventTimeZone;
        v6->_eventTimeZone = v19;
      }
    }

    else
    {
      if (![(SSVPBPlayActivityEvent *)v5 hasEventSecondsFromGMT]|| ([(SSVPBPlayActivityEvent *)v5 eventSecondsFromGMT], fabs(v21) <= 2.22044605e-16))
      {
LABEL_31:
        if ([(SSVPBPlayActivityEvent *)v5 hasFeatureName])
        {
          featureName = [(SSVPBPlayActivityEvent *)v5 featureName];
          featureName = v6->_featureName;
          v6->_featureName = featureName;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasItemDuration])
        {
          [(SSVPBPlayActivityEvent *)v5 itemDuration];
          v6->_itemDuration = v25;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasItemEndTime])
        {
          [(SSVPBPlayActivityEvent *)v5 itemEndTime];
          v6->_itemEndTime = v26;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasItemStartTime])
        {
          [(SSVPBPlayActivityEvent *)v5 itemStartTime];
          v6->_itemStartTime = v27;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasItemType])
        {
          v28 = [(SSVPBPlayActivityEvent *)v5 itemType]- 1;
          if (v28 < 9)
          {
            v29 = v28 + 1;
          }

          else
          {
            v29 = 0;
          }

          v6->_itemType = v29;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasCharacterDisplayedCount])
        {
          v6->_lyricsDisplayedCharacterCount = [(SSVPBPlayActivityEvent *)v5 characterDisplayedCount];
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasLyricLanguage])
        {
          lyricLanguage = [(SSVPBPlayActivityEvent *)v5 lyricLanguage];
          lyricsLanguage = v6->_lyricsLanguage;
          v6->_lyricsLanguage = lyricLanguage;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasMediaType])
        {
          v6->_mediaType = [(SSVPBPlayActivityEvent *)v5 mediaType]== 1;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasOffline])
        {
          v6->_offline = [(SSVPBPlayActivityEvent *)v5 offline];
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasPersistentID])
        {
          v6->_persistentID = [(SSVPBPlayActivityEvent *)v5 persistentID];
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasRecommendationData])
        {
          recommendationData = [(SSVPBPlayActivityEvent *)v5 recommendationData];
          recommendationData = v6->_recommendationData;
          v6->_recommendationData = recommendationData;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasSBEnabled])
        {
          v6->_SBEnabled = [(SSVPBPlayActivityEvent *)v5 sBEnabled];
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasSourceType])
        {
          sourceType = [(SSVPBPlayActivityEvent *)v5 sourceType];
          v35 = sourceType == 1;
          if (sourceType == 2)
          {
            v35 = 2;
          }

          v6->_sourceType = v35;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasStoreAccountID])
        {
          v6->_storeAccountID = [(SSVPBPlayActivityEvent *)v5 storeAccountID];
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasStoreFrontID])
        {
          storeFrontID = [(SSVPBPlayActivityEvent *)v5 storeFrontID];
          storeFrontID = v6->_storeFrontID;
          v6->_storeFrontID = storeFrontID;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasTimedMetadata])
        {
          timedMetadata = [(SSVPBPlayActivityEvent *)v5 timedMetadata];
          timedMetadata = v6->_timedMetadata;
          v6->_timedMetadata = timedMetadata;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasTrackInfo])
        {
          trackInfo = [(SSVPBPlayActivityEvent *)v5 trackInfo];
          trackInfo = v6->_trackInfo;
          v6->_trackInfo = trackInfo;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasEventType])
        {
          eventType = [(SSVPBPlayActivityEvent *)v5 eventType];
          v43 = eventType == 2;
          if (eventType == 3)
          {
            v43 = 2;
          }

          v6->_eventType = v43;
          version = v6->_version;
          if (version <= 2)
          {
            version = 2;
          }

          v6->_version = version;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasReasonHintType])
        {
          v6->_reasonHintType = [(SSVPBPlayActivityEvent *)v5 reasonHintType]== 1;
          v45 = v6->_version;
          if (v45 <= 2)
          {
            v45 = 2;
          }

          v6->_version = v45;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasBuildVersion])
        {
          buildVersion = [(SSVPBPlayActivityEvent *)v5 buildVersion];
          buildVersion = v6->_buildVersion;
          v6->_buildVersion = buildVersion;

          v48 = v6->_version;
          if (v48 <= 2)
          {
            v48 = 2;
          }

          v6->_version = v48;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasRequestingBundleVersion])
        {
          requestingBundleVersion = [(SSVPBPlayActivityEvent *)v5 requestingBundleVersion];
          requestingBundleVersion = v6->_requestingBundleVersion;
          v6->_requestingBundleVersion = requestingBundleVersion;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasRequestingBundleIdentifier])
        {
          requestingBundleIdentifier = [(SSVPBPlayActivityEvent *)v5 requestingBundleIdentifier];
          requestingBundleIdentifier = v6->_requestingBundleIdentifier;
          v6->_requestingBundleIdentifier = requestingBundleIdentifier;
        }

        if ([(SSVPBPlayActivityEvent *)v5 hasSystemReleaseType])
        {
          systemReleaseType = [(SSVPBPlayActivityEvent *)v5 systemReleaseType];
          if (systemReleaseType - 1 >= 4)
          {
            v54 = 0;
          }

          else
          {
            v54 = systemReleaseType;
          }
        }

        else
        {
          if (![(SSVPBPlayActivityEvent *)v5 hasInternalBuild])
          {
LABEL_96:
            if ([(SSVPBPlayActivityEvent *)v5 hasEnqueuerProperties])
            {
              enqueuerProperties = [(SSVPBPlayActivityEvent *)v5 enqueuerProperties];
              if (enqueuerProperties)
              {
                v57 = objc_alloc_init(SSVMutablePlayActivityEnqueuerProperties);
                if ([enqueuerProperties hasBuildVersion])
                {
                  buildVersion2 = [enqueuerProperties buildVersion];
                  [(SSVMutablePlayActivityEnqueuerProperties *)v57 setBuildVersion:buildVersion2];
                }

                if ([enqueuerProperties hasDeviceGUID])
                {
                  deviceGUID = [enqueuerProperties deviceGUID];
                  [(SSVMutablePlayActivityEnqueuerProperties *)v57 setDeviceGUID:deviceGUID];
                }

                if ([enqueuerProperties hasDeviceName])
                {
                  deviceName2 = [enqueuerProperties deviceName];
                  [(SSVMutablePlayActivityEnqueuerProperties *)v57 setDeviceName:deviceName2];
                }

                if ([enqueuerProperties hasTimeZoneName])
                {
                  timeZoneName = [enqueuerProperties timeZoneName];
                  if (timeZoneName)
                  {
                    v62 = [MEMORY[0x1E695DFE8] timeZoneWithName:timeZoneName];
                    [(SSVMutablePlayActivityEnqueuerProperties *)v57 setTimeZone:v62];
                  }
                }

                if ([enqueuerProperties hasSystemReleaseType])
                {
                  v63 = [enqueuerProperties systemReleaseType] - 1;
                  if (v63 < 4)
                  {
                    v64 = v63 + 1;
                  }

                  else
                  {
                    v64 = 0;
                  }

                  [(SSVMutablePlayActivityEnqueuerProperties *)v57 setSystemReleaseType:v64];
                }

                if ([enqueuerProperties hasSBEnabled])
                {
                  -[SSVMutablePlayActivityEnqueuerProperties setSBEnabled:](v57, "setSBEnabled:", [enqueuerProperties sBEnabled]);
                }

                if ([enqueuerProperties hasStoreAccountID])
                {
                  -[SSVMutablePlayActivityEnqueuerProperties setStoreAccountID:](v57, "setStoreAccountID:", [enqueuerProperties storeAccountID]);
                }

                if ([enqueuerProperties hasStoreFrontID])
                {
                  storeFrontID2 = [enqueuerProperties storeFrontID];
                  [(SSVMutablePlayActivityEnqueuerProperties *)v57 setStoreFrontID:storeFrontID2];
                }

                if ([enqueuerProperties hasPrivateListeningEnabled])
                {
                  v66 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(enqueuerProperties, "privateListeningEnabled")}];
                  [(SSVMutablePlayActivityEnqueuerProperties *)v57 setPrivateListeningEnabled:v66];
                }

                v67 = [(SSVMutablePlayActivityEnqueuerProperties *)v57 copy];
                enqueuerProperties = v6->_enqueuerProperties;
                v6->_enqueuerProperties = v67;
              }
            }

            if ([(SSVPBPlayActivityEvent *)v5 hasHouseholdID])
            {
              householdID = [(SSVPBPlayActivityEvent *)v5 householdID];
              householdID = v6->_householdID;
              v6->_householdID = householdID;
            }

            if ([(SSVPBPlayActivityEvent *)v5 hasPrivateListeningEnabled])
            {
              v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSVPBPlayActivityEvent privateListeningEnabled](v5, "privateListeningEnabled")}];
              privateListeningEnabled = v6->_privateListeningEnabled;
              v6->_privateListeningEnabled = v71;
            }

            if ([(SSVPBPlayActivityEvent *)v5 hasSiriInitiated])
            {
              v73 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSVPBPlayActivityEvent siriInitiated](v5, "siriInitiated")}];
              siriInitiated = v6->_siriInitiated;
              v6->_siriInitiated = v73;
            }

            if (v6->_version > 1)
            {
              goto LABEL_141;
            }

            hasContainerID = [(SSVPBPlayActivityEvent *)v5 hasContainerID];
            v76 = hasContainerID;
            if (hasContainerID)
            {
              containerID = [(SSVPBPlayActivityEvent *)v5 containerID];
              containerID = v6->_containerID;
              v6->_containerID = containerID;
            }

            if ([(SSVPBPlayActivityEvent *)v5 hasExternalID])
            {
              externalID = [(SSVPBPlayActivityEvent *)v5 externalID];
              externalID = v6->_externalID;
              v6->_externalID = externalID;

              v76 = 1;
            }

            if ([(SSVPBPlayActivityEvent *)v5 hasPersonalizedContainerID])
            {
              personalizedContainerID = [(SSVPBPlayActivityEvent *)v5 personalizedContainerID];
              personalizedContainerID = v6->_personalizedContainerID;
              v6->_personalizedContainerID = personalizedContainerID;

              if (![(SSVPBPlayActivityEvent *)v5 hasStoreID])
              {
                goto LABEL_171;
              }

              goto LABEL_138;
            }

            if ([(SSVPBPlayActivityEvent *)v5 hasStoreID])
            {
LABEL_138:
              storeID = [(SSVPBPlayActivityEvent *)v5 storeID];
              storeID = v6->_storeID;
              v6->_storeID = storeID;
LABEL_170:

              goto LABEL_171;
            }

            if ((v76 & 1) == 0 && v6->_version >= 2)
            {
LABEL_141:
              v109 = 0;
              v110 = &v109;
              v111 = 0x3032000000;
              v112 = __Block_byref_object_copy__59;
              v113 = __Block_byref_object_dispose__59;
              v114 = 0;
              v108[0] = MEMORY[0x1E69E9820];
              v108[1] = 3221225472;
              v108[2] = __51__SSVPlayActivityEvent_initWithDataRepresentation___block_invoke;
              v108[3] = &unk_1E84AC2A8;
              v108[4] = &v109;
              v85 = MEMORY[0x1DA6DFBB0](v108);
              if ([(SSVPBPlayActivityEvent *)v5 hasContainerAdamID])
              {
                v85[2](v85);
                [v110[5] setAdamID:{-[SSVPBPlayActivityEvent containerAdamID](v5, "containerAdamID")}];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasGlobalPlaylistID])
              {
                v85[2](v85);
                v86 = v110[5];
                globalPlaylistID = [(SSVPBPlayActivityEvent *)v5 globalPlaylistID];
                [v86 setGlobalPlaylistID:globalPlaylistID];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasPlaylistVersionHash])
              {
                v85[2](v85);
                v88 = v110[5];
                playlistVersionHash = [(SSVPBPlayActivityEvent *)v5 playlistVersionHash];
                [v88 setPlaylistVersionHash:playlistVersionHash];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasStationHash])
              {
                v85[2](v85);
                v90 = v110[5];
                stationHash = [(SSVPBPlayActivityEvent *)v5 stationHash];
                [v90 setStationHash:stationHash];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasStationStringID])
              {
                v85[2](v85);
                v92 = v110[5];
                stationStringID = [(SSVPBPlayActivityEvent *)v5 stationStringID];
                [v92 setStationStringID:stationStringID];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasStationID])
              {
                v85[2](v85);
                [v110[5] setStationID:{-[SSVPBPlayActivityEvent stationID](v5, "stationID")}];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasCloudAlbumID])
              {
                v85[2](v85);
                v94 = v110[5];
                cloudAlbumID = [(SSVPBPlayActivityEvent *)v5 cloudAlbumID];
                [v94 setCloudAlbumID:cloudAlbumID];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasCloudPlaylistID])
              {
                v85[2](v85);
                [v110[5] setCloudPlaylistID:{-[SSVPBPlayActivityEvent cloudPlaylistID](v5, "cloudPlaylistID")}];
              }

              objc_storeStrong(&v6->_containerIDs, v110[5]);
              v102 = 0;
              v103 = &v102;
              v104 = 0x3032000000;
              v105 = __Block_byref_object_copy__59;
              v106 = __Block_byref_object_dispose__59;
              v107 = 0;
              v101[0] = MEMORY[0x1E69E9820];
              v101[1] = 3221225472;
              v101[2] = __51__SSVPlayActivityEvent_initWithDataRepresentation___block_invoke_2;
              v101[3] = &unk_1E84AC2A8;
              v101[4] = &v102;
              v96 = MEMORY[0x1DA6DFBB0](v101);
              if ([(SSVPBPlayActivityEvent *)v5 hasSubscriptionAdamID])
              {
                v96[2](v96);
                [v103[5] setSubscriptionAdamID:{-[SSVPBPlayActivityEvent subscriptionAdamID](v5, "subscriptionAdamID")}];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasPurchasedAdamID])
              {
                v96[2](v96);
                [v103[5] setPurchasedAdamID:{-[SSVPBPlayActivityEvent purchasedAdamID](v5, "purchasedAdamID")}];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasRadioAdamID])
              {
                v96[2](v96);
                [v103[5] setRadioAdamID:{-[SSVPBPlayActivityEvent radioAdamID](v5, "radioAdamID")}];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasItemCloudID])
              {
                v96[2](v96);
                [v103[5] setCloudID:{-[SSVPBPlayActivityEvent itemCloudID](v5, "itemCloudID")}];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasLyricsID])
              {
                v96[2](v96);
                v97 = v103[5];
                lyricsID = [(SSVPBPlayActivityEvent *)v5 lyricsID];
                [v97 setLyricsID:lyricsID];
              }

              if ([(SSVPBPlayActivityEvent *)v5 hasEquivalencySourceAdamID])
              {
                v96[2](v96);
                [v103[5] setEquivalencySourceAdamID:{-[SSVPBPlayActivityEvent equivalencySourceAdamID](v5, "equivalencySourceAdamID")}];
              }

              objc_storeStrong(&v6->_itemIDs, v103[5]);

              _Block_object_dispose(&v102, 8);
              _Block_object_dispose(&v109, 8);
              storeID = v114;
              goto LABEL_170;
            }

            goto LABEL_171;
          }

          internalBuild = [(SSVPBPlayActivityEvent *)v5 internalBuild];
          v54 = 4;
          if (!internalBuild)
          {
            v54 = 0;
          }
        }

        v6->_systemReleaseType = v54;
        goto LABEL_96;
      }

      v22 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v21];
      eventTimeZoneName = v6->_eventTimeZone;
      v6->_eventTimeZone = v22;
    }

    goto LABEL_31;
  }

LABEL_171:
  v99 = v6;

  return v99;
}

void __51__SSVPlayActivityEvent_initWithDataRepresentation___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = objc_alloc_init(SSVMutablePlayActivityEventContainerIDs);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __51__SSVPlayActivityEvent_initWithDataRepresentation___block_invoke_2(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = objc_alloc_init(SSVMutablePlayActivityEventItemIDs);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p persistentID:%llu", v5, self, -[SSVPlayActivityEvent persistentID](self, "persistentID")];

  if (self->_containerID)
  {
    [v6 appendFormat:@" containerID:'%@'", self->_containerID];
  }

  if (self->_containerIDs)
  {
    [v6 appendFormat:@" containerIDs:'%@'", self->_containerIDs];
  }

  if (self->_containerType)
  {
    [v6 appendFormat:@" containerType:%td", self->_containerType];
  }

  if (self->_deviceName)
  {
    [v6 appendFormat:@" deviceName:'%@'", self->_deviceName];
  }

  [v6 appendFormat:@" endReasonType:%td", self->_endReasonType];
  if (self->_enqueuerProperties)
  {
    [v6 appendFormat:@" enqueuerProperties:'%@'", self->_enqueuerProperties];
  }

  if (self->_eventDate)
  {
    [v6 appendFormat:@" eventDate:%@", self->_eventDate];
  }

  if (self->_eventTimeZone)
  {
    [v6 appendFormat:@" eventTimeZone:%@", self->_eventTimeZone];
  }

  if (self->_externalID)
  {
    [v6 appendFormat:@" externalID:'%@'", self->_externalID];
  }

  if (self->_featureName)
  {
    [v6 appendFormat:@" featureName:'%@'", self->_featureName];
  }

  if (self->_householdID)
  {
    [v6 appendFormat:@" householdID:'%@'", self->_householdID];
  }

  if (self->_systemReleaseType)
  {
    [v6 appendFormat:@" systemReleaseType: %li", self->_systemReleaseType];
  }

  [v6 appendFormat:@" itemDuration:%f itemStartTime:%f itemEndTime:%f", *&self->_itemDuration, *&self->_itemStartTime, *&self->_itemEndTime];
  if (self->_itemType)
  {
    [v6 appendFormat:@" itemType:%td", self->_itemType];
  }

  if (self->_itemIDs)
  {
    [v6 appendFormat:@" itemIDs:'%@'", self->_itemIDs];
  }

  [v6 appendFormat:@" mediaType:%td", self->_mediaType];
  if (self->_offline)
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  [v6 appendFormat:@" offline:%@", v7];
  if (self->_personalizedContainerID)
  {
    [v6 appendFormat:@" personalizedContainerID:'%@'", self->_personalizedContainerID];
  }

  if (self->_recommendationData)
  {
    [v6 appendFormat:@" hasRecommendationData:true"];
  }

  privateListeningEnabled = self->_privateListeningEnabled;
  if (privateListeningEnabled)
  {
    if ([(NSNumber *)privateListeningEnabled BOOLValue])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    [v6 appendFormat:@" privateListeningEnabled: %@", v9];
  }

  if (self->_SBEnabled)
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  [v6 appendFormat:@" SBEnabled:%@", v10];
  siriInitiated = self->_siriInitiated;
  if (siriInitiated)
  {
    if ([(NSNumber *)siriInitiated BOOLValue])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v6 appendFormat:@" siriInitiated: %@", v12];
  }

  [v6 appendFormat:@" sourceType:%td", self->_sourceType];
  [v6 appendFormat:@" storeAccountID:%llu", self->_storeAccountID];
  [v6 appendFormat:@" storeFrontID:%@", self->_storeFrontID];
  if (self->_storeID)
  {
    [v6 appendFormat:@" storeID:'%@'", self->_storeID];
  }

  if (self->_requestingBundleIdentifier)
  {
    [v6 appendFormat:@" requestingBundleIdentifier:'%@'", self->_requestingBundleIdentifier];
  }

  if (self->_requestingBundleVersion)
  {
    [v6 appendFormat:@" requestingBundleVersion:'%@'", self->_requestingBundleVersion];
  }

  v13 = [(NSData *)self->_timedMetadata length];
  if (v13)
  {
    [v6 appendFormat:@" timedMetadata(length):%td", v13];
  }

  if (self->_trackInfo)
  {
    [v6 appendString:@" hasTrackInfo:true"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      persistentID = [(SSVPlayActivityEvent *)self persistentID];
      v6 = persistentID == [(SSVPlayActivityEvent *)equalCopy persistentID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (SSVPlayActivityEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_SSVPlayActivityEventCoderDataRepresentation"];

  v6 = [(SSVPlayActivityEvent *)self initWithDataRepresentation:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(SSVPlayActivityEvent *)self dataRepresentation];
  if ([dataRepresentation length])
  {
    [coderCopy encodeObject:dataRepresentation forKey:@"_SSVPlayActivityEventCoderDataRepresentation"];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  _mutableCopyClass = [(SSVPlayActivityEvent *)self _mutableCopyClass];
  v6 = [[(objc_class *)_mutableCopyClass allocWithZone:zone] init];

  if (v6)
  {
    objc_storeStrong((v6 + 8), self->_buildVersion);
    objc_storeStrong((v6 + 16), self->_containerID);
    objc_storeStrong((v6 + 24), self->_containerIDs);
    *(v6 + 32) = self->_containerType;
    objc_storeStrong((v6 + 40), self->_deviceName);
    *(v6 + 48) = self->_displayType;
    *(v6 + 56) = self->_endReasonType;
    objc_storeStrong((v6 + 64), self->_enqueuerProperties);
    objc_storeStrong((v6 + 72), self->_eventDate);
    objc_storeStrong((v6 + 80), self->_eventTimeZone);
    *(v6 + 88) = self->_eventType;
    objc_storeStrong((v6 + 96), self->_externalID);
    objc_storeStrong((v6 + 112), self->_householdID);
    objc_storeStrong((v6 + 104), self->_featureName);
    objc_storeStrong((v6 + 120), self->_itemIDs);
    *(v6 + 128) = self->_itemDuration;
    *(v6 + 136) = self->_itemEndTime;
    *(v6 + 144) = self->_itemStartTime;
    *(v6 + 152) = *&self->_itemType;
    objc_storeStrong((v6 + 168), self->_lyricsLanguage);
    *(v6 + 176) = self->_mediaType;
    *(v6 + 184) = self->_offline;
    *(v6 + 192) = self->_persistentID;
    objc_storeStrong((v6 + 200), self->_personalizedContainerID);
    objc_storeStrong((v6 + 208), self->_privateListeningEnabled);
    *(v6 + 216) = self->_reasonHintType;
    objc_storeStrong((v6 + 224), self->_recommendationData);
    objc_storeStrong((v6 + 232), self->_requestingBundleIdentifier);
    objc_storeStrong((v6 + 240), self->_requestingBundleVersion);
    *(v6 + 248) = self->_SBEnabled;
    objc_storeStrong((v6 + 256), self->_siriInitiated);
    *(v6 + 264) = self->_sourceType;
    *(v6 + 280) = self->_storeAccountID;
    objc_storeStrong((v6 + 288), self->_storeFrontID);
    objc_storeStrong((v6 + 296), self->_storeID);
    *(v6 + 272) = self->_systemReleaseType;
    objc_storeStrong((v6 + 304), self->_timedMetadata);
    objc_storeStrong((v6 + 312), self->_trackInfo);
    *(v6 + 320) = self->_version;
  }

  return v6;
}

- (NSData)dataRepresentation
{
  v3 = objc_alloc_init(SSVPBPlayActivityEvent);
  v4 = [(SSVPlayActivityEvent *)self containerType]- 1;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1D4B39120[v4];
  }

  [(SSVPBPlayActivityEvent *)v3 setContainerType:v5];
  deviceName = [(SSVPlayActivityEvent *)self deviceName];
  [(SSVPBPlayActivityEvent *)v3 setDeviceName:deviceName];

  v7 = [(SSVPlayActivityEvent *)self displayType]- 1;
  if (v7 < 3)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 0;
  }

  [(SSVPBPlayActivityEvent *)v3 setDisplayType:v8];
  endReasonType = [(SSVPlayActivityEvent *)self endReasonType];
  v10 = 0;
  if (endReasonType - 1 <= 0xD)
  {
    v10 = dword_1D4B390E8[endReasonType - 1];
  }

  [(SSVPBPlayActivityEvent *)v3 setEndReasonType:v10];
  eventDate = [(SSVPlayActivityEvent *)self eventDate];
  [eventDate timeIntervalSinceReferenceDate];
  [(SSVPBPlayActivityEvent *)v3 setEventDateTimestamp:?];

  eventTimeZone = [(SSVPlayActivityEvent *)self eventTimeZone];
  name = [eventTimeZone name];
  [(SSVPBPlayActivityEvent *)v3 setEventTimeZoneName:name];

  featureName = [(SSVPlayActivityEvent *)self featureName];
  [(SSVPBPlayActivityEvent *)v3 setFeatureName:featureName];

  [(SSVPlayActivityEvent *)self itemDuration];
  [(SSVPBPlayActivityEvent *)v3 setItemDuration:?];
  [(SSVPlayActivityEvent *)self itemEndTime];
  [(SSVPBPlayActivityEvent *)v3 setItemEndTime:?];
  [(SSVPlayActivityEvent *)self itemStartTime];
  [(SSVPBPlayActivityEvent *)v3 setItemStartTime:?];
  v15 = [(SSVPlayActivityEvent *)self itemType]- 1;
  if (v15 < 9)
  {
    v16 = (v15 + 1);
  }

  else
  {
    v16 = 0;
  }

  [(SSVPBPlayActivityEvent *)v3 setItemType:v16];
  [(SSVPBPlayActivityEvent *)v3 setMediaType:[(SSVPlayActivityEvent *)self mediaType]== 1];
  [(SSVPBPlayActivityEvent *)v3 setCharacterDisplayedCount:[(SSVPlayActivityEvent *)self lyricsDisplayedCharacterCount]];
  lyricsLanguage = [(SSVPlayActivityEvent *)self lyricsLanguage];
  [(SSVPBPlayActivityEvent *)v3 setLyricLanguage:lyricsLanguage];

  [(SSVPBPlayActivityEvent *)v3 setOffline:[(SSVPlayActivityEvent *)self isOffline]];
  [(SSVPBPlayActivityEvent *)v3 setPersistentID:[(SSVPlayActivityEvent *)self persistentID]];
  recommendationData = [(SSVPlayActivityEvent *)self recommendationData];
  [(SSVPBPlayActivityEvent *)v3 setRecommendationData:recommendationData];

  [(SSVPBPlayActivityEvent *)v3 setSBEnabled:self->_SBEnabled];
  sourceType = [(SSVPlayActivityEvent *)self sourceType];
  if (sourceType == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = sourceType == 1;
  }

  [(SSVPBPlayActivityEvent *)v3 setSourceType:v20];
  [(SSVPBPlayActivityEvent *)v3 setStoreAccountID:[(SSVPlayActivityEvent *)self storeAccountID]];
  storeFrontID = [(SSVPlayActivityEvent *)self storeFrontID];
  [(SSVPBPlayActivityEvent *)v3 setStoreFrontID:storeFrontID];

  timedMetadata = [(SSVPlayActivityEvent *)self timedMetadata];
  [(SSVPBPlayActivityEvent *)v3 setTimedMetadata:timedMetadata];

  trackInfo = [(SSVPlayActivityEvent *)self trackInfo];
  [(SSVPBPlayActivityEvent *)v3 setTrackInfo:trackInfo];

  requestingBundleIdentifier = [(SSVPlayActivityEvent *)self requestingBundleIdentifier];
  [(SSVPBPlayActivityEvent *)v3 setRequestingBundleIdentifier:requestingBundleIdentifier];

  requestingBundleVersion = [(SSVPlayActivityEvent *)self requestingBundleVersion];
  [(SSVPBPlayActivityEvent *)v3 setRequestingBundleVersion:requestingBundleVersion];

  v26 = [(SSVPlayActivityEvent *)self systemReleaseType]- 1;
  if (v26 < 4)
  {
    v27 = (v26 + 1);
  }

  else
  {
    v27 = 0;
  }

  [(SSVPBPlayActivityEvent *)v3 setSystemReleaseType:v27];
  enqueuerProperties = [(SSVPlayActivityEvent *)self enqueuerProperties];
  if (enqueuerProperties)
  {
    v29 = objc_alloc_init(SSVPBPlayActivityEnqueuerProperties);
    buildVersion = [enqueuerProperties buildVersion];
    if (buildVersion)
    {
      [(SSVPBPlayActivityEnqueuerProperties *)v29 setBuildVersion:buildVersion];
    }

    deviceGUID = [enqueuerProperties deviceGUID];
    if (deviceGUID)
    {
      [(SSVPBPlayActivityEnqueuerProperties *)v29 setDeviceGUID:deviceGUID];
    }

    deviceName2 = [enqueuerProperties deviceName];
    if (deviceName2)
    {
      [(SSVPBPlayActivityEnqueuerProperties *)v29 setDeviceName:deviceName2];
    }

    isPrivateListeningEnabled = [enqueuerProperties isPrivateListeningEnabled];
    v34 = isPrivateListeningEnabled;
    if (isPrivateListeningEnabled)
    {
      -[SSVPBPlayActivityEnqueuerProperties setPrivateListeningEnabled:](v29, "setPrivateListeningEnabled:", [isPrivateListeningEnabled BOOLValue]);
    }

    timeZone = [enqueuerProperties timeZone];
    v36 = timeZone;
    if (timeZone)
    {
      name2 = [timeZone name];
      [(SSVPBPlayActivityEnqueuerProperties *)v29 setTimeZoneName:name2];
    }

    v38 = [enqueuerProperties systemReleaseType] - 1;
    if (v38 < 4)
    {
      v39 = (v38 + 1);
    }

    else
    {
      v39 = 0;
    }

    [(SSVPBPlayActivityEnqueuerProperties *)v29 setSystemReleaseType:v39];
    -[SSVPBPlayActivityEnqueuerProperties setSBEnabled:](v29, "setSBEnabled:", [enqueuerProperties isSBEnabled]);
    storeAccountID = [enqueuerProperties storeAccountID];
    if (storeAccountID)
    {
      [(SSVPBPlayActivityEnqueuerProperties *)v29 setStoreAccountID:storeAccountID];
    }

    storeFrontID2 = [enqueuerProperties storeFrontID];
    if (storeFrontID2)
    {
      [(SSVPBPlayActivityEnqueuerProperties *)v29 setStoreFrontID:storeFrontID2];
    }

    [(SSVPBPlayActivityEvent *)v3 setEnqueuerProperties:v29];
  }

  householdID = [(SSVPlayActivityEvent *)self householdID];
  [(SSVPBPlayActivityEvent *)v3 setHouseholdID:householdID];

  isPrivateListeningEnabled2 = [(SSVPlayActivityEvent *)self isPrivateListeningEnabled];
  v44 = isPrivateListeningEnabled2;
  if (isPrivateListeningEnabled2)
  {
    -[SSVPBPlayActivityEvent setPrivateListeningEnabled:](v3, "setPrivateListeningEnabled:", [isPrivateListeningEnabled2 BOOLValue]);
  }

  isSiriInitiated = [(SSVPlayActivityEvent *)self isSiriInitiated];
  v46 = isSiriInitiated;
  if (isSiriInitiated)
  {
    -[SSVPBPlayActivityEvent setSiriInitiated:](v3, "setSiriInitiated:", [isSiriInitiated BOOLValue]);
  }

  if (self->_version > 1)
  {
    buildVersion2 = [(SSVPlayActivityEvent *)self buildVersion];
    [(SSVPBPlayActivityEvent *)v3 setBuildVersion:buildVersion2];

    eventType = [(SSVPlayActivityEvent *)self eventType];
    if (eventType == 1)
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    if (eventType == 2)
    {
      v54 = 3;
    }

    else
    {
      v54 = v53;
    }

    [(SSVPBPlayActivityEvent *)v3 setEventType:v54];
    [(SSVPBPlayActivityEvent *)v3 setReasonHintType:[(SSVPlayActivityEvent *)self reasonHintType]== 1];
    containerIDs = [(SSVPlayActivityEvent *)self containerIDs];
    -[SSVPBPlayActivityEvent setContainerAdamID:](v3, "setContainerAdamID:", [containerIDs adamID]);
    globalPlaylistID = [containerIDs globalPlaylistID];
    [(SSVPBPlayActivityEvent *)v3 setGlobalPlaylistID:globalPlaylistID];

    playlistVersionHash = [containerIDs playlistVersionHash];
    [(SSVPBPlayActivityEvent *)v3 setPlaylistVersionHash:playlistVersionHash];

    stationHash = [containerIDs stationHash];
    [(SSVPBPlayActivityEvent *)v3 setStationHash:stationHash];

    stationStringID = [containerIDs stationStringID];
    [(SSVPBPlayActivityEvent *)v3 setStationStringID:stationStringID];

    -[SSVPBPlayActivityEvent setStationID:](v3, "setStationID:", [containerIDs stationID]);
    cloudAlbumID = [containerIDs cloudAlbumID];
    [(SSVPBPlayActivityEvent *)v3 setCloudAlbumID:cloudAlbumID];

    -[SSVPBPlayActivityEvent setCloudPlaylistID:](v3, "setCloudPlaylistID:", [containerIDs cloudPlaylistID]);
    itemIDs = [(SSVPlayActivityEvent *)self itemIDs];
    -[SSVPBPlayActivityEvent setSubscriptionAdamID:](v3, "setSubscriptionAdamID:", [itemIDs subscriptionAdamID]);
    -[SSVPBPlayActivityEvent setPurchasedAdamID:](v3, "setPurchasedAdamID:", [itemIDs purchasedAdamID]);
    -[SSVPBPlayActivityEvent setRadioAdamID:](v3, "setRadioAdamID:", [itemIDs radioAdamID]);
    -[SSVPBPlayActivityEvent setItemCloudID:](v3, "setItemCloudID:", [itemIDs cloudID]);
    lyricsID = [itemIDs lyricsID];
    [(SSVPBPlayActivityEvent *)v3 setLyricsID:lyricsID];

    -[SSVPBPlayActivityEvent setEquivalencySourceAdamID:](v3, "setEquivalencySourceAdamID:", [itemIDs equivalencySourceAdamID]);
  }

  else
  {
    containerID = [(SSVPlayActivityEvent *)self containerID];
    [(SSVPBPlayActivityEvent *)v3 setContainerID:containerID];

    externalID = [(SSVPlayActivityEvent *)self externalID];
    [(SSVPBPlayActivityEvent *)v3 setExternalID:externalID];

    personalizedContainerID = [(SSVPlayActivityEvent *)self personalizedContainerID];
    [(SSVPBPlayActivityEvent *)v3 setPersonalizedContainerID:personalizedContainerID];

    containerIDs = [(SSVPlayActivityEvent *)self storeID];
    [(SSVPBPlayActivityEvent *)v3 setStoreID:containerIDs];
  }

  data = [(SSVPBPlayActivityEvent *)v3 data];

  return data;
}

- (int64_t)persistentID
{
  for (i = self->_persistentID; !i; self->_persistentID = i)
  {
    v4 = CFUUIDCreate(0);
    i = *&CFUUIDGetUUIDBytes(v4);
    CFRelease(v4);
  }

  return i;
}

@end