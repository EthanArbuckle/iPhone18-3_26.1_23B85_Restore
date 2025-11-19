uint64_t VCH263VideoEncoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoEncoderGetClassID();
  v4 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  *a3 = 0;
  return v4;
}

uint64_t VCH263VideoEncoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = (DerivedStorage + 24);
  if (*(DerivedStorage + 24))
  {
    result = H263QT_KillSharedGlobals((DerivedStorage + 24));
    if (result)
    {
      return result;
    }

    *v2 = 0;
  }

  if (*(v1 + 16))
  {
    result = KillInstanceGlobals((v1 + 16));
    if (result)
    {
      return result;
    }

    *(v1 + 16) = 0;
  }

  MEM_Dispose(*(v1 + 144));
  *(v1 + 144) = 0;
  v4 = *(v1 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 152) = 0;
  }

  *v1 = 0;
  v5 = *(v1 + 8);
  result = FigFormatDescriptionRelease();
  *(v1 + 8) = 0;
  return result;
}

__CFString *VCH263VideoEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  CFStringAppendFormat(Mutable, 0, @"<VCH263VideoEncoder %p>", a1);
  return Mutable;
}

uint64_t VCH263VideoEncoder_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x29EDBCD50]))
  {
    v8 = *(DerivedStorage + 204) / 8;
LABEL_5:
    LODWORD(valuePtr) = v8;
    v9 = a3;
    v10 = kCFNumberSInt32Type;
LABEL_6:
    v11 = CFNumberCreate(v9, v10, &valuePtr);
LABEL_7:
    v12 = v11;
LABEL_8:
    result = 0;
    *a4 = v12;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD48]))
  {
    v8 = *(DerivedStorage + 204);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD70]))
  {
    v14 = 1000.0 / *(DerivedStorage + 208);
LABEL_11:
    valuePtr = v14;
    v9 = a3;
    v10 = kCFNumberDoubleType;
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD88]))
  {
    v8 = *(DerivedStorage + 212);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDD0]))
  {
    v8 = *(DerivedStorage + 216);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD68]))
  {
    v14 = *(DerivedStorage + 224);
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD30]))
  {
    v15 = MEMORY[0x29EDB8F00];
    if (!*(DerivedStorage + 232))
    {
      v15 = MEMORY[0x29EDB8EF8];
    }

LABEL_21:
    v11 = CFRetain(*v15);
    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDB8]))
  {
    v16 = *(DerivedStorage + 236);
    if (v16 == 45)
    {
      v15 = MEMORY[0x29EDBCFA0];
    }

    else
    {
      if (v16 != 10)
      {
        v12 = 0;
        goto LABEL_8;
      }

      v15 = MEMORY[0x29EDBCF98];
    }

    goto LABEL_21;
  }

  return 4294954396;
}

uint64_t VCH263VideoEncoder_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x29EDBCD50]))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        result = 0;
        v8 = 8 * LODWORD(valuePtr);
LABEL_10:
        *(DerivedStorage + 204) = v8;
        return result;
      }
    }
  }

  else
  {
    if (!CFEqual(a2, *MEMORY[0x29EDBCD48]))
    {
      if (CFEqual(a2, *MEMORY[0x29EDBCD70]))
      {
        if (a3)
        {
          v10 = CFNumberGetTypeID();
          if (v10 == CFGetTypeID(a3))
          {
            valuePtr = 0.0;
            CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
            result = 0;
            *(DerivedStorage + 208) = (1000.0 / valuePtr);
            return result;
          }
        }

        goto LABEL_37;
      }

      if (CFEqual(a2, *MEMORY[0x29EDBCD88]))
      {
        if (a3)
        {
          v11 = CFNumberGetTypeID();
          if (v11 == CFGetTypeID(a3))
          {
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
            result = 0;
            *(DerivedStorage + 212) = LODWORD(valuePtr);
            return result;
          }
        }

        goto LABEL_37;
      }

      if (CFEqual(a2, *MEMORY[0x29EDBCDD0]))
      {
        if (a3)
        {
          v12 = CFNumberGetTypeID();
          if (v12 == CFGetTypeID(a3))
          {
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
            result = 0;
            *(DerivedStorage + 216) = LODWORD(valuePtr);
            return result;
          }
        }

        goto LABEL_37;
      }

      if (CFEqual(a2, *MEMORY[0x29EDBCD68]))
      {
        if (a3)
        {
          v13 = CFNumberGetTypeID();
          if (v13 == CFGetTypeID(a3))
          {
            valuePtr = 0.0;
            CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
            result = 0;
            *(DerivedStorage + 224) = valuePtr;
            return result;
          }
        }

        goto LABEL_37;
      }

      if (CFEqual(a2, *MEMORY[0x29EDBCD30]))
      {
        if (a3)
        {
          v14 = CFBooleanGetTypeID();
          if (v14 == CFGetTypeID(a3))
          {
            v15 = CFEqual(a3, *MEMORY[0x29EDB8F00]);
            result = 0;
            *(DerivedStorage + 232) = v15;
            return result;
          }
        }

        goto LABEL_37;
      }

      if (!CFEqual(a2, *MEMORY[0x29EDBCDB8]))
      {
        return 4294954396;
      }

      if (!a3)
      {
        result = 0;
        *(DerivedStorage + 236) = 0;
        return result;
      }

      v16 = CFStringGetTypeID();
      if (v16 != CFGetTypeID(a3))
      {
        goto LABEL_37;
      }

      if (CFEqual(a3, *MEMORY[0x29EDBCFA0]))
      {
        result = 0;
        v17 = 45;
      }

      else
      {
        if (!CFEqual(a3, *MEMORY[0x29EDBCF98]))
        {
          goto LABEL_37;
        }

        result = 0;
        v17 = 10;
      }

      *(DerivedStorage + 236) = v17;
      return result;
    }

    if (a3)
    {
      v9 = CFNumberGetTypeID();
      if (v9 == CFGetTypeID(a3))
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        result = 0;
        v8 = LODWORD(valuePtr);
        goto LABEL_10;
      }
    }
  }

LABEL_37:

  return FigSignalErrorAtGM();
}

uint64_t VCH263VideoEncoder_StartSession(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  valuePtr = 2033463856;
  *DerivedStorage = a2;
  v9 = 288;
  v10 = 3;
  v11 = 352;
  if (a3 <= 352 && SHIDWORD(a3) <= 288 && a3 <= 176)
  {
    v13 = a3 > 128 || SHIDWORD(a3) > 96;
    v14 = !v13;
    if (v13)
    {
      v15 = 176;
    }

    else
    {
      v15 = 128;
    }

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v14)
    {
      v17 = 96;
    }

    else
    {
      v17 = 144;
    }

    if (SHIDWORD(a3) <= 144)
    {
      v11 = v15;
    }

    else
    {
      v11 = 352;
    }

    if (SHIDWORD(a3) <= 144)
    {
      v10 = v16;
    }

    else
    {
      v10 = 3;
    }

    if (SHIDWORD(a3) <= 144)
    {
      v9 = v17;
    }

    else
    {
      v9 = 288;
    }
  }

  *(DerivedStorage + 40) = v11;
  *(DerivedStorage + 44) = v9;
  v18 = *(DerivedStorage + 152);
  if (v18)
  {
    CFRelease(v18);
  }

  *(v8 + 152) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v19 = *(v8 + 8);
  FigFormatDescriptionRelease();
  *(v8 + 8) = 0;
  *(v8 + 232) = 1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v21 = Mutable;
  v22 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (!v22)
  {
    v28 = v21;
LABEL_40:
    CFRelease(v28);
    return 4294954392;
  }

  v23 = v22;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v24)
  {
    CFRelease(v21);
    v28 = v23;
    goto LABEL_40;
  }

  v25 = v24;
  CFArrayAppendValue(v23, v24);
  CFRelease(v25);
  CFDictionaryAddValue(v21, *MEMORY[0x29EDB96E0], v23);
  CFRelease(v23);
  addNumberToDictionary(v21, *MEMORY[0x29EDB9750], v11);
  addNumberToDictionary(v21, *MEMORY[0x29EDB96C8], v9);
  v27 = (v8 + 24);
  v26 = *v8;
  VTEncoderSessionSetPixelBufferAttributes();
  if (!H263QT_InitSharedGlobals((v8 + 24)))
  {
    if (InitSharedTables(*v27, 0))
    {
      KillSharedTables(*v27);
    }

    else if (InitInstanceGlobals((v8 + 16), v11, v9, v10, 0, 132, 0, *(v8 + 24)))
    {
      KillInstanceGlobals((v8 + 16));
    }

    else
    {
      *(v8 + 160) = 0;
      *(v8 + 144) = MEM_NewClear(0x100000);
    }
  }

  CFRelease(v21);
  return 0;
}

uint64_t VCH263VideoEncoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  if (sCreateSupportedPropertyDictionaryOnce == -1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    VCH263VideoEncoder_CopySupportedPropertyDictionary_cold_1();
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  if (sVCH263VideoEncoderSupportedPropertyDictionary)
  {
    *a2 = CFRetain(sVCH263VideoEncoderSupportedPropertyDictionary);
    return 0;
  }

LABEL_6:

  return FigSignalErrorAtGM();
}

void addNumberToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void sVCH263VideoEncoderCreateSupportDictionary()
{
  v35 = *MEMORY[0x29EDCA608];
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v0 = *MEMORY[0x29EDBD128];
  v1 = *MEMORY[0x29EDBD140];
  v2 = *MEMORY[0x29EDBD108];
  keys = *MEMORY[0x29EDBD128];
  v29 = v2;
  v3 = *MEMORY[0x29EDBD118];
  values = v1;
  v22 = v3;
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x29EDBD130];
    keys = v0;
    v29 = v2;
    values = v7;
    v22 = v3;
    v8 = CFDictionaryCreate(v4, &keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v8)
    {
      FigSignalErrorAtGM();
      v19 = v6;
LABEL_13:
      CFRelease(v19);
      goto LABEL_14;
    }

    v9 = v8;
    Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x29EDB9000]);
    CFArrayAppendValue(Mutable, *MEMORY[0x29EDBCFA0]);
    CFArrayAppendValue(Mutable, *MEMORY[0x29EDBCFA8]);
    v11 = *MEMORY[0x29EDBD138];
    keys = v0;
    v29 = v2;
    values = v11;
    v22 = v3;
    *&v30 = *MEMORY[0x29EDBD120];
    *&v23 = Mutable;
    v12 = CFDictionaryCreate(v4, &keys, &values, 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    v14 = *MEMORY[0x29EDBCD48];
    keys = *MEMORY[0x29EDBCD50];
    v29 = v14;
    values = v6;
    v22 = v6;
    v15 = *MEMORY[0x29EDBCD88];
    *&v30 = *MEMORY[0x29EDBCD70];
    *(&v30 + 1) = v15;
    *&v23 = v6;
    *(&v23 + 1) = v6;
    v16 = *MEMORY[0x29EDBCD68];
    *&v31 = *MEMORY[0x29EDBCDD0];
    *(&v31 + 1) = v16;
    *&v24 = v6;
    *(&v24 + 1) = v6;
    v17 = *MEMORY[0x29EDBCDB8];
    *&v32 = *MEMORY[0x29EDBCD30];
    *(&v32 + 1) = v17;
    *&v25 = v9;
    *(&v25 + 1) = v12;
    v18 = CFDictionaryCreate(v4, &keys, &values, 8, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v18)
    {
      sVCH263VideoEncoderSupportedPropertyDictionary = v18;
    }

    else
    {
LABEL_8:
      FigSignalErrorAtGM();
    }

    CFRelease(v6);
    CFRelease(v9);
    if (v13)
    {
      CFRelease(v13);
    }

    if (Mutable)
    {
      v19 = Mutable;
      goto LABEL_13;
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

LABEL_14:
  v20 = *MEMORY[0x29EDCA608];
}

__n128 OUTLINED_FUNCTION_1()
{
  result = *v0;
  v2 = v0[1].n128_u64[0];
  return result;
}

void VCH263EncoderRegister()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD1E0], *MEMORY[0x29EDB8EF8]);
  VTRegisterVideoEncoderWithInfo();

  CFRelease(Mutable);
}

uint64_t H263QT_InitSharedGlobals(void **a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(68);
  *a1 = v3;
  if (v3)
  {
    return 0;
  }

  H263QT_KillSharedGlobals(a1);
  return 1;
}

void *H263QT_KillSharedGlobals(void **a1)
{
  result = *a1;
  if (result)
  {
    result = KillSharedTables(result);
    if (!result)
    {
      MEM_Dispose(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

BOOL H263PICT_Init(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(176);
  *a1 = v3;
  return v3 == 0;
}

uint64_t H263PICT_Kill(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t H263PICT_Setup(uint64_t a1, int a2)
{
  if (a1)
  {
    *a1 = 1;
    *(a1 + 16) = a2;
    *(a1 + 44) = a2;
    *(a1 + 48) = 1;
    *(a1 + 60) = 0;
    *(a1 + 21) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 17) = 257;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 25) = 0;
    *(a1 + 132) = 0;
    *(a1 + 27) = 264;
    *(a1 + 32) = 0;
  }

  return 0;
}

uint64_t H263PICT_encPictureHeader(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 <= 0x15)
  {
    v13 = *(a2 + 120) & 0x20;
    v14 = (*a2 << 8) & 0xFF0000 | (((v13 >> (22 - v4)) | *a2) << 24) | (*a2 >> 8) & 0xFF00 | HIBYTE(*a2);
    v15 = *(a2 + 24);
    v16 = *(a2 + 8);
    *(a2 + 8) = v16 + 1;
    *(v15 + 4 * v16) = v14;
    v5 = v4 + 10;
    v6 = v13 << (v4 + 10);
  }

  else
  {
    v5 = v4 - 22;
    v6 = *a2 | ((*(a2 + 120) & 0x20) << (v4 - 22));
    if (v4 - 22 <= 7)
    {
      v7 = *(a2 + 64) & *result;
      v8 = (((v7 >> (30 - v4)) | v6) << 8) & 0xFF0000 | (((v7 >> (30 - v4)) | v6) << 24) | (((v7 >> (30 - v4)) | v6) >> 8) & 0xFF00 | (((v7 >> (30 - v4)) | v6) >> 24);
      v9 = *(a2 + 24);
      v10 = *(a2 + 8);
      *(a2 + 8) = v10 + 1;
      *(v9 + 4 * v10) = v8;
      v11 = v5 | 0x18;
      v12 = v7 << (v5 | 0x18);
      *a2 = v12;
      goto LABEL_6;
    }
  }

  v11 = v5 - 8;
  v12 = ((*(a2 + 64) & *result) << (v5 - 8)) | v6;
  if (v5 - 8 <= 1)
  {
    v23 = *(a2 + 40) & 2;
    v24 = (v23 >> (10 - v5)) | v12;
    *a2 = v24;
    v25 = (v12 << 8) & 0xFF0000 | (v24 << 24) | (v12 >> 8) & 0xFF00 | HIBYTE(v12);
    v26 = *(a2 + 24);
    v27 = *(a2 + 8);
    *(a2 + 8) = v27 + 1;
    *(v26 + 4 * v27) = v25;
    v17 = v11 | 0x1E;
    v18 = v23 << (v11 | 0x1E);
    goto LABEL_9;
  }

LABEL_6:
  v17 = v11 - 2;
  v18 = ((*(a2 + 40) & 2) << (v11 - 2)) | v12;
  if ((v11 - 2) <= 2)
  {
    v19 = bswap32(v18);
    v20 = *(a2 + 24);
    v21 = *(a2 + 8);
    *(a2 + 8) = v21 + 1;
    *(v20 + 4 * v21) = v19;
    v22 = v11 + 27;
    v18 = 0;
LABEL_10:
    v28 = v22 - 3;
    *(a2 + 4) = v22 - 3;
    v29 = *(result + 16);
    v30 = ((*(a2 + 44) & *(result + 16)) << (v22 - 3)) | v18;
    goto LABEL_12;
  }

LABEL_9:
  v22 = v17 - 3;
  if ((v17 - 3) >= 3)
  {
    goto LABEL_10;
  }

  v29 = *(result + 16);
  v31 = *(a2 + 44) & *(result + 16);
  v32 = (((v31 >> (6 - v17)) | v18) << 8) & 0xFF0000 | (((v31 >> (6 - v17)) | v18) << 24) | (((v31 >> (6 - v17)) | v18) >> 8) & 0xFF00 | (((v31 >> (6 - v17)) | v18) >> 24);
  v33 = *(a2 + 24);
  v34 = *(a2 + 8);
  *(a2 + 8) = v34 + 1;
  *(v33 + 4 * v34) = v32;
  v28 = v17 + 26;
  *(a2 + 4) = v28;
  v30 = v31 << v28;
LABEL_12:
  *a2 = v30;
  if (v29 == 7)
  {
    *(result + 40) = 1;
    result = H263PICT_encPlusHeader(result, a2);
    v36 = *a2;
    v35 = *(a2 + 4);
    v37 = v35 - 5;
    if (v35 < 5)
    {
      v40 = *(a2 + 52) & *(v3 + 27);
      v41 = *(a2 + 24);
      v42 = *(a2 + 8);
      *(a2 + 8) = v42 + 1;
      *(v41 + 4 * v42) = (((v40 >> (5 - v35)) | v36) << 8) & 0xFF0000 | (((v40 >> (5 - v35)) | v36) << 24) | (((v40 >> (5 - v35)) | v36) >> 8) & 0xFF00 | (((v40 >> (5 - v35)) | v36) >> 24);
      v37 = v35 + 27;
      v38 = v40 << (v35 + 27);
    }

    else
    {
      v38 = ((*(a2 + 52) & *(v3 + 27)) << v37) | v36;
    }

    *a2 = v38;
    v43 = *(v3 + 22);
    goto LABEL_69;
  }

  if (*(result + 17) == 1)
  {
    if (!v28)
    {
      v44 = *(a2 + 24);
      v45 = *(a2 + 8);
      *(a2 + 8) = v45 + 1;
      *(v44 + 4 * v45) = bswap32(v30);
      v39 = 31;
      v30 = 0x80000000;
      if (*(result + 18))
      {
LABEL_28:
        v48 = v39 - 1;
        v30 |= 1 << v48;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    v39 = v28 - 1;
    v30 |= 1 << v39;
  }

  else
  {
    if (v28)
    {
      v39 = v28 - 1;
    }

    else
    {
      v46 = *(a2 + 24);
      v47 = *(a2 + 8);
      *(a2 + 8) = v47 + 1;
      *(v46 + 4 * v47) = bswap32(v30);
      *a2 = 0;
      v39 = 31;
      v30 = 0;
    }

    *(a2 + 4) = v39;
  }

  if (*(result + 18))
  {
    if (!v39)
    {
      v49 = *(a2 + 24);
      v50 = *(a2 + 8);
      *(a2 + 8) = v50 + 1;
      *(v49 + 4 * v50) = bswap32(v30);
      v48 = 31;
      v30 = 0x80000000;
      if (*(result + 19))
      {
LABEL_36:
        v53 = v48 - 1;
        v30 |= 1 << v53;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  if (v39)
  {
LABEL_30:
    v48 = v39 - 1;
    goto LABEL_34;
  }

  v51 = *(a2 + 24);
  v52 = *(a2 + 8);
  *(a2 + 8) = v52 + 1;
  *(v51 + 4 * v52) = bswap32(v30);
  v48 = 31;
  v30 = 0;
LABEL_34:
  if (*(result + 19))
  {
    if (!v48)
    {
      v54 = *(a2 + 24);
      v55 = *(a2 + 8);
      *(a2 + 8) = v55 + 1;
      *(v54 + 4 * v55) = bswap32(v30);
      v30 = 0x80000000;
      *a2 = 0x80000000;
      v53 = 31;
      if (*(result + 20))
      {
LABEL_44:
        v58 = v53 - 1;
        *(a2 + 4) = v53 - 1;
        v30 |= 1 << (v53 - 1);
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    goto LABEL_36;
  }

  if (v48)
  {
LABEL_38:
    v53 = v48 - 1;
    goto LABEL_42;
  }

  v56 = *(a2 + 24);
  v57 = *(a2 + 8);
  *(a2 + 8) = v57 + 1;
  *(v56 + 4 * v57) = bswap32(v30);
  v53 = 31;
  v30 = 0;
LABEL_42:
  if (*(result + 20))
  {
    if (!v53)
    {
      v59 = *(a2 + 24);
      v60 = *(a2 + 8);
      *(a2 + 8) = v60 + 1;
      *(v59 + 4 * v60) = bswap32(v30);
      *a2 = 0x1F80000000;
      v43 = *(result + 22);
      v58 = 31;
      v30 = 0x80000000;
      if (*(result + 22))
      {
LABEL_53:
        v63 = v58 - 1;
        v30 |= 1 << v63;
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    goto LABEL_44;
  }

  if (!v53)
  {
    v61 = *(a2 + 24);
    v62 = *(a2 + 8);
    *(a2 + 8) = v62 + 1;
    *(v61 + 4 * v62) = bswap32(v30);
    *a2 = 0;
    v58 = 31;
    v30 = 0;
    goto LABEL_50;
  }

LABEL_46:
  v58 = v53 - 1;
LABEL_50:
  *(a2 + 4) = v58;
LABEL_51:
  v43 = *(result + 22);
  if (!*(result + 22))
  {
    if (!v58)
    {
      v43 = 0;
      v66 = *(a2 + 24);
      v67 = *(a2 + 8);
      *(a2 + 8) = v67 + 1;
      *(v66 + 4 * v67) = bswap32(v30);
      v63 = 31;
      v30 = 0;
      goto LABEL_58;
    }

LABEL_55:
    v43 = 0;
    v63 = v58 - 1;
    goto LABEL_58;
  }

  if (v58)
  {
    goto LABEL_53;
  }

  v64 = *(a2 + 24);
  v65 = *(a2 + 8);
  *(a2 + 8) = v65 + 1;
  *(v64 + 4 * v65) = bswap32(v30);
  v63 = 31;
  v30 = 0x80000000;
LABEL_58:
  v68 = *(result + 27);
  if (v68 > 31)
  {
    v68 = 31;
LABEL_62:
    *(result + 27) = v68;
    goto LABEL_63;
  }

  if (v68 <= 0)
  {
    v68 = 1;
    goto LABEL_62;
  }

LABEL_63:
  if (v63 <= 4)
  {
    v75 = *(a2 + 52) & v68;
    v76 = (v30 << 8) & 0xFF0000 | (((v75 >> (5 - v63)) | v30) << 24) | (v30 >> 8) & 0xFF00 | HIBYTE(v30);
    v77 = *(a2 + 24);
    v78 = *(a2 + 8);
    *(a2 + 8) = v78 + 1;
    *(v77 + 4 * v78) = v76;
    v71 = v63 + 27;
    v38 = v75 << (v63 + 27);
    *a2 = v38;
    *(a2 + 4) = v71;
  }

  else
  {
    v69 = *(a2 + 52) & v68;
    v71 = v63 - 5;
    v70 = v63 == 5;
    v38 = (v69 << (v63 - 5)) | v30;
    *a2 = v38;
    if (v70)
    {
      v72 = bswap32(v38);
      v73 = *(a2 + 24);
      v74 = *(a2 + 8);
      *(a2 + 8) = v74 + 1;
      *(v73 + 4 * v74) = v72;
      *a2 = 0;
      v37 = 31;
      v38 = 0;
      goto LABEL_69;
    }
  }

  v37 = v71 - 1;
LABEL_69:
  if (!v43)
  {
    goto LABEL_76;
  }

  if (v37 <= 2)
  {
    v85 = *(a2 + 44) & *(v3 + 28);
    v86 = *(a2 + 24);
    v87 = *(a2 + 8);
    *(a2 + 8) = v87 + 1;
    *(v86 + 4 * v87) = (((v85 >> (3 - v37)) | v38) << 8) & 0xFF0000 | (((v85 >> (3 - v37)) | v38) << 24) | (((v85 >> (3 - v37)) | v38) >> 8) & 0xFF00 | (((v85 >> (3 - v37)) | v38) >> 24);
    v79 = v37 + 29;
    *(a2 + 4) = v37 + 29;
    v80 = v85 << (v37 + 29);
    goto LABEL_74;
  }

  v79 = v37 - 3;
  *(a2 + 4) = v37 - 3;
  v80 = ((*(a2 + 44) & *(v3 + 28)) << (v37 - 3)) | v38;
  if (v37 - 3 >= 2)
  {
LABEL_74:
    v37 = v79 - 2;
    v38 = ((*(a2 + 40) & *(v3 + 32)) << (v79 - 2)) | v80;
    goto LABEL_75;
  }

  v81 = *(a2 + 40) & *(v3 + 32);
  v82 = (((v81 >> (5 - v37)) | v80) << 8) & 0xFF0000 | (((v81 >> (5 - v37)) | v80) << 24) | (((v81 >> (5 - v37)) | v80) >> 8) & 0xFF00 | (((v81 >> (5 - v37)) | v80) >> 24);
  v83 = *(a2 + 24);
  v84 = *(a2 + 8);
  *(a2 + 8) = v84 + 1;
  *(v83 + 4 * v84) = v82;
  v37 = v79 | 0x1E;
  v38 = v81 << (v79 | 0x1E);
LABEL_75:
  *a2 = v38;
LABEL_76:
  if (v37)
  {
    v88 = v37 - 1;
  }

  else
  {
    v89 = bswap32(v38);
    v90 = *(a2 + 24);
    v91 = *(a2 + 8);
    *(a2 + 8) = v91 + 1;
    *(v90 + 4 * v91) = v89;
    *a2 = 0;
    v88 = 31;
  }

  *(a2 + 4) = v88;
  if (*(v3 + 20))
  {
    v92 = 1;
  }

  else
  {
    v92 = *(v3 + 76) != 0;
  }

  if (*(v3 + 18))
  {
    v93 = 1;
  }

  else
  {
    v93 = v92;
  }

  *(v3 + 164) = v92;
  *(v3 + 168) = v93;
  return result;
}

uint64_t H263PICT_encPlusHeader(uint64_t result, unsigned int *a2)
{
  v2 = a2[1];
  if (*(result + 48) != 1)
  {
    goto LABEL_37;
  }

  v3 = *a2;
  v4 = v2 - 3;
  if (v2 < 3)
  {
    v6 = a2[11] & *(result + 44);
    v7 = (((v6 >> (3 - v2)) | v3) << 8) & 0xFF0000 | (((v6 >> (3 - v2)) | v3) << 24) | (((v6 >> (3 - v2)) | v3) >> 8) & 0xFF00 | (((v6 >> (3 - v2)) | v3) >> 24);
    v8 = *(a2 + 3);
    v9 = a2[2];
    a2[2] = v9 + 1;
    *(v8 + 4 * v9) = v7;
    v4 = v2 + 29;
    v5 = v6 << (v2 + 29);
  }

  else
  {
    v5 = ((a2[11] & *(result + 44)) << v4) | v3;
  }

  *a2 = v5;
  if (*(result + 18))
  {
    if (!v4)
    {
      v11 = *(a2 + 3);
      v12 = a2[2];
      a2[2] = v12 + 1;
      *(v11 + 4 * v12) = bswap32(v5);
      v5 = 0x80000000;
      *a2 = 0x80000000;
      v10 = 31;
      if (*(result + 72))
      {
LABEL_15:
        v15 = v10 - 1;
        v5 |= 1 << v15;
        *a2 = v5;
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    v10 = v4 - 1;
    v5 |= 1 << (v4 - 1);
    *a2 = v5;
  }

  else if (v4)
  {
    v10 = v4 - 1;
  }

  else
  {
    v13 = *(a2 + 3);
    v14 = a2[2];
    a2[2] = v14 + 1;
    *(v13 + 4 * v14) = bswap32(v5);
    *a2 = 0;
    v10 = 31;
    v5 = 0;
  }

  if (!*(result + 72))
  {
    if (!v10)
    {
      v18 = *(a2 + 3);
      v19 = a2[2];
      a2[2] = v19 + 1;
      *(v18 + 4 * v19) = bswap32(v5);
      *a2 = 0;
      v15 = 31;
      v5 = 0;
LABEL_21:
      if (*(result + 76))
      {
        if (!v15)
        {
          v21 = *(a2 + 3);
          v22 = a2[2];
          a2[2] = v22 + 1;
          *(v21 + 4 * v22) = bswap32(v5);
          *a2 = 0x1F80000000;
          v20 = 31;
          if (*(result + 96))
          {
            v5 = 0x80000000;
LABEL_32:
            v2 = v20 - 1;
            *a2 = v5 | (1 << v2);
            goto LABEL_37;
          }

          goto LABEL_34;
        }

        goto LABEL_23;
      }

      if (!v15)
      {
        v23 = *(a2 + 3);
        v24 = a2[2];
        a2[2] = v24 + 1;
        *(v23 + 4 * v24) = bswap32(v5);
        *a2 = 0;
        v20 = 31;
        v5 = 0;
        goto LABEL_29;
      }

LABEL_25:
      v20 = v15 - 1;
LABEL_29:
      a2[1] = v20;
      goto LABEL_30;
    }

LABEL_17:
    v15 = v10 - 1;
    goto LABEL_21;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  v16 = *(a2 + 3);
  v17 = a2[2];
  a2[2] = v17 + 1;
  *(v16 + 4 * v17) = bswap32(v5);
  v5 = 0x80000000;
  *a2 = 0x80000000;
  v15 = 31;
  if (!*(result + 76))
  {
    goto LABEL_25;
  }

LABEL_23:
  v20 = v15 - 1;
  v5 |= 1 << v20;
  *a2 = v5;
  a2[1] = v20;
LABEL_30:
  if (*(result + 96))
  {
    if (!v20)
    {
      v25 = *(a2 + 3);
      v26 = a2[2];
      a2[2] = v26 + 1;
      *(v25 + 4 * v26) = bswap32(v5);
      *a2 = 0x80000000;
      v2 = 31;
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  if (v20)
  {
LABEL_34:
    v2 = v20 - 1;
    goto LABEL_37;
  }

  v27 = *(a2 + 3);
  v28 = a2[2];
  a2[2] = v28 + 1;
  *(v27 + 4 * v28) = bswap32(v5);
  *a2 = 0;
  v2 = 31;
LABEL_37:
  if (v2 < 3)
  {
    v31 = a2[11] & *(result + 17);
    v32 = (((v31 >> (3 - v2)) | *a2) << 8) & 0xFF0000 | (((v31 >> (3 - v2)) | *a2) << 24) | (((v31 >> (3 - v2)) | *a2) >> 8) & 0xFF00 | (((v31 >> (3 - v2)) | *a2) >> 24);
    v33 = *(a2 + 3);
    v34 = a2[2];
    a2[2] = v34 + 1;
    *(v33 + 4 * v34) = v32;
    v29 = v2 + 29;
    v30 = v31 << (v2 + 29);
    goto LABEL_40;
  }

LABEL_38:
  v29 = v2 - 3;
  v30 = ((a2[11] & *(result + 17)) << (v2 - 3)) | *a2;
LABEL_40:
  *a2 = v30;
  a2[1] = v29;
  return result;
}

uint64_t InitQuantization(char **a1)
{
  v2 = *a1;
  if (!v2)
  {
    v2 = MEM_NewClear(1442);
    *a1 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  v2[94] = 8;
  *(v2 + 20) = 0;
  *(v2 + 12) = 0;
  *(v2 + 4) = 0;
  *(v2 + 28) = xmmword_295686DA0;
  v2[134] = 1;
  *(v2 + 66) = 1;
  v3 = C_Function_SizeofSinglepassRateController();
  *(*a1 + 12) = MEM_NewClear(v3);
  (*a1)[104] = 0;
  v4 = C_Function_SizeofFrame();
  v5 = MEM_NewClear(v4);
  result = 0;
  *(*a1 + 106) = v5;
  return result;
}

uint64_t KillQuantization(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(v2 + 96))
    {
      C_Function_Kill(*(v2 + 96));
      v3 = *a1;
      *(v3 + 104) = 0;
      MEM_Dispose(*(v3 + 96));
      v2 = *a1;
    }

    if (*(v2 + 106))
    {
      MEM_Dispose(*(v2 + 106));
      v2 = *a1;
    }

    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t InitQuantTables(float **a1, int a2)
{
  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(102912);
  *a1 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = xmmword_295686DB0;
    v8.i64[0] = 0x400000004;
    v8.i64[1] = 0x400000004;
    do
    {
      *&v5[v6] = vcvtq_f32_u32(v7);
      v7 = vaddq_s32(v7, v8);
      v6 += 4;
    }

    while (v6 != 256);
    v9 = (v5 + 256);
    v10 = (v5 + 17537);
    v11 = (v5 + 9089);
    v12 = 1;
    v13 = 256;
    __asm
    {
      FMOV            V2.2D, #2.0
      FMOV            V3.2D, #1.0
      FMOV            V4.2D, #-1.0
      FMOV            V5.2D, #-0.25
    }

    v22 = vdupq_n_s64(0x4090000000000000uLL);
    __asm { FMOV            V7.2D, #-0.5 }

    v24 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v25 = 1.0;
    do
    {
      v26 = &v9[4 * v13];
      if (v12)
      {
        v35 = 128;
        v36 = v5;
        v37 = 0x7F00000080;
        do
        {
          v38 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vmlaq_f64(_Q3, _Q2, vcvtq_f64_f32(vcvt_f32_s32(v37))), v25))), _Q5);
          *(v36 + 256) = vcvt_f32_f64(v38);
          *(v36 + 4480) = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v22, v38)));
          *(v36 + 8704) = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v24, vmulq_f64(v38, v22))));
          v37 = vadd_s32(v37, 0x100000001);
          v36 += 2;
          v35 -= 2;
        }

        while (v35);
        *(v26 + 128) = 0;
        do
        {
          v39 = ((v35 + 1) * 2.0 + 1.0) * v25;
          v40 = v39 * 0.25;
          v41 = v40;
          v5[v35 + 641] = v41;
          *&v11[4 * v35] = (v40 * 1024.0 + 0.5);
          *&v10[4 * v35++] = (v40 * 1024.0 * 0.707106781 + 0.5);
        }

        while (v35 != 127);
      }

      else
      {
        v27 = 0;
        v28 = vdupq_lane_s64(*&v25, 0);
        v29 = 0x7F00000080;
        do
        {
          v30 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(_Q4, vmlaq_f64(_Q3, _Q2, vcvtq_f64_f32(vcvt_f32_s32(v29))), v28))), _Q5);
          *&v5[v27 + 512] = vcvt_f32_f64(v30);
          *&v5[v27 + 8960] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v22, v30)));
          *&v5[v27 + 17408] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v24, vmulq_f64(v30, v22))));
          v29 = vadd_s32(v29, 0x100000001);
          v27 += 2;
        }

        while (v27 != 128);
        v31 = 0;
        *(v26 + 128) = 0;
        do
        {
          v32 = v25 * ((v31 + 1) * 2.0 + 1.0) + -1.0;
          v33 = v32 * 0.25;
          v34 = v33;
          v5[v31 + 641] = v34;
          *&v11[4 * v31] = (v33 * 1024.0 + 0.5);
          *&v10[4 * v31++] = (v33 * 1024.0 * 0.707106781 + 0.5);
        }

        while (v31 != 127);
      }

      ++v12;
      v13 += 256;
      v25 = v25 + 1.0;
      v5 += 256;
      v10 += 1024;
      v11 += 1024;
    }

    while (v12 != 32);
    if (a2)
    {
      return 0;
    }

    v42 = 1;
    while (1)
    {
      v43 = *&(*a1)[2 * v42 + 25600];
      if (v43)
      {
        MEM_Dispose(v43);
      }

      if (v42 >= 8)
      {
        v44 = 0x2000;
      }

      else
      {
        v44 = 0x4000;
      }

      *&(*a1)[2 * v42 + 25600] = MEM_NewClear(v44);
      if (!*&(*a1)[2 * v42 + 25600])
      {
        return 1;
      }

      for (i = 0; ; ++i)
      {
        if (i == 4096)
        {
          LOWORD(v46) = 0;
        }

        else
        {
          v47 = i < 0x1000 ? -1 : 1;
          v46 = (((((1 - v42) & 1) - v42 + v47 * (i - 4096)) / (2 * v42)) & ~(((((1 - v42) & 1) - v42 + v47 * (i - 4096)) / (2 * v42)) >> 31)) * v47;
        }

        v48 = *&(*a1)[2 * v42 + 25600];
        if (v42 > 7)
        {
          break;
        }

        *(v48 + 2 * i) = v46;
        if (i == 0x1FFF)
        {
          v49 = 0x2000;
          goto LABEL_39;
        }

LABEL_37:
        ;
      }

      *(v48 + i) = v46;
      if (i != 0x1FFF)
      {
        goto LABEL_37;
      }

      v49 = 4096;
LABEL_39:
      *&(*a1)[2 * v42 + 25664] = *&(*a1)[2 * v42 + 25600] + v49;
      if (++v42 == 32)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t KillQuantTables(void **a1)
{
  if (*a1)
  {
    v2 = 102408;
    v3 = 31;
    do
    {
      v4 = *(*a1 + v2);
      if (v4)
      {
        MEM_Dispose(v4);
        *(*a1 + v2) = 0;
        *(*a1 + v2 + 256) = 0;
      }

      v2 += 8;
      --v3;
    }

    while (v3);
    MEM_Dispose(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t Q_Setup(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    if (a4[2])
    {
      v9 = *(a2 + 95);
      *(a2 + 94) = v9;
      *(a1 + 27) = v9;
    }

    else
    {
      *(a2 + 60) = *(a2 + 52);
      v10 = *(a2 + 95);
      *(a2 + 94) = v10;
      *(a1 + 27) = v10;
      if (!*(a2 + 92))
      {
        *(a2 + 20) = 0;
        *(a2 + 12) = 0;
        *(a2 + 4) = 0;
        *(a2 + 28) = xmmword_295686DA0;
      }
    }

    *(a2 + 134) = 1;
    *(a2 + 132) = 1;
  }

  v11 = a4[9];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a6 + 20);
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = *(a2 + 94);
        do
        {
          *(a2 + 136 + v13 + v15) = v16;
          v14 = *(a6 + 20);
          ++v15;
        }

        while (v15 < v14);
        v13 += v15;
        v11 = a4[9];
      }

      ++v12;
    }

    while (v12 < v11);
  }

  else
  {
    v13 = 0;
  }

  v17 = a4[10];
  if (v11 < v17)
  {
    v18 = *(a6 + 20);
    do
    {
      if (v18)
      {
        v19 = 0;
        v20 = *(a2 + 95);
        do
        {
          *(a2 + 136 + v13 + v19) = v20;
          v18 = *(a6 + 20);
          ++v19;
        }

        while (v19 < v18);
        v13 += v19;
        v17 = a4[10];
      }

      ++v11;
    }

    while (v11 < v17);
  }

  v21 = *(a6 + 16);
  if (v17 < v21)
  {
    LODWORD(v22) = *(a6 + 20);
    do
    {
      if (v22)
      {
        v23 = 0;
        v24 = *(a2 + 94);
        v25 = a2 + 136 + v13;
        do
        {
          *(v25 + v23) = v24;
          v24 = *(a2 + 94);
          *(v25 + v23++) = v24;
          v22 = *(a6 + 20);
        }

        while (v23 < v22);
        v21 = *(a6 + 16);
      }

      ++v17;
      v13 += v22;
    }

    while (v17 < v21);
  }

  *(a1 + 27) = *(a2 + 136);
  return 0;
}

