@interface SoftwareUpdateCombinedAdapter
- (BOOL)applyCombinedConfiguration:(id)configuration declarationKeys:(id)keys scope:(int64_t)scope returningReasons:(id *)reasons error:(id *)error;
- (BOOL)removeCombinedConfigurationForScope:(int64_t)scope error:(id *)error;
- (SoftwareUpdateCombinedAdapter)init;
- (id)_localizedStringForRMModelSettingsState:(id)state;
- (id)_recommendationCadenceLocalizedStringForString:(id)string;
- (id)_recommendationCadenceValueForString:(id)string;
- (id)_valueForEnum:(id)enum;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
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

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[SUCoreDDMUtilities sharedLogger];
  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Getting all declarations for scope", buf, 0xCu);
  }

  if (scope == 1)
  {
    controller = [(SoftwareUpdateCombinedAdapter *)self controller];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      controller2 = [(SoftwareUpdateCombinedAdapter *)self controller];
      v34 = 0;
      v12 = [controller2 globalSettingsDeclarationWithError:&v34];
      v13 = v34;
    }

    else
    {
      v17 = +[SUCoreDDMUtilities sharedLogger];
      oslog2 = [v17 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
        _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to get global settings declaration keys", buf, 0xCu);
      }

      controller2 = +[SUCore sharedCore];
      v13 = [controller2 buildError:9101 underlying:0 description:@"No controller found to get global settings declaration keys"];
      v12 = 0;
    }

    v19 = +[SUCoreDDMUtilities sharedLogger];
    oslog3 = [v19 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      serializedKeys = [v12 serializedKeys];
      *buf = 136315394;
      v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
      v38 = 2114;
      scopeCopy = serializedKeys;
      _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "%s: Found serializedKeys: %{public}@", buf, 0x16u);
    }

    serializedKeys2 = [v12 serializedKeys];
    v23 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [serializedKeys2 count]);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    serializedKeys3 = [v12 serializedKeys];
    v25 = [serializedKeys3 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(serializedKeys3);
          }

          v29 = [RMStoreDeclarationKey newDeclarationKey:*(*(&v30 + 1) + 8 * v28)];
          [v23 addObject:v29];

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [serializedKeys3 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v26);
    }

    handlerCopy[2](handlerCopy, v23, v13);
  }

  else
  {
    v14 = +[SUCoreDDMUtilities sharedLogger];
    oslog4 = [v14 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[SoftwareUpdateCombinedAdapter allDeclarationKeysForScope:completionHandler:]";
      v38 = 2048;
      scopeCopy = scope;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
    }

    v16 = +[SUCore sharedCore];
    v13 = [v16 buildError:9100 underlying:0 description:@"Not in system scope"];

    handlerCopy[2](handlerCopy, 0, v13);
  }
}

