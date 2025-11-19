uint64_t sub_25E78D970(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E78D980()
{
  MEMORY[0x25F8BFFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E78D9B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E78D9F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E78DA30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t soft_AXSPhotosensitiveVisualDebuggingEnabled()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr;
  v7 = get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr;
  if (!get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSPhotosensitiveVisualDebuggingEnabled");
    get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = +[PSEVideoProcessor needsProcessing];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

uint64_t soft_AXSPhotosensitiveSourceCopyDebuggingEnabled()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr;
  v7 = get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr;
  if (!get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr)
  {
    v1 = libAccessibilityLibrary();
    v5[3] = dlsym(v1, "_AXSPhotosensitiveSourceCopyDebuggingEnabled");
    get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = +[PSEVideoProcessor needsProcessing];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

uint64_t libAccessibilityLibrary()
{
  v13 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = libAccessibilityLibraryCore_frameworkLibrary;
  v10 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __libAccessibilityLibraryCore_block_invoke;
    v4[4] = &unk_279A34AB8;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_279A34A98;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  v1 = v4[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_25E791580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279A34AD8;
    v8 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXDeviceSupportsPhotosensitiveMitigation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "kAXSPhotosensitiveVisualDebuggingEnabledNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "kAXSPhotosensitiveSourceCopyDebuggingEnabledNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_25E791984(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD061C0, &qword_25E79DC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E79DC20;
  v5 = *MEMORY[0x277CBF3E0];
  *(inited + 32) = sub_25E79A788();
  *(inited + 40) = v6;
  *(inited + 48) = 1;
  v7 = *MEMORY[0x277CBF3E8];
  *(inited + 56) = sub_25E79A788();
  *(inited + 64) = v8;
  *(inited + 72) = 2;
  v9 = *MEMORY[0x277CBF410];
  *(inited + 80) = sub_25E79A788();
  *(inited + 88) = v10;
  *(inited + 96) = 4;
  v11 = *MEMORY[0x277CBF4B8];
  *(inited + 104) = sub_25E79A788();
  *(inited + 112) = v12;
  *(inited + 120) = 5;
  v13 = *MEMORY[0x277CBF4A8];
  *(inited + 128) = sub_25E79A788();
  *(inited + 136) = v14;
  *(inited + 144) = 6;
  v15 = *MEMORY[0x277CBF430];
  *(inited + 152) = sub_25E79A788();
  *(inited + 160) = v16;
  *(inited + 168) = 7;
  v17 = *MEMORY[0x277CBF448];
  *(inited + 176) = sub_25E79A788();
  *(inited + 184) = v18;
  *(inited + 192) = 9;
  v19 = *MEMORY[0x277CBF498];
  *(inited + 200) = sub_25E79A788();
  *(inited + 208) = v20;
  *(inited + 216) = 10;
  v21 = *MEMORY[0x277CBF400];
  *(inited + 224) = sub_25E79A788();
  *(inited + 232) = v22;
  *(inited + 240) = 11;
  v23 = *MEMORY[0x277CBF418];
  *(inited + 248) = sub_25E79A788();
  *(inited + 256) = v24;
  *(inited + 264) = 12;
  v25 = *MEMORY[0x277CBF460];
  *(inited + 272) = sub_25E79A788();
  *(inited + 280) = v26;
  *(inited + 288) = 13;
  v27 = *MEMORY[0x277CBF438];
  *(inited + 296) = sub_25E79A788();
  *(inited + 304) = v28;
  *(inited + 312) = 14;
  v29 = *MEMORY[0x277CBF468];
  *(inited + 320) = sub_25E79A788();
  *(inited + 328) = v30;
  *(inited + 336) = 15;
  v31 = *MEMORY[0x277CBF450];
  *(inited + 344) = sub_25E79A788();
  *(inited + 352) = v32;
  *(inited + 360) = 16;
  v33 = *MEMORY[0x277CBF3C8];
  *(inited + 368) = sub_25E79A788();
  *(inited + 376) = v34;
  *(inited + 384) = 17;
  v35 = *MEMORY[0x277CBF3D0];
  *(inited + 392) = sub_25E79A788();
  *(inited + 400) = v36;
  *(inited + 408) = 18;
  v37 = *MEMORY[0x277CBF3D8];
  *(inited + 416) = sub_25E79A788();
  *(inited + 424) = v38;
  *(inited + 432) = 19;
  v39 = *MEMORY[0x277CBF488];
  *(inited + 440) = sub_25E79A788();
  *(inited + 448) = v40;
  *(inited + 456) = 20;
  v41 = *MEMORY[0x277CBF4B0];
  *(inited + 464) = sub_25E79A788();
  *(inited + 472) = v42;
  *(inited + 480) = 21;
  v43 = *MEMORY[0x277CBF470];
  *(inited + 488) = sub_25E79A788();
  *(inited + 496) = v44;
  *(inited + 504) = 22;
  v45 = *MEMORY[0x277CBF420];
  *(inited + 512) = sub_25E79A788();
  *(inited + 520) = v46;
  *(inited + 528) = 25;
  v47 = *MEMORY[0x277CBF480];
  *(inited + 536) = sub_25E79A788();
  *(inited + 544) = v48;
  *(inited + 552) = 28;
  v49 = sub_25E7921D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD061C8, &qword_25E79DC38);
  swift_arrayDestroy();
  if (*(v49 + 16) && (v50 = sub_25E7920A0(a1, a2), (v51 & 1) != 0))
  {
    v52 = *(*(v49 + 56) + 4 * v50);
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25E791D28(uint64_t a1)
{
  v1 = *(a1 + 59);
  if (v1 > 8)
  {
    if (v1 == 9)
    {
      v7 = *(a1 + 60);
      if (v7 > 0xF)
      {
        if (v7 == 16)
        {
          return 24;
        }

        if (v7 == 18)
        {
          return 34;
        }
      }

      else
      {
        if (v7 == 1)
        {
          return 20;
        }

        if (v7 == 8)
        {
          return 25;
        }
      }

      return 22;
    }

    if (v1 == 11)
    {
      if (*(a1 + 60) == 17)
      {
        return 19;
      }

      return 0;
    }

    if (v1 != 12)
    {
      return 0;
    }

    v3 = *(a1 + 60);
    if (v3 == 18)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (v3 == 16)
    {
      v5 = 29;
    }

    else
    {
      v5 = v4;
    }

    if (v3 == 8)
    {
      return 33;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 5)
      {
        return 31;
      }

      if (v1 == 6)
      {
        return 30;
      }

      return 0;
    }

    v6 = *(a1 + 60);
    if (v6 <= 0xC)
    {
      if (v6 != 1)
      {
        if (v6 == 8)
        {
          return 6;
        }

        return 0;
      }

      return 20;
    }

    if (v6 != 16)
    {
      if (v6 == 13)
      {
        return 5;
      }

      return 0;
    }

    return 35;
  }
}

uint64_t sub_25E791E58(__IOSurface *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = IOSurfaceCopyValue(a1, *MEMORY[0x277CD29C0]);
  if (v2)
  {
    v3 = CGColorSpaceCreateWithPropertyList(v2);
    if (v3)
    {
      v4 = v3;
      v5 = CGColorSpaceCopyName(v3);
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v18[0] = 0uLL;
          sub_25E79A778();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_8:
  v7 = IOSurfaceCopyValue(a1, *MEMORY[0x277CD2A30]);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFDataGetTypeID() || (v10 = CGColorSpaceCreateWithICCData(v8)) == 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v11 = v10;
  v12 = CGColorSpaceCopyName(v10);
  if (!v12)
  {

    goto LABEL_16;
  }

  v13 = v12;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_25E79A778();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

LABEL_17:
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  if (IOSurfaceGetBulkAttachments() || (v14 = sub_25E791D28(v18), !v14))
  {
    v15 = sub_25E791984(0, 0);
  }

  else
  {
    v15 = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

_DWORD *sub_25E792084@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_25E7920A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E79A8D8();
  sub_25E79A798();
  v6 = sub_25E79A8E8();

  return sub_25E792118(a1, a2, v6);
}

unint64_t sub_25E792118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E79A898())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E7921D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD061D8, &qword_25E79DCD8);
    v3 = sub_25E79A888();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25E7920A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void type metadata accessor for PSEColorSpace()
{
  if (!qword_27FD061D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FD061D0);
    }
  }
}

uint64_t VideoProcessor.validationCallback.getter()
{
  v1 = (v0 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25E78D970(v3);
  return v3;
}

uint64_t sub_25E792454(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

uint64_t VideoProcessor.validationCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_25E78D970(a1);
  sub_25E79268C(v6);
  if (a1)
  {
    sub_25E79268C(a1);
  }

  v8 = a1 != 0;
  v9 = v2 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v9 + 6) = v8;
  return result;
}

uint64_t sub_25E79268C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E79269C@<X0>(void *a1@<X0>, uint64_t (**a2)(double *a1, double *a2, double *a3)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25E799048;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25E78D970(v4);
}

uint64_t sub_25E79273C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25E799004;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = (*a2 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v5;
  sub_25E78D970(v6);
  sub_25E78D970(v3);
  sub_25E79268C(v9);
  if (v3)
  {
    sub_25E79268C(v6);
  }

  v11 = v3 != 0;
  v12 = v7 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v12 + 6) = v11;
  return result;
}

void (*VideoProcessor.validationCallback.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___SwiftVideoProcessor_validationCallback;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25E7928D4;
}

void sub_25E7928D4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]) != 0;
    v6 = v4 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    *(v6 + 6) = v5;
  }

  free(v3);
}

uint64_t VideoProcessor.inTestingMode.getter()
{
  v1 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VideoProcessor.inTestingMode.setter(char a1)
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VideoProcessor.debugMode.getter()
{
  v1 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VideoProcessor.debugMode.setter(char a1)
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v4 + 5) = a1;
  return result;
}

uint64_t sub_25E792C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25E792CB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = v3 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v5 + 5) = v2;
  return result;
}

void (*VideoProcessor.debugMode.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25E792DB8;
}

void sub_25E792DB8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = v4 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    *(v6 + 5) = v5;
  }

  free(v3);
}

uint64_t VideoProcessor.copySourceOnlyDebugging.getter()
{
  v1 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VideoProcessor.copySourceOnlyDebugging.setter(char a1)
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v4 + 7) = a1;
  return result;
}

uint64_t sub_25E792FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25E793000(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = v3 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v5 + 7) = v2;
  return result;
}

void (*VideoProcessor.copySourceOnlyDebugging.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25E793100;
}

void sub_25E793100(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = v4 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    *(v6 + 7) = v5;
  }

  free(v3);
}

id VideoProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoProcessor.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SwiftVideoProcessor_needsInitialization] = 1;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_device] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_commandQueue] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_library] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_previousSurfaceTime] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3] = 0;
  v2 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06240, &qword_25E79DE18);
  v3 = sub_25E79A7B8();
  v3[2] = 2;
  v3[4] = 0;
  v3[5] = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
  v5 = sub_25E79A7B8();
  v5[2] = 2;
  v5[4] = 0;
  v5[5] = 0;
  *&v0[v4] = v5;
  v6 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
  v7 = sub_25E79A7B8();
  v7[2] = 2;
  v7[4] = 0;
  v7[5] = 0;
  *&v0[v6] = v7;
  v8 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
  v9 = sub_25E79A7B8();
  v9[2] = 2;
  v9[4] = 0;
  v9[5] = 0;
  *&v0[v8] = v9;
  v10 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
  v11 = sub_25E79A7B8();
  v11[2] = 2;
  v11[4] = 0;
  v11[5] = 0;
  *&v0[v10] = v11;
  v12 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
  v13 = sub_25E79A7B8();
  v13[2] = 2;
  v13[4] = 0;
  v13[5] = 0;
  *&v0[v12] = v13;
  v14 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
  v15 = sub_25E79A7B8();
  v15[2] = 2;
  v15[4] = 0;
  v15[5] = 0;
  *&v0[v14] = v15;
  v16 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
  v17 = sub_25E79A7B8();
  v17[2] = 2;
  v17[4] = 0;
  v17[5] = 0;
  *&v0[v16] = v17;
  v18 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
  v19 = sub_25E79A7B8();
  v19[2] = 2;
  v19[4] = 0;
  v19[5] = 0;
  *&v0[v18] = v19;
  v20 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
  v21 = sub_25E79A7B8();
  v21[2] = 2;
  v21[4] = 0;
  v21[5] = 0;
  *&v0[v20] = v21;
  v22 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
  v23 = sub_25E79A7B8();
  v23[2] = 2;
  v23[4] = 0;
  v23[5] = 0;
  *&v0[v22] = v23;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_sourceTexture] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_processedTexture] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_fps] = 1114636288;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_nits] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_area] = 1151218729;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_avl] = 1041865114;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_gain] = 1065353216;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaShape] = 0x40000000;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_energyPoolExponent] = 0x40000000;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaScale] = 1041865114;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_probabilityPoolGammaShape] = 1082130432;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_probabilityPoolExponent] = 1082130432;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cA] = 1049012208;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_tauAdapt] = 1065353216;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_tauMitigation] = 0x40000000;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_idxFrameRate] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_idxEquivalentSize] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_idxEquivalentKernelIndex] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_framePoolIndex] = 0;
  v24 = &v0[OBJC_IVAR___SwiftVideoProcessor_validationCallback];
  *v24 = 0;
  v24[1] = 0;
  v0[OBJC_IVAR___SwiftVideoProcessor_inTestingMode] = 0;
  v0[OBJC_IVAR___SwiftVideoProcessor_debugMode] = 0;
  v0[OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging] = 0;
  v25 = sub_25E79A7B8();
  *(v25 + 16) = 10;
  memset_pattern16((v25 + 32), &unk_25E79DE00, 0x50uLL);
  *&v0[OBJC_IVAR___SwiftVideoProcessor_frameDeltas] = v25;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_protectionStatus] = 0;
  v26 = &v0[OBJC_IVAR___SwiftVideoProcessor_bufferConstants];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 6) = 0;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_25E7935CC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___SwiftVideoProcessor_device);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR___SwiftVideoProcessor_device);
    result = [swift_unknownObjectRetain() heapBufferSizeAndAlignWithLength:4 options:544];
    v6 = result + v5;
    if (__OFADD__(result, v5))
    {
      goto LABEL_118;
    }

    v7 = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