uint64_t Q_RateControl(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v4 = *(a1 + 44);
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a3 / v4;
  if (v4 <= 0.0)
  {
    v5 = 6144.0;
  }

  v6 = *(a1 + 36);
  if (v6 - v5 <= 0.0)
  {
    v6 = *(a1 + 20);
    v7 = 52;
  }

  else
  {
    v7 = 4;
  }

  v8 = v6 + *(a1 + v7) - v5;
  v9 = *(a1 + 28);
  v10 = v8 - v9;
  if (!*(a2 + 49))
  {
    v20 = v8 / v9 + v10 * (v10 * 0.25) * v10;
    v12 = *(a1 + 94);
    v21 = (v12 + -31.0) * ((v12 + -31.0) * 0.1) / 900.0 + 0.05;
    if (!*(a1 + 134) || (v5 >= v20 * (v21 + 1.0) * *(a1 + 60) ? (v24 = __OFSUB__(v12, 30), v22 = v12 == 30, v23 = v12 - 30 < 0) : (v24 = 0, v22 = 0, v23 = 0), !(v23 ^ v24 | v22)))
    {
      if (*(a1 + 132) && v5 < v20 * (v21 * -0.5 + 1.0) * *(a1 + 60) && *(a1 + 119) + 2 <= v12)
      {
        *(a1 + 134) = 1;
        *(a1 + 132) = 1;
        v12 = (v12 - 2);
        if (v12 <= 1)
        {
          LOBYTE(v12) = 1;
        }

        goto LABEL_37;
      }

      v19 = 0.25;
      goto LABEL_32;
    }

LABEL_34:
    *(a1 + 134) = 1;
    *(a1 + 132) = 0;
    LOBYTE(v12) = v12 + 1;
    goto LABEL_37;
  }

  v11 = v8 * 20.0 / v9 + v10 * (v10 * 5.0) * v10;
  v12 = *(a1 + 94);
  v13 = (v12 + -1.0) * ((v12 + -1.0) * 0.1) / 900.0 + 0.05;
  if (*(a1 + 134))
  {
    if (v5 >= v11 * (v13 + 1.0) * *(a1 + 60))
    {
      v16 = __OFSUB__(v12, 30);
      v14 = v12 == 30;
      v15 = v12 - 30 < 0;
    }

    else
    {
      v16 = 0;
      v14 = 0;
      v15 = 0;
    }

    if (v15 ^ v16 | v14)
    {
      goto LABEL_34;
    }
  }

  if (*(a1 + 132))
  {
    if (v5 < v11 * (v13 * -0.5 + 1.0) * *(a1 + 60))
    {
      v18 = __OFSUB__(v12, 2);
      v17 = v12 - 2 < 0;
    }

    else
    {
      v18 = 0;
      v17 = 1;
    }

    if (v17 == v18)
    {
      *(a1 + 134) = 1;
      *(a1 + 132) = 1;
      LOBYTE(v12) = v12 - 1;
LABEL_37:
      *(a1 + 94) = v12;
      return 3;
    }
  }

  v19 = 0.1;
LABEL_32:
  if (v8 < v9 * v19)
  {
    v3 = 1;
    *(a1 + 93) = 1;
    return v3;
  }

  return 0;
}

uint64_t Q_UpdateHistory(uint64_t result, uint64_t a2)
{
  if (!*(result + 92))
  {
    v2 = *(result + 44);
    if (v2 < 0.0)
    {
      v2 = -v2;
    }

    if (v2 <= 0.0)
    {
      v3 = 6144.0;
    }

    else
    {
      v3 = *(result + 68) / v2;
    }

    v4 = *(result + 4);
    v5 = *(result + 12);
    if (v4 <= v5)
    {
      v6 = *(result + 12);
    }

    else
    {
      v6 = *(result + 4);
    }

    if (v4 <= v5)
    {
      v7 = *(result + 4);
    }

    else
    {
      v7 = *(result + 12);
    }

    v8 = v4 - v7;
    v9 = v5 - v7;
    if (v6 > 2.0e38)
    {
      v4 = v8;
      v5 = v9;
    }

    v10 = *(result + 36);
    v11 = v10 - v3;
    if (v10 < v3)
    {
      v11 = 0.0;
    }

    *(result + 36) = v11;
    if (v11 > 0.0)
    {
      v3 = 0.0;
    }

    v12 = v5 + v3;
    *(result + 12) = v12;
    v13 = *(result + 52) + v4;
    *(result + 4) = v13;
    *(result + 20) = v13 - v12;
    if (*(a2 + 52))
    {
      v14 = *(a2 + 4);
      if (*(a2 + 60) == v14 || *(a2 + 64) == v14)
      {
        *(result + 121) = *(result + 94);
        *(result + 124) = 0;
        *(a2 + 56) = 0;
      }

      else
      {
        v15 = *(result + 94);
        *(result + 122) = v15;
        *(result + 124) += v15;
        ++*(a2 + 56);
      }
    }
  }

  return result;
}

uint64_t Q_QuantizeS16(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[154];
  v7 = *&a1[4 * v6 + 330];
  LODWORD(v8) = a1[153];
  if (v8 >= 8)
  {
    result = 0;
    v12 = v7 != 0;
    goto LABEL_34;
  }

  v9 = 0;
  result = 0;
  v11 = v6;
  v12 = v7 != 0;
  v13 = a4 + 102656;
  v14 = a1 + 8;
  v15 = a1 + 56;
  do
  {
    v16 = v8;
    v17 = *(v13 + 8 * v8);
    if (v9 > 3)
    {
      goto LABEL_40;
    }

    v18 = v9;
LABEL_5:
    v19 = *&v14[8 * v18];
    v20 = *&v15[8 * v18];
    *v20 = *v19;
    v21 = v12;
    while (1)
    {
      v22 = v19[v21];
      v23 = *(v17 + 2 * v22);
      if (*(a5 + 4 * v23) >= 0x80u)
      {
        break;
      }

LABEL_14:
      v20[v21++] = v23;
      if (v21 == 64)
      {
        if (++v18 == 4)
        {
          if (v9 >= 1)
          {
LABEL_40:
            for (i = 0; i != v9; ++i)
            {
              v38 = *&v14[8 * i];
              v39 = *&v15[8 * i];
              *v39 = *v38;
              v40 = v12;
              do
              {
                v39[v40] = *(v17 + 2 * v38[v40]);
                ++v40;
              }

              while (v40 != 64);
            }
          }

          v41 = 2 * v12;
          v42 = 4;
LABEL_45:
          v43 = *&v14[8 * v42];
          v44 = *&v15[8 * v42];
          *v44 = *v43;
          v45 = v41;
          while (1)
          {
            v46 = *(v17 + 2 * *(v43 + v45));
            if (v46 > -128)
            {
              if (v46 < 128)
              {
                *(v44 + v45) = v46;
                goto LABEL_52;
              }

              *(v44 + v45) = 127;
            }

            else
            {
              *(v44 + v45) = -127;
            }

            result = (result + 1);
LABEL_52:
            v45 += 2;
            if (v45 == 128)
            {
              if (++v42 == 6)
              {
                return result;
              }

              goto LABEL_45;
            }
          }
        }

        goto LABEL_5;
      }
    }

    v24 = a1[155];
    if (v24 > 1 || v16 > 30)
    {
      if (v23 < 0)
      {
        LOWORD(v23) = -127;
      }

      else
      {
        LOWORD(v23) = 127;
      }

      goto LABEL_14;
    }

    v26 = a1[155];
    if (a1[155])
    {
      if (v26 == 255)
      {
        v27 = 255;
        goto LABEL_21;
      }
    }

    else
    {
      v27 = 1;
LABEL_21:
      v11 += v27;
      a1[154] = v11;
    }

    result = (result + 1);
    v8 = v16 + 1;
    a1[153] = v16 + 1;
    a1[155] = v24 + 1;
    if (v16 > 6)
    {
      break;
    }

    if (v26 != 1 && *(a5 + 4 * *(*(v13 + 8 * v8) + v22)) >= 0x80u)
    {
      if (v26 == 255)
      {
        v28 = 1;
LABEL_29:
        v11 += v28;
        a1[154] = v11;
      }

      else if (v26 == 254)
      {
        v28 = 255;
        goto LABEL_29;
      }

      LOBYTE(v8) = v16 + 2;
      a1[153] = v16 + 2;
      a1[155] = v24 + 2;
    }

    v9 = v18;
  }

  while (v8 < 8);
LABEL_34:
  v29 = 0;
  v30 = *(a4 + 8 * v8 + 102656);
  v31 = a1 + 8;
  v32 = a1 + 56;
  v33 = 2 * v12;
  do
  {
    v34 = *&v31[8 * v29];
    v35 = *&v32[8 * v29];
    *v35 = *v34;
    v36 = v33;
    do
    {
      *(v35 + v36) = *(v30 + *(v34 + v36));
      v36 += 2;
    }

    while (v36 != 128);
    ++v29;
  }

  while (v29 != 6);
  return result;
}

double QCM::EstimateQScale(QCM *this, double a2, double a3, double a4, int a5)
{
  v5 = *(this + 2);
  if (a3 > 0.01 && *(this + 3) > v5 * 1.5)
  {
    ++*(this + 14);
  }

  v6 = v5 / a4;
  v7 = a3 > 0.04 && a5 == 0;
  if (v7 && *(this + 12) >= 5)
  {
    v8 = *(this + 9);
    v9 = *(this + 10);
    if (v8 <= v9)
    {
      v10 = (a3 + -0.04) * *(this + 4);
    }

    else
    {
      if (v9 * a3 / v8 <= 0.04)
      {
        return v6 * a2;
      }

      v10 = (a3 + -0.04) * *(this + 4) * v9 / (v8 - v9);
    }

    v11 = *(this + 3);
    v12 = 1.0;
    if (v11 > v5)
    {
      if (*(this + 8) <= 0.03)
      {
        v12 = (v5 + v11) * 0.5 / v5;
      }

      else
      {
        v12 = v11 / v5;
      }
    }

    v13 = a4 / (a4 - v10);
    if (v12 < v13 && (v14 = 2.0, v12 = v13, v13 > 2.0) || (v14 = v12, v12 > 1.0))
    {
      v6 = v6 * v14;
    }
  }

  return v6 * a2;
}

double QCM::UpdateModel(QCM *this, double result, double a3, double a4, int a5)
{
  v5 = *(this + 10) + 1;
  *(this + 10) = v5;
  v6 = *(this + 12);
  *(this + 12) = v6 + 1;
  if (a3 <= 10.0 || a5 == 0)
  {
    if (a3 >= 0.0)
    {
      ++*(this + 11);
      ++*(this + 13);
    }
  }

  else
  {
    result = result * a4 / a3;
    v8 = result + *this;
    *this = v8;
    *(this + 2) = v8 / (v5 - *(this + 11));
    if ((v6 & 0x80000000) == 0)
    {
      v9 = result + *(this + 1);
      *(this + 1) = v9;
      result = v9 / (v6 + 1 - *(this + 13));
      *(this + 3) = result;
    }
  }

  return result;
}

void FrameComplexity::InvalidateFrameComplexity(FrameComplexity *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {

    free(v4);
  }
}

double FrameComplexity::CalBlurredFrameComplexity(FrameComplexity *this, unsigned int a2, int a3, int a4)
{
  if (*(this + 14) == a2)
  {
    return *(this + 4);
  }

  v4 = *(this + 13);
  v5 = __OFSUB__(v4, a2);
  v6 = v4 - a2;
  if (v6 < 0 != v5)
  {
    return *(this + 4);
  }

  *(this + 14) = a2;
  if (!*(this + 15))
  {
    if (v6 >= 6)
    {
      LODWORD(v16) = 6;
    }

    else
    {
      LODWORD(v16) = v6;
    }

    if (a2)
    {
      v17 = 0;
      v18 = a2 - 1;
      v19 = 0.0;
      v20 = 0.0;
      do
      {
        if ((v18 & 0x80000000) == 0)
        {
          v21 = *&weightFrameComplexity[v17];
          v19 = v19 + v21 * *(*this + 8 * (v18 % *(this + 6)));
          v20 = v20 + v21;
        }

        --v18;
        ++v17;
      }

      while (v17 != 6);
    }

    else
    {
      v20 = 0.0;
      v19 = 0.0;
    }

    v22 = *this;
    if (v6 <= 0)
    {
      v24 = *(this + 6);
      v27 = 0.0;
      v25 = 0.0;
    }

    else
    {
      v23 = a2 + 1;
      v24 = *(this + 6);
      if (v16 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v16;
      }

      v25 = 0.0;
      v26 = weightFrameComplexity;
      v27 = 0.0;
      do
      {
        v28 = *v26++;
        v25 = v25 + v28 * *(*&v22 + 8 * (v23 % v24));
        v27 = v27 + v28;
        ++v23;
        --v16;
      }

      while (v16);
    }

    v29 = v25 / v27;
    v30 = 0.0;
    if (v27 <= 0.0)
    {
      v29 = 0.0;
    }

    v31 = a2 % v24;
    if (v20 > 0.0)
    {
      v30 = v19 / v20;
    }

    v32 = *(*&v22 + 8 * v31);
    if (v20 > 0.0 || (v33 = *(*&v22 + 8 * v31), v27 > 0.0))
    {
      v33 = (v19 + v25 + v32) / (v20 + v27 + 1.0);
    }

    *(this + 24) = 0;
    if (a4 && *(this + 50) && ((v34 = *(*(this + 1) + 8 * v31), v34 > 10.0) ? (v35 = *(*(this + 2) + 8 * v31) <= v34 * 3.162278) : (v35 = 1), !v35))
    {
      *(this + 48) = 1;
    }

    else if (!a3)
    {
      if (v29 <= 0.0)
      {
        goto LABEL_64;
      }

      v36 = v29 - v30;
      if (v29 - v30 < 0.0)
      {
        v36 = -(v29 - v30);
      }

      if (v36 / v33 <= 0.15)
      {
LABEL_64:
        *(this + 4) = v33;
      }

      else
      {
        v37 = v29 - v33;
        if (v29 - v33 < 0.0)
        {
          v37 = -(v29 - v33);
        }

        v38 = v30 - v33;
        if (v30 - v33 < 0.0)
        {
          v38 = -(v30 - v33);
        }

        if (v37 >= v38)
        {
          v39 = v30 + v32;
        }

        else
        {
          v39 = v29 + v32;
        }

        *(this + 4) = v39 * 0.5;
      }

      return *(this + 4);
    }

    *(this + 4) = v29;
    return *(this + 4);
  }

  v7 = a2 % *(this + 6);
  v8 = *(*this + 8 * v7);
  v9 = fabs(sqrt(v8));
  v10 = v8 == -INFINITY;
  v11 = INFINITY;
  if (!v10)
  {
    v11 = v9;
  }

  *(this + 24) = 0;
  if (a4)
  {
    if (*(this + 50))
    {
      v12 = *(*(this + 1) + 8 * v7);
      if (a3 || (v12 > 10.0 ? (v13 = *(*(this + 2) + 8 * v7) <= v12 * 3.162278) : (v13 = 1), !v13))
      {
        *(this + 48) = 1;
        v11 = v12;
      }
    }

    v14 = fmax(v11, 10.0);
    v15 = *(this + 5);
    if (v15 > 0.0)
    {
      if ((v15 - v14) / v15 > 0.15)
      {
        v14 = (v15 + v14) * 0.5;
        *(this + 4) = v14;
        *(this + 49) = 1;
LABEL_62:
        *(this + 5) = v14;
        return *(this + 4);
      }

      v14 = (v14 + v15 * 7.0) * 0.125;
    }

    *(this + 4) = v14;
    goto LABEL_62;
  }

  return *(this + 4);
}

void *SinglepassRatecontroller::Init(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  *(a1 + 32) = *(a2 + 32);
  if (v4 <= 0x15F90)
  {
    v5 = 30;
  }

  else
  {
    v5 = 25;
  }

  *(a1 + 72) = v5;
  v6 = v4;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  v7 = *(a2 + 20);
  *(a1 + 87) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 64) = 0;
  *(a1 + 67) = v5;
  *(a1 + 65) = v5;
  *(a1 + 66) = v5;
  *(a1 + 88) = 0;
  *(a1 + 264) = 0;
  *(a1 + 83) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0x3F847AE147AE147BLL;
  v8 = *(a2 + 24) < 2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = v6 / v3;
  *(a1 + 152) = xmmword_295686EA0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = v7;
  *(a1 + 192) = 0;
  v9 = 2 * *(a2 + 24) + 5;
  *(a1 + 200) = 0uLL;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 260) = v8;
  *(a1 + 250) = 0;
  *(a1 + 252) = 0xFFFFFFFF00000000;
  *(a1 + 224) = v9;
  result = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  *(a1 + 200) = result;
  return result;
}

double CPP_Callback_Function_SetFrameDuration(uint64_t a1, double a2)
{
  v2 = 1000.0 / a2;
  if (1000.0 / a2 > 5.0 && v2 < 35.0)
  {
    *(a1 + 16) = v2;
  }

  result = *(a1 + 264) + a2;
  *(a1 + 264) = result;
  return result;
}

uint64_t SinglepassRatecontroller::GetQp(SinglepassRatecontroller *this, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == *(this + 23))
  {
    if (!v3)
    {
      *(this + 88) = *(a2 + 12);
      *(this + 86) = 1;
    }

    v4 = (pow(1.125, *(this + 65)) * 0.625 * 0.5 + 0.5);
    if (v4 >= 31)
    {
      v4 = 31;
    }

    if (v4 <= 1)
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    *(this + 23) = v3;
    v5 = *(a2 + 12);
    *(this + 88) = v5;
    SinglepassRatecontroller::CalculateQp_(this, v5);
    v4 = (pow(1.125, *(this + 65)) * 0.625 * 0.5 + 0.5);
    if (v4 >= 31)
    {
      v4 = 31;
    }

    if (v4 <= 1)
    {
      v4 = 1;
    }

    v6 = (v4 + *(this + 9) * *(this + 24)) / (*(this + 24) + 1);
    *(this + 9) = v6;
    v7 = v6 - 4;
    if (v6 >= 31.0 || v6 <= 8.0)
    {
      LOBYTE(v7) = 3;
    }

    if (v4 <= v7)
    {
      LOBYTE(v4) = v7;
    }
  }

  return v4;
}

uint64_t CPP_Callback_Function_UpdateFrameComplexity(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a5 % *(result + 224);
  *(*(result + 200) + 8 * v5) = a2;
  if (*(result + 250))
  {
    v6 = *(result + 216);
    *(*(result + 208) + 8 * v5) = sqrt(a3);
    *(v6 + 8 * v5) = sqrt(a4);
  }

  if (*(result + 252) < a5)
  {
    *(result + 252) = a5;
  }

  return result;
}

