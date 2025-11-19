CFMutableDictionaryRef OUTLINED_FUNCTION_0_5()
{

  return CFDictionaryCreateMutable(v1, 0, v0, v2);
}

void (*AMAuthInstallLogSetHandler(void (*result)(int a1, uint64_t a2)))(int a1, uint64_t a2)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _DefaultLogHandler;
  }

  _logHandler = v1;
  return result;
}

void _DefaultLogHandler(int a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (_DefaultLogHandler_once != -1)
  {
    _DefaultLogHandler_cold_1();
  }

  if (a1 <= 2)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_FAULT))
    {
      _DefaultLogHandler_cold_5();
    }

    goto LABEL_21;
  }

  if (a1 == 3)
  {
    if (os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_ERROR))
    {
      _DefaultLogHandler_cold_4();
    }

    goto LABEL_21;
  }

  if (a1 <= 5)
  {
    v4 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v10 = 136446210;
    v11 = a2;
    v5 = v4;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(&dword_29849C000, v5, v6, "%{public}s", &v10, 0xCu);
    goto LABEL_21;
  }

  if (a1 == 6)
  {
    v7 = _DefaultLogHandler_logHandle;
    if (!os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v10 = 136446210;
    v11 = a2;
    v5 = v7;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  v8 = os_log_type_enabled(_DefaultLogHandler_logHandle, OS_LOG_TYPE_DEBUG);
  if (a1 > 7)
  {
    if (v8)
    {
      _DefaultLogHandler_cold_2();
    }
  }

  else if (v8)
  {
    _DefaultLogHandler_cold_3();
  }

LABEL_21:
  v9 = *MEMORY[0x29EDCA608];
}

void AMAuthInstallLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x2A1C7C4A8]();
  v12 = v11;
  v13 = v9;
  v31 = *MEMORY[0x29EDCA608];
  v14 = "";
  if (v10)
  {
    v14 = v10;
  }

  v15 = snprintf(__str, 0x1000uLL, "%s: ", v14);
  v16 = *MEMORY[0x29EDB8ED8];
  v17 = CFStringCreateWithCStringNoCopy(*MEMORY[0x29EDB8ED8], v12, 0x8000100u, *MEMORY[0x29EDB8EE8]);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_9;
  }

  v18 = CFStringCreateWithFormatAndArguments(v16, 0, v17, &a9);
  v19 = v18;
  if (!v18)
  {
LABEL_9:
    v27 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v20 = v15;
  v21 = 4096 - v15;
  Length = CFStringGetLength(v18);
  v23 = Length;
  if (4096 - v15 < Length && (v24 = malloc(v15 + Length + 1)) != 0)
  {
    v25 = v24;
    v21 = v23 + 1;
    memcpy(v24, __str, v15);
    v26 = v25;
  }

  else
  {
    v26 = 0;
    v25 = __str;
  }

  if (CFStringGetCString(v19, &v25[v20], v21, 0x8000100u))
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

LABEL_14:
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = "failed to format log message";
  }

  _logHandler(v13, v28);
  SafeRelease(v17);
  SafeRelease(v19);
  SafeFree(v26);
  v29 = *MEMORY[0x29EDCA608];
}

uint64_t AMAuthInstallDebugWriteObject(CFTypeRef cf, CFTypeRef a2, uint64_t a3, int a4)
{
  cfa = 0;
  if (!cf)
  {
    goto LABEL_19;
  }

  if ((*(cf + 86) & a4) == 0)
  {
    v14 = 0;
LABEL_16:
    Data = 0;
    goto LABEL_20;
  }

  if (!*(cf + 42))
  {
    CFGetAllocator(cf);
    v29 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v29)
    {
      v14 = v29;
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "failed to create debug output directory", v30, v31, v32, v33, v34, v41);
      goto LABEL_16;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Data = CFRetain(a2);
    v9 = "";
    if (Data)
    {
      goto LABEL_6;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_20;
  }

  v21 = CFGetTypeID(a2);
  if (v21 != CFDictionaryGetTypeID())
  {
    v22 = CFGetTypeID(a2);
    if (v22 != CFArrayGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallDebugWriteObject", "can't prepare data for output to file", v23, v24, v25, v26, v27, v41);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "%@", v35, v36, v37, v38, v39, a2);
LABEL_19:
      Data = 0;
      v14 = 1;
      goto LABEL_20;
    }
  }

  v28 = CFGetAllocator(cf);
  Data = CFPropertyListCreateData(v28, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v9 = ".plist";
  if (!Data)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = CFGetAllocator(cf);
  v11 = CFStringCreateWithFormat(v10, 0, @"%@%s", a3, v9);
  if (v11)
  {
    v12 = v11;
    v13 = CFGetAllocator(cf);
    v14 = AMAuthInstallSupportCopyURLWithAppendedComponent(v13, *(cf + 42), v12, 0, &cfa);
    CFRelease(v12);
    if (!v14)
    {
      v15 = CFGetAllocator(cf);
      v14 = AMAuthInstallSupportWriteDataToFileURL(v15, Data, cfa, 0);
      AMAuthInstallLog(8, "AMAuthInstallDebugWriteObject", "debug object written: %@", v16, v17, v18, v19, v20, cfa);
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_20:
  SafeRelease(Data);
  SafeRelease(cfa);
  return v14;
}

void AMAuthInstallLogDumpMemory(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v24 = *MEMORY[0x29EDCA608];
  AMAuthInstallLog(a1, a2, "[%s: %u bytes]", a4, a5, a6, a7, a8, a3);
  if (v8 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = v8 + 1;
    do
    {
      v19 = *v9++;
      v20 = snprintf(&v23[v17], 64 - v17, "%02x ", v19);
      if (++v16 > 0xF || v18 == 2)
      {
        AMAuthInstallLog(a1, "", "%s", v11, v12, v13, v14, v15, v23);
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v17 += v20;
      }

      --v18;
    }

    while (v18 > 1);
  }

  AMAuthInstallLog(a1, "", "-----------------------------------------------", v11, v12, v13, v14, v15, v22);
  v21 = *MEMORY[0x29EDCA608];
}

uint64_t AMAuthInstallMonetMeasureDbl(const __CFNumber *a1, CFDataRef theData, __CFDictionary *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9, v10, v11, v12, v13, 0);
LABEL_8:
    AMAuthInstallLog(3, "_FindSblHeaderInFileData", "this file lacks sufficient magic", v14, v15, v16, v17, v18, v34);
    return 10;
  }

  v19 = 0;
  v20 = 0;
  v21 = Length >> 2;
  v22 = v7 - 4;
  do
  {
    if (*(v22 + 1) == 1943474228)
    {
      ++v19;
      v20 = v22;
      if (*(v22 + 2) != 2097890138)
      {
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "found SBL header", v9, v10, v11, v12, v13, v33);
        AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v27, v28, v29, v30, v31, v19);
        v20 = v22;
        goto LABEL_11;
      }
    }

    v22 += 4;
    --v21;
  }

  while (v21);
  AMAuthInstallLog(7, "_FindSblHeaderInFileData", "foundMagic=%d", v9, v10, v11, v12, v13, v19);
  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v32 = *(v20 + 5);
  if (v20 + 80 != &BytePtr[v32])
  {
    AMAuthInstallMonetMeasureDbl_cold_1(v23, v24, v25, v14, v15, v32, v17, v18, v34);
    return 10;
  }

  AMAuthInstallMonetSetVersionAndPartialDigest(a1, a3, BytePtr, theData, v20, v32, *(v20 + 8), @"DBL-Version", @"DBL-PartialDigest");
  return 0;
}

uint64_t AMAuthInstallMonetStitchEBootLoader(const void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, const void *a5)
{
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@-Original", a5);
  v50 = a5;
  v12 = CFStringCreateWithFormat(v10, 0, @"%@-Personalized");
  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", v14, v15, v16, v17, v18, @"BasebandFirmware");
LABEL_9:
    v48 = 8;
LABEL_12:
    SafeRelease(0);
    goto LABEL_6;
  }

  v19 = CFDictionaryGetValue(Value, a5);
  if (!v19)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "response lacks %@", v20, v21, v22, v23, v24, a5);
    goto LABEL_9;
  }

  v25 = v19;
  Length = CFDataGetLength(v19);
  v27 = CFDataGetLength(a2);
  if (Length >= v27)
  {
    AMAuthInstallMonetStitchEBootLoader_cold_1(v27, v28, v29, v30, v31, v32, v33, v34, v50);
    v48 = 1;
    goto LABEL_12;
  }

  v35 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v35, 0, a2);
  if (!MutableCopy)
  {
    v48 = 2;
    goto LABEL_12;
  }

  v37 = MutableCopy;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v39 = CFDataGetLength(v37);
  v40 = &MutableBytePtr[v39 - CFDataGetLength(v25)];
  CFDataGetLength(v25);
  CFDataGetLength(v37);
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchFirstStage", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n Len(stitchData)=%d Len(newFileData) = %d", v41, v42, v43, v44, v45, v40);
  BytePtr = CFDataGetBytePtr(v25);
  v47 = CFDataGetLength(v25);
  memcpy(v40, BytePtr, v47);
  *a4 = CFRetain(v37);
  SafeRelease(v37);
  AMAuthInstallDebugWriteObject(a1, a2, v11, 1);
  AMAuthInstallDebugWriteObject(a1, *a4, v12, 1);
  v48 = 0;
LABEL_6:
  SafeRelease(v11);
  SafeRelease(v12);
  return v48;
}

uint64_t AMAuthInstallMonetStitchSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[6] + 4);
  v9 = kAMAuthInstallTagBbSbl1HTDStitch;
  if (v8 > 1700064)
  {
    if (v8 > 2089184)
    {
      if (v8 != 2089185)
      {
        if (v8 == 9781473)
        {
          goto LABEL_24;
        }

        if (v8 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v10 = v8 == 1700065;
    v11 = 2044129;
LABEL_18:
    if (!v10 && v8 != v11)
    {
LABEL_27:
      v9 = kAMAuthInstallTagBbSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v9 = kAMAuthInstallTagBbSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v8 > 938208)
  {
    v10 = v8 == 938209 || v8 == 1327329;
    v11 = 1515745;
    goto LABEL_18;
  }

  if (v8 != 241889 && v8 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v14 = *v9;
  if (v8 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v14, 1, a7, a8);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v14);
  }
}

uint64_t AMAuthInstallMonetStitchMav25EBootLoader(const void *a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_14(0, a2, a3, a4, a5, a6, a7, a8, v122);
LABEL_30:
    v22 = 0;
LABEL_31:
    v30 = 0;
LABEL_32:
    v120 = 99;
    goto LABEL_24;
  }

  if (!a2)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_13(a1, 0, a3, a4, a5, a6, a7, a8, v122);
    goto LABEL_30;
  }

  if (!a3)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_12(a1, a2, 0, a4, a5, a6, a7, a8, v122);
    goto LABEL_30;
  }

  if (!a4)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_11(a1, a2, a3, 0, a5, a6, a7, a8, v122);
    goto LABEL_30;
  }

  if (!a5)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_10(a1, a2, a3, a4, 0, a6, a7, a8, v122);
    goto LABEL_30;
  }

  v12 = a6;
  v14 = *MEMORY[0x29EDB8ED8];
  v123 = a5;
  v22 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@-Original");
  if (!v22)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_9(0, v15, v16, v17, v18, v19, v20, v21, v123);
    goto LABEL_31;
  }

  v124 = a5;
  v30 = CFStringCreateWithFormat(v14, 0, @"%@-Personalized");
  if (!v30)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_8(0, v23, v24, v25, v26, v27, v28, v29, a5);
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a3, @"BasebandFirmware");
  v32 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  if (v32 != TypeID)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_1(TypeID, v34, v35, v36, v37, v38, v39, v40, a5);
LABEL_38:
    v76 = 0;
LABEL_44:
    v120 = 99;
    goto LABEL_46;
  }

  v41 = CFDictionaryGetValue(a3, @"BasebandFirmware");
  if (!v41)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", v42, v43, v44, v45, v46, @"BasebandFirmware");
LABEL_40:
    v76 = 0;
    v120 = 8;
LABEL_46:
    SafeRelease(v76);
    goto LABEL_24;
  }

  v47 = v41;
  v48 = CFDictionaryGetValue(v41, a5);
  v49 = CFGetTypeID(v48);
  v50 = CFDataGetTypeID();
  if (v49 != v50)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_2(v50, v51, v52, v53, v54, v55, v56, v57, a5);
    goto LABEL_38;
  }

  v58 = CFDictionaryGetValue(v47, a5);
  if (!v58)
  {
    AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "response lacks %@", v59, v60, v61, v62, v63, a5);
    goto LABEL_40;
  }

  v64 = v58;
  Length = CFDataGetLength(v58);
  v66 = CFDataGetLength(a2);
  if (Length >= v66)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_3(v66, v67, v68, v69, v70, v71, v72, v73, a5);
    v76 = 0;
    v120 = 1;
    goto LABEL_46;
  }

  v74 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v74, 0, a2);
  v76 = MutableCopy;
  if (!MutableCopy)
  {
    v120 = 2;
    goto LABEL_46;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  theData = a2;
  BytePtr = CFDataGetBytePtr(a2);
  if (v12)
  {
    v79 = *&BytePtr[56 * *(BytePtr + 28) - 48 + *(BytePtr + 4)];
  }

  else
  {
    v79 = *&BytePtr[32 * *(BytePtr + 22) - 28 + *(BytePtr + 7)];
  }

  v80 = &CFDataGetBytePtr(theData)[v79];
  v81 = _CalculateSizeOfJMETMetadataSegment(v80) + v80[5];
  v82 = CFDataGetLength(v64);
  if (v81 > v82)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_4(v82, v83, v84, v85, v86, v87, v88, v89, v124);
    goto LABEL_44;
  }

  cf = a1;
  v126 = a4;
  v127 = v30;
  v90 = &MutableBytePtr[v79];
  v91 = CFDataGetLength(v76);
  _AMAuthInstallMonetStitchMav25Chunk(v90, v64, 0, v81, v91, v92, v93, v94);
  v95 = _CalculateSizeOfJMETMetadataSegment(v80);
  v96 = v80[5];
  v97 = v80[6];
  v99 = v80[8];
  v98 = v80[9];
  v100 = v80[7];
  if (v99 && v99 != 104)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_6();
  }

  if (v98 && v98 != 3360)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_5();
  }

  v101 = v99 + v98;
  v102 = v96 + v80[3] + 288;
  v103 = CFDataGetLength(v64);
  if (v102 + v101 > v103)
  {
    AMAuthInstallMonetStitchMav25EBootLoader_cold_4(v103, v104, v105, v106, v107, v108, v109, v110, v124);
    v120 = 99;
    v30 = v127;
    goto LABEL_46;
  }

  v111 = CFDataGetLength(v76);
  _AMAuthInstallMonetStitchMav25Chunk(&v90[v95 + v96 + v97 + v100], v64, v102, v101, v111, v112, v113, v114);
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25FirstStage", "\n\n", v115, v116, v117, v118, v119, v124);
  *v126 = CFRetain(v76);
  SafeRelease(v76);
  AMAuthInstallDebugWriteObject(cf, theData, v22, 1);
  v30 = v127;
  AMAuthInstallDebugWriteObject(cf, *v126, v127, 1);
  v120 = 0;
LABEL_24:
  SafeRelease(v22);
  SafeRelease(v30);
  return v120;
}

uint64_t AMAuthInstallMonetStitchMisc(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1[6] + 4) == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob", 1, a7, a8);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, @"Misc-HashTableBody-Blob");
  }
}

uint64_t AMAuthInstallMonetStitchRestoreSbl1(void *a1, const __CFData *a2, const __CFDictionary *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[6] + 4);
  v9 = kAMAuthInstallTagBbRestoreSbl1HTDStitch;
  if (v8 > 1700064)
  {
    if (v8 > 2089184)
    {
      if (v8 != 2089185)
      {
        if (v8 == 9781473)
        {
          goto LABEL_24;
        }

        if (v8 != 2814177)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_23;
    }

    v10 = v8 == 1700065;
    v11 = 2044129;
LABEL_18:
    if (!v10 && v8 != v11)
    {
LABEL_27:
      v9 = kAMAuthInstallTagBbRestoreSbl1Stitch;
      goto LABEL_24;
    }

LABEL_23:
    v9 = kAMAuthInstallTagBbRestoreSbl1HTBStitch;
    goto LABEL_24;
  }

  if (v8 > 938208)
  {
    v10 = v8 == 938209 || v8 == 1327329;
    v11 = 1515745;
    goto LABEL_18;
  }

  if (v8 != 241889 && v8 != 520417)
  {
    goto LABEL_27;
  }

LABEL_24:
  v14 = *v9;
  if (v8 == 2044129)
  {
    return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, v14, 1, a7, a8);
  }

  else
  {
    return AMAuthInstallMonetStitchEBootLoader(a1, a2, a3, a4, v14);
  }
}

uint64_t AMAuthInstallMonetMeasureMav20ElfMBN(const void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, void *a5, const void *a6)
{
  v118 = *MEMORY[0x29EDCA608];
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *bytes = 0u;
  v114 = 0u;
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_1(Length, v13, v14, v15, v16, v17, v18, v19, v109);
    goto LABEL_23;
  }

  v20 = Length;
  v21 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_22;
  }

  v22 = 0;
  v23 = 0;
  v24 = Length + *(Length + 28);
  do
  {
    if (*(v24 + 12) > v22 && (*(v24 + 24) & 0x7000000) != 0x5000000)
    {
      v23 = v24;
      v22 = *(v24 + 12);
    }

    v24 += 32;
    --v21;
  }

  while (v21);
  if (!v23)
  {
LABEL_22:
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_11(Length, v13, v14, v15, v16, v17, v18, v19, v109);
LABEL_23:
    v112 = 0;
    v104 = 0;
    v106 = 0;
    v95 = 0;
    v105 = 10;
    goto LABEL_21;
  }

  v25 = (*(v23 + 16) + *(v23 + 4));
  v26 = CFDataGetLength(theData);
  if (v26 < v25)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_10(v26, v27, v28, v29, v30, v31, v32, v33, v109);
    goto LABEL_23;
  }

  CFDataGetBytePtr(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v35 = *(v23 + 4);
  v36 = &BytePtr[v35];
  v37 = (*&BytePtr[v35 + 20] + v35);
  v38 = CFDataGetLength(theData);
  if (v38 < v37)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_9(v38, v39, v40, v41, v42, v43, v44, v45, v109);
    goto LABEL_23;
  }

  v46 = (*(v36 + 4) + *(v23 + 4));
  v47 = CFDataGetLength(theData);
  if (v47 < v46)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_8(v47, v48, v49, v50, v51, v52, v53, v54, v109);
    goto LABEL_23;
  }

  v55 = (*(v36 + 9) + *(v23 + 4));
  v56 = CFDataGetLength(theData);
  if (v56 < v55)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_7(v56, v57, v58, v59, v60, v61, v62, v63, v109);
    goto LABEL_23;
  }

  v64 = (*(v36 + 7) + *(v23 + 4));
  v65 = CFDataGetLength(theData);
  if (v65 < v64)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_6(v65, v66, v67, v68, v69, v70, v71, v72, v109);
    goto LABEL_23;
  }

  if ((*(v36 + 7) + *(v36 + 5) + *(v36 + 9)) + 168 != *(v23 + 16))
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_2(v65, v66, v67, v68, v69, v70, v71, v72, v109);
    goto LABEL_23;
  }

  v73 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v73, 0);
  if (!Mutable)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_5(0, v75, v76, v77, v78, v79, v80, v81, v109);
    v112 = 0;
    v104 = 0;
    v106 = 0;
    v95 = 0;
    v105 = 2;
    goto LABEL_21;
  }

  v82 = Mutable;
  key = a5;
  CFDataSetLength(Mutable, 48);
  CFDataGetBytePtr(theData);
  v112 = v82;
  CFDataGetMutableBytePtr(v82);
  v83 = *(v23 + 4);
  v84 = CFDataGetBytePtr(theData);
  v85 = CFGetAllocator(a1);
  v111 = CFDataCreate(v85, v36, 168);
  CFDictionarySetValue(a3, a6, v111);
  v86 = CFGetAllocator(a1);
  v87 = CFDataCreateMutable(v86, 0);
  v95 = v87;
  if (!v87)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_4(0, v88, v89, v90, v91, v92, v93, v94, v109);
    v104 = 0;
LABEL_35:
    v105 = 2;
    goto LABEL_20;
  }

  CFDataAppendBytes(v87, &v84[v83 + 168], *(v36 + 5));
  CFDataSetLength(v95, *(v36 + 5));
  CFDictionarySetValue(a3, a4, v95);
  *&bytes[4] = *(v23 + 4);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  _SHA384Partial(v20, *&bytes[4], &bytes[8]);
  v96 = CFGetAllocator(a1);
  v104 = CFDataCreate(v96, bytes, 72);
  if (!v104)
  {
    AMAuthInstallMonetMeasureMav20ElfMBN_cold_3(0, v97, v98, v99, v100, v101, v102, v103);
    goto LABEL_35;
  }

  CFDictionarySetValue(a3, key, v104);
  v105 = 0;
LABEL_20:
  v106 = v111;
LABEL_21:
  SafeRelease(v95);
  SafeRelease(v112);
  SafeRelease(v104);
  SafeRelease(v106);
  v107 = *MEMORY[0x29EDCA608];
  return v105;
}

int8x16_t _SHA384Partial(const void *a1, CC_LONG a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA384_Init(&v8);
  CC_SHA384_Update(&v8, a1, a2);
  for (i = 0; i != 8; i += 2)
  {
    result = vrev64q_s8(*&v8.hash[i]);
    *(a3 + i * 8) = result;
  }

  return result;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf32MBN(uint64_t a1, CFDataRef theData, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v140 = *MEMORY[0x29EDCA608];
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_20(0, theData, a3, a4, a5, a6, a7, a8, v137);
    v106 = 0;
    v13 = 0;
LABEL_32:
    v134 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_19(a1, 0, a3, a4, a5, a6, a7, a8, v137);
LABEL_29:
    v106 = 0;
LABEL_30:
    v13 = 0;
LABEL_31:
    v8 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_18(a1, theData, 0, a4, a5, a6, a7, a8, v137);
    goto LABEL_29;
  }

  if (!a4)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_17(a1, theData, a3, 0, a5, a6, a7, a8, v137);
    goto LABEL_29;
  }

  if (!a5)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_16(a1, theData, a3, a4, 0, a6, a7, a8, v137);
    goto LABEL_29;
  }

  v13 = a6;
  if (!a6)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_15(a1, theData, a3, a4, a5, 0, a7, a8, v137);
    v106 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_1(Length, v15, v16, v17, v18, v19, v20, v21, v137);
LABEL_44:
    v106 = 0;
    v13 = 0;
    v8 = 0;
    v134 = 10;
    goto LABEL_23;
  }

  v22 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  v31 = &BytePtr[32 * *(BytePtr + 22) + *(BytePtr + 7)];
  if (v31 == 32)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_13(BytePtr, v24, v25, v26, v27, v28, v29, v30, v137);
    goto LABEL_44;
  }

  v32 = (*(v31 - 16) + *(v31 - 28));
  v33 = CFDataGetLength(theData);
  if (v33 < v32)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_12(v33, v34, v35, v36, v37, v38, v39, v40, v137);
    goto LABEL_44;
  }

  v41 = CFDataGetBytePtr(theData);
  v42 = *(v31 - 28);
  v43 = &v41[v42];
  v44 = (*&v41[v42 + 20] + v42);
  v45 = CFDataGetLength(theData);
  if (v45 < v44)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_11(v45, v46, v47, v48, v49, v50, v51, v52, v137);
    goto LABEL_44;
  }

  v53 = (*(v43 + 24) + *(v31 - 28));
  v54 = CFDataGetLength(theData);
  if (v54 < v53)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_10(v54, v55, v56, v57, v58, v59, v60, v61, v137);
    goto LABEL_44;
  }

  v62 = (*(v43 + 28) + *(v31 - 28));
  v63 = CFDataGetLength(theData);
  if (v63 < v62)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_9(v63, v64, v65, v66, v67, v68, v69, v70, v137);
    goto LABEL_44;
  }

  v71 = (*(v43 + 32) + *(v31 - 28));
  v72 = CFDataGetLength(theData);
  if (v72 < v71)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_8(v72, v73, v74, v75, v76, v77, v78, v79, v137);
    goto LABEL_44;
  }

  v80 = (*(v43 + 36) + *(v31 - 28));
  v81 = CFDataGetLength(theData);
  if (v81 < v80)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_7(v81, v82, v83, v84, v85, v86, v87, v88, v137);
    goto LABEL_44;
  }

  v89 = _CalculateSizeOfJMETMetadataSegment(v43);
  if (vaddlvq_u32(*(v43 + 20)) + *(v43 + 36) + v89 > *(v31 - 16))
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_6(v89, v90, v91, v92, v93, v94, v95, v96, v137);
    goto LABEL_44;
  }

  v97 = _CalculateSizeOfJMETMetadataSegment(v43);
  v98 = CFGetAllocator(v8);
  v106 = CFDataCreate(v98, v43, v97);
  if (!v106)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_5(0, v99, v100, v101, v102, v103, v104, v105, v137);
    v13 = 0;
    v8 = 0;
    v134 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v13, v106);
  v115 = *(v43 + 20);
  if (!v115)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_4(v107, v108, v109, v110, v111, v112, v113, v114, v137);
    goto LABEL_30;
  }

  v138 = v106;
  v116 = a5;
  v117 = _CalculateSizeOfJMETMetadataSegment(v43);
  v118 = CFGetAllocator(v8);
  v13 = CFDataCreate(v118, (v43 + v117), v115);
  if (!v13)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_3(0, v119, v120, v121, v122, v123, v124, v125, v137);
    v8 = 0;
