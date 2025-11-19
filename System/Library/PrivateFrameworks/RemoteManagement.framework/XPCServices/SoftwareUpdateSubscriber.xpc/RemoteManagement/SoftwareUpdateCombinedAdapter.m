@interface SoftwareUpdateCombinedAdapter
- (BOOL)applyCombinedConfiguration:(id)a3 declarationKeys:(id)a4 scope:(int64_t)a5 returningReasons:(id *)a6 error:(id *)a7;
- (BOOL)removeCombinedConfigurationForScope:(int64_t)a3 error:(id *)a4;
- (SoftwareUpdateCombinedAdapter)init;
- (id)_localizedStringForRMModelSettingsState:(id)a3;
- (id)_recommendationCadenceLocalizedStringForString:(id)a3;
- (id)_recommendationCadenceValueForString:(id)a3;
- (id)_valueForEnum:(id)a3;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation SoftwareUpdateCombinedAdapter

- (SoftwareUpdateCombinedAdapter)init
{
  v6.receiver = self;
  v6.super_class = SoftwareUpdateCombinedAdapter;
  v2 = [(SoftwareUpdateCombinedAdapter *)&v6 init];
  if (v2)
  {
    v3 = [[SUManagerClient alloc] initWithDelegate:0 queue:&_dispatch_main_q clientType:1];
    controller = v2->_controller;
    v2->_controller = v3;
  }

  return v2;
}

- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[SUCoreDDMUtilities sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Getting all declarations for scope", buf, 0xCu);
  }

  if (a3 == 1)
  {
    v9 = [(SoftwareUpdateCombinedAdapter *)self controller];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(SoftwareUpdateCombinedAdapter *)self controller];
      v34 = 0;
      v12 = [v11 globalSettingsDeclarationWithError:&v34];
      v13 = v34;
    }

    else
    {
      v17 = +[SUCoreDDMUtilities sharedLogger];
      v18 = [v17 oslog];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to get global settings declaration keys", buf, 0xCu);
      }

      v11 = +[SUCore sharedCore];
      v13 = [v11 buildError:9101 underlying:0 description:@"No controller found to get global settings declaration keys"];
      v12 = 0;
    }

    v19 = +[SUCoreDDMUtilities sharedLogger];
    v20 = [v19 oslog];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 serializedKeys];
      *buf = 136315394;
      v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
      v38 = 2114;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Found serializedKeys: %{public}@", buf, 0x16u);
    }

    v22 = [v12 serializedKeys];
    v23 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v22 count]);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = [v12 serializedKeys];
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        v28 = 0;
        do
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [RMStoreDeclarationKey newDeclarationKey:*(*(&v30 + 1) + 8 * v28)];
          [v23 addObject:v29];

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v26);
    }

    v6[2](v6, v23, v13);
  }

  else
  {
    v14 = +[SUCoreDDMUtilities sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
      v38 = 2048;
      v39 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
    }

    v16 = +[SUCore sharedCore];
    v13 = [v16 buildError:9100 underlying:0 description:@"Not in system scope"];

    v6[2](v6, 0, v13);
  }
}