double SinglepassRatecontroller::UpdateRateControllerAfterEncodingFrame(SinglepassRatecontroller *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = (*(this + 1) / *(this + 2));
  v11 = *(this + 88);
  v12 = v11 < 0xA && ((0x2BDu >> v11) & 1) != 0 || v11 == 8;
  v13 = FrameComplexity::CalBlurredFrameComplexity((this + 200), a4, *(this + 86), v12);
  v14 = log((a5 + a5) / 0.625);
  v15 = exp2((v14 / 0.117783036 + -12.0) / 6.0);
  *(this + 20) += a2 - v10;
  ++*(this + 24);
  if (*(this + 64))
  {
    __asm { FMOV            V4.2D, #1.0 }

    _Q4.f64[1] = (a2 - a3);
    v21 = vaddq_f64(vmulq_f64(*(this + 40), vdupq_n_s64(0x3FEE666666666666uLL)), _Q4);
    *(this + 40) = v21;
    *(this + 7) = *&vdivq_f64(vdupq_laneq_s64(v21, 1), v21);
  }

  else
  {
    a3 = a2;
  }

  v22 = v15 * 0.85;
  v23 = *(this + 88);
  if (v23 > 9)
  {
    goto LABEL_11;
  }

  v24 = 1;
  if (((1 << v23) & 0x129) != 0)
  {
    v24 = *(this + 89) != 0;
  }

  else if (((1 << v23) & 0x294) == 0)
  {
LABEL_11:
    v22 = v22 / 1.3;
    goto LABEL_14;
  }

  *(this + 85) = v24;
  *(this + 66) = *(this + 65);
LABEL_14:

  return QCM::UpdateModel((this + 112), v22, v13, a3, 1);
}

uint64_t SinglepassRatecontroller::CalculateQp_(SinglepassRatecontroller *this, unsigned int a2)
{
  if (a2 > 9)
  {
    goto LABEL_4;
  }

  v4 = 1;
  if (((1 << a2) & 0x129) != 0)
  {
    v4 = *(this + 89) != 0;
    goto LABEL_6;
  }

  if (((1 << a2) & 0x294) == 0)
  {
LABEL_4:
    v4 = 0;
  }

LABEL_6:
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 20);
  *(this + 86) = v4;
  v8 = *(this + 24);
  v9 = *(this + 88);
  v10 = v9 < 0xA && ((0x2BDu >> v9) & 1) != 0 || v9 == 8;
  v11 = FrameComplexity::CalBlurredFrameComplexity((this + 200), *(this + 23), v4, v10);
  if (*(this + 86))
  {
    v12 = 1;
  }

  else
  {
    v12 = *(this + 248) != 0;
  }

  *(this + 86) = v12;
  if (a2 > 9 || ((1 << a2) & 0x3BD) == 0)
  {
    result = SinglepassRatecontroller::BframeRc_(this);
    goto LABEL_64;
  }

  v13 = v5 / v6 * (*(this + 24) + 1) / *(this + 24);
  if (*(this + 64))
  {
    v13 = v13 - *(this + 7);
  }

  v14 = v7 / (v5 / v6 * (v8 + 1));
  if (v12)
  {
    v15 = *(this + 16);
    if (v14 > 0.01 && *(this + 17) > v15 * 1.5)
    {
      ++*(this + 42);
    }

    *(this + 15) = 0;
    *(this + 17) = 0;
    v16 = *(this + 40);
    v17 = 1;
    v18 = v11 * (v15 / v13) / 1.4;
    if (v16 <= 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v18 = 0.0;
  v17 = 1;
  if (a2 <= 8 && ((1 << a2) & 0x129) != 0)
  {
    if (*(this + 248))
    {
      v19 = 1;
    }

    else
    {
      v19 = *(this + 249) != 0;
    }

    v17 = *(this + 85) != 0;
    if (*(this + 85))
    {
      v18 = exp2((*(this + 66) - 10) / 6.0) * 0.85;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = QCM::EstimateQScale((this + 112), v11, v14, v13, v19);
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    *(this + 15) = 0;
    *(this + 17) = 0;
    v16 = *(this + 40);
    if (v16 < 1)
    {
      goto LABEL_23;
    }

LABEL_22:
    *(this + 22) = *(this + 42) / v16;
LABEL_23:
    *(this + 41) = 0;
    *(this + 42) = 0;
    *(this + 40) = -1;
  }

LABEL_34:
  v20 = *(this + 1);
  v21 = *(this + 24);
  v22 = sqrt((v21 / 25));
  if (v22 <= 1.0)
  {
    v23 = v20 + v20;
  }

  else
  {
    v23 = (v20 + v20) * v22;
  }

  v24 = *(this + 20);
  v25 = v24 / v23 + 1.0;
  v26 = 2.0;
  if (v25 <= 2.0)
  {
    v26 = v25;
  }

  if (v25 >= 0.5)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0.5;
  }

  if (v21 >= 5)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = *(this + 4);
  if (v29 > 0.0)
  {
    v30 = *(this + 33);
    if (v30 > v29 * 1000.0 * 0.7)
    {
      v31 = v24 / v30 / v20 + 1.0;
      v32 = v31 >= 0.94 && v31 <= 1.04;
      v33 = v28 * v31;
      if (!v32)
      {
        v28 = v33;
      }
    }
  }

  v34 = v18 * v28;
  if (v17)
  {
    v35 = v18 * v28;
  }

  else
  {
    v36 = *(this + 66);
    if (*(this + 85))
    {
      v36 = v36 + 2.912561;
    }

    v37 = exp2((v36 + -12.0) / 6.0) * 0.85;
    v35 = v37 / 1.514528;
    v38 = v37 * 1.514528;
    if (v28 <= 1.05)
    {
      if (v28 < 0.95)
      {
        v35 = v35 / 1.514528;
      }
    }

    else
    {
      v38 = v38 * 1.514528;
    }

    if (v35 <= v34)
    {
      v35 = v34;
      if (v38 < v34)
      {
        v35 = v38;
      }
    }
  }

  result = (log(v35 / 0.85) * 6.0 / 0.693147181 + 12.0 + 0.5);
LABEL_64:
  v40 = result;
  if (result >= 51)
  {
    v40 = 51;
  }

  *(this + 65) = v40 & ~(v40 >> 31);
  return result;
}

uint64_t SinglepassRatecontroller::BframeRc_(SinglepassRatecontroller *this)
{
  v1 = *(this + 104);
  if (v1 > 9 || ((1 << v1) & 0x294) == 0)
  {
    v3 = *(this + 105);
    goto LABEL_11;
  }

  v3 = *(this + 105);
  if (v3 > 9 || ((1 << v3) & 0x294) == 0)
  {
    if (v1 <= 9 && ((1 << v1) & 0x294) != 0)
    {
LABEL_18:
      v9 = *(this + 100);
      goto LABEL_19;
    }

LABEL_11:
    v6 = v3 > 9;
    v7 = (1 << v3) & 0x294;
    if (v6 || v7 == 0)
    {
      v11 = *(this + 102);
      v12 = *(this + 103);
      if (v11 >= 1)
      {
        if (v12 >= 1)
        {
          v5 = (*(this + 100) * v12 + *(this + 101) * v11) / (v12 + v11);
          return (v5 + 2.27107 + 0.5);
        }

        goto LABEL_18;
      }

      if (v12 < 1)
      {
        v5 = 0.0;
        return (v5 + 2.27107 + 0.5);
      }
    }

    v9 = *(this + 101);
LABEL_19:
    v5 = v9;
    return (v5 + 2.27107 + 0.5);
  }

  v5 = (*(this + 101) + *(this + 100)) * 0.5 + 2.912561;
  return (v5 + 2.27107 + 0.5);
}

uint64_t RowCol8x8S16(_WORD *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v66 = *MEMORY[0x29EDCA608];
  do
  {
    v9 = &v65[v8];
    v10 = a1[7];
    v11 = a1[1];
    v12 = a1[6];
    v13 = a1[2];
    v14 = a1[5];
    v15 = a1[3];
    v16 = a1[4];
    v17 = v10 + *a1;
    v18 = *a1 - v10;
    v19 = v12 + v11;
    v20 = *(a5 + 4 * v18);
    v21 = *(a5 + 4 * (v11 - v12));
    v22 = *(a5 + 4 * (v13 - v14));
    v23 = *(a5 + 4 * (v15 - v16));
    v24 = v14 + v13 + v12 + v11;
    v25 = *(a7 + 4 * (v16 + v15 + v17 - v24));
    v26 = *(a6 + 4 * (v17 - (v16 + v15)));
    v27 = *(a6 + 4 * (v19 - (v14 + v13)));
    *v9 = *(a7 + 4 * (v16 + v15 + v17 + v24));
    v9[1] = ((v20 + (v21 * 0.84776)) + (v22 * 0.56645)) + (v23 * 0.19891);
    v9[2] = v26 + (v27 * 0.41421);
    v9[3] = ((v20 * 0.84776) - (v22 - (v21 * -0.19891))) + (v23 * -0.56645);
    *(v9 + 4) = v25;
    v9[5] = ((v22 * 0.19891) - (v21 - (v20 * 0.56645))) + (v23 * 0.84776);
    v9[6] = -(v27 - (v26 * 0.41421));
    v9[7] = ((v21 * -0.56645) - (v23 - (v20 * 0.19891))) + (v22 * 0.84776);
    a1 += 8;
    v8 += 32;
  }

  while (v8 != 256);
  v28 = 0;
  v29 = (a2 + 64);
  do
  {
    v30 = a4 != 0;
    v31 = *&v65[v28];
    v32 = *&v65[v28 + 224];
    v33 = *&v65[v28 + 32];
    v34 = *&v65[v28 + 192];
    v35 = *&v65[v28 + 64];
    v36 = *&v65[v28 + 160];
    v37 = *&v65[v28 + 96];
    v38 = *&v65[v28 + 128];
    v39 = v31 + v32;
    v40 = v31 - v32;
    v41 = v33 + v34;
    v42 = v33 - v34;
    v43 = v35 + v36;
    v44 = v35 - v36;
    v45 = v37 + v38;
    v46 = v37 - v38;
    v47 = v39 + v45;
    v48 = v41 + v43;
    v49 = v39 - v45;
    v50 = v47 * 0.35355;
    v51 = v50 + ((v41 + v43) * 0.35355);
    v52 = v28 == 0;
    v54 = v30 && v52;
    if (v30 && v52)
    {
      v53 = v51 * 0.125 + 0.5;
      v51 = v53;
    }

    v55 = v51;
    v56 = v41 - v43;
    v57 = (v50 + (v48 * -0.35355));
    v58 = ((v49 * 0.46194) + (v56 * 0.19134));
    v59 = ((v49 * 0.19134) + (v56 * -0.46194));
    v60 = ((((v40 * 0.49039) + (v42 * 0.41573)) + (v44 * 0.27779)) + (v46 * 0.097545));
    v61 = ((((v40 * 0.41573) + (v42 * -0.097545)) + (v44 * -0.49039)) + (v46 * -0.27779));
    result = ((((v40 * 0.27779) + (v42 * -0.49039)) + (v44 * 0.097545)) + (v46 * 0.41573));
    v63 = ((((v40 * 0.097545) + (v42 * -0.27779)) + (v44 * 0.41573)) + (v46 * -0.49039));
    if (v54)
    {
      if (v55 <= 1)
      {
        v55 = 1;
      }

      if (v55 >= 254)
      {
        LOWORD(v55) = 254;
      }

      *(v29 - 32) = v55;
      if (a3 < 8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a3 < 8)
      {
        *(v29 - 32) = v55;
LABEL_15:
        *v29 = v57;
        *(v29 - 24) = v60;
        *(v29 - 16) = v58;
        *(v29 - 8) = v61;
        v29[8] = result;
        v29[16] = v59;
        goto LABEL_18;
      }

      *(v29 - 32) = *(a8 + v55);
    }

    *v29 = *(a8 + v57);
    *(v29 - 24) = *(a8 + v60);
    *(v29 - 16) = *(a8 + v58);
    *(v29 - 8) = *(a8 + v61);
    v29[8] = *(a8 + result);
    v29[16] = *(a8 + v59);
    LOWORD(v63) = *(a8 + v63);
LABEL_18:
    v29[24] = v63;
    v28 += 4;
    ++v29;
  }

  while (v28 != 32);
  v64 = *MEMORY[0x29EDCA608];
  return result;
}

double RowCol4x4S16(_WORD *a1, _WORD *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v59 = *MEMORY[0x29EDCA608];
  do
  {
    v9 = &v58[v8];
    v10 = a1[7];
    v11 = a1[1];
    v12 = a1[6];
    v13 = a1[2];
    v14 = a1[5];
    v15 = a1[3];
    v16 = a1[4];
    v17 = v10 + *a1;
    v18 = *a1 - v10;
    v19 = v12 + v11;
    v20 = v11 - v12;
    v21 = v13 - v14;
    v22 = v14 + v13;
    v23 = *(a5 + 4 * v18);
    v24 = *(a5 + 4 * v20);
    v25 = *(a6 + 4 * (v17 - (v16 + v15))) + (*(a6 + 4 * (v19 - v22)) * 0.41421);
    v26 = *(a5 + 4 * v21);
    v27 = v23 + (v24 * 0.84776);
    v28 = (v23 * 0.84776) - (v26 - (v24 * -0.19891));
    v29 = *(a5 + 4 * (v15 - v16));
    *v9 = *(a7 + 4 * (v19 + v17 + v22 + v16 + v15));
    v9[1] = (v27 + (v26 * 0.56645)) + (v29 * 0.19891);
    v9[2] = v25;
    v9[3] = v28 + (v29 * -0.56645);
    a1 += 8;
    v8 += 32;
  }

  while (v8 != 256);
  v30 = 0;
  do
  {
    v31 = a4 != 0;
    v32 = *&v58[v30];
    v33 = *&v58[v30 + 224];
    v34 = *&v58[v30 + 32];
    v35 = *&v58[v30 + 192];
    v36 = *&v58[v30 + 64];
    v37 = *&v58[v30 + 160];
    v38 = *&v58[v30 + 96];
    v39 = *&v58[v30 + 128];
    v40 = v32 + v33;
    v41 = v32 - v33;
    v42 = v34 + v35;
    v43 = v34 - v35;
    v44 = v36 + v37;
    v45 = v36 - v37;
    v46 = v38 + v39;
    v47 = v38 - v39;
    v48 = ((v40 + v46) * 0.35355) + ((v42 + v44) * 0.35355);
    v49 = v30 == 0;
    v51 = v31 && v49;
    if (v31 && v49)
    {
      v50 = v48 * 0.125 + 0.5;
      v48 = v50;
    }

    v52 = v48;
    v53 = (((v40 - v46) * 0.46194) + ((v42 - v44) * 0.19134));
    v54 = ((((v41 * 0.49039) + (v43 * 0.41573)) + (v45 * 0.27779)) + (v47 * 0.097545));
    v55 = ((((v41 * 0.41573) + (v43 * -0.097545)) + (v45 * -0.49039)) + (v47 * -0.27779));
    if (v51)
    {
      if (v52 <= 1)
      {
        v52 = 1;
      }

      if (v52 >= 254)
      {
        LOWORD(v52) = 254;
      }

      *a2 = v52;
      if (a3 < 8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a3 < 8)
      {
        *a2 = v52;
LABEL_15:
        a2[8] = v54;
        a2[16] = v53;
        goto LABEL_18;
      }

      *a2 = *(a8 + v52);
    }

    a2[8] = *(a8 + v54);
    a2[16] = *(a8 + v53);
    LOWORD(v55) = *(a8 + v55);
LABEL_18:
    a2[24] = v55;
    a2[32] = 0;
    a2[40] = 0;
    a2[48] = 0;
    a2[56] = 0;
    ++a2;
    v30 += 4;
  }

  while (v30 != 16);
  result = 0.0;
  *a2 = 0;
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 10) = 0;
  *(a2 + 12) = 0;
  *(a2 + 14) = 0;
  v57 = *MEMORY[0x29EDCA608];
  return result;
}

int32x4_t iRowCol8x8f1S16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v156 = *MEMORY[0x29EDCA608];
  if ((a5 & 0x80000000) != 0)
  {
    v11 = 0;
    v12 = &v140;
LABEL_13:
    bzero(v12, (32 * v11 + 256));
    goto LABEL_14;
  }

  v10 = 0;
  v11 = ~a5;
  v12 = &v140;
  do
  {
    v13 = *a1;
    if (v10)
    {
      v14 = *(a7 + 4 * v13);
      v15 = a8;
    }

    else
    {
      if (a4)
      {
        v14 = v13 << 10;
      }

      else
      {
        v14 = *(a8 + 4 * v13) >> 1;
      }

      v15 = a7;
    }

    v16 = *(v15 + 4 * a1[1]);
    v17 = *(v15 + 4 * a1[2]);
    v18 = *(v15 + 4 * a1[3]);
    v19 = *(v15 + 4 * a1[4]);
    v20 = *(v15 + 4 * a1[5]);
    v21 = *(v15 + 4 * a1[6]);
    v22 = *(v15 + 4 * a1[7]);
    v23 = v16 + v20 - (v18 + v22);
    v24 = 2 * (v20 - v22);
    v25 = v18 - v20;
    v26 = (2896 * v22) >> 10;
    v27 = 2 * v25 - v26;
    v28 = (946 * (v26 + 2 * v25)) >> 10;
    v29 = (0x3FFFFFFFE78 * v27) >> 10;
    v30 = (724 * v24) >> 10;
    v31 = v23 - v30;
    LODWORD(v30) = v23 + v30;
    v32 = v30 + v28;
    v33 = v31 + v29;
    LODWORD(v30) = v30 - v28;
    v34 = (1004 * v32) >> 10;
    v35 = (0x3FFFFFFFCADLL * (v31 - v29)) >> 10;
    v36 = v17 - v21;
    v37 = (1448 * v21) >> 10;
    v38 = v36 - v37;
    v39 = (946 * (v36 + v37)) >> 10;
    v40 = (0x3FFFFFFFE78 * v38) >> 10;
    v41 = (724 * v19) >> 10;
    v42 = v14 - v41;
    v43 = v14 + v41;
    LODWORD(v41) = v43 + v39;
    v44 = v42 - v40;
    v12[1].i32[2] = v42 - v40 + v35;
    v12[1].i32[3] = v43 + v39 - v34;
    v45 = (569 * v33) >> 10;
    v46 = (0x3FFFFFFFF38 * v30) >> 10;
    LODWORD(v40) = v42 + v40;
    v47 = v43 - v39;
    v12[1].i32[0] = v47 + v46;
    v12[1].i32[1] = v40 - v45;
    v12->i32[2] = v40 + v45;
    v12->i32[3] = v47 - v46;
    v12->i32[0] = v41 + v34;
    v12->i32[1] = v44 - v35;
    v12 += 2;
    ++v10;
    a1 += 8;
  }

  while (a5 + 1 != v10);
  if (a5 <= 6)
  {
    goto LABEL_13;
  }

LABEL_14:
  v48 = vsubq_s32(vaddq_s32(v143, v151), vaddq_s32(v147, v155));
  v49 = vsubq_s32(vaddq_s32(v142, v150), vaddq_s32(v146, v154));
  v50 = vsubq_s32(v151, v155);
  v51 = vsubq_s32(v150, v154);
  v52 = vaddq_s32(v51, v51);
  v53 = vaddq_s32(v50, v50);
  v54 = vshlq_n_s32(v155, 2uLL);
  v55 = vshlq_n_s32(v154, 2uLL);
  v56 = vsubq_s32(v147, v151);
  v57 = vsubq_s32(v146, v150);
  v58 = vaddq_s32(v57, v57);
  v59 = vaddq_s32(v56, v56);
  v60 = vdupq_n_s32(0x2D4u);
  v61 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v55.i8, *v60.i8), 0xAuLL), vmull_high_s32(v55, v60), 0xAuLL);
  v62 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v54.i8, *v60.i8), 0xAuLL), vmull_high_s32(v54, v60), 0xAuLL);
  v63 = vsubq_s32(v59, v62);
  v64 = vsubq_s32(v58, v61);
  v65 = vaddq_s32(v59, v62);
  v66 = vaddq_s32(v58, v61);
  v67 = vdupq_n_s32(0x3B2u);
  v68 = vmull_high_s32(v65, v67);
  v69 = vmull_s32(*v65.i8, *v67.i8);
  v70 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v66.i8, *v67.i8), 0xAuLL), vmull_high_s32(v66, v67), 0xAuLL);
  v71 = vshrn_high_n_s64(vshrn_n_s64(v69, 0xAuLL), v68, 0xAuLL);
  v72.i64[0] = v64.i32[0];
  v72.i64[1] = v64.i32[1];
  v73 = v72;
  v72.i64[0] = v64.i32[2];
  v72.i64[1] = v64.i32[3];
  v74 = v72;
  v72.i64[0] = v63.i32[0];
  v72.i64[1] = v63.i32[1];
  v63.i64[0] = 0x3FFFFFFFE78 * v63.i32[2];
  v63.i64[1] = 0x3FFFFFFFE78 * v63.i32[3];
  v64.i64[0] = 0x3FFFFFFFE78 * v72.i64[0];
  v64.i64[1] = 0x3FFFFFFFE78 * v72.i64[1];
  v74.i64[0] *= 0x3FFFFFFFE78;
  v74.i64[1] *= 0x3FFFFFFFE78;
  v73.i64[0] *= 0x3FFFFFFFE78;
  v73.i64[1] *= 0x3FFFFFFFE78;
  v75 = vshrn_high_n_s64(vshrn_n_s64(v73, 0xAuLL), v74, 0xAuLL);
  v76 = vshrn_high_n_s64(vshrn_n_s64(v64, 0xAuLL), v63, 0xAuLL);
  v77 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v53.i8, *v60.i8), 0xAuLL), vmull_high_s32(v53, v60), 0xAuLL);
  v78 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v52.i8, *v60.i8), 0xAuLL), vmull_high_s32(v52, v60), 0xAuLL);
  v79 = vsubq_s32(v49, v78);
  v80 = vsubq_s32(v48, v77);
  v81 = vaddq_s32(v49, v78);
  v82 = vaddq_s32(v48, v77);
  v83 = vaddq_s32(v82, v71);
  v84 = vaddq_s32(v81, v70);
  v85 = vaddq_s32(v80, v76);
  v86 = vaddq_s32(v79, v75);
  v87 = vsubq_s32(v82, v71);
  v88 = vsubq_s32(v81, v70);
  v89 = vsubq_s32(v80, v76);
  v90 = vsubq_s32(v79, v75);
  v91 = vdupq_n_s32(0x3ECu);
  v92 = vmull_high_s32(v83, v91);
  v93 = vmull_s32(*v83.i8, *v91.i8);
  v94 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v84.i8, *v91.i8), 0xAuLL), vmull_high_s32(v84, v91), 0xAuLL);
  v95 = vshrn_high_n_s64(vshrn_n_s64(v93, 0xAuLL), v92, 0xAuLL);
  v96 = vdupq_n_s32(0x239u);
  v97 = vmull_high_s32(v85, v96);
  v98 = vmull_s32(*v85.i8, *v96.i8);
  v99 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v86.i8, *v96.i8), 0xAuLL), vmull_high_s32(v86, v96), 0xAuLL);
  v100 = vshrn_high_n_s64(vshrn_n_s64(v98, 0xAuLL), v97, 0xAuLL);
  v72.i64[1] = v88.i32[1];
  v75.i64[0] = 0x3FFFFFFFF38 * v87.i32[2];
  v75.i64[1] = 0x3FFFFFFFF38 * v87.i32[3];
  v101 = 0x3FFFFFFFF38 * v87.i32[1];
  v87.i64[0] = 0x3FFFFFFFF38 * v87.i32[0];
  v87.i64[1] = v101;
  v85.i64[0] = 0x3FFFFFFFF38 * v88.i32[2];
  v85.i64[1] = 0x3FFFFFFFF38 * v88.i32[3];
  v88.i64[0] = 0x3FFFFFFFF38 * v88.i32[0];
  v88.i64[1] = 0x3FFFFFFFF38 * v72.i64[1];
  v102 = vshrn_high_n_s64(vshrn_n_s64(v88, 0xAuLL), v85, 0xAuLL);
  v103 = vshrn_high_n_s64(vshrn_n_s64(v87, 0xAuLL), v75, 0xAuLL);
  v72.i64[0] = v90.i32[0];
  v72.i64[1] = v90.i32[1];
  v75.i64[0] = 0x3FFFFFFFCADLL * v89.i32[2];
  v75.i64[1] = 0x3FFFFFFFCADLL * v89.i32[3];
  v85.i64[0] = 0x3FFFFFFFCADLL * v89.i32[0];
  v85.i64[1] = 0x3FFFFFFFCADLL * v89.i32[1];
  v90.i64[0] = 0x3FFFFFFFCADLL * v90.i32[2];
  v90.i64[1] = 0x3FFFFFFFCADLL * v90.i32[3];
  v89.i64[0] = 0x3FFFFFFFCADLL * v72.i64[0];
  v89.i64[1] = 0x3FFFFFFFCADLL * v72.i64[1];
  v104 = vshrn_high_n_s64(vshrn_n_s64(v89, 0xAuLL), v90, 0xAuLL);
  v105 = vshrn_high_n_s64(vshrn_n_s64(v85, 0xAuLL), v75, 0xAuLL);
  v106 = vsubq_s32(v144, v152);
  v107 = vsubq_s32(v145, v153);
  v108 = vaddq_s32(v153, v153);
  v109 = vaddq_s32(v152, v152);
  v110 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v109.i8, *v60.i8), 0xAuLL), vmull_high_s32(v109, v60), 0xAuLL);
  v111 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v108.i8, *v60.i8), 0xAuLL), vmull_high_s32(v108, v60), 0xAuLL);
  v112 = vsubq_s32(v107, v111);
  v113 = vsubq_s32(v106, v110);
  v114 = vaddq_s32(v107, v111);
  v115 = vaddq_s32(v106, v110);
  v116 = vmull_high_s32(v114, v67);
  v117 = vmull_s32(*v114.i8, *v67.i8);
  v118 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v115.i8, *v67.i8), 0xAuLL), vmull_high_s32(v115, v67), 0xAuLL);
  v119 = vshrn_high_n_s64(vshrn_n_s64(v117, 0xAuLL), v116, 0xAuLL);
  v72.i64[0] = v113.i32[0];
  v72.i64[1] = v113.i32[1];
  v120 = v72;
  v72.i64[0] = v113.i32[2];
  v72.i64[1] = v113.i32[3];
  v121 = v72;
  v72.i64[0] = v112.i32[0];
  v72.i64[1] = v112.i32[1];
  v112.i64[0] = 0x3FFFFFFFE78 * v112.i32[2];
  v112.i64[1] = 0x3FFFFFFFE78 * v112.i32[3];
  v67.i64[0] = 0x3FFFFFFFE78 * v72.i64[0];
  v67.i64[1] = 0x3FFFFFFFE78 * v72.i64[1];
  v121.i64[0] *= 0x3FFFFFFFE78;
  v121.i64[1] *= 0x3FFFFFFFE78;
  v120.i64[0] *= 0x3FFFFFFFE78;
  v120.i64[1] *= 0x3FFFFFFFE78;
  v122 = vshrn_high_n_s64(vshrn_n_s64(v120, 0xAuLL), v121, 0xAuLL);
  v123 = vshrn_high_n_s64(vshrn_n_s64(v67, 0xAuLL), v112, 0xAuLL);
  v124 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v149.i8, *v60.i8), 0xAuLL), vmull_high_s32(v149, v60), 0xAuLL);
  v125 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v148.i8, *v60.i8), 0xAuLL), vmull_high_s32(v148, v60), 0xAuLL);
  v126 = vsubq_s32(v140, v125);
  v127 = vsubq_s32(v141, v124);
  v128 = vaddq_s32(v140, v125);
  v129 = vaddq_s32(v141, v124);
  v124.i64[0] = 0x20000000200;
  v124.i64[1] = 0x20000000200;
  v130 = vaddq_s32(vaddq_s32(v128, v124), v118);
  v131 = vaddq_s32(vaddq_s32(v129, v124), v119);
  v132 = vaddq_s32(vaddq_s32(v126, v124), v122);
  v133 = vaddq_s32(vaddq_s32(v127, v124), v123);
  v134 = vaddq_s32(vsubq_s32(v128, v118), v124);
  v135 = vaddq_s32(vsubq_s32(v129, v119), v124);
  v136 = vaddq_s32(vsubq_s32(v126, v122), v124);
  v137 = vaddq_s32(vsubq_s32(v127, v123), v124);
  a2[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v136, v104), 0xAuLL), vaddq_s32(v137, v105), 0xAuLL);
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v130, v94), 0xAuLL), vsubq_s32(v131, v95), 0xAuLL);
  a2[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v134, v102), 0xAuLL), vaddq_s32(v135, v103), 0xAuLL);
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v132, v99), 0xAuLL), vsubq_s32(v133, v100), 0xAuLL);
  a2[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v132, v99), 0xAuLL), vaddq_s32(v133, v100), 0xAuLL);
  a2[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v134, v102), 0xAuLL), vsubq_s32(v135, v103), 0xAuLL);
  result = vsubq_s32(v137, v105);
  *a2 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v130, v94), 0xAuLL), vaddq_s32(v131, v95), 0xAuLL);
  a2[1] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v136, v104), 0xAuLL), result, 0xAuLL);
  v139 = *MEMORY[0x29EDCA608];
  return result;
}

int16x8_t iRowCol4x8f1S16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = *MEMORY[0x29EDCA608];
  if ((a5 & 0x80000000) != 0)
  {
    v11 = 0;
    v12 = &v100;
LABEL_13:
    bzero(v12, (32 * v11 + 256));
    goto LABEL_14;
  }

  v10 = 0;
  v11 = ~a5;
  v12 = &v100;
  do
  {
    v13 = *a1;
    if (v10)
    {
      v14 = *(a7 + 4 * v13);
      v15 = a8;
    }

    else
    {
      if (a4)
      {
        v14 = v13 << 10;
      }

      else
      {
        v14 = *(a8 + 4 * v13) >> 1;
      }

      v15 = a7;
    }

    v16 = *(v15 + 4 * a1[1]);
    v17 = *(v15 + 4 * a1[2]);
    v18 = *(v15 + 4 * a1[3]);
    v19 = *(v15 + 4 * a1[4]);
    v20 = *(v15 + 4 * a1[7]);
    v21 = *(v15 + 4 * a1[6]);
    v22 = *(v15 + 4 * a1[5]);
    v23 = v16 - (v18 + v20) + v22;
    v24 = 2 * (v22 - v20);
    v25 = v18 - v22;
    v26 = (2896 * v20) >> 10;
    v27 = 2 * v25 - v26;
    v28 = (946 * (v26 + 2 * v25)) >> 10;
    v29 = (0x3FFFFFFFE78 * v27) >> 10;
    v30 = (724 * v24) >> 10;
    v31 = v23 - v30;
    LODWORD(v30) = v23 + v30;
    v32 = v30 + v28;
    v33 = v31 + v29;
    LODWORD(v30) = v30 - v28;
    v34 = (1004 * v32) >> 10;
    v35 = (0x3FFFFFFFCADLL * (v31 - v29)) >> 10;
    v36 = v17 - v21;
    v37 = (1448 * v21) >> 10;
    v38 = v36 - v37;
    v39 = (946 * (v36 + v37)) >> 10;
    v40 = (0x3FFFFFFFE78 * v38) >> 10;
    v41 = (724 * v19) >> 10;
    v42 = v14 - v41;
    v43 = v14 + v41;
    LODWORD(v41) = v43 + v39;
    v44 = v42 - v40;
    v12[1].i32[2] = v42 - v40 + v35;
    v12[1].i32[3] = v43 + v39 - v34;
    v45 = (569 * v33) >> 10;
    v46 = (0x3FFFFFFFF38 * v30) >> 10;
    LODWORD(v40) = v42 + v40;
    v47 = v43 - v39;
    v12[1].i32[0] = v47 + v46;
    v12[1].i32[1] = v40 - v45;
    v12->i32[2] = v40 + v45;
    v12->i32[3] = v47 - v46;
    v12->i32[0] = v41 + v34;
    v12->i32[1] = v44 - v35;
    v12 += 2;
    ++v10;
    a1 += 8;
  }

  while (a5 + 1 != v10);
  if (a5 <= 6)
  {
    goto LABEL_13;
  }

LABEL_14:
  v48 = vsubq_s32(v102, v106);
  v49 = vsubq_s32(v103, v107);
  v50 = vaddq_s32(v107, v107);
  v51 = vaddq_s32(v106, v106);
  v52.i64[0] = v51.i32[0];
  v52.i64[1] = v51.i32[1];
  v53 = v52;
  v52.i64[0] = v51.i32[2];
  v52.i64[1] = v51.i32[3];
  v54 = v52;
  v52.i64[0] = v50.i32[0];
  v52.i64[1] = v50.i32[1];
  v55 = v52;
  v56 = vdupq_n_s32(0x3B2u);
  v52.i64[0] = v50.i32[2];
  v52.i64[1] = v50.i32[3];
  v57 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v51.i8, *v56.i8), 0xAuLL), vmull_high_s32(v51, v56), 0xAuLL);
  v58 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v50.i8, *v56.i8), 0xAuLL), vmull_high_s32(v50, v56), 0xAuLL);
  v59.i64[0] = 0x3FFFFFFFE78 * v52.i64[0];
  v59.i64[1] = 0x3FFFFFFFE78 * v52.i64[1];
  v55.i64[0] *= 0x3FFFFFFFE78;
  v55.i64[1] *= 0x3FFFFFFFE78;
  v54.i64[0] *= 0x3FFFFFFFE78;
  v54.i64[1] *= 0x3FFFFFFFE78;
  v53.i64[0] *= 0x3FFFFFFFE78;
  v53.i64[1] *= 0x3FFFFFFFE78;
  v60 = vshrn_high_n_s64(vshrn_n_s64(v53, 0xAuLL), v54, 0xAuLL);
  v61 = vshrn_high_n_s64(vshrn_n_s64(v55, 0xAuLL), v59, 0xAuLL);
  v62 = vaddq_s32(v49, v58);
  v63 = vaddq_s32(v48, v57);
  v64 = vaddq_s32(v49, v61);
  v65 = vaddq_s32(v48, v60);
  v66 = vsubq_s32(v49, v58);
  v67 = vsubq_s32(v48, v57);
  v68 = vsubq_s32(v49, v61);
  v69 = vsubq_s32(v48, v60);
  v70 = vdupq_n_s32(0x3ECu);
  v71 = vmull_high_s32(v62, v70);
  v72 = vmull_s32(*v62.i8, *v70.i8);
  v73 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v63.i8, *v70.i8), 0xAuLL), vmull_high_s32(v63, v70), 0xAuLL);
  v74 = vshrn_high_n_s64(vshrn_n_s64(v72, 0xAuLL), v71, 0xAuLL);
  v75 = vdupq_n_s32(0x239u);
  v76 = vmull_high_s32(v64, v75);
  v77 = vmull_s32(*v64.i8, *v75.i8);
  v78 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v65.i8, *v75.i8), 0xAuLL), vmull_high_s32(v65, v75), 0xAuLL);
  v79 = vshrn_high_n_s64(vshrn_n_s64(v77, 0xAuLL), v76, 0xAuLL);
  v62.i64[0] = 0x3FFFFFFFF38 * v66.i32[2];
  v62.i64[1] = 0x3FFFFFFFF38 * v66.i32[3];
  v61.i64[0] = 0x3FFFFFFFF38 * v66.i32[0];
  v61.i64[1] = 0x3FFFFFFFF38 * v66.i32[1];
  v63.i64[0] = 0x3FFFFFFFF38 * v67.i32[2];
  v63.i64[1] = 0x3FFFFFFFF38 * v67.i32[3];
  v76.i64[0] = 0x3FFFFFFFF38 * v67.i32[0];
  v76.i64[1] = 0x3FFFFFFFF38 * v67.i32[1];
  v80 = vshrn_high_n_s64(vshrn_n_s64(v76, 0xAuLL), v63, 0xAuLL);
  v81 = vshrn_high_n_s64(vshrn_n_s64(v61, 0xAuLL), v62, 0xAuLL);
  v52.i64[0] = v69.i32[0];
  v52.i64[1] = v69.i32[1];
  v64.i64[0] = 0x3FFFFFFFCADLL * v68.i32[2];
  v64.i64[1] = 0x3FFFFFFFCADLL * v68.i32[3];
  v63.i64[0] = 0x3FFFFFFFCADLL * v68.i32[0];
  v63.i64[1] = 0x3FFFFFFFCADLL * v68.i32[1];
  v69.i64[0] = 0x3FFFFFFFCADLL * v69.i32[2];
  v69.i64[1] = 0x3FFFFFFFCADLL * v69.i32[3];
  v68.i64[0] = 0x3FFFFFFFCADLL * v52.i64[0];
  v68.i64[1] = 0x3FFFFFFFCADLL * v52.i64[1];
  v82 = vshrn_high_n_s64(vshrn_n_s64(v68, 0xAuLL), v69, 0xAuLL);
  v83 = vshrn_high_n_s64(vshrn_n_s64(v63, 0xAuLL), v64, 0xAuLL);
  v84 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v105.i8, *v56.i8), 0xAuLL), vmull_high_s32(v105, v56), 0xAuLL);
  v85 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v104.i8, *v56.i8), 0xAuLL), vmull_high_s32(v104, v56), 0xAuLL);
  v56.i64[0] = 0x3FFFFFFFE78 * v104.i32[2];
  v56.i64[1] = 0x3FFFFFFFE78 * v104.i32[3];
  v64.i64[0] = 0x3FFFFFFFE78 * v104.i32[0];
  v64.i64[1] = 0x3FFFFFFFE78 * v104.i32[1];
  v63.i64[0] = 0x3FFFFFFFE78 * v105.i32[2];
  v63.i64[1] = 0x3FFFFFFFE78 * v105.i32[3];
  v62.i64[0] = 0x3FFFFFFFE78 * v105.i32[0];
  v62.i64[1] = 0x3FFFFFFFE78 * v105.i32[1];
  v86 = vshrn_high_n_s64(vshrn_n_s64(v62, 0xAuLL), v63, 0xAuLL);
  v87 = vshrn_high_n_s64(vshrn_n_s64(v64, 0xAuLL), v56, 0xAuLL);
  v56.i64[0] = 0x20000000200;
  v56.i64[1] = 0x20000000200;
  v88 = vaddq_s32(v101, v56);
  v89 = vaddq_s32(v100, v56);
  v90 = vaddq_s32(v89, v85);
  v91 = vaddq_s32(v88, v84);
  v92 = vaddq_s32(v89, v87);
  v93 = vaddq_s32(v88, v86);
  v94 = vaddq_s32(vsubq_s32(v100, v85), v56);
  v95 = vaddq_s32(vsubq_s32(v101, v84), v56);
  v96 = vaddq_s32(vsubq_s32(v100, v87), v56);
  v97 = vaddq_s32(vsubq_s32(v101, v86), v56);
  a2[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v96, v82), 0xAuLL), vaddq_s32(v97, v83), 0xAuLL);
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v90, v73), 0xAuLL), vsubq_s32(v91, v74), 0xAuLL);
  a2[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v94, v80), 0xAuLL), vaddq_s32(v95, v81), 0xAuLL);
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v92, v78), 0xAuLL), vsubq_s32(v93, v79), 0xAuLL);
  a2[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v92, v78), 0xAuLL), vaddq_s32(v93, v79), 0xAuLL);
  a2[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v94, v80), 0xAuLL), vsubq_s32(v95, v81), 0xAuLL);
  result = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v96, v82), 0xAuLL), vsubq_s32(v97, v83), 0xAuLL);
  *a2 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v90, v73), 0xAuLL), vaddq_s32(v91, v74), 0xAuLL);
  a2[1] = result;
  v99 = *MEMORY[0x29EDCA608];
  return result;
}

