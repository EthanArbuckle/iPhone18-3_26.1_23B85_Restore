id WFGetFeatureFlagTestingTable()
{
  if (WFGetFeatureFlagTestingTable_onceToken != -1)
  {
    dispatch_once(&WFGetFeatureFlagTestingTable_onceToken, &__block_literal_global_357);
  }

  v1 = _WFFeatureFlagTestingTable;

  return v1;
}

id WFShortcutsCloudKitContainer()
{
  v0 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  if ([v0 BOOLForKey:@"WFCloudKitDevEnvironment"])
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = objc_alloc(MEMORY[0x1E695B8A0]);
  v3 = [v2 initWithContainerIdentifier:*MEMORY[0x1E6997148] environment:v1];
  v4 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v3];
  WFSetShortcutsAppAttributionOnContainer(v4);

  return v4;
}

void WFSetShortcutsAppAttributionOnContainer(void *a1)
{
  v1 = *MEMORY[0x1E69E0FB0];
  v2 = a1;
  v3 = [v2 options];
  [v3 setApplicationBundleIdentifierOverrideForTCC:v1];

  v4 = [v2 options];
  [v4 setApplicationBundleIdentifierOverrideForContainerAccess:v1];

  v5 = [v2 options];
  [v5 setApplicationBundleIdentifierOverrideForNetworkAttribution:v1];

  v6 = [v2 options];

  [v6 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v1];
}

id WFLinkActionIdentifierFromShortcutsActionIdentifier(void *a1)
{
  v1 = a1;
  v2 = WFLinkActionIdentifierOverrides();
  v3 = [v2 allKeysForObject:v1];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = v4;

    v1 = v5;
  }

  v6 = [v1 componentsSeparatedByString:@"."];
  if ([v6 count] >= 2)
  {
    if ([v6 count] >= 3 && (objc_msgSend(v6, "objectAtIndex:", objc_msgSend(v6, "count") - 2), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"System"), v8, v9))
    {
      v10 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 2}];
      v11 = [v10 componentsJoinedByString:@"."];

      v12 = [v6 subarrayWithRange:{objc_msgSend(v6, "count") - 2, 2}];
      v13 = [v12 componentsJoinedByString:@"."];
    }

    else
    {
      v14 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
      v11 = [v14 componentsJoinedByString:@"."];

      v13 = [v6 lastObject];
    }

    v7 = [objc_alloc(MEMORY[0x1E69AC860]) initWithActionIdentifier:v13 bundleIdentifier:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WFLinkActionIdentifierOverrides()
{
  v4[17] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.Notes.OpenNoteLinkAction";
  v3[1] = @"com.apple.Notes.AppendToNoteLinkAction";
  v4[0] = @"is.workflow.actions.shownote";
  v4[1] = @"is.workflow.actions.appendnote";
  v3[2] = @"com.apple.Notes.CreateNoteLinkAction";
  v3[3] = @"com.apple.mobilenotes.OpenNoteLinkAction";
  v4[2] = @"com.apple.mobilenotes.SharingExtension";
  v4[3] = @"is.workflow.actions.shownote";
  v3[4] = @"com.apple.mobilenotes.AppendToNoteLinkAction";
  v3[5] = @"com.apple.mobilenotes.CreateNoteLinkAction";
  v4[4] = @"is.workflow.actions.appendnote";
  v4[5] = @"com.apple.mobilenotes.SharingExtension";
  v3[6] = @"com.apple.mobilenotes.NoteEntity";
  v3[7] = @"com.apple.shortcuts.SetVoiceDataModeAction";
  v4[6] = @"is.workflow.actions.filter.notes";
  v4[7] = @"is.workflow.actions.cellular.rat.set";
  v3[8] = @"com.apple.clock.INCreateTimerIntent";
  v3[9] = @"com.apple.clock.CreateAlarmIntent";
  v4[8] = @"is.workflow.actions.timer.start";
  v4[9] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent";
  v3[10] = @"com.apple.clock.ToggleAlarmIntent";
  v3[11] = @"com.apple.mobiletimer.INCreateTimerIntent";
  v4[10] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent";
  v4[11] = @"is.workflow.actions.timer.start";
  v3[12] = @"com.apple.mobiletimer.CreateAlarmIntent";
  v3[13] = @"com.apple.mobiletimer.AlarmEntity";
  v4[12] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent";
  v4[13] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTGetAlarmsIntent";
  v3[14] = @"com.apple.mobiletimer.ToggleAlarmIntent";
  v3[15] = @"com.apple.camera.OpenCaptureModeIntent";
  v4[14] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent";
  v4[15] = @"com.apple.ShortcutsActions.OpenCameraAction";
  v3[16] = @"com.apple.reminders.OpenNewReminderAppIntent";
  v4[16] = @"is.workflow.actions.addquickreminder";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:17];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id sub_1CA25A3A8(void *a1)
{
  v1 = a1;
  sub_1CA25A3EC();
  v3 = v2;

  return v3;
}

void sub_1CA25A3EC()
{
  sub_1CA25A430();
  if (v1)
  {
    (*(v0 + 8))();
  }
}

void sub_1CA25A430()
{
  v1 = v0;
  v2 = [v0 effectiveBundleIdentifiers];
  v3 = [v2 array];

  v4 = sub_1CA94C658();
  v5 = sub_1CA25A6F8(v4);

  if (v5)
  {
    v6 = sub_1CA25B410(v5);
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCAA22D0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      if (![v8 type])
      {
        break;
      }
    }

    v10 = [v9 bundleIdentifier];
    if (!v10)
    {
      sub_1CA94C3A8();
      v10 = sub_1CA94C368();
    }

    v11 = sub_1CA94C3A8();
    v13 = v12;
    v14 = *MEMORY[0x1E69E0F18];
    if (v11 == sub_1CA94C3A8() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_1CA94D7F8();

      if ((v17 & 1) == 0)
      {
LABEL_25:

        return;
      }
    }

    if (sub_1CA26BB28(v1))
    {
      sub_1CA25B3D0(0, &unk_1EDB9F718, 0x1E69ACDD0);
      v18 = sub_1CA272094();
      v19 = [v18 availableForCurrentPlatformVersion];

      if ((v19 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v20 = [v1 mangledTypeNameForBundleIdentifier_];

    sub_1CA94C3A8();
    v21 = sub_1CA94D418();

    if (v21)
    {
      dynamic_cast_existential_1_conditional(v21);
    }
  }
}

uint64_t WFInitializeProcess(char a1, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __WFInitializeProcess_block_invoke;
  v4[3] = &unk_1E837AD98;
  v5 = a1;
  v4[4] = &v7;
  v6 = a2;
  if (WFInitializeProcess_onceToken != -1)
  {
    dispatch_once(&WFInitializeProcess_onceToken, v4);
  }

  v2 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __WFInitializeProcess_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 40) != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_18;
  }

  v3 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v20];

  if (!v6)
  {
    v19 = 0;
    v8 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v19];
    v7 = v19;
    if ((v8 & 1) == 0)
    {
      v9 = getWFGeneralLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v22 = "WFCreateShortcutsDataVaultIfNecessary";
        v23 = 2114;
        v24 = v7;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Cannot create Shortcuts data vault: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  if ((v20 & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v22 = "WFCreateShortcutsDataVaultIfNecessary";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s A file exists where Shortcuts directory should be", buf, 0xCu);
    }

LABEL_11:
  }

  v10 = [WFDatabase alloc];
  v19 = 0;
  v11 = [(WFDatabase *)v10 initWithPersistenceMode:0 error:&v19];
  v12 = v19;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v14 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "WFInitializeDatabase";
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Failed to initialize database: %{public}@", buf, 0x16u);
    }

    v11 = [[WFDatabase alloc] initWithPersistenceMode:1 error:0];
    v13 = 2;
  }

  [WFDatabase setDefaultDatabase:v11];
  v15 = v11;

  v16 = v11;
  *(*(*(a1 + 32) + 8) + 24) = v13;

LABEL_18:
  v17 = *(a1 + 41);
  WFInitializeDisallowedDirectories();
  [MEMORY[0x1E6996F68] setUpDirectories];
  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E6996F68] clearTemporaryFiles];
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

void __WFWorkflowKitManagedObjectModel_block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = MEMORY[0x1E695D638];
  v6[0] = v0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [v1 mergedModelFromBundles:v2];
  v4 = WFWorkflowKitManagedObjectModel_model;
  WFWorkflowKitManagedObjectModel_model = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __WFGetFeatureFlagTestingTable_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _WFFeatureFlagTestingTable;
  _WFFeatureFlagTestingTable = v0;
}

uint64_t sub_1CA25B374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA25B3D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CA25B418(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1CA94D328();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id _WFTypeSpecificAnnotationsForType(void *a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 wf_enumValueType];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 enumerationIdentifier];
    v11 = [v5 enumerationWithIdentifier:v10 fromBundleIdentifier:v7];

    if (v11)
    {
      v38 = @"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata";
      v39[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  v13 = [v6 wf_entityValueType];
  if (v13)
  {
    v11 = v13;
    v14 = objc_opt_new();
    v15 = [v11 identifier];
    v16 = [v5 entityWithIdentifier:v15 fromBundleIdentifier:v7];

    if (v16)
    {
      [v14 setObject:v16 forKey:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];
      v17 = MEMORY[0x1E696AD18];
      v31 = v16;
      v18 = v16;
      v19 = v7;
      v20 = v5;
      [v17 strongToStrongObjectsMapTable];
      v21 = v32 = v14;
      __WFReferencedEntityMetadataFromMetadata(v18, v18, v19, v20, v21);

      v22 = [v21 objectEnumerator];
      v23 = [v22 allObjects];

      v14 = v32;
      if ([v23 count])
      {
        [v32 setObject:v23 forKey:@"LNValueTypeSpecificMetadataKeyLinkReferencedEntityMetadata"];
      }

      v16 = v31;
    }

    v24 = [v11 identifier];
    v25 = [v5 enumerationWithIdentifier:v24 fromBundleIdentifier:v7];

    if (v25)
    {
      [v14 setObject:v25 forKey:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];
    }

    v12 = [v14 copy];

    goto LABEL_15;
  }

  v26 = [v6 wf_unionValueType];
  if (v26)
  {
    v11 = v26;
    v36 = @"LNValueTypeSpecificMetadataKeyLinkUnionMetadata";
    v27 = [v26 memberValueTypes];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___WFTypeSpecificAnnotationsForType_block_invoke;
    v33[3] = &unk_1E8380610;
    v34 = v5;
    v35 = v7;
    v28 = [v27 if_map:v33];
    v37 = v28;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

LABEL_15:
    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  v29 = *MEMORY[0x1E69E9840];

  return v12;
}

id WFShortcutsActionIdentifierForClassOverrideSearch(void *a1, void *a2)
{
  v2 = WFShortcutsActionIdentifierForIdentifierOverrideSearch(a1, a2);
  v3 = WFLinkActionIdentifierOverrides();
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

id WFShortcutsActionIdentifierForIdentifierOverrideSearch(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByAppendingString:@"."];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

id WFResourceDefinitionsForRequiredCapabilities(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isFeatureFlagCapability])
        {
          v9 = [v8 key];
          v10 = [v9 componentsSeparatedByString:@"/"];

          v11 = [v10 firstObject];
          v12 = [v10 lastObject];
          v13 = -[WFFeatureFlagResource initWithDomain:feature:value:]([_TtC11WorkflowKit21WFFeatureFlagResource alloc], "initWithDomain:feature:value:", v11, v12, [v8 value]);
          [v2 addObject:v13];
        }

        else
        {
          if (![v8 isMobileGestaltCapability])
          {
            continue;
          }

          v14 = [_TtC11WorkflowKit26WFDeviceCapabilityResource alloc];
          v10 = [v8 key];
          v11 = -[WFDeviceCapabilityResource initWithMobileGestaltKey:value:](v14, "initWithMobileGestaltKey:value:", v10, [v8 value]);
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t sub_1CA25BBE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1CA94D508();
  v7 = a1 + 32;
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    sub_1CA25B374(v7, v10);
    sub_1CA25B3D0(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1CA94D4D8();
    v8 = *(v11 + 16);
    sub_1CA94D518();
    sub_1CA94D528();
    sub_1CA94D4E8();
    v7 += 32;
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

void *WFShortcutsActionIdentifierFromLinkIdentifiers(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFShortcutsActionIdentifierForIdentifierOverrideSearch(v4, v3);
  v6 = WFLinkActionIdentifierOverrides();
  v7 = [v6 objectForKey:v5];

  v8 = [v4 stringByAppendingString:@"."];

  v9 = [v8 stringByAppendingString:v3];

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

void sub_1CA25BDF8()
{
  sub_1CA25A430();
  if (v1)
  {
    (*(v0 + 8))();
  }
}

id sub_1CA25BE3C(void *a1)
{
  v1 = a1;
  sub_1CA25BDF8();
  v3 = v2;

  return v3;
}

uint64_t sub_1CA25C0A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA25C0D8()
{
  sub_1CA378AB8();
  if (v0 <= 0x3F)
  {
    sub_1CA25C404();
    if (v1 <= 0x3F)
    {
      sub_1CA25C174();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA25C174()
{
  if (!qword_1EC441B58)
  {
    sub_1CA94BF38();
    v0 = sub_1CA94C248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441B58);
    }
  }
}

void sub_1CA25C1DC()
{
  if (!qword_1EC441BA8)
  {
    type metadata accessor for LibraryModel(255);
    sub_1CA25C5E8(&qword_1EC442AA8, type metadata accessor for LibraryModel);
    v0 = sub_1CA94C028();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441BA8);
    }
  }
}

void sub_1CA25C270(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CA94B898();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CA25C2C0()
{
  if (!qword_1EC441C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443BE0, &qword_1CA982090);
    sub_1CA25C3BC(&qword_1EC441BA0, &qword_1EC443BE0, &qword_1CA982090);
    sub_1CA25C3BC(&qword_1EC441B98, &qword_1EC443BE0, &qword_1CA982090);
    v0 = sub_1CA94BD38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441C70);
    }
  }
}

uint64_t sub_1CA25C3BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA25C404()
{
  if (!qword_1EC441BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC443950, &unk_1CA982580);
    sub_1CA25C3BC(&qword_1EC441BD8, &unk_1EC443950, &unk_1CA982580);
    sub_1CA25C3BC(&qword_1EC441BD0, &unk_1EC443950, &unk_1CA982580);
    v0 = sub_1CA94BDD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441BE0);
    }
  }
}

unint64_t sub_1CA25C504()
{
  result = qword_1EC442C70;
  if (!qword_1EC442C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442C70);
  }

  return result;
}

uint64_t sub_1CA25C558(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA25C5A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA25C5E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_1CA94C458();
}