LABEL_119:
      __break(1u);
    }

    else
    {
      v8 = v5 - 1;
      if (!__OFSUB__(v5, 1))
      {
        result = [v2 heapBufferSizeAndAlignWithLength:56 options:544];
        v10 = result + v9;
        if (!__OFADD__(result, v9))
        {
          v11 = __OFSUB__(v10, 1);
          v12 = v10 - 1;
          if (!v11)
          {
            if (!__OFSUB__(v9, 1))
            {
              v13 = v7 & ~v8;
              v14 = v12 & ~(v9 - 1);
              v15 = v13 + v14;
              if (!__OFADD__(v13, v14))
              {
                result = [v2 heapBufferSizeAndAlignWithLength:144 options:544];
                v17 = result + v16;
                if (!__OFADD__(result, v16))
                {
                  v11 = __OFSUB__(v17, 1);
                  v18 = v17 - 1;
                  if (!v11)
                  {
                    if (!__OFSUB__(v16, 1))
                    {
                      v19 = v18 & ~(v16 - 1);
                      v11 = __OFADD__(v15, v19);
                      v20 = v15 + v19;
                      if (!v11)
                      {
                        result = [v2 heapBufferSizeAndAlignWithLength:1024 options:544];
                        v22 = result + v21;
                        if (!__OFADD__(result, v21))
                        {
                          v11 = __OFSUB__(v22, 1);
                          v23 = v22 - 1;
                          if (!v11)
                          {
                            if (!__OFSUB__(v21, 1))
                            {
                              v24 = v23 & ~(v21 - 1);
                              v11 = __OFADD__(v20, v24);
                              v25 = v20 + v24;
                              if (!v11)
                              {
                                result = [v2 heapBufferSizeAndAlignWithLength:5120 options:544];
                                v27 = result + v26;
                                if (!__OFADD__(result, v26))
                                {
                                  v11 = __OFSUB__(v27, 1);
                                  v28 = v27 - 1;
                                  if (!v11)
                                  {
                                    if (!__OFSUB__(v26, 1))
                                    {
                                      v29 = v28 & ~(v26 - 1);
                                      v11 = __OFADD__(v25, v29);
                                      v30 = v25 + v29;
                                      if (!v11)
                                      {
                                        result = [v2 heapBufferSizeAndAlignWithLength:5120 options:544];
                                        v32 = result + v31;
                                        if (!__OFADD__(result, v31))
                                        {
                                          v11 = __OFSUB__(v32, 1);
                                          v33 = v32 - 1;
                                          if (!v11)
                                          {
                                            if (!__OFSUB__(v31, 1))
                                            {
                                              v34 = v33 & ~(v31 - 1);
                                              v11 = __OFADD__(v30, v34);
                                              v35 = v30 + v34;
                                              if (!v11)
                                              {
                                                result = [v2 heapBufferSizeAndAlignWithLength:640 options:544];
                                                v37 = result + v36;
                                                if (!__OFADD__(result, v36))
                                                {
                                                  v11 = __OFSUB__(v37, 1);
                                                  v38 = v37 - 1;
                                                  if (!v11)
                                                  {
                                                    if (!__OFSUB__(v36, 1))
                                                    {
                                                      v39 = v38 & ~(v36 - 1);
                                                      v11 = __OFADD__(v35, v39);
                                                      v40 = v35 + v39;
                                                      if (!v11)
                                                      {
                                                        result = [v2 heapBufferSizeAndAlignWithLength:640 options:544];
                                                        v42 = result + v41;
                                                        if (!__OFADD__(result, v41))
                                                        {
                                                          v11 = __OFSUB__(v42, 1);
                                                          v43 = v42 - 1;
                                                          if (!v11)
                                                          {
                                                            if (!__OFSUB__(v41, 1))
                                                            {
                                                              v44 = v43 & ~(v41 - 1);
                                                              v11 = __OFADD__(v40, v44);
                                                              v45 = v40 + v44;
                                                              if (!v11)
                                                              {
                                                                result = [v2 heapBufferSizeAndAlignWithLength:20 options:544];
                                                                v47 = result + v46;
                                                                if (!__OFADD__(result, v46))
                                                                {
                                                                  v11 = __OFSUB__(v47, 1);
                                                                  v48 = v47 - 1;
                                                                  if (!v11)
                                                                  {
                                                                    if (!__OFSUB__(v46, 1))
                                                                    {
                                                                      v49 = v48 & ~(v46 - 1);
                                                                      v11 = __OFADD__(v45, v49);
                                                                      v50 = v45 + v49;
                                                                      if (!v11)
                                                                      {
                                                                        result = [v2 heapBufferSizeAndAlignWithLength:20 options:544];
                                                                        v52 = result + v51;
                                                                        if (!__OFADD__(result, v51))
                                                                        {
                                                                          v11 = __OFSUB__(v52, 1);
                                                                          v53 = v52 - 1;
                                                                          if (!v11)
                                                                          {
                                                                            if (!__OFSUB__(v51, 1))
                                                                            {
                                                                              v54 = v53 & ~(v51 - 1);
                                                                              v11 = __OFADD__(v50, v54);
                                                                              v55 = v50 + v54;
                                                                              if (!v11)
                                                                              {
                                                                                result = [v2 heapBufferSizeAndAlignWithLength:40 options:544];
                                                                                v57 = result + v56;
                                                                                if (!__OFADD__(result, v56))
                                                                                {
                                                                                  v11 = __OFSUB__(v57, 1);
                                                                                  v58 = v57 - 1;
                                                                                  if (!v11)
                                                                                  {
                                                                                    if (!__OFSUB__(v56, 1))
                                                                                    {
                                                                                      v59 = v58 & ~(v56 - 1);
                                                                                      v60 = v55 + v59;
                                                                                      if (!__OFADD__(v55, v59))
                                                                                      {
                                                                                        v61 = [objc_allocWithZone(MEMORY[0x277CD6E48]) init];
                                                                                        [v61 setSize_];
                                                                                        [v61 setHazardTrackingMode_];
                                                                                        v131 = [v2 newHeapWithDescriptor_];
                                                                                        [v61 setProtectionOptions_];
                                                                                        v130 = v61;
                                                                                        result = [v2 newHeapWithDescriptor_];
                                                                                        v141 = result;
                                                                                        if (PSELog)
                                                                                        {
                                                                                          v62 = PSELog;
                                                                                          sub_25E79A7F8();
                                                                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
                                                                                          v63 = swift_allocObject();
                                                                                          *(v63 + 16) = xmmword_25E79DD20;
                                                                                          v129 = v3;
                                                                                          v64 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
                                                                                          v65 = sub_25E798620();
                                                                                          *(v63 + 56) = v65;
                                                                                          v66 = sub_25E79866C();
                                                                                          *(v63 + 64) = v66;
                                                                                          *(v63 + 32) = v64;
                                                                                          v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                                                                                          *(v63 + 96) = v65;
                                                                                          *(v63 + 104) = v66;
                                                                                          *(v63 + 72) = v67;
                                                                                          sub_25E79A758();

                                                                                          v68 = 0;
                                                                                          v69 = 0;
                                                                                          v139 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                                                                                          v140 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
                                                                                          v137 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                                                                                          v138 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                                                                                          v135 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                                                                                          v136 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                                                                                          v133 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                                                                                          v134 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                                                                                          v132 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
                                                                                          v70 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
                                                                                          v71 = v131;
                                                                                          v72 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
                                                                                          while (1)
                                                                                          {
                                                                                            v73 = v68;
                                                                                            if (v71)
                                                                                            {
                                                                                              v74 = [swift_unknownObjectRetain() newBufferWithLength:4 options:544];
                                                                                              if (v74)
                                                                                              {
                                                                                                v75 = v74;
                                                                                                swift_beginAccess();
                                                                                                v76 = *(v1 + v140);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v140) = v76;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v76);
                                                                                                  v76 = result;
                                                                                                  *(v1 + v140) = result;
                                                                                                }

                                                                                                if (v69 >= *(v76 + 16))
                                                                                                {
                                                                                                  __break(1u);
LABEL_108:
                                                                                                  __break(1u);
LABEL_109:
                                                                                                  __break(1u);
LABEL_110:
                                                                                                  __break(1u);
LABEL_111:
                                                                                                  __break(1u);
LABEL_112:
                                                                                                  __break(1u);
LABEL_113:
                                                                                                  __break(1u);
LABEL_114:
                                                                                                  __break(1u);
LABEL_115:
                                                                                                  __break(1u);
LABEL_116:
                                                                                                  __break(1u);
LABEL_117:
                                                                                                  __break(1u);
LABEL_118:
                                                                                                  __break(1u);
                                                                                                  goto LABEL_119;
                                                                                                }

                                                                                                v77 = v76 + 8 * v69;
                                                                                                v78 = *(v77 + 32);
                                                                                                *(v77 + 32) = v75;
                                                                                                *(v1 + v140) = v76;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v79 = [v71 newBufferWithLength:56 options:544];
                                                                                              if (v79)
                                                                                              {
                                                                                                v80 = v79;
                                                                                                swift_beginAccess();
                                                                                                v81 = *(v1 + v139);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v139) = v81;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v81);
                                                                                                  v81 = result;
                                                                                                  *(v1 + v139) = result;
                                                                                                }

                                                                                                if (v69 >= *(v81 + 16))
                                                                                                {
                                                                                                  goto LABEL_108;
                                                                                                }

                                                                                                v82 = v81 + 8 * v69;
                                                                                                v83 = *(v82 + 32);
                                                                                                *(v82 + 32) = v80;
                                                                                                *(v1 + v139) = v81;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v84 = [v71 newBufferWithLength:144 options:544];
                                                                                              if (v84)
                                                                                              {
                                                                                                v85 = v84;
                                                                                                swift_beginAccess();
                                                                                                v86 = *(v1 + v138);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v138) = v86;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v86);
                                                                                                  v86 = result;
                                                                                                  *(v1 + v138) = result;
                                                                                                }

                                                                                                if (v69 >= *(v86 + 16))
                                                                                                {
                                                                                                  goto LABEL_109;
                                                                                                }

                                                                                                v87 = v86 + 8 * v69;
                                                                                                v88 = *(v87 + 32);
                                                                                                *(v87 + 32) = v85;
                                                                                                *(v1 + v138) = v86;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v89 = [v71 newBufferWithLength:1024 options:544];
                                                                                              if (v89)
                                                                                              {
                                                                                                v90 = v89;
                                                                                                swift_beginAccess();
                                                                                                v91 = *(v1 + v137);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v137) = v91;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v91);
                                                                                                  v91 = result;
                                                                                                  *(v1 + v137) = result;
                                                                                                }

                                                                                                if (v69 >= *(v91 + 16))
                                                                                                {
                                                                                                  goto LABEL_110;
                                                                                                }

                                                                                                v92 = v91 + 8 * v69;
                                                                                                v93 = *(v92 + 32);
                                                                                                *(v92 + 32) = v90;
                                                                                                *(v1 + v137) = v91;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v94 = [v71 newBufferWithLength:5120 options:544];
                                                                                              if (v94)
                                                                                              {
                                                                                                v95 = v94;
                                                                                                swift_beginAccess();
                                                                                                v96 = *(v1 + v136);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v136) = v96;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v96);
                                                                                                  v96 = result;
                                                                                                  *(v1 + v136) = result;
                                                                                                }

                                                                                                if (v69 >= *(v96 + 16))
                                                                                                {
                                                                                                  goto LABEL_111;
                                                                                                }

                                                                                                v97 = v96 + 8 * v69;
                                                                                                v98 = *(v97 + 32);
                                                                                                *(v97 + 32) = v95;
                                                                                                *(v1 + v136) = v96;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v99 = [v71 newBufferWithLength:5120 options:544];
                                                                                              if (v99)
                                                                                              {
                                                                                                v100 = v99;
                                                                                                swift_beginAccess();
                                                                                                v101 = *(v1 + v135);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v135) = v101;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v101);
                                                                                                  v101 = result;
                                                                                                  *(v1 + v135) = result;
                                                                                                }

                                                                                                if (v69 >= *(v101 + 16))
                                                                                                {
                                                                                                  goto LABEL_112;
                                                                                                }

                                                                                                v102 = v101 + 8 * v69;
                                                                                                v103 = *(v102 + 32);
                                                                                                *(v102 + 32) = v100;
                                                                                                *(v1 + v135) = v101;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v104 = [v71 newBufferWithLength:640 options:544];
                                                                                              if (v104)
                                                                                              {
                                                                                                v105 = v104;
                                                                                                swift_beginAccess();
                                                                                                v106 = *(v1 + v134);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v134) = v106;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v106);
                                                                                                  v106 = result;
                                                                                                  *(v1 + v134) = result;
                                                                                                }

                                                                                                if (v69 >= *(v106 + 16))
                                                                                                {
                                                                                                  goto LABEL_113;
                                                                                                }

                                                                                                v107 = v106 + 8 * v69;
                                                                                                v108 = *(v107 + 32);
                                                                                                *(v107 + 32) = v105;
                                                                                                *(v1 + v134) = v106;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v109 = [v71 newBufferWithLength:640 options:544];
                                                                                              if (v109)
                                                                                              {
                                                                                                v110 = v109;
                                                                                                swift_beginAccess();
                                                                                                v111 = *(v1 + v133);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v133) = v111;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v111);
                                                                                                  v111 = result;
                                                                                                  *(v1 + v133) = result;
                                                                                                }

                                                                                                if (v69 >= *(v111 + 16))
                                                                                                {
                                                                                                  goto LABEL_114;
                                                                                                }

                                                                                                v112 = v111 + 8 * v69;
                                                                                                v113 = *(v112 + 32);
                                                                                                *(v112 + 32) = v110;
                                                                                                *(v1 + v133) = v111;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v114 = [v71 newBufferWithLength:20 options:544];
                                                                                              if (v114)
                                                                                              {
                                                                                                v115 = v114;
                                                                                                swift_beginAccess();
                                                                                                v116 = *(v1 + v132);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v132) = v116;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v116);
                                                                                                  v116 = result;
                                                                                                  *(v1 + v132) = result;
                                                                                                }

                                                                                                if (v69 >= *(v116 + 16))
                                                                                                {
                                                                                                  goto LABEL_115;
                                                                                                }

                                                                                                v117 = v116 + 8 * v69;
                                                                                                v118 = *(v117 + 32);
                                                                                                *(v117 + 32) = v115;
                                                                                                *(v1 + v132) = v116;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v119 = [v71 newBufferWithLength:20 options:544];
                                                                                              if (v119)
                                                                                              {
                                                                                                v120 = v119;
                                                                                                swift_beginAccess();
                                                                                                v121 = *(v1 + v70);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v70) = v121;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v121);
                                                                                                  v121 = result;
                                                                                                  *(v1 + v70) = result;
                                                                                                }

                                                                                                if (v69 >= *(v121 + 16))
                                                                                                {
                                                                                                  goto LABEL_116;
                                                                                                }

                                                                                                v122 = v121 + 8 * v69;
                                                                                                v123 = *(v122 + 32);
                                                                                                *(v122 + 32) = v120;
                                                                                                *(v1 + v70) = v121;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v124 = [v71 newBufferWithLength:40 options:544];
                                                                                              if (v124)
                                                                                              {
                                                                                                v125 = v124;
                                                                                                swift_beginAccess();
                                                                                                v126 = *(v1 + v72);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v72) = v126;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v126);
                                                                                                  v126 = result;
                                                                                                  *(v1 + v72) = result;
                                                                                                }

                                                                                                if (v69 >= *(v126 + 16))
                                                                                                {
                                                                                                  goto LABEL_117;
                                                                                                }

                                                                                                v127 = v126 + 8 * v69;
                                                                                                v128 = *(v127 + 32);
                                                                                                *(v127 + 32) = v125;
                                                                                                *(v1 + v72) = v126;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              swift_unknownObjectRelease();
                                                                                            }

                                                                                            v68 = 1;
                                                                                            v71 = v141;
                                                                                            v69 = 1;
                                                                                            if (v73)
                                                                                            {

                                                                                              swift_unknownObjectRelease();
                                                                                              swift_unknownObjectRelease();
                                                                                              result = swift_unknownObjectRelease();
                                                                                              *(v1 + OBJC_IVAR___SwiftVideoProcessor_protectionStatus) = v129;
                                                                                              return result;
                                                                                            }
                                                                                          }
                                                                                        }

                                                                                        goto LABEL_161;
                                                                                      }

LABEL_160:
                                                                                      __break(1u);
LABEL_161:
                                                                                      __break(1u);
                                                                                      return result;
                                                                                    }

LABEL_159:
                                                                                    __break(1u);
                                                                                    goto LABEL_160;
                                                                                  }

LABEL_158:
                                                                                  __break(1u);
                                                                                  goto LABEL_159;
                                                                                }

LABEL_157:
                                                                                __break(1u);
                                                                                goto LABEL_158;
                                                                              }

LABEL_156:
                                                                              __break(1u);
                                                                              goto LABEL_157;
                                                                            }

LABEL_155:
                                                                            __break(1u);
                                                                            goto LABEL_156;
                                                                          }

LABEL_154:
                                                                          __break(1u);
                                                                          goto LABEL_155;
                                                                        }

LABEL_153:
                                                                        __break(1u);
                                                                        goto LABEL_154;
                                                                      }

LABEL_152:
                                                                      __break(1u);
                                                                      goto LABEL_153;
                                                                    }

LABEL_151:
                                                                    __break(1u);
                                                                    goto LABEL_152;
                                                                  }

LABEL_150:
                                                                  __break(1u);
                                                                  goto LABEL_151;
                                                                }

LABEL_149:
                                                                __break(1u);
                                                                goto LABEL_150;
                                                              }

LABEL_148:
                                                              __break(1u);
                                                              goto LABEL_149;
                                                            }

LABEL_147:
                                                            __break(1u);
                                                            goto LABEL_148;
                                                          }

LABEL_146:
                                                          __break(1u);
                                                          goto LABEL_147;
                                                        }

LABEL_145:
                                                        __break(1u);
                                                        goto LABEL_146;
                                                      }

LABEL_144:
                                                      __break(1u);
                                                      goto LABEL_145;
                                                    }

LABEL_143:
                                                    __break(1u);
                                                    goto LABEL_144;
                                                  }

LABEL_142:
                                                  __break(1u);
                                                  goto LABEL_143;
                                                }