int16x8_t iRowCol4x4f1S16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x29EDCA608];
  if ((a5 & 0x80000000) != 0)
  {
    v11 = 0;
    v12 = &v86;
LABEL_13:
    bzero(v12, (32 * v11 + 128));
    goto LABEL_14;
  }

  v10 = 0;
  v11 = ~a5;
  v12 = &v86;
  do
  {
    v13 = *a1;
    if (v10)
    {
      v14 = *(a7 + 4 * v13);
      v15 = a8;
    }

    else
    {
      if (a4)
      {
        v14 = v13 << 10;
      }

      else
      {
        v14 = *(a8 + 4 * v13) >> 1;
      }

      v15 = a7;
    }

    v16 = *(v15 + 4 * a1[3]);
    v17 = *(v15 + 4 * a1[2]);
    v18 = *(v15 + 4 * a1[1]) - v16;
    v19 = 2 * v16;
    v20 = (946 * v19) >> 10;
    v21 = (0x3FFFFFFFE78 * v19) >> 10;
    v22 = v18 + v20;
    v23 = v18 + v21;
    LODWORD(v20) = v18 - v20;
    v24 = v18 - v21;
    v25 = (1004 * v22) >> 10;
    v26 = (569 * v23) >> 10;
    v27 = (0x3FFFFFFFF38 * v20) >> 10;
    v28 = (0x3FFFFFFFCADLL * v24) >> 10;
    v29 = (946 * v17) >> 10;
    v30 = (0x3FFFFFFFE78 * v17) >> 10;
    v31 = v14 + v29;
    v32 = v14 - v30;
    v12[1].i32[2] = v14 - v30 + v28;
    v12[1].i32[3] = v14 + v29 - v25;
    LODWORD(v30) = v14 + v30;
    v33 = v14 - v29;
    v12[1].i32[0] = v33 + v27;
    v12[1].i32[1] = v30 - v26;
    v12->i32[2] = v30 + v26;
    v12->i32[3] = v33 - v27;
    v12->i32[0] = v31 + v25;
    v12->i32[1] = v32 - v28;
    v12 += 2;
    ++v10;
    a1 += 8;
  }

  while (a5 + 1 != v10);
  if (a5 <= 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v34 = vsubq_s32(v88, v92);
  v35 = vsubq_s32(v89, v93);
  v36 = vaddq_s32(v93, v93);
  v37 = vaddq_s32(v92, v92);
  v38.i64[0] = v37.i32[0];
  v38.i64[1] = v37.i32[1];
  v39 = v38;
  v38.i64[0] = v37.i32[2];
  v38.i64[1] = v37.i32[3];
  v40 = v38;
  v38.i64[0] = v36.i32[0];
  v38.i64[1] = v36.i32[1];
  v41 = v38;
  v42 = vdupq_n_s32(0x3B2u);
  v38.i64[0] = v36.i32[2];
  v38.i64[1] = v36.i32[3];
  v43 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v37.i8, *v42.i8), 0xAuLL), vmull_high_s32(v37, v42), 0xAuLL);
  v44 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v36.i8, *v42.i8), 0xAuLL), vmull_high_s32(v36, v42), 0xAuLL);
  v45.i64[0] = 0x3FFFFFFFE78 * v38.i64[0];
  v45.i64[1] = 0x3FFFFFFFE78 * v38.i64[1];
  v41.i64[0] *= 0x3FFFFFFFE78;
  v41.i64[1] *= 0x3FFFFFFFE78;
  v40.i64[0] *= 0x3FFFFFFFE78;
  v40.i64[1] *= 0x3FFFFFFFE78;
  v39.i64[0] *= 0x3FFFFFFFE78;
  v39.i64[1] *= 0x3FFFFFFFE78;
  v46 = vshrn_high_n_s64(vshrn_n_s64(v39, 0xAuLL), v40, 0xAuLL);
  v47 = vshrn_high_n_s64(vshrn_n_s64(v41, 0xAuLL), v45, 0xAuLL);
  v48 = vaddq_s32(v35, v44);
  v49 = vaddq_s32(v34, v43);
  v50 = vaddq_s32(v35, v47);
  v51 = vaddq_s32(v34, v46);
  v52 = vsubq_s32(v35, v44);
  v53 = vsubq_s32(v34, v43);
  v54 = vsubq_s32(v35, v47);
  v55 = vsubq_s32(v34, v46);
  v56 = vdupq_n_s32(0x3ECu);
  v57 = vmull_high_s32(v48, v56);
  v58 = vmull_s32(*v48.i8, *v56.i8);
  v59 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v49.i8, *v56.i8), 0xAuLL), vmull_high_s32(v49, v56), 0xAuLL);
  v60 = vshrn_high_n_s64(vshrn_n_s64(v58, 0xAuLL), v57, 0xAuLL);
  v61 = vdupq_n_s32(0x239u);
  v62 = vmull_high_s32(v50, v61);
  v63 = vmull_s32(*v50.i8, *v61.i8);
  v64 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v51.i8, *v61.i8), 0xAuLL), vmull_high_s32(v51, v61), 0xAuLL);
  v65 = vshrn_high_n_s64(vshrn_n_s64(v63, 0xAuLL), v62, 0xAuLL);
  v48.i64[0] = 0x3FFFFFFFF38 * v52.i32[2];
  v48.i64[1] = 0x3FFFFFFFF38 * v52.i32[3];
  v47.i64[0] = 0x3FFFFFFFF38 * v52.i32[0];
  v47.i64[1] = 0x3FFFFFFFF38 * v52.i32[1];
  v49.i64[0] = 0x3FFFFFFFF38 * v53.i32[2];
  v49.i64[1] = 0x3FFFFFFFF38 * v53.i32[3];
  v62.i64[0] = 0x3FFFFFFFF38 * v53.i32[0];
  v62.i64[1] = 0x3FFFFFFFF38 * v53.i32[1];
  v66 = vshrn_high_n_s64(vshrn_n_s64(v62, 0xAuLL), v49, 0xAuLL);
  v67 = vshrn_high_n_s64(vshrn_n_s64(v47, 0xAuLL), v48, 0xAuLL);
  v38.i64[0] = v55.i32[0];
  v38.i64[1] = v55.i32[1];
  v50.i64[0] = 0x3FFFFFFFCADLL * v54.i32[2];
  v50.i64[1] = 0x3FFFFFFFCADLL * v54.i32[3];
  v49.i64[0] = 0x3FFFFFFFCADLL * v54.i32[0];
  v49.i64[1] = 0x3FFFFFFFCADLL * v54.i32[1];
  v55.i64[0] = 0x3FFFFFFFCADLL * v55.i32[2];
  v55.i64[1] = 0x3FFFFFFFCADLL * v55.i32[3];
  v54.i64[0] = 0x3FFFFFFFCADLL * v38.i64[0];
  v54.i64[1] = 0x3FFFFFFFCADLL * v38.i64[1];
  v68 = vshrn_high_n_s64(vshrn_n_s64(v54, 0xAuLL), v55, 0xAuLL);
  v69 = vshrn_high_n_s64(vshrn_n_s64(v49, 0xAuLL), v50, 0xAuLL);
  v70 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v91.i8, *v42.i8), 0xAuLL), vmull_high_s32(v91, v42), 0xAuLL);
  v71 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v90.i8, *v42.i8), 0xAuLL), vmull_high_s32(v90, v42), 0xAuLL);
  v42.i64[0] = 0x3FFFFFFFE78 * v90.i32[2];
  v42.i64[1] = 0x3FFFFFFFE78 * v90.i32[3];
  v50.i64[0] = 0x3FFFFFFFE78 * v90.i32[0];
  v50.i64[1] = 0x3FFFFFFFE78 * v90.i32[1];
  v49.i64[0] = 0x3FFFFFFFE78 * v91.i32[2];
  v49.i64[1] = 0x3FFFFFFFE78 * v91.i32[3];
  v48.i64[0] = 0x3FFFFFFFE78 * v91.i32[0];
  v48.i64[1] = 0x3FFFFFFFE78 * v91.i32[1];
  v72 = vshrn_high_n_s64(vshrn_n_s64(v48, 0xAuLL), v49, 0xAuLL);
  v73 = vshrn_high_n_s64(vshrn_n_s64(v50, 0xAuLL), v42, 0xAuLL);
  v42.i64[0] = 0x20000000200;
  v42.i64[1] = 0x20000000200;
  v74 = vaddq_s32(v87, v42);
  v75 = vaddq_s32(v86, v42);
  v76 = vaddq_s32(v75, v71);
  v77 = vaddq_s32(v74, v70);
  v78 = vaddq_s32(v75, v73);
  v79 = vaddq_s32(v74, v72);
  v80 = vaddq_s32(vsubq_s32(v86, v71), v42);
  v81 = vaddq_s32(vsubq_s32(v87, v70), v42);
  v82 = vaddq_s32(vsubq_s32(v86, v73), v42);
  v83 = vaddq_s32(vsubq_s32(v87, v72), v42);
  a2[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v82, v68), 0xAuLL), vaddq_s32(v83, v69), 0xAuLL);
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v76, v59), 0xAuLL), vsubq_s32(v77, v60), 0xAuLL);
  a2[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v80, v66), 0xAuLL), vaddq_s32(v81, v67), 0xAuLL);
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v78, v64), 0xAuLL), vsubq_s32(v79, v65), 0xAuLL);
  a2[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v78, v64), 0xAuLL), vaddq_s32(v79, v65), 0xAuLL);
  a2[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v80, v66), 0xAuLL), vsubq_s32(v81, v67), 0xAuLL);
  result = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v82, v68), 0xAuLL), vsubq_s32(v83, v69), 0xAuLL);
  *a2 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v76, v59), 0xAuLL), vaddq_s32(v77, v60), 0xAuLL);
  a2[1] = result;
  v85 = *MEMORY[0x29EDCA608];
  return result;
}

int32x4_t iRowCol1x3fS16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  if (a4)
  {
    v7 = v6 << 10;
  }

  else
  {
    v7 = *(a6 + 4 * v6) >> 1;
  }

  v8 = *(a5 + 4 * a1[2]);
  v9 = *(a5 + 4 * a1[1]);
  v10 = (1004 * v9) >> 10;
  v11 = (569 * v9) >> 10;
  v12 = (0x3FFFFFFFF38 * v9) >> 10;
  v13 = (0x3FFFFFFFCADLL * v9) >> 10;
  v14 = (946 * v8) >> 10;
  v15 = (0x3FFFFFFFE78 * v8) >> 10;
  v16 = v7 + v14;
  v17 = v7 + v15;
  LODWORD(v14) = v7 - v14;
  v18 = v7 - v15;
  result.i32[0] = v14 + v12;
  result.i32[1] = v17 - v11;
  result.i32[2] = v18 + v13;
  result.i32[3] = v16 - v10;
  v20.i32[0] = v16 + v10;
  v20.i32[1] = v18 - v13;
  v20.i32[2] = v17 + v11;
  v20.i32[3] = v14 - v12;
  v21 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xAuLL), result, 0xAuLL);
  a2[6] = v21;
  a2[7] = v21;
  a2[4] = v21;
  a2[5] = v21;
  a2[2] = v21;
  a2[3] = v21;
  *a2 = v21;
  a2[1] = v21;
  return result;
}

unint64_t iColRow8x8f1S16(uint64_t a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v81 = *MEMORY[0x29EDCA608];
  if ((a6 & 0x80000000) != 0)
  {
    v10 = 0;
    v12 = v80;
LABEL_13:
    v46 = v10 - 8;
    do
    {
      *v12 = 0;
      v12[16] = 0;
      v12[32] = 0;
      v12[48] = 0;
      v12[56] = 0;
      v12[40] = 0;
      v12[24] = 0;
      v12[8] = 0;
      ++v12;
    }

    while (!__CFADD__(v46++, 1));
    goto LABEL_16;
  }

  v8 = 0;
  v10 = a6 + 1;
  v11 = a6 + 1;
  v12 = v80;
  do
  {
    v13 = (a1 + 2 * v8);
    v14 = *v13;
    if (v8)
    {
      v15 = *(a7 + 4 * v14);
      v16 = a8;
    }

    else
    {
      if (a4)
      {
        v15 = v14 << 10;
      }

      else
      {
        v15 = *(a8 + 4 * v14) >> 1;
      }

      v16 = a7;
    }

    v17 = v13[40];
    v18 = v13[48];
    v19 = v13[56];
    v20 = *(v16 + 4 * v13[8]);
    v21 = *(v16 + 4 * v13[16]);
    v22 = *(v16 + 4 * v13[24]);
    v23 = *(v16 + 4 * v13[32]);
    v24 = *(v16 + 4 * v17);
    LODWORD(v17) = *(v16 + 4 * v18);
    v25 = *(v16 + 4 * v19);
    v26 = v20 + v24 - (v22 + v25);
    LODWORD(v18) = 2 * (v24 - v25);
    v27 = v22 - v24;
    v28 = (2896 * v25) >> 10;
    v29 = 2 * v27 - v28;
    v30 = (946 * (v28 + 2 * v27)) >> 10;
    v31 = (0x3FFFFFFFE78 * v29) >> 10;
    v32 = (724 * v18) >> 10;
    LODWORD(v18) = v26 - v32;
    v33 = v26 + v32;
    LODWORD(v32) = v33 + v30;
    LODWORD(v19) = v18 + v31;
    LODWORD(v30) = v33 - v30;
    v34 = v18 - v31;
    v35 = (1004 * v32) >> 10;
    v36 = (569 * v19) >> 10;
    v37 = v21 - v17;
    v38 = (1448 * v17) >> 10;
    LODWORD(v18) = v37 - v38;
    v39 = (946 * (v37 + v38)) >> 10;
    v40 = (0x3FFFFFFFE78 * v18) >> 10;
    v41 = (724 * v23) >> 10;
    LODWORD(v18) = v15 - v41;
    v42 = v15 + v41;
    LODWORD(v41) = v42 + v39;
    *v12 = v42 + v39 + v35;
    v12[16] = v18 + v40 + v36;
    v43 = (0x3FFFFFFFF38 * v30) >> 10;
    v44 = (0x3FFFFFFFCADLL * v34) >> 10;
    v45 = v42 - v39;
    v12[32] = v45 + v43;
    v12[48] = v18 - v40 + v44;
    v12[56] = v41 - v35;
    v12[40] = v18 + v40 - v36;
    v12[24] = v45 - v43;
    v12[8] = v18 - v40 - v44;
    ++v12;
    ++v8;
  }

  while (v11 != v8);
  if (a6 <= 6)
  {
    goto LABEL_13;
  }

LABEL_16:
  v48 = 0;
  do
  {
    v49 = *&v80[v48];
    v50 = *&v80[v48 + 12];
    v51 = *&v80[v48 + 20];
    v53 = *&v80[v48 + 24];
    v52 = *&v80[v48 + 28];
    v54 = *&v80[v48 + 4] + v51 - (v50 + v52);
    v55 = 2 * (v51 - v52);
    v56 = v50 - v51;
    v57 = (2896 * v52) >> 10;
    v58 = 2 * v56 - v57;
    v59 = (946 * (v57 + 2 * v56)) >> 10;
    v60 = (0x3FFFFFFFE78 * v58) >> 10;
    v61 = (724 * v55) >> 10;
    v62 = v54 - v61;
    v63 = v54 + v61;
    v64 = v63 - v59;
    result = (1004 * (v63 + v59)) >> 10;
    v66 = (569 * (v62 + v60)) >> 10;
    v67 = (0x3FFFFFFFF38 * v64) >> 10;
    v68 = (0x3FFFFFFFCADLL * (v62 - v60)) >> 10;
    v69 = *&v80[v48 + 8] - v53;
    v70 = (1448 * v53) >> 10;
    v71 = v69 - v70;
    v72 = (946 * (v69 + v70)) >> 10;
    v73 = (0x3FFFFFFFE78 * v71) >> 10;
    v74 = (724 * *&v80[v48 + 16]) >> 10;
    v75 = v49 - v74;
    v76 = v49 + v74;
    LODWORD(v74) = v76 + v72 + 512;
    v77 = v75 + v73 + 512;
    v78 = v76 - v72 + 512;
    LODWORD(v72) = v75 - v73 + 512;
    *a2 = (v74 + result) >> 10;
    a2[2] = (v77 + v66) >> 10;
    a2[4] = (v78 + v67) >> 10;
    a2[6] = (v72 + v68) >> 10;
    a2[7] = (v74 - result) >> 10;
    a2[5] = (v77 - v66) >> 10;
    a2[3] = (v78 - v67) >> 10;
    a2[1] = (v72 - v68) >> 10;
    a2 += 8;
    v48 += 32;
  }

  while (v48 != 256);
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t iColRow8x4fS16(uint64_t a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v71 = *MEMORY[0x29EDCA608];
  if ((a6 & 0x80000000) != 0)
  {
    v10 = 0;
    v12 = v70;
LABEL_13:
    v46 = v10 - 8;
    do
    {
      *v12 = 0;
      v12[16] = 0;
      v12[32] = 0;
      v12[48] = 0;
      v12[56] = 0;
      v12[40] = 0;
      v12[24] = 0;
      v12[8] = 0;
      ++v12;
    }

    while (!__CFADD__(v46++, 1));
    goto LABEL_16;
  }

  v8 = 0;
  v10 = a6 + 1;
  v11 = a6 + 1;
  v12 = v70;
  do
  {
    v13 = (a1 + 2 * v8);
    v14 = *v13;
    if (v8)
    {
      v15 = *(a7 + 4 * v14);
      v16 = a8;
    }

    else
    {
      if (a4)
      {
        v15 = v14 << 10;
      }

      else
      {
        v15 = *(a8 + 4 * v14) >> 1;
      }

      v16 = a7;
    }

    v17 = v13[40];
    v18 = v13[48];
    v19 = v13[56];
    v20 = *(v16 + 4 * v13[8]);
    v21 = *(v16 + 4 * v13[16]);
    v22 = *(v16 + 4 * v13[24]);
    v23 = *(v16 + 4 * v13[32]);
    v24 = *(v16 + 4 * v19);
    LODWORD(v18) = *(v16 + 4 * v18);
    v25 = *(v16 + 4 * v17);
    v26 = v20 - (v22 + v24) + v25;
    LODWORD(v17) = 2 * (v25 - v24);
    v27 = v22 - v25;
    v28 = (2896 * v24) >> 10;
    v29 = 2 * v27 - v28;
    v30 = (946 * (v28 + 2 * v27)) >> 10;
    v31 = (0x3FFFFFFFE78 * v29) >> 10;
    v32 = (724 * v17) >> 10;
    LODWORD(v17) = v26 - v32;
    v33 = v26 + v32;
    LODWORD(v32) = v33 + v30;
    LODWORD(v19) = v17 + v31;
    LODWORD(v30) = v33 - v30;
    v34 = v17 - v31;
    v35 = (1004 * v32) >> 10;
    v36 = (569 * v19) >> 10;
    v37 = v21 - v18;
    v38 = (1448 * v18) >> 10;
    LODWORD(v18) = v37 - v38;
    v39 = (946 * (v37 + v38)) >> 10;
    v40 = (0x3FFFFFFFE78 * v18) >> 10;
    v41 = (724 * v23) >> 10;
    LODWORD(v18) = v15 - v41;
    v42 = v15 + v41;
    LODWORD(v41) = v42 + v39;
    *v12 = v42 + v39 + v35;
    v12[16] = v18 + v40 + v36;
    v43 = (0x3FFFFFFFF38 * v30) >> 10;
    v44 = (0x3FFFFFFFCADLL * v34) >> 10;
    v45 = v42 - v39;
    v12[32] = v45 + v43;
    v12[48] = v18 - v40 + v44;
    v12[56] = v41 - v35;
    v12[40] = v18 + v40 - v36;
    v12[24] = v45 - v43;
    v12[8] = v18 - v40 - v44;
    ++v12;
    ++v8;
  }

  while (v11 != v8);
  if (a6 <= 6)
  {
    goto LABEL_13;
  }

LABEL_16:
  v48 = 0;
  do
  {
    v49 = *&v70[v48];
    v50 = *&v70[v48 + 12];
    v51 = *&v70[v48 + 8];
    v52 = *&v70[v48 + 4] - v50;
    v53 = 2 * v50;
    v54 = (946 * v53) >> 10;
    v55 = (0x3FFFFFFFE78 * v53) >> 10;
    v56 = v52 + v54;
    v57 = v52 + v55;
    LODWORD(v54) = v52 - v54;
    v58 = v52 - v55;
    v59 = (1004 * v56) >> 10;
    v60 = (569 * v57) >> 10;
    v61 = (0x3FFFFFFFF38 * v54) >> 10;
    v62 = (0x3FFFFFFFCADLL * v58) >> 10;
    v63 = (946 * v51) >> 10;
    v64 = (0x3FFFFFFFE78 * v51) >> 10;
    v65 = v49 + 512 + v63;
    v66 = v49 + 512 + v64;
    LODWORD(v63) = v49 - v63 + 512;
    v67 = v49 - v64 + 512;
    *a2 = (v65 + v59) >> 10;
    a2[2] = (v66 + v60) >> 10;
    a2[4] = (v63 + v61) >> 10;
    a2[6] = (v67 + v62) >> 10;
    a2[7] = (v65 - v59) >> 10;
    result = (v66 - v60) >> 10;
    a2[5] = result;
    a2[3] = (v63 - v61) >> 10;
    a2[1] = (v67 - v62) >> 10;
    a2 += 8;
    v48 += 32;
  }

  while (v48 != 256);
  v69 = *MEMORY[0x29EDCA608];
  return result;
}

double iDct8x8fS16(uint64_t a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= a6)
  {
    *&result = iRowCol8x8f1S16(a1, a2, a3, a4, a5, a6, a7, a8).u64[0];
  }

  else
  {
    iColRow8x8f1S16(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

_WORD *ZigZagBlockS16(_WORD *result, _WORD *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[8];
  a2[3] = result[16];
  a2[4] = result[9];
  a2[5] = result[2];
  a2[6] = result[3];
  a2[7] = result[10];
  a2[8] = result[17];
  a2[9] = result[24];
  a2[10] = result[32];
  a2[11] = result[25];
  a2[12] = result[18];
  a2[13] = result[11];
  a2[14] = result[4];
  a2[15] = result[5];
  a2[16] = result[12];
  a2[17] = result[19];
  a2[18] = result[26];
  a2[19] = result[33];
  a2[20] = result[40];
  a2[21] = result[48];
  a2[22] = result[41];
  a2[23] = result[34];
  a2[24] = result[27];
  a2[25] = result[20];
  a2[26] = result[13];
  a2[27] = result[6];
  a2[28] = result[7];
  a2[29] = result[14];
  a2[30] = result[21];
  a2[31] = result[28];
  a2[32] = result[35];
  a2[33] = result[42];
  a2[34] = result[49];
  a2[35] = result[56];
  a2[36] = result[57];
  a2[37] = result[50];
  a2[38] = result[43];
  a2[39] = result[36];
  a2[40] = result[29];
  a2[41] = result[22];
  a2[42] = result[15];
  a2[43] = result[23];
  a2[44] = result[30];
  a2[45] = result[37];
  a2[46] = result[44];
  a2[47] = result[51];
  a2[48] = result[58];
  a2[49] = result[59];
  a2[50] = result[52];
  a2[51] = result[45];
  a2[52] = result[38];
  a2[53] = result[31];
  a2[54] = result[39];
  a2[55] = result[46];
  a2[56] = result[53];
  a2[57] = result[60];
  a2[58] = result[61];
  a2[59] = result[54];
  a2[60] = result[47];
  a2[61] = result[55];
  a2[62] = result[62];
  a2[63] = result[63];
  return result;
}

_WORD *ZigZag4x4BlockS16(_WORD *result, uint64_t a2)
{
  *a2 = *result;
  *(a2 + 2) = result[1];
  *(a2 + 4) = result[8];
  *(a2 + 6) = result[16];
  *(a2 + 8) = result[9];
  *(a2 + 10) = result[2];
  *(a2 + 12) = result[3];
  *(a2 + 14) = result[10];
  *(a2 + 16) = result[17];
  *(a2 + 18) = result[24];
  *(a2 + 20) = 0;
  *(a2 + 22) = result[25];
  *(a2 + 24) = result[18];
  *(a2 + 26) = result[11];
  *(a2 + 28) = 0;
  *(a2 + 32) = 0;
  *(a2 + 34) = result[19];
  *(a2 + 36) = result[26];
  *(a2 + 38) = 0;
  *(a2 + 46) = 0;
  *(a2 + 48) = result[27];
  return result;
}

uint64_t H263CMPR_CompressMaster(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6, unsigned __int16 a7, _DWORD *a8, double a9, unsigned int a10, int a11, uint64_t a12, __int16 a13, int a14, unsigned int a15, int a16, int a17, int a18, void *a19, _DWORD *a20)
{
  v234 = a5;
  v235[0] = a4;
  v24 = *(a1 + 296190);
  v230 = *(a1 + 296198);
  v25 = *(a1 + 296230);
  v26 = *(a1 + 296174);
  v27 = *(a1 + 296182);
  v226 = *(a1 + 296206);
  v227 = *(a1 + 296214);
  H263PICT_Setup(v227, *(v26 + 40));
  v29 = a4;
  *(v24 + 54) = a13;
  *(v24 + 44) = 1;
  v219 = (v230 + 39700);
  *(v230 + 41312) = 128;
  v30 = *(a1 + 296214);
  *(v30 + 18) = 0;
  *(v30 + 20) = 0;
  v31 = *v26;
  v224 = *(v26 + 4);
  v33 = *(a1 + 24);
  v32 = *(a1 + 32);
  v34 = *(a1 + 40);
  v35 = *v26 + 32;
  *(v32 + 24) = v35;
  *(v32 + 28) = v224 + 32;
  *(v33 + 24) = v35;
  *(v33 + 28) = v224 + 32;
  *(v34 + 24) = v35;
  *(v34 + 28) = v224 + 32;
  v36 = a4 + 15;
  if (a4 < -15)
  {
    v36 = a4 + 30;
  }

  *(v24 + 28) = 0;
  *(v24 + 32) = v36 >> 4;
  v37 = a5 + 15;
  if (a5 < -15)
  {
    v37 = a5 + 30;
  }

  *(v24 + 36) = 0;
  *(v24 + 40) = v37 >> 4;
  if (*(v24 + 4) != *(v24 + 8))
  {
    *(a1 + 24) = v32;
    *(a1 + 32) = v33;
  }

  v38 = 0xFFFFFFFFLL;
  if (v31 < a4 || v224 < a5)
  {
    goto LABEL_193;
  }

  v39 = 16 * v35;
  v40 = 4 * v35;
  v229 = v26;
  v225 = (v31 + 32);
  if (a10)
  {
    v213 = v31;
    if (a10 > 2)
    {
      v41 = a5;
      if (a10 == 3)
      {
        v212 = v224 + 32;
        v214 = (16 * v35);
        v48 = a5 < 1;
        v49 = a3;
        if (!v48)
        {
          v50 = v214 + 16;
          do
          {
            memcpy((**(a1 + 40) + v50), v49, a4);
            v49 += a6;
            v50 += v225;
            --v41;
          }

          while (v41);
        }
      }

      else
      {
        if (a10 != 2033463856)
        {
          v38 = 0xFFFFFFFFLL;
          goto LABEL_193;
        }

        v212 = v224 + 32;
        v214 = (16 * v35);
        if (a5 >= 1)
        {
          v210 = 4 * v35;
          v216 = a5;
          v42 = 0;
          v211 = v29;
          v43 = v29;
          v44 = v214 + 16;
          do
          {
            memcpy((**(a1 + 40) + v44), (*a19 + (*a20 * v42++)), v43);
            v44 += v225;
          }

          while (v41 != v42);
          if (v41 != 1)
          {
            v45 = 0;
            v217 = v216 >> 1;
            v46 = (v211 + (v211 >> 31)) >> 1;
            v47 = v210 + 8;
            do
            {
              memcpy((*(*(a1 + 40) + 8) + v47), (a19[1] + (a20[1] * v45)), v46);
              memcpy((*(*(a1 + 40) + 16) + v47), (a19[2] + (a20[2] * v45++)), v46);
              v47 += (v225 + (v225 >> 31)) >> 1;
            }

            while (v217 != v45);
          }
        }
      }
    }

    else
    {
      v212 = v224 + 32;
      v214 = (16 * v35);
      v205 = *(a2 + 24);
      COLOR_Y422ToY420u(a3, *v34 + v39 + 16, *(v34 + 8) + v40 + 8, *(v34 + 16) + v40 + 8, v235, &v234, v35, v224, a6, a10);
    }
  }

  else if (a11 == 24)
  {
    v213 = v31;
    v212 = v224 + 32;
    v214 = (16 * v35);
    COLOR_R2Y24(a3, *v34 + v39 + 16, *(v34 + 8) + v40 + 8, *(v34 + 16) + v40 + 8, v235, &v234, v35, v224, a6, *(*(a2 + 48) + 1312), *(a2 + 24));
  }

  else
  {
    if (a11 != 32)
    {
      goto LABEL_193;
    }

    v213 = v31;
    v212 = v224 + 32;
    v214 = (16 * v35);
    COLOR_R2Y32(a3, *v34 + v39 + 16, *(v34 + 8) + v40 + 8, *(v34 + 16) + v40 + 8, v235, &v234, v35, v224, a6, *(*(a2 + 48) + 1312), *(a2 + 24));
  }

  *(v24 + 50) = 0;
  v52 = *(v24 + 4);
  v51 = *(v24 + 8);
  v53 = v229;
  v54 = v225;
  if (v52 != v51 && *(v24 + 52))
  {
    if (*(v24 + 48))
    {
      *(v24 + 60) = v52;
    }

    if (*(v24 + 49))
    {
      *(v24 + 64) = v52;
    }
  }

  v55 = a17;
  if (v51 < 2)
  {
    goto LABEL_35;
  }

  if (a14 && a15)
  {
    if (v51 - *(v24 + 60) < a17)
    {
LABEL_64:
      *a8 = 512;
      *(v24 + 48) = 0;
      v56 = *(a1 + 296214);
      v56[17] = 1;
      goto LABEL_65;
    }
  }

  else if ((!a14 || a15 || *a8) && ((!a14 || a17) && a14 || *a8))
  {
    goto LABEL_64;
  }

LABEL_35:
  *a8 = 0;
  *(v24 + 48) = 257;
  v56 = *(a1 + 296214);
  v56[17] = 0;
  if (*(v24 + 44))
  {
    v57 = 0;
    if (a17 <= 0 || a14 == 0)
    {
      v55 = 132;
    }

    *v219 = v55;
    v59 = (v230 + 39724);
    v60 = vdupq_n_s64(4uLL);
    v61 = vdupq_n_s64(0x16uLL);
    do
    {
      v62 = v59;
      v63 = 24;
      v64 = xmmword_295686F60;
      v65 = xmmword_295686F50;
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v61, v64)), 2).u8[0])
        {
          *(v62 - 3) = v55;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v64)), 2).i8[2])
        {
          *(v62 - 2) = v55;
        }

        if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v65))).i32[1])
        {
          *(v62 - 1) = v55;
          *v62 = v55;
        }

        v65 = vaddq_s64(v65, v60);
        v64 = vaddq_s64(v64, v60);
        v62 += 4;
        v63 -= 4;
      }

      while (v63);
      ++v57;
      v59 += 22;
    }

    while (v57 != 18);
  }

LABEL_65:
  if (v227[17] == 1 && v227[18])
  {
    v66 = 0;
    v67 = (v225 >> 1);
    v68 = *(a1 + 24);
    LODWORD(v69) = v213 + 15;
    v70 = 16;
    if (v213 + 15 <= 16)
    {
      v69 = 16;
    }

    else
    {
      v69 = v69;
    }

    do
    {
      v71 = v69 - 15;
      v72 = v214 + 16;
      v73 = v70;
      if (v213 >= 1)
      {
        do
        {
          *(*v68 + v73++) = *(*v68 + v72++);
          --v71;
        }

        while (v71);
      }

      ++v66;
      v70 += v225;
    }

    while (v66 != 16);
    v74 = 0;
    v218 = (8 * v67);
    v75 = 8;
    do
    {
      if (v67 >= 17)
      {
        v76 = (v67 - 8) - 8;
        v77 = v218 + 8;
        v78 = v75;
        do
        {
          *(v68[1] + v78) = *(v68[1] + v77);
          *(v68[2] + v78++) = *(v68[2] + v77++);
          --v76;
        }

        while (v76);
      }

      ++v74;
      v75 += v67;
    }

    while (v74 != 8);
    v79 = v225 * (v224 + 15);
    v80 = v224 + 16;
    v81 = v225 * v80 + 16;
    v82 = v69 - 15;
    v83 = v80;
    do
    {
      if (v213 >= 1)
      {
        v84 = v82;
        v85 = v79 + 16;
        v86 = v81;
        do
        {
          *(*v68 + v86++) = *(*v68 + v85++);
          --v84;
        }

        while (v84);
      }

      ++v83;
      v81 += v225;
    }

    while (v83 < v212);
    v87 = v67 * ((v212 >> 1) - 9);
    v88 = v212 >> 1;
    v89 = v88 - 8;
    v90 = (v88 - 8) * v67 + 8;
    do
    {
      v91 = (v67 - 8) - 8;
      v92 = v87 + 8;
      v93 = v90;
      if (v67 >= 17)
      {
        do
        {
          *(v68[1] + v93) = *(v68[1] + v92);
          *(v68[2] + v93++) = *(v68[2] + v92++);
          --v91;
        }

        while (v91);
      }

      ++v89;
      v90 += v67;
    }

    while (v89 != v88);
    v94 = 0;
    if (v80 <= 17)
    {
      v95 = 17;
    }

    else
    {
      v95 = v80;
    }

    v96 = v95 - 16;
    do
    {
      v97 = v96;
      v98 = 16 * v225;
      if (v224 >= 1)
      {
        do
        {
          *(*v68 + v98 + v94) = *(*v68 + v98 + 16);
          v98 += v225;
          --v97;
        }

        while (v97);
      }

      ++v94;
    }

    while (v94 != 16);
    v99 = 0;
    v100 = (v88 - 8);
    do
    {
      if (v88 >= 17)
      {
        v101 = v100 - 8;
        v102 = 8 * v67;
        do
        {
          *(v68[1] + v102 + v99) = *(v68[1] + v102 + 8);
          *(v68[2] + v102 + v99) = *(v68[2] + v102 + 8);
          v102 += v67;
          --v101;
        }

        while (v101);
      }

      ++v99;
    }

    while (v99 != 8);
    v103 = v213 + 16;
    v104 = 16 * v225 + v103;
    do
    {
      if (v224 >= 1)
      {
        v105 = 17 * v225 - 17;
        v106 = v96;
        v107 = v104;
        do
        {
          *(*v68 + v107) = *(*v68 + v105);
          v107 += v225;
          v105 += v225;
          --v106;
        }

        while (v106);
      }

      ++v103;
      ++v104;
    }

    while (v103 < v225);
    v108 = v67 - 8;
    v109 = -8;
    do
    {
      v110 = v100 - 8;
      v111 = 9 * v67;
      if (v88 >= 17)
      {
        do
        {
          *(v68[1] + v111 + v109) = *(v68[1] + v111 - 9);
          *(v68[2] + v111 + v109) = *(v68[2] + v111 - 9);
          v111 += v67;
          --v110;
        }

        while (v110);
      }

      ++v108;
      ++v109;
    }

    while (v108 != v67);
    v112 = 0;
    v113 = 0;
    v114 = v225 * v80;
    v115 = v225 * (v224 + 31);
    v116 = -32 - v213;
    v117 = v213 + 31;
    v118 = v212 * v225 - 1;
    do
    {
      ++v113;
      v119 = 16;
      v120 = v112;
      v121 = v118;
      v122 = v117;
      v123 = v115;
      do
      {
        *(*v68 + v120) = *(*v68 + v214 + 16);
        *(*v68 + v122) = *(*v68 + 17 * v225 - 17);
        *(*v68 + v123) = *(*v68 + v79 + 16);
        *(*v68 + v121) = *(*v68 + v114 - 17);
        ++v123;
        --v122;
        --v121;
        ++v120;
        --v119;
      }

      while (v119);
      v115 += v116;
      v54 = v225;
      v117 += v225;
      v118 += v116;
      v112 += v225;
    }

    while (v113 != 16);
    v124 = 0;
    v125 = 0;
    v126 = v218 + 8;
    v127 = 9 * v67 - 9;
    v128 = v87 + 8;
    v129 = v100 * v67 - 9;
    v130 = v67 - 1;
    v131 = v88 * v67 - 1;
    v132 = (v88 - 1) * v67;
    v53 = v229;
    do
    {
      ++v125;
      v133 = 8;
      v134 = v124;
      v135 = v132;
      v136 = v131;
      v137 = v130;
      do
      {
        *(v68[1] + v134) = *(v68[1] + v126);
        *(v68[1] + v137) = *(v68[1] + v127);
        *(v68[1] + v135) = *(v68[1] + v128);
        *(v68[1] + v136) = *(v68[1] + v129);
        *(v68[2] + v134) = *(v68[2] + v126);
        *(v68[2] + v137) = *(v68[2] + v127);
        *(v68[2] + v135) = *(v68[2] + v128);
        *(v68[2] + v136) = *(v68[2] + v129);
        --v137;
        --v136;
        ++v135;
        ++v134;
        --v133;
      }

      while (v133);
      v130 += v67;
      v131 -= v67;
      v132 -= v67;
      v124 += v67;
    }

    while (v125 != 8);
    v56 = *(a1 + 296214);
  }

  HIDWORD(v203) = v56[18];
  LODWORD(v203) = v56[20];
  H263ME_Prep(*(v24 + 44), *(a1 + 296258), v234, v235[0], v53[1], *v53, 0, 0, v203, *(v230 + 41312), v230 + 32848);
  if (*(v24 + 44))
  {
    *(a1 + 296258) = (*(a1 + 296258) + 1) % v53[9];
  }

  if (!*(a2 + 64))
  {
    H263ME_BlkStat((v230 + 32900), **(a1 + 40) + v214 + 16, v54, *(v230 + 41312), *(*(a2 + 48) + 8), v24);
  }

  if (*(*(a1 + 296214) + 17) == 1 && !*(v24 + 48))
  {
    *(v230 + 41304) = 0;
    *(v230 + 41296) = 0;
    if (v227[18])
    {
      H263ME_GetVectorsUMV(v230, *(a1 + 40), *(a1 + 24), 15, 0, *(*(a1 + 296222) + 16), *(*(a1 + 296174) + 40), *(a2 + 48));
    }

    else if ((*(v230 + 41312) & 0x80) != 0)
    {
      v202 = *(*(a1 + 296222) + 16);
      v209 = *(*(a2 + 32) + 102664);
      v204 = *(*(a1 + 296174) + 40);
      H263ME_GetVectors(0, v230, *(a1 + 40), *(a1 + 24), 15, 0, *(*(a2 + 48) + 8));
    }
  }

  else
  {
    v138 = v53[4];
    if (v138)
    {
      v139 = 0;
      v140 = v53[5];
      v141 = (v230 + 306);
      v142 = (v230 + 32908);
      do
      {
        if (v140)
        {
          v143 = v140;
          v144 = v142;
          v145 = v141;
          do
          {
            *(v145 - 2) = 3;
            *v145 = *v144;
            *(v145 - 1) = *(v144 - 2);
            v145 += 6;
            v144 += 3;
            --v143;
          }

          while (v143);
        }

        ++v139;
        v141 += 144;
        v142 += 66;
      }

      while (v139 != v138);
    }
  }

  if (*(*(a1 + 296214) + 17) == 1 && *(v24 + 48))
  {
    H263ME_Intracize(v230);
  }

  *v226 = 7238243;
  *(v226 + 92) = 1;
  v146 = *(a1 + 296206);
  v147 = a16;
  if (*(v146 + 104))
  {
    C_Function_SetFrameDuration(*(v146 + 96), v147);
  }

  else
  {
    v148 = a18;
    v232 = 0u;
    *&v231[1] = 1000.0 / v147;
    v231[0] = a15;
    if (!a18)
    {
      v148 = 0x7FFFFFFF;
    }

    DWORD1(v232) = v148;
    v233 = a9;
    C_Function_Init(*(v146 + 96), v231);
    *(*(a1 + 296206) + 104) = 1;
  }

  if (*(*(a1 + 296214) + 17) == 1)
  {
    if (!*(v24 + 48))
    {
      v149 = 0;
      goto LABEL_143;
    }

LABEL_199:
    H263CMPR_CompressMaster_cold_1();
  }

  if (*(*(a1 + 296214) + 17) || *(v24 + 48) != 1)
  {
    goto LABEL_199;
  }

  v149 = 2;
