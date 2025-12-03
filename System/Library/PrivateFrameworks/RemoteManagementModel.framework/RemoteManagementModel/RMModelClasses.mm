@interface RMModelClasses
+ (Class)classForCommandType:(id)type;
+ (Class)classForDeclarationType:(id)type;
+ (Class)classForStatusItemType:(id)type;
+ (id)allActivationClasses;
+ (id)allAssetClasses;
+ (id)allConfigurationClasses;
+ (id)allManagementClasses;
+ (id)allStatusItemClasses;
+ (void)addClass:(Class)class declarationType:(id)type;
+ (void)ensureClassForDeclarations:(id)declarations;
+ (void)ensureClassForStatusItems:(id)items;
+ (void)hideDeclarationsWithTypes:(id)types;
@end

@implementation RMModelClasses

+ (Class)classForCommandType:(id)type
{
  v3 = classForCommandType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    +[RMModelClasses classForCommandType:];
  }

  v5 = [classForCommandType__commandClassByCommandType objectForKeyedSubscript:typeCopy];

  return v5;
}

void __38__RMModelClasses_classForCommandType___block_invoke()
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v0 = objc_opt_class();
  v1 = +[RMModelManagementTestCommandCommand registeredIdentifier];
  [v4 setObject:v0 forKeyedSubscript:v1];

  v2 = [v4 copy];
  v3 = classForCommandType__commandClassByCommandType;
  classForCommandType__commandClassByCommandType = v2;
}

+ (Class)classForDeclarationType:(id)type
{
  v3 = classForDeclarationType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    +[RMModelClasses classForDeclarationType:];
  }

  v5 = [declarationClassByDeclarationType objectForKeyedSubscript:typeCopy];

  return v5;
}