LABEL_141:
                                                __break(1u);
                                                goto LABEL_142;
                                              }

LABEL_140:
                                              __break(1u);
                                              goto LABEL_141;
                                            }

LABEL_139:
                                            __break(1u);
                                            goto LABEL_140;
                                          }

LABEL_138:
                                          __break(1u);
                                          goto LABEL_139;
                                        }

LABEL_137:
                                        __break(1u);
                                        goto LABEL_138;
                                      }

LABEL_136:
                                      __break(1u);
                                      goto LABEL_137;
                                    }

LABEL_135:
                                    __break(1u);
                                    goto LABEL_136;
                                  }

LABEL_134:
                                  __break(1u);
                                  goto LABEL_135;
                                }

LABEL_133:
                                __break(1u);
                                goto LABEL_134;
                              }

LABEL_132:
                              __break(1u);
                              goto LABEL_133;
                            }

LABEL_131:
                            __break(1u);
                            goto LABEL_132;
                          }

LABEL_130:
                          __break(1u);
                          goto LABEL_131;
                        }

LABEL_129:
                        __break(1u);
                        goto LABEL_130;
                      }

LABEL_128:
                      __break(1u);
                      goto LABEL_129;
                    }

LABEL_127:
                    __break(1u);
                    goto LABEL_128;
                  }

LABEL_126:
                  __break(1u);
                  goto LABEL_127;
                }

LABEL_125:
                __break(1u);
                goto LABEL_126;
              }

LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    __break(1u);
    goto LABEL_121;
  }

  return result;
}

