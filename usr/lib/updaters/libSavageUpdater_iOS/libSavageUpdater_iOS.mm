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
  while (dword_299F6F2F0[v7] != a1 && dword_299F6F310[v7] != a1 && dword_299F6F330[v7] != a1)
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
  v8 = &dword_299F6F370;
  v9 = &dword_299F6F350;
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

YonkersDevice *YonkersDevice::getInstance(YonkersDevice *this)
{
  v1 = operator new(0x40uLL);
  YonkersDevice::YonkersDevice(v1);
  YonkersDevice::myInstance = v1;
  return v1;
}

void YonkersDevice::destroyInstance(YonkersDevice *this)
{
  if (YonkersDevice::myInstance)
  {
    YonkersDevice::~YonkersDevice(YonkersDevice::myInstance);
    operator delete(v1);
    YonkersDevice::myInstance = 0;
  }
}

void YonkersDevice::YonkersDevice(YonkersDevice *this)
{
  *(this + 18) = 48;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *this = 0;
  *(this + 38) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0x10000;
  *(this + 28) = 0;
  YonkersDevice::SetupDevice(this);
  YonkersDevice::CheckProvisioningStatus(this);
}

uint64_t YonkersDevice::SetupDevice(io_iterator_t *this)
{
  properties = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/chosen");
  v4 = 0;
  v5 = off_29F292150;
  while (1)
  {
    v6 = IOServiceMatching(*v5);
    MatchingServices = IOServiceGetMatchingServices(v2, v6, this + 10);
    if (!MatchingServices)
    {
      if (this[10])
      {
        break;
      }
    }

    this[10] = 0;
    --v4;
    ++v5;
    if (v4 == -4)
    {
      LODWORD(v8) = 1;
      goto LABEL_6;
    }
  }

  v8 = -v4;
  if (v4 > 0xFFFFFFFC)
  {
    *(this + 27) = 1;
  }

LABEL_6:
  v9 = MEMORY[0x29EDB8ED8];
  if (v3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"development-cert", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v11 = CFProperty;
      v12 = CFGetTypeID(CFProperty);
      if (v12 == CFDataGetTypeID())
      {
        *(this + 26) = *CFDataGetBytePtr(v11) == 0;
      }

      CFRelease(v11);
    }
  }

  v13 = IOIteratorNext(this[10]);
  if (v13)
  {
    v14 = v13;
    v15 = *v9;
    while (1)
    {
      MatchingServices = IORegistryEntryCreateCFProperties(v14, &properties, v15, 0);
      if (!MatchingServices)
      {
        if (this[11])
        {
          MatchingServices = 0;
        }

        else
        {
          this[11] = v14;
          if (!v8)
          {
            YonkersDevice::ReadSensorType(this);
          }

          MatchingServices = YonkersDevice::YonkersDeviceOpen(this);
          if (!MatchingServices)
          {
LABEL_23:
            if (properties)
            {
              CFRelease(properties);
            }

            return MatchingServices;
          }

          YonkersDevice::YonkersDeviceClose(this);
          if (properties)
          {
            CFRelease(properties);
            properties = 0;
          }

          IOObjectRelease(this[11]);
          this[11] = 0;
        }
      }

      v14 = IOIteratorNext(this[10]);
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }

  return MatchingServices;
}

void YonkersDevice::~YonkersDevice(YonkersDevice *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  YonkersDevice::YonkersDeviceClose(this);
}

uint64_t YonkersDevice::YonkersDeviceClose(YonkersDevice *this)
{
  if (*(this + 27))
  {
    v2 = *(this + 7);
    SavageCamInterfaceClose();
    result = 0;
    *(this + 7) = 0;
  }

  else
  {
    v4 = *(this + 12);
    if (v4)
    {
      v5 = IOConnectCallScalarMethod(v4, 4u, 0, 0, 0, 0);
      IOServiceClose(*(this + 12));
      *(this + 12) = 0;
      return v5;
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

void YonkersDevice::ReadSensorType(YonkersDevice *this)
{
  v2 = IORegistryEntrySearchCFProperty(*(this + 11), "IOService", @"sensor-type", *MEMORY[0x29EDB8ED8], 3u);
  *buffer = 0;
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      v6.location = 0;
      v6.length = 4;
      CFDataGetBytes(v3, v6, buffer);
      if ((*buffer - 167) <= 0x1D && ((1 << (buffer[0] + 89)) & 0x3800000F) != 0)
      {
        *this = 1;
        *(this + 8) = 2;
      }

      else
      {
        *this = 0;
      }
    }

    CFRelease(v3);
  }
}

uint64_t YonkersDevice::YonkersDeviceOpen(YonkersDevice *this)
{
  v6[1] = *MEMORY[0x29EDCA608];
  if (*(this + 27) == 1)
  {
    v6[0] = 0;
    result = SavageCamInterfaceOpen();
    if (result)
    {
      goto LABEL_16;
    }

    result = *(this + 7);
    if (!result)
    {
      goto LABEL_16;
    }

    result = SavageCamInterfaceGetSensorInfo();
    if (result)
    {
      goto LABEL_16;
    }

    *(this + 8) = v6[0];
    v3 = BYTE4(v6[0]);
    *(this + 28) = BYTE4(v6[0]);
    *this = BYTE5(v6[0]);
    if ((v3 & 1) == 0)
    {
      YonkersDevice::YonkersDeviceClose(this);
    }
  }

  if (*(this + 28))
  {
    result = 0;
  }

  else if (*(this + 12))
  {
    result = 3758097093;
  }

  else
  {
    LODWORD(result) = IOServiceOpen(*(this + 11), *MEMORY[0x29EDCA6B0], 0x2Au, this + 12);
    v4 = *(this + 12);
    if (v4)
    {
      result = result;
    }

    else
    {
      result = 3758097084;
    }

    if (!result)
    {
      v6[0] = 0;
      result = IOConnectCallScalarMethod(v4, 3u, v6, 1u, 0, 0);
    }
  }

LABEL_16:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t YonkersDevice::PrePersonalize(YonkersDevice *this, unsigned int a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(this + 28))
  {
    v2 = *(this + 7);
    v3 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C68FF8](v2, 1);
  }

  else
  {
    v4 = *(this + 12);
    if (v4)
    {
      v7[0] = a2;
      result = IOConnectCallScalarMethod(v4, 0x43u, v7, 1u, 0, 0);
    }

    else
    {
      result = 3758097084;
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t YonkersDevice::PreFusing(YonkersDevice *this, unsigned int a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(this + 28))
  {
    v2 = *(this + 7);
    v3 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C68FF0](v2, 1);
  }

  else
  {
    v4 = *(this + 12);
    if (v4)
    {
      v7[0] = a2;
      result = IOConnectCallScalarMethod(v4, 0x44u, v7, 1u, 0, 0);
    }

    else
    {
      result = 3758097084;
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  return result;
}

CFTypeRef OUTLINED_FUNCTION_0_0(io_registry_entry_t a1, const __CFString *a2)
{

  return IORegistryEntryCreateCFProperty(a1, a2, v2, 0);
}

CFTypeRef OUTLINED_FUNCTION_1(io_registry_entry_t a1, const __CFString *a2)
{

  return IORegistryEntryCreateCFProperty(a1, a2, v2, 0);
}

uint64_t JasmineIRUpdateController::getInstance(JasmineIRUpdateController *this, const __CFDictionary *a2, void *a3, void *a4)
{
  v7 = operator new(0xC8uLL);
  JasmineIRUpdateController::JasmineIRUpdateController(v7);
  JasmineIRUpdateController::myInstance = v7;
  *v7 = a3;
  *(v7 + 1) = a2;
  JasmineIRUpdateController::JasmineIRLog(v7, "%s - %p (%p) - UpdaterIsSupported = %d; JasmineIRIsPresent = %d \n", "getInstance", v7, *(v7 + 7), *(v7 + 66), *(*(v7 + 7) + 17));
  JasmineIRUpdateController::start(JasmineIRUpdateController::myInstance, this);
  return JasmineIRUpdateController::myInstance;
}

void JasmineIRUpdateController::JasmineIRLog(JasmineIRUpdateController *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v8 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x1000uLL, v3, va);
  if (*v2)
  {
    (*v2)(*(v2 + 8), __str);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = __str;
    _os_log_impl(&dword_299F4E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "JasmineIRLog: %s \n", buf, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void JasmineIRUpdateController::destroyInstance(JasmineIRUpdateController *this)
{
  if (JasmineIRUpdateController::myInstance)
  {
    JasmineIRUpdateController::JasmineIRLog(JasmineIRUpdateController::myInstance, "%s - %p (%p) - UpdaterIsSupported = %d; JasmineIRIsPresent = %d \n", "destroyInstance", JasmineIRUpdateController::myInstance, *(JasmineIRUpdateController::myInstance + 56), *(JasmineIRUpdateController::myInstance + 66), *(*(JasmineIRUpdateController::myInstance + 56) + 17));
    JasmineIRDevice::destroyInstance(v1);
    if (JasmineIRUpdateController::myInstance)
    {
      JasmineIRUpdateController::~JasmineIRUpdateController(JasmineIRUpdateController::myInstance);
      operator delete(v2);
    }

    JasmineIRUpdateController::myInstance = 0;
  }
}

void JasmineIRUpdateController::JasmineIRUpdateController(JasmineIRUpdateController *this)
{
  *(this + 9) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  Mutable = CFStringCreateMutable(0, 0);
  *(this + 11) = Mutable;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 64) = 0;
  Instance = JasmineIRDevice::getInstance(Mutable);
  *(this + 46) = *(Instance + 25);
  v4 = *(Instance + 16);
  *(this + 66) = v4;
  *(this + 65) = v4 == 0;
  *(this + 2) = 0x1000001000100;
  *(this + 24) = 1;
  *(this + 188) = 0x100000001;
  *(this + 6) = 0;
  *(this + 7) = Instance;
  *(this + 67) = 0;
}

void JasmineIRUpdateController::~JasmineIRUpdateController(JasmineIRUpdateController *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
    *(this + 9) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    free(v4);
    *(this + 14) = 0;
  }

  v5 = *(this + 18);
  if (v5)
  {
    free(v5);
    *(this + 18) = 0;
  }

  v6 = *(this + 22);
  if (v6)
  {
    free(v6);
    *(this + 22) = 0;
  }

  v7 = *(this + 6);
  if (v7)
  {
    free(v7);
    *(this + 6) = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    CFRelease(v8);
    *(this + 10) = 0;
  }
}

uint64_t JasmineIRUpdateController::libFDRCallback(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v3 = v2;
  v5 = v4;
  v16 = *MEMORY[0x29EDCA608];
  v6 = calloc(0x10uLL, 1uLL);
  *(JasmineIRUpdateController::myInstance + 48) = v6;
  v17.location = 0;
  v17.length = 16;
  CFDataGetBytes(v5, v17, v6);
  JasmineIRUpdateController::JasmineIRLog(JasmineIRUpdateController::myInstance, "Auth challenge received from libFDR:--------------\n");
  bzero(v15, 0x1000uLL);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = snprintf(&v15[v8], 5uLL, " %02X ", *(*(JasmineIRUpdateController::myInstance + 48) + v7));
    if (v7 > 0xE)
    {
      break;
    }

    v8 += v9;
    ++v7;
  }

  while (v8 < 4091);
  JasmineIRUpdateController::JasmineIRLog(JasmineIRUpdateController::myInstance, "%s \n", v15);
  JasmineIRUpdateController::formatAndStitchFiles(JasmineIRUpdateController::myInstance);
  v10 = *(JasmineIRUpdateController::myInstance + 172);
  JasmineIRDevice::Fusing(*(JasmineIRUpdateController::myInstance + 56), *(JasmineIRUpdateController::myInstance + 184), *(JasmineIRUpdateController::myInstance + 176));
  v11 = *(*(JasmineIRUpdateController::myInstance + 56) + 8);
  if (v3)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  result = !v12;
  if (!v12)
  {
    *v3 = v11;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void JasmineIRUpdateController::formatAndStitchFiles(JasmineIRUpdateController *this)
{
  v2 = *(this + 30);
  v3 = v2 >> 13;
  if ((v2 & 0x1FFF) == 0 || v3 == 0)
  {
    v5 = v2 >> 13;
  }

  else
  {
    v5 = v3 + 1;
  }

  v6 = *(this + 7);
  v7 = *(v6 + 112);
  if (v7)
  {
    v8 = *(this + 34);
  }

  else
  {
    v8 = 0;
    *(this + 34) = 0;
    v7 = *(v6 + 112);
  }

  JasmineIRUpdateController::JasmineIRLog(this, "%s: VTPatchLen = %d; Number of patch toggle commands - %d; ysy%c; yvt%c \n", "formatAndStitchFiles", v8, v5, *(v6 + 107), v7);
  if (!*(this + 14) || !*(this + 18))
  {
    return;
  }

  v9 = 3 * *(this + 38);
  v10 = v9 + 27;
  v11 = 3 * (*(this + 30) + v5);
  v12 = *(this + 34);
  if (v12)
  {
    v13 = 3 * v12 + 3;
  }

  else
  {
    v13 = 0;
  }

  if (!*(this + 16) && !*(this + 18))
  {
    v14 = v9 + 75;
    if (*(this + 21) == 1)
    {
      v10 = v14;
    }

    if (!*(this + 21) && *(this + 23) == 1)
    {
      v10 += 96;
    }
  }

  v15 = (v11 + v13 + v10 + 35);
  *(this + 43) = v15;
  v16 = calloc(v15, 1uLL);
  *(this + 22) = v16;
  if (!v16)
  {
    return;
  }

  *v16 = 0;
  v16[1] = v10;
  v16[2] = v11 + 3;
  v16[3] = v13;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  if (*(this + 16) || *(this + 18))
  {
    v17 = 32;
  }

  else
  {
    if (*(this + 21) == 1)
    {
      v39 = *(this + 6);
      if (!v39)
      {
        JasmineIRUpdateController::JasmineIRLog(this, "%s: Using dummy auth challenge key \n", "formatAndStitchFiles");
        v39 = &byte_299F6F420;
      }

      v40 = 0;
      v41 = 3156;
      while (v40 + 35 <= *(this + 43))
      {
        *(*(this + 22) + v40 + 32) = BYTE1(v41);
        *(*(this + 22) + v40 + 33) = v41;
        v42 = *v39++;
        *(*(this + 22) + v40 + 34) = v42;
        ++v41;
        v40 += 3;
        if (v40 == 48)
        {
          v17 = 80;
          goto LABEL_74;
        }
      }

      v17 = v40 + 32;
LABEL_74:
      if (*(this + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = 32;
    }

    if (!*(this + 18) && !*(this + 21) && *(this + 23) == 1)
    {
      if (!*(*(this + 7) + 18))
      {
        JasmineIRUpdateController::formatAndStitchFiles();
      }

      v43 = 0;
      v44 = v17;
      v17 += 96;
      v45 = 2924;
      v46 = 19;
      while (1)
      {
        v47 = v44 + v43;
        if (v44 + v43 + 3 > *(this + 43))
        {
          break;
        }

        *(*(this + 22) + v44 + v43) = BYTE1(v45);
        *(*(this + 22) + v47 + 1) = v45;
        *(*(this + 22) + v47 + 2) = *(*(this + 7) + v46);
        ++v45;
        v43 += 3;
        ++v46;
        if (v43 == 96)
        {
          goto LABEL_26;
        }
      }

      v17 = v44 + v43;
    }
  }

LABEL_26:
  v18 = 0;
  v19 = v17 + 12;
  v20 = 2848;
  v21 = 104;
  while (1)
  {
    v22 = v17 + v18;
    if (v22 + 3 > *(this + 43))
    {
      break;
    }

    *(*(this + 22) + v17 + v18) = BYTE1(v20);
    *(*(this + 22) + v22 + 1) = v20;
    *(*(this + 22) + v22 + 2) = *(*(this + 7) + v21);
    ++v20;
    v18 += 3;
    ++v21;
    if (v18 == 12)
    {
      goto LABEL_31;
    }
  }

  v19 = v17 + v18;
LABEL_31:
  v23 = 0;
  LODWORD(v24) = v19 + 12;
  v25 = 2852;
  v26 = 109;
  while (1)
  {
    v27 = v19 + v23;
    if (v27 + 3 > *(this + 43))
    {
      break;
    }

    *(*(this + 22) + v19 + v23) = BYTE1(v25);
    *(*(this + 22) + v27 + 1) = v25;
    *(*(this + 22) + v27 + 2) = *(*(this + 7) + v26);
    ++v25;
    v23 += 3;
    ++v26;
    if (v23 == 12)
    {
      goto LABEL_36;
    }
  }

  LODWORD(v24) = v19 + v23;
LABEL_36:
  if (*(this + 38))
  {
    v28 = 0;
    v24 = v24;
    v29 = 4096;
    while (1)
    {
      v30 = v24 + 3;
      if (v24 + 3 > *(this + 43))
      {
        break;
      }

      *(*(this + 22) + v24) = BYTE1(v29);
      *(*(this + 22) + v24 + 1) = v29;
      *(*(this + 22) + v24 + 2) = *(*(this + 18) + v28++);
      ++v29;
      v24 += 3;
      if (v28 >= *(this + 38))
      {
        LODWORD(v24) = v30;
        break;
      }
    }
  }

  v31 = v24 + 3;
  if ((v24 + 3) <= *(this + 43))
  {
    *(*(this + 22) + v24) = 6;
    *(*(this + 22) + v24 + 1) = 0;
    *(*(this + 22) + v24 + 2) = 2;
    if (*(this + 30))
    {
      v32 = 0;
      v33 = 0x2000;
      while (1)
      {
        v34 = v31 + 3;
        if (v34 > *(this + 43))
        {
          break;
        }

        *(*(this + 22) + v31) = HIBYTE(v33);
        *(*(this + 22) + v31 + 1) = v33;
        *(*(this + 22) + v31 + 2) = *(*(this + 14) + v32++);
        if (v5 && ((v32 & 0x1FFF) == 0 || v32 == *(this + 30)))
        {
          *(*(this + 22) + v34) = 6;
          *(*(this + 22) + v31 + 4) = 1;
          *(*(this + 22) + v31 + 5) = -47;
          LODWORD(v34) = v31 + 6;
          v33 = 0x1FFF;
        }

        ++v33;
        v31 = v34;
        if (v32 >= *(this + 30))
        {
          goto LABEL_52;
        }
      }
    }

    LODWORD(v34) = v31;
LABEL_52:
    v35 = v34 + 3;
    if ((v34 + 3) <= *(this + 43))
    {
      *(*(this + 22) + v34) = 6;
      *(*(this + 22) + v34 + 1) = 0;
      *(*(this + 22) + v34 + 2) = 16;
      if (*(this + 34))
      {
        v36 = 0;
        v34 = v34;
        v37 = 43776;
        do
        {
          if (*(this + 43) < (v34 + 6))
          {
            break;
          }

          *(*(this + 22) + v34 + 3) = BYTE1(v37);
          *(*(this + 22) + v34 + 4) = v37;
          *(*(this + 22) + v34 + 5) = *(*(this + 16) + v36++);
          ++v37;
          v34 += 3;
        }

        while (v36 < *(this + 34));
        v35 = v34 + 3;
      }

      if ((v35 + 3) <= *(this + 43))
      {
        *(*(this + 22) + v35) = 6;
        *(*(this + 22) + v35 + 1) = 0;
        v38 = v35 + 2;
        *(*(this + 22) + v38) = 32;
        if (*(this + 16) == 1 || *(this + 18) == 1 || *(this + 21) == 1 || *(this + 23) == 1)
        {
          *(*(this + 22) + v38) = -96;
        }
      }
    }
  }
}

void JasmineIRUpdateController::getAuthChallenge(CFDictionaryRef *this)
{
  Value = CFDictionaryGetValue(this[10], *MEMORY[0x29EDCAA88]);
  v3 = CFDictionaryGetValue(Value, *MEMORY[0x29EDCAAB0]);
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = AMFDRCreateInstanceString();
  valuePtr = 0;
  if (v3)
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
    }
  }

  CFDictionaryGetValue(Value, *MEMORY[0x29EDCAB28]);
  v7 = AMFDRCreateInstanceString();
  v8 = CFDictionaryGetValue(Value, *MEMORY[0x29EDCAAD0]);
  v9 = *MEMORY[0x29EDB8F00];
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"CertifyRawPublicKey", v9);
  CFDictionarySetValue(Mutable, @"CertifyChallengeSupport128b", v9);
  CFDictionarySetValue(Mutable, @"CertifyRawECDSASignature", v9);
  CFDictionarySetValue(Mutable, @"CertifyComponentAttributesCriticalProductionMode", v8);
  if (valuePtr == 20584)
  {
    v27 = @"aries";
  }

  else
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: This sensor doesn't support auth flow \n", "getAuthChallenge");
  }

  v28 = *this[7];
  v29 = JasmineIRUpdateController::libFDRCallback;
  v24 = CFStringCreateWithFormat(v4, 0, @"%@-%@", v5, v7);
  v25 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0;
  CStringPtr = CFStringGetCStringPtr(v24, 0x600u);
  JasmineIRUpdateController::JasmineIRLog(this, "%s moduleDataInstanceStr: %s \n", "getAuthChallenge", CStringPtr);
  AMFDRModuleCreateSignedCSR();
  v12 = this[5];
  if (v12)
  {
    v13 = SavageDevice::PublishToRegistry(this[7], @"SavageAuthCSR", v12);
    v14 = CFCopyDescription(this[5]);
    if (v14)
    {
      v15 = v14;
      CString = CFStringGetCString(v14, logString, 4096, 0);
      v17 = "No C string description available.";
      if (CString)
      {
        v17 = logString;
      }

      JasmineIRUpdateController::JasmineIRLog(this, "%s [CSR]: %s (status = 0x%08X) \n", "getAuthChallenge", v17, v13);
      CFRelease(v15);
    }

    else
    {
      JasmineIRUpdateController::JasmineIRLog(this, "%s [CSR]: %s (status = 0x%08X) \n", "getAuthChallenge", "No C string description available.", v13);
    }
  }

  v18 = this[4];
  if (!v18)
  {
LABEL_18:
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v19 = CFErrorCopyDescription(v18);
  if (v19)
  {
    v20 = v19;
    v21 = CFStringGetCString(v19, logString, 4096, 0);
    v22 = "No C string description available.";
    if (v21)
    {
      v22 = logString;
    }

    JasmineIRUpdateController::JasmineIRLog(this, "%s [error]: %s \n", "getAuthChallenge", v22);
    CFRelease(v20);
    goto LABEL_18;
  }

  JasmineIRUpdateController::JasmineIRLog(this, "%s [error]: %s \n", "getAuthChallenge", "No C string description available.");
  if (v7)
  {
LABEL_19:
    CFRelease(v7);
  }

LABEL_20:
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t JasmineIRUpdateController::eventCmdQueryInfo(JasmineIRUpdateController *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = MEMORY[0x29EDB9010];
  v4 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(this + 10) = CFDictionaryCreateMutable(v2, 0, v3, v4);
  if (*(this + 16) == 1)
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin Fusing \n", "eventCmdQueryInfo");
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAB10], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAB08], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF8], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAE8], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF0], 1);
    v6 = *(this + 46);
    JasmineIRMeasurementTags = JasmineIRDevice::PreFusing(*(this + 7));
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished pre-fusing \n");
    goto LABEL_16;
  }

  if (*(this + 18) == 1)
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin Certification \n", "eventCmdQueryInfo");
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAE8], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF0], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF8], 1);
    v8 = *(this + 46);
    JasmineIRMeasurementTags = JasmineIRDevice::PreFusing(*(this + 7));
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished pre-certification \n");
    goto LABEL_16;
  }

  if (*(this + 21) == 1)
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin Auth Flow \n", "eventCmdQueryInfo");
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAE8], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF0], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAA8], 1);
    if (*(this + 68))
    {
      SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAA0], 1);
      JasmineIRMeasurementTags = 0;
    }

    else
    {
      SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF8], 1);
      v10 = *(this + 46);
      JasmineIRMeasurementTags = JasmineIRDevice::PreFusing(*(this + 7));
    }

    JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished pre-auth-flow \n");