- (BOOL)applyCombinedConfiguration:(id)configuration declarationKeys:(id)keys scope:(int64_t)scope returningReasons:(id *)reasons error:(id *)error
{
  configurationCopy = configuration;
  keysCopy = keys;
  if (scope == 1)
  {
    selfCopy = self;
    v13 = configurationCopy;
    v14 = +[NSMutableArray array];
    v15 = +[RMManagedDevice currentManagedDevice];
    isSupervised = [v15 isSupervised];

    v17 = +[SUCoreDDMUtilities sharedLogger];
    oslog = [v17 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (isSupervised)
      {
        v19 = @"YES";
      }

      *buf = 136315394;
      v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
      v129 = 2114;
      *v130 = v19;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Supervised: %{public}@", buf, 0x16u);
    }

    if (isSupervised)
    {
      goto LABEL_26;
    }

    payloadDeferrals = [v13 payloadDeferrals];

    if (payloadDeferrals)
    {
      [v14 addObject:@"deferrals"];
    }

    payloadAutomaticActions = [v13 payloadAutomaticActions];

    if (payloadAutomaticActions)
    {
      [v14 addObject:@"automatic actions"];
    }

    payloadRapidSecurityResponse = [v13 payloadRapidSecurityResponse];

    if (payloadRapidSecurityResponse)
    {
      [v14 addObject:@"rapid security response"];
    }

    payloadBeta = [v13 payloadBeta];
    payloadRequireProgram = [payloadBeta payloadRequireProgram];

    if (payloadRequireProgram)
    {
      [v14 addObject:@"beta require program"];
    }

    payloadBeta2 = [v13 payloadBeta];
    payloadProgramEnrollment = [payloadBeta2 payloadProgramEnrollment];

    if (payloadProgramEnrollment)
    {
      [v14 addObject:@"beta program enrollment"];
    }

    if (![v14 count])
    {
LABEL_26:
      errorCopy = error;
      v116 = v14;
      v34 = configurationCopy;
      v35 = keysCopy;
      v36 = +[NSMutableDictionary dictionary];
      payloadNotifications = [v13 payloadNotifications];
      [v36 setSafeObject:payloadNotifications forKey:SUCorePolicyDDMGlobalSettingEnableGlobalNotificationsKey];

      payloadAutomaticActions2 = [v13 payloadAutomaticActions];
      v39 = payloadAutomaticActions2;
      if (payloadAutomaticActions2)
      {
        payloadDownload = [payloadAutomaticActions2 payloadDownload];
        v41 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:payloadDownload];
        [v36 setSafeObject:v41 forKey:SUCorePolicyDDMGlobalSettingAutomaticallyDownloadKey];

        payloadInstallOSUpdates = [v39 payloadInstallOSUpdates];
        v43 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:payloadInstallOSUpdates];
        [v36 setSafeObject:v43 forKey:SUCorePolicyDDMGlobalSettingAutomaticallyInstallOSUpdatesKey];

        payloadInstallSecurityUpdate = [v39 payloadInstallSecurityUpdate];
        v45 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:payloadInstallSecurityUpdate];
        [v36 setSafeObject:v45 forKey:SUCorePolicyDDMGlobalSettingAutomaticallyInstallSystemAndSecurityUpdatesKey];
      }

      v114 = v39;
      payloadRapidSecurityResponse2 = [v13 payloadRapidSecurityResponse];
      v47 = payloadRapidSecurityResponse2;
      if (payloadRapidSecurityResponse2)
      {
        payloadEnable = [payloadRapidSecurityResponse2 payloadEnable];
        [v36 setSafeObject:payloadEnable forKey:SUCorePolicyDDMGlobalSettingEnableRapidSecurityResponseKey];

        payloadEnableRollback = [v47 payloadEnableRollback];
        [v36 setSafeObject:payloadEnableRollback forKey:SUCorePolicyDDMGlobalSettingEnableRapidSecurityResponseRollbackKey];
      }

      v113 = v47;
      payloadRecommendedCadence = [v13 payloadRecommendedCadence];
      v51 = [(SoftwareUpdateCombinedAdapter *)self _recommendationCadenceValueForString:payloadRecommendedCadence];
      [v36 setSafeObject:v51 forKey:SUCorePolicyDDMGlobalSettingRecommendationCadenceKey];

      payloadDeferrals2 = [v13 payloadDeferrals];
      v53 = payloadDeferrals2;
      keysCopy = v35;
      if (payloadDeferrals2)
      {
        payloadCombinedPeriodInDays = [payloadDeferrals2 payloadCombinedPeriodInDays];
        [v36 setSafeObject:payloadCombinedPeriodInDays forKey:SUCorePolicyDDMGlobalSettingCombinedUpdatesDeferralPeriodKey];
      }

      v111 = [v35 valueForKey:@"key"];
      allObjects = [v111 allObjects];
      [v36 setSafeObject:allObjects forKey:SUCorePolicyDDMGlobalSettingSerializedKeysKey];

      payloadBeta3 = [v13 payloadBeta];
      v118 = v36;
      configurationCopy = v34;
      v56 = errorCopy;
      v112 = v53;
      if (payloadBeta3)
      {
        v120 = objc_alloc_init(NSMutableArray);
        v57 = payloadBeta3;
        payloadProgramEnrollment2 = [payloadBeta3 payloadProgramEnrollment];

        if (payloadProgramEnrollment2)
        {
          payloadProgramEnrollment3 = [payloadBeta3 payloadProgramEnrollment];
          v60 = [(SoftwareUpdateCombinedAdapter *)self _valueForEnum:payloadProgramEnrollment3];
          v61 = v36;
          v62 = v60;
          [v61 setSafeObject:v60 forKey:SUCorePolicyDDMGlobalSettingProgramEnrollment];

          payloadProgramEnrollment4 = [payloadBeta3 payloadProgramEnrollment];
          LOBYTE(v62) = [payloadProgramEnrollment4 isEqualToString:RMModelSettingsState_alwaysOn];

          if (v62)
          {
            v64 = 2;
          }

          else
          {
            payloadProgramEnrollment5 = [payloadBeta3 payloadProgramEnrollment];
            v66 = [payloadProgramEnrollment5 isEqualToString:RMModelSettingsState_alwaysOff];

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
        payloadOfferPrograms = [payloadBeta3 payloadOfferPrograms];

        if (payloadOfferPrograms)
        {
          v107 = v13;
          v108 = keysCopy;
          v109 = configurationCopy;
          v68 = objc_alloc_init(NSMutableArray);
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          payloadOfferPrograms2 = [payloadBeta3 payloadOfferPrograms];
          v70 = [payloadOfferPrograms2 countByEnumeratingWithState:&v123 objects:v135 count:16];
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
                  objc_enumerationMutation(payloadOfferPrograms2);
                }

                v76 = *(*(&v123 + 1) + 8 * i);
                payloadToken = [v76 payloadToken];
                [v120 addObject:payloadToken];

                v133[0] = v73;
                payloadDescription = [v76 payloadDescription];
                v133[1] = v74;
                v134[0] = payloadDescription;
                payloadToken2 = [v76 payloadToken];
                v134[1] = payloadToken2;
                v80 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
                [v68 addObject:v80];
              }

              v71 = [payloadOfferPrograms2 countByEnumeratingWithState:&v123 objects:v135 count:16];
            }

            while (v71);
          }

          [v118 setSafeObject:v68 forKey:SUCorePolicyDDMGlobalSettingOfferPrograms];
          keysCopy = v108;
          configurationCopy = v109;
          v56 = errorCopy;
          v13 = v107;
          v57 = payloadBeta3;
        }

        payloadRequireProgram2 = [v57 payloadRequireProgram];

        if (payloadRequireProgram2)
        {
          v131[0] = seedingProgramDescription;
          payloadRequireProgram3 = [v57 payloadRequireProgram];
          payloadDescription2 = [payloadRequireProgram3 payloadDescription];
          v132[0] = payloadDescription2;
          v131[1] = seedingProgramToken;
          payloadRequireProgram4 = [v57 payloadRequireProgram];
          payloadToken3 = [payloadRequireProgram4 payloadToken];
          v132[1] = payloadToken3;
          v86 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:2];
          [v118 setSafeObject:v86 forKey:SUCorePolicyDDMGlobalSettingRequireProgram];

          v57 = payloadBeta3;
        }

        v87 = [NSSet setWithArray:v120];
        payloadRequireProgram5 = [v57 payloadRequireProgram];
        payloadToken4 = [payloadRequireProgram5 payloadToken];
        v122 = 0;
        [SDMDMConfigurator configureWithOfferProgramTokens:v87 requireProgramToken:payloadToken4 enrollmentPolicy:v110 error:&v122];
        v90 = v122;

        v14 = v116;
        if (v90)
        {
          v91 = +[SUCoreDDMUtilities sharedLogger];
          oslog2 = [v91 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
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
      oslog3 = [v94 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
        v129 = 2114;
        *v130 = v13;
        *&v130[8] = 2114;
        *&v130[10] = v36;
        _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "%s: Applying configuration: %{public}@; declaration dictionary: %{public}@", buf, 0x20u);
      }

      controller = [(SoftwareUpdateCombinedAdapter *)selfCopy controller];
      v97 = objc_opt_respondsToSelector();

      if (v97)
      {
        v98 = [[SUCoreDDMDeclarationGlobalSettings alloc] initWithDeclarationKeys:v36];
        controller2 = [(SoftwareUpdateCombinedAdapter *)selfCopy controller];
        v121 = 0;
        v31 = [controller2 setGlobalSettings:v98 withError:&v121];
        v100 = v121;
      }

      else
      {
        v101 = +[SUCoreDDMUtilities sharedLogger];
        oslog4 = [v101 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
          _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to enforce declaration", buf, 0xCu);
        }

        v98 = +[SUCore sharedCore];
        v100 = [v98 buildError:9101 underlying:0 description:@"No controller found to enforce declaration"];
        v31 = 0;
      }

      v103 = +[SUCoreDDMUtilities sharedLogger];
      oslog5 = [v103 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
        v129 = 1024;
        *v130 = v31;
        *&v130[4] = 2114;
        *&v130[6] = v100;
        _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "%s: Applied global settings, result = %d, error = %{public}@", buf, 0x1Cu);
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
      oslog6 = [v27 oslog];

      if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
        v129 = 2114;
        *v130 = v14;
        _os_log_impl(&_mh_execute_header, oslog6, OS_LOG_TYPE_DEFAULT, "%s: Invalid declaration: The following settings cannot be enforced on unsupervised devices: %{public}@", buf, 0x16u);
      }

      if (!error)
      {
        LOBYTE(v31) = 0;
        goto LABEL_71;
      }

      v29 = [NSString stringWithFormat:@"The following settings cannot be enforced on unsupervised devices: %@", v14];
      v30 = +[SUCore sharedCore];
      [v30 buildError:9100 underlying:0 description:v29];
      *error = LOBYTE(v31) = 0;
    }

