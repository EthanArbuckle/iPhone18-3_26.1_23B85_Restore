uint64_t __UIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation()
{
  _UIInterfaceOrientationRotationDirectionForRotationFromInterfaceOrientationToInterfaceOrientation();
  _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection();
  if (BSFloatEqualToFloat())
  {
    return 0;
  }

  if (BSFloatEqualToFloat())
  {
    return 1;
  }

  if (BSFloatEqualToFloat())
  {
    return 2;
  }

  if (BSFloatEqualToFloat())
  {
    return 3;
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"This should be impossible, do you have a precision error?"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __UIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation_cold_1(v1);
  }

  [v1 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void sub_265A4F084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

Class __getPRSWallpaperLocationStateObserverClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSWallpaperLocationStateObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSWallpaperLocationStateObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRSWallpaperLocationStateObserverClass_block_invoke_cold_1();
    return PosterBoardServicesLibrary();
  }

  return result;
}

uint64_t PosterBoardServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BB2AD8;
    v5 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PosterBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPRUISPosterWorkspaceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB2B10;
    v6 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PosterBoardUIServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRUISPosterWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISPosterWorkspaceClass_block_invoke_cold_1();
  }

  getPRUISPosterWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPRSPosterRoleLockScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardServicesLibrary();
  result = dlsym(v2, "PRSPosterRoleLockScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRSPosterRoleLockScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRSWallpaperObserverConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSWallpaperObserverConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSWallpaperObserverConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRSWallpaperObserverConfigurationClass_block_invoke_cold_1();
    return __getPRSWallpaperObserverClass_block_invoke(v3);
  }

  return result;
}

Class __getPRSWallpaperObserverClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSWallpaperObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSWallpaperObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRSWallpaperObserverClass_block_invoke_cold_1();
    return +[(SASLogging *)v3];
  }

  return result;
}

id getPRSPosterSnapshotRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSPosterSnapshotRequestClass_softClass;
  v7 = getPRSPosterSnapshotRequestClass_softClass;
  if (!getPRSPosterSnapshotRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSPosterSnapshotRequestClass_block_invoke;
    v3[3] = &unk_279BB2AB8;
    v3[4] = &v4;
    __getPRSPosterSnapshotRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265A501C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary_0();
  result = objc_getClass("PRSService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSServiceClass_block_invoke_cold_1();
  }

  getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PosterBoardServicesLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PosterBoardServicesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279BB2BC0;
    v3 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PosterBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPRSPosterSnapshotRequestClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary_0();
  result = objc_getClass("PRSPosterSnapshotRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSPosterSnapshotRequestClass_block_invoke_cold_1();
  }

  getPRSPosterSnapshotRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_265A51EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265A52180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_265A530EC(unsigned __int8 a1)
{
  v1 = 1869373768;
  v2 = 0xD000000000000010;
  if (a1 != 2)
  {
    v2 = 0x73756F6E696D754CLL;
  }

  if (a1)
  {
    v1 = 0x756F72676B636142;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_265A53188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1869373768;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x73756F6E696D754CLL;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000265AAE1A0;
    }

    else
    {
      v5 = 0xED00007478655420;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F72676B636142;
    }

    else
    {
      v4 = 1869373768;
    }

    if (v3)
    {
      v5 = 0xEF7478655420646ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x8000000265AAE1A0;
  if (a2 != 2)
  {
    v7 = 0x73756F6E696D754CLL;
    v8 = 0xED00007478655420;
  }

  if (a2)
  {
    v2 = 0x756F72676B636142;
    v6 = 0xEF7478655420646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265AA7B50();
  }

  return v11 & 1;
}

uint64_t sub_265A532F4()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A533CC()
{
  sub_265AA75B0();
}

uint64_t sub_265A53490()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A53564@<X0>(_BYTE *a1@<X8>)
{
  result = sub_265A56AF0();
  *a1 = result;
  return result;
}

void sub_265A53594(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1869373768;
  v4 = 0x8000000265AAE1A0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x73756F6E696D754CLL;
    v4 = 0xED00007478655420;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636142;
    v2 = 0xEF7478655420646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_265A537EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265AA6EF0();

  return v1;
}

uint64_t sub_265A538F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_265AA6F00();
}

void (*sub_265A5396C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_265AA6EE0();
  return sub_265A53A10;
}

void sub_265A53A10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_265A53A78()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F650);
  sub_265AA6EC0();
  return swift_endAccess();
}

uint64_t sub_265A53AEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F658);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F650);
  sub_265AA6ED0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_265A53C24(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F658);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel__animationTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F650);
  sub_265AA6EC0();
  swift_endAccess();
  return sub_265A53D94;
}

void sub_265A53D94(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_265AA6ED0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_265AA6ED0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id sub_265A53EFC()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___displayLinkManager;
  v2 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___displayLinkManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___displayLinkManager);
  }

  else
  {
    type metadata accessor for DisplayLinkManager();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = v4;
    v6 = v0;
    v7 = sub_265A9EE70(sub_265A573F0, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_265A53FB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_text);

  return v1;
}

double sub_265A53FF0()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_luminousTextIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A54034(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_luminousTextIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A540E4()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_luminousTextRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A54128(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_luminousTextRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A541D8()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A5421C(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A542CC()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousForwardFade;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A54310(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousForwardFade;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A543C0()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A54404(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A544B4()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloTextShineAffectedRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A544F8(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloTextShineAffectedRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A545A8()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloTextShineIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A545EC(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloTextShineIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A5469C()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloGlowIntensity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A546E0(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloGlowIntensity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A54790()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloBlur;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A547D4(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloBlur;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A54884()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A548C8(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloPadding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_265A54978()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A549BC(double a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_265A54AC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_visibleLayers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_265A54B7C()
{
  type metadata accessor for ColorProducer();
  v1 = (*(*v0 + 232))();
  return sub_265A583A0(v1) >= 1.0;
}

uint64_t sub_265A54BE4()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___textGradientEntries;
  if (*(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___textGradientEntries))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___textGradientEntries);
  }

  else
  {
    type metadata accessor for ColorProducer();
    v2 = sub_265A57DB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_265A54C7C(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_265A54BE4();
  return sub_265A54CC4;
}

uint64_t sub_265A54CEC(double a1)
{
  v2 = a1 * 1.4 * 1.2;
  v3 = (*(*v1 + 248))(v9);
  *v4 = v2 + *v4;
  v3(v9, 0);
  type metadata accessor for ColorProducer();
  v5 = (*(*v1 + 232))();
  if (sub_265A583A0(v5) >= 0.7 && (*(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_didNotify) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_onFinishHandler);
    if (v7)
    {
      v6 = v7();
    }
  }

  result = (*(*v1 + 592))(v6);
  if (result)
  {
    return (*(*v1 + 696))();
  }

  return result;
}

uint64_t sub_265A54E74()
{
  v1 = v0;
  (*(*v0 + 672))();
  v2 = sub_265A53EFC();
  (*((*MEMORY[0x277D85000] & *v2) + 0x98))();

  v3 = *(*v1 + 240);
  v4.n128_u64[0] = -0.5;

  return v3(v4);
}

void sub_265A54F34()
{
  v42 = sub_265AA7410();
  v1 = *(v42 - 8);
  (MEMORY[0x28223BE20])();
  v41 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_265AA7440();
  v3 = *(v40 - 8);
  (MEMORY[0x28223BE20])();
  v39 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_265AA7460();
  v5 = *(v38 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v28 - v9;
  if (((*(*v0 + 680))(v8) & 1) == 0)
  {
    return;
  }

  if ((*(*v0 + 688))())
  {
    return;
  }

  v10 = [objc_opt_self() mainScreen];
  [v10 brightness];
  v12 = v11;

  if (v12 <= 0.7)
  {
    return;
  }

  v13 = (v12 + -0.7) * 100.0;
  if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = swift_allocObject();
  v34 = v14;
  v35 = v15;
  *(v15 + 16) = v12;
  if (v14 < 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v16 = sub_265A56C08();
  v32 = (v5 + 8);
  v33 = v16;
  v31 = v46;
  v30 = (v1 + 8);
  v29 = (v3 + 8);
  v17 = 1;
  v18 = v39;
  while (1)
  {
    v43 = sub_265AA7830();
    v19 = v37;
    sub_265AA7450();
    v20 = v36;
    sub_265AA74B0();
    v44 = *v32;
    v21 = v19;
    v22 = v38;
    v44(v21, v38);
    v46[2] = sub_265A56C54;
    v46[3] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v46[0] = sub_265A554D0;
    v46[1] = &block_descriptor;
    v23 = _Block_copy(aBlock);

    sub_265AA7420();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_265A56EB8(&qword_280030190, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
    sub_265A56E18(&qword_2800301A0, &unk_28002FAE0);
    v25 = v41;
    v24 = v42;
    sub_265AA78E0();
    v26 = v43;
    MEMORY[0x266768050](v20, v18, v25, v23);
    _Block_release(v23);

    (*v30)(v25, v24);
    (*v29)(v18, v40);
    v44(v20, v22);
    if (v34 == v17)
    {
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      __break(1u);
      break;
    }
  }
}

uint64_t sub_265A554D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

BOOL sub_265A55514()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 potentialEDRHeadroom];
  v2 = v1;

  return v2 > 2.0;
}

BOOL sub_265A5557C()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  return v1 == 2;
}

void sub_265A555D8()
{
  v0 = sub_265A53EFC();
  (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
}

uint64_t sub_265A55688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_265A556F8(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_265A556F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F650);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel__animationTime;
  v20[1] = 0xBFE0000000000000;
  sub_265AA6EB0();
  (*(v12 + 32))(v5 + v15, v14, v11);
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___displayLinkManager) = 0;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_luminousTextIntensity) = 0x400F333333333333;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_luminousTextRadius) = 0x3FDEB851EB851EB8;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousOffset) = 0;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousForwardFade) = 0x4034000000000000;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_textLuminousSize) = 0x4043800000000000;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloTextShineAffectedRadius) = 0x3FF199999999999ALL;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloTextShineIntensity) = 0x4000000000000000;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloGlowIntensity) = 0x3FC999999999999ALL;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloBlur) = 0x4040000000000000;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloPadding) = 0x4059000000000000;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_haloOffset) = 0x3FA47AE147AE147BLL;
  v16 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_visibleLayers;
  *(v5 + v16) = sub_265A56B84(&unk_287754BB8);
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_didNotify) = 0;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel____lazy_storage___textGradientEntries) = 0;
  v17 = (v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_text);
  *v17 = a1;
  v17[1] = a2;
  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_finalColor) = a3;
  v18 = (v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_onFinishHandler);
  *v18 = a4;
  v18[1] = a5;
  return v5;
}

uint64_t sub_265A55958()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel__animationTime;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F650);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_265A56D6C(*(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_onFinishHandler));

  return v0;
}

uint64_t sub_265A55A2C()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel__animationTime;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F650);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_265A56D6C(*(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI24WelcomeToDeviceViewModel_onFinishHandler));

  return swift_deallocClassInstance();
}

uint64_t sub_265A55E34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WelcomeToDeviceViewModel();
  result = sub_265AA6E60();
  *a1 = result;
  return result;
}

