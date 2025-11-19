@interface STRestrictionsFetcher
+ (id)_fetchRestrictionsForUserDSID:(id)a3 inManagedObjectContext:(id)a4 allowImageCreation:(int64_t)a5 withError:(id *)a6;
+ (int64_t)_invertedRestrictionState:(int64_t)a3;
+ (int64_t)_restrictionStateForPayloadNumber:(id)a3;
+ (unint64_t)_webFilterStateForWebContentDeclaration:(id)a3;
+ (void)_fetchImageCreationStateForUserDSID:(id)a3 organizationSettingsRestrictionUtility:(id)a4 completionHandler:(id)a5;
+ (void)fetchRestrictionsForUserDSID:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5;
+ (void)fetchRestrictionsForUserDSID:(id)a3 persistenceController:(id)a4 organizationSettingsRestrictionUtility:(id)a5 completionHandler:(id)a6;
@end

@implementation STRestrictionsFetcher

+ (void)fetchRestrictionsForUserDSID:(id)a3 persistenceController:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [STOrganizationSettingsRestrictionUtility alloc];
  v12 = objc_opt_new();
  v13 = [(STOrganizationSettingsRestrictionUtility *)v11 initWithPersistenceController:v9 restrictionPayloadUtility:v12];

  [a1 fetchRestrictionsForUserDSID:v10 persistenceController:v9 organizationSettingsRestrictionUtility:v13 completionHandler:v8];
}

+ (void)fetchRestrictionsForUserDSID:(id)a3 persistenceController:(id)a4 organizationSettingsRestrictionUtility:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = +[STLog screenTimeOrganizationController];
  v15 = os_signpost_id_generate(v14);

  v16 = +[STLog screenTimeOrganizationController];
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B831F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Fetch Restrictions Image Creation", "", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke;
  v21[3] = &unk_1E7CE7EF8;
  v24 = v12;
  v25 = v15;
  v26 = a1;
  v22 = v11;
  v23 = v10;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  [a1 _fetchImageCreationStateForUserDSID:v18 organizationSettingsRestrictionUtility:v13 completionHandler:v21];
}

void __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[STLog screenTimeOrganizationController];
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B831F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "Fetch Restrictions Image Creation", "", buf, 2u);
  }

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = +[STLog screenTimeOrganizationController];
    v10 = os_signpost_id_generate(v9);

    v11 = +[STLog screenTimeOrganizationController];
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B831F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Fetch Restrictions Other", "", buf, 2u);
    }

    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__17;
    v38 = __Block_byref_object_dispose__17;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__17;
    v32 = __Block_byref_object_dispose__17;
    v33 = 0;
    v13 = [*(a1 + 32) newBackgroundContext];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke_3;
    v21[3] = &unk_1E7CE7ED0;
    v14 = *(a1 + 64);
    v24 = &v28;
    v26 = v14;
    v22 = *(a1 + 40);
    v15 = v13;
    v27 = a2;
    v23 = v15;
    v25 = buf;
    [v15 performBlockAndWait:v21];
    v16 = +[STLog screenTimeOrganizationController];
    v17 = v16;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B831F000, v17, OS_SIGNPOST_INTERVAL_END, v10, "Fetch Restrictions Other", "", v20, 2u);
    }

    v18 = v29[5];
    v19 = *(v35 + 5);
    (*(*(a1 + 48) + 16))();

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = a1 + 8;
  v4 = a1[8];
  v5 = v6[1];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v4 _fetchRestrictionsForUserDSID:v2 inManagedObjectContext:v3 allowImageCreation:v5 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (void)_fetchImageCreationStateForUserDSID:(id)a3 organizationSettingsRestrictionUtility:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __118__STRestrictionsFetcher__fetchImageCreationStateForUserDSID_organizationSettingsRestrictionUtility_completionHandler___block_invoke;
    v10[3] = &unk_1E7CE7F20;
    v11 = v7;
    [a4 isImageGenerationAllowedForUserDSID:a3 completionHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:512 userInfo:0];
    (v8)[2](v8, 0, v9);
  }
}

uint64_t __118__STRestrictionsFetcher__fetchImageCreationStateForUserDSID_organizationSettingsRestrictionUtility_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3 + 16))(v3, 0);
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return (*(v3 + 16))(v3, v5);
}

