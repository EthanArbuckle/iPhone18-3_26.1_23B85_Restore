@interface ICPlayActivityEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (ICPlayActivityEvent)init;
- (ICPlayActivityEvent)initWithCoder:(id)a3;
- (ICPlayActivityEvent)initWithDataRepresentation:(id)a3;
- (NSData)dataRepresentation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)persistentID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICPlayActivityEvent

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

- (NSData)dataRepresentation
{
  v3 = objc_alloc_init(ICPAPlayActivityEvent);
  v4 = [(ICPlayActivityEvent *)self containerType];
  if ((v4 - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1B47556F0[v4 - 1];
  }

  if (v3)
  {
    *&v3->_has |= 0x2000000uLL;
    v3->_containerType = v5;
    v6 = [(ICPlayActivityEvent *)self isContinuityCameraUsed];
    *&v3->_has |= 0x8000000000uLL;
    v3->_continuityCameraUsed = v6;
    v7 = [(ICPlayActivityEvent *)self isContinuityMicrophoneUsed];
    *&v3->_has |= 0x10000000000uLL;
    v3->_continuityMicrophoneUsed = v7;
    v8 = [(ICPlayActivityEvent *)self isDisplayTranslationEnabled];
    *&v3->_has |= 0x20000000000uLL;
    v3->_displayTranslationEnabled = v8;
    v9 = [(ICPlayActivityEvent *)self isDisplayTransliterationEnabled];
    *&v3->_has |= 0x40000000000uLL;
    v3->_displayTransliterationEnabled = v9;
    v10 = [(ICPlayActivityEvent *)self deviceName];
    objc_storeStrong(&v3->_deviceName, v10);

    v11 = [(ICPlayActivityEvent *)self displayType];
    if ((v11 - 1) < 3)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    *&v3->_has |= 0x4000000uLL;
    v3->_displayType = v12;
  }

  else
  {
    [(ICPlayActivityEvent *)self isContinuityCameraUsed];
    [(ICPlayActivityEvent *)self isContinuityMicrophoneUsed];
    [(ICPlayActivityEvent *)self isDisplayTranslationEnabled];
    [(ICPlayActivityEvent *)self isDisplayTransliterationEnabled];
    [(ICPlayActivityEvent *)self deviceName];

    [(ICPlayActivityEvent *)self displayType];
  }

  v13 = [(ICPlayActivityEvent *)self endReasonType];
  if ((v13 - 1) > 0xE)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1B4755720[v13 - 1];
  }

  if (v3)
  {
    *&v3->_has |= 0x8000000uLL;
    v3->_endReasonType = v14;
  }

  v15 = [(ICPlayActivityEvent *)self eventDate];
  [v15 timeIntervalSinceReferenceDate];
  if (v3)
  {
    *&v3->_has |= 0x20uLL;
    v3->_eventDateTimestamp = v16;
  }

  v17 = [(ICPlayActivityEvent *)self eventTimeZone];
  v18 = [v17 name];
  if (v3)
  {
    objc_storeStrong(&v3->_eventTimeZoneName, v18);
  }

  v19 = [(ICPlayActivityEvent *)self featureName];
  v20 = v19;
  if (v3)
  {
    objc_storeStrong(&v3->_featureName, v19);

    [(ICPlayActivityEvent *)self itemDuration];
    *&v3->_has |= 0x100uLL;
    v3->_itemDuration = v21;
    [(ICPlayActivityEvent *)self itemEndTime];
    *&v3->_has |= 0x200uLL;
    v3->_itemEndTime = v22;
    [(ICPlayActivityEvent *)self itemStartTime];
    *&v3->_has |= 0x400uLL;
    v3->_itemStartTime = v23;
    v24 = [(ICPlayActivityEvent *)self itemType];
    if ((v24 - 1) < 9)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    *&v3->_has |= 0x20000000uLL;
    v3->_itemType = v25;
    v26 = [(ICPlayActivityEvent *)self mediaType]== 1;
    *&v3->_has |= 0x40000000uLL;
    v3->_mediaType = v26;
    v27 = [(ICPlayActivityEvent *)self lyricsDisplayedCharacterCount];
    *&v3->_has |= 1uLL;
    v3->_characterDisplayedCount = v27;
    v28 = [(ICPlayActivityEvent *)self lyricsLanguage];
    objc_storeStrong(&v3->_lyricLanguage, v28);

    v29 = [(ICPlayActivityEvent *)self isOffline];
    *&v3->_has |= 0x200000000000uLL;
    v3->_offline = v29;
    v30 = [(ICPlayActivityEvent *)self persistentID];
    *&v3->_has |= 0x800uLL;
    v3->_persistentID = v30;
    v31 = [(ICPlayActivityEvent *)self queueGroupingID];
    objc_storeStrong(&v3->_queueGroupingID, v31);
  }

  else
  {

    [(ICPlayActivityEvent *)self itemDuration];
    [(ICPlayActivityEvent *)self itemEndTime];
    [(ICPlayActivityEvent *)self itemStartTime];
    [(ICPlayActivityEvent *)self itemType];
    [(ICPlayActivityEvent *)self mediaType];
    [(ICPlayActivityEvent *)self lyricsDisplayedCharacterCount];
    [(ICPlayActivityEvent *)self lyricsLanguage];

    [(ICPlayActivityEvent *)self isOffline];
    [(ICPlayActivityEvent *)self persistentID];
    v31 = [(ICPlayActivityEvent *)self queueGroupingID];
  }

  v32 = [(ICPlayActivityEvent *)self recommendationData];
  v33 = v32;
  if (v3)
  {
    objc_storeStrong(&v3->_recommendationData, v32);

    SBEnabled = self->_SBEnabled;
    *&v3->_has |= 0x800000000000uLL;
    v3->_sBEnabled = SBEnabled;
    v35 = [(ICPlayActivityEvent *)self sourceType];
    v36 = v35 == 1;
    if (v35 == 2)
    {
      v36 = 2;
    }

    *&v3->_has |= 0x400000000uLL;
    v3->_sourceType = v36;
    v37 = [(ICPlayActivityEvent *)self storeAccountID];
    *&v3->_has |= 0x40000uLL;
    v3->_storeAccountID = v37;
    v38 = [(ICPlayActivityEvent *)self storeFrontID];
    objc_storeStrong(&v3->_storeFrontID, v38);
  }

  else
  {

    [(ICPlayActivityEvent *)self sourceType];
    [(ICPlayActivityEvent *)self storeAccountID];
    v38 = [(ICPlayActivityEvent *)self storeFrontID];
  }

  v39 = [(ICPlayActivityEvent *)self timedMetadata];
  if (v3)
  {
    objc_storeStrong(&v3->_timedMetadata, v39);
  }

  v40 = [(ICPlayActivityEvent *)self trackInfo];
  if (v3)
  {
    objc_storeStrong(&v3->_trackInfo, v40);
  }

  v41 = [(ICPlayActivityEvent *)self requestingBundleIdentifier];
  if (v3)
  {
    objc_storeStrong(&v3->_requestingBundleIdentifier, v41);
  }

  v42 = [(ICPlayActivityEvent *)self requestingBundleVersion];
  v43 = v42;
  if (v3)
  {
    objc_storeStrong(&v3->_requestingBundleVersion, v42);

    v44 = [(ICPlayActivityEvent *)self systemReleaseType];
    if ((v44 - 1) < 4)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    *&v3->_has |= 0x800000000uLL;
    v3->_systemReleaseType = v45;
    v46 = [(ICPlayActivityEvent *)self sharedActivityGroupSizeCurrent];
    *&v3->_has |= 0x8000uLL;
    v3->_sharedActivityGroupSizeCurrent = v46;
    v47 = [(ICPlayActivityEvent *)self sharedActivityGroupSizeMax];
    *&v3->_has |= 0x10000uLL;
    v3->_sharedActivityGroupSizeMax = v47;
  }

  else
  {

    [(ICPlayActivityEvent *)self systemReleaseType];
    [(ICPlayActivityEvent *)self sharedActivityGroupSizeCurrent];
    [(ICPlayActivityEvent *)self sharedActivityGroupSizeMax];
  }

  v48 = [(ICPlayActivityEvent *)self sharedActivityType];
  if ((v48 - 1) > 5)
  {
    v49 = 0;
  }

  else
  {
    v49 = dword_1B4755708[v48 - 1];
  }

  if (v3)
  {
    *&v3->_has |= 0x200000000uLL;
    v3->_sharedActivityType = v49;
    v50 = [(ICPlayActivityEvent *)self isCollaborativePlaylist];
    *&v3->_has |= 0x100000000000uLL;
    v3->_isCollaborativePlaylist = v50;
    v51 = [(ICPlayActivityEvent *)self vocalAttenuationAvailability];
    v52 = v51 == 1;
    if (v51 == 2)
    {
      v52 = 2;
    }

    *&v3->_has |= 0x4000000000uLL;
    v3->_vocalAttenuationAvailibility = v52;
    [(ICPlayActivityEvent *)self vocalAttenuationDuration];
    *&v3->_has |= 0x400000uLL;
    v3->_vocalAttenuationDuration = v53;
    [(ICPlayActivityEvent *)self wallClockPlayDuration];
    *&v3->_has |= 0x800000uLL;
    v3->_wallClockPlayDuration = v54;
    v55 = [(ICPlayActivityEvent *)self userTransitionTypePreference];
    if ((v55 - 1) < 3)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    *&v3->_has |= 0x2000000000uLL;
    v3->_userTransitionTypePreference = v56;
    v57 = [(ICPlayActivityEvent *)self transitionTypeProvided];
    if ((v57 - 1) < 5)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    *&v3->_has |= 0x1000000000uLL;
    v3->_transitionTypeProvided = v58;
    v59 = [(ICPlayActivityEvent *)self audioQualityPreference];
    if ((v59 - 1) < 4)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    *&v3->_has |= 0x1000000uLL;
    v3->_audioQualityPreference = v60;
    v61 = [(ICPlayActivityEvent *)self playbackFormatPreference];
    v62 = v61 == 1;
    if (v61 == 2)
    {
      v62 = 2;
    }

    *&v3->_has |= 0x80000000uLL;
    v3->_playbackFormatPreference = v62;
  }

  else
  {
    [(ICPlayActivityEvent *)self isCollaborativePlaylist];
    [(ICPlayActivityEvent *)self vocalAttenuationAvailability];
    [(ICPlayActivityEvent *)self vocalAttenuationDuration];
    [(ICPlayActivityEvent *)self wallClockPlayDuration];
    [(ICPlayActivityEvent *)self userTransitionTypePreference];
    [(ICPlayActivityEvent *)self transitionTypeProvided];
    [(ICPlayActivityEvent *)self audioQualityPreference];
    [(ICPlayActivityEvent *)self playbackFormatPreference];
  }

  v63 = [(ICPlayActivityEvent *)self targetedAudioQuality];
  v144 = v63;
  if (v63)
  {
    v64 = objc_alloc_init(ICPAAudioQualityDictionary);
    v65 = [v63 bitDepth];
    if (v64)
    {
      *&v64->_has |= 1u;
      v64->_bitDepth = v65;
      v66 = [v63 bitRate];
      *&v64->_has |= 2u;
      v64->_bitRate = v66;
    }

    else
    {
      [v63 bitRate];
    }

    v67 = [v63 channelLayoutDescription];
    [(ICPAAudioQualityDictionary *)v64 setChannelLayoutDescription:v67];

    v63 = v144;
    v68 = [v144 codec];
    if (v64)
    {
      *&v64->_has |= 8u;
      v64->_codec = v68;
      v69 = [v144 sampleRate];
      *&v64->_has |= 4u;
      v64->_sampleRate = v69;
      v70 = [v144 isSpatialized];
      *&v64->_has |= 0x10u;
      v64->_isSpatialized = v70;
      if (!v3)
      {
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
      [v144 sampleRate];
      [v144 isSpatialized];
      if (!v3)
      {
        goto LABEL_62;
      }
    }

    objc_storeStrong(&v3->_targetedAudioQuality, v64);
    goto LABEL_62;
  }

LABEL_63:
  v142 = [(ICPlayActivityEvent *)self providedAudioQuality];
  if (v142)
  {
    v71 = objc_alloc_init(ICPAAudioQualityDictionary);
    v72 = [v142 bitDepth];
    if (v71)
    {
      *&v71->_has |= 1u;
      v71->_bitDepth = v72;
      v73 = [v142 bitRate];
      *&v71->_has |= 2u;
      v71->_bitRate = v73;
    }

    else
    {
      [v142 bitRate];
    }

    v74 = [v142 channelLayoutDescription];
    [(ICPAAudioQualityDictionary *)v71 setChannelLayoutDescription:v74];

    v75 = [v142 codec];
    if (v71)
    {
      *&v71->_has |= 8u;
      v71->_codec = v75;
      v76 = [v142 sampleRate];
      *&v71->_has |= 4u;
      v71->_sampleRate = v76;
      v77 = [v142 isSpatialized];
      *&v71->_has |= 0x10u;
      v71->_isSpatialized = v77;
    }

    else
    {
      [v142 sampleRate];
      [v142 isSpatialized];
    }

    v63 = v144;
    if (v3)
    {
      objc_storeStrong(&v3->_providedAudioQuality, v71);
    }
  }

  v143 = [(ICPlayActivityEvent *)self enqueuerProperties];
  if (v143)
  {
    v78 = objc_alloc_init(ICPAPlayActivityEnqueuerProperties);
    v79 = v143;
    v80 = [v143 buildVersion];
    if (v80 && v78)
    {
      objc_storeStrong(&v78->_buildVersion, v80);
    }

    v81 = [v143 deviceGUID];
    if (v81 && v78)
    {
      objc_storeStrong(&v78->_deviceGUID, v81);
    }

    v82 = [v143 deviceName];
    if (v82 && v78)
    {
      objc_storeStrong(&v78->_deviceName, v82);
    }

    v83 = [v143 isPrivateListeningEnabled];
    v84 = v83;
    if (v83)
    {
      v85 = [v83 BOOLValue];
      if (v78)
      {
        *&v78->_has |= 4u;
        v78->_privateListeningEnabled = v85;
      }
    }

    v86 = [v143 timeZone];
    v87 = v86;
    if (v86)
    {
      v88 = [v86 name];
      if (v78)
      {
        objc_storeStrong(&v78->_timeZoneName, v88);
      }

      v79 = v143;
    }

    v89 = [v79 systemReleaseType];
    if (v78)
    {
      if ((v89 - 1) < 4)
      {
        v90 = v89;
      }

      else
      {
        v90 = 0;
      }

      *&v78->_has |= 2u;
      v78->_systemReleaseType = v90;
      v91 = [v79 isSBEnabled];
      *&v78->_has |= 8u;
      v78->_sBEnabled = v91;
      v92 = [v79 storeAccountID];
      if (v92)
      {
        *&v78->_has |= 1u;
        v78->_storeAccountID = v92;
      }
    }

    else
    {
      [v79 isSBEnabled];
      [v79 storeAccountID];
    }

    v93 = [v79 storeFrontID];
    if (v93 && v78)
    {
      objc_storeStrong(&v78->_storeFrontID, v93);
    }

    if (v3)
    {
      objc_storeStrong(&v3->_enqueuerProperties, v78);
    }

    v63 = v144;
  }

  v94 = [(ICPlayActivityEvent *)self householdID];
  if (v3)
  {
    objc_storeStrong(&v3->_householdID, v94);
  }

  v95 = [(ICPlayActivityEvent *)self isPrivateListeningEnabled];
  v96 = v95;
  if (v95)
  {
    v97 = [v95 BOOLValue];
    if (v3)
    {
      *&v3->_has |= 0x400000000000uLL;
      v3->_privateListeningEnabled = v97;
    }
  }

  v98 = [(ICPlayActivityEvent *)self isSiriInitiated];
  v99 = v98;
  if (v98)
  {
    v100 = [v98 BOOLValue];
    if (v3)
    {
      *&v3->_has |= 0x1000000000000uLL;
      v3->_siriInitiated = v100;
    }
  }

  if (self->_version > 1)
  {
    v105 = objc_alloc_init(ICPAPlayModeDictionary);
    v107 = [(ICPlayActivityEvent *)self autoPlayMode];
    if (v105)
    {
      if ((v107 - 1) < 3)
      {
        v108 = v107;
      }

      else
      {
        v108 = 0;
      }

      *&v105->_has |= 1u;
      v105->_autoPlayMode = v108;
      v109 = [(ICPlayActivityEvent *)self repeatPlayMode];
      if ((v109 - 1) < 3)
      {
        v110 = v109;
      }

      else
      {
        v110 = 0;
      }

      *&v105->_has |= 2u;
      v105->_repeatPlayMode = v110;
      v111 = [(ICPlayActivityEvent *)self shufflePlayMode];
      v112 = v111 == 1;
      if (v111 == 2)
      {
        v112 = 2;
      }

      *&v105->_has |= 4u;
      v105->_shufflePlayMode = v112;
      if (!v3)
      {
        goto LABEL_128;
      }
    }

    else
    {
      [(ICPlayActivityEvent *)self repeatPlayMode];
      [(ICPlayActivityEvent *)self shufflePlayMode];
      if (!v3)
      {
        goto LABEL_128;
      }
    }

    objc_storeStrong(&v3->_playMode, v105);
LABEL_128:
    v113 = objc_alloc(MEMORY[0x1E695DF70]);
    v114 = [(ICPlayActivityEvent *)self buildFeatures];
    v115 = [v113 initWithArray:v114];
    if (v3)
    {
      objc_storeStrong(&v3->_buildFeatures, v115);
    }

    v116 = [(ICPlayActivityEvent *)self buildVersion];
    v117 = v116;
    if (v3)
    {
      objc_storeStrong(&v3->_buildVersion, v116);

      v118 = [(ICPlayActivityEvent *)self eventType];
      if (v118 == 1)
      {
        v119 = 2;
      }

      else
      {
        v119 = 1;
      }

      if (v118 == 2)
      {
        v119 = 3;
      }

      *&v3->_has |= 0x10000000uLL;
      v3->_eventType = v119;
      v120 = [(ICPlayActivityEvent *)self reasonHintType]== 1;
      *&v3->_has |= 0x100000000uLL;
      v3->_reasonHintType = v120;
    }

    else
    {

      [(ICPlayActivityEvent *)self eventType];
      [(ICPlayActivityEvent *)self reasonHintType];
    }

    v63 = v144;
    storeID = [(ICPlayActivityEvent *)self containerIDs];
    v121 = [storeID adamID];
    if (v3)
    {
      *&v3->_has |= 8uLL;
      v3->_containerAdamID = v121;
      v122 = [storeID globalPlaylistID];
      objc_storeStrong(&v3->_globalPlaylistID, v122);
    }

    else
    {
      v122 = [storeID globalPlaylistID];
    }

    v123 = [storeID playlistVersionHash];
    if (v3)
    {
      objc_storeStrong(&v3->_playlistVersionHash, v123);
    }

    v124 = [storeID stationHash];
    if (v3)
    {
      objc_storeStrong(&v3->_stationHash, v124);
    }

    v125 = [storeID stationStringID];
    v126 = v125;
    if (v3)
    {
      objc_storeStrong(&v3->_stationStringID, v125);

      v127 = [storeID stationID];
      *&v3->_has |= 0x20000uLL;
      v3->_stationID = v127;
      v128 = [storeID cloudAlbumID];
      objc_storeStrong(&v3->_cloudAlbumID, v128);

      v129 = [storeID cloudPlaylistID];
      *&v3->_has |= 4uLL;
      v3->_cloudPlaylistID = v129;
      v130 = [storeID cloudPlaylistFolderID];
      *&v3->_has |= 2uLL;
      v3->_cloudPlaylistFolderID = v130;
    }

    else
    {

      [storeID stationID];
      [storeID cloudAlbumID];

      [storeID cloudPlaylistID];
      [storeID cloudPlaylistFolderID];
    }

    v131 = [(ICPlayActivityEvent *)self itemIDs];
    v132 = [v131 subscriptionAdamID];
    if (v3)
    {
      *&v3->_has |= 0x80000uLL;
      v3->_subscriptionAdamID = v132;
      v133 = [v131 purchasedAdamID];
      *&v3->_has |= 0x1000uLL;
      v3->_purchasedAdamID = v133;
      v134 = [v131 radioAdamID];
      *&v3->_has |= 0x2000uLL;
      v3->_radioAdamID = v134;
      v135 = [v131 cloudID];
      *&v3->_has |= 0x80uLL;
      v3->_itemCloudID = v135;
      v136 = [v131 lyricsID];
      objc_storeStrong(&v3->_lyricsID, v136);

      v137 = [v131 equivalencySourceAdamID];
      *&v3->_has |= 0x10uLL;
      v3->_equivalencySourceAdamID = v137;
      v138 = [v131 reportingAdamID];
      *&v3->_has |= 0x4000uLL;
      v3->_reportingAdamID = v138;
    }

    else
    {
      [v131 purchasedAdamID];
      [v131 radioAdamID];
      [v131 cloudID];
      [v131 lyricsID];

      [v131 equivalencySourceAdamID];
      [v131 reportingAdamID];
    }

    goto LABEL_148;
  }

  v101 = [(ICPlayActivityEvent *)self containerID];
  if (v3)
  {
    objc_storeStrong(&v3->_containerID, v101);
  }

  v102 = [(ICPlayActivityEvent *)self externalID];
  if (v3)
  {
    objc_storeStrong(&v3->_externalID, v102);
  }

  v103 = [(ICPlayActivityEvent *)self personalizedContainerID];
  if (v3)
  {
    objc_storeStrong(&v3->_personalizedContainerID, v103);
  }

  v104 = [(ICPlayActivityEvent *)self storeID];
  v105 = v104;
  if (v3)
  {
    v105 = v104;
    storeID = v3->_storeID;
    v3->_storeID = &v105->super.super.isa;
LABEL_148:
  }

  v139 = [(ICPAPlayActivityEvent *)v3 data];

  return v139;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(ICPlayActivityEvent *)self _mutableCopyClass];
  v6 = [[(objc_class *)v5 allocWithZone:a3] init];

  if (v6)
  {
    *(v6 + 8) = self->_autoPlayMode;
    objc_storeStrong((v6 + 16), self->_buildFeatures);
    objc_storeStrong((v6 + 24), self->_buildVersion);
    objc_storeStrong((v6 + 32), self->_containerID);
    objc_storeStrong((v6 + 40), self->_containerIDs);
    *(v6 + 48) = self->_containerType;
    *(v6 + 56) = self->_continuityCameraUsed;
    objc_storeStrong((v6 + 64), self->_deviceName);
    *(v6 + 72) = self->_displayType;
    *(v6 + 80) = self->_endReasonType;
    objc_storeStrong((v6 + 88), self->_enqueuerProperties);
    objc_storeStrong((v6 + 96), self->_eventDate);
    objc_storeStrong((v6 + 104), self->_eventTimeZone);
    *(v6 + 112) = self->_eventType;
    objc_storeStrong((v6 + 120), self->_externalID);
    objc_storeStrong((v6 + 136), self->_householdID);
    objc_storeStrong((v6 + 128), self->_featureName);
    objc_storeStrong((v6 + 144), self->_itemIDs);
    *(v6 + 152) = self->_itemDuration;
    *(v6 + 160) = self->_itemEndTime;
    *(v6 + 168) = self->_itemStartTime;
    *(v6 + 176) = *&self->_itemType;
    objc_storeStrong((v6 + 192), self->_lyricsLanguage);
    *(v6 + 200) = self->_mediaType;
    *(v6 + 208) = self->_offline;
    *(v6 + 216) = self->_persistentID;
    objc_storeStrong((v6 + 224), self->_personalizedContainerID);
    objc_storeStrong((v6 + 232), self->_privateListeningEnabled);
    objc_storeStrong((v6 + 240), self->_queueGroupingID);
    *(v6 + 248) = self->_reasonHintType;
    objc_storeStrong((v6 + 256), self->_recommendationData);
    *(v6 + 264) = self->_repeatPlayMode;
    objc_storeStrong((v6 + 272), self->_requestingBundleIdentifier);
    objc_storeStrong((v6 + 280), self->_requestingBundleVersion);
    *(v6 + 288) = self->_SBEnabled;
    *(v6 + 296) = self->_shufflePlayMode;
    objc_storeStrong((v6 + 304), self->_siriInitiated);
    *(v6 + 312) = self->_sourceType;
    *(v6 + 328) = self->_storeAccountID;
    objc_storeStrong((v6 + 336), self->_storeFrontID);
    objc_storeStrong((v6 + 344), self->_storeID);
    *(v6 + 320) = self->_systemReleaseType;
    objc_storeStrong((v6 + 352), self->_timedMetadata);
    objc_storeStrong((v6 + 360), self->_trackInfo);
    *(v6 + 368) = self->_version;
    *(v6 + 376) = self->_audioQualityPreference;
    *(v6 + 384) = self->_playbackFormatPreference;
    objc_storeStrong((v6 + 392), self->_targetedAudioQuality);
    objc_storeStrong((v6 + 400), self->_providedAudioQuality);
    *(v6 + 408) = self->_sharedActivityGroupSizeCurrent;
    *(v6 + 416) = *&self->_sharedActivityGroupSizeMax;
    *(v6 + 432) = self->_collaborativePlaylist;
    *(v6 + 440) = self->_vocalAttenuationAvailability;
    *(v6 + 448) = self->_vocalAttenuationDuration;
    *(v6 + 456) = self->_continuityMicrophoneUsed;
    *(v6 + 457) = self->_displayTranslationEnabled;
    *(v6 + 458) = self->_displayTransliterationEnabled;
    *(v6 + 464) = self->_wallClockPlayDuration;
    *(v6 + 472) = self->_userTransitionTypePreference;
    *(v6 + 480) = self->_transitionTypeProvided;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ICPlayActivityEvent *)self dataRepresentation];
  if ([v4 length])
  {
    [v5 encodeObject:v4 forKey:@"_ICPlayActivityEventCoderDataRepresentation"];
  }
}

