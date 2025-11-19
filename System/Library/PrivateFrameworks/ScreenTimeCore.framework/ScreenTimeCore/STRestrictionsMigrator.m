@interface STRestrictionsMigrator
- (BOOL)_isEmptyConfiguration:(id)a3;
- (BOOL)hasMigratorRun;
- (BOOL)migrateContentPrivacyConfigurationsInContext:(id)a3 error:(id *)a4;
- (BOOL)performMigrationWithContext:(id)a3 error:(id *)a4;
- (id)allSourceFeatures;
- (id)dayItemFromCurfew:(id)a3;
- (id)invertBooleanNumber:(id)a3;
- (id)sourceRatingRegionCode;
- (id)typeForConfigurationIdentifier:(id)a3;
- (void)cleanUpAfterMigration;
- (void)collectMCFeatures;
- (void)migrateSettingsToConfigurations;
@end

@implementation STRestrictionsMigrator

- (id)allSourceFeatures
{
  v4[0] = MCFeatureAccountModificationAllowed;
  v4[1] = MCFeatureAddingGameCenterFriendsAllowed;
  v4[2] = MCFeatureAirDropAllowed;
  v4[3] = MCFeatureAppCellularDataModificationAllowed;
  v4[4] = MCFeatureAppClipsAllowed;
  v4[5] = MCFeatureAppInstallationAllowed;
  v4[6] = MCFeatureAppRemovalAllowed;
  v4[7] = MCFeatureAssistantAllowed;
  v4[8] = MCFeatureAssistantUserGeneratedContentAllowed;
  v4[9] = MCFeatureAutomaticAppUpdatesModificationAllowed;
  v4[10] = MCFeatureBookstoreAllowed;
  v4[11] = MCFeatureBookstoreEroticaAllowed;
  v4[12] = MCFeatureCameraAllowed;
  v4[13] = MCFeatureCellularPlanModificationAllowed;
  v4[14] = MCFeatureDictationAllowed;
  v4[15] = MCFeatureDriverDoNotDisturbModificationsAllowed;
  v4[16] = MCFeatureExplicitContentAllowed;
  v4[17] = MCFeatureFindMyFriendsModificationAllowed;
  v4[18] = MCFeatureGameCenterAllowedOtherPlayerTypes;
  v4[19] = MCFeatureGameCenterNearbyMultiplayerAllowed;
  v4[20] = MCFeatureGameCenterPrivateMessagingAllowed;
  v4[21] = MCFeatureGameCenterProfileModificationAllowed;
  v4[22] = MCFeatureGameCenterProfilePrivacyModificationAllowed;
  v4[23] = MCFeatureInAppPurchasesAllowed;
  v4[24] = MCFeatureITunesAllowed;
  v4[25] = MCFeatureMultiplayerGamingAllowed;
  v4[26] = MCFeatureMusicArtistActivityAllowed;
  v4[27] = MCFeatureMusicVideosAllowed;
  v4[28] = MCFeatureNewsAllowed;
  v4[29] = MCFeaturePodcastsAllowed;
  v4[30] = MCFeatureSafariAllowed;
  v4[31] = MCFeatureScreenRecordingAllowed;
  v4[32] = MCFeatureTVShowingUndownloadedMoviesAllowed;
  v4[33] = MCFeatureTVShowingUndownloadedTVShowsAllowed;
  v4[34] = MCFeatureTVProviderModificationAllowed;
  v4[35] = MCFeatureVehicleUIAllowed;
  v4[36] = MCFeatureVideoConferencingAllowed;
  v4[37] = MCFeatureGroupActivityAllowed;
  v4[38] = MCFeatureAssistantProfanityFilterForced;
  v4[39] = MCFeatureWebContentFilterAutoForced;
  v4[40] = MCFeatureMaximumAppsRating;
  v4[41] = MCFeatureMaximumMoviesRating;
  v4[42] = MCFeatureMaximumTVShowsRating;
  v4[43] = MCFeatureWebContentFilterAutoPermittedURLs;
  v4[44] = MCFeatureWebContentFilterBlacklistedURLs;
  v4[45] = MCFeatureWebContentFilterWhitelistedURLs;
  v2 = [NSArray arrayWithObjects:v4 count:46];

  return v2;
}