uint64_t sub_265A55E74(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_265AA7C10();
  sub_265AA75B0();

  v5 = sub_265AA7C40();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v27 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    v28 = v4;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 0xD000000000000010 : 0x73756F6E696D754CLL;
      v10 = v8 == 2 ? 0x8000000265AAE1A0 : 0xED00007478655420;
      v11 = *(*(v4 + 48) + v7) ? 0x756F72676B636142 : 1869373768;
      v12 = *(*(v4 + 48) + v7) ? 0xEF7478655420646ELL : 0xE400000000000000;
      v13 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = a2 == 2 ? 0xD000000000000010 : 0x73756F6E696D754CLL;
      v16 = a2 == 2 ? 0x8000000265AAE1A0 : 0xED00007478655420;
      v17 = a2 ? 0x756F72676B636142 : 1869373768;
      v18 = a2 ? 0xEF7478655420646ELL : 0xE400000000000000;
      v19 = a2 <= 1u ? v17 : v15;
      v20 = a2 <= 1u ? v18 : v16;
      if (v13 == v19 && v14 == v20)
      {
        break;
      }

      v21 = sub_265AA7B50();

      if (v21)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v26;
      v4 = v28;
      if (((*(v27 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v28 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v24;
    sub_265A56404(a2, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_265A56124()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F690);
  result = sub_265AA7920();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_265AA7C10();
      sub_265AA75B0();

      result = sub_265AA7C40();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_265A56404(uint64_t result, unint64_t a2, char a3)
{
  v31 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_265A56124();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_265A56700();
      goto LABEL_50;
    }

    sub_265A56840();
  }

  v7 = *v3;
  sub_265AA7C10();
  sub_265AA75B0();

  result = sub_265AA7C40();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  v30 = v7 + 56;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v29 = ~v8;
    do
    {
      v9 = *(*(v7 + 48) + a2);
      v10 = v9 == 2 ? 0xD000000000000010 : 0x73756F6E696D754CLL;
      v11 = v9 == 2 ? 0x8000000265AAE1A0 : 0xED00007478655420;
      v12 = *(*(v7 + 48) + a2) ? 0x756F72676B636142 : 1869373768;
      v13 = *(*(v7 + 48) + a2) ? 0xEF7478655420646ELL : 0xE400000000000000;
      v14 = *(*(v7 + 48) + a2) <= 1u ? v12 : v10;
      v15 = *(*(v7 + 48) + a2) <= 1u ? v13 : v11;
      v16 = v31 == 2 ? 0xD000000000000010 : 0x73756F6E696D754CLL;
      v17 = v31 == 2 ? 0x8000000265AAE1A0 : 0xED00007478655420;
      v18 = v31 ? 0x756F72676B636142 : 1869373768;
      v19 = v31 ? 0xEF7478655420646ELL : 0xE400000000000000;
      v20 = v31 <= 1u ? v18 : v16;
      v21 = v31 <= 1u ? v19 : v17;
      v22 = v7;
      if (v14 == v20 && v15 == v21)
      {
        goto LABEL_53;
      }

      v23 = sub_265AA7B50();

      if (v23)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v29;
      v7 = v22;
    }

    while (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v31;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = sub_265AA7B90();
  __break(1u);
  return result;
}

void *sub_265A56700()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F690);
  v2 = *v0;
  v3 = sub_265AA7910();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_265A56840()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F690);
  result = sub_265AA7920();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_265AA7C10();
      sub_265AA75B0();

      result = sub_265AA7C40();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_265A56AF0()
{
  v0 = sub_265AA7A40();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265A56B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_265A5747C();
  result = MEMORY[0x266767F90](v2, &type metadata for VisibleLayer, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_265A55E74(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_265A56C08()
{
  result = qword_28002F6E0;
  if (!qword_28002F6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28002F6E0);
  }

  return result;
}

void sub_265A56C54()
{
  swift_beginAccess();
  v1 = *(v0 + 16) + -0.01;
  swift_beginAccess();
  *(v0 + 16) = v1;
  v2 = [objc_opt_self() mainScreen];
  swift_beginAccess();
  [v2 setBrightness_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265A56D6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_265A56D80()
{
  result = qword_28002F660;
  if (!qword_28002F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002F660);
  }

  return result;
}

uint64_t sub_265A56E18(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265A56E60(uint64_t a1)
{
  result = sub_265A56EB8(&qword_28002F678, type metadata accessor for WelcomeToDeviceViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_265A56EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WelcomeToDeviceViewModel()
{
  result = qword_2800308F0;
  if (!qword_2800308F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibleLayer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibleLayer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_265A57274()
{
  sub_265A57368();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_265A57368()
{
  if (!qword_28002F680)
  {
    v0 = sub_265AA6F10();
    if (!v1)
    {
      atomic_store(v0, &qword_28002F680);
    }
  }
}

uint64_t sub_265A573B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A573F0(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 656))(result, a1);
  }

  return result;
}

unint64_t sub_265A5747C()
{
  result = qword_28002F688;
  if (!qword_28002F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002F688);
  }

  return result;
}

uint64_t sub_265A57500@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_265AA7120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265AA7250();
  sub_265AA7130();
  sub_265AA6F70();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

uint64_t sub_265A57690(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  *&xmmword_280033380 = a1;
  *(&xmmword_280033380 + 1) = a2;
  qword_280033390 = *&a3;
  unk_280033398 = *&a4;
  return result;
}

void sub_265A57750(uint64_t a1, double (*a2)(void))
{
  *a1 = a2();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

double sub_265A577A0@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_280033380;
  v3 = *&qword_280033390;
  *a1 = xmmword_280033380;
  a1[1] = v3;
  return result;
}

double sub_265A577EC(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

unint64_t sub_265A57858()
{
  result = qword_28002F698;
  if (!qword_28002F698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002F6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002F698);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_265A578C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A578E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_265A57934(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A57954(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_265A579A4(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_265A57A20()
{
  if (qword_280030A00 != -1)
  {
    swift_once();
  }

  return &qword_2800333A0;
}

uint64_t *sub_265A57ABC()
{
  if (qword_280030A08 != -1)
  {
    swift_once();
  }

  return &qword_2800333A8;
}

uint64_t *sub_265A57B54()
{
  if (qword_280030A10 != -1)
  {
    swift_once();
  }

  return &qword_2800333B0;
}

uint64_t sub_265A57BEC(uint64_t a1, uint64_t *a2)
{
  sub_265AA7240();
  MEMORY[0x28223BE20]();
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_265AA7280();
  *a2 = result;
  return result;
}

uint64_t *sub_265A57CE0()
{
  if (qword_280030A18 != -1)
  {
    swift_once();
  }

  return &qword_2800333B8;
}

uint64_t sub_265A57D54(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_265A57DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265AAAAB0;
  *(inited + 32) = sub_265AA7250() | 0x8000000000000000;
  *(inited + 40) = 0xC00B333333333333;
  if (qword_280030A18 != -1)
  {
LABEL_36:
    swift_once();
  }

  v2 = qword_2800333B8 | 0x8000000000000000;
  *(inited + 48) = qword_2800333B8 | 0x8000000000000000;
  *(inited + 56) = 0xBFC3333333333333;
  *(inited + 64) = v2;
  *(inited + 72) = 0xBFE6666666666666;
  v3 = qword_280030A10;
  swift_retain_n();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_2800333B0 | 0x8000000000000000;
  *(inited + 80) = qword_2800333B0 | 0x8000000000000000;
  *(inited + 88) = 0xBFC999999999999ALL;
  *(inited + 96) = v4;
  *(inited + 104) = 0xBFD999999999999ALL;
  v5 = qword_280030A08;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_2800333A8 | 0x8000000000000000;
  *(inited + 112) = qword_2800333A8 | 0x8000000000000000;
  *(inited + 120) = 0xBFD0000000000000;
  *(inited + 128) = v6;
  *(inited + 136) = 0xBFD3333333333333;
  v7 = qword_280030A00;
  swift_retain_n();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2800333A0;
  *(inited + 144) = qword_2800333A0 | 0x8000000000000000;
  *(inited + 152) = 0xBFD3333333333333;
  swift_retain_n();
  v9 = *sub_265A53750();
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  v10 = sub_265AA7250();
  v11 = 0;
  v37 = 0;
  v12 = 0;
  v13 = *sub_265A53768();
  *(inited + 176) = v10 | 0x8000000000000000;
  *(inited + 184) = v13;
  v14 = *(inited + 16);
  v35 = inited;
  v15 = inited + 32;
  inited = 0xF000000000000007;
  v16 = 1;
LABEL_9:
  v17 = (v15 + 16 * v12);
  while (v14 != v12)
  {
    if (v12 >= v14)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_34;
    }

    v19 = *v17;
    v17 += 2;
    v10 = v19;
    ++v12;
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = *(v17 - 1);

      sub_265A58CE0(inited);
      v16 = 0;
      v11 = v12 - 1;
      inited = v10;
      v37 = v20;
      v12 = v18;
      goto LABEL_9;
    }
  }

  v36 = inited;
  v21 = (~inited & 0xF000000000000007) == 0;
  inited = v35;
  if ((v16 | v21))
  {
    result = sub_265AA79E0();
    __break(1u);
    return result;
  }

  v38 = MEMORY[0x277D84F90];
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  *&v0 = v37 ^ 0x8000000000000000;

  sub_265A58A54(0, v11, v35, &v38, COERCE_DOUBLE(v37 ^ 0x8000000000000000));

  sub_265A5829C();
  v12 = v36 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = v38;
  sub_265A58CFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_38:
    v10 = sub_265A587E0(0, *(v10 + 16) + 1, 1, v10);
  }

  v23 = *(v10 + 16);
  v22 = *(v10 + 24);
  if (v23 >= v22 >> 1)
  {
    v10 = sub_265A587E0((v22 > 1), v23 + 1, 1, v10);
  }

  *(v10 + 16) = v23 + 1;
  v24 = v10 + 16 * v23;
  *(v24 + 32) = v12;
  *(v24 + 40) = v0;
  if (v11 < v14)
  {

    if (v11 + 1 != v14)
    {
      v26 = (v35 + 16 * v11 + 56);
      v27 = v11;
      while (v27 + 1 < v14 && v27 >= v11)
      {
        v29 = v11;
        v30 = *(v26 - 1);
        v31 = *v26;
        sub_265A58CFC();
        sub_265A58CFC();
        v33 = *(v10 + 16);
        v32 = *(v10 + 24);
        if (v33 >= v32 >> 1)
        {
          v10 = sub_265A587E0((v32 > 1), v33 + 1, 1, v10);
        }

        inited = v30 & 0x7FFFFFFFFFFFFFFFLL;
        v0 = v0 + v31;
        sub_265A58CF4();
        *(v10 + 16) = v33 + 1;
        v34 = v10 + 16 * v33;
        *(v34 + 32) = v30 & 0x7FFFFFFFFFFFFFFFLL;
        *(v34 + 40) = v0;
        ++v27;
        v26 += 2;
        v11 = v29;
        if (v14 - 1 == v27)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_35;
    }

LABEL_22:
  }

  sub_265A58CE0(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

void sub_265A5829C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_265A58A40(v1);
  }

  v2 = &v1[2 * v2 + 2];
  v4 = v1 + 5;
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = v1[2];
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *(v2 + 8);
    *(v4 - 1) = *v2;
    *v4 = v10;
    v11 = v1[2];

    if (v3 >= v11)
    {
      break;
    }

    *v2 = v8;
    *(v2 + 8) = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

double sub_265A583A0(double a1)
{
  result = 0.0;
  if (a1 >= 1.5)
  {
    v3 = fmin((a1 + -1.5) / 3.6, 1.0);
    return v3 * v3 * (3.0 - (v3 + v3));
  }

  return result;
}

double sub_265A583E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_265AA7040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    *&v26 = MEMORY[0x277D84F90];
    sub_265A58914(0, v7, 0);
    v8 = v26;
    v9 = a1 + 40;
    do
    {

      v10 = sub_265AA73A0();
      *&v26 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_265A58914((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v8 = v26;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 16;
      --v7;
    }

    while (v7);
  }

  v17 = *MEMORY[0x277CDFA88];
  v18 = *(v4 + 104);
  v18(v6, v17, v3);
  v19 = sub_265AA7030();
  v20 = *(v4 + 8);
  v20(v6, v3);
  if (v19)
  {
    sub_265AA73E0();
  }

  else
  {
    sub_265AA73F0();
  }

  v18(v6, v17, v3);
  v21 = sub_265AA7030();
  v20(v6, v3);
  if (v21)
  {
    sub_265AA73F0();
  }

  else
  {
    sub_265AA73E0();
  }

  v22 = v25;
  sub_265AA73B0();
  sub_265AA6FD0();
  result = *&v26;
  v24 = v27;
  *v22 = v26;
  *(v22 + 16) = v24;
  *(v22 + 32) = v28;
  return result;
}

uint64_t sub_265A5866C()
{
  v0 = sub_265AA7040();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CDFA88], v0);
  sub_265AA7030();
  return (*(v1 + 8))(v3, v0);
}

void *sub_265A587E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F6D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265A58914(char *a1, int64_t a2, char a3)
{
  result = sub_265A58934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265A58934(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265A58A54(uint64_t result, uint64_t a2, uint64_t a3, void **a4, double a5)
{
  if (a2 != result)
  {
    v7 = a2;
    v8 = result;
    v9 = (a3 + 16 * a2 + 24);
    v19 = a3;
    while (v7 > v8)
    {
      if (v7-- < 1)
      {
        goto LABEL_13;
      }

      if (v7 >= *(a3 + 16))
      {
        goto LABEL_14;
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *a4;
      sub_265A58CFC();
      sub_265A58CFC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_265A587E0(0, v13[2] + 1, 1, v13);
        *a4 = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        *a4 = sub_265A587E0((v15 > 1), v16 + 1, 1, v13);
      }

      a5 = a5 + v12;
      result = sub_265A58CF4();
      v17 = *a4;
      v17[2] = v16 + 1;
      v18 = &v17[2 * v16];
      *(v18 + 4) = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v18[5] = a5;
      v9 -= 2;
      a3 = v19;
      if (v8 == v7)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_265A58BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_265A58C58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_265A58CE0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_265A58CF4();
  }

  return result;
}

id sub_265A58D04()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MTLCreateSystemDefaultDevice();
  if (!v0)
  {
    return 0;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CD71F0]) initWithDevice_];
  v2 = sub_265AA6D80();
  v6[0] = 0;
  v3 = [v1 newTextureWithData:v2 options:0 error:v6];

  v4 = v6[0];
  if (!v3)
  {
    v3 = v4;
    sub_265AA6CC0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v3;
}

id sub_265A58E24()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];

  return v0;
}

id sub_265A58E64(void *a1)
{
  v2 = v1;
  v80[1] = *MEMORY[0x277D85DE8];
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v70 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = [objc_opt_self() currentThread];
  v18 = [v17 isMainThread];

  if (!v18)
  {
    sub_265A59E2C(0, &qword_28002F6E0);
    v48 = sub_265AA7830();
    MEMORY[0x28223BE20](v48);
    *(&v70 - 2) = v2;
    *(&v70 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F748);
    sub_265AA7840();

    return v80[0];
  }

  v78 = v2;
  v19 = MTLCreateSystemDefaultDevice();
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v79 = a1;
  v21 = sub_265A780B8();
  v22 = *(v5 + 16);
  v75 = v21;
  v76 = v22;
  v77 = v5 + 16;
  (v22)(v16);
  v23 = sub_265AA6E00();
  v24 = sub_265AA77A0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_265A4C000, v23, v24, "Setting background image", v25, 2u);
    MEMORY[0x2667691D0](v25, -1, -1);
  }

  v26 = *(v5 + 8);
  v74 = v5 + 8;
  v26(v16, v4);
  v27 = [v79 CGImage];
  if (!v27)
  {
LABEL_17:
    v76(v11, v75, v4);
    v66 = sub_265AA6E00();
    v67 = sub_265AA7780();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_265A4C000, v66, v67, "No CGImage found for backing UIImage", v68, 2u);
      MEMORY[0x2667691D0](v68, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v26(v11, v4);
    return 0;
  }

  v28 = v27;
  v71 = v26;
  v29 = objc_allocWithZone(MEMORY[0x277CD71F0]);
  v72 = v20;
  v73 = [v29 initWithDevice_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265AAABB0;
  v31 = *MEMORY[0x277CD71B8];
  *(inited + 32) = *MEMORY[0x277CD71B8];
  v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v33 = v31;
  v34 = [v32 initWithUnsignedInteger_];
  v35 = sub_265A59E2C(0, &qword_28002F758);
  *(inited + 40) = v34;
  v36 = *MEMORY[0x277CD71A0];
  *(inited + 64) = v35;
  *(inited + 72) = v36;
  v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v38 = v36;
  v39 = [v37 initWithBool_];
  *(inited + 104) = v35;
  *(inited + 80) = v39;
  sub_265A5A00C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F760);
  swift_arrayDestroy();
  type metadata accessor for Option();
  sub_265A5A300(&qword_28002F768);
  v40 = sub_265AA74C0();

  v80[0] = 0;
  v41 = [v73 newTextureWithCGImage:v28 options:v40 error:v80];

  v42 = v28;
  if (!v41)
  {
    v49 = v80[0];
    v50 = sub_265AA6CC0();

    swift_willThrow();
    v76(v8, v75, v4);
    v51 = v50;
    v52 = sub_265AA6E00();
    v53 = sub_265AA7780();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = v50;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_265A4C000, v52, v53, "Failed to create memory-mapped texture: %@", v54, 0xCu);
      sub_265A5A164(v55);
      v58 = v55;
      v42 = v28;
      MEMORY[0x2667691D0](v58, -1, -1);
      MEMORY[0x2667691D0](v54, -1, -1);
    }

    v59 = v71;
    v71(v8, v4);
    v80[0] = 0;
    v60 = v73;
    v61 = [v73 newTextureWithCGImage:v42 options:0 error:v80];
    if (v61)
    {
      v41 = v61;
      v62 = *(v78 + 16);
      v63 = v80[0];
      [v62 setObject:v79 forKey:v41];

      swift_unknownObjectRelease();
      return v41;
    }

    v64 = v80[0];
    v65 = sub_265AA6CC0();

    swift_willThrow();
    v26 = v59;
    goto LABEL_17;
  }

  v43 = *(v78 + 16);
  v44 = v80[0];
  [v43 setObject:v79 forKey:v41];
  v76(v14, v75, v4);
  v45 = sub_265AA6E00();
  v46 = sub_265AA77A0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_265A4C000, v45, v46, "Successfully created memory-mapped texture", v47, 2u);
    MEMORY[0x2667691D0](v47, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v71(v14, v4);
  return v41;
}

uint64_t sub_265A59710@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 104))(*(v1 + 24));
  *a1 = result;
  return result;
}

id sub_265A59770()
{
  v1 = v0;
  v2 = [objc_opt_self() currentThread];
  v3 = [v2 isMainThread];

  if (v3)
  {
    v4 = *(v1 + 16);

    return [v4 removeAllObjects];
  }

  else
  {
    sub_265A59E2C(0, &qword_28002F6E0);
    v6 = sub_265AA7830();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_265A5A1CC;
    *(v7 + 24) = v1;
    v9[4] = sub_265A5A200;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265A5993C;
    v9[3] = &block_descriptor_0;
    v8 = _Block_copy(v9);

    dispatch_sync(v6, v8);

    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265A59984()
{

  return swift_deallocClassInstance();
}

uint64_t sub_265A599BC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() weakToStrongObjectsMapTable];
  return v0;
}

uint64_t sub_265A59A58(uint64_t a1, id *a2)
{
  result = sub_265AA7550();
  *a2 = 0;
  return result;
}

uint64_t sub_265A59AD0(uint64_t a1, id *a2)
{
  v3 = sub_265AA7560();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_265A59B50@<X0>(uint64_t *a1@<X8>)
{
  sub_265AA7570();
  v2 = sub_265AA7540();

  *a1 = v2;
  return result;
}

uint64_t sub_265A59B94()
{
  v0 = sub_265AA7570();
  v1 = MEMORY[0x266767E50](v0);

  return v1;
}

uint64_t sub_265A59BD0()
{
  sub_265AA7570();
  sub_265AA75B0();
}

uint64_t sub_265A59C24()
{
  sub_265AA7570();
  sub_265AA7C10();
  sub_265AA75B0();
  v0 = sub_265AA7C40();

  return v0;
}

uint64_t sub_265A59C98()
{
  v0 = sub_265AA7570();
  v2 = v1;
  if (v0 == sub_265AA7570() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_265AA7B50();
  }

  return v5 & 1;
}

uint64_t sub_265A59D20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_265AA7540();

  *a1 = v2;
  return result;
}

uint64_t sub_265A59D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265AA7570();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_265A59D94(uint64_t a1)
{
  v2 = sub_265A5A300(&qword_28002F768);
  v3 = sub_265A5A300(&qword_28002F798);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_265A59E2C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_265A59E74(uint64_t a1)
{
  sub_265AA7570();
  sub_265AA7C10();
  sub_265AA75B0();
  v2 = sub_265AA7C40();

  return sub_265A59F08(a1, v2);
}

unint64_t sub_265A59F08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_265AA7570();
      v8 = v7;
      if (v6 == sub_265AA7570() && v8 == v9)
      {
        break;
      }

      v11 = sub_265AA7B50();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265A5A00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F7A0);
    v3 = sub_265AA7A20();
    v4 = a1 + 32;

    while (1)
    {
      sub_265A5A344(v4, &v11);
      v5 = v11;
      result = sub_265A59E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_265A5A3B4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void type metadata accessor for Option()
{
  if (!qword_28002F778)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28002F778);
    }
  }
}

