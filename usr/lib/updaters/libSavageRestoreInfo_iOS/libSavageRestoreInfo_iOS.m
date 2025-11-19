void JasmineIRAddEntitlementsToTATSURequestDict(const __CFDictionary *a1, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"JasmineIR1,HarvestWrap");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = CFBooleanGetValue(v5);
      v8 = MEMORY[0x29EDB8F00];
      if (!v7)
      {
        v8 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,HarvestWrap", *v8);
    }
  }

  v9 = CFDictionaryGetValue(a1, @"JasmineIR1,HarvestUnwrap");
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      v12 = CFBooleanGetValue(v10);
      v13 = MEMORY[0x29EDB8F00];
      if (!v12)
      {
        v13 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,HarvestUnwrap", *v13);
    }
  }

  v14 = CFDictionaryGetValue(a1, @"JasmineIR1,Authenticate");
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFBooleanGetTypeID())
    {
      v17 = CFBooleanGetValue(v15);
      v18 = MEMORY[0x29EDB8F00];
      if (!v17)
      {
        v18 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,Authenticate", *v18);
    }
  }

  v19 = CFDictionaryGetValue(a1, @"JasmineIR1,ReadECKey");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 == CFBooleanGetTypeID())
    {
      v22 = CFBooleanGetValue(v20);
      v23 = MEMORY[0x29EDB8F00];
      if (!v22)
      {
        v23 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,ReadECKey", *v23);
    }
  }

  v24 = CFDictionaryGetValue(a1, @"JasmineIR1,WriteECKey");
  if (v24)
  {
    v25 = v24;
    v26 = CFGetTypeID(v24);
    if (v26 == CFBooleanGetTypeID())
    {
      v27 = CFBooleanGetValue(v25);
      v28 = MEMORY[0x29EDB8F00];
      if (!v27)
      {
        v28 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,WriteECKey", *v28);
    }
  }

  v29 = CFDictionaryGetValue(a1, @"JasmineIR1,WriteECID");
  if (v29)
  {
    v30 = v29;
    v31 = CFGetTypeID(v29);
    if (v31 == CFBooleanGetTypeID())
    {
      v32 = CFBooleanGetValue(v30);
      v33 = MEMORY[0x29EDB8F00];
      if (!v32)
      {
        v33 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,WriteECID", *v33);
    }
  }

  v34 = CFDictionaryGetValue(a1, @"JasmineIR1,WriteEpoch");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFBooleanGetTypeID())
    {
      v37 = CFBooleanGetValue(v35);
      v38 = MEMORY[0x29EDB8F00];
      if (!v37)
      {
        v38 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,WriteEpoch", *v38);
    }
  }

  v39 = CFDictionaryGetValue(a1, @"JasmineIR1,ReadGID");
  if (v39)
  {
    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 == CFBooleanGetTypeID())
    {
      v42 = CFBooleanGetValue(v40);
      v43 = MEMORY[0x29EDB8F00];
      if (!v42)
      {
        v43 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,ReadGID", *v43);
    }
  }

  v44 = CFDictionaryGetValue(a1, @"JasmineIR1,ReadFWKey");
  if (v44)
  {
    v45 = v44;
    v46 = CFGetTypeID(v44);
    if (v46 == CFBooleanGetTypeID())
    {
      v47 = CFBooleanGetValue(v45);
      v48 = MEMORY[0x29EDB8F00];
      if (!v47)
      {
        v48 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,ReadFWKey", *v48);
    }
  }

  v49 = CFDictionaryGetValue(a1, @"JasmineIR1,AllowOfflineBoot");
  if (v49)
  {
    v50 = v49;
    v51 = CFGetTypeID(v49);
    if (v51 == CFBooleanGetTypeID())
    {
      v52 = CFBooleanGetValue(v50);
      v53 = MEMORY[0x29EDB8F00];
      if (!v52)
      {
        v53 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,AllowOfflineBoot", *v53);
    }
  }

  v54 = CFDictionaryGetValue(a1, @"JasmineIR1,TempDemote");
  if (v54)
  {
    v55 = v54;
    v56 = CFGetTypeID(v54);
    if (v56 == CFBooleanGetTypeID())
    {
      v57 = CFBooleanGetValue(v55);
      v58 = MEMORY[0x29EDB8F00];
      if (!v57)
      {
        v58 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,TempDemote", *v58);
    }
  }

  v59 = CFDictionaryGetValue(a1, @"JasmineIR1,AccessSensor");
  if (v59)
  {
    v60 = v59;
    v61 = CFGetTypeID(v59);
    if (v61 == CFBooleanGetTypeID())
    {
      v62 = CFBooleanGetValue(v60);
      v63 = MEMORY[0x29EDB8F00];
      if (!v62)
      {
        v63 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,AccessSensor", *v63);
    }
  }

  v64 = CFDictionaryGetValue(a1, @"JasmineIR1,AccessSecurity");
  if (v64)
  {
    v65 = v64;
    v66 = CFGetTypeID(v64);
    if (v66 == CFBooleanGetTypeID())
    {
      v67 = CFBooleanGetValue(v65);
      v68 = MEMORY[0x29EDB8F00];
      if (!v67)
      {
        v68 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,AccessSecurity", *v68);
    }
  }

  v69 = CFDictionaryGetValue(a1, @"JasmineIR1,FADemote");
  if (v69)
  {
    v70 = v69;
    v71 = CFGetTypeID(v69);
    if (v71 == CFBooleanGetTypeID())
    {
      v72 = CFBooleanGetValue(v70);
      v73 = MEMORY[0x29EDB8F00];
      if (!v72)
      {
        v73 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,FADemote", *v73);
    }
  }

  v74 = CFDictionaryGetValue(a1, @"JasmineIR1,DebugStatus");
  if (v74)
  {
    v75 = v74;
    v76 = CFGetTypeID(v74);
    if (v76 == CFBooleanGetTypeID())
    {
      v77 = CFBooleanGetValue(v75);
      v78 = MEMORY[0x29EDB8F00];
      if (!v77)
      {
        v78 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"JasmineIR1,DebugStatus", *v78);
    }
  }

  v79 = CFDictionaryGetValue(a1, @"JasmineIR1,Provisioning");
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 == CFBooleanGetTypeID())
    {
      v82 = CFBooleanGetValue(v80);
      v83 = MEMORY[0x29EDB8F00];
      if (!v82)
      {
        v83 = MEMORY[0x29EDB8EF8];
      }

      v84 = *v83;

      CFDictionaryAddValue(a2, @"JasmineIR1,Provisioning", v84);
    }
  }
}

uint64_t CreateJasmineIRMeasurementDict(const __CFData *a1, CFTypeRef *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = MEMORY[0x29EDB9010];
  v6 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  memset(v17, 0, sizeof(v17));
  v8 = CFDictionaryCreateMutable(0, 0, v5, v6);
  v9 = 0;
  if (v8)
  {
    v10 = Mutable == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 2;
    if (a1 && a2)
    {
      Length = CFDataGetLength(a1);
      v9 = calloc(Length, 1uLL);
      if (v9)
      {
        v19.location = 0;
        v19.length = Length;
        CFDataGetBytes(a1, v19, v9);
        _computePatchDigest(v9, Length, v17);
        v13 = CFDataCreate(v4, v17, 32);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(Mutable, @"Digest", v13);
          CFDictionarySetValue(v8, @"MeasurementDictPatch", Mutable);
          *a2 = SavageSafeRetain(v8);
          CFRelease(v14);
          v11 = 0;
        }

        else
        {
          v11 = 8;
        }
      }

      else
      {
        v11 = 3;
      }
    }

    goto LABEL_10;
  }

  v11 = 3;
  if (Mutable)
  {
LABEL_10:
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    free(v9);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t CreateJasmineIRMeasurementDictVT(const __CFData *a1, CFTypeRef *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = MEMORY[0x29EDB9010];
  v6 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = CFDictionaryCreateMutable(0, 0, v5, v6);
  v9 = 0;
  if (v8)
  {
    v10 = Mutable == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 3;
    goto LABEL_12;
  }

  v11 = 2;
  if (a1 && a2)
  {
    Length = CFDataGetLength(a1);
    v9 = calloc(Length, 1uLL);
    if (v9)
    {
      v24.location = 0;
      v24.length = Length;
      CFDataGetBytes(a1, v24, v9);
      v13 = 0;
      v14 = v9;
      v15 = &qword_299F4D7B0;
      do
      {
        v16 = *v15++;
        _computePatchDigest(v14, v16, &v22[v13]);
        v14 += v16;
        v13 += 32;
      }

      while (v13 != 224);
      _computePatchDigest(v22, 0xE0uLL, v21);
      v17 = CFDataCreate(v4, v21, 32);
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(Mutable, @"Digest", v17);
        CFDictionarySetValue(v8, @"MeasurementDictPatch", Mutable);
        *a2 = SavageSafeRetain(v8);
        CFRelease(v18);
        v11 = 0;
      }

      else
      {
        v11 = 8;
      }

LABEL_12:
      if (!Mutable)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = 3;
  }

LABEL_13:
  CFRelease(Mutable);
LABEL_14:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    free(v9);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v11;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_0()
{

  return CFDictionaryCreateMutable(0, 0, v0, v1);
}

void YonkersAddEntitlementsToTATSURequestDict(const __CFDictionary *a1, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"Yonkers,ReadECKey");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = CFBooleanGetValue(v5);
      v8 = MEMORY[0x29EDB8F00];
      if (!v7)
      {
        v8 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,ReadECKey", *v8);
    }
  }

  v9 = CFDictionaryGetValue(a1, @"Yonkers,WriteECKey");
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      v12 = CFBooleanGetValue(v10);
      v13 = MEMORY[0x29EDB8F00];
      if (!v12)
      {
        v13 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,WriteECKey", *v13);
    }
  }

  v14 = CFDictionaryGetValue(a1, @"Yonkers,WriteECID");
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFBooleanGetTypeID())
    {
      v17 = CFBooleanGetValue(v15);
      v18 = MEMORY[0x29EDB8F00];
      if (!v17)
      {
        v18 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,WriteECID", *v18);
    }
  }

  v19 = CFDictionaryGetValue(a1, @"Yonkers,WriteEpoch");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 == CFBooleanGetTypeID())
    {
      v22 = CFBooleanGetValue(v20);
      v23 = MEMORY[0x29EDB8F00];
      if (!v22)
      {
        v23 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,WriteEpoch", *v23);
    }
  }

  v24 = CFDictionaryGetValue(a1, @"Yonkers,ReadGID");
  if (v24)
  {
    v25 = v24;
    v26 = CFGetTypeID(v24);
    if (v26 == CFBooleanGetTypeID())
    {
      v27 = CFBooleanGetValue(v25);
      v28 = MEMORY[0x29EDB8F00];
      if (!v27)
      {
        v28 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,ReadGID", *v28);
    }
  }

  v29 = CFDictionaryGetValue(a1, @"Yonkers,ReadFWKey");
  if (v29)
  {
    v30 = v29;
    v31 = CFGetTypeID(v29);
    if (v31 == CFBooleanGetTypeID())
    {
      v32 = CFBooleanGetValue(v30);
      v33 = MEMORY[0x29EDB8F00];
      if (!v32)
      {
        v33 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,ReadFWKey", *v33);
    }
  }

  v34 = CFDictionaryGetValue(a1, @"Yonkers,AllowOfflineBoot");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFBooleanGetTypeID())
    {
      v37 = CFBooleanGetValue(v35);
      v38 = MEMORY[0x29EDB8F00];
      if (!v37)
      {
        v38 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,AllowOfflineBoot", *v38);
    }
  }

  v39 = CFDictionaryGetValue(a1, @"Yonkers,TempDemote");
  if (v39)
  {
    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 == CFBooleanGetTypeID())
    {
      v42 = CFBooleanGetValue(v40);
      v43 = MEMORY[0x29EDB8F00];
      if (!v42)
      {
        v43 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,TempDemote", *v43);
    }
  }

  v44 = CFDictionaryGetValue(a1, @"Yonkers,AccessSensor");
  if (v44)
  {
    v45 = v44;
    v46 = CFGetTypeID(v44);
    if (v46 == CFBooleanGetTypeID())
    {
      v47 = CFBooleanGetValue(v45);
      v48 = MEMORY[0x29EDB8F00];
      if (!v47)
      {
        v48 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,AccessSensor", *v48);
    }
  }

  v49 = CFDictionaryGetValue(a1, @"Yonkers,AccessSecurity");
  if (v49)
  {
    v50 = v49;
    v51 = CFGetTypeID(v49);
    if (v51 == CFBooleanGetTypeID())
    {
      v52 = CFBooleanGetValue(v50);
      v53 = MEMORY[0x29EDB8F00];
      if (!v52)
      {
        v53 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,AccessSecurity", *v53);
    }
  }

  v54 = CFDictionaryGetValue(a1, @"Yonkers,FADemote");
  if (v54)
  {
    v55 = v54;
    v56 = CFGetTypeID(v54);
    if (v56 == CFBooleanGetTypeID())
    {
      v57 = CFBooleanGetValue(v55);
      v58 = MEMORY[0x29EDB8F00];
      if (!v57)
      {
        v58 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,FADemote", *v58);
    }
  }

  v59 = CFDictionaryGetValue(a1, @"Yonkers,DebugStatus");
  if (v59)
  {
    v60 = v59;
    v61 = CFGetTypeID(v59);
    if (v61 == CFBooleanGetTypeID())
    {
      v62 = CFBooleanGetValue(v60);
      v63 = MEMORY[0x29EDB8F00];
      if (!v62)
      {
        v63 = MEMORY[0x29EDB8EF8];
      }

      CFDictionaryAddValue(a2, @"Yonkers,DebugStatus", *v63);
    }
  }

  v64 = CFDictionaryGetValue(a1, @"Yonkers,Provisioning");
  if (v64)
  {
    v65 = v64;
    v66 = CFGetTypeID(v64);
    if (v66 == CFBooleanGetTypeID())
    {
      v67 = CFBooleanGetValue(v65);
      v68 = MEMORY[0x29EDB8F00];
      if (!v67)
      {
        v68 = MEMORY[0x29EDB8EF8];
      }

      v69 = *v68;

      CFDictionaryAddValue(a2, @"Yonkers,Provisioning", v69);
    }
  }
}

uint64_t CreateYonkersMeasurementDict(const __CFData *a1, CFTypeRef *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = MEMORY[0x29EDB9010];
  v6 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *md = 0u;
  v19 = 0u;
  v8 = CFDictionaryCreateMutable(0, 0, v5, v6);
  v9 = 0;
  if (v8)
  {
    v10 = Mutable == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 2;
    if (a1 && a2)
    {
      Length = CFDataGetLength(a1);
      v9 = calloc(Length, 1uLL);
      if (v9)
      {
        v21.location = 0;
        v21.length = Length;
        CFDataGetBytes(a1, v21, v9);
        if (!(Length >> 20))
        {
          CC_SHA256_Init(&c);
          CC_SHA256_Update(&c, v9, Length);
          CC_SHA256_Final(md, &c);
        }

        v13 = CFDataCreate(v4, md, 32);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(Mutable, @"Digest", v13);
          CFDictionarySetValue(v8, @"MeasurementDictPatch", Mutable);
          *a2 = SavageSafeRetain(v8);
          CFRelease(v14);
          v11 = 0;
        }

        else
        {
          v11 = 8;
        }
      }

      else
      {
        v11 = 3;
      }
    }

    goto LABEL_12;
  }

  v11 = 3;
  if (Mutable)
  {
LABEL_12:
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    free(v9);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *(a1 + 4 * v8);

  return GetYonkersFabRevisionTags(v11, v9, va, 0);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFDictionaryRef theDict)
{

  return CFDictionaryCreateMutableCopy(v13, 0, theDict);
}

void OUTLINED_FUNCTION_4()
{

  SavageCFDictionarySetInteger32(v2, v0, v1);
}

void OUTLINED_FUNCTION_5(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v3, a2, v2);
}

void _loadAndMeasureFile(const char *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = fopen(a1, "rb");
  if (v5)
  {
    v6 = v5;
    fseeko(v5, 0, 2);
    v7 = ftello(v6);
    fseeko(v6, 0, 0);
    if (v7 >= 0x100000)
    {

      puts("Input firmware file too large.  Failing. ");
    }

    else
    {
      v8 = calloc(v7, 1uLL);
      if (v8)
      {
        v9 = v8;
        v10 = fread(v8, 1uLL, v7, v6);
        fclose(v6);
        if (v10 == v7)
        {
          _loadAndMeasureFile_cold_1(v9, v7, a2, a3);
        }

        else
        {
          puts("Could not read Savage firmware patch file");
        }

        free(v9);
      }

      else
      {
        puts("Could not allocate Savage firmware buffer");

        fclose(v6);
      }
    }
  }

  else
  {

    perror("Error opening Savage firmware patch file \n");
  }
}

__CFDictionary *SavageUpdaterGetTagsWithLogging(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, CFTypeRef *a4)
{
  logSinkFunc = a2;
  logContext = a3;
  return SavageUpdaterGetTags(a1, a4);
}

__CFDictionary *SavageUpdaterGetTags(const __CFDictionary *a1, CFTypeRef *a2)
{
  v46 = 0;
  v47 = 0;
  cf = 0;
  value = 0;
  v42 = 0;
  v43 = 0;
  *buffer = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterGetTags: Cannot allocate memory for outputDict", 3u, 0, @"SavageErrorDomain");
    v15 = 0;
    v19 = 0;
    v6 = 0;
LABEL_65:
    v7 = 0;
LABEL_68:
    a1 = 0;
    goto LABEL_75;
  }

  if (!a1)
  {
    CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterGetTags: options is NULL", 2u, 0, @"SavageErrorDomain");
    v15 = 0;
    v19 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_75;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  v6 = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!v6)
  {
    CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterGetTags: Cannot allocate memory for tagsInBI", 3u, 0, @"SavageErrorDomain");
    v15 = 0;
    v19 = 0;
    goto LABEL_65;
  }

  v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x29EDB9000]);
  if (!v7)
  {
    v30 = "SavageUpdaterGetTags: Cannot allocate memory for tagsInTssResponse";
    v31 = 3;
    v32 = 0;
    goto LABEL_67;
  }

  v8 = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    v30 = "SavageUpdaterGetTags: DeviceInfo is NULL?";
    v31 = 17;
    v32 = a1;
LABEL_67:
    CFErrorWithDomain = createCFErrorWithDomain(v30, v31, v32, @"SavageErrorDomain");
    v15 = 0;
    v19 = 0;
    goto LABEL_68;
  }

  v11 = CFCopyDescription(v9);
  if (v11)
  {
    v12 = v11;
    if (CFStringGetCString(v11, logString, 4096, 0))
    {
      v13 = logString;
    }

    else
    {
      v13 = "No C string description available.";
    }

    SavageRestoreInfoLog("%s [input]: DeviceInfo %s \n", "SavageUpdaterGetTags", v13);
    CFRelease(v12);
  }

  else
  {
    SavageRestoreInfoLog("%s [input]: DeviceInfo %s \n", "SavageUpdaterGetTags", "No C string description available.");
  }

  a1 = SavageSafeRetain(v9);
  v14 = CFDictionaryGetValue(a1, @"YonkersDeviceInfo");
  v15 = v14;
  if (!v14)
  {
LABEL_19:
    v18 = CFDictionaryGetValue(a1, @"JasmineIR1DeviceInfo");
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFDictionaryGetTypeID())
      {
        v19 = SavageSafeRetain(v19);
        JasmineIRMeasurementTags = GetJasmineIRMeasurementTags(v19, &v43, &v42);
        if (JasmineIRMeasurementTags || !v43)
        {
          v34 = @"JasmineIRErrorDomain";
          v35 = "SavageUpdaterGetTags: Unable to get kJasmineIRTagMeasurementPatch";
          v36 = v19;
LABEL_74:
          CFErrorWithDomain = createCFErrorWithDomain(v35, JasmineIRMeasurementTags, v36, v34);
          goto LABEL_75;
        }

        CFArrayAppendValue(v6, @"SEP");
        CFArrayAppendValue(v6, @"JasmineIR1,BoardID");
        CFArrayAppendValue(v6, @"JasmineIR1,ECID");
        CFArrayAppendValue(v6, @"JasmineIR1,PatchEpoch");
        CFArrayAppendValue(v6, v43);
        if (v42)
        {
          CFArrayAppendValue(v6, v42);
        }

        CFArrayAppendValue(v7, @"JasmineIR1,Ticket");
      }

      else
      {
        v19 = 0;
      }
    }

    if (!CFDictionaryContainsKey(a1, @"Savage,UID"))
    {
LABEL_37:
      CFDictionaryAddValue(Mutable, @"BuildIdentityTags", v6);
      CFDictionaryAddValue(Mutable, @"ResponseTags", v7);
      v26 = CFCopyDescription(Mutable);
      if (v26)
      {
        v27 = v26;
        if (CFStringGetCString(v26, logString, 4096, 0))
        {
          v28 = logString;
        }

        else
        {
          v28 = "No C string description available.";
        }

        SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterGetTags", v28);
        CFRelease(v27);
      }

      else
      {
        SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterGetTags", "No C string description available.");
      }

      goto LABEL_43;
    }

    JasmineIRMeasurementTags = GetRelevantMeasurementTags(a1, &v47, &v46);
    if (v47)
    {
      if (v46)
      {
        CFArrayAppendValue(v6, @"Savage,ChipID");
        CFArrayAppendValue(v6, @"Savage,PatchEpoch");
        CFArrayAppendValue(v6, v47);
        CFArrayAppendValue(v6, v46);
        v22 = CFDictionaryGetValue(a1, @"Savage,ChipID");
        if (v22)
        {
          v23 = v22;
          v24 = CFGetTypeID(v22);
          v25 = @"Savage,Ticket";
          if (v24 == CFDataGetTypeID())
          {
            v48.location = 0;
            v48.length = 4;
            CFDataGetBytes(v23, v48, buffer);
            *buffer = bswap32(*buffer);
            if (*buffer > 0x5064u)
            {
              v25 = @"Brunor,Ticket";
            }
          }
        }

        else
        {
          v25 = @"Savage,Ticket";
        }

        CFArrayAppendValue(v7, v25);
        goto LABEL_37;
      }

      v34 = @"SavageErrorDomain";
      v35 = "SavageUpdaterGetTags: Unable to get kSavageTagMeasurementPatchRepair";
    }

    else
    {
      v34 = @"SavageErrorDomain";
      v35 = "SavageUpdaterGetTags: Unable to get kSavageTagMeasurementPatch";
    }

    v36 = a1;
    goto LABEL_74;
  }

  v16 = CFGetTypeID(v14);
  if (v16 != CFDictionaryGetTypeID())
  {
    v15 = 0;
    goto LABEL_19;
  }

  v15 = SavageSafeRetain(v15);
  YonkersMeasurementTags = GetYonkersMeasurementTags(v15, &value);
  if (!YonkersMeasurementTags && value)
  {
    CFArrayAppendValue(v6, @"SEP");
    CFArrayAppendValue(v6, @"Yonkers,BoardID");
    CFArrayAppendValue(v6, @"Yonkers,ChipID");
    CFArrayAppendValue(v6, @"Yonkers,PatchEpoch");
    CFArrayAppendValue(v6, value);
    CFArrayAppendValue(v6, cf);
    CFArrayAppendValue(v7, @"Yonkers,Ticket");
    goto LABEL_19;
  }

  CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterGetTags: Unable to get kYonkersTagMeasurementPatch", YonkersMeasurementTags, v15, @"YonkersErrorDomain");
  v19 = 0;
