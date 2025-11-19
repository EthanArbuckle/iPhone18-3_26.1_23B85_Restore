uint64_t AppleTCONDevice::getIORegPropertyValue(AppleTCONDevice *this, const __CFString *a2, unsigned __int8 *a3, int a4)
{
  v4 = 3758097084;
  v5 = *(this + 6);
  if (!v5)
  {
    return 3758097088;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v5, a2, *MEMORY[0x29EDB8ED8], 0);
  v10 = CFProperty;
  if (!CFProperty)
  {
    v4 = 3758097086;
LABEL_9:
    AMSupportSafeRelease();
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    AppleTCONLoggingLogMsg("IOReg (%s) error: %s\n", v16, v17, v18, v19, v20, v21, v22, CStringPtr);
    return v4;
  }

  v11 = CFGetTypeID(CFProperty);
  if (v11 != CFDataGetTypeID())
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v10);
  if (Length != a4)
  {
    goto LABEL_9;
  }

  v13 = Length;
  BytePtr = CFDataGetBytePtr(v10);
  if (!BytePtr)
  {
    goto LABEL_9;
  }

  memcpy(a3, BytePtr, v13);
  AMSupportSafeRelease();
  return 0;
}

uint64_t AppleTCONDP835Device::eraseDeviceEEPROM(AppleTCONDP835Device *this, unsigned int a2, unsigned int a3)
{
  while (a3)
  {
    if (a3 >= 0x1000)
    {
      v5 = 4096;
    }

    else
    {
      v5 = a3;
    }

    v17 = v5;
    v6 = *(this + 4);
    v7 = IOAVDisplayMemoryWrite();
    a3 -= v17;
    if (v7)
    {
      v15 = v7;
      AppleTCONLoggingLogMsg("erase eeprom error (0x%08x): %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
      return v15;
    }
  }

  return 0;
}

uint64_t AppleTCONDP835Device::writeDeviceEEPROM(AppleTCONDP835Device *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4)
{
  while (a4)
  {
    if (a4 >= 0x1000)
    {
      v6 = 4096;
    }

    else
    {
      v6 = a4;
    }

    v7 = *(this + 4);
    v8 = IOAVDisplayMemoryWrite();
    a4 -= v6;
    if (v8)
    {
      v16 = v8;
      AppleTCONLoggingLogMsg("write eeprom error (0x%08x): %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
      return v16;
    }
  }

  return 0;
}

uint64_t AppleTCONDP835Device::waitForDeviceReady(AppleTCONDP835Device *this)
{
  v1 = *(this + 2);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getOptionsValue(AppleTCONDP835Device *this, const __CFDictionary *a2, const __CFString *a3, uint64_t Value)
{
  v5 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Options.%@", a3);
  if (v5)
  {
    v6 = v5;
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      v8 = ValueForKeyPathInDict;
      v9 = CFGetTypeID(ValueForKeyPathInDict);
      if (v9 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v8);
      }
    }

    CFRelease(v6);
  }

  return Value;
}

void AppleTCONDP835Device::AppleTCONDP835Device(AppleTCONDP835Device *this, int a2)
{
  *this = &unk_2A20229E8;
  v29 = 0;
  *(this + 2) = 257;
  *(this + 69) = 0;
  *(this + 6) = a2;
  v3 = IOServiceMatching("AppleTCONControl");
  if (!v3)
  {
    v22 = "Failed to create AppleTCONControl matching dictionary\n";
LABEL_22:
    AppleTCONLoggingLogMsg(v22, v3, v4, v5, v6, v7, v8, v9, v23);
    goto LABEL_14;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v3);
  *(this + 10) = MatchingService;
  if (!MatchingService)
  {
    v22 = "Failed to find AppleTCONControl service\n";
    goto LABEL_22;
  }

  v11 = *MEMORY[0x29EDB8ED8];
  v12 = IOAVDisplayMemoryCreateWithName();
  *(this + 2) = v12;
  if (!v12)
  {
    v22 = "Failed to get memoryRef handle\n";
    goto LABEL_22;
  }

  v13 = IOAVDisplayMemoryCreateWithName();
  *(this + 4) = v13;
  if (!v13)
  {
    v22 = "Failed to get eepromRef handle\n";
    goto LABEL_22;
  }

  if (AppleTCONDP835Device::getPRODStatus(this, &v29 + 3))
  {
    v22 = "Failed to get Prod status\n";
    goto LABEL_22;
  }

  *(this + 9) = HIBYTE(v29) == 1;
  if (AppleTCONDP835Device::getSDOMStatus(this, &v29 + 3))
  {
    v22 = "Failed to get SDOM status\n";
    goto LABEL_22;
  }

  *(this + 8) = HIBYTE(v29) == 1;
  v14 = *(this + 2);
  if (IOAVDisplayMemoryRead())
  {
    v22 = "Failed to get boot status\n";
    goto LABEL_22;
  }

  *(this + 22) = 0;
  *(this + 46) = 0;
  if ((~HIBYTE(v29) & 7) != 0)
  {
    AppleTCONLoggingLogMsg("Unexpected boot status: 0x%02x\n", v3, v4, v5, v6, v7, v8, v9, SHIBYTE(v29));
  }

  else if (AppleTCONDP835Device::getBundleVer(this, &v29))
  {
    AppleTCONLoggingLogMsg("Failed to get bundle version\n", v15, v16, v17, v18, v19, v20, v21, v23);
  }

  else
  {
    *(this + 44) = v29;
    *(this + 45) = *(&v29 + 1);
  }

  *(this + 47) = 0;
  *(this + 49) = 0;
  *(this + 11) = 1;
LABEL_14:
  v27 = *(this + 45);
  v28 = *(this + 46);
  v25 = *(this + 9);
  v26 = *(this + 44);
  v24 = *(this + 8);
  AppleTCONLoggingLogMsg("AppleTconDev:(%d:%d:%d:0x%02x:0x%02x:0x%02x)\n", v15, v16, v17, v18, v19, v20, v21, *(this + 11));
}

void AppleTCONDP835Device::~AppleTCONDP835Device(AppleTCONDP835Device *this)
{
  *this = &unk_2A20229E8;
  v2 = *(this + 6);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  *this = &unk_2A2022A40;
}

{
  AppleTCONDP835Device::~AppleTCONDP835Device(this);

  JUMPOUT(0x29C2B3CF0);
}

uint64_t AppleTCONDP835Device::eventCmdQueryInfo(AppleTCONDP835Device *this, const __CFDictionary *a2, __CFDictionary *a3)
{
  v44 = *MEMORY[0x29EDCA608];
  *v42 = 0;
  v43 = 0;
  memset(bytes, 0, 16);
  valuePtr = 0;
  v39 = 0;
  OptionsValue = AppleTCONDP835Device::getOptionsValue(this, a2, @"FuseSDOM", 0);
  *(this + 64) = OptionsValue;
  v7 = AppleTCONDP835Device::getOptionsValue(OptionsValue, a2, @"FusePROD", 0);
  *(this + 65) = v7;
  v8 = AppleTCONDP835Device::getOptionsValue(v7, a2, @"RestoreInternal", 0);
  *(this + 66) = v8;
  v9 = AppleTCONDP835Device::getOptionsValue(v8, a2, @"SkipSameVersion", 1);
  v10 = 0;
  *(this + 67) = v9;
  if (!*(this + 11))
  {
    goto LABEL_2;
  }

  if (AppleTCONDP835Device::getBoardID(this, &v39))
  {
    v37 = "getBoardID failed";
LABEL_34:
    v10 = 15;
    goto LABEL_35;
  }

  *(this + 15) = v39;
  v40 = 0;
  v20 = *(this + 2);
  v21 = IOAVDisplayMemoryRead();
  if (v21)
  {
    v10 = v21;
    v37 = "getHWCID failed";
LABEL_35:
    AppleTCONLoggingLogMsg("Dev:CmdQueryInfo failure %s\n", v13, v14, v15, v16, v17, v18, v19, v37);
    goto LABEL_2;
  }

  v22 = 0;
  if ((v40 > 0xDu || ((1 << v40) & 0x23FF) == 0) && v40 - 256 >= 6)
  {
    v22 = 1;
  }

  if (*(this + 8))
  {
    v22 = 1;
  }

  else if (!*(this + 64))
  {
    v22 = 1;
  }

  v10 = 3758097085;
  *(this + 69) |= v22;
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdQueryInfo: boardID=0x%08x HWCID=0x%08x personalize=%u\n", v13, v14, v15, v16, v17, v18, v19, *(this + 15));
  v23 = *MEMORY[0x29EDB8ED8];
  v24 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, this + 60);
  if (!v24)
  {
    v37 = "boardID alloc failed";
    goto LABEL_35;
  }

  v25 = v24;
  v26 = AppleTCONDP835DeviceRestoreTagForBoardID(3, *(this + 15));
  CFDictionaryAddValue(a3, v26, v25);
  CFRelease(v25);
  if (AppleTCONDP835Device::getChipID(this, &valuePtr))
  {
    v37 = "getChipID failed";
    goto LABEL_34;
  }

  v27 = CFNumberCreate(v23, kCFNumberIntType, &valuePtr);
  if (!v27)
  {
    v37 = "chipID alloc failed";
    goto LABEL_35;
  }

  v28 = v27;
  v29 = AppleTCONDP835DeviceRestoreTagForBoardID(2, *(this + 15));
  CFDictionaryAddValue(a3, v29, v28);
  CFRelease(v28);
  if (!*(this + 69))
  {
    goto LABEL_21;
  }

  *bytes = AppleTCONDP835Device::getNonce(unsigned char *,unsigned int)::nonceData;
  v30 = CFDataCreate(v23, bytes, 16);
  if (!v30)
  {
    v37 = "nonce alloc failed";
    goto LABEL_35;
  }

  v31 = v30;
  v32 = AppleTCONDP835DeviceRestoreTagForBoardID(8, *(this + 15));
  CFDictionaryAddValue(a3, v32, v31);
  CFRelease(v31);
  if (AppleTCONDP835Device::getECID(this, v42))
  {
    v37 = "getECID failed";
    goto LABEL_34;
  }

  v33 = CFDataCreate(v23, v42, 16);
  if (!v33)
  {
    v37 = "ecid alloc failed";
    goto LABEL_35;
  }

  v34 = v33;
  v35 = AppleTCONDP835DeviceRestoreTagForBoardID(10, *(this + 15));
  CFDictionaryAddValue(a3, v35, v34);
  CFRelease(v34);
LABEL_21:
  AppleTCONDP835DeviceRestoreTagForBoardID(5, *(this + 15));
  if (*(this + 69) && !*(this + 65))
  {
    v36 = *(this + 9) == 0;
  }

  AMSupportCFDictionarySetBoolean();
  AppleTCONDP835DeviceRestoreTagForBoardID(7, *(this + 15));
  v36 = *(this + 69) == 0;
  AMSupportCFDictionarySetInteger32();
  v10 = 0;
LABEL_2:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t AppleTCONDP835Device::isFWComponentsUpdateRequired(AppleTCONDP835Device *this, CFDictionaryRef theDict)
{
  v38 = 0;
  *buffer = 0;
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  v11 = Value;
  if (!Value || (v12 = CFGetTypeID(Value), v12 != CFDataGetTypeID()))
  {
    v29 = "firmware data type invalid ";
    goto LABEL_25;
  }

  v13 = *MEMORY[0x29EDB8ED8];
  v14 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v11, 0, 0, 0);
  if (!v14 || (v15 = CFGetTypeID(v14), v15 != CFDictionaryGetTypeID()))
  {
    v29 = "fw dict create failed";
    goto LABEL_25;
  }

  if (!CFStringCreateWithFormat(v13, 0, @"%u.%s.%s", *(this + 15), "nvm_image", "Payload"))
  {
    v29 = "nvm ver string create failed";
    goto LABEL_25;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict || (v17 = ValueForKeyPathInDict, v18 = CFGetTypeID(ValueForKeyPathInDict), v18 != CFDataGetTypeID()))
  {
    v29 = "bundle payload type invalid";
    goto LABEL_25;
  }

  v39.location = 3006464;
  v39.length = 3;
  CFDataGetBytes(v17, v39, buffer);
  *(this + 49) = v38;
  *(this + 47) = buffer[1];
  *(this + 48) = buffer[0];
  v33 = *(this + 67);
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::isFWComponentsUpdateRequired: internal:%u skipSameVersion:%u\n", v19, v20, v21, v22, v23, v24, v25, *(this + 66));
  v26 = buffer[1] & 0x3E;
  v27 = *(this + 44) & 0x3E;
  if (v26 < v27)
  {
    v29 = "bundle major ver < current major ver";
    goto LABEL_25;
  }

  if (v26 == v27)
  {
    v28 = *(this + 45);
    if (buffer[0] < v28)
    {
      v29 = "bundle minor ver < current minor ver";
      goto LABEL_25;
    }

    if (buffer[0] == v28)
    {
      if (*(this + 66) && !*(this + 67))
      {
        if (v38 < *(this + 46))
        {
          v29 = "bundle extent ver < current extent ver";
          goto LABEL_25;
        }
      }

      else if (v38 <= *(this + 46))
      {
        v29 = "bundle extent ver <= current extent ver";
LABEL_25:
        AppleTCONLoggingLogMsg("AppleTCONDP835Device::isFWComponentsUpdateRequired: %s\n", v4, v5, v6, v7, v8, v9, v10, v29);
        v31 = 0;
        v30 = "Skipping";
        goto LABEL_18;
      }
    }
  }

  v30 = "Performing";
  v31 = 1;
LABEL_18:
  v35 = *(this + 48);
  v36 = *(this + 49);
  v34 = *(this + 47);
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::isFWComponentsUpdateRequired: %s update to 0x%02x:0x%02x:0x%02x\n", v4, v5, v6, v7, v8, v9, v10, v30);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v31;
}