LABEL_49:
    v134 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v13);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v31 - 28);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  _SHA384Partial(v22, *&bytes[4], &bytes[8]);
  v126 = CFGetAllocator(v8);
  v8 = CFDataCreate(v126, bytes, 72);
  if (!v8)
  {
    AMAuthInstallMonetMeasureMav25Elf32MBN_cold_2(0, v127, v128, v129, v130, v131, v132, v133);
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v116, v8);
  v134 = 0;
LABEL_22:
  v106 = v138;
LABEL_23:
  SafeRelease(v106);
  SafeRelease(v13);
  SafeRelease(v8);
  v135 = *MEMORY[0x29EDCA608];
  return v134;
}

uint64_t _CalculateSizeOfJMETMetadataSegment(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 && v1 != 224)
  {
    _CalculateSizeOfJMETMetadataSegment_cold_1();
  }

  return v1 + 288;
}

uint64_t AMAuthInstallMonetMeasureMav25Elf64MBN(uint64_t a1, CFDataRef theData, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v148 = *MEMORY[0x29EDCA608];
  memset(bytes, 0, sizeof(bytes));
  if (!a1)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_20(0, theData, a3, a4, a5, a6, a7, a8, v145);
    v114 = 0;
    v13 = 0;
LABEL_32:
    v142 = 99;
    goto LABEL_23;
  }

  if (!theData)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_19(a1, 0, a3, a4, a5, a6, a7, a8, v145);
LABEL_29:
    v114 = 0;
LABEL_30:
    v13 = 0;
LABEL_31:
    v8 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_18(a1, theData, 0, a4, a5, a6, a7, a8, v145);
    goto LABEL_29;
  }

  if (!a4)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_17(a1, theData, a3, 0, a5, a6, a7, a8, v145);
    goto LABEL_29;
  }

  if (!a5)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_16(a1, theData, a3, a4, 0, a6, a7, a8, v145);
    goto LABEL_29;
  }

  v13 = a6;
  if (!a6)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_15(a1, theData, a3, a4, a5, 0, a7, a8, v145);
    v114 = 0;
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0x33)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_14(Length, v15, v16, v17, v18, v19, v20, v21, v145);
LABEL_44:
    v114 = 0;
    v13 = 0;
    v8 = 0;
    v142 = 10;
    goto LABEL_23;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr != 1179403647)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_1(BytePtr, v23, v24, v25, v26, v27, v28, v29, v145);
    goto LABEL_44;
  }

  v30 = BytePtr;
  v31 = CFDataGetBytePtr(theData);
  v39 = &v31[56 * *(v31 + 28) + *(v31 + 4)];
  if (v39 == 56)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_13(v31, v32, v33, v34, v35, v36, v37, v38, v145);
    goto LABEL_44;
  }

  v40 = *(v39 - 24) + *(v39 - 48);
  v41 = CFDataGetLength(theData);
  if (v40 > v41)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_12(v41, v42, v43, v44, v45, v46, v47, v48, v145);
    goto LABEL_44;
  }

  v49 = CFDataGetBytePtr(theData);
  v50 = *(v39 - 48);
  v51 = &v49[v50];
  v52 = v50 + *&v49[v50 + 20];
  v53 = CFDataGetLength(theData);
  if (v52 > v53)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_11(v53, v54, v55, v56, v57, v58, v59, v60, v145);
    goto LABEL_44;
  }

  v61 = *(v39 - 48) + *(v51 + 24);
  v62 = CFDataGetLength(theData);
  if (v61 > v62)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_10(v62, v63, v64, v65, v66, v67, v68, v69, v145);
    goto LABEL_44;
  }

  v70 = *(v39 - 48) + *(v51 + 28);
  v71 = CFDataGetLength(theData);
  if (v70 > v71)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_9(v71, v72, v73, v74, v75, v76, v77, v78, v145);
    goto LABEL_44;
  }

  v79 = *(v39 - 48) + *(v51 + 32);
  v80 = CFDataGetLength(theData);
  if (v79 > v80)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_8(v80, v81, v82, v83, v84, v85, v86, v87, v145);
    goto LABEL_44;
  }

  v88 = *(v39 - 48) + *(v51 + 36);
  v89 = CFDataGetLength(theData);
  if (v88 > v89)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_7(v89, v90, v91, v92, v93, v94, v95, v96, v145);
    goto LABEL_44;
  }

  v97 = _CalculateSizeOfJMETMetadataSegment(v51);
  if (vaddlvq_u32(*(v51 + 20)) + *(v51 + 36) + v97 > *(v39 - 24))
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_6(v97, v98, v99, v100, v101, v102, v103, v104, v145);
    goto LABEL_44;
  }

  v105 = _CalculateSizeOfJMETMetadataSegment(v51);
  v106 = CFGetAllocator(v8);
  v114 = CFDataCreate(v106, v51, v105);
  if (!v114)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_5(0, v107, v108, v109, v110, v111, v112, v113, v145);
    v13 = 0;
    v8 = 0;
    v142 = 2;
    goto LABEL_23;
  }

  CFDictionarySetValue(a3, v13, v114);
  v123 = *(v51 + 20);
  if (!v123)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_4(v115, v116, v117, v118, v119, v120, v121, v122, v145);
    goto LABEL_30;
  }

  v146 = v114;
  v124 = a5;
  v125 = _CalculateSizeOfJMETMetadataSegment(v51);
  v126 = CFGetAllocator(v8);
  v13 = CFDataCreate(v126, (v51 + v125), v123);
  if (!v13)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_3(0, v127, v128, v129, v130, v131, v132, v133, v145);
    v8 = 0;
LABEL_49:
    v142 = 2;
    goto LABEL_22;
  }

  CFDictionarySetValue(a3, a4, v13);
  memset(&bytes[8], 0, 64);
  *&bytes[4] = *(v39 - 48);
  *bytes = CFDataGetLength(theData) - *&bytes[4];
  _SHA384Partial(v30, *&bytes[4], &bytes[8]);
  v134 = CFGetAllocator(v8);
  v8 = CFDataCreate(v134, bytes, 72);
  if (!v8)
  {
    AMAuthInstallMonetMeasureMav25Elf64MBN_cold_2(0, v135, v136, v137, v138, v139, v140, v141);
    goto LABEL_49;
  }

  CFDictionarySetValue(a3, v124, v8);
  v142 = 0;
LABEL_22:
  v114 = v146;
LABEL_23:
  SafeRelease(v114);
  SafeRelease(v13);
  SafeRelease(v8);
  v143 = *MEMORY[0x29EDCA608];
  return v142;
}

uint64_t AMAuthInstallMonetMeasureElfMBN(void *a1, CFDataRef theData, __CFDictionary *a3, void *a4, const void *a5)
{
  v111 = *MEMORY[0x29EDCA608];
  v110 = 0;
  *bytes = 0u;
  v109 = 0u;
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  Length = CFDataGetLength(theData);
  if (Length <= 0x33 || (Length = CFDataGetBytePtr(theData), *Length != 1179403647))
  {
    AMAuthInstallMonetMeasureElfMBN_cold_1(Length, v11, v12, v13, v14, v15, v16, v17, theDict);
    goto LABEL_24;
  }

  v18 = Length;
  v19 = *(Length + 44);
  if (!*(Length + 44))
  {
    goto LABEL_23;
  }

  v20 = 0;
  v21 = 0;
  v22 = Length + *(Length + 28);
  do
  {
    if (*(v22 + 12) > v21 && (*(v22 + 24) & 0x7000000) != 0x5000000)
    {
      v21 = *(v22 + 12);
      v20 = v22;
    }

    v22 += 32;
    --v19;
  }

  while (v19);
  if (!v20)
  {
LABEL_23:
    AMAuthInstallMonetMeasureElfMBN_cold_10(Length, v11, v12, v13, v14, v15, v16, v17, theDict);
LABEL_24:
    v80 = 0;
    v99 = 0;
    v100 = 10;
    goto LABEL_22;
  }

  v23 = (*(v20 + 16) + *(v20 + 4));
  v24 = CFDataGetLength(theData);
  if (v24 < v23)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_9(v24, v25, v26, v27, v28, v29, v30, v31, theDict);
    goto LABEL_24;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v33 = *(v20 + 4);
  v34 = &BytePtr[v33];
  v35 = (*&BytePtr[v33 + 20] + v33);
  v36 = CFDataGetLength(theData);
  if (v36 < v35)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_8(v36, v37, v38, v39, v40, v41, v42, v43, theDict);
    goto LABEL_24;
  }

  v44 = (*(v34 + 4) + *(v20 + 4));
  v45 = CFDataGetLength(theData);
  if (v45 < v44)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_7(v45, v46, v47, v48, v49, v50, v51, v52, theDict);
    goto LABEL_24;
  }

  v53 = (*(v34 + 9) + *(v20 + 4));
  v54 = CFDataGetLength(theData);
  if (v54 < v53)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_6(v54, v55, v56, v57, v58, v59, v60, v61, theDict);
    goto LABEL_24;
  }

  v62 = (*(v34 + 7) + *(v20 + 4));
  v63 = CFDataGetLength(theData);
  if (v63 < v62)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_5(v63, v64, v65, v66, v67, v68, v69, v70, theDict);
    goto LABEL_24;
  }

  if ((*(v34 + 7) + *(v34 + 5) + *(v34 + 9)) + 40 != *(v20 + 16))
  {
    AMAuthInstallMonetMeasureElfMBN_cold_2(v63, v64, v65, v66, v67, v68, v69, v70, theDict);
    goto LABEL_24;
  }

  v71 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v71, 0);
  v80 = Mutable;
  if (!Mutable)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_4(0, v73, v74, v75, v76, v77, v78, v79, theDict);
    v99 = 0;
LABEL_35:
    v100 = 2;
    goto LABEL_22;
  }

  theDicta = a3;
  key = a4;
  v81 = a5;
  if (*(a1[6] + 4) == 520417)
  {
    CFDataSetLength(Mutable, 48);
    v82 = CFDataGetBytePtr(theData);
    v83 = *(v20 + 4);
    v84 = *(v34 + 5);
    MutableBytePtr = CFDataGetMutableBytePtr(v80);
    CC_SHA384(&v82[v83], v84 + 40, MutableBytePtr);
    DWORD1(v106[0]) = *(v20 + 4) + *(v34 + 5) + 40;
    LODWORD(v106[0]) = CFDataGetLength(theData) - DWORD1(v106[0]);
    _SHA384Partial(v18, DWORD1(v106[0]), v106 + 8);
    v86 = CFGetAllocator(a1);
    v87 = v106;
    v88 = 72;
  }

  else
  {
    CFDataSetLength(Mutable, 32);
    v89 = CFDataGetBytePtr(theData);
    v90 = *(v20 + 4);
    v91 = *(v34 + 5);
    v92 = CFDataGetMutableBytePtr(v80);
    CC_SHA256(&v89[v90], v91 + 40, v92);
    *&bytes[4] = *(v20 + 4) + *(v34 + 5) + 40;
    *bytes = CFDataGetLength(theData) - *&bytes[4];
    _SHA256Partial(v18, *&bytes[4], &bytes[8]);
    v86 = CFGetAllocator(a1);
    v87 = bytes;
    v88 = 40;
  }

  v99 = CFDataCreate(v86, v87, v88);
  if (!v99)
  {
    AMAuthInstallMonetMeasureElfMBN_cold_3(0, key, v93, v94, v95, v96, v97, v98);
    goto LABEL_35;
  }

  CFDictionarySetValue(theDicta, key, v80);
  CFDictionarySetValue(theDicta, v81, v99);
  v100 = 0;
LABEL_22:
  SafeRelease(v80);
  SafeRelease(v99);
  v101 = *MEMORY[0x29EDCA608];
  return v100;
}

int8x16_t _SHA256Partial(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v8, 0, sizeof(v8));
  CC_SHA256_Init(&v8);
  CC_SHA256_Update(&v8, a1, a2);
  result = vrev32q_s8(*v8.hash);
  v7 = vrev32q_s8(*&v8.hash[4]);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t AMAuthInstallMonetStitchTme(void *a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1[6] + 4) != 2044129)
  {
    AMAuthInstallMonetStitchTme_cold_1();
  }

  return AMAuthInstallMonetStitchMav25EBootLoader(a1, a2, a3, a4, @"TME-HashTableBody-Blob", 0, a7, a8);
}

uint64_t AMAuthInstallMonetCreateMEIDFromString(int a1, CFStringRef theString, CFTypeRef *a3)
{
  v4 = theString;
  cf = 0;
  Length = CFStringGetLength(theString);
  v6 = *MEMORY[0x29EDB8ED8];
  if (Length == 15)
  {
    v17.length = CFStringGetLength(v4) - 1;
    v17.location = 0;
    v7 = CFStringCreateWithSubstring(v6, v4, v17);
    v4 = v7;
  }

  else
  {
    v7 = 0;
  }

  v8 = AMAuthInstallSupportCopyDataFromHexString(v6, v4, &cf);
  if (v8)
  {
    v14 = v8;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "failed to convert meid (%@) to data", v9, v10, v11, v12, v13, v4);
  }

  else if (cf)
  {
    v14 = 0;
    *a3 = CFRetain(cf);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateMEIDFromString", "meid (%@) tempData is NULL", v9, v10, v11, v12, v13, v4);
    v14 = 14;
  }

  SafeRelease(v7);
  SafeRelease(cf);
  return v14;
}

uint64_t AMAuthInstallMonetCreateReversedMEIDFromString(int a1, const __CFString *a2, CFTypeRef *a3)
{
  v4 = a2;
  theData = 0;
  v27 = 0;
  MEIDFromString = AMAuthInstallMonetCreateMEIDFromString(a1, a2, &v27);
  if (MEIDFromString)
  {
    v24 = MEIDFromString;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to convert meid (%@) to data", v6, v7, v8, v9, v10, v4);
    v18 = 0;
    v11 = v27;
    goto LABEL_6;
  }

  v11 = v27;
  if (!v27)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) tempData is NULL", v6, v7, v8, v9, v10, v4);
    v18 = 0;
LABEL_11:
    v24 = 14;
    goto LABEL_6;
  }

  ReversedMEID = AMAuthInstallMonetCreateReversedMEID(*MEMORY[0x29EDB8ED8], v27, &theData);
  if (ReversedMEID)
  {
    v24 = ReversedMEID;
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "failed to reverse meid (%@)", v13, v14, v15, v16, v17, v4);
    v18 = theData;
    goto LABEL_6;
  }

  v18 = theData;
  if (!theData)
  {
    AMAuthInstallLog(3, "AMAuthInstallMonetCreateReversedMEIDFromString", "meid (%@) reversedData is NULL", v13, v14, v15, v16, v17, v4);
    goto LABEL_11;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v18);
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallMonetCreateReversedMEIDFromString", "reversed meid", BytePtr, Length, v21, v22, v23);
  v24 = 0;
  *a3 = CFRetain(v18);
LABEL_6:
  SafeRelease(0);
  SafeRelease(v11);
  SafeRelease(v18);
  return v24;
}

void *_AMAuthInstallMonetStitchMav25Chunk(void *a1, const __CFData *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(3, "_AMAuthInstallMonetStitchMav25Chunk", "Stitch Debug: \n StitchAddress: 0x%x \n 64-Byte-Aligned: %s \n 128-Byte-Aligned: %s\n stitchDataSize = %d stitchDataOffset = %d Len(newFileData) = %d", a4, a5, a6, a7, a8, a1);
  v12 = &CFDataGetBytePtr(a2)[a3];

  return memcpy(a1, v12, a4);
}

UInt8 *OUTLINED_FUNCTION_3_6()
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 16);

  return CFDataGetMutableBytePtr(v0);
}

void OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  AMAuthInstallLog(7, v9, a3, a4, a5, a6, a7, a8, a9);
}

CFDataRef OUTLINED_FUNCTION_10_3(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFErrorRef error)
{
  v14 = *(v12 + 176);

  return CFPropertyListCreateData(a1, v14, kCFPropertyListXMLFormat_v1_0, 0, &error);
}