LABEL_71:
    goto LABEL_72;
  }

  v32 = +[SUCoreDDMUtilities sharedLogger];
  oslog7 = [v32 oslog];

  if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v128 = "[SoftwareUpdateCombinedAdapter applyCombinedConfiguration:declarationKeys:scope:returningReasons:error:]";
    v129 = 2048;
    *v130 = scope;
    _os_log_impl(&_mh_execute_header, oslog7, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
  }

  if (error)
  {
    v13 = +[SUCore sharedCore];
    [v13 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
    *error = LOBYTE(v31) = 0;
LABEL_72:

    goto LABEL_73;
  }

  LOBYTE(v31) = 0;
LABEL_73:

  return v31;
}

- (id)_valueForEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:RMModelSettingsState_allowed])
  {
    v4 = 0;
  }

  else if ([enumCopy isEqualToString:RMModelSettingsState_alwaysOn])
  {
    v4 = &off_10000CA98;
  }

  else if ([enumCopy isEqualToString:RMModelSettingsState_alwaysOff])
  {
    v4 = &off_10000CAB0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recommendationCadenceValueForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_all])
  {
    v4 = &off_10000CAB0;
  }

  else if ([stringCopy isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_oldest])
  {
    v4 = &off_10000CA98;
  }

  else if ([stringCopy isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_theNewest])
  {
    v4 = &off_10000CAC8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recommendationCadenceLocalizedStringForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_all])
  {
    v4 = @"SU_CONFIGURATION_RECOMMENDATION_CADENCE_ALL";
LABEL_7:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_10000C4A8 table:0];

    goto LABEL_8;
  }

  if ([stringCopy isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_oldest])
  {
    v4 = @"SU_CONFIGURATION_RECOMMENDATION_CADENCE_SLOW";
    goto LABEL_7;
  }

  if ([stringCopy isEqualToString:RMModelSoftwareUpdateSettingsDeclaration_RecommendedCadence_theNewest])
  {
    v4 = @"SU_CONFIGURATION_RECOMMENDATION_CADENCE_FAST";
    goto LABEL_7;
  }

  v6 = &stru_10000C4A8;