LABEL_143:
  C_Function_SetSliceType(*(*(a1 + 296206) + 106), v149);
  C_Function_SetDisplayOdrIdx(*(*(a1 + 296206) + 106), (*(v24 + 8) - 1));
  C_Function_SetFlagIsRefPic(*(*(a1 + 296206) + 106), 1);
  Qp = C_Function_RC_GetQp(*(*(a1 + 296206) + 96), *(*(a1 + 296206) + 106));
  v151 = *(a1 + 296214);
  *(v151 + 27) = Qp;
  *(v27 + 153) = Qp;
  *(*(a1 + 296222) + 3) = Qp;
  *(v151 + 36) = Qp;
  *(v226 + 95) = Qp;
  *(v226 + 94) = Qp;
  C_Function_SetQP(*(*(a1 + 296206) + 106), Qp);
  if (*(v24 + 4) != *(v24 + 8))
  {
    Q_UpdateHistory(*(a1 + 296206), v24);
  }

  __srca = (a1 + 296238);
  v206 = *(*(a2 + 48) + 8);
  Q_Setup(*(a1 + 296214), *(a1 + 296206), *(*(a1 + 296238) + 32), v24, a7, v53, v230 + 32900, *(v230 + 32832), 1);
  v38 = 0;
  while (1)
  {
    *(v24 + 52) = 0;
    if (v38 > 2)
    {
      if (v38 == 3)
      {
        v208 = *(*(a2 + 48) + 8);
        Q_Setup(*(a1 + 296214), *(a1 + 296206), *(*__srca + 32), v24, a7, v53, v230 + 32900, *(v230 + 32832), 0);
        v153 = *(a1 + 296214);
      }

      else
      {
        if (v38 != 4)
        {
          goto LABEL_193;
        }

        H263ME_Intracize(v230);
        *a8 = 0;
        *(v24 + 48) = 257;
        *(v24 + 50) = 1;
        v207 = *(*(a2 + 48) + 8);
        Q_Setup(*(a1 + 296214), *(a1 + 296206), *(*__srca + 32), v24, a7, v53, v230 + 32900, *(v230 + 32832), 1);
        v153 = *(a1 + 296214);
      }

      goto LABEL_155;
    }

    if (!v38)
    {
      v153 = *(a1 + 296214);
LABEL_155:
      v154 = *(v153 + 27);
      *(v27 + 153) = *(v153 + 27);
      *(*(a1 + 296222) + 3) = v154;
      *(v153 + 36) = v154;
      goto LABEL_156;
    }

    if (v38 != 1)
    {
      goto LABEL_193;
    }

    v152 = *(*(a1 + 296174) + 16);
    *(v24 + 36) = v152;
    *(v24 + 40) = v152;
    *a8 = 512;
    v153 = *(a1 + 296214);
    *(v153 + 17) = 1;
    *(v24 + 48) = 0;
LABEL_156:
    v155 = *(v25 + 12) + *(v25 + 8);
    *v25 = 0x2000000000;
    *(v25 + 8) = 0;
    *(v25 + 12) = v155;
    *(v25 + 24) = a12;
    *v153 = *(v24 + 8);
    H263PICT_encPictureHeader(v153, v25);
    *(v27 + 158) = 0;
    *(v24 + 20) = 0;
    if (v53[4])
    {
      v156 = 0;
      do
      {
        *(v27 + 162) = v156;
        if (*(*(a1 + 296214) + 17) == 1)
        {
          if (v156 < *(v24 + 36) || v156 >= *(v24 + 40))
          {
            v157 = *v27;
            v159 = *a1;
            v158 = *(a1 + 4);
            *(v24 + 24) = 0;
            if (v53[5])
            {
              v160 = 0;
              do
              {
                v161 = (*v27 + 4 * *(v24 + 20));
                v162 = *v161;
                v163 = *v27 + 4 * v160;
                v164 = *(v163 + 76);
                v165 = v161[47];
                v166 = *(v163 + 340);
                v167 = *(v25 + 4);
                if (v167)
                {
                  v168 = v167 - 1;
                  v169 = *v25 | (1 << v168);
                }

                else
                {
                  v170 = bswap32(*v25);
                  v171 = *(v25 + 24);
                  v172 = *(v25 + 8);
                  *(v25 + 8) = v172 + 1;
                  *(v171 + 4 * v172) = v170;
                  v168 = 31;
                  v169 = 0x80000000;
                }

                v173 = v164 + v162;
                v174 = v166 + v165;
                *v25 = v169;
                *(v25 + 4) = v168;
                Copy8x8(**(a1 + 32) + v157[42] + v173, **(a1 + 24) + v157[42] + v173, v159 + 32);
                v175 = v157[43] + v173;
                Copy8x8(**(a1 + 32) + v175, **(a1 + 24) + v175, v159 + 32);
                v176 = v157[44] + v173;
                Copy8x8(**(a1 + 32) + v176, **(a1 + 24) + v176, v159 + 32);
                v177 = v157[45] + v173;
                Copy8x8(**(a1 + 32) + v177, **(a1 + 24) + v177, v159 + 32);
                Copy8x8(*(*(a1 + 32) + 8) + v174, *(*(a1 + 24) + 8) + v174, v158 + 16);
                Copy8x8(*(*(a1 + 32) + 16) + v174, *(*(a1 + 24) + 16) + v174, v158 + 16);
                v178 = *(v230 + 32832) + 12 * (*(v27 + 166) + 1) + 288 * (*(v27 + 162) + 1);
                *(v178 + 8) = 0;
                v179 = (v178 + 8);
                v180 = 5;
                do
                {
                  *(v179 - 4) = 0;
                  *(v179 - 1) = 0;
                  *v179 = 0;
                  v179 += 1368;
                  --v180;
                }

                while (v180);
                v160 = *(v24 + 24) + 1;
                *(v24 + 24) = v160;
                v53 = v229;
              }

              while (v160 < v229[5]);
            }

            goto LABEL_172;
          }

          if (v227[20])
          {
            H263CMPR_PredGOB_OBMC(a1, v53, *(v230 + 32832), v156);
          }
        }

        *(v24 + 52) |= H263CMPR_GOB(a2, a1, v53, *(v230 + 32832));
LABEL_172:
        v156 = *(v24 + 20) + 1;
        *(v24 + 20) = v156;
      }

      while (v156 < v53[4]);
    }

    if (*v226 == 7238243)
    {
      v182 = ComputeAvgSAD(*(v230 + 32832), v53[2] / 16, v53[3] / 16);
      *(v226 + 114) = 32 * *(v25 + 8) - *(v25 + 4) + 32;
      v183 = *(a1 + 296206);
      v184 = *(v183 + 96);
      DisplayOdrIdx = C_Function_GetDisplayOdrIdx(*(v183 + 106));
      C_Function_UpdateFrameComplexity(v184, v182, 0, 0, DisplayOdrIdx);
      v186 = *(a1 + 296206);
      v187 = *(v186 + 96);
      v188 = *(v226 + 114);
      v189 = C_Function_GetDisplayOdrIdx(*(v186 + 106));
      v190 = C_Function_GetQP(*(*(a1 + 296206) + 106));
      C_Function_UpdateRateControllerAfterEncodingFrame(v187, v188, 0, v189, v190);
      v38 = 0;
      goto LABEL_182;
    }

    if (!*(v24 + 52))
    {
      break;
    }

    v38 = Q_RateControl(*(a1 + 296206), v24, (32 * *(v25 + 8) - *(v25 + 4) + 32));
    if (v38 > 4 || ((1 << v38) & 0x1A) == 0)
    {
      goto LABEL_182;
    }

    *(v25 + 8) = 0;
  }

  v38 = 0;
LABEL_182:
  v191 = bswap32(*v25 & ~*(v25 + 4 * *(v25 + 4) + 32));
  v192 = *(v25 + 24);
  v193 = *(v25 + 8);
  *(v25 + 8) = v193 + 1;
  *(v192 + 4 * v193) = v191;
  *v25 = 0;
  if (*(v24 + 44))
  {
    if (*v219 >= 1)
    {
      if (*(v24 + 48))
      {
        srand(*(v192 + ((2 * *(v25 + 8)) & 0x1FFFFFFFCLL)));
        v194 = *(v24 + 40);
        v195 = *(v24 + 36);
        if (v195 < v194)
        {
          v196 = v38;
          v197 = *(v24 + 32);
          v198 = v230 + 88 * v195 + 39712;
          do
          {
            v199 = *(v24 + 28);
            if (v199 < v197)
            {
              v200 = (v198 + 4 * v199);
              do
              {
                *v200++ = rand() % *v219;
                v197 = *(v24 + 32);
                ++v199;
              }

              while (v197 > v199);
              v194 = *(v24 + 40);
            }

            ++v195;
            v198 += 88;
          }

          while (v194 > v195);
          v38 = v196;
        }
      }
    }
  }

LABEL_193:
  LODWORD(v28) = *(v25 + 8);
  *(*(a1 + 296206) + 68) = v28 * 32.0;
  return v38;
}

uint64_t H263CMPR_PredGOB_OBMC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 20))
  {
    v4 = a4;
    v5 = *a1 + 32;
    v6 = a4 + 1;
    v7 = *(a1 + 24);
    v63 = a3 + 16416;
    v69 = a3 + 5472;
    v8 = 4 * v5;
    v62 = a3 + 10944;
    v61 = a3 + 21888;
    v59 = 8 * v5;
    v80 = *(a1 + 66);
    v60 = v5 * (16 * a4 + 16);
    v66 = v60 + 16;
    v9 = 1;
    v58 = a3 + 288 * v6;
    v65 = 4 * v5;
    v70 = v6;
    do
    {
      v68 = v9 - 1;
      v72 = v60 + 16 * (v9 - 1);
      v10 = v72 + 16;
      v11 = v80 + 4 * (v72 + 16);
      v12 = v9;
      v78 = (v58 + 12 * v9);
      MC_Copy8x8Y_wcc(v80 + 4 * v10, *v7 + v10, v5, *v78, v78[1], &wcc, 0, 0);
      if (v4 && *(a3 + 288 * a4 + 12 * v12 + 2) - 3 > 1)
      {
        v13 = v63 + 288 * a4;
      }

      else
      {
        v13 = v69 + 288 * v6;
      }

      v14 = (v13 + 12 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = (v63 + 288 * v6 + 12 * v12);
      v79 = v12;
      v18 = *v17;
      v77 = v17;
      v19 = v17[1];
      MC_Copy4x8Y_wtb(v11, *v7 + v10, v5, v15, v16, &wtb, 0, 0);
      v71 = v10;
      MC_Copy4x8Y_wtb(v80 + 4 * (v71 + v8), *v7 + v71 + v8, v5, v18, v19, &unk_295686FF8, 0, 0);
      if (v79 == 1 || *(a3 + 288 * v6 + 12 * v68 + 2) - 3 <= 1)
      {
        v20 = (v69 + 288 * v6 + 12 * v79);
      }

      else
      {
        v20 = (v62 + 288 * v6 + 12 * v68);
      }

      v21 = (v62 + 288 * v6 + 12 * v79);
      v22 = *v21;
      v23 = v21[1];
      MC_Copy8x4Y_wlr(v11, *v7 + v10, v5, *v20, v20[1], &wlr, 0, 0);
      MC_Copy8x4Y_wlr(v80 + 4 * (v72 + 20), *v7 + (v72 + 20), v5, v22, v23, &unk_295687088, 0, 0);
      v24 = v72 + 24;
      v25 = v80 + 4 * (v72 + 24);
      MC_Copy8x8Y_wcc(v25, *v7 + (v72 + 24), v5, *v78, v78[1], &wcc, 0, 0);
      v26 = v21;
      if (a4)
      {
        v26 = (v61 + 288 * a4 + 12 * v79);
        if (*(a3 + 288 * a4 + 12 * v79 + 2) - 3 < 2)
        {
          v26 = (v62 + 288 * v6 + 12 * v79);
        }
      }

      v27 = *v26;
      v28 = v26[1];
      v29 = (v61 + 288 * v6 + 12 * v79);
      v30 = *v29;
      v75 = v29;
      v31 = v29[1];
      v73 = (v62 + 288 * v6 + 12 * v79);
      MC_Copy4x8Y_wtb(v25, *v7 + v24, v5, v27, v28, &wtb, 0, 0);
      MC_Copy4x8Y_wtb(v80 + 4 * (v24 + v8), *v7 + v24 + v8, v5, v30, v31, &unk_295686FF8, 0, 0);
      v32 = v73;
      if (v79 != *(a2 + 20))
      {
        v32 = (v62 + 288 * v6 + 12 * v79);
        if (*(a3 + 288 * v6 + 12 * (v79 + 1) + 2) - 3 >= 2)
        {
          v32 = (v69 + 288 * v6 + 12 * (v79 + 1));
        }
      }

      v33 = v32[1];
      v34 = *v32;
      v35 = (v69 + 288 * v6 + 12 * v79);
      MC_Copy8x4Y_wlr(v25, *v7 + v24, v5, *v35, v35[1], &wlr, 0, 0);
      MC_Copy8x4Y_wlr(v80 + 4 * (v72 + 28), *v7 + (v72 + 28), v5, v34, v33, &unk_295687088, 0, 0);
      v36 = v71 + v59;
      MC_Copy8x8Y_wcc(v80 + 4 * v36, *v7 + v36, v5, *v78, v78[1], &wcc, 0, 0);
      v37 = v7;
      v38 = v77;
      v39 = *v77;
      v40 = v77[1];
      MC_Copy4x8Y_wtb(v80 + 4 * v36, *v37 + v36, v5, *v35, v35[1], &wtb, 0, 0);
      MC_Copy4x8Y_wtb(v80 + 4 * (v65 + v71 + v59), *v37 + v65 + v71 + v59, v5, v39, v40, &unk_295686FF8, 0, 0);
      if (v79 != 1)
      {
        v38 = v77;
        if (*(a3 + 288 * v70 + 12 * v68 + 2) - 3 >= 2)
        {
          v38 = (v61 + 288 * v70 + 12 * v68);
        }
      }

      v41 = *v38;
      v42 = v38[1];
      v43 = *v75;
      v44 = v75[1];
      v7 = v37;
      MC_Copy8x4Y_wlr(v80 + 4 * (v71 + v59), *v37 + v36, v5, v41, v42, &wlr, 0, 0);
      MC_Copy8x4Y_wlr(v80 + 4 * (v36 | 4), *v37 + (v36 | 4), v5, v43, v44, &unk_295687088, 0, 0);
      v45 = v36 + 8;
      MC_Copy8x8Y_wcc(v80 + 4 * v45, *v37 + v45, v5, *v78, v78[1], &wcc, 0, 0);
      v46 = *v75;
      v47 = v75[1];
      MC_Copy4x8Y_wtb(v80 + 4 * v45, *v37 + v45, v5, *v73, v73[1], &wtb, 0, 0);
      MC_Copy4x8Y_wtb(v80 + 4 * (v65 + v45), *v37 + v65 + v45, v5, v46, v47, &unk_295686FF8, 0, 0);
      if (v79 != *(a2 + 20) && *(a3 + 288 * v70 + 12 * (v79 + 1) + 2) - 3 >= 2)
      {
        v75 = (v63 + 288 * v70 + 12 * (v79 + 1));
      }

      v48 = v75[1];
      v49 = *v75;
      v50 = (v80 + 32 + 4 * v66);
      MC_Copy8x4Y_wlr(v80 + 4 * (v36 + 8), *v37 + v45, v5, *v77, v77[1], &wlr, 0, 0);
      MC_Copy8x4Y_wlr(v80 + 4 * (v36 + 12), *v37 + v36 + 12, v5, v49, v48, &unk_295687088, 0, 0);
      v51 = 16;
      v52.i64[0] = 0x400000004;
      v52.i64[1] = 0x400000004;
      do
      {
        v53 = vaddq_s32(v50[-2], v52);
        v54 = vaddq_s32(v50[-1], v52);
        v50[-2] = vshrq_n_s32(vsraq_n_u32(v53, vcltzq_s32(v53), 0x1DuLL), 3uLL);
        v50[-1] = vshrq_n_s32(vsraq_n_u32(v54, vcltzq_s32(v54), 0x1DuLL), 3uLL);
        v55 = vaddq_s32(*v50, v52);
        v56 = vaddq_s32(v50[1], v52);
        *v50 = vshrq_n_s32(vsraq_n_u32(v55, vcltzq_s32(v55), 0x1DuLL), 3uLL);
        v50[1] = vshrq_n_s32(vsraq_n_u32(v56, vcltzq_s32(v56), 0x1DuLL), 3uLL);
        v50 = (v50 + v8);
        --v51;
      }

      while (v51);
      v9 = v79 + 1;
      v66 += 16;
      v4 = a4;
      v6 = v70;
    }

    while (v79 + 1 <= *(a2 + 20));
  }

  return 0;
}

uint64_t H263CMPR_GOB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a2 + 296182);
  v8 = *(a2 + 296222);
  v9 = *(a2 + 296190);
  v10 = *(a2 + 296230);
  v11 = *(a2 + 296214);
  v12 = *(a2 + 296206);
  v9[6] = 0;
  *(v8 + 4) = 0;
  v13 = v9[5];
  if (v13 && *(*(v8 + 16) + v13))
  {
    if (*v12 == 7238243)
    {
      LOBYTE(v12) = *(v12 + 95);
      *(v7 + 153) = v12;
    }

    else
    {
      LODWORD(v12) = *(v12 + (*(a3 + 20) * v13) + 136);
      if (v12 >= 0x31)
      {
        LOBYTE(v12) = 49;
      }
    }

    *(v8 + 3) = v12;
    a1 = H263CMPR_GOBHeader(v10, v13, v11[25], *(v8 + 1), *(v8 + 2), v12);
    *(*(v8 + 8) + 4 * v9[5]) = a1;
    *(v8 + 4) = 1;
    *(v7 + 153) = *(v8 + 3);
  }

  v9[6] = 0;
  if (*(v5 + 20))
  {
    v47 = 0;
    v14 = 0;
    v43 = a4 + 8;
    v44 = v11;
    v45 = v5;
    v46 = a4;
    do
    {
      *(v7 + 166) = v14;
      *(v7 + 156) = 0;
      if (v11[17])
      {
        if (v14 < v9[7] || v14 >= v9[8])
        {
          v18 = *v7;
          v19 = (*v7 + 4 * v9[5]);
          v20 = *v19;
          v21 = *v7 + 4 * v14;
          v22 = *(v21 + 76);
          v23 = v19[47];
          v24 = *(v21 + 340);
          v25 = *a2;
          v26 = *(a2 + 4);
          v27 = *(v10 + 4);
          if (v27)
          {
            v28 = v27 - 1;
            v29 = *v10 | (1 << v28);
          }

          else
          {
            v30 = bswap32(*v10);
            v31 = *(v10 + 24);
            v32 = *(v10 + 8);
            *(v10 + 8) = v32 + 1;
            *(v31 + 4 * v32) = v30;
            v28 = 31;
            v29 = 0x80000000;
          }

          v33 = v22 + v20;
          v34 = v24 + v23;
          *v10 = v29;
          *(v10 + 4) = v28;
          v35 = v18[42] + v22 + v20;
          Copy8x8(**(a2 + 32) + v35, **(a2 + 24) + v35, v25 + 32);
          v36 = v18[43] + v33;
          Copy8x8(**(a2 + 32) + v36, **(a2 + 24) + v36, v25 + 32);
          v37 = v18[44] + v33;
          Copy8x8(**(a2 + 32) + v37, **(a2 + 24) + v37, v25 + 32);
          v38 = v18[45] + v33;
          Copy8x8(**(a2 + 32) + v38, **(a2 + 24) + v38, v25 + 32);
          Copy8x8(*(*(a2 + 32) + 8) + v34, *(*(a2 + 24) + 8) + v34, v26 + 16);
          a1 = Copy8x8(*(*(a2 + 32) + 16) + v34, *(*(a2 + 24) + 16) + v34, v26 + 16);
          v39 = 12 * (*(v7 + 166) + 1) + 288 * (*(v7 + 162) + 1);
          a4 = v46;
          *(v39 + v46 + 8) = 0;
          v40 = (v43 + v39);
          v41 = 5;
          do
          {
            *(v40 - 1) = 0;
            *v40 = 0;
            *(v40 - 4) = 0;
            v40 += 1368;
            --v41;
          }

          while (v41);
          v11 = v44;
          v5 = v45;
        }

        else
        {
          v15 = (a4 + 12 * (v14 + 1) + 288 * (*(v7 + 162) + 1));
          *(v7 + 154) = v15[2];
          v16 = 6;
          v17 = (v7 + 222);
          do
          {
            *(v17 - 6) = *v15;
            *v17 = v15[1];
            *(v17 - 12) = *(v15 + 2);
            ++v17;
            v15 += 5472;
            --v16;
          }

          while (v16);
          if (v11[20])
          {
            a1 = H263CMPR_MB_OBMCS16(a2, a4);
          }

          else
          {
            a1 = H263CMPR_MbS16(a1, a2, a4);
          }

          v47 |= a1 != 2;
        }
      }

      else
      {
        *(v7 + 154) = 3;
        a1 = H263CMPR_MbS16(a1, a2, a4);
        v47 = 1;
        *(v7 + 156) = 1;
      }

      v14 = v9[6] + 1;
      v9[6] = v14;
    }

    while (v14 < *(v5 + 20));
  }

  else
  {
    return 0;
  }

  return v47;
}

uint64_t H263CMPR_GOBHeader(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 4) & 0xFFFFFFF8;
  if (v7 <= 0x10)
  {
    v10 = *(a1 + 100) & 1;
    v11 = bswap32(*a1);
    v12 = *(a1 + 24);
    *(a1 + 8) = v6 + 1;
    *(v12 + 4 * v6) = v11;
    v8 = v7 + 15;
    *(a1 + 4) = v7 + 15;
    v9 = v10 << (v7 + 15);
  }

  else
  {
    v8 = v7 - 17;
    v9 = *a1 | ((*(a1 + 100) & 1) << (v7 - 17));
  }

  v13 = v8 - 5;
  v14 = ((*(a1 + 52) & a2) << (v8 - 5)) | v9;
  if (a3)
  {
    if (v13 < 2)
    {
      v15 = *(a1 + 40) & a4;
      v16 = (v15 >> (7 - v8)) | v14;
      *a1 = v16;
      v17 = (v16 << 8) & 0xFF0000 | (v16 << 24) | (v16 >> 8) & 0xFF00 | HIBYTE(v16);
      v18 = *(a1 + 24);
      v19 = *(a1 + 8);
      *(a1 + 8) = v19 + 1;
      *(v18 + 4 * v19) = v17;
      v13 |= 0x1Eu;
      v14 = v15 << v13;
    }

    else
    {
      v13 = v8 - 7;
      v14 |= (*(a1 + 40) & a4) << (v8 - 7);
    }
  }

  if (v13 <= 1)
  {
    v28 = *(a1 + 40) & a5;
    v29 = (((v28 >> (2 - v13)) | v14) << 8) & 0xFF0000 | (((v28 >> (2 - v13)) | v14) << 24) | (((v28 >> (2 - v13)) | v14) >> 8) & 0xFF00 | (((v28 >> (2 - v13)) | v14) >> 24);
    v30 = *(a1 + 24);
    v31 = *(a1 + 8);
    *(a1 + 8) = v31 + 1;
    *(v30 + 4 * v31) = v29;
    v20 = v13 | 0x1E;
    v21 = v28 << (v13 | 0x1E);
    goto LABEL_12;
  }

  v20 = v13 - 2;
  v21 = ((*(a1 + 40) & a5) << (v13 - 2)) | v14;
  if (v13 - 2 >= 5)
  {
LABEL_12:
    *(a1 + 4) = v20 - 5;
    v27 = ((*(a1 + 52) & a6) << (v20 - 5)) | v21;
    goto LABEL_13;
  }

  v22 = *(a1 + 52) & a6;
  v23 = (((v22 >> (7 - v13)) | v21) << 8) & 0xFF0000 | (((v22 >> (7 - v13)) | v21) << 24) | (((v22 >> (7 - v13)) | v21) >> 8) & 0xFF00 | (((v22 >> (7 - v13)) | v21) >> 24);
  v24 = *(a1 + 24);
  v25 = *(a1 + 8);
  *(a1 + 8) = v25 + 1;
  *(v24 + 4 * v25) = v23;
  v26 = v13 + 25;
  *(a1 + 4) = v26;
  v27 = v22 << v26;
LABEL_13:
  *a1 = v27;
  return 4 * v6 + ((32 - v7) >> 3);
}

uint64_t H263CMPR_MbS16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 296182);
  v4 = *(a2 + 296238);
  v5 = a2 + 294912;
  v6 = *(a2 + 296206);
  v7 = *v3;
  v8 = *(a2 + 24);
  v285 = *(a2 + 296190);
  v9 = (*v3 + 4 * *(v285 + 20));
  v10 = *v3 + 4 * *(v285 + 24);
  v286 = *(v10 + 76) + *v9;
  v11 = v9[47];
  v12 = *(v3 + 154);
  v303 = v3 + 330;
  v13 = *(v3 + 330 + 4 * v12);
  v294 = v13 != 0;
  v283 = v5;
  if (*v6 == 7238243)
  {
    v14 = *(v6 + 95);
  }

  else
  {
    v14 = *(v6 + (*(v3 + 166) + *(*(v5 + 1262) + 20) * *(v3 + 162)) + 136);
  }

  v291 = v4[6];
  v293 = *(a2 + 296222);
  v15 = v4[4];
  v299 = v4[5];
  v282 = *(a2 + 296198);
  v16 = *(a2 + 296230);
  v17 = *v8;
  v287 = *a2;
  v289 = *(a2 + 4);
  v288 = *(v10 + 340) + v11;
  *(v3 + 155) = 0;
  if (v14 > 48 || v12 != 3 && v12)
  {
    goto LABEL_14;
  }

  v18 = *(v3 + 153);
  v19 = v14 - v18;
  *(v3 + 155) = v14 - v18;
  if (v18 == v14)
  {
    goto LABEL_14;
  }

  if (v19 > 2)
  {
    v19 = 2;
LABEL_12:
    *(v3 + 155) = v19;
    goto LABEL_13;
  }

  if (v19 <= -3)
  {
    v19 = -2;
    goto LABEL_12;
  }

LABEL_13:
  *(v3 + 153) = v19 + v18;
  *(v3 + 154) = v12 + 1;
LABEL_14:
  v290 = v15;
  v296 = v13;
  v20 = v17 + v286;
  v21 = *(v3 + 8);
  *(v3 + 152) = *(v3 + 153);
  Grab8x8CharS16(v21, **(a2 + 40) + v7[42] + v286, v287 + 32);
  Grab8x8CharS16(*(v3 + 16), **(a2 + 40) + v7[43] + v286, v287 + 32);
  Grab8x8CharS16(*(v3 + 24), **(a2 + 40) + v7[44] + v286, v287 + 32);
  Grab8x8CharS16(*(v3 + 32), **(a2 + 40) + v7[45] + v286, v287 + 32);
  Grab8x8CharS16(*(v3 + 40), *(*(a2 + 40) + 8) + v288, v289 + 16);
  Grab8x8CharS16(*(v3 + 48), *(*(a2 + 40) + 16) + v288, v289 + 16);
  v22 = *(v3 + 154);
  v284 = v7;
  if (v22 >= 2)
  {
    v26 = v290;
    if (v22 == 2)
    {
      v27 = (v3 + 226);
      v28 = 1;
      while (!*(v27 - 6))
      {
        v30 = *v27++;
        v29 = v30;
        if (v28 <= 3)
        {
          ++v28;
          if (!v29)
          {
            continue;
          }
        }

        if (!v29)
        {
          ForwardDiffCharS16(*(v3 + 8), *v8 + v7[42] + v286, v287 + 32);
          ForwardDiffCharS16(*(v3 + 16), *v8 + v7[43] + v286, v287 + 32);
          ForwardDiffCharS16(*(v3 + 24), *v8 + v7[44] + v286, v287 + 32);
          ForwardDiffCharS16(*(v3 + 32), *v8 + v7[45] + v286, v287 + 32);
          ForwardDiffCharS16(*(v3 + 40), v8[1] + v288, v289 + 16);
          ForwardDiffCharS16(*(v3 + 48), v8[2] + v288, v289 + 16);
          goto LABEL_32;
        }

        break;
      }

      v31 = vaddvq_s32(*(v3 + 202));
      v32 = vaddvq_s32(*(v3 + 226));
      v33 = (v31 >> 31) | 1;
      if (v33 * v31 <= 0)
      {
        v34 = -(-(v33 * v31) & 0xF);
      }

      else
      {
        v34 = (v33 * v31) & 0xF;
      }

      v35 = roundtab16[v34] * v33 + 2 * (v31 / 16);
      v36 = (v32 >> 31) | 1;
      if (v36 * v32 <= 0)
      {
        v37 = -(-(v36 * v32) & 0xF);
      }

      else
      {
        v37 = (v36 * v32) & 0xF;
      }

      v38 = roundtab16[v37] * v36 + 2 * (v32 / 16);
      MC_ForYS16(*(v3 + 8), v20 + v284[42], v287 + 32, *(v3 + 202), *(v3 + 226));
      MC_ForYS16(*(v3 + 16), v20 + v284[43], v287 + 32, *(v3 + 206), *(v3 + 230));
      MC_ForYS16(*(v3 + 24), v20 + v284[44], v287 + 32, *(v3 + 210), *(v3 + 234));
      MC_ForYS16(*(v3 + 32), v20 + v284[45], v287 + 32, *(v3 + 214), *(v3 + 238));
      MC_ForUVS16(*(v3 + 40), v8[1] + v288, v289 + 16, v35, v38);
      v26 = v290;
      MC_ForUVS16(*(v3 + 48), v8[2] + v288, v289 + 16, v35, v38);
    }
  }

  else
  {
    v23 = *(v3 + 198);
    v24 = *(v3 + 222);
    v25 = *(v3 + 8);
    if (v23 | v24)
    {
      MC_ForYS16(v25, v20 + v7[42], v287 + 32, v23, v24);
      MC_ForYS16(*(v3 + 16), v20 + v7[43], v287 + 32, *(v3 + 198), *(v3 + 222));
      MC_ForYS16(*(v3 + 24), v20 + v7[44], v287 + 32, *(v3 + 198), *(v3 + 222));
      MC_ForYS16(*(v3 + 32), v20 + v7[45], v287 + 32, *(v3 + 198), *(v3 + 222));
      MC_ForUVS16(*(v3 + 40), v8[1] + v288, v289 + 16, *(v3 + 198), *(v3 + 222));
      MC_ForUVS16(*(v3 + 48), v8[2] + v288, v289 + 16, *(v3 + 198), *(v3 + 222));
    }

    else
    {
      ForwardDiffCharS16(v25, *v8 + v7[42] + v286, v287 + 32);
      ForwardDiffCharS16(*(v3 + 16), *v8 + v7[43] + v286, v287 + 32);
      ForwardDiffCharS16(*(v3 + 24), *v8 + v7[44] + v286, v287 + 32);
      ForwardDiffCharS16(*(v3 + 32), *v8 + v7[45] + v286, v287 + 32);
      ForwardDiffCharS16(*(v3 + 40), v8[1] + v288, v289 + 16);
      ForwardDiffCharS16(*(v3 + 48), v8[2] + v288, v289 + 16);
    }

    v26 = v290;
  }