uint64_t AMAuthInstallPlatformCreateSoftLink(const __CFURL *a1, CFURLRef url)
{
  v19 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024) && CFURLGetFileSystemRepresentation(a1, 1u, v17, 1024))
  {
    result = symlink(buffer, v17);
    if (result)
    {
      v4 = __error();
      v5 = strerror(*v4);
      AMAuthInstallLog(3, "AMAuthInstallPlatformCreateSoftLink", "failed to create link: %s", v6, v7, v8, v9, v10, v5);
      AMAuthInstallLog(7, "AMAuthInstallPlatformCreateSoftLink", "source path: %s; dest path: %s", v11, v12, v13, v14, v15, buffer);
      result = 4;
    }
  }

  else
  {
    result = 3;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallPlatformIsRegularFile(const __CFURL *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  memset(&v3, 0, sizeof(v3));
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    stat(buffer, &v3);
    result = (v3.st_mode & 0xF000) == 0x8000;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallPlatformMakeDirectoryForURL(const __CFURL *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  strcpy(__delim, "/");
  bzero(__str, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v2 = strlen(buffer);
    if (!CFURLHasDirectoryPath(a1))
    {
      if (v2)
      {
        do
        {
          v3 = v2 - 1;
          v4 = __delim[v2 + 1] == 47 || v2 == 1;
          --v2;
        }

        while (!v4);
      }

      else
      {
        v3 = 0;
      }

      buffer[v3] = 0;
    }

    __stringp = buffer;
    result = strsep(&__stringp, __delim);
    if (result)
    {
      v6 = "Could not stat (%s)";
      while (1)
      {
        memset(&v20, 0, sizeof(v20));
        if (*result)
        {
          snprintf(__str, 0x400uLL, "%s%c%s", __str, 47, result);
          if (stat(__str, &v20) == -1)
          {
            if (*__error() != 2)
            {
              goto LABEL_23;
            }

            if (mkdir(__str, 0x1EDu) == -1 && *__error() != 17)
            {
              break;
            }
          }
        }

        result = strsep(&__stringp, __delim);
        if (!result)
        {
          goto LABEL_24;
        }
      }

      v6 = "Could not mkdir (%s)";
LABEL_23:
      v7 = __error();
      v8 = strerror(*v7);
      AMAuthInstallLog(3, "AMAuthInstallPlatformMakeDirectoryForURL", v6, v9, v10, v11, v12, v13, v8);
      AMAuthInstallLog(7, "AMAuthInstallPlatformMakeDirectoryForURL", "%s", v14, v15, v16, v17, v18, __str);
      result = 4;
    }
  }

  else
  {
    result = 3;
  }

LABEL_24:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallPlatformRemoveDirectory(const __CFURL *a1)
{
  v1 = a1;
  v20 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v18 = 0;
    v2 = &v18;
    v3 = _AMAuthInstallPlatformRemoveDirectoryRecursion(buffer, &v18);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      if (!rmdir(buffer))
      {
        v4 = 0;
        goto LABEL_8;
      }

      v4 = 4;
      v2 = __error();
    }

    v5 = strerror(*v2);
    AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveDirectory", "failed to remove directory: %s", v6, v7, v8, v9, v10, v5);
    AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveDirectory", "url=%@, path=%s", v11, v12, v13, v14, v15, v1);
  }

  else
  {
    v4 = 3;
  }

LABEL_8:
  v16 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t _AMAuthInstallPlatformRemoveDirectoryRecursion(const char *a1, int *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = opendir(a1);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  for (i = readdir(v4); i; i = readdir(v5))
  {
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      snprintf(__str, 0x400uLL, "%s%c%s", a1, 47, i->d_name);
      memset(&v9, 0, sizeof(v9));
      if (!lstat(__str, &v9))
      {
        if ((v9.st_mode & 0x4000) != 0)
        {
          if (_AMAuthInstallPlatformRemoveDirectoryRecursion(__str, a2))
          {
            goto LABEL_16;
          }

          if (rmdir(__str))
          {
            goto LABEL_15;
          }
        }

        else if (unlink(__str))
        {
          goto LABEL_15;
        }
      }
    }
  }

  result = closedir(v5);
  if (result)
  {
LABEL_15:
    *a2 = *__error();
LABEL_16:
    result = 4;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallPlatformRemoveFile(const __CFURL *a1)
{
  v1 = a1;
  v18 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    result = remove(buffer, v2);
    if (result)
    {
      v4 = __error();
      v5 = strerror(*v4);
      AMAuthInstallLog(3, "AMAuthInstallPlatformRemoveFile", "failed to file: %s", v6, v7, v8, v9, v10, v5);
      AMAuthInstallLog(7, "AMAuthInstallPlatformRemoveFile", "url=%@, path=%s", v11, v12, v13, v14, v15, v1);
      result = 4;
    }
  }

  else
  {
    result = 3;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedExtension(const __CFAllocator *a1, const __CFURL *a2, const __CFString *a3, CFURLRef *a4)
{
  v5 = CFURLCreateCopyAppendingPathExtension(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  result = 0;
  *a4 = v6;
  return result;
}

__CFString *_AMAuthInstallPlatformConstantsInitialize()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = 32;
  result = sysctlbyname("kern.osversion", v4, &v2, 0, 0);
  if (result || (v2 = 32, sysctlbyname("hw.product", v3, &v2, 0, 0)) && (result = sysctlbyname("hw.machine", v3, &v2, 0, 0), result) || (result = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"mac/%s/%s", v4, v3)) == 0)
  {
    if (_platformInfoStr)
    {
      goto LABEL_6;
    }

    result = @"???";
  }

  _platformInfoStr = result;
LABEL_6:
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _AMAuthInstallSupportsECProvision(uint64_t a1)
{
  result = 0;
  v3 = *(*(a1 + 48) + 4);
  if (v3 <= 241888)
  {
    v6 = v3 - 96;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (v7 || v8 == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 > 9572576)
    {
      v4 = v3 == 9572577;
      v5 = 9781473;
    }

    else
    {
      v4 = v3 == 241889;
      v5 = 8343777;
    }

    if (!v4 && v3 != v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_7(const __CFAllocator *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return AMAuthInstallHttpSetUriEscapedValue(a1, v8, a3, v9, a5, a6, a7, a8);
}

CFAllocatorRef OUTLINED_FUNCTION_4_7()
{

  return CFGetAllocator(v0);
}

uint64_t AMAuthInstallRembrandtLocalRegisterKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 48) + 4);
  if (v8 > 100)
  {
    if (v8 != 101 && v8 != 103)
    {
      if (v8 != 104)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v8 == 94)
  {
LABEL_9:
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    goto LABEL_10;
  }

  if (v8 == 96)
  {
LABEL_8:
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    AMAuthInstallBasebandRembrandtLocalProvisionDevice();
LABEL_10:
    AMAuthInstallLog(6, "AMAuthInstallRembrandtLocalRegisterKeys", "rembrandt local signing keys available", v9, v10, v11, v12, v13, v15);
    return 0;
  }

LABEL_11:
  AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalRegisterKeys", "unknown chipID", a4, a5, a6, a7, a8, v15);
  return 99;
}

void _ApplyTagPrefix(const __CFString *a1, const void *a2, CFMutableDictionaryRef *a3)
{
  MutableCopy = *MEMORY[0x29EDB8ED8];
  v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@,", *(*(*a3 + 2) + 160));
  v20 = *(*a3 + 11);
  v15 = CFStringCreateWithFormat(MutableCopy, 0, @"@%@");
  if (v15 && (MutableCopy = CFStringCreateMutableCopy(MutableCopy, 0, a1)) != 0)
  {
    if (CFStringHasPrefix(a1, @"Ap,"))
    {
      v16 = MutableCopy;
      v17.location = 0;
      v17.length = 3;
LABEL_7:
      CFStringReplace(v16, v17, v7);
      v18 = a3[1];
      v19 = MutableCopy;
LABEL_8:
      CFDictionarySetValue(v18, v19, a2);
      CFDictionaryRemoveValue(a3[1], a1);
      goto LABEL_9;
    }

    if (CFStringHasPrefix(a1, @"Ap"))
    {
      v16 = MutableCopy;
      v17.location = 0;
      v17.length = 2;
      goto LABEL_7;
    }

    if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
    {
      v18 = a3[1];
      v19 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    _ApplyTagPrefix_cold_1(0, v8, v9, v10, v11, v12, v13, v14, v20);
  }

LABEL_9:
  SafeRelease(v7);
  SafeRelease(v15);

  SafeRelease(MutableCopy);
}

void _ApplyOverrideTags(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    CFDictionarySetValue(theDict, a2, Value);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void _CFDictionarySetInteger64Str(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%lld", a3);
  v6 = v5;
  if (a1 && a2 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

uint64_t AMAuthInstallSsoCreateServiceTicket(const __CFAllocator *a1, CFDataRef *a2, uint64_t *a3)
{
  v6 = AMAuthInstallSsoInitialize();
  if (v6)
  {
    v12 = v6;
    AMAuthInstallLog(3, "AMAuthInstallSsoCreateServiceTicket", "Failed to initialize SSO", v7, v8, v9, v10, v11, v14);
    return v12;
  }

  else
  {

    return _AMAuthInstallSsoCreateServiceTicket(0, a1, a2, a3);
  }
}

uint64_t AMAuthInstallSsoInitialize()
{
  if (_susso_lib)
  {
    goto LABEL_5;
  }

  v0 = dlopen("/usr/lib/libSoftwareUpdateSSO.dylib", 1);
  _susso_lib = v0;
  if (v0)
  {
    _AMAuthInstallSsoSUSSOCopyToken = dlsym(v0, "copyPersonalizationSSOToken");
    if (_AMAuthInstallSsoSUSSOCopyToken)
    {
      AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib found", v8, v9, v10, v11, v12, v28);
LABEL_5:
      v13 = 0;
      goto LABEL_6;
    }

    AMAuthInstallSsoInitialize_cold_1(0, v6, v7, v8, v9, v10, v11, v12);
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "SoftwareUpdateSSO dylib not found", v1, v2, v3, v4, v5, v28);
LABEL_6:
  if (!_acmobileshim_lib)
  {
    v14 = dlopen("/usr/lib/libacmobileshim.dylib", 1);
    _acmobileshim_lib = v14;
    if (v14)
    {
      _AMAuthInstallSsoCopyTicketWithCredentials = dlsym(v14, "ACMobileShimCopyTicket");
      if (_AMAuthInstallSsoCopyTicketWithCredentials)
      {
        AMAuthInstallLog(7, "AMAuthInstallSsoInitialize", "ACMobileShim dylib found", v22, v23, v24, v25, v26, v28);
        return 0;
      }

      AMAuthInstallSsoInitialize_cold_2(0, v20, v21, v22, v23, v24, v25, v26);
      v13 = 8;
    }

    else
    {
      v13 = 4;
    }

    AMAuthInstallLog(3, "AMAuthInstallSsoInitialize", "ACMobileShim dylib not found", v15, v16, v17, v18, v19, v28);
  }

  return v13;
}

uint64_t _AMAuthInstallSsoCreateServiceTicket(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3, uint64_t *a4)
{
  error = 0;
  responseFlags = 0;
  err = 0;
  if (!a3)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_11();
    v29 = 0;
    v31 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  v5 = (!a1 || !*(a1 + 112)) && _forceStealthModeForProcess == 0;
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v126 = 0x2000000000;
  v127 = 0;
  v122 = 0;
  v123[0] = &v122;
  v123[1] = 0x2000000000;
  v123[2] = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2000000000;
  v121 = 0;
  v6 = MEMORY[0x29EDB8F00];
  v7 = MEMORY[0x29EDB8EF8];
  if (_AMAuthInstallSsoSUSSOCopyToken)
  {
    v8 = a4;
    v9 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v11 = Mutable;
    if (v5)
    {
      v12 = v7;
    }

    else
    {
      v12 = v6;
    }

    CFDictionaryAddValue(Mutable, @"stealthMode", *v12);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1107296256;
    block[2] = ___AMAuthInstallSsoCopyTicketUsingSUSSO_block_invoke;
    block[3] = &__block_descriptor_tmp_1;
    block[4] = &valuePtr;
    block[5] = &v122;
    block[6] = &v118;
    block[7] = v11;
    dispatch_async(global_queue, block);
    if ((v119[3] & 1) == 0)
    {
      v14 = *MEMORY[0x29EDB8FC0];
      do
      {
        CFRunLoopRunInMode(v14, 1.0, 1u);
      }

      while (*(v119 + 24) != 1);
    }

    if (*(v123[0] + 24) || (v15 = p_valuePtr[3]) == 0)
    {
      _AMAuthInstallSsoCreateServiceTicket_cold_2();
      LOBYTE(Value) = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(v15, @"ssodata");
      if (Value)
      {
        AMAuthInstallLog(6, "_AMAuthInstallSsoCopyTicketUsingSUSSO", "_AMAuthInstallSsoCopyTicketUsingSUSSO successfully acquired ssoData", v16, v17, v18, v19, v20, v107);
        Copy = CFDataCreateCopy(v9, Value);
        v23 = 0;
        *a3 = Copy;
        LOBYTE(Value) = 1;
        goto LABEL_17;
      }

      _AMAuthInstallSsoCreateServiceTicket_cold_1(v123);
    }

    v23 = 99;
  }

  else
  {
    v8 = a4;
    _AMAuthInstallSsoCreateServiceTicket_cold_3();
    LOBYTE(Value) = 0;
    v11 = 0;
    v23 = 8;
  }

LABEL_17:
  SafeRelease(v11);
  SafeRelease(p_valuePtr[3]);
  SafeRelease(*(v123[0] + 24));
  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);
  _Block_object_dispose(&valuePtr, 8);
  if (Value)
  {
    v29 = 0;
    v30 = 0;
LABEL_19:
    v31 = 0;
    goto LABEL_47;
  }

  if (v8)
  {
    v32 = *v8;
  }

  AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get a ticket using SUSSO, status:%d, error:%@", v24, v25, v26, v27, v28, v23);
  if (!v5)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_4();
    v29 = 0;
    v31 = 0;
    v30 = 21;
    goto LABEL_47;
  }

  if (!_AMAuthInstallSsoCopyTicketWithCredentials)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_10();
    v29 = 0;
    v31 = 0;
LABEL_68:
    v30 = 8;
    goto LABEL_47;
  }

  LODWORD(valuePtr) = 0;
  LODWORD(v122) = 1;
  LODWORD(v118) = 0;
  block[0] = 0;
  v33 = CFNumberCreate(a2, kCFNumberIntType, &valuePtr);
  v112 = v8;
  v109 = a3;
  v110 = v33;
  if (!v33)
  {
    v111 = 0;
    v39 = 0;
    v49 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
LABEL_82:
    v50 = 0;
    v30 = 2;
    goto LABEL_38;
  }

  v34 = CFNumberCreate(a2, kCFNumberIntType, &v122);
  if (!v34)
  {
    v111 = 0;
    v39 = 0;
    v49 = 0;
    v33 = 0;
    v35 = 0;
LABEL_74:
    v36 = 0;
    goto LABEL_82;
  }

  v35 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
  if (!v35)
  {
    v111 = 0;
    v39 = 0;
    v49 = 0;
    v33 = 0;
    goto LABEL_74;
  }

  v36 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
  if (!v36)
  {
    v111 = 0;
    v39 = 0;
LABEL_77:
    v49 = 0;
    goto LABEL_81;
  }

  v37 = v6;
  CFArrayAppendValue(v35, v33);
  CFArrayAppendValue(v35, v33);
  CFArrayAppendValue(v36, v34);
  CFArrayAppendValue(v36, v34);
  v38 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
  v39 = v38;
  if (!v38)
  {
    v111 = 0;
    goto LABEL_77;
  }

  CFArrayAppendValue(v38, @"Username");
  CFArrayAppendValue(v39, @"Password");
  v40 = _AMAuthInstallSsoCopyCredentialsFromKeychain(block, 0);
  if ((v40 & 7) != 0)
  {
    v30 = v40;
    _AMAuthInstallSsoCreateServiceTicket_cold_5(v40, v41, v42, v43, v44, v45, v46, v47);
    v111 = 0;
    v49 = 0;
    v33 = 0;
    v50 = 0;
    goto LABEL_38;
  }

  if (block[0])
  {
    v48 = CFArrayCreateMutable(a2, 0, MEMORY[0x29EDB9000]);
    v49 = v48;
    if (v48)
    {
      CFArrayAppendValue(v48, block[0]);
      goto LABEL_34;
    }

    v111 = 0;
LABEL_81:
    v33 = 0;
    goto LABEL_82;
  }

  v49 = 0;
LABEL_34:
  v33 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v33)
  {
    v111 = 0;
    goto LABEL_82;
  }

  v50 = CFNumberCreate(a2, kCFNumberIntType, &v118);
  CFDictionaryAddValue(v33, *MEMORY[0x29EDB9040], @"AppleConnect");
  CFDictionaryAddValue(v33, *MEMORY[0x29EDB9078], v39);
  CFDictionaryAddValue(v33, *MEMORY[0x29EDB9060], @"OK");
  CFDictionaryAddValue(v33, *MEMORY[0x29EDB9058], @"Cancel");
  v51 = *v37;
  CFDictionaryAddValue(v33, @"SBUserNotificationBehavesSuperModally", *v37);
  CFDictionaryAddValue(v33, @"SBUserNotificationTextAutocapitalizationType", v35);
  CFDictionaryAddValue(v33, @"SBUserNotificationTextAutocorrectionType", v36);
  CFDictionaryAddValue(v33, @"SBUserNotificationDontDismissOnUnlock", v51);
  CFDictionaryAddValue(v33, @"DismissOnLock", *MEMORY[0x29EDB8EF8]);
  CFDictionaryAddValue(v33, *MEMORY[0x29EDB9068], v50);
  CFDictionaryAddValue(v33, *MEMORY[0x29EDB9050], v51);
  CFDictionaryAddValue(v33, @"SBUserNotificationDisplayActionButtonOnLockScreen", v51);
  if (v49)
  {
    CFDictionaryAddValue(v33, *MEMORY[0x29EDB9080], v49);
  }

  v111 = CFRetain(v33);
  v30 = 0;
LABEL_38:
  SafeRelease(0);
  SafeRelease(v39);
  SafeRelease(v49);
  SafeRelease(v33);
  SafeRelease(block[0]);
  SafeRelease(v35);
  SafeRelease(v36);
  SafeRelease(v110);
  SafeRelease(v34);
  SafeRelease(v50);
  v29 = v111;
  if (v30 || !v111)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_9(v30, v8, v52, v53, v54, v55, v56, v57);
    goto LABEL_19;
  }

  AMAuthInstallLog(5, "_AMAuthInstallSsoCreateServiceTicket", "%s: Creating user notification", v53, v54, v55, v56, v57, "_AMAuthInstallSsoCreateServiceTicket");
  v58 = CFUserNotificationCreate(a2, 0.0, 0x20000uLL, &error, v111);
  v31 = v58;
  if (!v58)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_8(v112, v59, v60, v61, v62, v63, v64, v65);
    v30 = 2;
    goto LABEL_47;
  }

  error = CFUserNotificationReceiveResponse(v58, 300.0, &responseFlags);
  if (error)
  {
    CFUserNotificationCancel(v31);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to receive CFUserNotification response %d", v71, v72, v73, v74, v75, error);
LABEL_43:
    v30 = 8;
LABEL_46:
    AMSupportCreateErrorInternal();
    goto LABEL_47;
  }

  responseFlags &= 3u;
  if (responseFlags == 1)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "user canceled AppleConnect login.", v66, v67, v68, v69, v70, v108);
    v30 = 21;
    goto LABEL_46;
  }

  ResponseDictionary = CFUserNotificationGetResponseDictionary(v31);
  if (!ResponseDictionary)
  {
    _AMAuthInstallSsoCreateServiceTicket_cold_7(v112, v78, v79, v80, v81, v82, v83, v84);
    goto LABEL_68;
  }

  v85 = CFDictionaryGetValue(ResponseDictionary, *MEMORY[0x29EDB9080]);
  if (!v85 || (v91 = v85, CFArrayGetCount(v85) < 0))
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get CFUserNotification textField values", v86, v87, v88, v89, v90, v108);
    goto LABEL_43;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v91, 0);
  v93 = CFArrayGetValueAtIndex(v91, 1);
  if (!ValueAtIndex || (v99 = v93, CFStringGetLength(ValueAtIndex) < 1) || !v99 || CFStringGetLength(v99) <= 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCreateServiceTicket", "failed to get username and password values", v94, v95, v96, v97, v98, v108);
    v30 = 1;
    goto LABEL_46;
  }

  v100 = _AMAuthInstallSsoSaveCredentialsInKeychain(ValueAtIndex);
  if (v100)
  {
    v30 = v100;
    _AMAuthInstallSsoCreateServiceTicket_cold_6(v100, v112, v101, v102, v103, v104, v105, v106);
    goto LABEL_47;
  }

  v30 = _AMAuthInstallSsoCopyTicketWithCredentials(ValueAtIndex, v99, v109, &err);
  if (v30 && err)
  {
    CFErrorGetCode(err);
    goto LABEL_46;
  }

LABEL_47:
  SafeRelease(v31);
  SafeRelease(v29);
  return v30;
}

uint64_t AMAuthInstallSsoCopyCredentialsFromKeychain(void *a1, CFStringRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(7, "AMAuthInstallSsoCopyCredentialsFromKeychain", "Attempting to load credentials from keychain", a4, a5, a6, a7, a8, v17);
  v10 = _AMAuthInstallSsoCopyCredentialsFromKeychain(a1, a2);
  AMAuthInstallLog(7, "AMAuthInstallSsoCopyCredentialsFromKeychain", "Loaded credentials from keychain with status %d", v11, v12, v13, v14, v15, v10);
  return v10;
}

void __copy_helper_block_8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

CFTypeRef SafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void _CFDictionarySetInteger64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  if (!v5)
  {
    _CFDictionarySetInteger64_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void _CFDictionarySetInteger32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    _CFDictionarySetInteger32_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void AMAuthInstallSupportDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

CFArrayRef _CFArrayCreateWithObjects(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v31 = *MEMORY[0x29EDCA608];
  v14 = &a9;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *values = 0u;
  v16 = 0u;
  while (1)
  {
    v10 = v14++;
    v11 = *v10;
    if (!v11)
    {
      break;
    }

    values[v9++] = v11;
    if (v9 == 32)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = CFArrayCreate(a1, values, v9, MEMORY[0x29EDB9000]);
LABEL_6:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _CFStringToUInt32(const __CFString *a1, _DWORD *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = CFStringGetCString(a1, buffer, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtoul(buffer, 0, 0);
    result = *__error() == 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

CFPropertyListRef AMAuthInstallPreferencesCopyStringValue(const __CFString *a1, const __CFString *a2)
{
  if (!a1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!v4)
    {
      v4 = CFPreferencesCopyAppValue(a2, @"com.apple.libauthinstall");
    }

LABEL_8:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = CFPreferencesCopyAppValue(a1, *MEMORY[0x29EDB8FA0]);
  if (!v4)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.libauthinstall");
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_9:
  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

const __CFString *AMAuthInstallPreferencesGetBooleanValue(const __CFString *result, const __CFString *a2, Boolean *a3)
{
  keyExistsAndHasValidFormat = 0;
  if (result)
  {
    v5 = result;
    result = CFPreferencesGetAppBooleanValue(result, *MEMORY[0x29EDB8FA0], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      goto LABEL_8;
    }

    result = CFPreferencesGetAppBooleanValue(v5, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
    v6 = keyExistsAndHasValidFormat == 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    result = CFPreferencesGetAppBooleanValue(a2, @"com.apple.libauthinstall", &keyExistsAndHasValidFormat);
  }

LABEL_8:
  if (a3)
  {
    *a3 = keyExistsAndHasValidFormat;
  }

  return result;
}

uint64_t AMAuthInstallSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theData)
  {
    AMAuthInstallSupportBase64Encode_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v38);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theData);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallSupportBase64Encode_cold_1(Length, v12, v13, v14, v15, v16, v17, v18, v38);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v20 = CFDataGetLength(theData);
  v21 = b64encode(BytePtr, v20);
  if (v21)
  {
    v27 = v21;
    v28 = strlen(v21);
    if (v28)
    {
      v34 = CFStringCreateWithBytes(a1, v27, v28, 0x8000100u, 0);
      if (v34)
      {
        v35 = v34;
        *a3 = CFRetain(v34);
        free(v27);
        CFRelease(v35);
        return 0;
      }

      v37 = "encodedValue == NULL: '%@'";
    }

    else
    {
      v37 = "encodedLength == 0: '%@'";
    }

    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", v37, v29, v30, v31, v32, v33, theData);
    free(v27);
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Encode", "encodedBuffer == NULL: '%@'", v22, v23, v24, v25, v26, theData);
  }

  return 99;
}

uint64_t AMAuthInstallSupportBase64Decode(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    AMAuthInstallSupportBase64Decode_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v47);
    return 1;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theString);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallSupportBase64Decode_cold_1(Length, v12, v13, v14, v15, v16, v17, v18, v47);
    return 1;
  }

  v19 = (CFStringGetLength(theString) + 1);
  v20 = malloc(v19);
  if (!v20)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "failed to allocate buffer", v21, v22, v23, v24, v25, theString);
    return 2;
  }

  v26 = v20;
  if (!CFStringGetCString(theString, v20, v19, 0x8000100u))
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "failed to convert value to c-string", v27, v28, v29, v30, v31, theString);
LABEL_18:
    v45 = 2;
    goto LABEL_19;
  }

  v32 = b64decode(v26, v19);
  if (v32 <= 0)
  {
    v48 = theString;
    v45 = 3;
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "b64decode of value '%@' failed with error code %d.", v33, v34, v35, v36, v37, v48);
LABEL_19:
    free(v26);
    return v45;
  }

  v38 = CFDataCreate(a1, v26, v32);
  if (!v38)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportBase64Decode", "decodedData is NULL", v39, v40, v41, v42, v43, theString);
    goto LABEL_18;
  }

  v44 = v38;
  *a3 = CFRetain(v38);
  free(v26);
  CFRelease(v44);
  return 0;
}

uint64_t AMAuthInstallSupportCreateDecodedPEM(uint64_t a1, size_t __size, void *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_6(0, __size, a3, a4, a5, a6, a7, a8, v40);
LABEL_35:
    v20 = 0;
    v38 = 1;
    goto LABEL_30;
  }

  if (!__size)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_5(a1, 0, a3, a4, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  if (!a3)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_4(a1, __size, 0, a4, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  if (!a4)
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_3(a1, __size, a3, 0, a5, a6, a7, a8, v40);
    goto LABEL_35;
  }

  v12 = calloc(1uLL, __size);
  v20 = v12;
  if (v12)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_7:
    v24 = 0;
LABEL_8:
    v25 = 1;
    while (v22 < __size && v23 <= 1 && (v25 & 1) != 0)
    {
      v26 = *(a1 + v22);
      if (v26 == 10 || v26 == 13)
      {
        v23 += v24 & 1;
      }

      else
      {
        if (v26 == 45 || (v24 & 1) != 0)
        {
          ++v22;
          v24 = 1;
          goto LABEL_8;
        }

        if (v26 - 48 < 0xA || (v26 & 0xFFFFFFDF) - 65 < 0x1A)
        {
LABEL_26:
          ++v22;
          v12[v21++] = v26;
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = 0;
      if (v26 <= 0x3D)
      {
        v25 = 0;
        if (((1 << v26) & 0x2000880100002600) != 0)
        {
          goto LABEL_26;
        }
      }
    }

    if (v25)
    {
      v28 = b64decode(v12, v21);
      v29 = calloc(1uLL, v28);
      if (v29)
      {
        v37 = v29;
        memcpy(v29, v20, v28);
        v38 = 0;
        *a4 = v28;
        *a3 = v37;
      }

      else
      {
        AMAuthInstallSupportCreateDecodedPEM_cold_1(0, v30, v31, v32, v33, v34, v35, v36, v40);
        v38 = 3;
      }
    }

    else
    {
      v38 = 3;
      AMAuthInstallLog(3, "AMAuthInstallSupportCreateDecodedPEM", "Input PEM has non-base64 chars at byte %d", v15, v16, v17, v18, v19, v22);
    }
  }

  else
  {
    AMAuthInstallSupportCreateDecodedPEM_cold_2(0, v13, v14, v15, v16, v17, v18, v19, v40);
    v38 = 2;
  }

LABEL_30:
  free(v20);
  return v38;
}

uint64_t AMAuthInstallSupportCFDataCompare(CFDataRef theData, const __CFData *a2)
{
  if (!(theData | a2))
  {
    return 0;
  }

  if (theData && !a2)
  {
    return 1;
  }

  if (!theData && a2)
  {
    return -1;
  }

  Length = CFDataGetLength(theData);
  if (Length < CFDataGetLength(a2))
  {
    return -1;
  }

  v6 = CFDataGetLength(theData);
  if (v6 > CFDataGetLength(a2))
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(theData);
  return memcmp(BytePtr, v8, v9);
}

CFURLRef AMAuthInstallSupportCreateURLFromString(const __CFAllocator *a1, const __CFString *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCreateURLFromString", "%s: theString is NULL", a4, a5, a6, a7, a8, "AMAuthInstallSupportCreateURLFromString");
    return 0;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFURLGetTypeID())
  {
    AMAuthInstallLog(4, "AMAuthInstallSupportCreateURLFromString", "%s: CFURLRef passed, retaining copy", v11, v12, v13, v14, v15, "AMAuthInstallSupportCreateURLFromString");

    return CFRetain(cf);
  }

  v17 = CFGetTypeID(cf);
  if (v17 != CFStringGetTypeID())
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCreateURLFromString", "%s: invalid string", v18, v19, v20, v21, v22, "AMAuthInstallSupportCreateURLFromString");
    return 0;
  }

  if (CFStringFind(cf, @"://", 0).location == -1)
  {

    return CFURLCreateWithFileSystemPath(a1, cf, kCFURLPOSIXPathStyle, 0);
  }

  else
  {

    return CFURLCreateWithString(a1, cf, 0);
  }
}

const __CFString *AMAuthInstallSupportCompareStringToInt32(const __CFDictionary *a1, const void *a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = __error();
  *v6 = 0;
  if (!a1)
  {
    AMAuthInstallSupportCompareStringToInt32_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    goto LABEL_9;
  }

  if (!a2)
  {
    AMAuthInstallSupportCompareStringToInt32_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    goto LABEL_9;
  }

  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    result = CFStringGetCString(result, buffer, 32, 0x8000100u);
    if (result)
    {
      if (strtol(buffer, 0, 16) == a3)
      {
        result = (*__error() == 0);
        goto LABEL_10;
      }

LABEL_9:
      result = 0;
    }
  }

LABEL_10:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallUpdaterAddTags(void *a1, void *context, CFDictionaryRef theDict)
{
  if (!a1)
  {
    AMAuthInstallUpdaterAddTags_cold_3();
    return 0;
  }

  v4 = a1[57];
  if (!v4)
  {
    AMAuthInstallUpdaterAddTags_cold_2();
    return 0;
  }

  if (!context)
  {
    AMAuthInstallUpdaterAddTags_cold_1();
    return 0;
  }

  if (theDict)
  {
    result = AMAuthInstallUpdaterLoadFromReceipt(a1, theDict);
    if (!result)
    {
      return result;
    }

    v4 = a1[57];
  }

  CFDictionaryApplyFunction(v4, _AddUpdaterTags, context);
  return 1;
}

uint64_t AMAuthInstallUpdaterWriteManifests(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    AMAuthInstallUpdaterWriteManifests_cold_4();
    return 0;
  }

  v4 = *(a1 + 456);
  if (!v4)
  {
    AMAuthInstallUpdaterWriteManifests_cold_3();
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterWriteManifests_cold_2();
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallUpdaterWriteManifests_cold_1();
    return 0;
  }

  Count = CFDictionaryGetCount(v4);
  v8 = malloc(8 * Count);
  v9 = malloc(8 * Count);
  v10 = v9;
  if (v8 && v9)
  {
    CFDictionaryGetKeysAndValues(*(a1 + 456), v8, v9);
    if (Count < 1)
    {
LABEL_11:
      v13 = 1;
    }

    else
    {
      v11 = v8;
      v12 = v10;
      while (AMAuthInstallUpdaterWriteManifest(*v12, *v11, a2, a3))
      {
        ++v12;
        ++v11;
        if (!--Count)
        {
          goto LABEL_11;
        }
      }

      v13 = 0;
    }
  }

  else
  {
    AMSupportCreateErrorInternal();
    v13 = 0;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  free(v8);
LABEL_14:
  if (v10)
  {
    free(v10);
  }

  return v13;
}

uint64_t AMAuthInstallUpdaterSaveToReceipt(uint64_t a1, const __CFString *a2, const __CFURL *a3)
{
  v3 = a1;
  theDict = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal();
    return v3;
  }

  if (!a2 || !a3)
  {
    AMSupportCreateErrorInternal();
LABEL_11:
    v3 = 0;
    v11 = 0;
    Mutable = 0;
    goto LABEL_37;
  }

  if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &theDict))
  {
    v6 = CFGetAllocator(v3);
    theDict = CFDictionaryCreateMutable(v6, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (theDict)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (!theDict)
  {
LABEL_13:
    AMAuthInstallUpdaterSaveToReceipt_cold_2();
    goto LABEL_11;
  }

LABEL_6:
  v7 = AMAuthInstallUpdater(v3, a2, 0);
  if (!v7)
  {
    AMAuthInstallUpdaterSaveToReceipt_cold_1();
    goto LABEL_11;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(theDict, @"Updaters");
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
  }

  else
  {
    v12 = CFGetAllocator(v3);
    Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      AMSupportCreateErrorInternal();
      v3 = 0;
      v11 = 0;
      goto LABEL_37;
    }
  }

  v13 = CFDictionaryGetValue(Mutable, a2);
  if (v13)
  {
    v11 = v13;
    CFRetain(v13);
  }

  else
  {
    v14 = CFGetAllocator(v3);
    v11 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v11)
    {
      AMSupportCreateErrorInternal();
      goto LABEL_36;
    }
  }

  v15 = v8[2];
  if (v15 && CFDictionaryGetCount(v15) >= 1)
  {
    CFDictionarySetValue(v11, @"RequestTags", v8[2]);
  }

  v16 = v8[5];
  if (v16 && CFArrayGetCount(v16) >= 1)
  {
    CFDictionarySetValue(v11, @"ResponseTags", v8[5]);
  }

  v17 = v8[4];
  if (v17 && CFArrayGetCount(v17) >= 1)
  {
    CFDictionarySetValue(v11, @"BuildIdentityTags", v8[4]);
  }

  v18 = v8[6];
  if (v18)
  {
    CFDictionarySetValue(v11, @"LoopInstance", v18);
  }

  if (CFDictionaryGetCount(v11) >= 1)
  {
    CFDictionarySetValue(Mutable, a2, v11);
    CFDictionarySetValue(theDict, @"Updaters", Mutable);
  }

  v19 = AMAuthInstallBundleWriteReceipt(v3, a3, theDict, *MEMORY[0x29EDB8EF8]);
  if (v19)
  {
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v3, v19);
    AMAuthInstallLog(3, "AMAuthInstallUpdaterSaveToReceipt", "failed to write receipt: %@", v21, v22, v23, v24, v25, LocalizedStatusString);