LABEL_16:
    if (JasmineIRMeasurementTags)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (*(this + 23) == 1)
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin Wrapping \n", "eventCmdQueryInfo");
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF0], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAE0], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAE8], 1);
    v9 = *(this + 46);
    JasmineIRMeasurementTags = JasmineIRDevice::PreFusing(*(this + 7));
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished pre-wrapping \n");
    goto LABEL_16;
  }

  if (*(this + 20) == 1)
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin Personalization \n", "eventCmdQueryInfo");
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAF0], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAA0], 1);
    SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAE8], 1);
    if (*(*(this + 7) + 56))
    {
      SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAD8], 1);
    }

    JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished pre-personalizing \n", "eventCmdQueryInfo");
  }

LABEL_17:
  JasmineIRDevice::CreateDeviceInfoDict(*(this + 7), Mutable);
  v11 = *(this + 7);
  if (*(this + 67) == 1 && !*(v11 + 56) && !*(this + 16) && !*(this + 18) && !*(this + 21) && !*(this + 23) && *(this + 20) == 1 && *(this + 47) == 2)
  {
    *(v11 + 96) = *(v11 + 96) == 0;
  }

  SavageCFDictionarySetBoolean(Mutable, *MEMORY[0x29EDCAAD0], *(v11 + 96));
  JasmineIRMeasurementTags = GetJasmineIRMeasurementTags(Mutable, this + 96, this + 104);
  CFDictionarySetValue(*(this + 10), *MEMORY[0x29EDCAA88], Mutable);
LABEL_27:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return JasmineIRMeasurementTags;
}

uint64_t JasmineIRUpdateController::eventCmdPerformNextStage(JasmineIRUpdateController *this)
{
  if (*(this + 16) != 1)
  {
    if (*(this + 18) == 1)
    {
      JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin reading info needed for certification \n", "eventCmdPerformNextStage");
      JasmineIRUpdateController::formatAndStitchFiles(this);
      JasmineIRUpdateController::writeFilesToFileSystem(this);
      v6 = *(this + 43);
      JasmineIRDevice::Fusing(*(this + 7), *(this + 46), *(this + 22));
      v7 = *(*(this + 7) + 64);
      v8 = -536870167;
      if (v7)
      {
        v8 = 0;
      }

      JasmineIRUpdateController::JasmineIRLog(this, "%s: Extracting certification data is done with result = 0x%02X (tryAgain = %d) \n", "eventCmdPerformNextStage", v8, *(this + 19));
      v9 = *(this + 19);
      if (v7)
      {
        *(this + 18) = 0;
        if (!v9)
        {
          return 0;
        }
      }

      else if (!*(this + 19))
      {
        v14 = 3758097129;
        *(this + 18) = 0;
        return v14;
      }

      v14 = 0;
      *(this + 19) = 0;
      return v14;
    }

    if (*(this + 21) != 1)
    {
      if (*(this + 23) != 1)
      {
        if (*(this + 20) == 1)
        {
          JasmineIRUpdateController::formatAndStitchFiles(this);
          JasmineIRUpdateController::writeFilesToFileSystem(this);
          v19 = *(this + 47) - 1;
          *(this + 47) = v19;
          if (!v19)
          {
            *(this + 20) = 0;
            JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished Personalization \n", "eventCmdPerformNextStage");
          }
        }

        return 0;
      }

      v14 = 3758097129;
      JasmineIRUpdateController::JasmineIRLog(this, "JasmineIRUpdateController::eventCmdPerformNextStage: Begin actual wrapping live nonce boot \n");
      if (!*(*(this + 7) + 18))
      {
        JasmineIRUpdateController::JasmineIRLog(this, "%s: Missing FDRDataEncryptionKey in ioreg \n", "eventCmdPerformNextStage");
        return 3758097136;
      }

      JasmineIRUpdateController::JasmineIRLog(this, "%s: Picked up FDRDataEncryptionKey as wrap input key \n", "eventCmdPerformNextStage");
      JasmineIRUpdateController::formatAndStitchFiles(this);
      JasmineIRUpdateController::writeFilesToFileSystem(this);
      v15 = *(this + 43);
      JasmineIRDevice::Fusing(*(this + 7), *(this + 46), *(this + 22));
      v16 = *(*(this + 7) + 88);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = -536870167;
      }

      JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished wrapping: 0x%02llx (result = 0x%02X; tryAgain = %d) \n", "eventCmdPerformNextStage", v16, v17, *(this + 24));
      v18 = *(this + 24);
      if (v16)
      {
        *(this + 23) = 0;
        if (!v18)
        {
          return 0;
        }
      }

      else if (!*(this + 24))
      {
        *(this + 23) = 0;
        return v14;
      }

      v14 = 0;
      *(this + 24) = 0;
      return v14;
    }

    JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin reading info needed for auth flow \n", "eventCmdPerformNextStage");
    if (*(this + 68) || !*(*(this + 7) + 72))
    {
      JasmineIRUpdateController::formatAndStitchFiles(this);
      JasmineIRUpdateController::writeFilesToFileSystem(this);
      v10 = *(this + 7);
      v11 = *(this + 46);
      v12 = *(this + 22);
      v13 = *(this + 43);
      if (*(this + 68))
      {
        JasmineIRDevice::AuthFlow(v10, v11, v12);
      }

      else
      {
        JasmineIRDevice::Fusing(v10, v11, v12);
      }
    }

    else
    {
      JasmineIRUpdateController::getAuthChallenge(this);
    }

    if (*(*(this + 7) + 80))
    {
      v21 = this + 22;
      v20 = *(this + 22);
      if (*(this + 48) == 1)
      {
        JasmineIRUpdateController::JasmineIRLog(this, "%s: Extracting auth certification data is done with result = 0x%02X (authFlowLoop = %d, tryAgain = %d) \n", "eventCmdPerformNextStage", 0, 1, v20);
        v14 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v21 = this + 22;
      v20 = *(this + 22);
    }

    v14 = 3758097129;
    JasmineIRUpdateController::JasmineIRLog(this, "%s: Extracting auth certification data is done with result = 0x%02X (authFlowLoop = %d, tryAgain = %d) \n", "eventCmdPerformNextStage", -536870167, *(this + 48), v20);
    if (*(this + 48))
    {
LABEL_43:
      if (*(*(this + 7) + 80))
      {
        --*(this + 48);
      }

      if (*v21)
      {
        v14 = 0;
        *v21 = 0;
      }

      return v14;
    }

LABEL_42:
    *(this + 21) = 0;
    goto LABEL_43;
  }

  JasmineIRUpdateController::JasmineIRLog(this, "%s: Begin actual Fusing \n", "eventCmdPerformNextStage");
  JasmineIRUpdateController::formatAndStitchFiles(this);
  JasmineIRUpdateController::writeFilesToFileSystem(this);
  v2 = *(this + 43);
  JasmineIRDevice::Fusing(*(this + 7), *(this + 46), *(this + 22));
  v3 = *(*(this + 7) + 56);
  v4 = -536870167;
  if (v3)
  {
    v4 = 0;
  }

  JasmineIRUpdateController::JasmineIRLog(this, "%s: Finished fusing with result = 0x%02X (tryAgain = %d) \n", "eventCmdPerformNextStage", v4, *(this + 17));
  v5 = *(this + 17);
  if (v3)
  {
    *(this + 16) = 0;
    if (!v5)
    {
      return 0;
    }
  }

  else if (!*(this + 17))
  {
    v14 = 3758097129;
    *(this + 16) = 0;
    return v14;
  }

  v14 = 0;
  *(this + 17) = 0;
  return v14;
}

void JasmineIRUpdateController::writeFilesToFileSystem(JasmineIRUpdateController *this)
{
  JasmineIRUpdateController::JasmineIRLog(this, "JasmineIR: JasmineIRUpdateController::writeFilesToFileSystem: persoLoop=%d, isProd=%d", *(this + 47), *(*(this + 7) + 96));
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, *(this + 11));
  v5 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v5, *(this + 11));
  v6 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v6, *(this + 11));
  CFArrayAppendValue(v6, @"/SavagePatch.FW");
  if (*(this + 16) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchFusing.DAT");
    v7 = @"/SavagePatchFusing.DER";
LABEL_12:
    CFArrayAppendValue(v5, v7);
    goto LABEL_13;
  }

  if (*(this + 18) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchCertification.DAT");
    v7 = @"/SavagePatchCertification.DER";
    goto LABEL_12;
  }

  if (*(this + 21) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchAuthCertification.DAT");
    v7 = @"/SavagePatchAuthCertification.DER";
    goto LABEL_12;
  }

  if (*(this + 23) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchWrap.DAT");
    v7 = @"/SavagePatchWrap.DER";
    goto LABEL_12;
  }

  if (*(this + 20) != 1)
  {
    goto LABEL_13;
  }

  v8 = *(this + 7);
  if (*(v8 + 56))
  {
    CFArrayAppendValue(Mutable, @"/SavagePatch.DAT");
    v7 = @"/SavagePatch.DER";
    goto LABEL_12;
  }

  if (*(v8 + 96))
  {
    v15 = "Prod";
  }

  else
  {
    v15 = "Dev";
  }

  v16 = CFStringCreateWithFormat(v2, 0, @"/SavagePatch%s.DAT", v15);
  CFArrayAppendValue(Mutable, v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (*(*(this + 7) + 96))
  {
    v17 = "Prod";
  }

  else
  {
    v17 = "Dev";
  }

  v18 = CFStringCreateWithFormat(v2, 0, @"/SavagePatch%s.DER", v17);
  CFArrayAppendValue(v5, v18);
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_13:
  v9 = CFStringCreateByCombiningStrings(v2, Mutable, &stru_2A202E520);
  v10 = CFStringCreateByCombiningStrings(v2, v5, &stru_2A202E520);
  v11 = CFStringCreateByCombiningStrings(v2, v6, &stru_2A202E520);
  CStringPtr = CFStringGetCStringPtr(v11, 0);
  JasmineIRUpdateController::JasmineIRLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", CStringPtr, *(this + 30));
  JasmineIRUpdateController::writeDataToFileURL(this, *(this + 14), *(this + 30), v11);
  JasmineIRUpdateController::writeFWFilesToFileSystem(this);
  v13 = CFStringGetCStringPtr(v10, 0);
  JasmineIRUpdateController::JasmineIRLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v13, *(this + 38));
  JasmineIRUpdateController::writeDataToFileURL(this, *(this + 18), *(this + 38), v10);
  v14 = CFStringGetCStringPtr(v9, 0);
  JasmineIRUpdateController::JasmineIRLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v14, *(this + 43));
  JasmineIRUpdateController::writeDataToFileURL(this, *(this + 22), *(this + 43), v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void JasmineIRUpdateController::writeDataToFileURL(JasmineIRUpdateController *this, unsigned __int8 *a2, CFIndex length, const __CFString *a4)
{
  v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], a2, length);
  v7 = CFURLCreateWithFileSystemPath(0, a4, kCFURLPOSIXPathStyle, 0);
  if (MEMORY[0x29C2B6B80]())
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: AMSupportMakeDirectory failed with fileNameFS \n", "writeDataToFileURL");
  }

  if (AMSupportWriteDataToFileURL())
  {
    JasmineIRUpdateController::JasmineIRLog(this, "%s: AMSupportWriteDataToFileURL failed with fileNameFS \n", "writeDataToFileURL");
  }

  AMSupportPlatformFileURLExists();
  JasmineIRUpdateController::JasmineIRLog(this, "%s: File does not exist\n", "writeDataToFileURL");
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void JasmineIRUpdateController::writeFWFilesToFileSystem(JasmineIRUpdateController *this)
{
  v2 = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  do
  {
    v4 = MEMORY[0x29EDB9000];
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x29EDB9000]);
    v6 = CFArrayCreateMutable(v3, 0, v4);
    if (*(*(this + 7) + 96))
    {
      v7 = v2 + 1;
    }

    else
    {
      v7 = v2;
    }

    v8 = CFStringCreateWithFormat(v3, 0, @"JasmineIR1,FWPatch%X", v7);
    v15 = v2;
    if (*(*(this + 7) + 96))
    {
      v9 = v2 + 1;
    }

    else
    {
      v9 = v2;
    }

    v10 = CFStringCreateWithFormat(v3, 0, @"JasmineIR1,VideoPatch%X", v9);
    CFArrayAppendValue(Mutable, *(this + 11));
    CFArrayAppendValue(v6, *(this + 11));
    CFArrayAppendValue(Mutable, v8);
    CFArrayAppendValue(v6, v10);
    v11 = CFStringCreateByCombiningStrings(v3, Mutable, &stru_2A202E520);
    v12 = CFStringCreateByCombiningStrings(v3, v6, &stru_2A202E520);
    CStringPtr = CFStringGetCStringPtr(v11, 0);
    JasmineIRUpdateController::JasmineIRLog(this, "%s: %s (%d)\n", "writeFWFilesToFileSystem", CStringPtr, *(this + 30));
    JasmineIRUpdateController::writeDataToFileURL(this, *(this + 14), *(this + 30), v11);
    v14 = CFStringGetCStringPtr(v12, 0);
    JasmineIRUpdateController::JasmineIRLog(this, "%s: %s (%d)\n", "writeFWFilesToFileSystem", v14, *(this + 34));
    JasmineIRUpdateController::writeDataToFileURL(this, *(this + 16), *(this + 34), v12);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v2 = v15 + 2;
  }

  while (v15 < 0xE);
}

uint64_t YonkersUpdateController::getInstance(YonkersUpdateController *this, const __CFDictionary *a2, void *a3, void *a4)
{
  v7 = operator new(0xA0uLL);
  YonkersUpdateController::YonkersUpdateController(v7);
  YonkersUpdateController::myInstance = v7;
  *v7 = a3;
  *(v7 + 1) = a2;
  YonkersUpdateController::YonkersLog(v7, "%s - %p (%p) - UpdaterIsSupported = %d; YonkersIsPresent = %d \n", "getInstance", v7, *(v7 + 3), *(v7 + 34), *(*(v7 + 3) + 1));
  YonkersUpdateController::start(YonkersUpdateController::myInstance, this);
  return YonkersUpdateController::myInstance;
}

void YonkersUpdateController::YonkersLog(YonkersUpdateController *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v8 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x1000uLL, v3, va);
  if (*v2)
  {
    (*v2)(*(v2 + 8), __str);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = __str;
    _os_log_impl(&dword_299F4E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "YonkersLog: %s \n", buf, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void YonkersUpdateController::destroyInstance(YonkersUpdateController *this)
{
  if (YonkersUpdateController::myInstance)
  {
    YonkersUpdateController::YonkersLog(YonkersUpdateController::myInstance, "%s - %p (%p) - UpdaterIsSupported = %d; YonkersIsPresent = %d \n", "destroyInstance", YonkersUpdateController::myInstance, *(YonkersUpdateController::myInstance + 24), *(YonkersUpdateController::myInstance + 34), *(*(YonkersUpdateController::myInstance + 24) + 1));
    YonkersDevice::destroyInstance(v1);
    if (YonkersUpdateController::myInstance)
    {
      YonkersUpdateController::~YonkersUpdateController(YonkersUpdateController::myInstance);
      operator delete(v2);
    }

    YonkersUpdateController::myInstance = 0;
  }
}

void YonkersUpdateController::YonkersUpdateController(YonkersUpdateController *this)
{
  *(this + 5) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 2;
  *(this + 22) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  Mutable = CFStringCreateMutable(0, 0);
  *(this + 7) = Mutable;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 32) = 0;
  Instance = YonkersDevice::getInstance(Mutable);
  *(this + 3) = Instance;
  v4 = *(Instance + 8);
  v5 = *Instance;
  *(this + 34) = v5;
  *(this + 33) = v5 == 0;
  *(this + 4) = 0x10000;
  *(this + 10) = 1;
  *(this + 38) = v4;
  *(this + 39) = 1;
  *(this + 35) = 0;
}

void YonkersUpdateController::~YonkersUpdateController(YonkersUpdateController *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
    *(this + 5) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
    *(this + 7) = 0;
  }

  v4 = *(this + 10);
  if (v4)
  {
    free(v4);
    *(this + 10) = 0;
  }

  v5 = *(this + 14);
  if (v5)
  {
    free(v5);
    *(this + 14) = 0;
  }

  v6 = *(this + 18);
  if (v6)
  {
    free(v6);
    *(this + 18) = 0;
  }
}