LABEL_32:
  v300 = v3 + 8;
  v39 = 0;
  v40 = (v3 + 56);
  v41 = v26 + 102656;
  v302 = v3 + 56;
  do
  {
    if (v39 >= 4)
    {
      v42 = 152;
    }

    else
    {
      v42 = 153;
    }

    v43 = *(v3 + v42);
    v44 = *(v3 + 153);
    v46 = v40 - 6;
    v45 = *(v40 - 6);
    if (v44 >= 8)
    {
      v46 = v40;
    }

    v47 = *v46;
    v48 = *(v303 + 4 * *(v3 + 154));
    v49 = *(v291 + 1516);
    v50 = *(v291 + 1524);
    v51 = *(v291 + 1508);
    v52 = *(v41 + 8 * v44);
    if (*(*(a2 + 296206) + 94) >= 50 && v48 == 0)
    {
      RowCol4x4S16(v45, v47, v43, 0, v49, v50, v51, v52);
      *(v47 + 54) = 0;
      *(v47 + 50) = 0;
      *(v47 + 36) = 0;
      v54 = 3;
      *(v47 + 22) = 0;
    }

    else
    {
      RowCol8x8S16(v45, v47, v43, v48, v49, v50, v51, v52);
      v54 = 5;
    }

    v304[v39++] = v54;
    ++v40;
  }

  while (v39 != 6);
  if (*(v3 + 153) <= 7)
  {
    Q_QuantizeS16(v3, v285, v282, v290, v291[1]);
  }

  v55 = 0;
  v56 = v296;
  v57 = (v3 + 254);
  do
  {
    v58 = v304[v55];
    if (v58 > 1)
    {
      if (v58 == 2)
      {
        v66 = *(v302 + 8 * v55);
        v67 = v296 != 0;
        do
        {
          if (v66[v67])
          {
            v69 = *(v300 + 8 * v55);
            *v69 = *v66;
            *(v69 + 2) = v66[1];
            *(v69 + 4) = 0;
            *(v69 + 8) = 0;
            *(v69 + 10) = v66[2];
            goto LABEL_79;
          }

          ++v67;
        }

        while (v67 != 3);
        v57[v55] = 0;
        if (!v56)
        {
          goto LABEL_83;
        }

        v68 = *v66;
        goto LABEL_82;
      }

      if (v58 == 3)
      {
        v59 = *(v302 + 8 * v55);
        v60 = v294;
        while (!v59[v60])
        {
          if (((v60 + 1) & 3) != 0)
          {
            v61 = v60;
          }

          else
          {
            v61 = v60 + 4;
          }

          v60 = v61 + 1;
          if (v61 >= 27)
          {
            goto LABEL_80;
          }
        }

        ZigZag4x4BlockS16(v59, *(v300 + 8 * v55));
        goto LABEL_78;
      }
    }

    else
    {
      if (!v304[v55])
      {
        v57[v55] = 0;
        goto LABEL_83;
      }

      if (v58 == 1)
      {
        if (v56)
        {
          v57[v55] = 0;
          **(v300 + 8 * v55) = **(v302 + 8 * v55);
          goto LABEL_83;
        }

        v75 = *(v300 + 8 * v55);
        if (**(v302 + 8 * v55))
        {
          *v75 = **(v302 + 8 * v55);
          goto LABEL_79;
        }

        *v75 = 0;
        v57[v55] = 0;
        v304[v55] = 0;
        goto LABEL_83;
      }
    }

    v59 = *(v302 + 8 * v55);
    v62 = &v59[v296 != 0];
    if (v56)
    {
      v64 = *v62;
      v62 = (v62 + 2);
      v63 = v64;
      v65 = 62;
    }

    else
    {
      v63 = 0;
      v65 = 64;
    }

    do
    {
      v70 = *v62;
      v71 = v62[1];
      v72 = v62[2];
      v73 = v62[3];
      v62 += 4;
      v63 |= v70 | v71 | v72 | v73;
      v65 -= 8;
    }

    while (v65 > 7);
    for (; v65; --v65)
    {
      v74 = *v62;
      v62 = (v62 + 2);
      v63 |= v74;
    }

    if (v63)
    {
      ZigZagBlockS16(v59, *(v300 + 8 * v55));
LABEL_78:
      v56 = v296;
LABEL_79:
      v57[v55] = 1;
      goto LABEL_83;
    }

LABEL_80:
    v57[v55] = 0;
    if (v56)
    {
      v68 = *v59;
LABEL_82:
      **(v300 + 8 * v55) = v68;
      v304[v55] = 1;
    }

LABEL_83:
    ++v55;
  }

  while (v55 != 6);
  v76 = *(v3 + 274) | (2 * *(v3 + 270));
  v78 = *(v3 + 262);
  v77 = *(v3 + 266);
  v79 = (4 * *(v3 + 258)) | (8 * *(v3 + 254));
  *(v3 + 246) = v76;
  v80 = v79 | (2 * v78) | v77;
  *(v3 + 250) = v80;
  v81 = (v283 + 1302);
  if (*(*(v283 + 1302) + 17) != 1)
  {
    v84 = *(v3 + 154) & 7;
    *(v3 + 154) = v84;
    v85 = (4 * v84 - 12) | v76 & 0xF;
    *(v3 + 246) = v85;
    v86 = v299[5];
    v87 = *(v86 + 8 + v85);
    v88 = *(v16 + 4);
    v89 = v88 - v87;
    if (v88 < v87)
    {
      v90 = *(v16 + 4 * *(v86 + 8 + v85) + 32) & *(v86 + v85);
      v91 = v87 - v88;
      v92 = (*v16 << 8) & 0xFF0000 | (((v90 >> (v87 - v88)) | *v16) << 24) | (*v16 >> 8) & 0xFF00 | HIBYTE(*v16);
      v93 = *(v16 + 24);
      v94 = *(v16 + 8);
      *(v16 + 8) = v94 + 1;
      *(v93 + 4 * v94) = v92;
      v89 = 32 - v91;
      *(v16 + 4) = 32 - v91;
      v95 = v90 << -v91;
      goto LABEL_118;
    }

    *(v16 + 4) = v89;
    v96 = *(v16 + 4 * *(v86 + 8 + v85) + 32) & *(v86 + v85);
    goto LABEL_117;
  }

  if (v56)
  {
    *(v3 + 156) = 1;
    v82 = *(v16 + 4);
    if (v82)
    {
      v83 = v82 - 1;
    }

    else
    {
      v104 = bswap32(*v16);
      v105 = *(v16 + 24);
      v106 = *(v16 + 8);
      *(v16 + 8) = v106 + 1;
      *(v105 + 4 * v106) = v104;
      *v16 = 0;
      v83 = 31;
    }

    *(v16 + 4) = v83;
    LOBYTE(v97) = *(v3 + 154);
    goto LABEL_114;
  }

  v97 = *(v3 + 154);
  if (v97 == 2)
  {
    v98 = (v3 + 226);
    v99 = 1;
    v100 = v284;
    while (!*(v98 - 6))
    {
      v102 = *v98++;
      v101 = v102;
      v103 = v102 == 0;
      if (v99 <= 3)
      {
        ++v99;
        if (!v101)
        {
          continue;
        }
      }

      goto LABEL_105;
    }

LABEL_110:
    *(v3 + 156) = 1;
    v110 = *(v16 + 4);
    if (v110)
    {
      v83 = v110 - 1;
    }

    else
    {
      v111 = bswap32(*v16);
      v112 = *(v16 + 24);
      v113 = *(v16 + 8);
      *(v16 + 8) = v113 + 1;
      *(v112 + 4 * v113) = v111;
      *v16 = 0;
      v83 = 31;
    }

    *(v16 + 4) = v83;
LABEL_114:
    v114 = *(v3 + 246) & 0xF;
    LODWORD(v84) = v97 & 7;
    *(v3 + 154) = v84;
    v115 = v114 | (4 * v84);
    *(v3 + 246) = v115;
    v116 = v299[6];
    v117 = *(v116 + 24 + v115);
    v89 = v83 - v117;
    if (v83 < v117)
    {
      v118 = *(v16 + 4 * *(v116 + 24 + v115) + 32) & *(v116 + v115);
      v119 = v117 - v83;
      v120 = (*v16 << 8) & 0xFF0000 | (((v118 >> v119) | *v16) << 24) | (*v16 >> 8) & 0xFF00 | HIBYTE(*v16);
      v121 = *(v16 + 24);
      v122 = *(v16 + 8);
      *(v16 + 8) = v122 + 1;
      *(v121 + 4 * v122) = v120;
      v89 = 32 - v119;
      *(v16 + 4) = 32 - v119;
      v95 = v118 << -v119;
      goto LABEL_118;
    }

    *(v16 + 4) = v89;
    v96 = *(v16 + 4 * *(v116 + 24 + v115) + 32) & *(v116 + v115);
LABEL_117:
    v95 = (v96 << v89) | *v16;
LABEL_118:
    *v16 = v95;
    v123 = v84;
    v124 = *(v3 + 250);
    if (!*(v303 + 4 * v84))
    {
      v124 = ~v124 & 0xF;
      *(v3 + 250) = v124;
    }

    v125 = v299[7];
    v126 = *(v125 + 16 + v124);
    v127 = v89 - v126;
    if (v89 >= v126)
    {
      *(v16 + 4) = v127;
      v133 = ((*(v16 + 4 * *(v125 + 16 + v124) + 32) & *(v125 + v124)) << v127) | v95;
    }

    else
    {
      v128 = *(v16 + 4 * *(v125 + 16 + v124) + 32) & *(v125 + v124);
      v129 = v126 - v89;
      v130 = (v95 << 8) & 0xFF0000 | (((v128 >> v129) | v95) << 24) | (v95 >> 8) & 0xFF00 | HIBYTE(v95);
      v131 = *(v16 + 24);
      v132 = *(v16 + 8);
      *(v16 + 8) = v132 + 1;
      *(v131 + 4 * v132) = v130;
      v127 = 32 - v129;
      *(v16 + 4) = 32 - v129;
      v133 = v128 << -v129;
    }

    *v16 = v133;
    if (*(v3 + 4 * v123 + 310))
    {
      if ((*(v3 + 155) + 2) > 4u || ((0x1Bu >> (*(v3 + 155) + 2)) & 1) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v134 = dword_295687278[(*(v3 + 155) + 2)];
      v135 = v127 - 2;
      if (v127 < 2)
      {
        v138 = *(v16 + 40) & v134;
        v139 = (v133 << 8) & 0xFF0000 | (((v138 >> (2 - v127)) | v133) << 24) | (v133 >> 8) & 0xFF00 | HIBYTE(v133);
        v140 = *(v16 + 24);
        v141 = *(v16 + 8);
        *(v16 + 8) = v141 + 1;
        *(v140 + 4 * v141) = v139;
        v135 = v127 | 0x1E;
        v136 = v138 << (v127 | 0x1E);
      }

      else
      {
        v136 = ((*(v16 + 40) & v134) << v135) | v133;
      }

      *v16 = v136;
      *(v16 + 4) = v135;
    }

    *(v285 + 22 * *(v285 + 20) + *(v285 + 24) + 1656) = *(v3 + 153);
    if (*(v3 + 4 * *(v3 + 154) + 350))
    {
      v142 = *(v3 + 154);
      v143 = *v81;
      if (v142 <= 1 && !v143[20])
      {
        v144 = v143[18];
        v145 = *(v3 + 198);
        v146 = v283 + 1262;
        v147 = *(v283 + 1262);
        if (v143[21])
        {
          v148 = pvx4(a3, 0, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(v147 + 40));
          v149 = *(v3 + 222);
          v150 = pvy4(a3, 0, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*v146 + 40));
        }

        else
        {
          v148 = pvx(a3, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(v147 + 40));
          v149 = *(v3 + 222);
          v150 = pvy(a3, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*v146 + 40));
        }

        LOBYTE(v154) = v149 - v150;
        v185 = (v145 - v148) & 0x3FLL;
        goto LABEL_157;
      }

      if (v142 >= 2)
      {
        v155 = (v3 + 226);
        v156 = -4;
        v295 = v283 + 1262;
        v297 = v16 + 32;
        do
        {
          if ((*v81)[18])
          {
            v157 = pvx4(a3, v156 + 5, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*v295 + 40));
            v158 = pvy4(a3, v156 + 5, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*v295 + 40));
            v159 = *(v155 - 6) - v157;
            v160 = *v155 - v158;
          }

          else
          {
            v159 = *(v155 - 6);
            LOBYTE(v159) = v159 - pvx4(a3, v156 + 5, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*v295 + 40));
            v161 = v81;
            v162 = *v155;
            LOBYTE(v160) = v162 - pvy4(a3, v156 + 5, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*v295 + 40));
            v81 = v161;
            v57 = (v3 + 254);
          }

          v163 = v159 & 0x3F;
          v164 = v299[8];
          v165 = v164 + 64;
          v166 = *(v164 + 64 + v163);
          v167 = *(v16 + 4);
          v168 = v167 - v166;
          if (v167 >= v166)
          {
            *(v16 + 4) = v168;
            v174 = ((*(v297 + 4 * *(v165 + v163)) & *(v164 + v163)) << v168) | *v16;
          }

          else
          {
            v169 = *(v297 + 4 * *(v164 + 64 + (v159 & 0x3F))) & *(v164 + v163);
            v170 = v166 - v167;
            v171 = (*v16 << 8) & 0xFF0000 | (((v169 >> v170) | *v16) << 24) | (*v16 >> 8) & 0xFF00 | HIBYTE(*v16);
            v172 = *(v16 + 24);
            v173 = *(v16 + 8);
            *(v16 + 8) = v173 + 1;
            *(v172 + 4 * v173) = v171;
            v168 = 32 - v170;
            *(v16 + 4) = 32 - v170;
            v174 = v169 << -v170;
          }

          v175 = v160 & 0x3F;
          *v16 = v174;
          v176 = *(v165 + v175);
          v177 = v168 - v176;
          if (v168 >= v176)
          {
            *(v16 + 4) = v177;
            v183 = ((*(v297 + 4 * *(v165 + v175)) & *(v164 + v175)) << v177) | v174;
          }

          else
          {
            v178 = *(v297 + 4 * *(v165 + v175)) & *(v164 + v175);
            v179 = v176 - v168;
            v180 = (v174 << 8) & 0xFF0000 | (((v178 >> (v176 - v168)) | v174) << 24) | (v174 >> 8) & 0xFF00 | HIBYTE(v174);
            v181 = *(v16 + 24);
            v182 = *(v16 + 8);
            *(v16 + 8) = v182 + 1;
            *(v181 + 4 * v182) = v180;
            *(v16 + 4) = 32 - v179;
            v183 = v178 << -v179;
          }

          *v16 = v183;
          ++v155;
        }

        while (!__CFADD__(v156++, 1));
      }

      else
      {
        if (v143[18])
        {
          v151 = pvx4(a3, 0, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*(v283 + 1262) + 40));
          v152 = pvy4(a3, 0, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*(v283 + 1262) + 40));
          v153 = *(v3 + 198) - v151;
          v154 = *(v3 + 222) - v152;
        }

        else
        {
          v153 = *(v3 + 198);
          LOBYTE(v153) = v153 - pvx4(a3, 0, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*(v283 + 1262) + 40));
          v186 = *(v3 + 222);
          LOBYTE(v154) = v186 - pvy4(a3, 0, *(v3 + 162), *(v3 + 166), *(v293 + 4), *(*(v283 + 1262) + 40));
        }

        v185 = v153 & 0x3F;
LABEL_157:
        v187 = v154 & 0x3F;
        v188 = v299[8];
        v189 = v188 + 64;
        v190 = *(v188 + 64 + v185);
        v191 = *(v16 + 4);
        v192 = v191 - v190;
        if (v191 >= v190)
        {
          *(v16 + 4) = v192;
          v198 = ((*(v16 + 4 * *(v189 + v185) + 32) & *(v188 + v185)) << v192) | *v16;
        }

        else
        {
          v193 = *(v16 + 4 * *(v188 + 64 + v185) + 32) & *(v188 + v185);
          v194 = v190 - v191;
          v195 = (*v16 << 8) & 0xFF0000 | (((v193 >> v194) | *v16) << 24) | (*v16 >> 8) & 0xFF00 | HIBYTE(*v16);
          v196 = *(v16 + 24);
          v197 = *(v16 + 8);
          *(v16 + 8) = v197 + 1;
          *(v196 + 4 * v197) = v195;
          v192 = 32 - v194;
          *(v16 + 4) = 32 - v194;
          v198 = v193 << -v194;
        }

        *v16 = v198;
        v199 = *(v189 + v187);
        v200 = v192 - v199;
        if (v192 >= v199)
        {
          *(v16 + 4) = v200;
          v206 = ((*(v16 + 4 * *(v189 + v187) + 32) & *(v188 + v187)) << v200) | v198;
        }

        else
        {
          v201 = *(v16 + 4 * *(v189 + v187) + 32) & *(v188 + v187);
          v202 = v199 - v192;
          v203 = (v198 << 8) & 0xFF0000 | (((v201 >> (v199 - v192)) | v198) << 24) | (v198 >> 8) & 0xFF00 | HIBYTE(v198);
          v204 = *(v16 + 24);
          v205 = *(v16 + 8);
          *(v16 + 8) = v205 + 1;
          *(v204 + 4 * v205) = v203;
          *(v16 + 4) = 32 - v202;
          v206 = v201 << -v202;
        }

        *v16 = v206;
      }
    }

    v207 = 0;
    v208 = v16 + 32;
    v298 = v290 + (*(v3 + 153) << 10);
    while (2)
    {
      v209 = *(v300 + 8 * v207);
      v210 = *(v3 + 154);
      if (*(v303 + 4 * v210))
      {
        v211 = v209->i16[0];
        if (v211 >= 255)
        {
          v212 = *(v16 + 4);
          v211 = 254;
          goto LABEL_174;
        }

        v212 = *(v16 + 4);
        if (v211 <= 0)
        {
          v211 = 1;
LABEL_174:
          v209->i16[0] = v211;
        }

        else if (v211 == 128)
        {
          v215 = v212 - 8;
          if (v212 >= 8)
          {
            *(v16 + 4) = v215;
            v216 = *(v16 + 64) << v215;
            goto LABEL_177;
          }

          v219 = *(v16 + 64);
          v220 = *v16;
          v221 = (v219 >> (8 - v212)) | *v16;
          v222 = *v16 << 8;
LABEL_179:
          v223 = v222 & 0xFF0000 | (v221 << 24) | (v220 >> 8) & 0xFF00 | HIBYTE(v220);
          v224 = *(v16 + 24);
          v225 = *(v16 + 8);
          *(v16 + 8) = v225 + 1;
          *(v224 + 4 * v225) = v223;
          v226 = v212 | 0x18;
          *(v16 + 4) = v226;
          v218 = v219 << v226;
          goto LABEL_180;
        }

        v217 = v212 - 8;
        if (v212 < 8)
        {
          v219 = *(v16 + 64) & v211;
          v220 = *v16;
          v221 = (v219 >> (8 - v212)) | *v16;
          v222 = v221 << 8;
          goto LABEL_179;
        }

        *(v16 + 4) = v217;
        v216 = (*(v16 + 64) & v211) << v217;
LABEL_177:
        v218 = v216 | *v16;
LABEL_180:
        *v16 = v218;
        v214 = &v209->i16[1];
        v213 = 1;
      }

      else
      {
        v213 = 0;
        v214 = *(v300 + 8 * v207);
      }

      if (!v57[v207])
      {
        v228 = 0;
        v229 = 0;
        goto LABEL_222;
      }

      if (v304[v207] - 1 > 2)
      {
        v227 = 63;
      }

      else
      {
        v227 = qword_295687290[(v304[v207] - 1)];
      }

      v230 = v209->u64 + 2 * v227 + 2;
      do
      {
        v231 = *(v230 - 2);
        v230 -= 2;
      }

      while (!v231);
      if (v214 > v230)
      {
        v228 = 0;
        v229 = 0;
LABEL_223:
        v270 = *(v302 + 8 * v207);
        if (v213 == 1)
        {
          Mr_LaForgeS16(*v270, v209, *(v303 + 4 * v210), *(v3 + 153));
        }

        else if (v229 > 0 || v228 >= 3)
        {
          v271 = *(v3 + 153);
          v272 = *(v303 + 4 * v210);
          if (v229 > 3 || v228 > 3)
          {
            if (v229 > 3)
            {
              if (v228 > 3)
              {
                iDct8x8fS16(v270, v209, v271, v272, v229, v228, v298 + 69120, v298 + 35328);
              }

              else
              {
                iColRow8x4fS16(v270, v209, v271, v272, v229, v228, v298 + 69120, v298 + 35328);
              }
            }

            else
            {
              iRowCol4x8f1S16(v270, v209, v271, v272, v229, v228, v298 + 69120, v298 + 35328);
            }
          }

          else
          {
            iRowCol4x4f1S16(v270, v209, v271, v272, v229, v228, v298 + 69120, v298 + 35328);
          }
        }

        else
        {
          iRowCol1x3fS16(v270, v209, *(v3 + 153), *(v303 + 4 * v210), v298 + 69120, v298 + 35328);
        }

        goto LABEL_237;
      }

      LODWORD(v228) = 0;
      LODWORD(v229) = 0;
      v232 = v299[9];
      v233 = v232 + 0x10000;
      v234 = v232 + 66560;
LABEL_191:
      v235 = *v214;
      if (*v214)
      {
        v236 = 0;
      }

      else
      {
        v236 = 0;
        do
        {
          v237 = v214[1];
          ++v214;
          v235 = v237;
          ++v236;
        }

        while (!v237);
      }

      v238 = v214 >= v230;
      v239 = *(*(v233 + (v238 << 9) + 8 * v236) + v235);
      v240 = *(*(v234 + (v238 << 9) + 8 * v236) + v235);
      v241 = *v16;
      v242 = *(v16 + 4);
      v243 = v242 - v240;
      if (v242 >= v240)
      {
        v249 = ((*(v208 + 4 * v240) & v239) << v243) | v241;
      }

      else
      {
        v244 = *(v208 + 4 * v240) & v239;
        v245 = v240 - v242;
        v246 = (v241 << 8) & 0xFF0000 | (((v244 >> v245) | v241) << 24) | (v241 >> 8) & 0xFF00 | HIBYTE(v241);
        v247 = *(v16 + 24);
        v248 = *(v16 + 8);
        *(v16 + 8) = v248 + 1;
        *(v247 + 4 * v248) = v246;
        v243 = 32 - v245;
        v249 = v244 << -v245;
      }

      *v16 = v249;
      *(v16 + 4) = v243;
      v250 = v236 + v213;
      v251 = *(v291 + v250 + 383);
      if (v251 <= v229)
      {
        v229 = v229;
      }

      else
      {
        v229 = v251;
      }

      v252 = *(v291 + v250 + 447);
      if (v252 <= v228)
      {
        v228 = v228;
      }

      else
      {
        v228 = v252;
      }

      if (v239 != 3 || v240 != 7)
      {
LABEL_220:
        v213 = v250 + 1;
        if (++v214 > v230)
        {
          if (v57[v207])
          {
            goto LABEL_223;
          }

LABEL_222:
          if (*(v303 + 4 * v210))
          {
            goto LABEL_223;
          }

LABEL_237:
          if (++v207 == 6)
          {
            DumpDecoded263MB3S16(a2, *(a2 + 32), *(a2 + 24), v57);
            return 0;
          }

          continue;
        }

        goto LABEL_191;
      }

      break;
    }

    if (v243)
    {
      v254 = 1 << (v243 - 1);
      if (v214 < v230)
      {
        v254 = 0;
      }

      v255 = v249 | v254;
      v256 = *(v16 + 56);
      if ((v243 - 1) > 5)
      {
        v257 = v243 - 7;
        v258 = ((v256 & v236) << (v243 - 7)) | v255;
        v259 = *(v16 + 64);
        if ((v243 - 7) <= 7)
        {
          v260 = v259 & v235;
          v261 = (((v260 >> (15 - v243)) | v258) << 8) & 0xFF0000 | (((v260 >> (15 - v243)) | v258) << 24) | (((v260 >> (15 - v243)) | v258) >> 8) & 0xFF00 | (((v260 >> (15 - v243)) | v258) >> 24);
          v262 = *(v16 + 24);
          v263 = *(v16 + 8);
          *(v16 + 8) = v263 + 1;
          *(v262 + 4 * v263) = v261;
          *(v16 + 4) = v257 | 0x18;
          v264 = v260 << (v257 | 0x18);
LABEL_219:
          *v16 = v264;
          goto LABEL_220;
        }

LABEL_218:
        *(v16 + 4) = v257 - 8;
        v264 = ((v259 & v235) << (v257 - 8)) | v258;
        goto LABEL_219;
      }

      v267 = v256 & v236;
      v268 = *(v16 + 24);
      v269 = *(v16 + 8);
      *(v16 + 8) = v269 + 1;
      *(v268 + 4 * v269) = (((v267 >> (7 - v243)) | v255) << 8) & 0xFF0000 | (((v267 >> (7 - v243)) | v255) << 24) | (((v267 >> (7 - v243)) | v255) >> 8) & 0xFF00 | (((v267 >> (7 - v243)) | v255) >> 24);
      v257 = v243 + 25;
      v258 = v267 << (v243 + 25);
    }

    else
    {
      v265 = *(v16 + 24);
      v266 = *(v16 + 8);
      *(v16 + 8) = v266 + 1;
      *(v265 + 4 * v266) = bswap32(v249);
      v258 = ((*(v16 + 56) & v236) << 25) | ((v214 >= v230) << 31);
      v257 = 25;
    }

    v259 = *(v16 + 64);
    goto LABEL_218;
  }

  v100 = v284;
  if (*(v3 + 198))
  {
    goto LABEL_110;
  }

  v103 = *(v3 + 222) == 0;
LABEL_105:
  if (v76 || v80 || !v103)
  {
    goto LABEL_110;
  }

  v107 = *(v16 + 4);
  if (v107)
  {
    v108 = v107 - 1;
    v109 = *v16 | (1 << v108);
  }

  else
  {
    v273 = bswap32(*v16);
    v274 = *(v16 + 24);
    v275 = *(v16 + 8);
    *(v16 + 8) = v275 + 1;
    *(v274 + 4 * v275) = v273;
    v108 = 31;
    v109 = 0x80000000;
  }

  *v16 = v109;
  *(v16 + 4) = v108;
  v276 = *(v3 + 155);
  if (v276)
  {
    *(v3 + 154) = v97 - 1;
    *(v3 + 153) -= v276;
    *(v3 + 155) = 0;
  }

  v277 = a2;
  v278 = v100[42] + v286;
  Copy8x8(**(a2 + 32) + v278, **(a2 + 24) + v278, v287 + 32);
  v279 = v100[43] + v286;
  Copy8x8(**(v277 + 32) + v279, **(v277 + 24) + v279, v287 + 32);
  v280 = v100[44] + v286;
  Copy8x8(**(v277 + 32) + v280, **(v277 + 24) + v280, v287 + 32);
  v281 = v100[45] + v286;
  Copy8x8(**(v277 + 32) + v281, **(v277 + 24) + v281, v287 + 32);
  Copy8x8(*(*(v277 + 32) + 8) + v288, *(*(v277 + 24) + 8) + v288, v289 + 16);
  Copy8x8(*(*(v277 + 32) + 16) + v288, *(*(v277 + 24) + 16) + v288, v289 + 16);
  return 2;
}

uint64_t H263CMPR_MB_OBMCS16(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 296182);
  v4 = *(a1 + 296238);
  v270 = v4[6];
  v272 = *(a1 + 296222);
  v5 = *(a1 + 296230);
  v6 = *(a1 + 296190);
  v275 = v4[5];
  v269 = v4[4];
  v7 = *v3;
  v268 = *(a1 + 24);
  v264 = *(a1 + 296198);
  v265 = v6;
  v8 = *a1;
  v276 = *(a1 + 4);
  v9 = (*v3 + 4 * *(v6 + 20));
  v10 = *v3 + 4 * *(v6 + 24);
  v11 = *(v10 + 76) + *v9;
  v12 = *(v10 + 340) + v9[47];
  v13 = *(v3 + 154);
  v280 = v3 + 330;
  v14 = *(v3 + 330 + 4 * v13);
  v273 = v14 != 0;
  v15 = *(a1 + 66);
  v16 = *(*(a1 + 296206) + (*(v3 + 166) + *(*(a1 + 296174) + 20) * *(v3 + 162)) + 136);
  *(v3 + 155) = 0;
  if (v16 <= 0x30 && (v13 == 3 || !v13))
  {
    v17 = *(v3 + 153);
    v18 = v16 - v17;
    *(v3 + 155) = v18;
    if (v18)
    {
      v18 = v18;
      if (v18 <= 2)
      {
        if (v18 > -3)
        {
LABEL_10:
          *(v3 + 153) = v18 + v17;
          *(v3 + 154) = v13 + 1;
          goto LABEL_11;
        }

        LOBYTE(v18) = -2;
      }

      else
      {
        LOBYTE(v18) = 2;
      }

      *(v3 + 155) = v18;
      goto LABEL_10;
    }
  }

LABEL_11:
  v267 = v15;
  v274 = v14;
  v19 = *(v3 + 8);
  *(v3 + 152) = *(v3 + 153);
  Grab8x8CharS16(v19, **(a1 + 40) + v7[42] + v11, v8 + 32);
  Grab8x8CharS16(*(v3 + 16), **(a1 + 40) + v7[43] + v11, v8 + 32);
  Grab8x8CharS16(*(v3 + 24), **(a1 + 40) + v7[44] + v11, v8 + 32);
  Grab8x8CharS16(*(v3 + 32), **(a1 + 40) + v7[45] + v11, v8 + 32);
  Grab8x8CharS16(*(v3 + 40), *(*(a1 + 40) + 8) + v12, v276 + 16);
  Grab8x8CharS16(*(v3 + 48), *(*(a1 + 40) + 16) + v12, v276 + 16);
  v20 = *(v3 + 154);
  v278 = v3 + 8;
  v279 = a1;
  if (v20 >= 2)
  {
    if (v20 != 2)
    {
      goto LABEL_22;
    }

    v26 = vaddvq_s32(*(v3 + 202));
    v27 = vaddvq_s32(*(v3 + 226));
    v28 = (v26 >> 31) | 1;
    if (v28 * v26 <= 0)
    {
      v29 = -(-(v28 * v26) & 0xF);
    }

    else
    {
      v29 = (v28 * v26) & 0xF;
    }

    v30 = roundtab16[v29] * v28 + 2 * (v26 / 16);
    v31 = (v27 >> 31) | 1;
    if (v31 * v27 <= 0)
    {
      v32 = -(-(v31 * v27) & 0xF);
    }

    else
    {
      v32 = (v31 * v27) & 0xF;
    }

    v266 = roundtab16[v32] * v31 + 2 * (v27 / 16);
    SubtractPredS16(*(v3 + 8), (v267 + 4 * (v7[42] + v11)), v8 + 32);
    SubtractPredS16(*(v3 + 16), (v267 + 4 * (v7[43] + v11)), v8 + 32);
    SubtractPredS16(*(v3 + 24), (v267 + 4 * (v7[44] + v11)), v8 + 32);
    SubtractPredS16(*(v3 + 32), (v267 + 4 * (v7[45] + v11)), v8 + 32);
    MC_ForUVS16(*(v3 + 40), *(v268 + 8) + v12, v276 + 16, v30, v266);
    v21 = *(v3 + 48);
    v24 = *(v268 + 16) + v12;
    v25 = v276 + 16;
    v22 = v30;
    v23 = v266;
  }

  else
  {
    SubtractPredS16(*(v3 + 8), (v267 + 4 * (v7[42] + v11)), v8 + 32);
    SubtractPredS16(*(v3 + 16), (v267 + 4 * (v7[43] + v11)), v8 + 32);
    SubtractPredS16(*(v3 + 24), (v267 + 4 * (v7[44] + v11)), v8 + 32);
    SubtractPredS16(*(v3 + 32), (v267 + 4 * (v7[45] + v11)), v8 + 32);
    MC_ForUVS16(*(v3 + 40), *(v268 + 8) + v12, v276 + 16, *(v3 + 198), *(v3 + 222));
    v21 = *(v3 + 48);
    v22 = *(v3 + 198);
    v23 = *(v3 + 222);
    v24 = *(v268 + 16) + v12;
    v25 = v276 + 16;
  }

  MC_ForUVS16(v21, v24, v25, v22, v23);
LABEL_22:
  v33 = (v3 + 56);
  v34 = -6;
  v277 = v3 + 56;
  do
  {
    if ((v34 + 6) >= 4)
    {
      v35 = 152;
    }

    else
    {
      v35 = 153;
    }

    v36 = *(v3 + v35);
    v37 = *(v3 + 153);
    v39 = v33 - 6;
    v38 = *(v33 - 6);
    if (v37 >= 8)
    {
      v39 = v33;
    }

    v40 = *v39;
    v41 = *(v280 + 4 * *(v3 + 154));
    v42 = *(v270 + 1516);
    v43 = *(v270 + 1524);
    v44 = *(v270 + 1508);
    v45 = *(v269 + 102656 + 8 * v37);
    if (*(*(a1 + 296206) + 94) >= 50 && v41 == 0)
    {
      RowCol4x4S16(v38, v40, v36, 0, v42, v43, v44, v45);
      *(v40 + 54) = 0;
      *(v40 + 50) = 0;
      *(v40 + 36) = 0;
      v47 = 3;
      *(v40 + 22) = 0;
    }

    else
    {
      RowCol8x8S16(v38, v40, v36, v41, v42, v43, v44, v45);
      v47 = 5;
    }

    v281[v34 + 6] = v47;
    ++v33;
    v48 = __CFADD__(v34++, 1);
  }

  while (!v48);
  if (*(v3 + 153) <= 7)
  {
    Q_QuantizeS16(v3, v265, v264, v269, v270[1]);
  }

  v49 = 0;
  v50 = v274;
  v51 = (v3 + 254);
  v52 = a1;
  do
  {
    v53 = v281[v49];
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v59 = *(v277 + 8 * v49);
        v60 = v274 != 0;
        do
        {
          if (v59[v60])
          {
            v61 = *(v278 + 8 * v49);
            *v61 = *v59;
            *(v61 + 2) = v59[1];
            *(v61 + 4) = 0;
            *(v61 + 8) = 0;
            *(v61 + 10) = v59[2];
            goto LABEL_71;
          }

          ++v60;
        }

        while (v60 != 3);
        v51[v49] = 0;
        if (!v50)
        {
          goto LABEL_72;
        }

        v58 = *v59;
      }

      else
      {
        if (v53 != 3)
        {
LABEL_53:
          v54 = *(v277 + 8 * v49);
          v57 = v274 != 0;
          while (!v54[v57])
          {
            if (++v57 == 64)
            {
              goto LABEL_56;
            }
          }

          ZigZagBlockS16(v54, *(v278 + 8 * v49));
LABEL_67:
          v50 = v274;
          goto LABEL_71;
        }

        v54 = *(v277 + 8 * v49);
        v55 = v273;
        do
        {
          if (v54[v55])
          {
            ZigZag4x4BlockS16(v54, *(v278 + 8 * v49));
            goto LABEL_67;
          }

          if (((v55 + 1) & 3) != 0)
          {
            v56 = v55;
          }

          else
          {
            v56 = v55 + 4;
          }

          v55 = v56 + 1;
        }

        while (v56 < 27);
LABEL_56:
        v51[v49] = 0;
        if (!v50)
        {
          goto LABEL_72;
        }

        v58 = *v54;
      }

      **(v278 + 8 * v49) = v58;
      v281[v49] = 1;
      goto LABEL_72;
    }

    if (!v281[v49])
    {
      v51[v49] = 0;
      goto LABEL_72;
    }

    if (v53 != 1)
    {
      goto LABEL_53;
    }

    if (v50)
    {
      v51[v49] = 0;
      **(v278 + 8 * v49) = **(v277 + 8 * v49);
      goto LABEL_72;
    }

    v62 = *(v278 + 8 * v49);
    if (**(v277 + 8 * v49))
    {
      *v62 = **(v277 + 8 * v49);
LABEL_71:
      v51[v49] = 1;
      goto LABEL_72;
    }

    *v62 = 0;
    v51[v49] = 0;
    v281[v49] = 0;