LABEL_36:
    v3 = 0;
    goto LABEL_37;
  }

  v3 = 1;
LABEL_37:
  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void *_LoadUpdater(void *key, const __CFDictionary *a2, uint64_t a3)
{
  v3 = a3;
  result = CFDictionaryGetValue(*(a3 + 456), key);
  if (!result)
  {
    result = AMAuthInstallUpdater(v3, key);
    if (result)
    {
      v7 = result;
      Value = CFDictionaryGetValue(a2, @"RequestTags");
      if (Value)
      {
        v9 = Value;
        v10 = v7[2];
        if (v10)
        {
          CFRelease(v10);
          v7[2] = 0;
        }

        v7[2] = CFRetain(v9);
      }

      v11 = CFDictionaryGetValue(a2, @"ResponseTags");
      if (v11)
      {
        v12 = v11;
        v13 = v7[5];
        if (v13)
        {
          CFRelease(v13);
          v7[5] = 0;
        }

        v7[5] = CFRetain(v12);
      }

      v14 = CFDictionaryGetValue(a2, @"BuildIdentityTags");
      if (v14)
      {
        v15 = v14;
        v16 = v7[4];
        if (v16)
        {
          CFRelease(v16);
          v7[4] = 0;
        }

        v7[4] = CFRetain(v15);
      }

      result = CFDictionaryGetValue(a2, @"LoopInstance");
      if (result)
      {
        v17 = result;
        v18 = v7[6];
        if (v18)
        {
          CFRelease(v18);
          v7[6] = 0;
        }

        result = CFRetain(v17);
        v7[6] = result;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallUpdaterLoadFromReceipt(void *a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    AMAuthInstallUpdaterLoadFromReceipt_cold_3();
    return 0;
  }

  if (!a1[57])
  {
    AMAuthInstallUpdaterLoadFromReceipt_cold_2();
    return 0;
  }

  if (!theDict)
  {
    AMAuthInstallUpdaterLoadFromReceipt_cold_1();
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"Updaters");
  if (Value)
  {
    CFDictionaryApplyFunction(Value, _LoadUpdater, a1);
  }

  return 1;
}

CFMutableDictionaryRef AMAuthInstallUpdaterCopyTags(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  v12 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCopyTags_cold_4();
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterCopyTags_cold_3();
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallUpdaterCopyTags_cold_2();
    return 0;
  }

  v6 = AMAuthInstallUpdater(a1, a2, 0);
  if (!v6)
  {
    AMAuthInstallUpdaterCopyTags_cold_1(&v12);
    return 0;
  }

  v7 = v6;
  if (CFStringCompare(a3, @"RequestTags", 0) == kCFCompareEqualTo)
  {
    v8 = v7[2];
    if (!v8)
    {
      return 0;
    }

    return CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v8);
  }

  if (CFStringCompare(a3, @"RequestHeaderTags", 0) == kCFCompareEqualTo)
  {
    v8 = v7[3];
    if (!v8)
    {
      return 0;
    }

    return CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v8);
  }

  if (CFStringCompare(a3, @"ResponseTags", 0) == kCFCompareEqualTo)
  {
    v10 = v7[5];
    if (!v10)
    {
      return 0;
    }

    return CFArrayCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v10);
  }

  if (CFStringCompare(a3, @"BuildIdentityTags", 0) == kCFCompareEqualTo)
  {
    v10 = v7[4];
    if (!v10)
    {
      return 0;
    }

    return CFArrayCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v10);
  }

  if (CFStringCompare(a3, @"LoopInstance", 0))
  {
    if (a4)
    {
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v11 = v7[6];
    if (v11)
    {
      return CFStringCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v11);
    }
  }

  return 0;
}

uint64_t AMAuthInstallUpdaterSetTags(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4)
{
  v19 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterSetTags_cold_5();
    return 1;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterSetTags_cold_4();
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallUpdaterSetTags_cold_3();
    return 1;
  }

  if (!a4)
  {
    AMAuthInstallUpdaterSetTags_cold_2();
    return 1;
  }

  v6 = AMAuthInstallUpdater(a1, a2, 0);
  if (v6)
  {
    v7 = v6;
    if (CFStringCompare(a3, @"RequestTags", 0))
    {
      if (CFStringCompare(a3, @"RequestHeaderTags", 0))
      {
        if (CFStringCompare(a3, @"ResponseTags", 0))
        {
          if (CFStringCompare(a3, @"BuildIdentityTags", 0))
          {
            if (CFStringCompare(a3, @"LoopInstance", 0))
            {
              return 0;
            }

            else
            {
              v17 = v7[6];
              if (v17)
              {
                CFRelease(v17);
                v7[6] = 0;
              }

              v18 = CFRetain(a4);
              result = 0;
              v7[6] = v18;
            }
          }

          else
          {
            v15 = v7[4];
            if (v15)
            {
              CFRelease(v15);
              v7[4] = 0;
            }

            v16 = CFRetain(a4);
            result = 0;
            v7[4] = v16;
          }
        }

        else
        {
          v13 = v7[5];
          if (v13)
          {
            CFRelease(v13);
            v7[5] = 0;
          }

          v14 = CFRetain(a4);
          result = 0;
          v7[5] = v14;
        }
      }

      else
      {
        v11 = v7[3];
        if (v11)
        {
          CFRelease(v11);
          v7[3] = 0;
        }

        v12 = CFRetain(a4);
        result = 0;
        v7[3] = v12;
      }
    }

    else
    {
      v9 = v7[2];
      if (v9)
      {
        CFRelease(v9);
        v7[2] = 0;
      }

      v10 = CFRetain(a4);
      result = 0;
      v7[2] = v10;
    }
  }

  else
  {
    AMAuthInstallUpdaterSetTags_cold_1(&v19);
    return 2;
  }

  return result;
}

void _AddUpdaterTags(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, _AddTag, a3);
    v5 = *(a2 + 16);
    if (v5)
    {
      CFRelease(v5);
      *(a2 + 16) = 0;
    }
  }

  else
  {
    _AddUpdaterTags_cold_1();
  }
}

__CFDictionary *AMAuthInstallUpdaterCreateLocalResponse(const void *a1, void *a2, uint64_t a3)
{
  v14 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCreateLocalResponse_cold_2();
    return v14;
  }

  if (!a2)
  {
    AMAuthInstallUpdaterCreateLocalResponse_cold_1();
    return v14;
  }

  v6 = a2[2];
  if (v6 && !CFDictionaryGetCount(v6))
  {
    if (AMAuthInstallUpdaterEmptyTicket(a1, a2, v7, &v14, v8, v9, v10, v11))
    {
LABEL_13:
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v12 = a2[9];
    if (!v12 || !a2[5])
    {
      goto LABEL_13;
    }

    if (!a3)
    {
      a3 = a2[2];
    }

    if (v12(a1, a2, a3, &v14))
    {
      goto LABEL_13;
    }
  }

  return v14;
}

uint64_t AMAuthInstallUpdaterEmptyTicket(const void *a1, uint64_t a2, uint64_t a3, __CFDictionary **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v21 = "amai is NULL";
LABEL_16:
    AMAuthInstallLog(3, "AMAuthInstallUpdaterEmptyTicket", v21, a4, a5, a6, a7, a8, v22);
    v19 = 99;
    goto LABEL_10;
  }

  if (!a2)
  {
    v21 = "updater is NULL";
    goto LABEL_16;
  }

  if (!a4)
  {
    v21 = "response is NULL";
    goto LABEL_16;
  }

  AMAuthInstallLog(6, "AMAuthInstallUpdaterEmptyTicket", "Updater library requested fake/empty ticket(s)", a4, a5, a6, a7, a8, v22);
  v11 = CFDataCreate(*MEMORY[0x29EDB8ED8], 0, 0);
  if (!v11)
  {
    v21 = "Failed to create data for empty manifest";
    goto LABEL_16;
  }

  v12 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a4 = Mutable;
  if (!Mutable)
  {
    v21 = "Failed to create dictionary for response";
    goto LABEL_16;
  }

  Count = CFArrayGetCount(*(a2 + 40));
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      v17 = *a4;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 40), i);
      CFDictionarySetValue(v17, ValueAtIndex, v11);
    }
  }

  v19 = 0;
LABEL_10:
  AMSupportSafeRelease();
  return v19;
}

uint64_t AMAuthInstallUpdaterPersonalize(void *a1, void *key, const void *a3)
{
  if (!a1)
  {
    AMAuthInstallUpdaterPersonalize_cold_7();
    return 0;
  }

  if (!key)
  {
    AMAuthInstallUpdaterPersonalize_cold_6();
    return 0;
  }

  v5 = a1[57];
  if (!v5)
  {
    AMAuthInstallUpdaterPersonalize_cold_5();
    return 0;
  }

  Value = CFDictionaryGetValue(v5, key);
  if (!Value)
  {
    AMAuthInstallUpdaterPersonalize_cold_4();
    return 0;
  }

  v8 = Value;
  if (!Value[2])
  {
    AMAuthInstallUpdaterPersonalize_cold_3();
    return 0;
  }

  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  v13 = Mutable;
  v14 = CFGetAllocator(a1);
  cf = CFDictionaryCreateMutableCopy(v14, 0, *(v8 + 16));
  if (!cf)
  {
    AMAuthInstallUpdaterPersonalize_cold_2();
LABEL_36:
    Response = 0;
LABEL_37:
    v11 = 0;
    goto LABEL_24;
  }

  v15 = a1[2];
  if (v15 && !*(v15 + 160) && *(v15 + 8))
  {
    AMSupportLogInternal();
    v16 = *(a1[2] + 8);
    AMSupportCFDictionarySetInteger32();
    v17 = *(a1[2] + 12);
    AMSupportCFDictionarySetInteger32();
    v18 = *(a1[2] + 20);
    AMSupportCFDictionarySetBoolean();
    v19 = a1[2];
    v20 = *(v19 + 132);
    v21 = *(v19 + 88);
    v22 = kAMAuthInstallTagX86SecurityMode;
    if (!v20)
    {
      v22 = kAMAuthInstallTagApSecurityMode;
    }

    v23 = *v22;
    AMSupportCFDictionarySetBoolean();
  }

  v24 = a1[53];
  if (v24)
  {
    v25 = CFDictionaryGetValue(v24, @"UpdaterRequestEntries");
    if (v25)
    {
      v26 = v25;
      v27 = CFGetAllocator(a1);
      v28 = AMAuthInstallSupportApplyDictionaryOverrides(v27, v26, &cf, 0);
      if (v28)
      {
        AMAuthInstallUpdaterPersonalize_cold_1(v28, v29, v30, v31, v32, v33, v34, v35);
        goto LABEL_36;
      }
    }
  }

  CFDictionarySetValue(v13, @"UpdaterName", key);
  CFDictionarySetValue(v13, @"PersonalizedBundle", a3);
  Response = AMAuthInstallUpdaterCreateResponse(a1, v13, cf);
  if (!Response)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    if (*(v8 + 40))
    {
      v37 = *(v8 + 48);
      AMSupportLogInternal();
      if (AMAuthInstallUpdaterWriteManifest(v8, key, a3, Response) != 1)
      {
        goto LABEL_37;
      }
    }
  }

  v11 = AMSupportSafeRetain();
LABEL_24:
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Response)
  {
    CFRelease(Response);
  }

  return v11;
}

CFStringRef *AMAuthInstallUpdaterDeviceRestoreInfo(const __CFString *a1)
{
  result = _updater_named(a1);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

CFStringRef *_updater_named(CFStringRef theString1)
{
  if (theString1)
  {
    v2 = &updaterFunctions;
    v3 = 15;
    while (*v2)
    {
      if (CFStringCompare(theString1, *v2, 0) == kCFCompareEqualTo)
      {
        return v2;
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  _updater_named_cold_1();
  return 0;
}

CFStringRef *AMAuthInstallUpdaterTwoStageEnabled(const __CFString *a1)
{
  result = _updater_named(a1);
  if (result)
  {
    return *(result + 41);
  }

  return result;
}

__CFDictionary *AMAuthInstallUpdaterCopyBuildIdentityTags(void *a1, const __CFString *a2, CFDictionaryRef theDict, const __CFString *a4, const void *a5)
{
  cf = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCopyBuildIdentityTags_cold_6();
    return 0;
  }

  if (a2)
  {
    if (theDict)
    {
      if (a5)
      {
        Value = CFDictionaryGetValue(theDict, @"BuildIdentityTags");
        if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFArrayGetTypeID()))
        {
          if (!AMAuthInstallUpdaterSetTags(a1, a2, @"BuildIdentityTags", v11))
          {
            v13 = CFDictionaryGetValue(theDict, @"ResponseTags");
            if (v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFArrayGetTypeID()))
            {
              if (!AMAuthInstallUpdaterSetTags(a1, a2, @"ResponseTags", v14))
              {
                if (!AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a5, a4, &cf))
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (Mutable)
                  {
                    if (CFArrayGetCount(v11) >= 1)
                    {
                      v18 = 0;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v11, v18);
                        ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(0, cf, @"Manifest.%@", v20, v21, v22, v23, v24, ValueAtIndex);
                        if (ValueForKeyWithFormat || (ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(0, cf, @"%@", v26, v27, v28, v29, v30, ValueAtIndex)) != 0)
                        {
                          CFDictionarySetValue(Mutable, ValueAtIndex, ValueForKeyWithFormat);
                        }

                        ++v18;
                      }

                      while (v18 < CFArrayGetCount(v11));
                    }
                  }

                  else
                  {
                    AMSupportCreateErrorInternal();
                  }

                  goto LABEL_14;
                }

                AMSupportCreateErrorInternal();
              }
            }

            else
            {
              AMAuthInstallUpdaterCopyBuildIdentityTags_cold_1();
            }
          }
        }

        else
        {
          AMAuthInstallUpdaterCopyBuildIdentityTags_cold_2();
        }
      }

      else
      {
        AMAuthInstallUpdaterCopyBuildIdentityTags_cold_3();
      }
    }

    else
    {
      AMAuthInstallUpdaterCopyBuildIdentityTags_cold_4();
    }
  }

  else
  {
    AMAuthInstallUpdaterCopyBuildIdentityTags_cold_5();
  }

  Mutable = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

uint64_t AMAuthInstallUpdaterSetInfo(uint64_t a1, const __CFString *a2, const void *a3, const __CFURL *a4, void *a5, uint64_t a6, const void *a7, const __CFURL *a8, CFTypeRef *a9, uint64_t a10)
{
  if (a4)
  {
    return _AMAuthInstallUpdaterSetInfoWithUARPCallbacks(0, a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, _AMAuthInstallUpdaterCopyBuildIdentityTags_wrapper, 0, 0, a10);
  }

  AMAuthInstallUpdaterSetInfo_cold_1();
  return 99;
}

uint64_t _AMAuthInstallUpdaterSetInfoWithUARPCallbacks(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const __CFURL *a5, void *a6, uint64_t a7, const void *a8, const __CFURL *a9, CFTypeRef *a10, CFTypeRef *a11, CFTypeRef *a12, uint64_t (*a13)(uint64_t, uint64_t, const __CFString *, const __CFDictionary *, uint64_t, const __CFURL *, CFTypeRef *), uint64_t (*a14)(uint64_t, uint64_t, const __CFString *, __CFDictionary *, uint64_t, uint64_t), uint64_t (*a15)(uint64_t, CFTypeRef *), uint64_t a16)
{
  v16 = a2;
  v17 = a16;
  v94[0] = 0;
  if (!a2)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_7();
    v19 = 0;
    v20 = 0;
    v37 = 0;
    v36 = 0;
    v25 = 0;
    v33 = 0;
LABEL_132:
    v38 = 99;
    goto LABEL_105;
  }

  if (!a3)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_6();
    v19 = 0;
LABEL_129:
    v20 = 0;
LABEL_131:
    v37 = 0;
    v36 = 0;
    v25 = 0;
    v33 = 0;
    v16 = 0;
    goto LABEL_132;
  }

  v19 = a4;
  if (!a4)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_5();
    goto LABEL_129;
  }

  v20 = a13;
  if (!a13)
  {
    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_4();
    v19 = 0;
    goto LABEL_131;
  }

  if (*(a2 + 472))
  {
    v92 = *(a2 + 480) != 0;
  }

  else
  {
    v92 = 0;
  }

  v23 = AMSupportSafeRetain();
  v24 = *(v16 + 480);
  v25 = AMSupportSafeRetain();
  v26 = _updater_named(a3);
  if (v26)
  {
    v28 = v26[1];
    v27 = v26[2];
    v30 = v26[3];
    v29 = v26[4];
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v30 = 0;
    v29 = 0;
  }

  if (v92 || v28 && v27 && v30)
  {
    v83 = v30;
    v84 = v27;
    v82 = v29;
    value = a6;
    v91 = v17;
    v31 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v33 = Mutable;
    if (Mutable)
    {
      v93 = Mutable;
      v86 = v25;
      if (a5)
      {
        v34 = AMAuthInstallUpdater(v16, a3, a5);
        if (!v34)
        {
          _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_1();
          v16 = 0;
          v33 = 0;
          v36 = 0;
          v37 = 0;
          v20 = 0;
          v19 = 0;
          v38 = 99;
          v39 = v23;
LABEL_103:
          CFRelease(v93);
          if (!v39)
          {
            goto LABEL_105;
          }

          goto LABEL_104;
        }

        v35 = v34;
        if (a8)
        {
          CFDictionarySetValue(v33, @"Options", a8);
          if (!*(v35 + 56))
          {
            *(v35 + 56) = CFRetain(a8);
          }
        }
      }

      else
      {
        if (a8)
        {
          CFDictionarySetValue(Mutable, @"Options", a8);
        }

        v35 = 0;
      }

      v39 = v23;
      if (!a15 || (v40 = a15(a1, v94)) == 0)
      {
        v40 = CFDictionaryCreate(v31, 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        AMSupportLogInternal();
      }

      v85 = v40;
      CFDictionarySetValue(v93, @"ReceiptManifest", v40);
      if (value)
      {
        CFDictionarySetValue(v93, @"DestBundlePath", value);
      }

      CFDictionarySetValue(v93, @"DeviceInfo", v19);
      if (CFDictionaryGetCount(*(v16 + 464)) >= 1)
      {
        CFDictionaryAddValue(v93, @"SharedInfo", *(v16 + 464));
      }

      if (v35)
      {
        _AMAuthInstallUpdaterInitLocalSigning(v35, a3);
        if (*(v35 + 72))
        {
          if (!*(v35 + 80))
          {
            AMAuthInstallLog(5, "AMAuthInstallUpdaterBehaviorOverrides", "Updater %@ forced for local signing by host tools.", v41, v42, v43, v44, v45, a3);
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(v19))
          {
            v47 = CFDictionaryGetValue(v19, *(v35 + 80));
            if (v47)
            {
              v48 = v47;
              v49 = CFBooleanGetTypeID();
              v50 = v49 == CFGetTypeID(v48);
              v39 = v23;
              if (v50)
              {
                *(v35 + 64) = CFBooleanGetValue(v48);
                AMAuthInstallLog(5, "AMAuthInstallUpdaterBehaviorOverrides", "Updater %@ requested %s signing.", v51, v52, v53, v54, v55, a3);
              }
            }
          }
        }
      }

      if (!v39)
      {
        v39 = v28(v93, _logSinkCallback, a3, v94);
        if (!v39)
        {
          AMSupportCreateErrorInternal();
          AMSupportLogInternal();
          v16 = 0;
          v33 = 0;
          v36 = 0;
          v37 = 0;
          v19 = 0;
          v38 = 99;
          v20 = v85;
          v25 = v86;
          goto LABEL_103;
        }
      }

      v56 = CFDictionaryGetValue(v39, @"ResponseTags");
      v25 = v86;
      if (v56 && AMAuthInstallUpdaterSetTags(v16, a3, @"ResponseTags", v56) || (v57 = CFDictionaryGetValue(v39, @"LoopInstance")) != 0 && AMAuthInstallUpdaterSetTags(v16, a3, @"LoopInstance", v57))
      {
        AMSupportCreateErrorInternal();
        v16 = 0;
        v33 = 0;
        v36 = 0;
        v37 = 0;
        v19 = 0;
LABEL_51:
        v38 = 99;
        v20 = v85;
        goto LABEL_103;
      }

      v58 = a11;
      if (a11)
      {
        *v58 = CFRetain(v39);
      }

      v19 = v20(a1, v16, a3, v39, a7, a5, v94);
      if (!v19)
      {
        AMSupportCreateErrorInternal();
        v16 = 0;
        v33 = 0;
        v36 = 0;
        v37 = 0;
        goto LABEL_51;
      }

      v59 = a14;
      CFDictionarySetValue(v93, @"BuildIdentity", v19);
      if (v59)
      {
        v80 = v39;
        v60 = CFDictionaryGetValue(v39, @"BuildIdentityTags");
        if (v60)
        {
          v61 = v60;
          v62 = CFGetTypeID(v60);
          if (v62 == CFArrayGetTypeID())
          {
            theDict = CFDictionaryCreateMutable(v31, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            if (theDict)
            {
              if (CFArrayGetCount(v61) >= 1)
              {
                v63 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v61, v63);
                  v65 = CFDictionaryGetValue(v19, ValueAtIndex);
                  if (v65)
                  {
                    v66 = CFGetTypeID(v65);
                    if (v66 == CFDictionaryGetTypeID())
                    {
                      ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
                      if (ValueForKeyPathInDict)
                      {
                        v68 = ValueForKeyPathInDict;
                        v69 = CFGetTypeID(ValueForKeyPathInDict);
                        if (v69 == CFStringGetTypeID())
                        {
                          CFDictionaryAddValue(theDict, ValueAtIndex, v68);
                        }
                      }
                    }
                  }

                  else
                  {
                    AMSupportLogInternal();
                  }

                  ++v63;
                }

                while (v63 < CFArrayGetCount(v61));
              }

              v33 = v59(a1, v16, a3, theDict, a7, v91);
              if (!v33)
              {
                AMSupportLogInternal();
                v36 = 0;
                v37 = 0;
                v38 = 99;
                v25 = v86;
                v39 = v80;
                goto LABEL_102;
              }

              CFDictionarySetValue(v93, @"BundleDataDict", v33);
              Count = CFDictionaryGetCount(v33);
              v71 = a9;
              v25 = v86;
              v39 = v80;
              if (Count != 1 || a9)
              {
LABEL_76:
                if (v71)
                {
                  v72 = @"FirmwareData";
                }

                else
                {
                  v71 = a5;
                  if (!a5)
                  {
                    goto LABEL_81;
                  }

                  v72 = @"BundlePath";
                }

                CFDictionarySetValue(v93, v72, v71);
LABEL_81:
                if (v92)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v84(v93, _logSinkCallback, a3, v94);
                  if (!v37)
                  {
                    goto LABEL_99;
                  }

                  v73 = a10;
                  CFDictionarySetValue(v93, @"FirmwareData", v37);
                  if (v73)
                  {
                    v74 = *v73;
                    AMSupportSafeRelease();
                    *v73 = CFRetain(v37);
                  }
                }

                if (v25 || (v25 = v83(v93, _logSinkCallback, a3, v94)) != 0)
                {
                  v75 = a12;
                  if (a12)
                  {
                    v76 = *a12;
                    AMSupportSafeRelease();
                    *v75 = CFRetain(v25);
                  }

                  if (AMAuthInstallUpdaterSetTags(v16, a3, @"RequestTags", v25))
                  {
                    AMSupportCreateErrorInternal();
                    goto LABEL_100;
                  }

                  if (value && !AMAuthInstallUpdaterSaveToReceipt(v16, a3, value))
                  {
                    goto LABEL_100;
                  }

                  v77 = v92;
                  if (!v82)
                  {
                    v77 = 1;
                  }

                  if ((v77 & 1) == 0)
                  {
                    v79 = CFDictionaryGetTypeID();
                    if (v79 == CFGetTypeID(*(v16 + 464)))
                    {
                      v36 = v82(v93, _logSinkCallback, a3, v94);
                      if (v36)
                      {
                        CFDictionarySetValue(*(v16 + 464), a3, v36);
                        v38 = 0;
                        goto LABEL_102;
                      }

                      AMSupportCreateErrorInternal();
                      AMSupportLogInternal();
                      goto LABEL_101;
                    }

                    _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_3();
LABEL_100:
                    v36 = 0;
LABEL_101:
                    v38 = 99;
                    goto LABEL_102;
                  }

                  v38 = 0;
                  v36 = 0;
LABEL_102:
                  v20 = v85;
                  v16 = theDict;
                  goto LABEL_103;
                }

LABEL_99:
                AMSupportCreateErrorInternal();
                AMSupportLogInternal();
                goto LABEL_100;
              }

              CFDictionaryGetKeysAndValues(v33, 0, &a9);
              AMSupportLogInternal();
LABEL_75:
              v71 = a9;
              goto LABEL_76;
            }

            v25 = v86;
          }
        }

        _AMAuthInstallUpdaterSetInfoWithUARPCallbacks_cold_2();
        v33 = 0;
        theDict = 0;
        v39 = v80;
        goto LABEL_75;
      }

      v33 = 0;
      theDict = 0;
      goto LABEL_75;
    }

    AMSupportCreateErrorInternal();
    v16 = 0;
    v36 = 0;
    v37 = 0;
    v20 = 0;
    v19 = 0;
    v38 = 99;
  }

  else
  {
    AMSupportCreateErrorInternal();
    AMSupportLogInternal();
    v16 = 0;
    v33 = 0;
    v36 = 0;
    v37 = 0;
    v20 = 0;
    v19 = 0;
    v38 = 26;
  }

  v39 = v23;
  if (v23)
  {
LABEL_104:
    CFRelease(v39);
  }