uint64_t sub_265A5A164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A5A300(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Option();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265A5A344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_265A5A3B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_265A5A3CC()
{
  v1 = *(v0 + 17);
  if (v1 != 2)
  {
    return v1 & 1;
  }

  v2 = sub_265A5A994();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F8D8);
  if (v4)
  {
    goto LABEL_3;
  }

  if (v2 > 0)
  {
    if (v2 == 2)
    {
      LOBYTE(v1) = byte_28002F8D0;
      return v1 & 1;
    }

    if (v2 == 1)
    {
      LOBYTE(v1) = 0;
      return v1 & 1;
    }
  }

  else
  {
    if (v2 == -1)
    {
LABEL_3:
      LOBYTE(v1) = *(v0 + 16);
      return v1 & 1;
    }

    if (!v2)
    {
      LOBYTE(v1) = 1;
      return v1 & 1;
    }
  }

  result = sub_265AA7B40();
  __break(1u);
  return result;
}

uint64_t sub_265A5A474()
{
  v0 = sub_265A5A994();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F8D8);
  if (v2)
  {
    return 2;
  }

  if (v0 > 0)
  {
    if (v0 == 2)
    {
      return byte_28002F8D0;
    }

    if (v0 == 1)
    {
      return 0;
    }
  }

  else
  {
    if (v0 == -1)
    {
      return 2;
    }

    if (!v0)
    {
      return 1;
    }
  }

  result = sub_265AA7B40();
  __break(1u);
  return result;
}

_BYTE *(*sub_265A5A50C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v3 = *(v1 + 17);
  if (v3 != 2)
  {
    goto LABEL_4;
  }

  v4 = sub_265A5A994();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F8D8);
  if (v6)
  {
    goto LABEL_3;
  }

  if (v4 > 0)
  {
    if (v4 == 2)
    {
      LOBYTE(v3) = byte_28002F8D0;
      goto LABEL_4;
    }

    if (v4 == 1)
    {
      LOBYTE(v3) = 0;
      goto LABEL_4;
    }
  }

  else
  {
    if (v4 == -1)
    {
LABEL_3:
      LOBYTE(v3) = *(v1 + 16);
LABEL_4:
      *(a1 + 8) = v3 & 1;
      return sub_265A5A5E8;
    }

    if (!v4)
    {
      LOBYTE(v3) = 1;
      goto LABEL_4;
    }
  }

  result = sub_265AA7B40();
  __break(1u);
  return result;
}

uint64_t sub_265A5A5F8(int a1)
{
  v2 = *(v1 + 17);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return 0;
    }
  }

  else if (v2 != 2 && ((v2 ^ a1) & 1) == 0)
  {
    return 0;
  }

  *(v1 + 17) = a1;
  return 1;
}

uint64_t sub_265A5A63C(char a1)
{
  result = swift_allocObject();
  *(result + 17) = 2;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_265A5A678(char a1)
{
  *(v1 + 17) = 2;
  *(v1 + 16) = a1;
  return v1;
}

void (*sub_265A5A728(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return sub_265A5A7BC;
}

void sub_265A5A7BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_265A5A890(uint64_t a1, char a2)
{
  v6 = [objc_opt_self() shared];
  if ((a2 & 1) != 0 || a1 == -1)
  {
    [v6 removeValueForKey_];
    v5 = v6;
  }

  else
  {
    sub_265A5AA94();
    v4 = sub_265AA78B0();
    [v6 setValue:v4 forKey:1];

    v5 = v4;
  }
}

void *sub_265A5A978@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_265A5A994()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 readValueForKey_];

  if (v1)
  {
    sub_265AA78D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_265A5AA94();
    if (swift_dynamicCast())
    {
      v2 = [v4 integerValue];

      return v2;
    }
  }

  else
  {
    sub_265A5ABC8(v7);
  }

  return 0;
}

unint64_t sub_265A5AA94()
{
  result = qword_28002F758;
  if (!qword_28002F758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28002F758);
  }

  return result;
}

void type metadata accessor for SASPreferenceValueBookendBackgroundRenderingBehavior()
{
  if (!qword_28002F8E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28002F8E0);
    }
  }
}

uint64_t sub_265A5ABC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A5AC30(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1)
  {
    type metadata accessor for BookendType(0);
    result = sub_265AA7B70();
    __break(1u);
  }

  else
  {
    type metadata accessor for HelloBookendCookieManager();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 1;
  }

  return result;
}

unint64_t sub_265A5ACF0()
{
  result = sub_265A5B2D0();
  if (v2)
  {
    if ((*(v0 + 24) & 1) == 0 && *(v0 + 16) == 1)
    {
      return 1;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    type metadata accessor for SASPreferenceValueBookendAnimateWithLogoOverride(0);
    sub_265AA7B70();
    __break(1u);
  }

  v3 = [objc_opt_self() defaultManager];
  v4 = sub_265AA7540();
  v5 = [v3 fileExistsAtPath_];

  return v5;
}

void sub_265A5ADF8(char a1)
{
  if ((*(v1 + 24) & 1) != 0 || *(v1 + 16) != 1) && (a1)
  {
    v2 = [objc_opt_self() defaultManager];
    v3 = sub_265AA7540();
    [v2 createFileAtPath:v3 contents:0 attributes:0];
  }
}

void (*sub_265A5AED4(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_265A5ACF0() & 1;
  return sub_265A5AF20;
}

void sub_265A5AF20(_BYTE *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(*a1 + 24))
    {
      if (!a1[8])
      {
        return;
      }

      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if ((*(*a1 + 24) & 1) == 0)
  {
LABEL_10:
    if (((*(*a1 + 16) != 1) & a1[8]) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  if ((a1[8] & 1) == 0)
  {
    return;
  }

LABEL_4:
  v3 = [objc_opt_self() defaultManager];
  v2 = sub_265AA7540();
  [v3 createFileAtPath:v2 contents:0 attributes:0];
}

uint64_t sub_265A5AFF8(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void static BookendCookieOverrideManager.setShowAppleLogo(_:)(char a1)
{
  if (a1 == 2)
  {
    v3 = [objc_opt_self() shared];
    [v3 removeValueForKey_];
  }

  else
  {
    v2 = (a1 & 1) == 0;

    sub_265A5B3D0(v2, 0);
  }
}

void static BookendCookieOverrideManager.writeCookie()()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_265AA7540();
  [v0 createFileAtPath:v1 contents:0 attributes:0];
}

void static BookendCookieOverrideManager.removeCookie()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_265AA7540();
  v7[0] = 0;
  v2 = [v0 removeItemAtPath:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_265AA6CC0();

    swift_willThrow();
  }
}

void (*sub_265A5B26C(uint64_t a1))(uint64_t a1)
{
  *a1 = sub_265A5B2D0();
  *(a1 + 8) = v2 & 1;
  return sub_265A5B2B8;
}

id sub_265A5B2D0()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 readValueForKey_];

  if (v1)
  {
    sub_265AA78D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_265A5AA94();
    if (swift_dynamicCast())
    {
      v2 = [v4 integerValue];

      return v2;
    }
  }

  else
  {
    sub_265A5ABC8(v7);
  }

  return 0;
}

void sub_265A5B3D0(uint64_t a1, char a2)
{
  v5 = [objc_opt_self() shared];
  if (a2)
  {
    [v5 removeValueForKey_];
    v3 = v5;
  }

  else
  {
    sub_265A5AA94();
    v4 = sub_265AA78B0();
    [v5 setValue:v4 forKey:0];

    v3 = v4;
  }
}

unint64_t sub_265A5B570(unint64_t result)
{
  if (result > 1)
  {
    type metadata accessor for BookendType(0);
    result = sub_265AA7B70();
    __break(1u);
  }

  return result;
}

uint64_t sub_265A5B5D0()
{
  v1 = *v0;
  sub_265AA7C10();
  MEMORY[0x266768470](v1);
  return sub_265AA7C40();
}

uint64_t sub_265A5B644()
{
  v1 = *v0;
  sub_265AA7C10();
  MEMORY[0x266768470](v1);
  return sub_265AA7C40();
}

uint64_t sub_265A5B688()
{
  v1 = 1701602377;
  v2 = 0x6E6974616D696E41;
  if (*v0 != 2)
  {
    v2 = 0x64656873696E6946;
  }

  if (*v0)
  {
    v1 = 0x646573756150;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_265A5B718@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BookendBackgroundRenderingApplicabilityManager();
  result = sub_265A5A63C(1);
  a1[3] = v2;
  a1[4] = &off_2877550A0;
  *a1 = result;
  return result;
}

uint64_t sub_265A5B794()
{
  v1 = *(v0 + 168);
  v2 = v1;
  if (v1 != 1)
  {
    goto LABEL_7;
  }

  v3 = *(v0 + 16);
  if (!v3)
  {
    v4 = &selRef_initWithLockScreenContextUsingDelegate_;
LABEL_6:
    v2 = [objc_allocWithZone(SASBookendWallpaperProvider) *v4];
    v5 = *(v0 + 168);
    *(v0 + 168) = v2;
    v6 = v2;
    sub_265A6511C(v5);
LABEL_7:
    sub_265A660F0(v1);
    return v2;
  }

  if (v3 == 1)
  {
    v4 = &selRef_initWithHomeScreenContextUsingDelegate_;
    goto LABEL_6;
  }

  type metadata accessor for BookendType(0);
  result = sub_265AA7B70();
  __break(1u);
  return result;
}

uint64_t sub_265A5B85C()
{
  v7 = sub_265AA7820();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265AA77F0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_265AA7440();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_265A59E2C(0, &qword_28002F6E0);
  sub_265AA7430();
  v8 = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_265AA7860();
}

uint64_t sub_265A5BAB4(uint64_t a1)
{
  v2 = sub_265AA7410();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265AA7440();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 != 0;
  sub_265A59E2C(0, &qword_28002F6E0);
  v9 = sub_265AA7830();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v8;
  aBlock[4] = sub_265A657B8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265A554D0;
  aBlock[3] = &block_descriptor_78;
  v12 = _Block_copy(aBlock);

  sub_265AA7420();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
  sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
  sub_265AA78E0();
  MEMORY[0x2667680A0](0, v7, v4, v12);
  _Block_release(v12);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

id sub_265A5BDC0()
{
  v1 = *(v0 + 200);
  v2 = v1;
  if (v1 == 1)
  {
    type metadata accessor for HelloView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *(v0 + 200);
    *(v0 + 200) = v2;
    v4 = v2;
    sub_265A6511C(v3);
  }

  sub_265A660F0(v1);
  return v2;
}

uint64_t sub_265A5BE34()
{
  swift_beginAccess();
  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_265A5BE80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
}

uint64_t sub_265A5BF18(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 232) = a1;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t sub_265A5BFA4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 248) = a1;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t sub_265A5BFF8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_265A64068(a1, a2, a3);

  return v6;
}

uint64_t sub_265A5C060(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_265A64068(a1, a2, a3);

  return v4;
}

id sub_265A5C0A4()
{
  result = sub_265A5BDC0();
  if (!result)
  {
    type metadata accessor for HelloView();
    v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    return [v1 init];
  }

  return result;
}

uint64_t sub_265A5C14C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = sub_265AA6BD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[15];
  v1[15] = a1;

  v12 = v1[5];
  v38 = v1;
  if (v12)
  {
    v35 = v7;
    v13 = v1[6];
    ObjectType = swift_getObjectType();
    v14 = &a1[OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint];
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[8];
    v17 = *(v13 + 32);
    v18 = a1;
    swift_unknownObjectRetain();
    v19 = v13;
    v7 = v35;
    v17(v15, v16, ObjectType, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = a1;
  }

  v21 = &a1[OBJC_IVAR___SASBookendAnimationConfiguration_preferredTermOfAddress];
  swift_beginAccess();
  v22 = *v21;
  if (!*v21)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    v25 = v38;
    goto LABEL_8;
  }

  v22(v23);
  sub_265A56D6C(v22);
  v24 = (*(v9 + 48))(v7, 1, v8);
  v25 = v38;
  if (v24 == 1)
  {
LABEL_8:
    sub_265A65EE0(v7, &qword_28002F910);
    goto LABEL_9;
  }

  v26 = v36;
  (*(v9 + 32))(v36, v7, v8);
  v27 = v25[3];
  v28 = v37;
  (*(v9 + 16))(v37, v26, v8);
  (*(v9 + 56))(v28, 0, 1, v8);
  v29 = *(*v27 + 256);

  v29(v28);

  sub_265A65EE0(v28, &qword_28002F910);
  (*(v9 + 8))(v26, v8);
LABEL_9:
  *(v25 + 105) = 0;
  v30 = *(*v25[3] + 248);

  v30(v31);
}