LABEL_72:
    ++v49;
  }

  while (v49 != 6);
  v63 = *(v3 + 274) | (2 * *(v3 + 270));
  v65 = *(v3 + 262);
  v64 = *(v3 + 266);
  v66 = (4 * *(v3 + 258)) | (8 * *(v3 + 254));
  *(v3 + 246) = v63;
  v67 = v66 | (2 * v65) | v64;
  *(v3 + 250) = v67;
  if (*(*(a1 + 296214) + 17) != 1)
  {
    v70 = *(v3 + 154) & 7;
    *(v3 + 154) = v70;
    v71 = (4 * v70 - 12) | v63 & 0xF;
    *(v3 + 246) = v71;
    v72 = v275[5];
    v73 = *(v72 + 8 + v71);
    v74 = *(v5 + 4);
    v75 = v74 - v73;
    if (v74 < v73)
    {
      v76 = *(v5 + 4 * *(v72 + 8 + v71) + 32) & *(v72 + v71);
      v77 = v73 - v74;
      v78 = (*v5 << 8) & 0xFF0000 | (((v76 >> (v73 - v74)) | *v5) << 24) | (*v5 >> 8) & 0xFF00 | HIBYTE(*v5);
      v79 = *(v5 + 24);
      v80 = *(v5 + 8);
      *(v5 + 8) = v80 + 1;
      *(v79 + 4 * v80) = v78;
      v75 = 32 - v77;
      *(v5 + 4) = 32 - v77;
      v81 = v76 << -v77;
      goto LABEL_106;
    }

    *(v5 + 4) = v75;
    v82 = *(v5 + 4 * *(v72 + 8 + v71) + 32) & *(v72 + v71);
    goto LABEL_105;
  }

  if (v50)
  {
    *(v3 + 156) = 1;
    v68 = *(v5 + 4);
    if (v68)
    {
      v69 = v68 - 1;
    }

    else
    {
      v89 = bswap32(*v5);
      v90 = *(v5 + 24);
      v91 = *(v5 + 8);
      *(v5 + 8) = v91 + 1;
      *(v90 + 4 * v91) = v89;
      *v5 = 0;
      v63 = *(v3 + 246);
      v69 = 31;
    }

    *(v5 + 4) = v69;
    LOBYTE(v83) = *(v3 + 154);
    goto LABEL_102;
  }

  v83 = *(v3 + 154);
  if (v83 == 2)
  {
    v84 = (v3 + 226);
    v85 = 1;
    while (!*(v84 - 6))
    {
      v87 = *v84++;
      v86 = v87;
      v88 = v87 == 0;
      if (v85 <= 3)
      {
        ++v85;
        if (!v86)
        {
          continue;
        }
      }

      goto LABEL_92;
    }

LABEL_91:
    v88 = 0;
LABEL_92:
    if (!v63)
    {
      goto LABEL_93;
    }

LABEL_98:
    *(v3 + 156) = 1;
    v95 = *(v5 + 4);
    if (v95)
    {
      v69 = v95 - 1;
    }

    else
    {
      v96 = bswap32(*v5);
      v97 = *(v5 + 24);
      v98 = *(v5 + 8);
      *(v5 + 8) = v98 + 1;
      *(v97 + 4 * v98) = v96;
      *v5 = 0;
      v63 = *(v3 + 246);
      v69 = 31;
    }

    *(v5 + 4) = v69;
LABEL_102:
    LODWORD(v70) = v83 & 7;
    *(v3 + 154) = v70;
    v99 = v63 & 0xF | (4 * v70);
    *(v3 + 246) = v99;
    v100 = v275[6];
    v101 = *(v100 + 24 + v99);
    v75 = v69 - v101;
    if (v69 < v101)
    {
      v102 = *(v5 + 4 * *(v100 + 24 + v99) + 32) & *(v100 + v99);
      v103 = v101 - v69;
      v104 = (*v5 << 8) & 0xFF0000 | (((v102 >> v103) | *v5) << 24) | (*v5 >> 8) & 0xFF00 | HIBYTE(*v5);
      v105 = *(v5 + 24);
      v106 = *(v5 + 8);
      *(v5 + 8) = v106 + 1;
      *(v105 + 4 * v106) = v104;
      v75 = 32 - v103;
      *(v5 + 4) = 32 - v103;
      v81 = v102 << -v103;
      goto LABEL_106;
    }

    *(v5 + 4) = v75;
    v82 = *(v5 + 4 * *(v100 + 24 + v99) + 32) & *(v100 + v99);
LABEL_105:
    v81 = (v82 << v75) | *v5;
LABEL_106:
    *v5 = v81;
    v107 = v70;
    v108 = *(v3 + 250);
    if (!*(v280 + 4 * v70))
    {
      v108 = ~v108 & 0xF;
      *(v3 + 250) = v108;
    }

    v109 = v275[7];
    v110 = *(v109 + 16 + v108);
    v111 = v75 - v110;
    if (v75 >= v110)
    {
      *(v5 + 4) = v111;
      v117 = ((*(v5 + 4 * *(v109 + 16 + v108) + 32) & *(v109 + v108)) << v111) | v81;
    }

    else
    {
      v112 = *(v5 + 4 * *(v109 + 16 + v108) + 32) & *(v109 + v108);
      v113 = v110 - v75;
      v114 = (v81 << 8) & 0xFF0000 | (((v112 >> v113) | v81) << 24) | (v81 >> 8) & 0xFF00 | HIBYTE(v81);
      v115 = *(v5 + 24);
      v116 = *(v5 + 8);
      *(v5 + 8) = v116 + 1;
      *(v115 + 4 * v116) = v114;
      v111 = 32 - v113;
      *(v5 + 4) = 32 - v113;
      v117 = v112 << -v113;
    }

    *v5 = v117;
    if (*(v3 + 4 * v107 + 310))
    {
      if ((*(v3 + 155) + 2) > 4u || ((0x1Bu >> (*(v3 + 155) + 2)) & 1) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v118 = dword_295687278[(*(v3 + 155) + 2)];
      v119 = v111 - 2;
      if (v111 < 2)
      {
        v122 = *(v5 + 40) & v118;
        v123 = (v117 << 8) & 0xFF0000 | (((v122 >> (2 - v111)) | v117) << 24) | (v117 >> 8) & 0xFF00 | HIBYTE(v117);
        v124 = *(v5 + 24);
        v125 = *(v5 + 8);
        *(v5 + 8) = v125 + 1;
        *(v124 + 4 * v125) = v123;
        v119 = v111 | 0x1E;
        v120 = v122 << (v111 | 0x1E);
      }

      else
      {
        v120 = ((*(v5 + 40) & v118) << v119) | v117;
      }

      *v5 = v120;
      *(v5 + 4) = v119;
    }

    *(v265 + 22 * *(v265 + 20) + *(v265 + 24) + 1656) = *(v3 + 153);
    if (*(v3 + 4 * *(v3 + 154) + 350))
    {
      v126 = *(v3 + 154);
      v127 = *(a1 + 296214);
      if (v126 <= 1 && !v127[20])
      {
        v128 = v127[18];
        v129 = *(v3 + 198);
        v130 = *(a1 + 296174);
        if (v127[21])
        {
          v131 = pvx4(a2, 0, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(v130 + 40));
          v132 = *(v3 + 222);
          v133 = pvy4(a2, 0, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v279 + 296174) + 40));
        }

        else
        {
          v131 = pvx(a2, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(v130 + 40));
          v132 = *(v3 + 222);
          v133 = pvy(a2, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v279 + 296174) + 40));
        }

        LOBYTE(v137) = v132 - v133;
        v168 = (v129 - v131) & 0x3FLL;
        goto LABEL_148;
      }

      if (v126 >= 2)
      {
        v138 = v5 + 32;
        v139 = (v3 + 226);
        v140 = -4;
        do
        {
          v141 = v138;
          if (*(*(v52 + 296214) + 18))
          {
            v142 = pvx4(a2, v140 + 5, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v52 + 296174) + 40));
            v143 = pvy4(a2, v140 + 5, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v52 + 296174) + 40));
            v144 = *(v139 - 6) - v142;
            v145 = *v139 - v143;
          }

          else
          {
            v144 = *(v139 - 6);
            LOBYTE(v144) = v144 - pvx4(a2, v140 + 5, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v52 + 296174) + 40));
            v146 = *v139;
            LOBYTE(v145) = v146 - pvy4(a2, v140 + 5, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v279 + 296174) + 40));
            v52 = v279;
          }

          v147 = v144 & 0x3F;
          v148 = v275[8];
          v149 = v148 + 64;
          v150 = *(v148 + 64 + v147);
          v151 = *(v5 + 4);
          v152 = v151 - v150;
          v138 = v141;
          if (v151 >= v150)
          {
            *(v5 + 4) = v152;
            v158 = ((*(v141 + 4 * *(v149 + v147)) & *(v148 + v147)) << v152) | *v5;
          }

          else
          {
            v153 = *(v141 + 4 * *(v148 + 64 + (v144 & 0x3F))) & *(v148 + v147);
            v154 = v150 - v151;
            v155 = (*v5 << 8) & 0xFF0000 | (((v153 >> v154) | *v5) << 24) | (*v5 >> 8) & 0xFF00 | HIBYTE(*v5);
            v156 = *(v5 + 24);
            v157 = *(v5 + 8);
            *(v5 + 8) = v157 + 1;
            *(v156 + 4 * v157) = v155;
            v152 = 32 - v154;
            *(v5 + 4) = 32 - v154;
            v158 = v153 << -v154;
          }

          v51 = (v3 + 254);
          v159 = v145 & 0x3F;
          *v5 = v158;
          v160 = *(v149 + v159);
          v161 = v152 - v160;
          if (v152 >= v160)
          {
            *(v5 + 4) = v161;
            v167 = ((*(v138 + 4 * *(v149 + v159)) & *(v148 + v159)) << v161) | v158;
          }

          else
          {
            v162 = *(v138 + 4 * *(v149 + v159)) & *(v148 + v159);
            v163 = v160 - v152;
            v164 = (v158 << 8) & 0xFF0000 | (((v162 >> (v160 - v152)) | v158) << 24) | (v158 >> 8) & 0xFF00 | HIBYTE(v158);
            v165 = *(v5 + 24);
            v166 = *(v5 + 8);
            *(v5 + 8) = v166 + 1;
            *(v165 + 4 * v166) = v164;
            *(v5 + 4) = 32 - v163;
            v167 = v162 << -v163;
          }

          *v5 = v167;
          ++v139;
          v48 = __CFADD__(v140++, 1);
        }

        while (!v48);
      }

      else
      {
        if (v127[18])
        {
          v134 = pvx4(a2, 0, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(a1 + 296174) + 40));
          v135 = pvy4(a2, 0, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(a1 + 296174) + 40));
          v136 = *(v3 + 198) - v134;
          v137 = *(v3 + 222) - v135;
        }

        else
        {
          v136 = *(v3 + 198);
          LOBYTE(v136) = v136 - pvx4(a2, 0, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v279 + 296174) + 40));
          v173 = *(v3 + 222);
          LOBYTE(v137) = v173 - pvy4(a2, 0, *(v3 + 162), *(v3 + 166), *(v272 + 4), *(*(v279 + 296174) + 40));
        }

        v168 = v136 & 0x3F;
LABEL_148:
        v174 = v137 & 0x3F;
        v175 = v275[8];
        v176 = v175 + 64;
        v177 = *(v175 + 64 + v168);
        v178 = *(v5 + 4);
        v179 = v178 - v177;
        if (v178 >= v177)
        {
          *(v5 + 4) = v179;
          v185 = ((*(v5 + 4 * *(v176 + v168) + 32) & *(v175 + v168)) << v179) | *v5;
        }

        else
        {
          v180 = *(v5 + 4 * *(v175 + 64 + v168) + 32) & *(v175 + v168);
          v181 = v177 - v178;
          v182 = (*v5 << 8) & 0xFF0000 | (((v180 >> v181) | *v5) << 24) | (*v5 >> 8) & 0xFF00 | HIBYTE(*v5);
          v183 = *(v5 + 24);
          v184 = *(v5 + 8);
          *(v5 + 8) = v184 + 1;
          *(v183 + 4 * v184) = v182;
          v179 = 32 - v181;
          *(v5 + 4) = 32 - v181;
          v185 = v180 << -v181;
        }

        *v5 = v185;
        v186 = *(v176 + v174);
        v187 = v179 - v186;
        if (v179 >= v186)
        {
          *(v5 + 4) = v187;
          v193 = ((*(v5 + 4 * *(v176 + v174) + 32) & *(v175 + v174)) << v187) | v185;
        }

        else
        {
          v188 = *(v5 + 4 * *(v176 + v174) + 32) & *(v175 + v174);
          v189 = v186 - v179;
          v190 = (v185 << 8) & 0xFF0000 | (((v188 >> (v186 - v179)) | v185) << 24) | (v185 >> 8) & 0xFF00 | HIBYTE(v185);
          v191 = *(v5 + 24);
          v192 = *(v5 + 8);
          *(v5 + 8) = v192 + 1;
          *(v191 + 4 * v192) = v190;
          *(v5 + 4) = 32 - v189;
          v193 = v188 << -v189;
        }

        *v5 = v193;
      }
    }

    v194 = 0;
    v195 = v5 + 32;
    v196 = v269 + (*(v3 + 153) << 10);
    while (2)
    {
      v197 = *(v278 + 8 * v194);
      v198 = *(v3 + 154);
      if (*(v280 + 4 * v198))
      {
        v199 = v197->i16[0];
        if (v199 >= 255)
        {
          v200 = *(v5 + 4);
          v199 = 254;
          goto LABEL_165;
        }

        v200 = *(v5 + 4);
        if (v199 <= 0)
        {
          v199 = 1;
LABEL_165:
          v197->i16[0] = v199;
        }

        else if (v199 == 128)
        {
          v203 = v200 - 8;
          if (v200 >= 8)
          {
            *(v5 + 4) = v203;
            v204 = *(v5 + 64) << v203;
            goto LABEL_168;
          }

          v207 = *(v5 + 64);
          v208 = *v5;
          v209 = (v207 >> (8 - v200)) | *v5;
          v210 = *v5 << 8;
LABEL_170:
          v211 = v210 & 0xFF0000 | (v209 << 24) | (v208 >> 8) & 0xFF00 | HIBYTE(v208);
          v212 = *(v5 + 24);
          v213 = *(v5 + 8);
          *(v5 + 8) = v213 + 1;
          *(v212 + 4 * v213) = v211;
          v214 = v200 | 0x18;
          *(v5 + 4) = v214;
          v206 = v207 << v214;
          goto LABEL_171;
        }

        v205 = v200 - 8;
        if (v200 < 8)
        {
          v207 = *(v5 + 64) & v199;
          v208 = *v5;
          v209 = (v207 >> (8 - v200)) | *v5;
          v210 = v209 << 8;
          goto LABEL_170;
        }

        *(v5 + 4) = v205;
        v204 = (*(v5 + 64) & v199) << v205;
LABEL_168:
        v206 = v204 | *v5;
LABEL_171:
        *v5 = v206;
        v202 = &v197->i16[1];
        v201 = 1;
      }

      else
      {
        v201 = 0;
        v202 = *(v278 + 8 * v194);
      }

      if (!v51[v194])
      {
        v216 = 0;
        v217 = 0;
        goto LABEL_212;
      }

      if (v281[v194] - 1 > 2)
      {
        v215 = 63;
      }

      else
      {
        v215 = qword_295687290[(v281[v194] - 1)];
      }

      v218 = v197->u64 + 2 * v215 + 2;
      do
      {
        v219 = *(v218 - 2);
        v218 -= 2;
      }

      while (!v219);
      if (v202 > v218)
      {
        v216 = 0;
        v217 = 0;
LABEL_213:
        v259 = *(v277 + 8 * v194);
        if (v201 == 1)
        {
          Mr_LaForgeS16(*v259, v197, *(v280 + 4 * v198), *(v3 + 153));
        }

        else if (v216 > 0 || v217 >= 3)
        {
          v260 = *(v3 + 153);
          v261 = *(v280 + 4 * v198);
          if (v216 > 3 || v217 > 3)
          {
            v262 = v196 + 69120;
            v263 = v196 + 35328;
            if (v216 > 3)
            {
              if (v217 > 3)
              {
                iDct8x8fS16(v259, v197, v260, v261, v216, v217, v262, v263);
              }

              else
              {
                iColRow8x4fS16(v259, v197, v260, v261, v216, v217, v262, v263);
              }
            }

            else
            {
              iRowCol4x8f1S16(v259, v197, v260, v261, v216, v217, v262, v263);
            }
          }

          else
          {
            iRowCol4x4f1S16(v259, v197, v260, v261, v216, v217, v196 + 69120, v196 + 35328);
          }
        }

        else
        {
          iRowCol1x3fS16(v259, v197, *(v3 + 153), *(v280 + 4 * v198), v196 + 69120, v196 + 35328);
        }

        goto LABEL_227;
      }

      LODWORD(v216) = 0;
      LODWORD(v217) = 0;
      v220 = v275[9];
      v221 = v220 + 0x10000;
      v222 = v220 + 66560;
LABEL_182:
      v223 = *v202;
      if (*v202)
      {
        v224 = 0;
      }

      else
      {
        v224 = 0;
        do
        {
          v225 = v202[1];
          ++v202;
          v223 = v225;
          ++v224;
        }

        while (!v225);
      }

      v226 = v202 >= v218;
      v227 = *(*(v221 + (v226 << 9) + 8 * v224) + v223);
      v228 = *(*(v222 + (v226 << 9) + 8 * v224) + v223);
      v230 = *v5;
      v229 = *(v5 + 4);
      v231 = v229 - v228;
      if (v229 >= v228)
      {
        v237 = ((*(v195 + 4 * v228) & v227) << v231) | v230;
      }

      else
      {
        v232 = *(v195 + 4 * v228) & v227;
        v233 = v228 - v229;
        v234 = (v230 << 8) & 0xFF0000 | (((v232 >> v233) | v230) << 24) | (v230 >> 8) & 0xFF00 | HIBYTE(v230);
        v235 = *(v5 + 24);
        v236 = *(v5 + 8);
        *(v5 + 8) = v236 + 1;
        *(v235 + 4 * v236) = v234;
        v231 = 32 - v233;
        v237 = v232 << -v233;
      }

      *v5 = v237;
      *(v5 + 4) = v231;
      v238 = v224 + v201;
      v239 = *(v270 + v238 + 383);
      if (v239 <= v216)
      {
        v216 = v216;
      }

      else
      {
        v216 = v239;
      }

      v240 = *(v270 + v238 + 447);
      if (v240 <= v217)
      {
        v217 = v217;
      }

      else
      {
        v217 = v240;
      }

      if (v227 != 3 || v228 != 7)
      {
LABEL_210:
        v201 = v238 + 1;
        if (++v202 > v218)
        {
          if (v51[v194])
          {
            goto LABEL_213;
          }

LABEL_212:
          if (*(v280 + 4 * v198))
          {
            goto LABEL_213;
          }

LABEL_227:
          if (++v194 == 6)
          {
            DumpDecoded263MB4S16(v279, *(v279 + 32), *(v279 + 24), v267, v51);
            return 0;
          }

          continue;
        }

        goto LABEL_182;
      }

      break;
    }

    if (v231)
    {
      v242 = v231 - 1;
      if (v202 >= v218)
      {
        v237 |= 1 << v242;
        *v5 = v237;
      }

      v243 = *(v5 + 56);
      if (v242 <= 5)
      {
        v244 = v243 & v224;
        v245 = (((v244 >> (7 - v231)) | v237) << 8) & 0xFF0000 | (((v244 >> (7 - v231)) | v237) << 24) | (((v244 >> (7 - v231)) | v237) >> 8) & 0xFF00 | (((v244 >> (7 - v231)) | v237) >> 24);
        v246 = *(v5 + 24);
        v247 = *(v5 + 8);
        *(v5 + 8) = v247 + 1;
        *(v246 + 4 * v247) = v245;
        v248 = v231 + 25;
        v249 = v244 << v248;
        v250 = *(v5 + 64);
        goto LABEL_207;
      }
    }

    else
    {
      v251 = *(v5 + 24);
      v252 = *(v5 + 8);
      *(v5 + 8) = v252 + 1;
      *(v251 + 4 * v252) = bswap32(v237);
      v237 = (v202 >= v218) << 31;
      v243 = *(v5 + 56);
      v242 = 31;
    }

    v248 = v242 - 6;
    v249 = ((v243 & v224) << (v242 - 6)) | v237;
    v250 = *(v5 + 64);
    if (v242 - 6 < 8)
    {
      v255 = v250 & v223;
      v256 = (((v255 >> (14 - v242)) | v249) << 8) & 0xFF0000 | (((v255 >> (14 - v242)) | v249) << 24) | (((v255 >> (14 - v242)) | v249) >> 8) & 0xFF00 | (((v255 >> (14 - v242)) | v249) >> 24);
      v257 = *(v5 + 24);
      v258 = *(v5 + 8);
      *(v5 + 8) = v258 + 1;
      *(v257 + 4 * v258) = v256;
      *(v5 + 4) = v248 | 0x18;
      v254 = v255 << (v248 | 0x18);
    }

    else
    {
LABEL_207:
      v253 = v248 - 8;
      *(v5 + 4) = v253;
      v254 = ((v250 & v223) << v253) | v249;
    }

    *v5 = v254;
    goto LABEL_210;
  }

  if (*(v3 + 198))
  {
    goto LABEL_91;
  }

  v88 = *(v3 + 222) == 0;
  if (v63)
  {
    goto LABEL_98;
  }

LABEL_93:
  if (v67 || !v88)
  {
    goto LABEL_98;
  }

  v92 = *(v5 + 4);
  if (v92)
  {
    v93 = v92 - 1;
    v94 = *v5 | (1 << v93);
  }

  else
  {
    v169 = bswap32(*v5);
    v170 = *(v5 + 24);
    v171 = *(v5 + 8);
    *(v5 + 8) = v171 + 1;
    *(v170 + 4 * v171) = v169;
    v93 = 31;
    v94 = 0x80000000;
  }

  *v5 = v94;
  *(v5 + 4) = v93;
  v172 = *(v3 + 155);
  if (v172)
  {
    *(v3 + 154) = v83 - 1;
    *(v3 + 153) -= v172;
    *(v3 + 155) = 0;
  }

  return 2;
}

BOOL COLOR_Init(void ***a1, int a2)
{
  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(144);
  *a1 = v5;
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  if (a2 == 1)
  {
    if (*v5)
    {
      return 0;
    }

    **a1 = MEM_New(2048);
    v18 = **a1;
    result = v18 == 0;
    if (!v18)
    {
      return 1;
    }

    v19 = 0;
    (*a1)[1] = v18;
    (*a1)[2] = **a1 + 512;
    (*a1)[3] = **a1 + 1024;
    (*a1)[4] = **a1 + 1536;
    v6 = *a1;
    v20 = (*a1)[1];
    v21 = (*a1)[2];
    v22 = (*a1)[3];
    v23 = (*a1)[4];
    v24 = -128;
    do
    {
      v25 = v24;
      v26 = v24 * 1.40199995;
      if (v26 < 0.0)
      {
        v27 = -0.5;
      }

      else
      {
        v27 = 0.5;
      }

      v28 = v27 + v26;
      v29 = v25 * 0.344000012;
      v30 = v28;
      if (v29 < 0.0)
      {
        v31 = -0.5;
      }

      else
      {
        v31 = 0.5;
      }

      v32 = v31 + v29;
      v33 = v32;
      v34 = v25 * 0.713999987;
      if (v34 < 0.0)
      {
        v35 = -0.5;
      }

      else
      {
        v35 = 0.5;
      }

      *&v20[v19] = v30;
      v36 = v35 + v34;
      v37 = v36;
      v38 = v25 * 1.77199996;
      if (v38 < 0.0)
      {
        v39 = -0.5;
      }

      else
      {
        v39 = 0.5;
      }

      *&v21[v19] = v33;
      v40 = v39 + v38;
      *&v22[v19] = v37;
      *&v23[v19] = v40;
      ++v24;
      v19 += 2;
    }

    while (v19 != 512);
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    return result;
  }

  if (!v6[5])
  {
    (*a1)[5] = MEM_New(768);
    v7 = (*a1)[5];
    result = v7 == 0;
    if (v7)
    {
      v8 = 0;
      (*a1)[6] = v7;
      (*a1)[7] = (*a1)[5] + 256;
      (*a1)[8] = (*a1)[5] + 512;
      do
      {
        v9 = v8;
        *((*a1)[6] + v8) = (v9 * 0.299);
        *((*a1)[7] + v8) = (v9 * 0.587);
        *((*a1)[8] + v8++) = (v9 * 0.114);
      }

      while (v8 != 256);
      v6 = *a1;
      goto LABEL_14;
    }

    return 1;
  }

LABEL_14:
  if (v6[9])
  {
    return result;
  }

  (*a1)[9] = MEM_New(10240);
  v10 = (*a1)[9];
  result = v10 == 0;
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  (*a1)[10] = v10;
  (*a1)[11] = (*a1)[9] + 2048;
  (*a1)[12] = (*a1)[9] + 4096;
  (*a1)[13] = (*a1)[9] + 6144;
  (*a1)[14] = (*a1)[9] + 0x2000;
  v12 = (*a1)[10];
  v13 = (*a1)[11];
  v14 = (*a1)[12];
  v15 = (*a1)[13];
  v16 = (*a1)[14];
  do
  {
    v17 = v11;
    v12[v11] = (v17 * 0.1687);
    v13[v11] = (v17 * 0.3313);
    v14[v11] = vcvts_n_f32_u32(v11, 1uLL);
    v15[v11] = (v17 * 0.4187);
    v16[v11++] = (v17 * 0.0813);
  }

  while (v11 != 1024);
  return result;
}

uint64_t COLOR_Kill(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      MEM_Dispose(*v2);
      **a1 = 0;
      v2 = *a1;
    }

    if (v2[5])
    {
      MEM_Dispose(v2[5]);
      (*a1)[5] = 0;
      v2 = *a1;
    }

    if (v2[9])
    {
      MEM_Dispose(v2[9]);
      (*a1)[9] = 0;
      v2 = *a1;
    }

    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

_BYTE *COLOR_R2Y32(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6, int a7, int a8, int a9, uint64_t a10, void *a11)
{
  v72 = result;
  v11 = 2 * a7;
  if (*a5 >= a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = *a5;
  }

  if (*a6 >= a8)
  {
    v13 = a8;
  }

  else
  {
    v13 = *a6;
  }

  v14 = -v12 & 0xE;
  v74 = v13;
  v71 = v13 - 1;
  if (v13 >= 1)
  {
    v65 = a5;
    v66 = a6;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = a11[6];
    v18 = a11[7];
    v20 = a11[8];
    v21 = a11[10];
    v22 = a11[11];
    v63 = 2 * a7;
    v64 = a7;
    v73 = v11;
    v23 = a11[13];
    v78 = v23;
    v79 = a11[14];
    v67 = a2 + a7;
    v68 = a2;
    v24 = v67;
    v69 = a3;
    v70 = a4;
    while (1)
    {
      v25 = (a3 + (v15 >> 2));
      v26 = (a4 + (v15 >> 2));
      if (v12 >= 1)
      {
        break;
      }

      v49 = v68 + v15;
      v48 = v67 + v15;
      if (v14)
      {
        goto LABEL_20;
      }

LABEL_22:
      v17 += 2;
      v15 += v73;
      v16 += 2 * a9;
      v24 += v73;
      a2 += v73;
      if (v17 >= v74)
      {
        v53 = v15;
        a5 = v65;
        a6 = v66;
        v11 = v63;
        a7 = v64;
        a2 = v68;
        goto LABEL_25;
      }
    }

    v76 = v16;
    v77 = v15;
    v27 = 0;
    v28 = &v72[v16];
    v75 = v17;
    v29 = a9;
    if (v17 == v71)
    {
      v29 = 0;
    }

    v30 = &v28[v29];
    v80 = v24;
    do
    {
      v31 = v24 + v27;
      v32 = a2 + v27;
      v33 = v28[1];
      v34 = v28[2];
      v35 = v28[3];
      v36 = v30[1];
      v37 = v30[2];
      v38 = v30[3];
      *(a2 + v27) = *(v18 + v34) + *(v19 + v28[1]) + v35[v20];
      *(v24 + v27) = *(v18 + v37) + *(v19 + v36) + *(v20 + v38);
      if (v12 - 1 == v27)
      {
        *(v32 + 1) = *(a2 + v27);
        v39 = *(v24 + v27);
        v40 = v37;
        v41 = v34;
        v42 = v38;
        result = v35;
        v43 = v36;
        v44 = v33;
      }

      else
      {
        v44 = v28[5];
        v41 = v28[6];
        result = v28[7];
        v28 += 8;
        v43 = v30[5];
        v40 = v30[6];
        v42 = v30[7];
        v30 += 8;
        *(v32 + 1) = *(v18 + v41) + *(v19 + v44) + *(v20 + result);
        v39 = *(v18 + v40) + *(v19 + v43) + *(v20 + v42);
        v23 = v78;
      }

      *(v31 + 1) = v39;
      v45 = v36 + v33 + v43 + v44;
      v46 = v37 + v34 + v40 + v41;
      v47 = v38 + v35 + v42 + result;
      *v25++ = ((v47 >> 1) - (*(v21 + 2 * v45) + *(v22 + 2 * v46)) + 513) >> 2;
      v24 = v80;
      *v26++ = ((v45 >> 1) - (*(v23 + 2 * v46) + *(v79 + 2 * v47)) + 513) >> 2;
      v27 += 2;
    }

    while (v27 < v12);
    v48 = v80 + v27;
    v49 = a2 + v27;
    a3 = v69;
    a4 = v70;
    v14 = -v12 & 0xE;
    v16 = v76;
    v15 = v77;
    v17 = v75;
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_20:
    v50 = 0;
    v51 = v49 + 1;
    v52 = v48 + 1;
    do
    {
      *(v51 - 1) = -32640;
      *(v52 - 1) = -32640;
      *v25++ = 0x80;
      *v26++ = 0x80;
      v50 += 2;
      v51 += 2;
      v52 += 2;
    }

    while (v50 < v14);
    goto LABEL_22;
  }

  v53 = 0;
LABEL_25:
  v54 = -v74 & 0xE;
  if (v54)
  {
    v55 = 0;
    v56 = v14 + v12;
    v57 = a7;
    v58 = v53 + a2 + 1;
    do
    {
      if ((v56 & 0x80000000) == 0)
      {
        v59 = 0;
        v60 = (a4 + (v53 >> 2));
        result = v58;
        v61 = (a3 + (v53 >> 2));
        do
        {
          v62 = &result[v57];
          *(v62 - 1) = 0x80;
          *(result - 1) = 0x80;
          *v62 = 0x80;
          *result = 0x80;
          result += 2;
          v59 += 2;
          *v61++ = 0x80;
          *v60++ = 0x80;
        }

        while (v59 <= v56);
      }

      v55 += 2;
      LODWORD(v53) = v53 + v11;
      v58 += v11;
    }

    while (v55 < v54);
  }

  *a5 += -*a5 & 0xF;
  *a6 += -*a6 & 0xF;
  return result;
}

