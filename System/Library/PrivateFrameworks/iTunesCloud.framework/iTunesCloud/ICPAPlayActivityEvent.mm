@interface ICPAPlayActivityEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addBuildFeatures:(uint64_t)a1;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ICPAPlayActivityEvent

- (unint64_t)hash
{
  v122 = [(NSString *)self->_containerID hash];
  if ((*(&self->_has + 3) & 2) != 0)
  {
    v121 = 2654435761 * self->_containerType;
  }

  else
  {
    v121 = 0;
  }

  v120 = [(NSString *)self->_deviceName hash];
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    v119 = 2654435761 * self->_endReasonType;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v119 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  eventDateTimestamp = self->_eventDateTimestamp;
  if (eventDateTimestamp < 0.0)
  {
    eventDateTimestamp = -eventDateTimestamp;
  }

  *v3.i64 = floor(eventDateTimestamp + 0.5);
  v7 = (eventDateTimestamp - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
  v9 = 2654435761u * *v3.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_12:
  v118 = v9;
  if ((*&has & 0x40) != 0)
  {
    eventSecondsFromGMT = self->_eventSecondsFromGMT;
    if (eventSecondsFromGMT < 0.0)
    {
      eventSecondsFromGMT = -eventSecondsFromGMT;
    }

    *v3.i64 = floor(eventSecondsFromGMT + 0.5);
    v12 = (eventSecondsFromGMT - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v4, v3).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v117 = v10;
  v116 = [(NSString *)self->_externalID hash];
  v115 = [(NSString *)self->_featureName hash];
  v16 = self->_has;
  if ((*&v16 & 0x100) != 0)
  {
    itemDuration = self->_itemDuration;
    if (itemDuration < 0.0)
    {
      itemDuration = -itemDuration;
    }

    *v14.i64 = floor(itemDuration + 0.5);
    v19 = (itemDuration - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v14 = vbslq_s8(vnegq_f64(v20), v15, v14);
    v17 = 2654435761u * *v14.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&v16 & 0x200) != 0)
  {
    itemEndTime = self->_itemEndTime;
    if (itemEndTime < 0.0)
    {
      itemEndTime = -itemEndTime;
    }

    *v14.i64 = floor(itemEndTime + 0.5);
    v23 = (itemEndTime - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v14 = vbslq_s8(vnegq_f64(v24), v15, v14);
    v21 = 2654435761u * *v14.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&v16 & 0x400) != 0)
  {
    itemStartTime = self->_itemStartTime;
    if (itemStartTime < 0.0)
    {
      itemStartTime = -itemStartTime;
    }

    *v14.i64 = floor(itemStartTime + 0.5);
    v27 = (itemStartTime - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v28), v15, v14).i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&v16 & 0x20000000) == 0)
  {
    v111 = 0;
    if ((*&v16 & 0x40000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v110 = 0;
    if ((*&v16 & 0x200000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v111 = 2654435761 * self->_itemType;
  if ((*&v16 & 0x40000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v110 = 2654435761 * self->_mediaType;
  if ((*&v16 & 0x200000000000) != 0)
  {
LABEL_49:
    v109 = 2654435761 * self->_offline;
    goto LABEL_53;
  }

LABEL_52:
  v109 = 0;
LABEL_53:
  v113 = v21;
  v114 = v17;
  v112 = v25;
  if ((*&v16 & 0x800) != 0)
  {
    v108 = 2654435761 * self->_persistentID;
  }

  else
  {
    v108 = 0;
  }

  v107 = [(NSString *)self->_personalizedContainerID hash];
  v29 = self->_has;
  if ((*&v29 & 0x800000000000) == 0)
  {
    v106 = 0;
    if ((*&v29 & 0x400000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_61:
    v105 = 0;
    if ((*&v29 & 0x40000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

  v106 = 2654435761 * self->_sBEnabled;
  if ((*&v29 & 0x400000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_58:
  v105 = 2654435761 * self->_sourceType;
  if ((*&v29 & 0x40000) != 0)
  {
LABEL_59:
    v104 = 2654435761u * self->_storeAccountID;
    goto LABEL_63;
  }

LABEL_62:
  v104 = 0;
LABEL_63:
  v103 = [(NSString *)self->_storeID hash];
  v102 = [(NSData *)self->_timedMetadata hash];
  v101 = [(NSData *)self->_trackInfo hash];
  v100 = [(NSData *)self->_recommendationData hash];
  v99 = [(NSString *)self->_storeFrontID hash];
  v30 = self->_has;
  if ((*&v30 & 0x10000000) != 0)
  {
    v98 = 2654435761 * self->_eventType;
    if ((*&v30 & 0x80000) != 0)
    {
LABEL_65:
      v97 = 2654435761 * self->_subscriptionAdamID;
      if ((*&v30 & 0x1000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v98 = 0;
    if ((*&v30 & 0x80000) != 0)
    {
      goto LABEL_65;
    }
  }

  v97 = 0;
  if ((*&v30 & 0x1000) != 0)
  {
LABEL_66:
    v96 = 2654435761 * self->_purchasedAdamID;
    if ((*&v30 & 0x2000) != 0)
    {
      goto LABEL_67;
    }

LABEL_72:
    v95 = 0;
    if ((*&v30 & 0x80) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_73;
  }

LABEL_71:
  v96 = 0;
  if ((*&v30 & 0x2000) == 0)
  {
    goto LABEL_72;
  }

LABEL_67:
  v95 = 2654435761 * self->_radioAdamID;
  if ((*&v30 & 0x80) != 0)
  {
LABEL_68:
    v94 = 2654435761u * self->_itemCloudID;
    goto LABEL_74;
  }

LABEL_73:
  v94 = 0;
LABEL_74:
  v93 = [(NSString *)self->_lyricsID hash];
  if ((*&self->_has & 8) != 0)
  {
    v92 = 2654435761 * self->_containerAdamID;
  }

  else
  {
    v92 = 0;
  }

  v91 = [(NSString *)self->_globalPlaylistID hash];
  v90 = [(NSString *)self->_stationHash hash];
  v89 = [(NSString *)self->_stationStringID hash];
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v88 = 2654435761 * self->_stationID;
  }

  else
  {
    v88 = 0;
  }

  v87 = [(NSString *)self->_cloudAlbumID hash];
  v31 = self->_has;
  if ((*&v31 & 4) != 0)
  {
    v86 = 2654435761u * self->_cloudPlaylistID;
    if ((*&v31 & 0x100000000) != 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v86 = 0;
    if ((*&v31 & 0x100000000) != 0)
    {
LABEL_82:
      v85 = 2654435761 * self->_reasonHintType;
      goto LABEL_85;
    }
  }

  v85 = 0;
LABEL_85:
  v84 = [(NSString *)self->_buildVersion hash];
  v83 = [(NSString *)self->_playlistVersionHash hash];
  v82 = [(NSString *)self->_requestingBundleIdentifier hash];
  v81 = [(NSString *)self->_requestingBundleVersion hash];
  v32 = self->_has;
  if ((*&v32 & 0x10) != 0)
  {
    v80 = 2654435761 * self->_equivalencySourceAdamID;
    if ((*&v32 & 0x80000000000) != 0)
    {
LABEL_87:
      v79 = 2654435761 * self->_internalBuild;
      if ((*&v32 & 0x100000) != 0)
      {
        goto LABEL_88;
      }

LABEL_92:
      v78 = 0;
      if ((*&v32 & 0x200000) != 0)
      {
        goto LABEL_89;
      }

      goto LABEL_93;
    }
  }

  else
  {
    v80 = 0;
    if ((*&v32 & 0x80000000000) != 0)
    {
      goto LABEL_87;
    }
  }

  v79 = 0;
  if ((*&v32 & 0x100000) == 0)
  {
    goto LABEL_92;
  }

LABEL_88:
  v78 = 2654435761 * self->_tvShowPurchasedAdamID;
  if ((*&v32 & 0x200000) != 0)
  {
LABEL_89:
    v77 = 2654435761 * self->_tvShowSubscriptionAdamID;
    goto LABEL_94;
  }

LABEL_93:
  v77 = 0;
LABEL_94:
  v76 = [(ICPAPlayActivityEnqueuerProperties *)self->_enqueuerProperties hash];
  v75 = [(NSString *)self->_householdID hash];
  v33 = self->_has;
  if ((*&v33 & 0x400000000000) == 0)
  {
    v74 = 0;
    if ((*&v33 & 0x1000000000000) != 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    v73 = 0;
    if ((*&v33 & 0x800000000) != 0)
    {
      goto LABEL_97;
    }

    goto LABEL_100;
  }

  v74 = 2654435761 * self->_privateListeningEnabled;
  if ((*&v33 & 0x1000000000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  v73 = 2654435761 * self->_siriInitiated;
  if ((*&v33 & 0x800000000) != 0)
  {
LABEL_97:
    v72 = 2654435761 * self->_systemReleaseType;
    goto LABEL_101;
  }

LABEL_100:
  v72 = 0;
LABEL_101:
  v71 = [(NSString *)self->_eventTimeZoneName hash];
  v34 = self->_has;
  if ((*&v34 & 0x4000000) != 0)
  {
    v70 = 2654435761 * self->_displayType;
    if (*&v34)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v70 = 0;
    if (*&v34)
    {
LABEL_103:
      v69 = 2654435761 * self->_characterDisplayedCount;
      goto LABEL_106;
    }
  }

  v69 = 0;
LABEL_106:
  v35 = [(NSString *)self->_lyricLanguage hash];
  v36 = [(NSMutableArray *)self->_buildFeatures hash];
  v37 = [(ICPAPlayModeDictionary *)self->_playMode hash];
  v38 = self->_has;
  if ((*&v38 & 0x1000000) != 0)
  {
    v39 = 2654435761 * self->_audioQualityPreference;
    if ((*&v38 & 0x80000000) != 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v39 = 0;
    if ((*&v38 & 0x80000000) != 0)
    {
LABEL_108:
      v40 = 2654435761 * self->_playbackFormatPreference;
      goto LABEL_111;
    }
  }

  v40 = 0;
LABEL_111:
  v41 = [(ICPAAudioQualityDictionary *)self->_targetedAudioQuality hash];
  v42 = [(ICPAAudioQualityDictionary *)self->_providedAudioQuality hash];
  v43 = [(NSString *)self->_queueGroupingID hash];
  v46 = self->_has;
  if ((*&v46 & 0x4000) != 0)
  {
    v47 = 2654435761 * self->_reportingAdamID;
    if ((*&v46 & 0x8000) != 0)
    {
LABEL_113:
      v48 = 2654435761 * self->_sharedActivityGroupSizeCurrent;
      if ((*&v46 & 0x10000) != 0)
      {
        goto LABEL_114;
      }

      goto LABEL_122;
    }
  }

  else
  {
    v47 = 0;
    if ((*&v46 & 0x8000) != 0)
    {
      goto LABEL_113;
    }
  }

  v48 = 0;
  if ((*&v46 & 0x10000) != 0)
  {
LABEL_114:
    v49 = 2654435761 * self->_sharedActivityGroupSizeMax;
    if ((*&v46 & 0x4000000000) != 0)
    {
      goto LABEL_115;
    }

LABEL_123:
    v50 = 0;
    if ((*&v46 & 0x400000) != 0)
    {
      goto LABEL_116;
    }

LABEL_124:
    v54 = 0;
    goto LABEL_125;
  }

LABEL_122:
  v49 = 0;
  if ((*&v46 & 0x4000000000) == 0)
  {
    goto LABEL_123;
  }

LABEL_115:
  v50 = 2654435761 * self->_vocalAttenuationAvailibility;
  if ((*&v46 & 0x400000) == 0)
  {
    goto LABEL_124;
  }

LABEL_116:
  vocalAttenuationDuration = self->_vocalAttenuationDuration;
  if (vocalAttenuationDuration < 0.0)
  {
    vocalAttenuationDuration = -vocalAttenuationDuration;
  }

  *v44.i64 = floor(vocalAttenuationDuration + 0.5);
  v52 = (vocalAttenuationDuration - *v44.i64) * 1.84467441e19;
  *v45.i64 = *v44.i64 - trunc(*v44.i64 * 5.42101086e-20) * 1.84467441e19;
  v53.f64[0] = NAN;
  v53.f64[1] = NAN;
  v44 = vbslq_s8(vnegq_f64(v53), v45, v44);
  v54 = 2654435761u * *v44.i64;
  if (v52 >= 0.0)
  {
    if (v52 > 0.0)
    {
      v54 += v52;
    }
  }

  else
  {
    v54 -= fabs(v52);
  }

LABEL_125:
  if ((*&v46 & 0x8000000000) != 0)
  {
    v55 = 2654435761 * self->_continuityCameraUsed;
    if ((*&v46 & 0x100000000000) != 0)
    {
LABEL_127:
      v56 = 2654435761 * self->_isCollaborativePlaylist;
      if ((*&v46 & 0x200000000) != 0)
      {
        goto LABEL_128;
      }

LABEL_135:
      v57 = 0;
      if ((*&v46 & 0x800000) != 0)
      {
        goto LABEL_129;
      }

LABEL_136:
      v61 = 0;
      goto LABEL_137;
    }
  }

  else
  {
    v55 = 0;
    if ((*&v46 & 0x100000000000) != 0)
    {
      goto LABEL_127;
    }
  }

  v56 = 0;
  if ((*&v46 & 0x200000000) == 0)
  {
    goto LABEL_135;
  }

LABEL_128:
  v57 = 2654435761 * self->_sharedActivityType;
  if ((*&v46 & 0x800000) == 0)
  {
    goto LABEL_136;
  }

LABEL_129:
  wallClockPlayDuration = self->_wallClockPlayDuration;
  if (wallClockPlayDuration < 0.0)
  {
    wallClockPlayDuration = -wallClockPlayDuration;
  }

  *v44.i64 = floor(wallClockPlayDuration + 0.5);
  v59 = (wallClockPlayDuration - *v44.i64) * 1.84467441e19;
  *v45.i64 = *v44.i64 - trunc(*v44.i64 * 5.42101086e-20) * 1.84467441e19;
  v60.f64[0] = NAN;
  v60.f64[1] = NAN;
  v61 = 2654435761u * *vbslq_s8(vnegq_f64(v60), v45, v44).i64;
  if (v59 >= 0.0)
  {
    if (v59 > 0.0)
    {
      v61 += v59;
    }
  }

  else
  {
    v61 -= fabs(v59);
  }

LABEL_137:
  if ((*&v46 & 0x2000000000) != 0)
  {
    v62 = 2654435761 * self->_userTransitionTypePreference;
    if ((*&v46 & 0x1000000000) != 0)
    {
LABEL_139:
      v63 = 2654435761 * self->_transitionTypeProvided;
      if ((*&v46 & 2) != 0)
      {
        goto LABEL_140;
      }

      goto LABEL_146;
    }
  }

  else
  {
    v62 = 0;
    if ((*&v46 & 0x1000000000) != 0)
    {
      goto LABEL_139;
    }
  }

  v63 = 0;
  if ((*&v46 & 2) != 0)
  {
LABEL_140:
    v64 = 2654435761u * self->_cloudPlaylistFolderID;
    if ((*&v46 & 0x10000000000) != 0)
    {
      goto LABEL_141;
    }

    goto LABEL_147;
  }

LABEL_146:
  v64 = 0;
  if ((*&v46 & 0x10000000000) != 0)
  {
LABEL_141:
    v65 = 2654435761 * self->_continuityMicrophoneUsed;
    if ((*&v46 & 0x20000000000) != 0)
    {
      goto LABEL_142;
    }

LABEL_148:
    v66 = 0;
    if ((*&v46 & 0x40000000000) != 0)
    {
      goto LABEL_143;
    }

LABEL_149:
    v67 = 0;
    return v121 ^ v122 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v35 ^ v36 ^ v37 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v47 ^ v48 ^ v49 ^ v50 ^ v54 ^ v55 ^ v56 ^ v57 ^ v61 ^ v62 ^ v63 ^ v64 ^ v65 ^ v66 ^ v67;
  }

LABEL_147:
  v65 = 0;
  if ((*&v46 & 0x20000000000) == 0)
  {
    goto LABEL_148;
  }

LABEL_142:
  v66 = 2654435761 * self->_displayTranslationEnabled;
  if ((*&v46 & 0x40000000000) == 0)
  {
    goto LABEL_149;
  }

LABEL_143:
  v67 = 2654435761 * self->_displayTransliterationEnabled;
  return v121 ^ v122 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v35 ^ v36 ^ v37 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v47 ^ v48 ^ v49 ^ v50 ^ v54 ^ v55 ^ v56 ^ v57 ^ v61 ^ v62 ^ v63 ^ v64 ^ v65 ^ v66 ^ v67;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_335;
  }

  containerID = self->_containerID;
  if (containerID | *(v4 + 29))
  {
    if (![(NSString *)containerID isEqual:?])
    {
      goto LABEL_335;
    }
  }

  has = self->_has;
  v7 = *(v4 + 66);
  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_containerType != *(v4 + 60))
    {
      goto LABEL_335;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_335;
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 31))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_335;
    }

    has = self->_has;
    v7 = *(v4 + 66);
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_endReasonType != *(v4 + 65))
    {
      goto LABEL_335;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_eventDateTimestamp != *(v4 + 6))
    {
      goto LABEL_335;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_335;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_eventSecondsFromGMT != *(v4 + 7))
    {
      goto LABEL_335;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_335;
  }

  externalID = self->_externalID;
  if (externalID | *(v4 + 36) && ![(NSString *)externalID isEqual:?])
  {
    goto LABEL_335;
  }

  featureName = self->_featureName;
  if (featureName | *(v4 + 37))
  {
    if (![(NSString *)featureName isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v11 = self->_has;
  v12 = *(v4 + 66);
  if ((*&v11 & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_itemDuration != *(v4 + 9))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_itemEndTime != *(v4 + 10))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_itemStartTime != *(v4 + 11))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x20000000) != 0)
  {
    if ((v12 & 0x20000000) == 0 || self->_itemType != *(v4 + 80))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x20000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x40000000) != 0)
  {
    if ((v12 & 0x40000000) == 0 || self->_mediaType != *(v4 + 86))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x40000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x200000000000) != 0)
  {
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_offline)
    {
      if ((*(v4 + 522) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 522))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x200000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_persistentID != *(v4 + 12))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_335;
  }

  personalizedContainerID = self->_personalizedContainerID;
  if (personalizedContainerID | *(v4 + 44))
  {
    if (![(NSString *)personalizedContainerID isEqual:?])
    {
      goto LABEL_335;
    }

    v11 = self->_has;
    v12 = *(v4 + 66);
  }

  if ((*&v11 & 0x800000000000) != 0)
  {
    if ((v12 & 0x800000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_sBEnabled)
    {
      if ((*(v4 + 524) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 524))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x800000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x400000000) != 0)
  {
    if ((v12 & 0x400000000) == 0 || self->_sourceType != *(v4 + 109))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x400000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v11 & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_storeAccountID != *(v4 + 19))
    {
      goto LABEL_335;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_335;
  }

  storeID = self->_storeID;
  if (storeID | *(v4 + 58) && ![(NSString *)storeID isEqual:?])
  {
    goto LABEL_335;
  }

  timedMetadata = self->_timedMetadata;
  if (timedMetadata | *(v4 + 61))
  {
    if (![(NSData *)timedMetadata isEqual:?])
    {
      goto LABEL_335;
    }
  }

  trackInfo = self->_trackInfo;
  if (trackInfo | *(v4 + 62))
  {
    if (![(NSData *)trackInfo isEqual:?])
    {
      goto LABEL_335;
    }
  }

  recommendationData = self->_recommendationData;
  if (recommendationData | *(v4 + 51))
  {
    if (![(NSData *)recommendationData isEqual:?])
    {
      goto LABEL_335;
    }
  }

  storeFrontID = self->_storeFrontID;
  if (storeFrontID | *(v4 + 57))
  {
    if (![(NSString *)storeFrontID isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v19 = self->_has;
  v20 = *(v4 + 66);
  if ((*&v19 & 0x10000000) != 0)
  {
    if ((v20 & 0x10000000) == 0 || self->_eventType != *(v4 + 70))
    {
      goto LABEL_335;
    }
  }

  else if ((v20 & 0x10000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v19 & 0x80000) != 0)
  {
    if ((v20 & 0x80000) == 0 || self->_subscriptionAdamID != *(v4 + 20))
    {
      goto LABEL_335;
    }
  }

  else if ((v20 & 0x80000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v19 & 0x1000) != 0)
  {
    if ((v20 & 0x1000) == 0 || self->_purchasedAdamID != *(v4 + 13))
    {
      goto LABEL_335;
    }
  }

  else if ((v20 & 0x1000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v19 & 0x2000) != 0)
  {
    if ((v20 & 0x2000) == 0 || self->_radioAdamID != *(v4 + 14))
    {
      goto LABEL_335;
    }
  }

  else if ((v20 & 0x2000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v19 & 0x80) != 0)
  {
    if ((v20 & 0x80) == 0 || self->_itemCloudID != *(v4 + 8))
    {
      goto LABEL_335;
    }
  }

  else if ((v20 & 0x80) != 0)
  {
    goto LABEL_335;
  }

  lyricsID = self->_lyricsID;
  if (lyricsID | *(v4 + 42))
  {
    if (![(NSString *)lyricsID isEqual:?])
    {
      goto LABEL_335;
    }

    v19 = self->_has;
    v20 = *(v4 + 66);
  }

  if ((*&v19 & 8) != 0)
  {
    if ((v20 & 8) == 0 || self->_containerAdamID != *(v4 + 4))
    {
      goto LABEL_335;
    }
  }

  else if ((v20 & 8) != 0)
  {
    goto LABEL_335;
  }

  globalPlaylistID = self->_globalPlaylistID;
  if (globalPlaylistID | *(v4 + 38) && ![(NSString *)globalPlaylistID isEqual:?])
  {
    goto LABEL_335;
  }

  stationHash = self->_stationHash;
  if (stationHash | *(v4 + 55))
  {
    if (![(NSString *)stationHash isEqual:?])
    {
      goto LABEL_335;
    }
  }

  stationStringID = self->_stationStringID;
  if (stationStringID | *(v4 + 56))
  {
    if (![(NSString *)stationStringID isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v25 = self->_has;
  v26 = *(v4 + 66);
  if ((*&v25 & 0x20000) != 0)
  {
    if ((v26 & 0x20000) == 0 || self->_stationID != *(v4 + 18))
    {
      goto LABEL_335;
    }
  }

  else if ((v26 & 0x20000) != 0)
  {
    goto LABEL_335;
  }

  cloudAlbumID = self->_cloudAlbumID;
  if (cloudAlbumID | *(v4 + 28))
  {
    if (![(NSString *)cloudAlbumID isEqual:?])
    {
      goto LABEL_335;
    }

    v25 = self->_has;
    v26 = *(v4 + 66);
  }

  if ((*&v25 & 4) != 0)
  {
    if ((v26 & 4) == 0 || self->_cloudPlaylistID != *(v4 + 3))
    {
      goto LABEL_335;
    }
  }

  else if ((v26 & 4) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v25 & 0x100000000) != 0)
  {
    if ((v26 & 0x100000000) == 0 || self->_reasonHintType != *(v4 + 100))
    {
      goto LABEL_335;
    }
  }

  else if ((v26 & 0x100000000) != 0)
  {
    goto LABEL_335;
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 27) && ![(NSString *)buildVersion isEqual:?])
  {
    goto LABEL_335;
  }

  playlistVersionHash = self->_playlistVersionHash;
  if (playlistVersionHash | *(v4 + 47))
  {
    if (![(NSString *)playlistVersionHash isEqual:?])
    {
      goto LABEL_335;
    }
  }

  requestingBundleIdentifier = self->_requestingBundleIdentifier;
  if (requestingBundleIdentifier | *(v4 + 52))
  {
    if (![(NSString *)requestingBundleIdentifier isEqual:?])
    {
      goto LABEL_335;
    }
  }

  requestingBundleVersion = self->_requestingBundleVersion;
  if (requestingBundleVersion | *(v4 + 53))
  {
    if (![(NSString *)requestingBundleVersion isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v32 = self->_has;
  v33 = *(v4 + 66);
  if ((*&v32 & 0x10) != 0)
  {
    if ((v33 & 0x10) == 0 || self->_equivalencySourceAdamID != *(v4 + 5))
    {
      goto LABEL_335;
    }
  }

  else if ((v33 & 0x10) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v32 & 0x80000000000) != 0)
  {
    if ((v33 & 0x80000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_internalBuild)
    {
      if ((*(v4 + 520) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 520))
    {
      goto LABEL_335;
    }
  }

  else if ((v33 & 0x80000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v32 & 0x100000) != 0)
  {
    if ((v33 & 0x100000) == 0 || self->_tvShowPurchasedAdamID != *(v4 + 21))
    {
      goto LABEL_335;
    }
  }

  else if ((v33 & 0x100000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v32 & 0x200000) != 0)
  {
    if ((v33 & 0x200000) == 0 || self->_tvShowSubscriptionAdamID != *(v4 + 22))
    {
      goto LABEL_335;
    }
  }

  else if ((v33 & 0x200000) != 0)
  {
    goto LABEL_335;
  }

  enqueuerProperties = self->_enqueuerProperties;
  if (enqueuerProperties | *(v4 + 33) && ![(ICPAPlayActivityEnqueuerProperties *)enqueuerProperties isEqual:?])
  {
    goto LABEL_335;
  }

  householdID = self->_householdID;
  if (householdID | *(v4 + 39))
  {
    if (![(NSString *)householdID isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v36 = self->_has;
  v37 = *(v4 + 66);
  if ((*&v36 & 0x400000000000) != 0)
  {
    if ((v37 & 0x400000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_privateListeningEnabled)
    {
      if ((*(v4 + 523) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 523))
    {
      goto LABEL_335;
    }
  }

  else if ((v37 & 0x400000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v36 & 0x1000000000000) != 0)
  {
    if ((v37 & 0x1000000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_siriInitiated)
    {
      if ((*(v4 + 525) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 525))
    {
      goto LABEL_335;
    }
  }

  else if ((v37 & 0x1000000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v36 & 0x800000000) != 0)
  {
    if ((v37 & 0x800000000) == 0 || self->_systemReleaseType != *(v4 + 118))
    {
      goto LABEL_335;
    }
  }

  else if ((v37 & 0x800000000) != 0)
  {
    goto LABEL_335;
  }

  eventTimeZoneName = self->_eventTimeZoneName;
  if (eventTimeZoneName | *(v4 + 34))
  {
    if (![(NSString *)eventTimeZoneName isEqual:?])
    {
      goto LABEL_335;
    }

    v36 = self->_has;
    v37 = *(v4 + 66);
  }

  if ((*&v36 & 0x4000000) != 0)
  {
    if ((v37 & 0x4000000) == 0 || self->_displayType != *(v4 + 64))
    {
      goto LABEL_335;
    }
  }

  else if ((v37 & 0x4000000) != 0)
  {
    goto LABEL_335;
  }

  if (*&v36)
  {
    if ((v37 & 1) == 0 || self->_characterDisplayedCount != *(v4 + 1))
    {
      goto LABEL_335;
    }
  }

  else if (v37)
  {
    goto LABEL_335;
  }

  lyricLanguage = self->_lyricLanguage;
  if (lyricLanguage | *(v4 + 41) && ![(NSString *)lyricLanguage isEqual:?])
  {
    goto LABEL_335;
  }

  buildFeatures = self->_buildFeatures;
  if (buildFeatures | *(v4 + 26))
  {
    if (![(NSMutableArray *)buildFeatures isEqual:?])
    {
      goto LABEL_335;
    }
  }

  playMode = self->_playMode;
  if (playMode | *(v4 + 45))
  {
    if (![(ICPAPlayModeDictionary *)playMode isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v42 = self->_has;
  v43 = *(v4 + 66);
  if ((*&v42 & 0x1000000) != 0)
  {
    if ((v43 & 0x1000000) == 0 || self->_audioQualityPreference != *(v4 + 50))
    {
      goto LABEL_335;
    }
  }

  else if ((v43 & 0x1000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v42 & 0x80000000) != 0)
  {
    if ((v43 & 0x80000000) == 0 || self->_playbackFormatPreference != *(v4 + 92))
    {
      goto LABEL_335;
    }
  }

  else if ((v43 & 0x80000000) != 0)
  {
    goto LABEL_335;
  }

  targetedAudioQuality = self->_targetedAudioQuality;
  if (targetedAudioQuality | *(v4 + 60) && ![(ICPAAudioQualityDictionary *)targetedAudioQuality isEqual:?])
  {
    goto LABEL_335;
  }

  providedAudioQuality = self->_providedAudioQuality;
  if (providedAudioQuality | *(v4 + 48))
  {
    if (![(ICPAAudioQualityDictionary *)providedAudioQuality isEqual:?])
    {
      goto LABEL_335;
    }
  }

  queueGroupingID = self->_queueGroupingID;
  if (queueGroupingID | *(v4 + 49))
  {
    if (![(NSString *)queueGroupingID isEqual:?])
    {
      goto LABEL_335;
    }
  }

  v47 = self->_has;
  v48 = *(v4 + 66);
  if ((*&v47 & 0x4000) != 0)
  {
    if ((v48 & 0x4000) == 0 || self->_reportingAdamID != *(v4 + 15))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x4000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x8000) != 0)
  {
    if ((v48 & 0x8000) == 0 || self->_sharedActivityGroupSizeCurrent != *(v4 + 16))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x8000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x10000) != 0)
  {
    if ((v48 & 0x10000) == 0 || self->_sharedActivityGroupSizeMax != *(v4 + 17))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x10000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x4000000000) != 0)
  {
    if ((v48 & 0x4000000000) == 0 || self->_vocalAttenuationAvailibility != *(v4 + 128))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x4000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x400000) != 0)
  {
    if ((v48 & 0x400000) == 0 || self->_vocalAttenuationDuration != *(v4 + 23))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x400000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x8000000000) != 0)
  {
    if ((v48 & 0x8000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_continuityCameraUsed)
    {
      if ((*(v4 + 516) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 516))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x8000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x100000000000) != 0)
  {
    if ((v48 & 0x100000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_isCollaborativePlaylist)
    {
      if ((*(v4 + 521) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 521))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x100000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x200000000) != 0)
  {
    if ((v48 & 0x200000000) == 0 || self->_sharedActivityType != *(v4 + 108))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x200000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x800000) != 0)
  {
    if ((v48 & 0x800000) == 0 || self->_wallClockPlayDuration != *(v4 + 24))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x800000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x2000000000) != 0)
  {
    if ((v48 & 0x2000000000) == 0 || self->_userTransitionTypePreference != *(v4 + 127))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x2000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x1000000000) != 0)
  {
    if ((v48 & 0x1000000000) == 0 || self->_transitionTypeProvided != *(v4 + 126))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x1000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 2) != 0)
  {
    if ((v48 & 2) == 0 || self->_cloudPlaylistFolderID != *(v4 + 2))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 2) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x10000000000) != 0)
  {
    if ((v48 & 0x10000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_continuityMicrophoneUsed)
    {
      if ((*(v4 + 517) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 517))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x10000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x20000000000) != 0)
  {
    if ((v48 & 0x20000000000) == 0)
    {
      goto LABEL_335;
    }

    if (self->_displayTranslationEnabled)
    {
      if ((*(v4 + 518) & 1) == 0)
      {
        goto LABEL_335;
      }
    }

    else if (*(v4 + 518))
    {
      goto LABEL_335;
    }
  }

  else if ((v48 & 0x20000000000) != 0)
  {
    goto LABEL_335;
  }

  if ((*&v47 & 0x40000000000) != 0)
  {
    if ((v48 & 0x40000000000) != 0)
    {
      if (self->_displayTransliterationEnabled)
      {
        if ((*(v4 + 519) & 1) == 0)
        {
          goto LABEL_335;
        }
      }

      else if (*(v4 + 519))
      {
        goto LABEL_335;
      }

      v49 = 1;
      goto LABEL_336;
    }

LABEL_335:
    v49 = 0;
    goto LABEL_336;
  }

  v49 = (v48 & 0x40000000000) == 0;
LABEL_336:

  return v49;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_containerID copyWithZone:a3];
  v7 = *(v5 + 232);
  *(v5 + 232) = v6;

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v5 + 240) = self->_containerType;
    *(v5 + 528) |= 0x2000000uLL;
  }

  v8 = [(NSString *)self->_deviceName copyWithZone:a3];
  v9 = *(v5 + 248);
  *(v5 + 248) = v8;

  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    *(v5 + 260) = self->_endReasonType;
    *(v5 + 528) |= 0x8000000uLL;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_5:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 48) = self->_eventDateTimestamp;
  *(v5 + 528) |= 0x20uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(v5 + 56) = self->_eventSecondsFromGMT;
    *(v5 + 528) |= 0x40uLL;
  }

LABEL_7:
  v11 = [(NSString *)self->_externalID copyWithZone:a3];
  v12 = *(v5 + 288);
  *(v5 + 288) = v11;

  v13 = [(NSString *)self->_featureName copyWithZone:a3];
  v14 = *(v5 + 296);
  *(v5 + 296) = v13;

  v15 = self->_has;
  if ((*&v15 & 0x100) != 0)
  {
    *(v5 + 72) = self->_itemDuration;
    *(v5 + 528) |= 0x100uLL;
    v15 = self->_has;
    if ((*&v15 & 0x200) == 0)
    {
LABEL_9:
      if ((*&v15 & 0x400) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_79;
    }
  }

  else if ((*&v15 & 0x200) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 80) = self->_itemEndTime;
  *(v5 + 528) |= 0x200uLL;
  v15 = self->_has;
  if ((*&v15 & 0x400) == 0)
  {
LABEL_10:
    if ((*&v15 & 0x20000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 88) = self->_itemStartTime;
  *(v5 + 528) |= 0x400uLL;
  v15 = self->_has;
  if ((*&v15 & 0x20000000) == 0)
  {
LABEL_11:
    if ((*&v15 & 0x40000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 320) = self->_itemType;
  *(v5 + 528) |= 0x20000000uLL;
  v15 = self->_has;
  if ((*&v15 & 0x40000000) == 0)
  {
LABEL_12:
    if ((*&v15 & 0x200000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 344) = self->_mediaType;
  *(v5 + 528) |= 0x40000000uLL;
  v15 = self->_has;
  if ((*&v15 & 0x200000000000) == 0)
  {
LABEL_13:
    if ((*&v15 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_82:
  *(v5 + 522) = self->_offline;
  *(v5 + 528) |= 0x200000000000uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_14:
    *(v5 + 96) = self->_persistentID;
    *(v5 + 528) |= 0x800uLL;
  }

LABEL_15:
  v16 = [(NSString *)self->_personalizedContainerID copyWithZone:a3];
  v17 = *(v5 + 352);
  *(v5 + 352) = v16;

  v18 = self->_has;
  if ((*&v18 & 0x800000000000) != 0)
  {
    *(v5 + 524) = self->_sBEnabled;
    *(v5 + 528) |= 0x800000000000uLL;
    v18 = self->_has;
    if ((*&v18 & 0x400000000) == 0)
    {
LABEL_17:
      if ((*&v18 & 0x40000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&v18 & 0x400000000) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 436) = self->_sourceType;
  *(v5 + 528) |= 0x400000000uLL;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_18:
    *(v5 + 152) = self->_storeAccountID;
    *(v5 + 528) |= 0x40000uLL;
  }

LABEL_19:
  v19 = [(NSString *)self->_storeID copyWithZone:a3];
  v20 = *(v5 + 464);
  *(v5 + 464) = v19;

  v21 = [(NSData *)self->_timedMetadata copyWithZone:a3];
  v22 = *(v5 + 488);
  *(v5 + 488) = v21;

  v23 = [(NSData *)self->_trackInfo copyWithZone:a3];
  v24 = *(v5 + 496);
  *(v5 + 496) = v23;

  v25 = [(NSData *)self->_recommendationData copyWithZone:a3];
  v26 = *(v5 + 408);
  *(v5 + 408) = v25;

  v27 = [(NSString *)self->_storeFrontID copyWithZone:a3];
  v28 = *(v5 + 456);
  *(v5 + 456) = v27;

  v29 = self->_has;
  if ((*&v29 & 0x10000000) != 0)
  {
    *(v5 + 280) = self->_eventType;
    *(v5 + 528) |= 0x10000000uLL;
    v29 = self->_has;
    if ((*&v29 & 0x80000) == 0)
    {
LABEL_21:
      if ((*&v29 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_89;
    }
  }

  else if ((*&v29 & 0x80000) == 0)
  {
    goto LABEL_21;
  }

  *(v5 + 160) = self->_subscriptionAdamID;
  *(v5 + 528) |= 0x80000uLL;
  v29 = self->_has;
  if ((*&v29 & 0x1000) == 0)
  {
LABEL_22:
    if ((*&v29 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v5 + 104) = self->_purchasedAdamID;
  *(v5 + 528) |= 0x1000uLL;
  v29 = self->_has;
  if ((*&v29 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v29 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_90:
  *(v5 + 112) = self->_radioAdamID;
  *(v5 + 528) |= 0x2000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_24:
    *(v5 + 64) = self->_itemCloudID;
    *(v5 + 528) |= 0x80uLL;
  }

LABEL_25:
  v30 = [(NSString *)self->_lyricsID copyWithZone:a3];
  v31 = *(v5 + 336);
  *(v5 + 336) = v30;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_containerAdamID;
    *(v5 + 528) |= 8uLL;
  }

  v32 = [(NSString *)self->_globalPlaylistID copyWithZone:a3];
  v33 = *(v5 + 304);
  *(v5 + 304) = v32;

  v34 = [(NSString *)self->_stationHash copyWithZone:a3];
  v35 = *(v5 + 440);
  *(v5 + 440) = v34;

  v36 = [(NSString *)self->_stationStringID copyWithZone:a3];
  v37 = *(v5 + 448);
  *(v5 + 448) = v36;

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v5 + 144) = self->_stationID;
    *(v5 + 528) |= 0x20000uLL;
  }

  v38 = [(NSString *)self->_cloudAlbumID copyWithZone:a3];
  v39 = *(v5 + 224);
  *(v5 + 224) = v38;

  v40 = self->_has;
  if ((*&v40 & 4) != 0)
  {
    *(v5 + 24) = self->_cloudPlaylistID;
    *(v5 + 528) |= 4uLL;
    v40 = self->_has;
  }

  if ((*&v40 & 0x100000000) != 0)
  {
    *(v5 + 400) = self->_reasonHintType;
    *(v5 + 528) |= 0x100000000uLL;
  }

  v41 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v42 = *(v5 + 216);
  *(v5 + 216) = v41;

  v43 = [(NSString *)self->_playlistVersionHash copyWithZone:a3];
  v44 = *(v5 + 376);
  *(v5 + 376) = v43;

  v45 = [(NSString *)self->_requestingBundleIdentifier copyWithZone:a3];
  v46 = *(v5 + 416);
  *(v5 + 416) = v45;

  v47 = [(NSString *)self->_requestingBundleVersion copyWithZone:a3];
  v48 = *(v5 + 424);
  *(v5 + 424) = v47;

  v49 = self->_has;
  if ((*&v49 & 0x10) != 0)
  {
    *(v5 + 40) = self->_equivalencySourceAdamID;
    *(v5 + 528) |= 0x10uLL;
    v49 = self->_has;
    if ((*&v49 & 0x80000000000) == 0)
    {
LABEL_35:
      if ((*&v49 & 0x100000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_94;
    }
  }

  else if ((*&v49 & 0x80000000000) == 0)
  {
    goto LABEL_35;
  }

  *(v5 + 520) = self->_internalBuild;
  *(v5 + 528) |= 0x80000000000uLL;
  v49 = self->_has;
  if ((*&v49 & 0x100000) == 0)
  {
LABEL_36:
    if ((*&v49 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_94:
  *(v5 + 168) = self->_tvShowPurchasedAdamID;
  *(v5 + 528) |= 0x100000uLL;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_37:
    *(v5 + 176) = self->_tvShowSubscriptionAdamID;
    *(v5 + 528) |= 0x200000uLL;
  }

LABEL_38:
  v50 = [(ICPAPlayActivityEnqueuerProperties *)self->_enqueuerProperties copyWithZone:a3];
  v51 = *(v5 + 264);
  *(v5 + 264) = v50;

  v52 = [(NSString *)self->_householdID copyWithZone:a3];
  v53 = *(v5 + 312);
  *(v5 + 312) = v52;

  v54 = self->_has;
  if ((*&v54 & 0x400000000000) != 0)
  {
    *(v5 + 523) = self->_privateListeningEnabled;
    *(v5 + 528) |= 0x400000000000uLL;
    v54 = self->_has;
    if ((*&v54 & 0x1000000000000) == 0)
    {
LABEL_40:
      if ((*&v54 & 0x800000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v54 & 0x1000000000000) == 0)
  {
    goto LABEL_40;
  }

  *(v5 + 525) = self->_siriInitiated;
  *(v5 + 528) |= 0x1000000000000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_41:
    *(v5 + 472) = self->_systemReleaseType;
    *(v5 + 528) |= 0x800000000uLL;
  }

LABEL_42:
  v55 = [(NSString *)self->_eventTimeZoneName copyWithZone:a3];
  v56 = *(v5 + 272);
  *(v5 + 272) = v55;

  v57 = self->_has;
  if ((*&v57 & 0x4000000) != 0)
  {
    *(v5 + 256) = self->_displayType;
    *(v5 + 528) |= 0x4000000uLL;
    v57 = self->_has;
  }

  if (*&v57)
  {
    *(v5 + 8) = self->_characterDisplayedCount;
    *(v5 + 528) |= 1uLL;
  }

  v58 = [(NSString *)self->_lyricLanguage copyWithZone:a3];
  v59 = *(v5 + 328);
  *(v5 + 328) = v58;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v60 = self->_buildFeatures;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v79;
    do
    {
      v64 = 0;
      do
      {
        if (*v79 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v78 + 1) + 8 * v64) copyWithZone:{a3, v78}];
        [(ICPAPlayActivityEvent *)v5 addBuildFeatures:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v78 objects:v82 count:16];
    }

    while (v62);
  }

  v66 = [(ICPAPlayModeDictionary *)self->_playMode copyWithZone:a3];
  v67 = *(v5 + 360);
  *(v5 + 360) = v66;

  v68 = self->_has;
  if ((*&v68 & 0x1000000) != 0)
  {
    *(v5 + 200) = self->_audioQualityPreference;
    *(v5 + 528) |= 0x1000000uLL;
    v68 = self->_has;
  }

  if ((*&v68 & 0x80000000) != 0)
  {
    *(v5 + 368) = self->_playbackFormatPreference;
    *(v5 + 528) |= 0x80000000uLL;
  }

  v69 = [(ICPAAudioQualityDictionary *)self->_targetedAudioQuality copyWithZone:a3, v78];
  v70 = *(v5 + 480);
  *(v5 + 480) = v69;

  v71 = [(ICPAAudioQualityDictionary *)self->_providedAudioQuality copyWithZone:a3];
  v72 = *(v5 + 384);
  *(v5 + 384) = v71;

  v73 = [(NSString *)self->_queueGroupingID copyWithZone:a3];
  v74 = *(v5 + 392);
  *(v5 + 392) = v73;

  v75 = self->_has;
  if ((*&v75 & 0x4000) != 0)
  {
    *(v5 + 120) = self->_reportingAdamID;
    *(v5 + 528) |= 0x4000uLL;
    v75 = self->_has;
    if ((*&v75 & 0x8000) == 0)
    {
LABEL_59:
      if ((*&v75 & 0x10000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }
  }

  else if ((*&v75 & 0x8000) == 0)
  {
    goto LABEL_59;
  }

  *(v5 + 128) = self->_sharedActivityGroupSizeCurrent;
  *(v5 + 528) |= 0x8000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x10000) == 0)
  {
LABEL_60:
    if ((*&v75 & 0x4000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v5 + 136) = self->_sharedActivityGroupSizeMax;
  *(v5 + 528) |= 0x10000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x4000000000) == 0)
  {
LABEL_61:
    if ((*&v75 & 0x400000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v5 + 512) = self->_vocalAttenuationAvailibility;
  *(v5 + 528) |= 0x4000000000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x400000) == 0)
  {
LABEL_62:
    if ((*&v75 & 0x8000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v5 + 184) = self->_vocalAttenuationDuration;
  *(v5 + 528) |= 0x400000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x8000000000) == 0)
  {
LABEL_63:
    if ((*&v75 & 0x100000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v5 + 516) = self->_continuityCameraUsed;
  *(v5 + 528) |= 0x8000000000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x100000000000) == 0)
  {
LABEL_64:
    if ((*&v75 & 0x200000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v5 + 521) = self->_isCollaborativePlaylist;
  *(v5 + 528) |= 0x100000000000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x200000000) == 0)
  {
LABEL_65:
    if ((*&v75 & 0x800000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v5 + 432) = self->_sharedActivityType;
  *(v5 + 528) |= 0x200000000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x800000) == 0)
  {
LABEL_66:
    if ((*&v75 & 0x2000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v5 + 192) = self->_wallClockPlayDuration;
  *(v5 + 528) |= 0x800000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x2000000000) == 0)
  {
LABEL_67:
    if ((*&v75 & 0x1000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v5 + 508) = self->_userTransitionTypePreference;
  *(v5 + 528) |= 0x2000000000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x1000000000) == 0)
  {
LABEL_68:
    if ((*&v75 & 2) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v5 + 504) = self->_transitionTypeProvided;
  *(v5 + 528) |= 0x1000000000uLL;
  v75 = self->_has;
  if ((*&v75 & 2) == 0)
  {
LABEL_69:
    if ((*&v75 & 0x10000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v5 + 16) = self->_cloudPlaylistFolderID;
  *(v5 + 528) |= 2uLL;
  v75 = self->_has;
  if ((*&v75 & 0x10000000000) == 0)
  {
LABEL_70:
    if ((*&v75 & 0x20000000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_112:
    *(v5 + 518) = self->_displayTranslationEnabled;
    *(v5 + 528) |= 0x20000000000uLL;
    if ((*&self->_has & 0x40000000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_111:
  *(v5 + 517) = self->_continuityMicrophoneUsed;
  *(v5 + 528) |= 0x10000000000uLL;
  v75 = self->_has;
  if ((*&v75 & 0x20000000000) != 0)
  {
    goto LABEL_112;
  }

LABEL_71:
  if ((*&v75 & 0x40000000000) != 0)
  {
LABEL_72:
    *(v5 + 519) = self->_displayTransliterationEnabled;
    *(v5 + 528) |= 0x40000000000uLL;
  }

LABEL_73:
  v76 = v5;

  return v76;
}

- (uint64_t)addBuildFeatures:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 208);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 208);
      *(a1 + 208) = v6;

      v5 = *(a1 + 208);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_containerID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_9:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    PBDataWriterWriteDoubleField();
  }

LABEL_11:
  if (self->_externalID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_featureName)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x100) != 0)
  {
    PBDataWriterWriteDoubleField();
    v6 = self->_has;
    if ((*&v6 & 0x200) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_133;
    }
  }

  else if ((*&v6 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteDoubleField();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_134;
  }

LABEL_133:
  PBDataWriterWriteDoubleField();
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_135;
  }

LABEL_134:
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x200000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_136;
  }

LABEL_135:
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_136:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_22:
    PBDataWriterWriteInt64Field();
  }

LABEL_23:
  if (self->_personalizedContainerID)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x800000000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
    if ((*&v7 & 0x400000000) == 0)
    {
LABEL_27:
      if ((*&v7 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&v7 & 0x400000000) == 0)
  {
    goto LABEL_27;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_28:
    PBDataWriterWriteUint64Field();
  }

LABEL_29:
  if (self->_storeID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_timedMetadata)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_trackInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_recommendationData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_storeFrontID)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 0x10000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v8 = self->_has;
    if ((*&v8 & 0x80000) == 0)
    {
LABEL_41:
      if ((*&v8 & 0x1000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_143;
    }
  }

  else if ((*&v8 & 0x80000) == 0)
  {
    goto LABEL_41;
  }

  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_42:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_144;
  }

LABEL_143:
  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_43:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_144:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_44:
    PBDataWriterWriteUint64Field();
  }

LABEL_45:
  if (self->_lyricsID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_globalPlaylistID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stationHash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stationStringID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_cloudAlbumID)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v9 = self->_has;
  }

  if ((*&v9 & 0x100000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_playlistVersionHash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestingBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestingBundleVersion)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((*&v10 & 0x10) != 0)
  {
    PBDataWriterWriteInt64Field();
    v10 = self->_has;
    if ((*&v10 & 0x80000000000) == 0)
    {
LABEL_73:
      if ((*&v10 & 0x100000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_148;
    }
  }

  else if ((*&v10 & 0x80000000000) == 0)
  {
    goto LABEL_73;
  }

  PBDataWriterWriteBOOLField();
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_74:
    if ((*&v10 & 0x200000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_148:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_75:
    PBDataWriterWriteInt64Field();
  }

LABEL_76:
  if (self->_enqueuerProperties)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_householdID)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((*&v11 & 0x400000000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
    if ((*&v11 & 0x1000000000000) == 0)
    {
LABEL_82:
      if ((*&v11 & 0x800000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v11 & 0x1000000000000) == 0)
  {
    goto LABEL_82;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_83:
    PBDataWriterWriteInt32Field();
  }

LABEL_84:
  if (self->_eventTimeZoneName)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x4000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v12 = self->_has;
  }

  if (*&v12)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_lyricLanguage)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_buildFeatures;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteStringField();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  if (self->_playMode)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = self->_has;
  if ((*&v18 & 0x1000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v18 = self->_has;
  }

  if ((*&v18 & 0x80000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_targetedAudioQuality)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_providedAudioQuality)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_queueGroupingID)
  {
    PBDataWriterWriteStringField();
  }

  v19 = self->_has;
  if ((*&v19 & 0x4000) != 0)
  {
    PBDataWriterWriteInt64Field();
    v19 = self->_has;
    if ((*&v19 & 0x8000) == 0)
    {
LABEL_113:
      if ((*&v19 & 0x10000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_155;
    }
  }

  else if ((*&v19 & 0x8000) == 0)
  {
    goto LABEL_113;
  }

  PBDataWriterWriteInt64Field();
  v19 = self->_has;
  if ((*&v19 & 0x10000) == 0)
  {
LABEL_114:
    if ((*&v19 & 0x4000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_156;
  }

LABEL_155:
  PBDataWriterWriteInt64Field();
  v19 = self->_has;
  if ((*&v19 & 0x4000000000) == 0)
  {
LABEL_115:
    if ((*&v19 & 0x400000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_157;
  }

LABEL_156:
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x400000) == 0)
  {
LABEL_116:
    if ((*&v19 & 0x8000000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_158;
  }

LABEL_157:
  PBDataWriterWriteDoubleField();
  v19 = self->_has;
  if ((*&v19 & 0x8000000000) == 0)
  {
LABEL_117:
    if ((*&v19 & 0x100000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_159;
  }

LABEL_158:
  PBDataWriterWriteBOOLField();
  v19 = self->_has;
  if ((*&v19 & 0x100000000000) == 0)
  {
LABEL_118:
    if ((*&v19 & 0x200000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_160;
  }

LABEL_159:
  PBDataWriterWriteBOOLField();
  v19 = self->_has;
  if ((*&v19 & 0x200000000) == 0)
  {
LABEL_119:
    if ((*&v19 & 0x800000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_161;
  }

LABEL_160:
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x800000) == 0)
  {
LABEL_120:
    if ((*&v19 & 0x2000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_162;
  }

LABEL_161:
  PBDataWriterWriteDoubleField();
  v19 = self->_has;
  if ((*&v19 & 0x2000000000) == 0)
  {
LABEL_121:
    if ((*&v19 & 0x1000000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_163;
  }

LABEL_162:
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x1000000000) == 0)
  {
LABEL_122:
    if ((*&v19 & 2) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_164;
  }

LABEL_163:
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 2) == 0)
  {
LABEL_123:
    if ((*&v19 & 0x10000000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_165;
  }

LABEL_164:
  PBDataWriterWriteUint64Field();
  v19 = self->_has;
  if ((*&v19 & 0x10000000000) == 0)
  {
LABEL_124:
    if ((*&v19 & 0x20000000000) == 0)
    {
      goto LABEL_125;
    }

LABEL_166:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x40000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_165:
  PBDataWriterWriteBOOLField();
  v19 = self->_has;
  if ((*&v19 & 0x20000000000) != 0)
  {
    goto LABEL_166;
  }

LABEL_125:
  if ((*&v19 & 0x40000000000) != 0)
  {
LABEL_126:
    PBDataWriterWriteBOOLField();
  }

LABEL_127:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventType];
    [v3 setObject:v65 forKey:@"eventType"];

    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_126;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_3;
  }

  v66 = [MEMORY[0x1E696AD98] numberWithInt:self->_reasonHintType];
  [v3 setObject:v66 forKey:@"reasonHintType"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_127;
  }

LABEL_126:
  v67 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_subscriptionAdamID];
  [v3 setObject:v67 forKey:@"subscriptionAdamID"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_128;
  }

LABEL_127:
  v68 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_purchasedAdamID];
  [v3 setObject:v68 forKey:@"purchasedAdamID"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_128:
  v69 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_radioAdamID];
  [v3 setObject:v69 forKey:@"radioAdamID"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_itemCloudID];
    [v3 setObject:v5 forKey:@"itemCloudID"];
  }

LABEL_8:
  lyricsID = self->_lyricsID;
  if (lyricsID)
  {
    [v3 setObject:lyricsID forKey:@"lyricsID"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x10) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_equivalencySourceAdamID];
    [v3 setObject:v8 forKey:@"equivalencySourceAdamID"];

    v7 = self->_has;
  }

  if ((*&v7 & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_containerAdamID];
    [v3 setObject:v9 forKey:@"containerAdamID"];
  }

  globalPlaylistID = self->_globalPlaylistID;
  if (globalPlaylistID)
  {
    [v3 setObject:globalPlaylistID forKey:@"globalPlaylistID"];
  }

  stationHash = self->_stationHash;
  if (stationHash)
  {
    [v3 setObject:stationHash forKey:@"stationHash"];
  }

  stationStringID = self->_stationStringID;
  if (stationStringID)
  {
    [v3 setObject:stationStringID forKey:@"stationStringID"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_stationID];
    [v3 setObject:v13 forKey:@"stationID"];
  }

  cloudAlbumID = self->_cloudAlbumID;
  if (cloudAlbumID)
  {
    [v3 setObject:cloudAlbumID forKey:@"cloudAlbumID"];
  }

  v15 = self->_has;
  if ((*&v15 & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_cloudPlaylistID];
    [v3 setObject:v16 forKey:@"cloudPlaylistID"];

    v15 = self->_has;
  }

  if ((*&v15 & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_cloudPlaylistFolderID];
    [v3 setObject:v17 forKey:@"cloudPlaylistFolderID"];
  }

  playlistVersionHash = self->_playlistVersionHash;
  if (playlistVersionHash)
  {
    [v3 setObject:playlistVersionHash forKey:@"playlistVersionHash"];
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:self->_containerType];
    [v3 setObject:v19 forKey:@"containerType"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"deviceName"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x8000000) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:self->_endReasonType];
    [v3 setObject:v22 forKey:@"endReasonType"];

    v21 = self->_has;
  }

  if ((*&v21 & 0x20) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventDateTimestamp];
    [v3 setObject:v23 forKey:@"eventDateTimestamp"];
  }

  featureName = self->_featureName;
  if (featureName)
  {
    [v3 setObject:featureName forKey:@"featureName"];
  }

  v25 = self->_has;
  if ((*&v25 & 0x100) != 0)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithDouble:self->_itemDuration];
    [v3 setObject:v70 forKey:@"itemDuration"];

    v25 = self->_has;
    if ((*&v25 & 0x200) == 0)
    {
LABEL_42:
      if ((*&v25 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v25 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v71 = [MEMORY[0x1E696AD98] numberWithDouble:self->_itemEndTime];
  [v3 setObject:v71 forKey:@"itemEndTime"];

  v25 = self->_has;
  if ((*&v25 & 0x400) == 0)
  {
LABEL_43:
    if ((*&v25 & 0x20000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_133;
  }

LABEL_132:
  v72 = [MEMORY[0x1E696AD98] numberWithDouble:self->_itemStartTime];
  [v3 setObject:v72 forKey:@"itemStartTime"];

  v25 = self->_has;
  if ((*&v25 & 0x20000000) == 0)
  {
LABEL_44:
    if ((*&v25 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_134;
  }

LABEL_133:
  v73 = [MEMORY[0x1E696AD98] numberWithInt:self->_itemType];
  [v3 setObject:v73 forKey:@"itemType"];

  v25 = self->_has;
  if ((*&v25 & 0x40000000) == 0)
  {
LABEL_45:
    if ((*&v25 & 0x200000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_135;
  }

LABEL_134:
  v74 = [MEMORY[0x1E696AD98] numberWithInt:self->_mediaType];
  [v3 setObject:v74 forKey:@"mediaType"];

  v25 = self->_has;
  if ((*&v25 & 0x200000000000) == 0)
  {
LABEL_46:
    if ((*&v25 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_136;
  }

LABEL_135:
  v75 = [MEMORY[0x1E696AD98] numberWithBool:self->_offline];
  [v3 setObject:v75 forKey:@"offline"];

  v25 = self->_has;
  if ((*&v25 & 0x800) == 0)
  {
LABEL_47:
    if ((*&v25 & 0x800000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_137;
  }

LABEL_136:
  v76 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
  [v3 setObject:v76 forKey:@"persistentID"];

  v25 = self->_has;
  if ((*&v25 & 0x800000000000) == 0)
  {
LABEL_48:
    if ((*&v25 & 0x400000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_138;
  }

LABEL_137:
  v77 = [MEMORY[0x1E696AD98] numberWithBool:self->_sBEnabled];
  [v3 setObject:v77 forKey:@"SBEnabled"];

  v25 = self->_has;
  if ((*&v25 & 0x400000000) == 0)
  {
LABEL_49:
    if ((*&v25 & 0x40000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_138:
  v78 = [MEMORY[0x1E696AD98] numberWithInt:self->_sourceType];
  [v3 setObject:v78 forKey:@"sourceType"];

  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_50:
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_storeAccountID];
    [v3 setObject:v26 forKey:@"storeAccountID"];
  }

LABEL_51:
  timedMetadata = self->_timedMetadata;
  if (timedMetadata)
  {
    [v3 setObject:timedMetadata forKey:@"timedMetadata"];
  }

  trackInfo = self->_trackInfo;
  if (trackInfo)
  {
    [v3 setObject:trackInfo forKey:@"trackInfo"];
  }

  recommendationData = self->_recommendationData;
  if (recommendationData)
  {
    [v3 setObject:recommendationData forKey:@"recommendationData"];
  }

  storeFrontID = self->_storeFrontID;
  if (storeFrontID)
  {
    [v3 setObject:storeFrontID forKey:@"storeFrontID"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v3 setObject:buildVersion forKey:@"buildVersion"];
  }

  requestingBundleIdentifier = self->_requestingBundleIdentifier;
  if (requestingBundleIdentifier)
  {
    [v3 setObject:requestingBundleIdentifier forKey:@"requestingBundleIdentifier"];
  }

  requestingBundleVersion = self->_requestingBundleVersion;
  if (requestingBundleVersion)
  {
    [v3 setObject:requestingBundleVersion forKey:@"requestingBundleVersion"];
  }

  enqueuerProperties = self->_enqueuerProperties;
  if (enqueuerProperties)
  {
    v35 = [(ICPAPlayActivityEnqueuerProperties *)enqueuerProperties dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"enqueuerProperties"];
  }

  householdID = self->_householdID;
  if (householdID)
  {
    [v3 setObject:householdID forKey:@"householdID"];
  }

  v37 = self->_has;
  if ((*&v37 & 0x400000000000) != 0)
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:self->_privateListeningEnabled];
    [v3 setObject:v79 forKey:@"privateListeningEnabled"];

    v37 = self->_has;
    if ((*&v37 & 0x1000000000000) == 0)
    {
LABEL_71:
      if ((*&v37 & 0x800000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v37 & 0x1000000000000) == 0)
  {
    goto LABEL_71;
  }

  v80 = [MEMORY[0x1E696AD98] numberWithBool:self->_siriInitiated];
  [v3 setObject:v80 forKey:@"siriInitiated"];

  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_72:
    v38 = [MEMORY[0x1E696AD98] numberWithInt:self->_systemReleaseType];
    [v3 setObject:v38 forKey:@"systemReleaseType"];
  }

LABEL_73:
  eventTimeZoneName = self->_eventTimeZoneName;
  if (eventTimeZoneName)
  {
    [v3 setObject:eventTimeZoneName forKey:@"eventTimeZoneName"];
  }

  v40 = self->_has;
  if ((*&v40 & 0x4000000) != 0)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:self->_displayType];
    [v3 setObject:v41 forKey:@"displayType"];

    v40 = self->_has;
  }

  if (*&v40)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_characterDisplayedCount];
    [v3 setObject:v42 forKey:@"characterDisplayedCount"];
  }

  lyricLanguage = self->_lyricLanguage;
  if (lyricLanguage)
  {
    [v3 setObject:lyricLanguage forKey:@"lyricLanguage"];
  }

  buildFeatures = self->_buildFeatures;
  if (buildFeatures)
  {
    [v3 setObject:buildFeatures forKey:@"buildFeatures"];
  }

  playMode = self->_playMode;
  if (playMode)
  {
    v46 = [(ICPAPlayModeDictionary *)playMode dictionaryRepresentation];
    [v3 setObject:v46 forKey:@"play_mode"];
  }

  v47 = self->_has;
  if ((*&v47 & 0x1000000) != 0)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithInt:self->_audioQualityPreference];
    [v3 setObject:v48 forKey:@"audioQualityPreference"];

    v47 = self->_has;
  }

  if ((*&v47 & 0x80000000) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInt:self->_playbackFormatPreference];
    [v3 setObject:v49 forKey:@"playbackFormatPreference"];
  }

  targetedAudioQuality = self->_targetedAudioQuality;
  if (targetedAudioQuality)
  {
    v51 = [(ICPAAudioQualityDictionary *)targetedAudioQuality dictionaryRepresentation];
    [v3 setObject:v51 forKey:@"targetedAudioQuality"];
  }

  providedAudioQuality = self->_providedAudioQuality;
  if (providedAudioQuality)
  {
    v53 = [(ICPAAudioQualityDictionary *)providedAudioQuality dictionaryRepresentation];
    [v3 setObject:v53 forKey:@"providedAudioQuality"];
  }

  queueGroupingID = self->_queueGroupingID;
  if (queueGroupingID)
  {
    [v3 setObject:queueGroupingID forKey:@"queueGroupingID"];
  }

  v55 = self->_has;
  if ((*&v55 & 0x4000) != 0)
  {
    v81 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_reportingAdamID];
    [v3 setObject:v81 forKey:@"reportingAdamID"];

    v55 = self->_has;
    if ((*&v55 & 0x8000) == 0)
    {
LABEL_97:
      if ((*&v55 & 0x10000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_145;
    }
  }

  else if ((*&v55 & 0x8000) == 0)
  {
    goto LABEL_97;
  }

  v82 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sharedActivityGroupSizeCurrent];
  [v3 setObject:v82 forKey:@"sharedActivityGroupSizeCurrent"];

  v55 = self->_has;
  if ((*&v55 & 0x10000) == 0)
  {
LABEL_98:
    if ((*&v55 & 0x4000000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_146;
  }

LABEL_145:
  v83 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sharedActivityGroupSizeMax];
  [v3 setObject:v83 forKey:@"sharedActivityGroupSizeMax"];

  v55 = self->_has;
  if ((*&v55 & 0x4000000000) == 0)
  {
LABEL_99:
    if ((*&v55 & 0x400000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_147;
  }

LABEL_146:
  v84 = [MEMORY[0x1E696AD98] numberWithInt:self->_vocalAttenuationAvailibility];
  [v3 setObject:v84 forKey:@"vocalAttenuationAvailibility"];

  v55 = self->_has;
  if ((*&v55 & 0x400000) == 0)
  {
LABEL_100:
    if ((*&v55 & 0x8000000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_148;
  }

LABEL_147:
  v85 = [MEMORY[0x1E696AD98] numberWithDouble:self->_vocalAttenuationDuration];
  [v3 setObject:v85 forKey:@"vocalAttenuationDuration"];

  v55 = self->_has;
  if ((*&v55 & 0x8000000000) == 0)
  {
LABEL_101:
    if ((*&v55 & 0x100000000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_149;
  }

LABEL_148:
  v86 = [MEMORY[0x1E696AD98] numberWithBool:self->_continuityCameraUsed];
  [v3 setObject:v86 forKey:@"continuityCameraUsed"];

  v55 = self->_has;
  if ((*&v55 & 0x100000000000) == 0)
  {
LABEL_102:
    if ((*&v55 & 0x200000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_150;
  }

LABEL_149:
  v87 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCollaborativePlaylist];
  [v3 setObject:v87 forKey:@"isCollaborativePlaylist"];

  v55 = self->_has;
  if ((*&v55 & 0x200000000) == 0)
  {
LABEL_103:
    if ((*&v55 & 0x800000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_151;
  }

LABEL_150:
  v88 = [MEMORY[0x1E696AD98] numberWithInt:self->_sharedActivityType];
  [v3 setObject:v88 forKey:@"sharedActivityType"];

  v55 = self->_has;
  if ((*&v55 & 0x800000) == 0)
  {
LABEL_104:
    if ((*&v55 & 0x2000000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_152;
  }

LABEL_151:
  v89 = [MEMORY[0x1E696AD98] numberWithDouble:self->_wallClockPlayDuration];
  [v3 setObject:v89 forKey:@"wallClockPlayDuration"];

  v55 = self->_has;
  if ((*&v55 & 0x2000000000) == 0)
  {
LABEL_105:
    if ((*&v55 & 0x1000000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_153;
  }

LABEL_152:
  v90 = [MEMORY[0x1E696AD98] numberWithInt:self->_userTransitionTypePreference];
  [v3 setObject:v90 forKey:@"userTransitionTypePreference"];

  v55 = self->_has;
  if ((*&v55 & 0x1000000000) == 0)
  {
LABEL_106:
    if ((*&v55 & 0x10000000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_154;
  }

LABEL_153:
  v91 = [MEMORY[0x1E696AD98] numberWithInt:self->_transitionTypeProvided];
  [v3 setObject:v91 forKey:@"transitionTypeProvided"];

  v55 = self->_has;
  if ((*&v55 & 0x10000000000) == 0)
  {
LABEL_107:
    if ((*&v55 & 0x20000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_155;
  }

LABEL_154:
  v92 = [MEMORY[0x1E696AD98] numberWithBool:self->_continuityMicrophoneUsed];
  [v3 setObject:v92 forKey:@"continuityMicrophoneUsed"];

  v55 = self->_has;
  if ((*&v55 & 0x20000000000) == 0)
  {
LABEL_108:
    if ((*&v55 & 0x40000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_155:
  v93 = [MEMORY[0x1E696AD98] numberWithBool:self->_displayTranslationEnabled];
  [v3 setObject:v93 forKey:@"displayTranslationEnabled"];

  if ((*&self->_has & 0x40000000000) != 0)
  {
LABEL_109:
    v56 = [MEMORY[0x1E696AD98] numberWithBool:self->_displayTransliterationEnabled];
    [v3 setObject:v56 forKey:@"displayTransliterationEnabled"];
  }

LABEL_110:
  containerID = self->_containerID;
  if (containerID)
  {
    [v3 setObject:containerID forKey:@"containerID"];
  }

  personalizedContainerID = self->_personalizedContainerID;
  if (personalizedContainerID)
  {
    [v3 setObject:personalizedContainerID forKey:@"personalizedContainerID"];
  }

  storeID = self->_storeID;
  if (storeID)
  {
    [v3 setObject:storeID forKey:@"storeID"];
  }

  externalID = self->_externalID;
  if (externalID)
  {
    [v3 setObject:externalID forKey:@"externalID"];
  }

  v61 = self->_has;
  if ((*&v61 & 0x100000) != 0)
  {
    v94 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_tvShowPurchasedAdamID];
    [v3 setObject:v94 forKey:@"tvShowPurchasedAdamID"];

    v61 = self->_has;
    if ((*&v61 & 0x200000) == 0)
    {
LABEL_120:
      if ((*&v61 & 0x80000000000) == 0)
      {
        goto LABEL_121;
      }

LABEL_159:
      v96 = [MEMORY[0x1E696AD98] numberWithBool:self->_internalBuild];
      [v3 setObject:v96 forKey:@"internalBuild"];

      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_122;
    }
  }

  else if ((*&v61 & 0x200000) == 0)
  {
    goto LABEL_120;
  }

  v95 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_tvShowSubscriptionAdamID];
  [v3 setObject:v95 forKey:@"tvShowSubscriptionAdamID"];

  v61 = self->_has;
  if ((*&v61 & 0x80000000000) != 0)
  {
    goto LABEL_159;
  }

LABEL_121:
  if ((*&v61 & 0x40) != 0)
  {
LABEL_122:
    v62 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventSecondsFromGMT];
    [v3 setObject:v62 forKey:@"eventSecondsFromGMT"];
  }

LABEL_123:
  v63 = v3;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPAPlayActivityEvent;
  v4 = [(ICPAPlayActivityEvent *)&v8 description];
  v5 = [(ICPAPlayActivityEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end