void sub_265A5C50C(void *a1)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v2 = a1;
}

void *sub_265A5C54C()
{
  result = sub_265A5BDC0();
  if (result)
  {
    v1 = result;
    v2 = (*((*MEMORY[0x277D85000] & *result) + 0xD8))();

    return v2;
  }

  return result;
}

double sub_265A5C5B4()
{
  v0 = sub_265A5BDC0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();

  return v2;
}

id sub_265A5C658()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView_internalView);
    v3 = v2;
  }

  else
  {
    v4 = v0;
    v5 = sub_265A5BDC0();
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for ConstrainingView();
      v8 = objc_allocWithZone(v7);
      v9 = v6;
      swift_unknownObjectWeakInit();
      v10 = swift_unknownObjectWeakAssign();
      v11 = (*((*MEMORY[0x277D85000] & *v9) + 0xD0))(v10);
      v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      *&v8[OBJC_IVAR____TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView_internalView] = v15;
      v47.receiver = v8;
      v47.super_class = v7;
      v16 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v17 = objc_opt_self();
      v18 = v16;
      v19 = [v17 clearColor];
      [v18 setBackgroundColor_];

      v20 = OBJC_IVAR____TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView_internalView;
      v21 = *&v18[OBJC_IVAR____TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView_internalView];
      v22 = [v17 clearColor];
      [v21 setBackgroundColor_];

      [v18 addSubview_];
      v23 = *(v4 + 208);
      *(v4 + 208) = v18;
      v24 = v18;

      v25 = v9;
      v26 = v24;
      v27 = v25;
      v28 = v26;
      v29 = v27;
      v30 = v28;
      [v29 addSubview_];
      [v30 setTranslatesAutoresizingMaskIntoConstraints_];
      v31 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F918);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_265AAB1C0;
      v33 = [v30 leadingAnchor];
      v34 = [v29 leadingAnchor];
      v35 = [v33 constraintEqualToAnchor_];

      *(v32 + 32) = v35;
      v36 = [v30 trailingAnchor];

      v37 = [v29 trailingAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      *(v32 + 40) = v38;
      v39 = [v30 topAnchor];

      v40 = [v29 topAnchor];
      v41 = [v39 constraintEqualToAnchor_];

      *(v32 + 48) = v41;
      v42 = [v30 bottomAnchor];

      v43 = [v29 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor_];

      *(v32 + 56) = v44;
      sub_265A59E2C(0, &qword_28002F920);
      v45 = sub_265AA7630();

      [v31 activateConstraints_];

      v2 = *&v30[OBJC_IVAR____TtC23SetupAssistantSupportUIP33_AD4A13777B11A6832A98F7B78726629716ConstrainingView_internalView];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_265A5CAF4()
{
  v1 = sub_265AA6E20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = sub_265A780B8();
    (*(v2 + 16))(v4, v5, v1);
    v6 = sub_265AA6E00();
    v7 = sub_265AA77A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265A4C000, v6, v7, "Skipping logo transition due reduced motion preference", v8, 2u);
      MEMORY[0x2667691D0](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_7;
  }

  if (!*(v0 + 40))
  {
LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v9 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 8);
  swift_unknownObjectRetain();
  v12 = v11(ObjectType, v9);
  swift_unknownObjectRelease();
  v13 = v12 ^ 1;
  return v13 & 1;
}

uint64_t sub_265A5CCB0()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  if (*(v1 + 104) == 3)
  {
    v9 = sub_265A780B8();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_265AA6E00();
    v11 = sub_265AA77A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_265A4C000, v10, v11, "Advance to end of animation ignored: already finished", v12, 2u);
      MEMORY[0x2667691D0](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    *(v1 + 104) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_265AAB1D0;
    v15 = *(**(v1 + 24) + 168);

    v17 = v15(v16);

    if (v17[2])
    {
      type metadata accessor for BookendLanguageProvider();
      v19 = v17[4];
      v18 = v17[5];

      *(v14 + 32) = v19;
      *(v14 + 40) = v18;
      v28 = v14;
      v29 = 0;
      *(v1 + 24) = BookendLanguageProvider.__allocating_init(languageOrderType:)(&v28);

      *(v1 + 40) = 0;
      *(v1 + 48) = 0;
      swift_unknownObjectRelease();
      result = sub_265A5BDC0();
      if (result)
      {
        v20 = result;
        v21 = sub_265AA7710();
        (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
        v22 = swift_allocObject();
        swift_weakInit();
        sub_265AA76F0();

        v23 = v20;
        v24 = sub_265AA76E0();
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D85700];
        v25[2] = v24;
        v25[3] = v26;
        v25[4] = v22;
        v25[5] = v23;

        sub_265A5DCBC(0, 0, v8, &unk_265AAB230, v25);

        v27 = swift_allocObject();
        swift_weakInit();
        sub_265A644DC(v1, v27);
      }
    }

    else
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265A5D080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_265AA6E20();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_265AA76F0();
  v5[10] = sub_265AA76E0();
  v8 = sub_265AA76B0();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x2822009F8](sub_265A5D174, v8, v7);
}

uint64_t sub_265A5D174()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    v5 = sub_265A780B8();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_265AA6E00();
    v7 = sub_265AA77A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265A4C000, v6, v7, "Advancing to end of animation", v8, 2u);
      MEMORY[0x2667691D0](v8, -1, -1);
    }

    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];

    (*(v10 + 8))(v9, v11);
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_265A5D33C;

    return sub_265A5D508();
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_265A5D33C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_265A5D45C, v3, v2);
}

uint64_t sub_265A5D45C()
{
  v1 = *(v0 + 48);

  (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265A5D508()
{
  v1[8] = v0;
  v2 = sub_265AA6E20();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = sub_265AA76F0();
  v1[15] = sub_265AA76E0();
  v4 = sub_265AA76B0();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_265A5D618, v4, v3);
}

uint64_t sub_265A5D618()
{
  v1 = sub_265A5BDC0();
  v0[18] = v1;
  if (!v1)
  {

LABEL_7:

    v15 = v0[1];

    return v15();
  }

  v2 = v1;
  v3 = v0[8];
  v4 = (v0[10] + 16);
  if (*(v3 + 105))
  {
    v5 = v0[11];
    v6 = v0[9];

    v7 = sub_265A780B8();
    (*v4)(v5, v7, v6);
    v8 = sub_265AA6E00();
    v9 = sub_265AA77A0();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265A4C000, v8, v9, "View was already prepared", v14, 2u);
      MEMORY[0x2667691D0](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    goto LABEL_7;
  }

  v17 = v0[13];
  v18 = v0[9];
  *(v3 + 105) = 1;
  v19 = sub_265A780B8();
  v20 = *v4;
  (*v4)(v17, v19, v18);
  v21 = sub_265AA6E00();
  v22 = sub_265AA77A0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_265A4C000, v21, v22, "Preparing view", v23, 2u);
    MEMORY[0x2667691D0](v23, -1, -1);
  }

  v24 = v0[13];
  v25 = v0[9];
  v26 = v0[10];
  v27 = v0[8];

  v43 = *(v26 + 8);
  v43(v24, v25);
  v28 = sub_265A5CAF4();
  swift_beginAccess();
  v29 = v27[10];
  v30 = v27[11];
  __swift_project_boxed_opaque_existential_1(v27 + 7, v29);
  v44 = (*(v30 + 8))(v29, v30);
  swift_endAccess();
  v31 = v27[15];
  if (v31)
  {
    v32 = OBJC_IVAR___SASBookendAnimationConfiguration_useWatchVariant;
    swift_beginAccess();
    v33 = *(v31 + v32);
  }

  else
  {
    v33 = 0;
  }

  v20(v0[12], v19, v0[9]);
  v34 = sub_265AA6E00();
  v35 = sub_265AA77A0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109632;
    *(v36 + 4) = v28 & 1;
    *(v36 + 8) = 1024;
    *(v36 + 10) = v44 & 1;
    *(v36 + 14) = 1024;
    *(v36 + 16) = v33 & 1;
    _os_log_impl(&dword_265A4C000, v34, v35, "Will animate Logo: %{BOOL}d, with background: %{BOOL}d, watch preview: %{BOOL}d", v36, 0x14u);
    MEMORY[0x2667691D0](v36, -1, -1);
  }

  v37 = v28 & 1;
  v38 = v0[12];
  v39 = v0[9];
  v40 = v0[8];

  v43(v38, v39);
  v0[19] = sub_265AA76E0();
  v41 = swift_task_alloc();
  v0[20] = v41;
  *(v41 + 16) = v2;
  *(v41 + 24) = v40;
  *(v41 + 32) = v37;
  *(v41 + 33) = v33 & 1;
  *(v41 + 34) = v44 & 1;
  v42 = swift_task_alloc();
  v0[21] = v42;
  *v42 = v0;
  v42[1] = sub_265A5DAD8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_265A5DAD8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_265A5DC38, v3, v2);
}

uint64_t sub_265A5DC38()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265A5DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_265A65E70(a3, v25 - v10);
  v12 = sub_265AA7710();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265A65EE0(v11, &qword_28002F930);
  }

  else
  {
    sub_265AA7700();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265AA76B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_265AA75A0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_265A65EE0(a3, &qword_28002F930);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265A65EE0(a3, &qword_28002F930);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_265A5DFAC()
{
  v1 = sub_265AA6E20();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = *(v0 + 104);
  if (v11 == 2)
  {
    v17 = sub_265A780B8();
    (*(v2 + 16))(v7, v17, v1);
    v18 = sub_265AA6E00();
    v19 = sub_265AA77A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_265A4C000, v18, v19, "Animation is already running", v20, 2u);
      MEMORY[0x2667691D0](v20, -1, -1);
    }

    return (*(v2 + 8))(v7, v1);
  }

  else if (v11 == 3)
  {
    v12 = sub_265A780B8();
    (*(v2 + 16))(v5, v12, v1);
    v13 = sub_265AA6E00();
    v14 = sub_265AA77A0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_265A4C000, v13, v14, "Animation start request ignored; animation finished", v15, 2u);
      MEMORY[0x2667691D0](v15, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v21 = sub_265AA7710();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = swift_allocObject();
    swift_weakInit();
    sub_265AA76F0();

    v23 = sub_265AA76E0();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;

    sub_265A5DCBC(0, 0, v10, &unk_265AAB240, v24);
  }
}

uint64_t sub_265A5E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  v4[6] = swift_task_alloc();
  v5 = sub_265AA6E20();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_265AA76F0();
  v4[11] = sub_265AA76E0();
  v7 = sub_265AA76B0();

  return MEMORY[0x2822009F8](sub_265A5E430, v7, v6);
}