uint64_t sub_25E794280(uint64_t a1)
{
  v239 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR___SwiftVideoProcessor_fps);
  v3 = fminf(vabds_f32(24.0, v2), 1000.0);
  v4 = vabds_f32(25.0, v2);
  v5 = v4 <= v3;
  if (v4 <= v3)
  {
    v3 = v4;
  }

  v6 = vabds_f32(30.0, v2);
  if (v6 <= v3)
  {
    v3 = v6;
    v5 = 2;
  }

  v7 = vabds_f32(50.0, v2);
  if (v7 <= v3)
  {
    v3 = v7;
    v5 = 3;
  }

  v8 = vabds_f32(60.0, v2);
  if (v8 <= v3)
  {
    v3 = v8;
    v5 = 4;
  }

  v9 = vabds_f32(90.0, v2);
  if (v9 <= v3)
  {
    v3 = v9;
    v5 = 5;
  }

  LODWORD(v210) = 1123024896;
  if (vabds_f32(120.0, v2) > v3)
  {
    v10 = v5;
  }

  else
  {
    v10 = 6;
  }

  v208 = xmmword_25E79DD30;
  v209 = 0x42B4000042700000;
  if (!PSELog)
  {
    goto LABEL_183;
  }

  v12 = *(&v208 + v10);
  v13 = PSELog;
  sub_25E79A7C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25E79DD40;
  v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v16) = v12;
  v17 = [v15 initWithFloat_];
  v198 = sub_25E798620();
  *(v14 + 56) = v198;
  v197 = sub_25E79866C();
  *(v14 + 64) = v197;
  *(v14 + 32) = v17;
  v18 = 2;
  sub_25E79A758();

  v193 = OBJC_IVAR___SwiftVideoProcessor_idxFrameRate;
  *(v1 + OBJC_IVAR___SwiftVideoProcessor_idxFrameRate) = v10;
  v19 = sub_25E79A768();
  v20 = MGGetSInt32Answer();

  v21 = v20 - 1;
  v22 = v1;
  if ((v20 - 1) > 5)
  {
    v24 = 1151218688;
    v23 = 3;
  }

  else
  {
    v18 = qword_25E79DFE0[v21];
    v23 = qword_25E79E010[v21];
    v24 = dword_25E79E040[v21];
  }

  *(v1 + OBJC_IVAR___SwiftVideoProcessor_idxEquivalentKernelIndex) = v18;
  *(v1 + OBJC_IVAR___SwiftVideoProcessor_idxEquivalentSize) = v23;
  *(v1 + OBJC_IVAR___SwiftVideoProcessor_area) = v24;
  v25 = v1 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  *(v25 + 48) = 0;
  *(v25 + 8) = 0;
  v26 = OBJC_IVAR___SwiftVideoProcessor_fps;
  v203 = *(v22 + OBJC_IVAR___SwiftVideoProcessor_fps);
  v27 = *(v22 + OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaShape);
  v28 = *(v22 + OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaScale);
  v29 = sub_25E79A7B8();
  *(v29 + 16) = 256;
  v195 = v29 + 32;
  bzero((v29 + 32), 0x400uLL);
  v30 = v27 + -1.0;
  if (COERCE_INT(fabs(v27 + -1.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_171;
  }

  if (v30 <= -9.2234e18)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if (v30 >= 9.2234e18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v31 = v30;
  if (v30 < 0)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v31 > 7)
  {
    goto LABEL_174;
  }

  v190 = v29;
  v191 = v26;
  v32 = 0;
  v33 = flt_28706F800[v31 + 8];
  v34 = -v27;
  v35 = 0.0;
  v36 = 0.0;
  v189 = a1;
  do
  {
    if (v35 >= 2.0 && (v36 / v203) > 0.99)
    {
      v196 = v32;
      goto LABEL_29;
    }

    v35 = (1.0 / v203) + v35;
    v37 = expf(-v35 / v28);
    v38 = v37 * powf(v28, v34);
    v39 = (v38 * powf(v35, v30)) / v33;
    v36 = v36 + v39;
    *(v29 + 4 * v32++ + 32) = v39;
  }

  while (v32 != 256);
  v196 = 256;
LABEL_29:
  v40 = sub_25E79A7B8();
  *(v40 + 16) = 640;
  v41 = v40 + 32;
  bzero((v40 + 32), 0xA00uLL);
  v42 = sub_25E79A7B8();
  *(v42 + 16) = 5;
  *(v42 + 32) = 0u;
  v43 = v42 + 32;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0;
  type metadata accessor for UMFKernels();
  v44 = 0;
  v202 = v22;
  v204 = *(*sub_25E7991D8() + 120);
  v199 = OBJC_IVAR___SwiftVideoProcessor_idxFrameRate;
  v201 = OBJC_IVAR___SwiftVideoProcessor_idxEquivalentKernelIndex;
  while (1)
  {
    if (v44 >= *(v42 + 16))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    *(v43 + 8 * v44) = 0;
    v45 = *(v22 + v201);
    v46 = *(v22 + v199);
    v47 = v204();
    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_132;
    }

    if (v45 >= *(v47 + 16))
    {
      goto LABEL_133;
    }

    v48 = *(v47 + 8 * v45 + 32);

    if (v44 >= *(v48 + 16))
    {
      goto LABEL_134;
    }

    v49 = *(v48 + 8 * v44 + 32);

    if ((v46 & 0x8000000000000000) != 0)
    {
      goto LABEL_135;
    }

    if (v46 >= *(v49 + 16))
    {
      goto LABEL_136;
    }

    v50 = *(v49 + 8 * v46 + 32);

    v51 = *(v50 + 16);
    v22 = v202;
    if (v51)
    {
      break;
    }

LABEL_30:
    ++v44;

    if (v44 == 5)
    {

      v208 = xmmword_25E79DD50;
      if (!PSELog)
      {
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
      }

      v58 = *(&v208 + *(v202 + OBJC_IVAR___SwiftVideoProcessor_idxEquivalentSize));
      v205 = PSELog;
      sub_25E79A7C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_25E79DD20;
      v60 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v61 = v58;
      v62 = [v60 initWithFloat_];
      *(v59 + 56) = v198;
      *(v59 + 64) = v197;
      *(v59 + 32) = v62;
      v63 = *(v202 + v191);
      v64 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v65) = v63;
      v66 = [v64 initWithFloat_];
      *(v59 + 96) = v198;
      *(v59 + 104) = v197;
      *(v59 + 72) = v66;
      sub_25E79A758();

      if (!HIDWORD(v196))
      {
        *&v67 = *(v202 + OBJC_IVAR___SwiftVideoProcessor_nits) * *(v202 + OBJC_IVAR___SwiftVideoProcessor_avl);
        v68 = *(v202 + v191);
        v69 = 1.0 - expf(-1.0 / (*(v202 + OBJC_IVAR___SwiftVideoProcessor_tauAdapt) * v68));
        v70 = 1.0 - expf(-1.0 / (v68 * *(v202 + OBJC_IVAR___SwiftVideoProcessor_tauMitigation)));
        v71 = powf(sqrtf(*(v202 + OBJC_IVAR___SwiftVideoProcessor_area) * 1.6) / v58, *(v202 + OBJC_IVAR___SwiftVideoProcessor_cA) + *(v202 + OBJC_IVAR___SwiftVideoProcessor_cA));
        v72 = *(v202 + OBJC_IVAR___SwiftVideoProcessor_gain);
        v73 = powf(v68, 1.0 / *(v202 + OBJC_IVAR___SwiftVideoProcessor_energyPoolExponent));
        LODWORD(v208) = 0;
        *(&v208 + 4) = __PAIR64__(v67, v196);
        *(&v208 + 3) = v69;
        *&v209 = v70;
        *(&v209 + 1) = v71 * (v72 / v73);
        v210 = 0u;
        v211 = 0u;
        v212 = 1065353216;
        v213 = 0u;
        memset(v214, 0, sizeof(v214));
        v215 = 0u;
        v216 = 0;
        if (!PSELog)
        {
          goto LABEL_192;
        }

        v74 = PSELog;
        sub_25E79A7C8();
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_25E79DD40;
        v76 = HIDWORD(v208);
        v77 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v78) = v76;
        v79 = [v77 initWithFloat_];
        *(v75 + 56) = v198;
        *(v75 + 64) = v197;
        *(v75 + 32) = v79;
        sub_25E79A758();

        if (*(v42 + 16))
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v40 + 48);
          while (1)
          {
            v84 = *(v43 + 8 * v82);
            if (HIDWORD(v84))
            {
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
              goto LABEL_137;
            }

            *(v214 + v82 + 2) = v84;
            if (v82 >= *(v42 + 16))
            {
              goto LABEL_165;
            }

            v85 = *(v43 + 8 * v82);
            if (v85 < 0)
            {
              goto LABEL_166;
            }

            if (v85)
            {
              break;
            }

            v92 = 0.0;
LABEL_72:
            *(&v214[1] + v82 + 3) = v92;
            v229 = xmmword_25E79DD60;
            v230 = xmmword_25E79DD70;
            v231 = xmmword_25E79DD80;
            v232 = xmmword_25E79DD90;
            v233 = xmmword_25E79DDA0;
            v234 = xmmword_25E79DDB0;
            v235 = xmmword_25E79DDC0;
            v236 = xmmword_25E79DDD0;
            v237 = 0x4000000040100000;
            v238 = 0x40000000;
            v102 = &v229 + 140 * *(v202 + v193);
            v219 = 1068708659;
            v220 = *(v102 + 4);
            v221 = *(v102 + 20);
            v222 = *(v102 + 36);
            v223 = *(v102 + 52);
            v224 = *(v102 + 68);
            v225 = *(v102 + 84);
            v226 = *(v102 + 100);
            v227 = *(v102 + 116);
            v228 = *(v102 + 132);
            *(&v215 + v82) = *(&v219 + v82);
            if (v82 == 4)
            {
              goto LABEL_75;
            }

            ++v82;
            v83 += 8;
            v81 += 32;
            v80 -= 32;
            if (v82 >= *(v42 + 16))
            {
              goto LABEL_74;
            }
          }

          v86 = 32 * v82;
          v87 = *(v40 + 16);
          if (v87 > 32 * v82)
          {
            v86 = *(v40 + 16);
          }

          v88 = v86 - 32 * v82;
          v89 = v85 - 1;
          if (v88 >= v85 - 1)
          {
            v88 = v85 - 1;
          }

          v90 = v88 + 1;
          if (v90 >= 9)
          {
            v93 = v90 & 7;
            if ((v90 & 7) == 0)
            {
              v93 = 8;
            }

            v91 = v90 - v93;
            if (v87 <= v81)
            {
              v94 = v81;
            }

            else
            {
              v94 = *(v40 + 16);
            }

            v95 = v94 + v80;
            if (v95 < v89)
            {
              v89 = v95;
            }

            v96 = v89 - v93 + 1;
            v92 = 0.0;
            v97 = v83;
            do
            {
              v98 = vmulq_f32(v97[-1], v97[-1]);
              v99 = vmulq_f32(*v97, *v97);
              v92 = (((((((v92 + v98.f32[0]) + v98.f32[1]) + v98.f32[2]) + v98.f32[3]) + v99.f32[0]) + v99.f32[1]) + v99.f32[2]) + v99.f32[3];
              v97 += 2;
              v96 -= 8;
            }

            while (v96);
          }

          else
          {
            v91 = 0;
            v92 = 0.0;
          }

          v100 = v91 + v81;
          v101 = v85 - v91;
          while (v100 < v87)
          {
            v92 = v92 + (*(v41 + 4 * v100) * *(v41 + 4 * v100));
            ++v100;
            if (!--v101)
            {
              goto LABEL_72;
            }
          }

          __break(1u);
          goto LABEL_125;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        v103 = PSELog;
        if (PSELog)
        {
          v206 = *(&v214[1] + 12);
          v104 = 4;
          while (1)
          {
            v105 = v103;
            sub_25E79A7C8();
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_25E79DD40;
            v107 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithFloat_];
            *(v106 + 56) = v198;
            *(v106 + 64) = v197;
            *(v106 + 32) = v107;
            sub_25E79A758();

            if (v104 == 20)
            {
              break;
            }

            v229 = *(&v214[1] + 12);
            LODWORD(v230) = HIDWORD(v214[2]);
            LODWORD(v108) = *(&v229 + v104);
            v206 = v108;
            v103 = PSELog;
            v104 += 4;
            if (!PSELog)
            {
              goto LABEL_79;
            }
          }
        }

        else
        {
LABEL_79:
          __break(1u);
        }

        v109 = *(v202 + OBJC_IVAR___SwiftVideoProcessor_device);
        if (!v109)
        {
          goto LABEL_126;
        }

        v110 = *(v202 + OBJC_IVAR___SwiftVideoProcessor_device);
        v111 = [swift_unknownObjectRetain() newBufferWithBytes:v41 length:640 options:0];
        if (v111)
        {
          v112 = v111;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066A8, &qword_25E79DFC0);
          v207 = v109;
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_25E79DD40;
          v114 = [swift_unknownObjectRetain() contents];
          v115 = v112;
          *(v113 + 56) = MEMORY[0x277D83ED8];
          *(v113 + 32) = v114;
          sub_25E79A8C8();

          *&v229 = v40;
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_25E79DD40;
          *(v116 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066B0, &qword_25E79DFC8);
          *(v116 + 32) = &v229;
          sub_25E79A8C8();

          v117 = [v207 newBufferWithBytes:v195 length:4 * v196 options:0];
          if (v117)
          {
            v192 = 4 * v196;
            v194 = v112;
            v200 = v117;
            v118 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
            result = swift_beginAccess();
            v188 = v118;
            if (*(v202 + v118) == 1)
            {
              if (!PSELog)
              {
                __break(1u);
                return result;
              }

              v120 = PSELog;
              sub_25E79A7D8();
              v121 = swift_allocObject();
              *(v121 + 16) = xmmword_25E79DD40;
              v122 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
              *(v121 + 56) = v198;
              *(v121 + 64) = v197;
              *(v121 + 32) = v122;
              sub_25E79A758();

              if (v196)
              {
                v123 = 0;
                while (PSELog)
                {
                  v124 = PSELog;
                  sub_25E79A7D8();
                  v125 = swift_allocObject();
                  *(v125 + 16) = xmmword_25E79DD40;
                  if (v123 >= *(v190 + 16))
                  {
                    goto LABEL_175;
                  }

                  v126 = v125;
                  v127 = *(v195 + 4 * v123);
                  v128 = objc_allocWithZone(MEMORY[0x277CCABB0]);
                  LODWORD(v129) = v127;
                  v130 = [v128 initWithFloat_];
                  v126[7] = v198;
                  v126[8] = v197;
                  v126[4] = v130;
                  sub_25E79A758();

                  if (v196 == ++v123)
                  {
                    goto LABEL_90;
                  }
                }

                goto LABEL_184;
              }
            }

LABEL_90:

            v131 = *(v202 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
            if (v131)
            {
              v132 = *(v202 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
              swift_unknownObjectRetain();
              v133 = [v207 newBufferWithBytes:&v208 length:144 options:0];
              if (!v133)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                goto LABEL_127;
              }

              v134 = v133;
              if ([v131 commandBuffer])
              {
                v218 = &unk_28708A558;
                v135 = swift_dynamicCastObjCProtocolConditional();
                if (v135)
                {
                  v136 = v135;
                  v137 = [v135 blitCommandEncoder];
                  if (!v137)
                  {
                    goto LABEL_116;
                  }

                  v138 = v137;
                  v139 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                  swift_beginAccess();
                  v140 = *(v202 + v139);
                  if (*(v140 + 16))
                  {
                    v141 = *(v140 + 32);
                    if (v141)
                    {
                      [v138 copyFromBuffer:v134 sourceOffset:0 toBuffer:v141 destinationOffset:0 size:144];
                    }

                    v142 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                    swift_beginAccess();
                    v143 = *(v202 + v142);
                    if (*(v143 + 16))
                    {
                      v144 = *(v143 + 32);
                      if (v144)
                      {
                        [v138 copyFromBuffer:v200 sourceOffset:0 toBuffer:v144 destinationOffset:0 size:v192];
                      }

                      v145 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                      swift_beginAccess();
                      v146 = *(v202 + v145);
                      if (*(v146 + 16))
                      {
                        v147 = *(v146 + 32);
                        if (v147)
                        {
                          [v138 copyFromBuffer:v194 sourceOffset:0 toBuffer:v147 destinationOffset:0 size:640];
                        }

                        v148 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                        swift_beginAccess();
                        v149 = *(v202 + v148);
                        if (*(v149 + 16))
                        {
                          if (*(v149 + 32))
                          {
                            ObjectType = swift_getObjectType();
                            v151 = swift_unknownObjectRetain();
                            MEMORY[0x25F8BF750](v151, 0, 640, 0, ObjectType);
                            swift_unknownObjectRelease();
                          }

                          v152 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                          swift_beginAccess();
                          v153 = *(v202 + v152);
                          if (*(v153 + 16))
                          {
                            if (*(v153 + 32))
                            {
                              v154 = swift_getObjectType();
                              v155 = swift_unknownObjectRetain();
                              MEMORY[0x25F8BF750](v155, 0, v192, 0, v154);
                              swift_unknownObjectRelease();
                            }

                            v156 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                            swift_beginAccess();
                            v157 = *(v202 + v156);
                            if (*(v157 + 16))
                            {
                              if (*(v157 + 32))
                              {
                                v158 = swift_getObjectType();
                                v159 = swift_unknownObjectRetain();
                                MEMORY[0x25F8BF750](v159, 0, v192, 0, v158);
                                swift_unknownObjectRelease();
                              }

                              if (*(v202 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug))
                              {
                                v160 = swift_getObjectType();
                                v161 = swift_unknownObjectRetain();
                                MEMORY[0x25F8BF750](v161, 0, 56, 0, v160);
                                swift_unknownObjectRelease();
                              }

                              [v138 endEncoding];
                              swift_unknownObjectRelease();
LABEL_116:
                              [v136 commit];
                              if (*(v202 + v188) != 1 && [v131 commandBuffer])
                              {
                                v217 = &unk_28708A558;
                                v163 = swift_dynamicCastObjCProtocolConditional();
                                if (v163)
                                {
                                  v164 = v163;
                                  if ([v163 respondsToSelector_])
                                  {
                                    [v164 setProtectionOptions_];
                                  }

                                  v165 = [v164 blitCommandEncoder];
                                  if (v165)
                                  {
                                    v166 = v165;
                                    v167 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                                    swift_beginAccess();
                                    v168 = *(v202 + v167);
                                    if (*(v168 + 16) < 2uLL)
                                    {
LABEL_185:
                                      __break(1u);
LABEL_186:
                                      __break(1u);
LABEL_187:
                                      __break(1u);
LABEL_188:
                                      __break(1u);
LABEL_189:
                                      __break(1u);
LABEL_190:
                                      __break(1u);
                                      goto LABEL_191;
                                    }

                                    v169 = *(v168 + 40);
                                    if (v169)
                                    {
                                      [v166 copyFromBuffer:v134 sourceOffset:0 toBuffer:v169 destinationOffset:0 size:144];
                                    }

                                    v170 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                                    swift_beginAccess();
                                    v171 = *(v202 + v170);
                                    if (*(v171 + 16) < 2uLL)
                                    {
                                      goto LABEL_186;
                                    }

                                    v172 = *(v171 + 40);
                                    if (v172)
                                    {
                                      [v166 copyFromBuffer:v200 sourceOffset:0 toBuffer:v172 destinationOffset:0 size:v192];
                                    }

                                    v173 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                                    swift_beginAccess();
                                    v174 = *(v202 + v173);
                                    if (*(v174 + 16) < 2uLL)
                                    {
                                      goto LABEL_187;
                                    }

                                    v175 = *(v174 + 40);
                                    if (v175)
                                    {
                                      [v166 copyFromBuffer:v194 sourceOffset:0 toBuffer:v175 destinationOffset:0 size:640];
                                    }

                                    v176 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                                    swift_beginAccess();
                                    v177 = *(v202 + v176);
                                    if (*(v177 + 16) < 2uLL)
                                    {
                                      goto LABEL_188;
                                    }

                                    if (*(v177 + 40))
                                    {
                                      v178 = swift_getObjectType();
                                      v179 = swift_unknownObjectRetain();
                                      MEMORY[0x25F8BF750](v179, 0, 640, 0, v178);
                                      swift_unknownObjectRelease();
                                    }

                                    v180 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                                    swift_beginAccess();
                                    v181 = *(v202 + v180);
                                    if (*(v181 + 16) < 2uLL)
                                    {
                                      goto LABEL_189;
                                    }

                                    if (*(v181 + 40))
                                    {
                                      v182 = swift_getObjectType();
                                      v183 = swift_unknownObjectRetain();
                                      MEMORY[0x25F8BF750](v183, 0, v192, 0, v182);
                                      swift_unknownObjectRelease();
                                    }

                                    v184 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                                    swift_beginAccess();
                                    v185 = *(v202 + v184);
                                    if (*(v185 + 16) < 2uLL)
                                    {
                                      goto LABEL_190;
                                    }

                                    if (*(v185 + 40))
                                    {
                                      v186 = swift_getObjectType();
                                      v187 = swift_unknownObjectRetain();
                                      MEMORY[0x25F8BF750](v187, 0, v192, 0, v186);
                                      swift_unknownObjectRelease();
                                    }

                                    [v166 endEncoding];
                                    swift_unknownObjectRelease();
                                  }

                                  [v164 commit];
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                }

                                else
                                {
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                }

                                swift_unknownObjectRelease();
                                result = swift_unknownObjectRelease();
                                goto LABEL_127;
                              }

                              goto LABEL_137;
                            }

                            goto LABEL_182;
                          }

LABEL_181:
                          __break(1u);
LABEL_182:
                          __break(1u);
LABEL_183:
                          __break(1u);
LABEL_184:
                          __break(1u);
                          goto LABEL_185;
                        }

LABEL_180:
                        __break(1u);
                        goto LABEL_181;
                      }

LABEL_179:
                      __break(1u);
                      goto LABEL_180;
                    }

LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

LABEL_137:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_138;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

LABEL_138:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            goto LABEL_127;
          }

          swift_unknownObjectRelease();
        }

LABEL_125:
        swift_unknownObjectRelease();
        goto LABEL_126;
      }

LABEL_176:
      __break(1u);
      goto LABEL_177;
    }
  }

  v52 = 32 * v44;
  v53 = (v50 + 32);
  while (v52 < *(v40 + 16))
  {
    v54 = *v53;
    *(v41 + 4 * v52) = v54;
    if (v44 >= *(v42 + 16))
    {
      goto LABEL_119;
    }

    v55 = *(v43 + 8 * v44);
    v56 = __CFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_120;
    }

    *(v43 + 8 * v44) = v57;
    ++v52;
    ++v53;
    if (!--v51)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_126:

LABEL_127:
  v162 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall VideoProcessor.processSurface(sourceSurface:timestamp:destinationSurface:options:)(IOSurfaceRef sourceSurface, Swift::Double timestamp, IOSurfaceRef destinationSurface, NSDictionary options)
{
  v5 = v4;
  v7 = sourceSurface;
  v8 = 0x27FD06000uLL;
  if (*(v4 + OBJC_IVAR___SwiftVideoProcessor_needsInitialization) == 1)
  {
    swift_getObjectType();
    if (!PSELog)
    {
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    v9 = PSELog;
    sub_25E79A7F8();
    sub_25E79A758();

    type metadata accessor for UMFKernels();
    v10 = sub_25E7991D8();
    (*(*v10 + 152))(v10);

    v11 = MTLCreateSystemDefaultDevice();
    v12 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_device);
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_device) = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v11)
    {
      v13 = [v11 newCommandQueue];
      v14 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
      *(v5 + OBJC_IVAR___SwiftVideoProcessor_commandQueue) = v13;
      swift_unknownObjectRelease();
      v15 = objc_opt_self();
      v16 = [v15 sharedCaptureManager];
      v17 = [v16 newCaptureScopeWithDevice_];

      v18 = [v15 sharedCaptureManager];
      [v18 setDefaultCaptureScope_];

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      *&aBlock = 0;
      v21 = [v11 newDefaultLibraryWithBundle:v20 error:&aBlock];

      v22 = aBlock;
      if (v21)
      {
        v23 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_library);
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_library) = v21;
        v24 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = aBlock;
        v26 = sub_25E79A748();

        swift_willThrow();
        if (!PSELog)
        {
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

        v27 = PSELog;
        sub_25E79A7E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_25E79DD40;
        swift_getErrorValue();
        v29 = sub_25E79A8B8();
        v31 = v30;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_25E79907C();
        *(v28 + 32) = v29;
        *(v28 + 40) = v31;
        sub_25E79A758();

        v7 = sourceSurface;
        v8 = 0x27FD06000;
      }

      sub_25E7935CC(0);
      v32 = [v11 newBufferWithLength:56 options:0];
      v33 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug);
      *(v5 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug) = v32;
      swift_unknownObjectRelease();
      sub_25E794280(0);
      v34 = OBJC_IVAR___SwiftVideoProcessor_library;
      v35 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_library);
      if (!v35)
      {
        goto LABEL_32;
      }

      v36 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_library);
      swift_unknownObjectRetain();
      v37 = sub_25E79A768();
      v38 = [v35 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v38)
      {
        *&v349 = 0;
        v39 = [v11 newComputePipelineStateWithFunction:v38 error:&v349];
        v40 = v349;
        if (!v39)
        {
          v60 = v40;
          v61 = sub_25E79A748();

          swift_willThrow();
          if (!PSELog)
          {
LABEL_305:
            __break(1u);
            goto LABEL_306;
          }

          v62 = PSELog;
          sub_25E79A7E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_25E79DD40;
          swift_getErrorValue();
          v64 = sub_25E79A8B8();
          v66 = v65;
          *(v63 + 56) = MEMORY[0x277D837D0];
          *(v63 + 64) = sub_25E79907C();
          *(v63 + 32) = v64;
          *(v63 + 40) = v66;
          sub_25E79A758();
          swift_unknownObjectRelease();

          v7 = sourceSurface;
          v8 = 0x27FD06000;
          v42 = *(v5 + v34);
          if (!v42)
          {
            goto LABEL_32;
          }

          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        v41 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0);
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0) = v39;
        swift_unknownObjectRelease();
      }

      v42 = *(v5 + v34);
      if (!v42)
      {
        goto LABEL_32;
      }