void __42__RMModelClasses_classForDeclarationType___block_invoke()
{
  v84 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:41];
  v0 = objc_opt_class();
  v1 = +[RMModelActivationSimpleDeclaration registeredIdentifier];
  [v84 setObject:v0 forKeyedSubscript:v1];

  v2 = objc_opt_class();
  v3 = +[RMModelAssetCredentialACMEDeclaration registeredIdentifier];
  [v84 setObject:v2 forKeyedSubscript:v3];

  v4 = objc_opt_class();
  v5 = +[RMModelAssetCredentialCertificateDeclaration registeredIdentifier];
  [v84 setObject:v4 forKeyedSubscript:v5];

  v6 = objc_opt_class();
  v7 = +[RMModelAssetCredentialIdentityDeclaration registeredIdentifier];
  [v84 setObject:v6 forKeyedSubscript:v7];

  v8 = objc_opt_class();
  v9 = +[RMModelAssetCredentialSCEPDeclaration registeredIdentifier];
  [v84 setObject:v8 forKeyedSubscript:v9];

  v10 = objc_opt_class();
  v11 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration registeredIdentifier];
  [v84 setObject:v10 forKeyedSubscript:v11];

  v12 = objc_opt_class();
  v13 = +[RMModelAssetDataDeclaration registeredIdentifier];
  [v84 setObject:v12 forKeyedSubscript:v13];

  v14 = objc_opt_class();
  v15 = +[RMModelAssetUserIdentityDeclaration registeredIdentifier];
  [v84 setObject:v14 forKeyedSubscript:v15];

  v16 = objc_opt_class();
  v17 = +[RMModelAccountCalDAVDeclaration registeredIdentifier];
  [v84 setObject:v16 forKeyedSubscript:v17];

  v18 = objc_opt_class();
  v19 = +[RMModelAccountCardDAVDeclaration registeredIdentifier];
  [v84 setObject:v18 forKeyedSubscript:v19];

  v20 = objc_opt_class();
  v21 = +[RMModelAccountExchangeDeclaration registeredIdentifier];
  [v84 setObject:v20 forKeyedSubscript:v21];

  v22 = objc_opt_class();
  v23 = +[RMModelAccountGoogleDeclaration registeredIdentifier];
  [v84 setObject:v22 forKeyedSubscript:v23];

  v24 = objc_opt_class();
  v25 = +[RMModelAccountLDAPDeclaration registeredIdentifier];
  [v84 setObject:v24 forKeyedSubscript:v25];

  v26 = objc_opt_class();
  v27 = +[RMModelAccountMailDeclaration registeredIdentifier];
  [v84 setObject:v26 forKeyedSubscript:v27];

  v28 = objc_opt_class();
  v29 = +[RMModelAccountSubscribedCalendarDeclaration registeredIdentifier];
  [v84 setObject:v28 forKeyedSubscript:v29];

  v30 = objc_opt_class();
  v31 = +[RMModelAppManagedDeclaration registeredIdentifier];
  [v84 setObject:v30 forKeyedSubscript:v31];

  v32 = objc_opt_class();
  v33 = +[RMModelAppMarketplaceDeclaration registeredIdentifier];
  [v84 setObject:v32 forKeyedSubscript:v33];

  v34 = objc_opt_class();
  v35 = +[RMModelAppSettingsDeclaration registeredIdentifier];
  [v84 setObject:v34 forKeyedSubscript:v35];

  v36 = objc_opt_class();
  v37 = +[RMModelDiskManagementSettingsDeclaration registeredIdentifier];
  [v84 setObject:v36 forKeyedSubscript:v37];

  v38 = objc_opt_class();
  v39 = +[RMModelLegacyInteractiveProfileDeclaration registeredIdentifier];
  [v84 setObject:v38 forKeyedSubscript:v39];

  v40 = objc_opt_class();
  v41 = +[RMModelLegacyProfileDeclaration registeredIdentifier];
  [v84 setObject:v40 forKeyedSubscript:v41];

  v42 = objc_opt_class();
  v43 = +[RMModelManagementStatusSubscriptionsDeclaration registeredIdentifier];
  [v84 setObject:v42 forKeyedSubscript:v43];

  v44 = objc_opt_class();
  v45 = +[RMModelManagementTestDeclaration registeredIdentifier];
  [v84 setObject:v44 forKeyedSubscript:v45];

  v46 = objc_opt_class();
  v47 = +[RMModelNetworkEAPDeclaration registeredIdentifier];
  [v84 setObject:v46 forKeyedSubscript:v47];

  v48 = objc_opt_class();
  v49 = +[RMModelNetworkWiFiDeclaration registeredIdentifier];
  [v84 setObject:v48 forKeyedSubscript:v49];

  v50 = objc_opt_class();
  v51 = +[RMModelPackageDeclaration registeredIdentifier];
  [v84 setObject:v50 forKeyedSubscript:v51];

  v52 = objc_opt_class();
  v53 = +[RMModelPasscodeSettingsDeclaration registeredIdentifier];
  [v84 setObject:v52 forKeyedSubscript:v53];

  v54 = objc_opt_class();
  v55 = +[RMModelScreenSharingConnectionGroupDeclaration registeredIdentifier];
  [v84 setObject:v54 forKeyedSubscript:v55];

  v56 = objc_opt_class();
  v57 = +[RMModelScreenSharingConnectionDeclaration registeredIdentifier];
  [v84 setObject:v56 forKeyedSubscript:v57];

  v58 = objc_opt_class();
  v59 = +[RMModelScreenSharingHostSettingsDeclaration registeredIdentifier];
  [v84 setObject:v58 forKeyedSubscript:v59];

  v60 = objc_opt_class();
  v61 = +[RMModelSecurityCertificateDeclaration registeredIdentifier];
  [v84 setObject:v60 forKeyedSubscript:v61];

  v62 = objc_opt_class();
  v63 = +[RMModelSecurityIdentityDeclaration registeredIdentifier];
  [v84 setObject:v62 forKeyedSubscript:v63];

  v64 = objc_opt_class();
  v65 = +[RMModelSecurityPasskeyAttestationDeclaration registeredIdentifier];
  [v84 setObject:v64 forKeyedSubscript:v65];

  v66 = objc_opt_class();
  v67 = +[RMModelServicesBackgroundTasksDeclaration registeredIdentifier];
  [v84 setObject:v66 forKeyedSubscript:v67];

  v68 = objc_opt_class();
  v69 = +[RMModelServicesConfigurationFilesDeclaration registeredIdentifier];
  [v84 setObject:v68 forKeyedSubscript:v69];

  v70 = objc_opt_class();
  v71 = +[RMModelSoftwareUpdateEnforcementSpecificDeclaration registeredIdentifier];
  [v84 setObject:v70 forKeyedSubscript:v71];

  v72 = objc_opt_class();
  v73 = +[RMModelSoftwareUpdateSettingsDeclaration registeredIdentifier];
  [v84 setObject:v72 forKeyedSubscript:v73];

  v74 = objc_opt_class();
  v75 = +[RMModelWatchEnrollmentDeclaration registeredIdentifier];
  [v84 setObject:v74 forKeyedSubscript:v75];

  v76 = objc_opt_class();
  v77 = +[RMModelManagementOrganizationInformationDeclaration registeredIdentifier];
  [v84 setObject:v76 forKeyedSubscript:v77];

  v78 = objc_opt_class();
  v79 = +[RMModelManagementPropertiesDeclaration registeredIdentifier];
  [v84 setObject:v78 forKeyedSubscript:v79];

  v80 = objc_opt_class();
  v81 = +[RMModelManagementServerCapabilitiesDeclaration registeredIdentifier];
  [v84 setObject:v80 forKeyedSubscript:v81];

  v82 = [v84 copy];
  v83 = declarationClassByDeclarationType;
  declarationClassByDeclarationType = v82;
}