uint64_t sub_265A5E430()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + 104) == 1)
    {
      v3 = sub_265A5BDC0();
      if (v3)
      {
        v4 = v3;
        v6 = v0[8];
        v5 = v0[9];
        v7 = v0[7];
        *(v2 + 104) = 2;
        v8 = sub_265A780B8();
        (*(v6 + 16))(v5, v8, v7);
        v9 = sub_265AA6E00();
        v10 = sub_265AA77A0();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_265A4C000, v9, v10, "Resuming animation", v11, 2u);
          MEMORY[0x2667691D0](v11, -1, -1);
        }

        v13 = v0[8];
        v12 = v0[9];
        v14 = v0[7];

        v15 = (*(v13 + 8))(v12, v14);
        (*((*MEMORY[0x277D85000] & *v4) + 0xB8))(v15);
        goto LABEL_9;
      }
    }

    else
    {
      *(Strong + 104) = 2;
      v16 = sub_265A5BDC0();
      if (v16)
      {
        v17 = v16;
        v18 = v0[6];
        v19 = sub_265AA7710();
        (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
        v20 = swift_allocObject();
        swift_weakInit();

        v4 = v17;
        v21 = sub_265AA76E0();
        v22 = swift_allocObject();
        v23 = MEMORY[0x277D85700];
        v22[2] = v21;
        v22[3] = v23;
        v22[4] = v20;
        v22[5] = v4;

        sub_265A5DCBC(0, 0, v18, &unk_265AAB4C0, v22);

        v24 = swift_allocObject();
        swift_weakInit();

        sub_265A649C0(v2, v24);

LABEL_9:
      }
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_265A5E750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_265A5BDC0();
    if (v8)
    {
      v9 = v8;
      v10 = sub_265AA7710();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      swift_weakInit();
      sub_265AA76F0();

      v12 = v9;
      v13 = sub_265AA76E0();
      v14 = swift_allocObject();
      v15 = MEMORY[0x277D85700];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      v14[5] = v12;

      sub_265A5DCBC(0, 0, v6, a3, v14);
    }
  }

  return result;
}

uint64_t sub_265A5E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_265AA6E20();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_265AA76F0();
  v5[10] = sub_265AA76E0();
  v8 = sub_265AA76B0();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x2822009F8](sub_265A5E9EC, v8, v7);
}

uint64_t sub_265A5E9EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    v5 = sub_265A780B8();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_265AA6E00();
    v7 = sub_265AA77A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265A4C000, v6, v7, "Starting animation", v8, 2u);
      MEMORY[0x2667691D0](v8, -1, -1);
    }

    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];

    (*(v10 + 8))(v9, v11);
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_265A5EBB4;

    return sub_265A5D508();
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_265A5EBB4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_265A5ECD4, v3, v2);
}

uint64_t sub_265A5ECD4()
{
  v1 = *(v0 + 104);

  if (*(v1 + 40))
  {
    v3 = *(*(v0 + 104) + 48);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v5(1, ObjectType, v3);
    v2 = swift_unknownObjectRelease();
  }

  (*((*MEMORY[0x277D85000] & **(v0 + 48)) + 0xA8))(v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_265A5EDE0()
{
  v1 = sub_265AA6E20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 104))
  {
    v5 = *(v0 + 104) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = sub_265A780B8();
    (*(v2 + 16))(v4, v6, v1);
    v7 = sub_265AA6E00();
    v8 = sub_265AA77A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_265A4C000, v7, v8, "Animation was already stopped", v9, 2u);
      MEMORY[0x2667691D0](v9, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    *(v0 + 104) = 0;
    v11 = swift_allocObject();
    swift_weakInit();
    sub_265A64D1C(v0, v11);
  }
}

void sub_265A5EFA4()
{
  v0 = sub_265AA6E20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_265A5BDC0();
    if (v4)
    {
      v5 = v4;
      v6 = sub_265A780B8();
      (*(v1 + 16))(v3, v6, v0);
      v7 = sub_265AA6E00();
      v8 = sub_265AA77A0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_265A4C000, v7, v8, "Stopping animation", v9, 2u);
        MEMORY[0x2667691D0](v9, -1, -1);
      }

      v10 = (*(v1 + 8))(v3, v0);
      (*((*MEMORY[0x277D85000] & *v5) + 0xC0))(v10);
    }

    else
    {
    }
  }
}

void sub_265A5F18C()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = sub_265A5BDC0();
  if (v9)
  {
    v10 = v9;
    if (*(v0 + 104) == 2)
    {
      *(v0 + 104) = 1;
      v11 = sub_265A780B8();
      (*(v3 + 16))(v8, v11, v2);
      v12 = sub_265AA6E00();
      v13 = sub_265AA77A0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_265A4C000, v12, v13, "Pausing animation", v14, 2u);
        MEMORY[0x2667691D0](v14, -1, -1);
      }

      v15 = (*(v3 + 8))(v8, v2);
      (*((*MEMORY[0x277D85000] & *v10) + 0xB0))(v15);
    }

    else
    {
      v16 = sub_265A780B8();
      (*(v3 + 16))(v6, v16, v2);

      v17 = sub_265AA6E00();
      v18 = sub_265AA77A0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v19 = 136315138;
        v21 = 0xE400000000000000;
        v22 = 1701602377;
        v23 = 0xE900000000000067;
        v24 = 0x6E6974616D696E41;
        if (*(v1 + 104) != 2)
        {
          v24 = 0x64656873696E6946;
          v23 = 0xE800000000000000;
        }

        if (*(v1 + 104))
        {
          v22 = 0x646573756150;
          v21 = 0xE600000000000000;
        }

        if (*(v1 + 104) <= 1u)
        {
          v25 = v22;
        }

        else
        {
          v25 = v24;
        }

        if (*(v1 + 104) <= 1u)
        {
          v26 = v21;
        }

        else
        {
          v26 = v23;
        }

        v27 = sub_265A63AC0(v25, v26, &v29);

        *(v19 + 4) = v27;
        _os_log_impl(&dword_265A4C000, v17, v18, "Pause request ignored: animation state is %s.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x2667691D0](v20, -1, -1);
        MEMORY[0x2667691D0](v19, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_265A5F4F8(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  HIDWORD(v20) = a6;
  v21 = a4;
  v22 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FAF8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = sub_265A5B570(*(a3 + 16));
  v14 = *(a3 + 24);
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 25) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = BYTE4(v20);
  (*(v10 + 32))(v16 + v15, v12, v9);
  v17 = *((*MEMORY[0x277D85000] & *a2) + 0xA0);

  v18 = a2;
  v17(v13 & 1, v21, v14, &off_287758158, a3, &off_287755498, v22, sub_265A65C84, v16);
}

void sub_265A5F6E4()
{
  v0 = sub_265AA6E20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265A5B794();
  if (v4)
  {
    v5 = v4;
    v6 = sub_265A780B8();
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_265AA6E00();
    v8 = sub_265AA77A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_265A4C000, v7, v8, "Auto-loading background data", v9, 2u);
      MEMORY[0x2667691D0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    [v5 fetchWallpapers];
  }
}

void sub_265A5F860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v48[1] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v48[0] = v48 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v48 - v15;
  v17 = sub_265A780B8();
  v18 = *(v7 + 16);
  v50 = v17;
  v51 = v18;
  (v18)(v16);
  v19 = sub_265AA6E00();
  v20 = sub_265AA77A0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = v14;
    v22 = v6;
    v23 = a1;
    v24 = v7;
    v25 = a2;
    v26 = v3;
    v27 = v21;
    *v21 = 0;
    _os_log_impl(&dword_265A4C000, v19, v20, "Setting background data", v21, 2u);
    v28 = v27;
    v3 = v26;
    a2 = v25;
    v7 = v24;
    a1 = v23;
    v6 = v22;
    v14 = v49;
    MEMORY[0x2667691D0](v28, -1, -1);
  }

  v29 = *(v7 + 8);
  v29(v16, v6);
  if (*(v3 + 12))
  {
    v51(v14, v50, v6);
    v30 = sub_265AA6E00();
    v31 = sub_265AA77A0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = v29;
      v33 = a2;
      v34 = v3;
      v35 = v32;
      *v32 = 0;
      _os_log_impl(&dword_265A4C000, v30, v31, "Existing data source found; resetting data source", v32, 2u);
      v36 = v35;
      v3 = v34;
      a2 = v33;
      v29 = v49;
      MEMORY[0x2667691D0](v36, -1, -1);
    }

    v29(v14, v6);
    *(v3 + 12) = 0;
    swift_unknownObjectRelease();
  }

  v49 = v3;
  v37 = *(**(v3 + 14) + 96);

  v38 = v37(a1, a2);

  if (v38)
  {
    sub_265A5FEA0(v38);
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = v48[0];
    v51(v48[0], v50, v6);
    v40 = sub_265AA6E00();
    v41 = sub_265AA7780();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_265A4C000, v40, v41, "Fail to create texture!", v42, 2u);
      MEMORY[0x2667691D0](v42, -1, -1);
    }

    v29(v39, v6);
    v43 = *(v49 + 4);
    if (v43)
    {
      v44 = [v43 onAnimationError];
      if (v44)
      {
        v45 = v44;
        type metadata accessor for BookendErrorHelper();
        v46 = sub_265AA3D44(-1000, 0, 0);
        v47 = sub_265AA6CB0();
        (v45)[2](v45, v47);

        _Block_release(v45);
      }
    }
  }
}

uint64_t sub_265A5FEA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265A780B8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_265AA6E00();
  v10 = sub_265AA77A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_265A4C000, v9, v10, "Setting background texture", v11, 2u);
    MEMORY[0x2667691D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + 184);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_265A65060;
  *(v14 + 24) = v13;
  aBlock[4] = sub_265A5A200;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265A5993C;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  swift_unknownObjectRetain();

  dispatch_sync(v16, v15);

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265A60134(void *a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  *(v2 + 96) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a1)
  {
    swift_unknownObjectRetain();
    v14 = sub_265A5B794();
    if (v14)
    {
      v15 = v14;
      [v14 setDelegate_];
    }

    v16 = *(v2 + 168);
    *(v2 + 168) = 0;
    sub_265A6511C(v16);
    v17 = sub_265A780B8();
    v36 = *(v5 + 16);
    v36(v13, v17, v4);
    v18 = sub_265AA6E00();
    v19 = sub_265AA77A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = v17;
      v21 = v11;
      v22 = v4;
      v23 = v20;
      *v20 = 0;
      _os_log_impl(&dword_265A4C000, v18, v19, "Setting data source", v20, 2u);
      v24 = v23;
      v4 = v22;
      v11 = v21;
      v17 = v35;
      MEMORY[0x2667691D0](v24, -1, -1);
    }

    v25 = *(v5 + 8);
    v25(v13, v4);
    v26 = [a1 bookendTexture];
    if (v26)
    {
      sub_265A5FEA0(v26);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      v36(v11, v17, v4);
      v32 = sub_265AA6E00();
      v33 = sub_265AA7780();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_265A4C000, v32, v33, "Bookend texture is somehow nil.", v34, 2u);
        MEMORY[0x2667691D0](v34, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (v25)(v11, v4);
    }
  }

  else
  {
    v28 = sub_265A780B8();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_265AA6E00();
    v30 = sub_265AA77A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_265A4C000, v29, v30, "Setting data source to nil.", v31, 2u);
      MEMORY[0x2667691D0](v31, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_265A604F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v3);
  (*(v4 + 16))(a1, v3, v4);
  return swift_endAccess();
}

uint64_t sub_265A60578(uint64_t a1)
{
  v3 = *(**(v1 + 24) + 240);

  v3(a1);
}

uint64_t sub_265A605E8()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A780B8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_265AA6E00();
  v8 = sub_265AA77A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265A4C000, v7, v8, "Invalidating instance.", v9, 2u);
    MEMORY[0x2667691D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + 104) = 3;
  v10 = sub_265A5BDC0();
  if (v10)
  {
    v11 = v10;
    (*((*MEMORY[0x277D85000] & *v10) + 0xC0))();
  }

  v12 = *(v1 + 208);
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *(v1 + 208);
  }

  else
  {
    v13 = 0;
  }

  *(v1 + 208) = 0;

  v14 = *(v1 + 32);
  *(v1 + 32) = 0;

  if (*(v1 + 176))
  {

    sub_265AA7480();
  }

  *(v1 + 176) = 0;

  v15 = *(v1 + 184);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_265A650DC;
  *(v16 + 24) = v1;
  aBlock[4] = sub_265A66154;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265A5993C;
  aBlock[3] = &block_descriptor_24;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  dispatch_sync(v18, v17);

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v20 = *(**(v1 + 112) + 112);

    v20(v21);

    v22 = *(v1 + 120);
    *(v1 + 120) = 0;

    v23 = *(v1 + 168);
    *(v1 + 168) = 0;
    sub_265A6511C(v23);
    *(v1 + 160) = 0;
    swift_unknownObjectRelease();
    v24 = [objc_opt_self() defaultCenter];
    [v24 removeObserver:v1 name:*MEMORY[0x277D76878] object:0];

    v25 = *(v1 + 200);
    *(v1 + 200) = 0;
    sub_265A6511C(v25);
  }

  return result;
}

uint64_t sub_265A609B8()
{
  sub_265A605E8();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  swift_unknownObjectRelease();

  sub_265A56D6C(*(v0 + 144));
  swift_unknownObjectRelease();
  sub_265A6511C(*(v0 + 168));

  swift_unknownObjectRelease();
  sub_265A6511C(*(v0 + 200));

  return v0;
}

uint64_t sub_265A60A5C()
{
  sub_265A609B8();

  return swift_deallocClassInstance();
}

