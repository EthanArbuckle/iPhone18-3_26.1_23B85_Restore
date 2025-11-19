void sub_1A3C21948(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v15 = objc_begin_catch(a1);
      v16 = PLUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412802;
        *(&buf + 4) = v15;
        WORD6(buf) = 2112;
        a14 = 2112;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "exception raised while comparing current and persisted values: %@ %@ %@", &buf, 0x20u);
      }

      objc_end_catch();
      JUMPOUT(0x1A3C2191CLL);
    }

    objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A3C21DA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  *a4 = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void PXAnalyticsPrepare()
{
  if (PXAnalyticsPrepare_onceToken != -1)
  {
    dispatch_once(&PXAnalyticsPrepare_onceToken, &__block_literal_global_115888);
  }
}

void __PXStoryAnalyticsPrepare_block_invoke()
{
  v0 = MEMORY[0x1E6991F28];
  v1 = objc_alloc_init(PXStoryAnalyticsUsageDestination);
  [v0 addDestination:v1];

  v2 = MEMORY[0x1E6991F28];
  v3 = PXStoryBundle();
  [v2 updateWithConfigurationFilename:@"CPAnalyticsConfig-PXStory" inBundle:v3];
}

id PXStoryBundle()
{
  if (PXStoryBundle_onceToken != -1)
  {
    dispatch_once(&PXStoryBundle_onceToken, &__block_literal_global_98820);
  }

  v1 = PXStoryBundle_bundle;

  return v1;
}

void __PXStoryBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = PXStoryBundle_bundle;
  PXStoryBundle_bundle = v0;
}

uint64_t PXCloudQuotaUpsellSheetManagerActivationOptionsForSceneConnectionOptions(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 URLContexts];
  if (![v2 count])
  {
    v3 = [v1 sourceApplication];
    if ([v3 length])
    {
      v5 = PLUserStatusGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Noting some activation options: source application (%@)", &v12, 0xCu);
      }

      v4 = 2;
      goto LABEL_34;
    }

    v5 = [v1 handoffUserActivityType];
    if ([v5 length])
    {
      v6 = PLUserStatusGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: handoff user activity type (%@)", &v12, 0xCu);
      }

      v4 = 2;
      goto LABEL_33;
    }

    v6 = [v1 userActivities];
    if ([v6 count])
    {
      v7 = PLUserStatusGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        v4 = 2;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Noting some activation options: user activities", &v12, 2u);
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_32;
    }

    v7 = [v1 notificationResponse];
    if (v7)
    {
      v8 = PLUserStatusGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        v4 = 2;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Noting some activation options: notification response", &v12, 2u);
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_31;
    }

    v8 = [v1 shortcutItem];
    if (v8)
    {
      v9 = PLUserStatusGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        v4 = 2;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Noting some activation options: shortcut item", &v12, 2u);
LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      v9 = [v1 cloudKitShareMetadata];
      if (!v9)
      {
        v4 = 1;
        goto LABEL_30;
      }

      v10 = PLUserStatusGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Noting some activation options: cloud kit share metadata", &v12, 2u);
      }
    }

    v4 = 2;
    goto LABEL_30;
  }

  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    v4 = 2;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Noting some activation options: URL contexts", &v12, 2u);
  }

  else
  {
    v4 = 2;
  }

LABEL_35:

  return v4;
}

uint64_t __PXSupportsImageModulation_block_invoke()
{
  PXSupportsImageModulation_is2DBLDevice = MGIsDeviceOneOfType();
  if (PXSupportsImageModulation_is2DBLDevice)
  {
    result = 1;
  }

  else
  {
    result = MGIsDeviceOneOfType();
  }

  PXSupportsImageModulation_is2DBLDevice = result;
  return result;
}

void __PXAnalyticsPrepare_block_invoke()
{
  v0 = MEMORY[0x1E6991F28];
  v1 = objc_alloc_init(PXAnalyticsFeatureUsageCountDestination);
  [v0 addDestination:v1];

  v2 = MEMORY[0x1E6991F28];
  v3 = objc_alloc_init(PXAnalyticsSlideshowUsageDestination);
  [v2 addDestination:v3];

  v4 = MEMORY[0x1E6991F28];
  v5 = objc_alloc_init(PXViewCountAnalyticsDestination);
  [v4 addDestination:v5];

  v6 = MEMORY[0x1E6991F28];
  v7 = [MEMORY[0x1E696AAE8] px_bundle];
  [v6 updateWithConfigurationFilename:@"CPAnalyticsConfig-PhotosUICore" inBundle:v7];

  v8 = MEMORY[0x1E6991F28];
  v9 = [MEMORY[0x1E696AAE8] px_bundle];
  [v8 updateWithConfigurationFilename:@"CPAnalyticsConfig-Lemonade" inBundle:v9];

  [MEMORY[0x1E6991F28] updateWithConfiguration:&unk_1F190F558];
  if (PXStoryAnalyticsPrepare_onceToken != -1)
  {

    dispatch_once(&PXStoryAnalyticsPrepare_onceToken, &__block_literal_global_68111);
  }
}

uint64_t PXSupportsImageModulation()
{
  if (PXSupportsImageModulation_onceToken != -1)
  {
    dispatch_once(&PXSupportsImageModulation_onceToken, &__block_literal_global_3);
  }

  if (PXIsOLEDDevice_onceToken != -1)
  {
    dispatch_once(&PXIsOLEDDevice_onceToken, &__block_literal_global_23095);
  }

  return (PXIsOLEDDevice_isOLEDDevice | PXSupportsImageModulation_is2DBLDevice) & 1;
}

uint64_t __PXIsOLEDDevice_block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  PXIsOLEDDevice_isOLEDDevice = result;
  return result;
}

void __PXSharedUserDefaults_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69BFF18]];

  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  }

  v4 = PXSharedUserDefaults__sharedDefaults;
  PXSharedUserDefaults__sharedDefaults = v3;
}

id PXSharedUserDefaults()
{
  if (PXSharedUserDefaults_predicate != -1)
  {
    dispatch_once(&PXSharedUserDefaults_predicate, &__block_literal_global_141626);
  }

  v1 = PXSharedUserDefaults__sharedDefaults;

  return v1;
}

uint64_t sub_1A3C29188()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  sub_1A3DBD9A0();
  sub_1A524ECF4();
  sub_1A524DF24();
  return sub_1A5241C54();
}

uint64_t sub_1A3C29200()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void PhotosSearchHomeCoordinator<>.init(photoLibrary:initialSearchText:closeAction:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PhotosSearchBarPosition.TabBar();

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = PhotosSearchBarPosition.TabBar.__allocating_init(closeAction:)(a4, a5);
  v8 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v8, v9);
}

uint64_t sub_1A3C29444(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3C2947C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3C294D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2953C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A3C295A0()
{
  result = qword_1EB129AD0;
  if (!qword_1EB129AD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB129AD0);
  }

  return result;
}

uint64_t sub_1A3C29604()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3C296D4(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2(a1);
  }

  return result;
}

uint64_t sub_1A3C29744()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB17A8F8);
  __swift_project_value_buffer(v4, qword_1EB17A8F8);
  if (qword_1EB17A820 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB17A828);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1A3C298B8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB17A828);
  __swift_project_value_buffer(v0, qword_1EB17A828);
  if (qword_1EB17A840 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB17A848;
  return sub_1A5246F34();
}

void sub_1A3C29944()
{
  if (!qword_1EB128C08)
  {
    sub_1A3C52C70(255, &qword_1EB126A40);
    type metadata accessor for LemonadeSuggestedSearchCollection(255);
    sub_1A3C52CB8(&qword_1EB126A38, &qword_1EB126A40);
    v0 = sub_1A5246904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128C08);
    }
  }
}

uint64_t *sub_1A3C29A08()
{
  if (qword_1EB1919B0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB6D0;
}

unint64_t sub_1A3C29A58()
{
  result = qword_1EB12B180;
  if (!qword_1EB12B180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12B180);
  }

  return result;
}