- (id)sourceRatingRegionCode
{
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsMCContentRestrictions", STSBDomain);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = CFDictionaryGetValue(v3, @"countryCode");
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)collectMCFeatures
{
  v26 = objc_opt_new();
  v25 = self;
  v3 = [(STRestrictionsMigrator *)self allSourceFeatures];
  v30 = +[MCProfileConnection sharedConnection];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v29)
  {
    v28 = *v32;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [v30 userValueForUnionSetting:v5];
        v7 = [v30 userValueForIntersectionSetting:v5];
        v8 = [v30 userValueForSetting:v5];
        v9 = [v30 userBoolValueForSetting:v5];
        if (v9)
        {
          v10 = [NSNumber numberWithInt:v9 == 1];
          if (v6)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v10 = 0;
          if (v6)
          {
LABEL_8:
            v11 = v6;
            v12 = [v30 defaultValuesForUnionSetting:v5];
            v13 = [v12 isEqual:v11];

            if (v13)
            {
              goto LABEL_23;
            }

            if (!v7)
            {
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        if (v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = v10;
        }

        if (v7)
        {
          v14 = v7;
        }

        v11 = v14;
        if (!v7)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (v11 == v7)
        {
          v15 = [v30 defaultValuesForIntersectionSetting:v5];
          v16 = [v15 isEqual:v7];

          if (v16)
          {
LABEL_23:
            v19 = 1;
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v8)
        {
          if (v11 == v8)
          {
            v17 = [v30 defaultValueForSetting:v5];
            v18 = [v17 isEqual:v8];

            if (v18)
            {
              goto LABEL_23;
            }
          }
        }

        v19 = 0;
        if (v10 && v11 == v10)
        {
          v19 = [v30 defaultBoolValueForSetting:v5] == v9;
        }

LABEL_27:
        v20 = +[STLog restrictionsMigrator];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413826;
          *v36 = v5;
          *&v36[8] = 2112;
          *&v36[10] = v10;
          v37 = 2112;
          v38 = v8;
          v39 = 2112;
          v40 = v7;
          v41 = 2112;
          v42 = v6;
          v43 = 2112;
          v44 = v11;
          v45 = 1024;
          v46 = v19;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "For feature %@ found values b %@ s %@ i %@ u %@, picked %@, is default %d", buf, 0x44u);
        }

        if (!v19)
        {
          [v26 setObject:v11 forKeyedSubscript:v5];
        }
      }

      v29 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v29);
  }

  v21 = [v30 userBookmarks];
  v22 = v21;
  if (v21 && [v21 count])
  {
    [v26 setObject:v22 forKeyedSubscript:@"MCBookmarks"];
  }

  v23 = +[STLog restrictionsMigrator];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [obj count];
    *buf = 67109378;
    *v36 = v24;
    *&v36[4] = 2114;
    *&v36[6] = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Collected changed features (out of %d): %{public}@", buf, 0x12u);
  }

  [(STRestrictionsMigrator *)v25 setCollectedSettings:v26];
}

- (BOOL)_isEmptyConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 serialize];
  v5 = [v4 objectForKeyedSubscript:@"Payload"];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[STLog restrictionsMigrator];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Built configuration %@: %@", &v9, 0x16u);
    }
  }

  return v6 == 0;
}

- (id)typeForConfigurationIdentifier:(id)a3
{
  v3 = STRestrictionsBaseIdentifier;
  v4 = a3;
  v5 = [v4 substringFromIndex:{objc_msgSend(v3, "length") + 1}];

  return v5;
}