+ (void)ensureClassForDeclarations:(id)declarations
{
  v28 = *MEMORY[0x277D85DE8];
  declarationsCopy = declarations;
  [self classForDeclarationType:&stru_287451740];
  v5 = [declarationClassByDeclarationType mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = declarationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  v9 = v6;
  if (!v7)
  {
    goto LABEL_16;
  }

  v10 = v7;
  v11 = 0;
  v12 = *v22;
  v13 = MEMORY[0x277D86220];
  *&v8 = 138543362;
  v20 = v8;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      if ([v15 isSubclassOfClass:objc_opt_class()])
      {
        registeredIdentifier = [v15 registeredIdentifier];
        if (![v5 objectForKeyedSubscript:registeredIdentifier])
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v17 = NSStringFromClass(v15);
            *buf = v20;
            v26 = v17;
            _os_log_impl(&dword_261DAE000, v13, OS_LOG_TYPE_DEFAULT, "Registering declaration model class: %{public}@", buf, 0xCu);
          }

          [v5 setObject:v15 forKeyedSubscript:{registeredIdentifier, v20, v21}];
          v11 = 1;
        }
      }
    }

    v10 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v10);

  if (v11)
  {
    v18 = [v5 copy];
    v9 = declarationClassByDeclarationType;
    declarationClassByDeclarationType = v18;
LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)addClass:(Class)class declarationType:(id)type
{
  typeCopy = type;
  [self classForDeclarationType:&stru_287451740];
  v9 = [declarationClassByDeclarationType mutableCopy];
  [v9 setObject:class forKeyedSubscript:typeCopy];

  v7 = [v9 copy];
  v8 = declarationClassByDeclarationType;
  declarationClassByDeclarationType = v7;
}

+ (void)hideDeclarationsWithTypes:(id)types
{
  v19 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  [self classForDeclarationType:&stru_287451740];
  v5 = [declarationClassByDeclarationType mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = typesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:0 forKeyedSubscript:{*(*(&v14 + 1) + 8 * v10++), v14}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];
  v12 = declarationClassByDeclarationType;
  declarationClassByDeclarationType = v11;

  v13 = *MEMORY[0x277D85DE8];
}