LABEL_105:
  if (v94[0])
  {
    CFRelease(v94[0]);
    v94[0] = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v38;
}

uint64_t AMAuthInstallUpdaterRestoreInfoSet(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 472);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 472) = 0;
    }

    v3 = *(a1 + 480);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 480) = 0;
    }

    *(a1 + 472) = AMSupportSafeRetain();
    v4 = AMSupportSafeRetain();
    result = 0;
    *(a1 + 480) = v4;
  }

  else
  {
    AMAuthInstallUpdaterRestoreInfoSet_cold_1();
    return 1;
  }

  return result;
}

uint64_t _AMAuthInstallUpdaterClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallUpdaterTypeID = result;
  return result;
}

__CFString *_AMAuthInstallUpdaterCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (*(a1 + 64))
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  CFStringAppendFormat(Mutable, 0, @"<AMAuthInstallUpdater %p>: localSigning=%@ \n", a1, v5);
  CFStringAppendFormat(v4, 0, @"\tresponseTags = %@\n", *(a1 + 40));
  if (*(a1 + 32))
  {
    CFStringAppendFormat(v4, 0, @"\tbuildIdentityTags = %@\n", *(a1 + 32));
  }

  if (*(a1 + 16))
  {
    CFStringAppendFormat(v4, 0, @"\trequestTags = %@\n", *(a1 + 16));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(v4, 0, @"\tresponseTags = %@\n", *(a1 + 40));
  }

  if (*(a1 + 56))
  {
    CFStringAppendFormat(v4, 0, @"\tupdaterOptions = %@\n", *(a1 + 56));
  }

  return v4;
}

uint64_t _CanaryLocalSign(const void *a1, uint64_t a2, const __CFDictionary *a3, __CFDictionary **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v30 = "amai is NULL";
LABEL_29:
    _CanaryLocalSign_cold_1(v30, a2, a3, a4, a5, a6, a7, a8, v31);
    return 99;
  }

  if (!a2)
  {
    v30 = "updater is NULL";
    goto LABEL_29;
  }

  if (!a3)
  {
    v30 = "request is NULL";
    goto LABEL_29;
  }

  if (!a4)
  {
    v30 = "response is NULL";
    goto LABEL_29;
  }

  AMAuthInstallLog(8, "_CanaryLocalSign", "Test updater requested fake/empty ticket(s)", a4, a5, a6, a7, a8, v31);
  v12 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a4 = Mutable;
  if (!Mutable)
  {
    v30 = "Failed to create dictionary for response";
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(a3, @"QueryLoop0");
  if (!Value)
  {
    v30 = "QueryLoop0 not in request";
    goto LABEL_29;
  }

  v15 = Value;
  v16 = CFGetAllocator(a1);
  v17 = CFDataCreateMutable(v16, 0);
  if (!v17)
  {
    v30 = "fakeTicket is NULL";
    goto LABEL_29;
  }

  v18 = v17;
  v19 = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v19)
  {
    v30 = "fakeTicketDict is NULL";
    goto LABEL_29;
  }

  v20 = v19;
  bytes = 0;
  if (v15 == *MEMORY[0x29EDB8F00])
  {
    v21 = 1;
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x29EDB8EF8])
  {
    v21 = 2;
LABEL_13:
    bytes = v21;
  }

  CFDataAppendBytes(v18, &bytes, 1);
  CFDataAppendBytes(v18, &bytes, 1);
  CFDataAppendBytes(v18, &bytes, 1);
  CFDataAppendBytes(v18, &bytes, 1);
  Count = CFArrayGetCount(*(a2 + 40));
  if (Count >= 1)
  {
    v23 = Count;
    for (i = 0; i != v23; ++i)
    {
      v25 = v18;
      if (!i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 40), 0);
        CFDictionarySetValue(v20, ValueAtIndex, v18);
        v25 = v20;
      }

      v27 = *a4;
      v28 = CFArrayGetValueAtIndex(*(a2 + 40), i);
      CFDictionarySetValue(v27, v28, v25);
    }
  }

  return 0;
}

__CFDictionary *_CanaryGetTags(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    _CanaryGetTags_cold_4();
LABEL_12:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  if (!v4)
  {
    _CanaryGetTags_cold_3();
    goto LABEL_12;
  }

  v5 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v5)
  {
    Value = CFDictionaryGetValue(a1, @"DeviceInfo");
    if (Value)
    {
      v7 = Value;
      CFArrayAppendValue(Mutable, @"TestFirmware");
      CFArrayAppendValue(v4, @"Test,Ticket,1");
      CFArrayAppendValue(v4, @"Test,Ticket,2");
      if (CFDictionaryGetValue(v7, @"QueryLoop0") == *MEMORY[0x29EDB8F00])
      {
        v8 = @"InstanceA";
      }

      else
      {
        v8 = @"InstanceB";
      }

      CFDictionarySetValue(v5, @"LoopInstance", v8);
      CFDictionarySetValue(v5, @"BuildIdentityTags", Mutable);
      CFDictionarySetValue(v5, @"ResponseTags", v4);
    }

    else
    {
      _CanaryGetTags_cold_1();
    }
  }

  else
  {
    _CanaryGetTags_cold_2();
  }

LABEL_9:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

__CFDictionary *_CanaryCopyFirmware()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v1 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"FirmwareEntry1", @"PlaceholderData");
    CFDictionaryAddValue(v1, @"FirmwareEntry2", @"PlaceholderData");
  }

  else
  {
    _CanaryCopyFirmware_cold_1();
  }

  return v1;
}

__CFDictionary *_CanaryCreateRequest(const __CFDictionary *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(a1, @"DeviceInfo");
    if (Value)
    {
      v4 = CFDictionaryGetValue(Value, @"QueryLoop0");
      if (v4)
      {
        CFDictionarySetValue(Mutable, @"QueryLoop0", v4);
      }
    }

    else
    {
      _CanaryCreateRequest_cold_1();
    }
  }

  else
  {
    _CanaryCreateRequest_cold_2();
  }

  return Mutable;
}