- (id)invertBooleanNumber:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v5 = &__kCFBooleanFalse;
    }

    else
    {
      v5 = &__kCFBooleanTrue;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dayItemFromCurfew:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_opt_new();
  [v5 setFormatOptions:544];
  v6 = [v4 timeZone];
  [v5 setTimeZone:v6];

  v7 = [v3 objectForKeyedSubscript:@"start"];
  v8 = [v3 objectForKeyedSubscript:@"end"];
  v9 = [v3 objectForKeyedSubscript:@"enabled"];

  v10 = 0;
  if (![v9 BOOLValue] || !v7)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v8)
  {
    v10 = objc_opt_new();
    v9 = [v5 dateFromString:v7];
    if (v9)
    {
      v11 = [v4 components:224 fromDate:v9];
      if (v11)
      {
        [v10 setStartTime:v11];
      }
    }

    v12 = [v5 dateFromString:v8];
    if (v12)
    {
      v13 = [v4 components:224 fromDate:v12];
      if (v13)
      {
        [v10 setEndTime:v13];
      }
    }

    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (void)migrateSettingsToConfigurations
{
  v4 = objc_opt_new();
  v5 = [(STRestrictionsMigrator *)self collectedSettings];
  if (!v5)
  {
    sub_10011CAA4(a2, self);
  }

  v6 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"account.settings"];
  v7 = [CEMAccountSettingsDeclaration buildRequiredOnlyWithIdentifier:v6];

  v8 = MCFeatureAccountModificationAllowed;
  v9 = [v5 objectForKeyedSubscript:MCFeatureAccountModificationAllowed];
  [v7 setPayloadAllowAccountModification:v9];

  [v5 setObject:0 forKeyedSubscript:v8];
  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v7])
  {
    [v4 addObject:v7];
  }

  v10 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"application.settings"];
  v11 = [CEMApplicationSettingsDeclaration buildRequiredOnlyWithIdentifier:v10];

  v12 = MCFeatureAutomaticAppUpdatesModificationAllowed;
  v13 = [v5 objectForKeyedSubscript:MCFeatureAutomaticAppUpdatesModificationAllowed];
  [v11 setPayloadAllowAutomaticAppUpdatesModification:v13];

  [v5 setObject:0 forKeyedSubscript:v12];
  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v11])
  {
    [v4 addObject:v11];
  }

  v14 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"application.store"];
  v15 = [CEMApplicationStoreDeclaration buildRequiredOnlyWithIdentifier:v14];

  v16 = MCFeatureAppClipsAllowed;
  v17 = [v5 objectForKeyedSubscript:MCFeatureAppClipsAllowed];
  [v15 setPayloadAllowAppClips:v17];

  v18 = MCFeatureAppInstallationAllowed;
  v19 = [v5 objectForKeyedSubscript:MCFeatureAppInstallationAllowed];
  [v15 setPayloadAllowAppInstallation:v19];

  v20 = MCFeatureAppRemovalAllowed;
  v21 = [v5 objectForKeyedSubscript:MCFeatureAppRemovalAllowed];
  [v15 setPayloadAllowAppRemoval:v21];

  v22 = MCFeatureInAppPurchasesAllowed;
  v23 = [v5 objectForKeyedSubscript:MCFeatureInAppPurchasesAllowed];
  [v15 setPayloadAllowInAppPurchases:v23];

  v24 = MCFeatureITunesStorePasswordEntryForced;
  v25 = [v5 objectForKeyedSubscript:MCFeatureITunesStorePasswordEntryForced];
  [v15 setPayloadForceITunesStorePasswordEntry:v25];

  v199[0] = v16;
  v199[1] = v18;
  v199[2] = v20;
  v199[3] = v22;
  v199[4] = v24;
  v26 = [NSArray arrayWithObjects:v199 count:5];
  [v5 removeObjectsForKeys:v26];

  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v15])
  {
    [v4 addObject:v15];
  }

  v27 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"legacy.restrictions.apps"];
  v28 = [CEMLegacyRestrictionsAppsDeclaration buildRequiredOnlyWithIdentifier:v27];

  v29 = MCFeatureITunesAllowed;
  v30 = [v5 objectForKeyedSubscript:MCFeatureITunesAllowed];
  [v28 setPayloadAllowiTunes:v30];

  v31 = MCFeatureNewsAllowed;
  v32 = [v5 objectForKeyedSubscript:MCFeatureNewsAllowed];
  [v28 setPayloadAllowNews:v32];

  v33 = MCFeaturePodcastsAllowed;
  v34 = [v5 objectForKeyedSubscript:MCFeaturePodcastsAllowed];
  [v28 setPayloadAllowPodcasts:v34];

  v35 = MCFeatureSafariAllowed;
  v36 = [v5 objectForKeyedSubscript:MCFeatureSafariAllowed];
  [v28 setPayloadAllowSafari:v36];

  v37 = MCFeatureVideoConferencingAllowed;
  v38 = [v5 objectForKeyedSubscript:MCFeatureVideoConferencingAllowed];
  [v28 setPayloadAllowVideoConferencing:v38];

  v39 = MCFeatureGroupActivityAllowed;
  [v5 objectForKeyedSubscript:MCFeatureGroupActivityAllowed];
  v40 = v175 = v5;
  [v28 setPayloadAllowGroupActivity:v40];

  v198[0] = v29;
  v198[1] = v31;
  v198[2] = v33;
  v198[3] = v35;
  v198[4] = v37;
  v198[5] = v39;
  v41 = [NSArray arrayWithObjects:v198 count:6];
  [v175 removeObjectsForKeys:v41];

  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v28])
  {
    [v4 addObject:v28];
  }

  v42 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"media.settings"];
  v43 = [CEMMediaSettingsDeclaration buildRequiredOnlyWithIdentifier:v42];

  v44 = MCFeatureBookstoreAllowed;
  v45 = [v175 objectForKeyedSubscript:MCFeatureBookstoreAllowed];
  [v43 setPayloadAllowBookstore:v45];

  v46 = MCFeatureBookstoreEroticaAllowed;
  v47 = [v175 objectForKeyedSubscript:MCFeatureBookstoreEroticaAllowed];
  [v43 setPayloadAllowBookstoreErotica:v47];

  v197[0] = v44;
  v197[1] = v46;
  v48 = [NSArray arrayWithObjects:v197 count:2];
  [v175 removeObjectsForKeys:v48];

  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v43])
  {
    [v4 addObject:v43];
  }

  v49 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"network.cellular.settings"];
  v50 = [CEMNetworkCellularSettingsDeclaration buildRequiredOnlyWithIdentifier:v49];

  v51 = MCFeatureCellularPlanModificationAllowed;
  v52 = [v175 objectForKeyedSubscript:MCFeatureCellularPlanModificationAllowed];
  [v50 setPayloadAllowCellularPlanModification:v52];

  v53 = MCFeatureAppCellularDataModificationAllowed;
  v54 = [v175 objectForKeyedSubscript:MCFeatureAppCellularDataModificationAllowed];
  [v50 setPayloadAllowAppCellularDataModification:v54];

  v196[0] = v51;
  v196[1] = v53;
  v55 = [NSArray arrayWithObjects:v196 count:2];
  [v175 removeObjectsForKeys:v55];

  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v50])
  {
    [v4 addObject:v50];
  }

  v56 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"system.airdrop"];
  v57 = [CEMSystemAirdropDeclaration buildRequiredOnlyWithIdentifier:v56];

  v58 = MCFeatureAirDropAllowed;
  v59 = [v175 objectForKeyedSubscript:MCFeatureAirDropAllowed];
  [v57 setPayloadAllowAirDrop:v59];

  [v175 setObject:0 forKeyedSubscript:v58];
  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v57])
  {
    [v4 addObject:v57];
  }

  v60 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"system.camera"];
  v61 = [CEMSystemCameraDeclaration buildRequiredOnlyWithIdentifier:v60];

  v62 = MCFeatureCameraAllowed;
  v63 = [v175 objectForKeyedSubscript:MCFeatureCameraAllowed];
  [v61 setPayloadAllowCamera:v63];

  v64 = MCFeatureScreenRecordingAllowed;
  v65 = [v175 objectForKeyedSubscript:MCFeatureScreenRecordingAllowed];
  [v61 setPayloadAllowScreenRecording:v65];

  v195[0] = v62;
  v195[1] = v64;
  v66 = [NSArray arrayWithObjects:v195 count:2];
  [v175 removeObjectsForKeys:v66];

  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v61])
  {
    [v4 addObject:v61];
  }

  v67 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"system.carplay"];
  v68 = [CEMSystemCarPlayDeclaration buildRequiredOnlyWithIdentifier:v67];

  v69 = MCFeatureVehicleUIAllowed;
  v70 = [v175 objectForKeyedSubscript:MCFeatureVehicleUIAllowed];
  [v68 setPayloadAllowVehicleUI:v70];

  [v175 setObject:0 forKeyedSubscript:v69];
  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v68])
  {
    [v4 addObject:v68];
  }

  v71 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"system.donotdisturb"];
  v72 = [CEMSystemDoNotDisturbDeclaration buildRequiredOnlyWithIdentifier:v71];

  v73 = MCFeatureDriverDoNotDisturbModificationsAllowed;
  v74 = [v175 objectForKeyedSubscript:MCFeatureDriverDoNotDisturbModificationsAllowed];
  [v72 setPayloadAllowDriverDoNotDisturbModifications:v74];

  [v175 setObject:0 forKeyedSubscript:v73];
  if (![(STRestrictionsMigrator *)self _isEmptyConfiguration:v72])
  {
    [v4 addObject:v72];
  }

  v75 = [(STRestrictionsMigrator *)self configurationIdentifierForType:@"system.gamecenter"];
  v76 = [CEMSystemGameCenterDeclaration buildRequiredOnlyWithIdentifier:v75];

  v77 = MCFeatureMultiplayerGamingAllowed;
  v78 = [v175 objectForKeyedSubscript:MCFeatureMultiplayerGamingAllowed];
  [v76 setPayloadAllowMultiplayerGaming:v78];

  v79 = MCFeatureGameCenterAllowedOtherPlayerTypes;
  v80 = [v175 objectForKeyedSubscript:MCFeatureGameCenterAllowedOtherPlayerTypes];
  [v76 setPayloadAllowedGameCenterOtherPlayerTypes:v80];

  v81 = MCFeatureAddingGameCenterFriendsAllowed;
  v82 = [v175 objectForKeyedSubscript:MCFeatureAddingGameCenterFriendsAllowed];
  [v76 setPayloadAllowAddingGameCenterFriends:v82];

  v83 = MCFeatureGameCenterNearbyMultiplayerAllowed;
  v84 = [v175 objectForKeyedSubscript:MCFeatureGameCenterNearbyMultiplayerAllowed];
  [v76 setPayloadAllowGameCenterNearbyMultiplayer:v84];

  v85 = [v175 objectForKeyedSubscript:MCFeatureGameCenterFriendsSharingModificationAllowed];
  [v76 setPayloadAllowGameCenterFriendsSharingModification:v85];

  v86 = MCFeatureGameCenterPrivateMessagingAllowed;
  v87 = [v175 objectForKeyedSubscript:MCFeatureGameCenterPrivateMessagingAllowed];
  [v76 setPayloadAllowGameCenterPrivateMessaging:v87];

  v88 = MCFeatureGameCenterProfilePrivacyModificationAllowed;
  v89 = [v175 objectForKeyedSubscript:MCFeatureGameCenterProfilePrivacyModificationAllowed];
  [v76 setPayloadAllowGameCenterProfilePrivacyModification:v89];

  v90 = MCFeatureGameCenterProfileModificationAllowed;
  [v175 objectForKeyedSubscript:MCFeatureGameCenterProfileModificationAllowed];
  v91 = v174 = self;
  [v76 setPayloadAllowGameCenterProfileModification:v91];

  v194[0] = v77;
  v194[1] = v79;
  v194[2] = v81;
  v194[3] = v83;
  v194[4] = v86;
  v194[5] = v88;
  v194[6] = v90;
  v92 = [NSArray arrayWithObjects:v194 count:7];
  [v175 removeObjectsForKeys:v92];

  if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v76])
  {
    [v4 addObject:v76];
  }

  v93 = [(STRestrictionsMigrator *)v174 configurationIdentifierForType:@"system.icloud"];
  v94 = [CEMSystemiCloudDeclaration buildRequiredOnlyWithIdentifier:v93];

  v95 = MCFeatureFindMyFriendsModificationAllowed;
  v96 = [v175 objectForKeyedSubscript:MCFeatureFindMyFriendsModificationAllowed];
  [v94 setPayloadAllowFindMyFriendsModification:v96];

  [v175 setObject:0 forKeyedSubscript:v95];
  if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v94])
  {
    [v4 addObject:v94];
  }

  v97 = [(STRestrictionsMigrator *)v174 configurationIdentifierForType:@"system.music"];
  v98 = [CEMSystemMusicDeclaration buildRequiredOnlyWithIdentifier:v97];

  v99 = MCFeatureMusicArtistActivityAllowed;
  v100 = [v175 objectForKeyedSubscript:MCFeatureMusicArtistActivityAllowed];
  [v98 setPayloadAllowMusicArtistActivity:v100];

  v101 = MCFeatureMusicVideosAllowed;
  v102 = [v175 objectForKeyedSubscript:MCFeatureMusicVideosAllowed];
  [v98 setPayloadAllowMusicVideos:v102];

  [v175 setObject:0 forKeyedSubscript:v99];
  [v175 setObject:0 forKeyedSubscript:v101];
  if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v98])
  {
    [v4 addObject:v98];
  }

  v103 = MCFeatureMaximumAppsRating;
  v104 = [v175 objectForKeyedSubscript:MCFeatureMaximumAppsRating];
  v170 = v4;
  if (v104)
  {

    v105 = MCFeatureMaximumMoviesRating;
LABEL_34:
    v171 = [(STRestrictionsMigrator *)v174 sourceRatingRegionCode];
    v107 = MCFeatureMaximumTVShowsRating;
    goto LABEL_35;
  }

  v105 = MCFeatureMaximumMoviesRating;
  v106 = [v175 objectForKeyedSubscript:MCFeatureMaximumMoviesRating];
  if (v106)
  {

    goto LABEL_34;
  }

  v107 = MCFeatureMaximumTVShowsRating;
  v108 = [v175 objectForKeyedSubscript:MCFeatureMaximumTVShowsRating];

  if (v108)
  {
    goto LABEL_34;
  }

  v171 = 0;