- (ICPlayActivityEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ICPlayActivityEventCoderDataRepresentation"];

  v6 = [(ICPlayActivityEvent *)self initWithDataRepresentation:v5];
  return v6;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  if (![(ICPlayActivityEvent *)self isEqual:v4])
  {
    goto LABEL_109;
  }

  autoPlayMode = self->_autoPlayMode;
  if (autoPlayMode != [v4 autoPlayMode])
  {
    goto LABEL_109;
  }

  buildFeatures = self->_buildFeatures;
  v7 = [v4 buildFeatures];
  v8 = v7;
  if (buildFeatures == v7)
  {
  }

  else
  {
    v9 = [(NSArray *)buildFeatures isEqual:v7];

    if (!v9)
    {
      goto LABEL_109;
    }
  }

  containerType = self->_containerType;
  if (containerType != [v4 containerType])
  {
    goto LABEL_109;
  }

  continuityCameraUsed = self->_continuityCameraUsed;
  if (continuityCameraUsed != [v4 isContinuityCameraUsed])
  {
    goto LABEL_109;
  }

  deviceName = self->_deviceName;
  v13 = [v4 deviceName];
  v14 = v13;
  if (deviceName == v13)
  {
  }

  else
  {
    v15 = [(NSString *)deviceName isEqual:v13];

    if (!v15)
    {
      goto LABEL_109;
    }
  }

  displayType = self->_displayType;
  if (displayType != [v4 displayType])
  {
    goto LABEL_109;
  }

  endReasonType = self->_endReasonType;
  if (endReasonType != [v4 endReasonType])
  {
    goto LABEL_109;
  }

  eventDate = self->_eventDate;
  v19 = [v4 eventDate];
  v20 = v19;
  if (eventDate == v19)
  {
  }

  else
  {
    v21 = [(NSDate *)eventDate isEqual:v19];

    if (!v21)
    {
      goto LABEL_109;
    }
  }

  eventTimeZone = self->_eventTimeZone;
  v23 = [v4 eventTimeZone];
  v24 = v23;
  if (eventTimeZone == v23)
  {
  }

  else
  {
    v25 = [(NSTimeZone *)eventTimeZone isEqual:v23];

    if (!v25)
    {
      goto LABEL_109;
    }
  }

  eventType = self->_eventType;
  if (eventType != [v4 eventType])
  {
    goto LABEL_109;
  }

  externalID = self->_externalID;
  v28 = [v4 externalID];
  v29 = v28;
  if (externalID == v28)
  {
  }

  else
  {
    v30 = [(NSString *)externalID isEqual:v28];

    if (!v30)
    {
      goto LABEL_109;
    }
  }

  featureName = self->_featureName;
  v32 = [v4 featureName];
  v33 = v32;
  if (featureName == v32)
  {
  }

  else
  {
    v34 = [(NSString *)featureName isEqual:v32];

    if (!v34)
    {
      goto LABEL_109;
    }
  }

  householdID = self->_householdID;
  v36 = [v4 householdID];
  v37 = v36;
  if (householdID == v36)
  {
  }

  else
  {
    v38 = [(NSString *)householdID isEqual:v36];

    if (!v38)
    {
      goto LABEL_109;
    }
  }

  itemDuration = self->_itemDuration;
  [v4 itemDuration];
  if (itemDuration != v40)
  {
    goto LABEL_109;
  }

  itemEndTime = self->_itemEndTime;
  [v4 itemEndTime];
  if (itemEndTime != v42)
  {
    goto LABEL_109;
  }

  itemStartTime = self->_itemStartTime;
  [v4 itemStartTime];
  if (itemStartTime != v44)
  {
    goto LABEL_109;
  }

  itemType = self->_itemType;
  if (itemType != [v4 itemType])
  {
    goto LABEL_109;
  }

  lyricsDisplayedCharacterCount = self->_lyricsDisplayedCharacterCount;
  if (lyricsDisplayedCharacterCount != [v4 lyricsDisplayedCharacterCount])
  {
    goto LABEL_109;
  }

  lyricsLanguage = self->_lyricsLanguage;
  v48 = [v4 lyricsLanguage];
  v49 = v48;
  if (lyricsLanguage == v48)
  {
  }

  else
  {
    v50 = [(NSString *)lyricsLanguage isEqual:v48];

    if (!v50)
    {
      goto LABEL_109;
    }
  }

  mediaType = self->_mediaType;
  if (mediaType != [v4 mediaType])
  {
    goto LABEL_109;
  }

  offline = self->_offline;
  if (offline != [v4 isOffline])
  {
    goto LABEL_109;
  }

  persistentID = self->_persistentID;
  if (persistentID != [v4 persistentID])
  {
    goto LABEL_109;
  }

  privateListeningEnabled = self->_privateListeningEnabled;
  v55 = [v4 isPrivateListeningEnabled];
  v56 = v55;
  if (privateListeningEnabled == v55)
  {
  }

  else
  {
    v57 = [(NSNumber *)privateListeningEnabled isEqual:v55];

    if (!v57)
    {
      goto LABEL_109;
    }
  }

  queueGroupingID = self->_queueGroupingID;
  v59 = [v4 queueGroupingID];
  v60 = v59;
  if (queueGroupingID == v59)
  {
  }

  else
  {
    v61 = [(NSString *)queueGroupingID isEqual:v59];

    if (!v61)
    {
      goto LABEL_109;
    }
  }

  reasonHintType = self->_reasonHintType;
  if (reasonHintType != [v4 reasonHintType])
  {
    goto LABEL_109;
  }

  recommendationData = self->_recommendationData;
  v64 = [v4 recommendationData];
  v65 = v64;
  if (recommendationData == v64)
  {
  }

  else
  {
    v66 = [(NSData *)recommendationData isEqual:v64];

    if (!v66)
    {
      goto LABEL_109;
    }
  }

  repeatPlayMode = self->_repeatPlayMode;
  if (repeatPlayMode != [v4 repeatPlayMode])
  {
    goto LABEL_109;
  }

  requestingBundleIdentifier = self->_requestingBundleIdentifier;
  v69 = [v4 requestingBundleIdentifier];
  v70 = v69;
  if (requestingBundleIdentifier == v69)
  {
  }

  else
  {
    v71 = [(NSString *)requestingBundleIdentifier isEqual:v69];

    if (!v71)
    {
      goto LABEL_109;
    }
  }

  v72 = self->_requestingBundleIdentifier;
  v73 = [v4 requestingBundleIdentifier];
  v74 = v73;
  if (v72 == v73)
  {
  }

  else
  {
    v75 = [(NSString *)v72 isEqual:v73];

    if (!v75)
    {
      goto LABEL_109;
    }
  }

  requestingBundleVersion = self->_requestingBundleVersion;
  v77 = [v4 requestingBundleVersion];
  v78 = v77;
  if (requestingBundleVersion == v77)
  {
  }

  else
  {
    v79 = [(NSString *)requestingBundleVersion isEqual:v77];

    if (!v79)
    {
      goto LABEL_109;
    }
  }

  SBEnabled = self->_SBEnabled;
  if (SBEnabled != [v4 isSBEnabled])
  {
LABEL_109:
    v117 = 0;
    goto LABEL_110;
  }

  siriInitiated = self->_siriInitiated;
  v82 = [v4 isSiriInitiated];
  v83 = v82;
  if (siriInitiated == v82)
  {
  }

  else
  {
    v84 = [(NSNumber *)siriInitiated isEqual:v82];

    if (!v84)
    {
      goto LABEL_109;
    }
  }

  shufflePlayMode = self->_shufflePlayMode;
  if (shufflePlayMode != [v4 shufflePlayMode])
  {
    goto LABEL_109;
  }

  sourceType = self->_sourceType;
  if (sourceType != [v4 sourceType])
  {
    goto LABEL_109;
  }

  systemReleaseType = self->_systemReleaseType;
  if (systemReleaseType != [v4 systemReleaseType])
  {
    goto LABEL_109;
  }

  storeAccountID = self->_storeAccountID;
  if (storeAccountID != [v4 storeAccountID])
  {
    goto LABEL_109;
  }

  storeFrontID = self->_storeFrontID;
  v90 = [v4 storeFrontID];
  v91 = v90;
  if (storeFrontID == v90)
  {
  }

  else
  {
    v92 = [(NSString *)storeFrontID isEqual:v90];

    if (!v92)
    {
      goto LABEL_109;
    }
  }

  timedMetadata = self->_timedMetadata;
  v94 = [v4 timedMetadata];
  v95 = v94;
  if (timedMetadata == v94)
  {
  }

  else
  {
    v96 = [(NSData *)timedMetadata isEqual:v94];

    if (!v96)
    {
      goto LABEL_109;
    }
  }

  trackInfo = self->_trackInfo;
  v98 = [v4 trackInfo];
  v99 = v98;
  if (trackInfo == v98)
  {
  }

  else
  {
    v100 = [(NSData *)trackInfo isEqual:v98];

    if (!v100)
    {
      goto LABEL_109;
    }
  }

  audioQualityPreference = self->_audioQualityPreference;
  if (audioQualityPreference != [v4 audioQualityPreference])
  {
    goto LABEL_109;
  }

  playbackFormatPreference = self->_playbackFormatPreference;
  if (playbackFormatPreference != [v4 playbackFormatPreference])
  {
    goto LABEL_109;
  }

  sharedActivityGroupSizeCurrent = self->_sharedActivityGroupSizeCurrent;
  if (sharedActivityGroupSizeCurrent != [v4 sharedActivityGroupSizeCurrent])
  {
    goto LABEL_109;
  }

  sharedActivityGroupSizeMax = self->_sharedActivityGroupSizeMax;
  if (sharedActivityGroupSizeMax != [v4 sharedActivityGroupSizeMax])
  {
    goto LABEL_109;
  }

  sharedActivityType = self->_sharedActivityType;
  if (sharedActivityType != [v4 sharedActivityType])
  {
    goto LABEL_109;
  }

  collaborativePlaylist = self->_collaborativePlaylist;
  if (collaborativePlaylist != [v4 isCollaborativePlaylist])
  {
    goto LABEL_109;
  }

  vocalAttenuationAvailability = self->_vocalAttenuationAvailability;
  if (vocalAttenuationAvailability != [v4 vocalAttenuationAvailability])
  {
    goto LABEL_109;
  }

  vocalAttenuationDuration = self->_vocalAttenuationDuration;
  [v4 vocalAttenuationDuration];
  if (vocalAttenuationDuration != v109)
  {
    goto LABEL_109;
  }

  continuityMicrophoneUsed = self->_continuityMicrophoneUsed;
  if (continuityMicrophoneUsed != [v4 isContinuityMicrophoneUsed])
  {
    goto LABEL_109;
  }

  displayTranslationEnabled = self->_displayTranslationEnabled;
  if (displayTranslationEnabled != [v4 isDisplayTranslationEnabled])
  {
    goto LABEL_109;
  }

  displayTransliterationEnabled = self->_displayTransliterationEnabled;
  if (displayTransliterationEnabled != [v4 isDisplayTransliterationEnabled])
  {
    goto LABEL_109;
  }

  wallClockPlayDuration = self->_wallClockPlayDuration;
  [v4 wallClockPlayDuration];
  if (wallClockPlayDuration != v114)
  {
    goto LABEL_109;
  }

  userTransitionTypePreference = self->_userTransitionTypePreference;
  if (userTransitionTypePreference != [v4 userTransitionTypePreference])
  {
    goto LABEL_109;
  }

  transitionTypeProvided = self->_transitionTypeProvided;
  v117 = transitionTypeProvided == [v4 transitionTypeProvided];
LABEL_110:

  return v117;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ICPlayActivityEvent *)self persistentID];
      v6 = v5 == [(ICPlayActivityEvent *)v4 persistentID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p persistentID:%llu version:%lu\n", v5, self, -[ICPlayActivityEvent persistentID](self, "persistentID"), self->_version];

  [v6 appendFormat:@"    eventType: %lu\n", self->_eventType];
  if (self->_containerID)
  {
    [v6 appendFormat:@"    containerID:'%@'\n", self->_containerID];
  }

  if (self->_containerIDs)
  {
    [v6 appendFormat:@"    containerIDs:'%@'\n", self->_containerIDs];
  }

  if (self->_containerType)
  {
    [v6 appendFormat:@"    containerType:%td\n", self->_containerType];
  }

  if (self->_continuityCameraUsed)
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  [v6 appendFormat:@"    continuityCameraUsed:%@\n", v7];
  if (self->_continuityMicrophoneUsed)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  [v6 appendFormat:@"    continuityMicrophoneUsed:%@\n", v8];
  if (self->_displayTranslationEnabled)
  {
    v9 = @"true";
  }

  else
  {
    v9 = @"false";
  }

  [v6 appendFormat:@"    displayTranslationEnabled:%@\n", v9];
  if (self->_displayTransliterationEnabled)
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  [v6 appendFormat:@"    displayTransliterationEnabled:%@\n", v10];
  if (self->_deviceName)
  {
    [v6 appendFormat:@"    deviceName:'%@'\n", self->_deviceName];
  }

  [v6 appendFormat:@"    endReasonType:%td\n", self->_endReasonType];
  if (self->_enqueuerProperties)
  {
    [v6 appendFormat:@"    enqueuerProperties:'%@'\n", self->_enqueuerProperties];
  }

  if (self->_eventDate)
  {
    [v6 appendFormat:@"    eventDate:%@\n", self->_eventDate];
  }

  if (self->_eventTimeZone)
  {
    [v6 appendFormat:@"    eventTimeZone:%@\n", self->_eventTimeZone];
  }

  if (self->_externalID)
  {
    [v6 appendFormat:@"    externalID:'%@'\n", self->_externalID];
  }

  if (self->_featureName)
  {
    [v6 appendFormat:@"    featureName:'%@'\n", self->_featureName];
  }

  if (self->_householdID)
  {
    [v6 appendFormat:@"    householdID:'%@'\n", self->_householdID];
  }

  if (self->_systemReleaseType)
  {
    [v6 appendFormat:@"    systemReleaseType: %li\n", self->_systemReleaseType];
  }

  [v6 appendFormat:@"    itemDuration:%f\n    itemStartTime:%f  \n    itemEndTime:%f\n", *&self->_itemDuration, *&self->_itemStartTime, *&self->_itemEndTime];
  [v6 appendFormat:@"    itemType:%td\n", self->_itemType];
  if (self->_itemIDs)
  {
    [v6 appendFormat:@"    itemIDs:'%@'\n", self->_itemIDs];
  }

  [v6 appendFormat:@"    mediaType:%td\n", self->_mediaType];
  if (self->_offline)
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  [v6 appendFormat:@"    offline:%@\n", v11];
  if (self->_personalizedContainerID)
  {
    [v6 appendFormat:@"    personalizedContainerID:'%@'\n", self->_personalizedContainerID];
  }

  if (self->_queueGroupingID)
  {
    [v6 appendFormat:@"    queueGroupingID:'%@'\n", self->_queueGroupingID];
  }

  if (self->_recommendationData)
  {
    [v6 appendFormat:@"    hasRecommendationData:true\n"];
  }

  privateListeningEnabled = self->_privateListeningEnabled;
  if (privateListeningEnabled)
  {
    if ([(NSNumber *)privateListeningEnabled BOOLValue])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    [v6 appendFormat:@"    privateListeningEnabled: %@\n", v13];
  }

  if (self->_SBEnabled)
  {
    v14 = @"true";
  }

  else
  {
    v14 = @"false";
  }

  [v6 appendFormat:@"    SBEnabled:%@\n", v14];
  siriInitiated = self->_siriInitiated;
  if (siriInitiated)
  {
    if ([(NSNumber *)siriInitiated BOOLValue])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    [v6 appendFormat:@"    siriInitiated: %@\n", v16];
  }

  [v6 appendFormat:@"    sourceType:%td\n", self->_sourceType];
  [v6 appendFormat:@"    storeAccountID:%llu\n", self->_storeAccountID];
  [v6 appendFormat:@"    storeFrontID:%@\n", self->_storeFrontID];
  if (self->_storeID)
  {
    [v6 appendFormat:@"    storeID:'%@'\n", self->_storeID];
  }

  if (self->_requestingBundleIdentifier)
  {
    [v6 appendFormat:@"    requestingBundleIdentifier:'%@'\n", self->_requestingBundleIdentifier];
  }

  if (self->_requestingBundleVersion)
  {
    [v6 appendFormat:@"    requestingBundleVersion:'%@'\n", self->_requestingBundleVersion];
  }

  v17 = [(NSData *)self->_timedMetadata length];
  if (v17)
  {
    [v6 appendFormat:@"    timedMetadata(length):%td\n", v17];
  }

  if (self->_trackInfo)
  {
    [v6 appendString:@"    hasTrackInfo:true\n"];
  }

  buildFeatures = self->_buildFeatures;
  if (buildFeatures)
  {
    v19 = [(NSArray *)buildFeatures msv_compactDescription];
    [v6 appendFormat:@"    buildFeatures:[%@]\n", v19];
  }

  if (self->_autoPlayMode)
  {
    [v6 appendFormat:@"    autoPlayMode:%td\n", self->_autoPlayMode];
  }

  if (self->_repeatPlayMode)
  {
    [v6 appendFormat:@"    repeatPlayMode:%td\n", self->_repeatPlayMode];
  }

  if (self->_shufflePlayMode)
  {
    [v6 appendFormat:@"    shufflePlayMode:%td\n", self->_shufflePlayMode];
  }

  if (self->_audioQualityPreference)
  {
    [v6 appendFormat:@"    audioQualityPreference:%lu\n", self->_audioQualityPreference];
  }

  if (self->_playbackFormatPreference)
  {
    [v6 appendFormat:@"    playbackFormatPreference:%lu\n", self->_playbackFormatPreference];
  }

  if (self->_targetedAudioQuality)
  {
    [v6 appendFormat:@"    targetedAudioQuality:%@\n", self->_targetedAudioQuality];
  }

  if (self->_providedAudioQuality)
  {
    [v6 appendFormat:@"    providedAudioQuality:%@\n", self->_providedAudioQuality];
  }

  if (self->_sharedActivityGroupSizeCurrent)
  {
    [v6 appendFormat:@"    sharedActivityGroupSizeCurrent:%llu\n", self->_sharedActivityGroupSizeCurrent];
  }

  if (self->_sharedActivityGroupSizeMax)
  {
    [v6 appendFormat:@"    sharedActivityGroupSizeMax:%llu\n", self->_sharedActivityGroupSizeMax];
  }

  if (self->_sharedActivityType)
  {
    [v6 appendFormat:@"    sharedActivityType:%lu\n", self->_sharedActivityType];
  }

  if (self->_collaborativePlaylist)
  {
    [v6 appendFormat:@"    isCollaborativePlaylist:true\n"];
  }

  if (self->_vocalAttenuationAvailability)
  {
    [v6 appendFormat:@"    vocalAttenuationAvailability:%lu\n", self->_vocalAttenuationAvailability];
  }

  if (self->_vocalAttenuationDuration != 0.0)
  {
    [v6 appendFormat:@"    vocalAttenuationDuration:%f\n", *&self->_vocalAttenuationDuration];
  }

  if (self->_continuityMicrophoneUsed)
  {
    [v6 appendFormat:@"    continuityMicrophoneUsed:true\n"];
  }

  if (self->_displayTranslationEnabled)
  {
    [v6 appendFormat:@"    displayTranslationEnabled:true\n"];
  }

  if (self->_displayTransliterationEnabled)
  {
    [v6 appendFormat:@"    displayTransliterationEnabled:true\n"];
  }

  if (self->_wallClockPlayDuration != 0.0)
  {
    [v6 appendFormat:@"    wallClockPlayDuration:%f\n", *&self->_wallClockPlayDuration];
  }

  if (self->_userTransitionTypePreference)
  {
    [v6 appendFormat:@"    userTransitionTypePreference:%lu\n", self->_userTransitionTypePreference];
  }

  if (self->_transitionTypeProvided)
  {
    [v6 appendFormat:@"    transitionTypeProvided:%lu\n", self->_transitionTypeProvided];
  }

  [v6 appendString:@">"];
  v20 = v6;

  return v6;
}