- (BOOL)applyCombinedConfiguration:(id)a3 declarationKeys:(id)a4 scope:(int64_t)a5 returningReasons:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if (a5 == 1)
  {
    v119 = self;
    v13 = v11;
    v14 = +[NSMutableArray array];
    v15 = +[RMManagedDevice currentManagedDevice];
    v16 = [v15 isSupervised];

    v17 = +[SUCoreDDMUtilities sharedLogger];
    v18 = [v17 oslog];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (v16)
      {
        v19 = @"YES";
      }

      *buf = 136315394;
      v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
      v129 = 2114;
      *v130 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Supervised: %{public}@", buf, 0x16u);
    }

    if (v16)
    {
      goto LABEL_26;
    }

    v20 = [v13 payloadDeferrals];

    if (v20)
    {
      [v14 addObject:@"deferrals"];
    }

    v21 = [v13 payloadAutomaticActions];

    if (v21)
    {
      [v14 addObject:@"automatic actions"];
    }

    v22 = [v13 payloadRapidSecurityResponse];

    if (v22)
    {
      [v14 addObject:@"rapid security response"];
    }

    v23 = [v13 payloadBeta];
    v24 = [v23 payloadRequireProgram];

    if (v24)
    {
      [v14 addObject:@"beta require program"];
    }

    v25 = [v13 payloadBeta];
    v26 = [v25 payloadProgramEnrollment];

    if (v26)
    {
      [v14 addObject:@"beta program enrollment"];
    }

    if (![v14 count])
    {
LABEL_26:
      v115 = a7;
      v116 = v14;
      v34 = v11;
      v35 = v12;
      v36 = +[NSMutableDictionary dictionary];
      v37 = [v13 payloadNotifications];
      [v36 setSafeObject:v37 forKey:SUCorePolicyDDMGlobalSettingEnableGlobalNotificationsKey];

      v38 = [v13 payloadAutomaticActions];
      v39 = v38;
      if (v38)
      {
        v40 = [v38 payloadDownload];
        v41 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:v40];
        [v36 setSafeObject:v41 forKey:SUCorePolicyDDMGlobalSettingAutomaticallyDownloadKey];

        v42 = [v39 payloadInstallOSUpdates];
        v43 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:v42];
        [v36 setSafeObject:v43 forKey:SUCorePolicyDDMGlobalSettingAutomaticallyInstallOSUpdatesKey];

        v44 = [v39 payloadInstallSecurityUpdate];
        v45 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:v44];
        [v36 setSafeObject:v45 forKey:SUCorePolicyDDMGlobalSettingAutomaticallyInstallSystemAndSecurityUpdatesKey];
      }

      v114 = v39;
      v46 = [v13 payloadRapidSecurityResponse];
      v47 = v46;
      if (v46)
      {
        v48 = [v46 payloadEnable];
        [v36 setSafeObject:v48 forKey:SUCorePolicyDDMGlobalSettingEnableRapidSecurityResponseKey];

        v49 = [v47 payloadEnableRollback];
        [v36 setSafeObject:v49 forKey:SUCorePolicyDDMGlobalSettingEnableRapidSecurityResponseRollbackKey];
      }

      v113 = v47;
      v50 = [v13 payloadRecommendedCadence];
      v51 = [(SoftwareUpdateCombinedAdapter *)self _recommendationCadenceValueForString:v50];
      [v36 setSafeObject:v51 forKey:SUCorePolicyDDMGlobalSettingRecommendationCadenceKey];

      v52 = [v13 payloadDeferrals];
      v53 = v52;
      v12 = v35;
      if (v52)
      {
        v54 = [v52 payloadCombinedPeriodInDays];
        [v36 setSafeObject:v54 forKey:SUCorePolicyDDMGlobalSettingCombinedUpdatesDeferralPeriodKey];
      }

      v111 = [v35 valueForKey:@"key"];
      v55 = [v111 allObjects];
      [v36 setSafeObject:v55 forKey:SUCorePolicyDDMGlobalSettingSerializedKeysKey];

      v117 = [v13 payloadBeta];
      v118 = v36;
      v11 = v34;
      v56 = v115;
      v112 = v53;
      if (v117)
      {
        v120 = objc_alloc_init(NSMutableArray);
        v57 = v117;
        v58 = [v117 payloadProgramEnrollment];

        if (v58)
        {
          v59 = [v117 payloadProgramEnrollment];
          v60 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:v59];
          v61 = v36;
          v62 = v60;
          [v61 setSafeObject:v60 forKey:SUCorePolicyDDMGlobalSettingProgramEnrollment];

          v63 = [v117 payloadProgramEnrollment];
          LOBYTE(v62) = [v63 isEqualToString:RMModelSettingsState_alwaysOn];

          if (v62)
          {
            v64 = 2;
          }

          else
          {
            v65 = [v117 payloadProgramEnrollment];
            v66 = [v65 isEqualToString:RMModelSettingsState_alwaysOff];

            v64 = 3;
            if (!v66)
            {
              v64 = 1;
            }
          }
        }

        else
        {
          v64 = 1;
        }

        v110 = v64;
        v67 = [v117 payloadOfferPrograms];

        if (v67)
        {
          v107 = v13;
          v108 = v12;
          v109 = v11;
          v68 = objc_alloc_init(NSMutableArray);
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v69 = [v117 payloadOfferPrograms];
          v70 = [v69 countByEnumeratingWithState:&v123 objects:v135 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v124;
            v73 = seedingProgramDescription;
            v74 = seedingProgramToken;
            do
            {
              for (i = 0; i != v71; i = i + 1)
              {
                if (*v124 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v76 = *(*(&v123 + 1) + 8 * i);
                v77 = [v76 payloadToken];
                [v120 addObject:v77];

                v133[0] = v73;
                v78 = [v76 payloadDescription];
                v133[1] = v74;
                v134[0] = v78;
                v79 = [v76 payloadToken];
                v134[1] = v79;
                v80 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
                [v68 addObject:v80];
              }

              v71 = [v69 countByEnumeratingWithState:&v123 objects:v135 count:16];
            }

            while (v71);
          }

          [v118 setSafeObject:v68 forKey:SUCorePolicyDDMGlobalSettingOfferPrograms];
          v12 = v108;
          v11 = v109;
          v56 = v115;
          v13 = v107;
          v57 = v117;
        }

        v81 = [v57 payloadRequireProgram];

        if (v81)
        {
          v131[0] = seedingProgramDescription;
          v82 = [v57 payloadRequireProgram];
          v83 = [v82 payloadDescription];
          v132[0] = v83;
          v131[1] = seedingProgramToken;
          v84 = [v57 payloadRequireProgram];
          v85 = [v84 payloadToken];
          v132[1] = v85;
          v86 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:2];
          [v118 setSafeObject:v86 forKey:SUCorePolicyDDMGlobalSettingRequireProgram];

          v57 = v117;
        }

        v87 = [NSSet setWithArray:v120];
        v88 = [v57 payloadRequireProgram];
        v89 = [v88 payloadToken];
        v122 = 0;
        [SDMDMConfigurator configureWithOfferProgramTokens:v87 requireProgramToken:v89 enrollmentPolicy:v110 error:&v122];
        v90 = v122;

        v14 = v116;
        if (v90)
        {
          v91 = +[SUCoreDDMUtilities sharedLogger];
          v92 = [v91 oslog];

          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            [SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:];
          }

          if (v56)
          {
            v93 = v90;
            *v56 = v90;
          }
        }

        v36 = v118;
      }

      v94 = +[SUCoreDDMUtilities sharedLogger];
      v95 = [v94 oslog];

      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
        v129 = 2114;
        *v130 = v13;
        *&v130[8] = 2114;
        *&v130[10] = v36;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%s: Applying configuration: %{public}@; declaration dictionary: %{public}@", buf, 0x20u);
      }

      v96 = [(SoftwareUpdateCombinedAdapter *)v119 controller];
      v97 = objc_opt_respondsToSelector();

      if (v97)
      {
        v98 = [[SUCoreDDMDeclarationGlobalSettings alloc] initWithDeclarationKeys:v36];
        v99 = [(SoftwareUpdateCombinedAdapter *)v119 controller];
        v121 = 0;
        v31 = [v99 setGlobalSettings:v98 withError:&v121];
        v100 = v121;
      }

      else
      {
        v101 = +[SUCoreDDMUtilities sharedLogger];
        v102 = [v101 oslog];

        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to enforce declaration", buf, 0xCu);
        }

        v98 = +[SUCore sharedCore];
        v100 = [v98 buildError:9101 underlying:0 description:@"No controller found to enforce declaration"];
        v31 = 0;
      }

      v103 = +[SUCoreDDMUtilities sharedLogger];
      v104 = [v103 oslog];

      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
        v129 = 1024;
        *v130 = v31;
        *&v130[4] = 2114;
        *&v130[6] = v100;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%s: Applied global settings, result = %d, error = %{public}@", buf, 0x1Cu);
      }

      if (v56 && v100)
      {
        v105 = v100;
        *v56 = v100;
      }

      v29 = v118;
      v30 = v114;
    }

    else
    {
      v27 = +[SUCoreDDMUtilities sharedLogger];
      v28 = [v27 oslog];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
        v129 = 2114;
        *v130 = v14;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Invalid declaration: The following settings cannot be enforced on unsupervised devices: %{public}@", buf, 0x16u);
      }

      if (!a7)
      {
        LOBYTE(v31) = 0;
        goto LABEL_71;
      }

      v29 = [NSString stringWithFormat:@"The following settings cannot be enforced on unsupervised devices: %@", v14];
      v30 = +[SUCore sharedCore];
      [v30 buildError:9100 underlying:0 description:v29];
      *a7 = LOBYTE(v31) = 0;
    }