uint64_t __AMAuthInstallVinylFwReaderInfoPlistCallback(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  data = 0;
  v4 = *(a1 + 16);
  if (v4 && CFStringHasSuffix(theString, v4))
  {
    v22 = 0;
    PathComponent = _AMAuthInstallVinylGetPathComponent(theString);
    if (PathComponent)
    {
      v12 = BbfwReaderFindAndCopyFileData(a3, theString, &data);
      if (!v12)
      {
        v20 = *MEMORY[0x29EDB8ED8];
        v9 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &v22);
        if (v9 && ((Mutable = *(a1 + 56)) != 0 || (Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (*(a1 + 56) = Mutable) != 0)))
        {
          CFDictionaryAddValue(Mutable, PathComponent, v9);
          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_11;
      }

      __AMAuthInstallVinylFwReaderInfoPlistCallback_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v10 = 0;
    v9 = 0;
LABEL_11:
    v7 = data;
    goto LABEL_4;
  }

  v7 = 0;
  PathComponent = 0;
  v9 = 0;
  v10 = 1;
LABEL_4:
  SafeRelease(v7);
  SafeRelease(PathComponent);
  SafeRelease(v9);
  return v10;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return DEREncoderAddData();
}

uint64_t BbfwWriterAddFile(uint64_t a1, CFStringRef theString, const __CFData *a3)
{
  v4 = theString;
  v51 = *MEMORY[0x29EDCA608];
  CString = CFStringGetCString(theString, buffer, 1024, 0x8000100u);
  if (CString)
  {
    v14 = amai_zipOpenNewFileInZip(a1, buffer, 0, 0, 0, 0, 0, "", 8, -1);
    if (v14)
    {
      v30 = BbfwWriterErrorFromZipStat(v14, 5000);
      AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to open file in zip: %s", v33, v34, v35, v36, v37, buffer);
    }

    else
    {
      BytePtr = CFDataGetBytePtr(a3);
      if (BytePtr)
      {
        v21 = BytePtr;
        Length = CFDataGetLength(a3);
        v23 = amai_zipWriteInFileInZip(a1, v21, Length);
        if (v23)
        {
          v30 = BbfwWriterErrorFromZipStat(v23, 5001);
          v48 = *__error();
          AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to write file in zip %s with error: %d %d", v38, v39, v40, v41, v42, buffer);
        }

        else
        {
          v24 = amai_zipCloseFileInZip(a1);
          if (v24)
          {
            v30 = BbfwWriterErrorFromZipStat(v24, 5002);
            v49 = *__error();
            AMAuthInstallLog(3, "BbfwWriterAddFile", "Failed to close file in zip %s with error: %d %d", v43, v44, v45, v46, v47, buffer);
          }

          else
          {
            AMAuthInstallLog(7, "BbfwWriterAddFile", "Added bbfw file : %@", v25, v26, v27, v28, v29, v4);
            v30 = 0;
          }
        }
      }

      else
      {
        AMAuthInstallLog(3, "BbfwWriterAddFile", "FileData byte pointer is NULL: %s", v16, v17, v18, v19, v20, buffer);
        v30 = 4;
      }
    }
  }

  else
  {
    BbfwWriterAddFile_cold_1(CString, v7, v8, v9, v10, v11, v12, v13);
    v30 = 3;
  }

  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t BbfwWriterErrorFromZipStat(uint64_t a1, uint64_t a2)
{
  if (a1 > -5)
  {
    if (a1 <= -3)
    {
      if (a1 == -4)
      {
        return 5008;
      }

      else
      {
        return 5007;
      }
    }

    switch(a1)
    {
      case 0xFFFFFFFE:
        return 5006;
      case 0:
        return a1;
      case 0xFFFFFFFF:
        v2 = *__error();
        if ((v2 - 199) > 0xFFFFFF39)
        {
          return (v2 + 5100);
        }

        return 5003;
    }
  }

  else
  {
    if (a1 > -103)
    {
      if (a1 != -102)
      {
        if (a1 == -6)
        {
          return 5010;
        }

        if (a1 == -5)
        {
          return 5009;
        }

        return a2;
      }

      return 5003;
    }

    if (a1 == -104)
    {
      return 5005;
    }

    else if (a1 == -103)
    {
      return 5004;
    }
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return amai_unzGetCurrentFileInfo(a1, a2, a3, 0x400uLL, 0, 0, 0, 0);
}

uint64_t DERDecoderInitialize(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4)
{
  if (!a1)
  {
    DERDecoderInitialize_cold_3();
  }

  if (!a2)
  {
    DERDecoderInitialize_cold_2();
  }

  if (!a3)
  {
    DERDecoderInitialize_cold_1();
  }

  v8 = *a3;
  if (*a3)
  {
LABEL_5:
    if (v8 > a4)
    {
      return 2;
    }

    result = 0;
    *a3 = v8;
    *a1 = a2;
    *(a1 + 8) = v8;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = _DERDecodeTag(a2, a4, &v13, &v12 + 1, &v12, &v11);
  if (!result)
  {
    v10 = v11;
    result = _DERDecodeLength(&a2[v11], a4 - v11, &v13 + 1, &v11);
    if (!result)
    {
      v8 = v10 + v11 + HIDWORD(v13);
      if (__CFADD__(v10 + v11, HIDWORD(v13)))
      {
        return 6;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _DERDecodeTag(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, int *a5, _DWORD *a6)
{
  if (!a1)
  {
    _DERDecodeTag_cold_5();
  }

  if (!a3)
  {
    _DERDecodeTag_cold_4();
  }

  if (!a4)
  {
    _DERDecodeTag_cold_3();
  }

  if (!a5)
  {
    _DERDecodeTag_cold_2();
  }

  if (!a6)
  {
    _DERDecodeTag_cold_1();
  }

  if (!a2)
  {
    return 3;
  }

  v6 = *a1;
  *a3 = v6 >> 6;
  v7 = *a1;
  if ((~v6 & 0x1F) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a5 = (v7 >> 5) & 1;
    v11 = a2 - 1;
    v12 = (a1 + 1);
    while (v11)
    {
      v13 = *v12;
      v14 = *v12 & 0x7F | (v8 << 7);
      v10 |= v14 != 0;
      if (v10)
      {
        v9 += 7;
        if (v9 > 0x20)
        {
          return 6;
        }
      }

      --v11;
      ++v12;
      v8 = v14;
      if ((v13 & 0x80000000) == 0)
      {
        *a4 = v14;
        goto LABEL_16;
      }
    }

    return 3;
  }

  *a4 = v7 & 0x1F;
  *a5 = (*a1 >> 5) & 1;
  v11 = a2 - 1;
LABEL_16:
  result = 0;
  *a6 = a2 - v11;
  return result;
}

uint64_t _DERDecodeLength(unsigned __int8 *a1, int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    _DERDecodeLength_cold_3();
  }

  if (!a3)
  {
    _DERDecodeLength_cold_2();
  }

  if (!a4)
  {
    _DERDecodeLength_cold_1();
  }

  if (!a2)
  {
    return 4;
  }

  v4 = *a1;
  v5 = a2 - 1;
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_6:
    result = 0;
    *a3 = v4;
    *a4 = a2 - v5;
    return result;
  }

  v7 = v4 & 0x7F;
  v8 = v5 >= v7;
  v5 -= v7;
  if (!v8)
  {
    return 4;
  }

  if ((v4 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = a1 + 1;
  while (1)
  {
    v12 = *v11++;
    v4 = v12 | (v4 << 8);
    v9 |= v4 != 0;
    if (v9)
    {
      v10 += 8;
      if (v10 > 0x20)
      {
        return 6;
      }
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t DERDecoderGetDataWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetDataWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!v14)
    {
      DERDecoderGetDataWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 = DWORD2(v14);
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t _DERDecoderTraverseAllItems(uint64_t a1, uint64_t (*a2)(unsigned __int8 **, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    _DERDecoderTraverseAllItems_cold_3();
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = *a1;
  while (1)
  {
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = v6;
    result = _DERDecodeTag(v6, v3, &v14 + 1, &v14 + 2, &v15 + 3, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_2();
    }

    v8 = v3 - v12;
    v9 = &v6[v12];
    result = _DERDecodeLength(v9, v8, &v15 + 2, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      _DERDecoderTraverseAllItems_cold_1();
    }

    v10 = v8 - v12;
    if (v10 < DWORD2(v15))
    {
      return 2;
    }

    v11 = &v9[v12];
    *&v15 = v11;
    LODWORD(v14) = DWORD2(v15) + v11 - v13;
    result = a2(&v13, a3);
    if (result != 1)
    {
      return result;
    }

    v6 = &v11[DWORD2(v15)];
    v3 = v10 - DWORD2(v15);
    if (v10 == DWORD2(v15))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _DERDecoderGetDataWithTagCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 20) && *(a1 + 16) == *(a2 + 24) && *(a1 + 36) == *(a2 + 44) && *a2 >= *(a2 + 4))
  {
    v2 = 0;
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 1;
  }

  return v2;
}

uint64_t DERDecoderGetEncodingWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    DERDecoderGetEncodingWithTag_cold_2();
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!*(&v12 + 1))
    {
      DERDecoderGetEncodingWithTag_cold_1();
    }

    if (a5)
    {
      *a5 = *(&v12 + 1);
    }

    if (a6)
    {
      *a6 = v13;
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t Img4EncodeIMG4Tag(uint64_t a1)
{
  if (a1)
  {
    if (DEREncoderCreate())
    {
      EncodedBuffer = DEREncoderAddData();
      if (!EncodedBuffer)
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer();
      }

      v2 = EncodedBuffer;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  DEREncoderDestroy();
  return v2;
}

uint64_t _DEREncoderEncodeHeader(char a1, char a2, unsigned int a3, void *a4, _DWORD *a5)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v5 = 1;
  if (a4 && a5)
  {
    v11 = malloc(0x10uLL);
    if (v11)
    {
      *v11 = a2 | (a1 << 6) | 0x20;
      if (a3 > 0x7F)
      {
        v13 = 0;
        v18[0] = 0;
        do
        {
          *(v18 + v13++) = a3;
          v14 = a3 > 0xFF;
          a3 >>= 8;
        }

        while (v14);
        LODWORD(v12) = v11 + 1;
        if ((v13 - 1) <= 0xD)
        {
          v11[1] = v13 | 0x80;
          v12 = v11 + 2;
          do
          {
            *v12++ = *(&v18[-1] + v13-- + 7);
          }

          while (v13);
        }
      }

      else
      {
        v11[1] = a3;
        LODWORD(v12) = v11 + 2;
      }

      v15 = v12 - (v11 + 1);
      if (v15)
      {
        v5 = 0;
        *a5 = v15 + 1;
        *a4 = v11;
      }

      else
      {
        free(v11);
        v5 = 3;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t FlsParserCreate(const __CFAllocator *a1)
{
  pthread_once(&_FlsParserClassInitializeOnce, _FlsParserClassInitialize);
  result = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
  if (result)
  {
    v3 = result;
    v4 = operator new(0xCC8uLL);
    PRGSequencer::PRGSequencer(v4);
    result = _CFRuntimeCreateInstance();
    if (result)
    {
      *(result + 16) = v3;
      *(result + 24) = v4;
    }

    else
    {
      CFRelease(v3);
      PRGSequencer::~PRGSequencer(v4);
      operator delete(v5);
      return 0;
    }
  }

  return result;
}

uint64_t _FlsParserClassInitialize(void)
{
  result = _CFRuntimeRegisterClass();
  _FlsParserTypeID = result;
  return result;
}

uint64_t FlsParserReadFromData(uint64_t a1, CFDataRef theData)
{
  v3 = *(a1 + 24);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  PRGSequencer::ReadBuffer(v3, BytePtr, Length, 7, 0x20004u, 0);
  return 0;
}

uint64_t FlsParserCopyRamPsi(PRGSequencer **a1, CFDataRef *a2)
{
  v13 = 0;
  if (_FlsParserCopyDownloadItem(a1, 1, &v13, 0) && (v4 = _FlsParserCopyInjectedItem(a1, 18, a2), v4))
  {
    v10 = v4;
    AMAuthInstallLog(3, "FlsParserCopyRamPsi", "failed to copy RamPSI", v5, v6, v7, v8, v9, v12);
  }

  else
  {
    v10 = 0;
    *a2 = v13;
  }

  return v10;
}

uint64_t _FlsParserCopyDownloadItem(PRGSequencer **a1, int a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v14 = 0;
  v15 = 0;
  DownloadItem = _FlsParserFindDownloadItem(a1, a2, &v15, &v14);
  if (DownloadItem)
  {
    return DownloadItem;
  }

  if (!a3)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = CFGetAllocator(a1);
  ElementData = PRGSequencer::GetElementData(a1[3], *(v15 + 32));
  v10 = CFDataCreate(v8, ElementData, *(v15 + 28));
  if (!v10)
  {
    return 2;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = CFGetAllocator(a1);
  v12 = CFDataCreate(v11, (v14 + 524), 1536);
  if (!v12)
  {
    DownloadItem = 2;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (a3)
  {
    *a3 = CFRetain(v10);
  }

  if (a4)
  {
    DownloadItem = 0;
    *a4 = CFRetain(v12);
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  DownloadItem = 0;
  if (v10)
  {
LABEL_14:
    CFRelease(v10);
  }

LABEL_15:
  if (v12)
  {
    CFRelease(v12);
  }

  return DownloadItem;
}

uint64_t _FlsParserCopyInjectedItem(PRGSequencer **a1, int a2, CFDataRef *a3)
{
  ElementStructure = PRGSequencer::FindElementStructure(a1[3], a2, 0);
  if (ElementStructure)
  {
    v11 = ElementStructure;
    ElementData = PRGSequencer::GetElementData(a1[3], ElementStructure[6]);
    v13 = CFGetAllocator(a1);
    v14 = CFDataCreate(v13, ElementData, v11[5]);
    if (v14)
    {
      v15 = v14;
      result = 0;
      *a3 = v15;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    AMAuthInstallLog(6, "_FlsParserCopyInjectedItem", "not found in this file", v6, v7, v8, v9, v10, v17);
    return 1;
  }

  return result;
}

uint64_t FlsParserReplaceEbl(uint64_t a1, const __CFData *a2)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 19, 0);
  if (ElementStructure)
  {
    PRGSequencer::RemoveElement(*(a1 + 24), ElementStructure);

    return _FlsParserSetInjectedItem(a1, 0x13u, a2);
  }

  else
  {

    return _FlsParserReplaceDownloadItem(a1, 3, a2);
  }
}

uint64_t _FlsParserSetInjectedItem(uint64_t a1, unsigned int a2, const __CFData *a3)
{
  if (!a1)
  {
    return 1;
  }

  Element = PRGSequencer::CreateElement(*(a1 + 24), a2);
  if (Element)
  {
    v7 = Element;
    v8 = *(a1 + 24);
    BytePtr = CFDataGetBytePtr(a3);
    v10 = PRGSequencer::RegisterElementData(v8, BytePtr);
    if (v10 != -1)
    {
      v11 = v10;
      CFArrayAppendValue(*(a1 + 16), a3);
      *v7 = a2;
      *(v7 + 4) = 32;
      Length = CFDataGetLength(a3);
      result = 0;
      *(v7 + 5) = Length;
      *(v7 + 6) = v11;
      return result;
    }

    PRGSequencer::RemoveElement(*(a1 + 24), v7);
  }

  return 2;
}

uint64_t _FlsParserReplaceDownloadItem(uint64_t a1, int a2, const __CFData *a3)
{
  v11 = 0;
  if (_FlsParserFindDownloadItem(a1, a2, &v11, 0))
  {
    return 1;
  }

  v6 = *(a1 + 24);
  BytePtr = CFDataGetBytePtr(a3);
  v8 = PRGSequencer::RegisterElementData(v6, BytePtr);
  if (v8 == -1)
  {
    return 2;
  }

  v9 = v8;
  CFArrayAppendValue(*(a1 + 16), a3);
  *(v11 + 32) = v9;
  Length = CFDataGetLength(a3);
  result = 0;
  *(v11 + 28) = Length;
  return result;
}

uint64_t FlsParserCopyEbl(PRGSequencer **a1, void *a2)
{
  v13 = 0;
  if (_FlsParserCopyDownloadItem(a1, 3, &v13, 0) && (v4 = _FlsParserCopyInjectedItem(a1, 19, &v13), v4))
  {
    v10 = v4;
    AMAuthInstallLog(3, "FlsParserCopyEbl", "failed to copy EBL", v5, v6, v7, v8, v9, v12);
  }

  else
  {
    v10 = 0;
    *a2 = v13;
  }

  return v10;
}

uint64_t FlsParserReplaceRamPsi(uint64_t a1, const __CFData *a2)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 18, 0);
  if (ElementStructure)
  {
    PRGSequencer::RemoveElement(*(a1 + 24), ElementStructure);

    return _FlsParserSetInjectedItem(a1, 0x12u, a2);
  }

  else
  {

    return _FlsParserReplaceDownloadItem(a1, 1, a2);
  }
}

uint64_t FlsParserCopyAsData(PRGSequencer **a1, CFTypeRef *a2)
{
  memset(length, 0, sizeof(length));
  v4 = AMAuthInstallSupportCopyAllocator();
  PRGSequencer::WriteToBuffer(a1[3], &length[1], length);
  if (*&length[1] && (v5 = CFGetAllocator(a1), (v6 = CFDataCreateWithBytesNoCopy(v5, *&length[1], length[0], v4)) != 0))
  {
    v7 = v6;
    *a2 = CFRetain(v6);
    CFRelease(v7);
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  SafeRelease(v4);
  return v8;
}

void _FlsParserFinalize(const void *a1)
{
  if (!a1)
  {
    _FlsParserFinalize();
  }

  v2 = *(a1 + 3);
  if (v2)
  {
    PRGSequencer::~PRGSequencer(v2);
    operator delete(v3);
  }

  CFRelease(*(a1 + 2));
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
}

CFStringRef _FlsParserCopyFormattingDescription(const void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    _FlsParserCopyFormattingDescription();
  }

  v4 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v4, a2, @"<FlsParser %p>", a1);
}

CFStringRef _FlsParserCopyDebugDescription(const void *a1)
{
  if (!a1)
  {
    _FlsParserCopyDebugDescription();
  }

  v2 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FlsParser %p>", a1);
}

uint64_t _FlsParserFindDownloadItem(uint64_t a1, int a2, void *a3, void *a4)
{
  ElementStructure = PRGSequencer::FindElementStructure(*(a1 + 24), 16, 0);
  if (!ElementStructure)
  {
    v17 = "no toc found in this file";
    goto LABEL_8;
  }

  v14 = ElementStructure[3];
  ElementData = PRGSequencer::GetElementData(*(a1 + 24), ElementStructure[4]);
  if (!v14)
  {
LABEL_6:
    v17 = "not found in this file";
    goto LABEL_8;
  }

  v16 = (ElementData + 4);
  while (*v16 != a2)
  {
    v16 += 36;
    if (!--v14)
    {
      goto LABEL_6;
    }
  }

  v19 = *(v16 - 1);
  if (a3)
  {
    v20 = PRGSequencer::FindElementStructure(*(a1 + 24), 12, *(v16 - 1));
    if (!v20)
    {
      v17 = "missing download data";
      goto LABEL_8;
    }

    *a3 = v20;
  }

  if (a4)
  {
    v21 = PRGSequencer::FindElementStructure(*(a1 + 24), 15, v19);
    if (v21)
    {
      v22 = v21;
      result = 0;
      *a4 = v22;
      return result;
    }

    v17 = "missing security pack";
LABEL_8:
    AMAuthInstallLog(3, "_FlsParserFindDownloadItem", v17, v9, v10, v11, v12, v13, v23);
    return 1;
  }

  return 0;
}

void IFWD_MemoryStream::IFWD_MemoryStream(IFWD_MemoryStream *this)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 2) = 0;
}

void IFWD_MemoryStream::Clear(IFWD_MemoryStream *this)
{
  v2 = *this;
  if (v2)
  {
    operator delete[](v2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }
}

void IFWD_MemoryStream::~IFWD_MemoryStream(IFWD_MemoryStream *this)
{
  v2 = *this;
  if (v2)
  {
    operator delete[](v2);
    *this = 0;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }
}

void IFWD_MemoryStream::SetSize(IFWD_MemoryStream *this, int a2)
{
  if (a2 <= 0)
  {
    v9 = *this;
    if (*this)
    {
      operator delete[](v9);
      *this = 0;
      *(this + 2) = 0;
      *(this + 2) = 0;
    }
  }

  else
  {
    v4 = *(this + 2);
    if (a2 != v4)
    {
      v5 = operator new[]((a2 + 1));
      v6 = v5;
      v7 = *this;
      if (*this)
      {
        v8 = a2;
        if (a2 > v4)
        {
          bzero(&v5[v4], a2 - v4);
          v8 = v4;
        }

        memcpy(v6, v7, v8);
        operator delete[](v7);
      }

      else
      {
        bzero(v5, a2);
      }

      *(this + 2) = a2;
      *this = v6;
      *(this + 2) = v6;
    }
  }
}

void image3Discard(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        if ((*(v2 + 10) & 4) != 0)
        {
          free(*v2);
          v2 = *a1;
        }
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t image3Finalize(uint64_t a1, char **a2, void *a3, int a4, uint64_t a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = 0uLL;
  v25 = 0;
  __n = 0;
  __src = 0;
  v18 = 0;
  v19 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

  result = image3AdvanceCursorWithZeroPad(a1, (56 - *(a1 + 24)) & 0x3F);
  if (!result)
  {
    v10 = *a1;
    v11 = *(a1 + 24);
    *(v10 + 3) = v11 + a5;
    v12 = v10 + 12;
    if (a5)
    {
      v23 = __PAIR64__(v11, a5);
      v13 = &v23;
      image3SHA1Partial(v12, v11 + 8, &v24);
      v14 = 28;
    }

    else
    {
      v13 = v22;
      image3SHA1Generate(v12, v11 + 8, v22);
      v14 = 20;
    }

    result = image3PKISignHash(v13, v14, &__src, &__n, &v19, &v18);
    if (!result)
    {
      if (!__n || (result = image3SetTagStructure(a1, 1397248840, __src, __n, 0), !result))
      {
        if (!v18 || (result = image3SetTagStructure(a1, 1128616532, v19, v18, 0), !result))
        {
          *(a1 + 8) |= 0x20000u;
LABEL_12:
          result = 0;
          v15 = *a1;
          *(v15 + 2) = *(a1 + 24);
          v16 = (*(a1 + 24) + 20);
          *(v15 + 1) = v16;
          *a2 = v15;
          *a3 = v16;
        }
      }
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t image3AdvanceCursorWithZeroPad(char **a1, int a2)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 30;
  }

  v4 = *(a1 + 6);
  v3 = *(a1 + 7);
  LODWORD(v5) = v4 + a2;
  *(a1 + 6) = v4 + a2;
  v6 = *a1;
  if (v3 != -1)
  {
    *&v6[v3 + 24] = v5 - v3;
    LODWORD(v5) = *(a1 + 6);
  }

  v5 = v5;
  v7 = v5 + 20;
  if (v7 <= a1[2])
  {
    goto LABEL_7;
  }

  v6 = realloc(v6, v5 + 20);
  if (v6)
  {
    *a1 = v6;
    a1[2] = v7;
    v5 = *(a1 + 6);
LABEL_7:
    bzero(&v6[v4 + 20], v5 - v4);
    result = 0;
    *(*a1 + 2) = *(a1 + 6);
    return result;
  }

  return 12;
}

uint64_t image3SetTagStructure(char **a1, int a2, void *__src, size_t __n, int a5)
{
  if ((*(a1 + 10) & 2) != 0)
  {
    return 30;
  }

  if (a5)
  {
    v9 = *(a1 + 7);
    v10 = (a5 + *(a1 + 6) / a5 * a5 - *(a1 + 6)) % a5 + *(a1 + 6);
    *(a1 + 6) = v10;
    v11 = *a1;
    if (v9 != -1)
    {
      *&v11[v9 + 24] = v10 - v9;
    }
  }

  else
  {
    v11 = *a1;
  }

  if ((__n & 0xF) != 0)
  {
    v13 = 16 - (__n & 0xF);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 6);
  v15 = __n + v13 + v14 + 32;
  if (v15 > a1[2])
  {
    v11 = realloc(v11, __n + v13 + v14 + 32);
    if (!v11)
    {
      return 12;
    }

    *a1 = v11;
    a1[2] = v15;
    v14 = *(a1 + 6);
  }

  v16 = &v11[v14];
  if (((v13 + __n) & 3) != 0)
  {
    v17 = ((v13 + __n) & 0xFFFFFFFC) + 16;
  }

  else
  {
    v17 = v13 + __n + 12;
  }

  *(v16 + 5) = a2;
  *(v16 + 6) = v17;
  *(v16 + 7) = __n;
  memcpy(v16 + 32, __src, __n);
  bzero(&v16[__n + 32], v13);
  result = 0;
  v18 = *(a1 + 6);
  *(a1 + 7) = v18;
  v19 = *(v16 + 6) + v18;
  *(a1 + 6) = v19;
  *(*a1 + 2) = v19;
  return result;
}

uint64_t image3InstantiateFromBuffer(void *a1, _DWORD *a2, unint64_t a3, char a4)
{
  if (a3 < 0x14)
  {
    return 22;
  }

  if (*a2 != 1231906611)
  {
    return 22;
  }

  v6 = a2[2];
  if (a3 - 20 < v6)
  {
    return 22;
  }

  v7 = a2[3];
  if (v7 > v6 || v6 + 20 > a2[1])
  {
    return 22;
  }

  v11 = malloc(0x28uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v13 = 262145;
  *(v11 + 2) = 1;
  v11[4] = 0;
  if (v7)
  {
    *(v11 + 2) = 131073;
    if ((a4 & 1) == 0)
    {
      *v11 = a2;
      v11[2] = a3;
      goto LABEL_22;
    }

    v13 = 393217;
    goto LABEL_19;
  }

  *(v11 + 6) = v6;
  *(v11 + 7) = -1;
  if (!v6)
  {
LABEL_19:
    v11[2] = v6 + 20;
    v17 = malloc(v6 + 20);
    *v12 = v17;
    if (v17)
    {
      memcpy(v17, a2, v6 + 20);
      v12[2] = v13;
LABEL_22:
      result = 0;
      *a1 = v12;
      return result;
    }

    free(v12);
    return 12;
  }

  v14 = 0;
  while (1)
  {
    v15 = v14;
    v16 = *(a2 + v14 + 24);
    v14 += v16;
    if (v14 > v6 || v16 <= 0xB)
    {
      break;
    }

    if (v14 == v6)
    {
      *(v11 + 7) = v15;
      goto LABEL_19;
    }
  }

  free(v11);
  return 22;
}

uint64_t image3GetTagStruct(uint64_t *a1, int a2, void *a3, void *a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  if (!v6)
  {
    return 2;
  }

  v7 = v5 + v6 + 20;
  v8 = (v5 + 20);
  while (1)
  {
    v9 = v8 + 3;
    if ((v8 + 3) > v7)
    {
      return 22;
    }

    v10 = v8[2];
    if (v9 + v10 > v7)
    {
      return 22;
    }

    if (a2 == -1 || *v8 == a2)
    {
      break;
    }

LABEL_9:
    v11 = v8[1];
    if (v10 + 12 > v11)
    {
      return 22;
    }

    v8 = (v8 + v11);
    if (v8 >= v7)
    {
      return 2;
    }
  }

  if (a5)
  {
    --a5;
    goto LABEL_9;
  }

  if (a4)
  {
    if (*a4 && *a4 != v10)
    {
      return 22;
    }

    *a4 = v10;
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t image3GetTagSignedNumber(uint64_t *a1, int a2, void *a3, int a4)
{
  v7 = 0;
  v8 = 0;
  result = image3GetTagStruct(a1, a2, &v8, &v7, a4);
  if (!result)
  {
    if (v7 == 8)
    {
      v6 = *v8;
      goto LABEL_6;
    }

    if (v7 == 4)
    {
      v6 = *v8;
LABEL_6:
      result = 0;
      *a3 = v6;
      return result;
    }

    return 22;
  }

  return result;
}

uint64_t image3GetTagString(uint64_t *a1, int a2, void *a3, int a4)
{
  v10 = 0;
  v11 = 0;
  result = image3GetTagStruct(a1, a2, &v11, &v10, a4);
  if (!result)
  {
    if (v10 >= 8 && (v6 = v11, v7 = *v11, v10 >= v7 + 4))
    {
      v8 = malloc(v7 + 1);
      if (v8)
      {
        v9 = v8;
        memcpy(v8, v6 + 1, v7);
        result = 0;
        v9[v7] = 0;
        *a3 = v9;
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t PRGH_GetLongFromLong(uint64_t result)
{
  v1 = bswap32(result);
  if (mach_endian == 2)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t PRGH_GetEndian(char *a1)
{
  if (*a1 == 1000)
  {
    return 1;
  }

  else
  {
    return 2 * (*a1 == -402456576);
  }
}

uint64_t PRGH_FileCheck(char *a1)
{
  v1 = *a1;
  v2 = 2 * (*a1 == -402456576);
  if (*a1 == 1000)
  {
    v2 = 1;
  }

  mach_endian = v2;
  v3 = *a1;
  v4 = bswap32(*a1);
  if (v1 == -402456576)
  {
    v3 = v4;
  }

  if (v3 != 1000)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = bswap32(*(a1 + 1));
  v6 = v1 == -402456576 ? v5 : *(a1 + 1);
  if (v6 != 40)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 2);
  v8 = bswap32(v7);
  if (v1 == -402456576)
  {
    v7 = v8;
  }

  if (v7)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 3);
  v12 = bswap32(v11);
  if (v1 == -402456576)
  {
    v11 = v12;
  }

  v9 = 0xFFFFFFFFLL;
  if (v11 && (v11 & 0xFE) <= 5)
  {
    v13 = *(a1 + 4);
    v14 = bswap32(v13);
    if (v1 == -402456576)
    {
      v13 = v14;
    }

    if (v13 == 1765222897)
    {
      return v11;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t PRGH_VersionCheck(char *a1, int a2, unsigned int a3)
{
  v11 = 0;
  if (!PRGH_GetElementIndex(a1, a2, 0, &v11))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = &a1[v11];
  v6 = *(v5 + 1);
  v7 = bswap32(v6);
  if (mach_endian == 2)
  {
    v6 = v7;
  }

  if (v6 != 20)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v5 + 3);
  v9 = bswap32(v8);
  if (mach_endian == 2)
  {
    result = v9;
  }

  else
  {
    result = v8;
  }

  if (result <= a3 && HIWORD(a3) <= WORD1(result))
  {
    return 0;
  }

  return result;
}

uint64_t PRGH_GetElementIndex(char *a1, int a2, int a3, unsigned int *a4)
{
  v4 = 0;
  *a4 = -1;
  v5 = a1;
  while (1)
  {
    v6 = *v5;
    v7 = bswap32(*v5);
    if (mach_endian == 2)
    {
      v6 = v7;
    }

    if (v6 == a2)
    {
      v8 = v5[2];
      v9 = bswap32(v8);
      if (mach_endian == 2)
      {
        v8 = v9;
      }

      if (v8 == a3)
      {
        break;
      }
    }

    v10 = v5[1];
    if (v10)
    {
      v11 = bswap32(v10);
      if (mach_endian == 2)
      {
        v10 = v11;
      }

      v4 += v10;
      v5 = &a1[v4];
      if (v6 != 2)
      {
        continue;
      }
    }

    return 0;
  }

  *a4 = v4;
  return 1;
}

BOOL PRGH_GetNextElementIndex(char *a1, unsigned int *a2)
{
  v2 = *a2;
  *a2 = -1;
  v3 = *&a1[v2];
  v4 = bswap32(v3);
  if (mach_endian == 2)
  {
    v3 = v4;
  }

  if (v3 != 2)
  {
    v5 = *&a1[v2 + 4];
    v6 = bswap32(v5);
    if (mach_endian == 2)
    {
      v5 = v6;
    }

    *a2 = v5 + v2;
  }

  return v3 != 2;
}

uint64_t PRGH_WriteElement(IFWD_MemoryStream *a1, unsigned int a2, unsigned int a3, char *a4, unsigned int a5, const void *a6)
{
  v12 = a5 + 12;
  v13 = *(a1 + 2);
  v14 = v13 + a5 + 12;
  IFWD_MemoryStream::SetSize(a1, v14);
  v17 = (*(a1 + 2) + v13);
  if (mach_endian == 2)
  {
    CalledByWrite = 1;
    PRGH_SwapElementEndian((a4 - 12), a2, a6, v15, v16);
    CalledByWrite = 0;
    v18 = mach_endian == 2;
    v19 = bswap32(v14);
    if (mach_endian == 2)
    {
      v14 = v19;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = a5;
  if (a2 <= 0x19)
  {
    if (((1 << a2) & 0x700000) != 0 || ((1 << a2) & 0x3800000) != 0)
    {
      *(a4 + 1) = 0;
      v21 = 8;
      v22 = a4;
      goto LABEL_15;
    }

    if (((1 << a2) & 0xC0000) != 0)
    {
      *(a4 + 3) = 0;
      v22 = a4 + 8;
      v21 = 16;
      goto LABEL_15;
    }
  }

  if (a2 != 16)
  {
    if (a2 != 12)
    {
      v24 = 0;
      v23 = 0;
LABEL_16:
      v25 = bswap32(v23);
      if (v18)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      goto LABEL_19;
    }

    *(a4 + 5) = 0;
    v22 = a4 + 16;
    v21 = 24;
LABEL_15:
    v23 = *v22;
    *&a4[v21] = v14;
    v24 = 1;
    goto LABEL_16;
  }

  v41 = *a4;
  v42 = bswap32(*a4);
  if (v18)
  {
    v41 = v42;
  }

  v26 = 144 * v41;
  *(a4 + 1) = 0;
  *(a4 + 2) = v14;
  v24 = 1;
LABEL_19:
  v27 = a2 >> 8;
  v28 = HIBYTE(a2);
  v29 = !v18;
  if (v18)
  {
    v30 = a2;
  }

  else
  {
    v30 = HIBYTE(a2);
  }

  if (v29)
  {
    v31 = BYTE1(a2);
  }

  else
  {
    v31 = BYTE2(a2);
  }

  if (v29)
  {
    LOBYTE(v28) = a2;
  }

  *v17 = v28;
  v17[1] = v31;
  if (v29)
  {
    LOBYTE(v27) = BYTE2(a2);
  }

  v17[2] = v27;
  v17[3] = v30;
  if (v24)
  {
    v32 = v26 + v12;
    v33 = (v26 + v12) >> 8;
    if (mach_endian == 2)
    {
      v34 = (v26 + v12) >> 24;
    }

    else
    {
      v34 = v26 + v12;
    }

    if (mach_endian == 2)
    {
      v35 = (v26 + v12) >> 16;
    }

    else
    {
      v35 = (v26 + v12) >> 8;
    }

    if (mach_endian != 2)
    {
      LOBYTE(v33) = (v26 + v12) >> 16;
      v32 = (v26 + v12) >> 24;
    }
  }

  else
  {
    v33 = v12 >> 8;
    if (mach_endian == 2)
    {
      v34 = HIBYTE(v12);
    }

    else
    {
      v34 = v12;
    }

    if (mach_endian == 2)
    {
      v35 = BYTE2(v12);
    }

    else
    {
      v35 = BYTE1(v12);
    }

    if (mach_endian == 2)
    {
      v32 = v12;
    }

    else
    {
      LOBYTE(v33) = BYTE2(v12);
      v32 = HIBYTE(v12);
    }
  }

  v17[4] = v34;
  v17[5] = v35;
  v17[6] = v33;
  v17[7] = v32;
  v36 = a3 >> 8;
  if (mach_endian == 2)
  {
    v37 = a3;
  }

  else
  {
    v37 = HIBYTE(a3);
  }

  if (mach_endian == 2)
  {
    v38 = BYTE1(a3);
  }

  else
  {
    v38 = BYTE2(a3);
  }

  if (mach_endian == 2)
  {
    LOBYTE(v36) = BYTE2(a3);
    v39 = HIBYTE(a3);
  }

  else
  {
    v39 = a3;
  }

  v17[8] = v39;
  v17[9] = v36;
  v17[10] = v38;
  v17[11] = v37;
  memcpy(v17 + 12, a4, v20);
  if (v24)
  {
    IFWD_MemoryStream::SetSize(a1, *(a1 + 2) + v26);
    memcpy((*(a1 + 2) + v13 + v12), a6, v26);
  }

  return 0;
}

uint64_t PRGH_SwapElementEndian(int8x16_t *a1, int a2, uint64_t a3, uint8x8_t a4, uint8x8_t a5)
{
  switch(a2)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 26:
    case 27:
    case 28:
    case 30:
      for (i = 0; i != 5; ++i)
      {
        a4.i32[0] = a1->i32[i];
        v6 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v6, v6);
        a1->i32[i] = a4.i32[0];
      }

      return 0;
    case 11:
      swap_MemoryMapElementStructType_endian(a1, a4);
      return 0;
    case 12:
      swap_DownloadDataElementStructType_endian(a1, a4);
      return 0;
    case 13:
      swap_HardwareElementStructType_endian(a1);
      return 0;
    case 14:
      for (j = 0; j != 287; ++j)
      {
        a4.i32[0] = a1->i32[j];
        v12 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v12, v12);
        a1->i32[j] = a4.i32[0];
      }

      return 0;
    case 15:
      swap_SecurityElementStructType_endian(a1, a4);
      return 0;
    case 16:
      swap_TocElementStructType_endian(a1, a3, a4, a5);
      return 0;
    case 17:
      for (k = 0; k != 7; ++k)
      {
        a4.i32[0] = a1->i32[k];
        v10 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v10, v10);
        a1->i32[k] = a4.i32[0];
      }

      return 0;
    case 18:
    case 19:
      swap_InjectionElementStructType_endian(a1, a4);
      return 0;
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      swap_VersionDataElementStructType_endian(a1, a4);
      return 0;
    case 29:
      swap_IndirectDownloadDataElementStructType_endian(a1, a4);
      return 0;
    default:
      if (a2 != 1000)
      {
        return 1;
      }

      for (m = 0; m != 10; ++m)
      {
        a4.i32[0] = a1->i32[m];
        v8 = vrev64_s16(*&vmovl_u8(a4));
        a4 = vuzp1_s8(v8, v8);
        a1->i32[m] = a4.i32[0];
      }

      return 0;
  }
}

uint64_t swap_VersionDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  a2.i32[0] = *(a1 + 12);
  v4 = vrev64_s16(*&vmovl_u8(a2));
  v5 = vuzp1_s8(v4, v4);
  *(a1 + 12) = v5.i32[0];
  v5.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(v5));
  *(a1 + 20) = vuzp1_s8(v6, v6).u32[0];
  return 1;
}

uint64_t swap_InjectionElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = *(a1 + 12);
  if (CalledByWrite == 1)
  {
    *(a1 + 12) = v4 << 16;
    v5 = *(a1 + 16) << 24;
  }

  else
  {
    *(a1 + 12) = HIWORD(v4);
    v5 = *(a1 + 19);
  }

  *(a1 + 16) = v5;
  a2.i32[0] = *(a1 + 20);
  v6 = vrev64_s16(*&vmovl_u8(a2));
  v7 = vuzp1_s8(v6, v6);
  *(a1 + 20) = v7.i32[0];
  v7.i32[0] = *(a1 + 28);
  v8 = vrev64_s16(*&vmovl_u8(v7));
  *(a1 + 28) = vuzp1_s8(v8, v8).u32[0];
  return 1;
}

uint64_t swap_DownloadDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = vrev32_s8(*(a1 + 12));
  *(a1 + 12) = v4;
  v4.i32[0] = *(a1 + 20);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  v6 = vuzp1_s8(v5, v5);
  *(a1 + 20) = v6.i32[0];
  v7 = *(a1 + 24) << 16;
  if (CalledByWrite)
  {
    v8 = *(a1 + 24) << 16;
  }

  else
  {
    v8 = *(a1 + 24) >> 16;
  }

  *(a1 + 24) = v8;
  v6.i32[0] = *(a1 + 28);
  v9 = vrev64_s16(*&vmovl_u8(v6));
  v10 = vuzp1_s8(v9, v9);
  *(a1 + 28) = v10.i32[0];
  v10.i32[0] = *(a1 + 36);
  v11 = vrev64_s16(*&vmovl_u8(v10));
  *(a1 + 36) = vuzp1_s8(v11, v11).u32[0];
  return 1;
}

uint64_t swap_IndirectDownloadDataElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  v4 = vrev32_s8(*(a1 + 12));
  *(a1 + 12) = v4;
  v4.i32[0] = *(a1 + 20);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  v6 = vuzp1_s8(v5, v5);
  *(a1 + 20) = v6.i32[0];
  *(a1 + 24) <<= 16;
  v6.i32[0] = *(a1 + 28);
  v7 = vrev64_s16(*&vmovl_u8(v6));
  v8 = vuzp1_s8(v7, v7);
  *(a1 + 28) = v8.i32[0];
  v8.i32[0] = *(a1 + 36);
  v9 = vrev64_s16(*&vmovl_u8(v8));
  *(a1 + 36) = vuzp1_s8(v9, v9).u32[0];
  return 1;
}

uint64_t swap_SecurityElementStructType_endian(int8x16_t *a1, uint8x8_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    a2.i32[0] = a1->i32[i];
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    a1->i32[i] = a2.i32[0];
  }

  v4 = 0;
  a2.i32[0] = a1[32].i32[3];
  v5 = vrev64_s16(*&vmovl_u8(a2));
  a1[32].i32[3] = vuzp1_s8(v5, v5).u32[0];
  v6 = vrev32q_s8(a1[46]);
  a1[46] = v6;
  v7 = a1 + 47;
  do
  {
    v6.i32[0] = v7->i32[v4];
    v8 = vrev64_s16(*&vmovl_u8(*v6.i8));
    *v6.i8 = vuzp1_s8(v8, v8);
    v7->i32[v4++] = v6.i32[0];
  }

  while (v4 != 5);
  v9 = 0;
  v10 = &a1[48].i8[4];
  do
  {
    v6.i32[0] = *&v10[v9];
    v11 = vrev64_s16(*&vmovl_u8(*v6.i8));
    *v6.i8 = vuzp1_s8(v11, v11);
    *&v10[v9] = v6.i32[0];
    v9 += 4;
  }

  while (v9 != 20);
  v12 = 0;
  v13 = &a1[49].i8[8];
  do
  {
    v14 = &v13[v12];
    v15 = vrev32q_s8(*&v13[v12 + 16]);
    v16 = vrev32q_s8(*&v13[v12]);
    v17 = vrev32q_s8(*&v13[v12 + 48]);
    v18 = vrev32q_s8(*&v13[v12 + 32]);
    v14[2] = v18;
    v14[3] = v17;
    *v14 = v16;
    v14[1] = v15;
    v12 += 64;
  }

  while (v12 != 1024);
  v19 = 0;
  v20 = &a1[113].i8[8];
  do
  {
    v18.i32[0] = *&v20[v19];
    v21 = vrev64_s16(*&vmovl_u8(*v18.i8));
    *v18.i8 = vuzp1_s8(v21, v21);
    *&v20[v19] = v18.i32[0];
    v19 += 4;
  }

  while (v19 != 112);
  v22 = 0;
  v18.i32[0] = a1[120].i32[2];
  v23 = vrev64_s16(*&vmovl_u8(*v18.i8));
  a1[120].i32[2] = vuzp1_s8(v23, v23).u32[0];
  v24 = &a1[120].i8[12];
  do
  {
    v25 = &v24[v22];
    v26 = vrev32q_s8(*&v24[v22 + 16]);
    v27 = vrev32q_s8(*&v24[v22]);
    v28 = vrev32q_s8(*&v24[v22 + 48]);
    v25[2] = vrev32q_s8(*&v24[v22 + 32]);
    v25[3] = v28;
    *v25 = v27;
    v25[1] = v26;
    v22 += 64;
  }

  while (v22 != 128);
  return 1;
}

uint64_t swap_MemoryMapElementStructType_endian(uint64_t a1, uint8x8_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    a2.i32[0] = *(a1 + i);
    v3 = vrev64_s16(*&vmovl_u8(a2));
    a2 = vuzp1_s8(v3, v3);
    *(a1 + i) = a2.i32[0];
  }

  *(a1 + 1612) = vrev32q_s8(*(a1 + 1612));
  v4 = vrev32_s8(*(a1 + 1628));
  *(a1 + 1628) = v4;
  v4.i32[0] = *(a1 + 1636);
  v5 = vrev64_s16(*&vmovl_u8(v4));
  *(a1 + 1636) = vuzp1_s8(v5, v5).u32[0];
  for (j = 12; j != 1612; j += 32)
  {
    *(a1 + j) = vrev32q_s8(*(a1 + j));
  }

  return 1;
}

uint64_t swap_TocElementStructType_endian(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  for (i = 0; i != 12; i += 4)
  {
    a3.i32[0] = *(a1 + i);
    v5 = vrev64_s16(*&vmovl_u8(a3));
    a3 = vuzp1_s8(v5, v5);
    *(a1 + i) = a3.i32[0];
  }

  a3.i32[0] = *(a1 + 12);
  v6 = vrev64_s16(*&vmovl_u8(a3));
  v7 = vuzp1_s8(v6, v6);
  *(a1 + 12) = v7.i32[0];
  v8 = bswap32(v7.u32[0]);
  if ((CalledByWrite & (mach_endian == 2)) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7.u32[0];
  }

  if (v9)
  {
    v10 = (a2 + 12);
    do
    {
      v11 = vrev32_s8(*(v10 - 3));
      *(v10 - 3) = v11;
      v11.i32[0] = *(v10 - 1);
      a4.i32[0] = *v10;
      v12 = vrev64_s16(*&vmovl_u8(v11));
      v7 = vuzp1_s8(v12, v12);
      a4 = vuzp1_s8(vrev64_s16(*&vmovl_u8(a4)), v7);
      v7.i32[1] = a4.i32[0];
      *(v10 - 1) = v7;
      v10 += 36;
      --v9;
    }

    while (v9);
  }

  v7.i32[0] = *(a1 + 20);
  v13 = vrev64_s16(*&vmovl_u8(v7));
  *(a1 + 20) = vuzp1_s8(v13, v13).u32[0];
  return 1;
}

BOOL PRGSequencer::AddToGlobalStruct(PRGSequencer *this, char *a2)
{
  v2 = *(this + 812);
  if (v2 <= 199)
  {
    LongFromLong = PRGH_GetLongFromLong(*a2);
    PRGSequencer::AllocateAndCopy(this, a2, LongFromLong);
  }

  return v2 < 200;
}

uint64_t PRGSequencer::AllocateAndCopy(PRGSequencer *this, char *a2, unsigned int a3)
{
  v3 = *(this + 812);
  if (v3 > 199)
  {
    return 0;
  }

  switch(a3)
  {
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
      v8 = 20;
      v9 = 20;
      goto LABEL_15;
    case 0xBu:
      v8 = 1640;
      v9 = 1640;
      goto LABEL_15;
    case 0xCu:
    case 0x1Du:
      v8 = 40;
      v9 = 40;
      goto LABEL_15;
    case 0xDu:
      v8 = 184;
      v9 = 184;
      goto LABEL_15;
    case 0xEu:
      v8 = 1148;
      v9 = 1148;
      goto LABEL_15;
    case 0xFu:
      v8 = 2060;
      v9 = 2060;
      goto LABEL_15;
    case 0x10u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
      v8 = 24;
      v9 = 24;
      goto LABEL_15;
    case 0x11u:
      v8 = 28;
      v9 = 28;
      goto LABEL_15;
    case 0x12u:
    case 0x13u:
      v8 = 32;
      v9 = 32;
LABEL_15:
      v10 = malloc(v9);
      v11 = v10;
      break;
    default:
      if (a3 != 1000)
      {
        return 0;
      }

      v8 = 40;
      v10 = malloc(0x28uLL);
      v11 = v10;
      break;
  }

  v12 = this + 48;
  *(this + v3 + 6) = v11;
  if (a2)
  {
    memcpy(v11, a2, v8);
    v13 = PRGSequencer::TamperDataAfterRead(this, a3, a2);
    if (*(this + 814) == 2)
    {
      if ((v13 & 0x80000000) != 0 || *(this + 813) <= v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(this + v13 + 206);
      }

      PRGH_SwapElementEndian(*&v12[8 * *(this + 812)], a3, v16, v14, v15);
    }
  }

  else
  {
    PRGSequencer::InitializeElement(v10, v11, a3, v8);
    *v11 = a3;
    v11[1] = v8;
  }

  v17 = *(this + 2);
  v18 = *(this + 812);
  if (v17)
  {
    v17(*&v12[8 * v18]);
    v18 = *(this + 812);
  }

  *(this + 812) = v18 + 1;
  return 1;
}

uint64_t PRGSequencer::TamperDataAfterRead(PRGSequencer *this, unsigned int a2, char *a3)
{
  if (a2 <= 0x19)
  {
    if (((1 << a2) & 0x700000) != 0)
    {
      goto LABEL_13;
    }

    if (((1 << a2) & 0x3800000) != 0)
    {
      v3 = *(this + 813);
      v4 = 16;
      if (v3 > 199)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (((1 << a2) & 0xC0000) != 0)
    {
      v3 = *(this + 813);
      v4 = 24;
      if (v3 < 200)
      {
        v5 = 32;
        goto LABEL_15;
      }

LABEL_16:
      v3 = 0xFFFFFFFFLL;
      goto LABEL_17;
    }
  }

  if (a2 == 16)
  {
LABEL_13:
    v3 = *(this + 813);
    v4 = 16;
    if (v3 < 200)
    {
LABEL_14:
      v5 = 24;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (a2 != 12)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 813);
  v4 = 32;
  if (v3 >= 200)
  {
    goto LABEL_16;
  }

  v5 = 40;
LABEL_15:
  *(this + v3 + 206) = &a3[v5];
  *(this + 813) = v3 + 1;
LABEL_17:
  *(*(this + *(this + 812) + 6) + v4) = v3;
  return v3;
}

uint64_t PRGSequencer::GetElementData(PRGSequencer *this, unsigned int a2)
{
  if (*(this + 813) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + a2 + 206);
  }
}

void PRGSequencer::InitializeElement(PRGSequencer *this, char *a2, int a3, int a4)
{
  bzero(a2, a4);
  v6 = 0x2000200020002;
  switch(a3)
  {
    case 3:
      goto LABEL_15;
    case 4:
    case 5:
      v6 = vdup_n_s32(0x20003u);
      goto LABEL_15;
    case 6:
    case 7:
    case 8:
    case 26:
    case 27:
    case 28:
    case 30:
      v6 = 0x20000;
      goto LABEL_15;
    case 9:
      v6 = 0x40000;
      goto LABEL_15;
    case 10:
      v6 = 0x10000;
LABEL_15:
      *(a2 + 12) = v6;
      break;
    case 11:
      v7 = xmmword_298561150;
      v8 = xmmword_298561160;
      v9 = a2 + 76;
      v10 = 52;
      v11 = vdupq_n_s64(0x32uLL);
      v12 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v8)), *v7.i8).u8[0])
        {
          *(v9 - 16) = -1;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v8)), *&v7).i8[2])
        {
          *(v9 - 8) = -1;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v7))).i32[1])
        {
          *v9 = -1;
          v9[8] = -1;
        }

        v7 = vaddq_s64(v7, v12);
        v8 = vaddq_s64(v8, v12);
        v9 += 32;
        v10 -= 4;
      }

      while (v10);
      break;
    default:
      return;
  }
}

uint64_t PRGSequencer::RegisterElementData(PRGSequencer *this, const void *a2)
{
  result = *(this + 813);
  if (result > 199)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + result + 206) = a2;
  *(this + 813) = result + 1;
  return result;
}

_DWORD *PRGSequencer::FindElementStructure(PRGSequencer *this, int a2, int a3)
{
  v3 = *(this + 812);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = (this + 48);
  if (v4 >= 0xC7)
  {
    v4 = 199;
  }

  v6 = v4 + 1;
  while (1)
  {
    result = *v5;
    if (*v5)
    {
      if (*result == a2 && result[2] == a3)
      {
        break;
      }
    }

    ++v5;
    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRGSequencer::WriteElementToFile(PRGSequencer *this, IFWD_MemoryStream *a2, unsigned int a3, unsigned int a4, char *a5)
{
  v5 = 0;
  v6 = 28;
  switch(a3)
  {
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Eu:
      v5 = 0;
      v6 = 8;
      goto LABEL_22;
    case 0xBu:
      v5 = 0;
      v6 = 1628;
      goto LABEL_22;
    case 0xCu:
      v10 = *(a5 + 8);
      if (*(this + 813) <= v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v10 + 206);
      }

      v6 = 28;
      goto LABEL_22;
    case 0xDu:
      v5 = 0;
      v6 = 172;
      goto LABEL_22;
    case 0xEu:
      v5 = 0;
      v6 = 1136;
      goto LABEL_22;
    case 0xFu:
      v5 = 0;
      v6 = 2048;
      goto LABEL_22;
    case 0x10u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
      v7 = *(a5 + 4);
      if (*(this + 813) <= v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v7 + 206);
      }

      v6 = 12;
      goto LABEL_22;
    case 0x11u:
      v5 = 0;
      v6 = 16;
      goto LABEL_22;
    case 0x12u:
    case 0x13u:
      v9 = *(a5 + 6);
      if (*(this + 813) <= v9)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(this + v9 + 206);
      }

      v6 = 32;
      goto LABEL_22;
    case 0x1Du:
      goto LABEL_22;
    default:
      if (a3 != 1000)
      {
        return 0;
      }

LABEL_22:
      PRGH_WriteElement(a2, a3, a4, a5 + 12, v6, v5);
      return 1;
  }
}

void PRGSequencer::PRGSequencer(PRGSequencer *this)
{
  v2 = operator new(0x18uLL);
  IFWD_MemoryStream::IFWD_MemoryStream(v2);
  *this = v3;
  *(this + 3260) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 10) = 0;
  bzero(this + 48, 0xC88uLL);
}

void PRGSequencer::~PRGSequencer(IFWD_MemoryStream **this)
{
  PRGSequencer::CleanUp(this);
  if (*this)
  {
    IFWD_MemoryStream::~IFWD_MemoryStream(*this);
    operator delete(v2);
    *this = 0;
  }
}

void PRGSequencer::CleanUp(IFWD_MemoryStream **this)
{
  IFWD_MemoryStream::Clear(*this);
  v2 = *(this + 812);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = (this + 6);
    do
    {
      v5 = *&v4[8 * v3];
      if (v5)
      {
        free(v5);
        v2 = *(this + 812);
      }

      *&v4[8 * v3++] = 0;
    }

    while (v3 < v2);
  }

  *(this + 812) = 0;
  this[3] = 0;
  this[4] = 0;
  *(this + 10) = 0;
}