- (ICPlayActivityEvent)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = [[ICPAPlayActivityEvent alloc] initWithData:v4];
  if (v5)
  {
    v6 = [(ICPlayActivityEvent *)self init];

    if (v6)
    {
      has = v5->_has;
      if ((*&has & 0x1000000) != 0)
      {
        v8 = (v5->_audioQualityPreference - 1);
        if (v8 < 4)
        {
          v9 = v8 + 1;
        }

        else
        {
          v9 = 0;
        }

        v6->_audioQualityPreference = v9;
        has = v5->_has;
      }

      v137 = v4;
      if ((*&has & 0x80000000) != 0)
      {
        playbackFormatPreference = v5->_playbackFormatPreference;
        v11 = playbackFormatPreference == 1;
        v12 = playbackFormatPreference == 2;
        v13 = 2;
        if (!v12)
        {
          v13 = v11;
        }

        v6->_playbackFormatPreference = v13;
      }

      if (v5->_targetedAudioQuality)
      {
        v14 = objc_alloc_init(ICMutablePlayActivityAudioQualityProperties);
        v15 = v5->_targetedAudioQuality;
        v16 = v15;
        if (v15)
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setBitRate:v15->_bitRate];
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setBitDepth:v16->_bitDepth];
          channelLayoutDescription = v16->_channelLayoutDescription;
        }

        else
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setBitRate:0];
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setBitDepth:0];
          channelLayoutDescription = 0;
        }

        v18 = channelLayoutDescription;
        [(ICMutablePlayActivityAudioQualityProperties *)v14 setChannelLayoutDescription:v18];

        if (v16)
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setCodec:v16->_codec];
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setSampleRate:v16->_sampleRate];
          isSpatialized = v16->_isSpatialized;
        }

        else
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setCodec:0];
          [(ICMutablePlayActivityAudioQualityProperties *)v14 setSampleRate:0];
          isSpatialized = 0;
        }

        [(ICMutablePlayActivityAudioQualityProperties *)v14 setSpatialized:isSpatialized, v4];
        objc_storeStrong(&v6->_targetedAudioQuality, v14);
      }

      if (v5->_providedAudioQuality)
      {
        v20 = objc_alloc_init(ICMutablePlayActivityAudioQualityProperties);
        v21 = v5->_providedAudioQuality;
        v22 = v21;
        if (v21)
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setBitRate:v21->_bitRate];
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setBitDepth:v22->_bitDepth];
          v23 = v22->_channelLayoutDescription;
        }

        else
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setBitRate:0];
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setBitDepth:0];
          v23 = 0;
        }

        v24 = v23;
        [(ICMutablePlayActivityAudioQualityProperties *)v20 setChannelLayoutDescription:v24];

        if (v22)
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setCodec:v22->_codec];
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setSampleRate:v22->_sampleRate];
          v25 = v22->_isSpatialized;
        }

        else
        {
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setCodec:0];
          [(ICMutablePlayActivityAudioQualityProperties *)v20 setSampleRate:0];
          v25 = 0;
        }

        [(ICMutablePlayActivityAudioQualityProperties *)v20 setSpatialized:v25, v137];
        objc_storeStrong(&v6->_providedAudioQuality, v20);
      }

      v26 = v5->_has;
      if ((*&v26 & 0x2000000) != 0)
      {
        v29 = v5->_containerType - 1;
        if (v29 > 5)
        {
          v30 = 0;
        }

        else
        {
          v30 = qword_1B4755618[v29];
        }

        v6->_containerType = v30;
        v26 = v5->_has;
        if ((*&v26 & 0x8000000000) == 0)
        {
LABEL_26:
          if ((*&v26 & 0x10000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_48;
        }
      }

      else if ((*&v26 & 0x8000000000) == 0)
      {
        goto LABEL_26;
      }

      v6->_continuityCameraUsed = v5->_continuityCameraUsed;
      v26 = v5->_has;
      if ((*&v26 & 0x10000000000) == 0)
      {
LABEL_27:
        if ((*&v26 & 0x20000000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_49;
      }

LABEL_48:
      v6->_continuityMicrophoneUsed = v5->_continuityMicrophoneUsed;
      v26 = v5->_has;
      if ((*&v26 & 0x20000000000) == 0)
      {
LABEL_28:
        if ((*&v26 & 0x40000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_49:
      v6->_displayTranslationEnabled = v5->_displayTranslationEnabled;
      if ((*&v5->_has & 0x40000000000) == 0)
      {
LABEL_30:
        deviceName = v5->_deviceName;
        if (deviceName)
        {
          objc_storeStrong(&v6->_deviceName, deviceName);
        }

        v28 = v5->_has;
        if ((*&v28 & 0x4000000) != 0)
        {
          v31 = (v5->_displayType - 1);
          if (v31 < 3)
          {
            v32 = v31 + 1;
          }

          else
          {
            v32 = 0;
          }

          v6->_displayType = v32;
          v28 = v5->_has;
          if ((*&v28 & 0x8000000) == 0)
          {
LABEL_34:
            if ((*&v28 & 0x20) == 0)
            {
              goto LABEL_55;
            }

LABEL_53:
            if (fabs(v5->_eventDateTimestamp) > 2.22044605e-16)
            {
              v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
              eventDate = v6->_eventDate;
              v6->_eventDate = v35;
            }

LABEL_55:
            eventTimeZoneName = v5->_eventTimeZoneName;
            if (eventTimeZoneName)
            {
              v38 = eventTimeZoneName;
              v39 = [MEMORY[0x1E695DFE8] timeZoneWithName:v38];
              eventTimeZone = v6->_eventTimeZone;
              v6->_eventTimeZone = v39;
            }

            else
            {
              if ((*&v5->_has & 0x40) == 0 || (eventSecondsFromGMT = v5->_eventSecondsFromGMT, fabs(eventSecondsFromGMT) <= 2.22044605e-16))
              {
LABEL_61:
                featureName = v5->_featureName;
                if (featureName)
                {
                  objc_storeStrong(&v6->_featureName, featureName);
                }

                v44 = v5->_has;
                if ((*&v44 & 0x100) != 0)
                {
                  v6->_itemDuration = v5->_itemDuration;
                  v44 = v5->_has;
                  if ((*&v44 & 0x200) == 0)
                  {
LABEL_65:
                    if ((*&v44 & 0x400) == 0)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_108;
                  }
                }

                else if ((*&v44 & 0x200) == 0)
                {
                  goto LABEL_65;
                }

                v6->_itemEndTime = v5->_itemEndTime;
                v44 = v5->_has;
                if ((*&v44 & 0x400) == 0)
                {
LABEL_66:
                  if ((*&v44 & 0x20000000) == 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_109;
                }

LABEL_108:
                v6->_itemStartTime = v5->_itemStartTime;
                v44 = v5->_has;
                if ((*&v44 & 0x20000000) == 0)
                {
LABEL_67:
                  if ((*&v44 & 1) == 0)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_68;
                }

LABEL_109:
                v63 = (v5->_itemType - 1);
                if (v63 < 9)
                {
                  v64 = v63 + 1;
                }

                else
                {
                  v64 = 0;
                }

                v6->_itemType = v64;
                if ((*&v5->_has & 1) == 0)
                {
LABEL_69:
                  lyricLanguage = v5->_lyricLanguage;
                  if (lyricLanguage)
                  {
                    objc_storeStrong(&v6->_lyricsLanguage, lyricLanguage);
                  }

                  v46 = v5->_has;
                  if ((*&v46 & 0x40000000) != 0)
                  {
                    v6->_mediaType = v5->_mediaType == 1;
                    v46 = v5->_has;
                    if ((*&v46 & 0x200000000000) == 0)
                    {
LABEL_73:
                      if ((*&v46 & 0x800) == 0)
                      {
                        goto LABEL_75;
                      }

                      goto LABEL_74;
                    }
                  }

                  else if ((*&v46 & 0x200000000000) == 0)
                  {
                    goto LABEL_73;
                  }

                  v6->_offline = v5->_offline;
                  if ((*&v5->_has & 0x800) == 0)
                  {
LABEL_75:
                    queueGroupingID = v5->_queueGroupingID;
                    if (queueGroupingID)
                    {
                      objc_storeStrong(&v6->_queueGroupingID, queueGroupingID);
                    }

                    recommendationData = v5->_recommendationData;
                    if (recommendationData)
                    {
                      objc_storeStrong(&v6->_recommendationData, recommendationData);
                    }

                    v49 = v5->_has;
                    if ((*&v49 & 0x800000000000) != 0)
                    {
                      v6->_SBEnabled = v5->_sBEnabled;
                      v49 = v5->_has;
                      if ((*&v49 & 0x400000000) == 0)
                      {
LABEL_81:
                        if ((*&v49 & 0x40000) == 0)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_82;
                      }
                    }

                    else if ((*&v49 & 0x400000000) == 0)
                    {
                      goto LABEL_81;
                    }

                    sourceType = v5->_sourceType;
                    v66 = sourceType == 1;
                    v12 = sourceType == 2;
                    v67 = 2;
                    if (!v12)
                    {
                      v67 = v66;
                    }

                    v6->_sourceType = v67;
                    if ((*&v5->_has & 0x40000) == 0)
                    {
LABEL_83:
                      storeFrontID = v5->_storeFrontID;
                      if (storeFrontID)
                      {
                        objc_storeStrong(&v6->_storeFrontID, storeFrontID);
                      }

                      timedMetadata = v5->_timedMetadata;
                      if (timedMetadata)
                      {
                        objc_storeStrong(&v6->_timedMetadata, timedMetadata);
                      }

                      trackInfo = v5->_trackInfo;
                      if (trackInfo)
                      {
                        objc_storeStrong(&v6->_trackInfo, trackInfo);
                      }

                      v53 = v5->_has;
                      if ((*&v53 & 0x10000000) != 0)
                      {
                        eventType = v5->_eventType;
                        v55 = eventType == 2;
                        v12 = eventType == 3;
                        v56 = 2;
                        if (!v12)
                        {
                          v56 = v55;
                        }

                        v6->_eventType = v56;
                        v53 = v5->_has;
                      }

                      if ((*&v53 & 0x100000000) != 0)
                      {
                        v6->_reasonHintType = v5->_reasonHintType == 1;
                      }

                      if ([(NSMutableArray *)v5->_buildFeatures count])
                      {
                        objc_storeStrong(&v6->_buildFeatures, v5->_buildFeatures);
                      }

                      buildVersion = v5->_buildVersion;
                      if (buildVersion)
                      {
                        objc_storeStrong(&v6->_buildVersion, buildVersion);
                      }

                      requestingBundleVersion = v5->_requestingBundleVersion;
                      if (requestingBundleVersion)
                      {
                        objc_storeStrong(&v6->_requestingBundleVersion, requestingBundleVersion);
                      }

                      requestingBundleIdentifier = v5->_requestingBundleIdentifier;
                      if (requestingBundleIdentifier)
                      {
                        objc_storeStrong(&v6->_requestingBundleIdentifier, requestingBundleIdentifier);
                      }

                      playMode = v5->_playMode;
                      if (playMode)
                      {
                        v61 = playMode;
                        if (*&v61->_has)
                        {
                          v68 = (v61->_autoPlayMode - 1);
                          if (v68 < 3)
                          {
                            v62 = v68 + 1;
                          }

                          else
                          {
                            v62 = 0;
                          }
                        }

                        else
                        {
                          v62 = 0;
                        }

                        v6->_autoPlayMode = v62;
                        if ((*&v61->_has & 2) != 0)
                        {
                          v70 = (v61->_repeatPlayMode - 1);
                          if (v70 < 3)
                          {
                            v69 = v70 + 1;
                          }

                          else
                          {
                            v69 = 0;
                          }
                        }

                        else
                        {
                          v69 = 0;
                        }

                        v6->_repeatPlayMode = v69;
                        if ((*&v61->_has & 4) != 0)
                        {
                          shufflePlayMode = v61->_shufflePlayMode;
                          v73 = shufflePlayMode == 1;
                          v12 = shufflePlayMode == 2;
                          v71 = 2;
                          if (!v12)
                          {
                            v71 = v73;
                          }
                        }

                        else
                        {
                          v71 = 0;
                        }

                        v6->_shufflePlayMode = v71;
                      }

                      v74 = v5->_has;
                      if ((*&v74 & 0x800000000) != 0)
                      {
                        LODWORD(v75) = v5->_systemReleaseType;
                        if ((v75 - 1) >= 4)
                        {
                          v75 = 0;
                        }

                        else
                        {
                          v75 = v75;
                        }
                      }

                      else
                      {
                        if ((*&v74 & 0x80000000000) == 0)
                        {
                          goto LABEL_144;
                        }

                        v75 = 4;
                        if (!v5->_internalBuild)
                        {
                          v75 = 0;
                        }
                      }

                      v6->_systemReleaseType = v75;
LABEL_144:
                      enqueuerProperties = v5->_enqueuerProperties;
                      if (!enqueuerProperties)
                      {
                        goto LABEL_162;
                      }

                      v77 = enqueuerProperties;
                      v78 = objc_alloc_init(ICMutablePlayActivityEnqueuerProperties);
                      v79 = v77->_buildVersion;
                      if (v79)
                      {
                        v80 = v79;
                        [(ICMutablePlayActivityEnqueuerProperties *)v78 setBuildVersion:v80];
                      }

                      deviceGUID = v77->_deviceGUID;
                      if (deviceGUID)
                      {
                        v82 = deviceGUID;
                        [(ICMutablePlayActivityEnqueuerProperties *)v78 setDeviceGUID:v82];
                      }

                      v83 = v77->_deviceName;
                      if (v83)
                      {
                        v84 = v83;
                        [(ICMutablePlayActivityEnqueuerProperties *)v78 setDeviceName:v84];
                      }

                      timeZoneName = v77->_timeZoneName;
                      if (timeZoneName)
                      {
                        v86 = timeZoneName;
                        v87 = [MEMORY[0x1E695DFE8] timeZoneWithName:v86];
                        [(ICMutablePlayActivityEnqueuerProperties *)v78 setTimeZone:v87];
                      }

                      v88 = v77->_has;
                      if ((v88 & 2) != 0)
                      {
                        v109 = (v77->_systemReleaseType - 1);
                        if (v109 < 4)
                        {
                          v110 = v109 + 1;
                        }

                        else
                        {
                          v110 = 0;
                        }

                        [(ICMutablePlayActivityEnqueuerProperties *)v78 setSystemReleaseType:v110];
                        v88 = v77->_has;
                        if ((v88 & 8) == 0)
                        {
LABEL_155:
                          if ((v88 & 1) == 0)
                          {
LABEL_157:
                            v89 = v77->_storeFrontID;
                            if (v89)
                            {
                              v90 = v89;
                              [(ICMutablePlayActivityEnqueuerProperties *)v78 setStoreFrontID:v90];
                            }

                            if ((*&v77->_has & 4) != 0)
                            {
                              v91 = [MEMORY[0x1E696AD98] numberWithBool:v77->_privateListeningEnabled];
                              [(ICMutablePlayActivityEnqueuerProperties *)v78 setPrivateListeningEnabled:v91];
                            }

                            v92 = [(ICMutablePlayActivityEnqueuerProperties *)v78 copy];
                            v93 = v6->_enqueuerProperties;
                            v6->_enqueuerProperties = v92;

LABEL_162:
                            householdID = v5->_householdID;
                            if (householdID)
                            {
                              objc_storeStrong(&v6->_householdID, householdID);
                            }

                            v95 = v5->_has;
                            if ((*&v95 & 0x400000000000) != 0)
                            {
                              v103 = [MEMORY[0x1E696AD98] numberWithBool:v5->_privateListeningEnabled];
                              privateListeningEnabled = v6->_privateListeningEnabled;
                              v6->_privateListeningEnabled = v103;

                              v95 = v5->_has;
                              if ((*&v95 & 0x1000000000000) == 0)
                              {
LABEL_166:
                                if ((*&v95 & 0x8000) == 0)
                                {
                                  goto LABEL_167;
                                }

                                goto LABEL_189;
                              }
                            }

                            else if ((*&v95 & 0x1000000000000) == 0)
                            {
                              goto LABEL_166;
                            }

                            v105 = [MEMORY[0x1E696AD98] numberWithBool:v5->_siriInitiated];
                            siriInitiated = v6->_siriInitiated;
                            v6->_siriInitiated = v105;

                            v95 = v5->_has;
                            if ((*&v95 & 0x8000) == 0)
                            {
LABEL_167:
                              if ((*&v95 & 0x10000) == 0)
                              {
                                goto LABEL_168;
                              }

                              goto LABEL_190;
                            }

LABEL_189:
                            v6->_sharedActivityGroupSizeCurrent = v5->_sharedActivityGroupSizeCurrent;
                            v95 = v5->_has;
                            if ((*&v95 & 0x10000) == 0)
                            {
LABEL_168:
                              if ((*&v95 & 0x200000000) == 0)
                              {
                                goto LABEL_169;
                              }

                              goto LABEL_191;
                            }

LABEL_190:
                            v6->_sharedActivityGroupSizeMax = v5->_sharedActivityGroupSizeMax;
                            v95 = v5->_has;
                            if ((*&v95 & 0x200000000) == 0)
                            {
LABEL_169:
                              if ((*&v95 & 0x100000000000) == 0)
                              {
                                goto LABEL_170;
                              }

                              goto LABEL_201;
                            }

LABEL_191:
                            v107 = v5->_sharedActivityType - 1;
                            if (v107 > 5)
                            {
                              v108 = 0;
                            }

                            else
                            {
                              v108 = qword_1B47556C0[v107];
                            }

                            v6->_sharedActivityType = v108;
                            v95 = v5->_has;
                            if ((*&v95 & 0x100000000000) == 0)
                            {
LABEL_170:
                              if ((*&v95 & 0x4000000000) == 0)
                              {
                                goto LABEL_171;
                              }

                              goto LABEL_202;
                            }

LABEL_201:
                            v6->_collaborativePlaylist = v5->_isCollaborativePlaylist;
                            v95 = v5->_has;
                            if ((*&v95 & 0x4000000000) == 0)
                            {
LABEL_171:
                              if ((*&v95 & 0x400000) == 0)
                              {
                                goto LABEL_172;
                              }

                              goto LABEL_205;
                            }

LABEL_202:
                            vocalAttenuationAvailibility = v5->_vocalAttenuationAvailibility;
                            v112 = vocalAttenuationAvailibility == 1;
                            v12 = vocalAttenuationAvailibility == 2;
                            v113 = 2;
                            if (!v12)
                            {
                              v113 = v112;
                            }

                            v6->_vocalAttenuationAvailability = v113;
                            v95 = v5->_has;
                            if ((*&v95 & 0x400000) == 0)
                            {
LABEL_172:
                              if ((*&v95 & 0x800000) == 0)
                              {
                                goto LABEL_173;
                              }

                              goto LABEL_206;
                            }

LABEL_205:
                            v6->_vocalAttenuationDuration = v5->_vocalAttenuationDuration;
                            v95 = v5->_has;
                            if ((*&v95 & 0x800000) == 0)
                            {
LABEL_173:
                              if ((*&v95 & 0x2000000000) == 0)
                              {
                                goto LABEL_174;
                              }

                              goto LABEL_207;
                            }

LABEL_206:
                            v6->_wallClockPlayDuration = v5->_wallClockPlayDuration;
                            v95 = v5->_has;
                            if ((*&v95 & 0x2000000000) == 0)
                            {
LABEL_174:
                              if ((*&v95 & 0x1000000000) == 0)
                              {
                                goto LABEL_179;
                              }

                              goto LABEL_175;
                            }

LABEL_207:
                            v114 = (v5->_userTransitionTypePreference - 1);
                            if (v114 < 3)
                            {
                              v115 = v114 + 1;
                            }

                            else
                            {
                              v115 = 0;
                            }

                            v6->_userTransitionTypePreference = v115;
                            if ((*&v5->_has & 0x1000000000) == 0)
                            {
LABEL_179:
                              if (v6->_version <= 1)
                              {
                                containerID = v5->_containerID;
                                v99 = containerID != 0;
                                if (containerID)
                                {
                                  objc_storeStrong(&v6->_containerID, containerID);
                                }

                                externalID = v5->_externalID;
                                if (externalID)
                                {
                                  objc_storeStrong(&v6->_externalID, externalID);
                                  v99 = 1;
                                }

                                personalizedContainerID = v5->_personalizedContainerID;
                                if (personalizedContainerID)
                                {
                                  objc_storeStrong(&v6->_personalizedContainerID, personalizedContainerID);
                                  storeID = v5->_storeID;
                                  if (!storeID)
                                  {
                                    goto LABEL_249;
                                  }

                                  goto LABEL_213;
                                }

                                storeID = v5->_storeID;
                                if (storeID)
                                {
LABEL_213:
                                  objc_storeStrong(&v6->_storeID, storeID);
LABEL_249:
                                  v4 = v138;
                                  goto LABEL_250;
                                }

                                if (v99 || v6->_version < 2)
                                {
                                  goto LABEL_249;
                                }
                              }

                              v147 = 0;
                              v148 = &v147;
                              v149 = 0x3032000000;
                              v150 = __Block_byref_object_copy__21425;
                              v151 = __Block_byref_object_dispose__21426;
                              v152 = 0;
                              v146[0] = MEMORY[0x1E69E9820];
                              v146[1] = 3221225472;
                              v146[2] = __50__ICPlayActivityEvent_initWithDataRepresentation___block_invoke;
                              v146[3] = &unk_1E7BFA0A0;
                              v146[4] = &v147;
                              v116 = MEMORY[0x1B8C781E0](v146);
                              v117 = v116;
                              if ((*&v5->_has & 8) != 0)
                              {
                                (*(v116 + 16))(v116);
                                [v148[5] setAdamID:v5->_containerAdamID];
                              }

                              if (v5->_globalPlaylistID)
                              {
                                v117[2](v117);
                                v118 = v148[5];
                                v119 = v5->_globalPlaylistID;
                                [v118 setGlobalPlaylistID:v119];
                              }

                              if (v5->_playlistVersionHash)
                              {
                                v117[2](v117);
                                v120 = v148[5];
                                v121 = v5->_playlistVersionHash;
                                [v120 setPlaylistVersionHash:v121];
                              }

                              if (v5->_stationHash)
                              {
                                v117[2](v117);
                                v122 = v148[5];
                                v123 = v5->_stationHash;
                                [v122 setStationHash:v123];
                              }

                              if (v5->_stationStringID)
                              {
                                v117[2](v117);
                                v124 = v148[5];
                                v125 = v5->_stationStringID;
                                [v124 setStationStringID:v125];
                              }

                              if ((*(&v5->_has + 2) & 2) != 0)
                              {
                                v117[2](v117);
                                [v148[5] setStationID:v5->_stationID];
                              }

                              if (v5->_cloudAlbumID)
                              {
                                v117[2](v117);
                                v126 = v148[5];
                                v127 = v5->_cloudAlbumID;
                                [v126 setCloudAlbumID:v127];
                              }

                              v128 = v5->_has;
                              if ((*&v128 & 4) != 0)
                              {
                                v117[2](v117);
                                [v148[5] setCloudPlaylistID:v5->_cloudPlaylistID];
                                v128 = v5->_has;
                              }

                              if ((*&v128 & 2) != 0)
                              {
                                v117[2](v117);
                                [v148[5] setCloudPlaylistFolderID:v5->_cloudPlaylistFolderID];
                              }

                              objc_storeStrong(&v6->_containerIDs, v148[5]);
                              v140 = 0;
                              v141 = &v140;
                              v142 = 0x3032000000;
                              v143 = __Block_byref_object_copy__21425;
                              v144 = __Block_byref_object_dispose__21426;
                              v145 = 0;
                              v139[0] = MEMORY[0x1E69E9820];
                              v139[1] = 3221225472;
                              v139[2] = __50__ICPlayActivityEvent_initWithDataRepresentation___block_invoke_2;
                              v139[3] = &unk_1E7BFA0A0;
                              v139[4] = &v140;
                              v129 = MEMORY[0x1B8C781E0](v139);
                              v130 = v129;
                              v131 = v5->_has;
                              if ((*&v131 & 0x80000) != 0)
                              {
                                (*(v129 + 16))(v129);
                                [v141[5] setSubscriptionAdamID:v5->_subscriptionAdamID];
                                v131 = v5->_has;
                              }

                              if ((*&v131 & 0x1000) != 0)
                              {
                                v130[2](v130);
                                [v141[5] setPurchasedAdamID:v5->_purchasedAdamID];
                                v131 = v5->_has;
                              }

                              if ((*&v131 & 0x2000) != 0)
                              {
                                v130[2](v130);
                                [v141[5] setRadioAdamID:v5->_radioAdamID];
                                v131 = v5->_has;
                              }

                              if ((*&v131 & 0x80) != 0)
                              {
                                v130[2](v130);
                                [v141[5] setCloudID:v5->_itemCloudID];
                              }

                              if (v5->_lyricsID)
                              {
                                v130[2](v130);
                                v132 = v141[5];
                                v133 = v5->_lyricsID;
                                [v132 setLyricsID:v133];
                              }

                              v134 = v5->_has;
                              if ((*&v134 & 0x10) != 0)
                              {
                                v130[2](v130);
                                [v141[5] setEquivalencySourceAdamID:v5->_equivalencySourceAdamID];
                                v134 = v5->_has;
                              }

                              if ((*&v134 & 0x4000) != 0)
                              {
                                v130[2](v130);
                                [v141[5] setReportingAdamID:v5->_reportingAdamID];
                              }

                              objc_storeStrong(&v6->_itemIDs, v141[5]);

                              _Block_object_dispose(&v140, 8);
                              _Block_object_dispose(&v147, 8);

                              goto LABEL_249;
                            }

LABEL_175:
                            v96 = (v5->_transitionTypeProvided - 1);
                            if (v96 < 5)
                            {
                              v97 = v96 + 1;
                            }

                            else
                            {
                              v97 = 0;
                            }

                            v6->_transitionTypeProvided = v97;
                            goto LABEL_179;
                          }

LABEL_156:
                          [(ICMutablePlayActivityEnqueuerProperties *)v78 setStoreAccountID:v77->_storeAccountID];
                          goto LABEL_157;
                        }
                      }

                      else if ((*&v77->_has & 8) == 0)
                      {
                        goto LABEL_155;
                      }

                      [(ICMutablePlayActivityEnqueuerProperties *)v78 setSBEnabled:v77->_sBEnabled];
                      if ((*&v77->_has & 1) == 0)
                      {
                        goto LABEL_157;
                      }

                      goto LABEL_156;
                    }

LABEL_82:
                    v6->_storeAccountID = v5->_storeAccountID;
                    goto LABEL_83;
                  }

LABEL_74:
                  v6->_persistentID = v5->_persistentID;
                  goto LABEL_75;
                }

LABEL_68:
                v6->_lyricsDisplayedCharacterCount = v5->_characterDisplayedCount;
                goto LABEL_69;
              }

              v42 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:eventSecondsFromGMT];
              v38 = v6->_eventTimeZone;
              v6->_eventTimeZone = v42;
            }

            goto LABEL_61;
          }
        }

        else if ((*&v28 & 0x8000000) == 0)
        {
          goto LABEL_34;
        }

        v33 = v5->_endReasonType - 1;
        if (v33 > 0xE)
        {
          v34 = 0;
        }

        else
        {
          v34 = qword_1B4755648[v33];
        }

        v6->_endReasonType = v34;
        if ((*&v5->_has & 0x20) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

LABEL_29:
      v6->_displayTransliterationEnabled = v5->_displayTransliterationEnabled;
      goto LABEL_30;
    }
  }

  else
  {

    v6 = 0;
  }

LABEL_250:
  v135 = v6;

  return v135;
}

uint64_t __50__ICPlayActivityEvent_initWithDataRepresentation___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 40))
  {
    v2 = result;
    v3 = objc_alloc_init(ICMutablePlayActivityEventContainerIDs);
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

uint64_t __50__ICPlayActivityEvent_initWithDataRepresentation___block_invoke_2(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 40))
  {
    v2 = result;
    v3 = objc_alloc_init(ICMutablePlayActivityEventItemIDs);
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (ICPlayActivityEvent)init
{
  v3.receiver = self;
  v3.super_class = ICPlayActivityEvent;
  result = [(ICPlayActivityEvent *)&v3 init];
  if (result)
  {
    result->_eventType = 0;
    result->_version = 2;
  }

  return result;
}

@end