LABEL_75:
  if (a2 && CFErrorWithDomain)
  {
    *a2 = SavageSafeRetain(CFErrorWithDomain);
    v37 = CFErrorCopyDescription(CFErrorWithDomain);
    if (v37)
    {
      v38 = v37;
      CString = CFStringGetCString(v37, logString, 4096, 0);
      v40 = "No C string description available.";
      if (CString)
      {
        v40 = logString;
      }

      SavageRestoreInfoLog("%s [error]: %s \n", "SavageUpdaterGetTags", v40);
      CFRelease(v38);
    }

    else
    {
      SavageRestoreInfoLog("%s [error]: %s \n", "SavageUpdaterGetTags", "No C string description available.");
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    goto LABEL_86;
  }

  if (CFErrorWithDomain)
  {
LABEL_86:
    CFRelease(CFErrorWithDomain);
  }

  if (v7)
  {
LABEL_43:
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v43)
  {
    CFRelease(v43);
    v43 = 0;
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return Mutable;
}

__CFString **SavageUpdaterCopyFirmwareWithLogging(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, void *a4)
{
  logSinkFunc = a2;
  logContext = a3;
  return SavageUpdaterCopyFirmware(a1, a4);
}

CFAllocatorRef SavageUpdaterCreateRequestWithLogging(const __CFDictionary *a1, uint64_t (*a2)(void, void), uint64_t a3, CFTypeRef *a4)
{
  logSinkFunc = a2;
  logContext = a3;
  return SavageUpdaterCreateRequest(a1, a4);
}

CFAllocatorRef SavageUpdaterCreateRequest(const __CFDictionary *a1, CFTypeRef *a2)
{
  v193 = 0;
  cf = 0;
  v191 = 0;
  v192 = 0;
  allocator = 0;
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"BuildIdentity"))
    {
      Value = CFDictionaryGetValue(a1, @"BuildIdentity");
      v5 = SavageSafeRetain(Value);
      v6 = CFCopyDescription(v5);
      if (v6)
      {
        v7 = v6;
        if (CFStringGetCString(v6, logString, 4096, 0))
        {
          v8 = logString;
        }

        else
        {
          v8 = "No C string description available.";
        }

        SavageRestoreInfoLog("%s [input]: BuildIdentity %s \n", "SavageUpdaterCreateRequest", v8);
        CFRelease(v7);
        if (v5)
        {
LABEL_8:
          if (CFDictionaryContainsKey(a1, @"DeviceInfo"))
          {
            v9 = CFDictionaryGetValue(a1, @"DeviceInfo");
            v10 = SavageSafeRetain(v9);
            v11 = CFCopyDescription(v10);
            if (v11)
            {
              v12 = v11;
              if (CFStringGetCString(v11, logString, 4096, 0))
              {
                v13 = logString;
              }

              else
              {
                v13 = "No C string description available.";
              }

              SavageRestoreInfoLog("%s [input]: DeviceInfo %s \n", "SavageUpdaterCreateRequest", v13);
              CFRelease(v12);
              if (v10)
              {
LABEL_14:
                if (!CFDictionaryContainsKey(a1, @"FirmwareData"))
                {
LABEL_65:
                  if (CFDictionaryContainsKey(a1, @"ReceiptManifest"))
                  {
                    v56 = CFDictionaryGetValue(a1, @"ReceiptManifest");
                    v37 = SavageSafeRetain(v56);
                    v57 = CFDictionaryGetValue(v37, @"SEP");
                    if (v57)
                    {
                      v58 = v57;
                      v59 = CFGetTypeID(v57);
                      if (v59 == CFDictionaryGetTypeID())
                      {
                        v60 = CFDictionaryGetValue(v58, @"Digest");
                        v61 = CFCopyDescription(v60);
                        if (v61)
                        {
                          v62 = v61;
                          if (CFStringGetCString(v61, logString, 4096, 0))
                          {
                            v63 = logString;
                          }

                          else
                          {
                            v63 = "No C string description available.";
                          }

                          SavageRestoreInfoLog("%s [input]: SEP Digest from ReceiptManifest - %s \n", "SavageUpdaterCreateRequest", v63);
                          CFRelease(v62);
                        }

                        else
                        {
                          SavageRestoreInfoLog("%s [input]: SEP Digest from ReceiptManifest - %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                        }
                      }
                    }

                    if (v37)
                    {
                      if (CFDictionaryContainsKey(v10, @"YonkersDeviceInfo"))
                      {
                        v64 = CFDictionaryGetValue(v10, @"YonkersDeviceInfo");
                        v38 = SavageSafeRetain(v64);
                        YonkersRequestDictForTATSU = CreateYonkersRequestDictForTATSU(v38, v5, v193, v37, &allocator);
                        if (YonkersRequestDictForTATSU || !allocator)
                        {
                          CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterCreateRequest: CreateYonkersRequestDictForTATSU fails.", YonkersRequestDictForTATSU, a1, @"YonkersErrorDomain");
LABEL_83:
                          v39 = 0;
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v38 = 0;
                      }

                      if (CFDictionaryContainsKey(v10, @"JasmineIR1DeviceInfo"))
                      {
                        v71 = CFDictionaryGetValue(v10, @"JasmineIR1DeviceInfo");
                        v39 = SavageSafeRetain(v71);
                        JasmineIRRequestDictForTATSU = CreateJasmineIRRequestDictForTATSU(v39, v5, v192, v191, v37, &allocator);
                        if (JasmineIRRequestDictForTATSU || !allocator)
                        {
                          CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterCreateRequest: CreateJasmineIRRequestDictForTATSU fails.", JasmineIRRequestDictForTATSU, a1, @"JasmineIRErrorDomain");
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v39 = 0;
                      }

                      if (!CFDictionaryContainsKey(v10, @"Savage,UID"))
                      {
                        v78 = allocator;
                        goto LABEL_246;
                      }

                      v73 = v37;
                      v74 = v39;
                      v75 = v38;
                      v76 = cf;
                      *buffer = 0;
                      v195 = 0;
                      v196 = 0;
                      Mutable = CFDataCreateMutable(0, 0);
                      v77 = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                      theDict = v76;
                      v185 = v75;
                      if (v76)
                      {
                        if (allocator)
                        {
                          v76 = SavageSafeRetain(allocator);
LABEL_108:
                          v79 = CFDictionaryGetValue(v5, @"Savage,ChipID");
                          v39 = v74;
                          if (v79)
                          {
                            v80 = v79;
                            v187 = v77;
                            v81 = CFGetTypeID(v79);
                            v37 = v73;
                            if (v81 == CFStringGetTypeID())
                            {
                              v82 = Mutable;
                              if (!SavageCFStringToUInt32(v80, buffer, 0))
                              {
                                goto LABEL_273;
                              }

                              SavageCFDictionarySetInteger32(v76, @"Savage,ChipID", *buffer);
                              v83 = CFDictionaryGetValue(v5, @"Savage,PatchEpoch");
                              if (!v83 || (v84 = v83, v85 = CFGetTypeID(v83), v85 != CFStringGetTypeID()))
                              {
LABEL_272:
                                v183 = 17;
LABEL_274:
                                RelevantMeasurementTags = v183;
                                goto LABEL_237;
                              }

                              if (!SavageCFStringToUInt32(v84, buffer, 0))
                              {
LABEL_273:
                                v183 = 11;
                                goto LABEL_274;
                              }

                              SavageCFDictionarySetInteger32(v76, @"Savage,PatchEpoch", *buffer);
                              v86 = CFDictionaryGetValue(v10, @"Savage,ChipID");
                              if (v86 && (v87 = v86, v88 = CFGetTypeID(v86), v88 == CFDataGetTypeID()))
                              {
                                v198.location = 0;
                                v198.length = 4;
                                CFDataGetBytes(v87, v198, buffer);
                                *buffer = bswap32(*buffer);
                                v89 = *MEMORY[0x29EDB8F00];
                                if (*buffer >= 0x5065u)
                                {
                                  CFDictionaryAddValue(v76, @"@Brunor,Ticket", *MEMORY[0x29EDB8F00]);
                                  v90 = @"Brunor,FdrRootCaDigest";
                                  v91 = v76;
                                  v92 = Mutable;
                                  goto LABEL_120;
                                }
                              }

                              else
                              {
                                v89 = *MEMORY[0x29EDB8F00];
                              }

                              v90 = @"@Savage,Ticket";
                              v91 = v76;
                              v92 = v89;
LABEL_120:
                              CFDictionaryAddValue(v91, v90, v92);
                              v93 = CFDictionaryGetValue(v10, @"Savage,ProductionMode");
                              if (v93)
                              {
                                v94 = v93;
                                v95 = CFGetTypeID(v93);
                                if (v95 == CFBooleanGetTypeID())
                                {
                                  v96 = CFBooleanGetValue(v94);
                                  v189 = *MEMORY[0x29EDB8EF8];
                                  v97 = v96 ? v89 : *MEMORY[0x29EDB8EF8];
                                  CFDictionaryAddValue(v76, @"Savage,ProductionMode", v97);
                                  v98 = CFDictionaryGetValue(v10, @"Savage,UID");
                                  if (v98)
                                  {
                                    v99 = v98;
                                    v100 = CFGetTypeID(v98);
                                    if (v100 == CFDataGetTypeID())
                                    {
                                      CFDictionaryAddValue(v76, @"Savage,UID", v99);
                                      v101 = CFDictionaryGetValue(v10, @"Savage,Nonce");
                                      if (v101)
                                      {
                                        v102 = v101;
                                        v103 = CFGetTypeID(v101);
                                        if (v103 == CFDataGetTypeID())
                                        {
                                          CFDictionaryAddValue(v76, @"Savage,Nonce", v102);
                                          RelevantMeasurementTags = GetRelevantMeasurementTags(v10, &v196, &v195);
                                          if (!v196 || !v195)
                                          {
                                            goto LABEL_236;
                                          }

                                          v104 = CFDictionaryGetValue(theDict, @"MeasurementDictPatch");
                                          if (v104)
                                          {
                                            v105 = v104;
                                            v106 = CFGetTypeID(v104);
                                            if (v106 == CFDictionaryGetTypeID())
                                            {
                                              CFDictionaryAddValue(v76, v196, v105);
                                              v107 = CFDictionaryGetValue(v37, @"SEP");
                                              if (v107)
                                              {
                                                v108 = v107;
                                                v109 = CFGetTypeID(v107);
                                                if (v109 == CFDictionaryGetTypeID())
                                                {
                                                  v110 = CFDictionaryGetValue(v108, @"Digest");
                                                  if (v110)
                                                  {
                                                    v111 = v110;
                                                    v112 = CFGetTypeID(v110);
                                                    if (v112 == CFDataGetTypeID())
                                                    {
                                                      CFDictionarySetValue(v187, @"Digest", v111);
                                                      CFDictionaryAddValue(v76, @"SEP", v187);
                                                    }
                                                  }
                                                }
                                              }

                                              v113 = CFDictionaryGetValue(v10, @"Brunor,HarvestWrap");
                                              if (v113)
                                              {
                                                v114 = v113;
                                                v115 = CFGetTypeID(v113);
                                                if (v115 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v114))
                                                  {
                                                    v116 = v89;
                                                  }

                                                  else
                                                  {
                                                    v116 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Brunor,HarvestWrap", v116);
                                                }
                                              }

                                              v117 = CFDictionaryGetValue(v10, @"Brunor,HarvestUnwrap");
                                              if (v117)
                                              {
                                                v118 = v117;
                                                v119 = CFGetTypeID(v117);
                                                if (v119 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v118))
                                                  {
                                                    v120 = v89;
                                                  }

                                                  else
                                                  {
                                                    v120 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Brunor,HarvestUnwrap", v120);
                                                }
                                              }

                                              v121 = CFDictionaryGetValue(v10, @"Brunor,Authenticate");
                                              if (v121)
                                              {
                                                v122 = v121;
                                                v123 = CFGetTypeID(v121);
                                                if (v123 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v122))
                                                  {
                                                    v124 = v89;
                                                  }

                                                  else
                                                  {
                                                    v124 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Brunor,Authenticate", v124);
                                                }
                                              }

                                              v125 = CFDictionaryGetValue(v10, @"Savage,ReadECKey");
                                              if (v125)
                                              {
                                                v126 = v125;
                                                v127 = CFGetTypeID(v125);
                                                if (v127 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v126))
                                                  {
                                                    v128 = v89;
                                                  }

                                                  else
                                                  {
                                                    v128 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,ReadECKey", v128);
                                                }
                                              }

                                              v129 = CFDictionaryGetValue(v10, @"Savage,WriteECKey");
                                              if (v129)
                                              {
                                                v130 = v129;
                                                v131 = CFGetTypeID(v129);
                                                if (v131 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v130))
                                                  {
                                                    v132 = v89;
                                                  }

                                                  else
                                                  {
                                                    v132 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,WriteECKey", v132);
                                                }
                                              }

                                              v133 = CFDictionaryGetValue(v10, @"Savage,WriteUID");
                                              if (v133)
                                              {
                                                v134 = v133;
                                                v135 = CFGetTypeID(v133);
                                                if (v135 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v134))
                                                  {
                                                    v136 = v89;
                                                  }

                                                  else
                                                  {
                                                    v136 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,WriteUID", v136);
                                                }
                                              }

                                              v137 = CFDictionaryGetValue(v10, @"Savage,WriteEpoch");
                                              if (v137)
                                              {
                                                v138 = v137;
                                                v139 = CFGetTypeID(v137);
                                                if (v139 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v138))
                                                  {
                                                    v140 = v89;
                                                  }

                                                  else
                                                  {
                                                    v140 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,WriteEpoch", v140);
                                                }
                                              }

                                              v141 = CFDictionaryGetValue(v10, @"Savage,ReadGID");
                                              if (v141)
                                              {
                                                v142 = v141;
                                                v143 = CFGetTypeID(v141);
                                                if (v143 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v142))
                                                  {
                                                    v144 = v89;
                                                  }

                                                  else
                                                  {
                                                    v144 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,ReadGID", v144);
                                                }
                                              }

                                              v145 = CFDictionaryGetValue(v10, @"Savage,ReadFWKey");
                                              if (v145)
                                              {
                                                v146 = v145;
                                                v147 = CFGetTypeID(v145);
                                                if (v147 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v146))
                                                  {
                                                    v148 = v89;
                                                  }

                                                  else
                                                  {
                                                    v148 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,ReadFWKey", v148);
                                                }
                                              }

                                              v149 = CFDictionaryGetValue(v10, @"Savage,AllowOfflineBoot");
                                              if (v149)
                                              {
                                                v150 = v149;
                                                v151 = CFGetTypeID(v149);
                                                if (v151 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v150))
                                                  {
                                                    v152 = v89;
                                                  }

                                                  else
                                                  {
                                                    v152 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,AllowOfflineBoot", v152);
                                                }
                                              }

                                              v153 = CFDictionaryGetValue(v10, @"Savage,TempDemote");
                                              if (v153)
                                              {
                                                v154 = v153;
                                                v155 = CFGetTypeID(v153);
                                                if (v155 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v154))
                                                  {
                                                    v156 = v89;
                                                  }

                                                  else
                                                  {
                                                    v156 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,TempDemote", v156);
                                                }
                                              }

                                              v157 = CFDictionaryGetValue(v10, @"Savage,AccessSensor");
                                              if (v157)
                                              {
                                                v158 = v157;
                                                v159 = CFGetTypeID(v157);
                                                if (v159 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v158))
                                                  {
                                                    v160 = v89;
                                                  }

                                                  else
                                                  {
                                                    v160 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,AccessSensor", v160);
                                                }
                                              }

                                              v161 = CFDictionaryGetValue(v10, @"Savage,AccessSecurity");
                                              if (v161)
                                              {
                                                v162 = v161;
                                                v163 = CFGetTypeID(v161);
                                                if (v163 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v162))
                                                  {
                                                    v164 = v89;
                                                  }

                                                  else
                                                  {
                                                    v164 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,AccessSecurity", v164);
                                                }
                                              }

                                              v165 = CFDictionaryGetValue(v10, @"Savage,FADemote");
                                              if (v165)
                                              {
                                                v166 = v165;
                                                v167 = CFGetTypeID(v165);
                                                if (v167 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v166))
                                                  {
                                                    v168 = v89;
                                                  }

                                                  else
                                                  {
                                                    v168 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,FADemote", v168);
                                                }
                                              }

                                              v169 = CFDictionaryGetValue(v10, @"Savage,DebugStatus");
                                              if (v169)
                                              {
                                                v170 = v169;
                                                v171 = CFGetTypeID(v169);
                                                if (v171 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v170))
                                                  {
                                                    v172 = v89;
                                                  }

                                                  else
                                                  {
                                                    v172 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,DebugStatus", v172);
                                                }
                                              }

                                              v173 = CFDictionaryGetValue(v10, @"Savage,Provisioning");
                                              if (v173)
                                              {
                                                v174 = v173;
                                                v175 = CFGetTypeID(v173);
                                                if (v175 == CFBooleanGetTypeID())
                                                {
                                                  if (CFBooleanGetValue(v174))
                                                  {
                                                    v176 = v89;
                                                  }

                                                  else
                                                  {
                                                    v176 = v189;
                                                  }

                                                  CFDictionaryAddValue(v76, @"Savage,Provisioning", v176);
                                                }
                                              }

                                              if (!allocator)
                                              {
                                                allocator = SavageSafeRetain(v76);
                                              }

                                              goto LABEL_236;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                RelevantMeasurementTags = 17;
LABEL_236:
                                v82 = Mutable;
LABEL_237:
                                v77 = v187;
                                goto LABEL_238;
                              }

                              goto LABEL_272;
                            }

                            RelevantMeasurementTags = 17;
                            v77 = v187;
                            v82 = Mutable;
LABEL_238:
                            if (v82)
                            {
                              CFRelease(v82);
                            }

                            if (v77)
                            {
                              CFRelease(v77);
                            }

                            if (v76)
                            {
                              CFRelease(v76);
                            }

                            v38 = v185;
                            if (RelevantMeasurementTags || (v78 = allocator) == 0)
                            {
                              CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterCreateRequest: CreateRequestDictForTATSU fails.", RelevantMeasurementTags, a1, @"SavageErrorDomain");
                              goto LABEL_84;
                            }

LABEL_246:
                            v177 = CFCopyDescription(v78);
                            if (v177)
                            {
                              v178 = v177;
                              CString = CFStringGetCString(v177, logString, 4096, 0);
                              v180 = "No C string description available.";
                              if (CString)
                              {
                                v180 = logString;
                              }

                              SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterCreateRequest", v180);
                              CFRelease(v178);
                            }

                            else
                            {
                              SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                            }

                            goto LABEL_251;
                          }

                          RelevantMeasurementTags = 17;
LABEL_271:
                          v37 = v73;
                          v82 = Mutable;
                          goto LABEL_238;
                        }

                        v76 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                        if (v76)
                        {
                          goto LABEL_108;
                        }

                        v182 = 3;
                      }

                      else
                      {
                        v182 = 2;
                      }

                      RelevantMeasurementTags = v182;
                      v39 = v74;
                      goto LABEL_271;
                    }
                  }

                  v32 = @"SavageErrorDomain";
                  v33 = "SavageUpdaterCreateRequest: ReceiptManifest is missing in input options";
                  v46 = 6;
LABEL_80:
                  v66 = a1;
LABEL_81:
                  CFErrorWithDomain = createCFErrorWithDomain(v33, v46, v66, v32);
                  v37 = 0;
                  goto LABEL_82;
                }

                v14 = CFDictionaryGetValue(a1, @"FirmwareData");
                v15 = CFCopyDescription(v14);
                if (v15)
                {
                  v16 = v15;
                  if (CFStringGetCString(v15, logString, 4096, 0))
                  {
                    v17 = logString;
                  }

                  else
                  {
                    v17 = "No C string description available.";
                  }

                  SavageRestoreInfoLog("%s [input]: FirmwareData %s \n", "SavageUpdaterCreateRequest", v17);
                  CFRelease(v16);
                  if (v14)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  SavageRestoreInfoLog("%s [input]: FirmwareData %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                  if (v14)
                  {
LABEL_20:
                    v18 = CFGetTypeID(v14);
                    if (v18 == CFDictionaryGetTypeID())
                    {
                      v19 = CFDictionaryGetValue(v14, @"SavageFirmware");
                      v20 = SavageSafeRetain(v19);
                      if (v20)
                      {
                        v21 = v20;
                        v22 = CreateMeasurementDict(v20, &cf);
                        CFRelease(v21);
                        if (v22)
                        {
                          v32 = @"SavageErrorDomain";
                          v33 = "SavageUpdaterCreateRequest: CreateMeasurementDict fails for Savage.";
                          goto LABEL_281;
                        }
                      }

                      v23 = CFDictionaryGetValue(v14, @"YonkersFirmware");
                      v24 = SavageSafeRetain(v23);
                      if (v24)
                      {
                        v25 = v24;
                        v22 = CreateYonkersMeasurementDict(v24, &v193);
                        CFRelease(v25);
                        if (v22)
                        {
                          v32 = @"YonkersErrorDomain";
                          v33 = "SavageUpdaterCreateRequest: CreateMeasurementDict fails for Yonkers.";
                          goto LABEL_281;
                        }
                      }

                      v26 = CFDictionaryGetValue(v14, @"JasmineIR1Firmware");
                      v27 = SavageSafeRetain(v26);
                      if (v27)
                      {
                        v28 = v27;
                        v22 = CreateJasmineIRMeasurementDict(v27, &v192);
                        CFRelease(v28);
                        if (v22)
                        {
                          v32 = @"JasmineIRErrorDomain";
                          v33 = "SavageUpdaterCreateRequest: CreateMeasurementDict fails for JasmineIR.";
                          goto LABEL_281;
                        }
                      }

                      v29 = CFDictionaryGetValue(v14, @"JasmineIR1FirmwareVT");
                      v30 = SavageSafeRetain(v29);
                      if (v30)
                      {
                        v31 = v30;
                        v22 = CreateJasmineIRMeasurementDictVT(v30, &v191);
                        CFRelease(v31);
                        if (v22)
                        {
                          v32 = @"JasmineIRErrorDomain";
                          v33 = "SavageUpdaterCreateRequest: CreateMeasurementDict fails for JasmineIR for VT Patch.";
LABEL_281:
                          v46 = v22;
LABEL_282:
                          v66 = v14;
                          goto LABEL_81;
                        }
                      }
                    }

                    else
                    {
                      v40 = CFGetTypeID(v14);
                      if (v40 == CFDataGetTypeID())
                      {
                        v41 = SavageSafeRetain(v14);
                        v42 = CreateMeasurementDict(v41, &cf);
                        if (v41)
                        {
                          CFRelease(v41);
                        }

                        if (v42)
                        {
                          v32 = @"SavageErrorDomain";
                          v33 = "SavageUpdaterCreateRequest: CreateMeasurementDict fails for Savage (Old way).";
                          v46 = v42;
                          goto LABEL_282;
                        }
                      }
                    }

                    v43 = CFCopyDescription(cf);
                    if (v43)
                    {
                      v44 = v43;
                      if (CFStringGetCString(v43, logString, 4096, 0))
                      {
                        v45 = logString;
                      }

                      else
                      {
                        v45 = "No C string description available.";
                      }

                      SavageRestoreInfoLog("%s [input]: SavageMeasurementDict - %s \n", "SavageUpdaterCreateRequest", v45);
                      CFRelease(v44);
                    }

                    else
                    {
                      SavageRestoreInfoLog("%s [input]: SavageMeasurementDict - %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                    }

                    v47 = CFCopyDescription(v193);
                    if (v47)
                    {
                      v48 = v47;
                      if (CFStringGetCString(v47, logString, 4096, 0))
                      {
                        v49 = logString;
                      }

                      else
                      {
                        v49 = "No C string description available.";
                      }

                      SavageRestoreInfoLog("%s [input]: YonkersMeasurementDict - %s \n", "SavageUpdaterCreateRequest", v49);
                      CFRelease(v48);
                    }

                    else
                    {
                      SavageRestoreInfoLog("%s [input]: YonkersMeasurementDict - %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                    }

                    v50 = CFCopyDescription(v192);
                    if (v50)
                    {
                      v51 = v50;
                      if (CFStringGetCString(v50, logString, 4096, 0))
                      {
                        v52 = logString;
                      }

                      else
                      {
                        v52 = "No C string description available.";
                      }

                      SavageRestoreInfoLog("%s [input]: JasmineIRMeasurementDict - %s \n", "SavageUpdaterCreateRequest", v52);
                      CFRelease(v51);
                    }

                    else
                    {
                      SavageRestoreInfoLog("%s [input]: JasmineIRMeasurementDict - %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                    }

                    v53 = CFCopyDescription(v191);
                    if (v53)
                    {
                      v54 = v53;
                      if (CFStringGetCString(v53, logString, 4096, 0))
                      {
                        v55 = logString;
                      }

                      else
                      {
                        v55 = "No C string description available.";
                      }

                      SavageRestoreInfoLog("%s [input]: JasmineIRVTMeasurementDict - %s \n", "SavageUpdaterCreateRequest", v55);
                      CFRelease(v54);
                    }

                    else
                    {
                      SavageRestoreInfoLog("%s [input]: JasmineIRVTMeasurementDict - %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
                    }

                    goto LABEL_65;
                  }
                }

                v32 = @"SavageErrorDomain";
                v33 = "SavageUpdaterCreateRequest: kSavageOptionFirmwareData is NULL in input options";
                v46 = 2;
                goto LABEL_80;
              }
            }

            else
            {
              SavageRestoreInfoLog("%s [input]: DeviceInfo %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
              if (v10)
              {
                goto LABEL_14;
              }
            }
          }

          CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterCreateRequest: Cannot get DeviceInfo", 2u, a1, @"SavageErrorDomain");
          v37 = 0;
          v10 = 0;
LABEL_82:
          v38 = 0;
          goto LABEL_83;
        }
      }

      else
      {
        SavageRestoreInfoLog("%s [input]: BuildIdentity %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
        if (v5)
        {
          goto LABEL_8;
        }
      }
    }

    v34 = "SavageUpdaterCreateRequest: BuildIdentity is NULL in input options";
    v35 = a1;
  }

  else
  {
    v34 = "SavageUpdaterCreateRequest: options is NULL";
    v35 = 0;
  }

  CFErrorWithDomain = createCFErrorWithDomain(v34, 2u, v35, @"SavageErrorDomain");
  v37 = 0;
  v10 = 0;
  v38 = 0;
  v39 = 0;
  v5 = 0;
LABEL_84:
  if (a2 && CFErrorWithDomain)
  {
    *a2 = SavageSafeRetain(CFErrorWithDomain);
    v67 = CFErrorCopyDescription(CFErrorWithDomain);
    if (v67)
    {
      v68 = v67;
      v69 = CFStringGetCString(v67, logString, 4096, 0);
      v70 = "No C string description available.";
      if (v69)
      {
        v70 = logString;
      }

      SavageRestoreInfoLog("%s [error]: %s \n", "SavageUpdaterCreateRequest", v70);
      CFRelease(v68);
    }

    else
    {
      SavageRestoreInfoLog("%s [error]: %s \n", "SavageUpdaterCreateRequest", "No C string description available.");
    }
  }

  else if (!CFErrorWithDomain)
  {
    if (!v37)
    {
      goto LABEL_252;
    }

LABEL_251:
    CFRelease(v37);
    goto LABEL_252;
  }

  CFRelease(CFErrorWithDomain);
  if (v37)
  {
    goto LABEL_251;
  }

LABEL_252:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v193)
  {
    CFRelease(v193);
    v193 = 0;
  }

  if (v192)
  {
    CFRelease(v192);
    v192 = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return allocator;
}

const char *SavageRestoreInfoLog(const char *a1, ...)
{
  va_start(va, a1);
  result = MEMORY[0x2A1C7C4A8](a1);
  v4 = *MEMORY[0x29EDCA608];
  if (logSinkFunc)
  {
    vsnprintf(__str, 0x1000uLL, result, va);
    result = logSinkFunc(logContext, __str);
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

CFTypeRef CreateFileData(const __CFDictionary *a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  v6 = CFCopyDescription(a1);
  if (v6)
  {
    v7 = v6;
    Length = CFStringGetLength(v6);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = malloc(MaximumSizeForEncoding + 1);
    v11 = CFStringGetCString(v7, v10, MaximumSizeForEncoding, 0x8000100u) ? v10 : "No C string description available.";
    SavageRestoreInfoLog("%s [input]: Input Options - %s \n", "CreateFileData", v11);
    CFRelease(v7);
    if (v10)
    {
      free(v10);
    }
  }

  Value = CFDictionaryGetValue(a1, @"BundleDataDict");
  if (!Value)
  {
    SavageRestoreInfoLog("%s: Host side restoreInfo path \n", "CreateFileData");
    v20 = CFDictionaryGetValue(a1, @"BuildIdentity");
    v21 = SavageSafeRetain(v20);
    v19 = v21;
    if (v21)
    {
      v22 = CFDictionaryGetValue(v21, a2);
      v23 = SavageSafeRetain(v22);
      v16 = v23;
      if (v23)
      {
        v24 = CFDictionaryGetValue(v23, @"Info");
        v25 = SavageSafeRetain(v24);
        v15 = v25;
        if (v25)
        {
          v26 = CFDictionaryGetValue(v25, @"Path");
          v18 = SavageSafeRetain(v26);
          if (v18)
          {
            v27 = CFDictionaryGetValue(a1, @"BundlePath");
            v17 = SavageSafeRetain(v27);
            if (v17)
            {
              v28 = AMSupportPlatformCopyURLWithAppendedComponent();
              v36 = "CreateFileData: Fail to run AMSupportPlatformCopyURLWithAppendedComponent with srcBundleURL";
            }

            else
            {
              v36 = "CreateFileData: Missing kSavageOptionSourceBundlePath";
              v28 = 10;
            }

            CFErrorWithDomain = createCFErrorWithDomain(v36, v28, a1, @"SavageErrorDomain");
          }

          else
          {
            CFErrorWithDomain = createCFErrorWithDomain("CreateFileData: Missing kSavageBuildIdentityPathKey", 0xCu, a1, @"SavageErrorDomain");
            v17 = 0;
          }

          goto LABEL_42;
        }

        CFErrorWithDomain = createCFErrorWithDomain("CreateFileData: Missing kSavageBuildIdentityInfoKey", 0xCu, a1, @"SavageErrorDomain");
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
        CFErrorWithDomain = createCFErrorWithDomain(CStringPtr, 0xAu, a1, @"SavageErrorDomain");
        v15 = 0;
      }
    }

    else
    {
      CFErrorWithDomain = createCFErrorWithDomain("CreateFileData: Missing kSavageOptionBuildIdentity", 0xAu, a1, @"SavageErrorDomain");
      v15 = 0;
      v16 = 0;
    }

    v17 = 0;
    v18 = 0;
    goto LABEL_42;
  }

  v13 = Value;
  SavageRestoreInfoLog("%s: Device side restoreInfo path \n", "CreateFileData");
  v14 = CFDictionaryGetValue(v13, a2);
  cf = SavageSafeRetain(v14);
  if (cf)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v29 = CFCopyDescription(cf);
    if (!v29)
    {
      SavageRestoreInfoLog("%s [output]: %s \n", "CreateFileData", "No C string description available.");
      goto LABEL_23;
    }

    v30 = v29;
    if (CFStringGetCString(v29, logString, 4096, 0))
    {
      v31 = logString;
    }

    else
    {
      v31 = "No C string description available.";
    }

    SavageRestoreInfoLog("%s [output]: %s \n", "CreateFileData", v31);
    v32 = v30;
    goto LABEL_22;
  }

  CFErrorWithDomain = createCFErrorWithDomain("CreateFileData: bundleDataDict missing expected tag", 0x13u, a1, @"SavageErrorDomain");
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_42:
  if (a3 && CFErrorWithDomain)
  {
    *a3 = SavageSafeRetain(CFErrorWithDomain);
    v37 = CFErrorCopyDescription(CFErrorWithDomain);
    if (v37)
    {
      v38 = v37;
      CString = CFStringGetCString(v37, logString, 4096, 0);
      v40 = logString;
      if (!CString)
      {
        v40 = "No C string description available.";
      }

      SavageRestoreInfoLog("%s [error]: %s \n", "CreateFileData", v40);
      CFRelease(v38);
    }

    else
    {
      SavageRestoreInfoLog("%s [error]: %s \n", "CreateFileData", "No C string description available.");
    }

    goto LABEL_51;
  }

  if (CFErrorWithDomain)
  {
LABEL_51:
    v32 = CFErrorWithDomain;
LABEL_22:
    CFRelease(v32);
  }

LABEL_23:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return cf;
}

uint64_t CreateMeasurementDict(const __CFData *a1, CFTypeRef *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  *buffer = 0;
  v18 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = MEMORY[0x29EDB9010];
  v6 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *md = 0u;
  v21 = 0u;
  v8 = CFDictionaryCreateMutable(0, 0, v5, v6);
  v9 = 0;
  if (v8)
  {
    v10 = Mutable == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 2;
    if (a1 && a2)
    {
      v23.location = 0;
      v23.length = 16;
      CFDataGetBytes(a1, v23, buffer);
      if (*&buffer[4])
      {
        v9 = calloc(*&buffer[4], 1uLL);
        if (v9)
        {
          v24.length = *&buffer[4];
          v24.location = 16;
          CFDataGetBytes(a1, v24, v9);
          v12 = *&buffer[4];
          if (!(*&buffer[4] >> 20))
          {
            CC_SHA256_Init(&c);
            CC_SHA256_Update(&c, v9, v12);
            CC_SHA256_Final(md, &c);
          }

          v13 = CFDataCreate(v4, md, 32);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(Mutable, @"Digest", v13);
            CFDictionarySetValue(v8, @"MeasurementDictPatch", Mutable);
            *a2 = SavageSafeRetain(v8);
            CFRelease(v14);
            v11 = 0;
          }

          else
          {
            v11 = 8;
          }
        }

        else
        {
          v11 = 3;
        }
      }

      else
      {
        v9 = 0;
        v11 = 4;
      }
    }

    goto LABEL_13;
  }

  v11 = 3;
  if (Mutable)
  {
LABEL_13:
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    free(v9);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v11;
}

CFTypeRef OUTLINED_FUNCTION_1_0(int a1, const __CFString *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFError *a18)
{

  return CreateFileData(v18, a2, &a18);
}

uint64_t OUTLINED_FUNCTION_2_0(const __CFString *a1)
{

  return CFStringGetCString(a1, v1, 4096, 0);
}

CFErrorRef OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return createCFErrorWithDomain(a1, 4u, v4, a4);
}

CFTypeRef SavageSafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void SavageCFDictionarySetInteger32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    SavageCFDictionarySetInteger32_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
}

void SavageCFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void SavageCFDictionarySetData(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    SavageCFDictionarySetData_cold_1();
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);

  CFRelease(v7);
}

uint64_t SavageCFStringToUInt32(const __CFString *a1, _DWORD *a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = CFStringGetCString(a1, buffer, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtol(buffer, 0, a3);
    result = *__error() == 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GetYonkersFabRevisionTags(int a1, int a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v6 = 0;
  v7 = 0;
  while (dword_299F4D9C0[v7] != a1 && dword_299F4D9E0[v7] != a1 && dword_299F4DA00[v7] != a1)
  {
    ++v7;
    v6 -= 2;
    if (v7 == 8)
    {
      return 2;
    }
  }

  v9 = a2 != 0;
  v10 = v9 | (8 * (v7 < 4));
  v11 = *MEMORY[0x29EDB8ED8];
  v12 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Yonkers,SysTopPatch%X", (v9 - v6));
  v13 = CFStringCreateWithFormat(v11, 0, @"Yonkers,SysTopPatch%X", v10);
  if (a3 && v12)
  {
    *a3 = CFRetain(v12);
  }

  if (a4 && v13)
  {
    *a4 = CFRetain(v13);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    if (v12)
    {
      CFRelease(v12);
    }

    if (!v13)
    {
      return 0;
    }
  }

  CFRelease(v13);
  return 0;
}

uint64_t GetJasmineIRFabRevisionTags(int a1, int a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v6 = 0;
  v7 = a1 & 0xFFFFFFEF;
  v8 = &dword_299F4DA40;
  v9 = &dword_299F4DA20;
  while (1)
  {
    v10 = *v9++;
    if (v10 == a1 || *v8 == a1)
    {
      break;
    }

    v6 -= 2;
    ++v8;
    if (v6 == -16)
    {
      return 2;
    }
  }

  v12 = a2 != 0;
  v13 = *MEMORY[0x29EDB8ED8];
  v14 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"JasmineIR1,FwPatch%X", v12 - v6);
  v15 = 0;
  if (v7 == 37024)
  {
    v15 = CFStringCreateWithFormat(v13, 0, @"JasmineIR1,VideoPatch%X", v12);
  }

  if (a3 && v14)
  {
    *a3 = CFRetain(v14);
  }

  if (a4 && v15)
  {
    *a4 = CFRetain(v15);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    if (v14)
    {
      CFRelease(v14);
    }

    if (!v15)
    {
      return 0;
    }
  }

  CFRelease(v15);
  return 0;
}

const void *_computePatchDigest(const void *result, unint64_t a2, unsigned __int8 *a3)
{
  if (result && a3)
  {
    v4 = a2;
    if (a2 <= 0x100000)
    {
      v5 = result;
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, v5, v4);
      return CC_SHA256_Final(a3, &c);
    }
  }

  return result;
}

uint64_t CreateJasmineIRRequestDictForTATSU(const __CFDictionary *a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  key = 0;
  valuePtr = 0;
  Mutable = CFDataCreateMutable(0, 0);
  v12 = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = 0;
  v14 = 2;
  if (!a1 || !a2 || !a3 || !a5)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_52;
  }

  v67 = a5;
  v15 = 0;
  v16 = 0;
  if (!a6 || ((v70 = a6, v15 = OUTLINED_FUNCTION_0(), v13 = OUTLINED_FUNCTION_0(), !*a6) ? (v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020])) : (v17 = SavageSafeRetain(*a6)), (v16 = v17, v14 = 3, !v17) || !v15 || !v13))
  {
LABEL_52:
    v47 = key;
    if (!key)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v69 = v15;
  v18 = *MEMORY[0x29EDB8F00];
  CFDictionaryAddValue(v17, @"@JasmineIR1,Ticket", *MEMORY[0x29EDB8F00]);
  CFDictionaryAddValue(v16, @"JasmineIR1,FdrRootCaDigest", Mutable);
  Value = CFDictionaryGetValue(a2, @"JasmineIR1,BoardID");
  if (!Value)
  {
    goto LABEL_73;
  }

  v20 = Value;
  v21 = CFGetTypeID(Value);
  if (v21 != CFNumberGetTypeID())
  {
    goto LABEL_73;
  }

  CFDictionaryAddValue(v16, @"JasmineIR1,BoardID", v20);
  v22 = CFDictionaryGetValue(a2, @"JasmineIR1,PatchEpoch");
  if (!v22)
  {
    goto LABEL_73;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  if (v24 != CFNumberGetTypeID())
  {
    goto LABEL_73;
  }

  CFDictionaryAddValue(v16, @"JasmineIR1,PatchEpoch", v23);
  v25 = CFDictionaryGetValue(a1, @"JasmineIR1,ChipID");
  if (!v25)
  {
    goto LABEL_73;
  }

  v26 = v25;
  v27 = CFGetTypeID(v25);
  if (v27 != CFNumberGetTypeID())
  {
    goto LABEL_73;
  }

  CFDictionaryAddValue(v16, @"JasmineIR1,ChipID", v26);
  CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr + 4);
  v28 = CFDictionaryGetValue(a1, @"JasmineIR1,ProductionMode");
  if (!v28)
  {
    goto LABEL_73;
  }

  v29 = v28;
  v30 = CFGetTypeID(v28);
  if (v30 != CFBooleanGetTypeID())
  {
    goto LABEL_73;
  }

  v66 = v12;
  v31 = Mutable;
  v32 = CFBooleanGetValue(v29);
  v33 = *MEMORY[0x29EDB8EF8];
  if (!v32)
  {
    v18 = *MEMORY[0x29EDB8EF8];
  }

  CFDictionaryAddValue(v16, @"JasmineIR1,ProductionMode", v18);
  v34 = CFDictionaryGetValue(a1, @"JasmineIRIsProvisioned");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v35);
    }
  }

  v37 = CFDictionaryGetValue(a1, @"JasmineIR1,WriteECID");
  if (v37)
  {
    v38 = v37;
    v39 = CFGetTypeID(v37);
    if (v39 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v38);
    }
  }

  v40 = CFDictionaryGetValue(a1, @"JasmineIR1,ECID");
  if (!v40)
  {
    goto LABEL_67;
  }

  v41 = v40;
  v42 = CFGetTypeID(v40);
  if (v42 != CFDataGetTypeID())
  {
    goto LABEL_67;
  }

  CFDictionaryAddValue(v16, @"JasmineIR1,ECID", v41);
  v43 = CFDictionaryGetValue(a1, @"JasmineIR1,Nonce");
  if (!v43)
  {
    goto LABEL_67;
  }

  v44 = v43;
  v45 = CFGetTypeID(v43);
  if (v45 != CFDataGetTypeID())
  {
    goto LABEL_67;
  }

  CFDictionaryAddValue(v16, @"JasmineIR1,Nonce", v44);
  JasmineIRMeasurementTags = GetJasmineIRMeasurementTags(a1, &key, &cf);
  v47 = key;
  v14 = 17;
  if (!JasmineIRMeasurementTags && key)
  {
    v48 = CFDictionaryGetValue(a1, @"JasmineIR1,FabRevision");
    if (!v48)
    {
LABEL_68:
      Mutable = v31;
      goto LABEL_69;
    }

    v49 = v48;
    v50 = CFGetTypeID(v48);
    if (v50 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v49, kCFNumberSInt32Type, &valuePtr);
      v51 = CFDictionaryGetValue(a3, @"MeasurementDictPatch");
      v52 = SavageSafeRetain(v51);
      if (v52)
      {
        v53 = v52;
        v54 = CFGetTypeID(v52);
        if (v54 != CFDictionaryGetTypeID())
        {
          goto LABEL_71;
        }

        CFDictionaryAddValue(v53, @"EPRO", v18);
        CFDictionaryAddValue(v53, @"FabRevision", v49);
        CFDictionaryAddValue(v16, key, v53);
        CFRelease(v53);
        Mutable = v31;
        if (!a4)
        {
          goto LABEL_42;
        }

        v55 = CFDictionaryGetValue(a4, @"MeasurementDictPatch");
        v56 = SavageSafeRetain(v55);
        if (v56)
        {
          v53 = v56;
          v57 = CFGetTypeID(v56);
          if (v57 == CFDictionaryGetTypeID())
          {
            CFDictionaryAddValue(v53, @"EPRO", v18);
            CFDictionaryAddValue(v53, @"FabRevision", v49);
            CFDictionaryAddValue(v16, cf, v53);
            CFRelease(v53);
            Mutable = v31;
LABEL_42:
            v58 = CFDictionaryGetValue(v67, @"SEP");
            v59 = SavageSafeRetain(v58);
            v12 = v66;
            if (!v59)
            {
              v60 = CFDictionaryGetValue(a2, @"SEP");
              v59 = SavageSafeRetain(v60);
              if (!v59)
              {
LABEL_49:
                JasmineIRAddEntitlementsToTATSURequestDict(a1, v16);
                v14 = 0;
                if (!*v70)
                {
                  *v70 = SavageSafeRetain(v16);
                }

                goto LABEL_51;
              }
            }

            v53 = v59;
            v61 = CFGetTypeID(v59);
            if (v61 != CFDictionaryGetTypeID())
            {
LABEL_48:
              CFRelease(v53);
              goto LABEL_49;
            }

            v62 = CFDictionaryGetValue(v53, @"Digest");
            if (v62)
            {
              v63 = v62;
              v64 = CFGetTypeID(v62);
              if (v64 == CFDataGetTypeID())
              {
                CFDictionaryAddValue(v66, @"Digest", v63);
                CFDictionaryAddValue(v66, @"EPRO", v33);
                SavageCFDictionarySetInteger32(v66, @"FabRevision", 0xFFFF);
                CFDictionaryAddValue(v16, @"JasmineIR1,SepObject", v66);
                goto LABEL_48;
              }
            }

            goto LABEL_72;
          }

LABEL_71:
          Mutable = v31;
          v12 = v66;
LABEL_72:
          CFRelease(v53);
LABEL_73:
          v14 = 17;
          goto LABEL_51;
        }

        v14 = 17;
LABEL_69:
        v12 = v66;
LABEL_51:
        v15 = v69;
        goto LABEL_52;
      }
    }