LABEL_13:
      swift_unknownObjectRetain();
      v43 = sub_25E79A768();
      v44 = [v42 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v44)
      {
        *&v349 = 0;
        v45 = [v11 newComputePipelineStateWithFunction:v44 error:&v349];
        v46 = v349;
        if (!v45)
        {
          v67 = v46;
          v68 = sub_25E79A748();

          swift_willThrow();
          if (!PSELog)
          {
LABEL_306:
            __break(1u);
            goto LABEL_307;
          }

          v69 = PSELog;
          sub_25E79A7E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_25E79DD40;
          swift_getErrorValue();
          v71 = sub_25E79A8B8();
          v73 = v72;
          *(v70 + 56) = MEMORY[0x277D837D0];
          *(v70 + 64) = sub_25E79907C();
          *(v70 + 32) = v71;
          *(v70 + 40) = v73;
          sub_25E79A758();
          swift_unknownObjectRelease();

          v7 = sourceSurface;
          v8 = 0x27FD06000;
          v48 = *(v5 + v34);
          if (!v48)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        v47 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1);
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1) = v45;
        swift_unknownObjectRelease();
      }

      v48 = *(v5 + v34);
      if (!v48)
      {
        goto LABEL_32;
      }

LABEL_17:
      swift_unknownObjectRetain();
      v49 = sub_25E79A768();
      v50 = [v48 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v50)
      {
        *&v349 = 0;
        v51 = [v11 newComputePipelineStateWithFunction:v50 error:&v349];
        v52 = v349;
        if (!v51)
        {
          v74 = v52;
          v75 = sub_25E79A748();

          swift_willThrow();
          if (!PSELog)
          {
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          v76 = PSELog;
          sub_25E79A7E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_25E79DD40;
          swift_getErrorValue();
          v78 = sub_25E79A8B8();
          v80 = v79;
          *(v77 + 56) = MEMORY[0x277D837D0];
          *(v77 + 64) = sub_25E79907C();
          *(v77 + 32) = v78;
          *(v77 + 40) = v80;
          sub_25E79A758();
          swift_unknownObjectRelease();

          v7 = sourceSurface;
          v8 = 0x27FD06000uLL;
          v54 = *(v5 + v34);
          if (!v54)
          {
            goto LABEL_32;
          }

LABEL_21:
          swift_unknownObjectRetain();
          v55 = sub_25E79A768();
          v56 = [v54 newFunctionWithName_];

          swift_unknownObjectRelease();
          if (v56)
          {
            *&v349 = 0;
            v57 = [v11 newComputePipelineStateWithFunction:v56 error:&v349];
            v58 = v349;
            if (!v57)
            {
              v327 = v58;
              v328 = sub_25E79A748();

              swift_willThrow();
              if (!PSELog)
              {
LABEL_308:
                __break(1u);
                return;
              }

              v329 = PSELog;
              sub_25E79A7E8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
              v330 = swift_allocObject();
              *(v330 + 16) = xmmword_25E79DD40;
              swift_getErrorValue();
              v331 = sub_25E79A8B8();
              v333 = v332;
              *(v330 + 56) = MEMORY[0x277D837D0];
              *(v330 + 64) = sub_25E79907C();
              *(v330 + 32) = v331;
              *(v330 + 40) = v333;
              sub_25E79A758();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v7 = sourceSurface;
              v8 = 0x27FD06000;
              goto LABEL_34;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v59 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3);
            *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3) = v57;
LABEL_33:
            swift_unknownObjectRelease();
LABEL_34:
            *(v5 + *(v8 + 624)) = 0;
            goto LABEL_35;
          }

LABEL_32:
          swift_unknownObjectRelease();
          goto LABEL_33;
        }

        swift_unknownObjectRelease();
        v53 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2);
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2) = v51;
        swift_unknownObjectRelease();
      }

      v54 = *(v5 + v34);
      if (!v54)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }
  }

LABEL_35:
  v81 = OBJC_IVAR___SwiftVideoProcessor_previousSurfaceTime;
  v82 = timestamp - *(v5 + OBJC_IVAR___SwiftVideoProcessor_previousSurfaceTime);
  if (v82 <= 0.00833333333)
  {
    v82 = 0.00833333333;
  }

  if (v82 <= 0.0416666667)
  {
    v83 = v82;
  }

  else
  {
    v83 = 0.0416666667;
  }

  v84 = OBJC_IVAR___SwiftVideoProcessor_framePoolIndex;
  v85 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_framePoolIndex);
  v86 = OBJC_IVAR___SwiftVideoProcessor_frameDeltas;
  v87 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_frameDeltas);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v86) = v87;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v85 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v87 = sub_25E79860C(v87);
  if ((v85 & 0x8000000000000000) != 0)
  {
    goto LABEL_265;
  }