+ (Class)classForStatusItemType:(id)type
{
  v3 = classForStatusItemType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    +[RMModelClasses classForStatusItemType:];
  }

  v5 = [statusItemClassByStatusItemType objectForKeyedSubscript:typeCopy];

  return v5;
}

void __41__RMModelClasses_classForStatusItemType___block_invoke()
{
  v90 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:44];
  v0 = objc_opt_class();
  v1 = +[RMModelStatusAccountListCalDAV statusItemType];
  [v90 setObject:v0 forKeyedSubscript:v1];

  v2 = objc_opt_class();
  v3 = +[RMModelStatusAccountListCardDAV statusItemType];
  [v90 setObject:v2 forKeyedSubscript:v3];

  v4 = objc_opt_class();
  v5 = +[RMModelStatusAccountListExchange statusItemType];
  [v90 setObject:v4 forKeyedSubscript:v5];

  v6 = objc_opt_class();
  v7 = +[RMModelStatusAccountListGoogle statusItemType];
  [v90 setObject:v6 forKeyedSubscript:v7];

  v8 = objc_opt_class();
  v9 = +[RMModelStatusAccountListLDAP statusItemType];
  [v90 setObject:v8 forKeyedSubscript:v9];

  v10 = objc_opt_class();
  v11 = +[RMModelStatusAccountListMailIncoming statusItemType];
  [v90 setObject:v10 forKeyedSubscript:v11];

  v12 = objc_opt_class();
  v13 = +[RMModelStatusAccountListMailOutgoing statusItemType];
  [v90 setObject:v12 forKeyedSubscript:v13];

  v14 = objc_opt_class();
  v15 = +[RMModelStatusAccountListSubscribedCalendar statusItemType];
  [v90 setObject:v14 forKeyedSubscript:v15];

  v16 = objc_opt_class();
  v17 = +[RMModelStatusAppManagedList statusItemType];
  [v90 setObject:v16 forKeyedSubscript:v17];

  v18 = objc_opt_class();
  v19 = +[RMModelStatusDeviceSerialNumber statusItemType];
  [v90 setObject:v18 forKeyedSubscript:v19];

  v20 = objc_opt_class();
  v21 = +[RMModelStatusDeviceUDID statusItemType];
  [v90 setObject:v20 forKeyedSubscript:v21];

  v22 = objc_opt_class();
  v23 = +[RMModelStatusDeviceModelFamily statusItemType];
  [v90 setObject:v22 forKeyedSubscript:v23];

  v24 = objc_opt_class();
  v25 = +[RMModelStatusDeviceModelIdentifier statusItemType];
  [v90 setObject:v24 forKeyedSubscript:v25];

  v26 = objc_opt_class();
  v27 = +[RMModelStatusDeviceModelMarketingName statusItemType];
  [v90 setObject:v26 forKeyedSubscript:v27];

  v28 = objc_opt_class();
  v29 = +[RMModelStatusDeviceModelNumber statusItemType];
  [v90 setObject:v28 forKeyedSubscript:v29];

  v30 = objc_opt_class();
  v31 = +[RMModelStatusDeviceOperatingSystemBuildVersion statusItemType];
  [v90 setObject:v30 forKeyedSubscript:v31];

  v32 = objc_opt_class();
  v33 = +[RMModelStatusDeviceOperatingSystemFamily statusItemType];
  [v90 setObject:v32 forKeyedSubscript:v33];

  v34 = objc_opt_class();
  v35 = +[RMModelStatusDeviceOperatingSystemMarketingName statusItemType];
  [v90 setObject:v34 forKeyedSubscript:v35];

  v36 = objc_opt_class();
  v37 = +[RMModelStatusDeviceOperatingSystemSupplementalBuildVersion statusItemType];
  [v90 setObject:v36 forKeyedSubscript:v37];

  v38 = objc_opt_class();
  v39 = +[RMModelStatusDeviceOperatingSystemSupplementalExtraVersion statusItemType];
  [v90 setObject:v38 forKeyedSubscript:v39];

  v40 = objc_opt_class();
  v41 = +[RMModelStatusDeviceOperatingSystemVersion statusItemType];
  [v90 setObject:v40 forKeyedSubscript:v41];

  v42 = objc_opt_class();
  v43 = +[RMModelStatusDeviceBatteryHealth statusItemType];
  [v90 setObject:v42 forKeyedSubscript:v43];

  v44 = objc_opt_class();
  v45 = +[RMModelStatusDiskManagementFileVaultEnabled statusItemType];
  [v90 setObject:v44 forKeyedSubscript:v45];

  v46 = objc_opt_class();
  v47 = +[RMModelStatusManagementClientCapabilities statusItemType];
  [v90 setObject:v46 forKeyedSubscript:v47];

  v48 = objc_opt_class();
  v49 = +[RMModelStatusManagementDeclarations statusItemType];
  [v90 setObject:v48 forKeyedSubscript:v49];

  v50 = objc_opt_class();
  v51 = +[RMModelStatusManagementPushToken statusItemType];
  [v90 setObject:v50 forKeyedSubscript:v51];

  v52 = objc_opt_class();
  v53 = +[RMModelStatusMDMApp statusItemType];
  [v90 setObject:v52 forKeyedSubscript:v53];

  v54 = objc_opt_class();
  v55 = +[RMModelStatusPackageList statusItemType];
  [v90 setObject:v54 forKeyedSubscript:v55];

  v56 = objc_opt_class();
  v57 = +[RMModelStatusPasscodeCompliance statusItemType];
  [v90 setObject:v56 forKeyedSubscript:v57];

  v58 = objc_opt_class();
  v59 = +[RMModelStatusPasscodeIsPresent statusItemType];
  [v90 setObject:v58 forKeyedSubscript:v59];

  v60 = objc_opt_class();
  v61 = +[RMModelStatusScreenSharingConnectionGroupUnresolvedConnections statusItemType];
  [v90 setObject:v60 forKeyedSubscript:v61];

  v62 = objc_opt_class();
  v63 = +[RMModelStatusSecurityCertificateList statusItemType];
  [v90 setObject:v62 forKeyedSubscript:v63];

  v64 = objc_opt_class();
  v65 = +[RMModelStatusServicesBackgroundTask statusItemType];
  [v90 setObject:v64 forKeyedSubscript:v65];

  v66 = objc_opt_class();
  v67 = +[RMModelStatusSoftwareUpdateFailureReason statusItemType];
  [v90 setObject:v66 forKeyedSubscript:v67];

  v68 = objc_opt_class();
  v69 = +[RMModelStatusSoftwareUpdateInstallReason statusItemType];
  [v90 setObject:v68 forKeyedSubscript:v69];

  v70 = objc_opt_class();
  v71 = +[RMModelStatusSoftwareUpdateInstallState statusItemType];
  [v90 setObject:v70 forKeyedSubscript:v71];

  v72 = objc_opt_class();
  v73 = +[RMModelStatusSoftwareUpdatePendingVersion statusItemType];
  [v90 setObject:v72 forKeyedSubscript:v73];

  v74 = objc_opt_class();
  v75 = +[RMModelStatusTestArrayValue statusItemType];
  [v90 setObject:v74 forKeyedSubscript:v75];

  v76 = objc_opt_class();
  v77 = +[RMModelStatusTestBooleanValue statusItemType];
  [v90 setObject:v76 forKeyedSubscript:v77];

  v78 = objc_opt_class();
  v79 = +[RMModelStatusTestDictionaryValue statusItemType];
  [v90 setObject:v78 forKeyedSubscript:v79];

  v80 = objc_opt_class();
  v81 = +[RMModelStatusTestErrorValue statusItemType];
  [v90 setObject:v80 forKeyedSubscript:v81];

  v82 = objc_opt_class();
  v83 = +[RMModelStatusTestIntegerValue statusItemType];
  [v90 setObject:v82 forKeyedSubscript:v83];

  v84 = objc_opt_class();
  v85 = +[RMModelStatusTestRealValue statusItemType];
  [v90 setObject:v84 forKeyedSubscript:v85];

  v86 = objc_opt_class();
  v87 = +[RMModelStatusTestStringValue statusItemType];
  [v90 setObject:v86 forKeyedSubscript:v87];

  v88 = [v90 copy];
  v89 = statusItemClassByStatusItemType;
  statusItemClassByStatusItemType = v88;
}