uint64_t PRGSequencer::ReadBuffer(PRGSequencer *this, const char *a2, unsigned int a3, int a4, unsigned int a5, void (*a6)(void *))
{
  IFWD_MemoryStream::Clear(*this);
  v12 = operator new[](a3 + 1);
  v13 = *this;
  *v13 = v12;
  *(v13 + 2) = v12;
  memcpy(v12, a2, a3);
  *(v13 + 2) = a3;
  *(this + 814) = PRGH_GetEndian(v12);
  v14 = PRGH_FileCheck(*(*this + 16));
  if (v14 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 815) = a4;
  *(this + 817) = v14;
  if (v14 == 5)
  {
    v15 = 0;
  }

  else
  {
    v16 = PRGH_VersionCheck(*(*this + 16), a4, a5);
    v15 = v16;
    if (v16 && (*(this + 815) != 5 || HIWORD(a5) <= WORD1(v16) || *(this + 817) != 1))
    {
      return v15;
    }
  }

  v21 = 0;
  *(this + 2) = a6;
  v17 = *(*this + 16);
  if (PRGH_GetElementIndex(v17, 1000, 0, &v21))
  {
    v18 = &v17[v21];
    v19 = *(v18 + 9);
    *(this + 24) = *(v18 + 20);
    *(this + 10) = v19;
    PRGSequencer::AddToGlobalStruct(this, v18);
    while (PRGH_GetNextElementIndex(v17, &v21))
    {
      PRGSequencer::AddToGlobalStruct(this, &v17[v21]);
    }
  }

  return v15;
}

uint64_t PRGSequencer::WriteToBuffer(PRGSequencer *this, char **a2, unsigned int *a3)
{
  v6 = operator new(0x18uLL);
  IFWD_MemoryStream::IFWD_MemoryStream(v6);
  *(this + 1) = v7;
  IFWD_MemoryStream::Clear(v7);
  v8 = *(this + 812);
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = *(this + i + 6);
      if (v10)
      {
        v11 = *v10;
        if ((*v10 & 0xFFFFFFFA) != 0x12 && (v11 > 0x1D || ((1 << v11) & 0x23319000) == 0))
        {
          PRGSequencer::WriteElementToFile(this, *(this + 1), v11, v10[2], v10);
          v8 = *(this + 812);
        }
      }

      if (i > 0xC6)
      {
        break;
      }
    }
  }

  if (*(this + 815) != 5 && v8 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(this + v14 + 6);
      if (v15)
      {
        v16 = *v15;
        if ((*v15 & 0xFFFFFFFA) == 0x12 || (v16 <= 0x1D ? (v17 = ((1 << v16) & 0x23319000) == 0) : (v17 = 1), !v17))
        {
          PRGSequencer::WriteElementToFile(this, *(this + 1), v16, v15[2], v15);
          v8 = *(this + 812);
        }
      }

      if (v14 > 0xC6)
      {
        break;
      }

      ++v14;
    }

    while (v14 < v8);
  }

  PRGH_WriteElement(*(this + 1), 2u, 0, 0, 0, 0);
  v18 = malloc(*(*(this + 1) + 8));
  *a2 = v18;
  v19 = *(this + 1);
  if (v18)
  {
    memcpy(v18, *(v19 + 16), *(v19 + 8));
    v20 = 0;
    *a3 = *(v19 + 8);
LABEL_29:
    IFWD_MemoryStream::~IFWD_MemoryStream(v19);
    operator delete(v21);
    *(this + 1) = 0;
    return v20;
  }

  v20 = 5;
  if (v19)
  {
    goto LABEL_29;
  }

  return v20;
}

uint64_t PRGSequencer::CreateElement(PRGSequencer *this, unsigned int a2)
{
  v3 = PRGSequencer::AllocateAndCopy(this, 0, a2);
  result = 0;
  if (v3)
  {
    return *(this + *(this + 812) + 5);
  }

  return result;
}

BOOL PRGSequencer::RemoveElement(PRGSequencer *this, void *a2)
{
  v2 = *(this + 812);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3 == a2)
  {
    v9 = 1;
    if (a2)
    {
LABEL_17:
      free(v3);
    }
  }

  else
  {
    v5 = 0;
    v6 = (v2 - 1);
    if (v6 >= 0xC7)
    {
      v6 = 199;
    }

    do
    {
      if (v6 == v5)
      {
        return v5 < 0xC7 && v5 + 1 < v2;
      }

      v7 = v4[1];
      ++v4;
      v3 = v7;
      ++v5;
    }

    while (v7 != a2);
    v9 = v5 - 1 < 0xC7 && v5 < v2;
    if (a2)
    {
      goto LABEL_17;
    }
  }

  *v4 = 0;
  return v9;
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = Base64[v9 >> 2];
      v10[1] = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = Base64[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v18 = 0;
    v17 = 0;
    do
    {
      *(&v17 + v11) = a1[v11];
      ++v11;
    }

    while (a2 > v11);
    if (result + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v17);
    v13 = (HIBYTE(v17) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v17 & 3));
    v14 = &a3[result];
    *v14 = Base64[v17 >> 2];
    v15 = v18;
    v14[1] = Base64[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = Base64[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[result | 2] = v16;
    v14[3] = 61;
    result += 4;
  }

LABEL_14:
  if (result < a4)
  {
    a3[result] = 0;
    return result;
  }

LABEL_16:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

_BYTE *b64encode(unsigned __int8 *a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v5 = a2 / 3;
    if (a2 != 3 * (a2 / 3))
    {
      ++v5;
    }

    v6 = (4 * v5) | 1;
    v2 = malloc(v6);
    if (v2)
    {
      b64_ntop(a1, a2, v2, v6);
    }
  }

  return v2;
}

uint64_t b64decode(char *__s, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = a2;
  }

  v4 = __s;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = __s;
    v4 = __s;
    do
    {
      v8 = *v7;
      if (v8 == 10 || v8 == 13)
      {
        v10 = 0;
        v5 = 0;
      }

      else
      {
        v10 = b64decode_table[*v7];
        if (v10 == -1)
        {
          v10 = v6;
        }

        else if (v5 > 1)
        {
          if (v5 == 2)
          {
            *v4++ = (16 * v6) | (v10 >> 2) & 0xF;
            v5 = 3;
          }

          else
          {
            v5 = 0;
            *v4++ = v10 | (v6 << 6);
          }
        }

        else if (v5)
        {
          *v4++ = (4 * v6) | (v10 >> 4) & 3;
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      ++v7;
      v6 = v10;
    }

    while (v7 < &__s[v3]);
  }

  *v4 = 0;
  return (v4 - __s);
}

__CFString *tss_lookup_error(int a1)
{
  v1 = qword_2A13B8CA8;
  if (qword_2A13B8CA8)
  {
    if (tss_err_map == a1)
    {
      return CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
    }

    for (i = &off_2A13B8CB8; ; i += 2)
    {
      v1 = *i;
      if (!*i)
      {
        break;
      }

      v3 = *(i - 2);
      if (v3 == a1)
      {
        return CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
      }
    }
  }

  return @"Unknown";
}

uint64_t tss_strip_img3_signature(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 10004;
  }

  if (*a1 != 1231906611)
  {
    AMAuthInstallLog(3, "tss_strip_img3_signature", "bad magic 0x%08x expecting 0x%08x", a4, a5, a6, a7, a8, *a1);
    return 10004;
  }

  v10 = a1[2];
  v9 = a1[3];
  if (v9 > v10)
  {
    v12 = a1[2];
    AMAuthInstallLog(3, "tss_strip_img3_signature", "signed length %u too large for buffer length %u", a4, a5, a6, a7, a8, a1[3]);
    return 10004;
  }

  result = 0;
  if (v9)
  {
    *a2 += v9 - v10;
    a1[2] = a1[3];
    a1[1] = *a2;
  }

  return result;
}

uint64_t tss_image_is_img3(_DWORD *a1)
{
  result = 10004;
  if (a1)
  {
    if (*a1 == 1231906611)
    {
      return 0;
    }

    else
    {
      return 10004;
    }
  }

  return result;
}

uint64_t tss_image_is_finalized(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 10004;
  }

  if (*a1 == 1231906611)
  {
    if (a1[3])
    {
      return 0;
    }

    else
    {
      return 10003;
    }
  }

  else
  {
    AMAuthInstallLog(3, "tss_image_is_finalized", "bad magic 0x%08x expecting 0x%08x", a4, a5, a6, a7, a8, *a1);
    return 10004;
  }
}

uint64_t tss_get_partial_hash(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x29EDCA608];
  v49 = a2;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v48 = 0;
  v47 = 0;
  if (a1 && a2 >= 1)
  {
    v10 = a3;
    v16 = tss_strip_img3_signature(a1, &v49, a3, a4, a5, a6, a7, a8);
    if (v16)
    {
      AMAuthInstallLog(3, "tss_get_partial_hash", "failed to strip img3 header", v11, v12, v13, v14, v15, v46);
    }

    v17 = a1[2];
    if (((v17 + 8) & 0x3F) != 0)
    {
      AMAuthInstallLog(3, "tss_get_partial_hash", "ih_buffer_len(%d) + 8 is not a multiple of %d", v11, v12, v13, v14, v15, a1[2]);
      v18 = 0;
      v16 = 10004;
    }

    else
    {
      v20 = malloc(v17 + 8);
      v18 = v20;
      if (v20)
      {
        bzero(v20, v17 + 8);
        a1[3] = v17 + v10;
        memcpy(v18, a1 + 3, v17 + 8);
        v26 = SHA1Reset(v50);
        if (v26)
        {
          AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1Reset failed=%d", v27, v28, v29, v30, v31, v26);
        }

        else
        {
          v32 = SHA1Input(v50, v18, v17 + 8);
          if (v32)
          {
            AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1Input failed=%d", v33, v34, v35, v36, v37, v32);
          }

          else
          {
            v38 = SHA1ResultPartial(v50, &v52, &v48, &v47);
            if (v38)
            {
              AMAuthInstallLog(3, "tss_get_partial_hash", "SHA1ResultPartial failed=%d", v39, v40, v41, v42, v43, v38);
            }

            else
            {
              if (!v16)
              {
                *a4 = v10;
                *(a4 + 4) = v17;
                *(a4 + 8) = v52;
                *(a4 + 24) = v53;
                goto LABEL_21;
              }

              AMAuthInstallLog(3, "tss_get_partial_hash", "tss_sha1_hash failed=%d", v39, v40, v41, v42, v43, v16);
            }
          }
        }

        v16 = 10007;
      }

      else
      {
        AMAuthInstallLog(3, "tss_get_partial_hash", "out of memory", v21, v22, v23, v24, v25, v46);
        v16 = 10006;
      }
    }

LABEL_21:
    v19 = v18;
    a1[3] = v17;
    v18 = v48;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "tss_get_partial_hash", "invalid img3: (%p), size %d", a4, a5, a6, a7, a8, a1);
  v18 = 0;
  v16 = 10004;
  if (a1)
  {
    LODWORD(v17) = 0;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_22:
  free(v18);
  free(v19);
  v44 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t tss_get_hash(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x29EDCA608];
  v38 = a2;
  if (a1)
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v15 = tss_strip_img3_signature(a1, &v38, a3, a4, a5, a6, a7, a8);
    if (v15)
    {
      AMAuthInstallLog(3, "tss_get_hash", "failed to strip img3 header", v10, v11, v12, v13, v14, v37);
    }

    if (v38 > 11)
    {
      v16 = *(a1 + 8);
      if (v38 >= v16 + 20)
      {
        v19 = SHA1Reset(v39);
        if (v19)
        {
          AMAuthInstallLog(3, "tss_get_hash", "SHA1Reset failed=%d", v20, v21, v22, v23, v24, v19);
        }

        else
        {
          v25 = SHA1Input(v39, (a1 + 12), v16 + 8);
          if (v25)
          {
            AMAuthInstallLog(3, "tss_get_hash", "SHA1Input failed=%d", v26, v27, v28, v29, v30, v25);
          }

          else
          {
            v31 = SHA1Result(v39, a3);
            if (!v31)
            {
              goto LABEL_8;
            }

            AMAuthInstallLog(3, "tss_get_hash", "SHA1Result failed=%d", v32, v33, v34, v35, v36, v31);
          }
        }

        v15 = 10007;
        goto LABEL_8;
      }
    }

    AMAuthInstallLog(3, "tss_get_hash", "invalid image3 length=%d", v10, v11, v12, v13, v14, v38);
  }

  v15 = 10004;
LABEL_8:
  v17 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t tss_stitch_img3(_DWORD *a1, int a2, signed int *a3, const void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v35 = a2;
  if (!a1 || a2 <= 0)
  {
    AMAuthInstallLog(3, "tss_stitch_img3", "invalid img3: (%p), size %d", a4, a5, a6, a7, a8, a1);
    return 10004;
  }

  v9 = a5;
  if (!a4 || a5 <= 0)
  {
    LOBYTE(v33) = a4;
    v29 = "invalid tatsu data: (%p), size %d";
LABEL_15:
    AMAuthInstallLog(3, "tss_stitch_img3", v29, a4, a5, a6, a7, a8, v33);
    return 10004;
  }

  v12 = 10008;
  if (a6 && a7)
  {
    v12 = tss_strip_img3_signature(a1, &v35, a3, a4, a5, a6, a7, a8);
    if (v12)
    {
      AMAuthInstallLog(3, "tss_stitch_img3", "failed to strip img3 header", v15, v16, v17, v18, v19, v33);
    }

    v20 = v35;
    v21 = v35 + v9;
    *a7 = v21;
    v22 = malloc(v21);
    *a6 = v22;
    if (!v22)
    {
      *a7 = 0;
      AMAuthInstallLog(3, "tss_stitch_img3", "out of memory", v23, v24, v25, v26, v27, v33);
      return 10006;
    }

    v28 = v22;
    bzero(v22, v21);
    memcpy(v28, a1, v20);
    if (*a3 >= v9)
    {
      LOBYTE(v33) = v9;
      v34 = *a3;
      v29 = "invalid img3 (tatsublob_len %d <= mastered_reservation_len %d";
    }

    else if (((a3[1] + 8) & 0x3F) != 0)
    {
      v33 = a3[1] + 8;
      v29 = "mastered_signed_len(%d) + 8 is not a multiple of %d";
    }

    else
    {
      v31 = a1[2] + v9;
      if (v31 == v21 - 20)
      {
        v32 = *a3 + a1[3];
        if (v32 <= v31 + 8)
        {
          v28[1] = a1[1] + v9;
          v28[2] = v31;
          v28[3] = v32;
          memcpy(v28 + v20, a4, v9);
          return v12;
        }
      }

      v29 = "invalid img3";
    }

    goto LABEL_15;
  }

  return v12;
}

FILE *(**amai_fill_fopen_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = ioapi_fopen_file_func;
  result[1] = ioapi_fread_file_func;
  result[2] = ioapi_fwrite_file_func;
  result[3] = ioapi_ftell_file_func;
  result[4] = ioapi_fseek_file_func;
  result[5] = ioapi_fclose_file_func;
  result[6] = ioapi_ferror_file_func;
  result[7] = 0;
  return result;
}

FILE *ioapi_fopen_file_func(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t ioapi_fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

void *tss_create_session(const void *a1, const void *a2)
{
  v4 = malloc(0x60uLL);
  v10 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  if (!a2)
  {
    v13 = "signingServerURL is NULL";
    goto LABEL_10;
  }

  v11 = CFGetTypeID(a2);
  if (v11 != CFURLGetTypeID())
  {
    v13 = "signingServerURL is malformed";
    goto LABEL_10;
  }

  v10[1] = CFRetain(a2);
  *(v10 + 10) = 256;
  if (a1)
  {
    CFRetain(a1);
  }

  *v10 = a1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10[3] = Mutable;
  if (!Mutable)
  {
LABEL_7:
    v13 = "out of memory";
LABEL_10:
    AMAuthInstallLog(3, "tss_create_session", v13, v5, v6, v7, v8, v9, v15);
    free(v10);
    return 0;
  }

  return v10;
}

uint64_t tss_close_session(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = tss_reset_session(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    free(a1);
  }

  return v9;
}

uint64_t tss_reset_session(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 72) = 0;
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      free(v15);
    }

    result = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    AMAuthInstallLog(3, "tss_reset_session", "NULL session", a4, a5, a6, a7, a8, v17);
    return 10009;
  }

  return result;
}