uint64_t AppleTCONDP835Device::updateFWComponent(AppleTCONDP835Device *this, int a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::updateFWComponent: component=0x%02x, componentDataLength=0x%08x\n", v7, v8, v9, v10, v11, v12, v13, a2);
  v14 = 0;
  v15 = &unk_299E888FC;
  v16 = 25;
  while (1)
  {
    if (a2 == 4)
    {
      v17 = *(v15 - 1);
      v18 = *v15;
      v19 = v17 + *(this + 14);
      v20 = AppleTCONDP835Device::eraseDeviceEEPROM(this, v19, *v15);
      if (v20)
      {
        v30 = v20;
        v32 = "eraseDeviceEEPROM failed";
        goto LABEL_15;
      }

      if (!v14)
      {
        v14 = v17;
      }

      v28 = v18 >= Length ? Length : v18;
      v29 = AppleTCONDP835Device::writeDeviceEEPROM(this, *(this + 14) + v17, &BytePtr[v19], v28);
      if (v29)
      {
        break;
      }
    }

    v15 += 4;
    if (!--v16)
    {
      return 0;
    }
  }

  v30 = v29;
  v32 = "writeDeviceEEPROM failed";
LABEL_15:
  AppleTCONLoggingLogMsg("update fw component error:%s\n", v21, v22, v23, v24, v25, v26, v27, v32);
  return v30;
}

uint64_t AppleTCONDP835Device::eventCmdPerformNextStage(AppleTCONDP835Device *this, const __CFDictionary *a2, CFDictionaryRef theDict, unsigned __int8 *a4)
{
  v64 = *MEMORY[0x29EDCA608];
  *v61 = 0;
  *v60 = 0;
  isFWComponentsUpdateRequired = AppleTCONDP835Device::isFWComponentsUpdateRequired(this, theDict);
  if (*(this + 8))
  {
    v15 = 1;
  }

  else
  {
    v15 = *(this + 64) == 0;
    *(this + 64);
  }

  v16 = !v15;
  AppleTCONLoggingLogMsg("Fuse SDOM (%d:%d)\n", v7, v8, v9, v10, v11, v12, v13, *(this + 8));
  if (*(this + 10))
  {
    v44 = "AppleTCONDP835Device::eventCmdPerformNextStage: update done\n";
LABEL_43:
    AppleTCONLoggingLogMsg(v44, v17, v18, v19, v20, v21, v22, v23, v55);
    v40 = 0;
    v39 = 0;
    goto LABEL_37;
  }

  if (isFWComponentsUpdateRequired)
  {
    v24 = 1;
  }

  else
  {
    v24 = v16;
  }

  if ((v24 & 1) == 0)
  {
    v44 = "AppleTCONDP835Device::eventCmdPerformNextStage: update not required\n";
    goto LABEL_43;
  }

  if (!*(this + 8) && !*(this + 64))
  {
    v53 = "SDOM not fused; see rdar://84123825 for instructions";
    goto LABEL_56;
  }

  v25 = v16 ^ 1;
  if (!*(this + 69))
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0 && AppleTCONDP835Device::updateOTP(this, v17, v18, v19, v20, v21, v22, v23))
  {
    v53 = "otp update failed";
    goto LABEL_56;
  }

  if (AppleTCONDP835Device::startFWUpdate(this))
  {
    v53 = "start update failed";
LABEL_56:
    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: failure %s\n", v17, v18, v19, v20, v21, v22, v23, v53);
LABEL_57:
    v39 = 0;
    v38 = 1;
    v40 = 11;
    goto LABEL_39;
  }

  if (AppleTCONDP835Device::readFWPointer(this, &v61[1], v61))
  {
    v26 = 3145728;
    v27 = 0x100000;
    v61[0] = 0x100000;
    v61[1] = 3145728;
  }

  else
  {
    v27 = v61[0];
    v26 = v61[1];
  }

  *(this + 13) = v26;
  *(this + 14) = v27;
  if (!AppleTCONDevice::getIORegPropertyValue(this, @"enforce-pcds-valid", v60, 4))
  {
    if (*v60)
    {
      v62 = 256;
      if (sysctlbyname("kern.bootargs", __s1, &v62, 0, 0) || !strstr(__s1, "enforce-pcds-valid=0"))
      {
        v28 = *(this + 4);
        if (IOAVDisplayMemoryRead())
        {
          v53 = "failed to read PCDS 0 top-level header";
        }

        else
        {
          *(this + 68) = 0;
          v29 = *(this + 4);
          if (IOAVDisplayMemoryRead())
          {
            v53 = "failed to read PCDS 1 top-level header";
          }

          else
          {
            *(this + 68);
            *(this + 68) = 0;
            v53 = "PCDS must be generated and programmed before FW update can occur";
          }
        }

        goto LABEL_56;
      }
    }
  }

  if (AppleTCONDP835Device::updateFWComponents(this, theDict))
  {
    v53 = "updates failed";
    goto LABEL_56;
  }

  if (AppleTCONDP835Device::writeAndVerifyFWPointer(this, *(this + 14), &v61[1], v61, v20, v21, v22, v23))
  {
    v53 = "failed to set FW pointer to update bank";
    goto LABEL_56;
  }

  v30 = v61[0];
  *(this + 13) = v61[1];
  *(this + 14) = v30;
  if (AppleTCONDP835Device::endFWUpdate(this))
  {
    v43 = "end update failed";
    goto LABEL_49;
  }

  if (AppleTCONDP835Device::getBundleVer(this, __s1))
  {
    v43 = "failed to read bundle version after update";
    goto LABEL_49;
  }

  v58 = *(this + 49);
  v56 = *(this + 48);
  AppleTCONLoggingLogMsg("expected bundle version: 0x%02x:0x%02x:0x%02x, actual bundle version: 0x%02x:0x%02x:0x%02x\n", v31, v32, v33, v34, v35, v36, v37, *(this + 47));
  if (__s1[0] != *(this + 47) || __s1[1] != *(this + 48) || __s1[2] != *(this + 49))
  {
    v43 = "bundle version after update differs from update bundle version";
LABEL_49:
    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: failure %s\n", v31, v32, v33, v34, v35, v36, v37, v43);
    if (AppleTCONDP835Device::startFWUpdate(this))
    {
      v52 = "failed";
    }

    else
    {
      if (AppleTCONDP835Device::writeAndVerifyFWPointer(this, *(this + 14), &v61[1], v61, v48, v49, v50, v51))
      {
        v52 = "failed";
      }

      else
      {
        v54 = v61[0];
        *(this + 13) = v61[1];
        *(this + 14) = v54;
        v52 = "succeeded";
      }

      AppleTCONDP835Device::endFWUpdate(this);
    }

    AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: failure: attempt to revert FW pointer %s\n", v45, v46, v47, v48, v49, v50, v51, v52);
    goto LABEL_57;
  }

  v38 = *(this + 69);
  v39 = 1;
  v40 = 0;
  if (!v38)
  {
    *(this + 69) = 1;
    goto LABEL_39;
  }