LABEL_71:
    goto LABEL_72;
  }

  v32 = +[SUCoreDDMUtilities sharedLogger];
  v33 = [v32 oslog];

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
    v129 = 2048;
    *v130 = a5;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
  }

  if (a7)
  {
    v13 = +[SUCore sharedCore];
    [v13 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
    *a7 = LOBYTE(v31) = 0;
LABEL_72:

    goto LABEL_73;
  }

  LOBYTE(v31) = 0;
LABEL_73:

  return v31;
}

- (id)_valueForEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:RMModelSettingsState_allowed])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:RMModelSettingsState_alwaysOn])
  {
    v4 = &off_10000CA98;
  }

  else if ([v3 isEqualToString:RMModelSettingsState_alwaysOff])
  {
    v4 = &off_10000CAB0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recommendationCadenceValueForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_all])
  {
    v4 = &off_10000CAB0;
  }

  else if ([v3 isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_oldest])
  {
    v4 = &off_10000CA98;
  }

  else if ([v3 isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_theNewest])
  {
    v4 = &off_10000CAC8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recommendationCadenceLocalizedStringForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_all])
  {
    v4 = @"SU_CONFIGURATION_RECOMMENDATION_CADENCE_ALL";
LABEL_7:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_10000C4A8 table:0];

    goto LABEL_8;
  }

  if ([v3 isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_oldest])
  {
    v4 = @"SU_CONFIGURATION_RECOMMENDATION_CADENCE_SLOW";
    goto LABEL_7;
  }

  if ([v3 isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_theNewest])
  {
    v4 = @"SU_CONFIGURATION_RECOMMENDATION_CADENCE_FAST";
    goto LABEL_7;
  }

  v6 = &stru_10000C4A8;