LABEL_42:
  v89 = *(v87 + 2);
  if (v85 >= v89)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  *&v87[8 * v85 + 32] = v83;
  *(v5 + v86) = v87;
  v90 = *(v5 + v84);
  _VF = __OFADD__(v90, 1);
  v92 = v90 + 1;
  if (_VF)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  *(v5 + v84) = v92 % 10;
  if (v89 < 0xA)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v94 = *(v87 + 5);
  v93 = *(v87 + 6);
  v95 = *(v87 + 13);
  v97 = *(v87 + 3);
  v96 = *(v87 + 4);
  v98 = *(v87 + 11);
  v99 = *(v87 + 9);
  v100 = *(v87 + 2);
  v101 = *(v87 + 7);
  v102 = fmin(v100.f64[0], 10.0);
  v103 = fmax(v100.f64[0], 0.001);
  v104 = *(v87 + 5);
  if (v104 < v102)
  {
    v102 = *(v87 + 5);
  }

  if (v103 <= v104)
  {
    v103 = *(v87 + 5);
  }

  if (v97.f64[0] < v102)
  {
    v102 = *(v87 + 6);
  }

  if (v103 <= v97.f64[0])
  {
    v103 = *(v87 + 6);
  }

  if (v101 < v102)
  {
    v102 = *(v87 + 7);
  }

  if (v103 <= v101)
  {
    v103 = *(v87 + 7);
  }

  v105 = v100.f64[0] + 0.0 + v104 + v97.f64[0] + v101;
  if (v96.f64[0] < v102)
  {
    v102 = *(v87 + 8);
  }

  if (v103 <= v96.f64[0])
  {
    v103 = *(v87 + 8);
  }

  v106 = v105 + v96.f64[0];
  if (v99 < v102)
  {
    v102 = *(v87 + 9);
  }

  if (v103 <= v99)
  {
    v103 = *(v87 + 9);
  }

  v107 = v106 + v99;
  if (v94.f64[0] >= v102)
  {
    v108 = v102;
  }

  else
  {
    v108 = *(v87 + 10);
  }

  if (v103 > v94.f64[0])
  {
    v109 = v103;
  }

  else
  {
    v109 = *(v87 + 10);
  }

  v110 = v107 + v94.f64[0];
  if (v98 < v108)
  {
    v108 = *(v87 + 11);
  }

  if (v109 <= v98)
  {
    v109 = *(v87 + 11);
  }

  v111 = v110 + v98;
  if (v93.f64[0] >= v108)
  {
    v112 = v108;
  }

  else
  {
    v112 = *(v87 + 12);
  }

  if (v109 > v93.f64[0])
  {
    v113 = v109;
  }

  else
  {
    v113 = *(v87 + 12);
  }

  v114 = v111 + v93.f64[0];
  if (v95 < v112)
  {
    v112 = *(v87 + 13);
  }

  if (v113 <= v95)
  {
    v113 = *(v87 + 13);
  }

  v115 = v114 + v95;
  v116 = vdupq_lane_s64(COERCE__INT64(v115 / 10.0), 0);
  v117 = vsubq_f64(v100, v116);
  __asm { FMOV            V18.2D, #10.0 }

  v122 = vdivq_f64(vmulq_f64(v117, v117), _Q18);
  v123 = vsubq_f64(v97, v116);
  v124 = vdivq_f64(vmulq_f64(v123, v123), _Q18);
  v125 = vsubq_f64(v96, v116);
  v126 = vdivq_f64(vmulq_f64(v125, v125), _Q18);
  v127 = vsubq_f64(v94, v116);
  v128 = vdivq_f64(vmulq_f64(v127, v127), _Q18);
  v129 = vsubq_f64(v93, v116);
  v130 = vdivq_f64(vmulq_f64(v129, v129), _Q18);
  v130.f64[0] = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v122, vdupq_laneq_s64(v122, 1)), v124), vdupq_laneq_s64(v124, 1)), v126), vdupq_laneq_s64(v126, 1)), v128), vdupq_laneq_s64(v128, 1)), v130), vdupq_laneq_s64(v130, 1)).f64[0];
  v131 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_fps);
  v132 = fabs(sqrt(v130.f64[0]));
  _ZF = v130.f64[0] == -INFINITY;
  v133 = INFINITY;
  if (!_ZF)
  {
    v133 = v132;
  }

  v134 = v115 - v112 - v113;
  v338 = OBJC_IVAR___SwiftVideoProcessor_fps;
  *(v5 + OBJC_IVAR___SwiftVideoProcessor_fps) = 8.0 / v134;
  *(v5 + v81) = timestamp;
  v135 = v133 / (v115 / 10.0) > 0.1;
  v136 = v5 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  *(v136 + 7) = v135;
  Width = IOSurfaceGetWidth(v7);
  Height = IOSurfaceGetHeight(v7);
  v137 = sub_25E791E58(v7);
  if (!PSELog)
  {
    goto LABEL_298;
  }

  v138 = v137;
  v139 = PSELog;
  sub_25E79A7D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_25E79DD40;
  v141 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v347 = sub_25E798620();
  *(v140 + 56) = v347;
  v346 = sub_25E79866C();
  *(v140 + 64) = v346;
  *(v140 + 32) = v141;
  sub_25E79A758();

  v142 = v138 - 1;
  if (v138 - 1) < 0x1E && ((0x29AB10FBu >> v142))
  {
    v143 = dword_25E79E058[v142];
    v144 = dword_25E79E0D0[v142];
  }

  else
  {
    if (!PSELog)
    {
LABEL_299:
      __break(1u);
      goto LABEL_300;
    }

    v145 = PSELog;
    sub_25E79A7D8();
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_25E79DD40;
    v147 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    *(v146 + 56) = v347;
    *(v146 + 64) = v346;
    *(v146 + 32) = v147;
    sub_25E79A758();

    v144 = 0;
    v143 = 1;
  }

  *(v136 + 12) = v143;
  *(v136 + 16) = v144;
  ProtectionOptions = IOSurfaceGetProtectionOptions();
  v149 = ProtectionOptions;
  if (ProtectionOptions)
  {
    v150 = OBJC_IVAR___SwiftVideoProcessor_protectionStatus;
    if (ProtectionOptions != *(v5 + OBJC_IVAR___SwiftVideoProcessor_protectionStatus))
    {
      if (!PSELog)
      {
LABEL_303:
        __break(1u);
        goto LABEL_304;
      }

      v154 = PSELog;
      sub_25E79A7C8();
      v155 = swift_allocObject();
      *(v155 + 16) = xmmword_25E79DD20;
      v156 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      *(v155 + 56) = v347;
      *(v155 + 64) = v346;
      *(v155 + 32) = v156;
      v157 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      *(v155 + 96) = v347;
      *(v155 + 104) = v346;
      *(v155 + 72) = v157;
      sub_25E79A758();

      sub_25E7935CC(v149);
      isa = options.super.isa;
LABEL_101:
      sub_25E794280(v149);
      goto LABEL_102;
    }
  }

  v151 = timestamp - *(v5 + v81);
  isa = options.super.isa;
  if (v151 > 1.0 || vabds_f32(*(v5 + v338), v131) >= 5.0)
  {
    if (!PSELog)
    {
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    v153 = PSELog;
    sub_25E79A7C8();
    sub_25E79A758();

    goto LABEL_101;
  }

LABEL_102:
  v158 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_device);
  if (!v158)
  {
    return;
  }

  v351 = &unk_287089EA8;
  v159 = swift_dynamicCastObjCProtocolConditional();
  swift_unknownObjectRetain();
  if (v159)
  {
    PixelFormat = IOSurfaceGetPixelFormat(sourceSurface);
    if (PixelFormat == 1953903154)
    {
      if ([v159 supportsYCBCRFormats12])
      {
        goto LABEL_111;
      }

      v162 = 0x100000002;
    }

    else
    {
      if (PixelFormat != 1953903152)
      {
        goto LABEL_111;
      }

      v161 = [v159 supportsYCBCRFormats12];
      v162 = 0x200000002;
      if (v161)
      {
        goto LABEL_111;
      }
    }

    *(v136 + 48) = 1;
    *(v136 + 8) = 1;
    *(v136 + 40) = v162;
  }