+ (void)ensureClassForStatusItems:(id)items
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  [self classForStatusItemType:&stru_287451740];
  v5 = [statusItemClassByStatusItemType mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  v9 = v6;
  if (!v7)
  {
    goto LABEL_16;
  }

  v10 = v7;
  v11 = 0;
  v12 = *v22;
  v13 = MEMORY[0x277D86220];
  *&v8 = 138543362;
  v20 = v8;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      if ([v15 isSubclassOfClass:objc_opt_class()])
      {
        statusItemType = [v15 statusItemType];
        if (![v5 objectForKeyedSubscript:statusItemType])
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v17 = NSStringFromClass(v15);
            *buf = v20;
            v26 = v17;
            _os_log_impl(&dword_261DAE000, v13, OS_LOG_TYPE_DEFAULT, "Registering status item model class: %{public}@", buf, 0xCu);
          }

          [v5 setObject:v15 forKeyedSubscript:{statusItemType, v20, v21}];
          v11 = 1;
        }
      }
    }

    v10 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v10);

  if (v11)
  {
    v18 = [v5 copy];
    v9 = statusItemClassByStatusItemType;
    statusItemClassByStatusItemType = v18;
LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)allActivationClasses
{
  if (allActivationClasses_onceToken != -1)
  {
    +[RMModelClasses allActivationClasses];
  }

  v3 = allActivationClasses_activationClasses;

  return v3;
}