uint64_t OUTLINED_FUNCTION_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id OUTLINED_FUNCTION_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{
  *(a1 + 8) = sub_1CA2EE55C;
  v2 = *(v1 + 112);
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
}

id OUTLINED_FUNCTION_4_11(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return sub_1CA94AA58();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

double OUTLINED_FUNCTION_4_22(uint64_t a1)
{
  *(a1 + 8) = sub_1CA39BBCC;
  v2 = *(v1 + 88);
  v3 = *(v1 + 64);
  result = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 40);
  return result;
}

void OUTLINED_FUNCTION_4_23(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a2;

  sub_1CA2B8E70(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3C65A4;
  v2 = v1[104];
  v3 = v1[101];
  return v1[107];
}

void OUTLINED_FUNCTION_60()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_4_27(unint64_t *a1)
{

  return sub_1CA25C3BC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return sub_1CA94C298();
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result)
{
  *(v1 + 208) = result;
  *(v1 + 152) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = (result + a2);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_33@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_4_34()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[138];
  v7 = v0[137];
}

id OUTLINED_FUNCTION_4_36(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return sub_1CA94D748();
}

uint64_t OUTLINED_FUNCTION_4_42(uint64_t a1)
{
  *(a1 + 8) = sub_1CA55D3D8;
  result = *(v1 + 128);
  v3 = *(v1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return sub_1CA94C658();
}

void OUTLINED_FUNCTION_4_48()
{

  sub_1CA2E7478();
}

uint64_t OUTLINED_FUNCTION_4_54()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 264);

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_4_55(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_4_57()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = *(v1 + 56);
  *(v1 + 32);
}

uint64_t sub_1CA25CF98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CA2D9D20(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_35_7(unint64_t *a1)
{

  return sub_1CA25C3BC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return sub_1CA948B68();
}

double OUTLINED_FUNCTION_35_9(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 5;
  return result;
}

void OUTLINED_FUNCTION_35_10()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
}

id OUTLINED_FUNCTION_35_11()
{

  return sub_1CA4FC70C(v0);
}

uint64_t OUTLINED_FUNCTION_35_12()
{
  v1 = v0[29];
  result = v0[15];
  v3 = v0[13];
  v4 = *(v0[14] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_13(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_1CA94D918();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_1CA94D7F8();
}

double OUTLINED_FUNCTION_9_0()
{
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = &a9 - *(v9 + 104);

  return sub_1CA948B68();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1CA94D848();
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_3_11(uint64_t a1@<X8>)
{
  v1[12] = sub_1CA319F94;
  v1[13] = a1;
  v1[14] = v2;
}

void OUTLINED_FUNCTION_3_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_2_3()
{
  v1[12] = sub_1CA35F430;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2)
{
  v6 = v2[27];
  v22 = v2[28];
  v19 = v2[3];
  v20 = v2[2];
  v23 = v2[26];
  v24 = v2[25];
  v7 = v2[24];
  v8 = v2[21];
  v25 = v2[23];
  v26 = v2[22];
  v27 = v2[20];
  v28 = v2[19];
  v9 = v2[18];
  v29 = v2[17];
  v10 = v2[15];
  v11 = v2[13];
  v12 = v2[14];
  *(v4 - 128) = v2[16];
  *(v4 - 120) = v11;
  v16 = v2[12];
  v14 = v2[9];
  v13 = v2[10];
  *(v4 - 112) = v2[11];
  *(v4 - 104) = v13;
  v21 = v2[8];
  v17 = v2[4];
  v18 = v2[5];

  return __swift_storeEnumTagSinglePayload(v12, a2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_3_21()
{
  result = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[177];
  v7 = v0[176];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[171];
  v11 = v0[170];
  v12 = v0[169];
  return result;
}

void OUTLINED_FUNCTION_3_24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

__n128 OUTLINED_FUNCTION_3_26@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1].n128_u64[0];
  v5 = v2[1].n128_u64[1];
  return result;
}

id OUTLINED_FUNCTION_9_1()
{

  return sub_1CA2F9F14(v0, v1, v2, v3, 0, 0, v4, v5);
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  v1 = v0[134];
  v2 = v0[131];
  v3 = *(v0[132] + 96);
  return v0[133];
}

void OUTLINED_FUNCTION_3_32()
{
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[12];
  v6 = v0[11];
  v1 = v0[10];
  v7 = v0[7];
  v2 = v0[2];
}

id OUTLINED_FUNCTION_3_34(uint64_t a1)
{

  return [v1 (v2 + 320)];
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t a1)
{
  *(a1 + 8) = sub_1CA517010;
  result = *(v1 + 144);
  v3 = *(v1 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_38()
{

  return sub_1CA94AA98();
}

uint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1CA25B374(a1, &a9);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_3_43(void *a1)
{

  return [a1 init];
}

void OUTLINED_FUNCTION_3_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v32 - 128) = 0xD000000000000010;
  *(v32 - 120) = a27;
  *(v32 - 176) = a32;
}

uint64_t OUTLINED_FUNCTION_3_45()
{
  *(v0 + 88) = sub_1CA5A0FDC;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_3_47()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA2E5784();
}

uint64_t OUTLINED_FUNCTION_3_48()
{

  return sub_1CA2B8A88(v0);
}

uint64_t OUTLINED_FUNCTION_3_49@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 232) = v1;
  *(v3 - 224) = a1;
  v5 = v2[88];
  *(v3 - 216) = v2[89];
  *(v3 - 208) = v5;
  v6 = v2[86];
  *(v3 - 200) = v2[87];
  *(v3 - 192) = v6;
  v7 = v2[80];
  *(v3 - 184) = v2[83];
  *(v3 - 176) = v7;
  v8 = v2[76];
  *(v3 - 168) = v2[77];
  *(v3 - 160) = v8;
  v9 = v2[73];
  *(v3 - 152) = v2[75];
  *(v3 - 144) = v9;
  v10 = v2[71];
  *(v3 - 136) = v2[72];
  *(v3 - 128) = v10;
  v11 = v2[69];
  *(v3 - 120) = v2[70];
  *(v3 - 112) = v11;
  v12 = v2[66];
  *(v3 - 104) = v2[68];
  *(v3 - 96) = v12;
}

uint64_t OUTLINED_FUNCTION_3_51()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1CA61126C;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_3_52()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void OUTLINED_FUNCTION_3_53()
{
  v1 = v0[62];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[53];
  v7 = v0[52];
}

uint64_t OUTLINED_FUNCTION_3_55()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_3_56()
{

  sub_1CA2E5678();
}

id OUTLINED_FUNCTION_3_57()
{

  return [v0 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_3_58()
{
  result = *(v0 - 104);
  v2 = *(*(v0 - 96) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_60()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return result;
}

uint64_t (*OUTLINED_FUNCTION_108_1())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  return sub_1CA3C3224;
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return sub_1CA94C3A8();
}

unint64_t OUTLINED_FUNCTION_108_4()
{

  return sub_1CA435BD4();
}

uint64_t OUTLINED_FUNCTION_108_5()
{
  result = v0[46];
  v2 = v0[47];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_2()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[17];
}

id OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1CA320AB4(va, v2);
}

uint64_t OUTLINED_FUNCTION_38_4()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return sub_1CA94C698();
}

void OUTLINED_FUNCTION_38_6(uint64_t a1@<X8>)
{
  *(v3 - 184) = a1;
  *(v3 - 176) = v1;
  v4 = *(v2 + 1272);
  *(v3 - 200) = *(v2 + 1224);
  *(v3 - 192) = v4;
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return sub_1CA42B9FC();
}

void OUTLINED_FUNCTION_51()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_12@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return sub_1CA25B410(v3);
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 216);
  v3 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  v2 = v0[81];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1, uint64_t a2)
{
  v6 = v2[199];
  v7 = v2[192];
  v8 = v2[191];
  v9 = v2[134];
  v10 = v2[130];
  v11 = v2[107];
  v12 = v2[104];
  v13 = v2[103];
  v14 = v2[102];
  v15 = v2[101];
  v16 = v2[98];
  v17 = v2[97];
  v18 = v2[96];
  *(v3 - 112) = v2[95];
  *(v3 - 104) = v15;

  return MEMORY[0x1EEDEBE08](v10, a1, a2, v6);
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1)
{
  *(a1 + 8) = sub_1CA45F968;
  v2 = *(v1 + 64);
  return *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  v1 = *(*(v0 - 336) + 8);
  result = *(v0 - 344);
  v3 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_24()
{
  v2 = *(v0 + 64);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_25()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_8_27()
{
  v1[21] = v0;
  v2 = v1[12];
  v3 = v1[13];
}

uint64_t OUTLINED_FUNCTION_8_29()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1CA94D2A8();
}

void OUTLINED_FUNCTION_8_30()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_8_31(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_34()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  result = v3 + 16;
  v5 = *(v3 + 16);
  return result;
}

BOOL OUTLINED_FUNCTION_8_35(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result = a18;
  v19 = *(a17 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_5()
{
  v1 = v0[25];
  result = v0[21];
  v3 = v0[19];
  v4 = *(v0[20] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_8()
{
  v2 = *(*(v1 - 128) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

void OUTLINED_FUNCTION_20_10()
{
  v2 = v0[166];
  *(v1 - 184) = v0[160];
  *(v1 - 176) = v2;
  v3 = v0[159];
  *(v1 - 200) = v0[153];
  *(v1 - 192) = v3;
}

id OUTLINED_FUNCTION_20_11(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return [v11 a2];
}

uint64_t OUTLINED_FUNCTION_20_13()
{
  result = type metadata accessor for DrawerAction(0);
  v2 = v0 + *(result + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_14(uint64_t a1)
{
  *(a1 + 8) = sub_1CA41D9A8;
  v2 = *(v1 + 176);
  return *(v1 + 400);
}

uint64_t OUTLINED_FUNCTION_20_15()
{
  result = v0[148];
  v2 = v0[147];
  v3 = v0[146];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  return result;
}

void OUTLINED_FUNCTION_20_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_20_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_1CA948D98();
}

id OUTLINED_FUNCTION_20_22(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_20_23()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_20_24()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_25()
{
  v2 = *(v0 - 144);

  return sub_1CA94D6F8();
}

uint64_t OUTLINED_FUNCTION_20_32()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_91_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_91_1()
{
  v1 = v0[65];
  v2 = v0[61];
  v3 = v0[62];
}

uint64_t OUTLINED_FUNCTION_91_2(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3D079C;
  v2 = *(v1 + 552);
  return *(v1 + 512);
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return sub_1CA948DA8();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_1CA94BFF8();
}

uint64_t OUTLINED_FUNCTION_17_6()
{
  result = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  return result;
}

void OUTLINED_FUNCTION_17_11()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[36];
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return sub_1CA94D748();
}

uint64_t OUTLINED_FUNCTION_17_14()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
}

uint64_t OUTLINED_FUNCTION_17_18@<X0>(uint64_t a1@<X8>)
{

  return sub_1CA5C3FA4(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_17_20()
{
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_1CA94D588();
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_1CA94C308();
}

void OUTLINED_FUNCTION_75_6()
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, uint64_t a2)
{
  v4 = v2[51];
  v5 = v2[9];
  v6 = v2[39];

  return __swift_storeEnumTagSinglePayload(v6, a2, 1, v5);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 OUTLINED_FUNCTION_2_7()
{
  result = *(v0 - 176);
  *(v0 - 160) = *(v0 - 192);
  *(v0 - 144) = result;
  v2 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = &a9 - *(v9 + 120);

  return sub_1CA948D98();
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{
  *(a1 + 8) = sub_1CA30D1E0;
  v2 = v1[17];
  v3 = v1[15];
  return v1[11];
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3180F0;
  v2 = *(v1 + 320);
  return *(v1 + 344);
}

int8x16_t OUTLINED_FUNCTION_2_17(int8x16_t *a1)
{
  *(v1 + 40) = a1;
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return swift_dynamicCast();
}

_OWORD *OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_1CA2C0A20(&a22, &a11);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  result = a4 + 16;
  v7 = *(a3 + 16);
  v8 = *(a4 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_2_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  *(v1 - 184) = 0xE500000000000000;
  return v1 - 192;
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  v2 = *(v0 - 128);

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_2_27()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_2_29(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_30@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v2 + a1 + 8);
  v6 = *(v2 + a1 + 16);
  v7 = *(v2 + a1 + 24);
  v8 = (v1 + a1);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];

  return sub_1CA410BD0(v4, v5, v6, v7, v9, v10, v11, v12);
}

void OUTLINED_FUNCTION_2_33(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_2_42(uint64_t a1)
{
  *(a1 + 8) = sub_1CA515EF0;
  v2 = *(v1 + 32);
  return *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_2_46(uint64_t a1, uint64_t a2)
{

  return sub_1CA25B374(v2, a2);
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_1CA94D1B8();
}

uint64_t OUTLINED_FUNCTION_2_54(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 8 * v3 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_56()
{
  v13 = v0[93];
  v3 = v0[91];
  *(v1 - 232) = v0[92];
  *(v1 - 224) = v3;
  v4 = v0[89];
  *(v1 - 216) = v0[90];
  *(v1 - 208) = v4;
  v5 = v0[87];
  *(v1 - 200) = v0[88];
  *(v1 - 192) = v5;
  v6 = v0[83];
  *(v1 - 184) = v0[86];
  *(v1 - 176) = v6;
  v7 = v0[77];
  *(v1 - 168) = v0[80];
  *(v1 - 160) = v7;
  v8 = v0[75];
  *(v1 - 152) = v0[76];
  *(v1 - 144) = v8;
  v9 = v0[72];
  *(v1 - 136) = v0[73];
  *(v1 - 128) = v9;
  v10 = v0[70];
  *(v1 - 120) = v0[71];
  *(v1 - 112) = v10;
  v11 = v0[68];
  *(v1 - 104) = v0[69];
  *(v1 - 96) = v11;
  *(v1 - 88) = v0[66];
}

void OUTLINED_FUNCTION_2_57()
{
  v1[12] = sub_1CA610AB0;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 56) = a12;
  *(v12 + 24) = sub_1CA62C544;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_2_60()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_61()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA2E5678();
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return sub_1CA948DA8();
}

uint64_t OUTLINED_FUNCTION_13_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1CA25C3BC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_13_7@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1CA308D4C(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_13_8()
{
  v1 = v0[60];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[50];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[38];
}

void OUTLINED_FUNCTION_13_12()
{
  v1 = v0[58];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];
}

uint64_t OUTLINED_FUNCTION_13_13()
{
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_13_20()
{
  v2 = **(v1 - 328);
  result = v0;
  v4 = *(v1 - 312);
  return result;
}

void OUTLINED_FUNCTION_13_22()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
}

__n128 OUTLINED_FUNCTION_13_23(__n128 *a1)
{
  result = *(v1 - 400);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_24()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_13_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_29()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_13_31(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_33(uint64_t a1)
{
  *(a1 + 8) = sub_1CA5EC754;
  v2 = v1[45];
  v3 = v1[46];
  v5 = v1[20];
  return v1[21];
}

id OUTLINED_FUNCTION_13_34()
{

  return sub_1CA2F9F14(v1, v3, v4, v5, 0, 0, v0, v2);
}

void OUTLINED_FUNCTION_100_0(uint64_t a1@<X8>)
{
  *(v6 + 8 * a1) = v2 | v1;
  *(*(v3 + 48) + 8 * v4) = v5;
  v7 = *(v3 + 16);
}

uint64_t OUTLINED_FUNCTION_100_1(unint64_t *a1, uint64_t a2)
{

  return sub_1CA323C24(a1, a2);
}

uint64_t OUTLINED_FUNCTION_100_2()
{
  v2 = v0[145];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[128];
}

uint64_t OUTLINED_FUNCTION_100_3()
{

  return sub_1CA6A9170(1);
}

uint64_t sub_1CA25F81C(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

void OUTLINED_FUNCTION_48()
{

  JUMPOUT(0x1CCAA22D0);
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  v2 = *(v0 + 40);

  return sub_1CA94CFC8();
}

uint64_t OUTLINED_FUNCTION_48_3()
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_48_5()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v2;
  *(v3 - 88) = v0;
  v5 = *(v3 - 96);

  return sub_1CA94D738();
}

void OUTLINED_FUNCTION_48_6(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
}

void OUTLINED_FUNCTION_48_8()
{
}

void OUTLINED_FUNCTION_1_14()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[6];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3887A0;
  v2 = v1[17];
  v3 = v1[15];
  return v1[11];
}

void OUTLINED_FUNCTION_1_21()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[50];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[41];
  v8 = v0[38];
  v9 = v0[35];
  v10 = v0[32];
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3E72D0;
  v2 = v1[15];
  v3 = v1[11];
  v4 = v1[8];
  return v1[6];
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

double OUTLINED_FUNCTION_1_28@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_30@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v6 = v3[1];

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_1_33()
{
  v19 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  *(v1 - 256) = v0[55];
  *(v1 - 248) = v3;
  v6 = v0[51];
  v5 = v0[52];
  *(v1 - 240) = v4;
  *(v1 - 232) = v5;
  v8 = v0[47];
  v7 = v0[48];
  *(v1 - 224) = v6;
  *(v1 - 216) = v7;
  v9 = v0[46];
  *(v1 - 208) = v8;
  *(v1 - 200) = v9;
  v10 = v0[41];
  *(v1 - 192) = v0[43];
  *(v1 - 184) = v10;
  v11 = v0[35];
  *(v1 - 176) = v0[38];
  *(v1 - 168) = v11;
  v13 = v0[28];
  v12 = v0[29];
  *(v1 - 160) = v0[32];
  *(v1 - 152) = v12;
  v15 = v0[26];
  v14 = v0[27];
  *(v1 - 144) = v13;
  *(v1 - 136) = v14;
  v16 = v0[25];
  *(v1 - 128) = v15;
  *(v1 - 120) = v16;
  v17 = v0[21];
  *(v1 - 112) = v0[22];
  *(v1 - 104) = v17;
  *(v1 - 96) = v0[18];
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[24];
}

void OUTLINED_FUNCTION_1_35(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, vDSP_Length a6)
{

  vDSP_dotprD(a1, 1, (v6 + 32), 1, (v7 - 120), a6);
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return sub_1CA948D18();
}

uint64_t OUTLINED_FUNCTION_1_38()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_1_44()
{

  sub_1CA2E739C();
}

uint64_t OUTLINED_FUNCTION_1_45()
{
  result = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  v12 = v0[131];
  v13 = v0[130];
  v14 = v0[129];
  v15 = v0[126];
  v16 = v0[125];
  v17 = v0[122];
  v18 = v0[119];
  v19 = v0[118];
  v20 = v0[117];
  v21 = v0[116];
  v22 = v0[115];
  v23 = v0[114];
  v24 = v0[113];
  v25 = v0[112];
  v26 = v0[111];
  v27 = v0[110];
  v28 = v0[109];
  v29 = v0[108];
  v30 = v0[107];
  v31 = v0[104];
  v32 = v0[103];
  v33 = v0[102];
  v34 = v0[99];
  v35 = v0[98];
  v36 = v0[97];
  v37 = v0[96];
  v11 = v0[95];
  v38 = v0[94];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_1_49()
{
  v1[12] = sub_1CA4F4758;
  v1[13] = v0;
  v1[14] = v2;
}

id OUTLINED_FUNCTION_1_52()
{

  return [v0 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_1_55()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

void OUTLINED_FUNCTION_1_56()
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_14_2()
{
}

void OUTLINED_FUNCTION_9_6()
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[34];
  v5 = *(v2 + 16);
  v2 += 16;
  v6 = v0 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v7 = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[19];
  v0[35] = v0[18];
  v0[36] = v3;
  v5 = *(v1 + 16);
  result = v1 + 16;
  v6 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v3 = v1[195];
  v4 = v1[192];
  v5 = v1[190];
  *(v2 - 152) = v1[189];
  *(v2 - 144) = v5;
  v6 = v1[188];
  *(v2 - 136) = v1[187];
  *(v2 - 128) = v6;
  result = v1[183];
  *(v2 - 112) = v1[173];
  *(v2 - 104) = v0;
  v8 = v1[168];
  *(v2 - 120) = v1[167];
  v9 = v1[166];
  v10 = v1[160];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = a11 + 40;
  v12 = *(a11 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t result)
{
  *(v1 + 144) = v2;
  v3 = v1 + 144;
  *(v3 - 8) = result;
  *(v3 - 64) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_19()
{
  v1 = **(v0 - 312);
  result = *(v0 - 272);
  v3 = *(v0 - 288);
  return result;
}

void OUTLINED_FUNCTION_9_20()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_9_25()
{
  v2 = v1[10];
  v4 = v1[6];
  result = v1[7];
  v5 = v1[5];
  v1[37] = *v2;
  v1[38] = v2[1];
  v6 = *(v4 + 32);
  v7 = v2 + *(v0 + 48);
  return result;
}

id OUTLINED_FUNCTION_9_27(float a1)
{
  *v1 = a1;
  v5 = *(v3 + 1096);

  return [v2 v5];
}

id OUTLINED_FUNCTION_9_30(uint64_t a1)
{

  return [v1 (v2 + 2108)];
}

id OUTLINED_FUNCTION_9_35()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_9_36(uint64_t a1)
{
  *(v2 + 24) = a1;
  *v2 = v1;
  *(v2 + 32) = 2;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_9_37()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = *(v0 + 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_50_1()
{

  sub_1CA3230EC(v2, v3, v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t result)
{
  v1 = *(result + 56);
  *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[64];
  v10 = v0[61];
  v11 = v0[58];
  v12 = v0[55];
  v13 = v0[52];
  v14 = v0[51];
  v15 = v0[48];
  v16 = v0[45];
  v3 = v0[41];
  *(v1 - 96) = v0[42];
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_50_8()
{
  v4 = *(v3 + 32);
  v5 = *(v1 + 56) + *(v3 + 72) * v0;
  return v2;
}

uint64_t LibraryModel.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_52_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v4, v5, v6);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v7, v8, v9);
  sub_1CA94BC78();
  v10 = type metadata accessor for LibraryModel(0);
  v11 = *(v10 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_76();
  sub_1CA25C3BC(v12, &unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_75();
  sub_1CA25C3BC(v13, &unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_70();
  result = sub_1CA94BDC8();
  *(a1 + *(v10 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 296);
  v4 = *(v2 + 272);
  __swift_storeEnumTagSinglePayload(v3, a2, 1, v4);
  return __swift_getEnumTagSinglePayload(v3, 1, v4);
}

void OUTLINED_FUNCTION_10_8()
{
  v1 = *(v0[31] + *(v0[29] + 36));
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[36];
}

void OUTLINED_FUNCTION_10_11()
{
  v1[12] = sub_1CA3CD588;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_10_12()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_17()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10_20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t, uint64_t, void **))
{

  sub_1CA50F12C(v4, 1953066581, 0xE400000000000000, a4);
}

double OUTLINED_FUNCTION_10_21@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_10_25(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_10_28()
{

  JUMPOUT(0x1CCAA1300);
}

int8x16_t OUTLINED_FUNCTION_10_31(int8x16_t *a1)
{
  v1[2].i64[0] = a1;
  result = vextq_s8(v1[1], v1[1], 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_37()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_38(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[29];
  v4 = v2[26];
  v5 = v2[27];
  return v2[28];
}

uint64_t OUTLINED_FUNCTION_10_39(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  *(v0 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  *(a1 + 8) = sub_1CA2A9E50;
  v2 = v1[17];
  v3 = v1[15];
  return v1[11];
}

void OUTLINED_FUNCTION_7_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  *(v1 - 120) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  v2 = v0[81];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
}

uint64_t OUTLINED_FUNCTION_7_16()
{
  v13 = v0[94];
  v14 = v0[93];
  v3 = v0[89];
  *(v1 - 256) = v0[92];
  *(v1 - 248) = v3;
  v4 = v0[85];
  *(v1 - 240) = v0[88];
  *(v1 - 232) = v4;
  v5 = v0[83];
  *(v1 - 224) = v0[84];
  *(v1 - 216) = v5;
  v6 = v0[81];
  *(v1 - 208) = v0[82];
  *(v1 - 200) = v6;
  v7 = v0[77];
  *(v1 - 192) = v0[80];
  *(v1 - 184) = v7;
  *(v1 - 176) = v0[76];
  v8 = v0[74];
  *(v1 - 152) = v0[75];
  *(v1 - 144) = v8;
  v9 = v0[70];
  *(v1 - 136) = v0[73];
  *(v1 - 128) = v9;
  v10 = v0[63];
  v11 = v0[64];
  *(v1 - 120) = v0[67];
  *(v1 - 112) = v11;
  *(v1 - 104) = v10;
}

void OUTLINED_FUNCTION_7_18()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA2E5ACC();
}

void OUTLINED_FUNCTION_7_22()
{
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[64];
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[51];
  v13 = v0[48];
  v14 = v0[45];
  v1 = v0[41];
  v2 = v0[42];
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_1CA4D7250(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_7_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_29()
{
  v2 = *(*(v1 - 472) + 104);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_7_30()
{
  v2[12] = sub_1CA44E498;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_7_31()
{
}

void OUTLINED_FUNCTION_7_32()
{

  JUMPOUT(0x1CCAA1300);
}

void OUTLINED_FUNCTION_7_33(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_7_34()
{
  v2 = *(v0 + 8);
  result = *(v1 - 88);
  v4 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6AE00](a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_7_37(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;
  *(v2 - 136) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_38()
{
  result = v0[143];
  v2 = v0[132];
  v3 = *(v0[133] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_39@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_unknownObjectRetain();
}

id OUTLINED_FUNCTION_7_42(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_7_44()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[19];
  v0[31] = v0[18];
  v0[32] = v3;
  v5 = *(v1 + 16);
  result = v1 + 16;
  v6 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_4()
{
  v2 = v0[36];
  result = v0[37];
  v3 = v0[34];
  v4 = *(v0[35] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_5()
{
}

void OUTLINED_FUNCTION_70_8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t OUTLINED_FUNCTION_70_10()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1CA2612D4()
{
  qword_1EC442B20 = 0xD000000000000017;
  *algn_1EC442B28 = 0x80000001CA9AAA90;
  qword_1EC442B30 = swift_getKeyPath();
  unk_1EC442B38 = 0xD000000000000013;
  qword_1EC442B40 = 0x80000001CA9AAAB0;
  result = swift_getKeyPath();
  qword_1EC442B48 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_212()
{
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_7()
{
  result = v0[126];
  v2 = v0[125];
  v3 = v0[123];
  v4 = *(v0[124] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t result)
{
  *(result + 8) = sub_1CA41F944;
  v2 = *(v1 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[130];
  v16 = v0[127];
  v17 = v0[124];
  v18 = v0[121];
  v19 = v0[118];
  v20 = v0[115];
  v21 = v0[114];
  v22 = v0[113];
  v23 = v0[112];
  v24 = v0[111];
  v25 = v0[110];
  v26 = v0[107];
  v27 = v0[104];
  v28 = v0[101];
  v29 = v0[98];
  v30 = v0[95];
  v31 = v0[92];
  v32 = v0[89];
  v33 = v0[88];
  v34 = v0[85];
  v35 = v0[84];
  v36 = v0[83];
  v37 = v0[80];
  v38 = v0[79];
  v39 = v0[78];
  v40 = v0[77];
  v41 = v0[74];
  v42 = v0[73];
  v43 = v0[70];
  v44 = v0[69];
  v45 = v0[68];
  v46 = v0[67];
  v47 = v0[66];
  v48 = v0[65];
  v49 = v0[64];
  v50 = v0[63];
  v51 = v0[60];
  v52 = v0[59];
  v53 = v0[58];
  v54 = v0[57];
  v55 = v0[56];
  v56 = v0[55];
  v57 = v0[54];
  v58 = v0[53];
  v59 = v0[52];
  v60 = v0[51];
  v61 = v0[48];
  v3 = v0[46];
  *(v1 - 256) = v0[47];
  *(v1 - 248) = v3;
  v4 = v0[41];
  *(v1 - 240) = v0[43];
  *(v1 - 232) = v4;
  v5 = v0[35];
  *(v1 - 224) = v0[38];
  *(v1 - 216) = v5;
  v7 = v0[28];
  v6 = v0[29];
  *(v1 - 208) = v0[32];
  *(v1 - 200) = v6;
  v9 = v0[26];
  v8 = v0[27];
  *(v1 - 192) = v7;
  *(v1 - 184) = v8;
  v10 = v0[25];
  *(v1 - 176) = v9;
  *(v1 - 168) = v10;
  v11 = v0[21];
  *(v1 - 160) = v0[22];
  *(v1 - 152) = v11;
  *(v1 - 144) = v0[18];
}

uint64_t OUTLINED_FUNCTION_25_12(uint64_t a1)
{

  return sub_1CA30F7DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_25_16(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_25_17()
{

  return sub_1CA94D678();
}

void OUTLINED_FUNCTION_25_19()
{
  v5 = *(v3 - 216);

  sub_1CA2DAD6C(v0, v1, v2, v5);
}

unint64_t OUTLINED_FUNCTION_26_5(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_9@<X0>(uint64_t a1@<X8>)
{
  v5 = v2[141];
  v6 = v2[140];
  v7 = v2[136];
  v8 = v2[135];
  *(v4 - 104) = (v1 - 1) & v1;
  v9 = __clz(__rbit64(v1)) | (v3 << 6);
  v10 = (*(a1 + 48) + 16 * v9);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(a1 + 56) + *(v7 + 72) * v9;
  v14 = *(v7 + 16);
  return v6;
}

id OUTLINED_FUNCTION_26_11(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[130];
  v16 = v0[127];
  v17 = v0[124];
  v18 = v0[121];
  v19 = v0[118];
  v20 = v0[115];
  v21 = v0[114];
  v22 = v0[113];
  v23 = v0[112];
  v24 = v0[111];
  v25 = v0[110];
  v26 = v0[107];
  v27 = v0[104];
  v28 = v0[101];
  v29 = v0[98];
  v30 = v0[95];
  v31 = v0[92];
  v32 = v0[89];
  v33 = v0[88];
  v34 = v0[85];
  v35 = v0[84];
  v36 = v0[83];
  v37 = v0[80];
  v38 = v0[79];
  v39 = v0[78];
  v40 = v0[77];
  v41 = v0[74];
  v42 = v0[73];
  v43 = v0[70];
  v44 = v0[69];
  v45 = v0[68];
  v46 = v0[67];
  v47 = v0[66];
  v48 = v0[65];
  v49 = v0[64];
  v50 = v0[63];
  v51 = v0[60];
  v52 = v0[59];
  v53 = v0[58];
  v54 = v0[57];
  v55 = v0[56];
  v56 = v0[55];
  v57 = v0[54];
  v58 = v0[53];
  v59 = v0[52];
  v60 = v0[51];
  v3 = v0[47];
  *(v1 - 256) = v0[48];
  *(v1 - 248) = v3;
  v4 = v0[43];
  *(v1 - 240) = v0[46];
  *(v1 - 232) = v4;
  v5 = v0[38];
  *(v1 - 224) = v0[41];
  *(v1 - 216) = v5;
  v6 = v0[32];
  *(v1 - 208) = v0[35];
  *(v1 - 200) = v6;
  v7 = v0[28];
  *(v1 - 192) = v0[29];
  *(v1 - 184) = v7;
  v8 = v0[26];
  *(v1 - 176) = v0[27];
  *(v1 - 168) = v8;
  v10 = v0[21];
  v9 = v0[22];
  *(v1 - 160) = v0[25];
  *(v1 - 152) = v9;
  v11 = v0[18];
  *(v1 - 144) = v10;
  *(v1 - 136) = v11;
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x18);
  return result;
}

void OUTLINED_FUNCTION_26_16()
{
  v1 = v0[31];
  v5 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
}

id OUTLINED_FUNCTION_26_17(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_1CA94C698();
}

__n128 *OUTLINED_FUNCTION_26_22@<X0>(__n128 *result@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[4].n128_u64[0] = a2;
  return result;
}

WorkflowKit::LibraryModel::InnerLibraryNode::Enum_optional __swiftcall LibraryModel.InnerLibraryNode.Enum.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for LibraryModel.InnerLibraryNode.Enum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CA261B8C@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryModel.InnerLibraryNode.Enum.rawValue.getter();
  *a1 = result;
  return result;
}

id WFLinkActionBundleIdentifierOverrides(void *a1)
{
  v1 = WFLinkActionBundleIdentifierOverrides_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFLinkActionBundleIdentifierOverrides_onceToken, &__block_literal_global_726);
  }

  v3 = [WFLinkActionBundleIdentifierOverrides_linkActionBundleIdentifierOverrides objectForKeyedSubscript:v2];

  return v3;
}

void WFConfigureParameterRelationResources(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 resourceObjectsOfClass:{objc_opt_class(), 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 parameterKey];
        v12 = [v4 parameterForKey:v11];
        [v10 setupWithAction:v4 parameter:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_6756);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_23_8();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v17 = OUTLINED_FUNCTION_27_1(v16);
  if (*(v18 + 84) == v11)
  {
    v19 = v17;
    v20 = v9;
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    result = OUTLINED_FUNCTION_27_1(v21);
    if (*(v23 + 84) != v11)
    {
      *(v9 + *(v10 + 24)) = (v8 - 1);
      return result;
    }

    v19 = result;
    v20 = v9 + *(v10 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v20, v8, v8, v19);
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  result = v0[31];
  v5 = v0[29];
  v6 = v0[27];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[33];
  v4 = v2[30];
  v5 = v2[31];
  return v2[32];
}

uint64_t OUTLINED_FUNCTION_14_12()
{

  return sub_1CA94B348();
}

uint64_t OUTLINED_FUNCTION_14_14@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{

  return sub_1CA3D4138(a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_14_19()
{
  *(v3 - 96) = v0;
  v4 = *(v2 + 8);
  return v1;
}

void OUTLINED_FUNCTION_14_20()
{

  JUMPOUT(0x1CCAA4BF0);
}

id OUTLINED_FUNCTION_14_23()
{
  v7 = *(v5 - 96);

  return sub_1CA2F9F14(v0, v7, v1, v2, 0, 0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_14_24()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_28()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

id OUTLINED_FUNCTION_14_30(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return sub_1CA94CF18();
}

uint64_t OUTLINED_FUNCTION_14_33()
{

  return sub_1CA94D218();
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  v3 = v0[93];
  *(v1 - 256) = v0[94];
  *(v1 - 248) = v3;
  v4 = v0[89];
  *(v1 - 240) = v0[92];
  *(v1 - 232) = v4;
  v5 = v0[85];
  *(v1 - 224) = v0[88];
  *(v1 - 216) = v5;
  v6 = v0[83];
  *(v1 - 208) = v0[84];
  *(v1 - 200) = v6;
  v7 = v0[81];
  *(v1 - 192) = v0[82];
  *(v1 - 184) = v7;
  v8 = v0[77];
  *(v1 - 176) = v0[80];
  *(v1 - 168) = v8;
  v9 = v0[75];
  *(v1 - 160) = v0[76];
  *(v1 - 152) = v9;
  v10 = v0[73];
  *(v1 - 144) = v0[74];
  *(v1 - 136) = v10;
  v11 = v0[67];
  *(v1 - 128) = v0[70];
  *(v1 - 120) = v11;
  v12 = v0[63];
  *(v1 - 112) = v0[64];
  *(v1 - 104) = v12;
}

void OUTLINED_FUNCTION_72_2()
{
  *(v5 + 16) = v3;
  v6 = (v5 + 24 * v4);
  v6[4] = v1;
  v6[5] = v2;
  v6[6] = v0;
}

uint64_t OUTLINED_FUNCTION_72_3()
{
  result = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v0[50] = *(v3 + 8);
  v0[51] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = OUTLINED_FUNCTION_27_1(v12);
  if (*(v14 + 84) == a2)
  {
    v15 = v13;
    v16 = a1;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v18 = OUTLINED_FUNCTION_27_1(v17);
    if (*(v19 + 84) != a2)
    {
      return OUTLINED_FUNCTION_26_0(*(a1 + *(a3 + 24)));
    }

    v15 = v18;
    v16 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v16, a2, v15);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_1()
{
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  return sub_1CA94C858();
}

uint64_t OUTLINED_FUNCTION_31_4()
{
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
}

uint64_t OUTLINED_FUNCTION_31_6(unint64_t *a1)
{

  return sub_1CA25C3BC(a1, v1, v2);
}

void OUTLINED_FUNCTION_31_7(uint64_t a1)
{

  sub_1CA2B8E70(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_31_9()
{

  return sub_1CA948B68();
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return sub_1CA94AEB8();
}

uint64_t OUTLINED_FUNCTION_31_13()
{
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
}

uint64_t sub_1CA265084(uint64_t a1)
{
  v2 = sub_1CA378058();

  return MEMORY[0x1EEDF4580](a1, v2);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_15_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_5@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v5;
  v1[3] = v4;
  v1[4] = v6;
  v1[5] = v7;

  return sub_1CA94C218();
}

void OUTLINED_FUNCTION_15_7()
{
  v1 = v0[125];
  v2 = v0[124];
  v3 = v0[123];
  v4 = *(v2 + 16);
  v5 = *(v2 + 80);
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_1CA94C3A8();
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  result = *(v0 - 224);
  v2 = *(v0 - 216);
  v4 = *(v0 - 208);
  v3 = *(v0 - 200);
  v5 = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_13()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_14()
{
  v1 = *(v0 - 168);
  v2 = **(v0 - 160);
  return *(v0 - 304);
}

uint64_t OUTLINED_FUNCTION_15_15()
{
  v2 = *(v0 - 200);

  return sub_1CA94D6F8();
}

void OUTLINED_FUNCTION_15_19()
{
  v2 = *(v0 - 72);

  sub_1CA583310();
}

uint64_t OUTLINED_FUNCTION_15_24()
{
  v2 = *(v0 - 96);

  return sub_1CA94AEB8();
}

uint64_t OUTLINED_FUNCTION_15_26(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_1CA2653C8()
{
  sub_1CA378058();

  return sub_1CA94B8B8();
}

void sub_1CA2655AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFInitializeDisallowedDirectories()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E6996E20];
  v1 = *MEMORY[0x1E6997198];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:v1];

  [v0 addDisallowedDirectory:v3];
  v4 = MEMORY[0x1E6996E20];
  v5 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  [v4 addDisallowedDirectory:v5];

  v6 = [MEMORY[0x1E695DFF8] wf_realHomeDirectoryURL];
  v7 = MEMORY[0x1E6996E20];
  v8 = [v6 URLByAppendingPathComponent:@"Media" isDirectory:1];
  [v7 addDisallowedDirectory:v8];

  v9 = [v6 URLByAppendingPathComponent:@"Library/CoreDuet/" isDirectory:1];
  [MEMORY[0x1E6996E20] addDisallowedDirectory:v9];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [&unk_1F4A9B650 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(&unk_1F4A9B650);
        }

        v14 = MEMORY[0x1E6996E20];
        v15 = [v6 URLByAppendingPathComponent:*(*(&v27 + 1) + 8 * v13) isDirectory:1];
        [v14 addDisallowedDirectory:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [&unk_1F4A9B650 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [&unk_1F4A9B668 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(&unk_1F4A9B668);
        }

        v20 = MEMORY[0x1E6996E20];
        v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v23 + 1) + 8 * v19) isDirectory:1];
        [v20 addDisallowedDirectory:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [&unk_1F4A9B668 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

id getWFCloudKitLogObject()
{
  if (getWFCloudKitLogObject_onceToken != -1)
  {
    dispatch_once(&getWFCloudKitLogObject_onceToken, &__block_literal_global_40790);
  }

  v1 = getWFCloudKitLogObject_log;

  return v1;
}

void __getWFCloudKitLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "CloudKit");
  v1 = getWFCloudKitLogObject_log;
  getWFCloudKitLogObject_log = v0;
}

uint64_t sub_1CA2660D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

void sub_1CA266518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1CA266F2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_34_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v6[3] = result;
  v6[4] = a2;
  *v6 = v2;
  *v4 = v3;
  v7 = *(v5 + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_11()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 256);

  return sub_1CA43D470(0, v3);
}

id OUTLINED_FUNCTION_34_13(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_34_15@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 296);

  return sub_1CA949C58();
}

uint64_t OUTLINED_FUNCTION_34_17()
{

  return sub_1CA94C368();
}

void sub_1CA267294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA267734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA267B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void *__TCCLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 2);
  TCCLibrary_sLib = result;
  return result;
}

Class initHMHomeManager()
{
  if (HomeKitLibrary_sOnce_1603 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_1603, &__block_literal_global_338);
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager = result;
  getHMHomeManagerClass = HMHomeManagerFunction;
  return result;
}

void sub_1CA2683E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initTCCAccessPreflight(uint64_t a1, uint64_t a2)
{
  if (TCCLibrary_sOnce != -1)
  {
    dispatch_once(&TCCLibrary_sOnce, &__block_literal_global_31797);
  }

  v4 = dlsym(TCCLibrary_sLib, "TCCAccessPreflight");
  softLinkTCCAccessPreflight = v4;
  if (!v4)
  {
    return 2;
  }

  return (v4)(a1, a2);
}

Class initUIWebClip()
{
  if (UIKitLibrary_sOnce_58911 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_58911, &__block_literal_global_301);
  }

  result = objc_getClass("UIWebClip");
  classUIWebClip = result;
  getUIWebClipClass = UIWebClipFunction;
  return result;
}

id WFLocalizedStringResourceWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696B100];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v8 = WFCurrentBundle();
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:v5 defaultValue:v4 table:0 locale:v7 bundleURL:v9];

  return v10;
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void __WFReferencedEntityMetadataFromMetadata(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __WFReferencedEntityMetadataFromMetadata(LNEntityMetadata * _Nonnull __strong, LNEntityMetadata * _Nonnull __strong, NSString * _Nonnull __strong, WFAppIntentsMetadataProvider * _Nonnull __strong, NSMapTable<NSString *, LNEntityMetadata *> * _Nonnull __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"WFLinkActionProvider.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"referencedEntityMetadata"}];
  }

  v14 = [v9 properties];
  v15 = [v14 if_compactMap:&__block_literal_global_717];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ____WFReferencedEntityMetadataFromMetadata_block_invoke_2;
  v22[3] = &unk_1E8380658;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  v26 = v13;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  [v15 enumerateObjectsUsingBlock:v22];
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return sub_1CA94D918();
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1CA94D1C8();
}

uint64_t OUTLINED_FUNCTION_6_11()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{
  *(v1 + 24) = a1;
  *v1 = v2;
  *(v1 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return MEMORY[0x1EEE4AD08](v2, v0, v1, v3);
}

unint64_t OUTLINED_FUNCTION_6_17@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 16) = a1;
  *(v3 - 8) = v1;
  *(v3 + 8) = v2;

  return sub_1CA27BAF0();
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1, uint64_t a2)
{
  result = v2[11];
  v4 = v2[8];
  v5 = v2[9];
  v6 = *(v5 + 16);
  v5 += 16;
  v7 = a2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v8 = *(v5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  *(v0 + 24) = sub_1CA43DE90;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return sub_1CA94BFF8();
}

void OUTLINED_FUNCTION_6_29()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_6_32()
{
  v5 = *(v0 + 64);
  *(v5 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v6 = (*(v5 + 48) + 16 * v2);
  *v6 = v4;
  v6[1] = v3;
  return *(v5 + 56) + *(v1 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_6_35()
{
  v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_1CA69B4CC(v2);
}

uint64_t OUTLINED_FUNCTION_6_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1CA26B54C(v9, v10, va);
}

unint64_t OUTLINED_FUNCTION_6_37()
{

  return sub_1CA27BAF0();
}

void OUTLINED_FUNCTION_6_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = *(a35 + 16) + 1;

  sub_1CA2E702C();
}

uint64_t OUTLINED_FUNCTION_6_41()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_44@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_1CA94C218();
}

void OUTLINED_FUNCTION_6_47()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = v0[8];
}

uint64_t OUTLINED_FUNCTION_6_48()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_1CA94D5F8();
}

uint64_t WFDeviceCapabilityResource.init(mobileGestaltKey:value:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1CA94B4D8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = a1;
  *(v13 + 1) = a2;
  v13[16] = a3;
  (*(v14 + 104))(v13, *MEMORY[0x1E69DB3D0]);
  v15 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  WFDeviceCapabilityResource.init(capability:)(v13);
  v17 = v16;
  swift_getObjectType();
  v18 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x30);
  v19 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x34);
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t type metadata accessor for WFDeviceCapabilityResource()
{
  result = qword_1EDB9F7F8;
  if (!qword_1EDB9F7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void WFDeviceCapabilityResource.init(capability:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkflowKit26WFDeviceCapabilityResource_capability;
  v4 = sub_1CA94B4D8();
  OUTLINED_FUNCTION_1_0(v4);
  v6 = v5;
  (*(v7 + 16))(&v1[v3], a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443DB8, &unk_1CA983950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v20 = sub_1CA94C3A8();
  v21 = v9;
  v10 = MEMORY[0x1E69E6158];
  sub_1CA94D3A8();
  v11 = type metadata accessor for WFDeviceCapabilityResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  v14 = sub_1CA94C3A8();
  v16 = v15;

  *(inited + 96) = v10;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  sub_1CA94C1E8();
  v17 = sub_1CA94C1A8();

  v19.receiver = v1;
  v19.super_class = v11;
  v18 = objc_msgSendSuper2(&v19, sel_initWithDefinition_, v17);

  if (v18)
  {
    (*(v6 + 8))(a1, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA26A4C8()
{
  v0 = sub_1CA9494E8();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v88 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v87 = v6 - v5;
  v7 = sub_1CA9494F8();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v92 = v14 - v13;
  v15 = sub_1CA949F78();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v90 = v17;
  v91 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v22 = v21 - v20;
  v23 = sub_1CA9495A8();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v93 = v25;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v83 - v31;
  if (qword_1EC441758 != -1)
  {
    OUTLINED_FUNCTION_2_60();
  }

  v33 = sub_1CA949528();
  __swift_project_value_buffer(v33, qword_1EC441760);
  sub_1CA949598();
  v34 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  (*(v93 + 16))(v30, v32, v23);
  v89 = v22;
  v35 = sub_1CA949F68();
  v36 = sub_1CA94CC38();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v86 = v32;
    v38 = v37;
    v39 = swift_slowAlloc();
    v84 = v0;
    v40 = v39;
    v94 = v39;
    *v38 = 136315138;
    sub_1CA26B4F4();
    v41 = sub_1CA94D798();
    v83 = v10;
    v42 = v23;
    v44 = v43;
    v45 = *(v93 + 8);
    v45(v30, v42);
    v46 = sub_1CA26B54C(v41, v44, &v94);
    v23 = v42;
    v10 = v83;

    *(v38 + 4) = v46;
    _os_log_impl(&dword_1CA256000, v35, v36, "Current Apple Intelligence availability: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v0 = v84;
    OUTLINED_FUNCTION_26();
    v32 = v86;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v45 = *(v93 + 8);
    v45(v30, v23);
  }

  (*(v90 + 8))(v89, v91);
  v47 = v92;
  sub_1CA949538();
  v48 = v10[11];
  v49 = OUTLINED_FUNCTION_5_49();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x1E69A0EF8])
  {
    v52 = OUTLINED_FUNCTION_6_46();
    (v45)(v52);
    v53 = v10[1];
    v54 = OUTLINED_FUNCTION_5_49();
    v55(v54);
    return 1;
  }

  v57 = v51;
  if (v51 != *MEMORY[0x1E69A0F00])
  {
    v76 = *MEMORY[0x1E69A11A0];
    v77 = OUTLINED_FUNCTION_6_46();
    (v45)(v77);
    if (v57 != v76)
    {
      v78 = v10[1];
      v79 = OUTLINED_FUNCTION_5_49();
      v80(v79);
      return 0;
    }

    return 1;
  }

  v91 = v45;
  v86 = v32;
  v58 = v23;
  v59 = v10[12];
  v60 = OUTLINED_FUNCTION_5_49();
  v61(v60);
  (*(v88 + 32))(v87, v47, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447960, &qword_1CA9906B8);
  v62 = sub_1CA9494C8();
  OUTLINED_FUNCTION_1_0(v62);
  v64 = v63;
  v66 = *(v65 + 72);
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981380;
  v69 = v68 + v67;
  v70 = *(v64 + 104);
  v70(v69, *MEMORY[0x1E69A1068], v62);
  v70(v69 + v66, *MEMORY[0x1E69A1058], v62);
  v70(v69 + 2 * v66, *MEMORY[0x1E69A10A8], v62);
  v70(v69 + 3 * v66, *MEMORY[0x1E69A1040], v62);
  v70(v69 + 4 * v66, *MEMORY[0x1E69A10C8], v62);
  v70(v69 + 5 * v66, *MEMORY[0x1E69A1010], v62);
  sub_1CA2E8EA8();
  v72 = v71;
  v73 = sub_1CA9494D8();
  v74 = sub_1CA6A911C(v72, v73);

  v75 = *(v74 + 16);

  if (v75)
  {
    v56 = 0;
  }

  else
  {
    v56 = [v85 isAppleIntelligenceOptedIn];
  }

  v81 = v86;
  (*(v88 + 8))(v87, v0);
  v91(v81, v58);
  return v56;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1CA26B4F4()
{
  result = qword_1EC441D90;
  if (!qword_1EC441D90)
  {
    sub_1CA9495A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441D90);
  }

  return result;
}

uint64_t sub_1CA26B54C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1CA94C218();
  v6 = sub_1CA26B774(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1CA25B374(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1CA26B610(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CA26B65C(a1, a2);
  sub_1CA26BA1C(&unk_1F49F1970);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CA26B65C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1CA94C4C8())
  {
    result = sub_1CA26B874(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1CA94D3F8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1CA94D4B8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1CA26B774(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CA26B610(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1CA94D4B8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1CA26B874(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443590, &qword_1CA9806A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t OUTLINED_FUNCTION_28_1(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_28_3()
{
}

id OUTLINED_FUNCTION_28_4(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

char *OUTLINED_FUNCTION_28_7(uint64_t a1)
{
  v5 = *(a1 + 48);
  *v1 = v4;
  v1[1] = v2;
  v6 = *(v3 + 32);
  return v1 + v5;
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  result = *(v0 + 120);
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1CA26BA1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1CA299ABC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CA26BB28(void *a1)
{
  v1 = [a1 availabilityAnnotations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNPlatformName(0);
  sub_1CA25B3D0(0, &qword_1EDB9FAC8, 0x1E69AC700);
  sub_1CA27203C();
  v3 = sub_1CA94C1C8();

  return v3;
}

void sub_1CA26BBBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1CA26C2D4(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR___WFSwiftAppShortcutDataSource__collections;
  v21 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446350, &qword_1CA98C930);
  sub_1CA94A068();
  (*(v8 + 32))(&a4[v12], v11, v7);
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider] = a1;
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle] = a3;
  v13 = type metadata accessor for AppShortcutDataSource();
  v20.receiver = a4;
  v20.super_class = v13;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v20, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_appShortcutsChanged name:*MEMORY[0x1E69ACB40] object:0];

  return v16;
}

uint64_t type metadata accessor for AppAssociatedShortcutsDataSource()
{
  result = qword_1EDB9F250;
  if (!qword_1EDB9F250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA26C4EC()
{
  if (!qword_1EDB9F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4441E8, &qword_1CA982AD0);
    v0 = sub_1CA94A0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB9F130);
    }
  }
}

void sub_1CA26C550()
{
  sub_1CA26C4EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CA26C5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F740, off_1E836F5A8);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA26C64C(uint64_t a1)
{
  *(a1 + 8) = sub_1CA26C5FC(&qword_1EDB9F118);
  result = sub_1CA26C5FC(&unk_1EDB9F120);
  *(a1 + 16) = result;
  return result;
}

size_t OUTLINED_FUNCTION_5_7(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_5_9()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 128);
  v3 = *(v1 + 120) + **(v1 + 120);
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_5_17()
{
  v1 = v0[19];
  v2 = v0[6];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  v2 = *(v0 + 48);

  return sub_1CA38125C(v2, type metadata accessor for LinkValueTransformContext);
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3C4C0C;
  v2 = *(v1 + 1160);
  return *(v1 + 936);
}

void OUTLINED_FUNCTION_5_24()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_5_26()
{
  result = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_1CA94D6F8();
}

uint64_t OUTLINED_FUNCTION_5_32(uint64_t a1)
{
  *(a1 + 8) = sub_1CA517714;
  v3 = *(v1 + 88);
  return *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_5_34(uint64_t a1)
{
  *(a1 + 8) = sub_1CA55CC08;
  v2 = *(v1 + 32);
  return *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_36()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_37(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 160);
  result = a1 + v1;
  v4 = *(v2 - 88);
  v5 = *(v2 - 72);
  v6 = *(v2 - 144);
  return result;
}

void OUTLINED_FUNCTION_5_40()
{

  sub_1CA2E739C();
}

void OUTLINED_FUNCTION_5_42()
{
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;
  v3[5] = 0;
  v3[15] = v0;
  v4 = v3[12];
  v5 = v3[13];
}

void OUTLINED_FUNCTION_5_43()
{
  v1[12] = sub_1CA609888;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return sub_1CA94D7F8();
}

uint64_t AppAssociatedShortcutsDataSource.init()()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_loader;
  v2 = [objc_opt_self() defaultDatabase];
  type metadata accessor for AppAssociatedShortcutsLoader();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v0 + v1) = v3;
  v4 = [v2 sortedVisibleAppAssociatedWorkflows];
  *(v0 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_loader);
  v6 = v4;

  v7 = sub_1CA26E9BC(v6);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4441E8, &qword_1CA982AD0);
  sub_1CA94A068();
  swift_endAccess();
  [*(v0 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result) registerObserver_];
  return v0;
}

void OUTLINED_FUNCTION_21_2()
{
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_4(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v1;

  return sub_1CA2C91E8(v2, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_8@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v4 = *(v1 - 184);
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  v1 = *(v0 + 1328);
  result = *(v0 + 1112);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1080);
  *(v0 + 1624) = **(v0 + 1136);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_14(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1CA26B54C(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_21_16()
{
  v4 = *(v3 + 32);
  v5 = *(v1 + 56) + *(v3 + 72) * v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_20()
{

  return sub_1CA94D1D8();
}

__n128 *OUTLINED_FUNCTION_21_22(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  *v3 = result;
  return result;
}

void OUTLINED_FUNCTION_21_23()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
}

void OUTLINED_FUNCTION_21_25(uint64_t a1@<X8>)
{
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = a1;
}

uint64_t OUTLINED_FUNCTION_21_26()
{

  return sub_1CA94D3C8();
}

void sub_1CA26CFFC()
{
  OUTLINED_FUNCTION_17_2();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_29_3(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_92();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_31_3();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_28_2();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

unint64_t OUTLINED_FUNCTION_0_7(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1CA26DAD0(a3);

  return sub_1CA275D84(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_0_25()
{
  v1 = v0[58];
  v2 = v0[51];
  v3 = *(v0[52] + 96);
  return v0[53];
}

uint64_t OUTLINED_FUNCTION_0_26()
{
  result = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[177];
  v7 = v0[176];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[171];
  v13 = v0[170];
  v14 = v0[169];
  v15 = v0[166];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];
  v29 = v0[148];
  v30 = v0[145];
  v31 = v0[144];
  v32 = v0[142];
  v33 = v0[141];
  v34 = v0[140];
  v35 = v0[139];
  v36 = v0[138];
  v37 = v0[137];
  v38 = v0[134];
  v39 = v0[133];
  v40 = v0[130];
  v41 = v0[127];
  v42 = v0[126];
  v43 = v0[125];
  v44 = v0[122];
  v45 = v0[119];
  v46 = v0[117];
  v47 = v0[116];
  v48 = v0[115];
  v49 = v0[112];
  v50 = v0[111];
  v51 = v0[110];
  v52 = v0[107];
  v53 = v0[104];
  v54 = v0[101];
  v11 = v0[98];
  v12 = v0[97];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_28()
{
  result = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v9 = v0[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{
  *(a1 + 8) = sub_1CA4372F8;
  v2 = *(v1 + 32);
  return *(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4 + 16;
  v5 = *(a4 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_38()
{
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v8 = v0[6];
}

void OUTLINED_FUNCTION_0_40()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[130];
  v6 = v0[127];
  v7 = v0[124];
  v8 = v0[121];
  v9 = v0[118];
  v10 = v0[115];
  v11 = v0[114];
  v12 = v0[113];
  v13 = v0[112];
  v14 = v0[111];
  v15 = v0[110];
  v16 = v0[107];
  v17 = v0[104];
  v18 = v0[101];
  v19 = v0[98];
  v20 = v0[95];
  v21 = v0[92];
  v22 = v0[89];
  v23 = v0[88];
  v24 = v0[85];
  v25 = v0[84];
  v26 = v0[83];
  v27 = v0[80];
  v28 = v0[79];
  v29 = v0[78];
  v30 = v0[77];
  v31 = v0[74];
  v32 = v0[73];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[68];
  v36 = v0[67];
  v37 = v0[66];
  v38 = v0[65];
  v39 = v0[64];
  v40 = v0[63];
  v41 = v0[60];
  v42 = v0[59];
  v43 = v0[58];
  v44 = v0[57];
}

uint64_t OUTLINED_FUNCTION_0_41()
{
  result = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{
  *(a1 + 8) = sub_1CA4FA314;
  v3 = *(v1 + 160);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_48()
{
  v2 = v0[27];
  result = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_0_51()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_1CA94C1A8();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_0_55()
{
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58()
{
  v2 = v1[43];
  v3 = v1[44];
  v4 = v1[39];
  return v0;
}

void OUTLINED_FUNCTION_0_63()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];
  v8 = v0[131];
  v9 = v0[130];
  v10 = v0[129];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[122];
  v14 = v0[119];
  v15 = v0[118];
  v16 = v0[117];
  v17 = v0[116];
  v18 = v0[115];
  v19 = v0[114];
  v20 = v0[113];
  v21 = v0[112];
  v22 = v0[111];
  v23 = v0[110];
  v24 = v0[109];
  v25 = v0[108];
  v26 = v0[107];
  v27 = v0[104];
  v28 = v0[103];
  v29 = v0[102];
  v30 = v0[99];
  v31 = v0[98];
  v32 = v0[97];
  v33 = v0[96];
  v34 = v0[95];
  v35 = v0[94];
  v36 = v0[93];
  v37 = v0[92];
  v6 = v0[91];
  v7 = v0[90];
}

void OUTLINED_FUNCTION_0_66()
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_0_67(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_68()
{
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
}

uint64_t OUTLINED_FUNCTION_0_71()
{

  return sub_1CA94D578();
}

void OUTLINED_FUNCTION_29_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v2 = v0[29];
  result = v0[30];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  return result;
}

unint64_t OUTLINED_FUNCTION_29_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;

  return sub_1CA271BF8();
}

uint64_t OUTLINED_FUNCTION_29_9()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_10@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_29_11(void *a1@<X8>)
{
  a1[(v4 >> 6) + 8] |= 1 << v4;
  v5 = (a1[6] + 16 * v4);
  *v5 = v3;
  v5[1] = v2;
  *(a1[7] + 8 * v4) = v1;
  v6 = a1[2];
}

uint64_t OUTLINED_FUNCTION_29_12()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_96(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

unint64_t OUTLINED_FUNCTION_29_14()
{

  return sub_1CA271BF8();
}

uint64_t OUTLINED_FUNCTION_29_15(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_29_17(uint64_t a1@<X8>)
{
  v1[21] = v2;
  v1[22] = v3;
  v1[23] = a1;
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_19_7()
{
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[163];
  v6 = v0[162];
  v7 = v0[159];
  v8 = v0[158];
  v9 = v0[157];
  v10 = v0[156];
  v11 = v0[155];
  v12 = v0[152];
  v13 = v0[151];
  v14 = v0[150];
  v15 = v0[149];
  v16 = v0[148];
  v17 = v0[145];
  v18 = v0[144];
  v19 = v0[142];
  v20 = v0[141];
  v21 = v0[140];
  v22 = v0[139];
  v23 = v0[138];
  v24 = v0[137];
  v25 = v0[134];
  v26 = v0[133];
  v27 = v0[130];
  v28 = v0[127];
  v29 = v0[126];
  v30 = v0[125];
  v31 = v0[122];
  v32 = v0[119];
  v33 = v0[117];
  v34 = v0[116];
  v35 = v0[115];
  v36 = v0[112];
  v37 = v0[111];
  v38 = v0[110];
  v39 = v0[107];
  v1 = v0[104];
  v40 = v0[101];
}

id OUTLINED_FUNCTION_19_8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

uint64_t OUTLINED_FUNCTION_19_10()
{
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[37];
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[15];
  v24 = v0[12];
  v25 = v0[11];
  v26 = v0[8];
  v27 = v0[7];
  *(v1 - 88) = v0[6];
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_1CA948E58();
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_19_14(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

void OUTLINED_FUNCTION_19_19()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
}

void OUTLINED_FUNCTION_19_20()
{

  JUMPOUT(0x1CCAA22D0);
}

uint64_t OUTLINED_FUNCTION_19_25()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(*(v2 + 8) + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_86()
{
  v1 = v0[42];
  v2 = v0[23];
  v3 = v0[21];
  v4 = *(v0[22] + 16);
  return v0[17];
}

void OUTLINED_FUNCTION_86_4()
{
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  v1 = *(v0 - 200);
  v2 = *(*(v0 - 192) + 8);
  return *(v0 - 208);
}

uint64_t OUTLINED_FUNCTION_18_4()
{
  v4 = __clz(__rbit64(v3)) | (v2 << 6);
  v5 = (*(v0 + 48) + 16 * v4);
  result = v5[1];
  v7 = *(*(v0 + 56) + 8 * v4);
  *v1 = *v5;
  v1[1] = result;
  v1[2] = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v1 = v0[32];
  result = v0[18];
  v3 = v0[16];
  v4 = *(v0[17] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_18_9(uint64_t a1)
{
  *(a1 + 8) = sub_1CA31477C;
  v2 = *(v1 + 168);
  return *(v1 + 152);
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_18_17()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
}

uint64_t OUTLINED_FUNCTION_18_18()
{
}

uint64_t OUTLINED_FUNCTION_18_19()
{

  return sub_1CA94A988();
}

id OUTLINED_FUNCTION_18_23()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_18_24()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_27()
{
  *(v1 + 424) = v0;
  v2 = *(v1 + 484);
  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 24);
  v7 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  *(v1 + 432) = v7;
  v8 = (v6 + *(v7 + 28));
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v10 = *(v4 + 104);
  return v3;
}

uint64_t OUTLINED_FUNCTION_18_30()
{
  v0 = _s6LayoutVMa(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

char *sub_1CA26E4B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

unint64_t sub_1CA26E4D4()
{
  result = qword_1EC441B20;
  if (!qword_1EC441B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
}

void OUTLINED_FUNCTION_12_7()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_11@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v5 = v2[93];
  *(v3 - 240) = v2[94];
  *(v3 - 232) = v5;
  v6 = v2[89];
  *(v3 - 224) = v2[92];
  *(v3 - 216) = v6;
  v7 = v2[85];
  *(v3 - 208) = v2[88];
  *(v3 - 200) = v7;
  v8 = v2[83];
  *(v3 - 192) = v2[84];
  *(v3 - 184) = v8;
  v9 = v2[81];
  *(v3 - 176) = v2[82];
  *(v3 - 168) = v9;
  v10 = v2[77];
  *(v3 - 160) = v2[80];
  *(v3 - 152) = v10;
  v11 = v2[75];
  *(v3 - 144) = v2[76];
  *(v3 - 136) = v11;
  v12 = v2[73];
  *(v3 - 128) = v2[74];
  *(v3 - 120) = v12;
  v13 = v2[67];
  *(v3 - 112) = v2[70];
  *(v3 - 104) = v13;
  v14 = v2[63];
  *(v3 - 96) = v2[64];
  *(v3 - 88) = v14;
}

id OUTLINED_FUNCTION_12_13()
{

  return sub_1CA3EB330(0);
}

uint64_t OUTLINED_FUNCTION_12_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  result = v1[148];
  v4 = v1[147];
  v5 = v1[146];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_23(unint64_t *a1)
{

  return sub_1CA55DADC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return sub_1CA94D408();
}

void OUTLINED_FUNCTION_12_26()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_12_28@<X0>(uint64_t a1@<X8>)
{
  result = a1 + v2 * v1;
  v6 = *(v3 - 240);
  v5 = *(v3 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_29()
{
  result = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  return result;
}

void OUTLINED_FUNCTION_12_31()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[30];
}

void *OUTLINED_FUNCTION_12_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __dst)
{
  v51 = v49[4];
  v52 = v49[6];
  v53 = v49[8];

  return memcpy(&__dst, v49, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return sub_1CA94C3A8();
}

uint64_t OUTLINED_FUNCTION_12_34(uint64_t result)
{
  *(v2 + 24) = result;
  *v2 = v1;
  *(v2 + 32) = 2;
  return result;
}

void WFDatabaseResultCommonInit(void *a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = a1;
  v4 = dispatch_queue_create("com.apple.shortcuts.WFDatabaseResult-private", v2);
  v5 = v3[7];
  v3[7] = v4;

  v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v7 = v3[8];
  v3[8] = v6;
}

uint64_t sub_1CA26E9BC(void *a1)
{
  v1 = [a1 descriptors];
  sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
  v2 = sub_1CA94C658();

  v3 = sub_1CA272AF8(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8D44(0, v4, 0);
    v5 = v43;
    result = sub_1CA4FCA34(v3);
    v9 = result;
    v10 = 0;
    v11 = v3 + 64;
    v36 = v7;
    v37 = v4;
    v35 = v3 + 72;
    v38 = v3 + 64;
    v39 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v7)
      {
        goto LABEL_29;
      }

      v42 = v7;
      v40 = v8;
      v41 = v10;
      v13 = (*(v3 + 48) + 16 * v9);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v9);
      v17 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      if (v17 != -1)
      {
        OUTLINED_FUNCTION_1_11();
        swift_once();
      }

      result = sub_1CA2786EC(v14, v15);
      if (v18)
      {
        v19 = result;
        v20 = v18;
      }

      else
      {
        result = sub_1CA94C218();
        v19 = v14;
        v20 = v15;
      }

      v21 = v5;
      v44 = v5;
      v22 = *(v5 + 16);
      v23 = *(v21 + 24);
      v24 = v42;
      if (v22 >= v23 >> 1)
      {
        result = sub_1CA2B8D44((v23 > 1), v22 + 1, 1);
        v24 = v42;
        v21 = v44;
      }

      *(v21 + 16) = v22 + 1;
      v25 = (v21 + 48 * v22);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v14;
      v25[7] = v15;
      v25[8] = 0;
      v25[9] = v16;
      v3 = v39;
      v26 = 1 << *(v39 + 32);
      if (v9 >= v26)
      {
        goto LABEL_30;
      }

      v11 = v38;
      v27 = *(v38 + 8 * v12);
      if ((v27 & (1 << v9)) == 0)
      {
        goto LABEL_31;
      }

      v5 = v21;
      if (*(v39 + 36) != v24)
      {
        goto LABEL_32;
      }

      v28 = v27 & (-2 << (v9 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v29 = v37;
      }

      else
      {
        v30 = v12 << 6;
        v31 = v12 + 1;
        v32 = (v35 + 8 * v12);
        v29 = v37;
        while (v31 < (v26 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1CA2974B8(v9, v24, v40 & 1);
            v26 = __clz(__rbit64(v33)) + v30;
            goto LABEL_24;
          }
        }

        result = sub_1CA2974B8(v9, v24, v40 & 1);
      }

LABEL_24:
      v8 = 0;
      v10 = v41 + 1;
      v9 = v26;
      v7 = v36;
      if (v41 + 1 == v29)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1CA26EDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1)
{

  return sub_1CA2BC070(a1, v1, _s17ControlFlowBranchVMa);
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  v1 = v0[64];
  v3 = v0[46];
  result = v0[47];
  v4 = v0[44];
  v5 = *(v0[45] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_30_7()
{
  v2 = *(v0 - 136);

  return sub_1CA94C648();
}

uint64_t OUTLINED_FUNCTION_30_8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1928);
  v3 = *(v1 + 864);
  v4 = *(v1 + 872) + 16;
  v5 = *(v1 + 1904) + ((*(v1 + 2040) + 32) & ~*(v1 + 2040)) + *(v1 + 1920) * a1;
  return *(v1 + 880);
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a2 = a10;
  a2[1] = a11;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_30_10(unint64_t *a1)
{

  return sub_1CA25C3BC(a1, v1, v2);
}

void OUTLINED_FUNCTION_23_2(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_30_13()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[33];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_30_15()
{
  v2 = v0[29];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_30_16()
{
  result = *(v0 - 88);
  v2 = *(v0 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_18@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_1CA94AED8();
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  result = *(v0 - 288);
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_77_0()
{
}

uint64_t OUTLINED_FUNCTION_23_13()
{
  v1[36] = v0;
  v3 = v1[27];
  v5 = v1[22];
  v4 = v1[23];
  v7 = v1[20];
  v6 = v1[21];
  v8 = v1[19];
  v9 = v1[10];
}

void *OUTLINED_FUNCTION_23_17()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_23_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, __int128 a49)
{

  return memcpy(&a49 + 7, v49, 0x48uLL);
}

BOOL OUTLINED_FUNCTION_178_0()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_49_2()
{
  v4 = *v0;

  return v1;
}

uint64_t OUTLINED_FUNCTION_49_3(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1CA949758();
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1)
{
  *(a1 + 8) = sub_1CA465B30;
  v2 = *(v1 + 1160);
  return *(v1 + 112);
}

uint64_t OUTLINED_FUNCTION_49_7()
{
  v2 = *(v0 - 88);

  return sub_1CA94D9A8();
}

void *OUTLINED_FUNCTION_49_8@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v3 = *(v2 + 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_149_0()
{
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
}

uint64_t OUTLINED_FUNCTION_149_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_96_3()
{
  v1 = v0[199];
  v2 = v0[197];
  v3 = v0[196];
}

void OUTLINED_FUNCTION_96_4(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v2 + 24);
  *(v1 - 232) = *(v2 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_96_5()
{
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_33_1()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_8()
{
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[72];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[64];
}

uint64_t OUTLINED_FUNCTION_255()
{
}

void OUTLINED_FUNCTION_33_11()
{
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
}

void OUTLINED_FUNCTION_33_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_33_14(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_33_16()
{

  return swift_allocObject();
}

uint64_t sub_1CA26F808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA26F860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_4@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_131()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{
  *(a1 + 8) = sub_1CA39B6F8;
  result = *(v1 + 136);
  v3 = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v1 = v0[135];
  v2 = v0[117];
  v3 = v0[114];
  v4 = v0[113];
  v5 = *(v0[136] + 96);
  return v0[138];
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

void OUTLINED_FUNCTION_11_17()
{
  *(v5 + 16) = v1;
  v6 = (v5 + 24 * v4);
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = v0;
}

void OUTLINED_FUNCTION_11_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1CA43EFAC(v12, v13, v11, v10, a9, v9);
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_1CA9486C8();
}

uint64_t OUTLINED_FUNCTION_11_23(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1CA26B54C(v4, v3, va);
}

BOOL OUTLINED_FUNCTION_65()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_25()
{
  v2 = v0[6];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v12 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  return sub_1CA94B458();
}

uint64_t OUTLINED_FUNCTION_11_26()
{
  v2 = *(*(v1 - 112) + 104);
  result = v0;
  v4 = *(v1 - 440);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_27()
{
  *(v1 + 32) = v0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_11_29@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + (v2 | (8 * a1)));

  return v4;
}

uint64_t OUTLINED_FUNCTION_11_30()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_11_32()
{
  result = v0[143];
  v2 = v0[133];
  v3 = v0[132];
  return result;
}

id OUTLINED_FUNCTION_11_33(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, char a13)
{

  return sub_1CA624334(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_11_37()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_11_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_3()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_4()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_63_10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  result = *(v0 + 3);
  v5 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_65_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id OUTLINED_FUNCTION_65_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_168_0()
{
  v2 = v0[26];
  result = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  return result;
}

uint64_t OUTLINED_FUNCTION_168_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 8, a4);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(v1 + 144) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  *(v1 - 120) = *(v1 - 288);
  *(v1 - 112) = v0;
  return v1 - 120;
}

void OUTLINED_FUNCTION_22_5()
{
  v1[12] = sub_1CA320A2C;
  v1[13] = v0;
  v1[14] = v2;
}

id OUTLINED_FUNCTION_22_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_22_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1640) = *(a1 + 16);
  *(v2 + 1648) = (a1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_22_16()
{
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_18()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_22_21(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_22_23()
{
}

void OUTLINED_FUNCTION_36_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return sub_1CA2D9CD4(v5, v6, v4, a4);
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_138()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_36_9()
{
  v2 = *(v0 - 232);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 192);
  v4 = *(a1 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_36_11()
{
  v1 = v0[31];
  v2 = v0[17];
  v3 = v0[13];
  return v0[18];
}

void OUTLINED_FUNCTION_36_12(uint64_t a1@<X8>)
{
  v3 = a1 | (v2 << 6);
  v4 = (*(v1 + 48) + 16 * v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(*(v1 + 56) + 8 * v3);
}

void *OUTLINED_FUNCTION_36_14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char __src)
{

  return memcpy((a1 | 1), &__src, 0x4FuLL);
}

uint64_t OUTLINED_FUNCTION_56_0@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[32];
  v5 = v0[27];

  return sub_1CA949C58();
}

void OUTLINED_FUNCTION_56_4()
{
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[14];
  *(v1 - 96) = v0[15];
  v9 = v0[13];
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 176);
  result = a1 + v1;
  v4 = *(v2 - 104);
  v5 = *(v2 - 72);
  v6 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_1CA94C658();
}

uint64_t OUTLINED_FUNCTION_53_7()
{

  return sub_1CA94C3A8();
}

uint64_t OUTLINED_FUNCTION_53_13()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_124_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[42] = a1;
  v2[43] = a2;
  v2[39] = v3;

  return sub_1CA949858();
}

void sub_1CA27050C()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_79_0(v2, v5, &qword_1EC4439D8, &unk_1CA981AD0);
  v9 = OUTLINED_FUNCTION_70();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_27_1(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    OUTLINED_FUNCTION_6_9(v14);
    sub_1CA270D10();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

size_t sub_1CA2705E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_102_0(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_134();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      OUTLINED_FUNCTION_93_1((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 OUTLINED_FUNCTION_136_2(uint64_t a1)
{
  *(v1 - 136) = a1;
  *(v1 - 96) = a1;
  return *(v1 - 176);
}

__n128 OUTLINED_FUNCTION_136_3()
{
  v1 = *(v0 + 144);
  result = *(v0 + 152);
  v3 = *(v0 + 128);
  return result;
}

void OUTLINED_FUNCTION_136_4(uint64_t a1@<X8>)
{
  v6 = *(v3 + 88);
  *(v2 + 16) = v1;
  v7 = v2 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = v4;
}

void OUTLINED_FUNCTION_136_5()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

void OUTLINED_FUNCTION_42_7()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
}

__n128 OUTLINED_FUNCTION_42_8@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  v4 = *(v2 - 208);
  return result;
}

uint64_t sub_1CA27080C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_52(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1CA270864(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA270A18(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v1 = v0[206];
  v2 = v0[205];
  result = v0[186];
  v4 = v0[176];
  v5 = v0[139];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  result = type metadata accessor for DrawerAction(0);
  v1 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51_8()
{
  v2 = *(*(v1 - 120) + 8);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t sub_1CA270A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_74_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_74_4()
{
  v3 = v0[170];
  v4 = v0[165];
  v5 = v0[164];
  *(v1 - 96) = v0[166];
  *(v1 - 88) = v5;
  v6 = v0[68];
  v7 = v0[61];
  v8 = v0[47];
  v10 = v0[44];
  v9 = v0[45];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[33];
}

uint64_t OUTLINED_FUNCTION_74_7()
{
  result = v0[46];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[35];
  v5 = v0[36];
  return result;
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_46_5()
{
  *(v5 - 128) = v3;
  *(v5 - 120) = v2;
  *(v5 - 144) = v4;
  v6 = *(v0 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_46_9(uint64_t a1, __n128 *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6[2].n128_u64[0] = a5;
  v6[2].n128_u64[1] = a6;
  v6[1].n128_u64[0] = a3;
  v6[1].n128_u64[1] = a4;
  result = *a2;
  v6[3] = *a2;
  return result;
}

void OUTLINED_FUNCTION_46_10()
{
  v1 = v0[143];
  v2 = v0[133];
  v3 = v0[132];
}

void *OUTLINED_FUNCTION_46_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{

  return memcpy(&__dst, &__src, 0x48uLL);
}

void OUTLINED_FUNCTION_46_13()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t sub_1CA270D24()
{
  OUTLINED_FUNCTION_74_3();
  if (v3 && (v4 = OUTLINED_FUNCTION_187(), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), result = OUTLINED_FUNCTION_52(v6), v1 + *(v8 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_13_17();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_187();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_13_17();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_95_0()
{
  v2 = v0[36];
  result = v0[37];
  v3 = v0[35];
  return result;
}

void OUTLINED_FUNCTION_95_2()
{
  v3 = v1[177];
  v4 = v1[175];
  v5 = v1[174];
  v6 = v1[61];
}

id OUTLINED_FUNCTION_95_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_95_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_67_2()
{
  result = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[34];
  v7 = v0[35];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_4()
{
  *(v1 - 88) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_6()
{
  v11 = v0[33];
  v12 = v0[40];
  v9 = v0[31];
  v10 = v0[30];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[10];
  v7 = v0[41];
  v8 = v0[6];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1CA57ABD8(a1, 0x746E656D6F6DLL, 0xE600000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

void OUTLINED_FUNCTION_98_2()
{
  v1 = *(v0 + 2036);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1080);
}

uint64_t OUTLINED_FUNCTION_98_3()
{
  v2 = *(v0 - 240);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_98_5()
{

  return sub_1CA94A988();
}

uint64_t OUTLINED_FUNCTION_98_6()
{

  return sub_1CA94D5F8();
}

uint64_t OUTLINED_FUNCTION_161()
{
  result = v0;
  v4 = *(v1 - 96);
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 56);
  return *(v2 + 40);
}

void OUTLINED_FUNCTION_27_7()
{
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[32];
  v5 = v0[31];
  v2 = v0[28];
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

void OUTLINED_FUNCTION_27_12()
{
  v1 = v0[95];
  v2 = v0[82];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[69];
}

uint64_t OUTLINED_FUNCTION_27_13(uint64_t a1)
{
  *(a1 + 8) = sub_1CA3C87FC;
  result = *(v1 + 928);
  v3 = *(v1 + 504);
  return result;
}

void OUTLINED_FUNCTION_27_15()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1CCAA4BF0);
}

void OUTLINED_FUNCTION_27_16()
{
  v1 = v0[25];
  v5 = v0[28];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return sub_1CA94C828();
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

__n128 OUTLINED_FUNCTION_27_20(uint64_t a1, __n128 *a2)
{
  v4 = a2[1].n128_u8[0];
  v5 = *(v2 + 24);
  *(v3 + 16) = *(v2 + 8);
  *(v3 + 32) = v5;
  v6 = *(v2 + 56);
  *(v3 + 48) = *(v2 + 40);
  *(v3 + 64) = v6;
  result = *a2;
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  *(v1 + 56) = v0;
  *(v1 + 24) = sub_1CA3178DC;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v3 = v0[94];
  *(v1 - 256) = v0[97];
  *(v1 - 248) = v3;
  v4 = v0[92];
  *(v1 - 240) = v0[93];
  *(v1 - 232) = v4;
  v5 = v0[88];
  *(v1 - 224) = v0[89];
  *(v1 - 216) = v5;
  v6 = v0[84];
  *(v1 - 208) = v0[85];
  *(v1 - 200) = v6;
  v7 = v0[82];
  *(v1 - 192) = v0[83];
  *(v1 - 184) = v7;
  v8 = v0[80];
  *(v1 - 176) = v0[81];
  *(v1 - 168) = v8;
  v9 = v0[76];
  *(v1 - 160) = v0[77];
  *(v1 - 152) = v9;
  v10 = v0[74];
  *(v1 - 144) = v0[75];
  *(v1 - 136) = v10;
  v11 = v0[70];
  *(v1 - 128) = v0[73];
  *(v1 - 120) = v11;
  v12 = v0[63];
  v13 = v0[64];
  *(v1 - 112) = v0[67];
  *(v1 - 104) = v13;
  *(v1 - 96) = v12;
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_1CA94C178();
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t result)
{
  *(result + 16) = 0x6974617275444657;
  *(result + 24) = 0xEA00000000006E6FLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_20()
{
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
}

id OUTLINED_FUNCTION_24_21(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

BOOL OUTLINED_FUNCTION_97_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_97_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_97_2()
{
  v3 = v1[175];
  v4 = v1[174];
  v5 = v1[61];
}

uint64_t OUTLINED_FUNCTION_97_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1CA271524()
{
  v1 = *v0;
  OUTLINED_FUNCTION_44_1();
  sub_1CA271560();
  *v0 = v2;
}

void sub_1CA271560()
{
  OUTLINED_FUNCTION_65_0();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_75_0(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 16);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v10)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  v3 = v1[122];
  v4 = v1[121];
  v5 = v1[120];
  v6 = v1[61];
  v7 = *(v2 + 96);
  return v0;
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v0[14] + 96);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_54_5()
{

  JUMPOUT(0x1CCAA4BF0);
}

void OUTLINED_FUNCTION_54_6(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_54_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_40_2()
{
  v2 = *(v0 + 16);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[71];
  v4 = v2[70];
  return v2[69];
}

uint64_t OUTLINED_FUNCTION_40_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_1CA3CA384;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_40_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 OUTLINED_FUNCTION_40_8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __n128 a22, __int128 a23)
{
  a1[1] = a20;
  a1[2] = a21;
  result = a22;
  a1[3] = a22;
  a1[4] = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_10()
{

  return sub_1CA94C6E8();
}

unint64_t sub_1CA271BF8()
{
  v1 = *(v0 + 40);
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();
  v2 = OUTLINED_FUNCTION_69();

  return sub_1CA271C6C(v2, v3, v4);
}

unint64_t sub_1CA271C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1CA94D7F8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1CA94D588();
}

unint64_t sub_1CA27203C()
{
  result = qword_1EDB9FAF0;
  if (!qword_1EDB9FAF0)
  {
    type metadata accessor for LNPlatformName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9FAF0);
  }

  return result;
}

id sub_1CA272094()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for LNPlatformName(0);
  sub_1CA25B3D0(0, &qword_1EDB9FAC8, 0x1E69AC700);
  sub_1CA27203C();
  v1 = sub_1CA94C1A8();

  v2 = [v0 initWithAvailabilityAnnotations_];

  return v2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

uint64_t WFDatabaseObjectTypeForEntityName(void *a1)
{
  v1 = a1;
  v2 = +[WFCoreDataWorkflow entity];
  v3 = [v2 name];
  v4 = [v1 isEqualToString:v3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[WFCoreDataTrigger entity];
    v7 = [v6 name];
    v8 = [v1 isEqualToString:v7];

    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v9 = +[WFCoreDataCollection entity];
      v10 = [v9 name];
      v11 = [v1 isEqualToString:v10];

      if (v11)
      {
        v5 = 2;
      }

      else
      {
        v12 = +[WFCoreDataCloudKitSyncToken entity];
        v13 = [v12 name];
        v14 = [v1 isEqualToString:v13];

        if (v14)
        {
          v5 = 3;
        }

        else
        {
          v15 = +[WFCoreDataTriggerEvent entity];
          v16 = [v15 name];
          v17 = [v1 isEqualToString:v16];

          if (v17)
          {
            v5 = 4;
          }

          else
          {
            v18 = +[WFCoreDataRunEvent entity];
            v19 = [v18 name];
            v20 = [v1 isEqualToString:v19];

            if (v20)
            {
              v5 = 5;
            }

            else
            {
              v21 = +[VCVoiceShortcutSuggestionListManagedObject entity];
              v22 = [v21 name];
              v23 = [v1 isEqualToString:v22];

              if (v23)
              {
                v5 = 6;
              }

              else
              {
                v24 = +[WFCoreDataShortcutBookmark entity];
                v25 = [v24 name];
                v26 = [v1 isEqualToString:v25];

                if (v26)
                {
                  v5 = 7;
                }

                else
                {
                  v27 = +[WFCoreDataSmartPromptPermission entity];
                  v28 = [v27 name];
                  v29 = [v1 isEqualToString:v28];

                  if (v29)
                  {
                    v5 = 8;
                  }

                  else
                  {
                    v30 = +[WFCoreDataAutoShortcutsPreferences entity];
                    v31 = [v30 name];
                    v32 = [v1 isEqualToString:v31];

                    if (v32)
                    {
                      v5 = 9;
                    }

                    else
                    {
                      v33 = +[WFCoreDataLibrary entity];
                      v34 = [v33 name];
                      v35 = [v1 isEqualToString:v34];

                      if (v35)
                      {
                        v5 = 10;
                      }

                      else
                      {
                        v36 = +[WFCoreDataTrackedFilesystemNode entity];
                        v37 = [v36 name];
                        v38 = [v1 isEqualToString:v37];

                        if (v38)
                        {
                          v5 = 11;
                        }

                        else
                        {
                          v5 = 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1CA27295C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1CA94D328();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1CA2E9398(v4, 0);
      sub_1CA280104(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

char *sub_1CA2729F0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_14(a3, result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

void OUTLINED_FUNCTION_69_3()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 - 184) = v0;
}

void OUTLINED_FUNCTION_69_4()
{
  v2 = v0[190];
  *(v1 - 128) = v0[189];
  *(v1 - 120) = v2;
  v3 = v0[188];
  *(v1 - 112) = v0[187];
  *(v1 - 104) = v3;
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[7];
  result = v0[8];
  v6 = v0[4];
  v7 = *(v0[5] + 8);
  return result;
}

void OUTLINED_FUNCTION_69_6()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  *(v0 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_69_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 96) = v1[53];
  v3 = v1[43];
  v4 = v1[41];
  result = v1[25];
  v6 = v1[22];
  v7 = v1[9];
  v8 = *(v1[23] + 8);
  return result;
}

uint64_t sub_1CA272AF8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v26 = MEMORY[0x1E69E7CC8];
  v3 = sub_1CA25B410(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_1CA2F6B80(v5);
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = v7;
    v10 = v8;
    v12 = sub_1CA271BF8();
    v13 = v2[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_23;
    }

    v15 = v11;
    if (v2[3] < v13 + v14)
    {
      sub_1CA5C35C0();
      v2 = v26;
      v16 = sub_1CA271BF8();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_26;
      }

      v12 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v12);
      MEMORY[0x1CCAA1490](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CA9813B0;
      *(v20 + 32) = v6;
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v21 = (v2[6] + 16 * v12);
      *v21 = v9;
      v21[1] = v10;
      *(v2[7] + 8 * v12) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_24;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AutoShortcutsAppsDataSource()
{
  result = qword_1EDB9F338;
  if (!qword_1EDB9F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA272D7C()
{
  if (!qword_1EDB9F138[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446318, qword_1CA98AEA0);
    v0 = sub_1CA94A0B8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDB9F138);
    }
  }
}

void sub_1CA272DE0()
{
  sub_1CA272D7C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

char *AutoShortcutsAppsDataSource.init(organizedCollections:)(char a1)
{
  v2 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455D0, &qword_1CA987680) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446310, &qword_1CA98AE98);
  v47 = OUTLINED_FUNCTION_1_0(v8);
  v48 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446308, &unk_1CA98AE88);
  OUTLINED_FUNCTION_1_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v44 - v21;
  v23 = OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource__autoShortcutApps;
  v49 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446318, qword_1CA98AEA0);
  sub_1CA94A068();
  (*(v17 + 32))(&v2[v23], v22, v15);
  v24 = OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource;
  v25 = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  v46 = type metadata accessor for AppShortcutDataSource();
  *&v2[v24] = sub_1CA26C2D4(v25, 1, 0, objc_allocWithZone(v46));
  v26 = OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource;
  v27 = type metadata accessor for AppAssociatedShortcutsDataSource();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v2[v26] = AppAssociatedShortcutsDataSource.init()();
  *&v2[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_cancellables] = MEMORY[0x1E69E7CD0];
  type metadata accessor for AutoShortcutsLoader();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_autoShortcutsLoader] = sub_1CA273794(a1);
  v30 = type metadata accessor for AutoShortcutsAppsDataSource();
  v51.receiver = v2;
  v51.super_class = v30;
  v31 = objc_msgSendSuper2(&v51, sel_init);
  sub_1CA2737DC(0x206C616974696E49, 0xEE0064616F6C6572, 1, 1);
  v32 = *&v31[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource];
  sub_1CA27C4E8(qword_1EC442038, type metadata accessor for AppAssociatedShortcutsDataSource);

  v33 = sub_1CA949FE8();

  v49 = v33;
  sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  v34 = sub_1CA94CD48();
  v50 = v34;
  v45 = sub_1CA94CD28();
  v35 = v7;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v45);
  v44[3] = sub_1CA94A058();
  v44[2] = sub_1CA27C530();
  v36 = v14;
  sub_1CA94A0E8();
  sub_1CA532E30(v35, &qword_1EC4455D0, &qword_1CA987680);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v44[1] = sub_1CA27C598();
  v37 = v47;
  sub_1CA94A108();
  OUTLINED_FUNCTION_87();

  v38 = *(v48 + 8);
  v48 += 8;
  v38(v36, v37);
  OUTLINED_FUNCTION_25_13();
  sub_1CA949F88();
  swift_endAccess();

  v39 = *&v31[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource];
  sub_1CA27C4E8(qword_1EC4426D0, type metadata accessor for AppShortcutDataSource);
  v40 = v39;
  v41 = sub_1CA949FE8();

  v49 = v41;
  v42 = sub_1CA94CD48();
  v50 = v42;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v45);
  sub_1CA94A0E8();
  sub_1CA532E30(v35, &qword_1EC4455D0, &qword_1CA987680);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CA94A108();
  OUTLINED_FUNCTION_87();

  v38(v36, v37);
  OUTLINED_FUNCTION_25_13();
  sub_1CA949F88();
  swift_endAccess();

  return v31;
}

uint64_t sub_1CA273498()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata accessor for AppShortcutDataSource()
{
  result = qword_1EDB9F808;
  if (!qword_1EDB9F808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA27351C()
{
  if (!qword_1EDB9F7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC446350, &qword_1CA98C930);
    v0 = sub_1CA94A0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB9F7C8);
    }
  }
}

void sub_1CA273580()
{
  sub_1CA27351C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CA273628(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F6F8, 0x1E69E0AE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA27367C(uint64_t a1)
{
  *(a1 + 8) = sub_1CA273628(&unk_1EDB9F6E8);
  result = sub_1CA273628(&unk_1EDB9F700);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CA27372C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA273794(char a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1CA2737DC(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v5 = v4;
  HIDWORD(v26) = a4;
  v27 = a1;
  v28 = a2;
  v7 = sub_1CA949F78();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  v17 = sub_1CA949F68();
  v18 = sub_1CA94CBF8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1CA256000, v17, v18, "Reloading App Shortcuts", v19, 2u);
    OUTLINED_FUNCTION_26();
  }

  (*(v10 + 8))(v15, v7);
  if (a3)
  {
    v20 = *(v5 + OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource);
    v22 = v27;
    v21 = v28;
    sub_1CA273AD8(v27, v28);
    v23 = v22;
  }

  else
  {
    v23 = v27;
    v21 = v28;
  }

  v24 = *(v5 + OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource);
  result = sub_1CA273D40(v23, v21);
  if ((v26 & 0x100000000) != 0)
  {
    sub_1CA278F60();
    sub_1CA279010();
  }

  return result;
}

uint64_t sub_1CA273AD8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  sub_1CA94C218();
  v15 = sub_1CA949F68();
  v16 = sub_1CA94CC38();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v6;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v24 = v3;
    v21 = v20;
    v25 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1CA26B54C(v18, a2, &v25);
    _os_log_impl(&dword_1CA256000, v15, v16, "Reloading app associated shortcuts with reason: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v3 = v24;
    MEMORY[0x1CCAA4BF0](v21, -1, -1);
    MEMORY[0x1CCAA4BF0](v19, -1, -1);

    (*(v9 + 8))(v13, v23);
  }

  else
  {

    (*(v9 + 8))(v13, v6);
  }

  sub_1CA26E9BC(*(v3 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result));
  return sub_1CA273CD0();
}

uint64_t sub_1CA273CD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CA94A0A8();
}

uint64_t sub_1CA273D40(uint64_t a1, unint64_t a2)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1CA949F78();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v11 = *MEMORY[0x1E69E1088];
  sub_1CA949C58();
  sub_1CA94C218();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC38();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_29_0();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = a1;
    v17 = v15;
    v59[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1CA26B54C(v16, a2, v59);
    _os_log_impl(&dword_1CA256000, v12, v13, "Reloading App Shortcuts with reason: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v8 + 8))(v2, v5);
  v18 = *(v56 + OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider);
  v19 = sub_1CA948E58();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v22 + 8))(v2, v19);
  v25 = sub_1CA94C368();

  v59[0] = 0;
  v26 = [v18 autoShortcutsForLocaleIdentifier:v25 error:v59];

  v27 = v59[0];
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
    v28 = sub_1CA94C1C8();
    v29 = v27;

    v30 = sub_1CA2742FC(v28);

    v31 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_55();
    v32 = sub_1CA94C368();
    v33 = [v31 stringArrayForKey_];

    if (v33)
    {
      v34 = sub_1CA94C658();
    }

    else
    {
      v37 = sub_1CA94C218();
      v34 = sub_1CA438C80(v37);
    }

    v58 = v34;
    v38 = [objc_opt_self() hiddenAppBundleIdentifiers];
    v39 = sub_1CA94C8F8();

    sub_1CA94C218();
    v40 = sub_1CA274970(&v58, v39);
    v41 = *(v58 + 16);
    if (v41 < v40)
    {
      goto LABEL_30;
    }

    sub_1CA274E6C(v40, v41);

    v42 = 0;
    v54 = *(v58 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    v55 = v58;
    v44 = (v58 + 40);
    while (v54 != v42)
    {
      if (v42 >= *(v55 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v45 = *v44;
      v59[0] = *(v44 - 1);
      v59[1] = v45;
      sub_1CA94C218();
      sub_1CA274F48(v59, v30, v56, &v57);

      v46 = v57;
      v47 = *(v57 + 16);
      v48 = *(v43 + 16);
      if (__OFADD__(v48, v47))
      {
        goto LABEL_26;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v48 + v47 > *(v43 + 24) >> 1)
      {
        sub_1CA278A8C();
        v43 = v49;
      }

      if (*(v46 + 16))
      {
        if ((*(v43 + 24) >> 1) - *(v43 + 16) < v47)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
        swift_arrayInitWithCopy();

        if (v47)
        {
          v50 = *(v43 + 16);
          v51 = __OFADD__(v50, v47);
          v52 = v50 + v47;
          if (v51)
          {
            goto LABEL_29;
          }

          *(v43 + 16) = v52;
        }
      }

      else
      {

        if (v47)
        {
          goto LABEL_27;
        }
      }

      v44 += 2;
      ++v42;
    }

    result = sub_1CA278E8C();
  }

  else
  {
    v35 = v59[0];
    sub_1CA948AD8();

    result = swift_willThrow();
  }

  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA2742FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v2 = sub_1CA94C1E8();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_1CA94C218();
  v8 = 0;
LABEL_4:
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
LABEL_9:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      if (v14 >> 62)
      {
        v15 = sub_1CA94D328();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if (v15)
      {
        v43 = v12;
        v44 = v15;
        v40 = a1;
        v41 = v13;
        v39 = v7;
        v46 = v14 & 0xC000000000000001;
        v42 = v14 & 0xFFFFFFFFFFFFFF8;
        sub_1CA94C218();
        sub_1CA94C218();
        v16 = 0;
        v45 = v14;
        while (1)
        {
          if (v46)
          {
            v17 = MEMORY[0x1CCAA22D0](v16, v14);
          }

          else
          {
            if (v16 >= *(v42 + 16))
            {
              goto LABEL_43;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_40;
          }

          v49 = sub_1CA2746C8(v17);
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v43;
            sub_1CA94C218();
            v49 = v41;
          }

          v47 = v16 + 1;
          if (v2[2] && (v21 = sub_1CA271BF8(), (v22 & 1) != 0))
          {
            v50 = *(v2[7] + 8 * v21);
            sub_1CA94C218();
          }

          else
          {
            v50 = MEMORY[0x1E69E7CC0];
          }

          v48 = v20;
          v23 = v18;
          MEMORY[0x1CCAA1490]();
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CA94C698();
          }

          v24 = v23;
          sub_1CA94C6E8();
          swift_isUniquelyReferenced_nonNull_native();
          v25 = sub_1CA271BF8();
          if (__OFADD__(v2[2], (v26 & 1) == 0))
          {
            goto LABEL_41;
          }

          v27 = v25;
          v28 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447180, &qword_1CA98EAE8);
          if (sub_1CA94D588())
          {
            v29 = v48;
            v30 = sub_1CA271BF8();
            if ((v28 & 1) != (v31 & 1))
            {
              goto LABEL_44;
            }

            v27 = v30;
            if ((v28 & 1) == 0)
            {
LABEL_31:
              v2[(v27 >> 6) + 8] |= 1 << v27;
              v32 = (v2[6] + 16 * v27);
              *v32 = v49;
              v32[1] = v29;
              *(v2[7] + 8 * v27) = v50;

              v33 = v2[2];
              v34 = __OFADD__(v33, 1);
              v35 = v33 + 1;
              if (v34)
              {
                goto LABEL_42;
              }

              v2[2] = v35;
              goto LABEL_35;
            }
          }

          else
          {
            v29 = v48;
            if ((v28 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v36 = v2[7];
          v37 = *(v36 + 8 * v27);
          *(v36 + 8 * v27) = v50;

LABEL_35:
          ++v16;
          v14 = v45;
          if (v47 == v44)
          {

            a1 = v40;
            v7 = v39;
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA2746C8(void *a1)
{
  v1 = [a1 attributionBundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_1CA94C3A8();
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t OUTLINED_FUNCTION_39_4()
{
  result = v0[125];
  v2 = v0[123];
  v3 = *(v0[124] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_7()
{
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  *(v1 - 256) = v0[53];
  *(v1 - 248) = v3;
  v6 = v0[47];
  v5 = v0[48];
  *(v1 - 240) = v4;
  *(v1 - 232) = v5;
  v7 = v0[46];
  *(v1 - 224) = v6;
  *(v1 - 216) = v7;
  v8 = v0[41];
  *(v1 - 208) = v0[43];
  *(v1 - 200) = v8;
  v9 = v0[35];
  *(v1 - 192) = v0[38];
  *(v1 - 184) = v9;
  v11 = v0[28];
  v10 = v0[29];
  *(v1 - 176) = v0[32];
  *(v1 - 168) = v10;
  v13 = v0[26];
  v12 = v0[27];
  *(v1 - 160) = v11;
  *(v1 - 152) = v12;
  v14 = v0[25];
  *(v1 - 144) = v13;
  *(v1 - 136) = v14;
  v15 = v0[21];
  *(v1 - 128) = v0[22];
  *(v1 - 120) = v15;
  *(v1 - 112) = v0[18];
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  v4 = v0[42];
  v3 = v0[43];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  v5 = v0[36];
  v18 = v0[37];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[24];
  v25 = v0[21];
  v26 = v0[20];
  v7 = v0[14];
  v6 = v0[15];
  *(v1 - 120) = v0[17];
  *(v1 - 112) = v6;
  v9 = v0[10];
  v8 = v0[11];
  *(v1 - 104) = v7;
  *(v1 - 96) = v8;
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[2];

  return sub_1CA94A9A8();
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return sub_1CA275D70(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_1CA274970(uint64_t *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  result = sub_1CA274C10(v6, a2);
  if (v2)
  {
LABEL_29:

    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);

    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        goto LABEL_29;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v11 = v6 + 32;
      v12 = (v6 + 32 + 16 * v9);
      if (*(a2 + 16))
      {
        v38 = v6 + 32;
        v39 = v6;
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 40);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C458();
        v16 = sub_1CA94D968();
        v17 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v19 = (*(a2 + 48) + 16 * v18);
          if (*v19 != v14 || v19[1] != v13)
          {
            v21 = sub_1CA94D7F8();
            v16 = v18 + 1;
            if ((v21 & 1) == 0)
            {
              continue;
            }
          }

          v6 = v39;
          goto LABEL_26;
        }

        v6 = v39;
        v11 = v38;
      }

      if (v3 != v9)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v22 = *(v6 + 16);
        if (v3 >= v22)
        {
          goto LABEL_35;
        }

        if (v9 >= v22)
        {
          goto LABEL_36;
        }

        v23 = (v11 + 16 * v3);
        v25 = *v23;
        v24 = v23[1];
        v26 = v6;
        v28 = *v12;
        v27 = v12[1];
        sub_1CA94C218();
        sub_1CA94C218();
        v29 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA42B234(v26);
          v29 = v37;
        }

        v30 = v29;
        v31 = v29 + 32;
        v32 = (v31 + 16 * v3);
        v33 = v32[1];
        *v32 = v28;
        v32[1] = v27;
        v6 = v30;

        if (v9 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v34 = (v31 + 16 * v9);
        v35 = v34[1];
        *v34 = v25;
        v34[1] = v24;

        *a1 = v6;
      }

      v36 = __OFADD__(v3++, 1);
      if (v36)
      {
        goto LABEL_33;
      }

LABEL_26:
      v36 = __OFADD__(v9++, 1);
      if (v36)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}