uint64_t sub_1A3C29AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29AEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29BC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29CE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29DBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C29EDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3C29F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C29F88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C29FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A1D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C2A224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A288(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1A524CB74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2A2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A46C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C2A4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C2A6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3C2A728(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C29F88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A778(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C30560(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A7DC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3DD8A70(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A840(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2A040(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A8A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A40B4DD8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A908(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2A340(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A960(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C720F0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2A9C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2A408(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2AA28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A463B040(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2AA8C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4A571F0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2AAF0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_1A3C59384;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);

  sub_1A524BF14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3C2A408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1A3C2ADEC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1A3C2F0BC(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1A3C2F0BC(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_171(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_176(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_179(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_182(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_187(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_192(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_195(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_196(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_197(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_199(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_201(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_202(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_203(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_205(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_207(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_209(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_211(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_212(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_213(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_215(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_216(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_217(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_219(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_221(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_223(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_225(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_226(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_227(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_229(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_231(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_232(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_233(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_235(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_236(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_237(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_239(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_241(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_242(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_243(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_245(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_246(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_247(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_249(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_251(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_252(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_253(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_254(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_256(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_257(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_259(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_261(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_262(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_263(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_265(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_266(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_267(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_269(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_271(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_272(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_273(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_275(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_276(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_277(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_279(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_281(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_282(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_285(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_286(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_287(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_289(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_291(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_292(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_293(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_294(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_295(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_296(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_297(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_299(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_302(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_303(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_305(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_306(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_307(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_309(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_311(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_315(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_316(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_317(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_319(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_321(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_322(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_323(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_325(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_326(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_327(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_329(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_331(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_332(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_333(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_335(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_336(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_337(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_339(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_341(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A3C2C3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C2C408(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A3E09208(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C2C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C7D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A439027C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C2C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2C8A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A44A6498(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C2C918(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A3C37380(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C2C988(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A44F2A14(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C2C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v5 = a4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A3C2CD10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1A492FE58(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A3C2CD6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C2CDCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A4A19A28(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C2CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C2CE9C(uint64_t a1)
{
  sub_1A3DA26DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1A3C2CF1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  if (*(v1 + 3))
  {
    v7 = *(v1 + 3);
  }

  else
  {
    type metadata accessor for PhotosSearchBarCoordinator();
    v8 = (*(v4 + 16))(v6, &v1[*(v2 + 136)], v3);
    (*(*v1 + 232))(v8);
    v7 = PhotosSearchBarCoordinator.__allocating_init(position:activeSearchViewModel:)(v6);
    *(v1 + 3) = v7;
  }

  return v7;
}

void sub_1A3C2D0AC()
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1A3C2953C(319, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1A3C2D254()
{
  sub_1A5242054();
  if (v0 <= 0x3F)
  {
    sub_1A3EA7AB4(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A5241614();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A3C2D3C8(int a1)
{
  v25 = a1;
  v1 = sub_1A5246E54();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v28 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v27 = v24 - v4;
  v5 = sub_1A524D464();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1A3C29A58();
  v24[1] = "e";
  v24[2] = v11;
  v12 = MEMORY[0x1E69E8030];
  sub_1A3C2A408(0, &unk_1EB1261D0, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A52F8E10;
  sub_1A524D404();
  v31 = v13;
  sub_1A3C29D2C(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A3C2A408(0, &qword_1EB126E40, v12, MEMORY[0x1E69E62F8]);
  v14 = v12;
  LOBYTE(v12) = v25;
  sub_1A3C2A9C4(&qword_1EB126E30, &qword_1EB126E40, v14);
  sub_1A524E224();
  sub_1A524BF14();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v5);
  v15 = v26;
  *(v15 + 24) = sub_1A524D4B4();
  *(v15 + 48) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = v12;
  if (qword_1EB18EAE8 != -1)
  {
    swift_once();
  }

  v16 = sub_1A5246E94();
  __swift_project_value_buffer(v16, qword_1EB18EAF0);
  sub_1A5246E84();
  v17 = v27;
  sub_1A5246E24();
  v18 = sub_1A5246E84();
  sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v19 = 136315138;
    sub_1A3C2EF94();
  }

  v20 = v29;
  v21 = v30;
  (*(v29 + 16))(v28, v17, v30);
  sub_1A5246ED4();
  swift_allocObject();
  v22 = sub_1A5246EC4();
  (*(v20 + 8))(v17, v21);
  *(v15 + 40) = v22;
  return v15;
}

void sub_1A3C2D9B8()
{
  sub_1A52411C4();
  if (v0 <= 0x3F)
  {
    sub_1A3C2DCD4(319, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A3C2DFF8(319, &qword_1EB120E18, MEMORY[0x1E69E5E28]);
      if (v2 <= 0x3F)
      {
        sub_1A3C2EE9C(319, &unk_1EB120DC0, MEMORY[0x1E69E5E28]);
        if (v3 <= 0x3F)
        {
          sub_1A3C2F060(319, &unk_1EB1207E0, &unk_1EB1207F0, off_1E771F5C8, sub_1A3C52C70);
          if (v4 <= 0x3F)
          {
            sub_1A3C2F060(319, &unk_1EB120DF0, &unk_1EB120E00, MEMORY[0x1E69E5E28], sub_1A3C2F1C4);
            if (v5 <= 0x3F)
            {
              sub_1A3C2F304(319, &qword_1EB120DD0, &unk_1EB120DD8, MEMORY[0x1E69E5E28], sub_1A3C2F294);
              if (v6 <= 0x3F)
              {
                sub_1A3C2F304(319, &qword_1EB120DB0, &unk_1EB120DC0, MEMORY[0x1E69E5E28], sub_1A3C2EE9C);
                if (v7 <= 0x3F)
                {
                  sub_1A3C2F060(319, &qword_1EB120948, &unk_1EB120950, 0x1E6978A80, sub_1A3C52C70);
                  if (v8 <= 0x3F)
                  {
                    sub_1A3C2DCD4(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1A3C2DC84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DCD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DD24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DD74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DDC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DE14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C2DEB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DF08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DF58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DFA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2DFF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243994();
    sub_1A3C2DCD4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = sub_1A3C2E114(&qword_1EB124D30, MEMORY[0x1E69C2718]);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3C2E0D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1A3C2E114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C2E15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C2E1A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C2E1EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A5243994();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C2E230()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EAF0);
  __swift_project_value_buffer(v4, qword_1EB18EAF0);
  if (qword_1EB176A98 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB176AA0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

void sub_1A3C2E36C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176AA0);
  __swift_project_value_buffer(v0, qword_1EB176AA0);
  sub_1A5246EF4();
}

void sub_1A3C2E3D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C2E420(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1A3C2E46C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1A524BF64();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  v27 = a2;
  *(sub_1A3C593BC(a2) + 32) = 1;

  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    result = swift_beginAccess();
    if (*(v15 + 16))
    {
      v18 = 0;
      v19 = v16 - 1;
      while (1)
      {
        v20 = *(a1 + 32);
        if (!*(v20 + 16))
        {
          goto LABEL_5;
        }

        result = sub_1A3C2F228(*(v15 + 32 + v18));
        if ((v21 & 1) == 0)
        {
          goto LABEL_5;
        }

        v22 = *(*(v20 + 56) + 8 * result);
        if (v22[33] != 1)
        {
          break;
        }

        if (v19 == v18 || (v22[34] & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_6:
        if (++v18 >= *(v15 + 16))
        {
          goto LABEL_15;
        }
      }

      if (v22[32] == 1)
      {

        sub_1A3C2F3D4();

        goto LABEL_14;
      }

LABEL_5:
      if (v19 == v18)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_14:
    v23 = *(sub_1A3C593BC(v27) + 24);

    aBlock[4] = sub_1A3C59848;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_67_1;
    v24 = _Block_copy(aBlock);

    sub_1A524BF14();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v25 = MEMORY[0x1E69E7F60];
    sub_1A3C2A408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2A9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v25);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v13, v10, v24);
    _Block_release(v24);

    (*(v30 + 8))(v10, v8);
    (*(v28 + 8))(v13, v29);
  }

  return result;
}

uint64_t sub_1A3C2E860()
{

  return swift_deallocObject();
}

void *sub_1A3C2E898(uint64_t a1, uint64_t a2)
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

  sub_1A3C2E3D0(0, &unk_1EB126190, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A3C2E924(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A3C2E898(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A524E4F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A524C834();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A3C2E898(v10, 0);
        result = sub_1A524E3F4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A3C2EA54(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A3C2E924(a1, a2);
  sub_1A3C2EAC4(&unk_1F16DB7A8);
  return v3;
}

uint64_t sub_1A3C2EAC4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A3D36D98(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A3C2EBB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C2EE34();
  v30 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v20);
      result = sub_1A524ECE4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A3C2EE34()
{
  if (!qword_1EB126498)
  {
    type metadata accessor for PhotosLaunchScheduler.FeatureState();
    sub_1A3C2F118();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126498);
    }
  }
}

void sub_1A3C2EE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126610);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3C2EF1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C2F060(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A3C2F0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1A3C2F118()
{
  result = qword_1EB12ACE0;
  if (!qword_1EB12ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ACE0);
  }

  return result;
}

unint64_t sub_1A3C2F170()
{
  result = qword_1EB12ACD8;
  if (!qword_1EB12ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ACD8);
  }

  return result;
}

void sub_1A3C2F1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3C2F228(unsigned __int8 a1)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  v2 = sub_1A524ECE4();

  return sub_1A3C5799C(a1, v2);
}

void sub_1A3C2F294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    type metadata accessor for PHSearchResultRetrievalType(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3C2F304(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1A3C2F3D4()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  if ((*(v0 + 33) & 1) == 0)
  {
    *(v0 + 32) = 257;
    if (qword_1EB18EAE8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A5246E94();
    __swift_project_value_buffer(v9, qword_1EB18EAF0);
    sub_1A5246E84();
    sub_1A5246E24();

    v10 = sub_1A5246E84();
    v11 = sub_1A524D654();

    if (sub_1A524DEC4())
    {
      v14[1] = v11;
      v12 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v12 = 136315138;
      sub_1A3C2EF94();
    }

    (*(v3 + 16))(v6, v8, v2);
    sub_1A5246ED4();
    swift_allocObject();
    v13 = sub_1A5246EC4();
    (*(v3 + 8))(v8, v2);
    *(v1 + 48) = v13;

    dispatch_activate(*(v1 + 24));
  }
}

uint64_t sub_1A3C301FC()
{
  if (!v0[4])
  {
    v2 = *v0;
    type metadata accessor for LemonadeActiveSearchViewModel(0);
    v3 = v0[5];
    sub_1A3C451FC(v0 + *(v2 + 152), v6);
    v4 = v3;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = v0[4];

  return v1;
}

uint64_t sub_1A3C30384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A52411C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1A3C30470()
{
  sub_1A3C30560(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A3C30560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3C305C4(void *a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 28) = 0;
  *(v4 + 44) = 0;
  *(v4 + 36) = 0;
  *(v4 + 52) = 0;
  v5 = OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult;
  v6 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = a1;
  sub_1A3C30678();

  return v4;
}

void sub_1A3C30678()
{
  v0 = *MEMORY[0x1E6978F80];
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v3 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1A3DAF580;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3C7C848;
  v6[3] = &block_descriptor_34_0;
  v4 = _Block_copy(v6);

  v5 = [v1 addObserverForName:v0 object:0 queue:v2 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

uint64_t sub_1A3C307D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3C30828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C30890(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1A3C308D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C30560(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C30954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C309BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C30A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A426B6F8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C30A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C2953C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id LemonadeActiveSearchViewModel.searchText.getter()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1A3C30BC0()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [v0 string];
  v2 = sub_1A524C674();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = [v0 length];
  v9 = 0;
  v10 = 0;
  if (qword_1EB1599E0 != -1)
  {
    swift_once();
  }

  if ([v0 attribute:qword_1EB1599E8 atIndex:0 longestEffectiveRange:&v9 inRange:{0, v6}])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    v7 = v10;
  }

  else
  {
    v7 = 0;
    memset(v11, 0, sizeof(v11));
  }

  sub_1A3C33120(v11, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37100);
  return v7;
}

void sub_1A3C30D64()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
  sub_1A3C30DA0(v2);
}

void sub_1A3C30DA0(int a1)
{
  LODWORD(v29) = a1;
  v2 = type metadata accessor for PhotosSearchResults(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  v32 = v1;
  v30 = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();
  v13 = v2;

  v14 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  swift_beginAccess();
  sub_1A3EA72B4(v1 + v14, v11, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v17 = *(v3 + 48);
  v15 = v3 + 48;
  v16 = v17;
  if (v17(v11, 1, v13))
  {
    sub_1A3C33120(v11, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  else
  {
    v27 = v15;
    v28 = v9;
    v26 = v5;
    v18 = v11[*(v13 + 64)];
    sub_1A3C33120(v11, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    swift_getKeyPath();
    v31 = v1;
    sub_1A52415D4();

    if (*(v1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager))
    {
      v19 = v13;
      swift_getKeyPath();
      v31 = v1;

      sub_1A52415D4();

      if (*(v1 + 16) == (v29 & 1) || (swift_getKeyPath(), v31 = v1, v29 = v12, sub_1A52415D4(), , (*(v1 + 16) & 1) != 0) || (v18 & 1) != 0)
      {
      }

      else
      {
        v20 = [objc_opt_self() sharedSession];
        swift_getKeyPath();
        v31 = v1;
        sub_1A52415D4();

        v21 = v28;
        sub_1A3EA72B4(v1 + v14, v28, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
        if (!v16(v21, 1, v19))
        {
          sub_1A3C8BEA4(v21, v26, type metadata accessor for PhotosSearchResults);
          sub_1A3C33120(v21, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3C33120(v21, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
        swift_getKeyPath();
        v31 = v1;
        sub_1A52415D4();

        swift_beginAccess();
        v22 = [*(v1 + 64) string];
        v23 = v22;
        if (!v22)
        {
          sub_1A524C674();
          v23 = sub_1A524C634();
        }

        v24 = sub_1A3DA6C44();
        [v20 reportToBiomeResults:0 forSearchQuery:v23 forLibrary:v24];
      }
    }
  }
}

uint64_t LemonadeActiveSearchViewModel.searchResults.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  swift_beginAccess();
  return sub_1A3EA72B4(v5 + v3, a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
}

uint64_t sub_1A3C314C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1A3C3157C()
{
  v1 = v0;
  v2 = sub_1A5242054();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  v24 = v1;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  v21 = v8;
  sub_1A52415D4();

  v9 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  swift_beginAccess();
  v19 = *(v3 + 16);
  v19(v7, v1 + v9, v2);
  v18 = sub_1A5242044();
  LOBYTE(v8) = v10;
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v8 & 1) != 0 || (swift_getKeyPath(), v22 = v1, sub_1A52415D4(), , swift_beginAccess(), v12 = *(v1 + 64), v13 = sub_1A3C30BC0(), v15 = v14, v12, (v15))
  {
    swift_getKeyPath();
    v23 = v1;
    sub_1A52415D4();

    v16 = v20;
    v19(v20, v1 + v9, v2);
    sub_1A5242044();
    v11(v16, v2);
  }

  else if (__OFSUB__(v18, v13))
  {
    __break(1u);
  }
}

uint64_t sub_1A3C31844@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  swift_beginAccess();
  v4 = sub_1A5242054();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t LemonadeActiveSearchViewModel.container.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A3EA72B4(v1 + 24, a1, &qword_1EB129AC0, sub_1A3C295A0);
}

uint64_t sub_1A3C31A18()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C2E114(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C30560(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A778(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB174118 = result;
  return result;
}

uint64_t (*sub_1A3C31C9C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A3EA7D30;
}

void sub_1A3C31CF4(uint64_t a1)
{
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for PhotosSearchResults(0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242054();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v37 = a1;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  if (*(a1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager))
  {
    v31 = v7;
    swift_getKeyPath();
    v37 = a1;

    sub_1A52415D4();

    v12 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
    swift_beginAccess();
    (*(v9 + 16))(v11, a1 + v12, v8);
    v13 = sub_1A5242014();
    v30 = v14;
    LOBYTE(v12) = v15;
    (*(v9 + 8))(v11, v8);
    if ((v12 & 1) == 0)
    {
      swift_getKeyPath();
      v36 = a1;
      sub_1A52415D4();

      v16 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
      swift_beginAccess();
      sub_1A3EA72B4(a1 + v16, v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
      if ((*(v32 + 48))(v4, 1, v33) == 1)
      {

        sub_1A3C33120(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
        return;
      }

      sub_1A3DAF754(v4, v31);
      if (v13 == sub_1A52403B4() || (swift_getKeyPath(), v35 = a1, sub_1A52415D4(), , swift_beginAccess(), v26 = *(a1 + 64), v27 = sub_1A3C30BC0(), v29 = v28, v26, (v29 & 1) != 0) || v13 >= v27)
      {
        v17 = sub_1A3E9F2CC();
        if (v13 != sub_1A52403B4())
        {
          swift_getKeyPath();
          v34 = a1;
          sub_1A52415D4();

          swift_beginAccess();
          v18 = *(a1 + 64);
          v19 = sub_1A3C30BC0();
          v21 = v20;

          v22 = (v21 & 1) != 0 ? 0 : v19;
          v23 = __OFSUB__(v13, v22);
          v13 -= v22;
          if (v23)
          {
            __break(1u);
            return;
          }
        }

        v24 = swift_allocObject();
        swift_weakInit();

        v25 = v31;
        sub_1A3DAC4A8(v17, v13, v30, v31, sub_1A3EA7D28, v24);

        sub_1A3EA74BC(v25, type metadata accessor for PhotosSearchResults);
      }

      else
      {
        sub_1A3EA74BC(v31, type metadata accessor for PhotosSearchResults);
      }
    }
  }
}

uint64_t sub_1A3C32280()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t (*sub_1A3C322C0())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A3EA7A7C;
}

uint64_t *PhotosSearchBarCoordinator.__allocating_init(position:activeSearchViewModel:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1A3C323A4(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *sub_1A3C323A4(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 16) = 2;
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  v4 = *(v3 + 136);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1 + v4, 1, 1, AssociatedTypeWitness);
  (*(*(v5 - 8) + 16))(v1 + *(*v1 + 144), a1, v5);
  swift_beginAccess();
  sub_1A3C325C4(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A524BAC4();
  swift_endAccess();
  return v1;
}

uint64_t sub_1A3C32574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A3C325C4(unint64_t *a1, void (*a2)(uint64_t))
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

id PhotosSearchBarCoordinator<>.searchTabConfiguration.getter()
{
  v1 = v0;
  sub_1A3C32774(&v9);
  result = v9;
  if (!v9)
  {
    sub_1A4A3F154(0);
    v3 = sub_1A4A3D590(sub_1A3C32804);
    sub_1A3C52C70(0, &qword_1EB126590);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = sub_1A524DC64();
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD6E0]) initWithSearchBarView:v3 cancelAction:{v5, 0, 0, 0, sub_1A4A43EB8, v4}];

    [v6 setShowsCancelAction_];
    v7 = v6;
    sub_1A3C32774(&v10);

    swift_beginAccess();
    v8 = *(v1 + 56);
    *(v1 + 56) = v6;
    sub_1A3C327F4(v8);
    return v7;
  }

  return result;
}

id sub_1A3C32774@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = v3;
  if (v3 == 1)
  {
    *(v1 + 56) = 0;
    sub_1A3C327F4(1);
    v4 = 0;
  }

  *a1 = v4;
  return sub_1A3C327E4(v3);
}

id sub_1A3C327E4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1A3C327F4(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_1A3C32804(uint64_t a1)
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - v5;
  sub_1A4A451F0(0, &qword_1EB125F28, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar, type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBarContent);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v39 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v39 - v14);
  v16 = *(*a1 + 352);
  v17 = v16(&v42, v13);
  v16(&v41, v17);
  v18 = sub_1A4A3F570();
  v19 = *(*a1 + 152);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v19, v3);
  sub_1A524BAA4();
  (*(v4 + 8))(v6, v3);
  v20 = swift_allocObject();
  swift_weakInit();
  *v15 = v41;
  v15[1] = v18;
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A3C325C4(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A524BAC4();
  v21 = (v15 + *(v8 + 52));
  *v21 = sub_1A4A45430;
  v21[1] = v20;
  v22 = v42;
  sub_1A4A451F0(0, &unk_1EB125F30, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar, type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBar);
  v24 = objc_allocWithZone(v23);
  v25 = MEMORY[0x1E69E7D40];
  *(v24 + *((*MEMORY[0x1E69E7D40] & *v24) + qword_1EB173A00 + 16)) = v22;
  v26 = v39;
  sub_1A4A45054(v15, v39, &qword_1EB125F28, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar);
  v27 = (v24 + *((*v25 & *v24) + qword_1EB173870 + 32));
  *v27 = 0;
  v27[1] = 0;
  v28 = (v24 + *((*v25 & *v24) + qword_1EB173870 + 40));
  *v28 = 0;
  v28[1] = 0;
  *(v24 + *((*v25 & *v24) + qword_1EB173870 + 48)) = 0;
  *(v24 + *((*v25 & *v24) + qword_1EB173870 + 56)) = 2;
  *(v24 + *((*v25 & *v24) + qword_1EB173870 + 64)) = 0;
  sub_1A4A45054(v26, v40, &qword_1EB125F28, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar);
  v29 = sub_1A52485F4();
  sub_1A4A44D20(v26, &qword_1EB125F28, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar);
  sub_1A4A44D20(v15, &qword_1EB125F28, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar);
  v30 = v29;
  sub_1A52485D4();

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = (v30 + *((*v25 & *v30) + qword_1EB173870 + 32));
  v33 = *v32;
  *v32 = sub_1A4A44D90;
  v32[1] = v31;
  v34 = v30;

  sub_1A3C33378(v33);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = (v34 + *((*v25 & *v34) + qword_1EB173870 + 40));
  v37 = *v36;
  *v36 = sub_1A4A45434;
  v36[1] = v35;

  sub_1A3C33378(v37);

  return v34;
}

uint64_t sub_1A3C32EB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1A3C32F10()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A5243AF4();
    if (v1 <= 0x3F)
    {
      sub_1A3C2953C(319, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A3C33010()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3C330B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C30560(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C33120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C33180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7A9FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C331F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A4A2CF30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A3C33264()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B588);
  __swift_project_value_buffer(v0, qword_1EB15B588);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C33378(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A3C33400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *(*a1 + 152);
  swift_beginAccess();
  v21 = *(v6 + 16);
  v21(v9, a1 + v12, v5);
  sub_1A524BAB4();
  v13 = *(v6 + 8);
  v13(v9, v5);
  swift_getKeyPath();
  sub_1A524BAD4();

  v13(v11, v5);
  v31 = v28;
  v32 = v29;
  v33 = v30;
  v24 = sub_1A4A3F570();
  v14 = v21;
  v21(v9, a1 + v12, v5);
  sub_1A524BAA4();
  v13(v9, v5);
  v23 = LemonadeActiveSearchViewModel.searchText.getter();

  v14(v9, a1 + v12, v5);
  sub_1A524BAA4();
  v13(v9, v5);
  v22 = sub_1A3EA5B84();

  v15 = v12;
  v14(v9, a1 + v12, v5);
  sub_1A524BAA4();
  v13(v9, v5);
  LOBYTE(v12) = sub_1A3C33834();

  if (v12)
  {
    v14(v9, a1 + v15, v5);
    sub_1A524BAA4();
    v13(v9, v5);
    LemonadeActiveSearchViewModel.isEditing.getter();
  }

  (*(*a1 + 352))(&v27, v16);
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C35searchSuggestionViewAnimationAnchor7SwiftUI9UnitPointVvg_0();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v25;

  return sub_1A5243B54();
}

uint64_t sub_1A3C33834()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t (*sub_1A3C338F0(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_1A3C9C854;
}

uint64_t sub_1A3C33980()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3C33A20()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t LemonadeNotificationsTabBadgeSource.init(photoLibrary:libraryFilterState:)(void *a1, void *a2)
{
  v4 = sub_1A3C33B34(a1, a2);

  return v4;
}

uint64_t sub_1A3C33B34(void *a1, void *a2)
{
  sub_1A52411B4();
  *(v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource__itemListManager) = 0;
  sub_1A5241604();
  v5 = [objc_opt_self() sharedScheduler];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v12[4] = sub_1A48F2F3C;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3C2E0D0;
  v12[3] = &block_descriptor_299;
  v8 = _Block_copy(v12);
  v9 = a1;
  v10 = a2;

  [v5 scheduleDeferredMainQueueTask_];
  _Block_release(v8);

  return v2;
}

uint64_t sub_1A3C33C9C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3C33CD4()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for LemonadeNotificationsTabBadgeSource()
{
  result = qword_1EB160470;
  if (!qword_1EB160470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C33D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C33DB0(uint64_t a1)
{
  result = sub_1A3C33D68(&qword_1EB125258, type metadata accessor for LemonadeNotificationsTabBadgeSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3C33E38(uint64_t a1, char *a2)
{
  v4 = *a2;
  swift_getKeyPath();
  v5 = *(*v2 + 176);
  v5();

  swift_beginAccess();
  if (*(v2[2] + 16))
  {
    sub_1A3C345C4(v4);
    if (v6)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
  sub_1A3C341C8(a1, v13);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1A3C3422C(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1A3C3422C((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  sub_1A3C34460(v13, &v7[5 * v9 + 4]);
  swift_getKeyPath();
  v5();

  *&v13[0] = v2;
  swift_getKeyPath();
  sub_1A3C34170();
  sub_1A52415F4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v2[2];
  v2[2] = 0x8000000000000000;
  sub_1A3C34478(v7, v4, isUniquelyReferenced_nonNull_native);
  v2[2] = v12;
  swift_endAccess();
  *&v13[0] = v2;
  swift_getKeyPath();
  sub_1A52415E4();
}

uint64_t type metadata accessor for PhotosTabBadgesModel()
{
  result = qword_1EB173E60;
  if (!qword_1EB173E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3C340C8()
{
  result = qword_1EB125EF8;
  if (!qword_1EB125EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125EF8);
  }

  return result;
}

unint64_t sub_1A3C34170()
{
  result = qword_1EB125F60;
  if (!qword_1EB125F60)
  {
    type metadata accessor for PhotosTabBadgesModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125F60);
  }

  return result;
}

uint64_t sub_1A3C341C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1A3C3422C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C34398(0, &qword_1EB1203A8, &qword_1EB125F68, &protocol descriptor for PhotosTabBadgeSource, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C34400(0, &qword_1EB125F68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3C34398(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3C34400(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A3C34460(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1A3C34478(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_1A3C345C4(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3C346C8(v14, a3 & 1);
      result = sub_1A3C345C4(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4323054();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1A3C345C4(char a1)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1 & 1);
  v2 = sub_1A524ECE4();

  return sub_1A3C3494C(a1 & 1, v2);
}

void sub_1A3C34630()
{
  if (!qword_1EB120498)
  {
    sub_1A3C34398(255, &unk_1EB120D08, &qword_1EB125F68, &protocol descriptor for PhotosTabBadgeSource, MEMORY[0x1E69E62F8]);
    sub_1A3C349BC();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120498);
    }
  }
}

uint64_t sub_1A3C346C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C34630();
  v30 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v20);
      result = sub_1A524ECE4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A3C3494C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A3C349BC()
{
  result = qword_1EB125F00;
  if (!qword_1EB125F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125F00);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PickerMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PickerMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A3C34B94@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  (*(*v2 + 176))();

  swift_beginAccess();
  if (*(v2[2] + 16))
  {
    sub_1A3C345C4(v4);
    if (v5)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v9)
  {
    v7 = 0;
    v10 = MEMORY[0x1E69E7CC0] + 32;
    v8 = 1;
    while (1)
    {
      v11 = v8;
      v12 = v7;
      sub_1A3C341C8(v10, v17);
      v13 = v18;
      v14 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v14 + 16))(&v15, v13, v14);
      result = __swift_destroy_boxed_opaque_existential_0(v17);
      if (!v16)
      {
        v7 = v15;
      }

      v8 = v16 & v11;
      if ((v16 & 1) == 0 && (v11 & 1) == 0)
      {
        v7 = v12 + v15;
        if (__OFADD__(v12, v15))
        {
          __break(1u);
          return result;
        }

        v8 = 0;
      }

      v10 += 40;
      if (!--v9)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = 0;
  v8 = 1;
LABEL_15:
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosCollectionPreviewPlayer.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A3C34DD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 168))();

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource__itemListManager))
  {

    sub_1A453641C();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

void sub_1A3C35320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1A3C35940()
{
  if (qword_1EB175840 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A3C35B00(uint64_t a1)
{
  sub_1A3C37010(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3C35B84()
{
  if (!qword_1EB126130)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126130);
    }
  }
}

uint64_t _s14AssociatedDataCMa_6()
{
  result = qword_1EB175820;
  if (!qword_1EB175820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C35DC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C52C70(255, &qword_1EB126750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _Workaround_57367996_IfNecessary(void *a1)
{
  v1 = a1;
  v2 = +[PXApplicationSettings sharedInstance];
  v3 = [v2 wantsPseudostringsWithSpecialCharacters];

  if (v3)
  {
    if (_Workaround_57367996_IfNecessary_onceToken != -1)
    {
      dispatch_once(&_Workaround_57367996_IfNecessary_onceToken, &__block_literal_global_49187);
    }

    if (objc_opt_class() != _Workaround_57367996_IfNecessary_localizedStringClass)
    {
      v5 = +[PXApplicationSettings sharedInstance];
      v6 = [v5 stringWithSpecialCharacters];
      v7 = [v6 stringByAppendingString:v1];

      v1 = v7;
    }
  }

  return v1;
}

void sub_1A3C36260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C362C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C36318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A3C3637C()
{
  result = qword_1EB126110;
  if (!qword_1EB126110)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB126110);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSegmentedControlModel()
{
  result = qword_1EB17DE90;
  if (!qword_1EB17DE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C36418()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for LemonadeToolbarModel()
{
  result = qword_1EB188CC0;
  if (!qword_1EB188CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C36514()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for LemonadeNavigationDestination()
{
  result = qword_1EB17E220;
  if (!qword_1EB17E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3C365FC()
{
  sub_1A3C3682C();
  if (v0 <= 0x3F)
  {
    sub_1A3C47924();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for LemonadeMemoryPlayerConfiguration(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
                if (v7 <= 0x3F)
                {
                  sub_1A3C48D84();
                  if (v8 <= 0x3F)
                  {
                    sub_1A3C52C70(319, &qword_1EB126B10);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1A3C3682C()
{
  if (!qword_1EB125968)
  {
    sub_1A3C36888();
    v0 = type metadata accessor for LemonadePeopleFeature.FeedConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125968);
    }
  }
}

unint64_t sub_1A3C36888()
{
  result = qword_1EB129B00;
  if (!qword_1EB129B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B00);
  }

  return result;
}

unint64_t sub_1A3C368DC(uint64_t a1)
{
  result = sub_1A3C36904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3C36904()
{
  result = qword_1EB129B08;
  if (!qword_1EB129B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B08);
  }

  return result;
}

uint64_t sub_1A3C36970()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A3C369AC()
{
  result = sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LemonadeShelfBodyStyle(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A3C36A78()
{
  type metadata accessor for LemonadeItemsLayoutSpec.Style(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C47BD4(319, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3C36B34(uint64_t a1)
{
  if (!qword_1EB1258B8)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1258B8);
    }
  }
}

uint64_t sub_1A3C36C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C36CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C36CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C36D34(uint64_t a1)
{
  result = sub_1A3C36CEC(&qword_1EB125370, type metadata accessor for LemonadeSocialGroupsShelfProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3C36D8C()
{
  sub_1A3C47CBC(319, &qword_1EB129F80, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListManager);
  if (v0 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v1 <= 0x3F)
    {
      sub_1A3C47CBC(319, &qword_1EB120730, &qword_1EB126850, &off_1E7721830, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PXPhotosViewConfigurationAllowedBehaviors(319);
        if (v3 <= 0x3F)
        {
          sub_1A3C47CBC(319, &qword_1EB1207D0, &qword_1EB1207D8, &off_1E77218D0, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A3C47CBC(319, &unk_1EB1207E0, &qword_1EB1207F0, off_1E771F5C8, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A3C37710(319, &qword_1EB1201F0, sub_1A3C3637C);
              if (v6 <= 0x3F)
              {
                sub_1A5245BA4();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A3C36FC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37010(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37060(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C370B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C371A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C371F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37290(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C372E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37380(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C373D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37470(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C374C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37510(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C375B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C37604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C37668(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C376BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C37710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C37764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C377C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for LemonadeSavedTodayItemListManager()
{
  result = qword_1EB17B690;
  if (!qword_1EB17B690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3C37908()
{
  result = qword_1EB129FB8;
  if (!qword_1EB129FB8)
  {
    sub_1A4338F3C(255, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129FB8);
  }

  return result;
}

void sub_1A3C3798C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C379F4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C52C70(255, a3);
    v4 = type metadata accessor for PhotoKitItem();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C37A4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C37AD4()
{
  sub_1A3C47CBC(319, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
  if (v0 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v1 <= 0x3F)
    {
      sub_1A3C37D10();
      if (v2 <= 0x3F)
      {
        sub_1A3C47CBC(319, &qword_1EB120730, &qword_1EB126850, &off_1E7721830, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A3C37380(319, &qword_1EB1250D8, &type metadata for LemonadeDetailsViewScrollDetentsProvider.DetentIdentifier, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for PXPhotosViewConfigurationAllowedBehaviors(319);
            if (v5 <= 0x3F)
            {
              sub_1A3C47CBC(319, &qword_1EB1207D0, &qword_1EB1207D8, &off_1E77218D0, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1A3C47CBC(319, &unk_1EB1207E0, &qword_1EB1207F0, off_1E771F5C8, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1A3C37710(319, &qword_1EB1201F0, sub_1A3C3637C);
                  if (v8 <= 0x3F)
                  {
                    sub_1A5245BA4();
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

void sub_1A3C37D10()
{
  if (!qword_1EB125C48)
  {
    sub_1A3C47CBC(255, &qword_1EB12A7B0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItem);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125C48);
    }
  }
}

void sub_1A3C37DAC()
{
  sub_1A52411C4();
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126AC0);
    if (v1 <= 0x3F)
    {
      sub_1A3C484DC();
      if (v2 <= 0x3F)
      {
        sub_1A5245BA4();
      }
    }
  }
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesConfiguration()
{
  result = qword_1EB178F90;
  if (!qword_1EB178F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3C37EBC()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PXGenerativeStoryTransitionType(319);
    if (v1 <= 0x3F)
    {
      sub_1A3C37FF0();
      if (v2 <= 0x3F)
      {
        sub_1A3C48558();
        if (v3 <= 0x3F)
        {
          sub_1A5244854();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3C37FA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C37FF0()
{
  if (!qword_1EB1209E8)
  {
    sub_1A3C52C70(255, &qword_1EB126A40);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1209E8);
    }
  }
}

void sub_1A3C38078()
{
  sub_1A3C52C70(319, &qword_1EB126A40);
  if (v0 <= 0x3F)
  {
    sub_1A5244A24();
    if (v1 <= 0x3F)
    {
      sub_1A3C487B8(319, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5244984();
        if (v3 <= 0x3F)
        {
          sub_1A3C4881C(319, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A3C48D1C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A3C38278(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXActionParameterKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C382BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C38304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C3834C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3C38394()
{
  if (!qword_1EB12B1C0)
  {
    sub_1A524BEE4();
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B1C0);
    }
  }
}

void sub_1A3C383EC(uint64_t a1)
{
  v2 = sub_1A5246EA4();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v4);
  v30 = sub_1A5246E54();
  v5 = *(v30 - 8);
  v6 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  if (qword_1EB18EB10 != -1)
  {
    swift_once();
  }

  v13 = sub_1A5246E94();
  v14 = __swift_project_value_buffer(v13, qword_1EB18EB18);
  sub_1A5246E44();
  v28 = v14;
  v15 = sub_1A5246E84();
  v16 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v17 = swift_slowAlloc();
    v24 = v5;
    v18 = a1;
    v19 = v17;
    *v17 = 0;
    v20 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, v16, v20, "LemonadeRootPreload", "", v19, 2u);
    v21 = v19;
    a1 = v18;
    v5 = v24;
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  v22 = v30;
  (*(v5 + 16))(v10, v12, v30);
  sub_1A5246ED4();
  swift_allocObject();
  sub_1A5246EC4();
  (*(v5 + 8))(v12, v22);
  sub_1A3C38B30();
  sub_1A3C38BD4();

  sub_1A5243074();
  [objc_opt_self() preloadResourcesForPhotoLibrary_];
  PXGViewPreloadResources();
}

uint64_t sub_1A3C38940()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EB18);
  __swift_project_value_buffer(v4, qword_1EB18EB18);
  v5 = sub_1A3C38A40();
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A3C38A64(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1A3C38AB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A5246F24();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A5246F14();
}

char *sub_1A3C38B30()
{
  if (qword_1EB185FC0 != -1)
  {
    swift_once();
  }

  return &byte_1EB1EAED0;
}

uint64_t sub_1A3C38B80()
{
  result = [objc_opt_self() isLaunchedForTesting];
  if (result)
  {
    sub_1A5245574();
    result = sub_1A5245564();
  }

  byte_1EB1EAED0 = result & 1;
  return result;
}

uint64_t sub_1A3C38BD4()
{
  v0 = sub_1A524C634();
  v1 = PXLemonadeLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t _isContentSyndicationPossible()
{
  v0 = PFIsPhotosPicker();
  if (v0)
  {
    v1 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A3C1C000, v1, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content Syndication not possible in the photos picker process.", v3, 2u);
    }
  }

  return v0 ^ 1u;
}

uint64_t _isContentSyndicationAvailable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
    v7 = PLSyndicationUIGetLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content Syndication is enabled for testing.", buf, 2u);
      }

      goto LABEL_20;
    }

    if (v8)
    {
      *v24 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content Syndication is disabled for testing.", v24, 2u);
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  if (_isContentSyndicationPossible())
  {
    if ([MEMORY[0x1E69789A8] isMultiLibraryModeEnabled])
    {
      v9 = 1;
      goto LABEL_16;
    }

    v10 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v11 = "ContentSyndicationConfiguration: Content Syndication not available because multilibrary mode is not enabled in this process.";
      v12 = v22;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v11 = "ContentSyndicationConfiguration: Content Syndication is never possible in this environment.";
      v12 = &v23;
LABEL_14:
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }
  }

  v9 = 0;
LABEL_16:
  v13 = +[PXContentSyndicationSettings sharedInstance];
  v7 = v13;
  if (!v9)
  {
LABEL_24:
    [v7 ignoreSocialLayerEnablement];
    goto LABEL_25;
  }

  if (([v13 contentSyndicationEnabled]& 1) == 0)
  {
    v17 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content Syndication not available because it is disabled in internal settings.", v21, 2u);
    }

    goto LABEL_24;
  }

  if (([v7 ignoreSocialLayerEnablement]& 1) == 0)
  {
    v14 = +[PXContentSyndicationHighlightCenter shared];
    v15 = [v14 isAutomaticSharingEnabled];

    if ((v15 & 1) == 0)
    {
      v19 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content Syndication not available. Shared With You not enabled for Photos (or at all).", v20, 2u);
      }

      goto LABEL_25;
    }
  }

LABEL_20:
  v16 = 1;
LABEL_26:

  return v16;
}

uint64_t _IsLocalModeEnabled(void *a1)
{
  v1 = [a1 pathManager];
  v2 = PLCloudPhotoLibraryLocalModeEnabled();

  return v2;
}

PXCPLStatusProvider *_CreateStatusProviderIfNecessary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (+[PXMockCPLStatusProvider shouldUseMockService])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = +[PXMockCPLStatusProvider userDefaultsMockStatusProvider];
LABEL_7:
      v6 = v5;
      goto LABEL_10;
    }

LABEL_6:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 isCloudPhotosEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v7 = [PXCPLStatusProvider alloc];
    v8 = [v3 photoLibrary];
    v6 = [(PXCPLStatusProvider *)v7 initWithPhotoLibrary:v8];
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

void sub_1A3C392EC()
{
  sub_1A3C39450();
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A3C39450()
{
  if (!qword_1EB128FD0)
  {
    sub_1A5244084();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128FD0);
    }
  }
}

uint64_t PHPhotoLibrary.lemonadeBookmarksManager.getter()
{
  if (qword_1EB184A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = sub_1A3C49318(v0, qword_1EB184A88);
  if (!v1)
  {
    swift_endAccess();
    v3 = v0;
    sub_1A431645C();
    v5 = v4;
    v7 = v6;
    type metadata accessor for LemonadeBookmarksManager(0);
    v8 = swift_allocObject();
    sub_1A3C494E8(v3, v5, v7, v8);
  }

  v2 = v1;
  swift_endAccess();
  return v2;
}

unint64_t sub_1A3C39660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3C49BDC();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A3C39EA4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A3C3976C()
{
  if (!qword_1EB126510)
  {
    sub_1A3C397F8(255, &qword_1EB129F30, &type metadata for LemonadeBookmarksManager.BookmarksResult, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126510);
    }
  }
}

void sub_1A3C397F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C39848(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C39898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C398E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C39938(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C39988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C399DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3C39A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A3C39A90()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C49B90(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C2A340(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A908(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1847A8 = result;
  return result;
}

id sub_1A3C39D28(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C39EA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A3C39EE8(v13, a3 & 1);
      v8 = sub_1A3C39EA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126BF0);
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A42E2E04();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_1A3C39EA4(uint64_t a1)
{
  v2 = sub_1A524DBE4();

  return sub_1A3C3A14C(a1, v2);
}

uint64_t sub_1A3C39EE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C49BDC();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A3C3A14C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C52C70(0, &qword_1EB126BF0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A524DBF4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A3C3A220(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C52C70(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(void *a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1A3C49C9C(a1, a2, a3);

  return v6;
}

uint64_t sub_1A3C3A370()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EA88);
  __swift_project_value_buffer(v4, qword_1EB18EA88);
  v5 = sub_1A3C4A5F8();
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A3C3A4DC()
{
  result = sub_1A52453A4();
  if (v1 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      result = sub_1A52411C4();
      if (v3 <= 0x3F)
      {
        result = sub_1A5241614();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A3C3A660(uint64_t a1)
{
  if (qword_1EB15CE70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB15CE78;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1A3C3A718((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

_BYTE *sub_1A3C3A718@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = [*a1 objectForKey_];
  v7 = result;
  if (!result)
  {
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager();
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
    v9 = *MEMORY[0x1E69C1488];
    v10 = sub_1A52453A4();
    v11 = *(*(v10 - 8) + 104);
    v12 = v4;
    v11(&v7[v8], v9, v10);
    v11(&v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState], v9, v10);
    v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___cardVisibilityState] = 0;
    v13 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_logger;
    v14 = sub_1A3C4A780();
    v15 = sub_1A5246F24();
    (*(*(v15 - 8) + 16))(&v7[v13], v14, v15);
    sub_1A52411B4();
    v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling] = 0;
    v16 = &v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryStatusObservation];
    *v16 = 0;
    v16[1] = 0;
    v17 = &v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryFilterStateObservation];
    *v17 = 0;
    v17[1] = 0;
    v18 = &v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode];
    *v18 = 0;
    v18[8] = 1;
    *&v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor] = 0;
    sub_1A5241604();
    *&v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_photoLibrary] = v12;
    v19 = objc_opt_self();
    v20 = v12;
    v21 = [v19 sharedLibraryStatusProviderWithPhotoLibrary_];
    *&v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_sharedLibraryStatusProvider] = v21;
    v22 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];
    *&v7[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_sharedLibraryFilterState] = v22;
    sub_1A3C4A7E4();
    PXRegisterPreferencesObserver(v7);

    result = [v5 setObject:v7 forKey:v20];
  }

  *a2 = v7;
  return result;
}

void *sub_1A3C3A99C(void *a1)
{
  v2 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A4313510(a1);
  if (v4 >> 60 == 15)
  {

    return sub_1A4312F5C(a1);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_1A5240944();
    swift_allocObject();
    sub_1A5240934();
    sub_1A3C4AC38();
    sub_1A5240924();

    if (v9 >= 11)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v8 = sub_1A4312F5C(a1);
    sub_1A3DB556C(v6, v7);
    return v8;
  }
}

void sub_1A3C3ACD8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB0F8);
  __swift_project_value_buffer(v0, qword_1EB1EB0F8);
  sub_1A5246EF4();
}

uint64_t sub_1A3C3AD58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C3ADA8(void *a1)
{
  sub_1A3C4ACC8(0, &qword_1EB126330, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1A3C3B11C();
  sub_1A524ED14();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1A524E8D4();
    sub_1A4317294(0, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
    v10[15] = 1;
    sub_1A3C3B5F4(&qword_1EB126F40, &qword_1EB12A540);
    sub_1A524E8E4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1A3C3AFE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A3C2EA54(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1A524E4F4();
    a6 = v11;
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

uint64_t sub_1A3C3B0F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A3C3ADA8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1A3C3B11C()
{
  result = qword_1EB178070;
  if (!qword_1EB178070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB178070);
  }

  return result;
}

unint64_t sub_1A3C3B22C()
{
  result = qword_1EB178060;
  if (!qword_1EB178060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB178060);
  }

  return result;
}

unint64_t sub_1A3C3B280()
{
  result = qword_1EB178068;
  if (!qword_1EB178068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB178068);
  }

  return result;
}

void sub_1A3C3B2D4()
{
  if (!qword_1EB12A1C0)
  {
    type metadata accessor for LemonadeFeatureLibrary.Shelf(255);
    sub_1A3C3DA2C(&qword_1EB12A150, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v0 = type metadata accessor for LemonadeShelvesLoader();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A1C0);
    }
  }
}

void sub_1A3C3B368()
{
  sub_1A3C4AEA4();
  if (v0 <= 0x3F)
  {
    sub_1A3C4AFFC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeMapFeature(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LemonadeICloudLinksFeature();
        if (v3 <= 0x3F)
        {
          type metadata accessor for LemonadeSharedWithYouFeature();
          if (v4 <= 0x3F)
          {
            type metadata accessor for LemonadeImportSourcesFeature(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
              if (v6 <= 0x3F)
              {
                type metadata accessor for LemonadeMacSyncedAlbumsFeature(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for LemonadePhotosChallengeFeature(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for LemonadePhototypesFeature(319);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for LemonadeSuggestionsFeature(319);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for LemonadeSearchCollectionResultsFeature(319);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
}

uint64_t sub_1A3C3B52C()
{
  result = sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3C3B5F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A4317294(255, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
    sub_1A43172F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C3B6C0()
{
  result = sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LemonadeMapFeature.ShelfProvider(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t LemonadeBookmark.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C3BB98(0, &qword_1EB126398, sub_1A3C4B384, &type metadata for LemonadeBookmark.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  sub_1A5241164();
  (*(v9 + 8))(v11, v8);
  v15 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A3C4B384();
  v16 = v27;
  sub_1A524ED14();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v27 = v12;
    v17 = v25;
    v18 = v26;
    v32 = 0;
    v19 = sub_1A524E8A4();
    v21 = v20;

    *v14 = v19;
    *(v14 + 1) = v21;
    v30 = 1;
    sub_1A3C4B910();
    sub_1A524E8E4();
    v14[16] = v31;
    v29 = 2;
    sub_1A3C4BBC8(&qword_1EB12A588, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A524E8E4();
    (*(v17 + 8))(v7, v18);
    sub_1A3C5806C(v4, &v14[*(v27 + 24)], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A3C581A4(v14, v23, type metadata accessor for LemonadeBookmark);
    __swift_destroy_boxed_opaque_existential_0(v28);
    return sub_1A3C582D4(v14, type metadata accessor for LemonadeBookmark);
  }
}

void sub_1A3C3BB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata accessor for LemonadeICloudLinksShelfProvider()
{
  result = qword_1EB17BF00;
  if (!qword_1EB17BF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3C3BC50()
{
  result = qword_1EB18CFB0;
  if (!qword_1EB18CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18CFB0);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSharedWithYouGridShelfProvider()
{
  result = qword_1EB1792F0;
  if (!qword_1EB1792F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeShelvesLayoutStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1A3C3BE04()
{
  result = qword_1EB12A560;
  if (!qword_1EB12A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A560);
  }

  return result;
}

uint64_t sub_1A3C3BE58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C3BE88();
  *a1 = result;
  return result;
}

uint64_t sub_1A3C3BE88()
{
  v0 = sub_1A524E824();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A3C3BED4()
{
  result = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A3C4BCF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3C3BF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A3C3BB98(0, &qword_1EB126350, sub_1A3C4BD3C, &type metadata for LemonadeBookmark.CollectionIdentifier.AllItemsCodingKeys, MEMORY[0x1E69E6F48]);
  v130 = v4;
  v129 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v140 = &v106 - v5;
  sub_1A3C3BB98(0, &qword_1EB126380, sub_1A3C3D5C8, &type metadata for LemonadeBookmark.CollectionIdentifier.TripMiddleDateIdentifierCodingKeys, v3);
  v7 = *(v6 - 8);
  v131 = v6;
  v132 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v106 - v8;
  sub_1A3C3BB98(0, &qword_1EB126390, sub_1A3C4C5B8, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitCloudIdentifierCodingKeys, v3);
  v128 = v9;
  v127 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v106 - v10;
  sub_1A3C3BB98(0, &qword_1EB126340, sub_1A3C3D7D8, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitSmartAlbumCodingKeys, v3);
  v124 = v11;
  v123 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v106 - v12;
  sub_1A3C3BB98(0, &qword_1EB126360, sub_1A3C3D884, &type metadata for LemonadeBookmark.CollectionIdentifier.MockCodingKeys, v3);
  v126 = v13;
  v125 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v106 - v14;
  sub_1A3C3BB98(0, &qword_1EB126368, sub_1A3C3DB20, &type metadata for LemonadeBookmark.CollectionIdentifier.MapCodingKeys, v3);
  v120 = v15;
  v119 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v106 - v16;
  sub_1A3C3BB98(0, &qword_1EB126358, sub_1A3C3DD34, &type metadata for LemonadeBookmark.CollectionIdentifier.UtilityCodingKeys, v3);
  v122 = v17;
  v121 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v106 - v18;
  sub_1A3C3BB98(0, &qword_1EB126378, sub_1A3C3DE58, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitTransientIdentifierCodingKeys, v3);
  v118 = v19;
  v117 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v106 - v20;
  sub_1A3C3BB98(0, &qword_1EB126348, sub_1A3C3E2A0, &type metadata for LemonadeBookmark.CollectionIdentifier.CloudGUIDCodingKeys, v3);
  v115 = v21;
  v116 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v106 - v22;
  sub_1A3C3BB98(0, &qword_1EB126388, sub_1A3C4D450, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitLocalIdentifierCodingKeys, v3);
  v114 = v23;
  v113 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v106 - v24;
  sub_1A3C3BB98(0, &qword_1EB126370, sub_1A3C3E5E0, &type metadata for LemonadeBookmark.CollectionIdentifier.CodingKeys, v3);
  v143 = *(v25 - 8);
  v144 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v106 - v26;
  v142 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v28 = MEMORY[0x1EEE9AC00](v142);
  v133 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v112 = (&v106 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v111 = (&v106 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v110 = (&v106 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v106 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v106 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v106 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = (&v106 - v46);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v106 - v48;
  v50 = a1[3];
  v149 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1A3C3E5E0();
  v51 = v148;
  sub_1A524ED14();
  if (!v51)
  {
    v106 = v47;
    v107 = v44;
    v108 = v41;
    v109 = v38;
    v52 = v145;
    v53 = v146;
    v148 = v49;
    v54 = v143;
    v55 = v144;
    v56 = v147;
    v57 = sub_1A524E924();
    if (*(v57 + 16) == 1)
    {
      v58 = *(v57 + 32);
      if (v58 != 10)
      {
        if (*(v57 + 32) <= 4u)
        {
          if (*(v57 + 32) <= 1u)
          {
            if (*(v57 + 32))
            {
              LOBYTE(v151) = 1;
              sub_1A3C3E2A0();
              v76 = v52;
              sub_1A524E844();
              v84 = v115;
              v98 = sub_1A524E8A4();
              v100 = v99;
              (*(v116 + 8))(v76, v84);
              (*(v54 + 8))(v27, v55);
              swift_unknownObjectRelease();
              v101 = v107;
              *v107 = v98;
              v101[1] = v100;
              swift_storeEnumTagMultiPayload();
              v102 = v101;
LABEL_26:
              v74 = v148;
              sub_1A3C5806C(v102, v148, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
              v56 = v147;
              goto LABEL_30;
            }

            LOBYTE(v151) = 0;
            sub_1A3C4D450();
            v66 = v134;
            sub_1A524E844();
            v83 = v114;
            v95 = sub_1A524E8A4();
            v97 = v96;
            (*(v113 + 8))(v66, v83);
            (*(v54 + 8))(v27, v55);
            swift_unknownObjectRelease();
            v94 = v106;
            *v106 = v95;
            v94[1] = v97;
LABEL_25:
            swift_storeEnumTagMultiPayload();
            v102 = v94;
            goto LABEL_26;
          }

          if (v58 != 2)
          {
            if (v58 == 3)
            {
              LOBYTE(v151) = 3;
              sub_1A3C3DD34();
              v59 = v137;
              sub_1A524E844();
              sub_1A5244EB4();
              sub_1A3C4BBC8(&qword_1EB124C10, MEMORY[0x1E69C1278]);
              v82 = v122;
              sub_1A524E8E4();
              (*(v121 + 8))(v59, v82);
              (*(v54 + 8))(v27, v55);
              swift_unknownObjectRelease();
              v94 = v109;
              goto LABEL_25;
            }

            LOBYTE(v151) = 4;
            sub_1A3C3DB20();
            v73 = v136;
            sub_1A524E844();
            (*(v119 + 8))(v73, v120);
            (*(v54 + 8))(v27, v55);
            swift_unknownObjectRelease();
            v74 = v148;
            swift_storeEnumTagMultiPayload();
            v56 = v147;
LABEL_30:
            sub_1A3C5806C(v74, v56, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
            return __swift_destroy_boxed_opaque_existential_0(v149);
          }

          LOBYTE(v151) = 2;
          sub_1A3C3DE58();
          v71 = v135;
          sub_1A524E844();
          v78 = v118;
          v79 = sub_1A524E8A4();
          v87 = v86;
          v88 = *(v117 + 8);
          v146 = v79;
          v88(v71, v78);
          (*(v54 + 8))(v27, v55);
          swift_unknownObjectRelease();
          v93 = v108;
          *v108 = v146;
          v93[1] = v87;
          goto LABEL_27;
        }

        if (*(v57 + 32) <= 6u)
        {
          v145 = v57;
          if (v58 != 5)
          {
            LOBYTE(v151) = 6;
            sub_1A3C3D7D8();
            v77 = v138;
            sub_1A524E844();
            sub_1A3C57C00();
            v85 = v124;
            sub_1A524E8E4();
            (*(v123 + 8))(v77, v85);
            (*(v54 + 8))(v27, v55);
            swift_unknownObjectRelease();
            v93 = v111;
            *v111 = v151;
LABEL_27:
            swift_storeEnumTagMultiPayload();
            v103 = v93;
LABEL_29:
            v74 = v148;
            sub_1A3C5806C(v103, v148, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
            goto LABEL_30;
          }

          LOBYTE(v151) = 5;
          sub_1A3C3D884();
          sub_1A524E844();
          LOBYTE(v151) = 0;
          v67 = v126;
          v68 = sub_1A524E8A4();
          v70 = v69;
          v141 = v68;
          v150 = 1;
          sub_1A3E57CB4();
          sub_1A524E8E4();
          (*(v125 + 8))(v53, v67);
          (*(v54 + 8))(v27, v55);
          swift_unknownObjectRelease();
          v104 = v151;
          v105 = v110;
          *v110 = v141;
          v105[1] = v70;
          v105[2] = v104;
        }

        else
        {
          if (v58 != 7)
          {
            v145 = v57;
            if (v58 != 8)
            {
              LOBYTE(v151) = 9;
              sub_1A3C4BD3C();
              v75 = v140;
              sub_1A524E844();
              (*(v129 + 8))(v75, v130);
              (*(v54 + 8))(v27, v55);
              swift_unknownObjectRelease();
              v74 = v148;
              swift_storeEnumTagMultiPayload();
              goto LABEL_30;
            }

            LOBYTE(v151) = 8;
            sub_1A3C3D5C8();
            v64 = v141;
            sub_1A524E844();
            sub_1A5241144();
            sub_1A3C4BBC8(&qword_1EB1387D0, MEMORY[0x1E6969530]);
            v65 = v131;
            sub_1A524E8E4();
            (*(v132 + 8))(v64, v65);
            (*(v54 + 8))(v27, v55);
            swift_unknownObjectRelease();
            v93 = v133;
            goto LABEL_27;
          }

          LOBYTE(v151) = 7;
          sub_1A3C4C5B8();
          v72 = v139;
          sub_1A524E844();
          v80 = v72;
          v81 = v128;
          v89 = sub_1A524E8A4();
          v90 = *(v127 + 8);
          v146 = v91;
          v90(v80, v81);
          (*(v54 + 8))(v27, v55);
          swift_unknownObjectRelease();
          v105 = v112;
          v92 = v146;
          *v112 = v89;
          v105[1] = v92;
        }

        swift_storeEnumTagMultiPayload();
        v103 = v105;
        goto LABEL_29;
      }
    }

    v60 = sub_1A524E4C4();
    swift_allocError();
    v62 = v61;
    sub_1A3FA0828();
    *v62 = v142;
    sub_1A524E854();
    sub_1A524E4A4();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
    swift_willThrow();
    (*(v54 + 8))(v27, v55);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v149);
}