void __38__RMModelClasses_allActivationClasses__block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  [v2 addObject:objc_opt_class()];
  v0 = [v2 copy];
  v1 = allActivationClasses_activationClasses;
  allActivationClasses_activationClasses = v0;
}

+ (id)allConfigurationClasses
{
  if (allConfigurationClasses_onceToken != -1)
  {
    +[RMModelClasses allConfigurationClasses];
  }

  v3 = allConfigurationClasses_configurationClasses;

  return v3;
}

void __41__RMModelClasses_allConfigurationClasses__block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v0 = [v2 copy];
  v1 = allConfigurationClasses_configurationClasses;
  allConfigurationClasses_configurationClasses = v0;
}

+ (id)allAssetClasses
{
  if (allAssetClasses_onceToken != -1)
  {
    +[RMModelClasses allAssetClasses];
  }

  v3 = allAssetClasses_assetClasses;

  return v3;
}

void __33__RMModelClasses_allAssetClasses__block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v0 = [v2 copy];
  v1 = allAssetClasses_assetClasses;
  allAssetClasses_assetClasses = v0;
}

+ (id)allManagementClasses
{
  if (allManagementClasses_onceToken != -1)
  {
    +[RMModelClasses allManagementClasses];
  }

  v3 = allManagementClasses_managementClasses;

  return v3;
}

void __38__RMModelClasses_allManagementClasses__block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v0 = [v2 copy];
  v1 = allManagementClasses_managementClasses;
  allManagementClasses_managementClasses = v0;
}

+ (id)allStatusItemClasses
{
  if (allStatusItemClasses_onceToken != -1)
  {
    +[RMModelClasses allStatusItemClasses];
  }

  v3 = allStatusItemClasses_statusItemClasses;

  return v3;
}

void __38__RMModelClasses_allStatusItemClasses__block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:44];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v0 = [v2 copy];
  v1 = allStatusItemClasses_statusItemClasses;
  allStatusItemClasses_statusItemClasses = v0;
}

@end