LABEL_37:
  v38 = 1;
LABEL_39:
  *(this + 10) = v38;
  *a4 = v38;
  v57 = *(this + 69);
  v59 = *(this + 10);
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::eventCmdPerformNextStage: didUpdate=%u personalize=%u updateDone=%u\n", v31, v32, v33, v34, v35, v36, v37, v39);
  v41 = *MEMORY[0x29EDCA608];
  return v40;
}

void AppleTCONDevice::~AppleTCONDevice(AppleTCONDevice *this)
{
  *this = &unk_2A2022A40;
}

{
  *this = &unk_2A2022A40;
  JUMPOUT(0x29C2B3CF0);
}

void OUTLINED_FUNCTION_3(int a1@<W8>)
{
  *(v1 - 20) = a1;
  *(v1 - 21) = 17;
  *(v1 - 22) = 0;
}

uint64_t OUTLINED_FUNCTION_7()
{

  return IOAVDisplayMemoryRead();
}

uint64_t OUTLINED_FUNCTION_9()
{
  v2 = *(v0 + 16);

  return IOAVDisplayMemoryRead();
}

uint64_t AppleTCONUpdaterCreate(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AppleTCONLoggingRegisterLogSink(a2, a3, a3, a4, a5, a6, a7, a8);
  if (AppleTCONUpdaterCreate::only_once != -1)
  {
    AppleTCONUpdaterCreate_cold_1();
  }

  if (AppleTCONUpdaterTypeID)
  {
    v10 = *MEMORY[0x29EDB8ED8];
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 32) = AppleTCONUpdaterTypeID;
      *(Instance + 16) = 0;
      operator new();
    }

    CFErrorWithDomain = AppleTCONLoggingCreateCFErrorWithDomain("AppleTCONUpdaterCreate - failed to create AppleTCONUpdater", 3u, a1, @"AppleTCONUpdaterErrorDomain");
  }

  else
  {
    CFErrorWithDomain = AppleTCONLoggingCreateCFErrorWithDomain("AppleTCONUpdaterCreate - failed to register kLibAppleTCONUpdaterClass", 3u, a1, @"AppleTCONUpdaterErrorDomain");
  }

  if (CFErrorWithDomain)
  {
    v14 = CFErrorCopyDescription(CFErrorWithDomain);
    CFStringGetCStringPtr(v14, 0);
    AppleTCONLoggingLogMsg("%s [error]: %s\n", v15, v16, v17, v18, v19, v20, v21, "AppleTCONUpdaterCreate");
    CFRelease(v14);
    if (a4)
    {
      *a4 = AMSupportSafeRetain();
    }

    AMSupportSafeRelease();
    AMSupportSafeRelease();
  }

  return 0;
}

uint64_t __AppleTCONUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  AppleTCONUpdaterTypeID = result;
  return result;
}

void AppleTCONUpdaterDestroy(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      free(v1);
    }
  }
}

CFStringRef AppleTCONUpdaterDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libAppleTCONUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t AppleTCONUpdaterExecCommand(uint64_t a1, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary **a4, uint64_t *a5)
{
  if (!a1 || !a2)
  {
    v10 = "AppleTCONUpdaterExecCommand - invalid input";
    v11 = 2;
LABEL_8:
    v12 = 0;
    goto LABEL_10;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    v10 = "AppleTCONUpdaterExecCommand - no AppleTCON controller instance";
    v11 = 16;
    goto LABEL_8;
  }

  v8 = AppleTCONUpdateController::execCommand(v6, a2, a3, a4);
  if (!v8)
  {
    return 1;
  }

  v11 = v8;
  v10 = "AppleTCONUpdaterExecCommand - execCommand error";
  v12 = a3;
LABEL_10:
  CFErrorWithDomain = AppleTCONLoggingCreateCFErrorWithDomain(v10, v11, v12, @"AppleTCONUpdaterErrorDomain");
  if (CFErrorWithDomain)
  {
    v14 = CFErrorCopyDescription(CFErrorWithDomain);
    CFStringGetCStringPtr(v14, 0);
    AppleTCONLoggingLogMsg("%s [error]: %s\n", v15, v16, v17, v18, v19, v20, v21, "AppleTCONUpdaterExecCommand");
    CFRelease(v14);
    if (a5)
    {
      *a5 = AMSupportSafeRetain();
    }

    AMSupportSafeRelease();
  }

  return 0;
}