void sub_265A60ABC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_265AA6E20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v31[-v13];
  if (*(v4 + 136))
  {
    v15 = sub_265A780B8();
    (*(v9 + 16))(v12, v15, v8);
    v16 = sub_265AA6E00();
    v17 = sub_265AA77A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_265A4C000, v16, v17, "animationWillBegin callback received", v18, 2u);
      MEMORY[0x2667691D0](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    *(v4 + 216) = a1;
    *(v4 + 224) = a2;

    swift_beginAccess();
    *(v4 + 232) = a3;
    *(v4 + 240) = 0;
    v19 = *(v4 + 32);
    if (v19)
    {
      v20 = objc_allocWithZone(SASBookendCurrentAnimationData);

      v21 = v19;
      v22 = sub_265AA7540();
      v23 = [v20 initWithLanguage:v22 animationDuration:a3];

      sub_265AA5EF4(v23);
    }

    else
    {
    }
  }

  else
  {
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a1;
    *(v25 + 32) = a2;
    *(v25 + 40) = a3;
    v26 = *(v4 + 144);
    *(v4 + 144) = sub_265A651A8;
    *(v4 + 152) = v25;

    sub_265A56D6C(v26);

    v27 = sub_265A780B8();
    (*(v9 + 16))(v14, v27, v8);
    v28 = sub_265AA6E00();
    v29 = sub_265AA77A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_265A4C000, v28, v29, "Deferring work for animationWillBegin until next frame", v30, 2u);
      MEMORY[0x2667691D0](v30, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
  }
}

void sub_265A60E40(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = sub_265AA6E20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 ^ 1;
  v15 = sub_265A780B8();
  (*(v11 + 16))(v13, v15, v10);

  v16 = sub_265AA6E00();
  v17 = sub_265AA77A0();

  v18 = os_log_type_enabled(v16, v17);
  v32 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v31 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_265A63AC0(a1, a2, &v33);
    *(v20 + 12) = 2048;
    *(v20 + 14) = a4;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v14 & 1;
    _os_log_impl(&dword_265A4C000, v16, v17, "animationUpdateUIForLanguage callback received with language: %s, remainingDuration:%f isInitialDrawing: %{BOOL}d", v20, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x2667691D0](v21, -1, -1);
    v22 = v20;
    v5 = v31;
    MEMORY[0x2667691D0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v23 = v14;
  v24 = *(v5 + 32);
  if (v24)
  {
    v25 = [v24 onAnimationUIUpdateSignal];
    if (v25)
    {
      v26 = v25;
      v27 = objc_allocWithZone(SASBookendAnimationUpdateUIData);
      v28 = sub_265AA7540();
      v29 = [v27 initWithLanguage:v28 remainingDuration:v23 & 1 isInitialDrawing:a4];

      (v26)[2](v26, v29);
      _Block_release(v26);
    }
  }
}

void sub_265A610D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v64 = a1;
  v12 = sub_265AA6E20();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = sub_265A5BDC0();
  if (v18)
  {
    v19 = v18;
    if (a4)
    {
      if (a6)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = *&a5;
      }

      v21 = objc_allocWithZone(SASBookendNextAnimationData);
      v22 = sub_265AA7540();
      v61 = [v21 initWithLanguage:v22 animationDuration:v20 delayTillNextAnimation:0.0];
    }

    else
    {
      v61 = 0;
    }

    swift_beginAccess();
    v23 = *(v7 + 80);
    v24 = *(v7 + 88);
    __swift_project_boxed_opaque_existential_1((v7 + 56), v23);
    v25 = (*(v24 + 8))(v23, v24);
    swift_endAccess();
    (*((*MEMORY[0x277D85000] & *v19) + 0x98))(v25 & 1);
    swift_beginAccess();
    v26 = *(v7 + 128);
    if (v26[2])
    {
      if (v26[4] == v64 && v26[5] == a2)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_265AA7B50();
      }

      v28 = v61;
      swift_beginAccess();
      if (!v26[2])
      {
        __break(1u);
        return;
      }

      sub_265A6532C(0, 1);
      swift_endAccess();
      swift_beginAccess();
      *(v7 + 232) = *&a5;
      *(v7 + 240) = a6 & 1;
      if (v27)
      {
        v29 = sub_265A780B8();
        v31 = v62;
        v30 = v63;
        (*(v62 + 16))(v17, v29, v63);
        v32 = sub_265AA6E00();
        v33 = sub_265AA77A0();
        if (!os_log_type_enabled(v32, v33))
        {

          (*(v31 + 8))(v17, v30);
          v51 = 1;
          v52 = *(v7 + 32);
          if (!v52)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v34 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65 = v60;
        *v34 = 136315138;
        if (v28)
        {
          v35 = [v28 language];
          v36 = sub_265AA7570();
          v38 = v37;
        }

        else
        {
          v36 = 7104878;
          v38 = 0xE300000000000000;
        }

        v54 = sub_265A63AC0(v36, v38, &v65);

        *(v34 + 4) = v54;
        _os_log_impl(&dword_265A4C000, v32, v33, "animationDidEnd callback received with nextLanguage: %s", v34, 0xCu);
        v55 = v60;
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x2667691D0](v55, -1, -1);
        MEMORY[0x2667691D0](v34, -1, -1);

        (*(v62 + 8))(v17, v63);
        v51 = 1;
LABEL_30:
        v28 = v61;
        v52 = *(v7 + 32);
        if (!v52)
        {
LABEL_32:
          type metadata accessor for BookendBackgroundRenderingOverrideBehaviorProvider();
          sub_265A5A85C();

          return;
        }

LABEL_31:
        v56 = objc_allocWithZone(SASBookendAnimationFinishedData);
        v28 = v28;
        v57 = v52;
        v58 = sub_265AA7540();
        v59 = [v56 initWithCurrentLanguage:v58 isLastLanguage:v51 nextAnimationData:v28];

        sub_265AA5FE8(v59);
        goto LABEL_32;
      }
    }

    else
    {
      swift_beginAccess();
      *(v7 + 232) = *&a5;
      *(v7 + 240) = a6 & 1;
      v28 = v61;
    }

    v39 = sub_265A780B8();
    v41 = v62;
    v40 = v63;
    (*(v62 + 16))(v15, v39, v63);
    v42 = sub_265AA6E00();
    v43 = sub_265AA77A0();
    if (!os_log_type_enabled(v42, v43))
    {

      (*(v41 + 8))(v15, v40);
      v51 = 0;
      v52 = *(v7 + 32);
      if (!v52)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65 = v45;
    *v44 = 136315138;
    if (v28)
    {
      v46 = [v28 language];
      v60 = v19;
      v47 = v46;
      v48 = sub_265AA7570();
      v50 = v49;

      v19 = v60;
    }

    else
    {
      v48 = 7104878;
      v50 = 0xE300000000000000;
    }

    v53 = sub_265A63AC0(v48, v50, &v65);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_265A4C000, v42, v43, "animationDidEnd callback received for last language; with nextLanguage: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x2667691D0](v45, -1, -1);
    MEMORY[0x2667691D0](v44, -1, -1);

    (*(v62 + 8))(v15, v63);
    v51 = 0;
    goto LABEL_30;
  }
}

uint64_t sub_265A61730()
{
  if (!*(v0 + 96))
  {
    goto LABEL_6;
  }

  v1 = [swift_unknownObjectRetain() bookendTexture];
  if (!v1)
  {
LABEL_5:
    swift_unknownObjectRelease();
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(v0 + 184);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  v6 = sub_265A66128;
  *(v5 + 16) = sub_265A66128;
  *(v5 + 24) = v4;
  aBlock[4] = sub_265A66154;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265A5993C;
  aBlock[3] = &block_descriptor_38;
  v7 = _Block_copy(aBlock);
  v8 = v3;

  swift_unknownObjectRetain();

  dispatch_sync(v8, v7);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  sub_265A61950();
  v10 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F748);
  sub_265AA7840();

  sub_265A56D6C(v6);
  return aBlock[0];
}

uint64_t sub_265A61950()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  if (*(v1 + 136) == 1)
  {
    v10 = *(v1 + 144);
    if (v10)
    {

      v11 = sub_265A780B8();
      (*(v3 + 16))(v9, v11, v2);
      v12 = sub_265AA6E00();
      v13 = sub_265AA77A0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_265A4C000, v12, v13, "Background is rendered, calling deferred animationWillBegin", v14, 2u);
        MEMORY[0x2667691D0](v14, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      v15 = *(v1 + 144);
      *(v1 + 144) = 0;
      *(v1 + 152) = 0;
      v16 = sub_265A56D6C(v15);
      v10(v16);
      return sub_265A56D6C(v10);
    }
  }

  else
  {
    v17 = sub_265A780B8();
    (*(v3 + 16))(v6, v17, v2);
    v18 = sub_265AA6E00();
    v19 = sub_265AA77A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_265A4C000, v18, v19, "Background should render on next callback", v20, 2u);
      MEMORY[0x2667691D0](v20, -1, -1);
    }

    result = (*(v3 + 8))(v6, v2);
    *(v1 + 136) = 1;
  }

  return result;
}

id sub_265A61BD4@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  v4 = 0uLL;
  if (result)
  {
    v11 = &unk_287763408;
    v5 = 1;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      result = [result bookendTextureTransform];
      v5 = 0;
      v4 = v8;
      v6 = v9;
      v7 = v10;
    }

    else
    {
      v6 = 0uLL;
      v7 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v5 = 1;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_265A61C84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265A780B8();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_265AA6E00();
  v12 = sub_265AA77A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_265A63AC0(a1, a2, v22);
    _os_log_impl(&dword_265A4C000, v11, v12, "Recording last language in cycle: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x2667691D0](v14, -1, -1);
    MEMORY[0x2667691D0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v15 = *(v3 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 128) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_265A639B4(0, *(v15 + 2) + 1, 1, v15);
    *(v3 + 128) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_265A639B4((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = a1;
  *(v19 + 5) = a2;
  *(v3 + 128) = v15;
  return swift_endAccess();
}

uint64_t sub_265A61EEC(uint64_t result)
{
  if (!*(v1 + 96))
  {
    v2 = *(v1 + 184);
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_265A66128;
    *(v5 + 24) = v4;
    v9[4] = sub_265A66154;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265A5993C;
    v9[3] = &block_descriptor_48;
    v6 = _Block_copy(v9);
    v7 = v2;

    swift_unknownObjectRetain();

    dispatch_sync(v7, v6);

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_265A620C0(UIImage *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_265A62110(a1, v1);

  objc_autoreleasePoolPop(v3);
}

NSData *sub_265A62110(UIImage *a1, uint64_t a2)
{
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UIImagePNGRepresentation(a1);
  if (result)
  {
    v9 = result;
    v10 = sub_265AA6D90();
    v12 = v11;

    if (*(a2 + 96))
    {

      return sub_265A6572C(v10, v12);
    }

    else
    {
      v13 = sub_265A780B8();
      (*(v5 + 16))(v7, v13, v4);
      v14 = sub_265AA6E00();
      v15 = sub_265AA77A0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_265A4C000, v14, v15, "Wallpaper did update.", v16, 2u);
        MEMORY[0x2667691D0](v16, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      sub_265A5F860(v10, v12);
      return sub_265A6572C(v10, v12);
    }
  }

  return result;
}

void sub_265A62368(void *a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265A780B8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_265AA6E00();
  v11 = sub_265AA7780();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_265A4C000, v10, v11, "Wallpaper failed to load: %@", v12, 0xCu);
    sub_265A65EE0(v13, &qword_28002F770);
    MEMORY[0x2667691D0](v13, -1, -1);
    MEMORY[0x2667691D0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = *(v2 + 32);
  if (v16)
  {
    v17 = [v16 onAnimationError];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for BookendErrorHelper();
      swift_getErrorValue();
      v19 = sub_265AA7BD0();
      v21 = sub_265AA3D44(-1000, v19, v20);

      v22 = sub_265AA6CB0();
      (v18)[2](v18, v22);

      _Block_release(v18);
    }
  }
}

uint64_t sub_265A6263C()
{
  v0 = sub_265A5BDC0();
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 window];

  if (!v2)
  {
    return 1;
  }

  v3 = [v2 windowScene];

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 interfaceOrientation];

  return v4;
}

uint64_t sub_265A6277C()
{
  v0 = sub_265A5BDC0();
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 traitCollection];

  v3 = [v2 userInterfaceStyle];
  return v3;
}

uint64_t sub_265A62864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_265AA76F0();
  v5[7] = sub_265AA76E0();
  v7 = sub_265AA76B0();

  return MEMORY[0x2822009F8](sub_265A628FC, v7, v6);
}

uint64_t sub_265A628FC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (!*(Strong + 160))
    {
      v3 = [*(v0 + 48) window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FB00);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_265AAB1D0;
        v7 = sub_265AA6E30();
        v8 = MEMORY[0x277D74BF0];
        *(v6 + 32) = v7;
        *(v6 + 40) = v8;
        swift_allocObject();
        swift_weakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FB68);
        v9 = sub_265AA7760();
      }

      else
      {
        v9 = 0;
      }

      *(v2 + 160) = v9;
      swift_unknownObjectRelease();
      v10 = [objc_opt_self() currentDevice];
      v11 = [v10 userInterfaceIdiom];

      if (v11 == 1)
      {
        v12 = [objc_opt_self() defaultCenter];
        [v12 addObserver:v2 selector:sel_orientationDidChange name:*MEMORY[0x277D76878] object:0];
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_265A62B40()
{
  v0 = sub_265AA6E20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_265A780B8();
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_265AA6E00();
    v7 = sub_265AA77A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265A4C000, v6, v7, "User interface change; Updating wallpaper.", v8, 2u);
      MEMORY[0x2667691D0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    sub_265A62CF8("Updating wallpaper", &unk_2877555A0, &unk_265AAB4B8);
  }

  return result;
}

uint64_t sub_265A62CF8(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_265AA6E20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265A780B8();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_265AA6E00();
  v14 = sub_265AA77A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a3;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_265A4C000, v13, v14, a1, v16, 2u);
    v17 = v16;
    a3 = v15;
    MEMORY[0x2667691D0](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v18 = sub_265AA7710();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_265AA76F0();

  v20 = sub_265AA76E0();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;

  sub_265A5DCBC(0, 0, v7, a3, v21);
}

uint64_t sub_265A62F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_265AA6E20();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_265AA76F0();
  v4[17] = sub_265AA76E0();
  v7 = sub_265AA76B0();

  return MEMORY[0x2822009F8](sub_265A63084, v7, v6);
}