LABEL_111:
  if (*(v136 + 48) == 1)
  {
    WidthOfPlane = IOSurfaceGetWidthOfPlane(sourceSurface, 0);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(sourceSurface, 0);
    v165 = [objc_opt_self() texture2DDescriptorWithPixelFormat:115 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
    [v165 setUsage_];
    [v165 setProtectionOptions_];
    v166 = [v158 newTextureWithDescriptor:v165 iosurface:destinationSurface plane:0];
    v167 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_processedTexture);
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_processedTexture) = v166;
    swift_unknownObjectRelease();
    [v165 setUsage_];
    [v165 setPixelFormat_];
    v168 = [v158 newTextureWithDescriptor:v165 iosurface:sourceSurface plane:0];
    v169 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture);
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture) = v168;
    swift_unknownObjectRelease();
    [v165 setWidth_];
    [v165 setHeight_];
    [v165 setPixelFormat_];
    v170 = [v158 newTextureWithDescriptor:v165 iosurface:sourceSurface plane:1];
    v171 = &OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture;
  }

  else
  {
    v172 = objc_opt_self();
    v165 = [v172 texture2DDescriptorWithPixelFormat:sub_25E7987C8(sourceSurface) width:Width height:Height mipmapped:0];
    [v165 setUsage_];
    [v165 setProtectionOptions_];
    v173 = [v158 newTextureWithDescriptor:v165 iosurface:sourceSurface plane:0];
    v174 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture);
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture) = v173;
    swift_unknownObjectRelease();
    v175 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture);
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture) = 0;
    swift_unknownObjectRelease();
    [v165 setUsage_];
    [v165 setPixelFormat_];
    v170 = [v158 newTextureWithDescriptor:v165 iosurface:destinationSurface plane:0];
    v171 = &OBJC_IVAR___SwiftVideoProcessor_processedTexture;
  }

  v176 = *(v5 + *v171);
  *(v5 + *v171) = v170;
  swift_unknownObjectRelease();
  strcpy(&v349, "displayMaxNits");
  HIBYTE(v349) = -18;
  v177 = [(objc_class *)isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v177)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v349 = 0u;
    v350 = 0u;
  }

  aBlock = v349;
  v357 = v350;
  v334 = v149;
  if (*(&v350 + 1))
  {
    if (swift_dynamicCast())
    {
      v178 = v354;
      goto LABEL_122;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v178 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_122:
  [v178 floatValue];
  v180 = v179;

  *(v136 + 20) = v180;
  *&v349 = 0xD000000000000010;
  *(&v349 + 1) = 0x800000025E79E480;
  v181 = [(objc_class *)isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v181)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v349 = 0u;
    v350 = 0u;
  }

  aBlock = v349;
  v357 = v350;
  if (*(&v350 + 1))
  {
    if (swift_dynamicCast())
    {
      v182 = v354;
      goto LABEL_130;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v182 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_130:
  [v182 floatValue];
  v184 = v183;

  *(v136 + 24) = v184;
  *&v349 = 0xD000000000000010;
  *(&v349 + 1) = 0x800000025E79E4A0;
  v185 = [(objc_class *)isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v185)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v349 = 0u;
    v350 = 0u;
  }

  aBlock = v349;
  v357 = v350;
  if (*(&v350 + 1))
  {
    if (swift_dynamicCast())
    {
      v186 = v354;
      goto LABEL_138;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v186 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_138:
  [v186 floatValue];
  v188 = v187;

  *(v136 + 28) = v188;
  if (!PSELog)
  {
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v189 = PSELog;
  sub_25E79A7C8();
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_25E79DDE0;
  v191 = *(v136 + 20);
  v192 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v193) = v191;
  v194 = [v192 initWithFloat_];
  *(v190 + 56) = v347;
  *(v190 + 64) = v346;
  *(v190 + 32) = v194;
  v195 = *(v136 + 24);
  v196 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v197) = v195;
  v198 = [v196 initWithFloat_];
  *(v190 + 96) = v347;
  *(v190 + 104) = v346;
  *(v190 + 72) = v198;
  v199 = *(v136 + 28);
  v200 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v201) = v199;
  v202 = [v200 initWithFloat_];
  *(v190 + 136) = v347;
  *(v190 + 144) = v346;
  *(v190 + 112) = v202;
  sub_25E79A758();

  *&v349 = 0x46746E6572727563;
  *(&v349 + 1) = 0xEA00000000005350;
  v203 = [(objc_class *)options.super.isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v203)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v349 = 0u;
    v350 = 0u;
  }

  aBlock = v349;
  v357 = v350;
  if (*(&v350 + 1))
  {
    if (swift_dynamicCast())
    {
      v204 = v354;
      goto LABEL_147;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v204 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef_commandBuffer];
LABEL_147:
  [v204 floatValue];
  v206 = v205;

  if (v206 <= 0.0)
  {
    v206 = *(v5 + v338);
  }

  *(v136 + 32) = v206;
  v207 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
  if (!v207)
  {
    goto LABEL_259;
  }

  v208 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
  swift_unknownObjectRetain();
  v209 = dispatch_semaphore_create(0);
  if ([v207 commandBuffer])
  {
    v210 = swift_dynamicCastObjCProtocolConditional();
    if (v210)
    {
      v211 = v210;
      if ([v210 respondsToSelector_])
      {
        [v211 setProtectionOptions_];
      }

      v212 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v213 = swift_allocObject();
      *(v213 + 16) = v212;
      *(v213 + 24) = v209;
      *&v358 = sub_25E798A78;
      *(&v358 + 1) = v213;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v357 = sub_25E7982D8;
      *(&v357 + 1) = &block_descriptor;
      v214 = _Block_copy(&aBlock);
      v345 = v209;

      [v211 addCompletedHandler_];
      _Block_release(v214);
      swift_unknownObjectRetain();
      v360 = &unk_28708A558;
      v215 = swift_dynamicCastObjCProtocolUnconditional();
      if (([v215 respondsToSelector_] & 1) != 0 && !objc_msgSend(v215, sel_protectionOptions))
      {
        v216 = 0;
        v217 = 0;
      }

      else
      {
        v216 = 1;
        v217 = 1;
      }

      v218 = v5 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
      swift_beginAccess();
      *(v218 + 9) = v216;
      v219 = IOSurfaceGetWidth(sourceSurface);
      v220 = IOSurfaceGetHeight(sourceSurface);
      if ((v219 * v220) >> 64 == (v219 * v220) >> 63)
      {
        v221 = v220;
        v222 = v219;
        v348 = v218;
        *v218 = (v219 * v220);
        v223 = [v211 blitCommandEncoder];
        if (!v223)
        {
          goto LABEL_164;
        }

        v224 = v223;
        v225 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
        swift_beginAccess();
        v226 = *(v5 + v225);
        if (v217 < *(v226 + 16))
        {
          v227 = *(v226 + 8 * v217 + 32);
          if (!v227)
          {
LABEL_163:
            swift_unknownObjectRelease();
LABEL_164:
            v230 = [v211 computeCommandEncoder];
            if (!v230)
            {
LABEL_258:
              swift_unknownObjectRelease();
              [v211 commit];
              sub_25E79A818();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_259;
            }

            v231 = v230;
            v232 = sub_25E79A768();
            [v231 setLabel_];

            v233 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0);
            if (!v233)
            {
              goto LABEL_182;
            }

            v234 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0);
            swift_unknownObjectRetain();
            [v231 setComputePipelineState_];
            [v231 setTexture:*(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture) atIndex:0];
            [v231 setTexture:*(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture) atIndex:1];
            [v231 setTexture:*(v5 + OBJC_IVAR___SwiftVideoProcessor_processedTexture) atIndex:2];
            swift_beginAccess();
            [v231 setBytes:v218 length:56 atIndex:0];
            swift_endAccess();
            v235 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
            swift_beginAccess();
            v236 = *(v5 + v235);
            if (v217 < *(v236 + 16))
            {
              v237 = *(v236 + 8 * v217 + 32);
              if (v237)
              {
                [v231 setBuffer:v237 offset:0 atIndex:1];
              }

              v238 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
              swift_beginAccess();
              v239 = *(v5 + v238);
              if (v217 < *(v239 + 16))
              {
                v240 = *(v239 + 8 * v217 + 32);
                if (v240)
                {
                  [v231 setBuffer:v240 offset:0 atIndex:2];
                }

                v241 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                swift_beginAccess();
                v242 = *(v5 + v241);
                if (v217 < *(v242 + 16))
                {
                  v243 = *(v242 + 8 * v217 + 32);
                  if (v243)
                  {
                    [v231 setBuffer:v243 offset:0 atIndex:3];
                  }

                  v244 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                  swift_beginAccess();
                  v245 = *(v5 + v244);
                  if (v217 < *(v245 + 16))
                  {
                    v246 = *(v245 + 8 * v217 + 32);
                    if (v246)
                    {
                      [v231 setBuffer:v246 offset:0 atIndex:4];
                    }

                    v247 = [v233 threadExecutionWidth];
                    v248 = [v233 maxTotalThreadsPerThreadgroup];
                    if (v247)
                    {
                      if (v248 == 0x8000000000000000 && v247 == -1)
                      {
                        goto LABEL_279;
                      }

                      MTLSizeMake(v247, v248 / v247, &aBlock);
                      *v341 = aBlock;
                      v249 = v357;
                      MTLSizeMake(v222, v221, &aBlock);
                      v354 = *v341;
                      v355 = v249;
                      [v231 dispatchThreads:&aBlock threadsPerThreadgroup:&v354];
                      swift_unknownObjectRelease();
LABEL_182:
                      if (*(v218 + 7))
                      {
                        goto LABEL_246;
                      }

                      v250 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1);
                      if (!v250)
                      {
LABEL_209:
                        v279 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2);
                        if (!v279)
                        {
                          goto LABEL_235;
                        }

                        v280 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2);
                        swift_unknownObjectRetain();
                        [v231 setComputePipelineState_];
                        swift_beginAccess();
                        [v231 setBytes:v348 length:56 atIndex:0];
                        swift_endAccess();
                        v281 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                        swift_beginAccess();
                        v282 = *(v5 + v281);
                        if (v217 < *(v282 + 16))
                        {
                          v283 = *(v282 + 8 * v217 + 32);
                          if (v283)
                          {
                            [v231 setBuffer:v283 offset:0 atIndex:2];
                          }

                          v284 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                          swift_beginAccess();
                          v285 = *(v5 + v284);
                          if (v217 < *(v285 + 16))
                          {
                            v286 = *(v285 + 8 * v217 + 32);
                            if (v286)
                            {
                              [v231 setBuffer:v286 offset:0 atIndex:3];
                            }

                            v287 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                            swift_beginAccess();
                            v288 = *(v5 + v287);
                            if (v217 < *(v288 + 16))
                            {
                              v289 = *(v288 + 8 * v217 + 32);
                              if (v289)
                              {
                                [v231 setBuffer:v289 offset:0 atIndex:4];
                              }

                              v290 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
                              swift_beginAccess();
                              v291 = *(v5 + v290);
                              if (v217 < *(v291 + 16))
                              {
                                v292 = *(v291 + 8 * v217 + 32);
                                if (v292)
                                {
                                  [v231 setBuffer:v292 offset:0 atIndex:7];
                                }

                                v293 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
                                swift_beginAccess();
                                v294 = *(v5 + v293);
                                if (v217 < *(v294 + 16))
                                {
                                  v295 = *(v294 + 8 * v217 + 32);
                                  if (v295)
                                  {
                                    [v231 setBuffer:v295 offset:0 atIndex:8];
                                  }

                                  v296 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                                  swift_beginAccess();
                                  v297 = *(v5 + v296);
                                  if (v217 >= *(v297 + 16))
                                  {
                                    goto LABEL_292;
                                  }

                                  v298 = *(v297 + 8 * v217 + 32);
                                  if (v298)
                                  {
                                    [v231 setBuffer:v298 offset:0 atIndex:9];
                                  }

                                  v299 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                                  swift_beginAccess();
                                  v300 = *(v5 + v299);
                                  if (v217 >= *(v300 + 16))
                                  {
                                    goto LABEL_294;
                                  }

                                  v301 = *(v300 + 8 * v217 + 32);
                                  if (v301)
                                  {
                                    [v231 setBuffer:v301 offset:0 atIndex:10];
                                  }

                                  v302 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
                                  swift_beginAccess();
                                  v303 = *(v5 + v302);
                                  if (v217 >= *(v303 + 16))
                                  {
                                    goto LABEL_296;
                                  }

                                  v304 = *(v303 + 8 * v217 + 32);
                                  if (v304)
                                  {
                                    [v231 setBuffer:v304 offset:0 atIndex:11];
                                  }

                                  MTLSizeMake(1280, 1, &aBlock);
                                  *v343 = aBlock;
                                  v305 = v357;
                                  MTLSizeMake(256, 1, &aBlock);
                                  v306 = v357;
                                  v307 = aBlock;
                                  aBlock = *v343;
                                  *&v357 = v305;
                                  v354 = v307;
                                  v355 = v306;
                                  [v231 dispatchThreads:&aBlock threadsPerThreadgroup:&v354];
                                  swift_unknownObjectRelease();
LABEL_235:
                                  v308 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3);
                                  if (v308)
                                  {
                                    v309 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3);
                                    swift_unknownObjectRetain();
                                    [v231 setComputePipelineState_];
                                    swift_beginAccess();
                                    [v231 setBytes:v348 length:56 atIndex:0];
                                    swift_endAccess();
                                    v310 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                                    swift_beginAccess();
                                    v311 = *(v5 + v310);
                                    if (v217 < *(v311 + 16))
                                    {
                                      v312 = *(v311 + 8 * v217 + 32);
                                      if (v312)
                                      {
                                        [v231 setBuffer:v312 offset:0 atIndex:4];
                                      }

                                      v313 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                                      swift_beginAccess();
                                      v314 = *(v5 + v313);
                                      if (v217 < *(v314 + 16))
                                      {
                                        v315 = *(v314 + 8 * v217 + 32);
                                        if (v315)
                                        {
                                          [v231 setBuffer:v315 offset:0 atIndex:2];
                                        }

                                        v316 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
                                        swift_beginAccess();
                                        v317 = *(v5 + v316);
                                        if (v217 < *(v317 + 16))
                                        {
                                          v318 = *(v317 + 8 * v217 + 32);
                                          if (v318)
                                          {
                                            [v231 setBuffer:v318 offset:0 atIndex:11];
                                          }

                                          MTLSizeMake(1, 1, &aBlock);
                                          *v344 = aBlock;
                                          v319 = v357;
                                          MTLSizeMake(1, 1, &aBlock);
                                          v320 = v357;
                                          v321 = aBlock;
                                          aBlock = *v344;
                                          *&v357 = v319;
                                          v352 = v321;
                                          v353 = v320;
                                          [v231 dispatchThreads:&aBlock threadsPerThreadgroup:&v352];
                                          swift_unknownObjectRelease();
                                          goto LABEL_246;
                                        }

                                        goto LABEL_295;
                                      }

                                      goto LABEL_293;
                                    }

                                    goto LABEL_291;
                                  }

LABEL_246:
                                  [v231 endEncoding];
                                  v322 = v348[1];
                                  aBlock = *v348;
                                  v357 = v322;
                                  v358 = v348[2];
                                  v359 = *(v348 + 6);
                                  if (!IncludesDebugInfo(&aBlock) || (*(v348 + 9) & 1) != 0 || (v323 = [v211 blitCommandEncoder]) == 0)
                                  {
LABEL_257:
                                    swift_unknownObjectRelease();
                                    goto LABEL_258;
                                  }

                                  v324 = v323;
                                  v325 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                                  swift_beginAccess();
                                  v326 = *(v5 + v325);
                                  if (*(v326 + 16))
                                  {
                                    if (*(v326 + 32))
                                    {
                                      if (*(v5 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug))
                                      {
                                        [v324 copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_];
                                      }
                                    }

                                    [v324 endEncoding];
                                    swift_unknownObjectRelease();
                                    goto LABEL_257;
                                  }

                                  goto LABEL_297;
                                }

LABEL_290:
                                __break(1u);
LABEL_291:
                                __break(1u);
LABEL_292:
                                __break(1u);
LABEL_293:
                                __break(1u);
LABEL_294:
                                __break(1u);
LABEL_295:
                                __break(1u);
LABEL_296:
                                __break(1u);
LABEL_297:
                                __break(1u);
LABEL_298:
                                __break(1u);
                                goto LABEL_299;
                              }

LABEL_289:
                              __break(1u);
                              goto LABEL_290;
                            }

                            goto LABEL_287;
                          }

                          goto LABEL_285;
                        }

                        goto LABEL_283;
                      }

                      v251 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1);
                      swift_unknownObjectRetain();
                      [v231 setComputePipelineState_];
                      swift_beginAccess();
                      [v231 setBytes:v348 length:56 atIndex:0];
                      swift_endAccess();
                      v252 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
                      swift_beginAccess();
                      v253 = *(v5 + v252);
                      if (v217 < *(v253 + 16))
                      {
                        v254 = *(v253 + 8 * v217 + 32);
                        if (v254)
                        {
                          [v231 setBuffer:v254 offset:0 atIndex:1];
                        }

                        v255 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                        swift_beginAccess();
                        v256 = *(v5 + v255);
                        if (v217 < *(v256 + 16))
                        {
                          v257 = *(v256 + 8 * v217 + 32);
                          if (v257)
                          {
                            [v231 setBuffer:v257 offset:0 atIndex:2];
                          }

                          v258 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                          swift_beginAccess();
                          v259 = *(v5 + v258);
                          if (v217 < *(v259 + 16))
                          {
                            v260 = *(v259 + 8 * v217 + 32);
                            if (v260)
                            {
                              [v231 setBuffer:v260 offset:0 atIndex:3];
                            }

                            v261 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                            swift_beginAccess();
                            v262 = *(v5 + v261);
                            if (v217 < *(v262 + 16))
                            {
                              v263 = *(v262 + 8 * v217 + 32);
                              if (v263)
                              {
                                [v231 setBuffer:v263 offset:0 atIndex:4];
                              }

                              v264 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                              swift_beginAccess();
                              v265 = *(v5 + v264);
                              if (v217 < *(v265 + 16))
                              {
                                v266 = *(v265 + 8 * v217 + 32);
                                if (v266)
                                {
                                  [v231 setBuffer:v266 offset:0 atIndex:5];
                                }

                                v267 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                                swift_beginAccess();
                                v268 = *(v5 + v267);
                                if (v217 >= *(v268 + 16))
                                {
                                  goto LABEL_284;
                                }

                                v269 = *(v268 + 8 * v217 + 32);
                                if (v269)
                                {
                                  [v231 setBuffer:v269 offset:0 atIndex:6];
                                }

                                v270 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
                                swift_beginAccess();
                                v271 = *(v5 + v270);
                                if (v217 >= *(v271 + 16))
                                {
                                  goto LABEL_286;
                                }

                                v272 = *(v271 + 8 * v217 + 32);
                                if (v272)
                                {
                                  [v231 setBuffer:v272 offset:0 atIndex:7];
                                }

                                v273 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
                                swift_beginAccess();
                                v274 = *(v5 + v273);
                                if (v217 >= *(v274 + 16))
                                {
                                  goto LABEL_288;
                                }

                                v275 = *(v274 + 8 * v217 + 32);
                                if (v275)
                                {
                                  [v231 setBuffer:v275 offset:0 atIndex:8];
                                }

                                MTLSizeMake(160, 1, &aBlock);
                                *v342 = aBlock;
                                v276 = v357;
                                MTLSizeMake(32, 1, &aBlock);
                                v277 = v357;
                                v278 = aBlock;
                                aBlock = *v342;
                                *&v357 = v276;
                                v354 = v278;
                                v355 = v277;
                                [v231 dispatchThreads:&aBlock threadsPerThreadgroup:&v354];
                                swift_unknownObjectRelease();
                                goto LABEL_209;
                              }

LABEL_282:
                              __break(1u);
LABEL_283:
                              __break(1u);
LABEL_284:
                              __break(1u);
LABEL_285:
                              __break(1u);
LABEL_286:
                              __break(1u);
LABEL_287:
                              __break(1u);
LABEL_288:
                              __break(1u);
                              goto LABEL_289;
                            }

LABEL_281:
                            __break(1u);
                            goto LABEL_282;
                          }

LABEL_280:
                          __break(1u);
                          goto LABEL_281;
                        }

                        goto LABEL_278;
                      }

LABEL_277:
                      __break(1u);
LABEL_278:
                      __break(1u);
LABEL_279:
                      __break(1u);
                      goto LABEL_280;
                    }

LABEL_276:
                    __break(1u);
                    goto LABEL_277;
                  }

LABEL_275:
                  __break(1u);
                  goto LABEL_276;
                }

LABEL_274:
                __break(1u);
                goto LABEL_275;
              }