LABEL_35:
  v168 = v105;
  v161 = v107;
  v160 = [(STRestrictionsMigrator *)v174 configurationIdentifierForType:@"system.ratings"];
  v109 = [v175 objectForKeyedSubscript:v103];
  v110 = [v175 objectForKeyedSubscript:v105];
  [v175 objectForKeyedSubscript:v107];
  v111 = v166 = v103;
  v164 = MCFeatureExplicitContentAllowed;
  v112 = [v175 objectForKeyedSubscript:?];
  v113 = MCFeatureTVShowingUndownloadedTVShowsAllowed;
  v114 = [v175 objectForKeyedSubscript:MCFeatureTVShowingUndownloadedTVShowsAllowed];
  v115 = MCFeatureTVShowingUndownloadedMoviesAllowed;
  v116 = [v175 objectForKeyedSubscript:MCFeatureTVShowingUndownloadedMoviesAllowed];
  v117 = [CEMSystemRatingsDeclaration buildWithIdentifier:v160 withRatingRegion:v171 withRatingApps:v109 withRatingMovies:v110 withRatingTVShows:v111 withAllowExplicitContent:v112 withAllowShowingUndownloadedTV:v114 withAllowShowingUndownloadedMovies:v116];

  v193[0] = v166;
  v193[1] = v168;
  v193[2] = v161;
  v193[3] = v164;
  v193[4] = v113;
  v193[5] = v115;
  v118 = [NSArray arrayWithObjects:v193 count:6];
  [v175 removeObjectsForKeys:v118];

  if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v117])
  {
    [v4 addObject:v117];
  }

  v119 = [(STRestrictionsMigrator *)v174 configurationIdentifierForType:@"system.siri"];
  v120 = [CEMSystemSiriDeclaration buildRequiredOnlyWithIdentifier:v119];

  v121 = MCFeatureAssistantAllowed;
  v122 = [v175 objectForKeyedSubscript:MCFeatureAssistantAllowed];
  [v120 setPayloadAllowAssistant:v122];

  v123 = MCFeatureDictationAllowed;
  v124 = [v175 objectForKeyedSubscript:MCFeatureDictationAllowed];
  [v120 setPayloadAllowDictation:v124];

  v125 = MCFeatureAssistantUserGeneratedContentAllowed;
  v126 = [v175 objectForKeyedSubscript:MCFeatureAssistantUserGeneratedContentAllowed];
  [v120 setPayloadAllowAssistantUserGeneratedContent:v126];

  v127 = MCFeatureAssistantProfanityFilterForced;
  v128 = [v175 objectForKeyedSubscript:MCFeatureAssistantProfanityFilterForced];
  [v120 setPayloadForceAssistantProfanityFilter:v128];

  v192[0] = v121;
  v192[1] = v125;
  v192[2] = v127;
  v192[3] = v123;
  v129 = [NSArray arrayWithObjects:v192 count:4];
  [v175 removeObjectsForKeys:v129];

  if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v120])
  {
    [v4 addObject:v120];
  }

  v130 = [(STRestrictionsMigrator *)v174 configurationIdentifierForType:@"system.tvprovider"];
  v131 = MCFeatureTVProviderModificationAllowed;
  v132 = [v175 objectForKeyedSubscript:MCFeatureTVProviderModificationAllowed];
  v133 = [CEMSystemTVProviderDeclaration buildWithIdentifier:v130 withAllowTVProviderModification:v132];

  [v175 setObject:0 forKeyedSubscript:v131];
  if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v133])
  {
    [v4 addObject:v133];
  }

  v169 = MCFeatureWebContentFilterAutoForced;
  v134 = [v175 objectForKeyedSubscript:?];
  v167 = MCFeatureWebContentFilterBlacklistedURLs;
  v135 = [v175 objectForKeyedSubscript:?];
  v163 = MCFeatureWebContentFilterAutoPermittedURLs;
  v136 = [v175 objectForKeyedSubscript:?];
  v162 = MCFeatureWebContentFilterWhitelistedURLs;
  v137 = [v175 objectForKeyedSubscript:?];
  v138 = [v175 objectForKeyedSubscript:@"MCBookmarks"];
  v165 = v138;
  if (v137)
  {
    v139 = v138;
    v172 = v137;

    v140 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v139 count]);
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v141 = v139;
    v142 = [v141 countByEnumeratingWithState:&v176 objects:v191 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = *v177;
      do
      {
        for (i = 0; i != v143; i = i + 1)
        {
          if (*v177 != v144)
          {
            objc_enumerationMutation(v141);
          }

          v146 = *(*(&v176 + 1) + 8 * i);
          v147 = [v146 URL];
          v148 = [v147 absoluteString];
          v149 = [v146 title];
          v150 = [CEMSystemBasicWebContentFilterDeclaration_SiteWhiteListItem buildWithAddress:v148 withPageTitle:v149];

          [v140 addObject:v150];
        }

        v143 = [v141 countByEnumeratingWithState:&v176 objects:v191 count:16];
      }

      while (v143);
    }

    v135 = 0;
    v136 = 0;
    v151 = &__kCFBooleanTrue;
    v134 = &__kCFBooleanFalse;
    v4 = v170;
    v137 = v172;
  }

  else
  {
    v140 = 0;
    v151 = 0;
  }

  if ([v134 BOOLValue] && objc_msgSend(v136, "count"))
  {

    v137 = 0;
    v151 = &__kCFBooleanFalse;
  }

  v173 = v135;
  if (([v134 BOOLValue] & 1) != 0 || objc_msgSend(v151, "BOOLValue"))
  {
    v152 = 0;
    v153 = &__kCFBooleanTrue;
  }

  else
  {
    v153 = 0;
    v152 = 1;
  }

  v154 = +[STLog restrictionsMigrator];
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v182 = v134;
    v183 = 2114;
    v184 = v151;
    v185 = 2112;
    v186 = v136;
    v187 = 2112;
    v188 = v173;
    v189 = 2112;
    v190 = v140;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Web filter migration: auto %{public}@ manual %{public}@, auto whitelist %@, auto blacklist %@, manual sites %@", buf, 0x34u);
  }

  if ((v152 & 1) == 0)
  {
    v155 = v137;
    v156 = [(STRestrictionsMigrator *)v174 configurationIdentifierForType:@"system.webcontentfilter.basic"];
    v157 = [CEMSystemBasicWebContentFilterDeclaration buildWithIdentifier:v156 withRestrictWeb:v153 withUseContentFilter:v134 withWhiteListEnabled:v151 withSiteWhiteList:v140 withFilterWhiteList:v136 withFilterBlackList:v173];

    if (![(STRestrictionsMigrator *)v174 _isEmptyConfiguration:v157])
    {
      [v4 addObject:v157];
    }

    v137 = v155;
  }

  v180[0] = v169;
  v180[1] = v163;
  v180[2] = v162;
  v180[3] = v167;
  v158 = [NSArray arrayWithObjects:v180 count:4];
  [v175 removeObjectsForKeys:v158];

  v159 = [v4 copy];
  [(STRestrictionsMigrator *)v174 setRestrictionConfigurations:v159];
}