+ (id)_fetchRestrictionsForUserDSID:(id)a3 inManagedObjectContext:(id)a4 allowImageCreation:(int64_t)a5 withError:(id *)a6
{
  v148 = *MEMORY[0x1E69E9840];
  v141 = 0;
  v9 = [STCoreUser fetchUserWithDSID:a3 inContext:a4 error:&v141];
  v10 = v141;
  v11 = v10;
  if (v9)
  {
    v139 = a1;
    v140 = v10;
    v12 = v9;
    v13 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [STRestrictionsFetcher _fetchRestrictionsForUserDSID:v12 inManagedObjectContext:v13 allowImageCreation:? withError:?];
    }

    v14 = [v12 dsid];
    v15 = [v12 managingOrganization];
    v16 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v14 ofType:@"restrictions" fromOrganization:v15];

    v17 = [v16 execute:&v140];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v24 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [STRestrictionsFetcher _fetchRestrictionsForUserDSID:v24 inManagedObjectContext:? allowImageCreation:? withError:?];
      }

      v140 = STSafeErrorFromCoreDataError(v140);
    }

    v20 = v140;
    if (!v18)
    {
      v39 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v147 = v20;
        _os_log_impl(&dword_1B831F000, v39, OS_LOG_TYPE_DEFAULT, "Failed to fetch restrictions blueprints with error: %{public}@", buf, 0xCu);
      }

      v22 = 0;
      if (a6 && v20)
      {
        v40 = v20;
        v22 = 0;
        *a6 = v20;
      }

      goto LABEL_40;
    }

    v25 = [v18 firstObject];
    v26 = v25;
    if (v25)
    {
      if ([v25 enabled])
      {
        v27 = [[STMutableRestrictions alloc] initWithIsEnabled:1];
        [(STMutableRestrictions *)v27 setAllowImageCreation:a5];
        v28 = [v26 configurations];
        v29 = [v28 count];

        if (v29)
        {
          v136 = v20;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v30 = [v26 configurations];
          v31 = [v30 countByEnumeratingWithState:&v142 objects:buf count:16];
          v137 = v26;
          v138 = v27;
          if (v31)
          {
            v32 = v31;
            v33 = *v143;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v143 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v142 + 1) + 8 * i);
                v36 = [v35 type];
                v37 = [v36 isEqualToString:@"application.store"];

                if (v37)
                {
                  v38 = v35;
                  goto LABEL_45;
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v32)
              {
                continue;
              }

              break;
            }

            v38 = 0;
LABEL_45:
            v26 = v137;
            v27 = v138;
          }

          else
          {
            v38 = 0;
          }

          v135 = v38;
          v47 = [v38 cemConfiguration];
          v48 = [v47 payloadAllowAppInstallation];
          v49 = v139;
          -[STMutableRestrictions setAllowInstallingApps:](v27, "setAllowInstallingApps:", [v139 _restrictionStateForPayloadNumber:v48]);

          v50 = [v47 payloadAllowAppRemoval];
          -[STMutableRestrictions setAllowDeletingApps:](v27, "setAllowDeletingApps:", [v139 _restrictionStateForPayloadNumber:v50]);

          v134 = v47;
          v51 = [v47 payloadAllowInAppPurchases];
          -[STMutableRestrictions setAllowInAppPurchases:](v27, "setAllowInAppPurchases:", [v139 _restrictionStateForPayloadNumber:v51]);

          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v52 = [v26 configurations];
          v53 = [v52 countByEnumeratingWithState:&v142 objects:buf count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v143;
            while (2)
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v143 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v142 + 1) + 8 * j);
                v58 = [v57 type];
                v59 = [v58 isEqualToString:@"system.music"];

                if (v59)
                {
                  v60 = v57;
                  goto LABEL_60;
                }
              }

              v54 = [v52 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v54)
              {
                continue;
              }

              break;
            }

            v60 = 0;