uint64_t SHA1Reset(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  *a1 = xmmword_298561570;
  *(a1 + 16) = -1009589776;
  *(a1 + 96) = 0;
  return result;
}

uint64_t SHA1ResultPartial(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 1;
  if (a1 && a2)
  {
    v8 = !a3 || a4 == 0;
    v9 = !v8;
    result = *(a1 + 100);
    if (!result)
    {
      if (*(a1 + 96))
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        if (!v9)
        {
          return 1;
        }

        v11 = *(a1 + 28);
        *a4 = v11;
        if (v11 >= 1)
        {
          v12 = malloc(v11);
          *a3 = v12;
          memcpy(v12, (a1 + 30), v11);
        }
      }

      else
      {
        SHA1PadMessage(a1);
        *(a1 + 78) = 0u;
        *(a1 + 62) = 0u;
        *(a1 + 46) = 0u;
        *(a1 + 30) = 0u;
        *(a1 + 20) = 0;
        *(a1 + 24) = 0;
        *(a1 + 96) = 1;
      }

      v13 = 0;
      for (i = 0; i != 20; ++i)
      {
        *(a2 + i) = *(a1 + (i & 0xFFFFFFFC)) >> (~v13 & 0x18);
        v13 += 8;
      }

      return 0;
    }
  }

  return result;
}

int *SHA1PadMessage(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = a1 + 30;
  LOWORD(v4) = v2 + 1;
  *(a1 + 28) = v2 + 1;
  if (v2 < 56)
  {
    *(v3 + v2) = 0x80;
    v6 = *(a1 + 28);
    if (v6 <= 55)
    {
      do
      {
        *(a1 + 28) = v6 + 1;
        *(v3 + v6) = 0;
        v6 = *(a1 + 28);
      }

      while (v6 < 56);
    }
  }

  else
  {
    *(v3 + v2) = 0x80;
    if (v4 <= 63)
    {
      do
      {
        *(a1 + 28) = v4 + 1;
        *(v3 + v4) = 0;
        v4 = *(a1 + 28);
      }

      while (v4 < 64);
    }

    SHA1ProcessMessageBlock(a1);
    v5 = *(a1 + 28);
    if (v5 <= 55)
    {
      do
      {
        *(a1 + 28) = v5 + 1;
        *(v3 + v5) = 0;
        v5 = *(a1 + 28);
      }

      while (v5 < 56);
    }
  }

  v7 = *(a1 + 20);
  *(a1 + 86) = bswap32(*(a1 + 24));
  *(a1 + 90) = bswap32(v7);

  return SHA1ProcessMessageBlock(a1);
}

uint64_t SHA1Input(uint64_t a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = 1;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (*(a1 + 96))
      {
        result = 3;
        *(a1 + 100) = 3;
      }

      else
      {
        result = *(a1 + 100);
        if (!result)
        {
          v6 = a3;
          while (!*(a1 + 100))
          {
            v7 = *v5;
            v8 = *(a1 + 28);
            *(a1 + 28) = v8 + 1;
            *(a1 + 30 + v8) = v7;
            v9 = *(a1 + 20) + 8;
            *(a1 + 20) = v9;
            if (!v9)
            {
              v10 = *(a1 + 24);
              *(a1 + 24) = v10 + 1;
              if (v10 == -1)
              {
                *(a1 + 100) = 1;
              }
            }

            if (*(a1 + 28) == 64)
            {
              SHA1ProcessMessageBlock(a1);
            }

            result = 0;
            ++v5;
            if (!--v6)
            {
              return result;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

int *SHA1ProcessMessageBlock(int *result)
{
  v1 = 0;
  v52 = *MEMORY[0x29EDCA608];
  v2 = result + 30;
  v53 = vld4q_s8(v2);
  v3 = vmovl_u8(*v53.val[0].i8);
  v4 = vmovl_high_u8(v53.val[0]);
  _Q16 = vmovl_u8(*v53.val[1].i8);
  _Q17 = vmovl_high_u8(v53.val[1]);
  __asm
  {
    SHLL2           V18.4S, V17.8H, #0x10
    SHLL2           V19.4S, V16.8H, #0x10
  }

  v13 = vmovl_high_u8(v53.val[2]);
  v14 = vmovl_u8(*v53.val[2].i8);
  v15 = vorrq_s8(vorrq_s8(vshll_n_u16(*v14.i8, 8uLL), vshll_n_s16(*_Q16.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v3.i8), 0x18uLL));
  v16 = vmovl_high_u8(v53.val[3]);
  v53.val[0] = vmovl_u8(*v53.val[3].i8);
  v51[3] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v13, 8uLL), _Q18), vshlq_n_s32(vmovl_high_u16(v4), 0x18uLL)), vmovl_high_u16(v16));
  v51[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*v13.i8, 8uLL), vshll_n_s16(*_Q17.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL)), vmovl_u16(*v16.i8));
  v51[1] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v14, 8uLL), _Q19), vshlq_n_s32(vmovl_high_u16(v3), 0x18uLL)), vmovl_high_u16(v53.val[0]));
  v51[0] = vorrq_s8(v15, vmovl_u16(*v53.val[0].i8));
  do
  {
    HIDWORD(v17) = *(&v51[2] + v1) ^ *(&v51[3] + v1 + 4) ^ *(v51 + v1 + 8) ^ *(v51 + v1);
    LODWORD(v17) = HIDWORD(v17);
    *(&v51[4] + v1) = v17 >> 31;
    v1 += 4;
  }

  while (v1 != 256);
  v18 = 0;
  v19 = result[1];
  v21 = result[3];
  v20 = result[4];
  v22 = v20;
  v23 = result[2];
  v24 = v21;
  v25 = v23;
  v26 = v19;
  v27 = *result;
  do
  {
    v28 = v27;
    v29 = v25;
    v30 = v24;
    HIDWORD(v31) = v27;
    LODWORD(v31) = v27;
    v32 = (v31 >> 27) + v22 + (v24 & ~v26 | v25 & v26) + 1518500249;
    HIDWORD(v31) = v26;
    LODWORD(v31) = v26;
    v25 = v31 >> 2;
    v27 = v32 + *(v51 + v18);
    v18 += 4;
    v22 = v24;
    v24 = v29;
    v26 = v28;
  }

  while (v18 != 80);
  v33 = 80;
  do
  {
    v34 = v27;
    v35 = v25;
    v36 = v29;
    HIDWORD(v37) = v27;
    LODWORD(v37) = v27;
    v38 = (v37 >> 27) + (v25 ^ v28 ^ v29) + v30 + 1859775393;
    HIDWORD(v37) = v28;
    LODWORD(v37) = v28;
    v25 = v37 >> 2;
    v27 = v38 + *(v51 + v33);
    v33 += 4;
    v30 = v29;
    v29 = v35;
    v28 = v34;
  }

  while (v33 != 160);
  do
  {
    v39 = v27;
    v40 = v25;
    HIDWORD(v41) = v27;
    LODWORD(v41) = v27;
    v42 = v35;
    v43 = (v41 >> 27) + v36 + ((v35 | v40) & v34 | v35 & v40) - 1894007588;
    HIDWORD(v41) = v34;
    LODWORD(v41) = v34;
    v25 = v41 >> 2;
    v27 = v43 + *(v51 + v33);
    v33 += 4;
    v36 = v35;
    v35 = v40;
    v34 = v39;
  }

  while (v33 != 240);
  v44 = 240;
  do
  {
    v45 = v27;
    v46 = v25;
    v47 = v40;
    HIDWORD(v48) = v27;
    LODWORD(v48) = v27;
    v49 = (v48 >> 27) + (v25 ^ v39 ^ v40) + v42 - 899497514;
    HIDWORD(v48) = v39;
    LODWORD(v48) = v39;
    v25 = v48 >> 2;
    v27 = v49 + *(v51 + v44);
    v44 += 4;
    v42 = v40;
    v40 = v46;
    v39 = v45;
  }

  while (v44 != 320);
  *result += v27;
  result[1] = v45 + v19;
  result[2] = v25 + v23;
  result[3] = v46 + v21;
  result[4] = v47 + v20;
  *(result + 14) = 0;
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t tss_submit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallLog(3, "tss_submit", "NULL session", a4, a5, a6, a7, a8, v19);
    return 10009;
  }

  if (!*(a1 + 24))
  {
    AMAuthInstallLog(3, "tss_submit", "NULL request in session", a4, a5, a6, a7, a8, v19);
    v15 = 10008;
    v16 = a1;
    v17 = 10008;
LABEL_10:
    tss_set_last_error(v16, v17);
    return v15;
  }

  if (!*(a1 + 48))
  {
    tss_submit_job_with_retry();
    return *(a1 + 64);
  }

  v9 = malloc(8uLL);
  *(a1 + 56) = v9;
  if (!v9)
  {
    AMAuthInstallLog(3, "tss_submit_non_block", "out of memory", v10, v11, v12, v13, v14, v19);
    v15 = 10006;
    v16 = a1;
    v17 = 10006;
    goto LABEL_10;
  }

  pthread_create(v9, 0, tss_submit_job_with_retry, a1);
  return 0;
}

__CFString *tss_set_last_error(__CFString *result, int a2)
{
  if (result)
  {
    v3 = result;
    LODWORD(result[2].isa) = a2;
    info = result[2].info;
    if (info)
    {
      CFRelease(info);
    }

    result = tss_lookup_error(a2);
    v3[2].info = result;
  }

  return result;
}

uint64_t tss_submit_job_with_retry()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v6 = v0;
  v215[12800] = *MEMORY[0x29EDCA608];
  if (v0)
  {
    if (*(v0 + 16) <= 1u)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v0 + 16);
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  key = *MEMORY[0x29EDB8EC8];
  httpVersion = *MEMORY[0x29EDB8528];
  alloc = *MEMORY[0x29EDB8ED8];
  do
  {
    AMAuthInstallLog(6, "tss_submit_job_with_retry", "TSS Connection attempt %d of %d.  (Will retry if TSS_ERR_SERVER_NOT_REACHABLE.)", v1, v2, v3, v4, v5, ++v8);
    error = 0;
    bzero(v215, 0x19000uLL);
    if (!*(v6 + 8))
    {
      AMAuthInstallLog(3, "tss_submit_job", "no server URL", v10, v11, v12, v13, v14, v176);
      v71 = 10008;
LABEL_25:
      tss_set_last_error(v6, v71);
      v72 = 0;
      v35 = 0;
      v73 = 0;
      v50 = 0;
      Request = 0;
      v28 = 0;
      *(v6 + 64) = v71;
      goto LABEL_35;
    }

    v15 = CFPropertyListCreateData(v9, *(v6 + 24), kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (!v15)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateXMLData failed %@", v16, v17, v18, v19, v20, error);
      v71 = 10036;
      goto LABEL_25;
    }

    v21 = v15;
    Length = CFDataGetLength(v15);
    v28 = CFURLCreateWithString(v9, @"TSS/controller?action=2", *(v6 + 8));
    if (!v28)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFURLCreateCopyAppendingPathComponent() failed", v23, v24, v25, v26, v27, v176);
      v74 = 10041;
      tss_set_last_error(v6, 10041);
      v72 = 0;
      v35 = 0;
      v50 = 0;
      Request = 0;
LABEL_34:
      *(v6 + 64) = v74;
      CFRelease(v21);
      v73 = 0;
      goto LABEL_35;
    }

    Request = CFHTTPMessageCreateRequest(v9, @"POST", v28, httpVersion);
    if (!Request)
    {
      AMAuthInstallLog(3, "tss_submit_job", "CFHTTPMessageCreateRequest failed", v29, v30, v31, v32, v33, v176);
      v74 = 10041;
      tss_set_last_error(v6, 10041);
      v72 = 0;
      v35 = 0;
      v50 = 0;
      goto LABEL_34;
    }

    v177 = Length;
    v35 = CFStringCreateWithFormat(v9, 0, @"%d");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Proxy-Connection", @"Keep-Alive");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Pragma", @"no-cache");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v35);
    v36 = _CFCopySystemVersionDictionary();
    if (v36)
    {
      v42 = v36;
      Value = CFDictionaryGetValue(v36, key);
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-OS-Version", Value);
      CFRelease(v42);
    }

    if (*(v6 + 32))
    {
      AMAuthInstallLog(7, "tss_submit_job", "Attempting to add additional entries to HTTP header", v37, v38, v39, v40, v41, v177);
      CFDictionaryApplyFunction(*(v6 + 32), _AMAuthInstallUpdateHTTPHeaderWithEntry, Request);
      AMAuthInstallLog(7, "tss_submit_job", "Done adding additional fields to HTTP header", v44, v45, v46, v47, v48, v178);
    }

    CFHTTPMessageSetBody(Request, v21);
    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v50 = Mutable;
    v51 = *(v6 + 80);
    if (v51)
    {
      CFDictionaryAddValue(Mutable, @"SocksProxySettings", v51);
      AMAuthInstallLog(7, "tss_submit_job", "Found a SOCKS proxy setting. Will attempt to use it.", v52, v53, v54, v55, v56, v177);
    }

    v57 = *(v6 + 88);
    if (v57)
    {
      CFDictionaryAddValue(v50, @"TrustedServerCAs", v57);
      AMAuthInstallLog(7, "tss_submit_job", "Found a trusted server CA. Will attempt to use it.", v58, v59, v60, v61, v62, v177);
    }

    theData[0] = 0;
    v63 = CFURLCopyScheme(*(v6 + 8));
    if (!v63)
    {
      v70 = "Invalid scheme in url";
      goto LABEL_31;
    }

    v69 = v63;
    *__s = 10000;
    if (CFStringCompare(v63, @"https", 1uLL) && CFStringCompare(v69, @"http", 1uLL))
    {
      CFRelease(v69);
      v70 = "unsupported URL scheme";
LABEL_31:
      AMAuthInstallLog(3, "tss_submit_job", v70, v64, v65, v66, v67, v68, v177);
      v74 = 10008;
      v80 = v6;
      v81 = 10008;
      goto LABEL_32;
    }

    CFRelease(v69);
    if (AMAuthInstallHttpMessageSendSyncNew(v9, Request, theData, __s, v50, 300.0))
    {
      AMAuthInstallLog(3, "tss_submit_job", "failed to send http request", v75, v76, v77, v78, v79, v177);
      v74 = 10002;
      v80 = v6;
      v81 = 10002;
LABEL_32:
      tss_set_last_error(v80, v81);
LABEL_33:
      v72 = @"Content-Length";
      goto LABEL_34;
    }

    v74 = *__s;
    if (*__s != 200)
    {
      AMAuthInstallLog(3, "tss_submit_job", "SendHttpRequest failed %d", v75, v76, v77, v78, v79, __s[0]);
      if (*__s == -1)
      {
        v74 = 10002;
      }

      v88 = v6;
      v89 = v74;
      goto LABEL_61;
    }

    if (CFDataGetLength(theData[0]) > 0x19000)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Response too large", v83, v84, v85, v86, v87, v177);
      v74 = 10052;
      v88 = v6;
      v89 = 10052;
LABEL_61:
      tss_set_last_error(v88, v89);
      CFRelease(theData[0]);
      goto LABEL_33;
    }

    CFDataGetBytePtr(theData[0]);
    CFDataGetLength(theData[0]);
    __memcpy_chk();
    v90 = CFDataGetLength(theData[0]);
    CFRelease(theData[0]);
    v96 = v90;
    *v213 = 0;
    *__s = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v183 = v90;
    if (v90 < 1)
    {
      v100 = 0;
      v188 = 0;
      cfb = 0;
      goto LABEL_108;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = v215;
    do
    {
      if (v99)
      {
        if (v98)
        {
          goto LABEL_66;
        }
      }

      else if (v100 + 7 >= v96)
      {
        v99 = 0;
        if (v98)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v187 = v98;
        cf = v97;
        if (!strncmp(v101, "STATUS", 6uLL))
        {
          v102 = 0;
          v99 = v101 + 7;
          v97 = cf;
          do
          {
            v103 = v101[v102 + 7];
            if (v103 == 38)
            {
              break;
            }

            v213[v102++] = v103;
          }

          while (v102 != 8);
          v213[7] = 0;
          v96 = v183;
        }

        else
        {
          v99 = 0;
          v96 = v183;
          v97 = cf;
        }

        v98 = v187;
        if (v187)
        {
LABEL_66:
          if (v97)
          {
            goto LABEL_98;
          }

          goto LABEL_67;
        }
      }

      if (v100 + 8 >= v96)
      {
        v98 = 0;
        if (v97)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v185 = v99;
        cfa = v97;
        if (!strncmp(v101, "MESSAGE", 7uLL))
        {
          v104 = 0;
          v98 = v101 + 8;
          v97 = cfa;
          v99 = v185;
          do
          {
            v105 = v101[v104 + 8];
            if (v105 == 10)
            {
              break;
            }

            if (v105 == 38)
            {
              break;
            }

            __s[v104++] = v105;
          }

          while (v104 != 256);
          HIBYTE(v212) = 0;
          v96 = v183;
          if (cfa)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v98 = 0;
          v96 = v183;
          v99 = v185;
          v97 = cfa;
          if (cfa)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_67:
      if (v100 + 15 >= v96)
      {
        v97 = 0;
        goto LABEL_98;
      }

      v184 = v99;
      v186 = v98;
      if (strncmp(v101, "REQUEST_STRING", 0xEuLL))
      {
        v97 = 0;
        v96 = v183;
        v99 = v184;
LABEL_97:
        v98 = v186;
        goto LABEL_98;
      }

      v97 = v101 + 15;
      v99 = v184;
      if (!v184)
      {
        v96 = v183;
        goto LABEL_97;
      }

      v96 = v183;
      v98 = v186;
      if (v186)
      {
        goto LABEL_100;
      }

LABEL_98:
      ++v101;
      ++v100;
    }

    while (v100 != v96);
    v100 = v96;
LABEL_100:
    cfb = v97;
    if (v99)
    {
      v106 = v98 == 0;
    }

    else
    {
      v106 = 1;
    }

    v107 = !v106;
    v188 = v107;
LABEL_108:
    AMAuthInstallLog(8, "tss_submit_job", "----Begin request", v91, v92, v93, v94, v95, v177);
    AMAuthInstallLog(8, "tss_submit_job", "%@", v108, v109, v110, v111, v112, *(v6 + 24));
    AMAuthInstallLog(8, "tss_submit_job", "----End request", v113, v114, v115, v116, v117, v179);
    AMAuthInstallLog(8, "tss_submit_job", "----Begin response", v118, v119, v120, v121, v122, v180);
    AMAuthInstallLog(8, "tss_submit_job", "%s", v123, v124, v125, v126, v127, v215);
    AMAuthInstallLog(8, "tss_submit_job", "----End response", v128, v129, v130, v131, v132, v181);
    if ((v188 & 1) == 0)
    {
      AMAuthInstallLog(3, "tss_submit_job", "invalid response", v133, v134, v135, v136, v137, v182);
      v144 = 10052;
      v153 = v6;
      v154 = 10052;
      goto LABEL_115;
    }

    v138 = atoi(v213);
    if (!v138)
    {
      if (cfb)
      {
        __memcpy_chk();
        v155 = CFDataCreate(alloc, theData, v183 - v100 - 15);
        if (v155)
        {
          v161 = v155;
          if (error)
          {
            CFRelease(error);
          }

          cfc = v161;
          v73 = CFPropertyListCreateWithData(alloc, v161, 0, 0, &error);
          if (v73)
          {
            Copy = CFDictionaryCreateCopy(alloc, v73);
            *(v6 + 40) = Copy;
            if (Copy)
            {
              v173 = 0;
LABEL_130:
              *(v6 + 64) = v173;
              CFRelease(v21);
              CFRelease(cfc);
              goto LABEL_117;
            }

            AMAuthInstallLog(3, "tss_submit_job", "CFDictionaryCreateCopy failed", v168, v169, v170, v171, v172, v182);
            v173 = 10056;
          }

          else
          {
            AMAuthInstallLog(3, "tss_submit_job", "CFPropertyListCreateFromXMLData failed (%@)", v162, v163, v164, v165, v166, error);
            v173 = 10055;
          }

          tss_set_last_error(v6, v173);
          goto LABEL_130;
        }

        AMAuthInstallLog(3, "tss_submit_job", "CFDataCreate failed", v156, v157, v158, v159, v160, v182);
        v144 = 10054;
        v153 = v6;
        v154 = 10054;
      }

      else
      {
        AMAuthInstallLog(3, "tss_submit_job", "no data in response", v139, v140, v141, v142, v143, v182);
        v144 = 10053;
        v153 = v6;
        v154 = 10053;
      }

LABEL_115:
      tss_set_last_error(v153, v154);
      goto LABEL_116;
    }

    v144 = v138;
    AMAuthInstallLog(3, "tss_submit_job", "error from server=%d (%s)", v139, v140, v141, v142, v143, v138);
    v145 = *(v6 + 72);
    if (v145)
    {
      CFRelease(v145);
    }

    v146 = strlen(__s);
    v147 = CFStringCreateWithBytes(alloc, __s, v146, 0x8000100u, 0);
    *(v6 + 72) = v147;
    if (!v147)
    {
      AMAuthInstallLog(3, "tss_submit_job", "Server message failed to convert: %d", v148, v149, v150, v151, v152, v144);
    }

LABEL_116:
    *(v6 + 64) = v144;
    CFRelease(v21);
    v73 = 0;
LABEL_117:
    v72 = @"Content-Length";
LABEL_35:
    if (error)
    {
      CFRelease(error);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (Request)
    {
      CFRelease(Request);
    }

    if (v72)
    {
      CFRelease(v72);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    v9 = alloc;
    if (v73)
    {
      CFRelease(v73);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    v82 = *(v6 + 48);
    if (v82)
    {
      v82(v6);
    }
  }

  while (v6 && v8 < v7 && *(v6 + 64) == 10002);
  v174 = *MEMORY[0x29EDCA608];
  return 0;
}

void _AMAuthInstallUpdateHTTPHeaderWithEntry(const __CFString *a1, const __CFString *a2, __CFHTTPMessage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(7, "_AMAuthInstallUpdateHTTPHeaderWithEntry", "HTTP Request Header: %@=%@", a4, a5, a6, a7, a8, a1);

  CFHTTPMessageSetHeaderFieldValue(a3, a1, a2);
}

uint64_t amai_unzStringFileNameCompare(const char *a1, const char *a2, int a3)
{
  if (a3 == 1)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *amai_unzOpen2(uint64_t a1, _OWORD *a2)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v3 = a2[1];
    __src[0] = *a2;
    __src[1] = v3;
    v4 = a2[3];
    __src[2] = a2[2];
    __src[3] = v4;
    v5 = (*&__src[0])(*(&v4 + 1), a1, 5);
  }

  else
  {
    amai_fill_fopen_filefunc(__src);
    v5 = (*&__src[0])(*(&__src[3] + 1), a1, 5);
  }

  v6 = v5;
  *&__src[4] = v5;
  if (v5)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v5, 0, 2) || ((v8 = (*(&__src[1] + 1))(*(&__src[3] + 1), v6), v9 = v8, v8 >= 0xFFFF) ? (v10 = 0xFFFFLL) : (v10 = v8), (v11 = malloc(0x404uLL)) == 0))
    {
      v7 = 0;
      v34 = 0;
    }

    else
    {
      v12 = v11;
      if (v9 >= 5)
      {
        v13 = 4;
        while (2)
        {
          v14 = v13 + 1024;
          if (v13 + 1024 >= v10)
          {
            v13 = v10;
          }

          else
          {
            v13 += 1024;
          }

          v15 = v13 >= 0x404 ? 1028 : v13;
          if (!(*&__src[2])(*(&__src[3] + 1), v6, v9 - v13, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v6, v12, v15) == v15)
          {
            v16 = (v15 - 4);
            v17 = v13 - v9 - v16;
            v18 = v15 - 3;
            v19 = &v12[v16 + 1];
            while (*(v19 - 1) != 80 || *v19 != 75 || v19[1] != 5 || v19[2] != 6)
            {
              ++v17;
              --v19;
              v20 = __OFSUB__(v18--, 1);
              if ((v18 < 0) ^ v20 | (v18 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v17)
            {
              v7 = -v17;
              v34 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v14 < v10)
            {
              continue;
            }
          }

          break;
        }
      }

      v7 = 0;
      v34 = 0;
LABEL_33:
      free(v12);
    }

    v36 = 0;
    v37 = 0;
    v35 = 0;
    v31 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v7, 0);
    HIDWORD(v32) = unzlocal_getLong(__src, *&__src[4], &v38);
    LODWORD(v32) = unzlocal_getShort(__src, *&__src[4], &v37);
    Short = unzlocal_getShort(__src, *&__src[4], &v36);
    v21 = unzlocal_getShort(__src, *&__src[4], &__src[4] + 1);
    v22 = unzlocal_getShort(__src, *&__src[4], &v35);
    v24 = v35;
    v23 = v36;
    v25 = v37;
    v26 = *(&__src[4] + 1);
    Long = unzlocal_getLong(__src, *&__src[4], &__src[8]);
    v28 = unzlocal_getLong(__src, *&__src[4], &__src[8] + 1);
    v29 = unzlocal_getShort(__src, *&__src[4], &__src[5]);
    if (v7 < *&__src[8] + *(&__src[8] + 1) || v28 | Long | v29 || v24 != v26 || v23 || v25 || !v34 || v22 || v21 || Short || v32 || v31)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v7 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v7;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v6 = malloc(0x150uLL);
      memcpy(v6, __src, 0x150uLL);
      amai_unzGoToFirstFile(v6);
    }
  }

  return v6;
}