- (BOOL)hasMigratorRun
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"RestrictionsMigrationVersion"] > 1;

  return v3;
}

- (BOOL)migrateContentPrivacyConfigurationsInContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v121 = 0;
  v7 = [STCoreUser fetchLocalUserInContext:v6 error:&v121];
  v8 = v121;
  if (v7)
  {
    if ([v7 screenTimeEnabled])
    {
      v9 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10011CB5C();
      }
    }

    else
    {
      [v7 setScreenTimeEnabled:1];
      v9 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10011CB20();
      }
    }

    v13 = [v7 localSettings];
    v14 = [v13 organization];

    if (!v14)
    {
      v16 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10011D0C4();
      }

      v12 = 0;
      goto LABEL_97;
    }

    v109 = self;
    v15 = [v7 dsid];
    v16 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v15 fromOrganization:v14];

    v120 = v8;
    v17 = [v16 execute:&v120];
    v18 = v120;

    if (!v17)
    {
      v20 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10011D05C();
      }

      if (a4)
      {
        v21 = v18;
        v12 = 0;
        *a4 = v18;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_96;
    }

    if ([v17 count])
    {
      v19 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10011CB98();
      }

      v12 = 1;
LABEL_96:

      v8 = v18;
LABEL_97:

      goto LABEL_98;
    }

    v22 = [(STRestrictionsMigrator *)v109 restrictionConfigurations];
    v104 = a4;
    v105 = v17;
    v102 = v22;
    v103 = v16;
    if ([v22 count])
    {
      v23 = [[STBlueprint alloc] initWithContext:v6];
      [v23 setType:STBlueprintTypeRestrictions];
      [v23 setIdentifier:STRestrictionsBaseIdentifier];
      [v23 setOrganization:v14];
      v97 = v7;
      v24 = [NSSet setWithObject:v7];
      [v23 setUsers:v24];

      [v23 setEnabled:1];
      v108 = v23;
      [v23 setIsDirty:1];
      v25 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_10011CBD8();
      }

      v99 = v14;
      v26 = v6;

      v107 = objc_opt_new();
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      obj = v22;
      v27 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v117;
        while (2)
        {
          v30 = 0;
          v31 = v18;
          do
          {
            if (*v117 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v116 + 1) + 8 * v30);
            [v32 updateServerHash];
            v115 = v31;
            v33 = [v32 serializeAsDataWithError:&v115];
            v18 = v115;

            if (!v33)
            {
              v42 = +[STLog restrictionsMigrator];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                sub_10011CC48();
              }

              v6 = v26;
              v14 = v99;
              v43 = v102;
              v16 = v103;
              v17 = v105;
              if (v104)
              {
                v44 = v18;
                v12 = 0;
                *v104 = v18;
              }

              else
              {
                v12 = 0;
              }

              v7 = v97;
              goto LABEL_95;
            }

            v34 = [[STBlueprintConfiguration alloc] initWithContext:v26];
            v35 = [v32 declarationIdentifier];
            [v34 setIdentifier:v35];

            v36 = [v32 declarationIdentifier];
            v37 = [(STRestrictionsMigrator *)v109 typeForConfigurationIdentifier:v36];
            [v34 setType:v37];

            [v34 setPayloadPlist:v33];
            [v34 setBlueprint:v23];
            [v107 addObject:v34];

            v30 = v30 + 1;
            v31 = v18;
          }

          while (v28 != v30);
          v28 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
          v17 = v105;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v38 = +[STLog restrictionsMigrator];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_10011CCB0();
      }

      v6 = v26;
      v7 = v97;
      v14 = v99;
    }

    v108 = STAvailableVersion1CategoriesExcludingSystemCategories();
    v107 = STAvailableCategoriesExcludingSystemCategories();
    if (_os_feature_enabled_impl())
    {
      v114 = v18;
      v39 = [STBlueprint alwaysAllowBundleIdentifiersForUser:v7 error:&v114];
      v100 = v114;

      obj = v39;
      if (!v39)
      {
        v40 = +[STLog restrictionsMigrator];
        v41 = v109;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10011CD20();
        }

        obj = 0;
LABEL_51:
        v45 = [(STRestrictionsMigrator *)v41 downtimeConfiguration];
        v98 = v45;
        if (v45)
        {
          v46 = v45;
          v47 = [[STBlueprint alloc] initWithContext:v6];
          [v47 setType:STBlueprintTypeDowntime];
          v48 = [(STRestrictionsMigrator *)v41 localOrganizationIdentifierWithBase:STActivationIdentifierDowntime];
          [v47 setIdentifier:v48];

          [v47 setOrganization:v14];
          v49 = [NSSet setWithObject:v7];
          [v47 setUsers:v49];

          [v47 setEnabled:1];
          [v47 setIsDirty:1];
          v50 = [[STBlueprintSchedule alloc] initWithContext:v6];
          [v50 setScheduleRepresentation:v46];
          [v50 setCalendarIdentifier:NSCalendarIdentifierGregorian];
          v51 = [NSNumber numberWithDouble:STDefaultTimeIntervalBeforeDowntime];
          [v50 setNotificationTimeInterval:v51];

          v95 = v47;
          v92 = v50;
          [v47 setSchedule:v50];
          v52 = [(STRestrictionsMigrator *)v41 localOrganizationIdentifierWithBase:STConfigurationIdentifierDowntime];
          v53 = [CEMPolicyCategoryDeclaration buildWithIdentifier:v52 withMode:CEMPolicyCategoryDeclaration_Mode_warn withCategories:v108 withCategoriesVersion2:v107 withExemptApps:obj];

          [v53 updateServerHash];
          v113 = v100;
          v54 = [v53 serializeAsDataWithError:&v113];
          v18 = v113;

          v93 = v53;
          if (v54)
          {
            v55 = [[STBlueprintConfiguration alloc] initWithContext:v6];
            v56 = [v53 declarationType];
            [v55 setType:v56];

            v57 = [v53 declarationIdentifier];
            [v55 setIdentifier:v57];

            [v55 setPayloadPlist:v54];
            [v55 setBlueprint:v95];
            v58 = +[STLog restrictionsMigrator];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              sub_10011CD88();
            }

            v59 = +[STLog restrictionsMigrator];
            v17 = v105;
            v60 = v92;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              sub_10011CDF8();
            }

            v61 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
          }

          else
          {
            v62 = +[STLog restrictionsMigrator];
            v17 = v105;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_10011CE6C();
            }

            v61 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
            v60 = v92;
            if (v104)
            {
              v63 = v18;
              *v104 = v18;
            }
          }

          if (!v54)
          {
            v12 = 0;
            v16 = v103;
            v82 = v98;
            goto LABEL_94;
          }

          v100 = v18;
          v41 = v109;
        }

        else
        {
          v61 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
        }

        v64 = [(STRestrictionsMigrator *)v41 limitConfiguration];
        v110 = v64;
        if (v64)
        {
          v65 = v64;
          v66 = [[STBlueprint alloc] initWithContext:v6];
          [v66 setType:STBlueprintTypeUsageLimit];
          v67 = [(STRestrictionsMigrator *)v41 localOrganizationIdentifierWithBase:STActivationIdentifierUsageLimit];
          [v66 setIdentifier:v67];

          [v66 setOrganization:v14];
          v68 = [v61[234] setWithObject:v7];
          [v66 setUsers:v68];

          [v66 setIsDirty:1];
          v69 = [[STBlueprintUsageLimit alloc] initWithContext:v6];
          [v69 setBudgetLimitScheduleRepresentation:v65];
          [v69 setCategoryIdentifiers:v108];
          [v69 setCategoryIdentifiersVersion2:v107];
          v70 = [NSNumber numberWithDouble:STDefaultTimeIntervalBeforeDowntime];
          [v69 setNotificationTimeInterval:v70];

          [v66 setUsageLimit:v69];
          v71 = [(STRestrictionsMigrator *)v41 localOrganizationIdentifierWithBase:STConfigurationIdentifierUsageLimit];
          v72 = [CEMPolicyCategoryDeclaration buildWithIdentifier:v71 withMode:CEMPolicyCategoryDeclaration_Mode_warn withCategories:v108 withCategoriesVersion2:v107 withExemptApps:obj];

          [v72 updateServerHash];
          v112 = v100;
          v73 = [v72 serializeAsDataWithError:&v112];
          v18 = v112;

          v94 = v73;
          v96 = v66;
          if (v73)
          {
            v74 = v73;
            v75 = v72;
            v76 = [[STBlueprintConfiguration alloc] initWithContext:v6];
            v77 = [v75 declarationType];
            [v76 setType:v77];

            v101 = v75;
            v78 = [v75 declarationIdentifier];
            [v76 setIdentifier:v78];

            [v76 setPayloadPlist:v74];
            [v76 setBlueprint:v66];
            v79 = +[STLog restrictionsMigrator];
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              sub_10011CED4();
            }

            v80 = +[STLog restrictionsMigrator];
            v16 = v103;
            v81 = v104;
            v17 = v105;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              sub_10011CF44();
            }

            v72 = v101;
          }

          else
          {
            v83 = +[STLog restrictionsMigrator];
            v16 = v103;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              sub_10011CE6C();
            }

            v81 = v104;
            v17 = v105;
            if (v104)
            {
              v84 = v18;
              *v104 = v18;
            }
          }

          if (!v94)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v16 = v103;
          v81 = v104;
          v18 = v100;
        }

        if (![v6 hasChanges])
        {
          v12 = 1;
LABEL_92:
          v82 = v98;
LABEL_93:

LABEL_94:
          v43 = v102;
LABEL_95:

          goto LABEL_96;
        }

        v111 = v18;
        v85 = [v6 save:&v111];
        v86 = v111;
        v87 = v18;
        v18 = v86;

        v88 = +[STLog restrictionsMigrator];
        v89 = v88;
        if (v85)
        {
          v17 = v105;
          v82 = v98;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            sub_10011D020();
          }

          v12 = 1;
          goto LABEL_93;
        }

        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          sub_10011CFB8();
        }

        v17 = v105;
        if (v81)
        {
          v90 = v18;
          v12 = 0;
          *v81 = v18;
          goto LABEL_92;
        }