LABEL_60:
            v26 = v137;
            v27 = v138;
            v49 = v139;
          }

          else
          {
            v60 = 0;
          }

          v133 = v60;
          v61 = [v60 cemConfiguration];
          v62 = [v61 payloadAllowMusicVideos];
          -[STMutableRestrictions setAllowMusicVideos:](v27, "setAllowMusicVideos:", [v49 _restrictionStateForPayloadNumber:v62]);

          v132 = v61;
          v63 = [v61 payloadAllowMusicArtistActivity];
          -[STMutableRestrictions setAllowMusicProfiles:](v27, "setAllowMusicProfiles:", [v49 _restrictionStateForPayloadNumber:v63]);

          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v64 = [v26 configurations];
          v65 = [v64 countByEnumeratingWithState:&v142 objects:buf count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v143;
            while (2)
            {
              for (k = 0; k != v66; ++k)
              {
                if (*v143 != v67)
                {
                  objc_enumerationMutation(v64);
                }

                v69 = *(*(&v142 + 1) + 8 * k);
                v70 = [v69 type];
                v71 = [v70 isEqualToString:@"system.ratings"];

                if (v71)
                {
                  v72 = v69;
                  goto LABEL_72;
                }
              }

              v66 = [v64 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v66)
              {
                continue;
              }

              break;
            }

            v72 = 0;
LABEL_72:
            v26 = v137;
            v27 = v138;
            v49 = v139;
          }

          else
          {
            v72 = 0;
          }

          v131 = v72;
          v73 = [v72 cemConfiguration];
          v129 = [v73 payloadRatingTVShows];
          [(STMutableRestrictions *)v27 setTvShowsRating:?];
          v128 = [v73 payloadRatingMovies];
          [(STMutableRestrictions *)v27 setMoviesRating:?];
          v127 = [v73 payloadRatingApps];
          [(STMutableRestrictions *)v27 setAppsRating:?];
          v130 = v73;
          v74 = [v73 payloadAllowExplicitContent];
          -[STMutableRestrictions setAllowExplicitMediaContent:](v27, "setAllowExplicitMediaContent:", [v49 _restrictionStateForPayloadNumber:v74]);

          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v75 = [v26 configurations];
          v76 = [v75 countByEnumeratingWithState:&v142 objects:buf count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v143;
            while (2)
            {
              for (m = 0; m != v77; ++m)
              {
                if (*v143 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v142 + 1) + 8 * m);
                v81 = [v80 type];
                v82 = [v81 isEqualToString:@"media.settings"];

                if (v82)
                {
                  v83 = v80;
                  goto LABEL_84;
                }
              }

              v77 = [v75 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v77)
              {
                continue;
              }

              break;
            }

            v83 = 0;
LABEL_84:
            v26 = v137;
            v27 = v138;
            v49 = v139;
          }

          else
          {
            v83 = 0;
          }

          v126 = v83;
          v125 = [v83 cemConfiguration];
          v84 = [v125 payloadAllowBookstoreErotica];
          -[STMutableRestrictions setAllowExplicitBooks:](v27, "setAllowExplicitBooks:", [v49 _restrictionStateForPayloadNumber:v84]);

          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v85 = [v26 configurations];
          v86 = [v85 countByEnumeratingWithState:&v142 objects:buf count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v143;
            while (2)
            {
              for (n = 0; n != v87; ++n)
              {
                if (*v143 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v142 + 1) + 8 * n);
                v91 = [v90 type];
                v92 = [v91 isEqualToString:@"system.webcontentfilter.basic"];

                if (v92)
                {
                  v93 = v90;
                  goto LABEL_96;
                }
              }

              v87 = [v85 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v87)
              {
                continue;
              }

              break;
            }

            v93 = 0;