uint64_t YonkersUpdateController::eventCmdPerformNextStage(YonkersUpdateController *this)
{
  if (*(this + 17) == 1)
  {
    YonkersUpdateController::YonkersLog(this, "%s: Begin actual Fusing \n", "eventCmdPerformNextStage");
    YonkersUpdateController::formatAndStitchFiles(this);
    YonkersDevice::Fusing(*(this + 3), *(this + 38), *(this + 18), *(this + 35));
    v3 = *(*(this + 3) + 8);
    v4 = -536870167;
    if (v3)
    {
      v4 = 0;
    }

    YonkersUpdateController::YonkersLog(this, "%s: Finished fusing with result = 0x%02X (tryAgain = %d) \n", "eventCmdPerformNextStage", v4, *(this + 18));
    v5 = *(this + 18);
    if (v3)
    {
      *(this + 17) = 0;
      if (!v5)
      {
        return 0;
      }
    }

    else if (!*(this + 18))
    {
      result = 3758097129;
      *(this + 17) = 0;
      return result;
    }

    result = 0;
    *(this + 18) = 0;
    return result;
  }

  if (*(this + 19) != 1)
  {
    if (*(this + 21) == 1)
    {
      YonkersUpdateController::formatAndStitchFiles(this);
      YonkersUpdateController::writeFilesToFileSystem(this);
      v9 = *(this + 39) - 1;
      *(this + 39) = v9;
      if (!v9)
      {
        *(this + 21) = 0;
        YonkersUpdateController::YonkersLog(this, "%s: Finished Personalization \n", "eventCmdPerformNextStage");
      }
    }

    return 0;
  }

  YonkersUpdateController::YonkersLog(this, "%s: Begin reading info needed for certification \n", "eventCmdPerformNextStage");
  YonkersUpdateController::formatAndStitchFiles(this);
  YonkersDevice::Fusing(*(this + 3), *(this + 38), *(this + 18), *(this + 35));
  v6 = *(*(this + 3) + 16);
  v7 = -536870167;
  if (v6)
  {
    v7 = 0;
  }

  YonkersUpdateController::YonkersLog(this, "%s: Extracting certification data is done with result = 0x%02X (tryAgain = %d) \n", "eventCmdPerformNextStage", v7, *(this + 20));
  v8 = *(this + 20);
  if (v6)
  {
    *(this + 19) = 0;
    if (!v8)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (*(this + 20))
  {
LABEL_20:
    result = 0;
    *(this + 20) = 0;
    return result;
  }

  result = 3758097129;
  *(this + 19) = 0;
  return result;
}

void YonkersUpdateController::writeFilesToFileSystem(YonkersUpdateController *this)
{
  YonkersUpdateController::YonkersLog(this, "Yonkers: YonkersUpdateController::writeFilesToFileSystem: persoLoop=%d, isProd=%d, isYmgt=%d\n", *(this + 39), *(*(this + 3) + 25), *(*(this + 3) + 24));
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, *(this + 7));
  v5 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v5, *(this + 7));
  v6 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v6, *(this + 7));
  CFArrayAppendValue(v6, @"/YonkersPatchBinaryPlusHeader.FW");
  if (*(this + 17) == 1)
  {
    CFArrayAppendValue(Mutable, @"/YonkersPatchFusing.DAT");
    v7 = @"/YonkersPatchFusing.DER";
LABEL_8:
    CFArrayAppendValue(v5, v7);
    goto LABEL_9;
  }

  if (*(this + 19) == 1)
  {
    CFArrayAppendValue(Mutable, @"/YonkersPatchCertification.DAT");
    v7 = @"/YonkersPatchCertification.DER";
    goto LABEL_8;
  }

  if (*(this + 21) != 1)
  {
    goto LABEL_9;
  }

  v8 = *(this + 3);
  if (*(v8 + 8))
  {
    CFArrayAppendValue(Mutable, @"/YonkersPatch.DAT");
    v7 = @"/YonkersPatch.DER";
    goto LABEL_8;
  }

  if (*(v8 + 24))
  {
    v15 = "Ymgt";
  }

  else
  {
    v15 = "Ngsk";
  }

  if (*(v8 + 25))
  {
    v16 = "Prod";
  }

  else
  {
    v16 = "Dev";
  }

  v17 = CFStringCreateWithFormat(v2, 0, @"/YonkersPatch%s%s.DAT", v15, v16);
  CFArrayAppendValue(Mutable, v17);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 3);
  if (*(v18 + 24))
  {
    v19 = "Ymgt";
  }

  else
  {
    v19 = "Ngsk";
  }

  if (*(v18 + 25))
  {
    v20 = "Prod";
  }

  else
  {
    v20 = "Dev";
  }

  v21 = CFStringCreateWithFormat(v2, 0, @"/YonkersPatch%s%s.DER", v19, v20);
  CFArrayAppendValue(v5, v21);
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_9:
  v9 = CFStringCreateByCombiningStrings(v2, Mutable, &stru_2A202E520);
  v10 = CFStringCreateByCombiningStrings(v2, v5, &stru_2A202E520);
  v11 = CFStringCreateByCombiningStrings(v2, v6, &stru_2A202E520);
  CStringPtr = CFStringGetCStringPtr(v11, 0);
  YonkersUpdateController::YonkersLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", CStringPtr, *(this + 22));
  YonkersUpdateController::writeDataToFileURL(this, *(this + 10), *(this + 22), v11);
  YonkersUpdateController::writeFWFilesToFileSystem(this);
  v13 = CFStringGetCStringPtr(v10, 0);
  YonkersUpdateController::YonkersLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v13, *(this + 30));
  YonkersUpdateController::writeDataToFileURL(this, *(this + 14), *(this + 30), v10);
  v14 = CFStringGetCStringPtr(v9, 0);
  YonkersUpdateController::YonkersLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v14, *(this + 35));
  YonkersUpdateController::writeDataToFileURL(this, *(this + 18), *(this + 35), v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void YonkersUpdateController::getSignedCertificate(YonkersUpdateController *this, unsigned __int8 *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v109 = *MEMORY[0x29EDCA608];
  *v107 = 0;
  __dst = calloc(0x4AuLL, 1uLL);
  v8 = calloc(0x4AuLL, 1uLL);
  YonkersUpdateController::YonkersLog(v7, "Yonkers: TSS Response:--------------Total Length = %d \n", v4);
  if (v4)
  {
    LODWORD(v9) = 0;
    do
    {
      bzero(v108, 0x1000uLL);
      v10 = 0;
      v9 = v9;
      do
      {
        v11 = snprintf(&v108[v10], 5uLL, " %02X ", v6[v9++]);
        if (v9 >= v4)
        {
          break;
        }

        v10 += v11;
      }

      while ((v10 + 5) < 0x1000);
      YonkersUpdateController::YonkersLog(v7, "Yonkers: %s \n", v108);
    }

    while (v9 < v4);
  }

  if (v6[1] < 0)
  {
    v14 = v6[1] & 0x7F;
    if (v14 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v6[1] & 0x7F) != 0)
    {
      v15 = 0;
      v12 = 0;
      v16 = v6 + 2;
      do
      {
        v17 = *v16++;
        v12 = (v12 << v15) | v17;
        v15 += 8;
      }

      while (8 * v14 != v15);
    }

    else
    {
      v12 = 0;
    }

    v13 = v14 + 11;
  }

  else
  {
    v12 = v6[1];
    v13 = 11;
  }

  v18 = &v6[v13];
  if (v18[1] < 0)
  {
    v20 = v18[1] & 0x7F;
    if (v20 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v18[1] & 0x7F) != 0)
    {
      v21 = 0;
      v22 = 0;
      v23 = v18 + 2;
      do
      {
        v24 = *v23++;
        v22 = (v22 << v21) | v24;
        v21 += 8;
      }

      while (8 * v20 != v21);
    }

    else
    {
      v22 = 0;
    }

    v19 = v20 + v22;
  }

  else
  {
    v19 = v18[1];
  }

  v25 = v19 + 2;
  v26 = v19 + 2 + v13;
  v27 = v6[(v26 + 1)];
  v28 = v27 + 2;
  v106 = v27 + 2;
  v29 = v27 + 2 + v26;
  v30 = v6[v29 + 1];
  if ((v30 & 0x80) != 0)
  {
    v33 = v30 & 0x7F;
    if ((v30 & 0x7Fu) > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v30 & 0x7F) != 0)
    {
      v34 = 0;
      v30 = 0;
      v35 = v25 + v13 + v27 + 4;
      do
      {
        v30 = (v30 << v34) | v6[v35++];
        v34 += 8;
      }

      while (8 * v33 != v34);
    }

    else
    {
      v30 = 0;
    }

    v32 = v33 + 2;
    v31 = v29 + 9 + v33 + 2;
  }

  else
  {
    v31 = v29 + 11;
    v32 = 2;
  }

  if (v6[v32 + v29 + 1] < 0)
  {
    v38 = v6[v32 + v29 + 1] & 0x7F;
    if (v38 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v6[v32 + v29 + 1] & 0x7F) != 0)
    {
      v39 = 0;
      v36 = 0;
      v40 = v25 + v13 + v32 + v27 + 4;
      do
      {
        v36 = (v36 << v39) | v6[v40++];
        v39 += 8;
      }

      while (8 * v38 != v39);
    }

    else
    {
      v36 = 0;
    }

    v37 = v38 + 2;
  }

  else
  {
    v36 = v6[v32 + v29 + 1];
    v37 = 2;
  }

  v41 = v37 + v31;
  v102 = v8;
  v97 = v12;
  v94 = v25;
  v95 = v13;
  v93 = v27;
  v99 = v32 + v29 + 1;
  v100 = v29 + 1;
  v98 = v30;
  v92 = v32;
  if (v6[v37 + v31 + 1] < 0)
  {
    v43 = v6[v37 + v31 + 1] & 0x7F;
    if (v43 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v6[v37 + v31 + 1] & 0x7F) != 0)
    {
      v44 = 0;
      v45 = 0;
      v46 = v31 + v37 + 2;
      do
      {
        v45 = (v45 << v44) | v6[v46++];
        v44 += 8;
      }

      while (8 * v43 != v44);
    }

    else
    {
      v45 = 0;
    }

    v42 = v43 + v45;
  }

  else
  {
    v42 = v6[v37 + v31 + 1];
  }

  v47 = v42 + 2 + v41;
  v48 = v6[v47 + 1];
  v49 = v48 + 2;
  v105 = v48 + 2;
  v104 = v47;
  v96 = v27 + 2 + v26;
  YonkersUpdateController::YonkersLog(v7, "Yonkers: fwSigOffset = 0x%02X, fwSigEncapLen = 0x%02X, lfManifestStartOffset = 0x%02X, im4cSeqStartOffset = 0x%02X, im4cStartOffset = 0x%02X, lfSigOffset = 0x%02X, lfSigEncapLen = 0x%02X \n", v26, v27 + 2, v96, v32 + v29, v41, v47, v48 + 2);
  memcpy(__dst, &v6[v26], v28);
  __n = v26;
  YonkersUpdateController::YonkersLog(v7, "FirmwareSignature (Pre-validation):--------------offset = %d (%d)\n", v26, v28);
  bzero(v108, 0x1000uLL);
  v50 = 0;
  v51 = 0;
  do
  {
    v52 = snprintf(&v108[v51], 5uLL, " %02X ", __dst[v50++]);
    if (v50 >= v28)
    {
      break;
    }

    v51 += v52;
  }

  while ((v51 + 5) < 0x1000);
  YonkersUpdateController::YonkersLog(v7, "%s \n", v108);
  YonkersUpdateController::validateSignatureLen(v7, __dst, &v106, &v107[1]);
  v53 = v106;
  YonkersUpdateController::YonkersLog(v7, "FirmwareSignature (Post-validation):--------------offset = %d (%d)\n", __n, v106);
  bzero(v108, 0x1000uLL);
  if (v53)
  {
    v54 = 0;
    v55 = 1;
    v56 = __dst;
    do
    {
      v57 = *v56++;
      v58 = snprintf(&v108[v54], 5uLL, " %02X ", v57);
      if (v55 >= v53)
      {
        break;
      }

      v54 += v58;
      ++v55;
    }

    while ((v54 + 5) < 0x1000);
  }

  YonkersUpdateController::YonkersLog(v7, "%s \n", v108);
  memcpy(v102, &v6[v104], v49);
  YonkersUpdateController::YonkersLog(v7, "LeafSignature (Pre-validation):--------------offset = %d (%d)\n", v104, v49);
  bzero(v108, 0x1000uLL);
  v59 = 0;
  v60 = 0;
  do
  {
    v61 = snprintf(&v108[v60], 5uLL, " %02X ", v102[v59++]);
    if (v59 >= v49)
    {
      break;
    }

    v60 += v61;
  }

  while ((v60 + 5) < 0x1000);
  YonkersUpdateController::YonkersLog(v7, "%s \n", v108);
  YonkersUpdateController::validateSignatureLen(v7, v102, &v105, v107);
  v62 = v105;
  YonkersUpdateController::YonkersLog(v7, "LeafSignature (Post-validation):--------------offset = %d (%d)\n", v104, v105);
  bzero(v108, 0x1000uLL);
  if (v62)
  {
    v63 = 0;
    v64 = 1;
    v65 = v102;
    do
    {
      v66 = *v65++;
      v67 = snprintf(&v108[v63], 5uLL, " %02X ", v66);
      if (v64 >= v62)
      {
        break;
      }

      v63 += v67;
      ++v64;
    }

    while ((v63 + 5) < 0x1000);
  }

  YonkersUpdateController::YonkersLog(v7, "%s \n", v108);
  v68 = v107[0];
  v69 = v107[0] + v36;
  if (v6[v99] < 0)
  {
    v73 = v6[v99] & 0x7F;
    v71 = v102;
    v70 = __dst;
    v72 = v100;
    if (v73 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v6[v99] & 0x7F) != 0)
    {
      v74 = v94 + v95 + v92 + v93 + 4;
      v75 = 8 * v73 - 8;
      do
      {
        v6[v74++] = v69 >> v75;
        v75 -= 8;
        --v73;
      }

      while (v73);
    }
  }

  else
  {
    v6[v99] = v69;
    v71 = v102;
    v70 = __dst;
    v72 = v100;
  }

  v76 = v68 + v98;
  if (v6[v72] < 0)
  {
    v77 = v6[v72] & 0x7F;
    if (v77 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v6[v72] & 0x7F) != 0)
    {
      v78 = v94 + v95 + v93 + 4;
      v79 = 8 * v77 - 8;
      do
      {
        v6[v78++] = v76 >> v79;
        v79 -= 8;
        --v77;
      }

      while (v77);
    }
  }

  else
  {
    v6[v72] = v76;
  }

  v80 = v68 + v97 + v107[1];
  if (v6[1] < 0)
  {
    v82 = v6[1] & 0x7F;
    if (v82 > 2)
    {
      YonkersUpdateController::getSignedCertificate();
    }

    if ((v6[1] & 0x7F) != 0)
    {
      v83 = vmovn_s64(vcgeq_u64(vdupq_n_s64(v82 - 1), xmmword_299F6F430));
      v84 = 8 * v82;
      if (v83.i8[0])
      {
        v6[2] = v80 >> (v84 - 8);
      }

      if (v83.i8[4])
      {
        v6[3] = v80 >> (v84 - 16);
      }
    }

    v81 = v80 + v82 + 2;
  }

  else
  {
    v6[1] = v80;
    v81 = v80 + 2;
  }

  *(v7 + 120) = v81;
  YonkersUpdateController::YonkersLog(v7, "Yonkers: signedCertLen = 0x%02X, totalManifestLen = 0x%02X, lfManifestLen = 0x%02X, im4cSeqLen = 0x%02X \n", v81, v80, v76, v69);
  v85 = calloc(*(v7 + 120), 1uLL);
  *(v7 + 112) = v85;
  if (v85)
  {
    memcpy(v85, v6, __n);
    memcpy((*(v7 + 112) + __n), v70, v53);
    memcpy((*(v7 + 112) + __n + v53), &v6[v96], (v104 - v96));
    memcpy((*(v7 + 112) + __n + v53 + (v104 - v96)), v71, v62);
    YonkersUpdateController::YonkersLog(v7, "Yonkers: Signed Certificate:-------------- Length = %d \n", *(v7 + 120));
    v86 = *(v7 + 120);
    if (v86)
    {
      v87 = 0;
      do
      {
        bzero(v108, 0x1000uLL);
        if (v87 >= v86)
        {
          v90 = v87;
        }

        else
        {
          v88 = 0;
          do
          {
            v89 = snprintf(&v108[v88], 5uLL, " %02X ", *(*(v7 + 112) + v87++));
            v90 = v87;
            if (v87 >= *(v7 + 120))
            {
              break;
            }

            v88 += v89;
          }

          while ((v88 + 5) < 0x1000);
        }

        YonkersUpdateController::YonkersLog(v7, "Yonkers: %s \n", v108);
        v86 = *(v7 + 120);
        v87 = v90;
      }

      while (v90 < v86);
    }
  }

  v91 = *MEMORY[0x29EDCA608];
}

void YonkersUpdateController::validateSignatureLen(YonkersUpdateController *this, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4)
{
  v8 = a2[1];
  v9 = a2[3];
  v10 = a2[5];
  YonkersUpdateController::YonkersLog(this, "\n %s -- r length = %d \n", "validateSignatureLen", a2[5]);
  if ((v10 - 34) <= 0xDEu)
  {
    YonkersUpdateController::validateSignatureLen();
  }

  if (v10 <= 0x1F)
  {
    v11 = 32 - v10;
    YonkersUpdateController::YonkersLog(this, "\n %s -- Padding the r value with %d zero bytes \n", "validateSignatureLen", v11);
    memmove(&a2[v11 + 6], a2 + 6, *a3 - 6);
    bzero(a2 + 6, v11);
    a2[5] = 32;
    v9 += v11;
    v8 += v11;
    *a3 += v11;
  }

  v12 = a2[5] + 7;
  v13 = &a2[v12];
  v14 = *v13;
  YonkersUpdateController::YonkersLog(this, "\n %s -- s length = %d \n", "validateSignatureLen", *v13);
  if ((v14 - 34) <= 0xDEu)
  {
    YonkersUpdateController::validateSignatureLen();
  }

  if (v14 <= 0x1F)
  {
    v15 = 32 - v14;
    YonkersUpdateController::YonkersLog(this, "\n %s -- Padding the s value with %d zero bytes \n", "validateSignatureLen", v15);
    memmove(&v13[v15 + 1], v13 + 1, *a3 + (~v12 | 0xFFFFFF00));
    bzero(v13 + 1, v15);
    *v13 = 32;
    v9 += v15;
    v8 += v15;
    *a3 += v15;
  }

  *a4 = v8 - a2[1];
  a2[3] = v9;
  a2[1] = v8;
}

void YonkersUpdateController::writeDataToFileURL(YonkersUpdateController *this, unsigned __int8 *a2, CFIndex length, const __CFString *a4)
{
  v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], a2, length);
  v7 = CFURLCreateWithFileSystemPath(0, a4, kCFURLPOSIXPathStyle, 0);
  if (MEMORY[0x29C2B6B80]())
  {
    YonkersUpdateController::YonkersLog(this, "%s: AMSupportMakeDirectory failed with fileNameFS \n", "writeDataToFileURL");
  }

  if (AMSupportWriteDataToFileURL())
  {
    YonkersUpdateController::YonkersLog(this, "%s: AMSupportWriteDataToFileURL failed with fileNameFS \n", "writeDataToFileURL");
  }

  AMSupportPlatformFileURLExists();
  YonkersUpdateController::YonkersLog(this, "%s: File does not exist\n", "writeDataToFileURL");
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void YonkersUpdateController::writeFWFilesToFileSystem(YonkersUpdateController *this)
{
  v2 = 0;
  v3 = 104;
  if (*(*(this + 3) + 24))
  {
    v4 = 104;
  }

  else
  {
    v4 = 88;
  }

  if (*(*(this + 3) + 24))
  {
    v3 = 88;
  }

  v5 = 96;
  if (*(*(this + 3) + 24))
  {
    v6 = 96;
  }

  else
  {
    v6 = 80;
  }

  if (*(*(this + 3) + 24))
  {
    v5 = 80;
  }

  v19 = *(this + v6);
  v20 = *(this + v5);
  v7 = *(this + v3);
  v8 = *(this + v4);
  v9 = *MEMORY[0x29EDB8ED8];
  do
  {
    Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
    if (*(*(this + 3) + 25))
    {
      v11 = v2 + 1;
    }

    else
    {
      v11 = v2;
    }

    v12 = CFStringCreateWithFormat(v9, 0, @"Yonkers,SysTopPatch%X", v11);
    CFArrayAppendValue(Mutable, *(this + 7));
    CFArrayAppendValue(Mutable, v12);
    v13 = CFStringCreateByCombiningStrings(v9, Mutable, &stru_2A202E520);
    CStringPtr = CFStringGetCStringPtr(v13, 0);
    if (v2 > 7)
    {
      YonkersUpdateController::YonkersLog(this, "%s: %s (%d)\n", "writeFWFilesToFileSystem", CStringPtr, v7);
      v15 = this;
      v16 = v20;
      v17 = v7;
    }

    else
    {
      YonkersUpdateController::YonkersLog(this, "%s: %s (%d)\n", "writeFWFilesToFileSystem", CStringPtr, v8);
      v15 = this;
      v16 = v19;
      v17 = v8;
    }

    YonkersUpdateController::writeDataToFileURL(v15, v16, v17, v13);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v18 = v2 >= 0xE;
    v2 += 2;
  }

  while (!v18);
}

void OUTLINED_FUNCTION_0_1(uint64_t a1, const void *a2)
{

  SavageCFDictionarySetBoolean(v2, a2, 1);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_0()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

SavageDevice *SavageDevice::getInstance(SavageDevice *this)
{
  v1 = operator new(0x88uLL);
  SavageDevice::SavageDevice(v1);
  SavageDevice::myInstance = v1;
  return v1;
}

void SavageDevice::destroyInstance(SavageDevice *this)
{
  if (SavageDevice::myInstance)
  {
    SavageDevice::~SavageDevice(SavageDevice::myInstance);
    operator delete(v1);
    SavageDevice::myInstance = 0;
  }
}

void SavageDevice::SavageDevice(SavageDevice *this)
{
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 12) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 70) = 1;
  *(this + 52) = 0;
  SavageDevice::SetupDevice(this);
  SavageDevice::CheckProvisioningStatus(this);
  *(this + 34) = 0;
  *(this + 18) = 0;
  *this = 0;
  *(this + 1) = 0;
}

uint64_t SavageDevice::SetupDevice(io_iterator_t *this)
{
  properties = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/chosen");
  v4 = 0;
  v5 = off_29F292170;
  while (1)
  {
    v6 = IOServiceMatching(*v5);
    MatchingServices = IOServiceGetMatchingServices(v2, v6, this + 29);
    if (!MatchingServices)
    {
      if (this[29])
      {
        break;
      }
    }

    this[29] = 0;
    --v4;
    ++v5;
    if (v4 == -4)
    {
      LODWORD(v8) = 1;
      goto LABEL_6;
    }
  }

  v8 = -v4;
  if (v4 > 0xFFFFFFFC)
  {
    *(this + 104) = 1;
  }

LABEL_6:
  v9 = MEMORY[0x29EDB8ED8];
  if (v3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"development-cert", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v11 = CFProperty;
      v12 = CFGetTypeID(CFProperty);
      if (v12 == CFDataGetTypeID())
      {
        *(this + 70) = *CFDataGetBytePtr(v11) == 0;
      }

      CFRelease(v11);
    }
  }

  v13 = IOIteratorNext(this[29]);
  if (v13)
  {
    v14 = v13;
    v15 = *v9;
    while (1)
    {
      MatchingServices = IORegistryEntryCreateCFProperties(v14, &properties, v15, 0);
      if (!MatchingServices)
      {
        if (this[30])
        {
          MatchingServices = 0;
        }

        else
        {
          this[30] = v14;
          if (!v8)
          {
            SavageDevice::ReadSensorType(this);
          }

          MatchingServices = SavageDevice::SavageDeviceOpen(this);
          if (!MatchingServices)
          {
LABEL_23:
            if (properties)
            {
              CFRelease(properties);
            }

            return MatchingServices;
          }

          SavageDevice::SavageDeviceClose(this);
          if (properties)
          {
            CFRelease(properties);
            properties = 0;
          }

          IOObjectRelease(this[30]);
          this[30] = 0;
        }
      }

      v14 = IOIteratorNext(this[29]);
      if (!v14)
      {
        goto LABEL_23;
      }
    }
  }

  return MatchingServices;
}

void SavageDevice::~SavageDevice(SavageDevice *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  SavageDevice::SavageDeviceClose(this);
}