LABEL_67:
    v14 = 17;
    goto LABEL_68;
  }

  Mutable = v31;
  v12 = v66;
  v15 = v69;
  if (key)
  {
LABEL_53:
    CFRelease(v47);
    key = 0;
  }

LABEL_54:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t CreateYonkersRequestDictForTATSU(const __CFDictionary *a1, const __CFDictionary *a2, CFDictionaryRef theDict, uint64_t a4, CFTypeRef *a5)
{
  Mutable = 0;
  v129 = 0;
  key = 0;
  HIDWORD(v128) = 0;
  v6 = 2;
  theDicta = a1;
  if (!a1 || !a2 || !theDict || !a4)
  {
    v10 = 0;
    goto LABEL_61;
  }

  v10 = 0;
  if (!a5)
  {
    goto LABEL_61;
  }

  Value = CFDictionaryGetValue(theDict, @"MeasurementDictPatch");
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v11 = *a5 ? SavageSafeRetain(*a5) : CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v11;
  v6 = 3;
  if (!v11 || !Mutable || !Value)
  {
    goto LABEL_61;
  }

  v12 = *MEMORY[0x29EDB8F00];
  CFDictionaryAddValue(v11, @"@Yonkers,Ticket", *MEMORY[0x29EDB8F00]);
  v13 = CFDictionaryGetValue(a2, @"Yonkers,BoardID");
  if (!v13)
  {
    goto LABEL_96;
  }

  v14 = CFGetTypeID(v13);
  TypeID = CFNumberGetTypeID();
  if (v14 != TypeID)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_5(TypeID, @"Yonkers,BoardID");
  v16 = CFDictionaryGetValue(a2, @"Yonkers,PatchEpoch");
  if (!v16)
  {
    goto LABEL_96;
  }

  v17 = CFGetTypeID(v16);
  v18 = CFNumberGetTypeID();
  if (v17 != v18)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_5(v18, @"Yonkers,PatchEpoch");
  v19 = CFDictionaryGetValue(theDicta, @"Yonkers,ChipID");
  if (!v19)
  {
    goto LABEL_96;
  }

  v20 = v19;
  v21 = CFGetTypeID(v19);
  v22 = CFNumberGetTypeID();
  if (v21 != v22)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_5(v22, @"Yonkers,ChipID");
  CFNumberGetValue(v20, kCFNumberSInt32Type, &v128 + 4);
  v23 = CFDictionaryGetValue(theDicta, @"Yonkers,ProductionMode");
  if (!v23)
  {
    goto LABEL_96;
  }

  v24 = v23;
  v25 = CFGetTypeID(v23);
  if (v25 != CFBooleanGetTypeID())
  {
    goto LABEL_96;
  }

  v26 = CFBooleanGetValue(v24);
  v27 = *MEMORY[0x29EDB8EF8];
  if (!v26)
  {
    v12 = *MEMORY[0x29EDB8EF8];
  }

  CFDictionaryAddValue(v10, @"Yonkers,ProductionMode", v12);
  v28 = CFDictionaryGetValue(theDicta, @"YonkersIsProvisioned");
  v115 = a5;
  v31 = !v28 || (v29 = v28, v30 = CFGetTypeID(v28), v30 != CFBooleanGetTypeID()) || CFBooleanGetValue(v29) != 0;
  v32 = CFDictionaryGetValue(theDicta, @"YonkersIsYmgt");
  v35 = !v32 || (v33 = v32, v34 = CFGetTypeID(v32), v34 != CFBooleanGetTypeID()) || CFBooleanGetValue(v33) == 0;
  HIDWORD(v111) = v35;
  v36 = CFDictionaryGetValue(theDicta, @"Yonkers,WriteECID");
  v39 = v36 && (v37 = v36, v38 = CFGetTypeID(v36), v38 == CFBooleanGetTypeID()) && CFBooleanGetValue(v37) != 0;
  v40 = CFDictionaryGetValue(theDicta, @"Yonkers,ECID");
  if (!v40)
  {
    goto LABEL_96;
  }

  v41 = CFGetTypeID(v40);
  v42 = CFDataGetTypeID();
  if (v41 != v42)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_5(v42, @"Yonkers,ECID");
  v43 = CFDictionaryGetValue(theDicta, @"Yonkers,Nonce");
  if (!v43)
  {
    goto LABEL_96;
  }

  v44 = CFGetTypeID(v43);
  v45 = CFDataGetTypeID();
  if (v44 != v45)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_5(v45, @"Yonkers,Nonce");
  YonkersMeasurementTags = GetYonkersMeasurementTags(theDicta, &key);
  v47 = key;
  v6 = 17;
  if (!YonkersMeasurementTags && key)
  {
    v48 = CFDictionaryGetValue(theDict, @"MeasurementDictPatch");
    v49 = SavageSafeRetain(v48);
    if (!v49)
    {
      goto LABEL_61;
    }

    v50 = v49;
    v51 = CFGetTypeID(v49);
    if (v51 == CFDictionaryGetTypeID())
    {
      v119 = Mutable;
      CFDictionaryAddValue(v50, @"EPRO", v12);
      v52 = CFDictionaryGetValue(theDicta, @"Yonkers,FabRevision");
      CFDictionaryAddValue(v50, @"FabRevision", v52);
      v53 = OUTLINED_FUNCTION_0_0();
      CFDictionaryAddValue(v53, v54, v55);
      CFRelease(v50);
      if (v31 || v39)
      {
        goto LABEL_43;
      }

      CFDictionaryRemoveValue(v10, key);
      switch(HIDWORD(v128))
      {
        case 0x914:
          OUTLINED_FUNCTION_2();
          if (v93)
          {
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          v97 = *v94;
          if (v93)
          {
            v98 = 8;
          }

          else
          {
            v98 = v95;
          }

          while (1)
          {
            v6 = 17;
            if (OUTLINED_FUNCTION_1(&unk_299F4D820, v111, v115, v119, theDicta, Value, v128, v129))
            {
              break;
            }

            if (!key)
            {
              break;
            }

            v106 = OUTLINED_FUNCTION_3(0, v99, v100, v101, v102, v103, v104, v105, v114, v118, v119, theDictd, v127);
            if (!v106)
            {
              break;
            }

            v50 = v106;
            v107 = CFGetTypeID(v106);
            if (v107 != CFDictionaryGetTypeID())
            {
LABEL_94:
              Mutable = v119;
              goto LABEL_95;
            }

            CFDictionarySetValue(v50, @"EPRO", v12);
            OUTLINED_FUNCTION_4();
            v108 = OUTLINED_FUNCTION_0_0();
            CFDictionarySetValue(v108, v109, v110);
            CFRelease(v50);
            if (++v96 >= v98)
            {
              goto LABEL_43;
            }
          }

          break;
        case 0x514:
          OUTLINED_FUNCTION_2();
          if (v75)
          {
            v78 = v77;
          }

          else
          {
            v78 = 0;
          }

          v79 = *v76;
          if (v75)
          {
            v80 = 8;
          }

          else
          {
            v80 = v77;
          }

          while (1)
          {
            v6 = 17;
            if (OUTLINED_FUNCTION_1(&unk_299F4D800, v111, v115, v119, theDicta, Value, v128, v129))
            {
              break;
            }

            if (!key)
            {
              break;
            }

            v88 = OUTLINED_FUNCTION_3(0, v81, v82, v83, v84, v85, v86, v87, v113, v117, v119, theDictc, v126);
            if (!v88)
            {
              break;
            }

            v50 = v88;
            v89 = CFGetTypeID(v88);
            if (v89 != CFDictionaryGetTypeID())
            {
              goto LABEL_94;
            }

            CFDictionarySetValue(v50, @"EPRO", v12);
            OUTLINED_FUNCTION_4();
            v90 = OUTLINED_FUNCTION_0_0();
            CFDictionarySetValue(v90, v91, v92);
            CFRelease(v50);
            if (++v78 >= v80)
            {
              goto LABEL_43;
            }
          }

          break;
        case 0x414:
          OUTLINED_FUNCTION_2();
          if (v56)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

          v60 = *v57;
          if (v56)
          {
            v61 = 6;
          }

          else
          {
            v61 = v58;
          }

          while (1)
          {
            v6 = 17;
            if (OUTLINED_FUNCTION_1(&unk_299F4D7E8, v111, v115, v119, theDicta, Value, v128, v129))
            {
              break;
            }

            if (!key)
            {
              break;
            }

            v69 = OUTLINED_FUNCTION_3(0, v62, v63, v64, v65, v66, v67, v68, v112, v116, v119, theDictb, v125);
            if (!v69)
            {
              break;
            }

            v50 = v69;
            v70 = CFGetTypeID(v69);
            if (v70 != CFDictionaryGetTypeID())
            {
              goto LABEL_94;
            }

            CFDictionarySetValue(v50, @"EPRO", v12);
            OUTLINED_FUNCTION_4();
            v71 = OUTLINED_FUNCTION_0_0();
            CFDictionarySetValue(v71, v72, v73);
            CFRelease(v50);
            if (++v59 >= v61)
            {
              goto LABEL_43;
            }
          }

          break;
        default:
LABEL_43:
          YonkersAddEntitlementsToTATSURequestDict(theDicta, v10);
          Mutable = v119;
          v6 = 0;
          if (!*v115)
          {
            *v115 = SavageSafeRetain(v10);
          }

          goto LABEL_61;
      }

      Mutable = v119;
LABEL_61:
      v47 = key;
      goto LABEL_62;
    }

LABEL_95:
    CFRelease(v50);
LABEL_96:
    v6 = 17;
    goto LABEL_61;
  }

LABEL_62:
  if (v47)
  {
    CFRelease(v47);
    key = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

CFDataRef SavageUpdaterCreateLocalCertificateSignature(CFDictionaryRef theDict, CFTypeRef *a2)
{
  v2 = theDict;
  v34 = 0;
  v35 = 0;
  v33 = xmmword_29F291B30;
  if (!theDict)
  {
    v30 = 0;
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(theDict, @"Savage,WriteUID");
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()) && CFBooleanGetValue(v5))
  {
    puts("Local Signing - Handling fusing option.");
    v7 = &unk_2A14F25C7;
  }

  else
  {
    v7 = &_MergedGlobals;
  }

  v8 = CFDictionaryGetValue(v2, @"Savage,ReadGID");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v9))
      {
        puts("Local Signing - Handling cert option.");
        v7 = &unk_2A14F263A;
      }
    }
  }

  v11 = CFDictionaryGetValue(v2, @"Savage,Nonce");
  v12 = v11;
  if (!v11)
  {
    goto LABEL_45;
  }

  v13 = CFGetTypeID(v11);
  if (v13 != CFDataGetTypeID())
  {
    goto LABEL_43;
  }

  v36.location = 0;
  v36.length = 16;
  CFDataGetBytes(v12, v36, v7 + 65);
  v14 = CFDictionaryGetValue(v2, @"Savage,ProductionMode");
  v12 = v14;
  if (!v14)
  {
    goto LABEL_45;
  }

  v15 = CFGetTypeID(v14);
  if (v15 != CFBooleanGetTypeID())
  {
LABEL_43:
    v30 = 0;
    v2 = 0;
LABEL_44:
    v29 = 0;
    v12 = 0;
    goto LABEL_36;
  }

  v7[25] = CFBooleanGetValue(v12) != 0;
  if (CFBooleanGetValue(v12))
  {
    v16 = CFDictionaryGetValue(v2, @"Savage,B0-Prod-Patch");
    if (!v16)
    {
      v17 = &kSavageTagMeasurementB2ProdPatch;
      goto LABEL_21;
    }

LABEL_19:
    v12 = v16;
    goto LABEL_22;
  }

  v16 = CFDictionaryGetValue(v2, @"Savage,B0-Dev-Patch");
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = &kSavageTagMeasurementB2DevPatch;
LABEL_21:
  v12 = CFDictionaryGetValue(v2, *v17);
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_22:
  v18 = CFGetTypeID(v12);
  if (v18 != CFDictionaryGetTypeID())
  {
    goto LABEL_43;
  }

  v19 = CFDictionaryGetValue(v12, @"Digest");
  v12 = v19;
  if (!v19)
  {
    goto LABEL_45;
  }

  v20 = CFGetTypeID(v19);
  if (v20 != CFDataGetTypeID() || CFDataGetLength(v12) != 32)
  {
    goto LABEL_43;
  }

  v37.length = CFDataGetLength(v12);
  v37.location = 0;
  CFDataGetBytes(v12, v37, v7 + 31);
  v21 = CFDictionaryGetValue(v2, @"Savage,ChipID");
  v12 = v21;
  if (!v21)
  {
    goto LABEL_45;
  }

  v22 = CFGetTypeID(v21);
  if (v22 != CFNumberGetTypeID() || !CFNumberGetValue(v12, kCFNumberSInt8Type, v7 + 4))
  {
    goto LABEL_43;
  }

  v23 = CFDictionaryGetValue(v2, @"Savage,UID");
  v12 = v23;
  if (!v23)
  {
LABEL_45:
    v30 = 0;
    v2 = 0;
    v29 = 0;
    goto LABEL_36;
  }

  v24 = CFGetTypeID(v23);
  if (v24 != CFDataGetTypeID())
  {
    goto LABEL_43;
  }

  v38.location = 0;
  v38.length = 16;
  CFDataGetBytes(v12, v38, v7 + 7);
  v12 = 0;
  if (_createDataSignature(0, v7, 0x73uLL, &v35, &v34, &v33))
  {
    v25 = "failed to Img4EncodeCreateManifest";
  }

  else
  {
    v25 = "manifest is null or zero manifesetLen";
    if (v35 && v34)
    {
      v26 = v34 + kSavageSignedLeafCertificate_len + 115;
      printf("Result of creating signature: outDataLen = %d, leafCertLen = %d, certLen = %d, manifestLen = %d \n", v34 + kSavageSignedLeafCertificate_len + 115, kSavageSignedLeafCertificate_len, 115, v34);
      v12 = calloc(1uLL, v26);
      memcpy(v12, &kSavageSignedLeafCertificate, kSavageSignedLeafCertificate_len);
      v27 = v12 + kSavageSignedLeafCertificate_len;
      memcpy(v27, v7, 0x73uLL);
      memcpy(v27 + 115, v35, v34);
      v28 = CFDataCreate(0, v12, v26);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v2 = 0;
        goto LABEL_36;
      }

      v25 = "failed to CFDataCreate for manifest data";
    }
  }

  CFErrorWithDomain = createCFErrorWithDomain(v25, 0xEu, v2, @"SavageErrorDomain");
  v2 = CFErrorWithDomain;
  v29 = 0;
  v30 = CFErrorWithDomain != 0;
  if (a2 && CFErrorWithDomain)
  {
    v29 = 0;
    *a2 = SavageSafeRetain(CFErrorWithDomain);
    v30 = 1;
  }