uint64_t sub_265A63084()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_265A5B794();
    if (v3)
    {
      v4 = v3;
      v5 = sub_265A5BDC0();
      if (v5 && (v6 = v5, v7 = [v5 window], v6, v7) && (v8 = objc_msgSend(v7, sel_windowScene), v7, v8))
      {
        v9 = [v8 interfaceOrientation];

        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      if ([v4 shouldRefetchWallPaperForOrientation_])
      {
        v11 = [objc_opt_self() mainBundle];
        v12 = [v11 bundleIdentifier];

        if (v12)
        {
          v13 = sub_265AA7570();
          v15 = v14;

          if (v13 == 0xD000000000000015 && 0x8000000265AAEB20 == v15)
          {

LABEL_21:
            sub_265A62CF8("Updating wallpaper", &unk_2877555A0, &unk_265AAB4B8);

            goto LABEL_22;
          }

          v27 = sub_265AA7B50();

          if (v27)
          {
            goto LABEL_21;
          }
        }

        swift_beginAccess();
        sub_265A655D0(v2 + 56, (v0 + 2));
        v28 = v0[5];
        v29 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v28);
        (*(v29 + 32))(0, v28, v29);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
        v30 = sub_265A5BDC0();
        if (v30)
        {
          v31 = v30;
          (*((*MEMORY[0x277D85000] & *v30) + 0x98))(0);
        }

        goto LABEL_21;
      }
    }

    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = sub_265A780B8();
    (*(v17 + 16))(v16, v19, v18);
    v20 = sub_265AA6E00();
    v21 = sub_265AA77A0();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_265A4C000, v20, v21, "Orientation change request ignored.", v26, 2u);
      MEMORY[0x2667691D0](v26, -1, -1);
    }

    else
    {
    }

    (*(v24 + 8))(v23, v25);
  }

LABEL_22:

  v32 = v0[1];

  return v32();
}

uint64_t sub_265A63490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_265AA76F0();
  *(v4 + 48) = sub_265AA76E0();
  v6 = sub_265AA76B0();

  return MEMORY[0x2822009F8](sub_265A63528, v6, v5);
}

uint64_t sub_265A63528()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_265A5B794();
    [v1 fetchWallpapers];
  }

  v2 = *(v0 + 8);

  return v2();
}

id sub_265A63744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstrainingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_265A637C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265A638BC;

  return v6(a1);
}

uint64_t sub_265A638BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_265A639B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_265A63AC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265A63B8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_265A65A6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_265A63B8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265A63C98(a5, a6);
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
    result = sub_265AA7980();
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

uint64_t sub_265A63C98(uint64_t a1, unint64_t a2)
{
  v3 = sub_265A63CE4(a1, a2);
  sub_265A63E14(&unk_287755170);
  return v3;
}

uint64_t sub_265A63CE4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_265A63F00(v5, 0);
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

  result = sub_265AA7980();
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
        v10 = sub_265AA75D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265A63F00(v10, 0);
        result = sub_265AA7940();
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

uint64_t sub_265A63E14(uint64_t result)
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

  result = sub_265A63F74(result, v11, 1, v3);
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

void *sub_265A63F00(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FAF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265A63F74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_265A64068(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v5 = sub_265AA7820();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265AA77F0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_265AA7440();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for BookendBackgroundRenderingApplicabilityManager();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  v11 = sub_265A5A63C(1);
  *(v4 + 80) = v10;
  *(v4 + 88) = &off_2877550A0;
  *(v4 + 56) = v11;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  type metadata accessor for BackgroundTextureCreator();
  *(v4 + 112) = sub_265A599BC();
  *(v4 + 120) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v4 + 128) = MEMORY[0x277D84F90];
  *(v4 + 136) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 144) = 0;
  *(v4 + 168) = xmmword_265AAB1E0;
  v22[1] = sub_265A59E2C(0, &qword_28002F6E0);
  sub_265AA7430();
  v28 = v12;
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v23 + 104))(v7, *MEMORY[0x277D85260], v24);
  *(v4 + 184) = sub_265AA7860();
  *(v4 + 192) = xmmword_265AAB1F0;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 1;
  *(v4 + 248) = 0;
  *(v4 + 256) = 1;
  v14 = v25;
  v13 = v26;
  *(v4 + 16) = v25;
  *(v4 + 24) = v13;
  v15 = *(v4 + 32);
  v16 = v27;
  *(v4 + 32) = v27;

  v17 = v16;

  type metadata accessor for BookendCookieManagerFactory();
  *(v4 + 40) = sub_265A5AC30(v14);
  *(v4 + 48) = v18;
  swift_unknownObjectRelease();
  v19 = *(**(v4 + 24) + 152);

  v19(v20, &off_2877554C8);

  return v4;
}

uint64_t sub_265A6440C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A64444()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265A6614C;

  return sub_265A62864(v4, v5, v6, v2, v3);
}

uint64_t sub_265A644DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265AA7410();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_265AA7440();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 184);

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F748);
  sub_265AA7840();

  if (aBlock[0])
  {
    sub_265A5E750(a2, &unk_287755708, &unk_265AAB4F0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_265A780B8();
    (*(v7 + 16))(v9, v13, v6);
    v14 = sub_265AA6E00();
    v15 = sub_265AA77A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_265A4C000, v14, v15, "Waiting for background data", v16, 2u);
      MEMORY[0x2667691D0](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_265AA7430();
    sub_265AA7400();
    aBlock[4] = sub_265A65D54;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265A554D0;
    aBlock[3] = &block_descriptor_106;
    _Block_copy(aBlock);
    sub_265AA74A0();
    swift_allocObject();

    v17 = sub_265AA7470();

    *(a1 + 176) = v17;

    sub_265A5F6E4();
  }
}

uint64_t sub_265A64838()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265A648CC;

  return sub_265A5E300(v3, v4, v5, v2);
}

uint64_t sub_265A648CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265A649C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265AA7410();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_265AA7440();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 184);

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F748);
  sub_265AA7840();

  if (aBlock[0])
  {
    sub_265A5E750(a2, &unk_287755690, &unk_265AAB4D0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_265A780B8();
    (*(v7 + 16))(v9, v13, v6);
    v14 = sub_265AA6E00();
    v15 = sub_265AA77A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_265A4C000, v14, v15, "Waiting for background data", v16, 2u);
      MEMORY[0x2667691D0](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_265AA7430();
    sub_265AA7400();
    aBlock[4] = sub_265A65AD0;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265A554D0;
    aBlock[3] = &block_descriptor_92;
    _Block_copy(aBlock);
    sub_265AA74A0();
    swift_allocObject();

    v17 = sub_265AA7470();

    *(a1 + 176) = v17;

    sub_265A5F6E4();
  }
}

uint64_t sub_265A64D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265AA7410();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_265AA7440();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 184);

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F748);
  sub_265AA7840();

  if (aBlock[0])
  {
    sub_265A5EFA4();

    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_265A780B8();
    (*(v7 + 16))(v9, v13, v6);
    v14 = sub_265AA6E00();
    v15 = sub_265AA77A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_265A4C000, v14, v15, "Waiting for background data", v16, 2u);
      MEMORY[0x2667691D0](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_265AA7430();
    sub_265AA7400();
    aBlock[4] = sub_265A65AC8;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265A554D0;
    aBlock[3] = &block_descriptor_81;
    _Block_copy(aBlock);
    sub_265AA74A0();
    swift_allocObject();

    v17 = sub_265AA7470();

    *(a1 + 176) = v17;

    sub_265A5F6E4();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_265A650DC()
{
  v1 = *(v0 + 192);
  *(v0 + 192) = 0;
  sub_265A5BAB4(v1);

  return swift_unknownObjectRelease();
}

void sub_265A6511C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
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

uint64_t sub_265A651A8()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265A60ABC(v1, v2, v3);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_265A6526C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_265A6532C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_265A639B4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_265A6526C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t objectdestroy_13Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A6542C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 192);
  *(v1 + 192) = *(v0 + 24);
  swift_unknownObjectRetain();
  sub_265A5BAB4(v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_265A654B8()
{
  result = qword_280030FA0[0];
  if (!qword_280030FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280030FA0);
  }

  return result;
}

uint64_t sub_265A6553C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265A6614C;

  return sub_265A62F90(v3, v4, v5, v2);
}

uint64_t sub_265A655D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_265A65698()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265A6614C;

  return sub_265A63490(v3, v4, v5, v2);
}

uint64_t sub_265A6572C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_265A65780()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_265A657B8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    sub_265A655D0(v3 + 56, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = (*(v5 + 32))(2, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    if (v6 & v1)
    {
      v7 = sub_265A5BDC0();
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        v9 = *(v3 + 80);
        v10 = *(v3 + 88);
        __swift_project_boxed_opaque_existential_1((v3 + 56), v9);
        v11 = (*(v10 + 8))(v9, v10);
        swift_endAccess();
        (*((*MEMORY[0x277D85000] & *v8) + 0x98))(v11 & 1);
      }
    }

    v12 = *(v3 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F748);
    sub_265AA7840();

    if (v13[0])
    {
      if (*(v3 + 176))
      {
        *(v3 + 176) = 0;
        sub_265AA7490();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_265A659B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265A659F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265A65A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265A65B08()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265A6614C;

  return sub_265A5E8F8(v4, v5, v6, v2, v3);
}

uint64_t sub_265A65BB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FAF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265A65C84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FAF8);
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x98))(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FAF8);
  return sub_265AA76D0();
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265A65DD8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265A6614C;

  return sub_265A5D080(v4, v5, v6, v2, v3);
}

uint64_t sub_265A65E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A65EE0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265A65F40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A65F78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265A6614C;

  return sub_265A637C4(a1, v4);
}

uint64_t sub_265A66030(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265A648CC;

  return sub_265A637C4(a1, v4);
}

id sub_265A660F0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

__uint64_t sub_265A661C8()
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = result;
  if (v0[24])
  {
    v3 = *(v0 + 4);
    v4 = result >= v3;
    v5 = result - v3;
    if (v4)
    {
      v6 = v5 / 1000000000.0;
      v7 = swift_beginAccess();
      *(v0 + 2) = v6 + *(v0 + 2);
      *(v0 + 4) = v2;
      return (*(*v0 + 104))(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v0[24] = 1;
    *(v0 + 4) = result;
    v8 = *(*v0 + 104);

    return v8();
  }

  return result;
}

uint64_t sub_265A662CC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_265A6631C()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_265A6634C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

id sub_265A663D4()
{
  v1 = OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_265A66488(uint64_t a1)
{
  v3 = OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_265A664E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_265AA7540();

  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_265A554D0;
    v12[3] = &block_descriptor_2;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v8 finalTextColor:a3 onAnimationCompleteHandler:v9];
  _Block_release(v9);

  return v10;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_265A665F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_265A66994(a1, a2, a3, a4, a5);
  sub_265A56D6C(a4);

  return v7;
}

void __swiftcall SASWelcomeToDeviceViewControllerProvider.init()(SASWelcomeToDeviceViewControllerProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_265A66994(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FBE0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v23 - v16);
  type metadata accessor for WelcomeToDeviceViewModel();
  v18 = a3;
  v19 = sub_265AA7230();
  sub_265A66BC8(a4);
  *&v6[OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewModel] = sub_265A55688(a1, a2, v19, a4, a5);
  sub_265A66BD8();

  sub_265A994BC(v17);
  sub_265A66C30(v17, v15);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FBF0));
  v21 = sub_265AA7110();
  sub_265A66CA0(v17);
  *&v6[OBJC_IVAR___SASWelcomeToDeviceViewControllerProvider_viewController] = v21;
  v23.receiver = v6;
  v23.super_class = SASWelcomeToDeviceViewControllerProvider;
  return objc_msgSendSuper2(&v23, sel_init);
}

unint64_t type metadata accessor for SASWelcomeToDeviceViewControllerProvider()
{
  result = qword_2800310B0;
  if (!qword_2800310B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800310B0);
  }

  return result;
}

uint64_t sub_265A66B80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A66BC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_265A66BD8()
{
  result = qword_28002FBE8;
  if (!qword_28002FBE8)
  {
    type metadata accessor for WelcomeToDeviceViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FBE8);
  }

  return result;
}

uint64_t sub_265A66C30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A66CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_265A66D7C()
{
  v1 = OBJC_IVAR___SASBookendViewProvider____lazy_storage___view;
  v2 = *(v0 + OBJC_IVAR___SASBookendViewProvider____lazy_storage___view);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SASBookendViewProvider____lazy_storage___view);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v7 = v0;
    v8 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    v9 = *(v7 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_265A66E98(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBookendType_];
}

id sub_265A66F3C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_265AA7630();

  v7 = [v5 *a3];

  return v7;
}

id sub_265A66FCC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = sub_265AA7630();

  v7 = [v3 *a3];

  return v7;
}

id sub_265A67054(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBookendType:a1 callbacks:a2];

  return v3;
}

id sub_265A670AC(uint64_t a1, void *a2)
{
  v3 = sub_265A69688(a1, a2);

  return v3;
}

id sub_265A6713C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_265A69780(a1, a2, a3, 1, sub_265A69C44);

  return v4;
}

id sub_265A671AC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_265AA7630();

  v9 = [v7 *a4];

  return v9;
}

id sub_265A6723C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_265A69780(a1, a2, a3, 0, sub_265A69B60);

  return v4;
}

id sub_265A672A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t (*a7)(uint64_t))
{
  v11 = sub_265AA7640();
  v12 = a5;
  v13 = sub_265A69780(a3, v11, a5, a6, a7);

  return v13;
}

uint64_t SASBookendViewProvider.currentLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v7 = swift_getObjectType();
  v8 = (*(v6 + 16))(v7, v6);
  swift_unknownObjectRelease();
  return v8;
}

id SASBookendViewProvider.totalAnimationDuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  v6 = v5;
  swift_unknownObjectRelease();
  if (v4 && (v7 = swift_getObjectType(), v8 = COERCE_DOUBLE((*(v6 + 24))(v7, v6)), v10 = v9, swift_unknownObjectRelease(), (v10 & 1) == 0))
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  else
  {
    return 0;
  }
}