uint64_t SavageDevice::SavageDeviceClose(SavageDevice *this)
{
  if (*(this + 104))
  {
    v2 = *(this + 16);
    SavageCamInterfaceClose();
    result = 0;
    *(this + 16) = 0;
  }

  else
  {
    v4 = *(this + 31);
    if (v4)
    {
      v5 = IOConnectCallScalarMethod(v4, 4u, 0, 0, 0, 0);
      IOServiceClose(*(this + 31));
      *(this + 31) = 0;
      return v5;
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

void SavageDevice::UnallowedList(SavageDevice *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/");
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"target-type", *MEMORY[0x29EDB8ED8], 0);
  v4 = CFProperty;
  v16 = 0;
  *buffer = 0;
  v14 = 0;
  *__s2 = 0x3132313355;
  if (CFProperty)
  {
    v18.length = CFDataGetLength(CFProperty);
    v18.location = 0;
    CFDataGetBytes(v4, v18, buffer);
    v5 = buffer[0];
    if (buffer[0])
    {
      v6 = 1;
      v7 = buffer;
      do
      {
        *v7 = v5 ^ 1;
        v7 = &buffer[v6];
        v5 = *v7;
        ++v6;
      }

      while (*v7);
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = buffer;
    v11 = 2080;
    v12 = __s2;
    _os_log_impl(&dword_299F4E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "SavageDeviceLog: target-type = %s; unallowedTarget = %s \n", &v9, 0x16u);
  }

  if (!strncmp(buffer, __s2, 0xAuLL))
  {
    *(this + 16) = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void SavageDevice::ReadSensorType(SavageDevice *this)
{
  v2 = IORegistryEntrySearchCFProperty(*(this + 30), "IOService", @"sensor-type", *MEMORY[0x29EDB8ED8], 3u);
  *buffer = 0;
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 != CFDataGetTypeID())
    {
LABEL_13:
      CFRelease(v3);
      return;
    }

    v6.location = 0;
    v6.length = 4;
    CFDataGetBytes(v3, v6, buffer);
    if (*buffer <= 352)
    {
      if (((*buffer - 162) > 0x22 || ((1 << (buffer[0] + 94)) & 0x700002DE5) == 0) && ((*buffer - 80) > 0x10 || ((1 << (buffer[0] - 80)) & 0x1000F) == 0))
      {
        goto LABEL_7;
      }
    }

    else if (*buffer != 353 && *buffer != 1701 && *buffer != 1445)
    {
LABEL_7:
      *(this + 16) = 0;
      goto LABEL_13;
    }

    *(this + 16) = 1;
    *(this + 27) = 3;
    goto LABEL_13;
  }
}

uint64_t SavageDevice::SavageDeviceOpen(SavageDevice *this)
{
  v9[1] = *MEMORY[0x29EDCA608];
  if (*(this + 104) == 1)
  {
    v9[0] = 0;
    SensorInfo = SavageCamInterfaceOpen();
    if (SensorInfo)
    {
      goto LABEL_18;
    }

    if (!*(this + 16))
    {
      v4 = 0;
      goto LABEL_12;
    }

    SensorInfo = SavageCamInterfaceGetSensorInfo();
    if (SensorInfo)
    {
LABEL_18:
      v4 = SensorInfo;
      goto LABEL_12;
    }

    *(this + 27) = v9[0];
    v3 = BYTE4(v9[0]);
    *(this + 105) = BYTE4(v9[0]);
    *(this + 16) = BYTE5(v9[0]);
    if ((v3 & 1) == 0)
    {
      SavageDevice::SavageDeviceClose(this);
    }
  }

  if (*(this + 105))
  {
    v4 = 0;
  }

  else
  {
    if (*(this + 31))
    {
      v4 = 3758097093;
      goto LABEL_12;
    }

    v7 = IOServiceOpen(*(this + 30), *MEMORY[0x29EDCA6B0], 0x2Au, this + 31);
    v8 = *(this + 31);
    if (v8)
    {
      v4 = v7;
    }

    else
    {
      v4 = 3758097084;
    }

    if (!v4)
    {
      v9[0] = 0;
      v4 = IOConnectCallScalarMethod(v8, 3u, v9, 1u, 0, 0);
    }
  }

  SavageDevice::UnallowedList(this);
LABEL_12:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t SavageDevice::PrePersonalize(SavageDevice *this, unsigned int a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(this + 105))
  {
    v2 = *(this + 16);
    v3 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C68FF8](v2, 0);
  }

  else
  {
    v4 = *(this + 31);
    if (v4)
    {
      v7[0] = a2;
      result = IOConnectCallScalarMethod(v4, 0, v7, 1u, 0, 0);
    }

    else
    {
      result = 3758097084;
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t SavageDevice::PreFusing(SavageDevice *this, unsigned int a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (*(this + 105))
  {
    v2 = *(this + 16);
    v3 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C68FF0](v2, 0);
  }

  else
  {
    v4 = *(this + 31);
    if (v4)
    {
      v7[0] = a2;
      result = IOConnectCallScalarMethod(v4, 1u, v7, 1u, 0, 0);
    }

    else
    {
      result = 3758097084;
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  return result;
}

CFTypeRef OUTLINED_FUNCTION_2(io_registry_entry_t a1, const __CFString *a2)
{

  return IORegistryEntryCreateCFProperty(a1, a2, v2, 0);
}

void OUTLINED_FUNCTION_3(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v3, a2, v2);
}

JasmineIRDevice *JasmineIRDevice::getInstance(JasmineIRDevice *this)
{
  v1 = operator new(0x88uLL);
  JasmineIRDevice::JasmineIRDevice(v1);
  JasmineIRDevice::myInstance = v1;
  return v1;
}

void JasmineIRDevice::destroyInstance(JasmineIRDevice *this)
{
  if (JasmineIRDevice::myInstance)
  {
    JasmineIRDevice::~JasmineIRDevice(JasmineIRDevice::myInstance);
    operator delete(v1);
    JasmineIRDevice::myInstance = 0;
  }
}

void JasmineIRDevice::JasmineIRDevice(JasmineIRDevice *this)
{
  *(this + 13) = 0x7476790030797379;
  *(this + 56) = 48;
  *(this + 8) = 0;
  *(this + 96) = 0;
  *(this + 11) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 124) = 0;
  *(this + 116) = 0;
  *(this + 33) = 0;
  *(this + 97) = 1;
  *(this + 1) = 0;
  JasmineIRDevice::SetupDevice(this);
  JasmineIRDevice::CheckProvisioningStatus(this);
  *(this + 18) = 0;
}

uint64_t JasmineIRDevice::SetupDevice(io_iterator_t *this)
{
  properties = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/chosen");
  v4 = 0;
  while (1)
  {
    v5 = IOServiceMatching(off_29F292190[v4]);
    MatchingServices = IOServiceGetMatchingServices(v2, v5, this + 29);
    if (!MatchingServices)
    {
      if (this[29])
      {
        break;
      }
    }

    this[29] = 0;
    if (++v4 == 4)
    {
      goto LABEL_5;
    }
  }

  MatchingServices = 0;
  if ((v4 & 0x7FFFFFFE) == 2)
  {
    *(this + 98) = 1;
  }

LABEL_5:
  v7 = MEMORY[0x29EDB8ED8];
  if (v3)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"development-cert", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v9 = CFProperty;
      v10 = CFGetTypeID(CFProperty);
      if (v10 == CFDataGetTypeID())
      {
        *(this + 97) = *CFDataGetBytePtr(v9) == 0;
      }

      CFRelease(v9);
    }
  }

  v11 = IOIteratorNext(this[29]);
  if (v11)
  {
    v12 = v11;
    v13 = *v7;
    do
    {
      MatchingServices = IORegistryEntryCreateCFProperties(v12, &properties, v13, 0);
      if (!MatchingServices)
      {
        this[30] = v12;
        MatchingServices = JasmineIRDevice::JasmineIRDeviceOpen(this);
        if (!MatchingServices)
        {
          break;
        }

        if (*(this + 98))
        {
          v14 = *(this + 16);
          SavageCamInterfaceClose();
          *(this + 16) = 0;
        }

        if (properties)
        {
          CFRelease(properties);
          properties = 0;
        }

        IOObjectRelease(this[30]);
        this[30] = 0;
      }

      v12 = IOIteratorNext(this[29]);
    }

    while (v12);
    if (properties)
    {
      CFRelease(properties);
    }
  }

  return MatchingServices;
}

void JasmineIRDevice::~JasmineIRDevice(JasmineIRDevice *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  if (*(this + 98))
  {
    v4 = *(this + 16);
    SavageCamInterfaceClose();
    *(this + 16) = 0;
  }
}

uint64_t JasmineIRDevice::JasmineIRDeviceClose(JasmineIRDevice *this)
{
  if (*(this + 98))
  {
    v2 = *(this + 16);
    SavageCamInterfaceClose();
    *(this + 16) = 0;
  }

  return 0;
}

uint64_t JasmineIRDevice::JasmineIRDeviceOpen(JasmineIRDevice *this)
{
  if (*(this + 98) != 1)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  JasmineIRDevice::JasmineIRDeviceOpen(this, &v4);
  return v4;
}

uint64_t JasmineIRDevice::PrePersonalize(JasmineIRDevice *this)
{
  if (*(this + 98))
  {
    return MEMORY[0x2A1C68FF8](*(this + 16), 2);
  }

  else
  {
    return 0;
  }
}

uint64_t JasmineIRDevice::PreFusing(JasmineIRDevice *this)
{
  if (*(this + 98))
  {
    return MEMORY[0x2A1C68FF0](*(this + 16), 2);
  }

  else
  {
    return 0;
  }
}

uint64_t SavageUpdateController::getInstance(SavageUpdateController *this, const __CFDictionary *a2, void *a3, void *a4)
{
  v7 = operator new(0x1B8uLL);
  SavageUpdateController::SavageUpdateController(v7);
  SavageUpdateController::myInstance = v7;
  *v7 = a3;
  *(v7 + 1) = a2;
  SavageUpdateController::SavageLog(v7, "%s - %p (%p) - UpdaterIsSupported = %d; SavageIsPresent = %d \n", "getInstance", v7, *(v7 + 8), *(v7 + 250), *(*(v7 + 8) + 17));
  SavageUpdateController::start(SavageUpdateController::myInstance, this);
  return SavageUpdateController::myInstance;
}

void SavageUpdateController::SavageLog(SavageUpdateController *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v8 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x1000uLL, v3, va);
  if (*v2)
  {
    (*v2)(*(v2 + 8), __str);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = __str;
    _os_log_impl(&dword_299F4E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "SavageLog: %s \n", buf, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void SavageUpdateController::destroyInstance(SavageUpdateController *this)
{
  if (SavageUpdateController::myInstance)
  {
    SavageUpdateController::SavageLog(SavageUpdateController::myInstance, "%s - %p (%p) - UpdaterIsSupported = %d; SavageIsPresent = %d \n", "destroyInstance", SavageUpdateController::myInstance, *(SavageUpdateController::myInstance + 64), *(SavageUpdateController::myInstance + 250), *(*(SavageUpdateController::myInstance + 64) + 17));
    SavageDevice::destroyInstance(v1);
    if (SavageUpdateController::myInstance)
    {
      SavageUpdateController::~SavageUpdateController(SavageUpdateController::myInstance);
      operator delete(v2);
    }

    SavageUpdateController::myInstance = 0;
  }
}

void SavageUpdateController::SavageUpdateController(SavageUpdateController *this)
{
  *(this + 32) = 0;
  *(this + 52) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 106) = 3;
  *(this + 248) = 0;
  *(this + 126) = 0;
  *(this + 254) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 37) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 103) = 0;
  *(this + 404) = 0;
  *(this + 396) = 0;
  Instance = SavageDevice::getInstance(this);
  *(this + 8) = Instance;
  *(this + 106) = *(Instance + 27);
  v3 = *(Instance + 16);
  *(this + 250) = v3;
  *(this + 249) = v3 == 0;
  *(this + 26) = 0;
  *(this + 2) = 0x1000100010000;
  *(this + 12) = 1;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 30) = 56;
  *(this + 14) = xmmword_299F6F4B0;
  *(this + 48) = 0;
  *(this + 98) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 44) = 0;
  *(this + 90) = 0;
  *(this + 428) = 0x100000001;
  *(this + 4) = 0;
  *(this + 251) = 0;
}

void SavageUpdateController::~SavageUpdateController(SavageUpdateController *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    CFRelease(v2);
    *(this + 32) = 0;
  }

  v3 = *(this + 34);
  if (v3)
  {
    CFRelease(v3);
    *(this + 34) = 0;
  }

  v4 = *(this + 38);
  if (v4)
  {
    free(v4);
    *(this + 38) = 0;
  }

  v5 = *(this + 39);
  if (v5)
  {
    free(v5);
    *(this + 39) = 0;
  }

  v6 = *(this + 40);
  if (v6)
  {
    free(v6);
    *(this + 40) = 0;
  }

  v7 = *(this + 42);
  if (v7)
  {
    free(v7);
    *(this + 42) = 0;
  }

  v8 = *(this + 46);
  if (v8)
  {
    free(v8);
    *(this + 46) = 0;
  }

  v9 = *(this + 44);
  if (v9)
  {
    free(v9);
    *(this + 44) = 0;
  }

  v10 = *(this + 48);
  if (v10)
  {
    free(v10);
    *(this + 48) = 0;
  }

  v11 = *(this + 52);
  if (v11)
  {
    free(v11);
    *(this + 52) = 0;
  }

  v12 = *(this + 4);
  if (v12)
  {
    free(v12);
    *(this + 4) = 0;
  }

  v13 = *(this + 33);
  if (v13)
  {
    CFRelease(v13);
    *(this + 33) = 0;
  }
}

uint64_t SavageUpdateController::libFDRCallback(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2A1C7C4A8](a1, a2);
  v3 = v2;
  v5 = v4;
  v15 = *MEMORY[0x29EDCA608];
  v6 = calloc(0x10uLL, 1uLL);
  *(SavageUpdateController::myInstance + 32) = v6;
  v16.location = 0;
  v16.length = 16;
  CFDataGetBytes(v5, v16, v6);
  SavageUpdateController::SavageLog(SavageUpdateController::myInstance, "Auth challenge received from libFDR:--------------\n");
  bzero(v14, 0x1000uLL);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = snprintf(&v14[v8], 5uLL, " %02X ", *(*(SavageUpdateController::myInstance + 32) + v7));
    if (v7 > 0xE)
    {
      break;
    }

    v8 += v9;
    ++v7;
  }

  while (v8 < 4091);
  SavageUpdateController::SavageLog(SavageUpdateController::myInstance, "%s \n", v14);
  SavageUpdateController::formatAndStitchFiles(SavageUpdateController::myInstance);
  SavageDevice::Fusing(*(SavageUpdateController::myInstance + 64), *(SavageUpdateController::myInstance + 424), *(SavageUpdateController::myInstance + 416), *(SavageUpdateController::myInstance + 412));
  v10 = *(*(SavageUpdateController::myInstance + 64) + 8);
  if (v3)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  result = !v11;
  if (!v11)
  {
    *v3 = v10;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void SavageUpdateController::formatAndStitchFiles(SavageUpdateController *this)
{
  if (!*(this + 38) || !*(this + 48))
  {
    return;
  }

  v2 = 3 * *(this + 98);
  v3 = v2 + 3;
  v4 = 3 * *(this + 100);
  if (*(this + 16))
  {
    v5 = 231;
  }

  else
  {
    v5 = 0;
  }

  if (!*(this + 17) && !*(this + 19))
  {
    if (*(this + 21) == 1)
    {
      v3 = v2 + 51;
    }

    if (!*(this + 21))
    {
      v6 = v2 + 99;
      if (*(this + 23) == 1)
      {
        v3 = v6;
      }
    }
  }

  v7 = (v4 + v5 + v3 + 35);
  *(this + 103) = v7;
  v8 = calloc(v7, 1uLL);
  *(this + 52) = v8;
  if (!v8)
  {
    return;
  }

  *v8 = 0;
  *(v8 + 1) = v3;
  *(v8 + 2) = v4 + 3;
  *(v8 + 3) = 0;
  *(v8 + 4) = v5;
  *(v8 + 20) = 0;
  *(v8 + 7) = 0;
  if (*(this + 17) || *(this + 19))
  {
    LODWORD(v9) = 32;
  }

  else
  {
    if (*(this + 21) == 1)
    {
      v36 = *(this + 4);
      if (!v36)
      {
        SavageUpdateController::SavageLog(this, "%s: Using dummy auth challenge key \n", "formatAndStitchFiles");
        v36 = &byte_299F6F420;
      }

      v37 = 0;
      v38 = 736;
      while (v37 + 35 <= *(this + 103))
      {
        *(*(this + 52) + v37 + 32) = BYTE1(v38);
        *(*(this + 52) + v37 + 33) = v38;
        v39 = *v36++;
        *(*(this + 52) + v37 + 34) = v39;
        ++v38;
        v37 += 3;
        if (v37 == 48)
        {
          LODWORD(v9) = 80;
          goto LABEL_59;
        }
      }

      LODWORD(v9) = v37 + 32;
LABEL_59:
      if (*(this + 17))
      {
        goto LABEL_17;
      }
    }

    else
    {
      LODWORD(v9) = 32;
    }

    if (!*(this + 19) && !*(this + 21) && *(this + 23) == 1)
    {
      if (!*(*(this + 8) + 18))
      {
        SavageUpdateController::formatAndStitchFiles();
      }

      v40 = 0;
      v41 = v9;
      LODWORD(v9) = v9 + 96;
      v42 = 544;
      v43 = 19;
      while (1)
      {
        v44 = v41 + v40;
        if (v41 + v40 + 3 > *(this + 103))
        {
          break;
        }

        *(*(this + 52) + v41 + v40) = BYTE1(v42);
        *(*(this + 52) + v44 + 1) = v42;
        *(*(this + 52) + v44 + 2) = *(*(this + 8) + v43);
        ++v42;
        v40 += 3;
        ++v43;
        if (v40 == 96)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v9) = v41 + v40;
    }
  }

LABEL_17:
  if (*(this + 98))
  {
    v10 = 0;
    v9 = v9;
    v11 = 2304;
    while (1)
    {
      v12 = v9 + 3;
      if (v9 + 3 > *(this + 103))
      {
        break;
      }

      *(*(this + 52) + v9) = BYTE1(v11);
      *(*(this + 52) + v9 + 1) = v11;
      *(*(this + 52) + v9 + 2) = *(*(this + 48) + v10++);
      ++v11;
      v9 += 3;
      if (v10 >= *(this + 98))
      {
        LODWORD(v9) = v12;
        break;
      }
    }
  }

  v13 = v9 + 3;
  if ((v9 + 3) <= *(this + 103))
  {
    *(*(this + 52) + v9) = 1;
    *(*(this + 52) + v9 + 1) = 0;
    *(*(this + 52) + v9 + 2) = 4;
    if (*(this + 100))
    {
      v14 = 0;
      v9 = v9;
      v15 = 3072;
      do
      {
        if (*(this + 103) < (v9 + 6))
        {
          break;
        }

        v13 += 3;
        *(*(this + 52) + v9 + 3) = BYTE1(v15);
        *(*(this + 52) + v9 + 4) = v15;
        *(*(this + 52) + v9 + 5) = *(*(this + 38) + v14++);
        ++v15;
        v9 += 3;
      }

      while (v14 < *(this + 100));
    }

    if ((v13 + 3) <= *(this + 103))
    {
      *(*(this + 52) + v13) = 1;
      *(*(this + 52) + v13 + 1) = 0;
      *(*(this + 52) + v13 + 2) = 8;
      if (*(this + 16) == 1)
      {
        v16 = 0;
        v17 = this + 200;
        v18 = v13 + 51;
        v19 = 1906;
        while (1)
        {
          v20 = *(this + 103);
          if (v20 < v13 + v16 + 6)
          {
            break;
          }

          *(*(this + 52) + v13 + v16 + 3) = BYTE1(v19);
          *(*(this + 52) + v13 + v16 + 4) = v19;
          v21 = *v17++;
          *(*(this + 52) + v13 + v16 + 5) = v21;
          ++v19;
          v16 += 3;
          if (v16 == 48)
          {
            v20 = *(this + 103);
            goto LABEL_34;
          }
        }

        v18 = v13 + 3 + v16;
LABEL_34:
        if (v18 + 3 <= v20)
        {
          v22 = 0;
          v23 = this + 216;
          v24 = v18 + 9;
          v25 = 1922;
          while (1)
          {
            v26 = *(this + 103);
            if (v26 < v18 + v22 + 3)
            {
              break;
            }

            *(*(this + 52) + v18 + v22) = BYTE1(v25);
            *(*(this + 52) + v18 + v22 + 1) = v25;
            v27 = *v23++;
            *(*(this + 52) + v18 + v22 + 2) = v27;
            ++v25;
            v22 += 3;
            if (v22 == 9)
            {
              v26 = *(this + 103);
              goto LABEL_40;
            }
          }

          v24 = v18 + v22;
LABEL_40:
          if (v24 + 3 <= v26)
          {
            v28 = 0;
            v29 = this + 144;
            v30 = v24 + 168;
            v31 = 1834;
            while (1)
            {
              v32 = *(this + 103);
              if (v32 < v24 + v28 + 3)
              {
                break;
              }

              *(*(this + 52) + v24 + v28) = BYTE1(v31);
              *(*(this + 52) + v24 + v28 + 1) = v31;
              v33 = *v29++;
              *(*(this + 52) + v24 + v28 + 2) = v33;
              ++v31;
              v28 += 3;
              if (v28 == 168)
              {
                v32 = *(this + 103);
                goto LABEL_46;
              }
            }

            v30 = v24 + v28;
LABEL_46:
            v34 = v30;
            v35 = v30 + 3;
            if (v35 <= v32)
            {
              *(*(this + 52) + v34) = 1;
              *(*(this + 52) + v34 + 1) = 0;
              *(*(this + 52) + v34 + 2) = 64;
              if ((v34 + 6) <= *(this + 103))
              {
                *(*(this + 52) + v35) = 1;
                *(*(this + 52) + v34 + 4) = 0;
                *(*(this + 52) + v34 + 5) = 0x80;
              }
            }
          }
        }
      }
    }
  }
}

void SavageUpdateController::getAuthChallenge(CFDictionaryRef *this)
{
  v21 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  CFDictionaryGetValue(this[33], *MEMORY[0x29EDCABB0]);
  v3 = AMFDRCreateInstanceString();
  CFDictionaryGetValue(this[33], *MEMORY[0x29EDCABD0]);
  v4 = AMFDRCreateInstanceString();
  Value = CFDictionaryGetValue(this[33], *MEMORY[0x29EDCABC0]);
  v6 = *MEMORY[0x29EDB8F00];
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"CertifyRawPublicKey", v6);
  CFDictionarySetValue(Mutable, @"CertifyChallengeSupport128b", v6);
  CFDictionarySetValue(Mutable, @"CertifyRawECDSASignature", v6);
  CFDictionarySetValue(Mutable, @"CertifyComponentAttributesCriticalProductionMode", Value);
  if (!SavageCFStringToUInt32(v3, &v21, 16))
  {
    SavageUpdateController::SavageLog(this, "%s: No chipID from string instance \n");
    goto LABEL_27;
  }

  if (v21 == 20582)
  {
    v8 = @"bagdemagus";
  }

  else
  {
    if (v21 != 20581)
    {
      SavageUpdateController::SavageLog(this, "%s: This sensor doesn't support auth flow \n", "getAuthChallenge");
      goto LABEL_8;
    }

    v8 = @"brunor";
  }

  v25 = v8;
LABEL_8:
  v26 = *this[8];
  v27 = SavageUpdateController::libFDRCallback;
  v22 = CFStringCreateWithFormat(v2, 0, @"%@-%@", v3, v4);
  v23 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  CStringPtr = CFStringGetCStringPtr(v22, 0x600u);
  SavageUpdateController::SavageLog(this, "%s moduleDataInstanceStr: %s \n", "getAuthChallenge", CStringPtr);
  AMFDRModuleCreateSignedCSR();
  v10 = this[6];
  if (v10)
  {
    v11 = SavageDevice::PublishToRegistry(this[8], @"SavageAuthCSR", v10);
    v12 = CFCopyDescription(this[6]);
    if (v12)
    {
      v13 = v12;
      CString = CFStringGetCString(v12, logString, 4096, 0);
      v15 = "No C string description available.";
      if (CString)
      {
        v15 = logString;
      }

      SavageUpdateController::SavageLog(this, "%s [CSR]: %s (status = 0x%08X) \n", "getAuthChallenge", v15, v11);
      CFRelease(v13);
    }

    else
    {
      SavageUpdateController::SavageLog(this, "%s [CSR]: %s (status = 0x%08X) \n", "getAuthChallenge", "No C string description available.", v11);
    }
  }

  v16 = this[5];
  if (!v16)
  {
LABEL_19:
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = CFErrorCopyDescription(v16);
  if (v17)
  {
    v18 = v17;
    v19 = CFStringGetCString(v17, logString, 4096, 0);
    v20 = "No C string description available.";
    if (v19)
    {
      v20 = logString;
    }

    SavageUpdateController::SavageLog(this, "%s [error]: %s \n", "getAuthChallenge", v20);
    CFRelease(v18);
    goto LABEL_19;
  }

  SavageUpdateController::SavageLog(this, "%s [error]: %s \n");
LABEL_27:
  if (v4)
  {
LABEL_20:
    CFRelease(v4);
  }

LABEL_21:
  if (v3)
  {
    CFRelease(v3);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t SavageUpdateController::getFirmwareDigest(SavageUpdateController *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 46);
  if (*(v2 + 1) < 0)
  {
    v4 = *(v2 + 1) & 0x7F;
    if (v4 >= 5)
    {
      SavageUpdateController::getFirmwareDigest();
    }

    v3 = v4 + 29;
  }

  else
  {
    v3 = 29;
  }

  v5 = (v2 + v3);
  if (*v5 == 135 && v5[1] == 32 && (SavageUpdateController::SavageLog(this, "%s: Digest offset and length are correctly calculated \n", "getFirmwareDigest"), MEMORY[0x2A1C7C4A8](v6, v7), v8 = *(this + 46) + v3, v9 = *(v8 + 18), v14[0] = *(v8 + 2), v14[1] = v9, (v10 = CFDataCreate(*MEMORY[0x29EDB8ED8], v14, 32)) != 0))
  {
    v11 = v10;
    CFDictionarySetValue(*(this + 33), *MEMORY[0x29EDCAC28], v10);
    CFRelease(v11);
    result = 0;
  }

  else
  {
    result = 8;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SavageUpdateController::eventCmdPerformNextStage(SavageUpdateController *this, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v3 = v2;
  v33 = *MEMORY[0x29EDCA608];
  v31 = 0;
  if (*(v2 + 16) == 1)
  {
    SavageUpdateController::SavageLog(v2, "%s: Begin actual NGID Provisioning \n", "eventCmdPerformNextStage");
    SavageDevice::CreateNGIDProvBlob(*(v3 + 8), v3 + 72);
    CStringPtr = CFStringGetCStringPtr(*(v3 + 35), 0);
    SavageProvisioningData = getSavageProvisioningData(CStringPtr, (v3 + 88), 56, (v3 + 72), 16, *(v3 + 46), *(v3 + 94), v3 + 144, v3 + 30, (v3 + 200), v3 + 28, v3 + 216, v3 + 29);
    SavageUpdateController::SavageLog(v3, "%s: PearlStatus=%d, KCV=0x%x \n", "eventCmdPerformNextStage", SavageProvisioningData, *(v3 + 54));
    SavageUpdateController::SavageLog(v3, "%s: NGID_d_e: \n", "eventCmdPerformNextStage");
    bzero(v32, 0x1000uLL);
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = snprintf(&v32[v7], 5uLL, " %02X ", *(v3 + v6 + 200));
      if (v6 > 0xE)
      {
        break;
      }

      v7 += v8;
      ++v6;
    }

    while (v7 < 4091);
    SavageUpdateController::SavageLog(v3, "%s \n", v32);
    SavageUpdateController::SavageLog(v3, "%s: KCV: \n", "eventCmdPerformNextStage");
    bzero(v32, 0x1000uLL);
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = snprintf(&v32[v10], 5uLL, " %02X ", *(v3 + v9 + 216));
      if (v9 > 1)
      {
        break;
      }

      v10 += v11;
      ++v9;
    }

    while (v10 < 4091);
    SavageUpdateController::SavageLog(v3, "%s \n", v32);
    SavageUpdateController::formatAndStitchFiles(v3);
    SavageDevice::Fusing(*(v3 + 8), *(v3 + 106), *(v3 + 52), *(v3 + 103));
    checkSavageProvisioning(&v31);
    v12 = v31;
    if (v31 == 1 || v31 == 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = 7;
    }

    *(v3 + 16) = 0;
    SavageUpdateController::SavageLog(v3, "%s Tried NGID Provisioning...look for valid KCV in the ioreg (NGIDProvStatus = %d) \n", "eventCmdPerformNextStage", v12);
    goto LABEL_69;
  }

  if (*(v2 + 17) == 1)
  {
    SavageUpdateController::SavageLog(v2, "%s: Begin actual Fusing \n", "eventCmdPerformNextStage");
    SavageUpdateController::formatAndStitchFiles(v3);
    SavageDevice::Fusing(*(v3 + 8), *(v3 + 106), *(v3 + 52), *(v3 + 103));
    v15 = *(*(v3 + 8) + 56);
    v16 = -536870167;
    if (v15)
    {
      v16 = 0;
    }

    SavageUpdateController::SavageLog(v3, "%s: Finished fusing with result = 0x%02X (tryAgain = %d) \n", "eventCmdPerformNextStage", v16, *(v3 + 18));
    v17 = *(v3 + 18);
    if (v15)
    {
      *(v3 + 17) = 0;
      if (!v17)
      {
LABEL_68:
        v14 = 0;
        goto LABEL_69;
      }
    }

    else if (!*(v3 + 18))
    {
      v14 = 3758097129;
      *(v3 + 17) = 0;
      goto LABEL_69;
    }

    v14 = 0;
    *(v3 + 18) = 0;
    goto LABEL_69;
  }

  if (*(v2 + 19) == 1)
  {
    SavageUpdateController::SavageLog(v2, "%s Begin reading info needed for certification \n", "eventCmdPerformNextStage");
    SavageUpdateController::formatAndStitchFiles(v3);
    SavageDevice::Fusing(*(v3 + 8), *(v3 + 106), *(v3 + 52), *(v3 + 103));
    v18 = *(*(v3 + 8) + 72);
    v19 = -536870167;
    if (v18)
    {
      v19 = 0;
    }

    SavageUpdateController::SavageLog(v3, "%s: Extracting certification data is done with result = 0x%02X (tryAgain = %d) \n", "eventCmdPerformNextStage", v19, *(v3 + 20));
    v20 = *(v3 + 20);
    if (v18)
    {
      *(v3 + 19) = 0;
      if (!v20)
      {
        goto LABEL_68;
      }
    }

    else if (!*(v3 + 20))
    {
      v14 = 3758097129;
      *(v3 + 19) = 0;
      goto LABEL_69;
    }

    v14 = 0;
    *(v3 + 20) = 0;
    goto LABEL_69;
  }

  if (*(v2 + 21) != 1)
  {
    if (*(v2 + 23) != 1)
    {
      if (*(v2 + 25) == 1)
      {
        SavageUpdateController::formatAndStitchFiles(v2);
        SavageUpdateController::writeFilesToFileSystem(v3);
        if (*(v3 + 26) == 1)
        {
          *(v3 + 26) = 0;
        }

        else if (!*(v3 + 26))
        {
          --*(v3 + 107);
        }

        if (!*(v3 + 107))
        {
          *(v3 + 25) = 0;
          SavageUpdateController::SavageLog(v3, "%s: Finished Personalization \n", "eventCmdPerformNextStage");
        }
      }

      goto LABEL_68;
    }

    v14 = 3758097129;
    SavageUpdateController::SavageLog(v2, "SavageUpdateController::eventCmdPerformNextStage: Begin actual wrapping live nonce boot \n");
    if (!*(*(v3 + 8) + 18))
    {
      SavageUpdateController::SavageLog(v3, "%s: Missing FDRDataEncryptionKey in ioreg \n", "eventCmdPerformNextStage");
      v14 = 3758097136;
      goto LABEL_69;
    }

    SavageUpdateController::SavageLog(v3, "%s: Picked up FDRDataEncryptionKey as wrap input key \n", "eventCmdPerformNextStage");
    SavageUpdateController::formatAndStitchFiles(v3);
    SavageDevice::Fusing(*(v3 + 8), *(v3 + 106), *(v3 + 52), *(v3 + 103));
    v24 = *(*(v3 + 8) + 96);
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = -536870167;
    }

    SavageUpdateController::SavageLog(v3, "%s: Finished wrapping: 0x%02llx (result = 0x%02X; tryAgain = %d) \n", "eventCmdPerformNextStage", v24, v25, *(v3 + 24));
    v26 = *(v3 + 24);
    if (v24)
    {
      *(v3 + 23) = 0;
      if (!v26)
      {
        goto LABEL_68;
      }
    }

    else if (!*(v3 + 24))
    {
      *(v3 + 23) = 0;
      goto LABEL_69;
    }

    v14 = 0;
    *(v3 + 24) = 0;
    goto LABEL_69;
  }

  SavageUpdateController::SavageLog(v2, "%s: Begin reading info needed for auth flow \n", "eventCmdPerformNextStage");
  if (*(v3 + 254) || !*(*(v3 + 8) + 80))
  {
    SavageUpdateController::formatAndStitchFiles(v3);
    v21 = *(v3 + 8);
    v22 = *(v3 + 106);
    v23 = *(v3 + 52);
    if (*(v3 + 254))
    {
      SavageDevice::AuthFlow(v21, v22, v23);
    }

    else
    {
      SavageDevice::Fusing(v21, v22, v23, *(v3 + 103));
    }
  }

  else
  {
    SavageUpdateController::getAuthChallenge(v3);
  }

  if (*(*(v3 + 8) + 88))
  {
    v28 = v3 + 22;
    v27 = *(v3 + 22);
    if (*(v3 + 108) == 1)
    {
      SavageUpdateController::SavageLog(v3, "%s: Extracting auth certification data is done with result = 0x%02X (authFlowLoop = %d, tryAgain = %d) \n", "eventCmdPerformNextStage", 0, 1, v27);
      v14 = 0;
LABEL_56:
      *(v3 + 21) = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v28 = v3 + 22;
    v27 = *(v3 + 22);
  }

  v14 = 3758097129;
  SavageUpdateController::SavageLog(v3, "%s: Extracting auth certification data is done with result = 0x%02X (authFlowLoop = %d, tryAgain = %d) \n", "eventCmdPerformNextStage", -536870167, *(v3 + 108), v27);
  if (!*(v3 + 108))
  {
    goto LABEL_56;
  }

LABEL_57:
  if (*(*(v3 + 8) + 88))
  {
    --*(v3 + 108);
  }

  if (*v28)
  {
    v14 = 0;
    *v28 = 0;
  }

LABEL_69:
  v29 = *MEMORY[0x29EDCA608];
  return v14;
}

void SavageUpdateController::writeFilesToFileSystem(SavageUpdateController *this)
{
  SavageUpdateController::SavageLog(this, "%s: persoLoop=%d, isProd=%d, isBalan=%d\n", "writeFilesToFileSystem", *(this + 107), *(*(this + 8) + 69), *(*(this + 8) + 68));
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, *(this + 34));
  v5 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v5, *(this + 34));
  v6 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v6, *(this + 34));
  v7 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v7, *(this + 34));
  v8 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v8, *(this + 34));
  v9 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v9, *(this + 34));
  v10 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v10, *(this + 34));
  v60 = v10;
  CFArrayAppendValue(v10, *(this + 37));
  v11 = CFArrayCreateMutable(v2, 0, v3);
  CFArrayAppendValue(v11, *(this + 34));
  v59 = v11;
  CFArrayAppendValue(v11, *(this + 36));
  cf = Mutable;
  v58 = v8;
  if (*(this + 17) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchFusing.DAT");
    CFArrayAppendValue(v5, @"/SavageLeafCertFusing.DER");
    CFArrayAppendValue(v6, @"/SavageLeafSigFusing.DER");
    CFArrayAppendValue(v7, @"/SavagePatchFusing.DER");
    CFArrayAppendValue(v8, @"/SavageFirmwareSigFusing.DER");
    CFArrayAppendValue(v9, @"/SavageFullCertFusing.DER");
    v12 = v7;
    goto LABEL_13;
  }

  if (*(this + 19) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchCertification.DAT");
    CFArrayAppendValue(v5, @"/SavageLeafCertCertification.DER");
    CFArrayAppendValue(v6, @"/SavageLeafSigCertification.DER");
    v12 = v7;
    CFArrayAppendValue(v7, @"/SavagePatchCertification.DER");
    CFArrayAppendValue(v8, @"/SavageFirmwareSigCertification.DER");
    v13 = @"/SavageFullCertCertification.DER";
LABEL_12:
    CFArrayAppendValue(v9, v13);
    goto LABEL_13;
  }

  v12 = v7;
  if (*(this + 21) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchAuthCertification.DAT");
    CFArrayAppendValue(v5, @"/SavageLeafCertAuthCertification.DER");
    CFArrayAppendValue(v6, @"/SavageLeafSigAuthCertification.DER");
    CFArrayAppendValue(v7, @"/SavagePatchAuthCertification.DER");
    CFArrayAppendValue(v8, @"/SavageFirmwareSigAuthCertification.DER");
    v13 = @"/SavageFullCertAuthCertification.DER";
    goto LABEL_12;
  }

  if (*(this + 23) == 1)
  {
    CFArrayAppendValue(Mutable, @"/SavagePatchWrap.DAT");
    CFArrayAppendValue(v5, @"/SavageLeafCertWrap.DER");
    CFArrayAppendValue(v6, @"/SavageLeafSigWrap.DER");
    CFArrayAppendValue(v7, @"/SavagePatchWrap.DER");
    CFArrayAppendValue(v8, @"/SavageFirmwareSigWrap.DER");
    v13 = @"/SavageFullCertWrap.DER";
    goto LABEL_12;
  }

  if (*(this + 25) != 1)
  {
    goto LABEL_13;
  }

  v14 = *(this + 8);
  if (*(v14 + 56))
  {
    CFArrayAppendValue(Mutable, @"/SavagePatch.DAT");
    CFArrayAppendValue(v5, @"/SavageLeafCert.DER");
    CFArrayAppendValue(v6, @"/SavageLeafSig.DER");
    CFArrayAppendValue(v7, @"/SavagePatch.DER");
    CFArrayAppendValue(v8, @"/SavageFirmwareSig.DER");
    v13 = @"/SavageFullCert.DER";
    goto LABEL_12;
  }

  if (*(v14 + 68))
  {
    v30 = "BA";
  }

  else
  {
    v30 = "B3";
  }

  if (*(v14 + 69))
  {
    v31 = "Prod";
  }

  else
  {
    v31 = "Dev";
  }

  v32 = CFStringCreateWithFormat(v2, 0, @"/SavagePatch%s%s.DAT", v30, v31);
  CFArrayAppendValue(Mutable, v32);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(this + 8);
  v34 = "B3";
  if (*(v33 + 68))
  {
    v34 = "BA";
  }

  if (*(v33 + 69))
  {
    v35 = "Prod";
  }

  else
  {
    v35 = "Dev";
  }

  v36 = CFStringCreateWithFormat(v2, 0, @"/SavageLeafCert%s%s.DER", v34, v35);
  CFArrayAppendValue(v5, v36);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(this + 8);
  v38 = "B3";
  if (*(v37 + 68))
  {
    v38 = "BA";
  }

  if (*(v37 + 69))
  {
    v39 = "Prod";
  }

  else
  {
    v39 = "Dev";
  }

  v40 = CFStringCreateWithFormat(v2, 0, @"/SavageLeafSig%s%s.DER", v38, v39);
  CFArrayAppendValue(v6, v40);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(this + 8);
  v42 = "B3";
  if (*(v41 + 68))
  {
    v42 = "BA";
  }

  if (*(v41 + 69))
  {
    v43 = "Prod";
  }

  else
  {
    v43 = "Dev";
  }

  v44 = CFStringCreateWithFormat(v2, 0, @"/SavagePatch%s%s.DER", v42, v43);
  CFArrayAppendValue(v7, v44);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(this + 8);
  v46 = "B3";
  if (*(v45 + 68))
  {
    v46 = "BA";
  }

  if (*(v45 + 69))
  {
    v47 = "Prod";
  }

  else
  {
    v47 = "Dev";
  }

  v48 = CFStringCreateWithFormat(v2, 0, @"/SavageFirmwareSig%s%s.DER", v46, v47);
  CFArrayAppendValue(v8, v48);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(this + 8);
  v50 = "B3";
  if (*(v49 + 68))
  {
    v50 = "BA";
  }

  if (*(v49 + 69))
  {
    v51 = "Prod";
  }

  else
  {
    v51 = "Dev";
  }

  v52 = CFStringCreateWithFormat(v2, 0, @"/SavageFullCert%s%s.DER", v50, v51);
  CFArrayAppendValue(v9, v52);
  v12 = v7;
  if (v52)
  {
    CFRelease(v52);
  }