LABEL_36:
  if (v35)
  {
    free(v35);
    v35 = 0;
  }

  if (v12)
  {
    free(v12);
  }

  if (v30)
  {
    CFRelease(v2);
  }

  return v29;
}

uint64_t _computeDigestSHA256(const void *a1, unint64_t a2, unsigned __int8 *a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a3)
  {
    v6 = a2;
    if (a2 < 0x100000)
    {
      memset(&c, 0, sizeof(c));
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, a1, v6);
      return CC_SHA256_Final(a3, &c);
    }

    else
    {
      printf("Computing signature for buffer %p whose size 0x%08zx is too large.  Failing. \n", a1, a2);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void _loadAndMeasureVTFile(const char *a1, unsigned __int8 *a2, CFDataRef *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = fopen(a1, "rb");
  if (!v5)
  {
LABEL_10:
    v16 = *MEMORY[0x29EDCA608];
    return;
  }

  v6 = v5;
  fseeko(v5, 0, 2);
  v7 = ftello(v6);
  if (v7 < 0x100000)
  {
    v8 = v7;
    v9 = calloc(v7, 1uLL);
    if (v9)
    {
      v10 = v9;
      fseeko(v6, 0, 0);
      v11 = fread(v10, 1uLL, v8, v6);
      fclose(v6);
      if (v11 == v8)
      {
        v12 = 0;
        v13 = v10;
        v14 = &qword_299F4D988;
        do
        {
          v15 = *v14++;
          _computeDigestSHA256(v13, v15, &v18[v12]);
          v13 += v15;
          v12 += 32;
        }

        while (v12 != 224);
        _computeDigestSHA256(v18, 0xE0uLL, a2);
        if (a3)
        {
          *a3 = CFDataCreate(*MEMORY[0x29EDB8EE0], v10, v8);
        }
      }

      fclose(v6);
      free(v10);
      goto LABEL_10;
    }
  }

  v17 = *MEMORY[0x29EDCA608];

  fclose(v6);
}

uint64_t _createDataSignature(uint64_t a1, const void *a2, unint64_t a3, void *a4, size_t *a5, uint64_t *a6)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(v26, 0, sizeof(v26));
  v11 = MEMORY[0x29C2B6A40]();
  v12 = cczp_bitlen();
  v13 = (((v12 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 9;
  v25 = v13;
  v14 = (32 * *v11) | 0x10;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = (&v24 - v15);
  if (!a6)
  {
    goto LABEL_13;
  }

  v17 = 0xFFFFFFFFLL;
  if (!a4)
  {
    goto LABEL_12;
  }

  if (!a5)
  {
    goto LABEL_12;
  }

  v17 = 0xFFFFFFFFLL;
  if (!a2 || !a3)
  {
    goto LABEL_12;
  }

  if (!*a6 || !a6[1])
  {
LABEL_13:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v17 = _computeDigestSHA256(a2, a3, v26);
  *v16 = v11;
  v19 = *a6;
  v18 = a6[1];
  if (!ccec_der_import_priv())
  {
    v20 = calloc(1uLL, v13);
    if (v20)
    {
      v21 = v20;
      ccDRBGGetRngState();
      if (!ccec_sign())
      {
        *a4 = v21;
        *a5 = v25;
        printf("Result of creating signature: %d \n", v17);
        v17 = 0;
      }
    }
  }

LABEL_12:
  v22 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t _loadAndMeasureFile_cold_1(const void *a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  result = _computeDigestSHA256(a1, a2, a3);
  if (a4)
  {
    result = CFDataCreate(*MEMORY[0x29EDB8EE0], a1, a2);
    *a4 = result;
  }

  return result;
}

__CFString **SavageUpdaterCopyFirmware(const __CFDictionary *a1, void *a2)
{
  v127 = 0;
  v128 = 0;
  v125 = 0;
  cf = 0;
  *v123 = 0;
  *v124 = 0;
  v121 = 0;
  err = 0;
  *bytes = 0;
  v6 = &kSavageErrorDomain;
  if (!a1)
  {
    v92 = "SavageUpdaterCopyFirmware: options is NULL";
    v93 = 0;
    goto LABEL_107;
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!Value || (v2 = Value, v3 = CFGetTypeID(Value), v3 != CFDictionaryGetTypeID()))
  {
    v92 = "SavageUpdaterCopyFirmware: Missing device info";
    v93 = a1;
LABEL_107:
    createCFErrorWithDomain(v92, 2u, v93, @"SavageErrorDomain");
    v14 = 0;
    OUTLINED_FUNCTION_0_1();
    v25 = 0;
    v35 = 0;
    v12 = 0;
LABEL_127:
    OUTLINED_FUNCTION_3_0();
    v116 = 0;
    goto LABEL_128;
  }

  v9 = CFCopyDescription(v2);
  if (v9)
  {
    v10 = v9;
    if (CFStringGetCString(v9, logString, 4096, 0))
    {
      v11 = logString;
    }

    else
    {
      v11 = "No C string description available.";
    }

    SavageRestoreInfoLog("%s [input]: DeviceInfo %s \n", "SavageUpdaterCopyFirmware", v11);
    CFRelease(v10);
  }

  else
  {
    SavageRestoreInfoLog("%s [input]: DeviceInfo %s \n", "SavageUpdaterCopyFirmware", "No C string description available.");
  }

  v12 = SavageSafeRetain(v2);
  v13 = CFDictionaryGetValue(v12, @"YonkersDeviceInfo");
  if (!v13 || (v2 = v13, v3 = CFGetTypeID(v13), v3 != CFDictionaryGetTypeID()))
  {
    v14 = 0;
    v4 = 0;
    v25 = 0;
    v35 = 0;
    goto LABEL_22;
  }

  v14 = SavageSafeRetain(v2);
  YonkersMeasurementTags = GetYonkersMeasurementTags(v14, &cf);
  v2 = &kYonkersErrorDomain;
  if (YonkersMeasurementTags)
  {
    createCFErrorWithDomain("SavageUpdaterCopyFirmware: Didn't get yonkers patch measurement tags", YonkersMeasurementTags, v14, @"YonkersErrorDomain");
    OUTLINED_FUNCTION_0_1();
    v25 = 0;
    goto LABEL_117;
  }

  v22 = OUTLINED_FUNCTION_1_0(0, cf, v16, v17, v18, v19, v20, v21, v100, v103, v106, v111, v114, v117, theData, *bytes, v121, err);
  v25 = v22;
  if (err)
  {
    OUTLINED_FUNCTION_0_1();
    v35 = 0;
LABEL_124:
    OUTLINED_FUNCTION_3_0();
    v116 = 0;
    goto LABEL_65;
  }

  if (!v22 || (Length = CFDataGetLength(v22)) == 0)
  {
    OUTLINED_FUNCTION_4_0("SavageUpdaterCopyFirmware: Empty Yonkers firmware file?", v23, v24, @"YonkersErrorDomain");
    OUTLINED_FUNCTION_0_1();
LABEL_117:
    v35 = 0;
    goto LABEL_127;
  }

  v32 = OUTLINED_FUNCTION_1_0(Length, v125, v24, v27, v28, v29, v30, v31, v101, v104, v107, v112, v115, v117, theData, *bytes, v121, err);
  v35 = v32;
  if (err)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_124;
  }

  if (!v32 || !CFDataGetLength(v32))
  {
    OUTLINED_FUNCTION_4_0("SavageUpdaterCopyFirmware: Empty Yonkers alt firmware file?", v33, v34, @"YonkersErrorDomain");
    v4 = 0;
LABEL_126:
    v6 = 0;
    v3 = 0;
    goto LABEL_127;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable;
  if (!Mutable)
  {
    createCFErrorWithDomain("SavageUpdaterCopyFirmware: Cannot allocate memory for outputDict", 3u, a1, @"SavageErrorDomain");
    goto LABEL_126;
  }

  CFDictionaryAddValue(Mutable, @"YonkersFirmware", v25);
  CFDictionaryAddValue(v4, @"YonkersFirmwareAlt", v35);
LABEL_22:
  v37 = CFDictionaryGetValue(v12, @"JasmineIR1DeviceInfo");
  v113 = a2;
  if (!v37 || (v2 = v37, v38 = CFGetTypeID(v37), v38 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v3 = 0;
    v116 = 0;
    goto LABEL_39;
  }

  v116 = SavageSafeRetain(v2);
  JasmineIRMeasurementTags = GetJasmineIRMeasurementTags(v116, &v128, &v127);
  v2 = &kJasmineIRErrorDomain;
  if (JasmineIRMeasurementTags)
  {
    createCFErrorWithDomain("SavageUpdaterCopyFirmware: Didn't get jasmine ir patch measurement tags", JasmineIRMeasurementTags, v116, @"JasmineIRErrorDomain");
    v6 = 0;
    v3 = 0;
    OUTLINED_FUNCTION_3_0();
LABEL_128:
    err = v99;
    goto LABEL_65;
  }

  v46 = OUTLINED_FUNCTION_1_0(0, v128, v40, v41, v42, v43, v44, v45, v100, v103, v106, a2, v116, v117, theData, *bytes, v121, err);
  v6 = v46;
  if (err)
  {
    v3 = 0;
    goto LABEL_121;
  }

  if (!v46 || (v49 = CFDataGetLength(v46)) == 0)
  {
    CFErrorWithDomain = OUTLINED_FUNCTION_4_0("SavageUpdaterCopyFirmware: Empty JasmineIR firmware file?", v47, v48, @"JasmineIRErrorDomain");
    v3 = 0;
LABEL_132:
    v2 = 0;
    theData = 0;
    goto LABEL_133;
  }

  if (!v127)
  {
    v3 = 0;
    if (v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v55 = OUTLINED_FUNCTION_1_0(v49, v127, v48, v50, v51, v52, v53, v54, v100, v103, v108, v113, v116, v117, theData, *bytes, v121, err);
  v3 = v55;
  if (err)
  {
LABEL_121:
    v2 = 0;
    theData = 0;
    goto LABEL_122;
  }

  if (!v55 || !CFDataGetLength(v55))
  {
    v96 = @"JasmineIRErrorDomain";
    v97 = "SavageUpdaterCopyFirmware: Empty JasmineIR VT firmware file?";
    v95 = 4;
LABEL_130:
    v98 = a1;
LABEL_131:
    CFErrorWithDomain = createCFErrorWithDomain(v97, v95, v98, v96);
    goto LABEL_132;
  }

  if (v4)
  {
    goto LABEL_37;
  }

LABEL_36:
  v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v4)
  {
    v96 = @"SavageErrorDomain";
    v97 = "SavageUpdaterCopyFirmware: Cannot allocate memoty for outputDict";
    v95 = 3;
    goto LABEL_130;
  }

LABEL_37:
  CFDictionaryAddValue(v4, @"JasmineIR1Firmware", v6);
  if (v3)
  {
    CFDictionaryAddValue(v4, @"JasmineIR1FirmwareVT", v3);
  }

LABEL_39:
  v109 = v3;
  if (CFDictionaryContainsKey(v12, @"Savage,UID"))
  {
    RelevantMeasurementTags = GetRelevantMeasurementTags(v12, v124, v123);
    if (!RelevantMeasurementTags)
    {
      v63 = OUTLINED_FUNCTION_1_0(0, *v124, v57, v58, v59, v60, v61, v62, v100, v103, v3, v113, v116, v117, theData, *bytes, v121, err);
      theData = v63;
      if (!err)
      {
        if (v63)
        {
          v66 = CFDataGetLength(v63);
          if (v66)
          {
            v117 = OUTLINED_FUNCTION_1_0(v66, *v123, v65, v67, v68, v69, v70, v71, v102, v105, v110, v113, v116, v118, theData, *bytes, v121, err);
            if (!err || CFErrorGetCode(err) != 19)
            {
              v2 = CFDataCreateMutable(0, 0);
              if (v2)
              {
                v72 = v6;
                v73 = v12;
                v74 = v35;
                *&bytes[4] = CFDataGetLength(theData);
                CFDataAppendBytes(v2, bytes, 16);
                BytePtr = CFDataGetBytePtr(theData);
                v76 = CFDataGetLength(theData);
                CFDataAppendBytes(v2, BytePtr, v76);
                if (v117)
                {
                  LODWORD(v121) = CFDataGetLength(v117);
                  v129.location = 0;
                  v129.length = 16;
                  CFDataReplaceBytes(v2, v129, bytes, 16);
                  v77 = CFDataGetBytePtr(v117);
                  v78 = CFDataGetLength(v117);
                  CFDataAppendBytes(v2, v77, v78);
                }

                v79 = v25;
                v80 = v4;
                a2 = v113;
                v81 = v14;
                if (v4)
                {
                  CFDictionaryAddValue(v4, @"SavageFirmware", v2);
                  CFRelease(v2);
                  v2 = 0;
                }

                goto LABEL_52;
              }

              CFErrorWithDomain = createCFErrorWithDomain("SavageUpdaterCopyFirmware: Cannot allocate memory for savageFirmwareData", 3u, a1, @"SavageErrorDomain");
              goto LABEL_134;
            }

            v2 = 0;
LABEL_135:
            a2 = v113;
            goto LABEL_65;
          }
        }

        CFErrorWithDomain = OUTLINED_FUNCTION_4_0("SavageUpdaterCopyFirmware: Empty Savage firmware file", v64, v65, @"SavageErrorDomain");
        v2 = 0;
LABEL_133:
        v117 = 0;
LABEL_134:
        err = CFErrorWithDomain;
        goto LABEL_135;
      }

      v2 = 0;
LABEL_122:
      v117 = 0;
      goto LABEL_135;
    }

    v95 = RelevantMeasurementTags;
    v96 = @"SavageErrorDomain";
    v97 = "SavageUpdaterCopyFirmware: Unable to get savage patch measurement tags";
    v98 = v12;
    goto LABEL_131;
  }

  v72 = v6;
  v80 = v4;
  v73 = v12;
  v74 = v35;
  v79 = v25;
  v81 = v14;
  OUTLINED_FUNCTION_3_0();
  a2 = v113;
LABEL_52:
  v4 = v80;
  v82 = CFCopyDescription(v80);
  if (v82)
  {
    v83 = v82;
    if (OUTLINED_FUNCTION_2_0(v82))
    {
      v84 = logString;
    }

    else
    {
      v84 = "No C string description available.";
    }

    SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterCopyFirmware", v84);
    CFRelease(v83);
  }

  else
  {
    SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterCopyFirmware", "No C string description available.");
  }

  v85 = CFCopyDescription(v2);
  if (v85)
  {
    v86 = v85;
    if (OUTLINED_FUNCTION_2_0(v85))
    {
      v87 = logString;
    }

    else
    {
      v87 = "No C string description available.";
    }

    SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterCopyFirmware", v87);
    CFRelease(v86);
  }

  else
  {
    SavageRestoreInfoLog("%s [output]: %s \n", "SavageUpdaterCopyFirmware", "No C string description available.");
  }

  v14 = v81;
  v25 = v79;
  v35 = v74;
  v12 = v73;
  v6 = v72;
  v3 = v109;
LABEL_65:
  if (a2 && err)
  {
    *a2 = SavageSafeRetain(err);
    v88 = CFErrorCopyDescription(err);
    if (v88)
    {
      v89 = v88;
      if (OUTLINED_FUNCTION_2_0(v88))
      {
        v90 = logString;
      }

      else
      {
        v90 = "No C string description available.";
      }

      SavageRestoreInfoLog("%s [error]: %s \n", "SavageUpdaterCopyFirmware", v90);
      CFRelease(v89);
    }

    else
    {
      SavageRestoreInfoLog("%s [error]: %s \n", "SavageUpdaterCopyFirmware", "No C string description available.");
    }
  }

  if (v128)
  {
    CFRelease(v128);
    v128 = 0;
  }

  if (v127)
  {
    CFRelease(v127);
    v127 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v125)
  {
    CFRelease(v125);
    v125 = 0;
  }

  if (err)
  {
    CFRelease(err);
    err = 0;
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

CFErrorRef createCFErrorWithDomain(uint64_t a1, unsigned int a2, uint64_t a3, const __CFString *a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@: %s", a4, a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFStringCreateWithFormat(v7, 0, @"%@: Input Options: %@", v8, a3);
  if (!v10)
  {
    v13 = 0;
    goto LABEL_4;
  }

  v11 = v10;
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F58], v9);
  v13 = CFErrorCreate(v7, a4, a2, Mutable);
  CFRelease(v11);
  CFRelease(v9);
  v9 = Mutable;
  if (Mutable)
  {
LABEL_4:
    CFRelease(v9);
  }

  return v13;
}

uint64_t GetRelevantMeasurementTags(CFDictionaryRef theDict, __CFString **a2, __CFString **a3)
{
  result = 2;
  if (theDict && a2 && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"Savage,ProductionMode");
    if (!Value)
    {
      return 17;
    }

    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 != CFBooleanGetTypeID())
    {
      return 17;
    }

    v10 = CFBooleanGetValue(v8);
    v11 = CFDictionaryGetValue(theDict, @"Savage,Revision");
    if (!v11)
    {
      return 17;
    }

    v12 = v11;
    v13 = CFGetTypeID(v11);
    if (v13 != CFDataGetTypeID())
    {
      return 17;
    }

    BytePtr = CFDataGetBytePtr(v12);
    if (BytePtr)
    {
      v15 = *BytePtr;
      v16 = (v15 + 96) >> 4;
      if ((v16 - 8) < 2)
      {
        v19 = &kSavageTagMeasurementB2ProdPatch;
        v20 = &kSavageTagMeasurementB2DevPatch;
LABEL_23:
        v22 = v10 == 0;
        if (!v10)
        {
          v19 = v20;
        }

        *a2 = *v19;
        v23 = &kSavageTagMeasurementBFProdPatch;
        v24 = &kSavageTagMeasurementBFDevPatch;
LABEL_26:
        if (v22)
        {
          v23 = v24;
        }

        v25 = *v23;
        goto LABEL_29;
      }

      if (!((v15 + 96) >> 4))
      {
        v21 = &kSavageTagMeasurementBAProdPatch;
        v22 = v10 == 0;
        if (!v10)
        {
          v21 = &kSavageTagMeasurementBADevPatch;
        }

        *a2 = *v21;
        v23 = &kSavageTagMeasurementBEProdPatch;
        v24 = &kSavageTagMeasurementBEDevPatch;
        goto LABEL_26;
      }

      if (v16 == 4)
      {
        v17 = &kSavageTagMeasurementBEProdPatch;
        v18 = &kSavageTagMeasurementBEDevPatch;
LABEL_19:
        if (!v10)
        {
          v17 = v18;
        }

        v25 = *v17;
        *a2 = v25;
LABEL_29:
        result = 0;
        *a3 = v25;
        return result;
      }

      if (v15 >= 0xF0)
      {
        v17 = &kSavageTagMeasurementBFProdPatch;
        v18 = &kSavageTagMeasurementBFDevPatch;
        goto LABEL_19;
      }
    }

    v19 = &kSavageTagMeasurementB0ProdPatch;
    v20 = &kSavageTagMeasurementB0DevPatch;
    goto LABEL_23;
  }

  return result;
}

uint64_t GetYonkersMeasurementTags(CFDictionaryRef theDict, uint64_t a2)
{
  valuePtr = 0;
  result = 2;
  if (theDict && a2)
  {
    Value = CFDictionaryGetValue(theDict, @"Yonkers,ProductionMode");
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()) && (CFBooleanGetValue(v5), (v7 = CFDictionaryGetValue(theDict, @"Yonkers,FabRevision")) != 0) && (v8 = v7, v9 = CFGetTypeID(v7), v9 == CFNumberGetTypeID()))
    {
      v10 = CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      v18 = OUTLINED_FUNCTION_0_2(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, valuePtr);
      return GetYonkersFabRevisionTags(v18, v19, v20, v21);
    }

    else
    {
      return 17;
    }
  }

  return result;
}

uint64_t GetJasmineIRMeasurementTags(CFDictionaryRef theDict, uint64_t a2, uint64_t a3)
{
  valuePtr = 0;
  result = 2;
  if (theDict && a2 && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"JasmineIR1,ProductionMode");
    if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && (CFBooleanGetValue(v6), (v8 = CFDictionaryGetValue(theDict, @"JasmineIR1,FabRevision")) != 0) && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()))
    {
      v11 = CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
      v19 = OUTLINED_FUNCTION_0_2(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24, valuePtr);
      return GetJasmineIRFabRevisionTags(v19, v20, v21, v22);
    }

    else
    {
      return 17;
    }
  }

  return result;
}