LABEL_96:
            v26 = v137;
            v27 = v138;
            v49 = v139;
          }

          else
          {
            v93 = 0;
          }

          v124 = v93;
          v123 = [v93 cemConfiguration];
          -[STMutableRestrictions setWebFilterState:](v27, "setWebFilterState:", [v49 _webFilterStateForWebContentDeclaration:?]);
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v94 = [v26 configurations];
          v95 = [v94 countByEnumeratingWithState:&v142 objects:buf count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v143;
            while (2)
            {
              for (ii = 0; ii != v96; ++ii)
              {
                if (*v143 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v142 + 1) + 8 * ii);
                v100 = [v99 type];
                v101 = [v100 isEqualToString:@"system.gamecenter"];

                if (v101)
                {
                  v102 = v99;
                  goto LABEL_108;
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v96)
              {
                continue;
              }

              break;
            }

            v102 = 0;
LABEL_108:
            v26 = v137;
            v27 = v138;
            v49 = v139;
          }

          else
          {
            v102 = 0;
          }

          v122 = v102;
          v103 = [v102 cemConfiguration];
          v104 = [v103 payloadAllowGameCenterProfileModification];
          -[STMutableRestrictions setAllowAvatarAndNicknameChanges:](v27, "setAllowAvatarAndNicknameChanges:", [v49 _restrictionStateForPayloadNumber:v104]);

          v105 = [v103 payloadAllowGameCenterPrivateMessaging];
          -[STMutableRestrictions setAllowPrivateMessaging:](v27, "setAllowPrivateMessaging:", [v49 _restrictionStateForPayloadNumber:v105]);

          v106 = [v103 payloadAllowGameCenterProfilePrivacyModification];
          -[STMutableRestrictions setAllowProfilePrivacyChanges:](v27, "setAllowProfilePrivacyChanges:", [v49 _restrictionStateForPayloadNumber:v106]);

          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v107 = [v26 configurations];
          v108 = [v107 countByEnumeratingWithState:&v142 objects:buf count:16];
          if (v108)
          {
            v109 = v108;
            v121 = v103;
            v110 = *v143;
            while (2)
            {
              for (jj = 0; jj != v109; ++jj)
              {
                if (*v143 != v110)
                {
                  objc_enumerationMutation(v107);
                }

                v112 = *(*(&v142 + 1) + 8 * jj);
                v113 = [v112 type];
                v114 = [v113 isEqualToString:@"system.siri"];

                if (v114)
                {
                  v115 = v112;
                  goto LABEL_120;
                }
              }

              v109 = [v107 countByEnumeratingWithState:&v142 objects:buf count:16];
              if (v109)
              {
                continue;
              }

              break;
            }

            v115 = 0;
LABEL_120:
            v26 = v137;
            v49 = v139;
            v103 = v121;
          }

          else
          {
            v115 = 0;
          }

          v116 = [v115 cemConfiguration];
          v117 = [v116 payloadAllowAssistantUserGeneratedContent];
          v27 = v138;
          -[STMutableRestrictions setAllowWebContentSearchInSiri:](v138, "setAllowWebContentSearchInSiri:", [v49 _restrictionStateForPayloadNumber:v117]);

          v118 = [v116 payloadForceAssistantProfanityFilter];
          -[STMutableRestrictions setAllowExplicitLanguageInSiri:](v138, "setAllowExplicitLanguageInSiri:", [v49 _invertedRestrictionState:{objc_msgSend(v49, "_restrictionStateForPayloadNumber:", v118)}]);

          v119 = [v116 payloadAllowExternalIntelligenceIntegrations];
          -[STMutableRestrictions setAllowExternalIntelligenceIntegrations:](v138, "setAllowExternalIntelligenceIntegrations:", [v49 _restrictionStateForPayloadNumber:v119]);

          v120 = [v116 payloadAllowWritingTools];
          -[STMutableRestrictions setAllowWritingTools:](v138, "setAllowWritingTools:", [v49 _restrictionStateForPayloadNumber:v120]);

          v22 = [(STMutableRestrictions *)v138 copy];
          v20 = v136;
          goto LABEL_39;
        }

        v46 = +[STLog screenTimeOrganizationController];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v46, OS_LOG_TYPE_DEFAULT, "Restrictions blueprint has no configurations.", buf, 2u);
        }

        v43 = v27;
LABEL_38:
        v22 = [(STMutableRestrictions *)v43 copy];
LABEL_39:

LABEL_40:
        goto LABEL_41;
      }

      v41 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "Restrictions blueprint is disabled.";
        goto LABEL_36;
      }
    }

    else
    {
      v41 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "No blueprints found. Interpreting as restrictions disabled.";
LABEL_36:
        _os_log_impl(&dword_1B831F000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
      }
    }

    v43 = [[STMutableRestrictions alloc] initWithIsEnabled:0];
    v27 = v43;
    goto LABEL_38;
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:11 userInfo:0];

  v21 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [STRestrictionsFetcher _fetchRestrictionsForUserDSID:v20 inManagedObjectContext:v21 allowImageCreation:? withError:?];
  }

  v22 = 0;
  if (a6 && v20)
  {
    v23 = v20;
    v22 = 0;
    *a6 = v20;
  }

LABEL_41:

  v44 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (int64_t)_restrictionStateForPayloadNumber:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 BOOLValue])
  {
    return 1;
  }

  return 2;
}

+ (unint64_t)_webFilterStateForWebContentDeclaration:(id)a3
{
  v3 = a3;
  v4 = [v3 payloadRestrictWeb];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 payloadWhiteListEnabled];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v9 = [v3 payloadFilterBlackList];
      if ([v9 count])
      {
        v8 = 3;
      }

      else
      {
        v10 = [v3 payloadFilterWhiteList];
        if ([v10 count])
        {
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int64_t)_invertedRestrictionState:(int64_t)a3
{
  v3 = 1;
  if (a3 != 2)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (void)_fetchRestrictionsForUserDSID:(void *)a1 inManagedObjectContext:(NSObject *)a2 allowImageCreation:withError:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 managingOrganization];
  v5 = 138412290;
  v6 = objc_opt_class();
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "Fetching restrictions blueprint from organization: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_fetchRestrictionsForUserDSID:(uint64_t *)a1 inManagedObjectContext:(NSObject *)a2 allowImageCreation:withError:.cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch blueprints: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_fetchRestrictionsForUserDSID:(uint64_t)a1 inManagedObjectContext:(NSObject *)a2 allowImageCreation:withError:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "failed to fetch user: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end