_BYTE *COLOR_R2Y24(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6, int a7, int a8, int a9, uint64_t a10, void *a11)
{
  v72 = result;
  v11 = 2 * a7;
  if (*a5 >= a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = *a5;
  }

  if (*a6 >= a8)
  {
    v13 = a8;
  }

  else
  {
    v13 = *a6;
  }

  v14 = -v12 & 0xE;
  v74 = v13;
  v71 = v13 - 1;
  if (v13 >= 1)
  {
    v65 = a5;
    v66 = a6;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = a11[6];
    v18 = a11[7];
    v20 = a11[8];
    v21 = a11[10];
    v22 = a11[11];
    v63 = 2 * a7;
    v64 = a7;
    v73 = v11;
    v23 = a11[13];
    v78 = v23;
    v79 = a11[14];
    v67 = a2 + a7;
    v68 = a2;
    v24 = v67;
    v69 = a3;
    v70 = a4;
    while (1)
    {
      v25 = (a3 + (v15 >> 2));
      v26 = (a4 + (v15 >> 2));
      if (v12 >= 1)
      {
        break;
      }

      v49 = v68 + v15;
      v48 = v67 + v15;
      if (v14)
      {
        goto LABEL_20;
      }

LABEL_22:
      v17 += 2;
      v15 += v73;
      v16 += 2 * a9;
      v24 += v73;
      a2 += v73;
      if (v17 >= v74)
      {
        v53 = v15;
        a5 = v65;
        a6 = v66;
        v11 = v63;
        a7 = v64;
        a2 = v68;
        goto LABEL_25;
      }
    }

    v76 = v16;
    v77 = v15;
    v27 = 0;
    v28 = &v72[v16];
    v75 = v17;
    v29 = a9;
    if (v17 == v71)
    {
      v29 = 0;
    }

    v30 = &v28[v29];
    v80 = v24;
    do
    {
      v31 = v24 + v27;
      v32 = a2 + v27;
      v33 = *v28;
      v34 = v28[1];
      v35 = v28[2];
      v36 = *v30;
      v37 = v30[1];
      v38 = v30[2];
      *(a2 + v27) = *(v18 + v34) + *(v19 + *v28) + v35[v20];
      *(v24 + v27) = *(v18 + v37) + *(v19 + v36) + *(v20 + v38);
      if (v12 - 1 == v27)
      {
        *(v32 + 1) = *(a2 + v27);
        v39 = *(v24 + v27);
        v40 = v37;
        v41 = v34;
        result = v35;
        v42 = v38;
        v43 = v36;
        v44 = v33;
      }

      else
      {
        v44 = v28[3];
        v41 = v28[4];
        result = v28[5];
        v28 += 6;
        v43 = v30[3];
        v40 = v30[4];
        v42 = v30[5];
        v30 += 6;
        *(v32 + 1) = *(v18 + v41) + *(v19 + v44) + *(v20 + result);
        v39 = *(v18 + v40) + *(v19 + v43) + *(v20 + v42);
        v23 = v78;
      }

      *(v31 + 1) = v39;
      v45 = v36 + v33 + v43 + v44;
      v46 = v37 + v34 + v40 + v41;
      v47 = v38 + v35 + result + v42;
      *v25++ = ((v47 >> 1) - (*(v21 + 2 * v45) + *(v22 + 2 * v46)) + 513) >> 2;
      v24 = v80;
      *v26++ = ((v45 >> 1) - (*(v23 + 2 * v46) + *(v79 + 2 * v47)) + 513) >> 2;
      v27 += 2;
    }

    while (v27 < v12);
    v48 = v80 + v27;
    v49 = a2 + v27;
    a3 = v69;
    a4 = v70;
    v14 = -v12 & 0xE;
    v16 = v76;
    v15 = v77;
    v17 = v75;
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_20:
    v50 = 0;
    v51 = v49 + 1;
    v52 = v48 + 1;
    do
    {
      *(v51 - 1) = -32640;
      *(v52 - 1) = -32640;
      *v25++ = 0x80;
      *v26++ = 0x80;
      v50 += 2;
      v51 += 2;
      v52 += 2;
    }

    while (v50 < v14);
    goto LABEL_22;
  }

  v53 = 0;
LABEL_25:
  v54 = -v74 & 0xE;
  if (v54)
  {
    v55 = 0;
    v56 = v14 + v12;
    v57 = a7;
    v58 = v53 + a2 + 1;
    do
    {
      if ((v56 & 0x80000000) == 0)
      {
        v59 = 0;
        v60 = (a4 + (v53 >> 2));
        result = v58;
        v61 = (a3 + (v53 >> 2));
        do
        {
          v62 = &result[v57];
          *(v62 - 1) = 0x80;
          *(result - 1) = 0x80;
          *v62 = 0x80;
          *result = 0x80;
          result += 2;
          v59 += 2;
          *v61++ = 0x80;
          *v60++ = 0x80;
        }

        while (v59 <= v56);
      }

      v55 += 2;
      LODWORD(v53) = v53 + v11;
      v58 += v11;
    }

    while (v55 < v54);
  }

  *a5 += -*a5 & 0xF;
  *a6 += -*a6 & 0xF;
  return result;
}

_BYTE *COLOR_Y422ToY420u(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6, int a7, int a8, int a9, int a10)
{
  v10 = 2 * a7;
  if (*a5 >= a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = *a5;
  }

  if (*a6 >= a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = *a6;
  }

  v13 = -v11 & 0xE;
  v14 = v12 - 1;
  if (v12 < 1)
  {
    v51 = 0;
  }

  else
  {
    v63 = a5;
    v64 = a6;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v60 = v11;
    v18 = v11 >> 1;
    v19 = a9;
    v20 = 2 * a9;
    if (a10 == 2)
    {
      v21 = 0x80;
    }

    else
    {
      v21 = 0;
    }

    v22 = v20;
    v61 = 2 * a7;
    v62 = a7;
    v71 = a2 + a7;
    v72 = v10;
    v23 = a7;
    v65 = v18 - 1;
    v24 = (a2 + 3);
    v25 = result + 4;
    v70 = v12;
    v69 = result;
    v67 = v11 >> 1;
    v68 = v12 - 1;
    v66 = v20;
    do
    {
      v26 = (a2 + v15);
      v27 = (v71 + v15);
      v28 = (a3 + (v15 >> 2));
      v29 = (a4 + (v15 >> 2));
      v30 = &result[v16];
      if (v17 == v14)
      {
        v31 = 0;
      }

      else
      {
        v31 = v19;
      }

      v34 = &v30[v31];
      *v26 = *v30;
      v26[1] = v30[2];
      v32 = v30[1] ^ v21;
      LOBYTE(v30) = v30[3] ^ v21;
      *v27 = *v34;
      v27[1] = v34[2];
      LOBYTE(v33) = v34[1] ^ v21;
      LOBYTE(v34) = v34[3] ^ v21;
      if (v18 < 2)
      {
        v47 = v27 + 2;
        v46 = v26 + 2;
        v45 = v32;
        v33 = v33;
        LODWORD(v30) = v30;
        LODWORD(v34) = v34;
      }

      else
      {
        v35 = a2;
        v36 = v31;
        v37 = v25;
        v38 = v24;
        v39 = v65;
        do
        {
          v40 = &v38[v23];
          *(v38 - 1) = *v37;
          *v38 = v37[2];
          v38 += 2;
          v41 = v37[1] ^ v21;
          v42 = v37[3] ^ v21;
          *(v40 - 1) = v37[v36];
          *v40 = v37[v36 + 2];
          v43 = v37[v36 + 1] ^ v21;
          v44 = v37[v36 + 3] ^ v21;
          *v28++ = (3 * (v32 + v33) + v41 + v43 + 4) >> 3;
          *v29++ = (3 * (v34 + v30) + v42 + v44 + 4) >> 3;
          v37 += 4;
          v32 = v41;
          LOBYTE(v33) = v43;
          LOBYTE(v34) = v44;
          LOBYTE(v30) = v42;
          --v39;
        }

        while (v39);
        v45 = v41;
        v33 = v43;
        LODWORD(v30) = v42;
        LODWORD(v34) = v44;
        v46 = v38 - 1;
        v47 = &v38[v23 - 1];
        a2 = v35;
        v12 = v70;
        result = v69;
        v18 = v67;
        v14 = v68;
        v19 = a9;
        v22 = v66;
      }

      *v28 = (v33 + v45 + 1) >> 1;
      *v29 = (v30 + v34 + 1) >> 1;
      if (v13)
      {
        v48 = 0;
        v49 = v46 + 1;
        v50 = v47 + 1;
        do
        {
          *(v49 - 1) = -32640;
          *(v50 - 1) = -32640;
          *v28++ = 0x80;
          *v29++ = 0x80;
          v48 += 2;
          v49 += 2;
          v50 += 2;
        }

        while (v48 < v13);
      }

      v17 += 2;
      v15 += v72;
      v16 += v22;
      v24 += v72;
      v25 += v22;
    }

    while (v17 < v12);
    v51 = v15;
    a5 = v63;
    a6 = v64;
    v10 = v61;
    a7 = v62;
    v11 = v60;
  }

  if ((-v12 & 0xE) != 0)
  {
    v52 = 0;
    v53 = v13 + v11;
    v54 = a7;
    v55 = v51 + a2 + 1;
    do
    {
      if ((v53 & 0x80000000) == 0)
      {
        v56 = 0;
        v57 = (a4 + (v51 >> 2));
        result = v55;
        v58 = (a3 + (v51 >> 2));
        do
        {
          v59 = &result[v54];
          *(v59 - 1) = 0x80;
          *(result - 1) = 0x80;
          *v59 = 0x80;
          *result = 0x80;
          result += 2;
          v56 += 2;
          *v58++ = 0x80;
          *v57++ = 0x80;
        }

        while (v56 <= v53);
      }

      v52 += 2;
      LODWORD(v51) = v51 + v10;
      v55 += v10;
    }

    while (v52 < (-v12 & 0xEu));
  }

  *a5 += -*a5 & 0xF;
  *a6 += -*a6 & 0xF;
  return result;
}

uint64_t InitHuffmanTables(uint64_t a1, int a2)
{
  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(80);
  *a1 = v5;
  if (!v5)
  {
    return 1;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    if (!InitDecodeTCTables(v5) && !InitDecodeMCBPCINTERTables((*a1 + 16)) && !InitDecodeCBPYTables((*a1 + 24)) && !InitDecodeMCBPCINTRATables((*a1 + 8)))
    {
      v6 = (*a1 + 32);

      return InitDecodeMVDTables(v6);
    }

    return 1;
  }

  if (InitEncMCBPCINTRATables((v5 + 5)) || InitEncMCBPCINTERTables(*a1 + 48) || InitEncCBPYTables(*a1 + 56) || InitEncMVDTables((*a1 + 64)))
  {
    return 1;
  }

  v7 = (*a1 + 72);

  return InitEncTCTables(v7);
}

uint64_t InitDecodeTCTables(char **a1)
{
  v2 = MEM_NewClear(4608);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = v2 + 2048;
  memset_pattern16(v2, &unk_295687C80, 0x800uLL);
  for (i = 0; i != 1024; i += 16)
  {
    *&v4[i] = 0uLL;
  }

  v6 = &word_295687564;
  v7 = &unk_295687566;
  v8 = &word_295687568;
  v9 = 360;
  LOWORD(v10) = 1023;
  do
  {
    v12 = v7[3];
    v7 += 3;
    v11 = v12;
    if (v12 < v10)
    {
      v10 = v10;
      v13 = *v6;
      v14 = *v8;
      do
      {
        *&v3[2 * v10] = v13;
        v3[v10-- + 2048] = v14;
      }

      while (v10 > v11);
    }

    v6 += 3;
    v8 += 3;
    LOWORD(v10) = v11;
    v15 = v9 >= 3;
    v9 -= 3;
  }

  while (v9 != 0 && v15);
  v16 = *a1;
  v17 = *a1 + 3072;
  v18 = v16 + 4096;
  memset_pattern16(v17, &unk_295687C80, 0x400uLL);
  for (j = 0; j != 512; j += 16)
  {
    *&v18[j] = 0uLL;
  }

  v20 = &word_29568783C;
  v21 = &unk_29568783E;
  v22 = &word_295687840;
  v23 = 255;
  LOWORD(v24) = 271;
  do
  {
    v26 = v21[3];
    v21 += 3;
    v25 = v26;
    if (v26 < v24)
    {
      v24 = v24;
      v27 = *v20;
      v28 = *v22;
      do
      {
        *(v17 + v24) = v27;
        *(v17 + v24-- + 1024) = v28;
      }

      while (v24 > v25);
    }

    v20 += 3;
    v22 += 3;
    LOWORD(v24) = v25;
    v15 = v23 >= 3;
    v23 -= 3;
  }

  while (v23 != 0 && v15);
  return 0;
}

uint64_t InitDecodeMCBPCINTERTables(void *a1)
{
  v2 = MEM_NewClear(512);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v2[14] = v3;
  v2[15] = v3;
  v2[12] = v3;
  v2[13] = v3;
  v2[10] = v3;
  v2[11] = v3;
  v2[8] = v3;
  v2[9] = v3;
  v2[6] = v3;
  v2[7] = v3;
  v2[4] = v3;
  v2[5] = v3;
  v2[2] = v3;
  v2[3] = v3;
  *v2 = v3;
  v2[1] = v3;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[18] = 0u;
  v2[19] = 0u;
  v2[20] = 0u;
  v2[21] = 0u;
  v2[22] = 0u;
  v2[23] = 0u;
  v2[24] = 0u;
  v2[25] = 0u;
  v2[26] = 0u;
  v2[27] = 0u;
  v2[28] = 0u;
  v2[29] = 0u;
  v4 = &word_295687A7A;
  v5 = &unk_295687A7C;
  v6 = &word_295687A7E;
  v7 = 48;
  LOWORD(v8) = 255;
  v2[30] = 0u;
  v2[31] = 0u;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = v2 + v8;
        *v13 = v11;
        v13[256] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

uint64_t InitDecodeCBPYTables(void *a1)
{
  v2 = MEM_NewClear(128);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v2[2] = v3;
  v2[3] = v3;
  *v2 = v3;
  v2[1] = v3;
  v2[4] = 0u;
  v2[5] = 0u;
  v4 = &word_295687AE2;
  v5 = &unk_295687AE4;
  v6 = &word_295687AE6;
  v7 = 48;
  LOWORD(v8) = 63;
  v2[6] = 0u;
  v2[7] = 0u;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = v2 + v8;
        *v13 = v11;
        v13[64] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

uint64_t InitDecodeMCBPCINTRATables(void *a1)
{
  v2 = MEM_NewClear(128);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v2[2] = v3;
  v2[3] = v3;
  *v2 = v3;
  v2[1] = v3;
  v2[4] = 0u;
  v2[5] = 0u;
  v4 = &word_295687A42;
  v5 = &unk_295687A44;
  v6 = &word_295687A46;
  v7 = 24;
  LOWORD(v8) = 63;
  v2[6] = 0u;
  v2[7] = 0u;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = v2 + v8;
        *v13 = v11;
        v13[64] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

uint64_t InitDecodeMVDTables(char **a1)
{
  v2 = MEM_NewClear(4096);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  memset(v2, 157, 0x800uLL);
  bzero(v3 + 2048, 0x800uLL);
  v4 = &word_295687B4A;
  v5 = &unk_295687B4C;
  v6 = &word_295687B4E;
  v7 = 147;
  LOWORD(v8) = 2047;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = &v3[v8];
        *v13 = v11;
        v13[2048] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

BOOL InitEncMCBPCINTRATables(uint64_t a1)
{
  v2 = MEM_NewClear(16);
  *a1 = v2;
  if (v2)
  {
    v2[4] = 1;
    **a1 = 1;
    *(*a1 + 5) = 1;
    *(*a1 + 1) = 1;
    *(*a1 + 6) = 2;
    *(*a1 + 2) = 2;
    *(*a1 + 7) = 3;
    *(*a1 + 3) = 3;
    *(*a1 + 8) = 1;
    *(*a1 + 11) = 3;
    *(*a1 + 10) = 3;
    *(*a1 + 9) = 3;
    *(*a1 + 12) = 4;
    *(*a1 + 15) = 6;
    *(*a1 + 14) = 6;
    *(*a1 + 13) = 6;
  }

  return v2 == 0;
}

BOOL InitEncMCBPCINTERTables(uint64_t a1)
{
  v2 = MEM_NewClear(48);
  *a1 = v2;
  if (v2)
  {
    v2[20] = 1;
    **a1 = 1;
    *(*a1 + 18) = 3;
    *(*a1 + 15) = 3;
    *(*a1 + 14) = 3;
    *(*a1 + 12) = 3;
    *(*a1 + 4) = 3;
    *(*a1 + 1) = 3;
    *(*a1 + 19) = 2;
    *(*a1 + 8) = 2;
    *(*a1 + 2) = 2;
    *(*a1 + 11) = 5;
    *(*a1 + 9) = 5;
    *(*a1 + 7) = 5;
    *(*a1 + 3) = 5;
    *(*a1 + 5) = 7;
    *(*a1 + 6) = 6;
    *(*a1 + 17) = 4;
    *(*a1 + 16) = 4;
    *(*a1 + 13) = 4;
    *(*a1 + 10) = 4;
    *(*a1 + 24) = 1;
    *(*a1 + 25) = 4;
    *(*a1 + 26) = 4;
    *(*a1 + 27) = 6;
    *(*a1 + 28) = 3;
    *(*a1 + 29) = 7;
    *(*a1 + 30) = 7;
    *(*a1 + 31) = 9;
    *(*a1 + 32) = 3;
    *(*a1 + 33) = 7;
    *(*a1 + 34) = 7;
    *(*a1 + 35) = 8;
    *(*a1 + 36) = 5;
    *(*a1 + 37) = 8;
    *(*a1 + 38) = 8;
    *(*a1 + 39) = 7;
    *(*a1 + 40) = 6;
    *(*a1 + 41) = 9;
    *(*a1 + 42) = 9;
    *(*a1 + 43) = 9;
    *(*a1 + 44) = 9;
  }

  return v2 == 0;
}

BOOL InitEncCBPYTables(uint64_t a1)
{
  v2 = MEM_NewClear(32);
  *a1 = v2;
  if (v2)
  {
    *v2 = 3;
    *(*a1 + 1) = 5;
    *(*a1 + 2) = 4;
    *(*a1 + 3) = 9;
    *(*a1 + 4) = 3;
    *(*a1 + 5) = 7;
    *(*a1 + 6) = 2;
    *(*a1 + 7) = 11;
    *(*a1 + 8) = 2;
    *(*a1 + 9) = 3;
    *(*a1 + 10) = 5;
    *(*a1 + 11) = 10;
    *(*a1 + 12) = 4;
    *(*a1 + 13) = 8;
    *(*a1 + 14) = 6;
    *(*a1 + 15) = 3;
    *(*a1 + 16) = 4;
    *(*a1 + 17) = 5;
    *(*a1 + 18) = 5;
    *(*a1 + 19) = 4;
    *(*a1 + 20) = 5;
    *(*a1 + 21) = 4;
    *(*a1 + 22) = 6;
    *(*a1 + 23) = 4;
    *(*a1 + 24) = 5;
    *(*a1 + 25) = 6;
    *(*a1 + 26) = 4;
    *(*a1 + 27) = 4;
    *(*a1 + 28) = 4;
    *(*a1 + 29) = 4;
    *(*a1 + 30) = 4;
    *(*a1 + 31) = 2;
  }

  return v2 == 0;
}

BOOL InitEncMVDTables(void *a1)
{
  v2 = MEM_NewClear(128);
  *a1 = v2;
  if (v2)
  {
    for (i = 0; i != 64; ++i)
    {
      *(*a1 + i) = byte_2956872E4[i];
      *(*a1 + i + 64) = byte_295687324[i];
    }
  }

  return v2 == 0;
}

BOOL InitEncTCTables(void *a1)
{
  v2 = MEM_NewClear(67584);
  *a1 = v2;
  if (v2)
  {
    v3 = 0;
    for (i = 0; i != 64; ++i)
    {
      v5 = 256;
      v6 = v3;
      do
      {
        *(*a1 + v6) = 3;
        *(*a1 + v6 + 0x8000) = 7;
        *(*a1 + v6 + 0x4000) = 3;
        *(*a1 + v6++ + 49152) = 7;
        --v5;
      }

      while (v5);
      *(*a1 + 8 * i + 0x10000) = *a1 + (i << 8) + 128;
      *(*a1 + 8 * i + 66048) = *a1 + (i << 8) + 16512;
      *(*a1 + 8 * i + 66560) = *a1 + (i << 8) + 32896;
      *(*a1 + 8 * i + 67072) = *a1 + (i << 8) + 49280;
      v3 += 256;
    }

    v7 = 0;
    do
    {
      v8 = byte_295687364[v7 + 4];
      v9 = byte_295687364[v7];
      v10 = byte_295687364[v7 + 1];
      v11 = byte_295687364[v7 + 2];
      *(*(*a1 + (v9 << 9) + 8 * v10 + 0x10000) + v11) = 2 * v8;
      *(*(*a1 + (v9 << 9) + 8 * v10 + 0x10000) - v11) = (2 * v8) | 1;
      v12 = byte_295687364[v7 + 3];
      *(*(*a1 + (v9 << 9) + 8 * v10 + 66560) + v11) = v12;
      *(*(*a1 + (v9 << 9) + 8 * v10 + 66560) - v11) = v12;
      v13 = v7 >= 0x1F9;
      v7 += 5;
    }

    while (!v13);
  }

  return v2 == 0;
}

uint64_t KillHuffmanTables(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*v1)
    {
      MEM_Dispose(*v1);
      *v1 = 0;
      v1 = *a1;
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      MEM_Dispose(v3);
      *(v1 + 8) = 0;
      v1 = *a1;
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      MEM_Dispose(v4);
      *(v1 + 16) = 0;
      v1 = *a1;
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      MEM_Dispose(v5);
      *(v1 + 24) = 0;
      v1 = *a1;
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      MEM_Dispose(v6);
      *(v1 + 32) = 0;
      v1 = *a1;
    }

    v7 = *(v1 + 72);
    if (v7)
    {
      MEM_Dispose(v7);
      *(v1 + 72) = 0;
      v1 = *a1;
    }

    v8 = *(v1 + 40);
    if (v8)
    {
      MEM_Dispose(v8);
      *(v1 + 40) = 0;
      v1 = *a1;
    }

    v9 = *(v1 + 48);
    if (v9)
    {
      MEM_Dispose(v9);
      *(v1 + 48) = 0;
      v1 = *a1;
    }

    v10 = *(v1 + 56);
    if (v10)
    {
      MEM_Dispose(v10);
      *(v1 + 56) = 0;
      v1 = *a1;
    }

    v11 = *(v1 + 64);
    if (v11)
    {
      MEM_Dispose(v11);
      *(v1 + 64) = 0;
      v1 = *a1;
    }

    MEM_Dispose(v1);
    *a1 = 0;
  }

  return 0;
}

uint64_t Mr_LaForgeS16(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (result && !a3)
  {
    if (result >= 0)
    {
      LOWORD(v4) = result;
    }

    else
    {
      v4 = -result;
    }

    v5 = (((2 * v4) | 1) * a4 - ((1 - a4) & 1u) + 4) >> 3;
    if (result >= 0)
    {
      result = v5;
    }

    else
    {
      result = -v5;
    }
  }

  v6 = 0;
  v7 = vdupq_n_s16(result);
  do
  {
    *(a2 + v6) = v7;
    v6 += 16;
  }

  while (v6 != 128);
  return result;
}

uint64_t InitMacroBlockTables(int32x2_t **a1, unsigned int a2)
{
  if (a2 != 128 && a2 != 352 && a2 != 176)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(432);
  *a1 = v5;
  if (!v5)
  {
    return 1;
  }

  v6 = a2 + 32;
  v7 = xmmword_295686F50;
  v8 = xmmword_295686F60;
  v9 = xmmword_295687C90;
  v10 = v5 + 1;
  v11 = 20;
  v12 = vdupq_n_s64(0x13uLL);
  v13.i64[0] = 0x1000000010;
  v13.i64[1] = 0x1000000010;
  v14 = vdupq_n_s64(4uLL);
  v15.i64[0] = 0x4000000040;
  v15.i64[1] = 0x4000000040;
  do
  {
    v16 = vaddq_s32(v9, v13);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v8)), *v7.i8).u8[0])
    {
      v10[-1].i32[0] = v16.i32[0] * v6 + 16;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v8)), *&v7).i8[2])
    {
      v10[-1].i32[1] = v16.i32[1] * v6 + 16;
    }

    if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v7))).i32[1])
    {
      v10->i32[0] = v16.i32[2] * v6 + 16;
      v10->i32[1] = v16.i32[3] * v6 + 16;
    }

    v7 = vaddq_s64(v7, v14);
    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s32(v9, v15);
    v10 += 2;
    v11 -= 4;
  }

  while (v11);
  v17 = 0;
  v18 = xmmword_295686F50;
  v19 = xmmword_295686F60;
  v20 = v5 + 11;
  v21 = vdupq_n_s64(0x17uLL);
  v22 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v21, v19)), *v18.i8).u8[0])
    {
      v20[-2].i32[1] = v17;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v19)), *&v18).i8[2])
    {
      v20[-1].i32[0] = v17 + 16;
    }

    if (vuzp1_s16(*&v18, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v18))).i32[1])
    {
      v20[-1].i32[1] = v17 + 32;
      v20->i32[0] = v17 + 48;
    }

    v18 = vaddq_s64(v18, v22);
    v19 = vaddq_s64(v19, v22);
    v17 += 64;
    v20 += 2;
  }

  while (v17 != 384);
  v23 = (a2 >> 1) + 16;
  v24 = xmmword_295686F50;
  v25 = xmmword_295686F60;
  v26 = xmmword_295687CA0;
  v27 = v5 + 25;
  v28 = 20;
  v29 = vdupq_n_s64(0x13uLL);
  v30.i64[0] = 0x800000008;
  v30.i64[1] = 0x800000008;
  v31 = vdupq_n_s64(4uLL);
  v32.i64[0] = 0x2000000020;
  v32.i64[1] = 0x2000000020;
  do
  {
    v33 = vaddq_s32(v26, v30);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v29, v25)), *v24.i8).u8[0])
    {
      v27[-2].i32[1] = v33.i32[0] * v23 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v25)), *&v24).i8[2])
    {
      v27[-1].i32[0] = v33.i32[1] * v23 + 8;
    }

    if (vuzp1_s16(*&v24, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v24))).i32[1])
    {
      v27[-1].i32[1] = v33.i32[2] * v23 + 8;
      v27->i32[0] = v33.i32[3] * v23 + 8;
    }

    v24 = vaddq_s64(v24, v31);
    v25 = vaddq_s64(v25, v31);
    v26 = vaddq_s32(v26, v32);
    v27 += 2;
    v28 -= 4;
  }

  while (v28);
  v34 = 0;
  v35 = xmmword_295686F50;
  v36 = xmmword_295686F60;
  v37 = v5 + 44;
  v38 = vdupq_n_s64(0x17uLL);
  v39 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v38, v36)), *v35.i8).u8[0])
    {
      v37[-2].i32[1] = v34;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v36)), *&v35).i8[2])
    {
      v37[-1].i32[0] = v34 + 8;
    }

    if (vuzp1_s16(*&v35, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v35))).i32[1])
    {
      v37[-1].i32[1] = v34 + 16;
      v37->i32[0] = v34 + 24;
    }

    v35 = vaddq_s64(v35, v39);
    v36 = vaddq_s64(v36, v39);
    v34 += 32;
    v37 += 2;
  }

  while (v34 != 192);
  v4 = 0;
  v5[21] = 0x800000000;
  v5[22] = vadd_s32(vdup_n_s32(8 * a2), 0x10800000100);
  return v4;
}

uint64_t InitMacroBlock(uint64_t *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(374);
  *a1 = v3;
  if (v3)
  {
    v4 = 104;
    while (1)
    {
      *(*a1 + v4 - 96) = MEM_NewClear(128);
      if (!*(*a1 + v4 - 96))
      {
        break;
      }

      *(*a1 + v4 - 48) = MEM_NewClear(128);
      if (!*(*a1 + v4 - 48))
      {
        break;
      }

      *(*a1 + v4) = MEM_NewClear(128);
      v5 = *a1;
      if (!*(*a1 + v4))
      {
        break;
      }

      v4 += 8;
      if (v4 == 152)
      {
        result = 0;
        *(v5 + 153) = 31;
        *(v5 + 246) = 0;
        *(v5 + 310) = xmmword_295687CB0;
        *(v5 + 326) = xmmword_295687CC0;
        *&v6 = 0x100000001;
        *(&v6 + 1) = 0x100000001;
        *(v5 + 342) = v6;
        *(v5 + 358) = 1;
        *(v5 + 366) = 0;
        return result;
      }
    }
  }

  return 1;
}

uint64_t KillMacroBlock(void **a1)
{
  if (*a1)
  {
    for (i = 104; i != 152; i += 8)
    {
      v3 = *a1;
      v4 = *(*a1 + i - 96);
      if (v4)
      {
        MEM_Dispose(v4);
        *(*a1 + i - 96) = 0;
        v3 = *a1;
      }

      v5 = *&v3[i - 48];
      if (v5)
      {
        MEM_Dispose(v5);
        *(*a1 + i - 48) = 0;
        v3 = *a1;
      }

      v6 = *&v3[i];
      if (v6)
      {
        MEM_Dispose(v6);
        *(*a1 + i) = 0;
      }
    }

    MEM_Dispose(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t ForwardDiffCharS16(uint64_t result, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = (a2 + 3);
  do
  {
    v5 = (result + v3);
    *v5 = *(result + v3) - *(v4 - 3);
    v5[1] = *(result + v3 + 2) - *(v4 - 2);
    v5[2] = *(result + v3 + 4) - *(v4 - 1);
    v5[3] = *(result + v3 + 6) - *v4;
    v5[4] = *(result + v3 + 8) - v4[1];
    v5[5] = *(result + v3 + 10) - v4[2];
    v5[6] = *(result + v3 + 12) - v4[3];
    v5[7] = *(result + v3 + 14) - v4[4];
    v3 += 16;
    v4 += a3;
  }

  while (v3 != 128);
  return result;
}

uint64_t MC_ForYS16(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = (a5 >> 1) * a3 + (a4 >> 1);
  if ((a5 | a4))
  {
    if (a4 & 1) == 0 || (a5)
    {
      v12 = a3;
      v13 = a3 + 1;
      v14 = a3 + 2;
      v15 = a3 + 3;
      v16 = a3 + 4;
      v17 = a3 + 5;
      v18 = a3 + 6;
      v19 = a3 + 7;
      if ((a4 & 1) != 0 || (a5 & 1) == 0)
      {
        v23 = 0;
        v24 = (v5 + a2 + 4);
        do
        {
          v25 = (result + v23);
          *v25 = *(result + v23) - ((*(v24 - 4) + *(v24 - 3) + v24[a3 - 4] + v24[v13 - 4] + 2) >> 2);
          v25[1] = *(result + v23 + 2) - ((*(v24 - 3) + *(v24 - 2) + v24[v13 - 4] + v24[v14 - 4] + 2) >> 2);
          v25[2] = *(result + v23 + 4) - ((*(v24 - 2) + *(v24 - 1) + v24[v14 - 4] + v24[v15 - 4] + 2) >> 2);
          v25[3] = *(result + v23 + 6) - ((*(v24 - 1) + *v24 + v24[v15 - 4] + v24[v16 - 4] + 2) >> 2);
          v25[4] = *(result + v23 + 8) - ((*v24 + v24[1] + v24[v16 - 4] + v24[v17 - 4] + 2) >> 2);
          v25[5] = *(result + v23 + 10) - ((v24[1] + v24[2] + v24[v17 - 4] + v24[v18 - 4] + 2) >> 2);
          v25[6] = *(result + v23 + 12) - ((v24[2] + v24[3] + v24[v18 - 4] + v24[v19 - 4] + 2) >> 2);
          v25[7] = *(result + v23 + 14) - ((v24[3] + v24[4] + v24[v19 - 4] + v24[a3 + 4] + 2) >> 2);
          v23 += 16;
          v24 += a3;
        }

        while (v23 != 128);
      }

      else
      {
        v20 = 0;
        v21 = (v5 + a2 + 3);
        do
        {
          v22 = (result + v20);
          *v22 = *(result + v20) - ((*(v21 - 3) + v21[v12 - 3] + 1) >> 1);
          v22[1] = *(result + v20 + 2) - ((*(v21 - 2) + v21[v13 - 3] + 1) >> 1);
          v22[2] = *(result + v20 + 4) - ((*(v21 - 1) + v21[v14 - 3] + 1) >> 1);
          v22[3] = *(result + v20 + 6) - ((*v21 + v21[v15 - 3] + 1) >> 1);
          v22[4] = *(result + v20 + 8) - ((v21[1] + v21[v16 - 3] + 1) >> 1);
          v22[5] = *(result + v20 + 10) - ((v21[2] + v21[v17 - 3] + 1) >> 1);
          v22[6] = *(result + v20 + 12) - ((v21[3] + v21[v18 - 3] + 1) >> 1);
          v22[7] = *(result + v20 + 14) - ((v21[4] + v21[v19 - 3] + 1) >> 1);
          v20 += 16;
          v21 += v12;
        }

        while (v20 != 128);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + a2 + 4);
      do
      {
        v11 = (result + v9);
        *v11 = *(result + v9) - ((*(v10 - 4) + *(v10 - 3) + 1) >> 1);
        v11[1] = *(result + v9 + 2) - ((*(v10 - 3) + *(v10 - 2) + 1) >> 1);
        v11[2] = *(result + v9 + 4) - ((*(v10 - 2) + *(v10 - 1) + 1) >> 1);
        v11[3] = *(result + v9 + 6) - ((*(v10 - 1) + *v10 + 1) >> 1);
        v11[4] = *(result + v9 + 8) - ((*v10 + v10[1] + 1) >> 1);
        v11[5] = *(result + v9 + 10) - ((v10[1] + v10[2] + 1) >> 1);
        v11[6] = *(result + v9 + 12) - ((v10[2] + v10[3] + 1) >> 1);
        v11[7] = *(result + v9 + 14) - ((v10[3] + v10[4] + 1) >> 1);
        v9 += 16;
        v10 += a3;
      }

      while (v9 != 128);
    }
  }

  else
  {
    v6 = 0;
    v7 = (v5 + a2 + 3);
    do
    {
      v8 = (result + v6);
      *v8 = *(result + v6) - *(v7 - 3);
      v8[1] = *(result + v6 + 2) - *(v7 - 2);
      v8[2] = *(result + v6 + 4) - *(v7 - 1);
      v8[3] = *(result + v6 + 6) - *v7;
      v8[4] = *(result + v6 + 8) - v7[1];
      v8[5] = *(result + v6 + 10) - v7[2];
      v8[6] = *(result + v6 + 12) - v7[3];
      v8[7] = *(result + v6 + 14) - v7[4];
      v6 += 16;
      v7 += a3;
    }

    while (v6 != 128);
  }

  return result;
}