uint64_t _hexStringToBytes(_BYTE *a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = 2;
  if ((a4 & 1) == 0 && *a2 >= a4 >> 1 && a1 && a3)
  {
    v5 = 0;
    *a2 = 0;
    if (a4 < 2)
    {
LABEL_25:
      v4 = 0;
      *a2 = v5;
      a1[v5] = 0;
    }

    else
    {
      v6 = MEMORY[0x29EDCA600];
      v7 = a1;
      v8 = a4 >> 1;
      while (1)
      {
        v9 = *a3;
        if ((*(v6 + 4 * v9 + 60) & 0x10000) == 0)
        {
          return 2;
        }

        v10 = a3[1];
        if ((*(v6 + 4 * v10 + 60) & 0x10000) == 0)
        {
          return 2;
        }

        v11 = v9 - 48;
        v12 = v9 - 97;
        if ((v9 - 65) >= 6)
        {
          v13 = -1;
        }

        else
        {
          v13 = v9 - 55;
        }

        v14 = v9 - 87;
        if (v12 > 5)
        {
          v14 = v13;
        }

        if (v11 < 0xA)
        {
          v14 = v11;
        }

        v15 = 16 * v14;
        v16 = v10 - 48;
        v17 = v10 - 97;
        if ((v10 - 65) >= 6)
        {
          v18 = -1;
        }

        else
        {
          v18 = v10 - 55;
        }

        v19 = v10 - 87;
        if (v17 > 5)
        {
          v19 = v18;
        }

        if (v16 < 0xA)
        {
          v19 = v16;
        }

        *v7++ = v19 | v15;
        a3 += 2;
        if (!--v8)
        {
          v5 = a4 >> 1;
          goto LABEL_25;
        }
      }
    }
  }

  return v4;
}