LABEL_8:

  return v6;
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.SoftwareUpdateExtension.GlobalSettings" reference:a3];

  return v3;
}

- (BOOL)removeCombinedConfigurationForScope:(int64_t)a3 error:(id *)a4
{
  v7 = +[SUCoreDDMUtilities sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Removing combined configuration", buf, 0xCu);
  }

  if (a3 == 1)
  {
    v9 = [(SoftwareUpdateCombinedAdapter *)self controller];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(SoftwareUpdateCombinedAdapter *)self controller];
      v27 = 0;
      v12 = [v11 setGlobalSettings:0 withError:&v27];
      v13 = v27;
    }

    else
    {
      v16 = +[SUCoreDDMUtilities sharedLogger];
      v17 = [v16 oslog];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to remove combined configuration", buf, 0xCu);
      }

      v11 = +[SUCore sharedCore];
      v13 = [v11 buildError:9101 underlying:0 description:@"No controller found to remove combined configuration"];
      v12 = 0;
    }

    v26 = 0;
    [SDMDMConfigurator resetMDMConfigurationWithError:&v26];
    v18 = v26;
    if (v18)
    {
      v19 = +[SUCoreDDMUtilities sharedLogger];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:];
      }

      if (a4)
      {
        v21 = v18;
        *a4 = v18;
      }
    }

    v22 = +[SUCoreDDMUtilities sharedLogger];
    v23 = [v22 oslog];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
      v30 = 1024;
      LODWORD(v31[0]) = v12;
      WORD2(v31[0]) = 2114;
      *(v31 + 6) = v13;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Removed combined configuration, result = %d, error = %{public}@", buf, 0x1Cu);
    }

    if (a4 && v13)
    {
      v24 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v14 = +[SUCoreDDMUtilities sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
      v30 = 2048;
      v31[0] = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
    }

    if (!a4)
    {
      LOBYTE(v12) = 0;
      return v12;
    }

    v13 = +[SUCore sharedCore];
    [v13 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
    *a4 = LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v118 = a5;
  v7 = +[SUCoreDDMUtilities sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];
    *buf = 136315394;
    v140 = "[SoftwareUpdateCombinedAdapter configurationUIForConfiguration:scope:completionHandler:]";
    v141 = 2114;
    v142 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Get configuration UI for: %{public}@", buf, 0x16u);
  }

  v11 = [v6 declaration];
  v12 = +[NSMutableArray array];
  v13 = [v11 payloadNotifications];

  v119 = v6;
  if (v13)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SU_CONFIGURATION_NOTIFICATIONS" value:&stru_10000C4A8 table:0];
    v138[0] = v15;
    v16 = [v11 payloadNotifications];
    v17 = [v16 BOOLValue];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = v18;
    if (v17)
    {
      v20 = @"ON";
    }

    else
    {
      v20 = @"OFF";
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_10000C4A8 table:0];
    v138[1] = v21;
    v22 = [NSArray arrayWithObjects:v138 count:2];
    [v12 addObject:v22];

    v6 = v119;
  }

  v122 = v12;
  v23 = [v11 payloadRecommendedCadence];

  v24 = &NSStringFromClass_ptr;
  if (v23)
  {
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SU_CONFIGURATION_RECOMMENDATION_CADENCE" value:&stru_10000C4A8 table:0];
    v137[0] = v26;
    v27 = [v11 payloadRecommendedCadence];
    v28 = [(SoftwareUpdateCombinedAdapter *)self _recommendationCadenceLocalizedStringForString:v27];
    v137[1] = v28;
    v29 = [NSArray arrayWithObjects:v137 count:2];
    [v122 addObject:v29];

    v6 = v119;
  }

  v30 = [v11 payloadAutomaticActions];
  v117 = v30;
  if (v30)
  {
    v31 = v30;
    v32 = [v30 payloadDownload];

    if (v32)
    {
      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"SU_CONFIGURATION_AUTOMATIC_ACTIONS_DOWNLOAD" value:&stru_10000C4A8 table:0];
      v136[0] = v34;
      v35 = [v31 payloadDownload];
      v36 = [(SoftwareUpdateCombinedAdapter *)self _localizedStringForRMModelSettingsState:v35];
      v136[1] = v36;
      v37 = [NSArray arrayWithObjects:v136 count:2];
      [v122 addObject:v37];
    }

    v38 = [v31 payloadInstallOSUpdates];

    if (v38)
    {
      v39 = [NSBundle bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"SU_CONFIGURATION_AUTOMATIC_ACTIONS_INSTALL_OS_UPDATES" value:&stru_10000C4A8 table:0];
      v135[0] = v40;
      v41 = [v31 payloadInstallOSUpdates];
      v42 = [(SoftwareUpdateCombinedAdapter *)self _localizedStringForRMModelSettingsState:v41];
      v135[1] = v42;
      v43 = [NSArray arrayWithObjects:v135 count:2];
      [v122 addObject:v43];
    }

    v44 = [v31 payloadInstallSecurityUpdate];

    if (v44)
    {
      v45 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"SU_CONFIGURATION_AUTOMATIC_ACTIONS_INSTALL_SECURITY_UPDATES" value:&stru_10000C4A8 table:0];
      v134[0] = v46;
      v47 = [v31 payloadInstallSecurityUpdate];
      v48 = [(SoftwareUpdateCombinedAdapter *)self _localizedStringForRMModelSettingsState:v47];
      v134[1] = v48;
      v49 = [NSArray arrayWithObjects:v134 count:2];
      [v122 addObject:v49];
    }
  }

  v50 = [v11 payloadRapidSecurityResponse];
  v51 = v122;
  v52 = &NSStringFromClass_ptr;
  v121 = v50;
  if (v50)
  {
    v53 = v50;
    v54 = [v50 payloadEnable];

    if (v54)
    {
      v55 = [NSBundle bundleForClass:objc_opt_class()];
      v56 = [v55 localizedStringForKey:@"SU_CONFIGURATION_RAPID_SECURITY_RESPONSE_ENABLE" value:&stru_10000C4A8 table:0];
      v133[0] = v56;
      v57 = [v121 payloadEnable];
      v58 = [v57 BOOLValue];
      v59 = [NSBundle bundleForClass:objc_opt_class()];
      v60 = v59;
      if (v58)
      {
        v61 = @"ON";
      }

      else
      {
        v61 = @"OFF";
      }

      v62 = [v59 localizedStringForKey:v61 value:&stru_10000C4A8 table:0];
      v133[1] = v62;
      v63 = [NSArray arrayWithObjects:v133 count:2];
      [v122 addObject:v63];

      v24 = &NSStringFromClass_ptr;
      v53 = v121;

      v52 = &NSStringFromClass_ptr;
    }

    v64 = [v53 payloadEnableRollback];

    if (v64)
    {
      v65 = [NSBundle bundleForClass:objc_opt_class()];
      v66 = [v65 localizedStringForKey:@"SU_CONFIGURATION_RAPID_SECURITY_RESPONSE_ENABLE_ROLLBACK" value:&stru_10000C4A8 table:0];
      v132[0] = v66;
      v67 = [v121 payloadEnableRollback];
      v68 = [v67 BOOLValue];
      v69 = [NSBundle bundleForClass:objc_opt_class()];
      v70 = v69;
      if (v68)
      {
        v71 = @"ON";
      }

      else
      {
        v71 = @"OFF";
      }

      v72 = [v69 localizedStringForKey:v71 value:&stru_10000C4A8 table:0];
      v132[1] = v72;
      v73 = [NSArray arrayWithObjects:v132 count:2];
      [v122 addObject:v73];

      v24 = &NSStringFromClass_ptr;
      v52 = &NSStringFromClass_ptr;
    }
  }

  v74 = [v11 payloadDeferrals];
  v116 = v74;
  if (v74)
  {
    v75 = v74;
    v76 = [v74 payloadCombinedPeriodInDays];

    if (v76)
    {
      v77 = [NSBundle bundleForClass:objc_opt_class()];
      v78 = [v77 localizedStringForKey:@"SU_CONFIGURATION_DEFERRALS_COMBINED" value:&stru_10000C4A8 table:0];
      v131[0] = v78;
      v79 = [v75 payloadCombinedPeriodInDays];
      v80 = [v79 description];
      v131[1] = v80;
      v81 = [v52[97] arrayWithObjects:v131 count:2];
      [v122 addObject:v81];

      v24 = &NSStringFromClass_ptr;
    }
  }

  v82 = [v11 payloadBeta];
  v83 = v82;
  if (v82)
  {
    v84 = [v82 payloadProgramEnrollment];

    if (v84)
    {
      v85 = [NSBundle bundleForClass:objc_opt_class()];
      v86 = [v85 localizedStringForKey:@"SU_CONFIGURATION_BETA_PROGRAM_ENROLLMENT" value:&stru_10000C4A8 table:0];
      v130[0] = v86;
      v87 = [v83 payloadProgramEnrollment];
      v130[1] = v87;
      v88 = [v52[97] arrayWithObjects:v130 count:2];
      [v122 addObject:v88];

      v24 = &NSStringFromClass_ptr;
    }

    v89 = [v83 payloadRequireProgram];

    if (v89)
    {
      v90 = [NSBundle bundleForClass:objc_opt_class()];
      v91 = [v90 localizedStringForKey:@"SU_CONFIGURATION_BETA_REQUIRED_PROGRAM" value:&stru_10000C4A8 table:0];
      v129[0] = v91;
      v92 = [v83 payloadRequireProgram];
      v93 = [v92 payloadDescription];
      v129[1] = v93;
      v94 = [v52[97] arrayWithObjects:v129 count:2];
      [v122 addObject:v94];

      v6 = v119;
      v24 = &NSStringFromClass_ptr;
    }

    v95 = [v83 payloadOfferPrograms];

    if (v95)
    {
      v96 = +[NSMutableString string];
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v97 = [v83 payloadOfferPrograms];
      v98 = [v97 countByEnumeratingWithState:&v123 objects:v128 count:16];
      if (v98)
      {
        v99 = v98;
        v100 = *v124;
        do
        {
          for (i = 0; i != v99; i = i + 1)
          {
            if (*v124 != v100)
            {
              objc_enumerationMutation(v97);
            }

            v102 = [*(*(&v123 + 1) + 8 * i) payloadDescription];
            [v96 appendFormat:@"%@\n", v102];
          }

          v99 = [v97 countByEnumeratingWithState:&v123 objects:v128 count:16];
        }

        while (v99);
      }

      v24 = &NSStringFromClass_ptr;
      v103 = [NSBundle bundleForClass:objc_opt_class()];
      v104 = [v103 localizedStringForKey:@"SU_CONFIGURATION_BETA_OFFER_PROGRAMS" value:&stru_10000C4A8 table:0];
      v127[0] = v104;
      v127[1] = v96;
      v105 = [NSArray arrayWithObjects:v127 count:2];
      v51 = v122;
      [v122 addObject:v105];

      v6 = v119;
    }
  }

  v106 = v6;
  v107 = +[SUCoreDDMUtilities sharedLogger];
  v108 = [v107 oslog];

  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v140 = "[SoftwareUpdateCombinedAdapter configurationUIForConfiguration:scope:completionHandler:]";
    v141 = 2114;
    v142 = v51;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%s: Applying configuration UI: %{public}@", buf, 0x16u);
  }

  v109 = [v24[74] bundleForClass:objc_opt_class()];
  v110 = [v109 localizedStringForKey:@"SU_GLOBAL_SETTINGS_CONFIGURATION_TITLE" value:&stru_10000C4A8 table:0];
  v111 = [v24[74] bundleForClass:objc_opt_class()];
  v112 = [v111 localizedStringForKey:@"SU_GLOBAL_SETTINGS_CONFIGURATION_DESCRIPTION" value:&stru_10000C4A8 table:0];
  v113 = v51;
  v114 = [v51 copy];
  v115 = [RMConfigurationUIDetails configurationUIWithTitle:v110 description:v112 details:v114];

  v118[2](v118, 1, v115, 0);
}

- (id)_localizedStringForRMModelSettingsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:RMModelSettingsState_allowed])
  {
    v4 = @"ALLOWED";
LABEL_7:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_10000C4A8 table:0];

    goto LABEL_8;
  }

  if ([v3 isEqualToString:RMModelSettingsState_alwaysOn])
  {
    v4 = @"ON";
    goto LABEL_7;
  }

  if ([v3 isEqualToString:RMModelSettingsState_alwaysOff])
  {
    v4 = @"OFF";
    goto LABEL_7;
  }

  v6 = &stru_10000C4A8;
LABEL_8:

  return v6;
}

- (void)applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:.cold.1()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Error while applying the seeding configuration: %{public}@", v1, 0x16u);
}

- (void)removeCombinedConfigurationForScope:error:.cold.1()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Error unenrolling device %{public}@", v1, 0x16u);
}

@end