LABEL_13:
  theString = CFStringCreateByCombiningStrings(v2, Mutable, &stru_2A202E520);
  v55 = v5;
  v15 = CFStringCreateByCombiningStrings(v2, v5, &stru_2A202E520);
  v56 = v6;
  v16 = CFStringCreateByCombiningStrings(v2, v6, &stru_2A202E520);
  v54 = v12;
  v17 = CFStringCreateByCombiningStrings(v2, v12, &stru_2A202E520);
  v18 = CFStringCreateByCombiningStrings(v2, v8, &stru_2A202E520);
  v19 = CFStringCreateByCombiningStrings(v2, v9, &stru_2A202E520);
  v20 = CFStringCreateByCombiningStrings(v2, v60, &stru_2A202E520);
  v21 = CFStringCreateByCombiningStrings(v2, v59, &stru_2A202E520);
  CStringPtr = CFStringGetCStringPtr(v20, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", CStringPtr, *(this + 100));
  SavageUpdateController::writeDataToFileURL(this, *(this + 38), *(this + 100), v20);
  v23 = CFStringGetCStringPtr(v21, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v23, *(this + 101));
  SavageUpdateController::writeDataToFileURL(this, *(this + 39), *(this + 101), v21);
  v24 = CFStringGetCStringPtr(v15, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v24, *(this + 82));
  SavageUpdateController::writeDataToFileURL(this, *(this + 40), *(this + 82), v15);
  v25 = CFStringGetCStringPtr(v16, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v25, *(this + 86));
  SavageUpdateController::writeDataToFileURL(this, *(this + 42), *(this + 86), v16);
  v26 = CFStringGetCStringPtr(v18, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v26, *(this + 90));
  SavageUpdateController::writeDataToFileURL(this, *(this + 44), *(this + 90), v18);
  v27 = CFStringGetCStringPtr(v17, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v27, *(this + 94));
  SavageUpdateController::writeDataToFileURL(this, *(this + 46), *(this + 94), v17);
  v28 = CFStringGetCStringPtr(v19, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v28, *(this + 103));
  SavageUpdateController::writeDataToFileURL(this, *(this + 48), *(this + 98), v19);
  v29 = CFStringGetCStringPtr(theString, 0);
  SavageUpdateController::SavageLog(this, "%s: %s (%d)\n", "writeFilesToFileSystem", v29, *(this + 103));
  SavageUpdateController::writeDataToFileURL(this, *(this + 52), *(this + 103), theString);
  if (theString)
  {
    CFRelease(theString);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v59)
  {

    CFRelease(v59);
  }
}

void SavageUpdateController::getSignedCertificate(SavageUpdateController *this, const unsigned __int8 *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v5 = v2;
  v52 = *MEMORY[0x29EDCA608];
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 368) = 0;
  *(v2 + 376) = 0;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  if (v3[1] < 0)
  {
    v7 = v3[1] & 0x7F;
    if (v7 > 4)
    {
      SavageUpdateController::getSignedCertificate();
    }

    if ((v3[1] & 0x7F) != 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = v3 + 2;
      do
      {
        v11 = *v10++;
        v9 = (v9 << v8) | v11;
        *(v2 + 328) = v9;
        v8 += 8;
      }

      while (8 * v7 != v8);
    }

    else
    {
      v9 = 0;
    }

    v6 = v7 + v9;
  }

  else
  {
    v6 = v3[1];
  }

  v12 = v6 + 2;
  *(v2 + 328) = v12;
  v13 = calloc(v12, 1uLL);
  *(v5 + 320) = v13;
  memcpy(v13, v4, *(v5 + 328));
  SavageUpdateController::SavageLog(v5, "LeafCertificate:--------------offset = %d (%d)\n", 0, *(v5 + 328));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 328))
  {
    v14 = 0;
    for (i = 0; i < 4091; i += v16)
    {
      v16 = snprintf(&v51[i], 5uLL, " %02X ", *(*(v5 + 320) + v14++));
      if (v14 >= *(v5 + 328))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  v17 = *(v5 + 328);
  *(v5 + 344) = v4[(v17 + 1)] + 2;
  v18 = calloc(0x40uLL, 1uLL);
  *(v5 + 336) = v18;
  memcpy(v18, &v4[v17], *(v5 + 344));
  SavageUpdateController::SavageLog(v5, "LeafSignature(Pre-validation):--------------offset = %d (%d)\n", v17, *(v5 + 344));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 344))
  {
    v19 = 0;
    for (j = 0; j < 4091; j += v21)
    {
      v21 = snprintf(&v51[j], 5uLL, " %02X ", *(*(v5 + 336) + v19++));
      if (v19 >= *(v5 + 344))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  SavageUpdateController::validateSignatureLen(v5, *(v5 + 336), (v5 + 344));
  SavageUpdateController::SavageLog(v5, "LeafSignature(Post-validation):--------------offset = %d (%d)\n", v17, *(v5 + 344));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 344))
  {
    v22 = 0;
    for (k = 0; k < 4091; k += v24)
    {
      v24 = snprintf(&v51[k], 5uLL, " %02X ", *(*(v5 + 336) + v22++));
      if (v22 >= *(v5 + 344))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  v25 = *(v5 + 344);
  v26 = v25 + v17;
  if (v4[(v25 + v17 + 1)] < 0)
  {
    v28 = v4[(v25 + v17 + 1)] & 0x7F;
    if (v28 >= 5)
    {
      SavageUpdateController::getSignedCertificate();
    }

    *(v5 + 376) = 0;
    if (v28)
    {
      v29 = 0;
      v30 = 0;
      v31 = v25 + v17 + 2;
      do
      {
        v30 = (v30 << v29) | v4[v31];
        *(v5 + 376) = v30;
        ++v31;
        v29 += 8;
      }

      while (8 * v28 != v29);
    }

    else
    {
      v30 = 0;
    }

    v27 = v28 + v30;
  }

  else
  {
    v27 = v4[(v25 + v17 + 1)];
  }

  v32 = v27 + 2;
  *(v5 + 376) = v32;
  v33 = calloc(v32, 1uLL);
  *(v5 + 368) = v33;
  memcpy(v33, &v4[v26], *(v5 + 376));
  SavageUpdateController::SavageLog(v5, "FirmwareCertificate:--------------offset = %d (%d)\n", v26, *(v5 + 376));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 376))
  {
    v34 = 0;
    for (m = 0; m < 4091; m += v36)
    {
      v36 = snprintf(&v51[m], 5uLL, " %02X ", *(*(v5 + 368) + v34++));
      if (v34 >= *(v5 + 376))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  v37 = (*(v5 + 376) + v26);
  *(v5 + 360) = v4[(v37 + 1)] + 2;
  v38 = calloc(0x40uLL, 1uLL);
  *(v5 + 352) = v38;
  memcpy(v38, &v4[v37], *(v5 + 360));
  SavageUpdateController::SavageLog(v5, "FirmwareSignature (Pre-validation):--------------offset = %d (%d)\n", v37, *(v5 + 360));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 360))
  {
    v39 = 0;
    for (n = 0; n < 4091; n += v41)
    {
      v41 = snprintf(&v51[n], 5uLL, " %02X ", *(*(v5 + 352) + v39++));
      if (v39 >= *(v5 + 360))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  SavageUpdateController::validateSignatureLen(v5, *(v5 + 352), (v5 + 360));
  SavageUpdateController::SavageLog(v5, "FirmwareSignature (Post-validation):--------------offset = %d (%d)\n", v37, *(v5 + 360));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 360))
  {
    v42 = 0;
    for (ii = 0; ii < 4091; ii += v44)
    {
      v44 = snprintf(&v51[ii], 5uLL, " %02X ", *(*(v5 + 352) + v42++));
      if (v42 >= *(v5 + 360))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  v45 = (*(v5 + 344) + *(v5 + 328) + *(v5 + 376) + *(v5 + 360));
  *(v5 + 392) = v45;
  v46 = calloc(v45, 1uLL);
  *(v5 + 384) = v46;
  memcpy(v46, *(v5 + 320), *(v5 + 328));
  memcpy((*(v5 + 384) + *(v5 + 328)), *(v5 + 336), *(v5 + 344));
  memcpy((*(v5 + 384) + *(v5 + 328) + *(v5 + 344)), *(v5 + 368), *(v5 + 376));
  memcpy((*(v5 + 384) + *(v5 + 328) + *(v5 + 344) + *(v5 + 376)), *(v5 + 352), *(v5 + 360));
  SavageUpdateController::SavageLog(v5, "Complete Signed Savage Certificate:--------------Length = %d \n", *(v5 + 392));
  bzero(v51, 0x1000uLL);
  if (*(v5 + 392))
  {
    v47 = 0;
    for (jj = 0; jj < 4091; jj += v49)
    {
      v49 = snprintf(&v51[jj], 5uLL, " %02X ", *(*(v5 + 384) + v47++));
      if (v47 >= *(v5 + 392))
      {
        break;
      }
    }
  }

  SavageUpdateController::SavageLog(v5, "%s \n", v51);
  v50 = *MEMORY[0x29EDCA608];
}

void SavageUpdateController::validateSignatureLen(SavageUpdateController *this, unsigned __int8 *a2, unsigned int *a3)
{
  v6 = a2[1];
  v7 = a2[3];
  SavageUpdateController::SavageLog(this, "\n SavageUpdateController::validateSignatureLen -- r length = %d \n", a2[3]);
  if ((v7 - 30) <= 0xE2u)
  {
    SavageUpdateController::validateSignatureLen();
  }

  if (v7 <= 0x1B)
  {
    v8 = 28 - v7;
    SavageUpdateController::SavageLog(this, "\n SavageUpdateController::validateSignatureLen -- Padding the r value with %d zero bytes \n", v8);
    memmove(&a2[v8 + 4], a2 + 4, *a3 - 4);
    bzero(a2 + 4, v8);
    a2[3] = 28;
    v6 += v8;
    *a3 += v8;
  }

  v9 = a2[3] + 5;
  v10 = &a2[v9];
  v11 = *v10;
  SavageUpdateController::SavageLog(this, "\n SavageUpdateController::validateSignatureLen -- s length = %d \n", *v10);
  if ((v11 - 30) <= 0xE2u)
  {
    SavageUpdateController::validateSignatureLen();
  }

  if (v11 <= 0x1B)
  {
    v12 = 28 - v11;
    SavageUpdateController::SavageLog(this, "\n SavageUpdateController::validateSignatureLen -- Padding the s value with %d zero bytes \n", v12);
    memmove(&v10[v12 + 1], v10 + 1, *a3 + (~v9 | 0xFFFFFF00));
    bzero(v10 + 1, v12);
    *v10 = 28;
    v6 += v12;
    *a3 += v12;
  }

  a2[1] = v6;
}

void SavageUpdateController::writeDataToFileURL(SavageUpdateController *this, unsigned __int8 *a2, CFIndex length, const __CFString *a4)
{
  v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], a2, length);
  v7 = CFURLCreateWithFileSystemPath(0, a4, kCFURLPOSIXPathStyle, 0);
  if (MEMORY[0x29C2B6B80]())
  {
    SavageUpdateController::SavageLog(this, "%s: AMSupportMakeDirectory failed with fileNameFS \n", "writeDataToFileURL");
  }

  if (AMSupportWriteDataToFileURL())
  {
    SavageUpdateController::SavageLog(this, "%s: AMSupportWriteDataToFileURL failed with fileNameFS \n", "writeDataToFileURL");
  }

  AMSupportPlatformFileURLExists();
  SavageUpdateController::SavageLog(this, "%s: File does not exist\n", "writeDataToFileURL");
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 424);

  return SavageDevice::PreFusing(v2, v3);
}