LABEL_273:
              __break(1u);
              goto LABEL_274;
            }

LABEL_272:
            __break(1u);
            goto LABEL_273;
          }

          ObjectType = swift_getObjectType();
          v229 = [swift_unknownObjectRetain() length];
          if ((v229 & 0x8000000000000000) == 0)
          {
            MEMORY[0x25F8BF750](v227, 0, v229, 0, ObjectType);
            [v224 endEncoding];
            swift_unknownObjectRelease();
            goto LABEL_163;
          }

LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_259:
  swift_unknownObjectRelease();
}

uint64_t sub_25E7982D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id VideoProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_25E7985DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_25E798620()
{
  result = qword_27FD063D0;
  if (!qword_27FD063D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD063D0);
  }

  return result;
}

unint64_t sub_25E79866C()
{
  result = qword_27FD063D8;
  if (!qword_27FD063D8)
  {
    sub_25E798620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD063D8);
  }

  return result;
}

char *sub_25E7986C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066B8, &unk_25E79DFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_25E7987C8(__IOSurface *a1)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  result = 508;
  if (PixelFormat <= 1380401728)
  {
    if (PixelFormat <= 645166643)
    {
      if (PixelFormat > 645166639)
      {
        if (PixelFormat == 645166640)
        {
          return 580;
        }

        if (PixelFormat == 645166642)
        {
          return 581;
        }

        return 70;
      }

      if (PixelFormat != 641230384 && PixelFormat != 641234480)
      {
        return 70;
      }
    }

    else
    {
      if (PixelFormat <= 875704421)
      {
        if (PixelFormat == 645166644)
        {
          return 582;
        }

        v3 = 645428784;
        goto LABEL_26;
      }

      if (PixelFormat != 875704422 && PixelFormat != 875704438)
      {
        if (PixelFormat == 1111970369)
        {
          return 80;
        }

        return 70;
      }
    }

    return 500;
  }

  if (PixelFormat > 1953903151)
  {
    if (PixelFormat <= 1999843441)
    {
      if (PixelFormat == 1953903152)
      {
        return 570;
      }

      if (PixelFormat == 1953903154)
      {
        return 571;
      }

      return 70;
    }

    if (PixelFormat == 1999843442)
    {
      return 554;
    }

    if (PixelFormat == 2016686640)
    {
      return 505;
    }

    v3 = 2019963440;
LABEL_26:
    if (PixelFormat == v3)
    {
      return result;
    }

    return 70;
  }

  if (PixelFormat <= 1815162993)
  {
    if (PixelFormat == 1380411457)
    {
      return 115;
    }

    return 70;
  }

  if (PixelFormat == 1815162994)
  {
    return 94;
  }

  if (PixelFormat != 1882468912)
  {
    v3 = 1885745712;
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_25E798A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06440, &qword_25E79DE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E798A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    v21[0] = *v5;
    v21[1] = *(v5 + 16);
    v21[2] = *(v5 + 32);
    v22 = *(v5 + 48);
    if ((IncludesDebugInfo(v21) & 1) == 0)
    {
      goto LABEL_10;
    }

    if (*(v5 + 9))
    {
      goto LABEL_10;
    }

    v6 = *&v4[OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug];
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *&v4[OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug];
    v8 = [swift_unknownObjectRetain() contents];
    v9 = v6;
    if (*(v5 + 5) != 1)
    {
LABEL_8:
      v14 = &v4[OBJC_IVAR___SwiftVideoProcessor_validationCallback];
      swift_beginAccess();
      v15 = *v14;
      if (*v14)
      {
        v16 = *(v14 + 1);
        v17 = *v8;
        v18 = v8[7];
        v19 = v8[8] * 100.0;

        v15(v20, v17, v18, v19);
        sub_25E79268C(v15);
      }

LABEL_10:
      sub_25E79A828();

      return;
    }

    if (PSELog)
    {
      v10 = PSELog;
      sub_25E79A7F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25E79DDF0;
      v12 = MEMORY[0x277D83A90];
      v13 = MEMORY[0x277D83B08];
      *(v11 + 56) = MEMORY[0x277D83A90];
      *(v11 + 64) = v13;
      *(v11 + 32) = *v8;
      *(v11 + 96) = v12;
      *(v11 + 104) = v13;
      *(v11 + 72) = v8[1];
      *(v11 + 136) = v12;
      *(v11 + 144) = v13;
      *(v11 + 112) = v8[2];
      *(v11 + 176) = v12;
      *(v11 + 184) = v13;
      *(v11 + 152) = v8[3];
      *(v11 + 216) = v12;
      *(v11 + 224) = v13;
      *(v11 + 192) = v8[4];
      *(v11 + 256) = v12;
      *(v11 + 264) = v13;
      *(v11 + 232) = v8[5];
      *(v11 + 296) = v12;
      *(v11 + 304) = v13;
      *(v11 + 272) = v8[6];
      *(v11 + 336) = v12;
      *(v11 + 344) = v13;
      *(v11 + 312) = v8[7];
      *(v11 + 376) = v12;
      *(v11 + 384) = v13;
      *(v11 + 352) = v8[13];
      *(v11 + 416) = v12;
      *(v11 + 424) = v13;
      *(v11 + 392) = v8[8];
      *(v11 + 456) = v12;
      *(v11 + 464) = v13;
      *(v11 + 432) = v8[11];
      *(v11 + 496) = v12;
      *(v11 + 504) = v13;
      *(v11 + 472) = v8[12];
      *(v11 + 536) = v12;
      *(v11 + 544) = v13;
      *(v11 + 512) = v8[9];
      *(v11 + 576) = v12;
      *(v11 + 584) = v13;
      *(v11 + 552) = v8[10];
      sub_25E79A758();

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    sub_25E79A828();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25E798D94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E798DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E798E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25E798E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25E798EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25E798F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

void sub_25E798FA8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_25E799004(double a1, double a2, double a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  return v4(&v9, &v8, &v7);
}

uint64_t sub_25E799048(double *a1, double *a2, double *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

unint64_t sub_25E79907C()
{
  result = qword_27FD066A0;
  if (!qword_27FD066A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD066A0);
  }

  return result;
}

uint64_t IncludesDebugInfo(uint64_t a1)
{
  if (*(a1 + 6))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 5);
  }

  return v1 & 1;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_25E799108()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_25E799140(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_25E7991D8()
{
  v0 = swift_allocObject();
  sub_25E799210();
  return v0;
}

uint64_t sub_25E799210()
{
  *(v0 + 16) = xmmword_25E79E150;
  *(v0 + 32) = xmmword_25E79E160;
  v1 = sub_25E79A7B8();
  *(v1 + 16) = 10;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06840, &qword_25E79E170);
  v2 = sub_25E79A7B8();
  v2[2] = 7;
  v2[4] = v1;
  v2[5] = v1;
  v2[6] = v1;
  v2[7] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[10] = v1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06848, &qword_25E79E178);
  v3 = sub_25E79A7B8();
  v3[2] = 5;
  v3[4] = v2;
  v3[5] = v2;
  v3[6] = v2;
  v3[7] = v2;
  v3[8] = v2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06850, &unk_25E79E180);
  v4 = sub_25E79A7B8();
  v4[2] = 3;
  v4[4] = v3;
  v4[5] = v3;
  v4[6] = v3;
  *(v0 + 48) = v4;
  v5 = *(*v0 + 152);
  v6 = swift_bridgeObjectRetain_n();
  v5(v6);
  return v0;
}

void sub_25E799368()
{
  v1 = v0;
  v71 = sub_25E79A738();
  v2 = *(v71 - 8);
  v3 = *(v2 + 64);
  (MEMORY[0x28223BE20])();
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VideoProcessor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_25E79A768();
  v9 = sub_25E79A768();
  v10 = [v7 pathForResource:v8 ofType:v9];

  if (!v10)
  {
    return;
  }

  v11 = sub_25E79A788();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277CCACA8]);

  v15 = sub_25E799BDC(v11, v13, 1);

  if (!v15)
  {
    return;
  }

  v16 = sub_25E79A768();
  v17 = [v15 componentsSeparatedByString_];

  v18 = sub_25E79A7A8();
  v65 = *(v18 + 16);
  if (!v65)
  {

    return;
  }

  v59 = v15;
  v58 = 0;
  v19 = (*v1 + 136);
  v64 = *v19;
  v63 = v19;
  v62 = v18 + 32;
  sub_25E799EC4();
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = (v2 + 8);
  v24 = 0;
  v60 = v1;
  v61 = v18;
  while (1)
  {
    v69 = v21;
    v70 = v20;
    v68 = v24;
    v25 = *(v62 + 16 * v24 + 8);
    v72 = *(v62 + 16 * v24);
    v73 = v25;
    v76 = 44;
    v77 = 0xE100000000000000;
    v26 = sub_25E79A838();
    v27 = *(v26 + 16);
    if (v27)
    {
      v67 = v22;
      v76 = MEMORY[0x277D84F90];
      sub_25E799F18(0, v27, 0);
      v28 = v76;
      v66 = v26;
      v29 = (v26 + 40);
      while (1)
      {
        v30 = *v29;
        v72 = *(v29 - 1);
        v73 = v30;

        sub_25E79A728();
        v31 = sub_25E79A848();
        v33 = v32;
        v34 = (*v23)(v5, v71);
        v75 = 0.0;
        MEMORY[0x28223BE20](v34);
        *(&v58 - 2) = &v75;
        if ((v33 & 0x1000000000000000) != 0)
        {
LABEL_29:
          v40 = v58;
          sub_25E79A868();
          v58 = v40;
          goto LABEL_22;
        }

        if ((v33 & 0x2000000000000000) != 0)
        {
          v72 = v31;
          v73 = v33 & 0xFFFFFFFFFFFFFFLL;
          if (v31 < 0x21u && ((0x100003E01uLL >> v31) & 1) != 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v31 & 0x1000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v35 = *((v33 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v35 < 0x21 && ((0x100003E01uLL >> v35) & 1) != 0)
          {
LABEL_21:
            v74 = 0;
            goto LABEL_22;
          }
        }

        v36 = _swift_stdlib_strtod_clocale();
        if (!v36)
        {
          goto LABEL_21;
        }

        v74 = *v36 == 0;
LABEL_22:

        if (v74)
        {
          v37 = v75;
        }

        else
        {
          v37 = 0.0;
        }

        v76 = v28;
        v39 = *(v28 + 16);
        v38 = *(v28 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_25E799F18((v38 > 1), v39 + 1, 1);
          v28 = v76;
        }

        *(v28 + 16) = v39 + 1;
        *(v28 + 8 * v39 + 32) = v37;
        v29 += 2;
        if (!--v27)
        {

          v22 = v67;
          goto LABEL_31;
        }
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_31:
    v41 = v64(&v72);
    v43 = v42;
    v44 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_25E799D48(v44);
      *v43 = v44;
    }

    v46 = v68;
    if ((v70 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v70 >= v44[2])
    {
      goto LABEL_66;
    }

    v47 = v22;
    v48 = v44 + 4;
    v49 = v44[v70 + 4];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v48[v70] = v49;
    if (v50)
    {
      v51 = v69;
      if ((v69 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v49 = sub_25E799D00(v49);
      v48[v70] = v49;
      v51 = v69;
      if ((v69 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }
    }

    if (v51 >= v49[2])
    {
      goto LABEL_68;
    }

    v52 = v49 + 4;
    v53 = v49[v51 + 4];
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v52[v69] = v53;
    if (v54)
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v53 = sub_25E799CB8(v53);
      v52[v69] = v53;
      if ((v47 & 0x8000000000000000) != 0)
      {
LABEL_60:
        __break(1u);
LABEL_61:

        return;
      }
    }

    if (v47 >= v53[2])
    {
      goto LABEL_69;
    }

    v24 = v46 + 1;
    v55 = &v53[v47];
    v56 = v55[4];
    v55[4] = v28;

    v41(&v72, 0);
    if (v47 < 6)
    {
      v22 = v47 + 1;
      v21 = v69;
      v20 = v70;
      v57 = v61;
      if (v69 < 5)
      {
        if (v24 == v65)
        {
          goto LABEL_61;
        }

        goto LABEL_8;
      }

      goto LABEL_49;
    }

    v20 = v70;
    v57 = v61;
    if (v69 > 3)
    {
      v22 = 0;
LABEL_49:
      if (v20 > 1)
      {
        if (v24 == v65)
        {
          goto LABEL_61;
        }

        v20 = 0;
        v21 = 0;
      }

      else
      {
        if (v24 == v65)
        {
          goto LABEL_61;
        }

        v21 = 0;
        ++v20;
      }

      goto LABEL_8;
    }

    v21 = v69 + 1;
    if (v70 > 2)
    {
      if (v24 == v65)
      {
        goto LABEL_61;
      }

      v20 = 0;
    }

    else if (v24 == v65)
    {
      goto LABEL_61;
    }

    v22 = 0;
LABEL_8:
    if (v24 >= *(v57 + 16))
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  __break(1u);
}

uint64_t sub_25E799BA4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_25E799BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25E79A768();

  v11[0] = 0;
  v6 = [v3 initWithContentsOfFile:v5 encoding:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25E79A748();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void *sub_25E799D90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_25E799EC4()
{
  result = qword_27FD06858;
  if (!qword_27FD06858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD06858);
  }

  return result;
}

char *sub_25E799F18(char *a1, int64_t a2, char a3)
{
  result = sub_25E799FDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_BYTE *sub_25E799F38@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_25E799FDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066B8, &unk_25E79DFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}