uint64_t SASBookendViewProvider.setCallbackConfiguration(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 48);
    swift_unknownObjectRetain();
    v8(a1, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265A677F0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v8(a1, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall SASBookendViewProvider.isAnimating()()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v7 = swift_getObjectType();
  v8 = (*(v6 + 8))(v7, v6);
  swift_unknownObjectRelease();
  return v8 & 1;
}

Swift::Bool __swiftcall SASBookendViewProvider.willAnimateWithLogo()()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  v7 = swift_getObjectType();
  v8 = (*(v6 + 32))(v7, v6);
  swift_unknownObjectRelease();
  return v8 & 1;
}

Swift::Void __swiftcall SASBookendViewProvider.advanceToEndOfAnimation()()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A780B8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_265AA6E00();
  v8 = sub_265AA77A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265A4C000, v7, v8, "Advance to end of animation requested", v9, 2u);
    MEMORY[0x2667691D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  (*(v14 + 32))(v15, v14);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SASBookendViewProvider.startAnimation()()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A780B8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_265AA6E00();
  v8 = sub_265AA77A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265A4C000, v7, v8, "Start animation requested", v9, 2u);
    MEMORY[0x2667691D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  (*(v14 + 8))(v15, v14);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SASBookendViewProvider.stopAnimation()()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A780B8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_265AA6E00();
  v8 = sub_265AA77A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265A4C000, v7, v8, "Stop animation requested", v9, 2u);
    MEMORY[0x2667691D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  (*(v14 + 16))(v15, v14);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SASBookendViewProvider.pauseAnimation()()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A780B8();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_265AA6E00();
  v8 = sub_265AA77A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265A4C000, v7, v8, "Pause animation requested", v9, 2u);
    MEMORY[0x2667691D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  (*(v14 + 24))(v15, v14);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SASBookendViewProvider.updateLanguages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265A780B8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_265AA6E00();
  v10 = sub_265AA77A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_265A4C000, v9, v10, "Language update requested", v11, 2u);
    MEMORY[0x2667691D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 48);
  swift_unknownObjectRetain();
  v14(a1._rawValue, ObjectType, v12);
  swift_unknownObjectRelease();
}

uint64_t SASBookendViewProvider.setBackgroundData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265A780B8();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_265AA6E00();
  v12 = sub_265AA77A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_265A4C000, v11, v12, "Client specifying background data", v13, 2u);
    MEMORY[0x2667691D0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = result;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 16);
    swift_unknownObjectRetain();
    v19(a1, a2, ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SASBookendViewProvider.setBackgroundTexture(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265A780B8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_265AA6E00();
  v10 = sub_265AA77A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_265A4C000, v9, v10, "Client specifying background texture", v11, 2u);
    MEMORY[0x2667691D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = result;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 32);
    swift_unknownObjectRetain();
    v17(a1, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SASBookendViewProvider.setBackgroundTextureDataSource(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265A780B8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_265AA6E00();
  v10 = sub_265AA77A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_265A4C000, v9, v10, "Client specifying background texture datasource", v11, 2u);
    MEMORY[0x2667691D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = result;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 24);
    swift_unknownObjectRetain();
    v17(a1, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall SASBookendViewProvider.shouldRenderBackgroundTexture(_:)(Swift::Bool a1)
{
  v3 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v3);
  v8 = v7;
  swift_unknownObjectRelease();
  if (v6)
  {
    v9 = swift_getObjectType();
    (*(v8 + 40))(a1, v9, v8);

    swift_unknownObjectRelease();
  }
}

id static SASBookendViewProvider.willShowAnimationWithLogo()()
{
  v0 = [objc_allocWithZone(SASBookendViewProvider) initWithBookendType:0 callbacks:0];
  v1 = [v0 willAnimateWithLogo];

  return v1;
}

CGImageRef_optional __swiftcall SASBookendViewProvider.layerSnapshot()()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 56);
  swift_unknownObjectRetain();
  v7.value = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  return v7;
}

__C::CGRect __swiftcall SASBookendViewProvider.largestRectForAnimation()()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  v3 = 0.0;
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (!v4)
  {
    v8 = v2;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 72);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    v7 = v17;
    v6 = v15;
    v5 = v13;
    v3 = v11;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v3;
  return result;
}

void __swiftcall SASBookendViewProvider.animationConstrainingView()(UIView_optional *__return_ptr retstr)
{
  v2 = *(v1 + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    swift_unknownObjectRetain();
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

void __swiftcall SASBookendViewProvider.init()(SASBookendViewProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_265A69688(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  *&v2[OBJC_IVAR___SASBookendViewProvider____lazy_storage___view] = 0;
  type metadata accessor for BookendLanguageProvider();
  v13 = 0;
  v14 = 1;
  BookendLanguageProvider.__allocating_init(languageOrderType:)(&v13);
  type metadata accessor for InstanceManager();
  v6 = a2;
  v7 = sub_265A784F4(a1, sub_265A69C44);
  v9 = v8;

  v10 = &v3[OBJC_IVAR___SASBookendViewProvider_viewWrapper];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v3;
  v12.super_class = SASBookendViewProvider;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_265A69780(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  swift_getObjectType();
  *&v8[OBJC_IVAR___SASBookendViewProvider____lazy_storage___view] = 0;
  type metadata accessor for BookendLanguageProvider();
  v19 = a2;
  v20 = a4;
  BookendLanguageProvider.__allocating_init(languageOrderType:)(&v19);
  type metadata accessor for InstanceManager();
  v12 = a3;
  v13 = sub_265A784F4(a1, a5);
  v15 = v14;

  v16 = &v8[OBJC_IVAR___SASBookendViewProvider_viewWrapper];
  *v16 = v13;
  v16[1] = v15;
  v18.receiver = v8;
  v18.super_class = SASBookendViewProvider;
  return objc_msgSendSuper2(&v18, sel_init);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_265A69A7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265A69AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for SASBookendViewProvider()
{
  result = qword_2800310B8;
  if (!qword_2800310B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800310B8);
  }

  return result;
}

uint64_t sub_265A69B64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_265A6EC50();
  swift_beginAccess();
  if ((*(v4[1] + 8))())
  {
    type metadata accessor for BookendViewWrapper();
    v5 = &off_281F03D80;
  }

  else
  {
    type metadata accessor for CursiveTextViewWrapper();
    v5 = &off_281F046A0;
  }

  v6 = v5[4];
  v7 = v3;

  return v6(v1, v2, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 < 0 || sub_265AA7690() <= a1)
  {
    v5 = 1;
  }

  else
  {
    sub_265AA76A0();
    v5 = 0;
  }

  v6 = *(*(a2 - 8) + 56);

  return v6(a3, v5, 1, a2);
}

uint64_t Comparable.clamp(minimum:maximum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v12 = *(v10 + 16);
  v12(a4, v5);
  if (sub_265AA74F0() & 1) != 0 || (result = sub_265AA74E0(), a1 = a2, (result))
  {
    (*(v10 + 8))(a4, a3);

    return (v12)(a4, a1, a3);
  }

  return result;
}

uint64_t sub_265A69E4C(char a1)
{
  if (a1)
  {
    return 0x656D6F636C6557;
  }

  else
  {
    return 0x6F6C6C6548;
  }
}

uint64_t sub_265A69E80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D6F636C6557;
  }

  else
  {
    v3 = 0x6F6C6C6548;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x656D6F636C6557;
  }

  else
  {
    v5 = 0x6F6C6C6548;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_265AA7B50();
  }

  return v8 & 1;
}

uint64_t sub_265A69F24()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A69FA4()
{
  sub_265AA75B0();
}

uint64_t sub_265A6A010()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

void sub_265A6A098(uint64_t *a1@<X8>)
{
  v2 = 0x6F6C6C6548;
  if (*v1)
  {
    v2 = 0x656D6F636C6557;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_265A6A15C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_265A6A18C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_265A6A1C4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_265A6A1F4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_265A6A22C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_265A6A25C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_265A6A2F0(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_265A6A340(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_265A6A390(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_265A6A3E0(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_265A6A410()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_265A6A440(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_265A6A4A0(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_265A6A508(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t sub_265A6A538(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x65676175676E616CLL;
    v6 = 0x73656B6F727473;
    if (a1 != 8)
    {
      v6 = 0x656C616373;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65646E6563736564;
    if (a1 != 5)
    {
      v7 = 0x6867696548706163;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0x6867697279706F63;
    v3 = 0x7265507374696E75;
    if (a1 != 3)
    {
      v3 = 0x7265646E65637361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_265A6A684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265A6D11C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265A6A6B8(uint64_t a1)
{
  v2 = sub_265A6AACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A6A6F4(uint64_t a1)
{
  v2 = sub_265A6AACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A6A730(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A6AACC();
  sub_265AA7C60();
  LOBYTE(v14) = 0;
  sub_265AA7AB0();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_265AA7AB0();
    LOBYTE(v14) = 2;
    sub_265AA7AB0();
    v9 = *(v3 + 52);
    LOBYTE(v14) = 3;
    v16 = v9;
    sub_265AA7AC0();
    v10 = *(v3 + 60);
    LOBYTE(v14) = 4;
    v16 = v10;
    sub_265AA7AC0();
    v11 = *(v3 + 68);
    LOBYTE(v14) = 5;
    v16 = v11;
    sub_265AA7AC0();
    v12 = *(v3 + 76);
    LOBYTE(v14) = 6;
    v16 = v12;
    sub_265AA7AC0();
    LOBYTE(v14) = 7;
    sub_265AA7AB0();
    *&v14 = *(v3 + 96);
    v16 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC10);
    sub_265A6E988(&qword_28002FC18, sub_265A6AB20);
    sub_265AA7AD0();
    v14 = *(v3 + 112);
    v15 = *(v3 + 128);
    v16 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF80);
    sub_265A6E938(&qword_28002FC38);
    sub_265AA7AD0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_265A6AACC()
{
  result = qword_2800310C0;
  if (!qword_2800310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800310C0);
  }

  return result;
}

unint64_t sub_265A6AB54()
{
  result = qword_28002FC30;
  if (!qword_28002FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FC30);
  }

  return result;
}

double sub_265A6ABA8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  return result;
}

__n128 sub_265A6AC08@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_265A6D458(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_265A6AC64@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 *a9@<X8>, unsigned __int32 a10, char a11, unsigned __int32 a12, char a13, __n128 a14, unint64_t a15, unint64_t a16, unint64_t a17, char a18)
{
  result = a14;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u32[0] = a7;
  a9[3].n128_u8[4] = BYTE4(a7) & 1;
  a9[3].n128_u32[2] = a8;
  a9[3].n128_u8[12] = BYTE4(a8) & 1;
  a9[4].n128_u32[0] = a10;
  a9[4].n128_u8[4] = a11 & 1;
  a9[4].n128_u32[2] = a12;
  a9[4].n128_u8[12] = a13 & 1;
  a9[5] = a14;
  a9[6].n128_u64[0] = a15;
  a9[7].n128_u64[0] = a16;
  a9[7].n128_u64[1] = a17;
  a9[8].n128_u8[0] = a18 & 1;
  return result;
}

double sub_265A6AD44(float a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  __asm { FMOV            V6.4S, #3.0 }

  *&result = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(a5, a1), a1), a1), vaddq_f32(vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(a2, 1.0 - a1), 1.0 - a1), 1.0 - a1), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a3, _Q6), a1), 1.0 - a1), 1.0 - a1)), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a4, _Q6), a1), a1), 1.0 - a1))).u64[0];
  return result;
}

float32x4_t sub_265A6AD98(float32x4_t a1)
{
  v2 = vmulq_f32(v1[1], a1);
  *v1 = vmulq_f32(*v1, a1);
  v1[1] = v2;
  v3 = vmulq_f32(v1[2], a1);
  result = vmulq_f32(v1[3], a1);
  v1[2] = v3;
  v1[3] = result;
  return result;
}

uint64_t sub_265A6ADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265A6DBD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265A6AE0C(uint64_t a1)
{
  v2 = sub_265A6DB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A6AE48(uint64_t a1)
{
  v2 = sub_265A6DB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A6AE84(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A6DB84();
  sub_265AA7C60();
  v16 = v15;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF80);
  sub_265A6E938(&qword_28002FC38);
  sub_265AA7AE0();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = v14;
  v17 = 1;
  sub_265AA7AE0();
  v16 = v13;
  v17 = 2;
  sub_265AA7AE0();
  v16 = v12;
  v17 = 3;
  sub_265AA7AE0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_265A6B0DC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_265A6DD1C(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_265A6B164(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_265A6B1E0(float a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_265A6B254(float a1)
{
  result = swift_beginAccess();
  *(v1 + 28) = a1;
  return result;
}

__n128 sub_265A6B2D0(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[2] = a1;
  return result;
}

uint64_t sub_265A6B340(double a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_265A6B3B4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

__n128 sub_265A6B3F4@<Q0>(uint64_t a1@<X8>)
{
  sub_265A6DF9C(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_265A6B44C@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v18 = *(v1 + 160);
  v19 = v3;
  v20 = *(v1 + 192);
  v4 = *(v1 + 112);
  v14 = *(v1 + 96);
  v15 = v4;
  v5 = *(v1 + 144);
  v16 = *(v1 + 128);
  v17 = v5;
  v6 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = v6;
  sub_265A6DFC0(&v12, &v11);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265A6B4E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v12[6] = *(v1 + 160);
  v12[7] = v3;
  v13 = *(v1 + 192);
  v4 = *(v1 + 112);
  v12[2] = *(v1 + 96);
  v12[3] = v4;
  v5 = *(v1 + 144);
  v12[4] = *(v1 + 128);
  v12[5] = v5;
  v6 = *(v1 + 80);
  v12[0] = *(v1 + 64);
  v12[1] = v6;
  v7 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v7;
  v8 = *(a1 + 112);
  *(v1 + 160) = *(a1 + 96);
  *(v1 + 176) = v8;
  *(v1 + 192) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v9;
  v10 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v10;
  return sub_265A6E030(v12);
}

uint64_t sub_265A6B5B4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

__n128 sub_265A6B5F4()
{
  __asm { FMOV            V0.4S, #1.0 }

  return result;
}

__n128 sub_265A6B630(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[13] = a1;
  return result;
}

uint64_t sub_265A6B678()
{
  v0 = sub_265AA7A40();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}