const __CFString *SavageUpdaterCreate(SavageUpdateController *a1, void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (SavageUpdaterCreate::only_once != -1)
  {
    SavageUpdaterCreate_cold_1();
  }

  if (!SavageUpdaterTypeID)
  {
    v21 = "SavageUpdaterCreate - failed to register kLibSavageUpdaterClass";
LABEL_14:
    CFErrorWithDomain = createCFErrorWithDomain(v21, 3u, a1, @"SavageErrorDomain");
    if (!CFErrorWithDomain)
    {
      return 0;
    }

    Description = CFErrorWithDomain;
LABEL_21:
    v11 = 0;
    if (a4)
    {
      *a4 = SavageSafeRetain(Description);
    }

    goto LABEL_10;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v21 = "SavageUpdaterCreate - failed to create SavageUpdaterObj";
    goto LABEL_14;
  }

  v11 = Instance;
  v12 = SavageUpdaterTypeID;
  *(Instance + 16) = 0;
  *(Instance + 24) = v12;
  v13 = SavageUpdateController::getInstance(a1, a3, a2, v10);
  v11[1].isa = v13;
  if (!v13)
  {
    v23 = "SavageUpdaterCreate - no savage controller instance";
    v24 = &kSavageErrorDomain;
LABEL_19:
    v25 = createCFErrorWithDomain(v23, 0x10u, a1, *v24);
    if (!v25)
    {
      return v11;
    }

    Description = v25;
    CFRelease(v11);
    goto LABEL_21;
  }

  v15 = JasmineIRUpdateController::getInstance(a1, a3, a2, v14);
  v11[1].data = v15;
  if (!v15)
  {
    v23 = "SavageUpdateCreate - no jasmine ir controller instance";
    v24 = &kJasmineIRErrorDomain;
    goto LABEL_19;
  }

  v17 = YonkersUpdateController::getInstance(a1, a3, a2, v16);
  v11[1].info = v17;
  if (!v17)
  {
    v23 = "SavageUpdaterCreate - no yonkers controller instance";
    v24 = &kYonkersErrorDomain;
    goto LABEL_19;
  }

  if (a2)
  {
    Description = SavageUpdaterCreateDescription(v11);
    CStringPtr = CFStringGetCStringPtr(Description, 0);
    (a2)(a3, CStringPtr);
    if (Description)
    {
LABEL_10:
      CFRelease(Description);
    }
  }

  return v11;
}

uint64_t __SavageUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  SavageUpdaterTypeID = result;
  return result;
}

void SavageUpdaterDestroy(SavageUpdateController *a1)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      SavageUpdateController::destroyInstance(a1);
      *(a1 + 4) = 0;
    }

    if (*(a1 + 6))
    {
      JasmineIRUpdateController::destroyInstance(a1);
      *(a1 + 6) = 0;
    }

    if (*(a1 + 5))
    {
      YonkersUpdateController::destroyInstance(a1);
      *(a1 + 5) = 0;
    }
  }
}

CFStringRef SavageUpdaterCreateDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libSavageUpdater %p [%p]>{} \n", v1, v3);
  }

  return result;
}

uint64_t SavageUpdaterExecCommand(void *a1, CFStringRef theString, __CFDictionary *a3, __CFDictionary **a4, CFTypeRef *a5)
{
  if (!a1 || !theString)
  {
    v15 = @"SavageErrorDomain";
    v16 = "SavageUpdaterExecCommand - invalid input to SavageUpdaterExecCommand";
    v14 = 2;
LABEL_35:
    v17 = 0;
    goto LABEL_19;
  }

  v8 = a1[4];
  if (!v8)
  {
    v15 = @"SavageErrorDomain";
    v16 = "SavageUpdaterExecCommand - no savage controller instance";
LABEL_34:
    v14 = 16;
    goto LABEL_35;
  }

  v9 = a1[6];
  if (!v9)
  {
    v15 = @"JasmineIRErrorDomain";
    v16 = "SavageUpdaterExecCommand - no jasmine ir controller instance";
    goto LABEL_34;
  }

  v10 = a1[5];
  if (!v10)
  {
    v15 = @"YonkersErrorDomain";
    v16 = "SavageUpdaterExecCommand - no yonkers controller instance";
    goto LABEL_34;
  }

  if (!*(v8 + 248) || !*(v10 + 32) || !*(v9 + 64))
  {
    if (*(v8 + 249))
    {
      if (*(v9 + 65))
      {
        if (*(v10 + 33))
        {
          v14 = 2;
          goto LABEL_17;
        }

        v20 = YonkersUpdateController::execCommand(v10, theString, a3, a4);
      }

      else
      {
        v20 = JasmineIRUpdateController::execCommand(v9, theString, a3, a4);
      }
    }

    else
    {
      v20 = SavageUpdateController::execCommand(v8, theString, a3, a4);
    }

    v14 = v20;
    if (!v20)
    {
      return 1;
    }

LABEL_17:
    v15 = @"SavageErrorDomain";
    v16 = "SavageUpdaterExecCommand - No-preflight - controller exec command error";
    goto LABEL_18;
  }

  v13 = SavageUpdateController::execCommand(v8, theString, a3, a4);
  if (!v13)
  {
    v13 = JasmineIRUpdateController::execCommand(v9, theString, a3, a4);
    if (!v13)
    {
      v13 = YonkersUpdateController::execCommand(v10, theString, a3, a4);
      if (!v13)
      {
        return 1;
      }
    }
  }

  v14 = v13;
  v15 = @"SavageErrorDomain";
  v16 = "SavageUpdaterExecCommand - Preflighting - controller exec command error";
LABEL_18:
  v17 = a3;
LABEL_19:
  CFErrorWithDomain = createCFErrorWithDomain(v16, v14, v17, v15);
  v19 = CFErrorWithDomain;
  if (a5 && CFErrorWithDomain)
  {
    *a5 = SavageSafeRetain(CFErrorWithDomain);
LABEL_28:
    CFRelease(v19);
    return 0;
  }

  if (CFErrorWithDomain)
  {
    goto LABEL_28;
  }

  return 0;
}

uint64_t encryptFDRData(const void *a1, size_t a2, void *a3, size_t *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v8 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v9 = __osLogPearlLibTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218752;
    v16 = a1;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_299F4E000, v9, OS_LOG_TYPE_DEFAULT, "encryptFDRData %p %zu %p %p\n", &v15, 0x2Au);
  }

  v10 = encryptFDRDataInternal(a1, a2, a3, a4, 0);
  v11 = v10;
  if (v10)
  {
    encryptFDRData_cold_2(v10, v10);
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v12 = __osLogPearlLibTrace;
    }

    else
    {
      v12 = v8;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = 0;
      _os_log_impl(&dword_299F4E000, v12, OS_LOG_TYPE_DEFAULT, "encryptFDRData -> %d\n", &v15, 8u);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t encryptFDRDataInternal(const void *a1, size_t a2, void *a3, size_t *a4, int a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v10 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v11 = __osLogPearlLibTrace;
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134219008;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = a4;
    v29 = 1024;
    v30 = a5;
    _os_log_impl(&dword_299F4E000, v11, OS_LOG_TYPE_DEFAULT, "encryptFDRDataInternal %p %zu %p %p %d\n", &v21, 0x30u);
  }

  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a2 >= 0xFFFFFFFFFFFFFFACLL)
          {
            encryptFDRDataInternal_cold_5(a2 >= 0xFFFFFFFFFFFFFFACLL, &v21);
          }

          else if (*a4 < a2 + 84)
          {
            encryptFDRDataInternal_cold_4(&v21);
          }

          else
          {
            v12 = initialize();
            if (v12)
            {
              encryptFDRDataInternal_cold_2(v12, v12, &v21);
            }

            else
            {
              v13 = performCommand(_connect, 9, a5, a1, a2, a3, a4);
              if (!v13)
              {
                v14 = 0;
                goto LABEL_17;
              }

              encryptFDRDataInternal_cold_3(v13, v13, &v21);
            }
          }
        }

        else
        {
          encryptFDRDataInternal_cold_6(&v21);
        }
      }

      else
      {
        encryptFDRDataInternal_cold_7(&v21);
      }
    }

    else
    {
      encryptFDRDataInternal_cold_8(&v21);
    }
  }

  else
  {
    encryptFDRDataInternal_cold_9(&v21);
  }

  v14 = v21;
LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v14)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v15 = __osLogPearlLibTrace;
    }

    else
    {
      v15 = v10;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      LODWORD(v22) = v14;
      v16 = v15;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_299F4E000, v16, v17, "encryptFDRDataInternal -> %d\n", &v21, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v18 = __osLogPearlLibTrace;
    }

    else
    {
      v18 = v10;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      LODWORD(v22) = 0;
      v16 = v18;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t verifyFDRData(const void *a1, size_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = a1;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "verifyFDRData %p %zu\n", &v15, 0x16u);
  }

  if (a1)
  {
    if (a2)
    {
      v6 = initialize();
      if (v6)
      {
        verifyFDRData_cold_2(v6, v6, &v15);
      }

      else
      {
        v7 = performCommand(_connect, 10, 0, a1, a2, 0, 0);
        v8 = 0;
        if (!v7)
        {
          goto LABEL_12;
        }

        verifyFDRData_cold_3(v7, v7, &v15);
      }
    }

    else
    {
      verifyFDRData_cold_4(&v15);
    }
  }

  else
  {
    verifyFDRData_cold_5(&v15);
  }

  v8 = v15;
LABEL_12:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v8)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v9 = __osLogPearlLibTrace;
    }

    else
    {
      v9 = v4;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109120;
      LODWORD(v16) = v8;
      v10 = v9;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&dword_299F4E000, v10, v11, "verifyFDRData -> %d\n", &v15, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v12 = __osLogPearlLibTrace;
    }

    else
    {
      v12 = v4;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = 0;
      v10 = v12;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_29;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t initialize()
{
  v0 = *MEMORY[0x29EDBB118];
  v1 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    v4 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &_connect);
    v5 = v4;
    if (v4)
    {
      initialize_cold_1(v4);
    }

    IOObjectRelease(v3);
  }

  else
  {
    initialize_cold_2(&v7);
    return v7;
  }

  return v5;
}

uint64_t performCommand(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v14 = calloc(a5 + 8, 1uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = 21072;
    v14[1] = a2;
    v14[2] = 1;
    v14[3] = a3;
    if (a5)
    {
      memmove(v14 + 4, a4, a5);
    }

    if (a7)
    {
      v18 = *a7;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
      *a7 = v18;
    }

    else
    {
      v18 = 0;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
    }

    free(v15);
  }

  else
  {
    performCommand_cold_1(&v19);
    return v19;
  }

  return v16;
}

uint64_t decryptFDRData(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (*a4 < a2)
          {
            decryptFDRData_cold_3(&v12);
          }

          else
          {
            v8 = initialize();
            if (v8)
            {
              decryptFDRData_cold_1(v8, v8, &v12);
            }

            else
            {
              v9 = performCommand(_connect, 30, 0, a1, a2, a3, a4);
              v10 = 0;
              if (!v9)
              {
                goto LABEL_8;
              }

              decryptFDRData_cold_2(v9, v9, &v12);
            }
          }
        }

        else
        {
          decryptFDRData_cold_4(&v12);
        }
      }

      else
      {
        decryptFDRData_cold_5(&v12);
      }
    }

    else
    {
      decryptFDRData_cold_6(&v12);
    }
  }

  else
  {
    decryptFDRData_cold_7(&v12);
  }

  v10 = v12;
LABEL_8:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  return v10;
}

uint64_t overridePCECalibration(const void *a1, size_t a2)
{
  if (a1 && a2)
  {
    v4 = initialize();
    if (v4)
    {
      overridePCECalibration_cold_1(v4, v4, &v8);
      v6 = v8;
    }

    else
    {
      v5 = performCommand(_connect, 34, 0, a1, a2, 0, 0);
      v6 = 0;
      if (v5)
      {
        overridePCECalibration_cold_2(v5, v5, &v9);
        v6 = v9;
      }
    }
  }

  else
  {
    overridePCECalibration_cold_3(&v10);
    v6 = v10;
  }

  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  return v6;
}

uint64_t decompressReferenceFrames(const void *a1, size_t a2, uint64_t a3)
{
  v111 = *MEMORY[0x29EDCA608];
  v102 = 0;
  *__str = 0u;
  v110 = 0u;
  v3 = &logString[2304];
  if (!a1 || !a2)
  {
    decompressReferenceFrames_cold_28(buf);
LABEL_176:
    v75 = *buf;
    goto LABEL_141;
  }

  if (!a3)
  {
    decompressReferenceFrames_cold_27(buf);
    goto LABEL_176;
  }

  v7 = initialize();
  if (v7)
  {
    decompressReferenceFrames_cold_1(v7, v7, buf);
    goto LABEL_176;
  }

  v8 = calloc(a2 + 9, 1uLL);
  if (!v8)
  {
    decompressReferenceFrames_cold_26(buf);
    goto LABEL_176;
  }

  v9 = v8;
  *v8 = 589827;
  v8[4] = 0;
  *(v8 + 5) = a2;
  memcpy(v8 + 9, a1, a2);
  v10 = performCommand(_connect, 36, 0, v9, a2 + 9, 0, 0);
  if (v10)
  {
    v91 = v10;
    decompressReferenceFrames_cold_2(v10, v9);
    v75 = v91;
    goto LABEL_141;
  }

  free(v9);
  v102 = 52;
  v11 = calloc(0x34uLL, 1uLL);
  if (!v11)
  {
    decompressReferenceFrames_cold_25(buf);
    goto LABEL_176;
  }

  v12 = v11;
  v13 = performCommand(_connect, 45, 0, 0, 0, v11, &v102);
  v14 = *MEMORY[0x29EDCA610];
  if (v13)
  {
    decompressReferenceFrames_cold_3(v14, v13, v13, buf);
LABEL_180:
    v75 = *buf;
    goto LABEL_181;
  }

  fprintf(v14, "ReferenceFramesInfo setCount: %d\n", *v12);
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLib)
  {
    v15 = __osLogPearlLib;
  }

  else
  {
    v15 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *v12;
    *buf = 67109120;
    *v104 = v16;
    _os_log_impl(&dword_299F4E000, v15, OS_LOG_TYPE_DEFAULT, "ReferenceFramesInfo setCount: %d\n", buf, 8u);
  }

  if (!*v12)
  {
    decompressReferenceFrames_cold_24(buf);
    goto LABEL_180;
  }

  v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s%s", a3, "/System/Library/Pearl/ReferenceFrames"];
  if (!v17)
  {
    decompressReferenceFrames_cold_23(*MEMORY[0x29EDCA610], buf);
    goto LABEL_180;
  }

  v18 = v17;
  fprintf(*MEMORY[0x29EDCA610], "ReferenceFramesPath: %s\n", [v17 UTF8String]);
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLib)
  {
    v19 = __osLogPearlLib;
  }

  else
  {
    v19 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v18;
    v21 = v19;
    v22 = [v18 UTF8String];
    *buf = 136315138;
    *v104 = v22;
    _os_log_impl(&dword_299F4E000, v21, OS_LOG_TYPE_DEFAULT, "ReferenceFramesPath: %s\n", buf, 0xCu);
  }

  v23 = [MEMORY[0x29EDB9FB8] defaultManager];
  v24 = [v23 fileExistsAtPath:v18];

  v95 = v18;
  if (v24)
  {
    v25 = [MEMORY[0x29EDB9FB8] defaultManager];
    v26 = [v25 removeItemAtPath:v18 error:0];

    if (v26)
    {
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v27 = __osLogPearlLib;
      }

      else
      {
        v27 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v104 = v18;
        _os_log_impl(&dword_299F4E000, v27, OS_LOG_TYPE_DEFAULT, "Removed %@\n", buf, 0xCu);
      }

      goto LABEL_34;
    }

    v75 = v26 ^ 1u;
    decompressReferenceFrames_cold_6(v75, v18);
LABEL_181:
    free(v12);
    goto LABEL_141;
  }

LABEL_34:
  v28 = [MEMORY[0x29EDB9FB8] defaultManager];
  v29 = [v28 fileExistsAtPath:v18];

  if (v29)
  {
    goto LABEL_37;
  }

  v107 = *MEMORY[0x29EDB9E68];
  v108 = &unk_2A202F000;
  v30 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  v31 = [MEMORY[0x29EDB9FB8] defaultManager];
  v32 = [v31 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:v30 error:0] ^ 1;

  if (v32)
  {
    decompressReferenceFrames_cold_8(v32, v30, v18);
    v75 = v32;
    goto LABEL_181;
  }