const char *AppleTCONLoggingLogMsg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = MEMORY[0x2A1C7C4A8]();
  v12 = *MEMORY[0x29EDCA608];
  if (logSinkFunc)
  {
    vsnprintf(__str, 0x1000uLL, result, &a9);
    result = logSinkFunc(logSinkContext, __str);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

const char *AppleTCONLoggingRegisterLogSink(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logSinkFunc = result;
  logSinkContext = a2;
  if (result)
  {
    if ((AppleTCONPrintVersion(void)::version_displayed & 1) == 0)
    {
      result = AppleTCONLoggingLogMsg("AppleTCONRestoreLib Version %d.%d\n", a2, a3, a4, a5, a6, a7, a8, 2);
      AppleTCONPrintVersion(void)::version_displayed = 1;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::computeCRC(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return 255;
  }

  v3 = 0;
  v4 = a2 + 3;
  LOBYTE(result) = -1;
  do
  {
    result = AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[*(v4 - 3) ^ AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[*(v4 - 2) ^ AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[*(v4 - 1) ^ AppleTCONDP855Device::computeCRC(unsigned char const*,unsigned int)::crc8Table[(*v4 ^ result)]]]];
    v3 += 4;
    v4 += 4;
  }

  while (v3 < a3);
  return result;
}

uint64_t AppleTCONDP855Device::waitForDeviceReady(AppleTCONDP855Device *this)
{
  v1 = *(this + 2);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t AppleTCONDP855Device::waitForCompletion(AppleTCONDP855Device *this)
{
  result = AppleTCONDP855Device::waitForDeviceReady(this);
  if (!result)
  {
    v3 = *(this + 2);
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      v4 = *(this + 2);
      IOAVDisplayMemoryRead();
      AppleTCONLoggingLogMsg("Wait Code: 0x%02x 0x%02x\n", v5, v6, v7, v8, v9, v10, v11, 0);
      return 3758097084;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::getDeviceID(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 6)
  {
    return 3758097090;
  }

  result = AppleTCONDevice::getIORegPropertyValue(this, @"device-id", a2, 6);
  if (result)
  {
    v5 = *(this + 2);

    return IOAVDisplayMemoryRead();
  }

  return result;
}

uint64_t AppleTCONDP855Device::getBundleVer(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  result = AppleTCONDP855Device::getBundleVerFromIOReg(this, a2);
  if (result)
  {
    v4 = *(this + 2);

    return IOAVDisplayMemoryRead();
  }

  return result;
}

uint64_t AppleTCONDP855Device::getBundleVerFromIOReg(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  *v4 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"bundle-ver", v4, 4);
  if (!result)
  {
    *a2 = *v4;
  }

  return result;
}

uint64_t AppleTCONDP855Device::getFirmwareVer(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  result = AppleTCONDP855Device::getFirmwareVerFromIOReg(this, a2);
  if (result)
  {
    v4 = *(this + 2);

    return IOAVDisplayMemoryRead();
  }

  return result;
}

uint64_t AppleTCONDP855Device::getFirmwareVerFromIOReg(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  *v4 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"firmware-ver", v4, 4);
  if (!result)
  {
    *a2 = *v4;
  }

  return result;
}

uint64_t AppleTCONDP855Device::sendDataBuffer(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 0x10)
  {
    return 3758097090;
  }

  v6 = *(this + 2);
  result = IOAVDisplayMemoryWrite();
  if (a3 >= 9 && !result)
  {
    v7 = *(this + 2);

    return IOAVDisplayMemoryWrite();
  }

  return result;
}

uint64_t AppleTCONDP855Device::readDataBuffer(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 0x10)
  {
    return 3758097090;
  }

  v6 = *(this + 2);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    v7 = *(this + 2);
    result = IOAVDisplayMemoryRead();
    if (a3 >= 9 && !result)
    {
      v8 = *(this + 2);
      return IOAVDisplayMemoryRead();
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::submitCmd(AppleTCONDP855Device *this)
{
  usleep(0x1388u);
  v2 = *(this + 2);
  result = IOAVDisplayMemoryWrite();
  if (!result)
  {
    usleep(0x1388u);
    return AppleTCONDP855Device::waitForCompletion(this);
  }

  return result;
}

uint64_t AppleTCONDP855Device::sendCmd(AppleTCONDP855Device *a1, char *a2, const unsigned __int8 *a3, unsigned int a4)
{
  v7 = *a2;
  result = AppleTCONDP855Device::waitForDeviceReady(a1);
  if (!result)
  {
    v9 = *(a1 + 2);
    result = IOAVDisplayMemoryWrite();
    if (!result)
    {
      if (!a4 || (*a2 & 0x80000000) == 0 || (result = AppleTCONDP855Device::sendDataBuffer(a1, a3, a4), !result))
      {
        v10 = *(a1 + 2);
        result = IOAVDisplayMemoryWrite();
        if (!result)
        {
          result = AppleTCONDP855Device::submitCmd(a1);
          if (!result)
          {
            usleep(0x2710u);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::getSDOMStatus(AppleTCONDP855Device *this, BOOL *a2)
{
  *v5 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"sdom-status", v5, 4);
  if (result)
  {
    return AppleTCONDP855Device::getSDOMStatusFromDevice(this, a2);
  }

  *a2 = v5[0];
  return result;
}

uint64_t AppleTCONDP855Device::getSDOMStatusFromDevice(AppleTCONDP855Device *this, BOOL *a2)
{
  v14 = 69378;
  result = AppleTCONDP855Device::sendCmd(this, &v14, 0, 0);
  if (!result)
  {
    v5 = *(this + 2);
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      if (*a2 == 32)
      {
        v13 = "OTP_STATUS_PROGRAMMED";
      }

      else
      {
        v13 = "OTP_STATUS_UNPROGRAMMED";
      }

      AppleTCONLoggingLogMsg("SDOM status %s\n", v6, v7, v8, v9, v10, v11, v12, v13);
      result = 0;
      *a2 = *a2 == 32;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::getPRODStatus(AppleTCONDP855Device *this, BOOL *a2)
{
  *v5 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"prod-status", v5, 4);
  if (result)
  {
    return AppleTCONDP855Device::getPRODStatusFromDevice(this, a2);
  }

  *a2 = v5[0];
  return result;
}

uint64_t AppleTCONDP855Device::getPRODStatusFromDevice(AppleTCONDP855Device *this, BOOL *a2)
{
  v14 = 134914;
  result = AppleTCONDP855Device::sendCmd(this, &v14, 0, 0);
  if (!result)
  {
    v5 = *(this + 2);
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      if (*a2 == 32)
      {
        v13 = "OTP_STATUS_PROGRAMMED";
      }

      else
      {
        v13 = "OTP_STATUS_UNPROGRAMMED";
      }

      AppleTCONLoggingLogMsg("PROD status %s\n", v6, v7, v8, v9, v10, v11, v12, v13);
      result = 0;
      *a2 = *a2 == 32;
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::setSdom(AppleTCONDP855Device *this)
{
  v14 = 1118083;
  v2 = AppleTCONDP855Device::sendCmd(this, &v14, 0, 0);
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    v11 = *(this + 2);
    v12 = IOAVDisplayMemoryRead();
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      AppleTCONLoggingLogMsg("setSdom: update (getDeviceStatus) error:0x%x\n", v3, v4, v5, v6, v7, v8, v9, 0);
      v10 = 3758097098;
    }
  }

  AppleTCONLoggingLogMsg("setSdom: update failed:0x%x phase:%d\n", v3, v4, v5, v6, v7, v8, v9, v10);
  return v10;
}

uint64_t AppleTCONDP855Device::setProd(AppleTCONDP855Device *this)
{
  v14 = 1183619;
  v2 = AppleTCONDP855Device::sendCmd(this, &v14, 0, 0);
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    v11 = *(this + 2);
    v12 = IOAVDisplayMemoryRead();
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      AppleTCONLoggingLogMsg("setProd: update (getDeviceStatus) error:0x%x\n", v3, v4, v5, v6, v7, v8, v9, 0);
      v10 = 3758097098;
    }
  }

  AppleTCONLoggingLogMsg("setProd: update failed:0x%x phase:%d\n", v3, v4, v5, v6, v7, v8, v9, v10);
  return v10;
}

uint64_t AppleTCONDP855Device::getECID(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3)
{
  result = AppleTCONDevice::getIORegPropertyValue(this, @"ecid", a2, a3);
  if (result)
  {

    return AppleTCONDP855Device::getECIDFromDevice(this, a2, a3);
  }

  return result;
}

uint64_t AppleTCONDP855Device::getECIDFromDevice(AppleTCONDP855Device *this, unsigned __int8 *a2, unsigned int a3)
{
  v7 = 27;
  result = AppleTCONDP855Device::sendCmd(this, &v7, 0, 0);
  if (!result)
  {

    return AppleTCONDP855Device::readDataBuffer(this, a2, a3);
  }

  return result;
}

uint64_t AppleTCONDP855Device::displayECID(AppleTCONDP855Device *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x29EDCA608];
  memset(v16, 0, sizeof(v16));
  if (a3)
  {
    v8 = a3;
    v9 = a2;
    v10 = 0;
    v11 = 64;
    while (1)
    {
      v12 = snprintf(v16 + v10, v11, "%02x", *v9);
      if (v12 < 0)
      {
        break;
      }

      v13 = __OFSUB__(v11, v12);
      v11 -= v12;
      if ((v11 < 0) ^ v13 | (v11 == 0))
      {
        break;
      }

      ++v9;
      v10 += v12;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    AppleTCONLoggingLogMsg("displayECID: Avoid buffer overflow %d\n", a2, a3, a4, a5, a6, a7, a8, v12);
    result = 3758097084;
  }

  else
  {
LABEL_6:
    AppleTCONLoggingLogMsg("AppleTconDev:ECID: 0x%s\n", a2, a3, a4, a5, a6, a7, a8, v16);
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AppleTCONDP855Device::getNonce(AppleTCONDP855Device *this, unsigned __int8 *a2, int a3)
{
  result = AppleTCONDevice::getIORegPropertyValue(this, @"nonce", a2, a3);
  if (result)
  {

    return AppleTCONDP855Device::getNonceFromDevice(this, a2, a3);
  }

  return result;
}

uint64_t AppleTCONDP855Device::getNonceFromDevice(AppleTCONDP855Device *this, unsigned __int8 *a2, int a3)
{
  v7 = 29;
  result = AppleTCONDP855Device::sendCmd(this, &v7, 0, 0);
  if (!result)
  {

    return AppleTCONDP855Device::readMultiPacketData(this, a2, a3);
  }

  return result;
}

uint64_t AppleTCONDP855Device::readMultiPacketData(AppleTCONDP855Device *this, const unsigned __int8 *a2, int a3)
{
  if (a3)
  {
    v4 = *(this + 2);
    result = IOAVDisplayMemoryRead();
    if (result)
    {
      return result;
    }

    v13 = 0;
    while (v13 < 0x61A81)
    {
      usleep(0x64u);
      v13 += 100;
      v14 = *(this + 2);
      result = IOAVDisplayMemoryRead();
      if (result)
      {
        return result;
      }
    }

    AppleTCONLoggingLogMsg("Timeout Error: out status : %x\n", v6, v7, v8, v9, v10, v11, v12, 0);
  }

  return AppleTCONDP855Device::waitForCompletion(this);
}

uint64_t AppleTCONDP855Device::getProdFuseValue(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  *v5 = 0;
  result = AppleTCONDevice::getIORegPropertyValue(this, @"prod-fuse-value", v5, 4);
  if (result)
  {
    return AppleTCONDP855Device::getProdFuseValueFromDevice(this, a2);
  }

  *a2 = v5[0];
  return result;
}

uint64_t AppleTCONDP855Device::getProdFuseValueFromDevice(AppleTCONDP855Device *this, unsigned __int8 *a2)
{
  v3 = *(this + 2);
  result = IOAVDisplayMemoryRead();
  *a2 = 0;
  return result;
}

uint64_t AppleTCONDP855Device::writeMultiPacketData(AppleTCONDP855Device *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return AppleTCONDP855Device::waitForCompletion(this);
  }

  v4 = a3;
  while (1)
  {
    result = AppleTCONDP855Device::waitForDeviceReady(this);
    if (result)
    {
      break;
    }

    v7 = v4 >= 0x10 ? 16 : v4;
    result = AppleTCONDP855Device::sendDataBuffer(this, a2, v7);
    if (result)
    {
      break;
    }

    v8 = *(this + 2);
    result = IOAVDisplayMemoryWrite();
    if (!result)
    {
      a2 += v7;
      v4 -= v7;
      if (v4)
      {
        continue;
      }
    }

    if (result)
    {
      return result;
    }

    return AppleTCONDP855Device::waitForCompletion(this);
  }

  return result;
}

uint64_t AppleTCONDP855Device::downloadComponentBlock(AppleTCONDP855Device *a1, int a2, char a3, char a4, unsigned __int8 *a5, unsigned int a6)
{
  v12 = 0;
  if (a2)
  {
    v9 = -104;
  }

  else
  {
    BYTE2(v12) = a3;
    v9 = -102;
  }

  LOBYTE(v12) = v9;
  BYTE1(v12) = a4;
  HIBYTE(v12) = AppleTCONDP855Device::computeCRC(a1, a5, a6);
  result = AppleTCONDP855Device::sendCmd(a1, &v12, 0, 0);
  if (!result)
  {
    result = AppleTCONDP855Device::writeMultiPacketData(a1, a5, a6);
    if (!result)
    {
      v11 = *(a1 + 2);
      LODWORD(result) = IOAVDisplayMemoryRead();
      if (result)
      {
        return result;
      }

      else
      {
        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP855Device::downloadComponentImage(AppleTCONDP855Device *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v13 = a5 + 4095;
  v14 = (a5 + 4095) >> 12;
  AppleTCONLoggingLogMsg("Download comp:0x%04x NumBlocks:%d\n", a2, a3, a4, a5, a6, a7, a8, a3);
  if (v13 < 0x1000)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v8 >= 0x1000 ? 4096 : v8;
    v18 = AppleTCONDP855Device::downloadComponentBlock(a1, v11, v10, v15, (a4 + v16), v17);
    if (v18)
    {
      break;
    }

    v16 += v17;
    v8 -= v17;
    if (v14 == ++v15)
    {
      return 0;
    }
  }

  v26 = v18;
  AppleTCONLoggingLogMsg("Component Download Failed:Block:%d:length:%d!\n", v19, v20, v21, v22, v23, v24, v25, v15);
  v27 = *(a1 + 2);
  if (IOAVDisplayMemoryRead())
  {
    v35 = "Could not read error code\n";
  }

  else
  {
    v37 = 0;
    v35 = "Error code 0x%02x!\n";
  }

  AppleTCONLoggingLogMsg(v35, v28, v29, v30, v31, v32, v33, v34, v37);
  return v26;
}

uint64_t AppleTCONDP855Device::getLifeCycle(AppleTCONDP855Device *this, const __CFDictionary *a2, unsigned int *a3)
{
  if (!CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Options.LifeCycle"))
  {
    v6 = "memory alloc failed";
    v7 = 3;
LABEL_11:
    AMSupportSafeRelease();
    AppleTCONLoggingLogMsg("getLifeCycle %s\n", v9, v10, v11, v12, v13, v14, v15, v6);
    return v7;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (ValueForKeyPathInDict)
  {
    v5 = CFGetTypeID(ValueForKeyPathInDict);
    if (v5 == CFNumberGetTypeID())
    {
      if (AMSupportGetUInt32())
      {
        v6 = "conversion error";
        v7 = 11;
      }

      else
      {
        v6 = "out of range";
        v7 = 2;
      }
    }

    else
    {
      v6 = "invalid type";
      v7 = 17;
    }

    goto LABEL_11;
  }

  *a3 = 15;
  AMSupportSafeRelease();
  return 0;
}

const __CFBoolean *AppleTCONDP855Device::getOptionsValue(AppleTCONDP855Device *this, const __CFDictionary *a2, const __CFString *a3)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Options.%@", a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  Value = ValueForKeyPathInDict;
  if (ValueForKeyPathInDict)
  {
    v7 = CFGetTypeID(ValueForKeyPathInDict);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(Value);
    }

    else
    {
      Value = 0;
    }
  }

  CFRelease(v4);
  return Value;
}

uint64_t AppleTCONDP855Device::isOTPUpdateRequired(AppleTCONDP855Device *this, const __CFDictionary *a2)
{
  OptionsValue = AppleTCONDP855Device::getOptionsValue(this, a2, @"FuseSDOM");
  v11 = *(this + 8);
  if (OptionsValue)
  {
    v12 = v11 == 0;
    *(this + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  AppleTCONLoggingLogMsg("Fuse SDOM (%d:%d)\n", v4, v5, v6, v7, v8, v9, v10, v11);
  return v13;
}

void AppleTCONDP855Device::AppleTCONDP855Device(AppleTCONDP855Device *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_2A2022AF0;
  v28 = 0;
  *v27 = 0;
  *(this + 2) = 257;
  *(this + 6) = a2;
  if (!a2)
  {
    AppleTCONLoggingLogMsg("Failed to getIORegRootNode. Will Attempt fallback.\n", a2, a3, a4, a5, a6, a7, a8, v21);
  }

  v9 = *MEMORY[0x29EDB8ED8];
  v10 = IOAVDisplayMemoryCreateWithName();
  *(this + 2) = v10;
  if (v10)
  {
    if (AppleTCONDP855Device::getPRODStatus(this, &v28))
    {
      v18 = "Failed to get Prod status\n";
    }

    else
    {
      v19 = v28 == 1;
      *(this + 9) = v19;
      if (v19)
      {
        if (AppleTCONDP855Device::getProdFuseValue(this, &v28))
        {
          v18 = "Failed to get Prod value\n";
          goto LABEL_18;
        }

        v20 = v28;
      }

      else
      {
        v20 = 0;
      }

      *(this + 30) = v20;
      if (AppleTCONDP855Device::getSDOMStatus(this, &v28))
      {
        v18 = "Failed to get SDOM status\n";
      }

      else
      {
        *(this + 8) = v28 == 1;
        if (AppleTCONDP855Device::getBundleVer(this, v27))
        {
          v18 = "Failed to get bundle version\n";
        }

        else
        {
          *(this + 14) = *v27;
          if (!AppleTCONDP855Device::getFirmwareVer(this, v27))
          {
            *(this + 11) = __rev16(*v27) > 0x10B;
            goto LABEL_19;
          }

          v18 = "Failed to get Firmware version\n";
        }
      }
    }
  }

  else
  {
    v18 = "Failed to get memoryRef handle\n";
  }

LABEL_18:
  AppleTCONLoggingLogMsg(v18, v11, v12, v13, v14, v15, v16, v17, v21);
LABEL_19:
  v26 = *(this + 29);
  v24 = *(this + 30);
  v25 = *(this + 28);
  v22 = *(this + 8);
  v23 = *(this + 9);
  AppleTCONLoggingLogMsg("AppleTconDev(v2):(%d:%d:%d:%d:0x%02x:0x%02x(0x%04x))\n", v11, v12, v13, v14, v15, v16, v17, *(this + 11));
}

void AppleTCONDP855Device::~AppleTCONDP855Device(AppleTCONDP855Device *this)
{
  *this = &unk_2A2022AF0;
  v2 = *(this + 6);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  *this = &unk_2A2022A40;
}

{
  AppleTCONDP855Device::~AppleTCONDP855Device(this);

  JUMPOUT(0x29C2B3CF0);
}

uint64_t AppleTCONDP855Device::eventCmdQueryInfo(AppleTCONDP855Device *this, const __CFDictionary *a2, __CFDictionary *a3)
{
  v44 = *MEMORY[0x29EDCA608];
  *v42 = 0;
  v43 = 0;
  *bytes = 0u;
  v41 = 0u;
  v39 = 0;
  ECID = AppleTCONDP855Device::getECID(this, v42, 0x10u);
  v12 = ECID;
  if (!ECID)
  {
    ECID = AppleTCONDP855Device::displayECID(ECID, v42, 16, v7, v8, v9, v10, v11);
  }

  if (!*(this + 8) && !AppleTCONDP855Device::getOptionsValue(ECID, a2, @"FuseSDOM"))
  {
    AppleTCONLoggingLogMsg("Dev:CmdQueryInfo SDOM not fused. No Fusing option. Bailing.\n", v13, v14, v15, v16, v17, v18, v19, v38);
    LifeCycle = 0;
    *(this + 10) = 1;
    goto LABEL_16;
  }

  if (*(this + 11))
  {
    if (AppleTCONDP855Device::getNonce(this, bytes, 32))
    {
      v37 = "getNonce failed";
    }

    else
    {
      LifeCycle = 3758097085;
      v28 = *MEMORY[0x29EDB8ED8];
      v29 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 32);
      if (!v29)
      {
        v37 = "nonce alloc failed";
        goto LABEL_23;
      }

      v30 = v29;
      CFDictionaryAddValue(a3, @"Baobab,UpdateNonce", v29);
      CFRelease(v30);
      if (!v12)
      {
        v31 = CFDataCreate(v28, v42, 16);
        if (v31)
        {
          v32 = v31;
          CFDictionaryAddValue(a3, @"Baobab,ECID", v31);
          CFRelease(v32);
          AppleTCONDP855Device::getOptionsValue(v33, a2, @"FusePROD");
          if (*(this + 9))
          {
            *(this + 30);
          }

          AMSupportCFDictionarySetBoolean();
          v34 = AMSupportCFDictionarySetInteger32();
          LifeCycle = AppleTCONDP855Device::getLifeCycle(v34, a2, &v39);
          if (!LifeCycle)
          {
            AMSupportCFDictionarySetInteger32();
            goto LABEL_16;
          }

          v37 = "getLifeCycle failed";
        }

        else
        {
          v37 = "ecid alloc failed";
        }

LABEL_23:
        AppleTCONLoggingLogMsg("Dev:CmdQueryInfo failure %s\n", v20, v21, v22, v23, v24, v25, v26, v37);
        goto LABEL_16;
      }

      v37 = "getECID failed";
    }

    LifeCycle = 15;
    goto LABEL_23;
  }

  LifeCycle = 0;
LABEL_16:
  v35 = *MEMORY[0x29EDCA608];
  return LifeCycle;
}

uint64_t AppleTCONDP855Device::isFWComponentsUpdateRequired(AppleTCONDP855Device *this, const __CFDictionary *a2, CFDictionaryRef theDict, unsigned __int8 *a4)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  v15 = Value;
  if (!Value || (v16 = CFGetTypeID(Value), v16 != CFDataGetTypeID()))
  {
    v43 = "firmware data type invalid ";
    goto LABEL_19;
  }

  v17 = *MEMORY[0x29EDB8ED8];
  v18 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v15, 0, 0, 0);
  if (!v18 || (v19 = CFGetTypeID(v18), v19 != CFDictionaryGetTypeID()))
  {
    v43 = "fw dict create failed";
LABEL_19:
    AppleTCONLoggingLogMsg("FW component update :%s\n", v8, v9, v10, v11, v12, v13, v14, v43);
    v41 = 0;
    goto LABEL_13;
  }

  if (!CFStringCreateWithFormat(v17, 0, @"1.%s.%s.%s.%s", "device_id", a4, "NVM_IMAGE", "Version"))
  {
    v43 = "nvm ver string create failed";
    goto LABEL_19;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict || (v21 = ValueForKeyPathInDict, v22 = CFGetTypeID(ValueForKeyPathInDict), v22 != CFNumberGetTypeID()))
  {
    v43 = "bundle version type invalid";
    goto LABEL_19;
  }

  v23 = CFNumberGetValue(v21, kCFNumberSInt16Type, &valuePtr);
  if (!v23)
  {
    v43 = "bundle ver: num: invalid";
    goto LABEL_19;
  }

  OptionsValue = AppleTCONDP855Device::getOptionsValue(v23, a2, @"RestoreInternal");
  v25 = OptionsValue;
  v26 = AppleTCONDP855Device::getOptionsValue(OptionsValue, a2, @"SkipSameVersion");
  AppleTCONLoggingLogMsg("FW Update Options I:%d S:%d\n", v27, v28, v29, v30, v31, v32, v33, v25);
  if (__PAIR64__(*(this + 29), *(this + 28)) != __PAIR64__(valuePtr, HIBYTE(valuePtr)) || (v41 = 0, v25) && !v26)
  {
    AppleTCONLoggingLogMsg("Update to 0x%02x:0x%02x\n", v34, v35, v36, v37, v38, v39, v40, SHIBYTE(valuePtr));
    v41 = 1;
  }

LABEL_13:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v41;
}

uint64_t AppleTCONDP855Device::updateFWComponents(AppleTCONDP855Device *this, const __CFDictionary *a2, unsigned __int8 *a3)
{
  v4 = 3758097088;
  v5 = *MEMORY[0x29EDB8ED8];
  AMSupportGetValueForKeyPathInDict();
  v13 = AMSupportSafeRetain();
  if (!v13)
  {
    v40 = "ticket missing";
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(a2, @"FirmwareData");
  if (!Value || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFDataGetTypeID()))
  {
    v40 = "firmware missing";
    goto LABEL_25;
  }

  v17 = CFPropertyListCreateWithData(v5, v15, 0, 0, 0);
  v18 = v17;
  if (!v17 || (v19 = CFGetTypeID(v17), v19 != CFDictionaryGetTypeID()))
  {
    v40 = "firmware dict: create failed";
    goto LABEL_25;
  }

  if (!CFStringCreateWithFormat(v5, 0, @"1.firmware.Payload"))
  {
    v40 = "comp: key create failed";
    goto LABEL_25;
  }

  AMSupportGetValueForKeyPathInDict();
  v20 = AMSupportSafeRetain();
  v21 = v20;
  if (!v20)
  {
    v40 = "comp: data missing";
    goto LABEL_25;
  }

  v22 = CFDataGetLength(v20) + 4096;
  v23 = malloc_type_malloc(v22, 0x100004077774924uLL);
  v24 = v23;
  if (!v23)
  {
    v4 = 3;
    v40 = "alloc: failed";
    goto LABEL_25;
  }

  memset(v23, 255, v22);
  v43.length = CFDataGetLength(v13);
  v43.location = 0;
  CFDataGetBytes(v13, v43, v24);
  v44.length = CFDataGetLength(v21);
  v44.location = 0;
  CFDataGetBytes(v21, v44, v24 + 4096);
  if (AppleTCONDP855Device::downloadComponentImage(this, 1, 0, v24, v22, v25, v26, v27))
  {
    v4 = 11;
    v40 = "download fw failed";
    goto LABEL_25;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  v28 = &off_2A14F2070;
  v29 = 11;
  while (1)
  {
    if (!CFStringCreateWithFormat(v5, 0, @"1.%s.%s.%s.%s", "device_id", a3, *v28, "Payload"))
    {
      v4 = 0;
      v40 = "comp: string create failed";
      goto LABEL_25;
    }

    AMSupportGetValueForKeyPathInDict();
    v30 = AMSupportSafeRetain();
    if (v30)
    {
      break;
    }

LABEL_20:
    AMSupportSafeRelease();
    v28 += 2;
    if (!--v29)
    {
      v4 = 0;
      goto LABEL_22;
    }
  }

  v31 = v30;
  v32 = v18;
  Length = CFDataGetLength(v30);
  v34 = Length;
  if (v22 >= Length)
  {
    v35 = Length;
  }

  else
  {
    free(v24);
    v35 = v34;
    v24 = malloc_type_calloc(1uLL, v34, 0x100004077774924uLL);
    LODWORD(v22) = v34;
    if (!v24)
    {
      v4 = 3;
      v40 = "re alloc failed";
      goto LABEL_25;
    }
  }

  v45.location = 0;
  v45.length = v35;
  CFDataGetBytes(v31, v45, v24);
  if (!AppleTCONDP855Device::downloadComponentImage(this, 0, *(v28 - 2), v24, v34, v36, v37, v38))
  {
    AMSupportSafeRelease();
    v18 = v32;
    goto LABEL_20;
  }

  v4 = 11;
  v40 = "download comp: failed";
LABEL_25:
  AppleTCONLoggingLogMsg("update fw error:%s\n", v6, v7, v8, v9, v10, v11, v12, v40);
LABEL_22:
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v4;
}

uint64_t AppleTCONDP855Device::eventCmdPerformNextStage(AppleTCONDP855Device *this, const __CFDictionary *a2, const __CFDictionary *a3, unsigned __int8 *a4)
{
  *&v21[3] = 0;
  *v21 = 0;
  if (AppleTCONDP855Device::getDeviceID(this, v21, 7u))
  {
    v19 = "get dev:id failed";
LABEL_19:
    *(this + 10) = 1;
    *a4 = 1;
    AppleTCONLoggingLogMsg("Dev:next stage failure %s\n", v8, v9, v10, v11, v12, v13, v14, v19);
    v17 = 11;
    goto LABEL_11;
  }

  AppleTCONLoggingLogMsg("Dev:deviceid %s\n", v8, v9, v10, v11, v12, v13, v14, v21);
  isFWComponentsUpdateRequired = AppleTCONDP855Device::isFWComponentsUpdateRequired(this, a2, a3, v21);
  if (*(this + 10) || !isFWComponentsUpdateRequired)
  {
    goto LABEL_10;
  }

  v22 = 156;
  if (AppleTCONDP855Device::sendCmd(this, &v22, v21, 6u))
  {
    v19 = "submit dev:id failed";
    goto LABEL_19;
  }

  v22 = 151;
  if (AppleTCONDP855Device::sendCmd(this, &v22, 0, 0))
  {
    v19 = "start update failed";
    goto LABEL_19;
  }

  if (AppleTCONDP855Device::updateFWComponents(this, a3, v21))
  {
    v19 = "updates failed";
    goto LABEL_19;
  }

  if (AppleTCONDP855Device::isOTPUpdateRequired(this, a2))
  {
    if (AppleTCONDP855Device::updateOTP(this, a2))
    {
      v19 = "otp update failed";
      goto LABEL_19;
    }

    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v22 = 153;
  BYTE1(v22) = v16;
  AppleTCONLoggingLogMsg("Reset option %d\n", v8, v9, v10, v11, v12, v13, v14, v16);
  if (AppleTCONDP855Device::sendCmd(this, &v22, 0, 0))
  {
    v19 = "end update failed";
    goto LABEL_19;
  }

LABEL_10:
  v17 = 0;
  *(this + 10) = 1;
  *a4 = 1;
LABEL_11:
  AppleTCONLoggingLogMsg("AppleTCONDP855Device::eventCmdPerformNextStage: Finished Personalization\n", v8, v9, v10, v11, v12, v13, v14, v20);
  return v17;
}

__CFString *AppleTCONDP835DeviceRestoreTagForBoardID(int a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (a2 != 3)
    {
      return 0;
    }

    v2 = 1;
  }

  switch(a1)
  {
    case 0:
      v3 = kAppleTCONCommonTagRequestTicket;
      v4 = kAppleTCON2CommonTagRequestTicket;
      break;
    case 1:
      v3 = kAppleTCONCommonTagResponseTicket;
      v4 = kAppleTCON2CommonTagResponseTicket;
      break;
    case 2:
      v3 = kAppleTCONCommonTagDeviceChipID;
      v4 = kAppleTCON2CommonTagDeviceChipID;
      break;
    case 3:
      v3 = kAppleTCONCommonTagDeviceBoardID;
      v4 = kAppleTCON2CommonTagDeviceBoardID;
      break;
    case 4:
      v3 = kAppleTCONCommonTagManifestEpoch;
      v4 = kAppleTCON2CommonTagManifestEpoch;
      break;
    case 5:
      v3 = kAppleTCONCommonTagDeviceProductionMode;
      v4 = kAppleTCON2CommonTagDeviceProductionMode;
      break;
    case 6:
      v3 = kAppleTCONCommonTagDeviceProv;
      v4 = kAppleTCON2CommonTagDeviceProv;
      break;
    case 7:
      v3 = kAppleTCONCommonTagDeviceSDOM;
      v4 = kAppleTCON2CommonTagDeviceSDOM;
      break;
    case 8:
      v3 = kAppleTCONCommonTagDeviceNonce;
      v4 = kAppleTCON2CommonTagDeviceNonce;
      break;
    case 9:
      v3 = kAppleTCONCommonTagDeviceUpdateNonce;
      v4 = kAppleTCON2CommonTagDeviceUpdateNonce;
      break;
    case 10:
      v3 = kAppleTCONCommonTagDeviceECID;
      v4 = kAppleTCON2CommonTagDeviceECID;
      break;
    case 11:
      v3 = kAppleTCONCommonTagDeviceInvariantFirmware;
      v4 = kAppleTCON2CommonTagDeviceInvariantFirmware;
      break;
    case 12:
      v3 = kAppleTCONCommonTagDeviceBacklightControllerFirmware;
      v4 = kAppleTCON2CommonTagDeviceBacklightControllerFirmware;
      break;
    case 13:
      v3 = kAppleTCONCommonTagDeviceCabalFirmware;
      v4 = kAppleTCON2CommonTagDeviceCabalFirmware;
      break;
    case 14:
      v3 = kAppleTCONCommonTagDeviceTrinityFirmware;
      v4 = kAppleTCON2CommonTagDeviceTrinityFirmware;
      break;
    default:
      return 0;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  return *v6;
}

uint64_t AppleTCONUpdateController::AppleTCONUpdateControllerGetDevice(AppleTCONUpdateController *this)
{
  *buffer = 2133;
  v1 = *MEMORY[0x29EDBB110];
  v2 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/product");
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x29EDB8ED8];
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"tcon-path", *MEMORY[0x29EDB8ED8], 0);
    IOObjectRelease(v3);
    if (CFProperty)
    {
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(CFProperty);
        if (Length)
        {
          v8 = Length;
          v9 = malloc_type_malloc(Length + 14, 0x100004077774924uLL);
          v10 = v9;
          if (v9)
          {
            if (snprintf(v9, v8 + 14, "%s", "IODeviceTree:/") == 14)
            {
              v32.length = CFDataGetLength(CFProperty);
              v32.location = 0;
              CFDataGetBytes(CFProperty, v32, v10 + 14);
              v10[v8 + 13] = 0;
              AppleTCONLoggingLogMsg("Looking for entry under %s\n", v11, v12, v13, v14, v15, v16, v17, v10);
              v18 = IORegistryEntryFromPath(v1, v10);
              if (v18)
              {
                v19 = IORegistryEntryCreateCFProperty(v18, @"chipid", v4, 0);
                v20 = v19;
                if (!v19 || (v21 = CFGetTypeID(v19), v21 != CFDataGetTypeID()) || CFDataGetLength(v20) != 4 || (v33.location = 0, v33.length = 4, CFDataGetBytes(v20, v33, buffer), *buffer == 2133))
                {
                  operator new();
                }

                if (*buffer == 2101)
                {
                  operator new();
                }

                LOBYTE(v30) = 0;
              }

              else
              {
                v30 = "tcon device not found";
              }
            }

            else
            {
              v30 = "overflow";
            }
          }

          else
          {
            v30 = "Unable to allocate memory";
          }
        }

        else
        {
          v30 = "Invalid string";
        }
      }

      else
      {
        v30 = "product path type mismatch";
      }
    }

    else
    {
      v30 = "product path not found";
    }
  }

  else
  {
    v30 = "product not found";
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  AppleTCONLoggingLogMsg("AppleTCONUpdateControllerGetDevice failed: %s\n", v22, v23, v24, v25, v26, v27, v28, v30);
  return 0;
}

void AppleTCONUpdateController::AppleTCONUpdateController(AppleTCONUpdateController *this)
{
  *(this + 3) = 0;
  Device = AppleTCONUpdateController::AppleTCONUpdateControllerGetDevice(this);
  *(this + 1) = Device;
  if (Device)
  {
    v3 = *(Device + 11);
  }

  else
  {
    v3 = 0;
  }

  *(this + 17) = v3;
  *(this + 16) = v3 == 0;
}

uint64_t AppleTCONUpdateController::start(AppleTCONUpdateController *this, const __CFDictionary *a2, __CFError **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(this + 17);
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::start: Dev = (%p) - updateSupported = %d\n", a2, a3, a4, a5, a6, a7, a8, *(this + 1));
  if (*(this + 1))
  {
    if (!a2)
    {
      return 0;
    }

    v11 = AMSupportSafeRetain();
    *(this + 3) = v11;
    Value = CFDictionaryGetValue(v11, @"Options");
    if (Value)
    {
      v13 = CFGetTypeID(Value);
      if (v13 == CFDictionaryGetTypeID())
      {
        return 0;
      }
    }
  }

  if (AppleTCONLoggingCreateCFErrorWithDomain("RestoreOptions not a dict?", 2u, a2, @"AppleTCONUpdaterErrorDomain"))
  {
    if (a3)
    {
      *a3 = AMSupportSafeRetain();
    }

    AMSupportSafeRelease();
  }

  return 19;
}

uint64_t AppleTCONUpdateController::execCmdQueryInfo(AppleTCONUpdateController *this, const __CFDictionary *a2, const __CFDictionary **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: Begin Personalization\n", a2, a3, a4, a5, a6, a7, a8, v38);
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v26 = Mutable;
      if (a2)
      {
        AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: Input\n", v19, v20, v21, v22, v23, v24, v25, v39);
        v27 = *(this + 3);
        AMSupportSafeRelease();
        v28 = AMSupportSafeRetain();
        *(this + 3) = v28;
      }

      else
      {
        v28 = *(this + 3);
      }

      v29 = (*(**(this + 1) + 16))(*(this + 1), v28, v26);
      if (v29)
      {
        CFRelease(v26);
        AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: device failure %d\n", v30, v31, v32, v33, v34, v35, v36, v29);
      }

      else
      {
        *a3 = v26;
      }
    }

    else
    {
      AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: create output dict: failed\n", v19, v20, v21, v22, v23, v24, v25, v39);
      return 3;
    }
  }

  else
  {
    AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCmdQueryInfo: Output param missing\n", v11, v12, v13, v14, v15, v16, v17, v39);
    return 2;
  }

  return v29;
}

uint64_t AppleTCONUpdateController::execPerformNextStage(AppleTCONUpdateController *this, const __CFDictionary *a2)
{
  v2 = (*(**(this + 1) + 24))(*(this + 1), *(this + 3), a2, this + 16);
  v10 = v2;
  if (v2)
  {
    AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: device failure %d\n", v3, v4, v5, v6, v7, v8, v9, v2);
  }

  return v10;
}

uint64_t AppleTCONDP835Device::writeGPIO(AppleTCONDP835Device *this, uint64_t a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  connect = 0;
  input[0] = a2;
  input[1] = a3;
  v3 = *(this + 10);
  if (v3)
  {
    v4 = IOServiceOpen(v3, *MEMORY[0x29EDCA6B0], 0, &connect);
    v5 = connect;
    if (!v4)
    {
      if (!connect)
      {
        v4 = 3758097097;
        goto LABEL_7;
      }

      v4 = IOConnectCallScalarMethod(connect, 1u, input, 2u, 0, 0);
      v5 = connect;
    }

    if (v5)
    {
      IOServiceClose(v5);
    }
  }

  else
  {
    v4 = 3758097136;
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AppleTCONDP835Device::getChipID(AppleTCONDP835Device *this, unsigned int *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6(this);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    *v2 = bswap32(0) >> 16;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getBoardID(AppleTCONDP835Device *this, unsigned int *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6(this);
  result = OUTLINED_FUNCTION_7();
  if (!result)
  {
    return 3758096385;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getBundleVer(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  v7 = 20;
  result = OUTLINED_FUNCTION_10();
  if (v5)
  {
    if (v4 == 3)
    {
      result = AppleTCONDP835Device::sendCmd(this, &v7, 0, 0, 0);
      if (!result)
      {
        v6 = *(this + 2);

        return IOAVDisplayMemoryRead();
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::sendCmd(AppleTCONDP835Device *a1, int *a2, uint64_t a3, int a4, int a5)
{
  v9 = *a2;
  v10 = AppleTCONDP835Device::waitForDeviceReady(a1);
  if (v10)
  {
    return v10;
  }

  v11 = 3758097090;
  if (!a3 || !a4)
  {
LABEL_6:
    v13 = *(a1 + 2);
    v10 = IOAVDisplayMemoryWrite();
    if (!v10)
    {
      v14 = *(a1 + 2);
      v10 = IOAVDisplayMemoryWrite();
      if (!v10)
      {
        v10 = AppleTCONDP835Device::waitForDeviceReady(a1);
        if (!v10)
        {
          v15 = *(a1 + 2);
          v10 = IOAVDisplayMemoryRead();
          if (!v10)
          {
            return 0;
          }
        }
      }
    }

    return v10;
  }

  if ((a5 + a4) <= 0x10)
  {
    v12 = *(a1 + 2);
    v10 = IOAVDisplayMemoryWrite();
    if (v10)
    {
      return v10;
    }

    goto LABEL_6;
  }

  return v11;
}

uint64_t AppleTCONDP835Device::dischargePanel(AppleTCONDP835Device *this)
{
  v1 = *(this + 2);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    OUTLINED_FUNCTION_5();
    result = IOAVDisplayMemoryWrite();
    if (!result)
    {
      usleep(0x493E0u);
      return 0;
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::startFWUpdate(AppleTCONDP835Device *this)
{
  result = AppleTCONDP835Device::dischargePanel(this);
  if (!result)
  {
    OUTLINED_FUNCTION_0();
    result = IOAVDisplayMemoryRead();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      result = IOAVDisplayMemoryWrite();
      if (!result)
      {
        OUTLINED_FUNCTION_0();
        result = IOAVDisplayMemoryRead();
        if (!result)
        {
          OUTLINED_FUNCTION_2();
          result = IOAVDisplayMemoryRead();
          if (!result)
          {
            OUTLINED_FUNCTION_1();
            result = IOAVDisplayMemoryWrite();
            if (!result)
            {
              OUTLINED_FUNCTION_2();
              result = IOAVDisplayMemoryRead();
              if (!result)
              {
                OUTLINED_FUNCTION_5();
                IOAVDisplayMemoryWrite();
                usleep(0xC350u);
                result = OUTLINED_FUNCTION_9();
                if (!result)
                {
                  OUTLINED_FUNCTION_0();
                  result = IOAVDisplayMemoryRead();
                  if (!result)
                  {
                    OUTLINED_FUNCTION_2();
                    result = IOAVDisplayMemoryRead();
                    if (!result)
                    {
                      OUTLINED_FUNCTION_1();
                      result = IOAVDisplayMemoryWrite();
                      if (!result)
                      {
                        OUTLINED_FUNCTION_2();
                        result = IOAVDisplayMemoryRead();
                        if (!result)
                        {
                          OUTLINED_FUNCTION_1();
                          result = IOAVDisplayMemoryWrite();
                          if (!result)
                          {
                            OUTLINED_FUNCTION_2();
                            result = IOAVDisplayMemoryRead();
                            if (!result)
                            {
                              OUTLINED_FUNCTION_1();
                              result = IOAVDisplayMemoryWrite();
                              if (!result)
                              {
                                return AppleTCONDP835Device::writeGPIO(this, 0x746E766DuLL, 0);
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
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::endFWUpdate(AppleTCONDP835Device *this)
{
  v2 = AppleTCONDP835Device::writeGPIO(this, 0x746E766DuLL, 1u);
  if (v2)
  {
    return v2;
  }

  v2 = AppleTCONDP835Device::dischargePanel(this);
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryWrite();
  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_0();
  v2 = IOAVDisplayMemoryRead();
  if (v2)
  {
    return v2;
  }

  v3 = 3758097129;
  OUTLINED_FUNCTION_5();
  IOAVDisplayMemoryWrite();
  usleep(0x493E0u);
  v2 = OUTLINED_FUNCTION_9();
  if (v2)
  {
    return v2;
  }

  return v3;
}

uint64_t AppleTCONDP835Device::getSDOMStatus(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6(this);
  result = OUTLINED_FUNCTION_7();
  if (!result)
  {
    AppleTCONLoggingLogMsg("SDOM status %s\n", v4, v5, v6, v7, v8, v9, v10, "OTP_STATUS_UNPROGRAMMED");
    result = OUTLINED_FUNCTION_8();
    *v2 = v11;
  }

  return result;
}

uint64_t AppleTCONDP835Device::getPRODStatus(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_6(this);
  result = OUTLINED_FUNCTION_7();
  if (!result)
  {
    AppleTCONLoggingLogMsg("PROD status %s\n", v4, v5, v6, v7, v8, v9, v10, "OTP_STATUS_UNPROGRAMMED");
    result = OUTLINED_FUNCTION_8();
    *v2 = v11;
  }

  return result;
}

uint64_t AppleTCONDP835Device::setSdom(AppleTCONDP835Device *this)
{
  OUTLINED_FUNCTION_3(16777315);
  v6 = AppleTCONDP835Device::sendCmd(v2, v3, v4, v5, 0);
  if (v6)
  {
    v16 = v6;
LABEL_9:
    AppleTCONLoggingLogMsg("setSdom: update failed:0x%x phase:%u\n", v7, v8, v9, v10, v11, v12, v13, v16);
    return v16;
  }

  v14 = *(this + 2);
  v15 = IOAVDisplayMemoryRead();
  if (v15)
  {
    v16 = v15;
    goto LABEL_9;
  }

  if (v18)
  {
    v16 = 3758097129;
    goto LABEL_9;
  }

  return 0;
}

uint64_t AppleTCONDP835Device::setProd(AppleTCONDP835Device *this)
{
  OUTLINED_FUNCTION_3(33554531);
  v6 = AppleTCONDP835Device::sendCmd(v2, v3, v4, v5, 1);
  if (v6)
  {
    v16 = v6;
LABEL_9:
    AppleTCONLoggingLogMsg("setProd: update failed:0x%x phase:%u\n", v7, v8, v9, v10, v11, v12, v13, v16);
    return v16;
  }

  v14 = *(this + 2);
  v15 = IOAVDisplayMemoryRead();
  if (v15)
  {
    v16 = v15;
    goto LABEL_9;
  }

  if (v18)
  {
    v16 = 3758097129;
    goto LABEL_9;
  }

  return 0;
}

uint64_t AppleTCONDP835Device::getECID(AppleTCONDP835Device *this, unsigned __int8 *a2)
{
  result = OUTLINED_FUNCTION_10();
  if (v3)
  {
    if (v4 == 16)
    {
      v6 = v3;
      v7 = *(v5 + 16);
      result = IOAVDisplayMemoryRead();
      if (!result)
      {
        v8 = 15;
        v9 = 8;
        do
        {
          v10 = *(v6 + v9);
          *(v6 + v9) = *(v6 + v8);
          *(v6 + v8--) = v10;
          ++v9;
        }

        while (v8 != 11);
        result = 0;
        *v6 = 0;
      }
    }
  }

  return result;
}

uint64_t AppleTCONDP835Device::updateOTP(AppleTCONDP835Device *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 65);
  AppleTCONLoggingLogMsg("Fuse Prod (%d:%d)\n", a2, a3, a4, a5, a6, a7, a8, *(this + 9));
  if (!*(this + 9) && *(this + 65))
  {
    result = AppleTCONDP835Device::setProd(this);
    if (result)
    {
      return result;
    }

    *(this + 9) = 1;
  }

  result = AppleTCONDP835Device::setSdom(this);
  if (!result)
  {
    *(this + 8) = 1;
  }

  return result;
}

uint64_t AppleTCONDP835Device::updateFWComponents(AppleTCONDP835Device *this, const __CFDictionary *a2)
{
  v4 = 3758097088;
  AppleTCONDP835DeviceRestoreTagForBoardID(1, *(this + 15));
  v5 = *MEMORY[0x29EDB8ED8];
  *(this + 8);
  AMSupportGetValueForKeyPathInDict();
  v6 = AMSupportSafeRetain();
  if (!v6)
  {
    OUTLINED_FUNCTION_4();
    v27 = "ticket missing";
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(a2, @"FirmwareData");
  v8 = Value;
  if (!Value || (v9 = CFGetTypeID(Value), v9 != CFDataGetTypeID()))
  {
    OUTLINED_FUNCTION_4();
    v27 = "firmware missing";
    goto LABEL_25;
  }

  v10 = CFPropertyListCreateWithData(v5, v8, 0, 0, 0);
  if (!v10 || (v11 = CFGetTypeID(v10), v11 != CFDictionaryGetTypeID()))
  {
    OUTLINED_FUNCTION_4();
    v27 = "firmware dict: create failed";
    goto LABEL_25;
  }

  BytePtr = CFDataGetBytePtr(v6);
  v4 = 3758097090;
  if (BytePtr)
  {
    Length = CFDataGetLength(v6);
    if (Length <= 0x3000)
    {
      v14 = AppleTCONDP835Device::eraseDeviceEEPROM(this, *(this + 14), 0x3000u);
      if (v14)
      {
        v4 = v14;
        OUTLINED_FUNCTION_4();
        v27 = "failed to erase personalization manifest from EEPROM";
      }

      else
      {
        v15 = AppleTCONDP835Device::writeDeviceEEPROM(this, *(this + 14), BytePtr, Length);
        if (v15)
        {
          v4 = v15;
          OUTLINED_FUNCTION_4();
          v27 = "failed to write personalization manifest to EEPROM";
        }

        else
        {
          v23 = CFStringCreateWithFormat(v5, 0, @"%u.%s.Payload", *(this + 15), "nvm_image");
          if (v23)
          {
            AMSupportGetValueForKeyPathInDict();
            v24 = AMSupportSafeRetain();
            if (v24)
            {
              updated = AppleTCONDP835Device::updateFWComponent(this, 4, v24);
              if (updated)
              {
                v4 = updated;
                v27 = "failed to update fw component";
              }

              else
              {
                v4 = doPCDSUpdate();
                if (!v4)
                {
                  CFRelease(v23);
                  CFRelease(v24);
                  goto LABEL_15;
                }

                v27 = "failed to update pcds component";
              }
            }

            else
            {
              v4 = 0;
              v27 = "comp: data missing";
            }
          }

          else
          {
            v4 = 0;
            v27 = "comp: key create failed";
          }
        }
      }

LABEL_25:
      AppleTCONLoggingLogMsg("update fw error:%s\n", v16, v17, v18, v19, v20, v21, v22, v27);
    }
  }

LABEL_15:
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v4;
}

uint64_t AppleTCONDP835Device::readFWPointer(AppleTCONDP835Device *this, unint64_t a2, unint64_t a3)
{
  if (!(a2 | a3))
  {
    return OUTLINED_FUNCTION_10();
  }

  v5 = *(this + 4);
  result = IOAVDisplayMemoryRead();
  if (!result)
  {
    v14 = bswap32(0);
    if ((v14 & 0xFFDFFFFF) != 0x100000)
    {
      return 3758096385;
    }

    if (a2)
    {
      *a2 = v14;
    }

    if (a3)
    {
      *a3 = 0x100000;
    }

    if (a2)
    {
      v15 = *a2;
      if (!a3)
      {
LABEL_12:
        AppleTCONLoggingLogMsg("AppleTCONDP835Device::readFWPointer: activeFWPointer:0x%08x inactiveFWPointer:0x%08x\n", v7, v8, v9, v10, v11, v12, v13, v15);
        return 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v16 = *a3;
    goto LABEL_12;
  }

  return result;
}

uint64_t AppleTCONDP835Device::writeFWPointer(AppleTCONDP835Device *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::writeFWPointer: fWPointer:0x%08x\n", a2, a3, a4, a5, a6, a7, a8, a2);
  if ((v8 & 0xFFDFFFFF) != 0x100000)
  {
    return OUTLINED_FUNCTION_10();
  }

  *v11 = v8 >> 8;
  result = AppleTCONDP835Device::eraseDeviceEEPROM(this, 0, 4u);
  if (!result)
  {
    return AppleTCONDP835Device::writeDeviceEEPROM(this, 0, v11, 4u);
  }

  return result;
}

uint64_t AppleTCONDP835Device::writeAndVerifyFWPointer(AppleTCONDP835Device *this, uint64_t a2, unsigned int *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AppleTCONLoggingLogMsg("AppleTCONDP835Device::writeAndVerifyFWPointer: fWPointer:0x%08x\n", a2, a3, a4, a5, a6, a7, a8, a2);
  result = AppleTCONDP835Device::writeFWPointer(this, a2, v12, v13, v14, v15, v16, v17);
  if (!result)
  {
    result = AppleTCONDP835Device::readFWPointer(this, a3, a4);
    if (!result)
    {
      if (*a3 == a2)
      {
        return 0;
      }

      else
      {
        return 3758097129;
      }
    }
  }

  return result;
}

CFErrorRef AppleTCONUpdaterIsDone(CFErrorRef result, uint64_t *a2)
{
  if (result)
  {
    v2 = *(result + 3);
    if (v2)
    {
      return *(v2 + 16);
    }

    else
    {
      result = AppleTCONLoggingCreateCFErrorWithDomain("AppleTCONUpdaterIsDone - no controller instance", 0x10u, 0, @"AppleTCONUpdaterErrorDomain");
      if (result)
      {
        v4 = CFErrorCopyDescription(result);
        CFStringGetCStringPtr(v4, 0);
        AppleTCONLoggingLogMsg("%s [error]: %s\n", v5, v6, v7, v8, v9, v10, v11, "AppleTCONUpdaterIsDone");
        CFRelease(v4);
        if (a2)
        {
          *a2 = AMSupportSafeRetain();
        }

        AMSupportSafeRelease();
        return 0;
      }
    }
  }

  return result;
}

CFErrorRef AppleTCONLoggingCreateCFErrorWithDomain(uint64_t a1, unsigned int a2, uint64_t a3, const __CFString *a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v9 = CFStringCreateWithFormat(v7, 0, @"%@: %s", a4, a1);
    if (v9)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F58], v9);
      v10 = CFErrorCreate(v7, a4, a2, Mutable);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v10;
}

uint64_t AppleTCONDP855Device::updateOTP(AppleTCONDP855Device *this, const __CFDictionary *a2)
{
  OptionsValue = AppleTCONDP855Device::getOptionsValue(this, a2, @"FusePROD");
  AppleTCONLoggingLogMsg("Fuse Prod (%d:%d)\n", v4, v5, v6, v7, v8, v9, v10, *(this + 9));
  if (!OptionsValue || *(this + 9) || (result = AppleTCONDP855Device::setProd(this), !result))
  {

    return AppleTCONDP855Device::setSdom(this);
  }

  return result;
}

uint64_t AppleTCONUpdateController::execCommand(AppleTCONUpdateController *this, CFStringRef theString, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!theString)
  {
    return 2;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0);
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: Entering execCommand: command = %s\n", v9, v10, v11, v12, v13, v14, v15, CStringPtr);
  v16 = 0;
  if (!*(this + 16))
  {
    if (CFStringCompare(theString, @"queryInfo", 0))
    {
      if (CFStringCompare(theString, @"performNextStage", 0))
      {
        v22 = CFStringGetCStringPtr(theString, 0);
        AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: Unsupported command: %s\n", v23, v24, v25, v26, v27, v28, v29, v22);
        v16 = 2;
        goto LABEL_9;
      }

      Stage = AppleTCONUpdateController::execPerformNextStage(this, a3);
    }

    else
    {
      Stage = AppleTCONUpdateController::execCmdQueryInfo(this, a3, a4, v17, v18, v19, v20, v21);
    }

    v16 = Stage;
  }

LABEL_9:
  v31 = CFStringGetCStringPtr(theString, 0);
  AppleTCONLoggingLogMsg("AppleTCONUpdateController::execCommand: Exiting execCommand: command = %s, result = 0x%X\n", v32, v33, v34, v35, v36, v37, v38, v31);
  return v16;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}