LABEL_91:
        v12 = 0;
        goto LABEL_92;
      }
    }

    else
    {
      obj = 0;
      v100 = v18;
    }

    v41 = v109;
    goto LABEL_51;
  }

  v10 = +[STLog restrictionsMigrator];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10011D104();
  }

  if (a4)
  {
    v11 = v8;
    v12 = 0;
    *a4 = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_98:

  return v12;
}

- (void)cleanUpAfterMigration
{
  v2 = STSBCapabilitiesKey;
  v3 = STSBDomain;
  v4 = CFPreferencesCopyAppValue(STSBCapabilitiesKey, STSBDomain);
  +[SFRestrictionsController resetRestrictions];
  v5 = +[MCProfileConnection sharedConnection];
  [v5 setUserBookmarks:0];
  CFPreferencesSetAppValue(@"SBParentalControlsMCContentRestrictions", 0, v3);
  CFPreferencesSetAppValue(v2, v4, v3);
  CFPreferencesAppSynchronize(v3);
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = +[STLog restrictionsMigrator];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D16C();
  }
}

- (BOOL)performMigrationWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[STLog restrictionsMigrator];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Content & Privacy migration starting", &v22, 2u);
  }

  [(STRestrictionsMigrator *)self collectMCFeatures];
  v8 = [(STRestrictionsMigrator *)self collectedSettings];
  v9 = [v8 count];
  [(STRestrictionsMigrator *)self migrateSettingsToConfigurations];
  v10 = [(STRestrictionsMigrator *)self collectedSettings];
  v11 = [v10 count];

  if (v11)
  {
    v12 = +[STLog restrictionsMigrator];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 count];
      v14 = [v8 allKeys];
      v22 = 67109378;
      *v23 = v13;
      *&v23[4] = 2114;
      *&v23[6] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Incomplete migration, %d features left behind: %{public}@", &v22, 0x12u);
    }
  }

  v15 = +[STLog restrictionsMigrator];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v16 = @"needed";
    }

    else
    {
      v16 = @"not needed";
    }

    v17 = [(STRestrictionsMigrator *)self restrictionConfigurations];
    v18 = [v17 count];
    v22 = 138543874;
    *v23 = v16;
    *&v23[8] = 1024;
    *&v23[10] = v9;
    v24 = 1024;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Content & Privacy migration is %{public}@ - %d features -> %d configurations", &v22, 0x18u);
  }

  if (v9)
  {
    if (![(STRestrictionsMigrator *)self migrateContentPrivacyConfigurationsInContext:v6 error:a4])
    {
      v20 = 0;
      goto LABEL_17;
    }

    [(STRestrictionsMigrator *)self cleanUpAfterMigration];
  }

  v19 = +[NSUserDefaults standardUserDefaults];
  [v19 setValue:&off_1001B2320 forKey:@"RestrictionsMigrationVersion"];

  v20 = 1;
LABEL_17:

  return v20;
}

@end