LABEL_37:
  if (*v12)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v96 = 0;
    v97 = 0;
    v36 = 0;
    v37 = 0;
    v93 = v12 + 1;
    v38 = 0;
    v39 = v95;
    v92 = v12;
    while (1)
    {
      v100 = &v93[3 * v33];
      fprintf(*MEMORY[0x29EDCA610], "ReferenceFramesSetInfo, index: %d, type: %d, count: %d, size: %d\n", v33, *v100, v100[1], v100[2]);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v40 = __osLogPearlLib;
      }

      else
      {
        v40 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *v100;
        v42 = v100[1];
        v43 = v100[2];
        *buf = 67109888;
        *v104 = v33;
        *&v104[4] = 1024;
        *&v104[6] = v41;
        LOWORD(v105) = 1024;
        *(&v105 + 2) = v42;
        HIWORD(v105) = 1024;
        *v106 = v43;
        _os_log_impl(&dword_299F4E000, v40, OS_LOG_TYPE_DEFAULT, "ReferenceFramesSetInfo, index: %d, type: %d, count: %d, size: %d\n", buf, 0x1Au);
      }

      v44 = *v100;
      if (v44 <= 3)
      {
        v96 = off_29F2921F0[v44];
      }

      v45 = [MEMORY[0x29EDB8E00] dictionary];

      if (!v45)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "setDictionary", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 383);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v89 = __osLogPearlLib;
        }

        else
        {
          v89 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "setDictionary";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 383;
          _os_log_impl(&dword_299F4E000, v89, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v75 = 261;
        v39 = v95;
        goto LABEL_81;
      }

      v98 = v33;
      v46 = v45;
      [v45 setObject:&unk_2A202F018 forKeyedSubscript:@"FormatDR"];
      v47 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@/reference-%@.plist", v39, v96];

      v97 = v46;
      if (!v47)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "dictFileName", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 388);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v90 = __osLogPearlLib;
        }

        else
        {
          v90 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "dictFileName";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 388;
          _os_log_impl(&dword_299F4E000, v90, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v75 = 261;
        v38 = v46;
        v39 = v95;
        goto LABEL_81;
      }

      v94 = v47;
      v48 = v100;
      if (v100[1])
      {
        break;
      }

      v50 = v98;
LABEL_70:
      v38 = v94;
      if (([v97 writeToFile:v94 atomically:0] & 1) == 0)
      {
        decompressReferenceFrames_cold_19(*MEMORY[0x29EDCA610], v97);
        v75 = 1;
        v12 = v92;
        goto LABEL_81;
      }

      fprintf(*MEMORY[0x29EDCA610], "Reference set dictionary written to %s\n", [v94 UTF8String]);
      v12 = v92;
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v71 = __osLogPearlLib;
      }

      else
      {
        v71 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v94;
        v73 = v71;
        v74 = [v94 UTF8String];
        *buf = 136315138;
        *v104 = v74;
        _os_log_impl(&dword_299F4E000, v73, OS_LOG_TYPE_DEFAULT, "Reference set dictionary written to %s\n", buf, 0xCu);
      }

      v33 = v50 + 1;
      if (v33 >= *v92)
      {

        v75 = 0;
LABEL_81:

        goto LABEL_82;
      }
    }

    v49 = 0;
    LODWORD(v50) = v98;
    while (1)
    {
      v101[0] = v50;
      v101[1] = v49;
      v102 = v48[2] + 524;
      v51 = calloc(v102, 1uLL);
      if (!v51)
      {
        break;
      }

      v52 = v51;
      v53 = performCommand(*(v3 + 452), 46, 0, v101, 8uLL, v51, &v102);
      if (v53)
      {
        v75 = v53;
        v78 = v53;
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "err == 0 ", v53, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 403);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v79 = __osLogPearlLib;
        }

        else
        {
          v79 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "err == 0 ";
          *&v104[8] = 2048;
          v105 = v78;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 403;
          _os_log_impl(&dword_299F4E000, v79, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v3 = logString + 2304;
        goto LABEL_139;
      }

      if ((snprintf(__str, 0x20uLL, "%.6f", *v52) - 32) <= 0xFFFFFFE0)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "ret > 0 && ret < sizeof(tempChar)", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 406);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v80 = __osLogPearlLib;
        }

        else
        {
          v80 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "ret > 0 && ret < sizeof(tempChar)";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 406;
          _os_log_impl(&dword_299F4E000, v80, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        goto LABEL_138;
      }

      v54 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];

      if (!v54)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "tempString", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 409);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v81 = __osLogPearlLib;
        }

        else
        {
          v81 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "tempString";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 409;
          _os_log_impl(&dword_299F4E000, v81, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v35 = 0;
        goto LABEL_138;
      }

      v35 = v54;
      v55 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"reference-%@__T_%@.bin", v96, v54];

      if (!v55)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refFileName", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 412);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v82 = __osLogPearlLib;
        }

        else
        {
          v82 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "refFileName";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 412;
          _os_log_impl(&dword_299F4E000, v82, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v36 = 0;
        goto LABEL_138;
      }

      v36 = v55;
      v56 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@/%@", v39, v55];

      if (!v56)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refPath", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 415);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v83 = __osLogPearlLib;
        }

        else
        {
          v83 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "refPath";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 415;
          _os_log_impl(&dword_299F4E000, v83, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v37 = 0;
LABEL_138:
        v75 = 261;
LABEL_139:
        free(v92);
        free(v52);

        v76 = v95;
        goto LABEL_140;
      }

      v37 = v56;
      [v97 setObject:v36 forKeyedSubscript:v35];
      v57 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v52 + 3 length:v52[2] freeWhenDone:0];

      if (!v57)
      {
        fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refFrameData", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 423);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v84 = __osLogPearlLib;
        }

        else
        {
          v84 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "refFrameData";
          *&v104[8] = 2048;
          v105 = 0;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 423;
          _os_log_impl(&dword_299F4E000, v84, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v34 = 0;
        goto LABEL_138;
      }

      v34 = v57;
      v58 = [v57 writeToFile:v37 atomically:0];
      v59 = *MEMORY[0x29EDCA610];
      if ((v58 & 1) == 0)
      {
        fprintf(v59, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "err == 0 ", 1, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 426);
        if (OSLogInit_onceToken != -1)
        {
          encryptFDRData_cold_3();
        }

        if (__osLogPearlLib)
        {
          v88 = __osLogPearlLib;
        }

        else
        {
          v88 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v104 = "err == 0 ";
          *&v104[8] = 2048;
          v105 = 1;
          *v106 = 2080;
          *&v106[2] = "";
          *&v106[10] = 2080;
          *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v106[20] = 1024;
          *&v106[22] = 426;
          _os_log_impl(&dword_299F4E000, v88, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v75 = 1;
        goto LABEL_139;
      }

      v60 = v52;
      v61 = v36;
      v99 = v35;
      v62 = v34;
      v63 = v60;
      fprintf(v59, "Reference frame (set=%d, frame=%d, size=%d, type=%d, temp=%f) written to %s\n", v98, v49, v60[2], *v100, *v60, [v37 UTF8String]);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      v50 = v98;
      if (__osLogPearlLib)
      {
        v64 = __osLogPearlLib;
      }

      else
      {
        v64 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v63[2];
        v66 = *v100;
        v67 = *v63;
        v68 = v37;
        v69 = v64;
        v50 = v98;
        v70 = [v37 UTF8String];
        *buf = 67110402;
        *v104 = v98;
        *&v104[4] = 1024;
        *&v104[6] = v49;
        LOWORD(v105) = 1024;
        *(&v105 + 2) = v65;
        HIWORD(v105) = 1024;
        *v106 = v66;
        *&v106[4] = 2048;
        *&v106[6] = v67;
        v3 = logString + 2304;
        *&v106[14] = 2080;
        *&v106[16] = v70;
        _os_log_impl(&dword_299F4E000, v69, OS_LOG_TYPE_DEFAULT, "Reference frame (set=%d, frame=%d, size=%d, type=%d, temp=%f) written to %s\n", buf, 0x2Eu);
      }

      free(v63);
      ++v49;
      v48 = v100;
      v39 = v95;
      v34 = v62;
      v35 = v99;
      v36 = v61;
      if (v49 >= v100[1])
      {
        goto LABEL_70;
      }
    }

    fprintf(*MEMORY[0x29EDCA610], "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refFrame", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 400);
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLib)
    {
      v77 = __osLogPearlLib;
    }

    else
    {
      v77 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *v104 = "refFrame";
      *&v104[8] = 2048;
      v105 = 0;
      *v106 = 2080;
      *&v106[2] = "";
      *&v106[10] = 2080;
      *&v106[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
      *&v106[20] = 1024;
      *&v106[22] = 400;
      _os_log_impl(&dword_299F4E000, v77, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    free(v92);

    v75 = 260;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v75 = 0;
    v39 = v95;
LABEL_82:
    free(v12);

    v76 = v39;
LABEL_140:
  }

LABEL_141:
  v85 = *(v3 + 452);
  if (v85)
  {
    IOServiceClose(v85);
    *(v3 + 452) = 0;
  }

  v86 = *MEMORY[0x29EDCA608];
  return v75;
}

uint64_t getSavageProvisioningData(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4, uint64_t a5, const void *a6, size_t a7, uint64_t a8, void *a9, _OWORD *a10, void *a11, uint64_t a12, void *a13)
{
  v61 = *MEMORY[0x29EDCA608];
  v59 = 0u;
  memset(v60, 0, 27);
  v57 = 0u;
  v58 = 0u;
  v52 = 75;
  v13 = &logString[2304];
  if (!a2)
  {
    getSavageProvisioningData_cold_23(buf);
    goto LABEL_69;
  }

  if (!a4)
  {
    getSavageProvisioningData_cold_22(buf);
    goto LABEL_69;
  }

  if (!a6 || !a7)
  {
    getSavageProvisioningData_cold_21(buf);
    goto LABEL_69;
  }

  if (!a8)
  {
    getSavageProvisioningData_cold_20(buf);
    goto LABEL_69;
  }

  if (!a9 || *a9 <= 0x37uLL)
  {
    getSavageProvisioningData_cold_19(buf);
LABEL_69:
    v45 = *buf;
    goto LABEL_56;
  }

  if (!a10)
  {
    getSavageProvisioningData_cold_18(buf);
    goto LABEL_69;
  }

  if (!a11 || *a11 <= 0xFuLL)
  {
    getSavageProvisioningData_cold_17(buf);
    goto LABEL_69;
  }

  if (!a12)
  {
    getSavageProvisioningData_cold_16(buf);
    goto LABEL_69;
  }

  if (!a13 || *a13 <= 2uLL)
  {
    getSavageProvisioningData_cold_15(buf);
    goto LABEL_69;
  }

  v20 = initialize();
  if (v20)
  {
    getSavageProvisioningData_cold_1(v20, v20, buf);
    goto LABEL_69;
  }

  v49 = a4;
  v50 = a6;
  v21 = MEMORY[0x29EDB8E00];
  v55[0] = @"GetCombined";
  v55[1] = @"StripImg4";
  v56[0] = MEMORY[0x29EDB8EB0];
  v56[1] = MEMORY[0x29EDB8EA8];
  v55[2] = @"VerifyData";
  v56[2] = MEMORY[0x29EDB8EA8];
  v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v23 = [v21 dictionaryWithDictionary:v22];

  if (!a1)
  {
    goto LABEL_19;
  }

  v24 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s/%@", a1, @"/System/Library/Caches/com.apple.factorydata"];
  if (!v24)
  {
    getSavageProvisioningData_cold_3();
LABEL_81:

    v45 = 261;
    goto LABEL_56;
  }

  v25 = [MEMORY[0x29EDB8E70] URLWithString:v24];
  if (!v25)
  {
    getSavageProvisioningData_cold_2();
    goto LABEL_81;
  }

  v26 = v25;
  [v23 setObject:v25 forKeyedSubscript:@"DataDirectory"];

LABEL_19:
  v27 = AMFDRSealingMapCopyLocalDataForClass();
  fprintf(*MEMORY[0x29EDCA610], "%s: Loading PSPC from FDR.\n", "getSavageProvisioningData");
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLib)
  {
    v28 = __osLogPearlLib;
  }

  else
  {
    v28 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v54 = "getSavageProvisioningData";
    _os_log_impl(&dword_299F4E000, v28, OS_LOG_TYPE_DEFAULT, "%s: Loading PSPC from FDR.\n", buf, 0xCu);
  }

  v29 = *MEMORY[0x29EDCA610];
  if (v27)
  {
    fprintf(v29, "%s: PSPC data found.\n", "getSavageProvisioningData");
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    v51 = v23;
    if (__osLogPearlLib)
    {
      v30 = __osLogPearlLib;
    }

    else
    {
      v30 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v54 = "getSavageProvisioningData";
      _os_log_impl(&dword_299F4E000, v30, OS_LOG_TYPE_DEFAULT, "%s: PSPC data found.\n", buf, 0xCu);
    }

    v31 = [v27 length];
    v32 = calloc(v31 + 9, 1uLL);
    if (v32)
    {
      v33 = v32;
      bzero(v32, v31 + 9);
      *v33 = 1048579;
      v33[4] = 0;
      *(v33 + 5) = [v27 length];
      memcpy(v33 + 9, [v27 bytes], *(v33 + 5));
      v34 = performCommand(_connect, 36, 0, v33, v31 + 9, 0, 0);
      v35 = *MEMORY[0x29EDCA610];
      if (v34)
      {
        getSavageProvisioningData_cold_6(v35, v34, v34, buf);
        v45 = *buf;
        goto LABEL_55;
      }

      fprintf(v35, "%s: PSPC data loaded to SEP.\n", "getSavageProvisioningData");
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v36 = __osLogPearlLib;
      }

      else
      {
        v36 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v54 = "getSavageProvisioningData";
        _os_log_impl(&dword_299F4E000, v36, OS_LOG_TYPE_DEFAULT, "%s: PSPC data loaded to SEP.\n", buf, 0xCu);
      }

      if (a7 >= 0xFFFFFFFFFFFFFFB4)
      {
        getSavageProvisioningData_cold_12(a7 >= 0xFFFFFFFFFFFFFFB4, buf);
      }

      else
      {
        v37 = calloc(a7 + 76, 1uLL);
        if (v37)
        {
          v38 = v37;
          v39 = *a2;
          v40 = a2[1];
          v41 = a2[2];
          *(v37 + 6) = *(a2 + 6);
          *(v37 + 1) = v40;
          *(v37 + 2) = v41;
          *v37 = v39;
          *(v37 + 56) = *v49;
          memcpy(v37 + 76, v50, a7);
          v38[18] = a7;
          v42 = performCommand(_connect, 2, 0, v38, a7 + 76, &v57, &v52);
          if (v42)
          {
            getSavageProvisioningData_cold_8(v42, v42, buf);
          }

          else
          {
            if (v52 == 75)
            {
              *a9 = 56;
              v43 = v58;
              *a8 = v57;
              *(a8 + 16) = v43;
              *(a8 + 32) = v59;
              *(a8 + 48) = *&v60[0];
              *a11 = 16;
              *a10 = *(v60 + 8);
              *a13 = 3;
              *a12 = WORD4(v60[1]);
              *(a12 + 2) = BYTE10(v60[1]);
              fprintf(*MEMORY[0x29EDCA610], "%s: Successfully got provisioning data.\n", "getSavageProvisioningData");
              if (OSLogInit_onceToken != -1)
              {
                encryptFDRData_cold_3();
              }

              v13 = &logString[2304];
              if (__osLogPearlLib)
              {
                v44 = __osLogPearlLib;
              }

              else
              {
                v44 = MEMORY[0x29EDCA988];
              }

              v45 = 0;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v54 = "getSavageProvisioningData";
                _os_log_impl(&dword_299F4E000, v44, OS_LOG_TYPE_DEFAULT, "%s: Successfully got provisioning data.\n", buf, 0xCu);
                v45 = 0;
              }

              goto LABEL_54;
            }

            getSavageProvisioningData_cold_9(buf);
          }

          v45 = *buf;
          v13 = logString + 2304;
LABEL_54:
          free(v38);
LABEL_55:
          free(v33);

          goto LABEL_56;
        }

        getSavageProvisioningData_cold_11(buf);
      }

      v45 = *buf;
      v13 = logString + 2304;
      goto LABEL_55;
    }

    getSavageProvisioningData_cold_13(v51, v27);
    v45 = 260;
  }

  else
  {
    getSavageProvisioningData_cold_14(v29, v23);
    v45 = 259;
  }

LABEL_56:
  v46 = *(v13 + 452);
  if (v46)
  {
    IOServiceClose(v46);
    *(v13 + 452) = 0;
  }

  v47 = *MEMORY[0x29EDCA608];
  return v45;
}

uint64_t checkSavageProvisioning(_DWORD *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "checkSavageProvisioning\n", &v11, 2u);
  }

  v12 = 0;
  v11 = 1;
  if (a1)
  {
    v4 = initialize();
    if (v4)
    {
      checkSavageProvisioning_cold_2(v4, v4, buf);
    }

    else
    {
      v5 = performCommand(_connect, 11, 0, 0, 0, &v12, &v11);
      if (v5)
      {
        checkSavageProvisioning_cold_3(v5, v5, buf);
      }

      else
      {
        if (v11 == 1)
        {
          *a1 = v12;
          if (OSLogInit_onceToken != -1)
          {
            encryptFDRData_cold_3();
          }

          if (__osLogPearlLibTrace)
          {
            v6 = __osLogPearlLibTrace;
          }

          else
          {
            v6 = v2;
          }

          v7 = 0;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v14 = 0;
            _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "checkSavageProvisioning -> %d\n", buf, 8u);
            v7 = 0;
          }

          goto LABEL_19;
        }

        checkSavageProvisioning_cold_4(buf);
      }
    }
  }

  else
  {
    checkSavageProvisioning_cold_6(buf);
  }

  v7 = *buf;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "checkSavageProvisioning -> %d\n", buf, 8u);
  }

LABEL_19:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t getPearlSelfTestResult(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "getPearlSelfTestResult\n", buf, 2u);
  }

  if (a1)
  {
    v4 = initialize();
    if (v4)
    {
      getPearlSelfTestResult_cold_2(v4, v4, buf);
    }

    else
    {
      v11 = 8;
      v12 = 0;
      v5 = performCommand(_connect, 58, 0, 0, 0, &v12, &v11);
      if (v5)
      {
        getPearlSelfTestResult_cold_3(v5, v5, buf);
      }

      else
      {
        if (v11 == 8)
        {
          *a1 = v12;
          if (OSLogInit_onceToken != -1)
          {
            encryptFDRData_cold_3();
          }

          if (__osLogPearlLibTrace)
          {
            v6 = __osLogPearlLibTrace;
          }

          else
          {
            v6 = v2;
          }

          v7 = 0;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v14 = 0;
            _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "getPearlSelfTestResult -> %d\n", buf, 8u);
            v7 = 0;
          }

          goto LABEL_19;
        }

        getPearlSelfTestResult_cold_4(buf);
      }
    }
  }

  else
  {
    getPearlSelfTestResult_cold_6(buf);
  }

  v7 = *buf;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "getPearlSelfTestResult -> %d\n", buf, 8u);
  }

LABEL_19:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t simulateSelfTestFailure(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "simulateSelfTestFailure\n", buf, 2u);
  }

  v4 = initialize();
  if (v4)
  {
    simulateSelfTestFailure_cold_2(v4, v4, buf);
  }

  else
  {
    memset(v11, 255, sizeof(v11));
    v12 = a1;
    v5 = performCommand(_connect, 44, 0, v11, 0x1CuLL, 0, 0);
    if (!v5)
    {
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLibTrace)
      {
        v6 = __osLogPearlLibTrace;
      }

      else
      {
        v6 = v2;
      }

      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = 0;
        _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "simulateSelfTestFailure -> %d\n", buf, 8u);
        v7 = 0;
      }

      goto LABEL_17;
    }

    simulateSelfTestFailure_cold_3(v5, v5, buf);
  }

  v7 = *buf;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "simulateSelfTestFailure -> %d\n", buf, 8u);
  }

LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t checkSecureStreaming()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v0 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_299F4E000, v1, OS_LOG_TYPE_DEFAULT, "checkSecureStreaming\n", v7, 2u);
  }

  v2 = checkSecureStreamingAndVerifySignatures(0);
  v3 = v2;
  if (v2)
  {
    checkSecureStreaming_cold_2(v2, v2);
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v4 = __osLogPearlLibTrace;
    }

    else
    {
      v4 = v0;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = 0;
      _os_log_impl(&dword_299F4E000, v4, OS_LOG_TYPE_DEFAULT, "checkSecureStreaming -> %d\n", v7, 8u);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t checkSecureStreamingAndVerifySignatures(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = a1;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "checkSecureStreamingAndVerifySignatures (%u)\n", &v11, 8u);
  }

  v4 = initialize();
  if (v4)
  {
    checkSecureStreamingAndVerifySignatures_cold_2(v4, v4, &v11);
  }

  else
  {
    v5 = performCommand(_connect, 59, a1, 0, 0, 0, 0);
    if (!v5)
    {
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLibTrace)
      {
        v6 = __osLogPearlLibTrace;
      }

      else
      {
        v6 = v2;
      }

      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        v12 = 0;
        _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "checkSecureStreamingAndVerifySignatures -> %d\n", &v11, 8u);
        v7 = 0;
      }

      goto LABEL_17;
    }

    checkSecureStreamingAndVerifySignatures_cold_3(v5, v5, &v11);
  }

  v7 = v11;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    v12 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "checkSecureStreamingAndVerifySignatures -> %d\n", &v11, 8u);
  }

LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t prewarmCamera(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = a1;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "prewarmCamera (%u)\n", &v11, 8u);
  }

  v4 = initialize();
  if (v4)
  {
    prewarmCamera_cold_2(v4, v4, &v11);
  }

  else
  {
    v5 = performCommand(_connect, 43, a1, 0, 0, 0, 0);
    if (!v5)
    {
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLibTrace)
      {
        v6 = __osLogPearlLibTrace;
      }

      else
      {
        v6 = v2;
      }

      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        v12 = 0;
        _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "prewarmCamera -> %d\n", &v11, 8u);
        v7 = 0;
      }

      goto LABEL_17;
    }

    prewarmCamera_cold_3(v5, v5, &v11);
  }

  v7 = v11;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    v12 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "prewarmCamera -> %d\n", &v11, 8u);
  }

LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t setEntitlementOverride(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = a1;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = a1;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "setEntitlementOverrideConfig (0x%x)\n", buf, 8u);
  }

  v4 = initialize();
  if (v4)
  {
    setEntitlementOverride_cold_2(v4, v4, buf);
  }

  else
  {
    v5 = performCommand(_connect, 64, 0, &v11, 4uLL, 0, 0);
    if (!v5)
    {
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLibTrace)
      {
        v6 = __osLogPearlLibTrace;
      }

      else
      {
        v6 = v2;
      }

      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v13 = 0;
        _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "setEntitlementOverrideConfig -> %d\n", buf, 8u);
        v7 = 0;
      }

      goto LABEL_17;
    }

    setEntitlementOverride_cold_3(v5, v5, buf);
  }

  v7 = *buf;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v13 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "setEntitlementOverrideConfig -> %d\n", buf, 8u);
  }

LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t pearlSeaCookieHandleMessage(int a1, const void *a2, size_t a3, void *a4, size_t *a5, id a6)
{
  v39 = *MEMORY[0x29EDCA608];
  v30 = a6;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v11 = &logString[2328];
  v12 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v13 = __osLogPearlLibTrace;
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    v33 = 2048;
    v34 = a2;
    v35 = 2048;
    *v36 = a3;
    *&v36[8] = 2048;
    *&v36[10] = a4;
    v37 = 2048;
    v38 = a5;
    _os_log_impl(&dword_299F4E000, v13, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage %d %p %zu %p %p\n", buf, 0x30u);
  }

  if (a1 && a1 != 7)
  {
    if (!a2)
    {
      pearlSeaCookieHandleMessage_cold_14(buf, &v31);
      goto LABEL_63;
    }

    if (!a3)
    {
      pearlSeaCookieHandleMessage_cold_13(buf, &v31);
      goto LABEL_63;
    }
  }

  if (a1 == 8 || a4)
  {
    if (a1 == 8 || a5)
    {
      if (a5)
      {
        v14 = *a5;
      }

      else
      {
        v14 = 0;
      }

      v15 = initialize();
      if (v15)
      {
        pearlSeaCookieHandleMessage_cold_4(v15, v15, buf, &v31);
        v17 = *buf;
        v26 = v31;
      }

      else
      {
        if (a3 >= 0xFFFFFFFFFFFFFFF3)
        {
          pearlSeaCookieHandleMessage_cold_12(a3 >= 0xFFFFFFFFFFFFFFF3, buf, &v31);
        }

        else
        {
          v16 = malloc(a3 + 13);
          if (v16)
          {
            v17 = v16;
            *v16 = a1;
            v16[4] = 1;
            *(v16 + 5) = a3;
            memcpy(v16 + 13, a2, a3);
            v18 = performCommand(_connect, 70, 0, v17, a3 + 13, a4, a5);
            if (v18)
            {
              pearlSeaCookieHandleMessage_cold_5(v18, v17, v18, buf, &v31);
            }

            else
            {
              if (a1 == 2)
              {
LABEL_27:
                v17[4] = 0;
                *a5 = v14;
                v21 = performCommand(_connect, 70, 0, v17, a3 + 13, a4, a5);
                if (!v21)
                {
LABEL_28:
                  v22 = MEMORY[0x29EDCA988];
                  if (a4 && a5)
                  {
                    if (OSLogInit_onceToken != -1)
                    {
                      encryptFDRData_cold_3();
                    }

                    if (__osLogPearlLib)
                    {
                      v23 = __osLogPearlLib;
                    }

                    else
                    {
                      v23 = v22;
                    }

                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      v24 = *a5;
                      *buf = 67109890;
                      *&buf[4] = a1;
                      v33 = 2048;
                      v34 = v24;
                      v35 = 1040;
                      *v36 = v24;
                      *&v36[4] = 2096;
                      *&v36[6] = a4;
                      _os_log_impl(&dword_299F4E000, v23, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
                    }
                  }

                  if (OSLogInit_onceToken != -1)
                  {
                    encryptFDRData_cold_3();
                  }

                  if (__osLogPearlLibTrace)
                  {
                    v25 = __osLogPearlLibTrace;
                  }

                  else
                  {
                    v25 = v22;
                  }

                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v33 = 1024;
                    LODWORD(v34) = 0;
                    _os_log_impl(&dword_299F4E000, v25, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
                  }

                  v26 = 0;
LABEL_45:
                  free(v17);
                  goto LABEL_46;
                }

                pearlSeaCookieHandleMessage_cold_7(v21, v17, v21, buf, &v31);
                goto LABEL_60;
              }

              if (a1 != 5)
              {
                goto LABEL_28;
              }

              if (v30)
              {
                v19 = *a5;
                v20 = v30[2]();
                if (!v20)
                {
                  goto LABEL_27;
                }

                pearlSeaCookieHandleMessage_cold_6(v20, v17, v20, buf, &v31);
              }

              else
              {
                pearlSeaCookieHandleMessage_cold_8(v17, buf, &v31);
              }
            }

LABEL_60:
            v17 = *buf;
            v26 = v31;
            v12 = MEMORY[0x29EDCA988];
            goto LABEL_61;
          }

          pearlSeaCookieHandleMessage_cold_11(buf, &v31);
        }

        v17 = *buf;
        v26 = v31;
        v12 = MEMORY[0x29EDCA988];
      }

LABEL_61:
      v11 = logString + 2328;
      goto LABEL_64;
    }

    pearlSeaCookieHandleMessage_cold_3(buf, &v31);
  }

  else
  {
    pearlSeaCookieHandleMessage_cold_2(buf, &v31);
  }

LABEL_63:
  v17 = *buf;
  v26 = v31;
LABEL_64:
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (*(v11 + 222))
  {
    v29 = *(v11 + 222);
  }

  else
  {
    v29 = v12;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v33 = 1024;
    LODWORD(v34) = v26;
    _os_log_impl(&dword_299F4E000, v29, OS_LOG_TYPE_ERROR, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
  }

  if (v17)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t mapScheme3ObjectToISPANE(int *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v2 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v3 = __osLogPearlLibTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    v14 = 4;
    v15 = 2080;
    v16 = a1;
    _os_log_impl(&dword_299F4E000, v3, OS_LOG_TYPE_DEFAULT, "mapScheme3Object: fourcc:%.4s\n\n", buf, 0x12u);
  }

  v11 = *a1;
  v12 = *(a1 + 4);
  v4 = initialize();
  if (v4)
  {
    mapScheme3ObjectToISPANE_cold_2(v4, v4, buf);
  }

  else
  {
    v5 = performCommand(_connect, 72, 0, &v11, 5uLL, 0, 0);
    if (!v5)
    {
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLibTrace)
      {
        v6 = __osLogPearlLibTrace;
      }

      else
      {
        v6 = v2;
      }

      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = 0;
        _os_log_impl(&dword_299F4E000, v6, OS_LOG_TYPE_DEFAULT, "mapScheme3Object -> 0x%x\n", buf, 8u);
        v7 = 0;
      }

      goto LABEL_17;
    }

    mapScheme3ObjectToISPANE_cold_3(v5, v5, buf);
  }

  v7 = *buf;
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v7;
    _os_log_impl(&dword_299F4E000, v10, OS_LOG_TYPE_ERROR, "mapScheme3Object -> 0x%x\n", buf, 8u);
  }

LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t allocateAndMapObjectS3C1(int *a1, int a2, int a3)
{
  v80 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v6 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v7 = __osLogPearlLibTrace;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  v8 = v7;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68158466;
    *&buf[4] = 4;
    *&buf[8] = 2080;
    *&buf[10] = a1;
    *&buf[18] = 1024;
    v77 = a2;
    v78 = 1024;
    v79 = a3;
    _os_log_impl(&dword_299F4E000, v8, OS_LOG_TYPE_DEFAULT, "allocateAndMapObjectS3C1: fourcc:%.4s mapObj:%d unmapObj:%d\n\n", buf, 0x1Eu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v70 = *a1;
  v71 = *(a1 + 4);
  v72 = a2;
  v73 = a3;
  v69 = 19;
  v9 = initialize();
  if (v9)
  {
    allocateAndMapObjectS3C1_cold_2(v9, v9, v75);
  }

  else
  {
    v10 = performCommand(_connect, 82, 0, &v70, 7uLL, buf, &v69);
    if (v10 == -536870201)
    {
      goto LABEL_206;
    }

    v11 = v10;
    if (v10)
    {
      allocateAndMapObjectS3C1_cold_3(v10);
    }

    v12 = MEMORY[0x29EDCA610];
    if (v69 > 0x12)
    {
      fwrite("Results of Allocation and Mapping Object Scheme3 Context1:\n", 0x3BuLL, 1uLL, *MEMORY[0x29EDCA610]);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v13 = __osLogPearlLib;
      }

      else
      {
        v13 = v6;
      }

      v14 = v13;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v75[0]) = 0;
        _os_log_impl(&dword_299F4E000, v14, OS_LOG_TYPE_DEFAULT, "Results of Allocation and Mapping Object Scheme3 Context1:\n", v75, 2u);
      }

      if (buf[0])
      {
        v15 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v15 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "objectFound:\t\t%s\n", v15);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v16 = __osLogPearlLib;
      }

      else
      {
        v16 = v6;
      }

      v17 = v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[0])
        {
          v18 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v18 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v18;
        _os_log_impl(&dword_299F4E000, v17, OS_LOG_TYPE_DEFAULT, "objectFound:\t\t%s\n", v75, 0xCu);
      }

      fprintf(*v12, "dvaOffset:\t\t0x%X\n", *&buf[1]);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v19 = __osLogPearlLib;
      }

      else
      {
        v19 = v6;
      }

      v20 = v19;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v75[0] = 67109120;
        v75[1] = *&buf[1];
        _os_log_impl(&dword_299F4E000, v20, OS_LOG_TYPE_DEFAULT, "dvaOffset:\t\t0x%X\n", v75, 8u);
      }

      fprintf(*v12, "objectSize:\t\t%d\n", *&buf[5]);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v21 = __osLogPearlLib;
      }

      else
      {
        v21 = v6;
      }

      v22 = v21;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v75[0] = 67109120;
        v75[1] = *&buf[5];
        _os_log_impl(&dword_299F4E000, v22, OS_LOG_TYPE_DEFAULT, "objectSize:\t\t%d\n", v75, 8u);
      }

      if (buf[9])
      {
        v23 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v23 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "aneMapFunction:\t\t%s\n", v23);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v24 = __osLogPearlLib;
      }

      else
      {
        v24 = v6;
      }

      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[9])
        {
          v26 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v26 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v26;
        _os_log_impl(&dword_299F4E000, v25, OS_LOG_TYPE_DEFAULT, "aneMapFunction:\t\t%s\n", v75, 0xCu);
      }

      if (buf[10])
      {
        v27 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v27 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "ispMapFunction:\t\t%s\n", v27);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v28 = __osLogPearlLib;
      }

      else
      {
        v28 = v6;
      }

      v29 = v28;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[10])
        {
          v30 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v30 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v30;
        _os_log_impl(&dword_299F4E000, v29, OS_LOG_TYPE_DEFAULT, "ispMapFunction:\t\t%s\n", v75, 0xCu);
      }

      if (buf[11])
      {
        v31 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v31 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "aneUnmapFunction:\t%s\n", v31);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v32 = __osLogPearlLib;
      }

      else
      {
        v32 = v6;
      }

      v33 = v32;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[11])
        {
          v34 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v34 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v34;
        _os_log_impl(&dword_299F4E000, v33, OS_LOG_TYPE_DEFAULT, "aneUnmapFunction:\t%s\n", v75, 0xCu);
      }

      if (buf[12])
      {
        v35 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v35 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "ispUnmapFunction:\t%s\n", v35);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v36 = __osLogPearlLib;
      }

      else
      {
        v36 = v6;
      }

      v37 = v36;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[12])
        {
          v38 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v38 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v38;
        _os_log_impl(&dword_299F4E000, v37, OS_LOG_TYPE_DEFAULT, "ispUnmapFunction:\t%s\n", v75, 0xCu);
      }

      if (buf[13])
      {
        v39 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v39 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "mappedToSEP:\t\t%s\n", v39);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v40 = __osLogPearlLib;
      }

      else
      {
        v40 = v6;
      }

      v41 = v40;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[13])
        {
          v42 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v42 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v42;
        _os_log_impl(&dword_299F4E000, v41, OS_LOG_TYPE_DEFAULT, "mappedToSEP:\t\t%s\n", v75, 0xCu);
      }

      if (buf[14])
      {
        v43 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v43 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "mappedToANE:\t\t%s\n", v43);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v44 = __osLogPearlLib;
      }

      else
      {
        v44 = v6;
      }

      v45 = v44;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[14])
        {
          v46 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v46 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v46;
        _os_log_impl(&dword_299F4E000, v45, OS_LOG_TYPE_DEFAULT, "mappedToANE:\t\t%s\n", v75, 0xCu);
      }

      if (buf[15])
      {
        v47 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v47 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "mappedToISP:\t\t%s\n", v47);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v48 = __osLogPearlLib;
      }

      else
      {
        v48 = v6;
      }

      v49 = v48;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[15])
        {
          v50 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v50 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v50;
        _os_log_impl(&dword_299F4E000, v49, OS_LOG_TYPE_DEFAULT, "mappedToISP:\t\t%s\n", v75, 0xCu);
      }

      if (buf[18])
      {
        v51 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v51 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "unmappedFromISP:\t%s\n", v51);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v52 = __osLogPearlLib;
      }

      else
      {
        v52 = v6;
      }

      v53 = v52;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[18])
        {
          v54 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v54 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v54;
        _os_log_impl(&dword_299F4E000, v53, OS_LOG_TYPE_DEFAULT, "unmappedFromISP:\t%s\n", v75, 0xCu);
      }

      if (buf[17])
      {
        v55 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v55 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "unmappedFromANE:\t%s\n", v55);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v56 = __osLogPearlLib;
      }

      else
      {
        v56 = v6;
      }

      v57 = v56;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[17])
        {
          v58 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v58 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v58;
        _os_log_impl(&dword_299F4E000, v57, OS_LOG_TYPE_DEFAULT, "unmappedFromANE:\t%s\n", v75, 0xCu);
      }

      if (buf[16])
      {
        v59 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v59 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(*v12, "unmappedFromSEP:\t%s\n", v59);
      if (OSLogInit_onceToken != -1)
      {
        encryptFDRData_cold_3();
      }

      if (__osLogPearlLib)
      {
        v60 = __osLogPearlLib;
      }

      else
      {
        v60 = v6;
      }

      v61 = v60;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[16])
        {
          v62 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v62 = "\x1B[31mFAIL\x1B[0m";
        }

        v75[0] = 136315138;
        *&v75[1] = v62;
        _os_log_impl(&dword_299F4E000, v61, OS_LOG_TYPE_DEFAULT, "unmappedFromSEP:\t%s\n", v75, 0xCu);
      }

      if (v11)
      {
        goto LABEL_196;
      }

      v63 = buf[11] == 0;
      if (!buf[12])
      {
        v63 = 1;
      }

      if (!buf[16])
      {
        v63 = 1;
      }

      if (!buf[17])
      {
        v63 = 1;
      }

      if (!buf[18])
      {
        v63 = 1;
      }

      v64 = buf[9] == 0;
      if (!buf[10])
      {
        v64 = 1;
      }

      if (!buf[13])
      {
        v64 = 1;
      }

      if (!buf[14])
      {
        v64 = 1;
      }

      if (!buf[15])
      {
        v64 = 1;
      }

      v11 = 261;
      if ((a2 & v64 & 1) != 0 || (a3 & v63) != 0)
      {
        goto LABEL_196;
      }

LABEL_206:
      allocateAndMapObjectS3C1_cold_20();
      v66 = *v75;
      v11 = v74;
      goto LABEL_203;
    }

    allocateAndMapObjectS3C1_cold_18(*MEMORY[0x29EDCA610], v75);
  }

  v11 = v75[0];
LABEL_196:
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_3();
  }

  if (__osLogPearlLibTrace)
  {
    v65 = __osLogPearlLibTrace;
  }

  else
  {
    v65 = v6;
  }

  v66 = v65;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    v75[0] = 67109120;
    v75[1] = v11;
    _os_log_impl(&dword_299F4E000, v66, OS_LOG_TYPE_ERROR, "allocateAndMapObjectS3C1 -> 0x%x\n", v75, 8u);
  }

LABEL_203:

  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  v67 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t getBrunorCollectionKey(void *a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "getBrunorCollectionKey\n", v17, 2u);
  }

  v17[0] = 65;
  if (!a1)
  {
    getBrunorCollectionKey_cold_7(buf);
LABEL_38:
    v10 = *buf;
    goto LABEL_15;
  }

  if (!a2)
  {
    getBrunorCollectionKey_cold_6(buf);
    goto LABEL_38;
  }

  v6 = initialize();
  if (v6)
  {
    getBrunorCollectionKey_cold_2(v6, v6, buf);
    goto LABEL_38;
  }

  v7 = calloc(1uLL, 0x41uLL);
  if (!v7)
  {
    getBrunorCollectionKey_cold_5(buf);
    goto LABEL_38;
  }

  v8 = v7;
  v9 = performCommand(_connect, 73, 0, 0, 0, v7, v17);
  if (v9)
  {
    getBrunorCollectionKey_cold_3(v9, v9, buf);
  }

  else
  {
    if (v17[0] == 65)
    {
      v10 = 0;
      *a1 = v8;
      *a2 = 65;
      goto LABEL_15;
    }

    getBrunorCollectionKey_cold_4(buf);
  }

  v10 = *buf;
  free(v8);
LABEL_15:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v10)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = v4;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v10;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_299F4E000, v12, v13, "getBrunorCollectionKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = v4;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t getAttestationToBrunorCollectionKey(void *a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "getAttestationToBrunorCollectionKey\n", __size, 2u);
  }

  __size[0] = 0x4000;
  if (a1)
  {
    if (a2)
    {
      v6 = initialize();
      if (v6)
      {
        getAttestationToBrunorCollectionKey_cold_2(v6, v6, buf);
      }

      else
      {
        v7 = calloc(1uLL, 0x4000uLL);
        if (v7)
        {
          v8 = v7;
          v9 = performCommand(_connect, 74, 0, 0, 0, v7, __size);
          if (v9)
          {
            getAttestationToBrunorCollectionKey_cold_3(v9, v9, buf);
          }

          else if (__size[0] > 0x4000)
          {
            getAttestationToBrunorCollectionKey_cold_5(buf);
          }

          else
          {
            v10 = calloc(1uLL, __size[0]);
            *a1 = v10;
            if (v10)
            {
              memcpy(v10, v8, __size[0]);
              v11 = 0;
              *a2 = __size[0];
LABEL_16:
              free(v8);
              goto LABEL_17;
            }

            getAttestationToBrunorCollectionKey_cold_4(buf);
          }

          v11 = *buf;
          goto LABEL_16;
        }

        getAttestationToBrunorCollectionKey_cold_6(buf);
      }
    }

    else
    {
      getAttestationToBrunorCollectionKey_cold_7(buf);
    }
  }

  else
  {
    getAttestationToBrunorCollectionKey_cold_8(buf);
  }

  v11 = *buf;
LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v11)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v12 = __osLogPearlLibTrace;
    }

    else
    {
      v12 = v4;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v11;
      v13 = v12;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_299F4E000, v13, v14, "getAttestationToBrunorCollectionKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v15 = __osLogPearlLibTrace;
    }

    else
    {
      v15 = v4;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 0;
      v13 = v15;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t signDataWithBrunorCollectionKey(const void *a1, size_t a2, void *a3, size_t *a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v8 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v9 = __osLogPearlLibTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_299F4E000, v9, OS_LOG_TYPE_DEFAULT, "signDataWithBrunorCollectionKey\n", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  v25 = 0u;
  __size = 128;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v10 = initialize();
          if (v10)
          {
            signDataWithBrunorCollectionKey_cold_2(v10, v10, v22);
          }

          else
          {
            v11 = performCommand(_connect, 75, 0, a1, a2, buf, &__size);
            if (v11)
            {
              signDataWithBrunorCollectionKey_cold_3(v11, v11, v22);
            }

            else if (__size >= 0x81)
            {
              signDataWithBrunorCollectionKey_cold_5(v22);
            }

            else
            {
              v12 = calloc(1uLL, __size);
              *a3 = v12;
              if (v12)
              {
                v13 = __size;
                *a4 = __size;
                memcpy(v12, buf, v13);
                v14 = 0;
                goto LABEL_17;
              }

              signDataWithBrunorCollectionKey_cold_4(v22);
            }
          }
        }

        else
        {
          signDataWithBrunorCollectionKey_cold_6(v22);
        }
      }

      else
      {
        signDataWithBrunorCollectionKey_cold_7(v22);
      }
    }

    else
    {
      signDataWithBrunorCollectionKey_cold_8(v22);
    }
  }

  else
  {
    signDataWithBrunorCollectionKey_cold_9(v22);
  }

  v14 = *v22;
LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v14)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v15 = __osLogPearlLibTrace;
    }

    else
    {
      v15 = v8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v22 = 67109120;
      v23 = v14;
      v16 = v15;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_299F4E000, v16, v17, "signDataWithBrunorCollectionKey -> %d\n", v22, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v18 = __osLogPearlLibTrace;
    }

    else
    {
      v18 = v8;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 67109120;
      v23 = 0;
      v16 = v18;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t getBrunorPermanentKey(void *a1, size_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "getBrunorPermanentKey\n", v18, 2u);
  }

  v18[0] = 57;
  if (!a1)
  {
    getBrunorPermanentKey_cold_7(buf);
LABEL_38:
    v11 = *buf;
    goto LABEL_15;
  }

  if (!a2)
  {
    getBrunorPermanentKey_cold_6(buf);
    goto LABEL_38;
  }

  v6 = initialize();
  if (v6)
  {
    getBrunorPermanentKey_cold_2(v6, v6, buf);
    goto LABEL_38;
  }

  v7 = calloc(1uLL, 0x39uLL);
  if (!v7)
  {
    getBrunorPermanentKey_cold_5(buf);
    goto LABEL_38;
  }

  v8 = v7;
  v9 = performCommand(_connect, 76, 0, 0, 0, v7, v18);
  if (v9)
  {
    getBrunorPermanentKey_cold_3(v9, v9, buf);
  }

  else
  {
    v10 = v18[0];
    if (v18[0] < 0x3A)
    {
      v11 = 0;
      *a1 = v8;
      *a2 = v10;
      goto LABEL_15;
    }

    getBrunorPermanentKey_cold_4(buf);
  }

  v11 = *buf;
  free(v8);
LABEL_15:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v11)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v12 = __osLogPearlLibTrace;
    }

    else
    {
      v12 = v4;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v11;
      v13 = v12;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_299F4E000, v13, v14, "getBrunorPermanentKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v15 = __osLogPearlLibTrace;
    }

    else
    {
      v15 = v4;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 0;
      v13 = v15;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t signDataWithBrunorPermanentKey(const void *a1, size_t a2, void *a3, size_t *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v8 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v9 = __osLogPearlLibTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_299F4E000, v9, OS_LOG_TYPE_DEFAULT, "signDataWithBrunorPermanentKey\n", buf, 2u);
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  v25 = 0u;
  __size = 65;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v10 = initialize();
          if (v10)
          {
            signDataWithBrunorPermanentKey_cold_2(v10, v10, v22);
          }

          else
          {
            v11 = performCommand(_connect, 77, 0, a1, a2, buf, &__size);
            if (v11)
            {
              signDataWithBrunorPermanentKey_cold_3(v11, v11, v22);
            }

            else if (__size >= 0x42)
            {
              signDataWithBrunorPermanentKey_cold_5(v22);
            }

            else
            {
              v12 = calloc(1uLL, __size);
              *a3 = v12;
              if (v12)
              {
                v13 = __size;
                *a4 = __size;
                memcpy(v12, buf, v13);
                v14 = 0;
                goto LABEL_17;
              }

              signDataWithBrunorPermanentKey_cold_4(v22);
            }
          }
        }

        else
        {
          signDataWithBrunorPermanentKey_cold_6(v22);
        }
      }

      else
      {
        signDataWithBrunorPermanentKey_cold_7(v22);
      }
    }

    else
    {
      signDataWithBrunorPermanentKey_cold_8(v22);
    }
  }

  else
  {
    signDataWithBrunorPermanentKey_cold_9(v22);
  }

  v14 = *v22;
LABEL_17:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v14)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v15 = __osLogPearlLibTrace;
    }

    else
    {
      v15 = v8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v22 = 67109120;
      v23 = v14;
      v16 = v15;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_299F4E000, v16, v17, "signDataWithBrunorPermanentKey -> %d\n", v22, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v18 = __osLogPearlLibTrace;
    }

    else
    {
      v18 = v8;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 67109120;
      v23 = 0;
      v16 = v18;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t prepareFDRDataEncryptionKey()
{
  v11 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v0 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_299F4E000, v1, OS_LOG_TYPE_DEFAULT, "prepareFDRDataEncryptionKey\n", &v9, 2u);
  }

  v2 = initialize();
  if (v2)
  {
    prepareFDRDataEncryptionKey_cold_2(v2, v2, &v9);
  }

  else
  {
    v3 = performCommand(_connect, 78, 0, 0, 0, 0, 0);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    prepareFDRDataEncryptionKey_cold_3(v3, v3, &v9);
  }

  v4 = v9;
LABEL_10:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v4)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = v4;
      v5 = v0;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_299F4E000, v5, v6, "prepareFDRDataEncryptionKey -> %d\n", &v9, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = 0;
      v5 = v0;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t setDummyWrappedFDRDataEncryptionKey(const void *a1, size_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v4 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v5 = __osLogPearlLibTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_299F4E000, v5, OS_LOG_TYPE_DEFAULT, "setDummyWrappedFDRDataEncryptionKey\n", &v15, 2u);
  }

  v6 = initialize();
  if (v6)
  {
    setDummyWrappedFDRDataEncryptionKey_cold_2(v6, v6, &v15);
  }

  else
  {
    v7 = performCommand(_connect, 79, 0, a1, a2, 0, 0);
    v8 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

    setDummyWrappedFDRDataEncryptionKey_cold_3(v7, v7, &v15);
  }

  v8 = v15;
LABEL_10:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v8)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v9 = __osLogPearlLibTrace;
    }

    else
    {
      v9 = v4;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109120;
      v16 = v8;
      v10 = v9;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_299F4E000, v10, v11, "setDummyWrappedFDRDataEncryptionKey -> %d\n", &v15, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v12 = __osLogPearlLibTrace;
    }

    else
    {
      v12 = v4;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = 0;
      v10 = v12;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_27;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t encryptFDRDataForBrunor(const void *a1, size_t a2, uint64_t a3, size_t *a4, _OWORD *a5, uint64_t a6)
{
  v35 = *MEMORY[0x29EDCA608];
  if (OSLogInit_onceToken != -1)
  {
    encryptFDRData_cold_1();
  }

  v12 = MEMORY[0x29EDCA988];
  if (__osLogPearlLibTrace)
  {
    v13 = __osLogPearlLibTrace;
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134219264;
    v24 = a1;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = a3;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    v33 = 2048;
    v34 = a6;
    _os_log_impl(&dword_299F4E000, v13, OS_LOG_TYPE_DEFAULT, "encryptFDRDataForBrunor %p %zu %p %p %p %zu\n", &v23, 0x3Eu);
  }

  if (!a1)
  {
    encryptFDRDataForBrunor_cold_8(&v23);
LABEL_44:
    v16 = v23;
    goto LABEL_18;
  }

  if (!a2)
  {
    encryptFDRDataForBrunor_cold_7(&v23);
    goto LABEL_44;
  }

  if (!a3)
  {
    encryptFDRDataForBrunor_cold_6(&v23);
    goto LABEL_44;
  }

  if (!a4)
  {
    encryptFDRDataForBrunor_cold_5(&v23);
    goto LABEL_44;
  }

  if (a5 && a6 != 16)
  {
    encryptFDRDataForBrunor_cold_2(&v23);
    goto LABEL_44;
  }

  v14 = initialize();
  if (v14)
  {
    encryptFDRDataForBrunor_cold_3(v14, v14, &v23);
    goto LABEL_44;
  }

  v15 = performCommand(_connect, 80, 0, a1, a2, a3, a4);
  if (v15)
  {
    encryptFDRDataForBrunor_cold_4(v15, v15, &v23);
    goto LABEL_44;
  }

  v16 = 0;
  if (a5)
  {
    *a5 = *(a3 + 108);
  }

LABEL_18:
  if (_connect)
  {
    IOServiceClose(_connect);
    _connect = 0;
  }

  if (v16)
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = v12;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      LODWORD(v24) = v16;
      v18 = v17;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_35:
      _os_log_impl(&dword_299F4E000, v18, v19, "encryptFDRDataForBrunor -> %d\n", &v23, 8u);
    }
  }

  else
  {
    if (OSLogInit_onceToken != -1)
    {
      encryptFDRData_cold_3();
    }

    if (__osLogPearlLibTrace)
    {
      v20 = __osLogPearlLibTrace;
    }

    else
    {
      v20 = v12;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109120;
      LODWORD(v24) = 0;
      v18 = v20;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_35;
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return v16;
}