LABEL_8:

  return v6;
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.SoftwareUpdateExtension.GlobalSettings" reference:configuration];

  return v3;
}

- (BOOL)removeCombinedConfigurationForScope:(int64_t)scope error:(id *)error
{
  v7 = +[SUCoreDDMUtilities sharedLogger];
  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Removing combined configuration", buf, 0xCu);
  }

  if (scope == 1)
  {
    controller = [(SoftwareUpdateCombinedAdapter *)self controller];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      controller2 = [(SoftwareUpdateCombinedAdapter *)self controller];
      v27 = 0;
      v12 = [controller2 setGlobalSettings:0 withError:&v27];
      v13 = v27;
    }

    else
    {
      v16 = +[SUCoreDDMUtilities sharedLogger];
      oslog2 = [v16 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
        _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to remove combined configuration", buf, 0xCu);
      }

      controller2 = +[SUCore sharedCore];
      v13 = [controller2 buildError:9101 underlying:0 description:@"No controller found to remove combined configuration"];
      v12 = 0;
    }

    v26 = 0;
    [SDMDMConfigurator resetMDMConfigurationWithError:&v26];
    v18 = v26;
    if (v18)
    {
      v19 = +[SUCoreDDMUtilities sharedLogger];
      oslog3 = [v19 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        [SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:];
      }

      if (error)
      {
        v21 = v18;
        *error = v18;
      }
    }

    v22 = +[SUCoreDDMUtilities sharedLogger];
    oslog4 = [v22 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
      v30 = 1024;
      LODWORD(v31[0]) = v12;
      WORD2(v31[0]) = 2114;
      *(v31 + 6) = v13;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Removed combined configuration, result = %d, error = %{public}@", buf, 0x1Cu);
    }

    if (error && v13)
    {
      v24 = v13;
      *error = v13;
    }
  }

  else
  {
    v14 = +[SUCoreDDMUtilities sharedLogger];
    oslog5 = [v14 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[SoftwareUpdateCombinedAdapter removeCombinedConfigurationForScope:error:]";
      v30 = 2048;
      v31[0] = scope;
      _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
    }

    if (!error)
    {
      LOBYTE(v12) = 0;
      return v12;
    }

    v13 = +[SUCore sharedCore];
    [v13 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
    *error = LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v7 = +[SUCoreDDMUtilities sharedLogger];
  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 136315394;
    v140 = "[SoftwareUpdateCombinedAdapter configurationUIForConfiguration:scope:completionHandler:]";
    v141 = 2114;
    v142 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Get configuration UI for: %{public}@", buf, 0x16u);
  }

  declaration2 = [configurationCopy declaration];
  v12 = +[NSMutableArray array];
  payloadNotifications = [declaration2 payloadNotifications];

  v119 = configurationCopy;
  if (payloadNotifications)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SU_CONFIGURATION_NOTIFICATIONS" value:&stru_10000C4A8 table:0];
    v138[0] = v15;
    payloadNotifications2 = [declaration2 payloadNotifications];
    bOOLValue = [payloadNotifications2 BOOLValue];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = v18;
    if (bOOLValue)
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

    configurationCopy = v119;
  }

  v122 = v12;
  payloadRecommendedCadence = [declaration2 payloadRecommendedCadence];

  v24 = &NSStringFromClass_ptr;
  if (payloadRecommendedCadence)
  {
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SU_CONFIGURATION_RECOMMENDATION_CADENCE" value:&stru_10000C4A8 table:0];
    v137[0] = v26;
    payloadRecommendedCadence2 = [declaration2 payloadRecommendedCadence];
    v28 = [(SoftwareUpdateCombinedAdapter *)self _recommendationCadenceLocalizedStringForString:payloadRecommendedCadence2];
    v137[1] = v28;
    v29 = [NSArray arrayWithObjects:v137 count:2];
    [v122 addObject:v29];

    configurationCopy = v119;
  }

  payloadAutomaticActions = [declaration2 payloadAutomaticActions];
  v117 = payloadAutomaticActions;
  if (payloadAutomaticActions)
  {
    v31 = payloadAutomaticActions;
    payloadDownload = [payloadAutomaticActions payloadDownload];

    if (payloadDownload)
    {
      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"SU_CONFIGURATION_AUTOMATIC_ACTIONS_DOWNLOAD" value:&stru_10000C4A8 table:0];
      v136[0] = v34;
      payloadDownload2 = [v31 payloadDownload];
      v36 = [(SoftwareUpdateCombinedAdapter *)self _localizedStringForRMModelSettingsState:payloadDownload2];
      v136[1] = v36;
      v37 = [NSArray arrayWithObjects:v136 count:2];
      [v122 addObject:v37];
    }

    payloadInstallOSUpdates = [v31 payloadInstallOSUpdates];

    if (payloadInstallOSUpdates)
    {
      v39 = [NSBundle bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"SU_CONFIGURATION_AUTOMATIC_ACTIONS_INSTALL_OS_UPDATES" value:&stru_10000C4A8 table:0];
      v135[0] = v40;
      payloadInstallOSUpdates2 = [v31 payloadInstallOSUpdates];
      v42 = [(SoftwareUpdateCombinedAdapter *)self _localizedStringForRMModelSettingsState:payloadInstallOSUpdates2];
      v135[1] = v42;
      v43 = [NSArray arrayWithObjects:v135 count:2];
      [v122 addObject:v43];
    }

    payloadInstallSecurityUpdate = [v31 payloadInstallSecurityUpdate];

    if (payloadInstallSecurityUpdate)
    {
      v45 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"SU_CONFIGURATION_AUTOMATIC_ACTIONS_INSTALL_SECURITY_UPDATES" value:&stru_10000C4A8 table:0];
      v134[0] = v46;
      payloadInstallSecurityUpdate2 = [v31 payloadInstallSecurityUpdate];
      v48 = [(SoftwareUpdateCombinedAdapter *)self _localizedStringForRMModelSettingsState:payloadInstallSecurityUpdate2];
      v134[1] = v48;
      v49 = [NSArray arrayWithObjects:v134 count:2];
      [v122 addObject:v49];
    }
  }

  payloadRapidSecurityResponse = [declaration2 payloadRapidSecurityResponse];
  v51 = v122;
  v52 = &NSStringFromClass_ptr;
  v121 = payloadRapidSecurityResponse;
  if (payloadRapidSecurityResponse)
  {
    v53 = payloadRapidSecurityResponse;
    payloadEnable = [payloadRapidSecurityResponse payloadEnable];

    if (payloadEnable)
    {
      v55 = [NSBundle bundleForClass:objc_opt_class()];
      v56 = [v55 localizedStringForKey:@"SU_CONFIGURATION_RAPID_SECURITY_RESPONSE_ENABLE" value:&stru_10000C4A8 table:0];
      v133[0] = v56;
      payloadEnable2 = [v121 payloadEnable];
      bOOLValue2 = [payloadEnable2 BOOLValue];
      v59 = [NSBundle bundleForClass:objc_opt_class()];
      v60 = v59;
      if (bOOLValue2)
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

    payloadEnableRollback = [v53 payloadEnableRollback];

    if (payloadEnableRollback)
    {
      v65 = [NSBundle bundleForClass:objc_opt_class()];
      v66 = [v65 localizedStringForKey:@"SU_CONFIGURATION_RAPID_SECURITY_RESPONSE_ENABLE_ROLLBACK" value:&stru_10000C4A8 table:0];
      v132[0] = v66;
      payloadEnableRollback2 = [v121 payloadEnableRollback];
      bOOLValue3 = [payloadEnableRollback2 BOOLValue];
      v69 = [NSBundle bundleForClass:objc_opt_class()];
      v70 = v69;
      if (bOOLValue3)
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

  payloadDeferrals = [declaration2 payloadDeferrals];
  v116 = payloadDeferrals;
  if (payloadDeferrals)
  {
    v75 = payloadDeferrals;
    payloadCombinedPeriodInDays = [payloadDeferrals payloadCombinedPeriodInDays];

    if (payloadCombinedPeriodInDays)
    {
      v77 = [NSBundle bundleForClass:objc_opt_class()];
      v78 = [v77 localizedStringForKey:@"SU_CONFIGURATION_DEFERRALS_COMBINED" value:&stru_10000C4A8 table:0];
      v131[0] = v78;
      payloadCombinedPeriodInDays2 = [v75 payloadCombinedPeriodInDays];
      v80 = [payloadCombinedPeriodInDays2 description];
      v131[1] = v80;
      v81 = [v52[97] arrayWithObjects:v131 count:2];
      [v122 addObject:v81];

      v24 = &NSStringFromClass_ptr;
    }
  }

  payloadBeta = [declaration2 payloadBeta];
  v83 = payloadBeta;
  if (payloadBeta)
  {
    payloadProgramEnrollment = [payloadBeta payloadProgramEnrollment];

    if (payloadProgramEnrollment)
    {
      v85 = [NSBundle bundleForClass:objc_opt_class()];
      v86 = [v85 localizedStringForKey:@"SU_CONFIGURATION_BETA_PROGRAM_ENROLLMENT" value:&stru_10000C4A8 table:0];
      v130[0] = v86;
      payloadProgramEnrollment2 = [v83 payloadProgramEnrollment];
      v130[1] = payloadProgramEnrollment2;
      v88 = [v52[97] arrayWithObjects:v130 count:2];
      [v122 addObject:v88];

      v24 = &NSStringFromClass_ptr;
    }

    payloadRequireProgram = [v83 payloadRequireProgram];

    if (payloadRequireProgram)
    {
      v90 = [NSBundle bundleForClass:objc_opt_class()];
      v91 = [v90 localizedStringForKey:@"SU_CONFIGURATION_BETA_REQUIRED_PROGRAM" value:&stru_10000C4A8 table:0];
      v129[0] = v91;
      payloadRequireProgram2 = [v83 payloadRequireProgram];
      payloadDescription = [payloadRequireProgram2 payloadDescription];
      v129[1] = payloadDescription;
      v94 = [v52[97] arrayWithObjects:v129 count:2];
      [v122 addObject:v94];

      configurationCopy = v119;
      v24 = &NSStringFromClass_ptr;
    }

    payloadOfferPrograms = [v83 payloadOfferPrograms];

    if (payloadOfferPrograms)
    {
      v96 = +[NSMutableString string];
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      payloadOfferPrograms2 = [v83 payloadOfferPrograms];
      v98 = [payloadOfferPrograms2 countByEnumeratingWithState:&v123 objects:v128 count:16];
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
              objc_enumerationMutation(payloadOfferPrograms2);
            }

            payloadDescription2 = [*(*(&v123 + 1) + 8 * i) payloadDescription];
            [v96 appendFormat:@"%@\n", payloadDescription2];
          }

          v99 = [payloadOfferPrograms2 countByEnumeratingWithState:&v123 objects:v128 count:16];
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

      configurationCopy = v119;
    }
  }

  v106 = configurationCopy;
  v107 = +[SUCoreDDMUtilities sharedLogger];
  oslog2 = [v107 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v140 = "[SoftwareUpdateCombinedAdapter configurationUIForConfiguration:scope:completionHandler:]";
    v141 = 2114;
    v142 = v51;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "%s: Applying configuration UI: %{public}@", buf, 0x16u);
  }

  v109 = [v24[74] bundleForClass:objc_opt_class()];
  v110 = [v109 localizedStringForKey:@"SU_GLOBAL_SETTINGS_CONFIGURATION_TITLE" value:&stru_10000C4A8 table:0];
  v111 = [v24[74] bundleForClass:objc_opt_class()];
  v112 = [v111 localizedStringForKey:@"SU_GLOBAL_SETTINGS_CONFIGURATION_DESCRIPTION" value:&stru_10000C4A8 table:0];
  v113 = v51;
  v114 = [v51 copy];
  v115 = [RMConfigurationUIDetails configurationUIWithTitle:v110 description:v112 details:v114];

  handlerCopy[2](handlerCopy, 1, v115, 0);
}

- (id)_localizedStringForRMModelSettingsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:RMModelSettingsState_allowed])
  {
    v4 = @"ALLOWED";
LABEL_7:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_10000C4A8 table:0];

    goto LABEL_8;
  }

  if ([stateCopy isEqualToString:RMModelSettingsState_alwaysOn])
  {
    v4 = @"ON";
    goto LABEL_7;
  }

  if ([stateCopy isEqualToString:RMModelSettingsState_alwaysOff])
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